use address
go
--for country
--getall exec sp_getall_country
create or alter proc sp_getall_country
as
begin
	select * from country
end
go

--getbyPK exec sp_get_country_byPK 1
create or alter proc sp_get_country_byPK
	@countryID int
as 
begin 
	select * from country where countryID = @countryID 
end
go

--insert exec sp_insert_country Russia
create or alter proc sp_insert_country
	@countryName varchar(25)
as
begin
	insert into country(countryName) values (@countryName)
end
go

--update exec sp_update_country_byPK 6, Nepal
create or alter proc sp_update_country_byPK
	@countryID int,
	@countryName varchar(25)
as
begin
	update country set countryName = @countryName
	where countryID = @countryID
end
go

--delete exec sp_delete_country_byPK 6
create or alter proc sp_delete_country_byPK
	@countryID int 
as
begin
	delete from country where countryID = @countryID 
end
go
-----------------------------------------------------------------------------------------------------------
--for state
--getall exec sp_getall_state
create or alter proc sp_getall_state
as
begin
	select * from state
end
go

--getbyPK exec sp_get_state_byPK 1
create or alter proc sp_get_state_byPK
	@stateID int
as 
begin 
	select * from state where stateID = @stateID 
end
go

--insert exec sp_insert_state Kerala, KE, 3
create or alter proc sp_insert_state
	@stateName varchar(25),
	@stateCode varchar(20),
	@countryID int
as
begin
	insert into state (stateName, stateCode, countryID) values (@stateName, @stateCode, @countryID)
end
go

--update exec sp_update_state_byPK 6, Haryana, HAR, 4
create or alter proc sp_update_state_byPK
	@stateID int,
	@stateName varchar(25),
	@stateCode varchar(20),
	@countryID int
as
begin
	update state set stateName = @stateName, stateCode = @stateCode, countryID = @countryID
	where stateID = @stateID
end
go

--delete exec sp_delete_state_byPK 6
create or alter proc sp_delete_state_byPK
	@stateID int
as
begin
	delete from state where stateID = @stateID
end
go
-----------------------------------------------------------------------------------------------------------
--for country
--getall exec sp_getall_city
create or alter proc sp_getall_city
as
begin
	select * from city
end
go

--getbyPK exec sp_get_city_byPK 1
create or alter proc sp_get_city_byPK
	@cityID int
as 
begin 
	select * from city where cityID = @cityID 
end
go

--insert exec sp_insert_city rajkot, 100806, 4
create or alter proc sp_insert_city
	@cityName varchar(25),
	@pinCode int,
	@stateID int
as
begin
	insert into city (cityName, pinCode, stateID) values (@cityName, @pinCode, @stateID)
end
go

--update exec sp_update_city_byPK 6, Rajkot, 60019, 4
create or alter proc sp_update_city_byPK
	@cityID int,
	@cityName varchar(25),
	@pinCode int,
	@stateID int
as
begin
	update city set cityName = @cityName, pinCode = @pinCode, stateID = @stateID
	where cityID = @cityID
end
go

--delete exec sp_delete_city_byPK 7
create or alter proc sp_delete_city_byPK
	@cityID int
as
begin
	delete from city where cityID = @cityID
end
go