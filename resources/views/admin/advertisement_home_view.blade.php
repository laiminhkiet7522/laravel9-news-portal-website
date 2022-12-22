@extends('admin.layout.app')

@section('heading', 'Home Advertisements')

@section('main_content')
    <div class="section-body">
        <div class="row">
            <div class="col-6">
                <div class="card">
                    <div class="card-body">
                        <h5>About Search</h5>
                        <form action="" method="post" enctype="multipart/form-data">
                            <div class="form-group mb-3">
                                <label>Existing Photo</label>
                                <div>
                                    <img src="{{ asset('uploads/' . $home_ad_data->above_search_ad) }}" alt=""
                                        style="width: 100%">
                                </div>
                            </div>
                            <div class="form-group mb-3">
                                <label>Change Photo</label>
                                <div>
                                    <input type="file" name="above_search_ad">
                                </div>
                            </div>
                            <div class="form-group mb-3">
                                <label>URL</label>
                                <input type="text" class="form-control" name="above_search_ad_url"
                                    value="{{ $home_ad_data->above_search_ad_url }}">
                            </div>
                            <div class="form-group mb-3">
                                <label>Status</label>
                                <select name="above_search_ad_status" class="form-control">
                                    <option value="Show">Show</option>
                                    <option value="Hide">Hide</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-6">
                <div class="card">
                    <div class="card-body">
                        <h5>About Footer</h5>
                        <form action="" method="post" enctype="multipart/form-data">
                            <div class="form-group mb-3">
                                <label>Existing Photo</label>
                                <div>
                                    <img src="{{ asset('uploads/' . $home_ad_data->above_footer_ad) }}" alt=""
                                        style="width: 100%">
                                </div>
                            </div>
                            <div class="form-group mb-3">
                                <label>Change Photo</label>
                                <div>
                                    <input type="file" name="above_footer_ad">
                                </div>
                            </div>
                            <div class="form-group mb-3">
                                <label>URL</label>
                                <input type="text" class="form-control" name="above_footer_ad_url" value="{{ $home_ad_data->above_footer_ad_url }}">
                            </div>
                            <div class="form-group mb-3">
                                <label>Status</label>
                                <select name="above_footer_ad_status" class="form-control">
                                    <option value="Show">Show</option>
                                    <option value="Hide">Hide</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
