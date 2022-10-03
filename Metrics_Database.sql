-- Creating tables for Breast_Cancer_Final_Project
CREATE TABLE data_diagnosis (
     id_no int NOT NULL,
     diagnosis VARCHAR(5) NOT NULL,
     PRIMARY KEY (id_no),
     UNIQUE (id_no)
);

CREATE TABLE data_mean (
  id_no FLOAT NOT NULL,
  radius_mean FLOAT NOT NULL,
  texture_mean FLOAT NOT NULL,
  perimeter_mean FLOAT NOT NULL,
  area_mean FLOAT NOT NULL,
  smoothness_mean FLOAT NOT NULL,
  compactness_mean FLOAT NOT NULL,
  concavity_mean FLOAT NOT NULL,
  concave_points_mean FLOAT NOT NULL,
  symmetry_mean FLOAT NOT NULL,
  fractal_dimension_mean FLOAT NOT NULL,
  PRIMARY KEY (id_no)
);

CREATE TABLE data_se (
  id_no FLOAT NOT NULL,
  radius_se FLOAT NOT NULL,
  texture_se FLOAT NOT NULL,
  perimeter_se FLOAT NOT NULL,
  area_se FLOAT NOT NULL,
  smoothness_se FLOAT NOT NULL,
  compactness_se FLOAT NOT NULL,
  concavity_se FLOAT NOT NULL,
  concave_points_se FLOAT NOT NULL,
  symmetry_se FLOAT NOT NULL,
  fractal_dimension_se FLOAT NOT NULL,
  PRIMARY KEY (id_no)
);

CREATE TABLE data_worst  (
  id_no FLOAT NOT NULL,
  radius_worst FLOAT NOT NULL,
  texture_worst FLOAT NOT NULL,
  perimeter_worst FLOAT NOT NULL,
  area_worst FLOAT NOT NULL,
  smoothness_worst FLOAT NOT NULL,
  compactness_worst FLOAT NOT NULL,
  concavity_worst FLOAT NOT NULL,
  concave_points_worst FLOAT NOT NULL,
  symmetry_worst FLOAT NOT NULL,
  fractal_dimension_worst FLOAT NOT NULL,
  PRIMARY KEY (id_no)
);

SELECT diagnosis.diagnosis, mean.*
INTO Breast_Cancer_Metrics
FROM data_diagnosis diagnosis
INNER JOIN data_mean mean
ON diagnosis.id_no = mean.id_no;

DROP TABLE Cancer_Metrics

SELECT
BCM.*,
se.radius_se,
se.texture_se,
se.perimeter_se,
se.area_se,
se.smoothness_se,
se.concavity_se,
se.concave_points_se,
se.symmetry_se,
se.fractal_dimension_se
INTO Cancer_Metrics
FROM Breast_Cancer_Metrics BCM
INNER JOIN data_se se
ON BCM.id_no = se.id_no;

SELECT * FROM Cancer_Metrics;

SELECT
CM.*,
worst.radius_worst,
worst.texture_worst,
worst.perimeter_worst,
worst.area_worst,
worst.smoothness_worst,
worst.concavity_worst,
worst.concave_points_worst,
worst.symmetry_worst,
worst.fractal_dimension_worst
INTO Final_Metrics
FROM Cancer_Metrics CM
INNER JOIN data_worst worst
ON CM.id_no = worst.id_no;

SELECT * FROM Final_Metrics;