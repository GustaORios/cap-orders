# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | Fiori Elements APP
`db/` | Database with entities
`srv/` | Expose entities in a service and custom handlers
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch` 
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/data-model.cds](db/data-model.cds).

Mock data :
- Create a folder named 'data' inside 'db' folder;
- Create a .csv file named "my.orders-Orders.csv" with content:
OrderID;RequiredDate;ShippedDate;Freight;ShipName;ShipCountry;OrderStatus
10248;1996-08-01T00:00:00Z;1996-07-16T00:00:00Z;32.38;Vins et alcools Chevalier;França;Finalizado
10249;1996-08-16T00:00:00Z;1996-07-10T00:00:00Z;11.61;Toms Spezialitäten;Alemanha;Em trânsito
10250;1996-08-05T00:00:00Z;1996-07-12T00:00:00Z;65.83;Hanari Carnes;Brasil;Finalizado
10251;1996-08-05T00:00:00Z;1996-07-15T00:00:00Z;41.34;Victuailles en stock;França;Finalizado
10252;1996-08-06T00:00:00Z;1996-07-11T00:00:00Z;51.3;Suprêmes délices;Belgica;Cancelado
10253;1996-07-24T00:00:00Z;1996-07-16T00:00:00Z;58.17;Hanari Carnes;Brasil;Aprovação pendente
10254;1996-08-08T00:00:00Z;1996-07-23T00:00:00Z;22.98;Chop-suey Chinese;Suiça;Cancelado
10255;1996-08-09T00:00:00Z;1996-07-15T00:00:00Z;148.33;Richter Supermarkt;Suiça;Em trânsito
10256;1996-08-12T00:00:00Z;1996-07-17T00:00:00Z;13.97;Wellington Importadora;Brasil;Em trânsito
10257;1996-08-13T00:00:00Z;1996-07-22T00:00:00Z;81.91;HILARION-Abastos;Venezuela;Aprovação pendente
10258;1996-08-14T00:00:00Z;1996-07-23T00:00:00Z;140.51;Ernst Handel;Austria; Finalizado
10259;1996-08-15T00:00:00Z;1996-07-25T00:00:00Z;3.25;Centro comercial Moctezuma;Mexico;Finalizado
10260;1996-08-16T00:00:00Z;1996-07-29T00:00:00Z;55.09;Ottilies Käseladen;Alemanha;Em trânsito

- Create a .csv file named "my.orders-OrdersDetails.csv" with content:
OrderID;ProductID;UnitPrice;Quantity;Discount
10248;11;14;12;0
10248;42;9.8;10;0
10248;72;34.8;5;0
10249;14;18.6;9;0
10249;51;42.4;40;0
10250;41;7.7;10;0
10250;51;42.4;35;0.15
10250;65;16.8;15;0.15
10251;22;16.8;6;0.05
10251;57;15.6;15;0.05
10251;65;16.8;20;0
10252;20;64.8;40;0.05
10252;33;2;25;0.05
10252;60;27.2;40;0
10253;31;10;20;0
10253;39;14.4;42;0
10253;49;16;40;0
10254;24;3.6;15;0.15
10254;55;19.2;21;0.15
10254;74;8;21;0
10255;2;15.2;20;0
10255;16;13.9;35;0
10255;36;15.2;25;0
10255;59;44;30;0
10256;53;26.2;15;0
10256;77;10.4;12;0
10257;27;35.1;25;0
10257;39;14.4;6;0
10257;77;10.4;15;0
10258;2;15.2;50;0.2
10258;5;17;65;0.2
10258;32;25.6;6;0.2
10259;21;8;10;0
10259;37;20.8;1;0
10260;41;7.7;16;0.25
10260;57;15.6;50;0
10260;62;39.4;15;0.25
10260;70;12;21;0.25

- Create a .csv file named "my.orders-OrdersDetails.csv" with content:
ProductID;ProductName;QuantityPerUnit;UnitPrice;UnitsInStock;UnitsOnOrder;Discontinued
1;Chai;10 boxes x 20 bags;18;39;0;False
2;Chang;24 - 12 oz bottles;19;17;40;False
3;Aniseed Syrup;12 - 550 ml bottles;10;13;70;False
4;Chef Anton's Cajun Seasoning;48 - 6 oz jars;22;53;0;False
5;Chef Anton's Gumbo Mix;36 boxes;21.35;0;0;True
6;Grandma's Boysenberry Spread;12 - 8 oz jars;25;120;0;False
7;Uncle Bob's Organic Dried Pears;12 - 1 lb pkgs.;30;15;0;False
8;Northwoods Cranberry Sauce;12 - 12 oz jars;40;6;0;False
9;Mishi Kobe Niku;18 - 500 g pkgs.;97;29;0;True
10;Ikura;12 - 200 ml jars;31;31;0;False
11;Queso Cabrales;1 kg pkg.;21;22;30;False
12;Queso Manchego La Pastora;10 - 500 g pkgs.;38;86;0;False
13;Konbu;2 kg box;6;24;0;False
14;Tofu;40 - 100 g pkgs.;23.25;35;0;False
15;Genen Shouyu;24 - 250 ml bottles;15.5;39;0;False
16;Pavlova;32 - 500 g boxes;17.45;29;0;False
17;Alice Mutton;20 - 1 kg tins;39;0;0;True
18;Carnarvon Tigers;16 kg pkg.;62.5;42;0;False
19;Teatime Chocolate Biscuits;10 boxes x 12 pieces;9.2;25;0;False
20;Sir Rodney's Marmalade;30 gift boxes;81;40;0;False
21;Sir Rodney's Scones;24 pkgs. x 4 pieces;10;3;40;False
22;Gustaf's Knäckebröd;24 - 500 g pkgs.;21;104;0;False
23;Tunnbröd;12 - 250 g pkgs.;9;61;0;False
24;Guaraná Fantástica;12 - 355 ml cans;4.5;20;0;True
25;NuNuCa Nuß-Nougat-Creme;20 - 450 g glasses;14;76;0;False
26;Gumbär Gummibärchen;100 - 250 g bags;31.23;15;0;False
27;Schoggi Schokolade;100 - 100 g pieces;43.9;49;0;False
28;Rössle Sauerkraut;25 - 825 g cans;45.6;26;0;True
29;Thüringer Rostbratwurst;50 bags x 30 sausgs.;123.79;0;0;True
30;Nord-Ost Matjeshering;10 - 200 g glasses;25.89;10;0;False
31;Gorgonzola Telino;12 - 100 g pkgs;12.5;0;70;False
32;Mascarpone Fabioli;24 - 200 g pkgs.;32;9;40;False
33;Geitost;500 g;2.5;112;0;False
34;Sasquatch Ale;24 - 12 oz bottles;14;111;0;False
35;Steeleye Stout;24 - 12 oz bottles;18;20;0;False
36;Inlagd Sill;24 - 250 g  jars;19;112;0;False
37;Gravad lax;12 - 500 g pkgs.;26;11;50;False
38;Côte de Blaye;12 - 75 cl bottles;263.5;17;0;False
39;Chartreuse verte;750 cc per bottle;18;69;0;False
40;Boston Crab Meat;24 - 4 oz tins;18.4;123;0;False
41;Jack's New England Clam Chowder;12 - 12 oz cans;9.65;85;0;False
42;Singaporean Hokkien Fried Mee;32 - 1 kg pkgs.;14;26;0;True
43;Ipoh Coffee;16 - 500 g tins;46;17;10;False
44;Gula Malacca;20 - 2 kg bags;19.45;27;0;False
45;Rogede sild;1k pkg.;9.5;5;70;False
46;Spegesild;4 - 450 g glasses;12;95;0;False
47;Zaanse koeken;10 - 4 oz boxes;9.5;36;0;False
48;Chocolade;10 pkgs.;12.75;15;70;False
49;Maxilaku;24 - 50 g pkgs.;20;10;60;False
50;Valkoinen suklaa;12 - 100 g bars;16.25;65;0;False
51;Manjimup Dried Apples;50 - 300 g pkgs.;53;20;0;False
52;Filo Mix;16 - 2 kg boxes;7;38;0;False
53;Perth Pasties;48 pieces;32.8;0;0;True
54;Tourtière;16 pies;7.45;21;0;False
55;Pâté chinois;24 boxes x 2 pies;24;115;0;False
56;Gnocchi di nonna Alice;24 - 250 g pkgs.;38;21;10;False
57;Ravioli Angelo;24 - 250 g pkgs.;19.5;36;0;False
58;Escargots de Bourgogne;24 pieces;13.25;62;0;False
59;Raclette Courdavault;5 kg pkg.;55;79;0;False
60;Camembert Pierrot;15 - 300 g rounds;34;19;0;False
61;Sirop d'érable;24 - 500 ml bottles;28.5;113;0;False
62;Tarte au sucre;48 pies;49.3;17;0;False
63;Vegie-spread;15 - 625 g jars;43.9;24;0;False
64;Wimmers gute Semmelknödel;20 bags x 4 pieces;33.25;22;80;False
65;Louisiana Fiery Hot Pepper Sauce;32 - 8 oz bottles;21.05;76;0;False
66;Louisiana Hot Spiced Okra;24 - 8 oz jars;17;4;100;False
67;Laughing Lumberjack Lager;24 - 12 oz bottles;14;52;0;False
68;Scottish Longbreads;10 boxes x 8 pieces;12.5;6;10;False
69;Gudbrandsdalsost;10 kg pkg.;36;26;0;False
70;Outback Lager;24 - 355 ml bottles;15;15;10;False
71;Flotemysost;10 - 500 g pkgs.;21.5;26;0;False
72;Mozzarella di Giovanni;24 - 200 g pkgs.;34.8;14;0;False
73;Röd Kaviar;24 - 150 g jars;15;101;0;False
74;Longlife Tofu;5 kg pkg.;10;4;20;False
75;Rhönbräu Klosterbier;24 - 0.5 l bottles;7.75;125;0;False
76;Lakkalikööri;500 ml;18;57;0;False
77;Original Frankfurter grüne Soße;12 boxes;13;32;0;False
## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.
