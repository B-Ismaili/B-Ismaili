<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Industry extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'description', 'icon'];

    /**
     * Define the relationship to the Service model.
     * An Industry can have many Services.
     */
    public function services()
    {
        return $this->hasMany(Service::class, 'industry_id');
    }
}