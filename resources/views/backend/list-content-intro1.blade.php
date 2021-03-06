<?php
$title = 'ILS 2021 | Admin';
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
                    <li class="breadcrumb-item"><a href="javascript:void(0)">Table</a></li>
                    <li class="breadcrumb-item active"><a href="#">Content Intro I</a></li>
                </ol>
            </div>
            @if (session()->has('success'))
                <div class="alert alert-success mt-2">
                    {{ session()->get('success') }}
                </div>
            @endif
            <!-- row -->
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Table Content Intro I</h4>
                        @if (auth()->user()->userHasPermissions->where('component_name', 'intro1')->where('permissions', 'can add')->isNotEmpty())
                            <a href="{{ Route('add_contentIntro1') }}">
                                <div class="btn btn-primary">Add Content Intro I</div>
                            </a>
                        @endif
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-responsive-sm">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Title</th>
                                        <th>Deskripsi Paragraf Kiri</th>
                                        <th>Deskripsi Paragraf Kanan</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($contents as $content)
                                        <tr>
                                            <td>{{ $loop->index + 1 }}</td>
                                            <td>{{ $content->title }}</td>
                                            <td>{{ Str::words($content->desc_left, $words = 20, $end = '...') }}</td>
                                            <td>{{ Str::words($content->desc_right, $words = 20, $end = '...') }}</td>
                                            @if ($content->status_aktif == 0)
                                                <td class="text-warning">Nonaktif</td>
                                            @elseif ($content->status_aktif == 1)
                                                <td class="text-success">Aktif</td>
                                            @else
                                                <td class="text-primary">Undefined (!0/1)</td>
                                            @endif
                                            <td>
                                                <div class="d-flex">
                                                    @if (auth()->user()->userHasPermissions->where('component_name', 'intro1')->where('permissions', 'can edit')->isNotEmpty())
                                                        <a href="{{ Route('edit_contentIntro1', $content->id) }}"
                                                            class="btn btn-primary shadow btn-xs sharp mr-1"><i
                                                                class="fa fa-pencil"></i></a>
                                                    @endif
                                                    @if (auth()->user()->userHasPermissions->where('component_name', 'intro1')->where('permissions', 'can delete')->isNotEmpty())
                                                        <div class="sweetalert">
                                                            <form
                                                                action="{{ Route('delete_content_intro1', $content->id) }}"
                                                                method="POST">
                                                                @csrf
                                                                <button type="submit"
                                                                    onclick="return confirm('Yakin Ingin Mengapus Data?')"
                                                                    class="btn btn-danger shadow btn-xs sharp sweet-success-cancel"><i
                                                                        class="fa fa-trash"></i></button>
                                                            </form>
                                                        </div>
                                                    @endif
                                                </div>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
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
