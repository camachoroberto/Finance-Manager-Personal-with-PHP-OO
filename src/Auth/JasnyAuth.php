<?php

namespace MYFin\Auth;


use Jasny\Auth\Sessions;
use Jasny\Auth\User;
use MYFin\Repository\RepositoryInterface;

class JasnyAuth extends \Jasny\Auth
{
    use Sessions;

    /**
     * @var RepositoryInterface
     */
    private $repository;

    public function __construct(RepositoryInterface $repository)
    {
        $this->repository = $repository;
    }

    public function fetchUserById($id)
    {
        return $this->repository->find($id, false);
    }

    /**
     * Fetch a user by username
     *
     * @param  string $username
     * @return User|null
     */
    public function fetchUserByUsername($username)
    {
        return $this->repository->findByField('email', $username)[0];
    }
}
