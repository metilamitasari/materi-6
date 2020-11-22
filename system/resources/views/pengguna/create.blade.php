@extends('template.base')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12 mt-5">
			<div class="card">
				<div class="card-header">
					Tambah Data Produk
				</div>
				<div class="card-body">
					<form action="{{url('user')}}" method="post">
						@csrf
					<div class="form-group">
						<label for="" class="control-label">Nama Lengkap</label>
						<input type="text" name="nama" class="form-control">
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="" class="control-label">Username</label>
								<input type="text" name="username" class="form-control">
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<label for="" class="control-label">Email</label>
								<input type="email" name="email" class="form-control">
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<label for="" class="control-label">Password</label>
								<input type="password" name="password" class="form-control">
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