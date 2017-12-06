<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Report extends AUTH_Controller {
	public function __construct() {
		parent::__construct();
		$this->load->model('category_model');
	}

	public function index() {
		$data['userdata'] 		= $this->userdata;
		$data['category_hw'] 	= $this->category_model->select_by_usage('hardware');
		
		$data['page'] 			= "report";
		$data['judul'] 			= "Report";
		$data['deskripsi'] 		= "Report Data IT Asset";

		$this->template->views('report/home', $data);
	}
}