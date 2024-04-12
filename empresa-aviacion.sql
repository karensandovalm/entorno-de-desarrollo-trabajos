-- Tabla de Aviones
CREATE TABLE Aviones (
    id_avion SERIAL PRIMARY KEY,
    modelo VARCHAR(50),
    capacidad_pasajeros INT,
    ano_fabricacion INT,
    VARCHAR(50)
);

-- Tabla de Empleados
CREATE TABLE Empleados (
    id_empleado SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    fecha_contratacion DATE,
    puesto VARCHAR(50),
    salario DECIMAL(10, 2),
    departamento VARCHAR(50),
 id_avion INT REFERENCES Aviones(id_avion)  -- Relación con la Aviones
);

-- Tabla de Vuelos
CREATE TABLE Vuelos (
    id_vuelo SERIAL PRIMARY KEY,
    numero_vuelo VARCHAR(20),
    fecha_hora_salida TIMESTAMP,
    fecha_hora_llegada TIMESTAMP,
    aeropuerto_salida VARCHAR(50),
    aeropuerto_llegada VARCHAR(50),
    id_avion INT REFERENCES Aviones(id_avion)  -- Relación con la tabla Aviones
);

-- Tab de Clientes
CREATE TABLE Clientes (
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(100),
    numero_telefono VARCHAR(20),
    otra_informacion TEXT
);

-- Tabla de Reservas
CREATE TABLE Reservas (
    id_reserva SERIAL PRIMARY KEY,
    id_cliente INT REFERENCES Clientes(id_cliente),
    id_vuelo INT REFERENCES Vuelos(id_vuelo),
    fecha_reserva DATE,
    estado_reserva VARCHAR(50)
);

-- Tabla de Tripulación
CREATE TABLE Tripulacion (
    id_miembro_tripulacion SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    rol VARCHAR(50),
    numero_licencia VARCHAR(50),
    estado VARCHAR(50)
);
