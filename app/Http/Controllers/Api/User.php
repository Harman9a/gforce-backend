<?php

namespace App\Http\Controllers\Api;

use Mail;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Ace\UserModel;
use App\Models\Ace\BlogModel;
use App\Models\Gforce\ContactModel;
use App\Models\Gforce\CarrerModel;
use App\Models\Ace\Customize;
use App\Models\Gforce\JobPositionModel;
use App\Models\Gforce\JobPositionCategoryModel;

class User extends Controller
{

    public function Index(Request $req)
    {
     $user = UserModel::where('id',$req->id)->get();
     if($user[0]->status == 1)
     {
        $i='0';
        $result = UserModel::where("id",$user[0]->id)->update([
            "status" => $i
            ]); 
            return $result=0;
     }
     if($user[0]->status == 0)
     {
        $i='1';
        $result = UserModel::where("id",$user[0]->id)->update([
            "status" => $i
            ]); 
            return $result=1;
     }

    }

   
    

  


    public function changeblogstatus(Request $req)
    {

        $blog = BlogModel::where('id',$req->id)->get();
        if($blog[0]->status == 1)
        {
           $i='0';
           $result = BlogModel::where("id",$blog[0]->id)->update([
               "status" => $i
               ]); 
               return $result=0;
        }
        if($blog[0]->status == 0)
        {
           $i='1';
           $result = BlogModel::where("id",$blog[0]->id)->update([
               "status" => $i
               ]); 
               return $result=1;
        }    


    } 


    public function sendcontactmail(Request $req) {

        
        $data = new ContactModel;
        $data->name = $req->name;
        $data->email = $req->email;
        $data->phone = $req->phone;
        $data->message = $req->message;
        $res = $data->save();
       if($res == 1)
       {
              $result = Customize::orderBy('id', 'DESC')->take(1)->get();
         foreach($result as $row)
         {
          $contactmail=$row->cUsEmail;  
         }
         
         
        $email=$contactmail;
        $message="
              
        Hello, 
    
        This Query is Coming From Contact Us form  And Client Name - ". $req->name."  And Client Email  - ". $req->email." 
        And Client Phone - ".$req->phone."  And Client Message - ".$req->message.".
    
    
        The Ace Capital  Team
        ";
      $result=mail($email,"Query Coming From Contact Us Form",$message); 
    
      return $result; 
       }
        
    
    }



public function sendcareermail(Request $req)
{
   
        $savedata = new CarrerModel;
        $savedata->name = $req->name;
        $savedata->email = $req->email;
        $savedata->phone = $req->phone;
        $savedata->message = $req->message;
        $savedata->intrestedin = $req->intrestedin;
        $savedata->coverlatter = $req->coverlatter;
        $resume = $req->file('resume');
        $filename1 = date('YmdHi').rand().$resume->getClientOriginalName();
        $resume->move('CarrerAttachments', $filename1);
        $savedata->resume=$filename1;
        $res = $savedata->save();
     
         if($res == 1)
         {
        $result = Customize::orderBy('id', 'DESC')->take(1)->get();
         foreach($result as $row)
         {
          $careermail=$row->creersEmail;  
         }
        $data["email"] = $careermail;
        $data["title"] = "Mail from Career Page With Attachment";
        $data["name"]  = $req->name;
        $data["cemail"]  = $req->email;
        $data["phone"]  = $req->phone;
        $data["cmessage"]  = $req->message;
        $file = $req->file('resume');
        $filename =$file->getClientOriginalName();
        $path=public_path('attachments');
        $files= $file->move($path,$filename);

    
         $message="
              
         Hello, 
    
          This Query is Coming From Contact Us form  And Client Name - ". $req->name."  And Client Email  - ". $req->email." 
          And Client Phone - ".$req->phone."  And Client Message - ".$req->message." And Client Intrested in - ".$req->intrestedin."
          And Client Cover Letter - ".$req->coverlatter."
    
    
        The Ace Capital  Team ";
        
        $result=mail("jitendra.techies@gmail.com","Query Coming From Contact Carrer Page",$message); 
    
        Mail::send('mail.Test_mail',$data, function($message)use($data, $files) {
        $message->to($data["email"])->subject($data["cemail"]);
        $message->attach($files);
        });
        
      return $result;  
         }
    
   
      }
        public function changepositionstatus(Request $req)
        {
            
        $position = JobPositionModel::where('id',$req->id)->get();
        if($position[0]->status == 1)
        {
           $i='0';
           $result = JobPositionModel::where("id",$position[0]->id)->update([
               "status" => $i
               ]); 
               return $result=0;
        }
        if($position[0]->status == 0)
        {
           $i='1';
           $result = JobPositionModel::where("id",$position[0]->id)->update([
               "status" => $i
               ]); 
               return $result=1;
        }    

        }

       public function addjobcategory(Request $req)
        {

        $data = new JobPositionCategoryModel;
        $data->name = $req->Category;
        $result = $data->save();
        return $result;
        }
        public function Deletejobcategory(Request $req)
        {
    
            $result = JobPositionCategoryModel::where('id',$req->id)->delete();
            return $result;
        }
}
