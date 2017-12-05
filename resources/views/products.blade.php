@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">

					You are logged in!
				
					@foreach($all as $one)
						<h2>{{$one->name}}</h2>
						<div class="my_test">
							
							{!!$one->body!!}
							<img src="{{asset('uploads/thumb/'.$one->name.'.jpg')}}"/>
						</div>
						<div>
							
						</div>
						<hr />
					@endforeach
					
                </div>
            </div>
        </div>
    </div>
</div>
@endsection