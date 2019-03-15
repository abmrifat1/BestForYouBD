<?php

use Faker\Generator as Faker;
use App\ForumComments;
use App\Forum;
$factory->define(ForumComments::class, function (Faker $faker) {
    return [
        'name'=>$faker->name,
        'forum_id'=>function(){
            return factory(Forum::class)->create()->id;
        },
        //'company_id' => factory(App\Company::class)->create()->id,
        'reply'=>$faker->paragraph(5),
    ];
});
