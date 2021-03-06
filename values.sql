INSERT INTO `utilizador` VALUES (1002,'Admin','admin@admin.com','978989822','0afb00138d8e73348ec1fe41fd3d3a8fcbd90156b263bfa5791ba0e095f42cfc',4,NULL,2020),(1004,'Coordenador','cordenador@cord.com','981111111','03bf9a1bb3709a941ae48af64151c57345b8acdb612b20c9f318ffd1cac2cbb7',2,NULL,2020),(1005,'ProfUni','profuni@uni.com','987654321','03bf9a1bb3709a941ae48af64151c57345b8acdb612b20c9f318ffd1cac2cbb7',3,NULL,2020),(1006,'Colaborador','colab@colab.com','987123456','03bf9a1bb3709a941ae48af64151c57345b8acdb612b20c9f318ffd1cac2cbb7',1,NULL,2020),(1007,'Coordenador2','cordenador2@cord.com','987678987','03bf9a1bb3709a941ae48af64151c57345b8acdb612b20c9f318ffd1cac2cbb7',2,NULL,2020),(1008,'Participante','participante@p.com','987765492','03bf9a1bb3709a941ae48af64151c57345b8acdb612b20c9f318ffd1cac2cbb7',0,NULL,2020),(1009,'Grupo','grupo@grupo.com','987101001','03bf9a1bb3709a941ae48af64151c57345b8acdb612b20c9f318ffd1cac2cbb7',0,NULL,2020),(1010,'Colaborador2','colab2@colab.com','281689255','03bf9a1bb3709a941ae48af64151c57345b8acdb612b20c9f318ffd1cac2cbb7',1,NULL,2020);

INSERT INTO `paragem` VALUES ('Gambelas'),('Penha'),('Terminal');

INSERT INTO `administrador` VALUES (1002);

INSERT INTO `dia_aberto` VALUES (2019,'Dia Aberto 2019!!!!!!!!','dia@aberto.com','http://www.diaaberto.com','2019-12-12','2019-12-12','2019-11-18','2019-11-21','2019-11-12','2019-11-14',1002,2.8,4.2),(2020,'Dia Aberto 2020!!!!!!!!!!','dia@aberto.com','http://www.diaaberto.com','2020-07-20','2020-07-24','2020-06-25','2020-07-04','2020-06-25','2020-07-04',1002,2.8,4.2);

INSERT INTO `dia` VALUES ('2020-07-20'),('2020-07-21'),('2020-07-22'),('2020-07-23'),('2020-07-24');

INSERT INTO `horario` VALUES ('09:30:00'),('10:00:00'),('10:30:00'),('11:00:00'),('11:30:00'),('12:00:00'),('12:30:00'),('13:00:00'),('13:30:00'),('14:00:00'),('14:30:00'),('15:00:00'),('15:30:00'),('16:00:00'),('16:30:00'),('17:00:00'),('17:30:00'),('18:00:00');

INSERT INTO `horario_has_dia` VALUES ('12:00:00','2020-07-20',7),('12:00:00','2020-07-21',8),('12:00:00','2020-07-22',9),('12:00:00','2020-07-23',10),('12:00:00','2020-07-24',11),('09:30:00','2020-07-20',12),('10:00:00','2020-07-20',13),('10:30:00','2020-07-20',14),('16:30:00','2020-07-20',15),('18:00:00','2020-07-20',16);

INSERT INTO `campus` VALUES (4,'Penha'),(5,'Gambelas');

INSERT INTO `menu` VALUES (14,'Menu do dia 20','Sopa de Alface; Sobremesa Mousse',5,7,229),(16,'Menu do dia 20','Sopa de Coentros; Sobremesa Pudim',4,7,10);

INSERT INTO `prato` VALUES (24,'Vegetariano','Tofu',0,14),(25,'Carne','Bife',21,14),(26,'Peixe','Dourada Grelhada c/ batata',0,14),(27,'Carne','Bifão',0,16),(28,'Vegetariano','Alfaces c/ tomate',0,16),(29,'Peixe','Douradinhos',0,16);

INSERT INTO `transporte` VALUES (2,90,'Próximo 20'),(3,90,'Próximo 20'),(4,90,'Próximo 20'),(5,90,'Próximo 20');

INSERT INTO `transporte_has_horario` VALUES (2,1,'Terminal','Gambelas',12,20),(3,2,'Gambelas','Terminal',16,0),(4,3,'Terminal','Penha',12,0),(5,4,'Penha','Terminal',16,0);

INSERT INTO `unidade_organica` VALUES (6,'FCT',5),(7,'ESGHT',4),(8,'FCHS',5);

INSERT INTO `curso` VALUES (6,6,'LEI'),(7,8,'Psicologia'),(8,7,'Gestão');

INSERT INTO `espaco` VALUES (7,'Sala 1.21',5,'images/frases-bonitas-1000x500.jpg'),(8,'A',4,'images/frases-bonitas-1000x500_xxun09i.jpg');

INSERT INTO `anfiteatro` VALUES ('1','0',8);

INSERT INTO `sala` VALUES ('1','1',NULL,7);

INSERT INTO `departamento` VALUES (5,'DEEI',6),(6,'DOPEO',7);

INSERT INTO `coordenador` VALUES (1004,6),(1007,7);

INSERT INTO `professor_universitario` VALUES (1005,5);

INSERT INTO `colaborador` VALUES (1006,6),(1010,8);

INSERT INTO `disponibilidade` VALUES (1006,'2020-07-20','09:30:00','18:00:00','Ajudar Docente',3),(1010,'2020-07-20','09:30:00','18:00:00','Sem preferência',4);

INSERT INTO `atividade` VALUES (6,'Brincar Com Números',20,'Estudantes',30,'brincadeirinha',1,1005,7,6,8,'Mixórdia de Tematica','2'),(7,'Psicologia a Sapos',20,'Estudantes',40,'psicologia',1,1005,6,5,7,'tema','4');

INSERT INTO `sessao` VALUES (5,10,20,6,13),(6,1,20,7,7);

INSERT INTO `escola` VALUES (3,'Secundária Tavira','Tavira','982828281','tavira@tavira.com');

INSERT INTO `participante` VALUES (1008),(1009);

INSERT INTO `inscricao` VALUES (6,12,'Tavira','Ciencias',0),(7,12,'Tavira','Ciências',0);

INSERT INTO `inscricao_individual` VALUES (0000000001,1008,6,982182123);

INSERT INTO `inscricao_coletiva` VALUES (1,'B',1009,3,20,7);

INSERT INTO `inscricao_has_prato` VALUES (6,25,4,1),(7,25,5,20);

INSERT INTO `inscricao_has_sessao` VALUES (6,6,7,1),(7,5,8,10),(7,6,9,10);

INSERT INTO `responsaveis` VALUES (3,'Leonardo Ramos','lucy@gmail.com','987101092',7);

INSERT INTO `transporte_has_inscricao` VALUES (7,3,1,20);

INSERT INTO `tarefa` VALUES (23,'Auxiliar Atividade Brincar Com Números',1,1004,1006,NULL,NULL,5,NULL,NULL,NULL),(50,'Auxilio Psicologia',0,1004,1006,NULL,NULL,6,NULL,NULL,NULL),(51,'Auxiliar Psicologia',0,1007,1006,NULL,NULL,6,NULL,NULL,NULL),(52,'Acompanhamento',0,1007,1010,'10:00:00','2020-07-20',NULL,7,8,7);

INSERT INTO `notificacao` VALUES (46,'Seja bem-vindo ao site do dia aberto','2020-06-26 13:04:31.844695',-1,1004,'Bem-vindo'),(47,'Seja bem-vindo ao site do dia aberto','2020-06-26 13:05:57.844008',-1,1005,'Bem-vindo'),(48,'Seja bem-vindo ao site do dia aberto','2020-06-26 13:16:14.117540',-1,1006,'Bem-vindo'),(63,'Foi atribuido uma Nova Tarefa','2020-06-26 13:47:09.279487',1004,1006,'Tarefa'),(64,'Foi atribuido uma Nova Tarefa','2020-06-26 13:50:13.980687',1004,1006,'Tarefa'),(65,'Foi atribuido uma Nova Tarefa','2020-06-26 13:52:46.587536',1004,1006,'Tarefa'),(66,'Foi atribuido uma Nova Tarefa','2020-06-26 13:53:50.844692',1004,1006,'Tarefa'),(67,'Seja bem-vindo ao site do dia aberto','2020-06-26 13:55:17.969872',-1,1007,'Bem-vindo'),(68,'Foi atribuido uma Nova Tarefa','2020-06-26 13:59:02.553012',1007,1006,'Tarefa'),(69,'Seja bem-vindo ao site do dia aberto','2020-06-26 14:11:44.984522',-1,1010,'Bem-vindo'),(70,'Foi atribuido uma Nova Tarefa','2020-06-26 14:19:16.897381',1007,1010,'Tarefa'),(71,'Tudo bem?','2020-06-26 14:25:20.381828',1004,1006,'Oi'),(72,'  Transporte criado com Sucesso!','2020-06-26 14:30:10.145631',-1,1002,'Submissao do Transporte'),(73,'  Transporte criado com Sucesso!','2020-06-26 14:30:56.712846',-1,1002,'Submissao do Transporte');

INSERT INTO `utilizador_has_notificacao` VALUES (1004,46,84,0),(1005,47,85,1),(1006,48,86,0),(1006,63,101,0),(1006,64,102,0),(1006,65,103,0),(1006,66,104,0),(1007,67,105,0),(1006,68,106,0),(1010,69,107,0),(1010,70,108,0),(1006,71,109,1),(1004,71,110,1),(1002,72,111,0),(1002,73,112,0);