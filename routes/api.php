<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SendMailController;
use App\Http\Controllers\MailController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

$controller_path = 'App\Http\Controllers';

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


// gforce
// my routes
Route::post('/submitBranch', $controller_path . '\gforce\BranchCon@submitBranch')->name('submitBranch');
Route::post('/updateBranch', $controller_path . '\gforce\BranchCon@updateBranch')->name('updateBranch');
Route::post('/deletePackage', $controller_path . '\gforce\PackageCon@deletePackage')->name('deletePackage');
Route::post('/signup', $controller_path . '\gforce\UserCon@signup')->name('signup');
Route::post('/signin', $controller_path . '\gforce\UserCon@signin')->name('signin');
Route::get('/getBranch', $controller_path . '\gforce\BranchCon@getBranch')->name('getBranch');
Route::post('/getWorkShopByBranch', $controller_path . '\Api\ProjectClass@getWorkShopByBranch')->name('getWorkShopByBranch');
Route::post('/getClassByBranch', $controller_path . '\Api\ProjectClass@getClassByBranch')->name('getClassByBranch');
Route::get('/getClasses', $controller_path . '\Api\ProjectClass@getClasses')->name('getClasses');
Route::get('/getOpenClasses', $controller_path . '\Api\ProjectClass@getOpenClasses')->name('getOpenClasses');
Route::get('/getWorkshops', $controller_path . '\Api\ProjectClass@getWorkshops')->name('getWorkshops');
Route::get('/getBlogs', $controller_path . '\Blog\Blog@getBlogs')->name('getBlogs');
Route::get('/getBlogsCat', $controller_path . '\Blog\Blog@getBlogsCat')->name('getBlogsCat');
Route::post('/deleteBranch', $controller_path . '\gforce\BranchCon@deleteBranch')->name('deleteBranch');
Route::get('/getSingleBlogs/{id}', $controller_path . '\Blog\Blog@getSingleBlogs')->name('getSingleBlogs');

Route::post('/getProfile', $controller_path . '\gforce\UserCon@getProfile')->name('getProfile');
Route::post('/savePayment', $controller_path . '\gforce\Payment@savePayment')->name('savePayment');
Route::post('/getWorkShopSingle', $controller_path . '\Api\ProjectClass@getWorkShopSingle')->name('getWorkShopSingle');
Route::get('/getAttendance', $controller_path . '\Api\Attendance@getAttendance')->name('getAttendance');
Route::get('/getAllBookings/{id}', $controller_path . '\gforce\Payment@getAllBookings')->name('getAllBookings');
Route::post('/markAttendance', $controller_path . '\Api\Attendance@markAttendance')->name('markAttendance');
Route::get('/getAttendanceSingle/{id}', $controller_path . '\Api\Attendance@getAttendanceSingle')->name('getAttendanceSingle');

Route::post('/getClassesByBranchByDate', $controller_path .'\Api\ProjectClass@getClassesByBranchByDate')->name('getClassesByBranchByDate');
Route::post('/getOpenClassSingle', $controller_path .'\Api\ProjectClass@getOpenClassSingle')->name('getOpenClassSingle');

Route::get('/getJobCategory', $controller_path .'\Api\Job@getJobCategory')->name('getJobCategory');
Route::get('/getJobs', $controller_path .'\Api\Job@getJobs')->name('getJobs');
Route::post('/submitCareerForm', $controller_path .'\Api\Job@submitCareerForm')->name('submitCareerForm');


//Jitendra Routes
Route::post('/changeProjectClassStatus', $controller_path . '\Api\ProjectClass@changeProjectClassStatus')->name('changeProjectClassStatus');
Route::post('/changeOpenClassStatus', $controller_path . '\Api\ProjectClass@changeOpenClassStatus')->name('changeOpenClassStatus');
Route::post('/changeWorkshopStatus', $controller_path . '\Api\ProjectClass@changeWorkshopStatus')->name('changeWorkshopStatus');
Route::post('/changeWorkshopStatus', $controller_path . '\Api\ProjectClass@changeWorkshopStatus')->name('changeWorkshopStatus');
Route::post('/changeblogstatus', $controller_path . '\Api\User@changeblogstatus')->name('changeblogstatus');
Route::post('/sendcontactmail', $controller_path . '\Api\User@sendcontactmail')->name('sendcontactmail');
// Route::post('/sendcareermail', $controller_path . '\Api\User@sendcareermail')->name('sendcareermail');

Route::post('/sendcareermail',[MailController::class,'sendMail']);
Route::post('/changeuserstatus', $controller_path . '\Api\User@Index')->name('changeuserstatus');
Route::post('/changeTrainerStatus', $controller_path . '\Api\ProjectClass@changeTrainerStatus')->name('changeTrainerStatus');
Route::post('/addblogcategory', $controller_path . '\Api\Blog@addblogcategory')->name('addblogcategory');
Route::post('/Deleteblogcategory', $controller_path . '\Api\Blog@Deleteblogcategory')->name('Deleteblogcategory');
Route::post('/changepositionstatus', $controller_path . '\Api\User@changepositionstatus')->name('changepositionstatus');
Route::post('/addjobcategory', $controller_path . '\Api\User@addjobcategory')->name('addjobcategory');
Route::post('/Deletejobcategory', $controller_path . '\Api\User@Deletejobcategory')->name('Deletejobcategory');