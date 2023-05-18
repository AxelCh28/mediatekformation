<?php

namespace App\Entity;

use App\Repository\UserRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=UserRepository::class)
 */
class User
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $keycloakid;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getKeycloakid(): ?string
    {
        return $this->keycloakid;
    }

    public function setKeycloakid(?string $keycloakid): self
    {
        $this->keycloakid = $keycloakid;

        return $this;
    }
}
