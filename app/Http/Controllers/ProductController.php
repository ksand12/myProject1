<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Products;
use App\Catalogs;

class ProductController extends Controller
{
    //
	public function getAll(){
		$all = Products::all();
		//dd($all);
		return view('products',compact('all'));
		
	
	}
	public function getOne($id){
		//echo $id;
		
	}
	public function getCat($id){
		$cat = Catalogs::find($id);
		//$products = Product::where('catalog_id', $id)->get();
		return view('catalog',compact('cat'));
	}
	
}
