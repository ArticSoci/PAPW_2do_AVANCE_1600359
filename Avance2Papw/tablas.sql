use elpapwdb;

create table Usuario
(
id_usuario int auto_increment primary key not null,
Nombre varchar(20) not null,
Apellido varchar(20) not null,
Email varchar(20) not null,
nombreUsuario varchar(20) not null,
contraseña varchar(20) not null,
telefono int,
direccion varchar(20),
imagen BLOB
);
create table usuarioAdmin
(
id_Admin int primary key,
nombre varchar(20),
contraseña varchar(20)
);
create table producto
(
id_Admin int,
FOREIGN KEY (id_Admin) REFERENCES usuarioAdmin(id_Admin),
id_producto int auto_increment primary key not null,
nombre varchar(20) not null,
descripcion text not null,
id_categoria int,
FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria),
unidades int,
id_imagen int,
FOREIGN KEY (id_imagen) REFERENCES imagenes(id_imagen),
id_video int,
FOREIGN KEY (id_video) REFERENCES video(id_video),
precio float not null,
votosP int,
votosN int,
unidadesVendidas int,
visitas int
);
Create table categoria
(
id_categoria int auto_increment primary key,
nombreCate varchar(20)
);
create table imagenes
(
id_imagen int auto_increment primary key,
imagen1 blob,
imagen2 blob,
imagen3 blob
);
create table video
(
id_video int auto_increment primary key,
video varchar(50)
);
create table valoracion
(
id_producto int,
FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
id_usuario int,
FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
valor float
);
create table comentario
(
id_producto int,
FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
id_usuario int,
FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
comentario varchar(200)
);
create table carrito
(
id_usuario int,
FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
id_producto int,
FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
unidades int,
precio float
);
create table historial
(
id_usuario int, 
FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
id_producto int,
FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
unidades int,
total float
);


