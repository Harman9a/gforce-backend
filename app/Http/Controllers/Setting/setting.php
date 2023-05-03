<?php

namespace App\Http\Controllers\Setting;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Ace\UserModel;
use App\Models\Ace\SettingModel;
use App\Models\privacymodel;
use App\Models\Ace\Customize;

class setting extends Controller
{
  
        public function index(Request $req)
        {
            $result = Customize::orderBy('id', 'DESC')->take(1)->get();

            return view('content.Setting.setingaddupdate')->with('tableData',$result);

        }


       public function UpdateHome(Request $req){
                $page_schema =trim($req->page_schema);
                $result = Customize::where("id",$req->web_id)->update([
                "page_title" => $req->page_title,
                "page_description"=> $req->page_description,
                "page_schema" =>$page_schema,
                "header_code" => $req->header_code,
                "footer_code" => $req->footer_code,
                "footer_desc" => $req->footer_desc,
                "dance_desc"=>$req->dance_desc,
                "c_number" => $req->c_number,
                "w_number" => $req->w_number,
                "ameneties" => $req->ameneties,
                "cUsEmail" => $req->cUsEmail,
                "creersEmail" => $req->creersEmail,
                ]);
            
           return $result;

        }
        
        public function getHomeData(){
                     $result = Customize::orderBy('id', 'DESC')->take(1)->get();
                     return $result;
        }
        
        public function getOtherData(){
         $result =  privacymodel::orderBy('id', 'DESC')->get()[0];
         return $result;
        }
        public function front_book(){
            return view('content.Appointment.frontendAppointment');
        }
        public function open_location(){
            return view('content.Map.Location');
        }
        
         public function privacy()
        {
           
            $result = privacymodel::orderBy('id', 'DESC')->get()[0]->privacy;
            return view('content.Setting.privacy')->with('tableData',$result);

        }
        
         public function term_condetion()
        {
            $result = privacymodel::orderBy('id', 'DESC')->get()[0]->term_condetion;
            return view('content.Setting.term_condetion')->with('tableData',$result);

        }
       
    public function updateprivacy(Request $req)

    {
         $id=1;
         $result =privacymodel::where('id',$id)->update(['privacy' =>$req->privacy]);
        return $result;
    }
       
     public function updateterm(Request $req)
    {
        $id=1;
        $result =privacymodel::where('id',$id)->update(['term_condetion' =>$req->term_condetion]);
        return $result;

    }
  
        
}