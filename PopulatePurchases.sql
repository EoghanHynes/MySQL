drop procedure if exists PopulatePurchases;

delimiter //
create procedure PopulatePurchases(count int)
 begin
 
	declare i int default 0;
	declare model varchar(15);
    declare amnt int;
		
    
	while (i < count) do
		set model = ELT(FLOOR(1 + (RAND() * (18))), "Alienware A","Alienware B","Syber X","Syber P","Syber I","PS4","PS3","Xbox One",
													"Xbox 360","SteamVR","PlayStationVR","HoloLens","Oculus Rift","Maingear Drift","Alienware x51"
                                                    ,"Area 51","Inspiron","VAIO");
		set amnt = FLOOR(1 + (RAND() * (5)));
		call PurchaseProduct(model, amnt);
        set i = i+1;
	end while;
 end
//
delimiter ;

SET SQL_SAFE_UPDATES = 0;

call PopulatePurchases(2000);