   <!-- Optional JavaScript -->
   <!-- jQuery first, then Popper.js, then Bootstrap JS -->
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
       integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
   </script>
   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
       integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
   </script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
       integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
   </script>
   <script src="https://code.jquery.com/jquery-3.7.1.min.js"
       integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
       integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
   </script>
   <script src="http://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script>

   <script>
       $.ajaxSetup({
           headers: {
               'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
           }
       });
   </script>
   <script>
       $(document).ready(function() {
           $(document).on('click', '.add_product', function(e) {
               e.preventDefault();
               let name = $('#name').val();
               let price = $('#price').val();
               console.log(name + price);

               $.ajax({
                   url: "{{ route('add.product') }}",
                   method: 'post',
                   data: {
                       name: name,
                       price: price
                   },
                   success: function(res) {
                       if (res.status == 'success') {
                           $('#addModal').modal('hide');
                           $('.modal-backdrop').remove();
                           $('#addProductForm')[0].reset();
                           $('#addErrMsgContainer').empty();
                           $('.table').load(location.href + ' .table');

                           Command: toastr["success"]("Product Added", "Success")

                           toastr.options = {
                               "closeButton": true,
                               "debug": false,
                               "newestOnTop": false,
                               "progressBar": false,
                               "positionClass": "toast-top-right",
                               "preventDuplicates": false,
                               "onclick": null,
                               "showDuration": "300",
                               "hideDuration": "1000",
                               "timeOut": "5000",
                               "extendedTimeOut": "1000",
                               "showEasing": "swing",
                               "hideEasing": "linear",
                               "showMethod": "fadeIn",
                               "hideMethod": "fadeOut"
                           }
                       }
                   },
                   error: function(err) {
                       let error = err.responseJSON;

                       // Clear existing error messages
                       $('#addErrMsgContainer').empty();

                       if (error.errors) {
                           // Display validation errors
                           $.each(error.errors, function(index, value) {
                               $('#addErrMsgContainer').append(
                                   '<span class="text-danger">' + value +
                                   '</span><br>');
                           });
                       } else {
                           // Handle other types of errors if needed
                           $('#addErrMsgContainer').append(
                               '<span class="text-danger">An error occurred.</span><br>');
                       }
                   }
               });
           });
           //show old values
           $(document).on('click', '.update_product_form', function() {
               let id = $(this).data('id');
               let name = $(this).data('name');
               let price = $(this).data('price');
               $('#up_id').val(id); // Set the product id
               $('#up_name').val(name); // Set the product name
               $('#up_price').val(price); // Set the product price

           });

           //update product
           $(document).on('click', '.update_product', function(e) {
               e.preventDefault();
               let up_id = $('#up_id').val();
               let up_name = $('#up_name').val();
               let up_price = $('#up_price').val();
               // console.log(name + price);

               $.ajax({
                   url: "{{ route('update.product') }}",
                   method: 'post',
                   data: {
                       up_id: up_id,
                       up_name: up_name,
                       up_price: up_price
                   },
                   success: function(res) {
                       if (res.status == 'success') {

                           $('#updateModal').modal('hide');
                           $('.modal-backdrop').remove();
                           $('#updateProductForm')[0].reset();
                           $('#updateErrMsgContainer').empty();
                           $('.table').load(location.href + ' .table');


                           Command: toastr["success"]("Product Updated", "Success")

                           toastr.options = {
                               "closeButton": true,
                               "debug": false,
                               "newestOnTop": false,
                               "progressBar": false,
                               "positionClass": "toast-top-right",
                               "preventDuplicates": false,
                               "onclick": null,
                               "showDuration": "300",
                               "hideDuration": "1000",
                               "timeOut": "5000",
                               "extendedTimeOut": "1000",
                               "showEasing": "swing",
                               "hideEasing": "linear",
                               "showMethod": "fadeIn",
                               "hideMethod": "fadeOut"
                           }

                       }
                   },
                   error: function(err) {
                       let error = err.responseJSON;

                       // Clear existing error messages
                       $('#updateErrMsgContainer').empty();

                       if (error.errors) {
                           // Display validation errors
                           $.each(error.errors, function(index, value) {
                               $('#updateErrMsgContainer').append(
                                   '<span class="text-danger">' + value +
                                   '</span><br>');

                           });
                       } else {
                           // Handle other types of errors if needed
                           $('.errMsgContainer').append(
                               '<span class="text-danger">An error occurred.</span><br>');
                       }
                   }
               });
           });



           //delete product
           $(document).on('click', '.delete_product', function(e) {
               e.preventDefault();
               let product_id = $(this).data('id');
               //alert(product_id);
               if (confirm('Are You sure to delete product ??')) {
                   $.ajax({
                       url: "{{ route('delete.product') }}",
                       method: 'post',
                       data: {
                           product_id: product_id
                       },
                       success: function(res) {
                           if (res.status == 'success') {
                               $('.table').load(location.href + ' .table');

                               Command: toastr["success"]("Product Deleted", "Success")

                               toastr.options = {
                                   "closeButton": true,
                                   "debug": false,
                                   "newestOnTop": false,
                                   "progressBar": false,
                                   "positionClass": "toast-top-right",
                                   "preventDuplicates": false,
                                   "onclick": null,
                                   "showDuration": "300",
                                   "hideDuration": "1000",
                                   "timeOut": "5000",
                                   "extendedTimeOut": "1000",
                                   "showEasing": "swing",
                                   "hideEasing": "linear",
                                   "showMethod": "fadeIn",
                                   "hideMethod": "fadeOut"
                               }
                           }
                       }
                   });
               }
           });


           //pagination


           $(document).on('click', '.pagination a', function(e) {
               e.preventDefault();
               let page = $(this).attr('href').split('page=')[1]
               product(page);

           });
           function product(page) {
               $.ajax({
                   url: "/pagination/pagination-data?page=" + page,
                   success: function(res) {
                       $('.table-data').html(res);
                   }
               })
           }



       });
   </script>
