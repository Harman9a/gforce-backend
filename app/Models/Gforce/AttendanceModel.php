<?php

namespace App\Models\gforce;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AttendanceModel extends Model
{
    use HasFactory;

    public $table = 'attendance';
    public $timestamps = false;
}
