<?php
class Vehicles extends Controller {
    public function __construct() {
        $this->vehicleModel = $this->model('Vehicle');
    }

    public function Index() {
        $_POST = [];
        if($_SERVER['REQUEST_METHOD'] == 'POST') {
            $_POST =array_filter(filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING), function($value){
                return $value;
            });
        }
        $vehicles = $this->vehicleModel->findAll($_POST);

        $data = [
            'vehicles' => $vehicles
        ];

        $this->view('vehicle/index', $data);
    }

  
    public function detail($id): void
    {
        $vehicle = $this->vehicleModel->findById($id);
        $data = [
            'vehicle' => $vehicle
        ];
        $this->view('vehicle/detail', $data);
    }
}

