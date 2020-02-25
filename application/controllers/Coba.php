<?php

defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH . '/libraries/REST_Controller.php';

use Restserver\Libraries\REST_Controller;

class Coba extends REST_Controller
{

    public function __construct($config = 'rest')
    {        
        parent::__construct($config);
        $this->load->model('Coba_model', 'coba');
    }

    public function index_get()
    {
        $this->response(array(
            "status"        => true,
            "respon_code"   => REST_Controller::HTTP_OK,
            "respon_mess"   => "Connected",
            "data"          => ""
        ), REST_Controller::HTTP_OK);
    }

    public function index_post()
    {
        $headers = $this->input->request_headers();
        $this->response(array(
            "status"        => true,
            "respon_code"   => REST_Controller::HTTP_OK,
            "respon_mess"   => $headers['Authorization'],
            "data"          => ""
        ), REST_Controller::HTTP_OK);
    }

    public function tes_post()
    {
        $insert_data = array(
            'nama_desa'         => 'Wanadadi', 
            'kecamatan_desa'    => 'Wanadadi',
            'kabupaten_desa'    => 'Banjarnegara',
            'provinsi_desa'     => 'Jawa Tengah',
            'dusun_desa'        => 'Wanawani',
            'namakantor_desa'   => 'Balai Desa',
            'alamatkantor_desa' => 'Jalan Jalan YUK',
            'kodepos_desa'      => '53181',
            'notelp_desa'       => '0281293871293',
            'email_desa'        => 'wanadadi@haha.com',
            'deskripsi_desa'    => 'mantap mantap',
            'website_desa'      => 'google.com',
            'logo_desa'         => 'logo',
            'path_desa'         => '10_hahaha',
            'userid_desa'       => 'rafly',
            'password_desa'     => 'ganteng'
        );        
        // $i = $this->coba->insert($insert_data);
        $total      = $this->coba->only_trashed()->count_rows();
        $row        = $this->coba->paginate(2,$total);
        // $all_pages  = $this->coba->all_pages;
        $all_pages  = $this->coba->with_trashed()->get_all();
        $previous   = $this->coba->previous_page;
        $next       = $this->coba->next_page;
        $this->response(array(
            "status"        => true,
            "response_code"         => REST_Controller::HTTP_OK,
            "response_message"      => $total,
            "all_pages"             => $all_pages,
            // "previous"              => $previous,
            // "next"                  => $next,
            // "data"                  => $row
        ), REST_Controller::HTTP_OK);
    }

    public function hapus_post(){
        
        $i = $this->coba->delete(["id_desa >" , 1]);
        $this->response(array(
            "status"        => true,
            "respon_code"   => REST_Controller::HTTP_OK,
            "respon_mess"   => $i,
            "data"          => ""
        ), REST_Controller::HTTP_OK);
    }

    public function update_post(){
        $dataUpdate = array(
            'nama_desa'         => 'Wanadadiiiiiii', 
            'kecamatan_desa'    => 'Wanadadiiiiii',
            'kabupaten_desa'    => 'Banjarnegaraaaaaaaaa',
            'provinsi_desa'     => 'Jawa Tengahhhhhh',
            'dusun_desa'        => 'Wanawani',
            'namakantor_desa'   => 'Balai Desa',
            'alamatkantor_desa' => 'Jalan Jalan YUK',
            'kodepos_desa'      => '53181',
            'notelp_desa'       => '0281293871293',
            'email_desa'        => 'wanadadi@haha.com',
            'deskripsi_desa'    => 'mantap mantap',
            'website_desa'      => 'google.com',
            'logo_desa'         => 'logo',
            'path_desa'         => '10_hahaha',
            'userid_desa'       => 'rafly',
            'password_desa'     => 'ganteng'
        );
        $update = $this->coba->where("id_desa >", 20)->update($dataUpdate);
        $this->response(array(
            "status"        => true,
            "respon_code"   => REST_Controller::HTTP_OK,
            "respon_mess"   => $update,
            "data"          => ""
        ), REST_Controller::HTTP_OK);
    }
}
