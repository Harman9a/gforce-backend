

@extends('layouts/contentNavbarLayout')

@section('title', 'Tables - Open Class Schedule')

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
          <h5 class="card-header">Open Class Schedule</h5>
          <div class="card-body">
              <div class="row">
              <input type="hidden" name="proid" id="proid" value="{{$openClass->id}}" />
              <div class="mb-3 col-md-6">
                    <label for="classname" class="form-label">Class Name *</label>
                    <input class="form-control" type="text" id="classname" name="classname" value="{{$openClass->classname}}" disabled/>
                  </div>
                 
                  <div class="mb-3 col-md-6">
                    <label for="exampleFormControlSelect1" class="form-label">Branch Name *</label>
                    <select id="branchname" name="branchname" class="form-select"  aria-label="Default select example" disabled>
                      <option value="0" selected="">Select Branch</option>
                      @foreach($branch as $r)
                      <option value="{{$r->id}}" <?php echo $openClass->branchname == $r->id ? 'selected' : null ?>>{{$r->name}}</option>
                      @endforeach
                    </select>
                  </div> 
                  <div class="mb-3 col-md-6">
                    <label for="scheduledate" class="form-label">Schedule Date / Time*</label>
                    <input class="form-control" type="text" id="scheduledate" name="scheduledate" value="{{$openClass->scheduledate}} / {{$openClass->scheduletime}}" disabled/>
                  </div>

                  <div class="mb-3 col-md-6">
                    <label for="exampleFormControlSelect1" class="form-label">Trainer  Name *</label>
                    <select id="branchname" name="branchname" class="form-select"  aria-label="Default select example" disabled>
                      <option value="0" selected="">Select Trainer</option>
                      @foreach($trainer as $trainer)
                      <option value="{{$trainer->id}}" <?php echo $openClass->trainer_id == $trainer->id ? 'selected' : null ?>>{{$trainer->name}}</option>
                      @endforeach
                    </select>
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
          </div>

        <!-- /Notifications -->
      </div>
  </div>
<!--</form>-->



  <!-- /Account -->
        </div>
      </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.1.3/axios.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<link rel="stylesheet" href="sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>



@endsection

