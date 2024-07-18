<?php
session_start();
include '../library/configServer.php';
include '../library/consulSQL.php';

$nitCliente=consultasSQL::clean_string($_POST['prove-nit']);
$nameCliente=consultasSQL::clean_string($_POST['prove-name']);
$dirCliente=consultasSQL::clean_string($_POST['prove-dir']);
$telCliente=consultasSQL::clean_string($_POST['prove-tel']);
$emailCliente=consultasSQL::clean_string($_POST['prove-web']);

$verificar=  ejecutarSQL::consultar("SELECT * FROM cliente WHERE NIT='".$nitCliente."'");
if(mysqli_num_rows($verificar)<=0){
    if(consultasSQL::InsertSQL("cliente", "NIT, Nombre, Direccion, Telefono, Email", "'$nitCliente','$nameCliente','$dirCliente','$telCliente','$emailCliente'")){
        echo '<script>
            swal({
              title: "Cliente registrado",
              text: "Los datos del cliente se agregaron con éxito",
              type: "success",
              showCancelButton: true,
              confirmButtonClass: "btn-danger",
              confirmButtonText: "Aceptar",
              cancelButtonText: "Cancelar",
              closeOnConfirm: false,
              closeOnCancel: false
              },
              function(isConfirm) {
              if (isConfirm) {
                location.reload();
              } else {
                location.reload();
              }
            });
        </script>';
    }else{
       echo '<script>swal("ERROR", "Ocurrió un error inesperado, por favor intente nuevamente", "error");</script>';
    }
}else{
    echo '<script>swal("ERROR", "El número de NIT/CEDULA que ha ingresado ya se encuentra registrado en el sistema, por favor ingrese otro número de NIT o CEDULA", "error");</script>';
}
mysqli_free_result($verificar);