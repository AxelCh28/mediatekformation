<?php
namespace App\Controller\admin;

use App\Entity\Formation;
use App\Form\FormationForm;
use App\Repository\CategorieRepository;
use App\Repository\FormationRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * Contrôleur des formations côte admin
 *
 * @author Utilisateur
 */
class AdminFormationsController extends AbstractController{

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
     * @Route("/admin", name="admin.formations")
     * @return Response
     */
    public function index(): Response{
        $formations = $this->formationRepository->findAll();
        $categories = $this->categorieRepository->findAll();
        return $this->render("admin/admin.formations.html.twig", [
            'formations' => $formations,
            'categories' => $categories
        ]);
    }
    
    /**
     * Supprimer une formation
     * @Route("/admin/supprimer.formation/{id}", name="admin.supprimer.formation")
     * @param Formation $formations
     * @return Response
     */
    public function supprimer(Formation $formations): Response {
        $this->formationRepository->remove($formations, true);
        return $this->redirectToRoute('admin.formations');
    }
    

    
    /**
     * Éditer une formation
     * @Route("/admin/modif/{id}", name="admin.modifier.formation")
     * @param Formation $formations
     * @param Request $request
     * @return Response
     */
    public function modif(Formation $formations, Request $request): Response{
        $formFormation = $this->createForm(FormationForm::class, $formations);
        
        $formFormation->handleRequest($request);
        if($formFormation->isSubmitted() && $formFormation->isValid()){
            $this->formationRepository->add($formations, true);
            return $this->redirectToRoute('admin.formations');
        }
        
        return $this->render("admin/admin.modif.formations.html.twig", [
            'formations' => $formations,
            'formformations' => $formFormation->createView()
        ]);
    }
    
    /**
     * Ajouter une formation
     * @Route("/admin/ajout", name="admin.ajouter.formation")
     * @param Request $request
     * @return Response
     */
    public function ajout(Request $request): Response{
        $formations = new Formation();
        $formFormation = $this->createForm(FormationForm::class, $formations);
        
        $formFormation->handleRequest($request);
        if($formFormation->isSubmitted() && $formFormation->isValid()){
            $this->formationRepository->add($formations, true);
            return $this->redirectToRoute('admin.formations');
        }
        
        return $this->render("admin/admin.ajout.formations.html.twig", [
            'formations' => $formations,
            'formformations' => $formFormation->createView()
        ]);
    }
    /**
     * @Route("/admin/formations/tri/{champ}/{ordre}/{table}", name="admin.formations.sort")
     * @param type $champ
     * @param type $ordre
     * @param type $table
     * @return Response
     */
    public function sort($champ, $ordre, $table=""): Response{
        if($table !=""){
            $formations = $this->formationRepository->findAllOrderByTable($champ, $ordre, $table);
        }else 
        {
            $formations = $this->formationRepository->findAllOrderBy($champ, $ordre);
        }
        $categories = $this->categorieRepository->findAll();
        return $this->render('admin/admin.formations.html.twig', [
            'formations' => $formations,
            'categories' => $categories
        ]);
    }  
    
    /**
     * @Route("/admin/formations/recherche/{champ}/{table}", name="admin.formations.findallcontain")
     * @param type $champ
     * @param Request $request
     * @param type $table
     * @return Response
     */
    public function findAllContain($champ, Request $request, $table=""): Response{
        $valeur = $request->get("recherche");
        if ($table != ''){
            $formations = $this->formationRepository->findByContainValueInTable($champ, $valeur, $table);
        }else{
            $formations = $this->formationRepository->findByContainValue($champ, $valeur);
        }
        $categories = $this->categorieRepository->findAll();
        return $this->render('admin.formations.html.twig', [
            'formations' => $formations,
            'categories' => $categories,
            'valeur' => $valeur,
            'table' => $table
        ]);
    } 
}
