<?php

defined('BASEPATH') or exit('No direct script access allowed');

class metode extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    is_logged_in();
    // validasi form
    $this->load->library('form_validation');
    //load model
    $this->load->model('M_metode');
    $this->load->model('M_setting');
    //load helper
    $this->load->helper('metode');
  }

  public function index()
  {
    $setting = $this->M_setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;
    $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();
    $metode  = $this->M_metode->daftar();

    $data = array(
      'title'     => $title,
      'subtitle'  => 'Daftar metode',
      'isi'       => 'back_end/metode/v_daftar',
      'user'      =>  $user,
      'image'     =>  $image,
      'metode'   => $metode
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
        'subtitle'  => 'Tambah metode',
        'isi'       => 'back_end/metode/v_tambah',
        'user'      =>  $user,
        'image'     =>  $image,
      );

      $this->load->view('back_end/layout/v_wrapper', $data, false);
    } else {
      $this->M_metode->tambah();
    }
  }

  public function edit($id_metode)
  {

    $metode   = $this->M_metode->detail($id_metode);
    $user = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();

    $setting = $this->M_setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;

    // Validasi
    tambah_validation();

    if ($this->form_validation->run()) {

      if (!empty($_FILES['image']['name'])) {

        $config['upload_path']   = './assets/img/metode/';
        $config['allowed_types'] = 'gif|jpg|png|svg|jpeg';
        $config['max_size']      = '5000'; // KB  
        $this->load->library('upload', $config);
        $this->upload->initialize($config);
        if (!$this->upload->do_upload('image')) {
          // End validasi
          $data = array(
            'title'     => $title,
            'subtitle'  => 'Edit metode',
            'metode'   => $metode,
            'error'     => $this->upload->display_errors(),
            'isi'       => 'back_end/metode/v_edit',
            'user'      => $user,
            'image'     =>  $image,
          );
          $this->load->view('back_end/layout/v_wrapper', $data, FALSE);
          // Masuk database
        } else {
          $upload_data            = array('uploads' => $this->upload->data());
          //Hapus gambar
          if ($metode->gambar_metode != "") {
            unlink('./assets/img/metode/' . $metode->gambar_metode);
          }
          // End hapus

          $slug   = url_title($this->input->post('judul'), 'dash', TRUE);

          $data = array(
            'id_metode'    => $id_metode,
            'slug_metode'  => $slug,
            'judul_metode'  => $this->input->post('judul'),
            'isi_metode'      => $this->input->post('isi'),
            'status_metode'  => $this->input->post('status'),
            'gambar_metode'    => $upload_data['uploads']['file_name'],
            'last_modified' => date('Y-m-d'),
          );
          $this->M_metode->edit($data);
          $this->session->set_flashdata('success', 'Berhasil mengedit data');
          redirect('metode');
        }
      } else {
        $slug   = url_title($this->input->post('judul'), 'dash', TRUE);

        $data = array(
          'id_metode'    => $id_metode,
          'slug_metode'  => $slug,
          'judul_metode'  => $this->input->post('judul'),
          'isi_metode'      => $this->input->post('isi'),
          'status_metode'  => $this->input->post('status'),
          'last_modified' => date('Y-m-d'),
        );
        $this->M_metode->edit($data);
        $this->session->set_flashdata('success', 'Berhasil mengedit data');
        redirect('metode');
      }
    }
    // End masuk database
    $data = array(
      'title'     => $title,
      'subtitle'  => 'Edit metode ',
      'metode'   => $metode,
      'isi'       => 'back_end/metode/v_edit',
      'user'      => $user,
      'image'     =>  $image,
    );
    $this->load->view('back_end/layout/v_wrapper', $data, FALSE);
  }

  public function hapus($id_metode)
  {
    $metode = $this->M_metode->detail($id_metode);
    // MENGHAPUS FOTO
    if ($metode->gambar_metode != "") {
      unlink('./assets/img/metode/' . $metode->gambar_metode);
    }
    $data = array(
      'id_metode' => $id_metode,
    );
    $this->M_metode->hapus($data);
  }
}
