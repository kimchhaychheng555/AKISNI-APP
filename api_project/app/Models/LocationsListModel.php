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
        'fullName',
        'phoneNumber',
        'username',
        'password',
        'role',
        'profile',
        'active',
        'lastLatitude',
        'lastLongitude',
    ];

    use HasFactory;
}
