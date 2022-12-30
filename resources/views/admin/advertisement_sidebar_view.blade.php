@extends('admin.layout.app')

@section('heading', 'Sidebar Advertisements')
@section('button')
<a href="" class="btn btn-primary"><i class="fas fa-plus"></i> Add</a>
@endsection

@section('main_content')
    <div class="section-body">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="example1">
                                <thead>
                                    <tr>
                                        <th>SL</th>
                                        <th>Photo</th>
                                        <th>URL</th>
                                        <th>Location</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>photo</td>
                                        <td>url</td>
                                        <td>location</td>
                                        <td class="pt_10 pb_10">
                                            <a href="" class="btn btn-primary">Edit</a>
                                            <a href="" class="btn btn-danger"
                                                onClick="return confirm('Are you sure?');">Delete</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>photo</td>
                                        <td>url</td>
                                        <td>location</td>
                                        <td class="pt_10 pb_10">
                                            <a href="" class="btn btn-primary">Edit</a>
                                            <a href="" class="btn btn-danger"
                                                onClick="return confirm('Are you sure?');">Delete</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
