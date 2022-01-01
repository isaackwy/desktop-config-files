#!/usr/bin/env lua
-- Reference: 
-- https://wiki.archlinux.org/index.php/Conky/Tips_and_tricks#Display_a_calendar_for_the_current_month

conky_color = "${color1}%2d${color}"
conky_color2 = "${color1} %2d${color}"
 
t = os.date('*t', os.time())
year, month, currentday = t.year, t.month, t.day
 
daystart = os.date("*t",os.time{year=year,month=month,day=01}).wday

month_name = os.date("%B")
 
days_in_month = {
    31, 28, 31, 30, 31, 30, 
    31, 31, 30, 31, 30, 31
}
 
-- check for leap year
-- Any year that is evenly divisible by 4 is a leap year
-- Any year that is evenly divisible by 100 is a leap year if
-- it is also evenly divisible by 400.
LeapYear = function (year)
    return year % 4 == 0 and (year % 100 ~= 0 or year % 400 == 0)
end
 
if LeapYear(year) then
    days_in_month[2] = 29
end
 
title_start = (20 - (string.len(month_name) + 5)) / 2
 
title = string.rep(" ", math.floor(title_start+0.5)) .. -- add padding to center the title
        (" %s %s\n Su Mo Tu We Th Fr Sa\n"):format(month_name, year)

io.write(title)
 
function seq(a,b)
    if a > b then
        return
    else
        return a, seq(a+1,b)
    end 
end
 
days = days_in_month[month]

-- If the current day is either 1, 2 or 3, then highlight only that day.
-- This additional section is necessary; otherwise, other extraneous numbers
-- become highlighted.
if (currentday == 1 or currentday == 2 or currentday == 3)
then
    io.write(
        string.format(
            string.rep("   ", daystart-1) ..
            string.rep(" %2d", days), seq(1,days)
        ):gsub(string.rep(".",21),"%0\n")
         :gsub((" %2d"):format(currentday),
               (conky_color2):format(currentday)
          ) .. "\n"
    )
-- The following section is identical to the script mentioned in Arch wiki
else
    io.write(
        string.format(
            string.rep("   ", daystart-1) ..
            string.rep(" %2d", days), seq(1,days)
        ):gsub(string.rep(".",21),"%0\n")
         :gsub(("%2d"):format(currentday),
               (conky_color):format(currentday)
          ) .. "\n"
    )
end
