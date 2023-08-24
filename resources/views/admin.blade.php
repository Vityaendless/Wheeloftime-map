@extends('components.app')

@section('content')
<div>
    <div>
        <div>
            <div>
                <div class="card-header">{{ __('Admin panel') }}</div>

                <div>
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    {{ __('Points list:') }}
                        <div class="form">
                            <form action="" method="POST">
                                @csrf
                                <label for="name">Name: </label>
                                <input id="name" name="name">
                                <label for="status">Status: </label>
                                <select id="status" name="status">
                                    <option id="status" 
                                            value="0" 
                                            selected="selected" 
                                    >
                                    </option>
                                    @foreach($statuses as $status)
                                        <option 
                                            id="status" 
                                            value="{{ $status->id }}"
                                            >
                                            {{ $status->name }}
                                        </option>
                                    @endforeach
                                </select>
                                <input type="submit" value="Find">
                            </form>
                        </div>
                        @if (!empty($coords))
                         <table class="points">
                            <tbody>
                                <tr>
                                    <td>№</td>
                                    <td>Name</td>
                                    <td>Image</td>
                                    <td>Description</td>
                                    <td>X coord</td>
                                    <td>Y coord</td>
                                    <td>Status</td>
                                    <td>Actions</td>
                                </tr>
                                @foreach ($coords as $coord)
                                    <tr 
                                        @if ($coord->status_id == 2)
                                            bgcolor="87C144"
                                        @else
                                            bgcolor="C16344"
                                        @endif
                                    >
                                        <td>
                                            {{ $coord->id }}
                                        </td>
                                        <td>
                                            {{ $coord->event_name }}
                                        </td>
                                        <td>
                                            <img 
                                                src="{{ $coord->event_image }}">
                                        </td>
                                        <td>
                                            {{ $coord->event_desc }}
                                        </td>
                                        <td>
                                            {{ $coord->event_x }}
                                        </td>
                                        <td>
                                            {{ $coord->event_y }}
                                        </td>
                                        <td>
                                            {{ $coord->status->name }}   
                                        </td>
                                        <td>
                                            <a href="/point/moderate/{{ $coord->id }}">Change status</a>
                                             | 
                                            <a href="/point/delete/{{ $coord->id }}">Delete</a>
                                             | 
                                            <a href="/point/edit/{{ $coord->id }}">Change data</a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        @endif
                        <div class="pagination">
                            <div>{{ $coords->links() }}</div>
                        </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
