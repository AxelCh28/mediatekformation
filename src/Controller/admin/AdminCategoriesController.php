<?php

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

namespace App\Controller\admin;

use App\Entity\Categorie;
use App\Repository\CategorieRepository;
use App\Repository\FormationRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * Description of AdminCategoriesController
 *
 * @author Utilisateur
 */
class AdminCategoriesController extends AbstractController{
    /**
     * 
     * @var FormationRepository
     */
    private $formationRepository;
    
    /**
     * 
     * @var CategorieRepository
     */
    private $categorieRepository;
    
    /**
     * Création du constructeur
     * @param FormationRepository $formationRepository
     * @param CategorieRepository $categorieRepository
     */
    function __construct(FormationRepository $formationRepository, CategorieRepository $categorieRepository) {
        $this->formationRepository = $formationRepository;
        $this->categorieRepository= $categorieRepository;
    }
    
    /**
     * @Route("/admin/categories", name="admin.categories")
     * @return Response
     */
    public function index(): Response{
        $formations = $this->formationRepository->findAll();
        $categories = $this->categorieRepository->findAll();
        return $this->render("admin/admin.categories.html.twig", [
            'formations' => $formations,
            'categories' => $categories
        ]);
    }

    /**
     * Supprimer une catégorie
     * @Route("/admin/supprimer.categorie/{id}", name="admin.supprimer.categorie")
     * @param Categorie $categories
     * @return Response
     */
    public function supprimer(Categorie $categories): Response {
        $this->categorieRepository->remove($categories, true);
        return $this->redirectToRoute('admin.categories');
    }
    
    
    /**
     * Ajout d'une categorie
     * @Route("/admin/categorie/ajout", name="admin.ajouter.categorie")
     * @param Request $request
     * @return Response
     */
    public function ajout(Request $request): Response{
        $name = $request->get("name");
        $nomcategorie = $this->categorieRepository->findAllEqual($name);
        
        if ($nomcategorie == false){
            $categories = new Categorie();
            $categories->setName($name);
            $this->categorieRepository->add($categories, true);
            return $this->redirectToRoute('admin.categories');
        }
        return $this->redirectToRoute('admin.categories');
    }
}
