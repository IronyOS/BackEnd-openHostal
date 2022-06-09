CREATE DATABASE openhostel;
\l;

\c openhostel;

CREATE TABLE hostal(
    id SERIAL NOT NULL,
    PRIMARY KEY (id),
    nombre VARCHAR(25)NOT NULL,
    ciudad  VARCHAR(45)NOT NULL,
    sede VARCHAR(45)NOT NULL,
    descripcion  VARCHAR(200)NOT NULL,
    direccion varchar(85)NOT NULL,
    foto VARCHAR (50)NOT NULL,
    geometry1 int NOT NULL,
    geometry2  int NOT NULL
);

CREATE TABLE room(
    id SERIAL NOT NULL,
    tipo varchar(30) NULL DEFAULT NULL,
    descripcion VARCHAR(200)NOT NULL,
    foto VARCHAR (50)NOT NULL,
    estado int NOT NULL,
    capacidad INTEGER NOT NULL,
    servicios VARCHAR(100) NOT NULL,
    id_hostal SERIAL NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_hostal) 
    REFERENCES hostal (id) ON DELETE RESTRICT ON UPDATE CASCADE
);


CREATE TABLE users(
   id SERIAL NOT NULL,
    nombre  VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    contrasena VARCHAR(30) NOT NULL,
    celular VARCHAR(10) NOT NULL,
    tipo_documento VARCHAR(16) NOT NULL,
    numero_documento int NOT NULL,
    nacionalidad VARCHAR(15) NOT NULL,
    rol VARCHAR(10),
    id_hostal SERIAL NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_hostal)
    REFERENCES hostal (id) ON DELETE RESTRICT ON UPDATE CASCADE
);

   --mostrar las tablas de la base de datos
    \dt ;

  -- describir una tabla 
    \d hostal;
    \d room;
    \d users;
