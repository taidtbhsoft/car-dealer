<?php
class Vehicle {
    private $db;

    public function __construct() {
        $this->db = new Database;
    }

    public function findAll($filters = []) {
        $sql = 'SELECT * FROM vehicles ';
        if(!empty($filters )){
            $sql .= 'WHERE ';
            $condition ='';
            if(!empty($filters['name'])){
                $sql .= " name like '%".$filters['name']."%'";
                $condition =' AND ';
            }
            if(!empty($filters['id'])){
                $sql .= $condition.' id  ='.$filters['id'];
            }
        }
      
        $sql .= ' ORDER BY id ASC';
        $this->db->query($sql);

        return $this->db->resultSet();
    }


    public function findById($id) {
        $this->db->query('SELECT * FROM vehicles WHERE id = :id');

        $this->db->bind(':id', $id);

        return  $this->db->single();
    }

}