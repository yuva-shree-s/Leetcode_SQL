CREATE TABLE Days (
  day DATE PRIMARY KEY
);

INSERT INTO Days (day)
VALUES
  ('2022-04-12'),
  ('2021-08-09'),
  ('2020-06-26');

#Solution:
Select to_char(day,’Day,month d, YYYY’) as day
From Days;
