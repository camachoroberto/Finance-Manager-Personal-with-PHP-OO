<?php
declare(strict_types=1);

namespace MYFin\Repository;


interface StatementRepositoryInterface
{
    public function all(string $dateStart, string $dateEnd, int $userId): array;
}
