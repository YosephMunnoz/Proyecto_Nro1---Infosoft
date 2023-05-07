
<!DOCTYPE html>
<html lang="es">
    <?php
        include '../home/head.html';
    ?>
    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">
            <?php
                include '../home/sidebar.php';
             ?>
            <div id="content-wrapper" class="d-flex flex-column">
                <!-- Main Content -->
                <div id="content">
                    <?php
                        include '../home/navbar.php';
                        include '../CatalogoDeServicio/catalogo.php';
                       // include '../modals/donors/settingsDonors.php';
                       // include '../modals/donors/newDonation.php';
                       // include '../modals/donors/registerDonor.php';
                       // include '../modals/donors/editDonors.php';
                       // include '../modals/donors/detailsDonors.php';
                       // include '../modals/donors/donorMedicalHistory.php';
                       // include '../modals/donors/medicalExam.php';
                       // include '../modals/donors/registerExtraction.php';
                        include '../modals/settings_session.php';
                    ?>
                </div>
                    <!-- End of Main Content -->
                    <?php
                        include '../home/footer.html';
                    ?>
            </div>
        </div>
        
        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="login.html">Logout</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
