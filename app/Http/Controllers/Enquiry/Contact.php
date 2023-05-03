<?php

namespace App\Http\Controllers\Enquiry;

use App\Http\Controllers\Controller;
use App\Models\Gforce\ContactModel;
use Illuminate\Http\Request;

class Contact extends Controller
{
   
    public function index()
    {
        $tableData = ContactModel::orderBy('id', 'DESC')->get();
        return view('content.Enquiry.allContactusView')->with('tableData',$tableData);
        
    }
    public function getSingleContact($id)
    {
        $tableData = ContactModel::where('id',$id)->get();
        return view('content.Enquiry.singleContactView')->with('contact',$tableData);

    }

//   public function sendcontactmail(Request $req) {

//       $data=new ContactModel();
//       $data->name=$req->name;
//       $data->email=$req->email;
//       $data->phone=$req->phone;
//       $data->message=$req->message;
      
//      $result = Customize::orderBy('id', 'DESC')->take(1)->get();
//          foreach($result as $row)
//          {
//           $contactmail=$row->cUsEmail;  
//          }
         
         
//         $email=$contactmail;
//         $message="
              
//         Hello, 
    
//         This Query is Coming From Contact Us form  And Client Name - ". $req->name."  And Client Email  - ". $req->email." 
//         And Client Phone - ".$req->phone."  And Client Message - ".$req->message.".
    
    
//         The Ace Capital  Team
//         ";
//       $result=mail($email,"Query Coming From Contact Us Form",$message); 
    
//     if($result == 1)
//     {    
    
//     }
//       return $result;
  
    
//     }


}
