<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\DB;
use Auth;
use app\User;
use Image;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function profile(){
        return view('profile', array('user' => Auth::user()) );
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function update_avatar(Request $request){

        // Handle the user upload of avatar
        if($request->hasFile('avatar')){

            $avatar = $request->file('avatar');
            $filename = time() . '.' . $avatar->getClientOriginalExtension();
            Image::make($avatar)->resize(300, 300)->save(('uploads/avatars/' . $filename ) );

            $user = Auth::user();
            $user->avatar = $filename;
            $user->name = $request->get('name');
            $user->save();
        }

        return view('profile', array('user' => Auth::user()) );

    }

    public function edit($id)
    {
        $data = DB::table('users')
            ->where('id','=',$id)
            ->get();

        return view('profile_edit')->with('profile',$data);
    }

    public function update(Request $request, $id)
    {
        $data = array(

            'name' => Input::get('name'),

        );

        DB::table('users')->where('id','=', Input::get('id'))->update($data);

        if($data >= 1){
            return redirect('home')->with('message','Berhasil edit data');
        }else{
            return redirect('home')->with('message','Gagal edit Data');
        }
    }


}
