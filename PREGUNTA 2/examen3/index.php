
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
<div class="card text-center">
<div class="card-header">
        INICIAR SESION
</div style=" text-align: center;">
<div>
    <img src="img/iniciosesion.png" style="width: 18rem;" class="mt-5 center-block" alt="...">
</div>

<div class="card-body">

<form method="GET" action="indexcontrol.php" class="">
	
	

	<div class="d-flex justify-content-center">
		<div class="w-25">

		
		<div class="input-group mb-2">
			<span class="input-group-text " id="basic-addon3">Usuario</span>
			<input type="text" value="" name="usuario" class="form-control"/>
		</div>	
	
		<div class="input-group mb-2">
			<span class="input-group-text" id="basic-addon3">Contrasenia</span>
			<input type="text" value="" name="contrasenia"/>
		</div>
		</div>
	</div>
	
	<br/>
	
	<input class="btn btn-success" type="submit" value="INICIAR" name="Aceptar"/>
	
</form>
        
</div>
<div class="card-footer text-muted">
    INF 324
</div>
</div>


</body>
</html>