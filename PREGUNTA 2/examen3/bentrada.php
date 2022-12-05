

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<title>INF 324</title>
</head>
<body>

<div class="text-right m-3 mr-5">
	        <a href="cerrar_session.php" class="btn btn-danger"> Cerrar Sesion</a>
        </div>
<div class="card text-center">
<div class="card-header">
        TRAMITES
        
</div style=" text-align: center;">
<div>
    <img src="img/tramites.png" style="width: 18rem;" class="mt-5 center-block" alt="...">
</div>

<div class="card-body">

    <?php
    include "conexion.inc.php";
    session_start();
    $usuario=$_SESSION["usuario"];
    $sql="select * from flujotramite ";
    $sql.="where usuario='".$usuario."' and fechafin is null and proceso <> ''";
    $resultado=mysqli_query($con, $sql);
    ?>
    <table class="table">
    <tr>
      <td>Flujo</td>
      <td>proceso</td>
      <td>No.tramite</td>
      <td>fecha inicial</td>
      <td>fecha final</td>
      <td>Ir</td>
    </tr>
    <?php 
    while ($fila=mysqli_fetch_array($resultado))
    {
      echo "<tr>";
      echo "<td>".$fila["Flujo"]."</td>";
      echo "<td>".$fila["proceso"]."</td>";
      echo "<td>".$fila["nro_tramite"]."</td>";
      echo "<td>".$fila["fechaini"]."</td>";
      echo "<td>".$fila["fechafin"]."</td>";
      echo "<td><a href='flujo.php?flujo=".$fila["Flujo"]."&proceso=".$fila["proceso"]."&nro_tramite=".$fila["nro_tramite"]."'>Ir</td>";
      echo "</tr>";
    }
    ?>
    </table>

</div>


</body>
</html>