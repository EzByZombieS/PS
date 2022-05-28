<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\ListFood;

class ListFoodSeeder extends Seeder
{
    public function run()
    {
        $data = array (
            [
                'id_list_day' => '1',
                'name_food' => 'Nasi Goreng Special Corn',
                'description' => 'Menu Hari Ini Disajikan Sepenuh Hati',
                'image' => 'nasgor.jpg',
                'image_background' => 'https://www.gastronom.id/wp-content/uploads/2018/12/Gambar-Makanan-Berat-Khas-Indonesia-1.jpg',
                'price' => '15.000',
                'alternatife1' => 'Telur Goreng dengan nasi putih',
                'alternatife2' => 'Ayam Goreng dengan nasi putih',
                'start' => '08:00',
                'end' => '12:00',
            ],
            [
                'id_list_day' => '2',
                'name_food' => 'Bubur Ayam',
                'description' => 'Menu Hari Ini Bertema Kaya Akan Kuah Segar',
                'image' => 'bubur.jpeg',
                'image_background' => 'https://www.gastronom.id/wp-content/uploads/2018/12/Gambar-Makanan-Berat-Khas-Indonesia-1.jpg',
                'price' => '15.000',
                'alternatife1' => 'Bubur kacang hijau',
                'alternatife2' => 'Nasi Goreng',
                'start' => '08:00',
                'end' => '12:00',
            ],
            [
                'id_list_day' => '3',
                'name_food' => 'Tempe Terong Bersambal Pedas',
                'description' => 'Menu Hari Ini Disajikan Dengan Sepenuh Hati',
                'image' => 'tempe.jpeg',
                'image_background' => 'https://www.gastronom.id/wp-content/uploads/2018/12/Gambar-Makanan-Berat-Khas-Indonesia-1.jpg',
                'price' => '15.000',
                'alternatife1' => 'Telur Ayam Dadar Dengan Nasi Putih',
                'alternatife2' => 'Ikan Lele Goreng Sambal Dengan Nasi Putih',
                'start' => '08:00',
                'end' => '12:00',
            ],
            [
                'id_list_day' => '4',
                'name_food' => 'Lontong',
                'description' => 'Menu Hari Ini Bertema Makanan Tradisional',
                'image' => 'lontong.jpeg',
                'image_background' => 'https://www.gastronom.id/wp-content/uploads/2018/12/Gambar-Makanan-Berat-Khas-Indonesia-1.jpg',
                'price' => '15.000',
                'alternatife1' => 'Soto Makkasar',
                'alternatife2' => 'Ayam Rica-rica Dengan Nasi Putih',
                'start' => '08:00',
                'end' => '12:00',
            ],
            [
                'id_list_day' => '5',
                'name_food' => 'Soto Betawi',
                'description' => 'Menu Hari Ini Memiliki Cita Rasa Yang Enak',
                'image' => 'sotobetawi.jpeg',
                'image_background' => 'https://www.gastronom.id/wp-content/uploads/2018/12/Gambar-Makanan-Berat-Khas-Indonesia-1.jpg',
                'price' => '15.000',
                'alternatife1' => 'Burger',
                'alternatife2' => 'Lontong Special',
                'start' => '08:00',
                'end' => '12:00',
            ],
            [
                'id_list_day' => '6',
                'name_food' => 'Pasta Special',
                'description' => 'Menu Hari Ini Bertema Makanan Hitz',
                'image' => 'pasta.jpeg',
                'image_background' => 'https://www.gastronom.id/wp-content/uploads/2018/12/Gambar-Makanan-Berat-Khas-Indonesia-1.jpg',
                'price' => '15.000',
                'alternatife1' => 'Mie Goreng Special',
                'alternatife2' => 'Ayam Rica-rica Dengan Nasi Putih',
                'start' => '08:00',
                'end' => '12:00',
            ],
        );
        foreach ($data as $d) {
            ListFood :: create([
                'id_list_day' => $d['id_list_day'],
                'name_food' => $d['name_food'],
                'description' => $d['description'],
                'image' => $d['image'],
                'image_background' => $d['image_background'],
                'price' => $d['price'],
                'alternatife1' => $d['alternatife1'],
                'alternatife2' => $d['alternatife2'],
                'start' => $d['start'],
                'end' => $d['end'],
            ]);
        }  

    }
}
