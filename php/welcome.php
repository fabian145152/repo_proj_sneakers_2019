<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
</head>

<body>

</body>

</html>
<?php
session_start();
if ($_SESSION['logueado']) {
    echo "BIENVENIDO ,"  . $_SESSION['uname'] . '<br>';
    echo "Hora de coneccion :" . $_SESSION['time'] . '<br>';
    echo "<a href='logout.php'>Logout</a>";
    echo "<br>";
    echo "<h1 class='text-center'>Opciones de menú</h1> ";
    ECHO "<BR>";
    echo "<a href='insert_products.php' style='display:flex;justify-content:center;'> INSERTAR PRODUCTOS</a>";
    echo "<br>";
    echo "<a href='list_products.php' style='display:flex;justify-content:center;'> ELIMINAR PRODUCTOS</a>";
    echo "<br>";
    echo "<a href='list_products.php' style='display:flex;justify-content:center;'> EDITAR PRODUCTOS</a>";
    /*El text-center sale de una clase de Bootstrap*/
} else {
    header("location:../form-login.html");
}
