<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Ace\BlogModel;
use App\Models\Ace\BlogCategoryModel;
use App\Models\Gforce\AttendanceModel;
use App\Models\Gforce\WorkshopModel;

class Attendance extends Controller
{
    public function getAttendance(){
        $result = AttendanceModel::all();
        return $result;
    }

    public function markAttendance(Request $req){
        $data = new AttendanceModel;

        $data->student_id = $req->student_id;
        $data->type = $req->type;
        $data->date = $req->date;
        $data->time = $req->time;
        $data->class_id = $req->class_id;
        $res = $data->save();
        return $res;
    }

    public function getAttendanceSingle($id){
        $result = AttendanceModel::where('student_id',$id)->get();
        foreach($result as $row){
            if($row->type == 'workshop'){
                $row['booking_name'] = WorkshopModel::where('id',$row->class_id)->get()[0]->title;
            }
        }
        return $result;
    }
}