<?php

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

namespace App\Controller\admin;

use App\Entity\Playlist;
use App\Form\PlaylistForm;
use App\Repository\CategorieRepository;
use App\Repository\FormationRepository;
use App\Repository\PlaylistRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
/**
 * Description of AdminPlaylistsController
 *
 * @author Utilisateur
 */
class AdminPlaylistsController extends AbstractController{
    /**
     * 
     * @var PlaylistRepository
     */
    private $playlistRepository;
    
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
     * Création du contrôleur
     * @param PlaylistRepository $playlistRepository
     * @param CategorieRepository $categorieRepository
     * @param FormationRepository $formationRespository
     */
    function __construct(PlaylistRepository $playlistRepository,
            CategorieRepository $categorieRepository,
            FormationRepository $formationRespository) {
        $this->playlistRepository = $playlistRepository;
        $this->categorieRepository = $categorieRepository;
        $this->formationRepository = $formationRespository;
    }
    
    /**
     * Création de la route vers la page des playlists
     * @Route("/admin/playlists", name="admin.playlists")
     * @return Response
     */
    public function index(): Response{
        $playlists = $this->playlistRepository->findAllOrderByName('ASC');
        $categories = $this->categorieRepository->findAll();
        return $this->render('admin/admin.playlists.html.twig', [
            'playlists' => $playlists,
            'categories' => $categories            
        ]);
    }
    
    /**
     * Supprimer une playlist
     * @Route("/admin/suppr.playlist/{id}", name="admin.supprimer.playlist")
     * @param Playlist $playlists
     * @return Response
     */
    public function suppr(Playlist $playlists): Response{
        $this->playlistRepository->remove($playlists, true);
        return $this->redirectToRoute('admin.playlists');
    }
    
    /**
     * Modifier une playlist
     * @Route("/admin/modif.playlist/{id}", name="admin.modifier.playlist")
     * @param Playlist $playlists
     * @param Request $request
     * @return Response
     */
    public function modif(Playlist $playlists, Request $request):Response{
        $formPlaylist = $this->createForm(PlaylistForm::class, $playlists);
        
        $formPlaylist->handleRequest($request);
        if($formPlaylist->isSubmitted() && $formPlaylist->isValid()){
            $this->playlistRepository->add($playlists, true);
            return $this->redirectToRoute('admin.playlists');
        }
        return $this->render("admin/admin.modif.playlists.html.twig", [
            'playlists' => $playlists,
            'formplaylist' => $formPlaylist->createView()
        ]);
    }
    
    /**
     * Ajouter une playlist
     * @Route("/admin/ajout.playlists", name="admin.ajouter.playlist")
     * @param Request $request
     * @return Response
     */
    public function ajout(Request $request):Response{
        $playlists = new Playlist();
        $formPlaylist = $this->createForm(PlaylistForm::class, $playlists);
        
        $formPlaylist->handleRequest($request);
        if($formPlaylist->isSubmitted() && $formPlaylist->isValid()){
            $this->playlistRepository->add($playlists, true);
            return $this->redirectToRoute('admin.playlists');
        }
        return $this->render("admin/admin.ajout.playlists.html.twig", [
            'playlists' => $playlists,
            'formplaylist' => $formPlaylist->createView()
        ]);
    }

    /**
     * Tri les enregistrements selon le $champ "name" et l'ordre
     * Ou selon le $champ "nbformations" et l'ordre
     * @Route("/admin/playlists/tri/{champ}/{ordre}", name="admin.playlists.sort")
     * @param type $champ
     * @param type $ordre
     * @return Response
     */
    public function sort($champ, $ordre): Response{
        switch($champ){
            case "name":
                $playlists = $this->playlistRepository->findAllOrderByName($ordre);
                break;
            case "nbformations":
                $playlists = $this->playlistRepository->findAllOrderByNbFormations($ordre);
                break;
        }
        $categories = $this->categorieRepository->findAll();
        return $this->render('admin/admin.playlists.html.twig', [
            'playlists' => $playlists,
            'categories' => $categories            
        ]);
    }        
    
    /**
     * @Route("/admin/playlists/recherche/{champ}/{table}", name="admin.playlists.findallcontain")
     * @param type $champ
     * @param Request $request
     * @param type $table
     * @return Response
     */
    public function findAllContain($champ, Request $request, $table=""): Response{
        $valeur = $request->get("recherche");
        $playlists = $this->playlistRepository->findByContainValue($champ, $valeur, $table);
        $categories = $this->categorieRepository->findAll();
        return $this->render('admin/admin.playlists.html.twig', [
            'playlists' => $playlists,
            'categories' => $categories,            
            'valeur' => $valeur,
            'table' => $table
        ]);
    } 
    
}
