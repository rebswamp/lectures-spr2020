
* get permno-fyear obs with firm info 

use if fyear == 2006 using "D:\data\ccm\ccm_201507_GvkeyDestring_GvkeyDateDupDropSort", clear
keep lpermno cusip sic gsector state tic fyear
rename lpermno permno
mdesc // keep the missing gsectors... nice non-complication for students
duplicates drop permno fyear, force
save "ccm_2006_mini", replace

* get CRSP ret data for these firms, put where students can get

use date ret permno  if year(date) == 2006 using "D:\data\crsp\crsp_daily_2005_2009_light.dta", clear
g fyear = year(date)
merge m:1 permno fyear using "ccm_2006_mini", keepusing(fyear) keep(3)
drop _m fyear
order permno date ret
save "../stocks_2006", replace

* clean firm data a bit can put where students can see

use "ccm_2006_mini", clear
drop cusip tic sic
order permno fyear 
save "../firms_2006", replace


