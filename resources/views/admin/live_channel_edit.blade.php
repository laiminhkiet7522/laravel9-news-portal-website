@extends('admin.layout.app')

@section('heading', 'Edit Live Channel')
@section('button')
    <a href="{{ route('admin_live_channel_show') }}" class="btn btn-primary"><i class="fas fa-eye"></i> View</a>
@endsection

@section('main_content')
    <div class="section-body">
        <form action="{{ route('admin_live_channel_update', $live_channel_data->id) }}" method="post">
            @csrf
            <div class="row">
                <div class="col-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group mb-3">
                                <label>Video ID *</label>
                                <input type="text" class="form-control" name="video_id"
                                    value="{{ $live_channel_data->video_id }}">
                            </div>
                            <div class="form-group mb-3">
                                <label>Heading *</label>
                                <input type="text" class="form-control" name="heading"
                                    value="{{ $live_channel_data->heading }}">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Update</button>
            </div>
        </form>
    </div>
@endsection
