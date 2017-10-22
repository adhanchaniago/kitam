<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends AUTH_Controller {
	public function __construct() {
		parent::__construct();
		$this->load->model('staff_model');
		$this->load->model('supplier_model');
		$this->load->model('devices_model');
		$this->load->model('category_model');
		$this->load->model('software_model');
	}

	public function index() {
		$price_hw				= $this->devices_model->total_price()->total;
		$price_sw				= $this->software_model->total_price()->total;

		$data['total_price'] 	= $price_hw + $price_sw;
		$data['total_staff'] 	= $this->staff_model->total_rows();
		$data['total_supplier'] = $this->supplier_model->total_rows();
		$data['total_software'] = $this->software_model->total_rows();
		$data['category_hw'] 	= $this->category_model->select_by_usage('hardware');

		foreach ($data['category_hw'] as $category_hw) {
			$data['total_'.$category_hw->name]	= $this->devices_model->total_devcat($category_hw->name);
		}	

		$data['userdata'] 		= $this->userdata;
		$data['page'] 			= "home";
		$data['judul'] 			= "Home";
		$data['deskripsi'] 		= "Manage Data CRUD";
		$this->template->views('home', $data);
	}
}

/* End of file Home.php */
/* Location: ./application/controllers/Home.php */