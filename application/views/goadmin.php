<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title><?= $title ?> &mdash; Inventory</title>

    <!-- General CSS Files -->
    <link rel="stylesheet" href="<?= base_url('assets/') ?>modules/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/') ?>modules/fontawesome/css/all.min.css">
    <!-- CSS Libraries -->
    <link rel="stylesheet" href="<?= base_url('assets/') ?>modules/bootstrap-social/bootstrap-social.css">
    <!-- Start GA -->
    <link rel="shortcut icon" href="<?= base_url('assets/images/' . $p_umum['favicon']) ?>" type="image/x-icon">

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
                <div class="row">
                    <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">


                        <div class="card card-primary">
                            <div class="card-header">
                                <!-- Button trigger modal -->

                                <h4>
                                    Login <i class="fas fa-lock"></i>

                                </h4>
                            </div>
                            <?= $this->session->flashdata('pesan') ?>
                            <div class="card-body">
                                <form method="POST" action="<?= base_url('goadmin') ?>" class="needs-validation">
                                    <div class="form-group">
                                        <label for="email">Email / Username</label>
                                        <input id="email" type="text" class="form-control" name="useremail" autofocus>
                                        <?= form_error('useremail', '<small class="text-danger">', '</small>') ?>
                                    </div>

                                    <div class="form-group">
                                        <div class="d-block">
                                            <label for="password" class="control-label">Password</label>
                                        </div>
                                        <input id="password" type="password" class="form-control" name="password">
                                        <?= form_error('password', '<small class="text-danger">', '</small>') ?>
                                    </div>

                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary btn-lg btn-block" tabindex="4">
                                            Login
                                        </button>
                                       
                                    </div>
                                </form>

                            </div>
                        </div>

                        <div class="simple-footer">
                            <?= $p_umum['footer'] ?>
                        </div>
                    </div>
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