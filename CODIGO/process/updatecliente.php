<?php
include '../library/configServer.php';
include '../library/consulSQL.php';

$nitOldProveUp=consultasSQL::clean_string($_POST['nit-prove-old']);
$nameProveUp=consultasSQL::clean_string($_POST['prove-name']);
$dirProveUp=consultasSQL::clean_string($_POST['prove-dir']);
$telProveUp=consultasSQL::clean_string($_POST['prove-tel']);
$webProveUp=consultasSQL::clean_string($_POST['prove-web']);

if(consultasSQL::UpdateSQL("cliente", "Nombre='$nameProveUp',Direccion='$dirProveUp',Telefono='$telProveUp',Email='$webProveUp'", "NIT='$nitOldProveUp'")){
    echo '<script>
        swal({
          title: "Cliente actualizado",
          text: "Los datos del cliente se actualizaron correctamente",
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