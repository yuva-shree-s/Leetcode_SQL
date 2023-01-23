--DUMPING

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Sessions (
  session_id INTEGER,
  duration INTEGER
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Sessions
  (session_id, duration)
VALUES
  ('1', '30'),
  ('2', '299'),
  ('3', '340'),
  ('4', '580'),
  ('5', '1000');

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Results (
  bin VARCHAR(10),
  total INTEGER
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Results
  (bin, total)
VALUES
  ('[0-5>', '3'),
  ('[5-10>', '1'),
  ('[10-15>', '0'),
  ('15 or more', '1');
  
  
  
  
  

--ANSWER:

select '[0-5>' as bin, count(session_id) as total
from Sessions
where duration < 300

union

select '[5-10>' as bin, count(session_id) as total
from Sessions
where duration >= 300 and duration < 600

union

select '[10-15>' as bin, count(session_id) as total
from Sessions
where duration < 900 and duration >= 600

union

select '15 or more' as bin, count(session_id) as total
from Sessions
where duration >= 900