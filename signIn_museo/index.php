<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Link para la funcionalidad de Boostrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/b97817635b.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="assets/style.css">
    <title>Inicio</title>
</head>
<?php
    session_start();
    $versesion=0;
    if(isset($_SESSION['username'])){
        $versesion=1;
    }
?>
<body>
<?php require 'partial/header.php'?>

<!-- Fotos  Carousel-->
<section id="carouselExampleControls" class="carousel slide bg-cover hero-section" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="assets/img/museo_img_1.jpg" class="d-block w-100" alt="..." >
        </div>
        <div class="carousel-item">
            <img src="assets/img/museo_img_2.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="assets/img/museo_img_3.jpg" class="d-block w-100" alt="...">
        </div>
    </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
        </button>
        <br>
</section>

<!-- Titulo -->
<div class="container text-center">
    <h4 class = "display-1 fw-bold">Museo</h4>
    <br>
    <p class="my-5 fw-bold">Bienvenido a nuestro museo, gracias por elegirnos y esperamos que esté satisfecho con nuestro servicio.<br>
        ¡Ingrese ahora mismo para poder comenzar con tu visita!</p>
        <div id="btn_ingreso"style="inline" class="text-center fw-bold ">
            <a href="./singIn.php"  class="btn btn-outline-dark btn-lg">Ingresar ahora</a>
         </div>
         <script>
        var versesion = '<?=$versesion?>';
        if(versesion=="1"){
          btn_ingreso.style.display = "none"
        }else{
          btn_ingreso.style.display="inline"
        }
      </script>
    
        <br>
</div>

<!-- Mapa del Museo -->
<div class="container text-center">
    <br>
    <h4 class = "display-4 fw-bold">Mapa del museo</h4>
    <br>
    <img src="assets/img/MapaMuseo.jpg" class="img-fluid" alt="">

    <!-- <h4 class = "display-6 fw-bold">Visita 1</h4>
    <img src="assets/img/visita 1.jpg" class="img-fluid " alt="">
    <h4 class = "display-6 fw-bold">Visita 2</h4>
    <img src="assets/img/visita 2.jpg" class="img-fluid " alt="">
    <h4 class = "display-6 fw-bold">Visita 3</h4>
    <img src="assets/img/visita 3.jpg" class="img-fluid " alt=""> -->
</div>
      


<!-- Informacion Extra -->
<div class="container-fluid">
    <br>
    <div class="row">
        <div class="col-12 col-md-5 col-lg-5">
            <h2 class ="fw-bold">Horarios:</h2>

            <li>Lunes a viernes, de 11:00 a 20:00.</li>
            <li>Sábados y domingos, de 10:00 a 21:00</li>
            <p>La entrada es siempre libre y gratuita.</p>
        </div>

        <div class="col-12 col-md-7 col-lg-6">

            <h2 class ="fw-bold">Servicios y recomendaciones:</h2>
            <br>
            <h4 class ="fw-bold">Acceso a las salas:</h4>

            <li>Se recomienda el uso de tapabocas para recorrer las salas del Museo. No se requiere el pase sanitario.</li>
            <li>Se permite acceder a las salas con carteras y mochilas de tamaño reducido. 
                En caso de ingresar con mochilas, deben portarse en la parte delantera del cuerpo para evitar molestias 
                al resto de los visitantes u ocasionar roces con las obras.</li>
            <li>No se admite el ingreso a las salas con bultos o accesorios que, a criterio del personal del Museo, 
                representen un peligro potencial para las obras y los visitantes (como trípodes o brazos extensibles para celulares y/o cámaras fotográficas).</li>
            <li>No se admite el ingreso con animales (con excepción de los perros asistentes o guías para personas ciegas), comidas, bebidas o plantas.</li>
        </div>
    </div>
</div>

<!-- Seccion de reseñas: -->
<div class="container-fluid">
    <br> 
    <h2 class ="fw-bold">Reseñas:</h2>

    <!-- enviar comentario -->
    <form action="">
        <div class="bg-light p-2 ">
            <div class="d-flex flex-row align-items-start"><textarea class="form-control ml-1 shadow-none textarea" placeholder="¡Dejanos un comentario!"></textarea></div>
            <div class="mt-2 text-right">
                <button class="btn btn-primary btn-sm shadow-none" type="submit">Enviar</button>
            </div>
        </div>
    </form>
    
    <!-- leer comentarios -->

    <div class="shadow p-3 mb-5 bg-body rounded">
        <div class="d-flex flex-row user-info">
            <div class="d-flex flex-column justify-content-start ml-2">
                <span class="d-block font-weight-bold name">Marry Andrews</span>
                <span class="date text-black-50">Fecha de la reseña: "Fecha"</span>
            </div>
        </div>
        <div class="mt-2">
            <p class="comment-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        </div>
    </div>

    <div class="shadow p-3 mb-5 bg-body rounded">
        <div class="d-flex flex-row user-info">
            <div class="d-flex flex-column justify-content-start ml-2">
                <span class="d-block font-weight-bold name">Marry Andrews</span>
                <span class="date text-black-50">Fecha de la reseña: "Fecha"</span>
            </div>
        </div>
        <div class="mt-2">
            <p class="comment-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>