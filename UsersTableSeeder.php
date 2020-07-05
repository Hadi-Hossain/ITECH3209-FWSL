<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'role_id'=>'1',
            'name'=>'Hadi',
            'email'=>'riasad96@gmail.com',
            'number'=>'01796010088'
            'password'=>bcrypt('12345678'),
            'slug'=>'admin12'
        ]);
        DB::table('users')->insert([
            'role_id'=>'2',
            'name'=>'Hadi',
            'email'=>'hadi@gmail.com',
            'number'=>'017960100883'
            'password'=>bcrypt('12345678'),
            'slug'=>'student12'
        ]);
    }
}
