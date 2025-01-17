gen y = pearnval
gen logy = log(y)

gen male = a_sex == 1
gen female = a_sex == 2

gen hsg = a_hga >= 39
gen coll = a_hga >= 43

gen white = a_race == 1
gen black = a_race ==2
gen other = 1 - white - black

gen single = a_maritl == 7
gen married = a_maritl <= 3
gen wds = 1 - (single+married)

gen age = a_age
gen age2 = age*age
gen femage = female*age
gen femage2 = female*age2

gen educ = a_hga
recode educ (0/31=0)(32=3)(33=6)(34=8)(35=9)(36=10)(37=11)(38=12)(39=12)(40=13)(41/42=14)(43=16)(44=18)(45=20)(46=21)

gen femeduc = female*educ

gen emp = a_lfsr == 1 | a_lfsr == 2
gen unemp = a_lfsr == 3 | a_lfsr == 4

gen lf = a_lfsr == 1 | a_lfsr ==2 | a_lfsr == 3 | a_lfsr == 4 
gen notlf = a_lfsr == 7

gen asian = a_race == 4 

drop other

gen other = 1 - asian - white 
