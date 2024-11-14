USE bookstore;

create table dim_cliente
(
    id_cliente     int         not null
        primary key,
    nombre_cliente varchar(50) null,
    edad           int         null,
    genero         char        null,
    ciudad         varchar(50) null
);

create table dim_libro
(
    id_libro        int            not null
        primary key,
    titulo          varchar(50)    null,
    autor           varchar(50)    null,
    genero          varchar(50)    null,
    precio_unitario decimal(10, 2) null
);

create table dim_tiempo
(
    id_tiempo int not null
        primary key,
    anio      int null,
    mes       int null,
    dia       int null,
    trimestre int null
);

create table dim_tienda
(
    id_tienda     int         not null
        primary key,
    nombre_tienda varchar(50) null,
    ciudad        varchar(50) null,
    pais          varchar(50) null
);

create table hechos_ventas
(
    id_venta     int            not null,
    id_tiempo    int            null,
    id_libro     int            null,
    id_cliente   int            null,
    id_tienda    int            null,
    cantidad     int            null,
    precio_total decimal(10, 2) null,
    constraint hechos_ventas_dim_cliente_id_cliente_fk
        foreign key (id_cliente) references dim_cliente (id_cliente),
    constraint hechos_ventas_dim_libro_id_libro_fk
        foreign key (id_libro) references dim_libro (id_libro),
    constraint hechos_ventas_dim_tiempo_id_tiempo_fk
        foreign key (id_tiempo) references dim_tiempo (id_tiempo),
    constraint hechos_ventas_dim_tienda_id_tienda_fk
        foreign key (id_tienda) references dim_tienda (id_tienda)
);


