<?php

function tambah_validation()
{
  $ci = get_instance();
  $ci->form_validation->set_rules('judul', 'Judul', 'required', [
    'required' =>  'Judul belum diisi !',
  ]);
  $ci->form_validation->set_rules('isi', 'Isi metode', 'required', [
    'required' =>  'Isi metode belum diisi !',
  ]);
}
