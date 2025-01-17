gen a_hga = school

gen y = earnings 
gen logy = log(y)

gen male = sex == 1
gen female = sex == 2

gen hsg = a_hga >= 39
gen coll = a_hga >= 43

gen white = race == 1
gen black = race ==2
gen other = 1 - white - black

gen single = marital == 7
gen married = marital <= 3
gen wds = 1 - (single+married)

gen age2 = age*age
gen femage = female*age
gen femage2 = female*age2

gen educ = a_hga
recode educ (0/31=0)(32=3)(33=6)(34=8)(35=9)(36=10)(37=11)(38=12)(39=12)(40=13)(41/42=14)(43=16)(44=18)(45=20)(46=21)

gen femeduc = female*educ

gen a_lfsr = lfstatus

gen emp = a_lfsr == 1 | a_lfsr == 2
gen unemp = a_lfsr == 3 | a_lfsr == 4

gen lf = a_lfsr == 1 | a_lfsr ==2 | a_lfsr == 3 | a_lfsr == 4 
gen notlf = a_lfsr == 7
drop other

gen asian = race == 4 

gen other = 1 - asian - white 
