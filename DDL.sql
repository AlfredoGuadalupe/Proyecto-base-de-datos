drop table sucursal cascade constraint;
drop table sucodo cascade constraint;
drop table odontologo cascade constraint;
drop table succon cascade constraint;
drop table equipamiento cascade constraint;
drop table afiliado  cascade constraint;
drop table telefonoaf cascade constraint;
drop table grupal cascade constraint;
drop table histclinica cascade constraint;
drop table tratamiento cascade constraint;
drop table realiza cascade constraint;

create table odontologo(
cedulaOdo number(20),
nomOd varchar(18) not null,
apPatOd varchar(18) not null,
apMatOd varchar(18),
especialidad varchar(18) not null,
constraint PK_odonto primary key(cedulaOdo));

create table sucursal(
nombreSuc varchar(18),
ciudadSuc varchar(18) not null,
calleSuc varchar(18) not null,
numeroSuc number(4) not null,
constraint PK_suc primary key(nombreSuc));

create table sucOdo(
nombreSuc varchar(18),
cedulaOdo number(20),
horarioAte varchar2(30) not null,
constraint FK_suc foreign key(nombreSuc)
references sucursal(nombreSuc) on delete cascade,
constraint FK_odo foreign key(cedulaOdo)
references odontologo(cedulaOdo) on delete cascade,
constraint PK_sucOdo primary key(nombreSuc,cedulaOdo));

create table sucCon(
nombreSuc varchar(18),
numCons number(4),
constraint FK_sucOdo foreign key(nombreSuc)
references sucursal(nombreSuc) on delete cascade,
constraint PK_sucCon primary key(nombreSuc,numCons));

create table equipamiento(
numSerie number(10),
tipoEq varchar(18) not null,
fechaMant date default sysdate not null,
nombreSuc varchar(18),
numCons number(4),
constraint PK_equipamiento primary key(numSerie),
constraint FK_equi_nomSuc foreign key(nombreSuc,numCons)
references sucCon(nombreSuc,numCons) on delete set null);

create table afiliado(
cedulaIde number(20),
nomAf varchar(18) not null,
apPatAf varchar(18) not null,
apMatAf varchar(18),
nombreSuc varchar(18),
cedulaOdo number(20),
constraint PK_afiliado primary key(cedulaIde),
constraint FK_afi_sucodo foreign key(nombreSuc,cedulaOdo)
references sucOdo(nombreSuc,cedulaOdo) on delete set null);

create table telefonoAf(
cedulaIde number(20),
telefono number(10),
constraint FK_afi_tele foreign key(cedulaIde)
references afiliado(cedulaIde) on delete cascade,
constraint pk_telefonoAf primary key(cedulaIde,telefono));

create table grupal(
cedulaIde number(20),
nombreConv varchar(18) not null,
porcReb number(4,2) default 0 not null,
constraint fk_grup_afi foreign key(cedulaIde)
references afiliado(cedulaIde) on delete cascade,
constraint PK_grupal primary key(cedulaIde));

create table tratamiento(
abvNom varchar(18),
costo number(6) not null,
constraint pk_tratamiento primary key(abvNom));

create table histClinica(
cedulaIde number(20),
numConsulta number(3),
fechaCons date default sysdate not null,
nombreSuc varchar(18),
numCons number(4),
cedulaOdo number(20),
abvNom  varchar(18) not null,
finalizacion char(1) not null,
fechaIni date default sysdate not null,
constraint fk_histcl_afi foreign key(cedulaIde)
references afiliado(cedulaIde) on delete cascade,
constraint pk_historiaClinica primary key(cedulaIde,numConsulta),
constraint fk_histcl_sucodo foreign key(nombreSuc,numCons)
references succon (nombreSuc,numCons) on delete set null,
constraint fk_histcl_odo foreign key(cedulaOdo)
references odontologo(cedulaOdo) on delete set null,
constraint fk_histcl_trat foreign key(abvNom)
references tratamiento(abvNom) on delete set null,
constraint CkFin CHECK (finalizacion IN ('S','N')));

create table realiza(
cedulaOdo number(20),
abvNom varchar(18),
constraint fk_rea_odo foreign key(cedulaOdo)
references odontologo(cedulaOdo) on delete cascade,
constraint fk_rea_trat foreign key(abvNom)
references tratamiento(abvNom) on delete cascade,
constraint pk_realiza primary key(cedulaOdo,abvNom));

desc sucursal;
desc sucodo;
desc odontologo;
desc succon;
desc equipamiento;
desc afiliado;
desc telefonoaf;
desc grupal;
desc histclinica;
desc tratamiento;
desc realiza;