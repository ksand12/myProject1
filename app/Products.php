<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;


use Illuminate\Database\Eloquent\SoftDeletes;

class Products extends Model {

    use SoftDeletes;

    /**
    * The attributes that should be mutated to dates.
    *
    * @var array
    */
    protected $dates = ['deleted_at'];

    protected $table    = 'products';
    
    protected $fillable = [
          'name',
          'price',
          'vip'
    ];
    

    public static function boot()
    {
        parent::boot();

        Products::observe(new UserActionsObserver);
    }
	public function catalogs(){
		return $this->belongsTo(\App\Catalog::class, 'catalogs_id');
		
	}
    
    
    
    
}