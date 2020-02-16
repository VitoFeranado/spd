<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Master extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
    }
    public function urusan()
    {
        $data['title'] = 'Master Urusan';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['urusanmaster'] = $this->db->get('urusan')->result_array();

        $this->form_validation->set_rules('kode_urusan', 'Kode Urusan', 'required');

        if ($this->form_validation->run() == false) {

            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('master/urusan', $data);
            $this->load->view('template/footer');
        } else {
            $this->db->insert('user_menu', ['menu' => $this->input->post('menu')]);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
                New menu added!</div>');
            redirect('menu');
        }
    }

    public function bidang()
    {
        $data['title'] = 'Master Bidang';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['bidang'] = $this->db->get('bidang')->result_array();

        $this->form_validation->set_rules('id_bidang', 'ID Bidang', 'required');
        $this->form_validation->set_rules('id_urusan', 'ID Urusan', 'required');
        $this->form_validation->set_rules('id_skpd', 'ID SKPD', 'required');
        $this->form_validation->set_rules('kode_bidang', 'Kode Bidang', 'required');
        $this->form_validation->set_rules('nama_bidang', 'Nama Bidang', 'required');

        if ($this->form_validation->run() == false) {

            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('master/bidang', $data);
            $this->load->view('template/footer');
        } else {
            $data = [
                'id_bidang' => $this->input->post('id_bidang'),
                'id_urusan' => $this->input->post('id_urusan'),
                'id_skpd' => $this->input->post('id_skpd'),
                'kode_bidang' => $this->input->post('kode_bidang'),
                'nama_bidang' => $this->input->post('nama_bidang'),
            ];
            $this->db->insert('bidang', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
                Bidang Ditambahkan!</div>');
            redirect('master/bidang');
        }
    }

    /** edit tahun */
    public function editbidang()
    {

        // $data = array(
        //     "tahun" => $_POST['tahun'],
        //     "status" => $_POST['status'],
        // );
        $data = [
            'id_bidang' => $this->input->post('id_bidang'),
            'id_urusan' => $this->input->post('id_urusan'),
            'id_skpd' => $this->input->post('id_skpd'),
            'kode_bidang' => $this->input->post('kode_bidang'),
            'nama_bidang' => $this->input->post('nama_bidang'),
        ];
        $this->db->where('id_bidang', $this->input->post('id_bidang'));
        $this->db->update('bidang', $data);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
        Bidang Berhasil Diedit!</div>');
        redirect('master/bidang');
    }

    /** hapus tahun */
    public function hapusbidang($id_bidang)
    {
        if ($id_bidang == "") {
            $this->session->set_flashdata('error', "Data Anda Gagal Di Hapus");
            redirect('master/tahunanggaran');
        } else {
            $this->db->where('id_bidang', $id_bidang);
            $this->db->delete('bidang');
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Bidang Berhasil Dihapus!</div>');
            redirect('master/bidang');
        }
    }


    public function program()
    {
        $data['title'] = 'Master Program';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $this->load->model('Program_model', 'nama_urusan');
        $this->load->model('Program_model', 'nama_skpd');
        $this->load->model('Program_model', 'nama_bidang');

        $data['programmaster'] = $this->nama_urusan->geturusan();
        $data['programmaster'] = $this->nama_skpd->getskpd();
        $data['programmaster'] = $this->nama_skpd->getbidang();
        $data['nama_urusan'] = $this->db->get('urusan')->result_array();
        $data['nama_skpd'] = $this->db->get('skpd')->result_array();
        $data['nama_bidang'] = $this->db->get('bidang')->result_array();

        $this->form_validation->set_rules('id_urusan', 'ID Urusan', 'required');
        $this->form_validation->set_rules('id_skpd', 'ID SKPD', 'required');
        $this->form_validation->set_rules('id_bidang', 'ID Bidang', 'required');
        $this->form_validation->set_rules('kode_program', 'Kode Program', 'required');
        $this->form_validation->set_rules('nama_program', 'Nama Program', 'required');
        $this->form_validation->set_rules('status', 'Status', 'required');


        if ($this->form_validation->run() == false) {

            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('master/program', $data);
            $this->load->view('template/footer');
        } else {
            $data = [
                'id_urusan' => $this->input->post('id_urusan'),
                'id_skpd' => $this->input->post('id_skpd'),
                'id_bidang' => $this->input->post('id_bidang'),
                'kode_program' => $this->input->post('kode_program'),
                'nama_program' => $this->input->post('nama_program'),
                'status' => $this->input->post('status'),
            ];
            $this->db->insert('program', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
                Program Ditambahkan!</div>');
            redirect('master/program');
        }
    }


    /** edit program */
    public function editprogram()
    {

        // $data = array(
        //     "tahun" => $_POST['tahun'],
        //     "status" => $_POST['status'],
        // );
        $data = [
            'id_urusan' => $this->input->post('id_urusan'),
            'id_skpd' => $this->input->post('id_skpd'),
            'id_bidang' => $this->input->post('id_bidang'),
            'kode_program' => $this->input->post('kode_program'),
            'nama_program' => $this->input->post('nama_program'),
            'status' => $this->input->post('status'),
        ];
        $this->db->where('id_program', $this->input->post('id_program'));
        $this->db->update('program', $data);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
    Program Berhasil Diedit!</div>');
        redirect('master/program');
    }

    /** hapus program */
    public function hapusprogram($id_program)
    {
        if ($id_program == "") {
            $this->session->set_flashdata('error', "Data Anda Gagal Di Hapus");
            redirect('master/program');
        } else {
            $this->db->where('id_program', $id_program);
            $this->db->delete('program');
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
        Program Berhasil Dihapus!</div>');
            redirect('master/program');
        }
    }



    public function kegiatan()
    {
        $data['title'] = 'Master Kegiatan';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['kegiatanmaster'] = $this->db->get('kegiatan')->result_array();

        $this->form_validation->set_rules('id_kegiatan', 'ID Program', 'required');
        $this->form_validation->set_rules('id_urusan', 'ID Urusan', 'required');
        $this->form_validation->set_rules('id_skpd', 'ID SKPD', 'required');
        $this->form_validation->set_rules('id_bidang', 'ID Bidang', 'required');
        $this->form_validation->set_rules('id_program', 'ID Program', 'required');
        $this->form_validation->set_rules('kode_kegiatan', 'Kode Kegiatan', 'required');
        $this->form_validation->set_rules('nama_kegiatan', 'Nama Kegiatan', 'required');


        if ($this->form_validation->run() == false) {

            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('master/kegiatan', $data);
            $this->load->view('template/footer');
        } else {
            $data = [
                'id_kegiatan' => $this->input->post('id_kegiatan'),
                'id_urusan' => $this->input->post('id_urusan'),
                'id_skpd' => $this->input->post('id_skpd'),
                'id_bidang' => $this->input->post('id_bidang'),
                'id_program' => $this->input->post('id_program'),
                'kode_kegiatan' => $this->input->post('kode_kegiatan'),
                'nama_kegiatan' => $this->input->post('nama_kegiatan'),
            ];
            $this->db->insert('kegiatan', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
                Program Ditambahkan!</div>');
            redirect('master/kegiatan');
        }
    }

    public function tahunAnggaran()
    {
        $data['title'] = 'Tahun Anggaran (TA)';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['tahun'] = $this->db->get('tahunanggaran')->result_array();

        $this->form_validation->set_rules('tahun', 'Tahun', 'required');
        $this->form_validation->set_rules('status', 'Status', 'required');

        if ($this->form_validation->run() == false) {

            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('master/tahun', $data);
            $this->load->view('template/footer');
        } else {
            $data = [
                'tahun' => $this->input->post('tahun'),
                'status' => $this->input->post('status'),
            ];
            $this->db->insert('tahunanggaran', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
                Tahun Ditambahkan!</div>');
            redirect('master/tahunanggaran');
        }
    }

    /** hapus tahun */
    public function hapus($id)
    {
        if ($id == "") {
            $this->session->set_flashdata('error', "Data Anda Gagal Di Hapus");
            redirect('master/tahunanggaran');
        } else {
            $this->db->where('id', $id);
            $this->db->delete('tahunanggaran');
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Tahun Berhasil Dihapus!</div>');
            redirect('master/tahunanggaran');
        }
    }

    /** edit tahun */
    public function edit()
    {

        // $data = array(
        //     "tahun" => $_POST['tahun'],
        //     "status" => $_POST['status'],
        // );
        $data = [
            'tahun' => $this->input->post('tahun'),
            'status' => $this->input->post('status'),
        ];
        $this->db->where('id', $this->input->post('id'));
        $this->db->update('tahunanggaran', $data);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
        Tahun Berhasil Diedit!</div>');
        redirect('master/tahunanggaran');
    }

    public function renja()
    {
        $data['title'] = 'Master Renja';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['renjamaster'] = $this->db->get('renja')->result_array();

        $this->form_validation->set_rules('id_usulan', 'ID Usulan', 'required');
        $this->form_validation->set_rules('id_urusan', 'ID Urusan', 'required');
        $this->form_validation->set_rules('id_skdp', 'ID SKDP', 'required');
        $this->form_validation->set_rules('id_bidang', 'ID Bidang', 'required');
        $this->form_validation->set_rules('kd_program', 'Kode Program', 'required');
        $this->form_validation->set_rules('id_kegiatan', 'ID Kegiatan', 'required');
        $this->form_validation->set_rules('indikator_kinerja', 'Nama Kegiatan', 'required');
        $this->form_validation->set_rules('pagu_indikatif', 'Pagu Indikatif', 'required');
        $this->form_validation->set_rules('sumber_dana', 'Sumber Dana', 'required');
        $this->form_validation->set_rules('verusulan', 'Aksi', 'required');





        if ($this->form_validation->run() == false) {

            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('master/renja', $data);
            $this->load->view('template/footer');
        } else {
            $this->db->insert('user_menu', ['menu' => $this->input->post('menu')]);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
                New menu added!</div>');
            redirect('menu');
        }
    }
}
