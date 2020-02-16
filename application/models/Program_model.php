<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Program_model extends CI_Model
{
    public function geturusan()
    {
        $query = "SELECT `program`.*, `urusan`.`nama_urusan`
        FROM `program` JOIN `urusan`
        on  `program`.`id_urusan` = `urusan`.`kode_urusan`
        ";
        return $this->db->query($query)->result_array();
    }

    public function getskpd()
    {
        $query = "SELECT `program`.*, `skpd`.`nama_skpd`
        FROM `program` JOIN `skpd`
        on  `program`.`id_skpd` = `skpd`.`id_skpd`
        ";
        return $this->db->query($query)->result_array();
    }

    public function getbidang()
    {
        $query = "SELECT `program`.*, `bidang`.`nama_bidang`
        FROM `program` JOIN `bidang`
        on  `program`.`id_bidang` = `bidang`.`id_bidang`
        ";
        return $this->db->query($query)->result_array();
    }
}
