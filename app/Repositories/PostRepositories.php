<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/9/27
 * Time: 14:36
 */

namespace App\Repositories;
use App\Post;


class PostRepositories {
    use BaseRepository;
    protected $model;

    /**
     * PostRepositories constructor.
     *
     * @param $model
     */
    public function __construct(Post $model) {
        $this->model = $model;
    }

    /**
     * Search the articles by the keyword.
     *
     * @param  string $key
     * @return collection
     */
    public function search($key)
    {
        $key = trim($key);
        return $this->model
            ->where('title', 'like', "%{$key}%")
            ->orderBy('created_at', 'desc')
            ->get();
    }


}