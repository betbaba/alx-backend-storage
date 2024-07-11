-- A SQL script that lists all bands with Glam rock as their main style
-- select all bands with Glam rock as their main style, ranked by thier longevity

SELECT band_name, IFNULL(split, 2023) - IFNULL(formed, 0) AS  lifespan 
From metal_bands
WHERE style LIKE '%Glam rock%';
ORDER BY lifespan DESC;
