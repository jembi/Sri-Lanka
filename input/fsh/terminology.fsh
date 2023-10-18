Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $SCT_or_SCTINT = http://snomed.info/sct|http://snomed.info/sct/900000000000207008
Alias: $DICOM = http://dicom.nema.org/resources/ontology/DCM

/*CodeSystem: CSRiskBehaviourPhysicalActivity
Id: cs-risk-behaviour-physical-activity
Title: "Risk Assessment - Physical Activity"
Description: "Risk Assessment - Physical Activity"
* ^experimental = false
* ^caseSensitive = true
* #Physically-active "Physically active" "Needs definition"
* #Physically-not-active "Physically not active" "Needs definition"*/

ValueSet: VSRiskBehaviourPhysicalActivity
Id: vs-risk-behaviour-physical-activity
Title: "Risk Assessment - Physical Activity"
Description: "Risk Assessment - Physical Activity"
* ^experimental = false
//* include codes from system CSRiskBehaviourPhysicalActivity
* include codes from system $SCT
    where concept descendent-of #68130003

/*CodeSystem: CSRiskBehaviourTobaccoSmoker
Id: cs-risk-behaviour-tobacco-smoker
Title: "Risk Assessment - Tobacco Smoker"
Description: "Risk Assessment - Tobacco Smoker"
* ^experimental = false
* ^caseSensitive = true
* #Non-User "Non-User" "Needs definition"
* #User "User" "Needs definition"*/

ValueSet: VSRiskBehaviourTobaccoSmoker
Id: vs-risk-behaviour-tobacco-smoker
Title: "Risk Assessment - Tobacco Smoker"
Description: "Risk Assessment - Tobacco Smoker"
* ^experimental = false
//* include codes from system CSRiskBehaviourTobaccoSmoker
* include codes from system $SCT
    where concept descendent-of #365980008

CodeSystem: CSIdentifierTypes
Id: cs-identifier-types
Title: "Patient Business Identifier Types"
Description: "Patient Business Identifier Types"
* ^experimental = false
* ^caseSensitive = true
* #SCN "Senior Citizen Number" "Needs definition"
* #PHN "Personal Health Number" "Needs definition"

CodeSystem: CSFollowUpPlan
Id: cs-follow-up-plan
Title: "Follow-up plan"
Description: "Follow-up plan"
* ^experimental = false
* ^caseSensitive = true
* #Reffered-to-medical-clinic-of-same-institute "Reffered to medical clinic of same institute" "Needs definition"
* #Referred-to-specialised-clinic "Referred to specialised clinic" "Needs definition"
* #Follow-up-at-hlc "Follow up at HLC" "Needs definition"
* #Referred-to-dental-clinic "Referred to Dental Clinic" "Needs definition"
* #Referred-to-wwc "Referred to WWC" "Needs definition"

ValueSet: VSFollowUpPlan
Id: vs-follow-up-plan
Title: "Follow-up plan"
Description: "Follow-up plan"
* ^experimental = false
* include codes from system CSFollowUpPlan

CodeSystem: CSFollowUpReasons
Id: cs-follow-up-reasons
Title: "Follow up at HLC"
Description: "Follow up at HLC"
* ^experimental = false
* ^caseSensitive = true
* #Followed-in-3-months-at-hlc "Followed in 3 months at HLC" "Needs definition"
* #Followed-in-6-months-at-hlc "Followed in 6 months at HLC" "Needs definition"
* #Followed-in-1-year-at-hlc "Followed in 1 year at HLC" "Needs definition"
* #Followed-in-3-years-at-hlc "Followed in 3 years at HLC" "Needs definition"

ValueSet: VSFollowUpReasons
Id: vs-follow-up-reasons
Title: "Follow up at HLC"
Description: "Follow up at HLC"
* ^experimental = false
* include codes from system CSFollowUpReasons

CodeSystem: CSCVDRiskCategory
Id: cs-cvd-risk-category
Title: "Cardiovascular Risk Category Probability Percentage Ranges"
Description: "Cardiovascular Risk Category Probability Percentage Ranges"
* ^experimental = false
* ^caseSensitive = true
* #less-than-5 "Less than 5%" "Needs definition"
* #5-to-less-than-10 "5% to less than 10%" "Needs definition"
* #10-to-less-than-20 "10% to less than 20%" "Needs definition"
* #20-to-less-than-30 "20% to less than 30%" "Needs definition"
* #greater-than-or-equal-to-30 "Equal or more than 30%" "Needs definition"

ValueSet: VSCVDRiskCategory
Id: vs-cvd-risk-category
Title: "Cardiovascular Risk Category Probability Percentage Ranges"
Description: "Cardiovascular Risk Category Probability Percentage Ranges"
* ^experimental = false
* include codes from system CSCVDRiskCategory

ValueSet: VSMedicalConditions
Id: vs-medical-conditions
Title: "Conditions"
Description: "Represents previous, pre-existing and new conditions."
* ^experimental = false
* $SCT#38341003 "Hypertension"
* $SCT#195967001 "Asthma"
* $SCT#230690007 "Cerebrovascular accident"
* include codes from system $SCT
    where concept descendent-of #73211009

ValueSet: VSAllergyIntoleranceSubstanceCondition
Id: vs-allergy-intolerance-substance-condition
Title: "Allergy Intolerance"
Description: 
    "IPS Allergy intolerance codes value set. This value set includes codes from SNOMED Clinical Terms®: all descendants of 373873005 &#124;Pharmaceutical / biologic product (product)&#124;&#59; all descendants of 105590001 &#124;Substance (substance)&#124;&#59; all descendants of 418038007 &#124;Propensity to adverse reactions to substance (finding)&#124; plus codes for absent and unknown allergies."
* ^experimental = false
* include codes from system $SCT_or_SCTINT
    where concept descendent-of #105590001
* include codes from system $SCT_or_SCTINT
    where concept descendent-of #373873005
* include codes from system $SCT_or_SCTINT
    where concept descendent-of #418038007
* include codes from system CSAbsentOrUnknownAllergies

CodeSystem: CSAbsentOrUnknownAllergies
Id: cs-absent-or-unknown-allergies
Title: "Absent or Unknown Allergies"
Description: "Absent or Unknown Allergies"
* ^experimental = false
* ^caseSensitive = true
* #no-allergy-info	"No information about allergies"	"There is no information available regarding the subject's allergy conditions."
* #no-known-allergies	"No known allergies"	"The subject has no known allergy conditions."
* #no-known-medication-allergies	"No known medication allergies"	"The subject has no known medication allergy conditions."
* #no-known-environmental-allergies	"No known environmental allergies"	"The subject has no known environmental allergy conditions."
* #no-known-food-allergies	"No known food allergies"	"The subject has no known food allergy conditions."

ValueSet: VSAbsentOrUnknownAllergies
Id: vs-absent-or-unknown-allergies
Title: "Absent or Unknown Allergies"
Description: 
    "Absent or Unknown Allergies"
* ^experimental = false
* include codes from system CSAbsentOrUnknownAllergies

ValueSet: VSAllergyIntoleranceSNOMEDCTFreeSet
Id: vs-allergy-intolerance-snomed-ct-free-set
Title: "Allergy Intolerance - SNOMED CT Free Set"
Description: 
    "This value set includes the codes for allergy or intolerance findings from the SNOMED International Patient Set (IPS) subset of SNOMED CT (IPS Free Set) that are included in: all descendants of 373873005 &#124;Pharmaceutical / biologic product (product)&#124;&#59; all descendants of 105590001 &#124;Substance (substance)&#124;&#59; all descendants of 418038007 &#124;Propensity to adverse reactions to substance (finding)&#124;."
* ^experimental = false
* ^copyright = "The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the [Creative Commons Attribution 4.0 International Public License](https://creativecommons.org/licenses/by/4.0/). For more information, see [SNOMED IPS Terminology](https://www.snomed.org/snomed-ct/Other-SNOMED-products/international-patient-summary-terminology)"
* ^expansion.timestamp = "2022-08-22T04:07:54+00:00"
* ^expansion.total = 292
* ^expansion.offset = 0
* ^expansion.parameter.name = "version"
* ^expansion.parameter.valueUri = "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20220731"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #1985008
* ^expansion.contains[=].display = "Vomitus"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #2309006
* ^expansion.contains[=].display = "Gold"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #2799001
* ^expansion.contains[=].display = "Methylbenzethonium chloride"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #3829006
* ^expansion.contains[=].display = "Iron"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #7791007
* ^expansion.contains[=].display = "Soybean protein"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #9021002
* ^expansion.contains[=].display = "Carbaryl"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #11526002
* ^expansion.contains[=].display = "Aspartame"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #11894001
* ^expansion.contains[=].display = "Clostridium botulinum toxin"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #12503006
* ^expansion.contains[=].display = "Aluminum"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #12510000
* ^expansion.contains[=].display = "Eucalyptus oil"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #13577000
* ^expansion.contains[=].display = "Nut"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #13652007
* ^expansion.contains[=].display = "Silicone"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #14402002
* ^expansion.contains[=].display = "Wood"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #23182003
* ^expansion.contains[=].display = "Cereal"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #26159005
* ^expansion.contains[=].display = "Clostridium tetani toxin"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #28230009
* ^expansion.contains[=].display = "Poultry"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #28647000
* ^expansion.contains[=].display = "Meat"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #33008008
* ^expansion.contains[=].display = "Dust"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #33396006
* ^expansion.contains[=].display = "Nickel"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #37146000
* ^expansion.contains[=].display = "Typhus vaccine"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #41967008
* ^expansion.contains[=].display = "Silver"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #42416001
* ^expansion.contains[=].display = "Lanolin"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #43230003
* ^expansion.contains[=].display = "Rubber"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #43735007
* ^expansion.contains[=].display = "Sulfur"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #44027008
* ^expansion.contains[=].display = "Seafood"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #47703008
* ^expansion.contains[=].display = "Lactose"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #51420009
* ^expansion.contains[=].display = "Silicon"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #51905005
* ^expansion.contains[=].display = "Mustard"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #52454007
* ^expansion.contains[=].display = "Albumin"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #57126000
* ^expansion.contains[=].display = "Glue"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #57720001
* ^expansion.contains[=].display = "Anise oil"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #59037007
* ^expansion.contains[=].display = "Intolerance to drug"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #59351004
* ^expansion.contains[=].display = "Citrate"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #59533004
* ^expansion.contains[=].display = "Food additive"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #59545008
* ^expansion.contains[=].display = "Pesticide"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #61789006
* ^expansion.contains[=].display = "Dye"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #63338004
* ^expansion.contains[=].display = "Drug flavoring"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #63766005
* ^expansion.contains[=].display = "Flour"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #66925006
* ^expansion.contains[=].display = "Copper"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #67324005
* ^expansion.contains[=].display = "Rice"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #72511004
* ^expansion.contains[=].display = "Fruit"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #80237000
* ^expansion.contains[=].display = "Cocoa butter"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #83619009
* ^expansion.contains[=].display = "Polyvinyl alcohol"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #89811004
* ^expansion.contains[=].display = "Gluten"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #89889006
* ^expansion.contains[=].display = "Cotton fiber"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #91598004
* ^expansion.contains[=].display = "Benzoyl peroxide"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #91935009
* ^expansion.contains[=].display = "Allergy to peanut"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #91936005
* ^expansion.contains[=].display = "Allergy to penicillin"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #102259006
* ^expansion.contains[=].display = "Citrus fruit"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #102261002
* ^expansion.contains[=].display = "Strawberry"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #102262009
* ^expansion.contains[=].display = "Chocolate"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #102263004
* ^expansion.contains[=].display = "Eggs (edible)"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #102264005
* ^expansion.contains[=].display = "Cheese"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #111088007
* ^expansion.contains[=].display = "Latex"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #115589000
* ^expansion.contains[=].display = "Ethanolamine"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #116549003
* ^expansion.contains[=].display = "Organochlorine pesticide"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #116560007
* ^expansion.contains[=].display = "Clostridium perfringens epsilon toxin"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #116637007
* ^expansion.contains[=].display = "Fungus Antigen"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #119417004
* ^expansion.contains[=].display = "Organophosphate insecticide"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #128488006
* ^expansion.contains[=].display = "House dust"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #128489003
* ^expansion.contains[=].display = "Sand"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #226491003
* ^expansion.contains[=].display = "Apple juice"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #226915003
* ^expansion.contains[=].display = "Red meat"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #226934003
* ^expansion.contains[=].display = "Pork"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #227144008
* ^expansion.contains[=].display = "Tuna fish"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #227150003
* ^expansion.contains[=].display = "Mussel"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #227313005
* ^expansion.contains[=].display = "Pulse vegetable"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #227374009
* ^expansion.contains[=].display = "Herbs and spices"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #227388008
* ^expansion.contains[=].display = "Cinnamon"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #227389000
* ^expansion.contains[=].display = "Clove"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #227395004
* ^expansion.contains[=].display = "Curry powder"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #227400003
* ^expansion.contains[=].display = "Ginger"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #227408005
* ^expansion.contains[=].display = "Paprika"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #227425007
* ^expansion.contains[=].display = "Figs"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #227444000
* ^expansion.contains[=].display = "Raspberries"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #227493005
* ^expansion.contains[=].display = "Cashew nut"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #227511008
* ^expansion.contains[=].display = "Pine nut"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #227512001
* ^expansion.contains[=].display = "Pistachio nut"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #227538001
* ^expansion.contains[=].display = "Pickle"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #230034002
* ^expansion.contains[=].display = "Nuts and seeds"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #232350006
* ^expansion.contains[=].display = "Allergy to dust mite protein"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #235719002
* ^expansion.contains[=].display = "Intolerance to food"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #255620007
* ^expansion.contains[=].display = "Food"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #255640000
* ^expansion.contains[=].display = "Biocide"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #255667006
* ^expansion.contains[=].display = "Paraffin"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #256259004
* ^expansion.contains[=].display = "Pollen"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #256260009
* ^expansion.contains[=].display = "Tree and shrub pollen"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #256277009
* ^expansion.contains[=].display = "Grass pollen"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #256292005
* ^expansion.contains[=].display = "Flower and weed pollen"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #256303006
* ^expansion.contains[=].display = "Ragweed pollen"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #256305004
* ^expansion.contains[=].display = "Tree resin"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #256306003
* ^expansion.contains[=].display = "Orange - fruit"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #256307007
* ^expansion.contains[=].display = "Banana"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #256313003
* ^expansion.contains[=].display = "Pineapple"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #256319004
* ^expansion.contains[=].display = "Carrot"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #256326004
* ^expansion.contains[=].display = "Celery"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #256350002
* ^expansion.contains[=].display = "Almond"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #256352005
* ^expansion.contains[=].display = "Walnut - nut"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #256353000
* ^expansion.contains[=].display = "Hazelnut"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #256355007
* ^expansion.contains[=].display = "Soyabean"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #256417003
* ^expansion.contains[=].display = "Horse dander"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #256419000
* ^expansion.contains[=].display = "Mouse epithelium"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #256435007
* ^expansion.contains[=].display = "Feather"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #256440004
* ^expansion.contains[=].display = "Wasp venom"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #256443002
* ^expansion.contains[=].display = "Egg white"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #256504004
* ^expansion.contains[=].display = "Polycarbonate dental material"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #260108001
* ^expansion.contains[=].display = "Wormwood pollen"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #260118006
* ^expansion.contains[=].display = "Wall pellitory pollen"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #260126003
* ^expansion.contains[=].display = "Olive pollen"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #260152009
* ^expansion.contains[=].display = "Cat dander"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #260153004
* ^expansion.contains[=].display = "Cow dander"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #260154005
* ^expansion.contains[=].display = "Dog dander"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #260156007
* ^expansion.contains[=].display = "Mouse urine proteins"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #260167008
* ^expansion.contains[=].display = "Sesame seed"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #260176001
* ^expansion.contains[=].display = "Kiwi fruit"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #260177005
* ^expansion.contains[=].display = "Melon"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #260179008
* ^expansion.contains[=].display = "Mango fruit"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #261243003
* ^expansion.contains[=].display = "Brass"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #264287008
* ^expansion.contains[=].display = "Animal dander"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #264295007
* ^expansion.contains[=].display = "Cow's milk protein"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #264331002
* ^expansion.contains[=].display = "Grain"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #264337003
* ^expansion.contains[=].display = "Seed"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #276310004
* ^expansion.contains[=].display = "Animal hair"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #278840001
* ^expansion.contains[=].display = "Shrimp"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #280939008
* ^expansion.contains[=].display = "Insect venom"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #288328004
* ^expansion.contains[=].display = "Bee venom"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #289122001
* ^expansion.contains[=].display = "Cosmetic material"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #289949002
* ^expansion.contains[=].display = "Cypress pollen"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #303300008
* ^expansion.contains[=].display = "Egg protein"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #303314008
* ^expansion.contains[=].display = "Scorpion venom"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #303315009
* ^expansion.contains[=].display = "Spider venom"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #311846002
* ^expansion.contains[=].display = "Pyrethroid insecticide"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #320835005
* ^expansion.contains[=].display = "Pollen allergy preparations"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #346313005
* ^expansion.contains[=].display = "Allergen extract vaccine"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #346364006
* ^expansion.contains[=].display = "Cat allergy vaccine"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #346405008
* ^expansion.contains[=].display = "Dog allergy vaccine"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #346467003
* ^expansion.contains[=].display = "Horse allergy vaccine"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #346468008
* ^expansion.contains[=].display = "House dust allergy vaccine"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #346469000
* ^expansion.contains[=].display = "House mite allergy vaccine"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #386936005
* ^expansion.contains[=].display = "Azelaic acid"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #387293003
* ^expansion.contains[=].display = "Anthralin"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #387398009
* ^expansion.contains[=].display = "Podophyllum resin"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #391737006
* ^expansion.contains[=].display = "Almond oil"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #396031000
* ^expansion.contains[=].display = "Dimethicone"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #406774009
* ^expansion.contains[=].display = "Fish derived omega 3 fatty acid"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #409568008
* ^expansion.contains[=].display = "Pentavalent botulinum toxoid vaccine"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #410853002
* ^expansion.contains[=].display = "Perfluorochemical"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #412061001
* ^expansion.contains[=].display = "Blueberries"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #412068007
* ^expansion.contains[=].display = "Rye"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #412070003
* ^expansion.contains[=].display = "Vanilla"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #412071004
* ^expansion.contains[=].display = "Wheat"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #412145001
* ^expansion.contains[=].display = "Hair dye"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #412150007
* ^expansion.contains[=].display = "Insect debris"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #412153009
* ^expansion.contains[=].display = "Rabbit dander"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #412156001
* ^expansion.contains[=].display = "Silk"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #412161004
* ^expansion.contains[=].display = "Wool"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #412357001
* ^expansion.contains[=].display = "Corn"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #414285001
* ^expansion.contains[=].display = "Allergy to food"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #415710007
* ^expansion.contains[=].display = "Terpene"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #416098002
* ^expansion.contains[=].display = "Allergy to drug"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #418266005
* ^expansion.contains[=].display = "Yellow paraffin"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #418268006
* ^expansion.contains[=].display = "Bacillus Calmette-Guerin antigen-containing product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #418471000
* ^expansion.contains[=].display = "Propensity to adverse reactions to food"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #418490008
* ^expansion.contains[=].display = "Tetanolysin"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #418504009
* ^expansion.contains[=].display = "Oat"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #418785009
* ^expansion.contains[=].display = "Perfume"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #418794003
* ^expansion.contains[=].display = "Tetanospasmin"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #418920007
* ^expansion.contains[=].display = "Adhesive agent"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #419199007
* ^expansion.contains[=].display = "Allergy to substance"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #419420009
* ^expansion.contains[=].display = "Watermelon"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #419511003
* ^expansion.contains[=].display = "Propensity to adverse reactions to drug"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #419604006
* ^expansion.contains[=].display = "Weed pollen"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #419633007
* ^expansion.contains[=].display = "White paraffin"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #421556008
* ^expansion.contains[=].display = "Capsicum - pepper"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #425620007
* ^expansion.contains[=].display = "Metal"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #428601009
* ^expansion.contains[=].display = "Paratyphoid vaccine"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #430503006
* ^expansion.contains[=].display = "Glutamate"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #707239006
* ^expansion.contains[=].display = "Corynebacterium spp toxin"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #710179004
* ^expansion.contains[=].display = "Lupine seed"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #710183004
* ^expansion.contains[=].display = "Rabbit - meat"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #710943006
* ^expansion.contains[=].display = "Cockroach protein"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #726759005
* ^expansion.contains[=].display = "Cuttlefish"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #726764009
* ^expansion.contains[=].display = "Broad bean"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #734881000
* ^expansion.contains[=].display = "Tomato"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #735006003
* ^expansion.contains[=].display = "Squid"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #735029006
* ^expansion.contains[=].display = "Shellfish"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #735030001
* ^expansion.contains[=].display = "Garlic"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #735045008
* ^expansion.contains[=].display = "Mushroom"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #735046009
* ^expansion.contains[=].display = "Nutmeg"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #735047000
* ^expansion.contains[=].display = "Onion"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #735049002
* ^expansion.contains[=].display = "Peach"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #735053000
* ^expansion.contains[=].display = "Potato"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #735211005
* ^expansion.contains[=].display = "Coconut"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #735215001
* ^expansion.contains[=].display = "Apple"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #735245003
* ^expansion.contains[=].display = "Cod"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #735248001
* ^expansion.contains[=].display = "Cherry"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #735341005
* ^expansion.contains[=].display = "Fish oil"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #735971005
* ^expansion.contains[=].display = "Fish"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #735977009
* ^expansion.contains[=].display = "Marine crustacean"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #735979007
* ^expansion.contains[=].display = "Octopus"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #736031006
* ^expansion.contains[=].display = "Oyster"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #736159005
* ^expansion.contains[=].display = "Crab"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #736162008
* ^expansion.contains[=].display = "Lobster"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #736258006
* ^expansion.contains[=].display = "Insect salivary substance"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #762766007
* ^expansion.contains[=].display = "Edible substance"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #762952008
* ^expansion.contains[=].display = "Peanut"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #767406000
* ^expansion.contains[=].display = "Sulfite and/or sulfite derivative"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #772245002
* ^expansion.contains[=].display = "Wool alcohol"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #774618008
* ^expansion.contains[=].display = "Whole cell Bordetella pertussis and Clostridium tetani toxoid adsorbed and Corynebacterium diphtheriae toxoid antigens only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #774702006
* ^expansion.contains[=].display = "Bacillus Calmette-Guerin antigen only product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #775641005
* ^expansion.contains[=].display = "Clostridium tetani toxoid adsorbed and Corynebacterium diphtheriae toxoid antigens only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #777725002
* ^expansion.contains[=].display = "Clostridium tetani toxoid antigen adsorbed only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #782197009
* ^expansion.contains[=].display = "Intolerance to substance"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #782594005
* ^expansion.contains[=].display = "Allergy to soy protein"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #787859002
* ^expansion.contains[=].display = "Vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836368004
* ^expansion.contains[=].display = "Bacteria antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836369007
* ^expansion.contains[=].display = "Virus antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836374004
* ^expansion.contains[=].display = "Hepatitis B virus antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836375003
* ^expansion.contains[=].display = "Hepatitis A virus antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836377006
* ^expansion.contains[=].display = "Influenza virus antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836378001
* ^expansion.contains[=].display = "Japanese encephalitis virus antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836379009
* ^expansion.contains[=].display = "Human papillomavirus antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836380007
* ^expansion.contains[=].display = "Haemophilus influenzae type b antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836381006
* ^expansion.contains[=].display = "Corynebacterium diphtheriae antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836382004
* ^expansion.contains[=].display = "Measles morbillivirus antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836383009
* ^expansion.contains[=].display = "Vibrio cholerae antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836384003
* ^expansion.contains[=].display = "Bacillus anthracis antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836385002
* ^expansion.contains[=].display = "Yellow fever virus antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836387005
* ^expansion.contains[=].display = "Rotavirus antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836388000
* ^expansion.contains[=].display = "Rubella virus antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836389008
* ^expansion.contains[=].display = "Vaccinia virus antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836390004
* ^expansion.contains[=].display = "Salmonella enterica subspecies enterica serovar Typhi antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836393002
* ^expansion.contains[=].display = "Rabies lyssavirus antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836397001
* ^expansion.contains[=].display = "Coxiella burnetii antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836398006
* ^expansion.contains[=].display = "Streptococcus pneumoniae antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836401009
* ^expansion.contains[=].display = "Neisseria meningitidis antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836402002
* ^expansion.contains[=].display = "Bacillus Calmette-Guerin antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836403007
* ^expansion.contains[=].display = "Tick-borne encephalitis virus antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836495005
* ^expansion.contains[=].display = "Human alphaherpesvirus 3 antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836498007
* ^expansion.contains[=].display = "Mumps orthorubulavirus antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #836500008
* ^expansion.contains[=].display = "Haemophilus influenzae type b and Neisseria meningitidis serogroup C antigens only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #840535000
* ^expansion.contains[=].display = "Severe acute respiratory syndrome coronavirus 2 antibody"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #840536004
* ^expansion.contains[=].display = "Severe acute respiratory syndrome coronavirus 2 antigen"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #840549009
* ^expansion.contains[=].display = "Yersinia pestis antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #840599008
* ^expansion.contains[=].display = "Borrelia burgdorferi antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #863911006
* ^expansion.contains[=].display = "Clostridium tetani antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871737006
* ^expansion.contains[=].display = "Mumps orthorubulavirus antigen only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871738001
* ^expansion.contains[=].display = "Live attenuated Mumps orthorubulavirus antigen only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871740006
* ^expansion.contains[=].display = "Inactivated whole Human poliovirus antigen only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871759008
* ^expansion.contains[=].display = "Acellular Bordetella pertussis only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871765008
* ^expansion.contains[=].display = "Measles morbillivirus antigen only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871768005
* ^expansion.contains[=].display = "Influenza virus antigen only vaccine product in nasal dose form"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871772009
* ^expansion.contains[=].display = "Influenza A virus subtype H1N1 antigen only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871803007
* ^expansion.contains[=].display = "Hepatitis A and Hepatitis B virus antigens only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871804001
* ^expansion.contains[=].display = "Hepatitis A virus and Salmonella enterica subspecies enterica serovar Typhi antigens only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871806004
* ^expansion.contains[=].display = "Haemophilus influenzae type b and Hepatitis B virus antigens only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871826000
* ^expansion.contains[=].display = "Clostridium tetani and Corynebacterium diphtheriae antigens only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871831003
* ^expansion.contains[=].display = "Measles morbillivirus and Mumps orthorubulavirus and Rubella virus antigens only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871837004
* ^expansion.contains[=].display = "Clostridium tetani and Corynebacterium diphtheriae and Human poliovirus antigens only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871839001
* ^expansion.contains[=].display = "Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Haemophilus influenzae type b antigens only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871866001
* ^expansion.contains[=].display = "Neisseria meningitidis serogroup C only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871871008
* ^expansion.contains[=].display = "Neisseria meningitidis serogroup A and C only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871873006
* ^expansion.contains[=].display = "Neisseria meningitidis serogroup A, C, W135 and Y only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871875004
* ^expansion.contains[=].display = "Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae antigens only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871876003
* ^expansion.contains[=].display = "Acellular Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae antigens only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871878002
* ^expansion.contains[=].display = "Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Human poliovirus antigens only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871887006
* ^expansion.contains[=].display = "Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Haemophilus influenzae type b and Human poliovirus antigens only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871889009
* ^expansion.contains[=].display = "Acellular Bordetella pertussis and Corynebacterium diphtheriae and Hepatitis B virus and inactivated whole Human poliovirus antigens only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871895005
* ^expansion.contains[=].display = "Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Haemophilus influenzae type b and Hepatitis B virus and Human poliovirus antigens only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871908002
* ^expansion.contains[=].display = "Human alphaherpesvirus 3 and Measles morbillivirus and Mumps orthorubulavirus and Rubella virus antigens only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871918007
* ^expansion.contains[=].display = "Rickettsia antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #871921009
* ^expansion.contains[=].display = "Staphylococcus toxoid vaccine"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #1003736004
* ^expansion.contains[=].display = "Mammalian milk based food"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #1052328007
* ^expansion.contains[=].display = "Streptococcus pneumoniae Danish serotype 4, 6B, 9V, 14, 18C, 19F, and 23F capsular polysaccharide antigens conjugated only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #1119254000
* ^expansion.contains[=].display = "Streptococcus pneumoniae Danish serotype 1, 3, 4, 5, 6A, 6B, 7F, 9V, 14, 18C, 19A, 19F, and 23F capsular polysaccharide antigens only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #1137358000
* ^expansion.contains[=].display = "Piper - pepper"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #601000221108
* ^expansion.contains[=].display = "Bordetella pertussis antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #971000221109
* ^expansion.contains[=].display = "Live attenuated Salmonella enterica subspecies enterica serovar Typhi antigen only vaccine product in oral dose form"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #1001000221103
* ^expansion.contains[=].display = "Inactivated whole Vibrio cholerae antigen only vaccine product in oral dose form"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #1011000221100
* ^expansion.contains[=].display = "Live attenuated Vibrio cholerae antigen only vaccine product in oral dose form"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #1031000221108
* ^expansion.contains[=].display = "Human poliovirus antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #1051000221104
* ^expansion.contains[=].display = "Live attenuated Human poliovirus serotypes 1 and 3 antigens only vaccine product in oral dose form"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #1081000221109
* ^expansion.contains[=].display = "Live attenuated Rotavirus antigen only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #1101000221104
* ^expansion.contains[=].display = "Clostridium tetani toxoid antigen-containing vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #1121000221106
* ^expansion.contains[=].display = "Live attenuated Yellow fever virus antigen only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #1131000221109
* ^expansion.contains[=].display = "Vaccine product containing only inactivated whole Rabies lyssavirus antigen"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #1181000221105
* ^expansion.contains[=].display = "Influenza virus antigen only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #1801000221105
* ^expansion.contains[=].display = "Streptococcus pneumoniae capsular polysaccharide antigen conjugated only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #1981000221108
* ^expansion.contains[=].display = "Neisseria meningitidis serogroup B antigen only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #2171000221104
* ^expansion.contains[=].display = "Salmonella enterica subspecies enterica serovar Typhi capsular polysaccharide unconjugated antigen only vaccine product in parenteral dose form"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #2221000221107
* ^expansion.contains[=].display = "Live attenuated Human alphaherpesvirus 3 only vaccine product"
* ^expansion.contains[+].system = $SCT
* ^expansion.contains[=].code = #442461000124102
* ^expansion.contains[=].display = "Hickory nut"
* include codes from system $SCT_or_SCTINT
    where constraint = "(< 373873005 |Pharmaceutical / biologic product (product)| OR < 105590001 |Substance (substance)| OR < 418038007 |Propensity to adverse reactions to substance (finding)|) AND ^ 816080008 |International Patient Summary (foundation metadata concept)|"

ValueSet: VSWHOATC 
Id: vs-whoatc
Title: "WHO ATC"
Description: "World Health Organization Anatomical Therapeutic Chemical (ATC) classification system. Note: The currently implemented code system and the value set expansion contain only a set of example ATC codes, not the complete code system content."
* ^experimental = false
* include codes from system http://www.whocc.no/atc

CodeSystem: CSReasonForEncounter
Id: cs-reason-for-encounter
Title: "Reason For Encounter"
Description: "Encounter reasons."
* ^experimental = false
* ^caseSensitive = true
* #-30 "Medical examin/health eval complete" "Needs definition"
* #-31 "Medical examin/health eval partial" "Needs definition"
* #-32 "Sensitivity test" "Needs definition"
* #-33 "Microbiological/immunological test" "Needs definition"
* #-34 "Blood test" "Needs definition"
* #-35 "Urine test" "Needs definition"
* #-36 "Faeces test" "Needs definition"
* #-37 "Histological/exfoliative cytology" "Needs definition"
* #-38 "Other laboratory test NEC" "Needs definition"
* #-39 "Physical function test" "Needs definition"
* #-40 "Diagnostic endoscopy" "Needs definition"
* #-41 "Diagnostic radiology/imaging" "Needs definition"
* #-42 "Electrical tracing" "Needs definition"
* #-43 "Other diagnostic procedure" "Needs definition"
* #-44 "Preventive immunization/medication" "Needs definition"
* #-45 "Observ/health educat/advice/diet" "Needs definition"
* #-46 "Consultation primary care provider" "Needs definition"
* #-47 "Consultation with specialist" "Needs definition"
* #-48 "Clarification/discussion rfe/demand" "Needs definition"
* #-49 "Other preventive procedure" "Needs definition"
* #-50 "Medication/prescr/renewal/inject" "Needs definition"
* #-51 "I&d/flush/aspiration" "Needs definition"
* #-52 "Exc/remov/biopsy/destruc/debrid/caut" "Needs definition"
* #-53 "Instrument/catheter/intubate/dilate" "Needs definition"
* #-54 "Repair/fix-suture/cast/prosth device" "Needs definition"
* #-55 "Local injection/infiltration" "Needs definition"
* #-56 "Dressing/pressure/compress/tamponade" "Needs definition"
* #-57 "Physical medicine/rehabilitation" "Needs definition"
* #-58 "Therapeutic counselling/listening" "Needs definition"
* #-59 "Other therap proced/minor surg NEC" "Needs definition"
* #-60 "Result test/procedure" "Needs definition"
* #-61 "Result exam/test/lett oth provider" "Needs definition"
* #-62 "Administrative procedure" "Needs definition"
* #-63 "Follow-up encounter unspecified" "Needs definition"
* #-64 "Encounter/prob initiated by provider" "Needs definition"
* #-65 "Enc/prob init by other than pt/prov" "Needs definition"
* #-66 "Referral to non-MD provider" "Needs definition"
* #-67 "Referral to physician/hospital" "Needs definition"
* #-68 "Other referral NEC" "Needs definition"
* #-69 "Other reason for encounter NEC" "Needs definition"
* #A01 "Pain general/multiple sites" "Needs definition"
* #A02 "Chills" "Needs definition"
* #A03 "Fever" "Needs definition"
* #A04 "Weakness/tiredness general" "Needs definition"
* #A05 "Feeling ill" "Needs definition"
* #A06 "Fainting/syncope" "Needs definition"
* #A07 "Coma" "Needs definition"
* #A08 "Swelling" "Needs definition"
* #A09 "Sweating problem" "Needs definition"
* #A10 "Bleeding/haemorrhage NOS" "Needs definition"
* #A11 "Chest pain NOS" "Needs definition"
* #A13 "Concern/fear medical treatment" "Needs definition"
* #A16 "Irritable infant" "Needs definition"
* #A18 "Concern about appearance" "Needs definition"
* #A20 "Euthanasia request/discussion" "Needs definition"
* #A21 "Risk factor for malignancy" "Needs definition"
* #A23 "Risk factor NOS" "Needs definition"
* #A25 "Fear of death/dying" "Needs definition"
* #A26 "NOS" "Needs definition"
* #A27 "Fear of other disease NOS" "Needs definition"
* #A28 "Limited function/disability NOS" "Needs definition"
* #A29 "General symptom/complaint other" "Needs definition"
* #A70 "Tuberculosis" "Needs definition"
* #A71 "Measles" "Needs definition"
* #A72 "Chickenpox" "Needs definition"
* #A73 "Malaria" "Needs definition"
* #A74 "Rubella / Congenital Rubella Syndrome" "Needs definition"
* #A75 "Infectious mononucleosis" "Needs definition"
* #A76 "Viral exanthem other" "Needs definition"
* #A77 "Viral disease other/NOS" "Needs definition"
* #A78 "Infectious disease other/NOS" "Needs definition"
* #A79 "Malignancy NOS" "Needs definition"
* #A80 "Trauma/injury NOS" "Needs definition"
* #A81 "Multiple trauma/injuries" "Needs definition"
* #A82 "Secondary effect of trauma" "Needs definition"
* #A84 "Poisoning by medical agent" "Needs definition"
* #A85 "Adverse effect medical agent" "Needs definition"
* #A86 "Toxic effect non-medicinal substance" "Needs definition"
* #A87 "Complication of medical treatment" "Needs definition"
* #A88 "Adverse effect physical factor" "Needs definition"
* #A89 "Effect prosthetic device" "Needs definition"
* #A90 "Congenital anomaly NOS/multiple" "Needs definition"
* #A91 "Abnormal result investigation NOS" "Needs definition"
* #A92 "Allergy/allergic reaction NOS" "Needs definition"
* #A93 "Premature newborn" "Needs definition"
* #A94 "Perinatal morbidity other" "Needs definition"
* #A95 "Perinatal mortality" "Needs definition"
* #A96 "Death" "Needs definition"
* #A97 "No disease" "Needs definition"
* #A98 "Health maint/preventive medicine" "Needs definition"
* #A99 "Disease/condition unspecnature/site" "Needs definition"
* #B02 "Lymph gland(s) enlarged/painful" "Needs definition"
* #B04 "Blood symptom/complaint" "Needs definition"
* #B25 "Fear of AIDS/HIV" "Needs definition"
* #B26 "Fear cancer blood/lymph" "Needs definition"
* #B27 "Fear blood/lymph disease other" "Needs definition"
* #B28 "Limited function/disability (B)" "Needs definition"
* #B29 "Lymph/immune mech sympt/complt other" "Needs definition"
* #B70 "Lymphadenitis acute" "Needs definition"
* #B71 "Lymphadenitis chronic/non-specific" "Needs definition"
* #B72 "Hodgkin Lymphoma" "Needs definition"
* #B73 "Leukaemia" "Needs definition"
* #B74 "Malignant neoplasm blood other" "Needs definition"
* #B75 "Neoplasm blood benign/unspecified" "Needs definition"
* #B76 "Ruptured spleen traumatic" "Needs definition"
* #B77 "Injury blood/lymph/spleen other" "Needs definition"
* #B78 "Hereditary haemolytic anaemia" "Needs definition"
* #B79 "Congen anomaly blood/lymph other" "Needs definition"
* #B80 "Iron deficiency anaemia" "Needs definition"
* #B81 "Anaemia vit B12/folate deficiency" "Needs definition"
* #B82 "Anaemia other/unspecified" "Needs definition"
* #B83 "Purpura/coagulation defect" "Needs definition"
* #B84 "Unexplained abnormal white cells" "Needs definition"
* #B87 "Splenomegaly" "Needs definition"
* #B90 "HIV-infection/AIDS" "Needs definition"
* #B99 "Blood/lymph/spleen disease other" "Needs definition"
* #D01 "Abdominal pain/cramps general" "Needs definition"
* #D02 "Abdominal pain epigastric" "Needs definition"
* #D03 "Heartburn" "Needs definition"
* #D04 "Rectal/anal pain" "Needs definition"
* #D05 "Perianal itching" "Needs definition"
* #D06 "Abdominal pain localized other" "Needs definition"
* #D07 "Dyspepsia/indigestion" "Needs definition"
* #D08 "Flatulence/gas/belching" "Needs definition"
* #D09 "Nausea" "Needs definition"
* #D10 "Vomiting" "Needs definition"
* #D11 "Diarrhoea" "Needs definition"
* #D12 "Constipation" "Needs definition"
* #D13 "Jaundice" "Needs definition"
* #D14 "Haematemesis/vomiting blood" "Needs definition"
* #D15 "Melaena" "Needs definition"
* #D16 "Rectal bleeding" "Needs definition"
* #D17 "Incontinence of bowel" "Needs definition"
* #D18 "Change in faeces/bowel movements" "Needs definition"
* #D19 "Teeth/gum symptom/complaint" "Needs definition"
* #D20 "Mouth/tongue/lip symptom/complaint" "Needs definition"
* #D21 "Swallowing problem" "Needs definition"
* #D23 "Hepatomegaly" "Needs definition"
* #D24 "Abdominal mass NOS" "Needs definition"
* #D25 "Abdominal distension" "Needs definition"
* #D26 "Fear of cancer of digestive system" "Needs definition"
* #D27 "Fear of digestive disease other" "Needs definition"
* #D28 "Limited function/disability (D)" "Needs definition"
* #D29 "Digestive symptom/complaint other" "Needs definition"
* #D70 "Gastrointestinal infection" "Needs definition"
* #D71 "Mumps" "Needs definition"
* #D72 "Viral hepatitis" "Needs definition"
* #D73 "Gastroenteritis presumed infection" "Needs definition"
* #D74 "Malignant neoplasm stomach" "Needs definition"
* #D75 "Malignant neoplasm colon/rectum" "Needs definition"
* #D76 "Malignant neoplasm pancreas" "Needs definition"
* #D77 "Malignant digestive neopl other/NOS" "Needs definition"
* #D78 "Neoplasm digestive benign/unspecif" "Needs definition"
* #D79 "Foreign body digestive system" "Needs definition"
* #D80 "Injury digestive system other" "Needs definition"
* #D81 "Congenital anomaly digestive system" "Needs definition"
* #D82 "Teeth/gum disease" "Needs definition"
* #D83 "Mouth/tongue/lip disease" "Needs definition"
* #D84 "Oesophagus disease" "Needs definition"
* #D85 "Duodenal ulcer" "Needs definition"
* #D86 "Peptic ulcer other" "Needs definition"
* #D87 "Stomach function disorder" "Needs definition"
* #D88 "Appendicitis" "Needs definition"
* #D89 "Inguinal hernia" "Needs definition"
* #D90 "Hiatus hernia" "Needs definition"
* #D91 "Abdominal hernia other" "Needs definition"
* #D92 "Diverticular disease" "Needs definition"
* #D93 "Irritable bowel syndrome" "Needs definition"
* #D94 "Chronic enteritis/ulcerative colitis" "Needs definition"
* #D95 "Anal fissure/perianal abscess" "Needs definition"
* #D96 "Worms/other parasites" "Needs definition"
* #D97 "Liver disease NOS" "Needs definition"
* #D98 "Cholecystitis/cholelithiasis" "Needs definition"
* #D99 "Disease digestive system other" "Needs definition"
* #F01 "Eye pain" "Needs definition"
* #F02 "Red eye" "Needs definition"
* #F03 "Eye discharge" "Needs definition"
* #F04 "Visual floaters/spots" "Needs definition"
* #F05 "Visual disturbance other" "Needs definition"
* #F13 "Eye sensation abnormal" "Needs definition"
* #F14 "Eye movements abnormal" "Needs definition"
* #F15 "Eye appearance abnormal" "Needs definition"
* #F16 "Eyelid symptom/complaint" "Needs definition"
* #F17 "Glasses symptom/complaint" "Needs definition"
* #F18 "Contact lens symptom/complaint" "Needs definition"
* #F27 "Fear of eye disease" "Needs definition"
* #F28 "Limited function/disability (F)" "Needs definition"
* #F29 "Eye symptom/complaint other" "Needs definition"
* #F70 "Conjunctivitis infectious" "Needs definition"
* #F71 "Conjunctivitis allergic" "Needs definition"
* #F72 "Blepharitis/stye/chalazion" "Needs definition"
* #F73 "Eye infection/inflammation other" "Needs definition"
* #F74 "Neoplasm of eye/adnexa" "Needs definition"
* #F75 "Contusion/haemorrhage eye" "Needs definition"
* #F76 "Foreign body in eye" "Needs definition"
* #F79 "Injury eye other" "Needs definition"
* #F80 "Blocked lacrimal duct of infant" "Needs definition"
* #F81 "Congenital anomaly eye other" "Needs definition"
* #F82 "Detached retina" "Needs definition"
* #F83 "Retinopathy" "Needs definition"
* #F84 "Macular degeneration" "Needs definition"
* #F85 "Corneal ulcer" "Needs definition"
* #F86 "Trachoma" "Needs definition"
* #F91 "Refractive error" "Needs definition"
* #F92 "Cataract" "Needs definition"
* #F93 "Glaucoma" "Needs definition"
* #F94 "Blindness" "Needs definition"
* #F95 "Strabismus" "Needs definition"
* #F99 "Eye/adnexa disease other" "Needs definition"
* #H01 "Ear pain/earache" "Needs definition"
* #H02 "Hearing complaint" "Needs definition"
* #H03 "ringing/buzzing ear" "Needs definition"
* #H04 "Ear discharge" "Needs definition"
* #H05 "Bleeding ear" "Needs definition"
* #H13 "Plugged feeling ear" "Needs definition"
* #H15 "Concern with appearance of ears" "Needs definition"
* #H27 "Fear of ear disease" "Needs definition"
* #H28 "Limited function/disability (H)" "Needs definition"
* #H29 "Ear symptom/complaint other" "Needs definition"
* #H70 "Otitis externa" "Needs definition"
* #H71 "Acute otitis media/myringitis" "Needs definition"
* #H72 "Serous otitis media" "Needs definition"
* #H73 "Eustachian salpingitis" "Needs definition"
* #H74 "Chronic otitis media" "Needs definition"
* #H75 "Neoplasm of ear" "Needs definition"
* #H76 "Foreign body in ear" "Needs definition"
* #H77 "Perforation ear drum" "Needs definition"
* #H78 "Superficial injury of ear" "Needs definition"
* #H79 "Ear injury other" "Needs definition"
* #H80 "Congenital anomaly of ear" "Needs definition"
* #H81 "Excessive ear wax" "Needs definition"
* #H82 "Vertiginous syndrome" "Needs definition"
* #H83 "Otosclerosis" "Needs definition"
* #H84 "Presbyacusis" "Needs definition"
* #H85 "Acoustic trauma" "Needs definition"
* #H86 "Deafness" "Needs definition"
* #H99 "Ear/mastoid disease other" "Needs definition"
* #K01 "Heart pain" "Needs definition"
* #K02 "Pressure/tightness of heart" "Needs definition"
* #K03 "Cardiovascular pain NOS" "Needs definition"
* #K04 "Palpitations/awareness of heart" "Needs definition"
* #K05 "Irregular heartbeat other" "Needs definition"
* #K06 "Prominent veins" "Needs definition"
* #K07 "Swollen ankles/oedema" "Needs definition"
* #K22 "Risk factor cardiovascular disease" "Needs definition"
* #K24 "Fear of heart disease" "Needs definition"
* #K25 "Fear of hypertension" "Needs definition"
* #K27 "Fear cardiovascular disease other" "Needs definition"
* #K28 "Limited function/disability (K)" "Needs definition"
* #K29 "Cardiovascular sympt/complt other" "Needs definition"
* #K70 "Infection of circulatory system" "Needs definition"
* #K71 "Rheumatic fever/heart disease" "Needs definition"
* #K72 "Neoplasm cardiovascular" "Needs definition"
* #K73 "Congenital anomaly cardiovascular" "Needs definition"
* #K74 "Ischaemic heart dis with angina" "Needs definition"
* #K75 "Acute myocardial infarction" "Needs definition"
* #K76 "Ischaemic heart dis without angina" "Needs definition"
* #K77 "Heart failure" "Needs definition"
* #K78 "Atrial fibrillation/flutter" "Needs definition"
* #K79 "Paroxysmal tachycardia" "Needs definition"
* #K80 "Cardiac arrhythmia NOS" "Needs definition"
* #K81 "Heart/arterial murmur NOS" "Needs definition"
* #K82 "Pulmonary heart disease" "Needs definition"
* #K83 "Heart valve disease NOS" "Needs definition"
* #K84 "Heart disease other" "Needs definition"
* #K85 "Elevated blood pressure" "Needs definition"
* #K86 "Hypertension uncomplicated" "Needs definition"
* #K87 "Hypertension complicated" "Needs definition"
* #K88 "Postural hypotension" "Needs definition"
* #K89 "Transient cerebral ischaemia" "Needs definition"
* #K90 "Stroke/cerebrovascular accident" "Needs definition"
* #K91 "Cerebrovascular disease" "Needs definition"
* #K92 "Atherosclerosis/periph vascular dis" "Needs definition"
* #K93 "Pulmonary embolism" "Needs definition"
* #K94 "Phlebitis/thrombophlebitis" "Needs definition"
* #K95 "Varicose veins of leg" "Needs definition"
* #K96 "Haemorrhoids" "Needs definition"
* #K99 "Cardiovascular disease other" "Needs definition"
* #L01 "Neck symptom/complaint" "Needs definition"
* #L02 "Back symptom/complaint" "Needs definition"
* #L03 "Low back symptom/complaint" "Needs definition"
* #L04 "Chest symptom/complaint" "Needs definition"
* #L05 "Flank/axilla symptom/complaint" "Needs definition"
* #L07 "Jaw symptom/complaint" "Needs definition"
* #L08 "Shoulder symptom/complaint" "Needs definition"
* #L09 "Arm symptom/complaint" "Needs definition"
* #L10 "Elbow symptom/complaint" "Needs definition"
* #L11 "Wrist symptom/complaint" "Needs definition"
* #L12 "Hand/finger symptom/complaint" "Needs definition"
* #L13 "Hip symptom/complaint" "Needs definition"
* #L14 "Leg/thigh symptom/complaint" "Needs definition"
* #L15 "Knee symptom/complaint" "Needs definition"
* #L16 "Ankle symptom/complaint" "Needs definition"
* #L17 "Foot/toe symptom/complaint" "Needs definition"
* #L18 "Muscle pain" "Needs definition"
* #L19 "Muscle symptom/complaint NOS" "Needs definition"
* #L20 "Joint symptom/complaint NOS" "Needs definition"
* #L26 "Fear of cancer musculoskeletal" "Needs definition"
* #L27 "Fear of musculoskeletal dis other" "Needs definition"
* #L28 "Limited function/disability (L)" "Needs definition"
* #L29 "Musculoskeletal sympt/complt other" "Needs definition"
* #L70 "Infection of musculoskeletal system" "Needs definition"
* #L71 "Malignant neoplasm musculoskeletal" "Needs definition"
* #L72 "Fracture: radius/ulna" "Needs definition"
* #L73 "Fracture: tibia/fibula" "Needs definition"
* #L74 "Fracture: hand/foot bone" "Needs definition"
* #L75 "Fracture: femur" "Needs definition"
* #L76 "Fracture: other" "Needs definition"
* #L77 "Sprain/strain of ankle" "Needs definition"
* #L78 "Sprain/strain of knee" "Needs definition"
* #L79 "Sprain/strain of joint NOS" "Needs definition"
* #L80 "Dislocation/subluxation" "Needs definition"
* #L81 "Injury musculoskeletal NOS" "Needs definition"
* #L82 "Congenital anomaly musculoskeletal" "Needs definition"
* #L83 "Neck syndrome" "Needs definition"
* #L84 "Back syndrome without radiat pain" "Needs definition"
* #L85 "Acquired deformity of spine" "Needs definition"
* #L86 "Back syndrome with radiating pain" "Needs definition"
* #L87 "Bursitis/tendinitis/synovitis NOS" "Needs definition"
* #L88 "Rheumatoid/seropositive arthritis" "Needs definition"
* #L89 "Osteoarthrosis of hip" "Needs definition"
* #L90 "Osteoarthrosis of knee" "Needs definition"
* #L91 "Osteoarthrosis other" "Needs definition"
* #L92 "Shoulder syndrome" "Needs definition"
* #L93 "Tennis elbow" "Needs definition"
* #L94 "Osteochondrosis" "Needs definition"
* #L95 "Osteoporosis" "Needs definition"
* #L96 "Acute internal damage knee" "Needs definition"
* #L97 "Neoplasm musculoskel benign/unspec" "Needs definition"
* #L98 "Acquired deformity of limb" "Needs definition"
* #L99 "Musculoskeletal disease other" "Needs definition"
* #N01 "Headache" "Needs definition"
* #N03 "Pain face" "Needs definition"
* #N04 "Restless legs" "Needs definition"
* #N05 "Tingling fingers/feet/toes" "Needs definition"
* #N06 "Sensation disturbance other" "Needs definition"
* #N07 "Convulsion/seizure" "Needs definition"
* #N08 "Abnormal involuntary movements" "Needs definition"
* #N16 "Disturbance of smell/taste" "Needs definition"
* #N17 "Vertigo/dizziness" "Needs definition"
* #N18 "Paralysis/weakness" "Needs definition"
* #N19 "Speech disorder" "Needs definition"
* #N26 "Fear cancer neurological system" "Needs definition"
* #N27 "Fear of neurological disease other" "Needs definition"
* #N28 "Limited function/disability (N)" "Needs definition"
* #N29 "Neurological sympt/complt other" "Needs definition"
* #N70 "Poliomyelitis" "Needs definition"
* #N71 "Meningitis / Encephalitis" "Needs definition"
* #N72 "Tetanus" "Needs definition"
* #N73 "Neurological infection other" "Needs definition"
* #N74 "Malignant neoplasm nervous system" "Needs definition"
* #N75 "Benign neoplasm nervous system" "Needs definition"
* #N76 "Neoplasm nervous system unspecified" "Needs definition"
* #N79 "Concussion" "Needs definition"
* #N80 "Head injury other" "Needs definition"
* #N81 "Injury nervous system other" "Needs definition"
* #N85 "Congenital anomaly neurological" "Needs definition"
* #N86 "Multiple sclerosis" "Needs definition"
* #N87 "Parkinsonism" "Needs definition"
* #N88 "Epilepsy" "Needs definition"
* #N89 "Migraine" "Needs definition"
* #N90 "Cluster headache" "Needs definition"
* #N91 "Facial paralysis/bell's palsy" "Needs definition"
* #N92 "Trigeminal neuralgia" "Needs definition"
* #N93 "Carpal tunnel syndrome" "Needs definition"
* #N94 "Peripheral neuritis/neuropathy" "Needs definition"
* #N95 "Tension headache" "Needs definition"
* #N99 "Neurological disease other" "Needs definition"
* #P01 "Feeling anxious/nervous/tense" "Needs definition"
* #P02 "Acute stress reaction" "Needs definition"
* #P03 "Feeling depressed" "Needs definition"
* #P04 "Feeling/behaving irritable/angry" "Needs definition"
* #P05 "feeling/behaving old" "Needs definition"
* #P06 "Sleep disturbance" "Needs definition"
* #P07 "Sexual desire reduced" "Needs definition"
* #P08 "Sexual fulfilment reduced" "Needs definition"
* #P09 "Sexual preference concern" "Needs definition"
* #P10 "Stammering/stuttering/tic" "Needs definition"
* #P11 "Eating problem in child" "Needs definition"
* #P12 "Bedwetting/enuresis" "Needs definition"
* #P13 "Encopresis/bowel training problem" "Needs definition"
* #P15 "Chronic alcohol abuse" "Needs definition"
* #P16 "Acute alcohol abuse" "Needs definition"
* #P17 "Tobacco abuse" "Needs definition"
* #P18 "Medication abuse" "Needs definition"
* #P19 "Drug abuse" "Needs definition"
* #P20 "Memory disturbance" "Needs definition"
* #P22 "Child behaviour symptom/complaint" "Needs definition"
* #P23 "Adolescent behaviour sympt/compl" "Needs definition"
* #P24 "Specific learning problem" "Needs definition"
* #P25 "Phase of life problem adult" "Needs definition"
* #P27 "Fear of mental disorder" "Needs definition"
* #P28 "Limited function/disability (P)" "Needs definition"
* #P29 "Psychological sympt/compl other" "Needs definition"
* #P70 "Dementia" "Needs definition"
* #P71 "Organic psychosis other" "Needs definition"
* #P72 "Schizophrenia" "Needs definition"
* #P73 "Affective psychosis" "Needs definition"
* #P74 "Anxiety disorder/anxiety state" "Needs definition"
* #P75 "Somatization disorder" "Needs definition"
* #P76 "Depressive disorder" "Needs definition"
* #P77 "Suicide/suicide attempt" "Needs definition"
* #P78 "Neuraesthenia/surmenage" "Needs definition"
* #P79 "Phobia/compulsive disorder" "Needs definition"
* #P80 "Personality disorder" "Needs definition"
* #P81 "Hyperkinetic disorder" "Needs definition"
* #P82 "Post-traumatic stress disorder" "Needs definition"
* #P85 "Mental retardation" "Needs definition"
* #P86 "Anorexia nervosa/bulimia" "Needs definition"
* #P98 "Psychosis NOS/other" "Needs definition"
* #P99 "Psychological disorders other" "Needs definition"
* #R01 "Pain respiratory system" "Needs definition"
* #R02 "Shortness of breath/dyspnoea" "Needs definition"
* #R03 "Wheezing" "Needs definition"
* #R04 "Breathing problem other" "Needs definition"
* #R05 "Cough" "Needs definition"
* #R06 "Nose bleed/epistaxis" "Needs definition"
* #R07 "Sneezing/nasal congestion" "Needs definition"
* #R08 "Nose symptom/complaint other" "Needs definition"
* #R09 "Sinus symptom/complaint" "Needs definition"
* #R21 "Throat symptom/complaint" "Needs definition"
* #R23 "Voice symptom/complaint" "Needs definition"
* #R24 "Haemoptysis" "Needs definition"
* #R25 "Sputum/phlegm abnormal" "Needs definition"
* #R26 "Fear cancer respiratory system" "Needs definition"
* #R27 "Fear of respiratory disease other" "Needs definition"
* #R28 "Limited function/disability (R)" "Needs definition"
* #R29 "Respiratory symptom/complaint other" "Needs definition"
* #R71 "Whooping cough" "Needs definition"
* #R72 "Strep throat" "Needs definition"
* #R73 "Boil/abscess nose" "Needs definition"
* #R74 "Upper respiratory infection acute" "Needs definition"
* #R75 "Sinusitis acute/chronic" "Needs definition"
* #R76 "Tonsillitis acute" "Needs definition"
* #R77 "Laryngitis/tracheitis acute" "Needs definition"
* #R78 "Acute bronchitis/bronchiolitis" "Needs definition"
* #R79 "Chronic bronchitis" "Needs definition"
* #R80 "Influenza" "Needs definition"
* #R81 "Pneumonia" "Needs definition"
* #R82 "Pleurisy/pleural effusion" "Needs definition"
* #R83 "Respiratory infection other" "Needs definition"
* #R84 "Malignant neoplasm bronchus/lung" "Needs definition"
* #R85 "Malignant neopl respiratory other" "Needs definition"
* #R86 "Benign neoplasm respiratory" "Needs definition"
* #R87 "Foreign body nose/larynx/bronchus" "Needs definition"
* #R88 "Injury respiratory other" "Needs definition"
* #R89 "Congenital anomaly respiratory" "Needs definition"
* #R90 "Hypertrophy tonsils/adenoids" "Needs definition"
* #R92 "Neoplasm respiratory unspecified" "Needs definition"
* #R95 "Chron obstructive pulmonary disease" "Needs definition"
* #R96 "Asthma" "Needs definition"
* #R97 "Allergic rhinitis" "Needs definition"
* #R98 "Hyperventilation syndrome" "Needs definition"
* #R99 "Respiratory disease other" "Needs definition"
* #S01 "Pain/tenderness of skin" "Needs definition"
* #S02 "Pruritus" "Needs definition"
* #S03 "Warts" "Needs definition"
* #S04 "Lump/swelling localized" "Needs definition"
* #S05 "Lumps/swellings generalized" "Needs definition"
* #S06 "Rash localized" "Needs definition"
* #S07 "Rash generalized" "Needs definition"
* #S08 "Skin colour change" "Needs definition"
* #S09 "Infected finger/toe" "Needs definition"
* #S10 "Boil/carbuncle" "Needs definition"
* #S11 "Skin infection post-traumatic" "Needs definition"
* #S12 "Insect bite/sting" "Needs definition"
* #S13 "Animal/human bite" "Needs definition"
* #S14 "Burn/scald" "Needs definition"
* #S15 "Foreign body in skin" "Needs definition"
* #S16 "Bruise/contusion" "Needs definition"
* #S17 "Abrasion/scratch/blister" "Needs definition"
* #S18 "Laceration/cut" "Needs definition"
* #S19 "Skin injury other" "Needs definition"
* #S20 "Corn/callosity" "Needs definition"
* #S21 "Skin texture symptom/complaint" "Needs definition"
* #S22 "Nail symptom/complaint" "Needs definition"
* #S23 "Hair loss/baldness" "Needs definition"
* #S24 "Hair/scalp symptom/complaint other" "Needs definition"
* #S26 "Fear of cancer of skin" "Needs definition"
* #S27 "Fear of skin disease other" "Needs definition"
* #S28 "Limited function/disability (S)" "Needs definition"
* #S29 "Skin symptom/complaint other" "Needs definition"
* #S70 "Herpes zoster" "Needs definition"
* #S71 "Herpes simplex" "Needs definition"
* #S72 "Scabies/other acariasis" "Needs definition"
* #S73 "Pediculosis/skin infestation other" "Needs definition"
* #S74 "Dermatophytosis" "Needs definition"
* #S75 "Moniliasis/candidiasis skin" "Needs definition"
* #S76 "Skin infection other" "Needs definition"
* #S77 "Malignant neoplasm of skin" "Needs definition"
* #S78 "Lipoma" "Needs definition"
* #S79 "Neoplasm skin benign/unspecified" "Needs definition"
* #S80 "Solar keratosis/sunburn" "Needs definition"
* #S81 "Haemangioma/lymphangioma" "Needs definition"
* #S82 "Naevus/mole" "Needs definition"
* #S83 "Congenital skin anomaly other" "Needs definition"
* #S84 "Impetigo" "Needs definition"
* #S85 "Pilonidal cyst/fistula" "Needs definition"
* #S86 "Dermatitis seborrhoeic" "Needs definition"
* #S87 "Dermatitis/atopic eczema" "Needs definition"
* #S88 "Dermatitis contact/allergic" "Needs definition"
* #S89 "Diaper rash" "Needs definition"
* #S90 "Pityriasis rosea" "Needs definition"
* #S91 "Psoriasis" "Needs definition"
* #S92 "Sweat gland disease" "Needs definition"
* #S93 "Sebaceous cyst" "Needs definition"
* #S94 "Ingrowing nail" "Needs definition"
* #S95 "Molluscum contagiosum" "Needs definition"
* #S96 "Acne" "Needs definition"
* #S97 "Chronic ulcer skin" "Needs definition"
* #S98 "Urticaria" "Needs definition"
* #S99 "Skin disease other" "Needs definition"
* #T01 "Excessive thirst" "Needs definition"
* #T02 "Excessive appetite" "Needs definition"
* #T03 "Loss of appetite" "Needs definition"
* #T04 "Feeding problem of infant/child" "Needs definition"
* #T05 "Feeding problem of adult" "Needs definition"
* #T07 "Weight gain" "Needs definition"
* #T08 "Weight loss" "Needs definition"
* #T10 "Growth delay" "Needs definition"
* #T11 "Dehydration" "Needs definition"
* #T26 "Fear of cancer of endocrine system" "Needs definition"
* #T27 "Fear endocrine/metabol disease other" "Needs definition"
* #T28 "Limited function/disability (T)" "Needs definition"
* #T29 "Endocr/metab/nutr sympt/compl other" "Needs definition"
* #T70 "Endocrine infection" "Needs definition"
* #T71 "Malignant neoplasm thyroid" "Needs definition"
* #T72 "Benign neoplasm thyroid" "Needs definition"
* #T73 "Neoplasm endocrine other/unspecified" "Needs definition"
* #T78 "Thyroglossal duct/cyst" "Needs definition"
* #T80 "Congen anomaly endocrine/metabolic" "Needs definition"
* #T81 "Goitre" "Needs definition"
* #T82 "Obesity" "Needs definition"
* #T83 "Overweight" "Needs definition"
* #T85 "Hyperthyroidism/thyrotoxicosis" "Needs definition"
* #T86 "Hypothyroidism/myxoedema" "Needs definition"
* #T87 "Hypoglycaemia" "Needs definition"
* #T89 "Diabetes insulin dependent" "Needs definition"
* #T90 "Diabetes non-insulin dependent" "Needs definition"
* #T91 "Vitamin/nutritional deficiency" "Needs definition"
* #T92 "Gout" "Needs definition"
* #T93 "Lipid disorder" "Needs definition"
* #T99 "Endocr/metab/nutrit disease other" "Needs definition"
* #U01 "Dysuria/painful urination" "Needs definition"
* #U02 "Urinary frequency/urgency" "Needs definition"
* #U04 "Incontinence urine" "Needs definition"
* #U05 "Urination problems other" "Needs definition"
* #U06 "Haematuria" "Needs definition"
* #U07 "Urine symptom/complaint other" "Needs definition"
* #U08 "Urinary retention" "Needs definition"
* #U13 "Bladder symptom/complaint other" "Needs definition"
* #U14 "Kidney symptom/complaint" "Needs definition"
* #U26 "Fear of cancer of urinary system" "Needs definition"
* #U27 "Fear of urinary disease other" "Needs definition"
* #U28 "Limited function/disability (U)" "Needs definition"
* #U29 "Urinary symptom/complaint other" "Needs definition"
* #U70 "Pyelonephritis/pyelitis" "Needs definition"
* #U71 "Cystitis/urinary infection other" "Needs definition"
* #U72 "Urethritis" "Needs definition"
* #U75 "Malignant neoplasm of kidney" "Needs definition"
* #U76 "Malignant neoplasm of bladder" "Needs definition"
* #U77 "Malignant neopl urinary tract other" "Needs definition"
* #U78 "Benign neoplasm urinary tract" "Needs definition"
* #U79 "Neoplasm urinary tract unspecified" "Needs definition"
* #U80 "Injury urinary tract" "Needs definition"
* #U85 "Congenital anomaly urinary tract" "Needs definition"
* #U88 "Glomerulonephritis/nephrosis" "Needs definition"
* #U90 "Orthostatic albuminuria/proteinuria" "Needs definition"
* #U95 "Urinary calculus" "Needs definition"
* #U98 "Abnormal urine test NOS" "Needs definition"
* #U99 "Urinary disease other" "Needs definition"
* #W01 "Question of pregnancy" "Needs definition"
* #W02 "Fear of pregnancy" "Needs definition"
* #W03 "Antepartum bleeding" "Needs definition"
* #W05 "Pregnancy vomiting/nausea" "Needs definition"
* #W10 "Contraception postcoital" "Needs definition"
* #W11 "Contraception oral" "Needs definition"
* #W12 "Contraception intrauterine" "Needs definition"
* #W13 "Sterilization female" "Needs definition"
* #W14 "Contraception female other" "Needs definition"
* #W15 "Infertility/subfertility female" "Needs definition"
* #W17 "Post-partum bleeding" "Needs definition"
* #W18 "Post-partum symptom/complaint other" "Needs definition"
* #W19 "Lactation symptom/complaint" "Needs definition"
* #W21 "Concern with body image in pregnancy" "Needs definition"
* #W27 "Fear of complications of pregnancy" "Needs definition"
* #W28 "Limited function/disability (W)" "Needs definition"
* #W29 "Pregnancy symptom/complaint other" "Needs definition"
* #W70 "Puerperal infection/sepsis" "Needs definition"
* #W71 "Other infect complic pregn/puerp" "Needs definition"
* #W72 "Malignant neopl related to pregnancy" "Needs definition"
* #W73 "Benign/unspecif neopl relat to pregn" "Needs definition"
* #W75 "Injury complicating pregnancy" "Needs definition"
* #W76 "Congen anom complicating pregnancy" "Needs definition"
* #W78 "Pregnancy" "Needs definition"
* #W79 "Unwanted pregnancy" "Needs definition"
* #W80 "Ectopic pregnancy" "Needs definition"
* #W81 "Toxaemia of pregnancy" "Needs definition"
* #W82 "Abortion spontaneous" "Needs definition"
* #W83 "Abortion induced" "Needs definition"
* #W84 "Pregnancy high risk" "Needs definition"
* #W85 "Gestational diabetes" "Needs definition"
* #W90 "Uncompl labour/delivery livebirth" "Needs definition"
* #W91 "Uncompl labour/delivery stillbirth" "Needs definition"
* #W92 "Compl labour/ delivery livebirth" "Needs definition"
* #W93 "Compl labour/delivery stillbirth" "Needs definition"
* #W94 "Puerperal mastitis" "Needs definition"
* #W95 "Breast dis in pregn/puerperium other" "Needs definition"
* #W96 "Complications of puerperium other" "Needs definition"
* #W99 "Disorder of pregn/delivery other" "Needs definition"
* #X01 "Genital pain female" "Needs definition"
* #X02 "Menstrual pain" "Needs definition"
* #X03 "Intermenstrual pain" "Needs definition"
* #X04 "Painful intercourse female" "Needs definition"
* #X05 "Menstruation absent/scanty" "Needs definition"
* #X06 "Menstruation excessive" "Needs definition"
* #X07 "Menstruation irregular/frequent" "Needs definition"
* #X08 "Intermenstrual bleeding" "Needs definition"
* #X09 "Premenstrual symptom/complaint" "Needs definition"
* #X10 "Postponement of menstruation" "Needs definition"
* #X11 "Menopausal symptom/complaint" "Needs definition"
* #X12 "Postmenopausal bleeding" "Needs definition"
* #X13 "Postcoital bleeding" "Needs definition"
* #X14 "Vaginal discharge" "Needs definition"
* #X15 "Vaginal symptom/complaint other" "Needs definition"
* #X16 "Vulval symptom/complaint" "Needs definition"
* #X17 "Pelvis symptom/complaint female" "Needs definition"
* #X18 "Breast pain female" "Needs definition"
* #X19 "Breast lump/mass female" "Needs definition"
* #X20 "Nipple symptom/complaint female" "Needs definition"
* #X21 "Breast sympt/compl female other" "Needs definition"
* #X22 "Concern breast appearance fema" "Needs definition"
* #X23 "Fear sexually transm dis female" "Needs definition"
* #X24 "Fear of sexual dysfunction female" "Needs definition"
* #X25 "Fear of genital cancer female" "Needs definition"
* #X26 "Fear of breast cancer female" "Needs definition"
* #X27 "Fear genital/breast dis female other" "Needs definition"
* #X28 "Limited function/disability (X)" "Needs definition"
* #X29 "Genital sympt/compl female other" "Needs definition"
* #X70 "Syphilis female" "Needs definition"
* #X71 "Gonorrhoea female" "Needs definition"
* #X72 "Genital candidiasis female" "Needs definition"
* #X73 "Genital trichomoniasis female" "Needs definition"
* #X74 "Pelvic inflammatory disease" "Needs definition"
* #X75 "Malignant neoplasm cervix" "Needs definition"
* #X76 "Malignant neoplasm breast female" "Needs definition"
* #X77 "Malignant neopl genital female other" "Needs definition"
* #X78 "Fibromyoma uterus" "Needs definition"
* #X79 "Benign neoplasm breast female" "Needs definition"
* #X80 "Benign neoplasm female genital" "Needs definition"
* #X81 "Genital neopl female other/unspecif" "Needs definition"
* #X82 "Injury genital female" "Needs definition"
* #X83 "Congenital anomaly genital female" "Needs definition"
* #X84 "Vaginitis/vulvitis NOS" "Needs definition"
* #X85 "Cervical disease NOS" "Needs definition"
* #X86 "Abnormal cervix smear" "Needs definition"
* #X87 "Uterovaginal prolapse" "Needs definition"
* #X88 "Fibrocystic disease breast" "Needs definition"
* #X89 "Premenstrual tension syndrome" "Needs definition"
* #X90 "Genital herpes female" "Needs definition"
* #X91 "Condylomata acuminata female" "Needs definition"
* #X92 "Chlamydia infection genital female" "Needs definition"
* #X99 "Genital disease female other" "Needs definition"
* #Y01 "Pain in penis" "Needs definition"
* #Y02 "Pain in testis/scrotum" "Needs definition"
* #Y03 "Urethral discharge male" "Needs definition"
* #Y04 "Penis symptom/complaint other" "Needs definition"
* #Y05 "Scrotum/testis sympt/compl other" "Needs definition"
* #Y06 "Prostate symptom/complaint" "Needs definition"
* #Y07 "Impotence NOS" "Needs definition"
* #Y08 "Sexual function sympt/compl male" "Needs definition"
* #Y10 "Infertility/subfertility male" "Needs definition"
* #Y13 "Sterilization male" "Needs definition"
* #Y14 "Family planning male other" "Needs definition"
* #Y16 "Breast symptom/complaint male" "Needs definition"
* #Y24 "Fear of sexual dysfunction male" "Needs definition"
* #Y25 "Fear sexually transm disease male" "Needs definition"
* #Y26 "Fear of genital cancer male" "Needs definition"
* #Y27 "Fear of genital disease male other" "Needs definition"
* #Y28 "Limited function/disability (Y)" "Needs definition"
* #Y29 "Genital symptom/complaint male other" "Needs definition"
* #Y70 "Syphilis male" "Needs definition"
* #Y71 "Gonorrhoea male" "Needs definition"
* #Y72 "Genital herpes male" "Needs definition"
* #Y73 "Prostatitis/seminal vesiculitis" "Needs definition"
* #Y74 "Orchitis/epididymitis" "Needs definition"
* #Y75 "Balanitis" "Needs definition"
* #Y76 "Condylomata acuminata male" "Needs definition"
* #Y77 "Malignant neoplasm prostate" "Needs definition"
* #Y78 "Malign neopl male genital other" "Needs definition"
* #Y79 "Benign/unspecif neopl male genital" "Needs definition"
* #Y80 "Injury male genital" "Needs definition"
* #Y81 "Phimosis/redundant prepuce" "Needs definition"
* #Y82 "Hypospadias" "Needs definition"
* #Y83 "Undescended testicle" "Needs definition"
* #Y84 "Congenital genital anom male other" "Needs definition"
* #Y85 "Benign prostatic hypertrophy" "Needs definition"
* #Y86 "Hydrocoele" "Needs definition"
* #Y99 "Genital disease male other" "Needs definition"
* #Z01 "Poverty/financial problem" "Needs definition"
* #Z02 "Food/water problem" "Needs definition"
* #Z03 "Housing/neighbourhood problem" "Needs definition"
* #Z04 "Social cultural problem" "Needs definition"
* #Z05 "Work problem" "Needs definition"
* #Z06 "Unemployment problem" "Needs definition"
* #Z07 "Education problem" "Needs definition"
* #Z08 "Social welfare problem" "Needs definition"
* #Z09 "Legal problem" "Needs definition"
* #Z10 "Health care system problem" "Needs definition"
* #Z11 "Compliance/being ill problem" "Needs definition"
* #Z12 "Relationship problem with partner" "Needs definition"
* #Z13 "Partner's behaviour problem" "Needs definition"
* #Z14 "Partner illness problem" "Needs definition"
* #Z15 "Loss/death of partner problem" "Needs definition"
* #Z16 "Relationship problem with child" "Needs definition"
* #Z18 "Illness problem with child" "Needs definition"
* #Z19 "Loss/death of child problem" "Needs definition"
* #Z20 "Relationship problem parent/fam memb" "Needs definition"
* #Z21 "Behaviour problem parent/fam memb" "Needs definition"
* #Z22 "Illness problem parent/family memb" "Needs definition"
* #Z23 "Loss/death parent/fam memb problem" "Needs definition"
* #Z24 "Relationship problem friend" "Needs definition"
* #Z25 "Assault/harmful event problem" "Needs definition"
* #Z27 "Fear of a social problem" "Needs definition"
* #Z28 "Limited function/disability (Z)" "Needs definition"
* #Z29 "Social problem NOS" "Needs definition"
* #LKRFE01 "Road Traffic Accident" "Needs definition"
* #LKRFE02 "Fall from hight" "Needs definition"
* #LKRFE03 "Fall on ground" "Needs definition"
* #LKRFE04 "Cut injury - minor" "Needs definition"
* #LKRFE05 "Cut injury -major" "Needs definition"
* #LKRFE06 "Assult" "Needs definition"
* #LKRFE07 "Firearm injury" "Needs definition"
* #LKRFE08 "Blunt trauma" "Needs definition"
* #LKRFE09 "Penetrating injury" "Needs definition"
* #LKRFE10 "Self inflicted injury" "Needs definition"
* #LKRFE11 "Animal attack" "Needs definition"
* #LKRFE12 "Animal bite" "Needs definition"
* #LKRFE13 "Head injury" "Needs definition"
* #LKRFE14 "Drowning" "Needs definition"
* #LKRFE15 "Allergy" "Needs definition"
* #LKRFE16 "Poisoning" "Needs definition"
* #LKRFE17 "Crush injury" "Needs definition"
* #LKRFE18 "Electric shock" "Needs definition"
* #LKRFE19 "Fracture - upper limb" "Needs definition"
* #LKRFE20 "Fracture lower limb" "Needs definition"
* #LKRFE21 "Hand injury" "Needs definition"
* #LKRFE22 "Foot injury" "Needs definition"
* #LKRFE23 "Ocupational injury" "Needs definition"
* #LKRFE24 "Other" "Needs definition"
* #LKRFE25 "Road Traffic Accident" "Needs definition"
* #LKRFE26 "Fall from hight" "Needs definition"
* #LKRFE27 "Fall on ground" "Needs definition"
* #LKRFE28 "Cut injury - minor" "Needs definition"
* #LKRFE29 "Cut injury -major" "Needs definition"
* #LKRFE30 "Assult" "Needs definition"
* #LKRFE31 "Firearm injury" "Needs definition"
* #LKRFE32 "Blunt trauma" "Needs definition"
* #LKRFE33 "Penetrating injury" "Needs definition"
* #LKRFE34 "Self inflicted injury" "Needs definition"
* #LKRFE35 "Animal attack" "Needs definition"
* #LKRFE36 "Animal bite" "Needs definition"
* #LKRFE37 "Head injury" "Needs definition"
* #LKRFE38 "Drowning" "Needs definition"
* #LKRFE39 "Allergy" "Needs definition"
* #LKRFE40 "Poisoning" "Needs definition"
* #LKRFE41 "Crush injury" "Needs definition"
* #LKRFE42 "Electric shock" "Needs definition"
* #LKRFE43 "Fracture - upper limb" "Needs definition"
* #LKRFE44 "Fracture lower limb" "Needs definition"
* #LKRFE45 "Hand injury" "Needs definition"
* #LKRFE46 "Foot injury" "Needs definition"
* #LKRFE47 "Ocupational injury" "Needs definition"
* #LKRFE48 "Other" "Needs definition"
* #LKRFE49 "Dental pain" "Needs definition"
* #LKRFE50 "Polyarthritis" "Needs definition"
* #LKRFE51 "Monoarthritis" "Needs definition"
* #LKRFE52 "Sore throat" "Needs definition"
* #LKRFE53 "Dental abscess" "Needs definition"
* #LKRFE54 "Investigated for abdominal pain" "Needs definition"
* #LKRFE55 "wound" "Needs definition"
* #LKRFE56 "Abscess" "Needs definition"
* #LKRFE57 "cellulitis" "Needs definition"
* #LKRFE58 "Ankle oedema" "Needs definition"
* #LKRFE59 "Menorrhagia" "Needs definition"
* #LKRFE60 "Hypothyroidism" "Needs definition"
* #LKRFE61 "Foot pain" "Needs definition"
* #LKRFE62 "Lumbar pain" "Needs definition"
* #LKRFE63 "Heel pain" "Needs definition"
* #LKRFE64 "Insomnia" "Needs definition"
* #LKRFE65 "Cold" "Needs definition"
* #LKRFE66 "present with report" "Needs definition"
* #LKRFE67 "for C & D" "Needs definition"
* #LKRFE68 "Developmental delay" "Needs definition"
* #LKRFE69 "Loose stools" "Needs definition"
* #LKRFE70 "requested to check blood pressure" "Needs definition"
* #LKRFE71 "Nail prick" "Needs definition"
* #LKRFE72 "Hip pain" "Needs definition"
* #LKRFE73 "Requested to follow up" "Needs definition"
* #LKRFE74 "Sweat rash" "Needs definition"
* #LKRFE75 "For investigations" "Needs definition"
* #LKRFE76 "PV bleeding" "Needs definition"
* #LKRFE77 "RIF pain" "Needs definition"
* #LKRFE78 "Hey fever" "Needs definition"
* #LKRFE79 "Allergic rhinitis" "Needs definition"
* #LKRFE80 "Foreign body in throat" "Needs definition"
* #LKRFE81 "Trigger finger" "Needs definition"
* #LKRFE82 "Gasteroenteritis" "Needs definition"
* #LKRFE83 "For suture removal" "Needs definition"
* #LKRFE84 "Pain in hand" "Needs definition"
* #LKRFE85 "For referring to clinic" "Needs definition"
* #LKRFE86 "inter digital rash" "Needs definition"
* #LKRFE87 "interdigital rash" "Needs definition"
* #LKRFE88 "Left sided chest pain" "Needs definition"
* #LKRFE89 "Cellulitis" "Needs definition"
* #LKRFE90 "For ordering investigation" "Needs definition"
* #LKRFE91 "Chickenpox confirmed" "Needs definition"
* #LKRFE92 "Body pain" "Needs definition"
* #LKRFE93 "Reduced vision" "Needs definition"
* #LKRFE94 "Callosity" "Needs definition"
* #LKRFE95 "Oligomenorrhoea" "Needs definition"
* #LKRFE96 "Erectyle impotence" "Needs definition"
* #LKRFE97 "Numbness of feet" "Needs definition"
* #LKRFE98 "Urine frequency" "Needs definition"
* #LKRFE99 "Hand pain" "Needs definition"
* #LKRFE100 "For Erythropoietin injection" "Needs definition"
* #LKRFE101 "A fever" "Needs definition"
* #LKRFE102 "Removed due to wrong entry" "Needs definition"
* #LKRFE103 "Dandruff" "Needs definition"
* #LKRFE104 "PR bleeding" "Needs definition"
* #LKRFE105 "lower limb pain" "Needs definition"
* #LKRFE106 "Demo data" "Needs definition"
* #LKRFE107 "Polyurea" "Needs definition"
* #LKRFE108 "Planter faciaitis" "Needs definition"
* #LKRFE109 "Runny nose" "Needs definition"
* #LKRFE110 "Cholera" "Needs definition"
* #LKRFE111 "Plague" "Needs definition"
* #LKRFE112 "Yellow Fever" "Needs definition"
* #LKRFE113 "Acute Poliomyelitis" "Needs definition"
* #LKRFE114 "Acute Flaccid Paralysis" "Needs definition"
* #LKRFE115 "Dengue Fever" "Needs definition"
* #LKRFE116 "Dengue haemorhagic Fever" "Needs definition"
* #LKRFE117 "Diptheria" "Needs definition"
* #LKRFE118 "Dysentary" "Needs definition"
* #LKRFE119 "Encephalitis" "Needs definition"
* #LKRFE120 "Enteric Fever" "Needs definition"
* #LKRFE121 "Food Poisoning" "Needs definition"
* #LKRFE122 "Rabies" "Needs definition"
* #LKRFE123 "Leptospirosis" "Needs definition"
* #LKRFE124 "Fever Continued for 7 days or more" "Needs definition"
* #LKRFE125 "Neonatal Tetanus" "Needs definition"
* #LKRFE126 "Typhus fever" "Needs definition"
* #LKRFE127 "COVID 19 Suspected" "Needs definition"
* #LKRFE128 "COVID 19 INFECTED" "Needs definition"
* #LKRFE129 "COVID 19 WITH COMORBIDITIES" "Needs definition"
* #LKRFE130 "Non Covid admission" "Needs definition"
* #LKRFE131 "Heamodialysis" "Needs definition"
* #LKRFE132 "Diagnostic Radiology" "Needs definition"
* #LKRFE133 "HDU Care" "Needs definition"

ValueSet: VSReasonForEncounter
Id: vs-reason-for-encounter
Title: "Reason For Encounter"
Description: "Encounter reasons."
* ^experimental = false
* include codes from system CSReasonForEncounter

CodeSystem: CSProcedures
Id: cs-procedure
Title: "Procedures"
Description: "Other Procedures"
* ^experimental = false
* ^caseSensitive = true
* #ARV-0.1ml-2-sites "ARV 0.1 ml ID x 2 Sites" "Needs definition"
* #ARV-0.1ml-4-sites "ARV 0.1 ml ID x 4 Sites" "Needs definition"
* #Benzathine-Penicillin-Injection "Benzathine Penicillin Injection" "Needs definition"
* #Cleaning-and-Dressing "Cleaning and Dressing" "Needs definition"
* #Erythropoietin "Erythropoietin" "Needs definition"
* #Give-Injection "Give Injection" "Needs definition"
* #Health-Education "Health Education" "Needs definition"
* #Nebulization-With-Salbutamol-NS-And-Oxygen "Nebulization With Salbutamol + N.S. + Oxygen" "Needs definition"
* #Nebulize-With-Ipravent-And-NS-And-Oxygen "Nebulize with Ipravent + N.S. + Oxygen" "Needs definition"
* #Nebulize-with-Salbutamol-And-Ipravent-And-NS-And-Oxygen "Nebulize with Salbutamol + Ipravent + N.S. + Oxygen" "Needs definition"
* #Tetanus-toxoid-0.5ml-IM-3-doses "Tetanus toxoid 0.5 ml IM - 3 doses" "Needs definition"
* #Tetanus-toxoid-0.5ml-IM-Stat "Tetanus toxoid 0.5ml IM - Stat" "Needs definition"

ValueSet: VSProcedures
Id: vs-procedure
Title: "Procedures"
Description: "Other Procedures"
* ^experimental = false
* include codes from system CSProcedures
* include codes from system CSImagingProcedures

CodeSystem: CSInvestigations
Id: cs-investigation
Title: "Investigations"
Description: "Investigations"
* ^experimental = false
* ^caseSensitive = true
* #CLOTTING-PROFILE-BT "CLOTTING PROFILE - BT" "Needs definition"
* #CLOTTING-PROFILE-CT "CLOTTING PROFILE - CT" "Needs definition"
* #CLOTTING-PROFILE-APTT "CLOTTING PROFILE - APTT" "Needs definition"
* #CLOTTING-PROFILE-INR "CLOTTING PROFILE - INR" "Needs definition"
* #UFR-Albumin "UFR - Albumin" "Needs definition"
* #UFR-Pus-cells "UFR - Pus cells" "Needs definition"
* #UFR-Red-cells "UFR - Red cells" "Needs definition"
* #UFR-Cast "UFR - Cast" "Needs definition"
* #UFR-Crystals "UFR - Crystals" "Needs definition"
* #UFR-Epithelial-cells "UFR - Epithelial cells" "Needs definition"
* #UFR-Yeast "UFR - Yeast" "Needs definition"
* #UFR-Organism "UFR - Organism" "Needs definition"
* #Urine-Microalburin "Urine Microalburin" "Needs definition"
* #Urine-AIbumin-Creatinine-Ratio "Urine AIbumin Creatinine Ratio" "Needs definition"
* #Virology-Covid-Rapid-antigen "Virology - Covid Rapid antigen" "Needs definition"
* #Thyroid-Function-Test-TSH "Thyroid Function Test - TSH" "Needs definition"
* #Thyroid-Function-Test-FT3 "Thyroid Function Test - FT3" "Needs definition"
* #Thyroid-Function-Test-FT4 "Thyroid Function Test - FT4" "Needs definition"
* #Sputum-AFB-Sputum-AFB-Sample-1 "Sputum AFB - Sputum AFB Sample 1" "Needs definition"
* #Sputum-AFB-Sputum-AFB-Sample-2 "Sputum AFB - Sputum AFB Sample 2" "Needs definition"
* #Sputum-AFB-Sputum-AFB-Sample-3 "Sputum AFB - Sputum AFB Sample 3" "Needs definition"
* #Serum-electrolyte-S.-Na "Serum electrolyte - S. Na" "Needs definition"
* #Serum-electrolyte-S.-K "Serum electrolyte - S. K" "Needs definition"
* #Serum-electrolyte-Serum-Chloride "Serum electrolyte - Serum Chloride" "Needs definition"
* #Lipid-profile-Total-Cholesterol "Lipid profile - Total Cholesterol" "Needs definition"
* #Lipid-profile-HDL-Cholesterol "Lipid profile - HDL Cholesterol" "Needs definition"
* #Lipid-profile-LDL-Cholesterol "Lipid profile - LDL Cholesterol" "Needs definition"
* #Lipid-profile-T.-Cho/HDL-Ratio "Lipid profile - T. Cho/HDL Ratio" "Needs definition"
* #Lipid-profile-Triglyceride "Lipid profile - Triglyceride" "Needs definition"
* #Lipid-profile-VLDL "Lipid profile - VLDL" "Needs definition"
* #Hepatitis-Screening-Hep-B-Surface-Antigen "Hepatitis Screening - Hep B Surface Antigen" "Needs definition"
* #Hepatitis-Screening-Hep-C-Antibody "Hepatitis Screening - Hep C Antibody" "Needs definition"
* #Hepatitis-Screening-Hep-A-Antibody "Hepatitis Screening - Hep A Antibody" "Needs definition"
* #HbA1c-HbA1c "HbA1c - HbA1c" "Needs definition"
* #FBC-BAS% "FBC - BAS%" "Needs definition"
* #FBC-EOS% "FBC - EOS%" "Needs definition"
* #FBC-LYM% "FBC - LYM%" "Needs definition"
* #FBC-MON% "FBC - MON%" "Needs definition"
* #FBC-NEU% "FBC - NEU%" "Needs definition"
* #FBC-MCV-fl "FBC - MCV (fl)" "Needs definition"
* #FBC-PLT "FBC - PLT" "Needs definition"
* #FBC-WBC-th/uL "FBC - WBC (th/uL)" "Needs definition"
* #FBC-BAS# "FBC - BAS#" "Needs definition"
* #FBC-NEU# "FBC - NEU#" "Needs definition"
* #FBC-EOS# "FBC - EOS#" "Needs definition"
* #FBC-LYM# "FBC - LYM#" "Needs definition"
* #FBC-MON# "FBC - MON#" "Needs definition"
* #FBC-RBC "FBC - RBC" "Needs definition"
* #Haemoglobin-HPLC-HGB "Haemoglobin HPLC - HGB" "Needs definition"
* #Haemoglobin-HPLC-MCH "Haemoglobin HPLC - MCH" "Needs definition"
* #Haemoglobin-HPLC-MCHC "Haemoglobin HPLC - MCHC" "Needs definition"
* #Haemoglobin-HPLC-RDW-CV "Haemoglobin HPLC - RDW-CV" "Needs definition"
* #Haemoglobin-HPLC-RDW-SD "Haemoglobin HPLC - RDW-SD" "Needs definition"
* #Haemoglobin-HPLC-HCT "Haemoglobin HPLC - HCT" "Needs definition"
* #Haemoglobin-HPLC-MPV "Haemoglobin HPLC - MPV" "Needs definition"
* #Haemoglobin-HPLC-PDW "Haemoglobin HPLC - PDW" "Needs definition"
* #Haemoglobin-HPLC-PCT "Haemoglobin HPLC - PCT" "Needs definition"
* #Haemoglobin-HPLC-PLCC "Haemoglobin HPLC - PLCC" "Needs definition"
* #Haemoglobin-HPLC-PLCR "Haemoglobin HPLC - PLCR" "Needs definition"
* #ESR-ESR-1st-Hour "ESR - ESR 1st Hour" "Needs definition"
* #Dengue-Test-NS1-Antigen "Dengue Test - NS1 Antigen" "Needs definition"
* #Dengue-Test-Dengue-Ig-M "Dengue Test - Dengue Ig M" "Needs definition"
* #Dengue-Test-Dengue-Ig-G "Dengue Test - Dengue Ig G" "Needs definition"
* #Blood-Sugar-FBS "Blood Sugar - FBS" "Needs definition"
* #HbA1c-HBA1C "HbA1c - HBA1C" "Needs definition"
* #HbA1c-PPBS "HbA1c - PPBS" "Needs definition"
* #HbA1c-RBS "HbA1c - RBS" "Needs definition"
* #HbA1c-OGTT "HbA1c - OGTT" "Needs definition"
* #Serum-Creatinine-S-Creatinine "Serum Creatinine - S Creatinine" "Needs definition"
* #Blood-Urea-Blood-Urea "Blood Urea - Blood Urea" "Needs definition"
* #S-Uric-Acid "S Uric Acid" "Needs definition"
* #Serum-Calcium-Total "Serum Calcium-Total" "Needs definition"
* #Serum-Magnesium "Serum Magnesium" "Needs definition"
* #Serum-Phosphorous "Serum Phosphorous" "Needs definition"
* #Corrected-Calcium "Corrected Calcium" "Needs definition"
* #CRP-C-Reactive-Protein "CRP - C Reactive Protein" "Needs definition"
* #S-LDH-LDH "S LDH - LDH" "Needs definition"
* #Creatine-Kinase-Creatinine-Kinase "Creatine Kinase - Creatinine Kinase" "Needs definition"
* #Stool-Full-Report "Stool Full Report" "Needs definition"
* #S.-Vitamin-D-Level "S. Vitamin D Level" "Needs definition"
* #Rheumaloid-Facior "Rheumaloid Facior" "Needs definition"
* #Blood-Picture "Blood Picture" "Needs definition"
* #S-Prostate-Specific-Antigen "S Prostate Specific Antigen" "Needs definition"
* #serum-Amylase-units/L "serum Amylase (units/L)" "Needs definition"
* #Rheumatoid-Factor "Rheumatoid Factor" "Needs definition"
* #Iron-Studies "Iron Studies" "Needs definition"
* #S.-Uric-Acid "S. Uric Acid" "Needs definition"
* #Liver-profile-SGOT-U/L "Liver profile - SGOT U/L" "Needs definition"
* #SGOT/PT-SGPT-U/L "SGOT/PT - SGPT U/L" "Needs definition"
* #S-Alkaline-Phosphatasee-Alakaline-Phosphatase-IU/L "S Alkaline Phosphatasee - Alakaline Phosphatase IU/L" "Needs definition"
* #S.-Bilirubin-Bilirubin-Direct-mg/dl "S. Bilirubin - Bilirubin Direct mg/dl" "Needs definition"
* #S.-Bilirubin-Bilirubin-Total-mg/dl "S. Bilirubin - Bilirubin Total mg/dl" "Needs definition"
* #Serum-Prolein-Total-Protein-g/dl "Serum Prolein - Total Protein g/dl" "Needs definition"
* #S.-Amilase-Bilirubin-Indirect-mg/dl "S. Amilase - Bilirubin Indirect mg/dl" "Needs definition"
* #S.-ALP-Serum-albumin "S. ALP - Serum albumin" "Needs definition"
* #S.-Electrolyte-Globulin "S. Electrolyte - Globulin" "Needs definition"
* #Albumin-/-Globulin-Ratio "Albumin / Globulin Ratio" "Needs definition"
* #S-Gamma-GT-S-Gamma-GT "S Gamma GT - S Gamma GT" "Needs definition"
* #Liver-Enzymes "Liver Enzymes" "Needs definition"
* #Alpha-fetoprotein "Alpha-fetoprotein" "Needs definition"
* #Hepatitis-Screening "Hepatitis Screening" "Needs definition"
* #CSF "CSF" "Needs definition"
* #Renal-Function-Tests "Renal Function Tests" "Needs definition"
* #Stool-examination "Stool examination" "Needs definition"
* #Urinalysis "Urinalysis" "Needs definition"
* #Urine-for-BJP "Urine for BJP" "Needs definition"
* #Cytology "Cytology" "Needs definition"
* #Antibody-testing "Antibody testing" "Needs definition"
* #Biochem-basic-tests "Biochem - basic tests" "Needs definition"

ValueSet: VSInvestigations
Id: vs-investigation
Title: "Investigations"
Description: "Investigations"
* ^experimental = false
* include codes from system CSInvestigations

CodeSystem: CSMedicationNames
Id: cs-medication-name
Title: "Medication Names"
Description: "Medication Names"
* ^experimental = false
* ^caseSensitive = true
* #Alpha-Chole-Calciferol "Alpha Chole Calciferol" "Needs definition"
* #Acarbose "Acarbose" "Needs definition"
* #Aciclovir "aciclovir" "Needs definition"
* #Alendronate "Alendronate" "Needs definition"
* #Allopurinol "Allopurinol" "Needs definition"
* #Alprazolam "Alprazolam" "Needs definition"
* #Amiodarone "Amiodarone" "Needs definition"
* #Amitriptyline "amitriptyline" "Needs definition"
* #Amlodipine "Amlodipine" "Needs definition"
* #Amoxycillin "Amoxycillin" "Needs definition"
* #Ascorbic-Acid "Ascorbic acid" "Needs definition"
* #Aspirin "aspirin" "Needs definition"
* #Atorvastatin "atorvastatin" "Needs definition"
* #Cetrizine "Cetrizine" "Needs definition"
* #Chloramphenicol "chloramphenicol" "Needs definition"
* #Chlorpheniramine "chlorpheniramine" "Needs definition"
* #Chlorpromazine "chlorpromazine" "Needs definition"
* #Cilnidipine "Cilnidipine" "Needs definition"
* #Ciprofloxacin "ciprofloxacin" "Needs definition"
* #Clarythromycin "clarythromycin" "Needs definition"
* #Clinidipine "clinidipine" "Needs definition"
* #Clobazam "Clobazam" "Needs definition"
* #Clonazepam "clonazepam" "Needs definition"
* #Clopidogrel "clopidogrel" "Needs definition"
* #Clotrimazole "Clotrimazole" "Needs definition"
* #Cloxacillin "Cloxacillin" "Needs definition"
* #Co-Q-Enzyme "Co - Q enzyme" "Needs definition"
* #Co-Amoxiclav "Co-amoxiclav" "Needs definition"
* #Co-Careldopa-Carbidopa-Bp+Levodopa-Bp "Co-Careldopa (Carbidopa BP + Levodopa BP)" "Needs definition"
* #Concer "concer" "Needs definition"
* #Cotrimoxazole "cotrimoxazole" "Needs definition"
* #Crepe-Bandage "crepe bandage" "Needs definition"
* #Dapaglifiozin "Dapaglifiozin" "Needs definition"
* #Dapoxetine "Dapoxetine" "Needs definition"
* #Desioratadine "Desioratadine" "Needs definition"
* #Dexamethasone "dexamethasone" "Needs definition"
* #Diamicron "Diamicron" "Needs definition"
* #Diazepam "diazepam" "Needs definition"
* #Diclofenac-Na "diclofenac-Na" "Needs definition"
* #Diethylcarbamazine-Hetrazan "diethylcarbamazine (Hetrazan)" "Needs definition"
* #Digoxin "digoxin" "Needs definition"
* #Diltiazem "Diltiazem" "Needs definition"
* #Domperidone "Domperidone" "Needs definition"
* #Donepezil "Donepezil" "Needs definition"
* #Doxycycline "Doxycycline" "Needs definition"
* #Asthalin "Asthalin" "Needs definition"
* #Beclate "Beclate" "Needs definition"
* #Beclomethazone-Diproprionate "Beclomethazone diproprionate" "Needs definition"
* #Dp-Haler "DP Haler" "Needs definition"
* #Salmetrol+Fluticazone "Salmetrol + Fluticazone" "Needs definition"
* #Ecosprin "Ecosprin" "Needs definition"
* #Empagliflozin "Empagliflozin" "Needs definition"
* #Enalapril "enalapril" "Needs definition"
* #Erythromycin "erythromycin" "Needs definition"
* #Erythropoietin "Erythropoietin" "Needs definition"
* #Ezetimibe "Ezetimibe" "Needs definition"
* #Famotidine "Famotidine" "Needs definition"
* #Fenofibrate "Fenofibrate" "Needs definition"
* #Ferrous-Fumarate "ferrous fumarate" "Needs definition"
* #Ferrous-Sulphate "ferrous sulphate" "Needs definition"
* #Finasteride "Finasteride" "Needs definition"
* #Flucloxacillin "FLUCLOXACILLIN" "Needs definition"
* #Flunarizine "Flunarizine" "Needs definition"
* #Fluoxetine "Fluoxetine" "Needs definition"
* #Folic-Acid "folic acid" "Needs definition"
* #Frisium "frisium" "Needs definition"
* #Frusemide "frusemide" "Needs definition"
* #Furazolidone "furazolidone" "Needs definition"
* #Fusigel "FUSIGEL" "Needs definition"
* #Gabapentin "Gabapentin" "Needs definition"
* #Glibenclamide-Diaonil "glibenclamide (Diaonil)" "Needs definition"
* #Gliclazide "gliclazide" "Needs definition"
* #Glimepride "Glimepride" "Needs definition"
* #Glucophage "Glucophage" "Needs definition"
* #Glycery/Trinitrate-Gtn-Sublingual "glycery/trinitrate (GTN) sublingual" "Needs definition"
* #Glycomet "Glycomet" "Needs definition"
* #Griseofulvin "griseofulvin" "Needs definition"
* #Hydrochlorothiazide "hydrochlorothiazide" "Needs definition"
* #Hydrocortisone "Hydrocortisone" "Needs definition"
* #Hyosine-Butylbromide-Buscopan "Hyosine butylbromide (Buscopan)" "Needs definition"
* #Ibuprofen "ibuprofen" "Needs definition"
* #Imipramine "imipramine" "Needs definition"
* #Indapamide "Indapamide" "Needs definition"
* #Indomethacin "indomethacin" "Needs definition"
* #Insulin "insulin" "Needs definition"
* #Irbesartan "irbesartan" "Needs definition"
* #Isosorbide-Dinitrate-Isdn "isosorbide dinitrate (ISDN)" "Needs definition"
* #Isosorbide-Mononitrate "isosorbide mononitrate" "Needs definition"
* #Ivabradine "Ivabradine" "Needs definition"
* #Kcl "KCL" "Needs definition"
* #Lamotrigine "Lamotrigine" "Needs definition"
* #Levetiracetam "Levetiracetam" "Needs definition"
* #Levofloxacin "Levofloxacin" "Needs definition"
* #Linagliptin "linagliptin" "Needs definition"
* #Lithium-Carbonate "lithium carbonate" "Needs definition"
* #Losartan "Losartan" "Needs definition"
* #Methyl-Salicylate "Methyl Salicylate" "Needs definition"
* #Magnesium-Sulphate "magnesium sulphate" "Needs definition"
* #Manorest "Manorest" "Needs definition"
* #Beclomethasone "Beclomethasone" "Needs definition"
* #Ipravent "Ipravent" "Needs definition"
* #Salbutamol-Asthalin "Salbutamol (Asthalin)" "Needs definition"
* #Salmetrol/Fluticazone "Salmetrol / Fluticazone" "Needs definition"
* #Seroflo "Seroflo" "Needs definition"
* #Tiova "Tiova" "Needs definition"
* #Mebendazole "Mebendazole" "Needs definition"
* #Metalazone "Metalazone" "Needs definition"
* #Metaprolol "Metaprolol" "Needs definition"
* #Metformin "Metformin" "Needs definition"
* #Methotrexate "Methotrexate" "Needs definition"
* #Methyl-Prednisolone "Methyl Prednisolone" "Needs definition"
* #Methyldopa-Aldomet "methyldopa (Aldomet)" "Needs definition"
* #Metronidazole "metronidazole" "Needs definition"
* #Miconazole "MICONAZOLE" "Needs definition"
* #Minipress "Minipress" "Needs definition"
* #Montelukast "Montelukast" "Needs definition"
* #Mycostatin "mycostatin" "Needs definition"
* #Nebivolol "Nebivolol" "Needs definition"
* #Neuroton "Neuroton" "Needs definition"
* #Nicorandil "Nicorandil" "Needs definition"
* #Nifedipine "nifedipine" "Needs definition"
* #Nitrocontin "Nitrocontin" "Needs definition"
* #Nitrofurantoin "Nitrofurantoin" "Needs definition"
* #Noklot "Noklot" "Needs definition"
* #Normal-Saline-Nasal-Drops "normal saline nasal drops" "Needs definition"
* #Olanzapine "olanzapine" "Needs definition"
* #Omeprazole "omeprazole" "Needs definition"
* #Oral-Rehydration-Salts "oral rehydration salts" "Needs definition"
* #Pantaprazole "Pantaprazole" "Needs definition"
* #Paracetamol "paracetamol" "Needs definition"
* #Penicillin "penicillin" "Needs definition"
* #Persantin "Persantin" "Needs definition"
* #Capsulephenobarbital-Luminal "Capsulephenobarbital (Luminal)" "Needs definition"
* #Phenytoin-Sodium "phenytoin sodium" "Needs definition"
* #Pioglitazone "Pioglitazone" "Needs definition"
* #Potassium-Permanganate "potassium permanganate" "Needs definition"
* #Prazosin "prazosin" "Needs definition"
* #Pregabalin "Pregabalin" "Needs definition"
* #Prednisolone "prednisolone" "Needs definition"
* #Prochlorperazine-Stemetil "prochlorperazine (Stemetil)" "Needs definition"
* #Promethazine-Phenergan "promethazine (Phenergan)" "Needs definition"
* #Propranolol "propranolol" "Needs definition"
* #Propyithiouracil "Propyithiouracil" "Needs definition"
* #Pulse-Tri-Omega "Pulse Tri Omega" "Needs definition"
* #Pyrantel-Pamoate "pyrantel pamoate" "Needs definition"
* #Quetiapine "Quetiapine" "Needs definition"
* #Ranalazine "Ranalazine" "Needs definition"
* #Rifaximin "Rifaximin" "Needs definition"
* #Risperidone "risperidone" "Needs definition"
* #Ropinirole "Ropinirole" "Needs definition"
* #Rosuvastatin "Rosuvastatin" "Needs definition"
* #Salbutamol "salbutamol" "Needs definition"
* #Sertalin "Sertalin" "Needs definition"
* #Sildenafil "sildenafil" "Needs definition"
* #Sinemet "Sinemet" "Needs definition"
* #Sitagliptin "sitagliptin" "Needs definition"
* #Sodium-Bicarbonate-Nahco3 "Sodium Bicarbonate (NaHCO3)" "Needs definition"
* #Sodium-Bicarbonate-Ear-Drops "sodium bicarbonate ear drops" "Needs definition"
* #Sodium-Valproate "sodium valproate" "Needs definition"
* #Soframycin-Cream "Soframycin Cream" "Needs definition"
* #Spacer-Device "Spacer Device" "Needs definition"
* #Spironolactone "spironolactone" "Needs definition"
* #Stematil "Stematil" "Needs definition"
* #Sulphasalazine "sulphasalazine" "Needs definition"
* #Syndpa "Syndpa" "Needs definition"
* #Tamsulosin "tamsulosin" "Needs definition"
* #Tazloc "tazloc" "Needs definition"
* #Telmisartan "Telmisartan" "Needs definition"
* #Theophylline "theophylline" "Needs definition"
* #Thiamin "Thiamin" "Needs definition"
* #Thyroxine "thyroxine" "Needs definition"
* #Tolbutamide "tolbutamide" "Needs definition"
* #Topiramate "Topiramate" "Needs definition"
* #Tramadol "tramadol" "Needs definition"
* #Trifluoperazine-Stelazine "trifluoperazine (Stelazine)" "Needs definition"
* #Urimax "Urimax" "Needs definition"
* #Ursodiol "Ursodiol" "Needs definition"
* #Verapamil "verapamil" "Needs definition"
* #Vildagliptin "vildagliptin" "Needs definition"
* #Vitamin-A-&-D "vitamin A & D" "Needs definition"
* #Vitamin-B "vitamin B" "Needs definition"
* #Vitamin-E "Vitamin E" "Needs definition"
* #Warfarin "warfarin" "Needs definition"
* #Zinc-Sulphate "Zinc Sulphate" "Needs definition"

ValueSet: VSMedicationNames
Id: vs-medication-name
Title: "Medication Names"
Description: "Medication Names"
* ^experimental = false
* include codes from system CSMedicationNames

CodeSystem: CSImagingProcedures
Id: cs-procedure-imaging
Title: "Procedures"
Description: "Imaging Procedures"
* ^experimental = false
* ^caseSensitive = true
* #X-Ray "X-Ray" "Needs definition"
* #MRI "MRI" "Needs definition"
* #Ultrasound "Ultrasound" "Needs definition"
* #CT "CT" "Needs definition"
* #Fluoroscopy "Fluoroscopy" "Needs definition"
* #Angiography "Angiography" "Needs definition"
* #Mammography "Mammography" "Needs definition"
* #Breast-Tomosynthesis "Breast Tomosynthesis" "Needs definition"
* #PET "PET" "Needs definition"
* #SPECT "SPECT" "Needs definition"
* #Endoscopy "Endoscopy" "Needs definition"
* #Microscopy "Microscopy" "Needs definition"
* #Whole-Slide-Imaging "Whole Slide Imaging" "Needs definition"
* #OCT "OCT" "Needs definition"

ValueSet: VSImagingProcedures
Id: vs-procedure-imaging
Title: "Procedures"
Description: "Imaging Procedures"
* ^experimental = false
* include codes from system CSImagingProcedures