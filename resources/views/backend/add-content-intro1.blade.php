<?php
  $title="ILS 2021 | Admin";
?>

@extends('layouts.template')
@section('content')
    
<!--**********************************
    Content body start
***********************************-->
<div class="content-body">
  <div class="container-fluid">
    <div class="page-titles">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{Route('home_admin')}}">Dashboard</a></li>
        <li class="breadcrumb-item"><a href="javascript:void(0)">Content Intro I</a></li>
      </ol>
    </div>
    <!-- row -->
    <div class="row">
      <div class="col-xl-12 col-xxl-12">
        <div class="card">
          <div class="card-header">
            <h4 class="card-title">Add List Content</h4>
          </div>
          <div class="card-body">
            <form action="{{Route('save_addcontentIntro1')}}" method="POST" id="step-form-horizontal" class="step-form-horizontal" >
              @csrf
              <div>
                <section>
                  <div class="row">
                    <div class="col-lg-12 mb-2">
                      <div class="form-group">
                        <label class="text-label">title*</label>
                        <input type="text" class="form-control" id="title" name="title" aria-describedby="inputGroupPrepend2" required>
                      </div>
                    </div>
                    <div class="col-lg-12 mb-2">
                      <div class="form-group">
                        <label class="text-label">Deskripsi Paragraf Kiri*</label>
                        <textarea class="form-control" rows="5" id="desc_left" name="desc_left" ></textarea>
                      </div>
                    </div>
                    <div class="col-lg-12 mb-2">
                      <div class="form-group">
                        <label class="text-label">Deskripsi Paragraf Kanan*</label>
                        <textarea class="form-control" rows="5" id="desc_right" name="desc_right" ></textarea>
                      </div>
                    </div>
                    <div class="col-lg-12 mb-3">
                      <button type="submit" class="btn btn-primary" style="float:right;">Submit</button>
                      <a href="{{Route('list_intro1')}}" class="btn btn-info" style="float:left;">Back</a>   
                    </div>
                  </div>
                </section>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!--**********************************
    Content body end
***********************************-->
@endsection