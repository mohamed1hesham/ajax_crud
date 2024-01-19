<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'up_name' => 'required|unique:products,name,' . $this->up_id,
            'up_price' => 'required'
        ];
    }
    public function messages(): array
    {
        return [
            'up_name.required' => 'Name is Required',
            'up_name.unique' => 'Product Already Exists',
            'up_price.required' => 'Price is Required'
        ];
    }
}
