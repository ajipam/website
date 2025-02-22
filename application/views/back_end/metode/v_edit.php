<div class="main-content">
  <section class="section">
    <div class="section-header">
      <div class="section-header-back">
        <a href="<?= base_url('metode'); ?>" class="btn btn-icon"><i class="fas fa-arrow-left"></i></a>
      </div>
      <h1><?= $subtitle; ?></h1>
      <div class="section-header-breadcrumb">
        <div class="breadcrumb-item active"><a href="<?= base_url('dashboard'); ?>">Dashboard</a></div>
        <div class="breadcrumb-item"><a href="<?= base_url('metode'); ?>">Daftar metode</a></div>
        <div class="breadcrumb-item"><?= $subtitle; ?></div>
      </div>
    </div>

    <div class="section-body">
      <h2 class="section-title"><?= $subtitle; ?></h2>
      <p class="section-lead">
        Di halaman ini Anda dapat mengedit metode <?= $metode->judul_metode; ?>
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
              <form method="POST" action="<?= base_url('metode/edit/' . $metode->id_metode); ?>" enctype="multipart/form-data">
                <div class="row">
                  <div class="form-group col-lg-6 col-sm-12 col-md-12">
                    <label class="">Judul</label>
                    <input type="text" class="form-control" name="judul" autofocus value="<?= $metode->judul_metode; ?>">
                    <small class="text-danger "><?= form_error('judul') ?></small>
                  </div>
                  <div class="form-group col-lg-6 col-sm-12 col-md-12">
                    <label for="status">Status</label>
                    <select name="status" class="form-control selectric">
                      <option value="<?= $metode->status_metode; ?>" selected><?= $metode->status_metode; ?></option>
                      <option value="Publish">Publish</option>
                      <option value="Draft">Draft</option>
                      <option value="Pending">Pending</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-form-label ">Isi metode</label>
                  <div class="">
                    <textarea name="isi" id="berita" placeholder="Isi Berita"><?= $metode->isi_metode; ?></textarea>
                    <small class="text-danger "><?= form_error('isi') ?></small>
                  </div>
                </div>
                <div class="row d-flex align-items-center justify-content-center">
                  <div class="form-group col-lg-12 col-sm-12 col-md-12 d-flex align-items-center justify-content-center">
                    <div class="image-preview ">
                      <label for="image-upload" id="image-label">Choose File</label>
                      <input type="file" name="image" id="image-upload" onchange="previewFile(this);" value="<?= $metode->gambar_metode; ?>" />
                      <img class="rounded" style="width: 100%; height:100%" src="<?= base_url('assets/img/metode/') . $metode->gambar_metode; ?>" alt="" srcset="" id="image-previews">
                    </div>
                    <small class="text-danger "><?= form_error('image') ?></small>
                  </div>
                </div>
                <div class="col-sm-12 col-md-12 d-flex align-items-center justify-content-center">
                  <button type="submit" class="btn btn-warning ">Edit metode</button>
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