@extends('template.base')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12 mt-5">
			<div class="card">
				<div class="card-header">
					Detail Data User
				</div>
				<div class="card-body">
					<table class="table">
						<thead>
							<th>No</th>
							<th>Nama</th>
							<th>Username</th>
							<th>Email</th>
							<th>Remember Token</th>
						</thead>
						<tbody>
							
						 <tr>
							<td>1</td>
							<td>{{$user->nama}}</td>
							<td>{{$user->username}}</td>
							<td>{{$user->email}}</td>
							<td>{{$user->remember_token}}</td>
						 </tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection