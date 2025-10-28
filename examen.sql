CREATE TABLE `Autor`(
    `id_Autor` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Nombre` BIGINT NOT NULL,
    `Nacionalidad` BIGINT NOT NULL,
    `Fecha nacimiento` BIGINT NOT NULL
);
CREATE TABLE `Libro`(
    `id_Libro` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Autor` BIGINT NOT NULL,
    `Titulo` BIGINT NOT NULL,
    `Precio` BIGINT NOT NULL,
    `ISBN` BIGINT NOT NULL,
    `Stock` BIGINT NOT NULL,
    `Fecha publicacion` BIGINT NOT NULL,
    `Categoria` BIGINT NOT NULL,
    `Editorial` BIGINT NOT NULL
);
CREATE TABLE `Pedido`(
    `id_Pedido` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Libros` BIGINT NOT NULL,
    `Cantidad` BIGINT NOT NULL,
    `Fecha compra` BIGINT NOT NULL,
    `Estado` BIGINT NOT NULL
);
CREATE TABLE `Transaccion`(
    `id_transaccion` BIGINT NOT NULL,
    `MetodoPago` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `fecha transaccion` BIGINT NOT NULL,
    `monto total` BIGINT NOT NULL,
    PRIMARY KEY(`id_transaccion`)
);
CREATE TABLE `Cliente`(
    `id_Cliente` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Nombre` BIGINT NOT NULL,
    `Telefono` BIGINT NOT NULL,
    `Direccion` BIGINT NOT NULL,
    `Email` BIGINT NOT NULL
);
ALTER TABLE
    `Libro` ADD CONSTRAINT `libro_id_libro_foreign` FOREIGN KEY(`id_Libro`) REFERENCES `Autor`(`id_Autor`);
ALTER TABLE
    `Transaccion` ADD CONSTRAINT `transaccion_id_transaccion_foreign` FOREIGN KEY(`id_transaccion`) REFERENCES `Pedido`(`id_Pedido`);
ALTER TABLE
    `Pedido` ADD CONSTRAINT `pedido_id_pedido_foreign` FOREIGN KEY(`id_Pedido`) REFERENCES `Cliente`(`id_Cliente`);
ALTER TABLE
    `Pedido` ADD CONSTRAINT `pedido_fecha compra_foreign` FOREIGN KEY(`Fecha compra`) REFERENCES `Cliente`(`id_Cliente`);