<?php

use Phinx\Migration\AbstractMigration;

class CreateUserAdminData extends AbstractMigration
{
    public function up()
    {
        /** @var \MYFin\Application $app */
        $app = require __DIR__ . '/../bootstrap.php';
        $auth = $app->service('auth');

        $users = $this->table('users');
        $users->insert([
            'first_name' => 'Admin',
            'last_name' => 'System',
            'email' => 'admin@admin.com',
            'password' => $auth->hashPassword('admin'),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ])->save();
        $data = [];
    }

    public function down()
    {
        $this->execute("DELETE FROM users WHERE email ='admin@admin.com' ");
    }
}
