<?php

namespace App\Http\Controllers\gforce;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Gforce\UserMod;

class UserCon extends Controller
{
    public function signup(Request $req){
        
        $file = $req->file('profile_img');
        $filename = date('YmdHi').rand().$file->getClientOriginalName();
        $file->move('uploadImages/users/', $filename); 
        
        $data = new UserMod();
        $data->firstname = $req->fName;
        $data->middlename = $req->mName;
        $data->lastname = $req->lName;
        $data->email = $req->email;
        $data->dob = $req->dob;
        $data->phone = $req->pNumber;
        $data->address = $req->address;
        $data->password = $req->password;
        $data->image = $filename;
        $data->type = $req->type;
        $res = $data->save();
        return $res;
    }

    public function signin(Request $req){
        $res = UserMod::where('email',$req->email)->where('password',$req->password)->get();

        UserMod::where('email',$req->email)->where('password',$req->password)->update([
            "token" => $req->token,
        ]); 

        $res = UserMod::where('email',$req->email)->where('password',$req->password)->get();
        return $res;
    }
    
    public function getProfile(Request $req){
        $res = UserMod::where('token',$req->token)->get();
        return $res;
    }
}
