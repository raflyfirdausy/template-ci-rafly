<?php

defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH . '/libraries/REST_Controller.php';

use Restserver\Libraries\REST_Controller;

class Coba extends REST_Controller
{

    public function __construct($config = 'rest')
    {
        parent::__construct($config);
    }

    public function index_get(){
        $this->response(array(
            "status"        => true,
            "respon_code"   => REST_Controller::HTTP_OK,
            "respon_mess"   => "Connected",
            "data"          => ""
        ), REST_Controller::HTTP_OK);
    }

    public function index_post(){
        $headers = $this->input->request_headers();
        $this->response(array(
            "status"        => true,
            "respon_code"   => REST_Controller::HTTP_OK,
            "respon_mess"   => $headers['Authorization'],
            "data"          => ""
        ), REST_Controller::HTTP_OK);
    }

}