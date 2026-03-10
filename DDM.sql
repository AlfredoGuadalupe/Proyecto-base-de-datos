INSERT INTO sucursal VALUES('Odontos','CDMX','La Negra',10);
INSERT INTO sucursal VALUES('Muelitas','Monterrey','Volcanes',101);
INSERT INTO sucursal VALUES('Dientitos','Guadalajara','Miguel Hidalgo',54);
INSERT INTO sucursal VALUES('Raton Perez','Pachuca','Tizimin',3567);
INSERT INTO sucursal VALUES('Rompe Muelas','CDMX','Hornos',12);

INSERT INTO odontologo VALUES(1234567890,'Jorge','Ramos','Perez','Ortodoncia');
INSERT INTO odontologo VALUES(987654321,'Juan','Gonzalez','Diaz','Endodoncia');
INSERT INTO odontologo VALUES(1234509876,'Raul','Perez','Perez','Implantologia');
INSERT INTO odontologo VALUES(1236547890,'Hector','Robles','Guzman','Periodoncia');
INSERT INTO odontologo VALUES(987612345,'Octavio','Hernandez','Rojas','Ortodoncia');

INSERT INTO SucOdo VALUES('Odontos',1234567890,'Lunes de 8:00 a 15:00');
INSERT INTO SucOdo VALUES('Muelitas',987654321,'Martes de 8:00 a 14:00');
INSERT INTO SucOdo VALUES('Dientitos',1234509876,'Miercoles de 9:00 a 17:00');
INSERT INTO SucOdo VALUES('Raton Perez',1236547890,'Jueves de 8:00 a 19:00');
INSERT INTO SucOdo VALUES('Rompe Muelas',987612345,'Sabado de 8:00 a 13:00');

INSERT INTO SucCon VALUES('Dientitos',50);
INSERT INTO SucCon VALUES('Muelitas',20);
INSERT INTO SucCon VALUES('Odontos',15);
INSERT INTO SucCon VALUES('Raton Perez',10);
INSERT INTO SucCon VALUES('Rompe Muelas',40);

INSERT INTO Equipamiento VALUES(1111111111,'Laser','12/05/18','Odontos',15);
INSERT INTO Equipamiento VALUES(2222222222,'Camilla','11/06/18','Muelitas',20);
INSERT INTO Equipamiento VALUES(3333333333,'Computadora','07/11/19','Dientitos',50);
INSERT INTO Equipamiento VALUES(4444444444,'Torno','01/05/16','Raton Perez',10);
INSERT INTO Equipamiento VALUES(5555555555,'Laser','10/09/21','Rompe Muelas',40);

INSERT INTO Afiliado VALUES(7234567890,'Sebastian','Perez','Rangel','Odontos',1234567890);
INSERT INTO Afiliado VALUES(7987654321,'Alejandro','Juarez','Conteras','Muelitas',987654321);
INSERT INTO Afiliado VALUES(7234509876,'Saul','Gomez','Mendez','Dientitos',1234509876);
INSERT INTO Afiliado VALUES(7236547890,'Alberto','Martinez','Martinez','Raton Perez',1236547890);
INSERT INTO Afiliado VALUES(7987612345,'Hugo','Obrador','Sanchez','Rompe Muelas',987612345);

INSERT INTO TelefonoAf VALUES(7234509876,3434433443);
INSERT INTO TelefonoAf VALUES(7234567890,2112122112);
INSERT INTO TelefonoAf VALUES(7236547890,5454544554);
INSERT INTO TelefonoAf VALUES(7987612345,6556565656);
INSERT INTO TelefonoAf VALUES(7987654321,3223233223);

INSERT INTO Grupal VALUES(7234567890,'Nueva Vida',10);
INSERT INTO Grupal VALUES(7987654321,'Llaneros',25);
INSERT INTO Grupal VALUES(7234509876,'Nestle',75);
INSERT INTO Grupal VALUES(7236547890,'Tec Monterrey',50.5);
INSERT INTO Grupal VALUES(7987612345,'UNAM',35);

INSERT INTO Tratamiento VALUES('BRKS',50000);
INSERT INTO Tratamiento VALUES('CORS',25000);
INSERT INTO Tratamiento VALUES('CIR',10000);
INSERT INTO Tratamiento VALUES('IMP',15000);
INSERT INTO Tratamiento VALUES('LIMP',18000);

INSERT INTO HistClinica VALUES(7234567890,1,'11/03/20','Odontos',15,1234567890,'BRKS','N','11/03/20');
INSERT INTO HistClinica VALUES(7987654321,2,'01/02/18','Muelitas',20,987654321,'CORS','N','27/12/17');
INSERT INTO HistClinica VALUES(7234509876,3,'03/07/12','Dientitos',50,1234509876,'CIR','S','01/01/12');
INSERT INTO HistClinica VALUES(7236547890,4,'17/12/22','Raton Perez',10,1236547890,'IMP','N','12/03/22');
INSERT INTO HistClinica VALUES(7987612345,5,'05/12/21','Rompe Muelas',40,987612345,'LIMP','S','06/04/21');

INSERT INTO Realiza VALUES(987612345,'LIMP');
INSERT INTO Realiza VALUES(987654321,'CIR');
INSERT INTO Realiza VALUES(1234509876,'IMP');
INSERT INTO Realiza VALUES(1234567890,'BRKS');
INSERT INTO Realiza VALUES(1236547890,'CORS');