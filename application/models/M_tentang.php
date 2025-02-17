<?php

defined('BASEPATH') or exit('No direct script access allowed');

class M_tentang extends CI_Model
{
  public function daftar()
  {
    $this->db->select('*');
    $this->db->from('tb_tentang');
    $this->db->join('tb_user', 'tb_user.id_user = tb_tentang.id_user', 'left');
    $this->db->order_by('id_tentang', 'desc');
    return $this->db->get()->result();
  }


  public function detail($id_tentang)
  {
    $this->db->select('*');
    $this->db->from('tb_tentang');
    $this->db->join('tb_user', 'tb_user.id_user = tb_tentang.id_user', 'left');
    $this->db->where('id_tentang', $id_tentang);
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
      $config['upload_path'] = './assets/img/tentang/';
      $this->upload->initialize($config);
      // UPLOAD FILE  
      if ($this->upload->do_upload('image')) {
        $gambartentang = $this->upload->data('file_name');
      } else {
        echo $this->upload->display_errors();
      }
    }
    $data = [
      'id_user'       => $user,
      'slug_tentang'   => htmlspecialchars($slug),
      'judul_tentang'  => htmlspecialchars($judul),
      'isi_tentang'    => $isi,
      'gambar_tentang' => $gambartentang,
      'status_tentang' => $status,
    ];

    $this->db->insert('tb_tentang', $data);
    $this->session->set_flashdata('success', 'Berhasil Membuat tentang');
    redirect('tentang');
  }


  public function edit($data)
  {
    $this->db->where('id_tentang', $data['id_tentang']);
    $this->db->update('tb_tentang', $data);
  }

  public function hapus($data)
  {
    $this->db->where('id_tentang', $data['id_tentang']);
    $this->db->delete('tb_tentang', $data); // FLASH DATA
    $this->session->set_flashdata('success', 'Berhasil menghapus data');
    redirect('tentang');
  }


  public function read($slug_tentang)
  {

    $this->db->select('*');
    $this->db->from('tb_tentang');
    $this->db->where('slug_tentang', $slug_tentang);
    return $this->db->get()->row();
  }
}
