<?php

use Faker\Generator as Faker;
use App\ForumComments;
use App\Forum;
$factory->define(ForumComments::class, function (Faker $faker) {
    return [
        'name'=>$faker->word(3),
        'forum_id'=>function(){
            return factory(Forum::class)->create()->id;
        },
        'reply'=>$faker->paragraph(10),
    ];
});
