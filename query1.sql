SELECT t.thingId, t.fieldID, t.ObjID, t.isPrimary, t.nDetect, t.ra, t.dec,sp.class, sp.subclass, sp.z as spec_redshift
FROM thingIndex as t
INTO DescThingsTable
INNER JOIN SpecObjAll as sp ON sp.bestObjID = t.ObjID
WHERE t.nDetect >=20 AND sp.bestObjID = sp.fluxObjID
ORDER BY nDetect DESC;
