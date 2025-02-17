<?php

defined('BASEPATH') or exit('No direct script access allowed');

class tentang extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    is_logged_in();
    // validasi form
    $this->load->library('form_validation');
    //load model
    $this->load->model('M_tentang');
    $this->load->model('M_setting');
    //load helper
    $this->load->helper('tentang');
  }

  public function index()
  {
    $setting = $this->M_setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;
    $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();
    $tentang  = $this->M_tentang->daftar();

    $data = array(
      'title'     => $title,
      'subtitle'  => 'Daftar tentang',
      'isi'       => 'back_end/tentang/v_daftar',
      'user'      =>  $user,
      'image'     =>  $image,
      'tentang'   => $tentang
    );

    $this->load->view('back_end/layout/v_wrapper', $data, false);
  }

  public function tambah()
  { // RULES 
    tambah_validation();
    if ($this->form_validation->run() ==  false) {
      $setting = $this->M_setting->daftar();
      $title = $setting->nama_perusahaan;
      $image = $setting->image;
      $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();

      $data = array(
        'title'     => $title,
        'subtitle'  => 'Tambah tentang',
        'isi'       => 'back_end/tentang/v_tambah',
        'user'      =>  $user,
        'image'     =>  $image,
      );

      $this->load->view('back_end/layout/v_wrapper', $data, false);
    } else {
      $this->M_tentang->tambah();
    }
  }

  public function edit($id_tentang)
  {

    $tentang   = $this->M_tentang->detail($id_tentang);
    $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();

    $setting = $this->M_setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;

    // Validasi
    tambah_validation();

    if ($this->form_validation->run()) {

      if (!empty($_FILES['image']['name'])) {

        $config['upload_path']   = './assets/img/tentang/';
        $config['allowed_types'] = 'gif|jpg|png|svg|jpeg';
        $config['max_size']      = '5000'; // KB  
        $this->load->library('upload', $config);
        $this->upload->initialize($config);
        if (!$this->upload->do_upload('image')) {
          // End validasi
          $data = array(
            'title'     => $title,
            'subtitle'  => 'Edit tentang',
            'tentang'   => $tentang,
            'error'     => $this->upload->display_errors(),
            'isi'       => 'back_end/tentang/v_edit',
            'user'      => $user,
            'image'     =>  $image,
          );
          $this->load->view('back_end/layout/v_wrapper', $data, FALSE);
          // Masuk database
        } else {
          $upload_data            = array('uploads' => $this->upload->data());
          //Hapus gambar
          if ($tentang->gambar_tentang != "") {
            unlink('./assets/img/tentang/' . $tentang->gambar_tentang);
          }
          // End hapus

          $slug   = url_title($this->input->post('judul'), 'dash', TRUE);

          $data = array(
            'id_tentang'    => $id_tentang,
            'slug_tentang'  => $slug,
            'judul_tentang'  => $this->input->post('judul'),
            'isi_tentang'      => $this->input->post('isi'),
            'status_tentang'  => $this->input->post('status'),
            'gambar_tentang'    => $upload_data['uploads']['file_name'],
            'last_modified' => date('Y-m-d'),
          );
          $this->M_tentang->edit($data);
          $this->session->set_flashdata('success', 'Berhasil mengedit data');
          redirect('tentang');
        }
      } else {
        $slug   = url_title($this->input->post('judul'), 'dash', TRUE);

        $data = array(
          'id_tentang'    => $id_tentang,
          'slug_tentang'  => $slug,
          'judul_tentang'  => $this->input->post('judul'),
          'isi_tentang'      => $this->input->post('isi'),
          'status_tentang'  => $this->input->post('status'),
          'last_modified' => date('Y-m-d'),
        );
        $this->M_tentang->edit($data);
        $this->session->set_flashdata('success', 'Berhasil mengedit data');
        redirect('tentang');
      }
    }
    // End masuk database
    $data = array(
      'title'     => $title,
      'subtitle'  => 'Edit tentang ',
      'tentang'   => $tentang,
      'isi'       => 'back_end/tentang/v_edit',
      'user'      => $user,
      'image'     =>  $image,
    );
    $this->load->view('back_end/layout/v_wrapper', $data, FALSE);
  }

  public function hapus($id_tentang)
  {
    $tentang = $this->M_tentang->detail($id_tentang);
    // MENGHAPUS FOTO
    if ($tentang->gambar_tentang != "") {
      unlink('./assets/img/tentang/' . $tentang->gambar_tentang);
    }
    $data = array(
      'id_tentang' => $id_tentang,
    );
    $this->M_tentang->hapus($data);
  }
}
