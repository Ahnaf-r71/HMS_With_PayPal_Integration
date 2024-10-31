<?php

try {
    define("HOST","localhost");

    define("DBNAME","lux_inn");

    define("USER","root");

    define("PASS","");

    $conn = new PDO("mysql:host=".HOST.";dbname=".DBNAME."", USER, PASS);
    $conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
}
catch (PDOException $e) {

    echo $e->getMessage();

}


//this section was for my office use only for the live host, credentials to server are hidden with* therefore
// try {
//     define("HOST","*********");

//     define("DBNAME","u*************);

//     define("USER","u276************");

//     define("PASS","*******");

//     $conn = new PDO("mysql:host=".HOST.";dbname=".DBNAME."", USER, PASS);
//     $conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
// }
// catch (PDOException $e) {

//     echo $e->getMessage();

// }
?>