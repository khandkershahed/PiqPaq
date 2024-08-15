<x-admin-app-layout :title="'Page Banner List'">
    <div class="card">
        <div class="card-header bg-dark align-items-center d-flex justify-content-between">
            <div>
                <h1 class="mb-0 text-center w-100 text-white">Manage Your Baners</h1>
            </div>
            <div>
                <a href="#" class="btn btn-white rounded-2">
                    <span class="svg-icon svg-icon-3">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                            fill="none">
                            <rect opacity="0.3" x="2" y="2" width="20" height="20" rx="5"
                                fill="currentColor" />
                            <rect x="10.8891" y="17.8033" width="12" height="2" rx="1"
                                transform="rotate(-90 10.8891 17.8033)" fill="currentColor" />
                            <rect x="6.01041" y="10.9247" width="12" height="2" rx="1"
                                fill="currentColor" />
                        </svg>
                    </span>
                    Add Banner
                </a>
            </div>
        </div>
        <div class="card-body py-0">
            <table class="table my-datatable table-striped table-row-bordered gy-5 gs-7">
                <thead class="bg-light-danger">
                    <tr class="text-center text-gray-400 fw-bolder fs-7 text-uppercase gs-0">
                        <th width="5%">Sl</th>
                        <th width="40%">Image</th>
                        <th width="25%">Page Name</th>
                        <th width="18%">Status</th>
                        <th width="12%">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @if ($banners)
                        @foreach ($banners as $banner)
                            <tr class="odd">
                                <td>
                                    {{ $loop->iteration }}
                                </td>
                                <td>
                                    <img class="w-450px h-50px" src="{{ asset('storage/' . $banner->image) }}"
                                        alt="{{ $banner->page_name }}">
                                </td>
                                <td>
                                    {{ ucfirst($banner->page_name) }}
                                </td>
                                <td>
                                    <span class="badge {{ $banner->status == 'active' ? 'bg-success' : 'bg-danger' }}">
                                        {{ $banner->status == 'active' ? 'Active' : 'InActive' }}</span>
                                </td>
                                <td class="d-flex justify-content-between align-items-center">
                                    <a href="#"
                                        class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1"
                                        data-bs-toggle="modal" data-bs-target="#faqViewModal_{{ $banner->id }}">
                                        <i class="fa-solid fa-expand"></i>
                                    </a>
                                    <a href="{{ route('admin.faq.edit', $banner->id) }}"
                                        class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1">
                                        <i class="fa-solid fa-pen"></i>
                                    </a>
                                    <a href="{{ route('admin.faq.destroy', $banner->id) }}"
                                        class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1 delete"
                                        data-kt-docs-table-filter="delete_row">
                                        <i class="fa-solid fa-trash-can-arrow-up"></i>
                                    </a>
                                </td>
                            </tr>
                        @endforeach
                    @endif
                </tbody>
            </table>
        </div>
    </div>

    @push('scripts')
        <script>
            $(document).ready(function() {


                $(document).on('change', '.status-toggle', function() {
                    const id = $(this).data('id');
                    const route = "{{ route('admin.banner.toggle-status', ':id') }}".replace(':id', id);
                    toggleStatus(route, id);
                });
            });
        </script>
    @endpush
</x-admin-app-layout>
