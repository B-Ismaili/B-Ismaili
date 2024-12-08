<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Partner extends Model
{
    use HasFactory;

    protected $fillable = [
        'company_name',
        'industry_id',
        'logo',
        'collaboration_description',
    ];

    public function industry()
    {
        return $this->belongsTo(Industry::class);
    }
}