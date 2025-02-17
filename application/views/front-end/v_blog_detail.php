<main id="main">

  <!-- ======= Breadcrumbs ======= -->
  <section class="breadcrumbs">
    <div class="container">

      <ol>
        <li><a href="<?= base_url('home/#hero'); ?>">Home</a></li>
        <li><a href="<?= base_url('home/blog'); ?>">Blog</a></li>
        <li><?= $berita->judul_berita; ?></li>
      </ol>
      <h2><?= $berita->judul_berita; ?></h2>

    </div>
  </section><!-- End Breadcrumbs -->

  <!-- ======= Blog Single Section ======= -->
  <section id="blog" class="blog">
    <div class="container" data-aos="fade-up">

      <div class="row">

        <div class="col-lg-8 entries">

          <div class="card entry entry-single">

            <div class="entry-img">
              <img src="<?= base_url('assets/img/berita/') . $berita->gambar_berita; ?>" alt="" class="img-responsive center-block d-block mx-auto">
            </div>

            <h2 class="entry-title">
              <a href=""><?= $berita->judul_berita; ?></a>
            </h2>

            <div class="entry-meta">
              <ul>
                <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a><?= $berita->nama; ?></a></li>
                <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a><?= date('d-M-Y H:i', strtotime($berita->date_cretated)); ?></a></li>
                <!--<li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a>12 Comments</a></li>-->
              </ul>
            </div>

            <div class="entry-content">
              <p><?= $berita->isi_berita; ?></p>
            </div>

            <div class="entry-footer">
              <i class="bi bi-folder"></i>
              <ul class="cats">
                <li><a href="#">Business</a></li>
              </ul>

              <i class="bi bi-tags"></i>
              <ul class="tags">
                <?= $berita->keywords; ?>
              </ul>
            </div>

          </div><!-- End blog entry -->

          <!--<div class="blog-author d-flex align-items-center">
            <img src="<?= base_url('assets/img/profile/' . $berita->image); ?>" class="rounded-circle float-left" alt="">
            <div>
              <h4><?= $berita->nama; ?></h4>
              <div class="social-links">
                <a href="https://twitters.com/#"><i class="bi bi-twitter"></i></a>
                <a href="https://facebook.com/#"><i class="bi bi-facebook"></i></a>
                <a href="https://instagram.com/#"><i class="biu bi-instagram"></i></a>
              </div>
              <p>
                Itaque quidem optio quia voluptatibus dolorem dolor. Modi eum sed possimus accusantium. Quas repellat voluptatem officia numquam sint aspernatur voluptas. Esse et accusantium ut unde voluptas.
              </p>
            </div>
          </div><!-- End blog author bio -->

          <div class="blog-comments">

            <!--<h4 class="comments-count">8 Comments</h4>

            <div id="comment-1" class="comment">
              <div class="d-flex">
                <div class="comment-img"><img src="<?= base_url(); ?>vendor/front-end/assets/img/blog/comments-1.jpg" alt=""></div>
                <div>
                  <h5><a href="">Georgia Reader</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a></h5>
                  <time datetime="2020-01-01">01 Jan, 2020</time>
                  <p>
                    Et rerum totam nisi. Molestiae vel quam dolorum vel voluptatem et et. Est ad aut sapiente quis molestiae est qui cum soluta.
                    Vero aut rerum vel. Rerum quos laboriosam placeat ex qui. Sint qui facilis et.
                  </p>
                </div>
              </div>
            </div><!-- End comment #1 -->

            

            

            

            <!--<div class="reply-form">
              <h4>Leave a Reply</h4>
              <p>Your email address will not be published. Required fields are marked * </p>
              <form action="">
                <div class="row">
                  <div class="col-md-6 form-group">
                    <input name="name" type="text" class="form-control" placeholder="Your Name*">
                  </div>
                  <div class="col-md-6 form-group">
                    <input name="email" type="text" class="form-control" placeholder="Your Email*">
                  </div>
                </div>
                <div class="row">
                  <div class="col form-group">
                    <input name="website" type="text" class="form-control" placeholder="Your Website">
                  </div>
                </div>
                <div class="row">
                  <div class="col form-group">
                    <textarea name="comment" class="form-control" placeholder="Your Comment*"></textarea>
                  </div>
                </div>
                <button type="submit" class="btn btn-primary">Post Comment</button>

              </form>

            </div>-->

          </div><!-- End blog comments -->

        </div><!-- End blog entries list -->

        <div class="col-lg-4">

          <div class="sidebar">

            <!--<h3 class="sidebar-title">Search</h3>
            <div class="sidebar-item search-form">
              <form action="">
                <input type="text">
                <button type="submit"><i class="bi bi-search"></i></button>
              </form>
            </div><!-- End sidebar search formn-->

            <h3 class="sidebar-title">Categories</h3>
            <div class="sidebar-item categories">
              <ul>
                <?php foreach ($kategori as $key => $values) : ?>
                  <li><a href="#"><?= $values->nama_kategori; ?> <span></span></a></li>
                <?php endforeach; ?>
              </ul>
            </div><!-- End sidebar categories-->

            <h3 class="sidebar-title">Recent Posts</h3>
            <?php foreach ($lastst_berita as $key => $value) :
              // CEK KONDISI BERITA
              if ($value->status_berita == "Publish") : ?>
                <div class="sidebar-item recent-posts">
                  <div class="post-item clearfix">
                    <img src="<?= base_url('assets/img/berita/') . $value->gambar_berita; ?>" alt="">
                    <h4><a href="<?= base_url('home/detail/' . $value->slug_berita); ?>"><?= $value->judul_berita; ?></a></h4>
                    <time datetime="01-01-2020"><?= date('d-m-Y H:i', strtotime($value->date_cretated)); ?></time>
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