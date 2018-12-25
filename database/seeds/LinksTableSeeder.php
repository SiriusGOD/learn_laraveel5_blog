<?php

use Illuminate\Database\Seeder;

class LinksTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            [
                'link_name' => '巴哈姆特',
                'link_title' => '國內最大遊戲論壇',
                'link_url' => 'https://www.gamer.com.tw/',
                'link_order' => 1,
            ],
            [
                'link_name' => 'PTT',
                'link_title' => '國內最早論壇',
                'link_url' => 'https://www.ptt.cc/bbs/index.html',
                'link_order' => 2,
            ]
        ];
        DB::table('blog_links')->insert($data);
    }
}
