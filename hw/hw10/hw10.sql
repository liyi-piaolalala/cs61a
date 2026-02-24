CREATE TABLE parents AS
  SELECT "ace" AS parent, "bella" AS child UNION
  SELECT "ace"          , "charlie"        UNION
  SELECT "daisy"        , "hank"           UNION
  SELECT "finn"         , "ace"            UNION
  SELECT "finn"         , "daisy"          UNION
  SELECT "finn"         , "ginger"         UNION
  SELECT "ellie"        , "finn";

CREATE TABLE dogs AS
  SELECT "ace" AS name, "long" AS fur, 26 AS height UNION
  SELECT "bella"      , "short"      , 52           UNION
  SELECT "charlie"    , "long"       , 47           UNION
  SELECT "daisy"      , "long"       , 46           UNION
  SELECT "ellie"      , "short"      , 35           UNION
  SELECT "finn"       , "curly"      , 32           UNION
  SELECT "ginger"     , "short"      , 28           UNION
  SELECT "hank"       , "curly"      , 31;

CREATE TABLE sizes AS
  SELECT "toy" AS size, 24 AS min, 28 AS max UNION
  SELECT "mini"       , 28       , 35        UNION
  SELECT "medium"     , 35       , 45        UNION
  SELECT "standard"   , 45       , 60;


-- All dogs with parents ordered by decreasing height of their parent
CREATE TABLE by_parent_height AS
  SELECT child from parents,dogs where parent = name order by -height;


-- The size of each dog
CREATE TABLE size_of_dogs AS
  SELECT name,size from dogs,sizes where height>min and height<=max;


-- [Optional] Filling out this helper table is recommended
CREATE TABLE siblings AS
  SELECT a.name as dog1,b.name as dog2
          from dogs as a, dogs as b ,parents as p1,parents as p2 where a.name<b.name and a.name = p1.child and b.name = p2.child and p1.parent = p2.parent;

-- Sentences about siblings that are the same size
CREATE TABLE sentences AS
  SELECT 'The two siblings, ' || dog1 || ' and ' || dog2 ||', have the same size: '||s1.size 
          from siblings,size_of_dogs as s1,size_of_dogs as s2 where s1.size = s2.size and s1.name =dog1 and s2.name = dog2 order by dog2;


-- Height range for each fur type where all of the heights differ by no more than 30% from the average height
CREATE TABLE low_variance AS
  SELECT fur ,max(height)-min(height) as height_range from dogs group by fur having min(height) >= sum(height)/count(height)*0.7 and max(height) <= sum(height)/count(height)*1.3;

