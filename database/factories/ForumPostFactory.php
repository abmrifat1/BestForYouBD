<?php

use Faker\Generator as Faker;
use App\Forum;
use App\Category;
$factory->define(Forum::class, function (Faker $faker) {
    return [
        'name'=>$faker->name,
        'description'=>$faker->paragraph(5),
        'category_id'=>function(){
            return factory(Category::class)->create()->id;
        },
        'email'=>$faker->safeEmail,
        'views'=>$faker->numberBetween(30,400),
    ];
});
