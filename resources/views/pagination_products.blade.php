<table class="table table-bordered ">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Price</th>
            <th scope="col">Action</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($products as $product)
            <tr>
                <th scope="row">{{ $product->id }}</th>
                <td>{{ $product->name }}</td>
                <td>{{ $product->price }}</td>
                <td>
                    <a href="" class="btn btn-success update_product_form" data-toggle="modal"
                        data-target="#updateModal" data-id="{{ $product->id }}" data-name="{{ $product->name }}"
                        data-price="{{ $product->price }}">
                        <i class="las la-edit"></i>
                    </a>
                    <a href="" class="btn btn-danger delete_product" data-id="{{ $product->id }}">
                        <i class="las la-times">
                        </i></i></a>

                </td>
            </tr>
        @endforeach
    </tbody>
</table>
{!! $products->links() !!}
