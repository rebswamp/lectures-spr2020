
use "../CCM_cleaned_for_class.dta", clear
keep if fyear == 2006
duplicates report  lpermno fyear, joint

drop invopps_FG09 sales_g short_debt long_debt_dum atr smalltaxlosscarry largetaxlosscarry
drop td
save "../firms_2006_fuller", replace


