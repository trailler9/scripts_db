DROP TABLE IF EXISTS users_account
CREATE TABLE users_account (
    id serial primary key NOT NULL,
    username varchar(30)  NOT NULL,
    password varchar(65)  NOT NULL, --- hash sha256
    role_user varchar(20)  NOT NULL,
    create_date timestamp default current_timestamp --- creacion del registro
);

DROP TABLE IF EXISTS status_message
CREATE TABLE status_message (
    id serial primary key NOT NULL,
    type varchar(20) NOT NULL,
    title varchar(30) NOT NULL,
    content varchar(255) NOT NULL,
    create_date timestamp default current_timestamp
);


/*
añadir una tabla registry_update para manejar las modificaciones que se hace a los registros
pensar en eso despues
tipo auditoria
tambien que registre quien lo modifico
*/