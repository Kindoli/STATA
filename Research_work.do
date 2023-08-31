/*This is where my commands will be displayed*/

local c_date = c(current_date)
local c_time = c(current_time)
local c_time_date = "`c_date'"+"_" +"`c_time'"
display "`c_time_date'"
local time_string = subinstr("`c_time_date'", ":", "_", .)
local time_string = subinstr("`time_string'", " ", "_", .)
display "`time_string'"

*update the pathway here so that the log file is saved where you want
log using "C:\Users\ucsfu\Desktop\Cecilia Research Work\Logs\Research_Cecilia_`time_string'.log",replace


**********************************************************************************
/****************************************************************************************
* PROJECT       : Care Givers Data
* Researcher    : 
* DESCRIPTION   : Care Givers Data
* PROGRAMMER    : Kindoli Edward
* DATE WRITTEN  : 08Feb2020
****************************************************************************************/
*add date and time to log file
disp "DateTime: $S_DATE $S_TIME"

*open the newest version of the dataset
use "C:\Users\ucsfu\Desktop\Cecilia Research Work\Research_Cecilia_dataset.dta", clear 
/*destring , replace*/
/*do "C:\Users\ucsfu\Desktop\Research Work\Research_Cecilia_Labels.do"*/


/*Cross tabulation for RelationshipType and General_BodyHealth*/

tab RelationshipType General_BodyHealth, column row chi2 lrchi2

tab Unaware_Adolescent_topics
fre Unaware_Adolescent_topics
/*Adolescent_threats*/

tab Adolescent_threats
fre Adolescent_threats

/*Adolescent_questions*/
tab Adolescent_questions
fre Adolescent_questions
/*Do you feel this topic can be discussed with boy and girls*/

tab RelationshipType Gender_Adolescent_Topics, column row chi2 lrchi2

/*For Girls; Menstruation and Menstruation hygiene*/

tab RelationshipType menstrual_Discussion, column row chi2 lrchi2


/*Unaware_menstrual*/

tab Unaware_menstrual
fre Unaware_menstrual

/*child_mentrusl_threats*/
tab child_mentrusl_threats
fre child_mentrusl_threats

/*Freelyask_menstrual*/
tab Freelyask_menstrual
fre Freelyask_menstrual

/*WetDreams_Discussion*/
tab RelationshipType WetDreams_Discussion, column row chi2 lrchi2
/*Unaware_Wetdreams*/
tab Unaware_Wetdreams
fre Unaware_Wetdreams
/*Threathen_Child_Wetdreams*/
tab Threathen_Child_Wetdreams
fre Threathen_Child_Wetdreams
/*Freelyask_Wetdreams*/
tab Freelyask_Wetdreams
fre Freelyask_Wetdreams
/*Relationship RelationshipType btn and Gender_wetdreams_discussion*/
tab RelationshipType Gender_wetdreams_discussion, column row chi2 lrchi2

/*Do you feel the topic can be discussed with boys*/

tab RelationshipType freely_discuss_menstrual, column row chi2 lrchi2

/*Romantic_Rship_discussion*/

tab RelationshipType Romantic_Rship_discussion, column row chi2 lrchi2

/*Unaware_menstrual*/

tab Unaware_RomanceTopics
fre Unaware_RomanceTopics
/*Romance_Threats*/
tab Romance_Threats
fre Romance_Threats

/*Freelyask_Romance*/
tab Freelyask_Romance
fre Freelyask_Romance

/*Romatic RelationshipType and Gender_Romance_discussion*/

tab RelationshipType Gender_Romance_discussion, column row chi2 lrchi2

/*RelationshipType and Sexual_Pressure_Discussion*/

tab RelationshipType Sexual_Pressure_Discussion, column row chi2 lrchi2

/*SexualPressure_Unwareness*/
tab SexualPressure_Unwareness
fre SexualPressure_Unwareness

/*SexualPressure_Threats*/

tab SexualPressure_Threats
fre SexualPressure_Threats

/*freelyask_SexualPressure*/

tab freelyask_SexualPressure
fre freelyask_SexualPressure

/*Romatic RelationshipType and Gender_SexualPressure*/


tab RelationshipType Gender_SexualPressure, column row chi2 lrchi2

/*HIV_STIs_Discussion*/
tab RelationshipType HIV_STIs_Discussion, column row chi2 lrchi2

/*SexualPressure_Unwareness*/
tab HIV_STI_Topics_Unawareness
fre HIV_STI_Topics_Unawareness

/*HIV_Topic_Threats*/

tab HIV_Topic_Threats
fre HIV_Topic_Threats

/*Freelyask_HIV_Topics*/

tab Freelyask_HIV_Topics
fre Freelyask_HIV_Topics

/*Gender_HIV_Discuss*/

tab RelationshipType Gender_HIV_Discuss, column row chi2 lrchi2

/*BirthControl*/
tab RelationshipType BirthControl, column row chi2 lrchi2
/*SexualPressure_Unwareness*/
tab Birthcontrol_Unawareness
fre Birthcontrol_Unawareness

/*BirthControl_Threats*/

tab BirthControl_Threats
fre BirthControl_Threats

/*Freelyask_BirthContro*/

tab Freelyask_BirthContro
fre Freelyask_BirthContro

/*Gender_BirthControl*/
tab RelationshipType Gender_BirthControl, column row chi2 lrchi2

/*Birthcontrol_Condoms*/

tab RelationshipType Birthcontrol_Condoms, column row chi2 lrchi2

/*Condoms_Unawareness*/

tab Condoms_Unawareness
fre Condoms_Unawareness

/*Condom_Threats*/

tab Condom_Threats
fre Condom_Threats

/*Freelyask_Condomqns*/

tab Freelyask_Condomqns
fre Freelyask_Condomqns

/*Gender_CondomUse_Discussion*/

tab RelationshipType Gender_CondomUse_Discussion, column row chi2 lrchi2

/*Sexual_Conduct*/

tab RelationshipType Sexual_Conduct, column row chi2 lrchi2

/*Sexual_Conduct_Unawareness*/

tab Sexual_Conduct_Unawareness
fre Sexual_Conduct_Unawareness
/*SexualConduct_Threats*/

tab SexualConduct_Threats
fre SexualConduct_Threats

/*freelyask_SexualConduct*/

tab freelyask_SexualConduct
fre freelyask_SexualConduct

/*Gender_Sexualconduct_Discussion*/

tab RelationshipType Gender_Sexualconduct_Discussion, column row chi2 lrchi2

/*Sexual_violence_reporting*/
tab RelationshipType Sexual_violence_reporting, column row chi2 lrchi2
/*Sexual_Violence_Unawareness*/
tab Sexual_Violence_Unawareness
fre Sexual_Violence_Unawareness
/*Sexual_violence_Threats*/
tab Sexual_violence_Threats
fre Sexual_violence_Threats
/*freelyask_Sexual_violence*/
tab freelyask_Sexual_violence
fre freelyask_Sexual_violence

/*Gender_SexualViolence_Discussion*/
tab RelationshipType Gender_SexualViolence_Discussion, column row chi2 lrchi2

/*factor Analysis*/
factor Expertise GoodAdvice Trustworthy keep_promises Honest TalkingTime ToobusytoTalk TroubleFindingTime, pcf



/*descriptive statistics*/

tabstat Age Childrenno, s(mean median sd var count range min max)

tabstat Age Childrenno, s(mean median sd var count range min max)by(Gender)

 tabulate Education
 
 summarize Education
 
 /*The plot option places a sideways histogram*/
 
 tabulate Education, plot
 
 /*tabulate to treat missing values just as it treats numbers*/
 
 tabulate other_mstatus, missing
 
/*Cross tabulation for two or more categorical variables for a relationship*/

tab Religion_importance Gender, column row

/*Three way crosstabs for multi-variate analysis*/

bysort Mstatus: tab Gender Education, colum row

/*Three way crosstabs with summary statistics of a fourth variable*/
bysort Mstatus: tab Gender Education, sum(Childrenno)
 
 /*Using the fre command to generate Univariate*/
 
 fre Education
 fre Mstatus
 
 /*Regression Analysis*/
 regress Age Education
 
 /*Participants Education and Mstatus*/
 
 tabulate Education Mstatus, column row

 /*Frequencies of var1 when gender = 1 and age < 33*/
 tab Education if Gender==1 & Age<33
 
 /*Using the summarize command*/
  summarize Education if Gender==1 & Age<33
 /*Education when Gender==1 & Mstatus==2 | Mstatus==3 | Mstatus==4*/
 
fre Education if Gender==1 & Mstatus==2 | Mstatus==3 | Mstatus==4
tab Education if Gender==1 & Mstatus==2 | Mstatus==3 | Mstatus==4
summarize Education if Gender==2 & Mstatus==3 
 /*Cross tabulation for relationship between Education & Religion Impotance using chi-Square*/
 
 tab Religion_importance Education, column row chi2
 
  /*Cross tabulation for relationship between Education & Religion Impotance using likelyhood-ratio*/
  
 tab Religion_importance Education, column row lrchi2
 
 /*Cross tabs for Education and Gender*/
 
tabulate Education Gender, column row

/*all exact generates all measures of association*/

tab Education Gender, column row all exact

tab Education Gender, column row nokey chi2 lrchi2 V exact gamma taub

/*Analysing Multiple responses*/
count if Latrine == 1

/*Counting participants have different items in their homes*/

mrtab ElectricityUmemesolar- Refrigerator, include response (1)
/*sorts the results by order*/
mrtab ElectricityUmemesolar- Refrigerator, include response (0) sort des

/*mrtab ElectricityUmemesolar- Refrigerator, include response (0), column row chi2*/

table Gender, contents(freq mean Age mean Childrenno)
 
save "C:\Users\ucsfu\Desktop\Research Work\Research_Cecilia_dataset_single.dta", replace

clear
log close

