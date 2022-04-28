Atividade em grupo com o tema pokemon
Motivo da escolha: Projetar um banco de dados sobre pokemon que inclue pokedex, treinadores, ginasios e pokemons foi algo bem legal de se fazer



create table pokedex(
	num int primary key,
	pokeDes boolean,
	pokeCap boolean,
	nomePoke varchar,
	regiao varchar,
	pokeball varchar
);

insert into pokedex
(num, pokeDes, pokeCap, nomePoke, regiao, pokeball)
values
('001', 'true' ,'false', 'Bulbasaur', 'Kanto', 'nenhuma'),
('002', 'false', 'false', '?', 'Kanto', 'nenhuma'),
('003', 'false', 'false', '?', 'Kanto', 'nenhuma'),
('004', 'true' ,'false', 'Charmander', 'Kanto', 'nenhuma'),
('005', 'false', 'false', '?', 'Kanto', 'nenhuma'),
('006', 'false', 'false', '?', 'Kanto', 'nenhuma'),
('007', 'true' ,'false', 'Squirtle', 'Kanto', 'nenhuma'),
('010', 'true', 'true', 'Caterpie', 'Kanto', 'pokeball'),
('015', 'true', 'false', 'Beedrill', 'Kanto', 'nenhuma'),
('016', 'true', 'true', 'Pidgey', 'Kanto', 'pokeball'),
('019', 'true', 'false', 'Rattata', 'Kanto', 'nenhuma'),
('025', 'true', 'true', 'Pikachu', 'Kanto', 'pokeball'),
('050', 'true', 'true', 'Diglett', 'Kanto', 'pokeball'),
('052', 'true', 'false', 'Meowth', 'Kanto', 'nenhuma'),
('054', 'true', 'false', 'Psyduck', 'Kanto', 'nenhuma'),
('092', 'false', 'false', '?', 'Kanto', 'nenhuma'),
('114', 'true', 'true', 'Tangela', 'Kanto', 'great ball'),
('132', 'true', 'false', 'Ditto', 'Kanto', 'nenhuma'),
('194', 'true', 'true', 'Wooper', 'Johto', 'friend ball'),
('448', 'true', 'true', 'Lucario', 'Sinnoh', 'ultra ball');
------------------------------------------------------------------------------------------

create table pokemon(
	id int primary key,
	numPoke int references pokedex(num),
	nomePoke varchar,
	tipo varchar,
	genero varchar,
	hp int,
	atk int,
	def int,
	spd int,
	regiao varchar,
	movimentos varchar
); -- tabela importada --

create table treinador(
	serialPokedex int primary key,
	nome varchar,
	idade int,
	sexo varchar,
	regiao varchar,
	insignias int,
	liga varchar
);
insert into treinador
(serialPokedex, nome, idade, sexo, regiao, insignias, liga)
values
(0412, 'Ash Ketchum', '10', 'masculino', 'Kanto', '54', 'Master'),
(3123, 'Chroma Houtarou', '16', 'masculino', 'Johto', '69', 'Master'),
(0169, 'Lucas Matoi', '16', 'masculino', 'Sinnoh', '60', 'Master'),
(1779, 'Meneghel Satsuki', '17', 'feminino', 'Johto', '46', 'Ultra'),
(6234, 'Yse Hathaway', '23', 'feminino', 'Hoenn', '2', 'Beginner'),
(2341, 'Neffal Kousei', '20', 'masculino', 'Unova', '35', 'Veteran'),
(6331, 'Pomponet Kobayashi', '13', 'feminino', 'Alola', '10', 'Great'),
(4444, 'Gabriela Hinazuki', '17', 'feminino', 'Sinnoh', '32', 'Veteran'),
(5030, 'Lelet Dazai', '60', 'feminino', 'Kalos', '1', 'Beginner');

create table ginasio(
	local varchar primary key,
	regiao varchar,
	liderGinasio varchar,
	tipo varchar,
	insignia varchar
);
insert into ginasio
(local, regiao, liderGinasio, tipo, insignia)
values
('Cidade de Pewter', 'Kanto', 'Brock', 'Pedra', 'Insignia da Rocha'),
('Cidade de Cerulan', 'Kanto', 'Misty', 'Água', 'Insignia da Cascata'),
('Cidade de Vermilion', 'Kanto', 'St. Surge', 'Elétrico', 'Insignia do Trovão'),
('Cidade de Celadon	', 'Kanto', 'Eika', 'Grama', 'Insignia do Arco'),
('Cidade de Fuchsia', 'Kanto', 'Koga', 'Venenoso', 'Insignia da alma'),
('Cidade de Safron', 'Kanto', 'Sabrina', 'Psiquico', 'Insignia do Pantano'),
('Ilha Cinnabar', 'Kanto', 'Blaine', 'Fogo', 'Insignia do Vulcao'),
('Cidade de Viridian', 'Kanto', 'Giovanni', 'Terra', 'Insignia da Terra'),
('Cidade de Violeta', 'Johto', 'Falkner', 'Voador', 'Insignia de Zephyr'),
('Cidade de Azaleia', 'Johto', 'Bugsy', 'Inseto', 'Insignia Hive'),
('Cidade de Goldenrod', 'Johto', 'Whitney', 'Normal', 'Insignia Plain'),
('Cidade de Ecruteak', 'Johto', 'Morty', 'Fantasma', 'Insignia Fog'),
('Cidade de Cianwood', 'Johto', 'Chuck', 'Lutador', 'Insignia Storm'),
('Cidade de Olivine', 'Johto', 'Jasmine', 'Aço', 'Insignia Mineral'),
('Cidade de Mahogany', 'Johto', 'Pryce', 'Gelo', 'Insignia Glacier'),
('Cidade de Blackthorn', 'Johto', 'Clair', 'Dragão', 'Insignia Rising'),
('Cidade de Rustboro', 'Hoenn', 'Roxanne', 'Pedra', 'Insignia Stone'),
('Cidade de Dewford', 'Hoenn', 'Brawly', 'Lutador', 'Insignia Knuckle'),
('Cidade de Mauville', 'Hoenn', 'Wattson', 'Elétrico', 'Insignia Dynamo'),
('Cidade de Lavaridge', 'Hoenn', 'Flannery', 'Fogo', 'Insignia Heat'),
('Cidade de Petalburg', 'Hoenn', 'Norman', 'Normal', 'Insignia Balance'),
('Cidade de Mossdeep', 'Hoenn', 'Tate e Liza', 'Psiquico', 'Insignia Mind'),
('Cidade de Sootopolis', 'Hoenn', 'Wallace e Juan', 'Água', 'Insginia Rain'),
('Cidade de Oreburgh', 'Sinnoh', 'Roark', 'Pedra', 'Insignia Carvao'),
('Cidade de Eterna', 'Sinnoh', 'Gadernia', 'Planta', 'Insignia Floresta'),
('Cidade de Veilstone', 'Sinnoh', 'Maylene', 'Lutador', 'Insignia Emenda'),
('Cidade de Pastoria', 'Sinnoh', 'Crasher', 'Água', 'Insignia Brejo'),
('Cidade de Hearthome', 'Sinnoh', 'Fantina', 'Fantasma', 'Insignia Ruina'),
('Cidade de Canavale', 'Sinnoh', 'Byron', 'Aço', 'Insignia Mina'),
('Cidade de Snowpoint', 'Sinnoh', 'Candice', 'Gelo', 'Insignia Sincelo'),
('Cidade de Sunyshore', 'Sinnoh', 'Volkner', 'Elétrico', 'Insignia Farol');



select * from pokedex
select * from pokemon
select * from treinador
select * from ginasio

