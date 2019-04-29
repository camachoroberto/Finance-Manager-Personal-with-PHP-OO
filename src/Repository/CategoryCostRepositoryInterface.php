<?php
declare(strict_types=1);

namespace MYFin\Repository;


interface CategoryCostRepositoryInterface extends RepositoryInterface
{
    public function sumByPeriod(string $dateStart, string $dateEnd, int $userId): array;
}
