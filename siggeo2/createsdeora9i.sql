prompt * CREATESDEORA9i.SQL script                                  *
prompt *                                                            *
prompt * Purpose:                                                   *
prompt *                                                            *
prompt *       To create the SDE tablespace, the SDE Oracle user and*
prompt *       grant privileges to the SDE user                     *
prompt * NOTE: Please log in as system/<password> and then run this *
prompt *       this script.                                         *
prompt *                                                            *
prompt * For Ex: >>sqlplus system/manager                           *
prompt *         >>@createsdeora9i.sql                              *
prompt *                                                            *
prompt * Variables that need to be replaced:                        *
prompt * 1. SYS_PWD -- Oracle SYS user password                     *
prompt * 2. LOCATION -- Datafile path for SDE tablespace            *
prompt *                                                            *
prompt *                                                            *
prompt ************************************************************** 
 
rem /****************************************************************
rem *
rem *  
rem *
rem *:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
rem *
rem *   Copyright 1992-2003, Environmental Systems Research Institute, Inc.
rem *   All rights reserved.  This software is provided with RESTRICTED AND
rem *   LIMITED RIGHTS.  Use, duplication, or disclosure by the Government
rem *   is subject to restrictions as set forth in FAR 52.227-14 (JUN 1987)
rem *   Alternate III (g) (3) (JUN 1987), FAR 52.227-19 (JUN 1987), or
rem *   DFARS 252.227-7013 (c) (1) (ii) (OCT 1988), as applicable.
rem *   Contractor/Manufacturer is Environmental Systems Research Institute,
rem *   Inc. (ESRI), 380 New York Street., Redlands, California 92373.
rem *
rem *
rem *:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
rem ***********************************************************************

prompt * Log in as the SYS user in Oracle
connect sys/SYS_PWD as sysdba

prompt * Granting of permissions by the SYS user in Oracle, on two packages 
prompt * to the public role.

grant execute on dbms_pipe to public;
grant execute on dbms_lock to public;

prompt * * * * * * * * * * * * * * *
prompt * ArcSDE NEW INSTALLATION   *
prompt * * * * * * * * * * * * * * *

prompt * Connect as system/<password> to create the sde
prompt * tablespace and user.

connect system/manager  

prompt * Create the sde tablespace.
prompt * Before you run this script update the the datafile pathname.

create tablespace sde 
       datafile '/LOCATION/sde.dbf' size 140M
       default storage (initial 16384 
                        next 16384
                        minextents 1 
                        maxextents 200
                        pctincrease 0);

prompt * Create the sde user
prompt * The password for the sde user is set to "sde". You may
prompt * change this if you wish. 

create user sde identified by sde
default tablespace sde temporary tablespace temp;

prompt * Granting the required priviliges to the sde user.

grant connect, resource to sde;
grant create session to sde;
grant create table to sde;
grant create procedure to sde;
grant create sequence to sde;
grant create trigger to sde;
grant unlimited tablespace to sde;

prompt * * * * * * * * * * *
prompt * ArcSDE UPGRADE    *
prompt * * * * * * * * * * *

prompt * Connect as system/<password> to grant
prompt * permissions.
connect system/manager;

prompt * If upgrading please remove the remark statements.
prompt * Granting the required priviliges to the sde user.

rem grant create session to sde;
rem grant select any table to sde;
rem grant create any sequence to sde;
rem grant create any procedure to sde;
rem grant execute any procedure to sde;
rem grant drop any procedure to sde;
rem grant select any sequence to sde;
rem grant create any view to sde;
rem grant drop any view to sde;
rem grant create any trigger to sde;
rem grant drop any sequence to sde;

exit;
