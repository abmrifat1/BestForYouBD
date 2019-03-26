<?php

namespace App\Providers;
use App\Category;
use App\Forum;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;
use View;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);
        View::composer('forum.master',function ($view){
            $view->with('categories',Category::withCount('forumPosts')->where('isActive','Active')->orderby('name','asc')->get());
         });
        View::composer('forum.master',function ($view){
            $view->with('forumPosts',Forum::where('isActive','Active')->latest()->get());
         });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
