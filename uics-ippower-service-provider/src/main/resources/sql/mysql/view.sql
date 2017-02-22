create or replace view target_view
AS
select Dp_index as id,
    case  when LOCATE('envihumi',dp_paramname)=1 then 'HUMIDITY'
          when LOCATE('envitemp',dp_paramname)=1 then 'TEMPERATURE'
    END as target_type,

    dp_paramdesc as target_name,

    case  when LOCATE('envihumi',dp_paramname)=1 then 'Room_humiture'
    when LOCATE('envitemp',dp_paramname)=1 then 'Room_humiture'
    END as device_type,

    pdi_name as device_name, pdi_ip as device_ip,pdi_index,dt_rtdata_table,dp_paramname

  from
    t_prideviceinfo di ,
    t_devicetype dt ,
    t_deviceparam dp

  where
    di.dpt_id = dt.dt_index
    and
    dt.dt_typeid=dp.dt_typeid
    ;


create  OR REPLACE view v_element
AS
select id, CONCAT(target_type , '-' , device_ip,'-',device_type,'-',dp_paramname) as target_id, target_type, target_name,device_ip,device_name,device_type,CONCAT(device_ip , "-" , device_type, '-', dp_paramname) as device_id,dt_rtdata_table,dp_paramname
from target_view;




