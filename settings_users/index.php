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
                        include '../home/navbar.php';
                            if(isset($_GET['option']));
                                switch ($_GET['option']) 
                                {
                                    case '1':
                                        // Pagina de creación de usuarios
                                        require_once ('../settings_users/register_user.php');
                                    break;
                                    case '2':
                                        // Pagina de creación de tipos de usuarios
                                        require_once ('../settings_users/profiles_users.php');
                                    break;
                                    case '3':
                                        // Pagina de lista de usuarios
                                        require_once ('../settings_users/list_users.php');
                                    break;
                                }
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
            include_once ('../modals/users/signOut.php')
        ?>
    </body>
</html>
