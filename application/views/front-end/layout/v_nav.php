<nav id="navbar" class="navbar">
  <ul>
    <li><a class="nav-link scrollto active" href="<?= base_url('home/'); ?>">Home</a></li>
    <!--<li><a class="nav-link scrollto" href="<?= base_url('home/#about'); ?>">Profile</a></li>-->
    <li class="dropdown"><a href="<?= base_url('home/#about'); ?>"><span>Profile</span> <i class="bi bi-chevron-down"></i></a>
      <ul>
        <li><a href="<?= base_url('home/detailtentang/upenkom'); ?>">About Us</a></li>
		<li><a href="<?= base_url('home/#features'); ?>">Method</a></li>
        <li><a href="<?= base_url('home/#services'); ?>">Services</a></li>
      </ul>
    <!--<li><a class="nav-link scrollto" href="<?= base_url('home/#features'); ?>">Metode</a></li>
    <li><a class="nav-link scrollto" href="<?= base_url('home/#services'); ?>">Layanan</a></li>-->
    <!--<li><a class="nav-link scrollto" href="<?= base_url('home/#portfolio'); ?>">Portfolio</a></li>-->
    <li class="dropdown"><a href="<?= base_url('home/#portofolio'); ?>"><span>Portofolio</span> <i class="bi bi-chevron-down"></i></a>
      <ul>
        <li><a href="<?= base_url('home/#testimonials'); ?>">Testimonials</a></li>
        <li><a href="<?= base_url('home/#clients'); ?>">Our Clients</a></li>
      </ul>
    <li><a class="nav-link scrollto" href="<?= base_url('home/#team'); ?>">Team</a></li>
    <li><a href="<?= base_url('home/blog'); ?>">Blog</a></li>
    <!--<li><a href="<?= base_url('home/blog'); ?>">Download</a></li>-->
    <!-- <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
      <ul>
        <li><a href="#">Drop Down 1</a></li>
        <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
          <ul>
            <li><a href="#">Deep Drop Down 1</a></li>
            <li><a href="#">Deep Drop Down 2</a></li>
            <li><a href="#">Deep Drop Down 3</a></li>
            <li><a href="#">Deep Drop Down 4</a></li>
            <li><a href="#">Deep Drop Down 5</a></li>
          </ul>
        </li>
        <li><a href="#">Drop Down 2</a></li>
        <li><a href="#">Drop Down 3</a></li>
        <li><a href="#">Drop Down 4</a></li>
      </ul>
    </li> -->
    <li><a class="nav-link scrollto" href="<?= base_url('home/#contact'); ?>">Contact</a></li>
    <li><a class="getstarted scrollto" href="<?= base_url('auth'); ?>">Login</a></li>
  </ul>
  <i class="bi bi-list mobile-nav-toggle"></i>
</nav><!-- .navbar -->

</div>
</header><!-- End Header -->