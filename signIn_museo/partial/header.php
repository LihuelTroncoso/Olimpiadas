<!-- Header Principal -->
<header class="site-header sticky-top">    
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid ">
        <a class="navbar-brand mb-0 h1" href="index.php">Museo</a>
        <!-- Barra para menu -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDarkDropdown" aria-controls="navbarNavDarkDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-between" id="navbarNavDarkDropdown">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
            <li class="nav-item">
                <a class="nav-link" href="#">Reseñas</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Juegos</a>
            </li>
            
            <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Turnos Disponibles
            </a>
            <!-- Barra para sub-menu -->
            <ul class="dropdown-menu dropdown-menu-dark ">
            <li class="nav-item active">
                <li><button type="button"  class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#modalMañana">Turno Mañana</button></li>
                <li><button type="button" class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#modalTarde">Turno Tarde</button></li>
                <li><button type="button" class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#modalNoche">Turno Noche</button></li>
            </ul>
            </li>
            <!-- Cerrar Sesión -->
            <li style="none" id="btn_cerrar"class="nav-item">
                <a class="nav-link" href="./php/logout.php">Cerrar Sesión</a>
            </li>
            <script>
                var versesion = '<?=$versesion?>';
                if(versesion=="1"){
                    btn_cerrar.style.display = "inline"
                }else{
                    btn_cerrar.style.display="none"
                }
            </script>
            
        </ul>
        </div>
    </div>
    </nav>
</header>
<?php require 'partial/modalMañana.php' ?>
<?php require 'partial/modalTarde.php' ?>
<?php require 'partial/modalNoche.php' ?>