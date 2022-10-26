create database jogopokemon;
use jogopokemon;

create table tb_treinador(
	id_treinador int primary key,
	Nome_treinador varchar(50),
    data_nascimento date,
    id_pokemon int 
);

insert into tb_treinador(id_treinador, Nome_treinador, data_nascimento, id_pokemon) values
(1, 'victor', '2000-12-12', 1),
(2, 'leandro', '2000-10-25', 2),
(3, 'kikuti', '2003-07-11', 3),
(4, 'gustavo', '2002-08-06', 4),
(5, 'pedro', '2003-03-05', 5);

select *from tb_treinador;

create table tb_mochila(
	id_mochila int,
    id_pokemon int,
    id_treinador int,
    quantidade_pokemon decimal(6)
);


create table tb_fazenda(
	id_fazenda int,
    id_treinador int,
    id_pokemon int,
    quantidade_pokemon int
);
create table tb_pokemon(
	id_pokemon int,
    id_treinador int,
    id_mochila int,
    nome_pokemon varchar(25),
    tipo1 varchar (25),
	tipo2 varchar (25),
    hp numeric,
    ataque numeric,
    defesa numeric,
    ataque_especial numeric,
    defesa_especial numeric,
    agilidade numeric,
    geracao numeric,
    forma varchar(25)
);
insert into tb_pokemon(id_pokemon, id_treinador, id_mochila, nome_pokemon, tipo1, tipo2, hp, ataque, defesa, ataque_especial, defesa_especial, agilidade, geracao, forma) values
(null, 1, 1, 'bulbasaur','grass', 'poison', '45', '49', '49', '65', '65', '45', '1', 'none' ),
(null, 1, 1, 'pikachu','eletric', 'none', '35', '30', '50', '40', '60', '90', '1', 'none' ),
(null, 1, 1, 'nidoran','poison', 'none', '60', '55', '50', '70', '35', '15', '1', 'male' ),
(null, 1, 1, 'butterfree','bug', 'flying','30','49', '53', '55', '45', '30', '1', 'none' ),
(null, 1, 1, 'blastoise','water', 'none', '50', '65', '35', '70', '40', '90', '1', 'none' ),
(null, 1, 1, 'charizard','fire', 'flying', '65', '50', '55', '75', '50', '45', '1', 'none' );

select *from tb_pokemon;
