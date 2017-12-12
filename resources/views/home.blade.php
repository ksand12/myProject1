@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form action="{{asset('home')}}" method="post" enctype="multipart/form-data">
						{!! csrf_field()!!}
						<div class="form-group">
							<label for="name">Name</label>
						
							
							<input type="text" class="form-control" name="name"/>
							@if($errors->has('name'))
								<div class="error">{{$errors->first('name')}}</div>
							@endif

						</div>
						<div class="form-group">
							<label for="body">Body</label>
							<textarea id="body" name="body" class="form-control"></textarea>
						</div>
						<div class="form-group">
							<label for="exampleInputFile">File input</label>
							<input type="file" name="pict" id="exampleInputFile"/>
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form>
					
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
