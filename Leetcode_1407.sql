
--DUMPING:

CREATE TABLE Users (
  `id` INTEGER,
  `name` VARCHAR(8)
);

INSERT INTO Users
  (`id`, `name`)
VALUES
  ('1', 'Alice'),
  ('2', 'Bob'),
  ('3', 'Alex'),
  ('4', 'Donald'),
  ('7', 'Lee'),
  ('13', 'Jonathan'),
  ('19', 'Elvis');

CREATE TABLE Rides (
  `id` INTEGER,
  `user_id` INTEGER,
  `distance` INTEGER
);

INSERT INTO Rides
  (`id`, `user_id`, `distance`)
VALUES
  ('1', '1', '120'),
  ('2', '2', '317'),
  ('3', '3', '222'),
  ('4', '7', '100'),
  ('5', '13', '312'),
  ('6', '19', '50'),
  ('7', '7', '120'),
  ('8', '19', '400'),
  ('9', '7', '230');

CREATE TABLE Result (
  `name` VARCHAR(8),
  `travelled_distance` INTEGER
);

INSERT INTO Result
  (`name`, `travelled_distance`)
VALUES
  ('Elvis', '450'),
  ('Lee', '450'),
  ('Bob', '317'),
  ('Jonathan', '312'),
  ('Alex', '222'),
  ('Alice', '120'),
  ('Donald', '0');


--Answer:

select * from users;

select * from rides;

select * from result____;

select u.name,coalesce(sum(r.distance),0) as total_distance
from users as u
left join rides as r
on u.id=r.user_id
group by u.name
order by total_distance desc,u.name;




