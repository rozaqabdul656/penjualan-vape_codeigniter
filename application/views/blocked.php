<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>403 &mdash; Akses Di Block</title>

    <!-- General CSS Files -->
    <link rel="stylesheet" href="<?= base_url('assets/') ?>modules/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/') ?>modules/fontawesome/css/all.min.css">

    <!-- CSS Libraries -->

    <!-- Template CSS -->
    <link rel="stylesheet" href="<?= base_url('assets/') ?>css/style.css">
    <link rel="stylesheet" href="<?= base_url('assets/') ?>css/components.css">
    <!-- Start GA -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-94034622-3"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'UA-94034622-3');
    </script>
    <!-- /END GA -->
</head>

<body>
    <div id="app">
        <section class="section">
            <div class="container mt-5">
                <div class="page-error">
                    <div class="page-inner">
                        <h1>403</h1>
                        <div class="page-description">
                            Kamu Tidak Mempunyai Hak Akses Ke Halaman Tersebut
                        </div>
                        <div class="page-search">

                            <div class="mt-3">
                                <?php if ($this->session->userdata('role_id') == 1) : ?>
                                    <a href="<?= base_url('superadmin') ?>">Kembali Ke Dashboard</a>
                                <?php elseif ($this->session->userdata('role_id') == 2) : ?>
                                    <a href="<?= base_url('admin') ?>">Kembali Ke Dashboard</a>
                                <?php elseif ($this->session->userdata('role_id') == 3) : ?>
                                    <a href="<?= base_url('siswa/index') ?>">Kembali Ke Dashboard</a>
                                <?php else : ?>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="simple-footer mt-5">
                    <?= $p_umum['footer'] ?>
                </div>
            </div>
        </section>
    </div>

    <!-- General JS Scripts -->
    <script src="<?= base_url('assets/') ?>modules/jquery.min.js"></script>
    <script src="<?= base_url('assets/') ?>modules/popper.js"></script>
    <script src="<?= base_url('assets/') ?>modules/tooltip.js"></script>
    <script src="<?= base_url('assets/') ?>js/datepicker.min.js"></script>
    <script src="<?= base_url('assets/') ?>modules/bootstrap/js/bootstrap.min.js"></script>
    <script src="<?= base_url('assets/') ?>modules/nicescroll/jquery.nicescroll.min.js"></script>
    <script src="<?= base_url('assets/') ?>modules/moment.min.js"></script>
    <script src="<?= base_url('assets/') ?>js/stisla.js"></script>

    <!-- JS Libraies -->

    <!-- Page Specific JS File -->

    <!-- Template JS File -->
    <script src="<?= base_url('assets/') ?>js/scripts.js"></script>
    <script src="<?= base_url('assets/') ?>js/custom.js"></script>
</body>

</html>