<!DOCTYPE html>
<html lang="es">
    <?php
        session_start();
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
                        include ('../home/navbar.php');
                        require_once ('pbo.php');
                           
                        // include '../home/main.php';
                        include '../modals/users/settings_session.php'
                    ?>
                </div>
                    <!-- End of Main Content -->
                    <?php
                        include '../home/footer.html'
                    ?>
            </div>                                                                  
        </div>
       
     
        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <?php
            include ('../modals/users/signOut.php');
        ?>
    </body>
</html>
