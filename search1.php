<?php
define('HOST', 'localhost');
define('USER', '');
define('PASS', '');
define('DB', '');
$connect = mysqli_connect(HOST, USER, PASS, DB) or die('Not Connect');
?>

<?php

//$number = $_POST['number'];
//$search1 = $_POST['search1'];
//$nik = trim($_POST['search1']);

$student_id = trim($_POST['search1']);
//$student_id = '1234567890123456';


//$nik = $_REQUEST['search1'];


//query("SELECT * FROM t_quiz_list WHERE id='".$id."'");
//$id = $number;
//$nik = $search1;


$queryResult=$connect->
  query("
  SELECT id, student_id, student_name, gender, address, 
  major, phone, datetime_entry 
  FROM t_students WHERE student_id='".$student_id."'");
  




$result=array();

while($fetchData=$queryResult->fetch_assoc()) {
	$result[]=$fetchData;
}

//Send back data to Flutter
    if($result){
        echo json_encode($result);
    }else{
        echo json_encode('');
    }
?>
