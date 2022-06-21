/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de cr�ation :  01/06/2022 11:16:57                      */
/*==============================================================*/


drop table if exists Categorie;

drop table if exists Client;

drop table if exists Produit;

drop table if exists Reservation;

drop table if exists association2;

/*==============================================================*/
/* Table : Categorie                                            */
/*==============================================================*/
create table Categorie
(
   idCategorie          int not null,
   nomCategorie         varchar(254),
   primary key (idCategorie)
);

/*==============================================================*/
/* Table : Client                                               */
/*==============================================================*/
create table Client
(
   idClient             int not null,
   nomClient            varchar(254),
   telephoneClient      varchar(254),
   villeClient          varchar(254),
   emailClient          varchar(254),
   passwordClient       varchar(254),
   primary key (idClient)
);

/*==============================================================*/
/* Table : Produit                                              */
/*==============================================================*/
create table Produit
(
   idProduit            int not null,
   idCategorie          int not null,
   nomProduit           varchar(254),
   prixProduit          numeric(8,0),
   typeProduit          varchar(254),
   garantieProduit      varchar(254),
   primary key (idProduit)
);

/*==============================================================*/
/* Table : Reservation                                          */
/*==============================================================*/
create table Reservation
(
   codeReserv           varchar(254) not null,
   idClient             int not null,
   adresseLiv           varchar(254),
   dateCommande         datetime,
   modeReserv           varchar(254),
   teleReserv           varchar(254),
   primary key (codeReserv)
);

/*==============================================================*/
/* Table : association2                                         */
/*==============================================================*/
create table association2
(
   codeReserv           varchar(254) not null,
   idProduit            int not null,
   primary key (codeReserv, idProduit)
);

alter table Produit add constraint FK_association3 foreign key (idCategorie)
      references Categorie (idCategorie) on delete restrict on update restrict;

alter table Reservation add constraint FK_association1 foreign key (idClient)
      references Client (idClient) on delete restrict on update restrict;

alter table association2 add constraint FK_association2 foreign key (idProduit)
      references Produit (idProduit) on delete restrict on update restrict;

alter table association2 add constraint FK_association2 foreign key (codeReserv)
      references Reservation (codeReserv) on delete restrict on update restrict;

