<?php

class Coba_model extends Custom_model
{
    public $table           = 'desa';
    public $primary_key     = 'id_desa';
    public $soft_deletes    = true;
    public $timestamps      = true;
    public $return_as       = "array";    
    // public $fillable = array(); 
    // public $protected = array('created_at', 'updated_at', 'deleted_at');

    public function __construct()
    {                        
        parent::__construct();
    }
}
