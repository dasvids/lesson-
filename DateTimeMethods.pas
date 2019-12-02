unit DateTimeMethods;

function IsLeapYear(year: integer): boolean;
begin
 result:= year mod 4 = 0;
end;
function DaysInMonth(month, year: integer):integer;
begin
  //if IsLeapYear(year) then
   // if month=(1,)
   case month of
     1,3,5,7,8,10,12:result:=31;
     4,6,9,11:result:=30;
     2:result:=IsLeapYear(year)?29:28;
   end;
    
end;
function LaterInDay(p1, p2: DateTime): DateTime;
begin
//result:=(ABS(- p1) < ABS( -p2))?p1:p2;
result:=((p1.Hour *3600 + p1.Minute *60 + p1.Second) > (p2.Hour *3600 + p2.Minute *60 + p2.Second))?p1:p2;
end;
function LaterInYear(p1, p2: DateTime): DateTime;
begin
  result:=((p1.Date)>(p2.Date))?p1:p2;
end;
function DaysInYear(year: integer): integer := 0;
function DaysInYearRange(year1, year2: integer): integer := 0;
function SecondsInHours(hours: integer): integer := 0;
end.
