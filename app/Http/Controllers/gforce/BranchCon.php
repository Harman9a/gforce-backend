<?php

namespace App\Http\Controllers\gforce;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Gforce\Branch;

class BranchCon extends Controller
{
    public function addBranch(){
        return view('content.Branch.addbranch');
    }

    public function editBranch($id){
        $branch = Branch::where('id',$id)->get();
        return view('content.Branch.editbranch')->with('branch',$branch[0]);        
    }

    public function deleteBranch(Request $req){
        $res = Branch::where('id',$req->id)->delete();
        return $res;
    }

    public function viewBranch($id){
        $branch = Branch::where('id',$id)->get();
        return view('content.Branch.viewbranch')->with('branch',$branch[0]);        
    }

    public function allBranch(){
        $tableData = Branch::all();
        return view('content.Branch.allbranch')->with('tableData',$tableData);
    }

    public function getBranch(){
        $branch = Branch::all();
        return $branch;
    }

    public function submitBranch(Request $req){
        $file = $req->file('img');
        $filename = date('YmdHi').rand().$file->getClientOriginalName();
        $file->move('uploadImages/branch/', $filename); 

        $data = new Branch;
        $data->name = $req->name;
        $data->fulllocation = $req->location;
        $data->city = '$req->city';
        $data->state = '$req->state';
        $data->country = '$req->country';
        $data->des = $req->des;
        $data->img = $filename;
        $res = $data->save();
        return $res;
    }

    public function updateBranch(Request $req){
        
        if($req->img != 'no'){
            $file = $req->file('img');
            $filename = date('YmdHi').rand().$file->getClientOriginalName();
            $file->move('uploadImages/branch/', $filename);

            $result = Branch::where("id",$req->id)->update([
                "name" => $req->name,
                "fulllocation" => $req->location,
                // "batch" => $req->batch,
                "des" => $req->des,
                "img" => $filename
            ]);
            return $result;
        }else{
            $result = Branch::where("id",$req->id)->update([
                "name" => $req->name,
                "fulllocation" => $req->location,
                // "batch" => $req->batch,
                "des" => $req->des,
            ]);
            return $result;
        }
    }
}
