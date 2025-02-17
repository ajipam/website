<main id="main">

  <!-- ======= Breadcrumbs ======= -->
  <section class="breadcrumbs">
    <div class="container">

      <ol>
        <li><a href="<?= base_url('home/#hero'); ?>">Home</a></li>
        <li><a href="<?= base_url('home/blog'); ?>">Blog</a></li>
        <li><?= $detail->judul_tentang; ?></li>
      </ol>
      <h2><?= $detail->judul_tentang; ?></h2>

    </div>
  </section><!-- End Breadcrumbs -->

  <!-- ======= Blog Single Section ======= -->
  <section id="blog" class="blog">
    <div class="container" data-aos="fade-up">

      <div class="row">

        <div class="col-lg-8 entries">

          <div class="card entry entry-single">

            <div class="entry-img">
              <img src="<?= base_url('assets/img/tentang/') . $detail->gambar_tentang; ?>" alt="" class="img-responsive center-block d-block mx-auto">
            </div>

            <h2 class="entry-title">
              <a href=""><?= $detail->judul_tentang; ?></a>
            </h2>
            <div class="entry-content">
              <p><?= $detail->isi_tentang; ?></p>
            </div>

          </div><!-- End blog entry -->

        </div><!-- End blog entries list -->

        <div class="col-lg-4">

          <div class="sidebar">

            <h3 class="sidebar-title">Search</h3>
            <div class="sidebar-item search-form">
              <form action="">
                <input type="text">
                <button type="submit"><i class="bi bi-search"></i></button>
              </form>
            </div><!-- End sidebar search formn-->

            <h3 class="sidebar-title">Daftar tentang</h3>
            <?php foreach ($tentang as $key => $value) :
              // CEK KONDISI BERITA
              if ($value->status_tentang == "Publish") : ?>
                <div class="sidebar-item recent-posts">
                  <div class="post-item clearfix ">
                    <img src="<?= base_url('assets/img/tentang/') . $value->gambar_tentang; ?>" alt="">
                    <h4 class="">
                      <a href="<?= base_url('home/detailtentang/' . $value->slug_tentang); ?>"><?= $value->judul_tentang; ?></a>
                    </h4>
                  </div>
                </div><!-- End sidebar recent posts-->
              <?php endif; ?>
            <?php endforeach; ?>
            <!-- End sidebar recent posts-->

            <h3 class="sidebar-title">Tags</h3>
            <div class="sidebar-item tags">
              <ul>
                <li><a href="#">kompetensi</a></li>
                <li><a href="#">asesor</a></li>
                <li><a href="#">asesmen</a></li>
                <li><a href="#">instrumen</a></li>
                
              </ul>
            </div><!-- End sidebar tags-->

          </div><!-- End sidebar -->

        </div><!-- End blog sidebar -->

      </div>

    </div>
  </section><!-- End Blog Single Section -->

</main><!-- End #main -->