<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\ListDay;

class ListDaySeeder extends Seeder
{
    public function run()
    {
        $data = array (
            [
                'day' => 'Senin',
                'date' => '2020-05-18',
                'description' => 'Makanan Berat',
                'image_product' => 'https://www.gastronom.id/wp-content/uploads/2018/12/Gambar-Makanan-Berat-Khas-Indonesia-1.jpg',
            ],
            [
                'day' => 'Selasa',
                'date' => '2020-05-19',
                'description' => 'Makanan Berat',
                'image_product' => 'https://www.gastronom.id/wp-content/uploads/2018/12/Gambar-Makanan-Berat-Khas-Indonesia-1.jpg',
            ],
            [
                'day' => 'Rabu',
                'date' => '2020-05-20',
                'description' => 'Makanan Ringan',
                'image_product' => 'https://www.gastronom.id/wp-content/uploads/2018/12/Gambar-Makanan Ringan-Khas-Indonesia-1.jpg',
            ],
            [
                'day' => 'Kamis',
                'date' => '2020-05-21',
                'description' => 'Makanan Ringan',
                'image_product' => 'https://www.gastronom.id/wp-content/uploads/2018/12/Gambar-Makanan Ringan-Khas-Indonesia-1.jpg',
            ],
            [
                'day' => 'Jumat',
                'date' => '2020-05-22',
                'description' => 'Makanan Ringan',
                'image_product' => 'https://www.gastronom.id/wp-content/uploads/2018/12/Gambar-Makanan-Berat-Khas-Indonesia-1.jpg',
            ],
            [
                'day' => 'Sabtu',
                'date' => '2020-05-23',
                'description' => 'Makanan Berat',
                'image_product' => 'https://www.gastronom.id/wp-content/uploads/2018/12/Gambar-Makanan-Berat-Khas-Indonesia-1.jpg',
            ],   
        );

        foreach ($data as $d) {
            ListDay :: create([
                'day' => $d['day'],
                'date' => $d['date'],
                'description' => $d['description'],
                'image_product' => $d['image_product'],
            ]);
        }  
    }
}


