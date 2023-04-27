<?php

namespace App\Repository;

use App\Entity\Formation;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Formation>
 *
 * @method Formation|null find($id, $lockMode = null, $lockVersion = null)
 * @method Formation|null findOneBy(array $criteria, array $orderBy = null)
 * @method Formation[]    findAll()
 * @method Formation[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class FormationRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Formation::class);
    }

    public function add(Formation $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(Formation $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    /**
     * Retourne toutes les formations triées sur un champ
     * @param type $champ
     * @param type $ordre
     * @return Formation[]
     */
    public function findAllOrderBy($champ, $ordre): array{
        return $this->createQueryBuilder('f')
                ->orderBy('f.'.$champ, $ordre)
                ->getQuery()
                ->getResult();

    }
    
    /**
     * Retourne toutes les formations triées sur un champ d'une autre table
     * @param type $champ
     * @param type $ordre
     * @param type $table
     * @return Formation[]
     */
    public function findAllOrderByInTable($champ, $ordre, $table): array{
        return $this->createQueryBuilder('f')
                ->join('f.' .$table, 't')
                ->orderBy('f.'.$champ, $ordre)
                ->getQuery()
                ->getResult();
    }

    /**
     * Enregistrements dont un champ contient une valeur
     * ou tous les enregistrements si la valeur est vide
     * @param type $champ
     * @param type $valeur
     * @return Formation[]
     */
    public function findByContainValue($champ, $valeur): array{
        $likeClause = 'f.'.$champ.' LIKE :valeur';
        $orderByClause = 'f.publishedAt DESC';
        $parameterValue = '%'.$valeur.'%';

        if($valeur==""){
            return $this->findAll();
        }
        
        return $this->createQueryBuilder('f')
            ->where($likeClause)
            ->orderBy($orderByClause)
            ->setParameter('valeur', $parameterValue)
            ->getQuery()
            ->getResult();
    }
    
    /**
     * Enregistrements dont un champ d'une autre table contient une valeur
     * ou tous les enregistrements si la valeur est vide
     * @param type $champ
     * @param type $valeur
     * @param type $table
     * @return Formation[]
     */
    public function findByContainValueInTable($champ, $valeur, $table): array{
        $likeClause = 'f.'.$champ.' LIKE :valeur';
        $orderByClause = 'f.publishedAt DESC';
        $parameterValue = '%'.$valeur.'%';

        if($valeur==""){
            return $this->findAll();
        }
        
        return $this->createQueryBuilder('f')
            ->join('f'.$table, 't')
            ->where($likeClause)
            ->orderBy($orderByClause)
            ->setParameter('valeur', $parameterValue)
            ->getQuery()
            ->getResult();
    }
    
    
    /**
     * Retourne les n formations les plus récentes
     * @param type $nb
     * @return Formation[]
     */
    public function findAllLasted($nb) : array {
        return $this->createQueryBuilder('f')
                ->orderBy('f.publishedAt', 'DESC')
                ->setMaxResults($nb)     
                ->getQuery()
                ->getResult();
    }    
    
    /**
     * Retourne la liste des formations d'une playlist
     * @param type $idPlaylist
     * @return array
     */
    public function findAllForOnePlaylist($idPlaylist): array{
        return $this->createQueryBuilder('f')
                ->join('f.playlist', 'p')
                ->where('p.id=:id')
                ->setParameter('id', $idPlaylist)
                ->orderBy('f.publishedAt', 'ASC')   
                ->getQuery()
                ->getResult();        
    }
    
}
