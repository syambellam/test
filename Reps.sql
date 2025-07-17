--for backup
 select * into [SalesReps].[dbo].[Tax_Rep2_20241108] from [SalesReps].[dbo].[Tax_Rep2]
  select * into [SalesReps].[dbo].[XRefRepToRegion_20240119] from [SalesReps].[dbo].[XRefRepToRegion]
   select * into [SalesReps].[dbo].[Reps_20231214] from[SalesReps].[dbo].[Reps]


    
  
  --REP PROCEDURE
  
  --Allocation of Rep Numbers
  select * from openquery(dras400,'select	* from bpcsffg.ssm where ssal >9000') --reps 9065--canada Reps 10692

  select * from openquery(dras400,'select	* from bpcsffg.avm where vendor between 700 and 1000') --vendors avail from 9038/4000


   --New Reps
      SELECT * FROM [SalesReps].[dbo].[XRefRepToRegion] where REP_NO IN (9101,9102) order by Rep_NO --Rep_name like 'Port%'--REP_NO in(9039,9043)--

      SELECT DISTINCT Rep_Type FROM [SalesReps].[dbo].[XRefRepToRegion] where REP_NO in (9035 ) order by REP_NO--BETWEEN 9020 AND 9035--Rep_name like 'Port%'--
	  
   --update [SalesReps].[dbo].[XRefRepToRegion] set Rep_Type='ASC' where Rep_No in (9064)

   --update [SalesReps].[dbo].[XRefRepToRegion] set ACTIVE=0 where REP_NO in(111)

    --update [SalesReps].[dbo].[XRefRepToRegion] set REP_NAME='NA BRYAN PETERSON 9015' where REP_NO in (9015)
     
	--update [SalesReps].[dbo].[XRefRepToRegion] set CITY='PEACHTREE CORNERS',STATE='GA' where REP_NO in (9102)

   --update [SalesReps].[dbo].[XRefRepToRegion] set GSMInt=NULL , GSMExt=NULL,GSMIntUserName=NULL,GSMExtUserName=NULL where REP_NO in(9039)

  --insert into [SalesReps].[dbo].[XRefRepToRegion](Rep_NO,ACTIVE,REP_NAME,CITY,STATE,REP_TYPE)--,GSM_REGION_Int,GSM_Region_Ext) 
  --values('9060','1','CS LA SALES 9060','LEBANON','NJ','CS FACILITY SALES')--,'WEST','WEST') 
   
  --insert into [SalesReps].[dbo].[XRefRepToRegion](Rep_NO,ACTIVE,REP_NAME,CITY,STATE,GSM_REGION_Int,GSM_Region_Ext) values('9065','1','ASK PRODUCT SOLUTIONS','LAS VEGAS','NV','WEST','WEST')
   
   --delete from [SalesReps].[dbo].[XRefRepToRegion] where REP_NO = '9060'


   --Rep Contacts
		select * from [SalesReps].[dbo].[RepInfo] where RepNo in (9005,133) --and RepInfoPK in(1030,1031,1077)

	--insert into [SalesReps].[dbo].[RepInfo] (RepNo,RepName,Title,isActive,DateCreated,Email,CellPhone)
	--values('133','Shannon Sieckert','IPS Sales ',1,getDate(),'shannon@mcqsf.com',null)

	--update [SalesReps].[dbo].[RepInfo] set IsActive=0,DateDeactivated=getDate() where RepInfoPK in (1052,1053)
	--Title='Director of Arch Sales' where RepInfoPK in (684,685)

	--update [SalesReps].[dbo].[RepInfo] set Email='jstarkweather@c-sgroup.com' where RepInfoPK in (2104)

	--update [SalesReps].[dbo].[RepInfo] set Isactive=0 , Datedeactivated=getdate() where RepInfoPK=1063

	--update [SalesReps].[dbo].[RepInfo] set CellPhone='636-349-1645'  where RepInfoPK in (1018)


	--Rep Address
 select * from [SalesReps].[dbo].[RepList] where RepNo in (9101,9102) order by RepNo -- BETWEEN 9035 AND 9045--

 --UPDATE [SalesReps].[dbo].[RepList] set [Company Name]='NA BRYAN PETERSON 9015' where RepNo IN (9015)

 --UPDATE [SalesReps].[dbo].[RepList] set Address1='Suite 115',Address2='3000 Northwoods Parkway',City='Peachtree Corners',zipcode='30071' where REPNO in (9101)

 --insert into [SalesReps].[dbo].[RepList](RepNo,[Company Name],Address2,City,state,Zipcode)--,[Primary Phone])
 --values('9064','CS LAURA AVINA 9064','3 Werner Way','Lebanon','NJ','08833')--,'480-528-8645')

 -- insert into [SalesReps].[dbo].[RepList] (RepNo,[Company Name],Address2,City,state,Zipcode,[Primary Phone])
 --values('9065','ASK PRODUCT SOLUTIONS','7929 Lakepoint Circle','Las Vegas','NV ','89128','702-308-8058')




 --Foundation page
  select * from [SalesReps].[dbo].[Reps] where REPNO in (9101,9102) --BETWEEN 9030 AND 9045 --
 
 --insert into [SalesReps].[dbo].[Reps](RepNo,Name,Add2,City,state,Zip,CountryCode,active,type)--,Region)
 --values('9060','CS LA SALES 9060','3 WERNER WAY','LEBANON','NJ','08833','US',1,'C/S REP')--,'WEST')  

 -- insert into [SalesReps].[dbo].[Reps](RepNo,Name,Add2,City,state,Zip,CountryCode,active,REGION)
 --values('9065','ASK PRODUCT SOLUTIONS','7929 LAKEPOINT CIRCLE','LAS VEGAS','NV','89128','US',1,'WEST') 
 
  --UPDATE [SalesReps].[dbo].[Reps] set Name='NA BRYAN PETERSON 9015' where REPNO in (9015)

 --update  [SalesReps].[dbo].[Reps] set active=0 where RepNo in(296)

 --update [SalesReps].[dbo].[Reps] set Email='sfloridasales@c-sgroup.com' where RepNo in (110)

  --update  [SalesReps].[dbo].[Reps] set Phone='702-308-8058' where RepNo in (9065)
 
 --UPDATE [SalesReps].[dbo].[Reps] set Add1='SUITE 115',Add2='3000 NORTHWOODS PARKWAY',City='PEACHTREE CORNERS',zip='30071',CountryCode='US' where RepNo IN (9101)	

  --UPDATE [SalesReps].[dbo].[Reps] set Phone='206-472-0354' where RepNo IN (9040,9039)

 --UPDATE [SalesReps].[dbo].[Reps] set  type='SSM' where REPNO in (9061,9062,9063)



 --511 OAC Reps table 
   select * from [LEBHQ-SQL411].[SalesReps].[dbo].[Reps_SalesChannel]  where RepNo  in (9101,9102) --between 9035 and 9045 --order by RepNo--in(9030)--

   --SSM,HA,FS
-- insert into [LEBHQ-SQL411].[SalesReps].[dbo].[Reps_SalesChannel] (RepNo,RepName,Address2,City,State,PostalCode,CountryCode,isActive,RepType,SalesChannel)--,GSMRegion)
--values('9064','CS LAURA AVINA 9064','3 WERNER WAY','LEBANON','NJ','08833','US','1','HA','111101')--,'WEST')


-- insert into [LEBHQ-SQL411].[SalesReps].[dbo].[Reps_SalesChannel] (RepNo,RepName,Address2,City,State,PostalCode,CountryCode,isActive,RepType,SalesChannel,GSMRegion)
--values('9065','ASK PRODUCT SOLUTIONS','7929 LAKEPOINT CIRCLE','LAS VEGAS','NV','89128','US','1','US','111101','WEST')


--CA Reps
--insert into [LEBHQ-SQL411].[SalesReps].[dbo].[Reps_SalesChannel] (RepNo,RepName,Address1,Address2,City,State,PostalCode,CountryCode,SalesChannel,isActive,RepType)
--values('10639','RAMI FARAH - NW ONTARIO','SUITE 102','2240 ARGENTIA ROAD','MISSISSAUGA','ON','L5N 2X7','CA','111108','1','CA')

  --UPDATE [LEBHQ-SQL411].[SalesReps].[dbo].[Reps_SalesChannel]  set RepName='NA BRYAN PETERSON 9015' where REPNO in (9015)

  --update [LEBHQ-SQL411].[SalesReps].[dbo].[Reps_SalesChannel]  set RepType='SSM' where RepNo in (9061,9062,9063)

--UPDATE [LEBHQ-SQL411].[SalesReps].[dbo].[Reps_SalesChannel]  set isActive=0 where RepNo in (10620)

 --UPDATE [LEBHQ-SQL411].[SalesReps].[dbo].[Reps_SalesChannel]  set Email='amy@wmbakerco.com' where RepNo in (361)

 --UPDATE [LEBHQ-SQL411].[SalesReps].[dbo].[Reps_SalesChannel]  set GSMRegion='NR' where RepNo IN (9013)

 --UPDATE [LEBHQ-SQL411].[SalesReps].[dbo].[Reps_SalesChannel]   set Address1='SUITE 115',Address2='3000 NORTHWOODS PARKWAY',City='PEACHTREE CORNERS',PostalCode='30071' where REPNO in (9101) 
 
 select * from [LEBHQ-SQL411].[SalesReps].[dbo].[Reps_SalesChannel]  where RepNo > 10000 order by RepNo--BETWEEN 9021 AND 9025     
 
   SELECT REP_NO, repno, ACTIVE,isActive FROM [SalesReps].[dbo].[XRefRepToRegion]
  inner join [LEBHQ-SQL411].[SalesReps].[dbo].[Reps_SalesChannel]  on Rep_no = repno and ACTIVE !=isActive
  order by Repno
 


 --Details of Rep

 select distinct IWPCSRep,IWPDECORep,EFSCSRep,EFSDECORep,TPGRep,PRKGEJCRep,LVRRep,GRLRep,ExploRep,GCCSRep,
 GCDECORep,ADSCSRep,ADSDECORep,SUNRep,ALVCSRep,ALVDECORep,NARep,FSRep from [SalesReps].[dbo].[Tax_Rep2] 
 where PRKGEJCRep=111  --378,805,190,9077

  --update [SalesReps].[dbo].[Tax_Rep2] set FSRep=9060 where FSRep=111
 
select distinct  TPGREp,TPGRepContact,TPGCustServ,PRKGEJCCustServ,PRKGEJCRepContact from [SalesReps].[dbo].[Tax_Rep2] where TPGRep=110 --LVRRepContact,GRLRepContact,ExploRepConatc,
--update [SalesReps].[dbo].[Tax_Rep2] set TPGRepContact='Aldo Escobar',PRKGEJCRepCOntact='Aldo Escobar' where TPGRep=110

 select top 10 *  from [SalesReps].[dbo].[Tax_Rep2] where zip in (85388 ,85387)
 --update [SalesReps].[dbo].[Tax_Rep2] set Taxcode='71441' where zip =71441


 select distinct EFSCSRep,EFSCSCustServ,EFSCSRepContact,EFSDECOCustServ,EFSDECORepContact,EFSDECORep from [SalesReps].[dbo].[Tax_Rep2] where EFSCSRep in (9075,363)-- EFSCSRep in (362)
 --update [SalesReps].[dbo].[Tax_Rep2] set EFSCSRepContact='Aldo Escobar',EFSDECORepContact='Aldo Escobar' where EFSCSRep in (110)

  select distinct GCCSRep,GCCSCustServ,GCCSRepContact,GCDECOCustServ,GCDECORepContact,GCDECORep from [SalesReps].[dbo].[Tax_Rep2] where GCCSRep in (110)
 --update [SalesReps].[dbo].[Tax_Rep2] set GCCSRepContact='Aldo Escobar',GCDECORepContact='Aldo Escobar' where GCCSRep in (110)

  select distinct IWPCSRep,IWPCSCustServ,IWPCSRepContact,IWPDECOCustServ,IWPDECORepContact,IWPDECORep from [SalesReps].[dbo].[Tax_Rep2] where IWPCSRep in (110)
  --update [SalesReps].[dbo].[Tax_Rep2] set IWPCSRepContact='Aldo Escobar',IWPDECORepContact='Aldo Escobar' where IWPCSRep=110

select distinct ADSCSrep,ADSCSCustServ,ADSCSRepContact,ADSDECORep,ADSDECOCustServ,ADSDECORepContact from [SalesReps].[dbo].[Tax_Rep2] where ADSCSRep in (110)
--update [SalesReps].[dbo].[Tax_Rep2] set ADSCSRepContact='Aldo Escobar',ADSDECORepContact='Aldo Escobar' where ADSCSRep in (110)

  select *  from [SalesReps].[dbo].[Tax_Rep2] where EFSCSRep=363 --StateName='CALIFORNIA'

 --update [SalesReps].[dbo].[Tax_Rep2] set ExploRepContact='Reynolds Hillyer',SUNRepContact='Reynolds Hillyer' where ExploRep=365	
 
 select distinct IWPCSRepContact,IWPDECORepContact,EFSCSRepContact,EFSDECORepContact,TPGRepContact,PRKGEJCRepContact,LVRRepContact,GRLRepContact,
 ExploRepContact,APCRepContact,GCCSRepContact,GCDECORepContact,ADSCSRepContact,ADSDECORepContact,SLMRepContact,SUNRepContact,ALVCSRepContact,
 ALVDECORepContact,ElderRep,ElderRepCont from [SalesReps].[dbo].[Tax_Rep2] where IWPCSRep in (110)

   --update [SalesReps].[dbo].[Tax_Rep2] set ExploRepContact='Aldo Escobar'  where ExploRep in (110)

   select distinct zip,TerritoryName,CountyName,StateName,PRKGEJCRep,TPGRep from [SalesReps].[dbo].[Tax_Rep2] where CountyName = 'aransas' and StateName='TEXAS'--IWPCSRep in (9035)
   --update [SalesReps].[dbo].[Tax_Rep2] set PRKGEJCRep=9075,TPGRep=9075 where CountyName = 'aransas' and StateName='TEXAS'


  --Replaced Reps
  SELECT * FROM [SalesReps].[dbo].[XRefRepToRegion]  where REP_NO in(9039)
  
  --update [SalesReps].[dbo].[XRefRepToRegion] set [ACTIVE]=0 where REP_NO in (9032,9071)

  --update [SalesReps].[dbo].[XRefRepToRegion] set REP_NO=90599 where REP_NO=9059

   --insert [SalesReps].[dbo].[XRefRepToRegion]--write all the fields for selct top 1000 rows query
   --select [REP_NO]=9059,[ACTIVE]=1,[REP_NAME]='DENZEL NORTHWEST',[CITY]='MEDINA',[STATE]='WA' FROM [SalesReps].[dbo].[XRefRepToRegion] where REP_NO in(289)

   --delete from [SalesReps].[dbo].[XRefRepToRegion] where Rep_NO=90599
