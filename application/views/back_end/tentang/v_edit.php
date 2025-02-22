<div class="main-content">
  <section class="section">
    <div class="section-header">
      <div class="section-header-back">
        <a href="<?= base_url('tentang'); ?>" class="btn btn-icon"><i class="fas fa-arrow-left"></i></a>
      </div>
      <h1><?= $subtitle; ?></h1>
      <div class="section-header-breadcrumb">
        <div class="breadcrumb-item active"><a href="<?= base_url('dashboard'); ?>">Dashboard</a></div>
        <div class="breadcrumb-item"><a href="<?= base_url('tentang'); ?>">Daftar tentang</a></div>
        <div class="breadcrumb-item"><?= $subtitle; ?></div>
      </div>
    </div>

    <div class="section-body">
      <h2 class="section-title"><?= $subtitle; ?></h2>
      <p class="section-lead">
        Di halaman ini Anda dapat mengedit tentang <?= $tentang->judul_tentang; ?>
      </p>

      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h4><?= $title; ?></h4>
            </div>
            <div class="card-body">
              <?php
              // foreach ($news as $key => $value) :  
              ?>
              <form method="POST" action="<?= base_url('tentang/edit/' . $tentang->id_tentang); ?>" enctype="multipart/form-data">
                <div class="row">
                  <div class="form-group col-lg-6 col-sm-12 col-md-12">
                    <label class="">Judul</label>
                    <input type="text" class="form-control" name="judul" autofocus value="<?= $tentang->judul_tentang; ?>">
                    <small class="text-danger "><?= form_error('judul') ?></small>
                  </div>
                  <div class="form-group col-lg-6 col-sm-12 col-md-12">
                    <label for="status">Status</label>
                    <select name="status" class="form-control selectric">
                      <option value="<?= $tentang->status_tentang; ?>" selected><?= $tentang->status_tentang; ?></option>
                      <option value="Publish">Publish</option>
                      <option value="Draft">Draft</option>
                      <option value="Pending">Pending</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-form-label ">Isi tentang</label>
                  <div class="">
                    <textarea name="isi" id="berita" placeholder="Isi Berita"><?= $tentang->isi_tentang; ?></textarea>
                    <small class="text-danger "><?= form_error('isi') ?></small>
                  </div>
                </div>
                <div class="row d-flex align-items-center justify-content-center">
                  <div class="form-group col-lg-12 col-sm-12 col-md-12 d-flex align-items-center justify-content-center">
                    <div class="image-preview ">
                      <label for="image-upload" id="image-label">Choose File</label>
                      <input type="file" name="image" id="image-upload" onchange="previewFile(this);" value="<?= $tentang->gambar_tentang; ?>" />
                      <img class="rounded" style="width: 100%; height:100%" src="<?= base_url('assets/img/tentang/') . $tentang->gambar_tentang; ?>" alt="" srcset="" id="image-previews">
                    </div>
                    <small class="text-danger "><?= form_error('image') ?></small>
                  </div>
                </div>
                <div class="col-sm-12 col-md-12 d-flex align-items-center justify-content-center">
                  <button type="submit" class="btn btn-warning ">Edit tentang</button>
                </div>
              </form>
              <?php ?>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>