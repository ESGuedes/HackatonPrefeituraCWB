<?php include('menu.php');?>

<?php
//session_start();
if (!empty($_GET['sair']) && $_GET['sair'] == true)
{
	$_SESSION ['$email'] = null;
	header('location: ../login.php');
}
?>

<div class="wrapper wrapper-content animated fadeInRight">
	<div class="row">
        <div class="col-lg-12">
            <div class="text-center m-t-lg">
                <h1>
                    Bem Vindo ao TeachHub !
                </h1>
                <small>
                    Portal de compartilhamento de conteudo on-line para aulas.
                </small>
			</div>
			<div class="text-center m-t-lg">
				<img alt="image" class="img-circle" src="img/logo02.png" />
			</div>
		</div>
	</div>
</div>          

<?php include('footer.php');?>