@extends('template.base')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12 mt-5">
			<div class="card">
				<div class="card-header">
					Ubah Data User
				</div>
				<div class="card-body">
					<form action="{{url('user', $user->id)}}" method="post">
						@csrf
						@method("PUT")
					<div class="form-group">
						<label for="" class="control-label">Nama</label>
						<input type="text" class="form-control" name="nama" value="{{$user->nama}}">
					</div>

					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="" class="control-label">Username</label>
								<input type="text" class="form-control" name="username" value="{{$user->username}}">
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<label for="" class="control-label">Email</label>
								<input type="text" class="form-control" name="email" value="{{$user->email}}">
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<label for="" class="control-label">Password</label>
								<input type="password" class="form-control" name="password">
							</div>
						</div>
					</div>
					<button class="btn btn-dark float-right"><i class="fa fa-save"></i> Simpan</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection