<?php

namespace App\Http\Requests\Admin\Post;

use Illuminate\Foundation\Http\FormRequest;

class UpdateRequest extends FormRequest
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
            'title' => 'required|string',
            'content' => 'required|string',
            'preview_image' => 'nullable|image',
            'main_image' => 'nullable|image',
            'category_id' => 'required|exists:categories,id',
            'tag_ids' => 'array|nullable',
            'tag_ids.*' => 'nullable|integer|exists:tags,id',
        ];
    }

    public function messages()
    {
        return [
            'title.required' => 'Обязательное поле',
            'title.string' => 'Введите строковый тип данных',
            'content.required' => 'Обязательное поле',
            'content.string' => 'Введите строковый тип данных',
            'preview_image.required' => 'Обязательное поле',
            'preview_image.image' => 'Поддерживаемый тип данных: изображение',
            'main_image.required' => 'Обязательное поле',
            'main_image.image' => 'Поддерживаемый тип данных: изображение',
            'category_id.required' => 'Обязательное поле',
        ];
    }
}
