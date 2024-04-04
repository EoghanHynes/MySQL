insert into Suppliers (`ID`, `name`, `address`, `email`, `AmntOwed`) values('1001','Steam','Capel St, Dublin','steam@steam.com','0');
insert into Suppliers (`ID`, `name`, `address`, `email`, `AmntOwed`) values('1002','Sony','City West, Dublin','sony@sony.ie','0');
insert into Suppliers (`ID`, `name`, `address`, `email`, `AmntOwed`) values('1003','Microsoft','Sandyford, Dublin','microsoft@msn.com','0');
insert into Suppliers (`ID`, `name`, `address`, `email`, `AmntOwed`) values('1004','Facebook','Grand Canal Square, Dublin','support@book.net','.0');
insert into Suppliers (`ID`, `name`, `address`, `email`, `AmntOwed`) values('1005','Dell','CheryWood Park, Dublin','admin@dell.com','0');

insert into Customers(`ID`, `name`, `address`, `email`, `AmntDue`) values('1001','Game Stop','16, Henry Street, Dublin','custcare@gamestop.com','0');
insert into Customers(`ID`, `name`, `address`, `email`, `AmntDue`) values('1002','GameXchange','73, Talbot St, Dublin','gamexchange@msn.ie','0');
insert into Customers(`ID`, `name`, `address`, `email`, `AmntDue`) values('1003','Garry’s Game Loft','High Street, Dublin','ggl@yahoo.net','0');
insert into Customers(`ID`, `name`, `address`, `email`, `AmntDue`) values('1004','Toy World','Dundrum Centre, Dublin','ToyWorld@gmail.com','0');
insert into Customers(`ID`, `name`, `address`, `email`, `AmntDue`) values('1005','Games Ltd','Naas Road, Dublin','contact@gamesltd.ie','0');
insert into Customers(`ID`, `name`, `address`, `email`, `AmntDue`) values('1006','Toy Land','Naas Road, Dublin','admin@toyland.ie','0');
insert into Customers(`ID`, `name`, `address`, `email`, `AmntDue`) values('1007','Larry’s Game Lab','Blanchardstown, Dublin','Lgl@gmail.com','0');
insert into Customers(`ID`, `name`, `address`, `email`, `AmntDue`) values('1008','Best Buy','23, Store St, Dublin','support@bestbuy.com','0');

insert into Products(`make`,`model`,`type`,`price`) values('Steam','Alienware A','Console','599.00');
insert into Products(`make`,`model`,`type`,`price`) values('Steam','Alienware B','Console','499.00');
insert into Products(`make`,`model`,`type`,`price`) values('Steam','Maingear Drift','PC','1099.99');
insert into Products(`make`,`model`,`type`,`price`) values('Steam','Syber X','Console','499.00');
insert into Products(`make`,`model`,`type`,`price`) values('Steam','Syber P','Console','399.00');
insert into Products(`make`,`model`,`type`,`price`) values('Steam','Syber I','Console','275.00');
insert into Products(`make`,`model`,`type`,`price`) values('Steam','SteamVR','VRHeadset','550.00');
insert into Products(`make`,`model`,`type`,`price`) values('Sony','PS4','Console','349.99');
insert into Products(`make`,`model`,`type`,`price`) values('Sony','PlayStationVR','VRHeadset','349.99');
insert into Products(`make`,`model`,`type`,`price`) values('Microsoft','Xbox One','Console','379.99');
insert into Products(`make`,`model`,`type`,`price`) values('Microsoft','Xbox 360','Console','249.99');
insert into Products(`make`,`model`,`type`,`price`) values('Microsoft','HoloLens','VRHeadset','3000.00');
insert into Products(`make`,`model`,`type`,`price`) values('Facebook','Oculus Rift','VRHeadset','600.00');
insert into Products(`make`,`model`,`type`,`price`) values('Dell','Alienware x51','PC','16489.00');
insert into Products(`make`,`model`,`type`,`price`) values('Dell','Area 51','PC','3398.99');
insert into Products(`make`,`model`,`type`,`price`) values('Dell','Inspiron','PC','1091.01');
insert into Products(`make`,`model`,`type`,`price`) values('Sony','VAIO','PC','900.00');
insert into Products(`make`,`model`,`type`,`price`) values('Sony','PS3','Console','250.00');

insert into Consoles(`model`,`mem`,`gpu`,`cpu`,`quantity`) values('Alienware B','4GB DDR','Asus','Intel Corei3','0');
insert into Consoles(`model`,`mem`,`gpu`,`cpu`,`quantity`) values('Alienware A','8GB DDR','Nvidia Geforce','Intel Corei7','0');
insert into Consoles(`model`,`mem`,`gpu`,`cpu`,`quantity`) values('Syber X','16GB DDR','Nvidia Gerforce 980','Intel Core i7','0');
insert into Consoles(`model`,`mem`,`gpu`,`cpu`,`quantity`) values('Syber P','8GB DDR','Nvidia Geforce 960','Intel Core i5','0');
insert into Consoles(`model`,`mem`,`gpu`,`cpu`,`quantity`) values('Syber I','4GB','Nvidia Geforce 750','Intel Corei3','0');
insert into Consoles(`model`,`mem`,`gpu`,`cpu`,`quantity`) values('Xbox One','8GB','AMD','D3D11','0');
insert into Consoles(`model`,`mem`,`gpu`,`cpu`,`quantity`) values('Xbox 360','526MB','ATI Xenos','ATI Xenon','0');
insert into Consoles(`model`,`mem`,`gpu`,`cpu`,`quantity`) values('PS3','525MB','Nvidia','AMD','0');
insert into Consoles(`model`,`mem`,`gpu`,`cpu`,`quantity`) values('PS4','8GB','Nvidia','Intel Corei7','0');

insert into VRHeadsets(`model`,`res`,`fov`,`refrate`,`quantity`) values('SteamVR','2160x1200','100','90Hz','0');
insert into VRHeadsets(`model`,`res`,`fov`,`refrate`,`quantity`) values('PlaystationVR','1080p','110','100Hz','0');
insert into VRHeadsets(`model`,`res`,`fov`,`refrate`,`quantity`) values('HoloLens','1080p','100','90Hz','0');
insert into VRHeadsets(`model`,`res`,`fov`,`refrate`,`quantity`) values('Oculus Rift','1080p','110','120Hz','0');

insert into PCs(`model`,`cpu`,`ram`,`mem`,`quantity`) values('Maingear Drift','Intel Corei7','16GB','1TB SSD','0');
insert into PCs(`model`,`cpu`,`ram`,`mem`,`quantity`) values('Alienware x51','Intel Corei7','16GB','1TB','0');
insert into PCs(`model`,`cpu`,`ram`,`mem`,`quantity`) values('Area 51','Intel Corei7','16GB','1TB','0');
insert into PCs(`model`,`cpu`,`ram`,`mem`,`quantity`) values('Inspiron','Intel Corei5','8GB','500GB','0');
insert into PCs(`model`,`cpu`,`ram`,`mem`,`quantity`) values('VAIO','Intel Corei3','4GB','300GB','0');

insert into ProductConsole(`make`,`model`) values('Steam','Alienware A');
insert into ProductConsole(`make`,`model`) values('Steam','Alienware B');
insert into ProductConsole(`make`,`model`) values('Steam','Syber X');
insert into ProductConsole(`make`,`model`) values('Steam','Syber P');
insert into ProductConsole(`make`,`model`) values('Steam','Syber I');
insert into ProductConsole(`make`,`model`) values('Sony','PS4');
insert into ProductConsole(`make`,`model`) values('Sony','PS3');
insert into ProductConsole(`make`,`model`) values('Microsoft','Xbox One');
insert into ProductConsole(`make`,`model`) values('Microsoft','Xbox 360');

insert into ProductHeadset(`make`,`model`) values('Steam','SteamVR');
insert into ProductHeadset(`make`,`model`) values('Sony','PlayStationVR');
insert into ProductHeadset(`make`,`model`) values('Microsoft','HoloLens');
insert into ProductHeadset(`make`,`model`) values('Facebook','Oculus Rift');

insert into ProductPC(`make`,`model`) values('Steam','Maingear Drift');
insert into ProductPC(`make`,`model`) values('Dell','Alienware x51');
insert into ProductPC(`make`,`model`) values('Dell','Area 51');
insert into ProductPC(`make`,`model`) values('Dell','Inspiron');
insert into ProductPC(`make`,`model`) values('Sony','VAIO');
