<?php
use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;
use App\User;
class UserTableSeeder extends Seeder {
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
             'name' => 'Nathi Taengnim',
             'username' => 'nathi.t',
             'password' => 'nathisecret',
             'email' => 'nathi.taengnim@gimo.co.uk',
             'api_token' => str_random(60)
         ]);
        User::create([
            'name' => 'Admin',
            'username' => 'admin',
            'password' => 'greatsecret',
            'email' => 'admin@gimo.co.uk',
            'api_token' => str_random(60)
        ]);
    }
}