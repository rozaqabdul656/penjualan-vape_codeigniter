<footer class="main-footer">
    <div class="footer-left">
        <?= $p_umum['footer'] ?>
    </div>
    <div class="footer-right">

    </div>
</footer>
</div>
</div>

<!-- General JS Scripts -->

<script src="<?= base_url('assets/') ?>modules/jquery.min.js"></script>
<script src="<?= base_url('assets/') ?>modules/popper.js"></script>
<script src="<?= base_url('assets/') ?>js/datepicker.min.js"></script>

<script src="<?= base_url('assets/') ?>modules/tooltip.js"></script>
<script src="<?= base_url('assets/') ?>modules/bootstrap/js/bootstrap.min.js"></script>
<script src="<?= base_url('assets/') ?>modules/nicescroll/jquery.nicescroll.min.js"></script>
<script src="<?= base_url('assets/') ?>modules/moment.min.js"></script>
<script src="<?= base_url('assets/') ?>js/stisla.js"></script>

<!-- JS Libraies -->
<script src="<?= base_url('assets/') ?>js/Chart.min.js"></script>

<script src="<?= base_url('assets/') ?>js/utils.js"></script>
<script src="<?= base_url('assets/') ?>js/sweetalert2.all.min.js"></script>

<!-- Page Specific JS File -->
    <script>

    function sembunyi(){
            $(".per").hide();

    }
    function tampil(){     
            $(".per").show();

    }

        function tampilhari(){
            var barChartData = {
            labels: <?php echo $fild ?>,
            datasets: [{
                label: 'Laba Rugi',
                backgroundColor: [
                    window.chartColors.red,
                    window.chartColors.orange,
                    window.chartColors.yellow,
                    window.chartColors.purple,
                    
                ],
                yAxisID: 'y-axis-1',
                data: <?php echo $cetakisi ?>

            }]
        };
        
            var ctx = document.getElementById('canvas').getContext('2d');
            window.myBar = new Chart(ctx, {
                type: 'bar',
                data: barChartData,
                options: {
                    // responsive: true,
                    tooltips: {
                        callbacks: {
                        label: function(tooltipItem, data) {
                            // var number_string = angka.replace(/[^,\d]/g, '').toString(),
                            
                            //     // tambahkan titik jika yang di input sudah menjadi angka ribuan
                            //     if(ribuan){
                            //         separator = sisa ? '.' : '';
                            //         rupiah += separator + ribuan.join('.');
                            //     }
                     
                            //     rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;
                            //     return prefix == undefined ? rupiah : (rupiah ? 'Rp. ' + rupiah : '');

                        var label = data.datasets[tooltipItem.datasetIndex].data[tooltipItem.index].toString();
                           var formatrp=label;
                               split           = formatrp.split(','),
                                sisa            = split[0].length % 3,
                                rupiah          = split[0].substr(0, sisa),
                                ribuan          = split[0].substr(sisa).match(/\d{3}/gi);
                                 if(ribuan){
                            separator = sisa ? '.' : '';
                            rupiah += separator + ribuan.join('.');
                        }
                        rupiah = 'Rp' +' '+ rupiah;

                        rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;
                            // label += Math.round(tooltipItem.yLabel * 100) / 100;
                            return rupiah;
                           
                            // return label;
                        }
                    }
                    },
                    scales: {
                        yAxes: [{
                            type: 'linear', // only linear but allow scale type registration. This allows extensions to exist solely for log scale for instance
                            display: true,
                            position: 'left',
                            id: 'y-axis-1',
                        }],
                    }
                }
            });
        



        }


        window.onload= function(){
            tampilhari();
          $(".datepicker").datepicker({
              format: 'yyyy-mm-dd',
              autoclose: true,
              todayHighlight: true,
          });
         
                var tampung = $('#pilih').val();
                if (tampung == 4 ) {
                    tampil();
                }else{
                    sembunyi();
                }
 
            
        }

    </script>
<script>

    $(document).ready(function() {
        
        $('#pilih').change(function(event){

                var tampung = $('#pilih').val();
                if (tampung == 4 ) {
                    tampil();
                }else{
                    sembunyi();
                }
            });

    });

    function showStatBarang() {
        {
            $.post("<?= base_url('superadmin/getStatBarang') ?>",
                function(data) {
                    var name = [];
                    var marks = [];

                    for (var i in data) {
                        name.push(data[i].nama_cabang);
                        marks.push(data[i].jumlah_barang);
                    }
                    var chartdata = {
                        labels: name,
                        datasets: [{
                            label: 'Laba Rugi',
                            backgroundColor: '#522546',
                            borderColor: '#46d5f1',
                            hoverBackgroundColor: '#88304e',
                            hoverBorderColor: '#88304e',
                            data: marks
                        }]
                    };
                    var graphTarget = $("#graphCanvas");

                    var barGraph = new Chart(graphTarget, {
                        type: 'bar',
                        data: chartdata,
                        options: {
                            scales: {
                                yAxes: [{
                                    ticks: {
                                        beginAtZero: true
                                    }
                                }]
                            }
                        }
                    });

                });
        }
    }
</script>

<!-- Template JS File -->
<script src="<?= base_url('assets/') ?>js/scripts.js"></script>
<script src="<?= base_url('assets/') ?>js/custom.js"></script>
</body>

</html>