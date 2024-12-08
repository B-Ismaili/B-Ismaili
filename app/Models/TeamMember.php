<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TeamMember extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'surname',
        'position_id', // Update this to match the database schema
        'short_profile',
    ];

    /**
     * Define a relationship to the Position model.
     */
    public function position()
    {
        return $this->belongsTo(Position::class, 'position_id');
    }
}