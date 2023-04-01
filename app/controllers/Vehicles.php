<?php
getModel('Vehicle');

if (!isset($_SESSION['user_id'])) {
    echo "Permission denied";
    die;
}

function index()
{
    $_POST = [];
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $_POST = array_filter(filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING), function ($value) {
            return $value;
        });
    }
    $vehicles = findAll($_POST);

    $data = [
        'vehicles' => $vehicles,
    ];

    view('vehicle/index', $data);
}

function detail($id)
{
    $vehicle = findById($id);
    $data = [
        'vehicle' => $vehicle,
    ];
    view('vehicle/detail', $data);
}
