<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    //load model
    $this->load->model('M_berita');
    $this->load->model('M_kategori');
    $this->load->model('M_tentang');
    $this->load->model('M_metode');
    $this->load->model('M_layanan');
    $this->load->model('M_setting');
    $this->load->model('M_staff');
    $this->load->model('M_portfolio');
    $this->load->model('M_client');
    $this->load->model('M_dashboard');
  }

  public function index()
  {
    // LOAD FUNCTION DARI MODEL
    $berita = $this->M_berita->recent_berita();
    $tentang = $this->M_tentang->daftar();
    $metode = $this->M_metode->daftar();
    $layanan = $this->M_layanan->daftar();
    $setting = $this->M_setting->daftar();
    $staff  = $this->M_staff->daftar();
    $portfolio = $this->M_portfolio->daftar();
    $client  = $this->M_client->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;

    $data = array(
      'title'     => $title,
      'isi'       => 'front-end/v_home',
      'tentang'   => $tentang,
      'metode'   => $metode,
      'layanan'   => $layanan,
      'setting'   => $setting,
      'berita'    => $berita,
      'staff'     => $staff,
      'portfolio' => $portfolio,
      'client'    => $client,
      'image'     => $image,
    );

    $this->load->view('front-end/layout/v_wrapper', $data, false);
  }

  public function blog()
  {

    // LOAD FUNCTION DARI MODEL
    $berita = $this->M_berita->daftar();
    $lastst_berita = $this->M_berita->lastst_berita();
    $kategori = $this->M_kategori->daftarKategoriBerita();
    $tentang = $this->M_tentang->daftar();
    $metode = $this->M_metode->daftar();
    $layanan = $this->M_layanan->daftar();
    $setting = $this->M_setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;

    $data = array(
      'title'         => $title,
      'subtitle'      => 'Blog',
      'isi'           => 'front-end/v_blog',
      'berita'        => $berita,
      'kategori'      => $kategori,
      'lastst_berita' => $lastst_berita,
      'tentang'        => $tentang,
      'metode'        => $metode,
      'layanan'       => $layanan,
      'setting'       => $setting,
      'image'         => $image,
    );

    $this->load->view('front-end/layout/v_wrapper', $data, false);
  }

  public function detail($slug_berita)
  {
    // LOAD FUNCTION DARI MODEL
    $lastst_berita = $this->M_berita->lastst_berita();
    $berita = $this->M_berita->read($slug_berita);
    $tentang = $this->M_tentang->daftar();
    $metode = $this->M_metode->daftar();
    $layanan = $this->M_layanan->daftar();
    $kategori = $this->M_kategori->daftarKategoriBerita();
    $setting = $this->M_setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;

    $data = array(
      'title'         => $berita->judul_berita,
      'isi'           => 'front-end/v_blog_detail',
      'tentang'        => $tentang,
      'metode'        => $metode,
      'layanan'       => $layanan,
      'berita'        => $berita,
      'kategori'      => $kategori,
      'lastst_berita' => $lastst_berita,
      'setting'       => $setting,
      'image'         => $image,
    );

    $this->load->view('front-end/layout/v_wrapper', $data, false);
  }

  public function detailmetode($slug_metode)
  {

    // LOAD FUNCTION DARI MODEL
    $detail = $this->M_metode->read($slug_metode);
    $metode = $this->M_metode->daftar();
    $setting = $this->M_setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;

    $data = array(
      'title'   => $detail->judul_metode,
      'isi'     => 'front-end/v_metode_detail',
      'metode' => $metode,
      'detail'  => $detail,
      'setting' => $setting,
      'image'   => $image,
    );

    $this->load->view('front-end/layout/v_wrapper', $data, false);
  }
 
  public function detailtentang($slug_tentang)
  {

    // LOAD FUNCTION DARI MODEL
    $detail = $this->M_tentang->read($slug_tentang);
    $tentang = $this->M_tentang->daftar();
    $setting = $this->M_setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;

    $data = array(
      'title'   => $detail->judul_tentang,
      'isi'     => 'front-end/v_tentang_detail',
      'tentang' => $tentang,
      'detail'  => $detail,
      'setting' => $setting,
      'image'   => $image,
    );

    $this->load->view('front-end/layout/v_wrapper', $data, false);
  }
 
  public function detailLayanan($slug_layanan)
  {

    // LOAD FUNCTION DARI MODEL
    $detail = $this->M_layanan->read($slug_layanan);
    $layanan = $this->M_layanan->daftar();
    $setting = $this->M_setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;

    $data = array(
      'title'   => $detail->judul_layanan,
      'isi'     => 'front-end/v_layanan_detail',
      'layanan' => $layanan,
      'detail'  => $detail,
      'setting' => $setting,
      'image'   => $image,
    );

    $this->load->view('front-end/layout/v_wrapper', $data, false);
  }

  public function portfolioDetail($slug_portfolio)
  {

    // LOAD FUNCTION DARI MODEL
    $berita = $this->M_berita->recent_berita();
    $layanan = $this->M_layanan->daftar();
    $setting = $this->M_setting->daftar();
    $title = $setting->nama_perusahaan;
    $image = $setting->image;
    $staff  = $this->M_staff->daftar();
    $portfolio = $this->M_portfolio->read($slug_portfolio);

    $data = array(
      'title'     =>  $portfolio->judul_portfolio,
      'isi'       => 'front-end/v_portfolio_detail',
      'layanan'   => $layanan,
      'setting'   => $setting,
      'berita'    => $berita,
      'staff'     => $staff,
      'portfolio' => $portfolio,
      'image'     => $image,

    );

    $this->load->view('front-end/layout/v_wrapper', $data, false);
  }
}
