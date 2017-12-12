<?php
namespace App\Libs;
use Image;
class Imag{
	public function url($puth, $directory = null, $name = null){
		if($puth != null){
			if($directory == null){
				$dir = $_SERVER['DOCUMENT_ROOT'].'/public/uploads/';
			}else{
				$dir = $_SERVER['DOCUMENT_ROOT'].$directory;
			}
			if($name == null){
				$filename = date('y_m_d_h_i_s').'.jpg';
			}else{
				$filename = $name;
			}
			$pic_small = 's_'.$filename;
			
			$img = Image::make($puth);
			$img->save($dir.$filename);
			$img->resize(300, null, function($constraint){
				$constraint->aspectRatio();
			});
			$img->save($dir.$pic_small);
			return $filename;
		}else{
			return false;
		}
		
	}
}