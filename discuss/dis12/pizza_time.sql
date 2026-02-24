CREATE TABLE pizzas AS
  SELECT "Artichoke" AS name, 12 AS open, 15 AS close UNION
  SELECT "La Val's"         , 11        , 22          UNION
  SELECT "Sliver"           , 11        , 20          UNION
  SELECT "Cheeseboard"      , 16        , 23          UNION
  SELECT "Emilia's"         , 13        , 18;

CREATE TABLE meals AS
  SELECT "breakfast" AS meal, 11 AS time UNION
  SELECT "lunch"            , 13         UNION
  SELECT "dinner"           , 19         UNION
  SELECT "snack"            , 22;
-- Pizza places that open before 1pm in alphabetical order
SELECT name from pizzas where open<13 order by name desc;
-- Pizza places and the duration of a study break that ends at 14 o'clock
SELECT name ,max(14-open,0) as duration from pizzas order by -duration;
-- Pizza places that are open for late-night-snack time and when they close
  SELECT name || " closes at " || close AS status
  FROM pizzas,meals
  WHERE close >= time and meal='snack';
-- Two meals at the same place
  SELECT a.meal AS first, b.meal AS second, name
  FROM meals as a, meals as b, pizzas
  WHERE a.time >= open and b.time <= close and (b.time - a.time)>6;


