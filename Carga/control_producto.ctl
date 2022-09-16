OPTIONS (SKIP=1)
LOAD DATA
CHARACTERSET UTF8
INFILE 'producto.csv'
INTO TABLE producto 
FIELDS TERMINATED BY ";" OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS(
    ID_PRODUCTO                 "TRIM(:ID_PRODUCTO)",
    NOMBRE                      "TRIM(:NOMBRE)",
    PRECIO                      "TRIM(:PRECIO)",
    CATEGORIA_ID_CATEGORIA      "TRIM(:CATEGORIA_ID_CATEGORIA)"
)