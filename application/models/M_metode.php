<?php

defined('BASEPATH') or exit('No direct script access allowed');

class M_metode extends CI_Model
{
  public function daftar()
  {
    $this->db->select('*');
    $this->db->from('tb_metode');
    $this->db->join('tb_user', 'tb_user.id_user = tb_metode.id_user', 'left');
    $this->db->order_by('id_metode', 'desc');
    return $this->db->get()->result();
  }


  public function detail($id_metode)
  {
    $this->db->select('*');
    $this->db->from('tb_metode');
    $this->db->join('tb_user', 'tb_user.id_user = tb_metode.id_user', 'left');
    $this->db->where('id_metode', $id_metode);
    return $this->db->get()->row();
  }


  public function tambah()
  {
    $user = $this->session->userdata('id_user');
    $judul = $this->input->post('judul', true);
    $slug = url_title($judul, 'dash', true);
    $status = $this->input->post('status', true);
    $isi = $this->input->post('isi', true);
    // CEK GAMBAR JIKA ADA GAMBAR AKAN DIUPLOAD 
    // id   // nama gambar
    $uploadImage = $_FILES['image']['name'];
    // var_dump($uploadImage);
    // die;
    if ($uploadImage) {
      // CEK FILE
      $config['allowed_types'] = 'gif|jpg|png';
      $config['max_size'] = '5048';
      $config['upload_path'] = './assets/img/metode/';
      $this->upload->initialize($config);
      // UPLOAD FILE  
      if ($this->upload->do_upload('image')) {
        $gambarmetode = $this->upload->data('file_name');
      } else {
        echo $this->upload->display_errors();
      }
    }
    $data = [
      'id_user'       => $user,
      'slug_metode'   => htmlspecialchars($slug),
      'judul_metode'  => htmlspecialchars($judul),
      'isi_metode'    => $isi,
      'gambar_metode' => $gambarmetode,
      'status_metode' => $status,
    ];

    $this->db->insert('tb_metode', $data);
    $this->session->set_flashdata('success', 'Berhasil Membuat metode');
    redirect('metode');
  }


  public function edit($data)
  {
    $this->db->where('id_metode', $data['id_metode']);
    $this->db->update('tb_metode', $data);
  }

  public function hapus($data)
  {
    $this->db->where('id_metode', $data['id_metode']);
    $this->db->delete('tb_metode', $data); // FLASH DATA
    $this->session->set_flashdata('success', 'Berhasil menghapus data');
    redirect('metode');
  }


  public function read($slug_metode)
  {

    $this->db->select('*');
    $this->db->from('tb_metode');
    $this->db->where('slug_metode', $slug_metode);
    return $this->db->get()->row();
  }
}
