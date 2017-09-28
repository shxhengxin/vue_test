<?php

namespace App\Http\Controllers\Api;

use App\Pack\Token;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    protected $token;

    /**
     * UserController constructor.
     *
     * @param $token
     */
    public function __construct() {
        $this->token = new Token();
    }

    public function login(Request $request) {
        if(!Auth::attempt(['email'=>$request->get('email'),'password'=>$request->get('password')])){
            return response()->json(['error'=>'not found'],404);
        }
        $token = $this->token->setToken($request);
        return response()->json([
            'errmsg'=> 'token succeed',
            'code' => 200,
            'token'=> $token
        ]);
    }


    public function register(Request $request) {
        $user = User::create([
            'name'=>$request->get('name'),
            'email'=>$request->get('email'),
            'password'=>bcrypt($request->get('password')),
        ]);
        if($user){
            $token = $this->token->setToken($request);
            return response()->json([
                'errmsg'=> 'token succeed',
                'code' => 200,
                'token'=> $token
            ]);
        }
    }

    public function logout(Request $request) {
        $this->token->reset($request);
        return response()->json([
            'errmsg'=> 'succeed',
            'code' => 200
        ]);
    }
}
