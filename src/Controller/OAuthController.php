<?php

namespace App\Controller;

use KnpU\OAuth2ClientBundle\Client\ClientRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Exception\AuthenticationException;

class OAuthController extends AbstractController
{
    /**
     * @Route("/oauth/login", name="oauth_login")
     */
    public function index(ClientRegistry $clientRegistry): RedirectResponse{
        return $clientRegistry->getClient('keycloak')->redirect();
    }
    
    /**
     * @Route("/oauth/callback", name="oauth_check")
     */
    public function connectCheckAction(Request $request, ClientRegistry $clientRegistry){
        try {
            $client = $clientRegistry->getClient('keycloak');
            $user = $client->fetchUserFromToken($client->getAccessToken($request));
            // Rediriger vers la partie admin
            return $this->redirectToRoute('admin.formations');
        } catch (AuthenticationException $exception) {
            // Gérer les erreurs d'authentification
            // Rediriger vers une page d'erreur ou de connexion échouée
            // return $this->redirectToRoute('login_failed');
        }
    }
    
    /**
     * @Route("/logout", name="logout")
     */
    public function logout() {
        
    }
    
}
