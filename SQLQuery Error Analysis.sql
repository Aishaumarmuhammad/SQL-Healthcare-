SELECT p.nachname, p.vorname, f.fall_id, f.aufnahme, f.station
FROM patient AS p
JOIN fall AS f ON p.patient_id = f.patient_id;

--For every case, show the patient surname and first name together with fall_id, aufnahme and station.

SELECT * 
FROM vitalwert
where fall_id = 5005
AND messzeit >= '2026-06-23 00:00'
AND messzeit < '2026-06-24 00:00';

--A nurse reports that case 5005 seems to be missing its vital signs for 2026-06-23. Query the database: are there any vitalwert rows for fall_id = 5005 on 2026-06-23? 


SELECT f.station,
COUNT(*) AS faelle_gesamt,
COUNT(a.assessment_id) AS mit_sturzassessment
FROM fall f
LEFT JOIN assessment a
ON f.fall_id = a.fall_id
AND a.typ = 'STURZRISIKO'
GROUP BY f.station;

-- For each station, show the total number of cases and how many of them have a STURZRISIKO (fall-risk) assessment