@extends('layouts.app')
@section('title', 'Edit Profie')
@section('content')
<div class="container">
    <div class="row">


        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-body">
                    <img src="{{ url('uploads/avatars') }}/{{ $user->avatar }}" style="width:150px; height:150px; float:left; border-radius:50%; margin-right:25px;">

                    <form enctype="multipart/form-data" action="{{ url('profile') }}" method="POST">
                        <label>Edit Foto Profile</label>
                        <br/>

                        <input type="file" name="avatar">
                        <input type="hidden" name="name" value="{{ $user->name }}"  class="form-control">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <br/>
                        <br/>
                        <input type="submit" class="pull-right btn btn-sm btn-primary" value="simpan">
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>
@endsection
