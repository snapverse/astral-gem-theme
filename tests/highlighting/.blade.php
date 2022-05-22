@extends('layouts.app')
@section('title', 'Page Title')
@section('sidebar')
  @parent
  <p>This refers to the master sidebar.</p>
@endsection
@section('content')
  <p>This is my body content.</p>
@endsection

<html>
   <head>
      <title>DemoLaravel - @yield('title')</title>
   </head>
   <body>
      @yield('content')
   </body>
</html>