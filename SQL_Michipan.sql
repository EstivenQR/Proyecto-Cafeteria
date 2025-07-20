CREATE DATABASE Michipan_BD;


CREATE USER 'michipan'@'localhost' IDENTIFIED BY 'password';

GRANT ALL PRIVILEGES ON Michipan_BD.* TO 'michipan'@'localhost';

FLUSH PRIVILEGES;

USE Michipan_BD;


CREATE TABLE tab_granos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_grano VARCHAR(255) NOT NULL,
    descripcion TEXT,
    imagen VARCHAR(255)
);


INSERT INTO tab_granos (nombre_grano, descripcion) 
VALUES ('Arabica', 'El grano de café Arabica es conocido por su sabor suave y su aroma distintivo. Es una variedad de alta calidad que se cultiva en regiones montañosas.');

INSERT INTO tab_granos (nombre_grano, descripcion, imagen) 
VALUES ('Liberica', 'Liberica: Los granos de café Liberica provienen de la planta Coffea liberica y ofrecen un perfil de sabor único y distintivo. Este tipo de café es menos común que el Arabica y el Robusta, pero se cultiva en regiones específicas, especialmente en África', 'https://incapto.com/wp-content/uploads/2021/04/UTB884cHm22JXKJkSanrq6y3lVXaI.jpg');


ALTER TABLE tab_granos MODIFY COLUMN imagen VARCHAR(1000);


CREATE TABLE formulario_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    motivo VARCHAR(255),
    telefono VARCHAR(15),
    mensaje TEXT
);


CREATE TABLE tab_personal (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    rol VARCHAR(50),
    frase TEXT,
    imagen VARCHAR(1000)
);


create table michipan_bd.categoria (
  id_categoria INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(255),
  descripcion VARCHAR(30),
  ruta_imagen varchar(1024),
 
  PRIMARY KEY (id_categoria))


create table michipan_bd.producto (
  id_producto INT NOT NULL AUTO_INCREMENT,
  id_categoria INT NOT NULL,
  descripcion VARCHAR(30),  
  detalle VARCHAR(1600), 
  precio double,
  existencias int,  
  ruta_imagen varchar(1024),
  PRIMARY KEY (id_producto),
  foreign key fk_producto_caregoria (id_categoria) references categoria(id_categoria)  
)







