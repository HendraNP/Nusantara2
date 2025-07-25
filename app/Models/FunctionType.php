<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FunctionType extends Model
{
    protected $fillable = [
        'id',
        'function_name',
        'function_code',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var list<string>
     */
    protected $hidden = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
        ];
    }
}
