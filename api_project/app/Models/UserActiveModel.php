<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserActiveModel extends Model
{    
    protected $table = 'data_user_active';
    protected $primaryKey = 'id';
    public $incrementing = false;
    protected $keyType = 'integer';

    protected $fillable = [
        'user_id',
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
