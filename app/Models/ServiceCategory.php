<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ServiceCategory extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'description'];

    /**
     * Define the relationship to the Service model.
     * A ServiceCategory can have many Services.
     */
    public function services()
    {
        return $this->hasMany(Service::class, 'service_category_id');
    }
}