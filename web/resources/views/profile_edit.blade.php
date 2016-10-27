@extends('layouts.app')
@section('title', 'Edit Profie')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-body">
                @foreach ($profile as $row)
                <form enctype="multipart/form-data" action="{{ url('profile/update',$row->id) }}" method="POST">
                    <label>Edit Data Profile</label>
                    <br/>
                    <input type="hidden" value="{{ $row->id }}" name="id"/>
                    <input type="text" name="name" value="{{ $row->name }}"  class="form-control">
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <br/>
                    <button type="submit" class="pull-right btn btn-sm btn-primary">Simpan</button>
                </form>
                @endforeach
            </div>
        </div>
    </div>


</div>
</div>
@endsection
