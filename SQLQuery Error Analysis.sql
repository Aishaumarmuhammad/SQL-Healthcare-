SELECT p.nachname, p.vorname, f.fall_id, f.aufnahme, f.station
FROM patient AS p
JOIN fall AS f ON p.patient_id = f.patient_id;


--For every case, show the patient surname and first name together with fall_id, aufnahme and
--station.