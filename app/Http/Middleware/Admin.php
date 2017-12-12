<?php

namespace App\Http\Middleware;

use Closure;
use App\Products;

class Admin
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
        $products = Products::where('picture',null)->count();
		$request->merge(compact('products'));
		return $next($request);		
    }
	
	
}
