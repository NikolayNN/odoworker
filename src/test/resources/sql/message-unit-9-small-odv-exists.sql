INSERT INTO "message"("id", "datetime", "unit_id", "latitude", "longitude", "altitude", "speed", "amount_satellite", "course", "params", "received", "is_valid", "is_archive") 
VALUES
 (3370, '2018-12-04 12:37:51', 9, '54.2709159851074', '25.3742866516113', 160, 0, 18, 0, '_odv:1:0', '2020-02-16 08:26:58', 't', 't'),
 (3371, '2018-12-04 12:38:03', 9, '54.2710266113281', '25.3742942810059', 161, 7, 18, 3, '_odv:1:0', '2020-02-16 08:26:58', 't', 't'),
 (3372, '2018-12-04 12:38:15', 9, '54.2712707519531', '25.374340057373', 162, 8, 18, 25, '_odv:1:0', '2020-02-16 08:26:58', 't', 't'),
 (3373, '2018-12-04 12:38:17', 9, '54.2713050842285', '25.3743724822998', 162, 7, 18, 34, '_odv:1:0', '2020-02-16 08:26:58', 't', 't'),
 (3391, '2018-12-04 12:38:29', 9, '54.2713203430176', '25.3743915557861', 162, 0, 20, 0, '_odv:1:0', '2020-02-16 08:26:58', 't', 't');

INSERT INTO unit_data (unit_id, last_message_id) VALUES (9, 3391);
