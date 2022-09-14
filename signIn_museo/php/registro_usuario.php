<?php
    include 'conexion_bd.php';

    $name=$_POST['name'];
    $email=$_POST['email'];
    $username=$_POST['username'];
    $password=$_POST['password'];

    $query = "INSERT INTO users(username, password, email, name) VALUES ('$username', '$password', '$email', '$name')";
    
    $verify_email = mysqli_query($conexion, "SELECT * FROM users WHERE email='$email'");
    if(mysqli_num_rows($verify_email)>0){
        echo'
            <script>
                alert("Este correo ya esta registrado, intenta con uno diferente");
                window.location="../index.php";
            </script>
        ';
        exit();
    }


    $verify_username = mysqli_query($conexion, "SELECT * FROM users WHERE username='$username'");
    if(mysqli_num_rows($verify_username)>0){
        echo'
            <script>
                alert("Este usuario ya esta registrado, intenta con uno diferente");
                window.location="../index.php";
            </script>
        ';
        exit();
    }
    $ejecutar = mysqli_query($conexion, $query);

    if($ejecutar){
        echo'
            <script>
                alert("Usuario registrado exitosamente");
                window.location="../index.php";
            </script>
        ';
    }else{
        echo'
            <script>
                alert("Error al crear usuario, intentelo nuevamente");
                window.location="../index.php";
            </script>
        ';
    }
    mysqli_close($conexion);
?>