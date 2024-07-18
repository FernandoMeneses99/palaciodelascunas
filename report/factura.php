<?php
session_start();
require './fpdf/fpdf.php';
include '../library/configServer.php';
include '../library/consulSQL.php';

$id = $_GET['id'];

// Obtener datos de la venta y el cliente
$sVenta = ejecutarSQL::consultar("SELECT * FROM venta WHERE NumPedido='$id'");
$dVenta = mysqli_fetch_array($sVenta, MYSQLI_ASSOC);
$sCliente = ejecutarSQL::consultar("SELECT * FROM cliente WHERE NIT='" . $dVenta['NIT'] . "'");
$dCliente = mysqli_fetch_array($sCliente, MYSQLI_ASSOC);

// Definir una clase extendida de FPDF para personalizar el diseño
class PDF extends FPDF {
    function Header() {
        // Logo y título
        $this->Image('fpdf/logo.png', 10, 10, 50);
        $this->SetFont('Arial', 'B', 14);
        $this->Cell(0, 10, 'Factura de Venta', 0, 1, 'R');

        // NIT y número de factura
        $this->SetFont('Arial', '', 10);
        $this->Cell(0, 5, 'NIT: 999.888.777-5', 0, 1, 'R');
        $this->Cell(0, 5, '601 33333333', 0, 1, 'R');
        $this->Cell(0, 5, 'F- ' . $GLOBALS['id'], 0, 1, 'R');

        $this->Ln(10);
    }

    function Footer() {
        // Pie de página
        $this->SetY(-15);
        $this->SetFont('Arial', 'I', 8);
        $this->Cell(0, 10, 'Página ' . $this->PageNo() . ' / {nb}', 0, 0, 'C');
    }
}

// Crear instancia de PDF
$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();

// Información del cliente y pedido
$pdf->SetFont('Arial', 'B', 12);
$pdf->Cell(0, 10, 'Fecha del pedido: ' . $dVenta['Fecha'], 0, 1);
$pdf->Cell(0, 10, 'Nombre del cliente: ' . $dCliente['NombreCompleto'] . ' ', 0, 1);
$pdf->Cell(0, 10, 'Documento: ' . $dCliente['NIT'], 0, 1);
$pdf->Cell(0, 10, 'Direccion: ' . $dCliente['Direccion'], 0, 1);
$pdf->Cell(0, 10, 'Telefono: ' . $dCliente['Telefono'] . '  Email: ' . $dCliente['Email'], 0, 1);

// Encabezados de la tabla de productos
$pdf->Ln(10);
$pdf->SetFont('Arial', 'B', 12);
$pdf->Cell(100, 10, 'Nombre', 1, 0, 'C');
$pdf->Cell(30, 10, 'Precio', 1, 0, 'C');
$pdf->Cell(30, 10, 'Cantidad', 1, 0, 'C');
$pdf->Cell(30, 10, 'Subtotal', 1, 0, 'C');
$pdf->Ln(10);

// Detalles de los productos
$suma = 0;
$sDet = ejecutarSQL::consultar("SELECT * FROM detalle WHERE NumPedido='$id'");
while ($fila = mysqli_fetch_array($sDet, MYSQLI_ASSOC)) {
    $consulta = ejecutarSQL::consultar("SELECT * FROM producto WHERE CodigoProd='" . $fila['CodigoProd'] . "'");
    $producto = mysqli_fetch_array($consulta, MYSQLI_ASSOC);

    $pdf->Cell(100, 10, $producto['NombreProd'], 1, 0, 'C');
    $pdf->Cell(30, 10, '$' . $fila['PrecioProd'], 1, 0, 'C');
    $pdf->Cell(30, 10, $fila['CantidadProductos'], 1, 0, 'C');
    $subtotal = $fila['PrecioProd'] * $fila['CantidadProductos'];
    $pdf->Cell(30, 10, '$' . number_format($subtotal, 2), 1, 0, 'C');
    $pdf->Ln(10);

    $suma += $subtotal;
    mysqli_free_result($consulta);
}

// Total de la factura
$pdf->SetFont('Arial', 'B', 12);
$pdf->Cell(160, 10, 'Total', 1, 0, 'R');
$pdf->Cell(30, 10, '$' . number_format($suma, 2), 1, 0, 'C');

// Salida del PDF
$pdf->Output('Factura-' . $id . '.pdf', 'I');

// Liberar resultados y cerrar conexiones
mysqli_free_result($sVenta);
mysqli_free_result($sCliente);
mysqli_free_result($sDet);
?>
