@extends('layouts/contentNavbarLayout')

@section('title', 'Tables - Project Class Schedule')

@section('page-script')
<script src="{{asset('assets/js/pages-account-settings-account.js')}}"></script>
@endsection

@section('page-style')
<link rel="stylesheet" href="{{asset('assets/vendor/css/pages/page-icons.css')}}" />
@endsection

@section('vendor-style')
<link rel="stylesheet" href="{{asset('assets/vendor/libs/apex-charts/apex-charts.css')}}">
@endsection

@section('vendor-script')
<script src="{{asset('assets/vendor/libs/apex-charts/apexcharts.js')}}"></script>
@endsection

@section('page-script')
<script src="{{asset('assets/js/dashboards-analytics.js')}}"></script>
@endsection
<link rel="stylesheet" href="{{asset('assets/richtexteditor/rte_theme_default.css')}}" />
<script type="text/javascript" src="{{asset('assets/richtexteditor/rte.js')}}"></script>
<script type="text/javascript" src="{{asset(' assets/richtexteditor/plugins/all_plugins.js')}}"></script>
<script type="text/javascript" src="{{asset(' assets/richtexteditor/rte-upload.js')}}"></script>
@section('content')
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAoyZ_yVsI5N8KhjbWRyQeme1Pfz2DRYYc&libraries=places&callback=initAutocomplete"></script>
<style>
    .form-check-input[type=checkbox] {
        border: 1px solid #00000061;
    }
    .error{
      color:red;
    }
    .AceSelected{
    border: 4px solid #04917a
  }
  #myImg{
    height:100px;
  }
   
</style>
<div class="row">
    <div class="col-md-12">

        <div class="card mb-4">
          <h5 class="card-header">Project Class Schedule
          </h5>
          <div class="card-body">
              <div class="row">
              <input type="hidden" name="proid" id="proid" value="{{$projectClass->id}}" />
                  <div class="mb-3 col-md-6">
                    <label for="name" class="form-label">Class Name *</label>
                    <input class="form-control" type="text" id="name" name="name" value="{{$projectClass->name}}" disabled/>
                  </div> 
                    <div class="mb-3 col-md-6">
                    <label for="exampleFormControlSelect1" class="form-label">Branch Name *</label>
                    <select id="branchname" name="branchname" class="form-select"  aria-label="Default select example" disabled>
                      <option value="0" selected="">Select Branch</option>
                      @foreach($branch as $r)
                      <option value="{{$r->id}}" <?php echo $projectClass->branchname == $r->id ? 'selected' : null ?>>{{$r->name}}</option>
                      @endforeach
                    </select>
                  </div>

                  <div class="mb-3 col-md-6">
                    <label for="exampleFormControlSelect1" class="form-label">Trainer  Name *</label>
                    <select id="branchname" name="branchname" class="form-select"  aria-label="Default select example" disabled>
                      <option value="0" selected="">Select Trainer</option>
                      @foreach($trainer as $trainer)
                      <option value="{{$trainer->id}}" <?php echo $projectClass->trainer_id == $trainer->id ? 'selected' : null ?>>{{$trainer->name}}</option>
                      @endforeach
                    </select>
                  </div> 
                  
                  <div class="mb-3 col-md-6">
                    <label for="bacthname" class="form-label">Batch Name *</label>
                    <input class="form-control" type="text" id="bacthname" name="bacthname"  value="<?php echo ($projectClass->bacthname == 1) ? "Batch 1" : (($projectClass->bacthname == 2)  ? "Batch 2" : "Batch 3"); ?>" disabled/>
                  </div>

                  <div class="mb-3 col-md-6">
                    <label for="starttime" class="form-label">Start Time *</label>
                    <input class="form-control" type="time" id="starttime" name="starttime" value="{{$projectClass->starttime}}" disabled/>
                  </div>

                  
                  <div class="mb-3 col-md-6">
                    <label for="endtime" class="form-label">End Time *</label>
                    <input class="form-control" type="time" id="endtime" name="endtime" value="{{$projectClass->endtime}}" disabled/>
                  </div>

               <div class="table-responsive text-nowrap" id="firstdiv">
                <table class="table" id="example" class="table display">
                <thead>
                <tr>
                <th>Student Name</th>
                <th>Attendence</th>
                </tr>
                </thead>
                <tbody class="table-border-bottom-0" id="mydata">

                <tr>
                <td>ABC</td>
                <td>Present</td>
                </tr>
                <tr>
                <td>EFG</td>
                <td>Present</td>
                </tr>
                <tr>
                <td>HIJ</td>
                <td>Present</td>
                </tr>
                <tr>
                <td>KLM</td>
                <td>Present</td>
                </tr>

                </tbody>
                </table>
                </div>

                
                </div>

            </div>
              </div>
          </div>
         
        <!-- /Notifications -->
      </div>
  </div>




  <!-- /Account -->
        </div>
      </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.1.3/axios.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<link rel="stylesheet" href="sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

@endsection

