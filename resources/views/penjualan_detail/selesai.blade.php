@extends('layouts.app')

@section('title')
  Selesai Transaksi
@endsection

@section('breadcrumb')
   @parent  
   <li>Transaksi</li>
   <li>Selesai</li>
@endsection

@section('content') 
<div class="row">
  <div class="col-xs-12">
    <div class="box">
       <div class="box-body">
          <div class="alert alert-success alert-dismissible">
            <i class="icon fa fa-check"></i>
            Data Transaksi telah disimpan.
          </div>
          <div style="display:flex;flex-direction:row">
          <a class="btn btn-primary btn-lg" href="{{ route('transaksi.new') }}">Transaksi Baru</a>
          <a style="margin-left:10px;" class="btn btn-warning btn-lg" href="#') }}">Print</a>
          </div>
          <br><br><br><br>
      </div>
   </div>
  </div>
</div>
@endsection