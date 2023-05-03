<?php

namespace App\Http\Controllers\gforce;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Gforce\PaymentsModel;
use App\Models\Gforce\WorkshopModel;

class Payment extends Controller
{
    public function savePayment(Request $req){
        $data = new PaymentsModel;
        $data->student_id = $req->student_id;
        $data->booking_id = $req->booking_id;
        $data->payment_id = $req->payment_id;
        $data->payment_intent_id = $req->payment_intent_id;
        $data->type = $req->type;
        $data->price = $req->price;
        $res = $data->save();
        return $res;
    }
    
    public function getAllBookings($id){
        $res = PaymentsModel::where('student_id',$id)->get();
        foreach($res as $row){
            if($row->type == 'workshop'){
                $row['booking_name'] = WorkshopModel::where('id',$row->booking_id)->get()[0]->title;
            }
        }
        return $res;
    }
}
