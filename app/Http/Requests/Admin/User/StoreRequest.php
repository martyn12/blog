<?php

namespace App\Http\Requests\Admin\User;

use Illuminate\Foundation\Http\FormRequest;

class StoreRequest extends FormRequest
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
     * @return array<string, \Illuminate\Contracts\Validation\Rule|array|string>
     */
    public function rules(): array
    {
        return [
            'name' => 'required|string',
            'email' => 'required|string|email|unique:users',
            'password' => 'required|string',
            'role' => 'required|integer',
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'Обязательное поле',
            'name.string' => 'Поле принимает буквенные символы',
            'email.required' => 'Обязательное поле',
            'email.string' => 'Поле принимает буквенные символы',
            'email.email' => 'Введите email',
            'email.unique' => 'Этот email уже занят',
            'password.required' => 'Обязательное поле',
        ];
    }
}
