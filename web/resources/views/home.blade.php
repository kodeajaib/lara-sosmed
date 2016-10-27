@extends('layouts.app')
@section('title', 'Home')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <div class="panel panel-default">
                <div class="panel-body">
                    <img src="{{ url('uploads/avatars') }}/{{ Auth::user()->avatar }}" style="width:150px; height:150px; float:left; border-radius:50%; margin-right:25px;">
                       <br/>
                    <strong>{{ Auth::user()->name }}</strong>
                    <br/>
                    <a href="{{ url('profile') }}">Ganti Photo</a>
                    <br/>
                    <a href="{{ url('profile/'.Auth::user()->id.'/edit') }}">Edit Profile</a>
                </div>
            </div>
        </div>
        <div class="col-md-8">

                    <div class="col-sm-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                            <form enctype="multipart/form-data" action="{{ url('home') }}" method="POST">
                                <textarea class="form-control" name="isistatus" rows="2">Whats Happening ... </textarea>
                                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                <input type="hidden" name="id_user" value="{{ Auth::user()->id }}">
                                <br/>
                                <button type="submit" class="btn btn-success btn-sm" style="float: right">Post</button> max 300
                            </form>

                               </div>
                            </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="panel panel-default">
                            <div class="panel-body">

                        @foreach ($status as $row)
                            @if (($row->id) ===(Auth::user()->id) )
                                <div class="media">
                                    <div class="media-body">
                                        <h4 style="font-size: 20px" class="media-heading">{{ $row->name }} <small style="font-size: 10px">{{ $row->created_at }}</small></h4>
                                        <p>{{ $row->isistatus }}</p>
                                        <p><a href="{{url('home/destroy/'.$row->idstatus.'')}}" onclick="return confirm('Anda yakin?')"><i class="fa fa-trash"></i></a> </p>
                                    </div>
                                    <div class="media-right media-middle">
                                        <a href="#">
                                            <img class="media-object" src="{{ url('uploads/avatars') }}/{{ $row->avatar }}" style="width:80px; height:80px; float:left; border-radius:50%; margin-left:10px;">

                                        </a>
                                    </div>
                                </div>
                                <hr/>
                            @else
                                <div class="media">
                                    <div class="media-left media-middle">
                                        <a href="#">
                                            <img class="media-object" src="{{ url('uploads/avatars') }}/{{ $row->avatar }}" style="width:80px; height:80px; float:left; border-radius:50%; margin-right:10px;">

                                        </a>
                                    </div>
                                    <div class="media-body">
                                        <h4 style="font-size: 20px class="media-heading">{{ $row->name }} <small style="font-size: 10px">{{ $row->created_at }}</small></h4>
                                        <p>{{ $row->isistatus }}</p>
                                    </div>
                                </div>
                                <hr/>
                            @endif
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
