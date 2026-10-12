{%macro get_season(x)%}

case 
when MONTH(to_timestamp({{x}})) in (12,1,2)
  then 'WINTER'
when MONTH(to_timestamp({{x}})) in (3,4,5)
  then 'SPRING'
when MONTH(to_timestamp({{x}})) in (6,7,8)
  then 'SUMMER'
else 'FALL'
end

{%endmacro%}

{%macro day_type(x)%}

case 
when dayname(to_timestamp({{x}})) in ('Sat', 'Sun')
then 'WEEKEND'
else 'BUSINESSDAY'
end

{%endmacro%}