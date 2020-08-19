SELECT
  d.thingid,  mjd_r as MJD,
  p.modelMag_u as flux_u, p.modelMagErr_u as flux_err_u,
  p.modelMag_g as flux_g, p.modelMagErr_g as flux_err_g,
  p.modelMag_r as flux_r, p.modelMagErr_r as flux_err_r,
  p.modelMag_i as flux_i, p.modelMagErr_i as flux_err_i,
  p.modelMag_z as flux_z, p.modelMagErr_z as flux_err_z
INTO mydb.tempPrepTSv2
FROM detectionindex d
JOIN PhotoObjAll p ON d.objid=p.objid
JOIN Field f ON p.fieldid=f.fieldid
INNER JOIN mydb.DescThingsTablev5 mine ON mine.thingid = d.thingid
ORDER BY 1;
