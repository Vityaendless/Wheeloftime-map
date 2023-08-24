@extends('components.app')

@section('content')
<div class="card-header">{{ __('Admin panel') }} - {{ $title }}</div>
<div style="background:#FFFFFF;">
    <a href="/admin">Return</a>
    @if (session('status'))
        <div class="alert alert-success" role="alert">
            {{ session('status') }}
        </div>
    @endif
<div class="form">
    <form enctype="multipart/form-data"action="" method="POST">
    @csrf
        <label for="name">Name: </label><br>
        <input id="name" name="name" value="{{ $point->event_name }}">
        <br>
        <label for="desc">Description: </label><br>
        <textarea id="desc" name="desc" value="{{ $point->event_desc }}">
        </textarea>
        <br>
        <label for="x">X: </label><br>
        <input id="x" name="x" value="{{ $point->event_x }}">
        <br>
        <label for="y">Y: </label><br>
        <input id="y" name="y" value="{{ $point->event_y }}">
        <br>
        <p>Current image:</p>
        <img 
            width="300" 
            src="{{ asset($point->event_image) }}">
        <br>
        <p>{{ $point->event_image }}</p><br>
        <input 
            type="file"
            id="img-event" 
            name="img-event" 
            class="form-control-plaintext img-event" 
            accept=".jpg,.jpeg,.png" 
        >
        <br>     
        <input type="submit" value="Edit">
    </form>
    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif
</div>
</div>
@endsection
