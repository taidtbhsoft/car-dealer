<?php

function findAll($filters = [])
{
    $sql = 'SELECT * FROM vehicles ';
    if (!empty($filters)) {
        $sql .= 'WHERE ';
        $condition = '';
        if (!empty($filters['name'])) {
            $sql .= " name like '%" . $filters['name'] . "%'";
            $condition = ' AND ';
        }
        if (!empty($filters['id'])) {
            $sql .= $condition . ' id  =' . $filters['id'];
        }
    }

    $sql .= ' ORDER BY id ASC';
    query($sql);

    return resultSet();
}

function findById($id)
{
    query("SELECT * FROM vehicles WHERE id = '{$id}'");
    return single();
}
