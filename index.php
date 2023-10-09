<!DOCTYPE html>
<html lang="en" class="h-100">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Knowledge</title>

    <link rel="stylesheet" href="style/style.css">
    <link rel="stylesheet" href="http://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  </head>
</head>
<body class="d-flex flex-column h-100 colors">
    
    <main class="container py-5 d-flex">
        <div class="row g-2 col-12 align-items-center justify-content-center">
            <section class="col-xxl-6 col-xl-6 col-lg-6 d-flex justify-content-center pt-5">
                <form class="card bg-light text-center shadow-lg" style="width: 24rem;" action="conexion/login.php" method="POST">
                    <div class="card-body ">
                    <figure class="figure">
                        <img src="img/infosoft 2023.png" alt="Logo Empresarial de Infosoft" class="figure-img img-fluid mt-3" width="300">
                        <figcaption class="figure-caption" hidden>Knowledge</figcaption>
                    </figure>
                        <div class="form-floating pb-1">
                            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="email">
                            <label for="floatingInput">Correo Electrónico</label>
                        </div>
                        <div class="form-floating py-1">
                            <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="password">
                            <label for="floatingPassword">Contraseña</label>
                        </div>
        
                        <div class="checkbox my-3 text-start">
                            <label>
                                <input type="checkbox" value="remember-me"> Recordar
                            </label>
                        </div>
                        <button class="w-100 btn btn-lg btn-warning mb-2 text-white fw-bold" type="submit" name="enviar">Iniciar</button>
                        <hr>
                        <a href="#" class="text-center">¿Olvidaste tu contraseña?</a>
                    </div>
                </form>
            </section>
            <section class="col-xxl-6 col-xl-6 col-lg-6 d-flex justify-content-center">
                <hgroup class="px-5">
                    <h1>
                        <strong>
                            I<span>S</span> Knowledge te permite:
                        </strong>
                    </h1>
                    <p>
                        Consultar procedimientos fácilmente, observar mapas topológicos del servicio,
                        determinar la ubicación de servidores, Bases de Datos y Sistemas Operativos
                    </p>
                </hgroup>  
            </section>
        </div>
    </main>
    
    <footer class="footer mt-auto py-1 bg-white">
        <div class="container ">
            <div class="navbar navbar-expand-lg">
                <div class="container row g-2 ">
                    <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-6">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link text-muted fs-6">
                                    Infosoft, C.A. Copyright © 2023
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-6">
                        <ul class="navbar-nav justify-content-evenly">
                            <li class="nav-item btn-outline-dark rounded-3 p-2 text-center">
                                <a class="nav-link" aria-current="page" href="#">
                                    <i class="bi bi-instagram text-muted fs-5"></i>
                                </a>
                            </li>
                            <li class="nav-item btn-outline-dark rounded-3 p-2 text-center">
                                <a class="nav-link" aria-current="page" href="#">
                                    <i class="bi bi-linkedin text-muted fs-5"></i>
                                </a>
                            </li>
                            <li class="nav-item btn-outline-dark rounded-3 p-2 text-center" >
                                <a class="nav-link" aria-current="page" href="#">
                                    <i class="bi bi-twitter text-muted fs-5"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>  
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>