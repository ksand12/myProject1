<?php
namespace App\Providers\ViewComposers;
	class SiteComposer{
		public function compose(View $view){
			$ur = url()->full();
			$arr = explode('/',$ur);
			$end = end($arr);
			$view->with('end',$end);
			
		}
}