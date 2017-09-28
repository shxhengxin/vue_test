<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/9/27
 * Time: 10:49
 */

namespace App\Pack;

use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Hash;
class Token {

    //设置token
    public  function setToken($request){
        //从配置文件当中获取一个key
            if(Cache::has($request->ip().config('app.key').'_token')){
                return  Cache::get($request->ip().config('app.key').'_token');
            }
            $token = Hash::make($request->ip().config('app.key'));
            Cache::put($request->ip().config('app.key').'_token',$token,10);
            return $token;

    }

    //验证token
    public  function checkToken($request,$token){

        if(Hash::check($request->ip().config('app.key'),$token)) {
            return true;
        }
        return false;
    }

    //清除token

    public function reset($request) {
        Cache::pull($request->ip().config('app.key').'_token');
        return false;
    }
}