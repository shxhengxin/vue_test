<?php

namespace App\Http\Middleware;

use App\Pack\Token;
use Closure;
use Illuminate\Support\Facades\Redirect;

class VerifyApiToken
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $token=new Token();
        if(!$token->checkToken($request,$request->token)){
            return response()->json([
                'errmsg'=> 'token filed',
                'code' => 404,
            ]);

        }
        return $next($request);

    }
}
