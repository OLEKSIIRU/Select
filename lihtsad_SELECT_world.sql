
--Страны, названия которых начинаются на букву “К” (5 записей);

SELECT * from country
WHERE Name LIKE 'K%';

--Страны, получившие независимость в 19-м веке (27 записей)

Select Name, IndepYear from country
WHERE IndepYear between 1800 and 1899;

--Страны ближнего востока (Middle East) (18 записей)

Select Name, Region from country
Where Region = "Middle East";

--Европейские страны, которые образовались в 19 веке (7 записей)

Select Continent,Name,IndepYear from country
Where Continent like "Europe" and IndepYear between 1800 and 1900;

--Страны, в названиях которых содержат слог “ра”  (9 записей)

SELECT * from country
WHERE Name LIKE '%pa%';

--Страны, названия которых начинаются на гласную букву  (A, E, I, O, U, Y) (42 записи);

SELECT * from country
WHERE Name LIKE 'A%' or Name LIKe 'E%' or Name LIKe 'I%' or Name LIKe 'O%' or Name LIKe'U%' or Name LIKe'Y%';

Select Name 
from country
where Name rlike '^[A, E, I, O, U, Y]'; --принадлежность некоторому множеству значений

Select Name 
from country
where Name like '[A, E, I, O, U, Y]%'; for SQL SERVER

--Страны, названия которых начинаются и заканчиваются на одну и ту же букву. (20 записей)

Select Name from country
Where left(name,1) = Right(Name,1);

--Государства, формой правления которых является различной формы монархия (43 записи)

SELECT GovernmentForm FROM country WHERE GovernmentForm like '%Monarchy%';

--Страны, население которых меньше 1 млн. (85 записей)

Select Population,Name from country
Where Population < 1000000;

--Самое древнее государство (China)

Select Name,IndepYear from country
ORDER by IndepYear limit 1;

--Страны, год обретения независимости которыми не определен (47 записей)

SELECT IndepYear FROM country
WHERE IndepYear like '0';


--Самое маленькое по площади государство (Holy See (Vatican City State))

Select Name,SurfaceArea from country
ORDER by SurfaceArea limit 1;

--Первую десятку наиболее населенных государств мира

Select Name,Population from country
ORDER by Population DESC limit 10;

--Первую десятку наиболее населенных государств Европы

Select Name,Population,Continent 
from country
Where Continent like 'Europe'
ORDER by Population DESC limit 10;

--Cуммарное число жителей стран Европы и суммарную площадь её государств (730 074 600, 23 049 133.9)

Select Sum(Population) as 'kokku elanike arv' ,sum(SurfaceArea) as 'kokku pindala' ,Continent 
from country
Where Continent like 'Europe';

--Число стран, расположенных не в Антарктике (234 записи)

SELECT count(Name) FROM country 
where Continent not like 'Antarctica';

--Число стран, где главой правительства является Елизавета II (Elisabeth II), суммарное число жителей этих стран.  (35 стран, 122 872 550 человек)

SELECT count(Name),Sum(Population) as 'kokku elanike arv' FROM country 
where HeadOfState like 'Elisabeth II';


--Число стран, наибольшее и наименьшее число жителей стран Полинезии (Polynesia) (10 стран, 235 000 человек, 50 человек)

SELECT count(*) as RiikideArv,MAX(Population) as 'max elanime arv', MIN(Population) as 'min elanime arv' FROM country 
where Region like 'Polynesia';



