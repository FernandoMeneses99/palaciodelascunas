<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalles del Producto</title>
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>public/css/style.css">
</head>
<body>

<!-- Header -->
<?php include "Views/template/header.php"; ?>

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="<?php echo BASE_URL; ?>public/img/breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Detalles del Producto</h2>
                    <div class="breadcrumb__option">
                        <a href="<?php echo BASE_URL; ?>">Inicio</a>
                        <a href="<?php echo BASE_URL; ?>productos">Productos</a>
                        <span>Detalles del Producto</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Details Section Begin -->
<section class="product-details spad">
    <div class="container">
        <div class="row">
            <?php if (!empty($data['producto'])) { ?>
                <?php $producto = $data['producto']; ?>
                <div class="col-lg-6">
                    <div class="product__details__pic">
                        <img src="<?php echo BASE_URL . 'public/img/productos/' . $producto['imagen']; ?>" alt="<?php echo $producto['nombre']; ?>" class="product__details__pic__item--large">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="product__details__text">
                        <h3><?php echo $producto['nombre']; ?></h3>
                        <div class="product__details__price">$<?php echo $producto['precio']; ?></div>
                        <p><?php echo $producto['descripcion']; ?></p>
                        <div class="product__details__button">
                            <a href="#" stock="<?php echo $producto['cantidad']; ?>" class="product__details__cart__btn producto-agregar" id="<?php echo $producto['id']; ?>"><span class="icon_bag_alt"></span> Agregar al Carrito</a>
                            <a href="https://api.whatsapp.com/send?phone=<?php echo $data['negocio']['whatsapp'] . '&text=Estoy interesado en el producto ' . $producto['nombre'] . ' con un precio de ' . $producto['precio']; ?>" class="primary-btn whatsapp-link"><i class="fa fa-whatsapp"></i> Contactar por WhatsApp</a>
                        </div>
                    </div>
                </div>
            <?php } else { ?>
                <div class="col-lg-12">
                    <p>Producto no encontrado.</p>
                </div>
            <?php } ?>
        </div>
    </div>
</section>
<!-- Product Details Section End -->

<!-- Footer -->
<?php include "Views/template/footer.php"; ?>

<script src="<?php echo BASE_URL; ?>public/js/cart.js"></script>

</body>
</html>
