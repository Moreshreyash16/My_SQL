-- This function returns the absolute value of X.
select abs(-5) as absolute_value;

-- The variable X is divided by Y and their remainder is returned.
select mod(10,2) as mod_value;

-- This returns the largest integer value that is either less than X or equal to it.
select floor(6.3) as floor_value;

-- This returns the smallest integer value that is either more than X or equal to it.
select ceil(6.3) as ceiling_value;

-- This function returns the value of x raised to the power of Y
select power(2,3) as power_of;

-- This function returns the square root
select sqrt('10') as sqaure_root;

-- This function returns the minmum values
select min(age) as Minimimum_age from employees;

-- This function returns the maximum values
select max(age) as Maximimum_age from employees;

-- This function returns the count of values
select count(age) as total from employees;

-- This function returns the maximum values
select count(age) as total from employees;

-- This function returns the average values
select avg(age) as average_age from employees;


