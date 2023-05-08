<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Gforce\ProjectClassModel;
use App\Models\Gforce\OpenClassModel;
use App\Models\Gforce\WorkshopModel;
use App\Models\Gforce\TrainerModel;
use App\Models\Gforce\Branch;





class ProjectClass extends Controller
{
    public function getClasses(){
        $tableData = ProjectClassModel::all();
        foreach($tableData as $row){
            $row['branch'] =  Branch::where('id',$row->branchname)->get()[0]->name;
        }
        return $tableData;
    }
    
    public function getOpenClasses(){
        $tableData = OpenClassModel::all();
        foreach($tableData as $row){
            $row['branch'] =  Branch::where('id',$row->branchname)->get()[0]->name;
        }
        return $tableData;
    }
    
    public function getWorkshops(){
        $tableData = WorkshopModel::all();
        foreach($tableData as $row){
            $row['branch_name'] =  Branch::where('id',$row->branch_id)->get()[0]->name;
        }
        return $tableData;
    }
    
    public function changeProjectClassStatus(Request $req){


        
        $projectClass = ProjectClassModel::where('id',$req->id)->get();
   
        if($projectClass[0]->status == 1)
        {
           $i='0';
           $result=ProjectClassModel::where("id",$projectClass[0]->id)->update([
               "status" => $i
               ]); 
               return $result=0;
        }

        if($projectClass[0]->status == 0)
        {
           $i='1';
           $result=ProjectClassModel::where("id",$projectClass[0]->id)->update([
               "status" => $i
               ]); 
               return $result=1;
        }

   
   }



   public function changeOpenClassStatus(Request $req){
        
    $openclass = OpenClassModel::where('id',$req->id)->get();

    if($openclass[0]->status == 1)
    {
       $i='0';
       $result=OpenClassModel::where("id",$openclass[0]->id)->update([
           "status" => $i
           ]); 
           return $result=0;
    }

    if($openclass[0]->status == 0)
    {
       $i='1';
       $result=OpenClassModel::where("id",$openclass[0]->id)->update([
           "status" => $i
           ]); 
           return $result=1;
    }
}

    public function changeWorkshopStatus(Request $req)
    {
        $workshop = WorkshopModel::where('id',$req->id)->get();

        if($workshop[0]->status == 1)
        {
        $i='0';
        $result=WorkshopModel::where("id",$workshop[0]->id)->update([
            "status" => $i
            ]); 
            return $result=0;
        }

        if($workshop[0]->status == 0)
        {
        $i='1';
        $result=WorkshopModel::where("id",$workshop[0]->id)->update([
            "status" => $i
            ]); 
            return $result=1;
        } 
        
    }

    public function changeTrainerStatus(Request $req)
    {
        $trainer = TrainerModel::where('id',$req->id)->get();

        if($trainer[0]->status == 1)
        {
        $i='0';
        $result=TrainerModel::where("id",$trainer[0]->id)->update([
            "status" => $i
            ]); 
            return $result=0;
        }

        if($trainer[0]->status == 0)
        {
        $i='1';
        $result=TrainerModel::where("id",$trainer[0]->id)->update([
            "status" => $i
            ]); 
            return $result=1;
        } 
        
    }

    public function getWorkShopByBranch(Request $req){
        $res = WorkshopModel::where('branch_id',$req->id)->get();
        foreach($res as $row){
            $row['branchName'] =  Branch::where('id',$row->branch_id)->get()[0]->name;
        }
       return $res;
    }
    
    public function getClassByBranch(Request $req){
        $res = OpenClassModel::where('branchname',$req->id)->get();
        foreach($res as $row){
            $row['branchName'] =  Branch::where('id',$row->branchname)->get()[0]->name;
        }
       return $res;
    }
    
    public function getWorkShopSingle(Request $req){
        $res = WorkshopModel::where('id',$req->id)->get();
        foreach($res as $row){
            $row['branchName'] =  Branch::where('id',$row->branch_id)->get()[0]->name;
        }
       return $res;
    }

    public function getOpenClassSingle(Request $req){
        $res = OpenClassModel::where('id',$req->id)->get();
        foreach($res as $row){
            $row['branchName'] =  Branch::where('id',$row->branchname)->get()[0]->name;
        }
       return $res;
    }

    public function getClassesByBranchByDate(Request $req){
        $res = OpenClassModel::where('branchname',$req->id)->where('scheduledate',$req->date)->get();
        foreach($res as $row){
            $row['branchName'] =  Branch::where('id',$row->branchname)->get()[0]->name;
        }
       return $res;
    }
}