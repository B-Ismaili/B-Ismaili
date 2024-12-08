<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Testimonial extends Model
{
    protected $fillable = [
        'testimonial_text',
        'client_name',
        'client_position',
        'client_company',
        'client_profile_picture',
    ];
}