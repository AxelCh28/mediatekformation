<?php

namespace App\Repository;

use App\Entity\Playlist;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

define("P_ID", "p.id id");
define("P_NAME", "p.name name");
define("C_NAME_CATEGORIE", "c.name categoriename");
define("P_FORMATIONS", "p.formations");
define("F_CATEGORIES", "f.categories");
define("C_NAME", "c.name");

/**
 * @extends ServiceEntityRepository<Playlist>
 *
 * @method Playlist|null find($id, $lockMode = null, $lockVersion = null)
 * @method Playlist|null findOneBy(array $criteria, array $orderBy = null)
 * @method Playlist[]    findAll()
 * @method Playlist[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PlaylistRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Playlist::class);
    }

    public function add(Playlist $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(Playlist $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }
    
    /**
     * Retourne toutes les playlists triées sur un champ
     * @param type $champ
     * @param type $ordre
     * @return Playlist[]
     */
    public function findAllOrderBy($champ, $ordre): array{
        return $this->createQueryBuilder('p')
                ->select(P_ID)
                ->addSelect(P_NAME)
                ->addSelect(C_NAME_CATEGORIE)
                ->leftjoin(P_FORMATIONS, 'f')
                ->leftjoin(F_CATEGORIES, 'c')
                ->groupBy('p.id')
                ->addGroupBy(C_NAME)
                ->orderBy('p.'.$champ, $ordre)
                ->addOrderBy(C_NAME)
                ->getQuery()
                ->getResult();       
    }

    /**
     * Enregistrements dont un champ contient une valeur
     * ou tous les enregistrements si la valeur est vide
     * @param type $champ
     * @param type $valeur
     * @param type $table si $champ dans une autre table
     * @return Playlist[]
     */
    public function findByContainValue($champ, $valeur, $table=""): array{
        if($valeur==""){
            return $this->findAllOrderBy('name', 'ASC');
        }    
        if($table==""){      
            return $this->createQueryBuilder('p')
                    ->select(P_ID)
                    ->addSelect(P_NAME)
                    ->addSelect(C_NAME_CATEGORIE)
                    ->leftjoin(P_FORMATIONS, 'f')
                    ->leftjoin(F_CATEGORIES, 'c')
                    ->where('p.'.$champ.' LIKE :valeur')
                    ->setParameter('valeur', '%'.$valeur.'%')
                    ->groupBy('p.id')
                    ->addGroupBy(C_NAME)
                    ->orderBy('p.name', 'ASC')
                    ->addOrderBy(C_NAME)
                    ->getQuery()
                    ->getResult();              
        }else{   
            return $this->createQueryBuilder('p')
                    ->select(P_ID)
                    ->addSelect(P_NAME)
                    ->addSelect(C_NAME_CATEGORIE)
                    ->leftjoin(P_FORMATIONS, 'f')
                    ->leftjoin(F_CATEGORIES, 'c')
                    ->where('c.'.$champ.' LIKE :valeur')
                    ->setParameter('valeur', '%'.$valeur.'%')
                    ->groupBy('p.id')
                    ->addGroupBy(C_NAME)
                    ->orderBy('p.name', 'ASC')
                    ->addOrderBy(C_NAME)
                    ->getQuery()
                    ->getResult();              
            
        }           
    }    


    
}