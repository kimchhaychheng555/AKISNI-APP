<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LocationsListModel extends Model
{
    protected $table = 'data_locations_list';
    protected $primaryKey = 'id';
    public $incrementing = false;
    protected $keyType = 'string';

    protected $fillable = [
        'title',
        'company',
        'name',
        'installDate',
        'power',
        'type',
        'deposit',
        'location',
        'image',
        'latitude',
        'longitude'
    ];

    use HasFactory;
}
