<?php

$connect = new PDO('mysql:host=localhost;dbname=testing','root','root')
if(isset($_POST['title']))
{
   $query = "
   INSER INTO events(title, start_event, end_event) 
   VALUES(:title, :start_event, :end_event)
   ";
   $statement = $connect->prepare($query);
   $statement->execute(
       array(
           ':title'=>$_POST['title'],
           ':start_event'=>$_POST['start'],
           ':end_event'=>$_POST['end']
       )
    );

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel 
</head>
<body>
    
</body>
</html>