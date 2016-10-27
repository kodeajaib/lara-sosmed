<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\DB;
use App\Status;
use App\User;

use App\Http\Requests;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $data = DB::table('status')
            ->select('status.id as idstatus','status.isistatus as isistatus','status.created_at as created_at', 'users.*')
            ->leftJoin('users', 'status.id_user', '=', 'users.id')
            ->orderBy('status.created_at', 'desc')
            ->get();

        return view('home')->with('status',$data);

    }

    public function store(Request $request)
    {
         $data = array(
               'isistatus' => Input::get('isistatus'),
               'id_user' => Input::get('id_user'),
           );

           DB::table('status')->insert($data);

           if($data >= 1){
             return redirect('home')->with('message','Berhasil Update Status');
           }else{
             return redirect('home')->with('message','Gagal Update Status');
           }
    }

    public function destroy($id)
    {
        $status = Status::findOrFail($id);
        $status->delete();
        return redirect('home');
    }
}
