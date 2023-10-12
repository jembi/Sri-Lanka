Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct

CodeSystem: CSRiskBehaviourPhysicalActivity
Id: cs-risk-behaviour-physical-activity
Title: "Risk Assessment - Physical Activity"
Description: "Risk Assessment - Physical Activity"
* ^experimental = false
* ^caseSensitive = true
* #Physically-active "Physically active" "Sri Lanka team to provide defitinion for this coded value"
* #Physically-not-active "Physically not active" "Sri Lanka team to provide defitinion for this coded value"

ValueSet: VSRiskBehaviourPhysicalActivity
Id: vs-risk-behaviour-physical-activity
Title: "Risk Assessment - Physical Activity"
Description: "Risk Assessment - Physical Activity"
* ^experimental = false
* include codes from system CSRiskBehaviourPhysicalActivity

CodeSystem: CSRiskBehaviourTobaccoSmoker
Id: cs-risk-behaviour-tobacco-smoker
Title: "Risk Assessment - Tobacco Smoker"
Description: "Risk Assessment - Tobacco Smoker"
* ^experimental = false
* ^caseSensitive = true
* #Non-User "Non-User" "Sri Lanka team to provide defitinion for this coded value"
* #User "User" "Sri Lanka team to provide defitinion for this coded value"

ValueSet: VSRiskBehaviourTobaccoSmoker
Id: vs-risk-behaviour-tobacco-smoker
Title: "Risk Assessment - Tobacco Smoker"
Description: "Risk Assessment - Tobacco Smoker"
* ^experimental = false
* include codes from system CSRiskBehaviourTobaccoSmoker

CodeSystem: CSIdentifierTypes
Id: cs-identifier-types
Title: "Patient Business Identifier Types"
Description: "Patient Business Identifier Types"
* ^experimental = false
* ^caseSensitive = true
* #SCN "Senior Citizen Number" "Sri Lanka team to provide defitinion for this coded value"
* #PHN "Personal Health Number" "Sri Lanka team to provide defitinion for this coded value"

CodeSystem: CSFollowUpPlan
Id: cs-follow-up-plan
Title: "Follow-up plan"
Description: "Follow-up plan"
* ^experimental = false
* ^caseSensitive = true
* #Reffered-to-medical-clinic-of-same-institute "Reffered to medical clinic of same institute" "Sri Lanka team to provide defitinion for this coded value"
* #Referred-to-specialised-clinic "Referred to specialised clinic" "Sri Lanka team to provide defitinion for this coded value"
* #Follow-up-at-hlc "Follow up at HLC" "Sri Lanka team to provide defitinion for this coded value"
* #Referred-to-dental-clinic "Referred to Dental Clinic" "Sri Lanka team to provide defitinion for this coded value"
* #Referred-to-wwc "Referred to WWC" "Sri Lanka team to provide defitinion for this coded value"

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
* #Followed-in-3-months-at-hlc "Followed in 3 months at HLC" "Sri Lanka team to provide defitinion for this coded value"
* #Followed-in-6-months-at-hlc "Followed in 6 months at HLC" "Sri Lanka team to provide defitinion for this coded value"
* #Followed-in-1-year-at-hlc "Followed in 1 year at HLC" "Sri Lanka team to provide defitinion for this coded value"
* #Followed-in-3-years-at-hlc "Followed in 3 years at HLC" "Sri Lanka team to provide defitinion for this coded value"

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
* #less-than-5 "Less than 5%" "Sri Lanka team to provide defitinion for this coded value"
* #5-to-less-than-10 "5% to less than 10%" "Sri Lanka team to provide defitinion for this coded value"
* #10-to-less-than-20 "10% to less than 20%" "Sri Lanka team to provide defitinion for this coded value"
* #20-to-less-than-30 "20% to less than 30%" "Sri Lanka team to provide defitinion for this coded value"
* #greater-than-or-equal-to-30 "Equal or more than 30%" "Sri Lanka team to provide defitinion for this coded value"

ValueSet: VSCVDRiskCategory
Id: vs-cvd-risk-category
Title: "Cardiovascular Risk Category Probability Percentage Ranges"
Description: "Cardiovascular Risk Category Probability Percentage Ranges"
* ^experimental = false
* include codes from system CSCVDRiskCategory

CodeSystem: CSMedicalConditions
Id: cs-medical-conditions
Title: "Conditions"
Description: "Represents previous, pre-existing and new conditions."
* ^experimental = false
* ^caseSensitive = true
* #Bronchial-asthma "Bronchial Asthma" "Sri Lanka team to provide defitinion for this coded value"
* #Diabetes "Diabetes" "Sri Lanka team to provide defitinion for this coded value"
* #Cerebrovascular-Accident "Cerebrovascular Accident" "Sri Lanka team to provide defitinion for this coded value"

ValueSet: VSMedicalConditions
Id: vs-medical-conditions
Title: "Conditions"
Description: "Represents previous, pre-existing and new conditions."
* ^experimental = false
* include codes from system CSMedicalConditions

ValueSet: VSAllergyIntoleranceSubstanceCondition
Id: vs-allergy-intolerance-substance-condition
Title: "Allergy Intolerance"
Description: 
    "IPS Allergy intolerance codes value set. This value set includes codes from SNOMED Clinical Terms®: all descendants of 373873005 &#124;Pharmaceutical / biologic product (product)&#124;&#59; all descendants of 105590001 &#124;Substance (substance)&#124;&#59; all descendants of 418038007 &#124;Propensity to adverse reactions to substance (finding)&#124; plus codes for absent and unknown allergies."
* ^experimental = false
* include codes from system http://snomed.info/sct|http://snomed.info/sct/900000000000207008
    where concept descendent-of #105590001
* include codes from system http://snomed.info/sct|http://snomed.info/sct/900000000000207008
    where concept descendent-of #373873005
* include codes from system http://snomed.info/sct|http://snomed.info/sct/900000000000207008
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
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1985008
* ^expansion.contains[=].display = "Vomitus"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #2309006
* ^expansion.contains[=].display = "Gold"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #2799001
* ^expansion.contains[=].display = "Methylbenzethonium chloride"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #3829006
* ^expansion.contains[=].display = "Iron"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #7791007
* ^expansion.contains[=].display = "Soybean protein"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #9021002
* ^expansion.contains[=].display = "Carbaryl"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #11526002
* ^expansion.contains[=].display = "Aspartame"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #11894001
* ^expansion.contains[=].display = "Clostridium botulinum toxin"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #12503006
* ^expansion.contains[=].display = "Aluminum"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #12510000
* ^expansion.contains[=].display = "Eucalyptus oil"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #13577000
* ^expansion.contains[=].display = "Nut"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #13652007
* ^expansion.contains[=].display = "Silicone"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #14402002
* ^expansion.contains[=].display = "Wood"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #23182003
* ^expansion.contains[=].display = "Cereal"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #26159005
* ^expansion.contains[=].display = "Clostridium tetani toxin"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #28230009
* ^expansion.contains[=].display = "Poultry"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #28647000
* ^expansion.contains[=].display = "Meat"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #33008008
* ^expansion.contains[=].display = "Dust"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #33396006
* ^expansion.contains[=].display = "Nickel"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #37146000
* ^expansion.contains[=].display = "Typhus vaccine"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #41967008
* ^expansion.contains[=].display = "Silver"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #42416001
* ^expansion.contains[=].display = "Lanolin"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #43230003
* ^expansion.contains[=].display = "Rubber"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #43735007
* ^expansion.contains[=].display = "Sulfur"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #44027008
* ^expansion.contains[=].display = "Seafood"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #47703008
* ^expansion.contains[=].display = "Lactose"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #51420009
* ^expansion.contains[=].display = "Silicon"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #51905005
* ^expansion.contains[=].display = "Mustard"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #52454007
* ^expansion.contains[=].display = "Albumin"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #57126000
* ^expansion.contains[=].display = "Glue"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #57720001
* ^expansion.contains[=].display = "Anise oil"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #59037007
* ^expansion.contains[=].display = "Intolerance to drug"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #59351004
* ^expansion.contains[=].display = "Citrate"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #59533004
* ^expansion.contains[=].display = "Food additive"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #59545008
* ^expansion.contains[=].display = "Pesticide"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #61789006
* ^expansion.contains[=].display = "Dye"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #63338004
* ^expansion.contains[=].display = "Drug flavoring"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #63766005
* ^expansion.contains[=].display = "Flour"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #66925006
* ^expansion.contains[=].display = "Copper"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #67324005
* ^expansion.contains[=].display = "Rice"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #72511004
* ^expansion.contains[=].display = "Fruit"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #80237000
* ^expansion.contains[=].display = "Cocoa butter"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #83619009
* ^expansion.contains[=].display = "Polyvinyl alcohol"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #89811004
* ^expansion.contains[=].display = "Gluten"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #89889006
* ^expansion.contains[=].display = "Cotton fiber"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #91598004
* ^expansion.contains[=].display = "Benzoyl peroxide"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #91935009
* ^expansion.contains[=].display = "Allergy to peanut"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #91936005
* ^expansion.contains[=].display = "Allergy to penicillin"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #102259006
* ^expansion.contains[=].display = "Citrus fruit"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #102261002
* ^expansion.contains[=].display = "Strawberry"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #102262009
* ^expansion.contains[=].display = "Chocolate"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #102263004
* ^expansion.contains[=].display = "Eggs (edible)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #102264005
* ^expansion.contains[=].display = "Cheese"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #111088007
* ^expansion.contains[=].display = "Latex"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #115589000
* ^expansion.contains[=].display = "Ethanolamine"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #116549003
* ^expansion.contains[=].display = "Organochlorine pesticide"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #116560007
* ^expansion.contains[=].display = "Clostridium perfringens epsilon toxin"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #116637007
* ^expansion.contains[=].display = "Fungus Antigen"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #119417004
* ^expansion.contains[=].display = "Organophosphate insecticide"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #128488006
* ^expansion.contains[=].display = "House dust"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #128489003
* ^expansion.contains[=].display = "Sand"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #226491003
* ^expansion.contains[=].display = "Apple juice"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #226915003
* ^expansion.contains[=].display = "Red meat"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #226934003
* ^expansion.contains[=].display = "Pork"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #227144008
* ^expansion.contains[=].display = "Tuna fish"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #227150003
* ^expansion.contains[=].display = "Mussel"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #227313005
* ^expansion.contains[=].display = "Pulse vegetable"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #227374009
* ^expansion.contains[=].display = "Herbs and spices"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #227388008
* ^expansion.contains[=].display = "Cinnamon"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #227389000
* ^expansion.contains[=].display = "Clove"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #227395004
* ^expansion.contains[=].display = "Curry powder"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #227400003
* ^expansion.contains[=].display = "Ginger"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #227408005
* ^expansion.contains[=].display = "Paprika"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #227425007
* ^expansion.contains[=].display = "Figs"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #227444000
* ^expansion.contains[=].display = "Raspberries"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #227493005
* ^expansion.contains[=].display = "Cashew nut"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #227511008
* ^expansion.contains[=].display = "Pine nut"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #227512001
* ^expansion.contains[=].display = "Pistachio nut"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #227538001
* ^expansion.contains[=].display = "Pickle"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #230034002
* ^expansion.contains[=].display = "Nuts and seeds"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #232350006
* ^expansion.contains[=].display = "Allergy to dust mite protein"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #235719002
* ^expansion.contains[=].display = "Intolerance to food"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #255620007
* ^expansion.contains[=].display = "Food"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #255640000
* ^expansion.contains[=].display = "Biocide"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #255667006
* ^expansion.contains[=].display = "Paraffin"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #256259004
* ^expansion.contains[=].display = "Pollen"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #256260009
* ^expansion.contains[=].display = "Tree and shrub pollen"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #256277009
* ^expansion.contains[=].display = "Grass pollen"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #256292005
* ^expansion.contains[=].display = "Flower and weed pollen"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #256303006
* ^expansion.contains[=].display = "Ragweed pollen"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #256305004
* ^expansion.contains[=].display = "Tree resin"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #256306003
* ^expansion.contains[=].display = "Orange - fruit"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #256307007
* ^expansion.contains[=].display = "Banana"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #256313003
* ^expansion.contains[=].display = "Pineapple"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #256319004
* ^expansion.contains[=].display = "Carrot"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #256326004
* ^expansion.contains[=].display = "Celery"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #256350002
* ^expansion.contains[=].display = "Almond"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #256352005
* ^expansion.contains[=].display = "Walnut - nut"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #256353000
* ^expansion.contains[=].display = "Hazelnut"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #256355007
* ^expansion.contains[=].display = "Soyabean"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #256417003
* ^expansion.contains[=].display = "Horse dander"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #256419000
* ^expansion.contains[=].display = "Mouse epithelium"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #256435007
* ^expansion.contains[=].display = "Feather"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #256440004
* ^expansion.contains[=].display = "Wasp venom"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #256443002
* ^expansion.contains[=].display = "Egg white"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #256504004
* ^expansion.contains[=].display = "Polycarbonate dental material"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #260108001
* ^expansion.contains[=].display = "Wormwood pollen"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #260118006
* ^expansion.contains[=].display = "Wall pellitory pollen"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #260126003
* ^expansion.contains[=].display = "Olive pollen"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #260152009
* ^expansion.contains[=].display = "Cat dander"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #260153004
* ^expansion.contains[=].display = "Cow dander"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #260154005
* ^expansion.contains[=].display = "Dog dander"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #260156007
* ^expansion.contains[=].display = "Mouse urine proteins"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #260167008
* ^expansion.contains[=].display = "Sesame seed"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #260176001
* ^expansion.contains[=].display = "Kiwi fruit"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #260177005
* ^expansion.contains[=].display = "Melon"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #260179008
* ^expansion.contains[=].display = "Mango fruit"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #261243003
* ^expansion.contains[=].display = "Brass"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #264287008
* ^expansion.contains[=].display = "Animal dander"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #264295007
* ^expansion.contains[=].display = "Cow's milk protein"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #264331002
* ^expansion.contains[=].display = "Grain"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #264337003
* ^expansion.contains[=].display = "Seed"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #276310004
* ^expansion.contains[=].display = "Animal hair"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #278840001
* ^expansion.contains[=].display = "Shrimp"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #280939008
* ^expansion.contains[=].display = "Insect venom"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #288328004
* ^expansion.contains[=].display = "Bee venom"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #289122001
* ^expansion.contains[=].display = "Cosmetic material"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #289949002
* ^expansion.contains[=].display = "Cypress pollen"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #303300008
* ^expansion.contains[=].display = "Egg protein"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #303314008
* ^expansion.contains[=].display = "Scorpion venom"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #303315009
* ^expansion.contains[=].display = "Spider venom"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #311846002
* ^expansion.contains[=].display = "Pyrethroid insecticide"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #320835005
* ^expansion.contains[=].display = "Pollen allergy preparations"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #346313005
* ^expansion.contains[=].display = "Allergen extract vaccine"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #346364006
* ^expansion.contains[=].display = "Cat allergy vaccine"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #346405008
* ^expansion.contains[=].display = "Dog allergy vaccine"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #346467003
* ^expansion.contains[=].display = "Horse allergy vaccine"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #346468008
* ^expansion.contains[=].display = "House dust allergy vaccine"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #346469000
* ^expansion.contains[=].display = "House mite allergy vaccine"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #386936005
* ^expansion.contains[=].display = "Azelaic acid"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #387293003
* ^expansion.contains[=].display = "Anthralin"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #387398009
* ^expansion.contains[=].display = "Podophyllum resin"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #391737006
* ^expansion.contains[=].display = "Almond oil"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #396031000
* ^expansion.contains[=].display = "Dimethicone"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #406774009
* ^expansion.contains[=].display = "Fish derived omega 3 fatty acid"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #409568008
* ^expansion.contains[=].display = "Pentavalent botulinum toxoid vaccine"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #410853002
* ^expansion.contains[=].display = "Perfluorochemical"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #412061001
* ^expansion.contains[=].display = "Blueberries"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #412068007
* ^expansion.contains[=].display = "Rye"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #412070003
* ^expansion.contains[=].display = "Vanilla"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #412071004
* ^expansion.contains[=].display = "Wheat"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #412145001
* ^expansion.contains[=].display = "Hair dye"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #412150007
* ^expansion.contains[=].display = "Insect debris"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #412153009
* ^expansion.contains[=].display = "Rabbit dander"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #412156001
* ^expansion.contains[=].display = "Silk"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #412161004
* ^expansion.contains[=].display = "Wool"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #412357001
* ^expansion.contains[=].display = "Corn"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #414285001
* ^expansion.contains[=].display = "Allergy to food"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #415710007
* ^expansion.contains[=].display = "Terpene"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #416098002
* ^expansion.contains[=].display = "Allergy to drug"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #418266005
* ^expansion.contains[=].display = "Yellow paraffin"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #418268006
* ^expansion.contains[=].display = "Bacillus Calmette-Guerin antigen-containing product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #418471000
* ^expansion.contains[=].display = "Propensity to adverse reactions to food"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #418490008
* ^expansion.contains[=].display = "Tetanolysin"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #418504009
* ^expansion.contains[=].display = "Oat"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #418785009
* ^expansion.contains[=].display = "Perfume"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #418794003
* ^expansion.contains[=].display = "Tetanospasmin"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #418920007
* ^expansion.contains[=].display = "Adhesive agent"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #419199007
* ^expansion.contains[=].display = "Allergy to substance"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #419420009
* ^expansion.contains[=].display = "Watermelon"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #419511003
* ^expansion.contains[=].display = "Propensity to adverse reactions to drug"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #419604006
* ^expansion.contains[=].display = "Weed pollen"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #419633007
* ^expansion.contains[=].display = "White paraffin"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #421556008
* ^expansion.contains[=].display = "Capsicum - pepper"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #425620007
* ^expansion.contains[=].display = "Metal"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #428601009
* ^expansion.contains[=].display = "Paratyphoid vaccine"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #430503006
* ^expansion.contains[=].display = "Glutamate"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #707239006
* ^expansion.contains[=].display = "Corynebacterium spp toxin"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #710179004
* ^expansion.contains[=].display = "Lupine seed"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #710183004
* ^expansion.contains[=].display = "Rabbit - meat"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #710943006
* ^expansion.contains[=].display = "Cockroach protein"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #726759005
* ^expansion.contains[=].display = "Cuttlefish"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #726764009
* ^expansion.contains[=].display = "Broad bean"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #734881000
* ^expansion.contains[=].display = "Tomato"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #735006003
* ^expansion.contains[=].display = "Squid"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #735029006
* ^expansion.contains[=].display = "Shellfish"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #735030001
* ^expansion.contains[=].display = "Garlic"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #735045008
* ^expansion.contains[=].display = "Mushroom"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #735046009
* ^expansion.contains[=].display = "Nutmeg"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #735047000
* ^expansion.contains[=].display = "Onion"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #735049002
* ^expansion.contains[=].display = "Peach"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #735053000
* ^expansion.contains[=].display = "Potato"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #735211005
* ^expansion.contains[=].display = "Coconut"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #735215001
* ^expansion.contains[=].display = "Apple"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #735245003
* ^expansion.contains[=].display = "Cod"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #735248001
* ^expansion.contains[=].display = "Cherry"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #735341005
* ^expansion.contains[=].display = "Fish oil"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #735971005
* ^expansion.contains[=].display = "Fish"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #735977009
* ^expansion.contains[=].display = "Marine crustacean"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #735979007
* ^expansion.contains[=].display = "Octopus"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #736031006
* ^expansion.contains[=].display = "Oyster"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #736159005
* ^expansion.contains[=].display = "Crab"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #736162008
* ^expansion.contains[=].display = "Lobster"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #736258006
* ^expansion.contains[=].display = "Insect salivary substance"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #762766007
* ^expansion.contains[=].display = "Edible substance"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #762952008
* ^expansion.contains[=].display = "Peanut"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #767406000
* ^expansion.contains[=].display = "Sulfite and/or sulfite derivative"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #772245002
* ^expansion.contains[=].display = "Wool alcohol"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #774618008
* ^expansion.contains[=].display = "Whole cell Bordetella pertussis and Clostridium tetani toxoid adsorbed and Corynebacterium diphtheriae toxoid antigens only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #774702006
* ^expansion.contains[=].display = "Bacillus Calmette-Guerin antigen only product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #775641005
* ^expansion.contains[=].display = "Clostridium tetani toxoid adsorbed and Corynebacterium diphtheriae toxoid antigens only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #777725002
* ^expansion.contains[=].display = "Clostridium tetani toxoid antigen adsorbed only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #782197009
* ^expansion.contains[=].display = "Intolerance to substance"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #782594005
* ^expansion.contains[=].display = "Allergy to soy protein"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #787859002
* ^expansion.contains[=].display = "Vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836368004
* ^expansion.contains[=].display = "Bacteria antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836369007
* ^expansion.contains[=].display = "Virus antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836374004
* ^expansion.contains[=].display = "Hepatitis B virus antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836375003
* ^expansion.contains[=].display = "Hepatitis A virus antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836377006
* ^expansion.contains[=].display = "Influenza virus antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836378001
* ^expansion.contains[=].display = "Japanese encephalitis virus antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836379009
* ^expansion.contains[=].display = "Human papillomavirus antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836380007
* ^expansion.contains[=].display = "Haemophilus influenzae type b antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836381006
* ^expansion.contains[=].display = "Corynebacterium diphtheriae antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836382004
* ^expansion.contains[=].display = "Measles morbillivirus antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836383009
* ^expansion.contains[=].display = "Vibrio cholerae antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836384003
* ^expansion.contains[=].display = "Bacillus anthracis antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836385002
* ^expansion.contains[=].display = "Yellow fever virus antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836387005
* ^expansion.contains[=].display = "Rotavirus antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836388000
* ^expansion.contains[=].display = "Rubella virus antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836389008
* ^expansion.contains[=].display = "Vaccinia virus antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836390004
* ^expansion.contains[=].display = "Salmonella enterica subspecies enterica serovar Typhi antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836393002
* ^expansion.contains[=].display = "Rabies lyssavirus antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836397001
* ^expansion.contains[=].display = "Coxiella burnetii antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836398006
* ^expansion.contains[=].display = "Streptococcus pneumoniae antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836401009
* ^expansion.contains[=].display = "Neisseria meningitidis antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836402002
* ^expansion.contains[=].display = "Bacillus Calmette-Guerin antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836403007
* ^expansion.contains[=].display = "Tick-borne encephalitis virus antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836495005
* ^expansion.contains[=].display = "Human alphaherpesvirus 3 antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836498007
* ^expansion.contains[=].display = "Mumps orthorubulavirus antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836500008
* ^expansion.contains[=].display = "Haemophilus influenzae type b and Neisseria meningitidis serogroup C antigens only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #840535000
* ^expansion.contains[=].display = "Severe acute respiratory syndrome coronavirus 2 antibody"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #840536004
* ^expansion.contains[=].display = "Severe acute respiratory syndrome coronavirus 2 antigen"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #840549009
* ^expansion.contains[=].display = "Yersinia pestis antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #840599008
* ^expansion.contains[=].display = "Borrelia burgdorferi antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #863911006
* ^expansion.contains[=].display = "Clostridium tetani antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871737006
* ^expansion.contains[=].display = "Mumps orthorubulavirus antigen only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871738001
* ^expansion.contains[=].display = "Live attenuated Mumps orthorubulavirus antigen only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871740006
* ^expansion.contains[=].display = "Inactivated whole Human poliovirus antigen only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871759008
* ^expansion.contains[=].display = "Acellular Bordetella pertussis only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871765008
* ^expansion.contains[=].display = "Measles morbillivirus antigen only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871768005
* ^expansion.contains[=].display = "Influenza virus antigen only vaccine product in nasal dose form"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871772009
* ^expansion.contains[=].display = "Influenza A virus subtype H1N1 antigen only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871803007
* ^expansion.contains[=].display = "Hepatitis A and Hepatitis B virus antigens only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871804001
* ^expansion.contains[=].display = "Hepatitis A virus and Salmonella enterica subspecies enterica serovar Typhi antigens only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871806004
* ^expansion.contains[=].display = "Haemophilus influenzae type b and Hepatitis B virus antigens only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871826000
* ^expansion.contains[=].display = "Clostridium tetani and Corynebacterium diphtheriae antigens only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871831003
* ^expansion.contains[=].display = "Measles morbillivirus and Mumps orthorubulavirus and Rubella virus antigens only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871837004
* ^expansion.contains[=].display = "Clostridium tetani and Corynebacterium diphtheriae and Human poliovirus antigens only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871839001
* ^expansion.contains[=].display = "Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Haemophilus influenzae type b antigens only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871866001
* ^expansion.contains[=].display = "Neisseria meningitidis serogroup C only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871871008
* ^expansion.contains[=].display = "Neisseria meningitidis serogroup A and C only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871873006
* ^expansion.contains[=].display = "Neisseria meningitidis serogroup A, C, W135 and Y only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871875004
* ^expansion.contains[=].display = "Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae antigens only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871876003
* ^expansion.contains[=].display = "Acellular Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae antigens only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871878002
* ^expansion.contains[=].display = "Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Human poliovirus antigens only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871887006
* ^expansion.contains[=].display = "Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Haemophilus influenzae type b and Human poliovirus antigens only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871889009
* ^expansion.contains[=].display = "Acellular Bordetella pertussis and Corynebacterium diphtheriae and Hepatitis B virus and inactivated whole Human poliovirus antigens only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871895005
* ^expansion.contains[=].display = "Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Haemophilus influenzae type b and Hepatitis B virus and Human poliovirus antigens only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871908002
* ^expansion.contains[=].display = "Human alphaherpesvirus 3 and Measles morbillivirus and Mumps orthorubulavirus and Rubella virus antigens only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871918007
* ^expansion.contains[=].display = "Rickettsia antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #871921009
* ^expansion.contains[=].display = "Staphylococcus toxoid vaccine"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1003736004
* ^expansion.contains[=].display = "Mammalian milk based food"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1052328007
* ^expansion.contains[=].display = "Streptococcus pneumoniae Danish serotype 4, 6B, 9V, 14, 18C, 19F, and 23F capsular polysaccharide antigens conjugated only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1119254000
* ^expansion.contains[=].display = "Streptococcus pneumoniae Danish serotype 1, 3, 4, 5, 6A, 6B, 7F, 9V, 14, 18C, 19A, 19F, and 23F capsular polysaccharide antigens only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1137358000
* ^expansion.contains[=].display = "Piper - pepper"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #601000221108
* ^expansion.contains[=].display = "Bordetella pertussis antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #971000221109
* ^expansion.contains[=].display = "Live attenuated Salmonella enterica subspecies enterica serovar Typhi antigen only vaccine product in oral dose form"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1001000221103
* ^expansion.contains[=].display = "Inactivated whole Vibrio cholerae antigen only vaccine product in oral dose form"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1011000221100
* ^expansion.contains[=].display = "Live attenuated Vibrio cholerae antigen only vaccine product in oral dose form"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1031000221108
* ^expansion.contains[=].display = "Human poliovirus antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1051000221104
* ^expansion.contains[=].display = "Live attenuated Human poliovirus serotypes 1 and 3 antigens only vaccine product in oral dose form"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1081000221109
* ^expansion.contains[=].display = "Live attenuated Rotavirus antigen only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1101000221104
* ^expansion.contains[=].display = "Clostridium tetani toxoid antigen-containing vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1121000221106
* ^expansion.contains[=].display = "Live attenuated Yellow fever virus antigen only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1131000221109
* ^expansion.contains[=].display = "Vaccine product containing only inactivated whole Rabies lyssavirus antigen"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1181000221105
* ^expansion.contains[=].display = "Influenza virus antigen only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1801000221105
* ^expansion.contains[=].display = "Streptococcus pneumoniae capsular polysaccharide antigen conjugated only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1981000221108
* ^expansion.contains[=].display = "Neisseria meningitidis serogroup B antigen only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #2171000221104
* ^expansion.contains[=].display = "Salmonella enterica subspecies enterica serovar Typhi capsular polysaccharide unconjugated antigen only vaccine product in parenteral dose form"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #2221000221107
* ^expansion.contains[=].display = "Live attenuated Human alphaherpesvirus 3 only vaccine product"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #442461000124102
* ^expansion.contains[=].display = "Hickory nut"
* include codes from system http://snomed.info/sct|http://snomed.info/sct/900000000000207008
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
* #-30 "Medical examin/health eval complete" "Sri Lanka team to provide defitinion for this coded value"
* #-31 "Medical examin/health eval partial" "Sri Lanka team to provide defitinion for this coded value"
* #-32 "Sensitivity test" "Sri Lanka team to provide defitinion for this coded value"
* #-33 "Microbiological/immunological test" "Sri Lanka team to provide defitinion for this coded value"
* #-34 "Blood test" "Sri Lanka team to provide defitinion for this coded value"
* #-35 "Urine test" "Sri Lanka team to provide defitinion for this coded value"
* #-36 "Faeces test" "Sri Lanka team to provide defitinion for this coded value"
* #-37 "Histological/exfoliative cytology" "Sri Lanka team to provide defitinion for this coded value"
* #-38 "Other laboratory test NEC" "Sri Lanka team to provide defitinion for this coded value"
* #-39 "Physical function test" "Sri Lanka team to provide defitinion for this coded value"
* #-40 "Diagnostic endoscopy" "Sri Lanka team to provide defitinion for this coded value"
* #-41 "Diagnostic radiology/imaging" "Sri Lanka team to provide defitinion for this coded value"
* #-42 "Electrical tracing" "Sri Lanka team to provide defitinion for this coded value"
* #-43 "Other diagnostic procedure" "Sri Lanka team to provide defitinion for this coded value"
* #-44 "Preventive immunization/medication" "Sri Lanka team to provide defitinion for this coded value"
* #-45 "Observ/health educat/advice/diet" "Sri Lanka team to provide defitinion for this coded value"
* #-46 "Consultation primary care provider" "Sri Lanka team to provide defitinion for this coded value"
* #-47 "Consultation with specialist" "Sri Lanka team to provide defitinion for this coded value"
* #-48 "Clarification/discussion rfe/demand" "Sri Lanka team to provide defitinion for this coded value"
* #-49 "Other preventive procedure" "Sri Lanka team to provide defitinion for this coded value"
* #-50 "Medication/prescr/renewal/inject" "Sri Lanka team to provide defitinion for this coded value"
* #-51 "I&d/flush/aspiration" "Sri Lanka team to provide defitinion for this coded value"
* #-52 "Exc/remov/biopsy/destruc/debrid/caut" "Sri Lanka team to provide defitinion for this coded value"
* #-53 "Instrument/catheter/intubate/dilate" "Sri Lanka team to provide defitinion for this coded value"
* #-54 "Repair/fix-suture/cast/prosth device" "Sri Lanka team to provide defitinion for this coded value"
* #-55 "Local injection/infiltration" "Sri Lanka team to provide defitinion for this coded value"
* #-56 "Dressing/pressure/compress/tamponade" "Sri Lanka team to provide defitinion for this coded value"
* #-57 "Physical medicine/rehabilitation" "Sri Lanka team to provide defitinion for this coded value"
* #-58 "Therapeutic counselling/listening" "Sri Lanka team to provide defitinion for this coded value"
* #-59 "Other therap proced/minor surg NEC" "Sri Lanka team to provide defitinion for this coded value"
* #-60 "Result test/procedure" "Sri Lanka team to provide defitinion for this coded value"
* #-61 "Result exam/test/lett oth provider" "Sri Lanka team to provide defitinion for this coded value"
* #-62 "Administrative procedure" "Sri Lanka team to provide defitinion for this coded value"
* #-63 "Follow-up encounter unspecified" "Sri Lanka team to provide defitinion for this coded value"
* #-64 "Encounter/prob initiated by provider" "Sri Lanka team to provide defitinion for this coded value"
* #-65 "Enc/prob init by other than pt/prov" "Sri Lanka team to provide defitinion for this coded value"
* #-66 "Referral to non-MD provider" "Sri Lanka team to provide defitinion for this coded value"
* #-67 "Referral to physician/hospital" "Sri Lanka team to provide defitinion for this coded value"
* #-68 "Other referral NEC" "Sri Lanka team to provide defitinion for this coded value"
* #-69 "Other reason for encounter NEC" "Sri Lanka team to provide defitinion for this coded value"
* #A01 "Pain general/multiple sites" "Sri Lanka team to provide defitinion for this coded value"
* #A02 "Chills" "Sri Lanka team to provide defitinion for this coded value"
* #A03 "Fever" "Sri Lanka team to provide defitinion for this coded value"
* #A04 "Weakness/tiredness general" "Sri Lanka team to provide defitinion for this coded value"
* #A05 "Feeling ill" "Sri Lanka team to provide defitinion for this coded value"
* #A06 "Fainting/syncope" "Sri Lanka team to provide defitinion for this coded value"
* #A07 "Coma" "Sri Lanka team to provide defitinion for this coded value"
* #A08 "Swelling" "Sri Lanka team to provide defitinion for this coded value"
* #A09 "Sweating problem" "Sri Lanka team to provide defitinion for this coded value"
* #A10 "Bleeding/haemorrhage NOS" "Sri Lanka team to provide defitinion for this coded value"
* #A11 "Chest pain NOS" "Sri Lanka team to provide defitinion for this coded value"
* #A13 "Concern/fear medical treatment" "Sri Lanka team to provide defitinion for this coded value"
* #A16 "Irritable infant" "Sri Lanka team to provide defitinion for this coded value"
* #A18 "Concern about appearance" "Sri Lanka team to provide defitinion for this coded value"
* #A20 "Euthanasia request/discussion" "Sri Lanka team to provide defitinion for this coded value"
* #A21 "Risk factor for malignancy" "Sri Lanka team to provide defitinion for this coded value"
* #A23 "Risk factor NOS" "Sri Lanka team to provide defitinion for this coded value"
* #A25 "Fear of death/dying" "Sri Lanka team to provide defitinion for this coded value"
* #A26 "NOS" "Sri Lanka team to provide defitinion for this coded value"
* #A27 "Fear of other disease NOS" "Sri Lanka team to provide defitinion for this coded value"
* #A28 "Limited function/disability NOS" "Sri Lanka team to provide defitinion for this coded value"
* #A29 "General symptom/complaint other" "Sri Lanka team to provide defitinion for this coded value"
* #A70 "Tuberculosis" "Sri Lanka team to provide defitinion for this coded value"
* #A71 "Measles" "Sri Lanka team to provide defitinion for this coded value"
* #A72 "Chickenpox" "Sri Lanka team to provide defitinion for this coded value"
* #A73 "Malaria" "Sri Lanka team to provide defitinion for this coded value"
* #A74 "Rubella / Congenital Rubella Syndrome" "Sri Lanka team to provide defitinion for this coded value"
* #A75 "Infectious mononucleosis" "Sri Lanka team to provide defitinion for this coded value"
* #A76 "Viral exanthem other" "Sri Lanka team to provide defitinion for this coded value"
* #A77 "Viral disease other/NOS" "Sri Lanka team to provide defitinion for this coded value"
* #A78 "Infectious disease other/NOS" "Sri Lanka team to provide defitinion for this coded value"
* #A79 "Malignancy NOS" "Sri Lanka team to provide defitinion for this coded value"
* #A80 "Trauma/injury NOS" "Sri Lanka team to provide defitinion for this coded value"
* #A81 "Multiple trauma/injuries" "Sri Lanka team to provide defitinion for this coded value"
* #A82 "Secondary effect of trauma" "Sri Lanka team to provide defitinion for this coded value"
* #A84 "Poisoning by medical agent" "Sri Lanka team to provide defitinion for this coded value"
* #A85 "Adverse effect medical agent" "Sri Lanka team to provide defitinion for this coded value"
* #A86 "Toxic effect non-medicinal substance" "Sri Lanka team to provide defitinion for this coded value"
* #A87 "Complication of medical treatment" "Sri Lanka team to provide defitinion for this coded value"
* #A88 "Adverse effect physical factor" "Sri Lanka team to provide defitinion for this coded value"
* #A89 "Effect prosthetic device" "Sri Lanka team to provide defitinion for this coded value"
* #A90 "Congenital anomaly NOS/multiple" "Sri Lanka team to provide defitinion for this coded value"
* #A91 "Abnormal result investigation NOS" "Sri Lanka team to provide defitinion for this coded value"
* #A92 "Allergy/allergic reaction NOS" "Sri Lanka team to provide defitinion for this coded value"
* #A93 "Premature newborn" "Sri Lanka team to provide defitinion for this coded value"
* #A94 "Perinatal morbidity other" "Sri Lanka team to provide defitinion for this coded value"
* #A95 "Perinatal mortality" "Sri Lanka team to provide defitinion for this coded value"
* #A96 "Death" "Sri Lanka team to provide defitinion for this coded value"
* #A97 "No disease" "Sri Lanka team to provide defitinion for this coded value"
* #A98 "Health maint/preventive medicine" "Sri Lanka team to provide defitinion for this coded value"
* #A99 "Disease/condition unspecnature/site" "Sri Lanka team to provide defitinion for this coded value"
* #B02 "Lymph gland(s) enlarged/painful" "Sri Lanka team to provide defitinion for this coded value"
* #B04 "Blood symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #B25 "Fear of AIDS/HIV" "Sri Lanka team to provide defitinion for this coded value"
* #B26 "Fear cancer blood/lymph" "Sri Lanka team to provide defitinion for this coded value"
* #B27 "Fear blood/lymph disease other" "Sri Lanka team to provide defitinion for this coded value"
* #B28 "Limited function/disability (B)" "Sri Lanka team to provide defitinion for this coded value"
* #B29 "Lymph/immune mech sympt/complt other" "Sri Lanka team to provide defitinion for this coded value"
* #B70 "Lymphadenitis acute" "Sri Lanka team to provide defitinion for this coded value"
* #B71 "Lymphadenitis chronic/non-specific" "Sri Lanka team to provide defitinion for this coded value"
* #B72 "Hodgkin Lymphoma" "Sri Lanka team to provide defitinion for this coded value"
* #B73 "Leukaemia" "Sri Lanka team to provide defitinion for this coded value"
* #B74 "Malignant neoplasm blood other" "Sri Lanka team to provide defitinion for this coded value"
* #B75 "Neoplasm blood benign/unspecified" "Sri Lanka team to provide defitinion for this coded value"
* #B76 "Ruptured spleen traumatic" "Sri Lanka team to provide defitinion for this coded value"
* #B77 "Injury blood/lymph/spleen other" "Sri Lanka team to provide defitinion for this coded value"
* #B78 "Hereditary haemolytic anaemia" "Sri Lanka team to provide defitinion for this coded value"
* #B79 "Congen anomaly blood/lymph other" "Sri Lanka team to provide defitinion for this coded value"
* #B80 "Iron deficiency anaemia" "Sri Lanka team to provide defitinion for this coded value"
* #B81 "Anaemia vit B12/folate deficiency" "Sri Lanka team to provide defitinion for this coded value"
* #B82 "Anaemia other/unspecified" "Sri Lanka team to provide defitinion for this coded value"
* #B83 "Purpura/coagulation defect" "Sri Lanka team to provide defitinion for this coded value"
* #B84 "Unexplained abnormal white cells" "Sri Lanka team to provide defitinion for this coded value"
* #B87 "Splenomegaly" "Sri Lanka team to provide defitinion for this coded value"
* #B90 "HIV-infection/AIDS" "Sri Lanka team to provide defitinion for this coded value"
* #B99 "Blood/lymph/spleen disease other" "Sri Lanka team to provide defitinion for this coded value"
* #D01 "Abdominal pain/cramps general" "Sri Lanka team to provide defitinion for this coded value"
* #D02 "Abdominal pain epigastric" "Sri Lanka team to provide defitinion for this coded value"
* #D03 "Heartburn" "Sri Lanka team to provide defitinion for this coded value"
* #D04 "Rectal/anal pain" "Sri Lanka team to provide defitinion for this coded value"
* #D05 "Perianal itching" "Sri Lanka team to provide defitinion for this coded value"
* #D06 "Abdominal pain localized other" "Sri Lanka team to provide defitinion for this coded value"
* #D07 "Dyspepsia/indigestion" "Sri Lanka team to provide defitinion for this coded value"
* #D08 "Flatulence/gas/belching" "Sri Lanka team to provide defitinion for this coded value"
* #D09 "Nausea" "Sri Lanka team to provide defitinion for this coded value"
* #D10 "Vomiting" "Sri Lanka team to provide defitinion for this coded value"
* #D11 "Diarrhoea" "Sri Lanka team to provide defitinion for this coded value"
* #D12 "Constipation" "Sri Lanka team to provide defitinion for this coded value"
* #D13 "Jaundice" "Sri Lanka team to provide defitinion for this coded value"
* #D14 "Haematemesis/vomiting blood" "Sri Lanka team to provide defitinion for this coded value"
* #D15 "Melaena" "Sri Lanka team to provide defitinion for this coded value"
* #D16 "Rectal bleeding" "Sri Lanka team to provide defitinion for this coded value"
* #D17 "Incontinence of bowel" "Sri Lanka team to provide defitinion for this coded value"
* #D18 "Change in faeces/bowel movements" "Sri Lanka team to provide defitinion for this coded value"
* #D19 "Teeth/gum symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #D20 "Mouth/tongue/lip symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #D21 "Swallowing problem" "Sri Lanka team to provide defitinion for this coded value"
* #D23 "Hepatomegaly" "Sri Lanka team to provide defitinion for this coded value"
* #D24 "Abdominal mass NOS" "Sri Lanka team to provide defitinion for this coded value"
* #D25 "Abdominal distension" "Sri Lanka team to provide defitinion for this coded value"
* #D26 "Fear of cancer of digestive system" "Sri Lanka team to provide defitinion for this coded value"
* #D27 "Fear of digestive disease other" "Sri Lanka team to provide defitinion for this coded value"
* #D28 "Limited function/disability (D)" "Sri Lanka team to provide defitinion for this coded value"
* #D29 "Digestive symptom/complaint other" "Sri Lanka team to provide defitinion for this coded value"
* #D70 "Gastrointestinal infection" "Sri Lanka team to provide defitinion for this coded value"
* #D71 "Mumps" "Sri Lanka team to provide defitinion for this coded value"
* #D72 "Viral hepatitis" "Sri Lanka team to provide defitinion for this coded value"
* #D73 "Gastroenteritis presumed infection" "Sri Lanka team to provide defitinion for this coded value"
* #D74 "Malignant neoplasm stomach" "Sri Lanka team to provide defitinion for this coded value"
* #D75 "Malignant neoplasm colon/rectum" "Sri Lanka team to provide defitinion for this coded value"
* #D76 "Malignant neoplasm pancreas" "Sri Lanka team to provide defitinion for this coded value"
* #D77 "Malignant digestive neopl other/NOS" "Sri Lanka team to provide defitinion for this coded value"
* #D78 "Neoplasm digestive benign/unspecif" "Sri Lanka team to provide defitinion for this coded value"
* #D79 "Foreign body digestive system" "Sri Lanka team to provide defitinion for this coded value"
* #D80 "Injury digestive system other" "Sri Lanka team to provide defitinion for this coded value"
* #D81 "Congenital anomaly digestive system" "Sri Lanka team to provide defitinion for this coded value"
* #D82 "Teeth/gum disease" "Sri Lanka team to provide defitinion for this coded value"
* #D83 "Mouth/tongue/lip disease" "Sri Lanka team to provide defitinion for this coded value"
* #D84 "Oesophagus disease" "Sri Lanka team to provide defitinion for this coded value"
* #D85 "Duodenal ulcer" "Sri Lanka team to provide defitinion for this coded value"
* #D86 "Peptic ulcer other" "Sri Lanka team to provide defitinion for this coded value"
* #D87 "Stomach function disorder" "Sri Lanka team to provide defitinion for this coded value"
* #D88 "Appendicitis" "Sri Lanka team to provide defitinion for this coded value"
* #D89 "Inguinal hernia" "Sri Lanka team to provide defitinion for this coded value"
* #D90 "Hiatus hernia" "Sri Lanka team to provide defitinion for this coded value"
* #D91 "Abdominal hernia other" "Sri Lanka team to provide defitinion for this coded value"
* #D92 "Diverticular disease" "Sri Lanka team to provide defitinion for this coded value"
* #D93 "Irritable bowel syndrome" "Sri Lanka team to provide defitinion for this coded value"
* #D94 "Chronic enteritis/ulcerative colitis" "Sri Lanka team to provide defitinion for this coded value"
* #D95 "Anal fissure/perianal abscess" "Sri Lanka team to provide defitinion for this coded value"
* #D96 "Worms/other parasites" "Sri Lanka team to provide defitinion for this coded value"
* #D97 "Liver disease NOS" "Sri Lanka team to provide defitinion for this coded value"
* #D98 "Cholecystitis/cholelithiasis" "Sri Lanka team to provide defitinion for this coded value"
* #D99 "Disease digestive system other" "Sri Lanka team to provide defitinion for this coded value"
* #F01 "Eye pain" "Sri Lanka team to provide defitinion for this coded value"
* #F02 "Red eye" "Sri Lanka team to provide defitinion for this coded value"
* #F03 "Eye discharge" "Sri Lanka team to provide defitinion for this coded value"
* #F04 "Visual floaters/spots" "Sri Lanka team to provide defitinion for this coded value"
* #F05 "Visual disturbance other" "Sri Lanka team to provide defitinion for this coded value"
* #F13 "Eye sensation abnormal" "Sri Lanka team to provide defitinion for this coded value"
* #F14 "Eye movements abnormal" "Sri Lanka team to provide defitinion for this coded value"
* #F15 "Eye appearance abnormal" "Sri Lanka team to provide defitinion for this coded value"
* #F16 "Eyelid symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #F17 "Glasses symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #F18 "Contact lens symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #F27 "Fear of eye disease" "Sri Lanka team to provide defitinion for this coded value"
* #F28 "Limited function/disability (F)" "Sri Lanka team to provide defitinion for this coded value"
* #F29 "Eye symptom/complaint other" "Sri Lanka team to provide defitinion for this coded value"
* #F70 "Conjunctivitis infectious" "Sri Lanka team to provide defitinion for this coded value"
* #F71 "Conjunctivitis allergic" "Sri Lanka team to provide defitinion for this coded value"
* #F72 "Blepharitis/stye/chalazion" "Sri Lanka team to provide defitinion for this coded value"
* #F73 "Eye infection/inflammation other" "Sri Lanka team to provide defitinion for this coded value"
* #F74 "Neoplasm of eye/adnexa" "Sri Lanka team to provide defitinion for this coded value"
* #F75 "Contusion/haemorrhage eye" "Sri Lanka team to provide defitinion for this coded value"
* #F76 "Foreign body in eye" "Sri Lanka team to provide defitinion for this coded value"
* #F79 "Injury eye other" "Sri Lanka team to provide defitinion for this coded value"
* #F80 "Blocked lacrimal duct of infant" "Sri Lanka team to provide defitinion for this coded value"
* #F81 "Congenital anomaly eye other" "Sri Lanka team to provide defitinion for this coded value"
* #F82 "Detached retina" "Sri Lanka team to provide defitinion for this coded value"
* #F83 "Retinopathy" "Sri Lanka team to provide defitinion for this coded value"
* #F84 "Macular degeneration" "Sri Lanka team to provide defitinion for this coded value"
* #F85 "Corneal ulcer" "Sri Lanka team to provide defitinion for this coded value"
* #F86 "Trachoma" "Sri Lanka team to provide defitinion for this coded value"
* #F91 "Refractive error" "Sri Lanka team to provide defitinion for this coded value"
* #F92 "Cataract" "Sri Lanka team to provide defitinion for this coded value"
* #F93 "Glaucoma" "Sri Lanka team to provide defitinion for this coded value"
* #F94 "Blindness" "Sri Lanka team to provide defitinion for this coded value"
* #F95 "Strabismus" "Sri Lanka team to provide defitinion for this coded value"
* #F99 "Eye/adnexa disease other" "Sri Lanka team to provide defitinion for this coded value"
* #H01 "Ear pain/earache" "Sri Lanka team to provide defitinion for this coded value"
* #H02 "Hearing complaint" "Sri Lanka team to provide defitinion for this coded value"
* #H03 "ringing/buzzing ear" "Sri Lanka team to provide defitinion for this coded value"
* #H04 "Ear discharge" "Sri Lanka team to provide defitinion for this coded value"
* #H05 "Bleeding ear" "Sri Lanka team to provide defitinion for this coded value"
* #H13 "Plugged feeling ear" "Sri Lanka team to provide defitinion for this coded value"
* #H15 "Concern with appearance of ears" "Sri Lanka team to provide defitinion for this coded value"
* #H27 "Fear of ear disease" "Sri Lanka team to provide defitinion for this coded value"
* #H28 "Limited function/disability (H)" "Sri Lanka team to provide defitinion for this coded value"
* #H29 "Ear symptom/complaint other" "Sri Lanka team to provide defitinion for this coded value"
* #H70 "Otitis externa" "Sri Lanka team to provide defitinion for this coded value"
* #H71 "Acute otitis media/myringitis" "Sri Lanka team to provide defitinion for this coded value"
* #H72 "Serous otitis media" "Sri Lanka team to provide defitinion for this coded value"
* #H73 "Eustachian salpingitis" "Sri Lanka team to provide defitinion for this coded value"
* #H74 "Chronic otitis media" "Sri Lanka team to provide defitinion for this coded value"
* #H75 "Neoplasm of ear" "Sri Lanka team to provide defitinion for this coded value"
* #H76 "Foreign body in ear" "Sri Lanka team to provide defitinion for this coded value"
* #H77 "Perforation ear drum" "Sri Lanka team to provide defitinion for this coded value"
* #H78 "Superficial injury of ear" "Sri Lanka team to provide defitinion for this coded value"
* #H79 "Ear injury other" "Sri Lanka team to provide defitinion for this coded value"
* #H80 "Congenital anomaly of ear" "Sri Lanka team to provide defitinion for this coded value"
* #H81 "Excessive ear wax" "Sri Lanka team to provide defitinion for this coded value"
* #H82 "Vertiginous syndrome" "Sri Lanka team to provide defitinion for this coded value"
* #H83 "Otosclerosis" "Sri Lanka team to provide defitinion for this coded value"
* #H84 "Presbyacusis" "Sri Lanka team to provide defitinion for this coded value"
* #H85 "Acoustic trauma" "Sri Lanka team to provide defitinion for this coded value"
* #H86 "Deafness" "Sri Lanka team to provide defitinion for this coded value"
* #H99 "Ear/mastoid disease other" "Sri Lanka team to provide defitinion for this coded value"
* #K01 "Heart pain" "Sri Lanka team to provide defitinion for this coded value"
* #K02 "Pressure/tightness of heart" "Sri Lanka team to provide defitinion for this coded value"
* #K03 "Cardiovascular pain NOS" "Sri Lanka team to provide defitinion for this coded value"
* #K04 "Palpitations/awareness of heart" "Sri Lanka team to provide defitinion for this coded value"
* #K05 "Irregular heartbeat other" "Sri Lanka team to provide defitinion for this coded value"
* #K06 "Prominent veins" "Sri Lanka team to provide defitinion for this coded value"
* #K07 "Swollen ankles/oedema" "Sri Lanka team to provide defitinion for this coded value"
* #K22 "Risk factor cardiovascular disease" "Sri Lanka team to provide defitinion for this coded value"
* #K24 "Fear of heart disease" "Sri Lanka team to provide defitinion for this coded value"
* #K25 "Fear of hypertension" "Sri Lanka team to provide defitinion for this coded value"
* #K27 "Fear cardiovascular disease other" "Sri Lanka team to provide defitinion for this coded value"
* #K28 "Limited function/disability (K)" "Sri Lanka team to provide defitinion for this coded value"
* #K29 "Cardiovascular sympt/complt other" "Sri Lanka team to provide defitinion for this coded value"
* #K70 "Infection of circulatory system" "Sri Lanka team to provide defitinion for this coded value"
* #K71 "Rheumatic fever/heart disease" "Sri Lanka team to provide defitinion for this coded value"
* #K72 "Neoplasm cardiovascular" "Sri Lanka team to provide defitinion for this coded value"
* #K73 "Congenital anomaly cardiovascular" "Sri Lanka team to provide defitinion for this coded value"
* #K74 "Ischaemic heart dis with angina" "Sri Lanka team to provide defitinion for this coded value"
* #K75 "Acute myocardial infarction" "Sri Lanka team to provide defitinion for this coded value"
* #K76 "Ischaemic heart dis without angina" "Sri Lanka team to provide defitinion for this coded value"
* #K77 "Heart failure" "Sri Lanka team to provide defitinion for this coded value"
* #K78 "Atrial fibrillation/flutter" "Sri Lanka team to provide defitinion for this coded value"
* #K79 "Paroxysmal tachycardia" "Sri Lanka team to provide defitinion for this coded value"
* #K80 "Cardiac arrhythmia NOS" "Sri Lanka team to provide defitinion for this coded value"
* #K81 "Heart/arterial murmur NOS" "Sri Lanka team to provide defitinion for this coded value"
* #K82 "Pulmonary heart disease" "Sri Lanka team to provide defitinion for this coded value"
* #K83 "Heart valve disease NOS" "Sri Lanka team to provide defitinion for this coded value"
* #K84 "Heart disease other" "Sri Lanka team to provide defitinion for this coded value"
* #K85 "Elevated blood pressure" "Sri Lanka team to provide defitinion for this coded value"
* #K86 "Hypertension uncomplicated" "Sri Lanka team to provide defitinion for this coded value"
* #K87 "Hypertension complicated" "Sri Lanka team to provide defitinion for this coded value"
* #K88 "Postural hypotension" "Sri Lanka team to provide defitinion for this coded value"
* #K89 "Transient cerebral ischaemia" "Sri Lanka team to provide defitinion for this coded value"
* #K90 "Stroke/cerebrovascular accident" "Sri Lanka team to provide defitinion for this coded value"
* #K91 "Cerebrovascular disease" "Sri Lanka team to provide defitinion for this coded value"
* #K92 "Atherosclerosis/periph vascular dis" "Sri Lanka team to provide defitinion for this coded value"
* #K93 "Pulmonary embolism" "Sri Lanka team to provide defitinion for this coded value"
* #K94 "Phlebitis/thrombophlebitis" "Sri Lanka team to provide defitinion for this coded value"
* #K95 "Varicose veins of leg" "Sri Lanka team to provide defitinion for this coded value"
* #K96 "Haemorrhoids" "Sri Lanka team to provide defitinion for this coded value"
* #K99 "Cardiovascular disease other" "Sri Lanka team to provide defitinion for this coded value"
* #L01 "Neck symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #L02 "Back symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #L03 "Low back symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #L04 "Chest symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #L05 "Flank/axilla symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #L07 "Jaw symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #L08 "Shoulder symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #L09 "Arm symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #L10 "Elbow symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #L11 "Wrist symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #L12 "Hand/finger symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #L13 "Hip symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #L14 "Leg/thigh symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #L15 "Knee symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #L16 "Ankle symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #L17 "Foot/toe symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #L18 "Muscle pain" "Sri Lanka team to provide defitinion for this coded value"
* #L19 "Muscle symptom/complaint NOS" "Sri Lanka team to provide defitinion for this coded value"
* #L20 "Joint symptom/complaint NOS" "Sri Lanka team to provide defitinion for this coded value"
* #L26 "Fear of cancer musculoskeletal" "Sri Lanka team to provide defitinion for this coded value"
* #L27 "Fear of musculoskeletal dis other" "Sri Lanka team to provide defitinion for this coded value"
* #L28 "Limited function/disability (L)" "Sri Lanka team to provide defitinion for this coded value"
* #L29 "Musculoskeletal sympt/complt other" "Sri Lanka team to provide defitinion for this coded value"
* #L70 "Infection of musculoskeletal system" "Sri Lanka team to provide defitinion for this coded value"
* #L71 "Malignant neoplasm musculoskeletal" "Sri Lanka team to provide defitinion for this coded value"
* #L72 "Fracture: radius/ulna" "Sri Lanka team to provide defitinion for this coded value"
* #L73 "Fracture: tibia/fibula" "Sri Lanka team to provide defitinion for this coded value"
* #L74 "Fracture: hand/foot bone" "Sri Lanka team to provide defitinion for this coded value"
* #L75 "Fracture: femur" "Sri Lanka team to provide defitinion for this coded value"
* #L76 "Fracture: other" "Sri Lanka team to provide defitinion for this coded value"
* #L77 "Sprain/strain of ankle" "Sri Lanka team to provide defitinion for this coded value"
* #L78 "Sprain/strain of knee" "Sri Lanka team to provide defitinion for this coded value"
* #L79 "Sprain/strain of joint NOS" "Sri Lanka team to provide defitinion for this coded value"
* #L80 "Dislocation/subluxation" "Sri Lanka team to provide defitinion for this coded value"
* #L81 "Injury musculoskeletal NOS" "Sri Lanka team to provide defitinion for this coded value"
* #L82 "Congenital anomaly musculoskeletal" "Sri Lanka team to provide defitinion for this coded value"
* #L83 "Neck syndrome" "Sri Lanka team to provide defitinion for this coded value"
* #L84 "Back syndrome without radiat pain" "Sri Lanka team to provide defitinion for this coded value"
* #L85 "Acquired deformity of spine" "Sri Lanka team to provide defitinion for this coded value"
* #L86 "Back syndrome with radiating pain" "Sri Lanka team to provide defitinion for this coded value"
* #L87 "Bursitis/tendinitis/synovitis NOS" "Sri Lanka team to provide defitinion for this coded value"
* #L88 "Rheumatoid/seropositive arthritis" "Sri Lanka team to provide defitinion for this coded value"
* #L89 "Osteoarthrosis of hip" "Sri Lanka team to provide defitinion for this coded value"
* #L90 "Osteoarthrosis of knee" "Sri Lanka team to provide defitinion for this coded value"
* #L91 "Osteoarthrosis other" "Sri Lanka team to provide defitinion for this coded value"
* #L92 "Shoulder syndrome" "Sri Lanka team to provide defitinion for this coded value"
* #L93 "Tennis elbow" "Sri Lanka team to provide defitinion for this coded value"
* #L94 "Osteochondrosis" "Sri Lanka team to provide defitinion for this coded value"
* #L95 "Osteoporosis" "Sri Lanka team to provide defitinion for this coded value"
* #L96 "Acute internal damage knee" "Sri Lanka team to provide defitinion for this coded value"
* #L97 "Neoplasm musculoskel benign/unspec" "Sri Lanka team to provide defitinion for this coded value"
* #L98 "Acquired deformity of limb" "Sri Lanka team to provide defitinion for this coded value"
* #L99 "Musculoskeletal disease other" "Sri Lanka team to provide defitinion for this coded value"
* #N01 "Headache" "Sri Lanka team to provide defitinion for this coded value"
* #N03 "Pain face" "Sri Lanka team to provide defitinion for this coded value"
* #N04 "Restless legs" "Sri Lanka team to provide defitinion for this coded value"
* #N05 "Tingling fingers/feet/toes" "Sri Lanka team to provide defitinion for this coded value"
* #N06 "Sensation disturbance other" "Sri Lanka team to provide defitinion for this coded value"
* #N07 "Convulsion/seizure" "Sri Lanka team to provide defitinion for this coded value"
* #N08 "Abnormal involuntary movements" "Sri Lanka team to provide defitinion for this coded value"
* #N16 "Disturbance of smell/taste" "Sri Lanka team to provide defitinion for this coded value"
* #N17 "Vertigo/dizziness" "Sri Lanka team to provide defitinion for this coded value"
* #N18 "Paralysis/weakness" "Sri Lanka team to provide defitinion for this coded value"
* #N19 "Speech disorder" "Sri Lanka team to provide defitinion for this coded value"
* #N26 "Fear cancer neurological system" "Sri Lanka team to provide defitinion for this coded value"
* #N27 "Fear of neurological disease other" "Sri Lanka team to provide defitinion for this coded value"
* #N28 "Limited function/disability (N)" "Sri Lanka team to provide defitinion for this coded value"
* #N29 "Neurological sympt/complt other" "Sri Lanka team to provide defitinion for this coded value"
* #N70 "Poliomyelitis" "Sri Lanka team to provide defitinion for this coded value"
* #N71 "Meningitis / Encephalitis" "Sri Lanka team to provide defitinion for this coded value"
* #N72 "Tetanus" "Sri Lanka team to provide defitinion for this coded value"
* #N73 "Neurological infection other" "Sri Lanka team to provide defitinion for this coded value"
* #N74 "Malignant neoplasm nervous system" "Sri Lanka team to provide defitinion for this coded value"
* #N75 "Benign neoplasm nervous system" "Sri Lanka team to provide defitinion for this coded value"
* #N76 "Neoplasm nervous system unspecified" "Sri Lanka team to provide defitinion for this coded value"
* #N79 "Concussion" "Sri Lanka team to provide defitinion for this coded value"
* #N80 "Head injury other" "Sri Lanka team to provide defitinion for this coded value"
* #N81 "Injury nervous system other" "Sri Lanka team to provide defitinion for this coded value"
* #N85 "Congenital anomaly neurological" "Sri Lanka team to provide defitinion for this coded value"
* #N86 "Multiple sclerosis" "Sri Lanka team to provide defitinion for this coded value"
* #N87 "Parkinsonism" "Sri Lanka team to provide defitinion for this coded value"
* #N88 "Epilepsy" "Sri Lanka team to provide defitinion for this coded value"
* #N89 "Migraine" "Sri Lanka team to provide defitinion for this coded value"
* #N90 "Cluster headache" "Sri Lanka team to provide defitinion for this coded value"
* #N91 "Facial paralysis/bell's palsy" "Sri Lanka team to provide defitinion for this coded value"
* #N92 "Trigeminal neuralgia" "Sri Lanka team to provide defitinion for this coded value"
* #N93 "Carpal tunnel syndrome" "Sri Lanka team to provide defitinion for this coded value"
* #N94 "Peripheral neuritis/neuropathy" "Sri Lanka team to provide defitinion for this coded value"
* #N95 "Tension headache" "Sri Lanka team to provide defitinion for this coded value"
* #N99 "Neurological disease other" "Sri Lanka team to provide defitinion for this coded value"
* #P01 "Feeling anxious/nervous/tense" "Sri Lanka team to provide defitinion for this coded value"
* #P02 "Acute stress reaction" "Sri Lanka team to provide defitinion for this coded value"
* #P03 "Feeling depressed" "Sri Lanka team to provide defitinion for this coded value"
* #P04 "Feeling/behaving irritable/angry" "Sri Lanka team to provide defitinion for this coded value"
* #P05 "feeling/behaving old" "Sri Lanka team to provide defitinion for this coded value"
* #P06 "Sleep disturbance" "Sri Lanka team to provide defitinion for this coded value"
* #P07 "Sexual desire reduced" "Sri Lanka team to provide defitinion for this coded value"
* #P08 "Sexual fulfilment reduced" "Sri Lanka team to provide defitinion for this coded value"
* #P09 "Sexual preference concern" "Sri Lanka team to provide defitinion for this coded value"
* #P10 "Stammering/stuttering/tic" "Sri Lanka team to provide defitinion for this coded value"
* #P11 "Eating problem in child" "Sri Lanka team to provide defitinion for this coded value"
* #P12 "Bedwetting/enuresis" "Sri Lanka team to provide defitinion for this coded value"
* #P13 "Encopresis/bowel training problem" "Sri Lanka team to provide defitinion for this coded value"
* #P15 "Chronic alcohol abuse" "Sri Lanka team to provide defitinion for this coded value"
* #P16 "Acute alcohol abuse" "Sri Lanka team to provide defitinion for this coded value"
* #P17 "Tobacco abuse" "Sri Lanka team to provide defitinion for this coded value"
* #P18 "Medication abuse" "Sri Lanka team to provide defitinion for this coded value"
* #P19 "Drug abuse" "Sri Lanka team to provide defitinion for this coded value"
* #P20 "Memory disturbance" "Sri Lanka team to provide defitinion for this coded value"
* #P22 "Child behaviour symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #P23 "Adolescent behaviour sympt/compl" "Sri Lanka team to provide defitinion for this coded value"
* #P24 "Specific learning problem" "Sri Lanka team to provide defitinion for this coded value"
* #P25 "Phase of life problem adult" "Sri Lanka team to provide defitinion for this coded value"
* #P27 "Fear of mental disorder" "Sri Lanka team to provide defitinion for this coded value"
* #P28 "Limited function/disability (P)" "Sri Lanka team to provide defitinion for this coded value"
* #P29 "Psychological sympt/compl other" "Sri Lanka team to provide defitinion for this coded value"
* #P70 "Dementia" "Sri Lanka team to provide defitinion for this coded value"
* #P71 "Organic psychosis other" "Sri Lanka team to provide defitinion for this coded value"
* #P72 "Schizophrenia" "Sri Lanka team to provide defitinion for this coded value"
* #P73 "Affective psychosis" "Sri Lanka team to provide defitinion for this coded value"
* #P74 "Anxiety disorder/anxiety state" "Sri Lanka team to provide defitinion for this coded value"
* #P75 "Somatization disorder" "Sri Lanka team to provide defitinion for this coded value"
* #P76 "Depressive disorder" "Sri Lanka team to provide defitinion for this coded value"
* #P77 "Suicide/suicide attempt" "Sri Lanka team to provide defitinion for this coded value"
* #P78 "Neuraesthenia/surmenage" "Sri Lanka team to provide defitinion for this coded value"
* #P79 "Phobia/compulsive disorder" "Sri Lanka team to provide defitinion for this coded value"
* #P80 "Personality disorder" "Sri Lanka team to provide defitinion for this coded value"
* #P81 "Hyperkinetic disorder" "Sri Lanka team to provide defitinion for this coded value"
* #P82 "Post-traumatic stress disorder" "Sri Lanka team to provide defitinion for this coded value"
* #P85 "Mental retardation" "Sri Lanka team to provide defitinion for this coded value"
* #P86 "Anorexia nervosa/bulimia" "Sri Lanka team to provide defitinion for this coded value"
* #P98 "Psychosis NOS/other" "Sri Lanka team to provide defitinion for this coded value"
* #P99 "Psychological disorders other" "Sri Lanka team to provide defitinion for this coded value"
* #1 "Pain respiratory system" "Sri Lanka team to provide defitinion for this coded value"
* #2 "Shortness of breath/dyspnoea" "Sri Lanka team to provide defitinion for this coded value"
* #3 "Wheezing" "Sri Lanka team to provide defitinion for this coded value"
* #4 "Breathing problem other" "Sri Lanka team to provide defitinion for this coded value"
* #5 "Cough" "Sri Lanka team to provide defitinion for this coded value"
* #6 "Nose bleed/epistaxis" "Sri Lanka team to provide defitinion for this coded value"
* #7 "Sneezing/nasal congestion" "Sri Lanka team to provide defitinion for this coded value"
* #8 "Nose symptom/complaint other" "Sri Lanka team to provide defitinion for this coded value"
* #9 "Sinus symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #21 "Throat symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #23 "Voice symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #24 "Haemoptysis" "Sri Lanka team to provide defitinion for this coded value"
* #25 "Sputum/phlegm abnormal" "Sri Lanka team to provide defitinion for this coded value"
* #26 "Fear cancer respiratory system" "Sri Lanka team to provide defitinion for this coded value"
* #27 "Fear of respiratory disease other" "Sri Lanka team to provide defitinion for this coded value"
* #28 "Limited function/disability (R)" "Sri Lanka team to provide defitinion for this coded value"
* #29 "Respiratory symptom/complaint other" "Sri Lanka team to provide defitinion for this coded value"
* #71 "Whooping cough" "Sri Lanka team to provide defitinion for this coded value"
* #72 "Strep throat" "Sri Lanka team to provide defitinion for this coded value"
* #73 "Boil/abscess nose" "Sri Lanka team to provide defitinion for this coded value"
* #74 "Upper respiratory infection acute" "Sri Lanka team to provide defitinion for this coded value"
* #75 "Sinusitis acute/chronic" "Sri Lanka team to provide defitinion for this coded value"
* #76 "Tonsillitis acute" "Sri Lanka team to provide defitinion for this coded value"
* #77 "Laryngitis/tracheitis acute" "Sri Lanka team to provide defitinion for this coded value"
* #78 "Acute bronchitis/bronchiolitis" "Sri Lanka team to provide defitinion for this coded value"
* #79 "Chronic bronchitis" "Sri Lanka team to provide defitinion for this coded value"
* #80 "Influenza" "Sri Lanka team to provide defitinion for this coded value"
* #81 "Pneumonia" "Sri Lanka team to provide defitinion for this coded value"
* #82 "Pleurisy/pleural effusion" "Sri Lanka team to provide defitinion for this coded value"
* #83 "Respiratory infection other" "Sri Lanka team to provide defitinion for this coded value"
* #84 "Malignant neoplasm bronchus/lung" "Sri Lanka team to provide defitinion for this coded value"
* #85 "Malignant neopl respiratory other" "Sri Lanka team to provide defitinion for this coded value"
* #86 "Benign neoplasm respiratory" "Sri Lanka team to provide defitinion for this coded value"
* #87 "Foreign body nose/larynx/bronchus" "Sri Lanka team to provide defitinion for this coded value"
* #88 "Injury respiratory other" "Sri Lanka team to provide defitinion for this coded value"
* #89 "Congenital anomaly respiratory" "Sri Lanka team to provide defitinion for this coded value"
* #90 "Hypertrophy tonsils/adenoids" "Sri Lanka team to provide defitinion for this coded value"
* #92 "Neoplasm respiratory unspecified" "Sri Lanka team to provide defitinion for this coded value"
* #95 "Chron obstructive pulmonary disease" "Sri Lanka team to provide defitinion for this coded value"
* #96 "Asthma" "Sri Lanka team to provide defitinion for this coded value"
* #97 "Allergic rhinitis" "Sri Lanka team to provide defitinion for this coded value"
* #98 "Hyperventilation syndrome" "Sri Lanka team to provide defitinion for this coded value"
* #99 "Respiratory disease other" "Sri Lanka team to provide defitinion for this coded value"
* #S01 "Pain/tenderness of skin" "Sri Lanka team to provide defitinion for this coded value"
* #S02 "Pruritus" "Sri Lanka team to provide defitinion for this coded value"
* #S03 "Warts" "Sri Lanka team to provide defitinion for this coded value"
* #S04 "Lump/swelling localized" "Sri Lanka team to provide defitinion for this coded value"
* #S05 "Lumps/swellings generalized" "Sri Lanka team to provide defitinion for this coded value"
* #S06 "Rash localized" "Sri Lanka team to provide defitinion for this coded value"
* #S07 "Rash generalized" "Sri Lanka team to provide defitinion for this coded value"
* #S08 "Skin colour change" "Sri Lanka team to provide defitinion for this coded value"
* #S09 "Infected finger/toe" "Sri Lanka team to provide defitinion for this coded value"
* #S10 "Boil/carbuncle" "Sri Lanka team to provide defitinion for this coded value"
* #S11 "Skin infection post-traumatic" "Sri Lanka team to provide defitinion for this coded value"
* #S12 "Insect bite/sting" "Sri Lanka team to provide defitinion for this coded value"
* #S13 "Animal/human bite" "Sri Lanka team to provide defitinion for this coded value"
* #S14 "Burn/scald" "Sri Lanka team to provide defitinion for this coded value"
* #S15 "Foreign body in skin" "Sri Lanka team to provide defitinion for this coded value"
* #S16 "Bruise/contusion" "Sri Lanka team to provide defitinion for this coded value"
* #S17 "Abrasion/scratch/blister" "Sri Lanka team to provide defitinion for this coded value"
* #S18 "Laceration/cut" "Sri Lanka team to provide defitinion for this coded value"
* #S19 "Skin injury other" "Sri Lanka team to provide defitinion for this coded value"
* #S20 "Corn/callosity" "Sri Lanka team to provide defitinion for this coded value"
* #S21 "Skin texture symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #S22 "Nail symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #S23 "Hair loss/baldness" "Sri Lanka team to provide defitinion for this coded value"
* #S24 "Hair/scalp symptom/complaint other" "Sri Lanka team to provide defitinion for this coded value"
* #S26 "Fear of cancer of skin" "Sri Lanka team to provide defitinion for this coded value"
* #S27 "Fear of skin disease other" "Sri Lanka team to provide defitinion for this coded value"
* #S28 "Limited function/disability (S)" "Sri Lanka team to provide defitinion for this coded value"
* #S29 "Skin symptom/complaint other" "Sri Lanka team to provide defitinion for this coded value"
* #S70 "Herpes zoster" "Sri Lanka team to provide defitinion for this coded value"
* #S71 "Herpes simplex" "Sri Lanka team to provide defitinion for this coded value"
* #S72 "Scabies/other acariasis" "Sri Lanka team to provide defitinion for this coded value"
* #S73 "Pediculosis/skin infestation other" "Sri Lanka team to provide defitinion for this coded value"
* #S74 "Dermatophytosis" "Sri Lanka team to provide defitinion for this coded value"
* #S75 "Moniliasis/candidiasis skin" "Sri Lanka team to provide defitinion for this coded value"
* #S76 "Skin infection other" "Sri Lanka team to provide defitinion for this coded value"
* #S77 "Malignant neoplasm of skin" "Sri Lanka team to provide defitinion for this coded value"
* #S78 "Lipoma" "Sri Lanka team to provide defitinion for this coded value"
* #S79 "Neoplasm skin benign/unspecified" "Sri Lanka team to provide defitinion for this coded value"
* #S80 "Solar keratosis/sunburn" "Sri Lanka team to provide defitinion for this coded value"
* #S81 "Haemangioma/lymphangioma" "Sri Lanka team to provide defitinion for this coded value"
* #S82 "Naevus/mole" "Sri Lanka team to provide defitinion for this coded value"
* #S83 "Congenital skin anomaly other" "Sri Lanka team to provide defitinion for this coded value"
* #S84 "Impetigo" "Sri Lanka team to provide defitinion for this coded value"
* #S85 "Pilonidal cyst/fistula" "Sri Lanka team to provide defitinion for this coded value"
* #S86 "Dermatitis seborrhoeic" "Sri Lanka team to provide defitinion for this coded value"
* #S87 "Dermatitis/atopic eczema" "Sri Lanka team to provide defitinion for this coded value"
* #S88 "Dermatitis contact/allergic" "Sri Lanka team to provide defitinion for this coded value"
* #S89 "Diaper rash" "Sri Lanka team to provide defitinion for this coded value"
* #S90 "Pityriasis rosea" "Sri Lanka team to provide defitinion for this coded value"
* #S91 "Psoriasis" "Sri Lanka team to provide defitinion for this coded value"
* #S92 "Sweat gland disease" "Sri Lanka team to provide defitinion for this coded value"
* #S93 "Sebaceous cyst" "Sri Lanka team to provide defitinion for this coded value"
* #S94 "Ingrowing nail" "Sri Lanka team to provide defitinion for this coded value"
* #S95 "Molluscum contagiosum" "Sri Lanka team to provide defitinion for this coded value"
* #S96 "Acne" "Sri Lanka team to provide defitinion for this coded value"
* #S97 "Chronic ulcer skin" "Sri Lanka team to provide defitinion for this coded value"
* #S98 "Urticaria" "Sri Lanka team to provide defitinion for this coded value"
* #S99 "Skin disease other" "Sri Lanka team to provide defitinion for this coded value"
* #T01 "Excessive thirst" "Sri Lanka team to provide defitinion for this coded value"
* #T02 "Excessive appetite" "Sri Lanka team to provide defitinion for this coded value"
* #T03 "Loss of appetite" "Sri Lanka team to provide defitinion for this coded value"
* #T04 "Feeding problem of infant/child" "Sri Lanka team to provide defitinion for this coded value"
* #T05 "Feeding problem of adult" "Sri Lanka team to provide defitinion for this coded value"
* #T07 "Weight gain" "Sri Lanka team to provide defitinion for this coded value"
* #T08 "Weight loss" "Sri Lanka team to provide defitinion for this coded value"
* #T10 "Growth delay" "Sri Lanka team to provide defitinion for this coded value"
* #T11 "Dehydration" "Sri Lanka team to provide defitinion for this coded value"
* #T26 "Fear of cancer of endocrine system" "Sri Lanka team to provide defitinion for this coded value"
* #T27 "Fear endocrine/metabol disease other" "Sri Lanka team to provide defitinion for this coded value"
* #T28 "Limited function/disability (T)" "Sri Lanka team to provide defitinion for this coded value"
* #T29 "Endocr/metab/nutr sympt/compl other" "Sri Lanka team to provide defitinion for this coded value"
* #T70 "Endocrine infection" "Sri Lanka team to provide defitinion for this coded value"
* #T71 "Malignant neoplasm thyroid" "Sri Lanka team to provide defitinion for this coded value"
* #T72 "Benign neoplasm thyroid" "Sri Lanka team to provide defitinion for this coded value"
* #T73 "Neoplasm endocrine other/unspecified" "Sri Lanka team to provide defitinion for this coded value"
* #T78 "Thyroglossal duct/cyst" "Sri Lanka team to provide defitinion for this coded value"
* #T80 "Congen anomaly endocrine/metabolic" "Sri Lanka team to provide defitinion for this coded value"
* #T81 "Goitre" "Sri Lanka team to provide defitinion for this coded value"
* #T82 "Obesity" "Sri Lanka team to provide defitinion for this coded value"
* #T83 "Overweight" "Sri Lanka team to provide defitinion for this coded value"
* #T85 "Hyperthyroidism/thyrotoxicosis" "Sri Lanka team to provide defitinion for this coded value"
* #T86 "Hypothyroidism/myxoedema" "Sri Lanka team to provide defitinion for this coded value"
* #T87 "Hypoglycaemia" "Sri Lanka team to provide defitinion for this coded value"
* #T89 "Diabetes insulin dependent" "Sri Lanka team to provide defitinion for this coded value"
* #T90 "Diabetes non-insulin dependent" "Sri Lanka team to provide defitinion for this coded value"
* #T91 "Vitamin/nutritional deficiency" "Sri Lanka team to provide defitinion for this coded value"
* #T92 "Gout" "Sri Lanka team to provide defitinion for this coded value"
* #T93 "Lipid disorder" "Sri Lanka team to provide defitinion for this coded value"
* #T99 "Endocr/metab/nutrit disease other" "Sri Lanka team to provide defitinion for this coded value"
* #U01 "Dysuria/painful urination" "Sri Lanka team to provide defitinion for this coded value"
* #U02 "Urinary frequency/urgency" "Sri Lanka team to provide defitinion for this coded value"
* #U04 "Incontinence urine" "Sri Lanka team to provide defitinion for this coded value"
* #U05 "Urination problems other" "Sri Lanka team to provide defitinion for this coded value"
* #U06 "Haematuria" "Sri Lanka team to provide defitinion for this coded value"
* #U07 "Urine symptom/complaint other" "Sri Lanka team to provide defitinion for this coded value"
* #U08 "Urinary retention" "Sri Lanka team to provide defitinion for this coded value"
* #U13 "Bladder symptom/complaint other" "Sri Lanka team to provide defitinion for this coded value"
* #U14 "Kidney symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #U26 "Fear of cancer of urinary system" "Sri Lanka team to provide defitinion for this coded value"
* #U27 "Fear of urinary disease other" "Sri Lanka team to provide defitinion for this coded value"
* #U28 "Limited function/disability (U)" "Sri Lanka team to provide defitinion for this coded value"
* #U29 "Urinary symptom/complaint other" "Sri Lanka team to provide defitinion for this coded value"
* #U70 "Pyelonephritis/pyelitis" "Sri Lanka team to provide defitinion for this coded value"
* #U71 "Cystitis/urinary infection other" "Sri Lanka team to provide defitinion for this coded value"
* #U72 "Urethritis" "Sri Lanka team to provide defitinion for this coded value"
* #U75 "Malignant neoplasm of kidney" "Sri Lanka team to provide defitinion for this coded value"
* #U76 "Malignant neoplasm of bladder" "Sri Lanka team to provide defitinion for this coded value"
* #U77 "Malignant neopl urinary tract other" "Sri Lanka team to provide defitinion for this coded value"
* #U78 "Benign neoplasm urinary tract" "Sri Lanka team to provide defitinion for this coded value"
* #U79 "Neoplasm urinary tract unspecified" "Sri Lanka team to provide defitinion for this coded value"
* #U80 "Injury urinary tract" "Sri Lanka team to provide defitinion for this coded value"
* #U85 "Congenital anomaly urinary tract" "Sri Lanka team to provide defitinion for this coded value"
* #U88 "Glomerulonephritis/nephrosis" "Sri Lanka team to provide defitinion for this coded value"
* #U90 "Orthostatic albuminuria/proteinuria" "Sri Lanka team to provide defitinion for this coded value"
* #U95 "Urinary calculus" "Sri Lanka team to provide defitinion for this coded value"
* #U98 "Abnormal urine test NOS" "Sri Lanka team to provide defitinion for this coded value"
* #U99 "Urinary disease other" "Sri Lanka team to provide defitinion for this coded value"
* #W01 "Question of pregnancy" "Sri Lanka team to provide defitinion for this coded value"
* #W02 "Fear of pregnancy" "Sri Lanka team to provide defitinion for this coded value"
* #W03 "Antepartum bleeding" "Sri Lanka team to provide defitinion for this coded value"
* #W05 "Pregnancy vomiting/nausea" "Sri Lanka team to provide defitinion for this coded value"
* #W10 "Contraception postcoital" "Sri Lanka team to provide defitinion for this coded value"
* #W11 "Contraception oral" "Sri Lanka team to provide defitinion for this coded value"
* #W12 "Contraception intrauterine" "Sri Lanka team to provide defitinion for this coded value"
* #W13 "Sterilization female" "Sri Lanka team to provide defitinion for this coded value"
* #W14 "Contraception female other" "Sri Lanka team to provide defitinion for this coded value"
* #W15 "Infertility/subfertility female" "Sri Lanka team to provide defitinion for this coded value"
* #W17 "Post-partum bleeding" "Sri Lanka team to provide defitinion for this coded value"
* #W18 "Post-partum symptom/complaint other" "Sri Lanka team to provide defitinion for this coded value"
* #W19 "Lactation symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #W21 "Concern with body image in pregnancy" "Sri Lanka team to provide defitinion for this coded value"
* #W27 "Fear of complications of pregnancy" "Sri Lanka team to provide defitinion for this coded value"
* #W28 "Limited function/disability (W)" "Sri Lanka team to provide defitinion for this coded value"
* #W29 "Pregnancy symptom/complaint other" "Sri Lanka team to provide defitinion for this coded value"
* #W70 "Puerperal infection/sepsis" "Sri Lanka team to provide defitinion for this coded value"
* #W71 "Other infect complic pregn/puerp" "Sri Lanka team to provide defitinion for this coded value"
* #W72 "Malignant neopl related to pregnancy" "Sri Lanka team to provide defitinion for this coded value"
* #W73 "Benign/unspecif neopl relat to pregn" "Sri Lanka team to provide defitinion for this coded value"
* #W75 "Injury complicating pregnancy" "Sri Lanka team to provide defitinion for this coded value"
* #W76 "Congen anom complicating pregnancy" "Sri Lanka team to provide defitinion for this coded value"
* #W78 "Pregnancy" "Sri Lanka team to provide defitinion for this coded value"
* #W79 "Unwanted pregnancy" "Sri Lanka team to provide defitinion for this coded value"
* #W80 "Ectopic pregnancy" "Sri Lanka team to provide defitinion for this coded value"
* #W81 "Toxaemia of pregnancy" "Sri Lanka team to provide defitinion for this coded value"
* #W82 "Abortion spontaneous" "Sri Lanka team to provide defitinion for this coded value"
* #W83 "Abortion induced" "Sri Lanka team to provide defitinion for this coded value"
* #W84 "Pregnancy high risk" "Sri Lanka team to provide defitinion for this coded value"
* #W85 "Gestational diabetes" "Sri Lanka team to provide defitinion for this coded value"
* #W90 "Uncompl labour/delivery livebirth" "Sri Lanka team to provide defitinion for this coded value"
* #W91 "Uncompl labour/delivery stillbirth" "Sri Lanka team to provide defitinion for this coded value"
* #W92 "Compl labour/ delivery livebirth" "Sri Lanka team to provide defitinion for this coded value"
* #W93 "Compl labour/delivery stillbirth" "Sri Lanka team to provide defitinion for this coded value"
* #W94 "Puerperal mastitis" "Sri Lanka team to provide defitinion for this coded value"
* #W95 "Breast dis in pregn/puerperium other" "Sri Lanka team to provide defitinion for this coded value"
* #W96 "Complications of puerperium other" "Sri Lanka team to provide defitinion for this coded value"
* #W99 "Disorder of pregn/delivery other" "Sri Lanka team to provide defitinion for this coded value"
* #X01 "Genital pain female" "Sri Lanka team to provide defitinion for this coded value"
* #X02 "Menstrual pain" "Sri Lanka team to provide defitinion for this coded value"
* #X03 "Intermenstrual pain" "Sri Lanka team to provide defitinion for this coded value"
* #X04 "Painful intercourse female" "Sri Lanka team to provide defitinion for this coded value"
* #X05 "Menstruation absent/scanty" "Sri Lanka team to provide defitinion for this coded value"
* #X06 "Menstruation excessive" "Sri Lanka team to provide defitinion for this coded value"
* #X07 "Menstruation irregular/frequent" "Sri Lanka team to provide defitinion for this coded value"
* #X08 "Intermenstrual bleeding" "Sri Lanka team to provide defitinion for this coded value"
* #X09 "Premenstrual symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #X10 "Postponement of menstruation" "Sri Lanka team to provide defitinion for this coded value"
* #X11 "Menopausal symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #X12 "Postmenopausal bleeding" "Sri Lanka team to provide defitinion for this coded value"
* #X13 "Postcoital bleeding" "Sri Lanka team to provide defitinion for this coded value"
* #X14 "Vaginal discharge" "Sri Lanka team to provide defitinion for this coded value"
* #X15 "Vaginal symptom/complaint other" "Sri Lanka team to provide defitinion for this coded value"
* #X16 "Vulval symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #X17 "Pelvis symptom/complaint female" "Sri Lanka team to provide defitinion for this coded value"
* #X18 "Breast pain female" "Sri Lanka team to provide defitinion for this coded value"
* #X19 "Breast lump/mass female" "Sri Lanka team to provide defitinion for this coded value"
* #X20 "Nipple symptom/complaint female" "Sri Lanka team to provide defitinion for this coded value"
* #X21 "Breast sympt/compl female other" "Sri Lanka team to provide defitinion for this coded value"
* #X22 "Concern breast appearance fema" "Sri Lanka team to provide defitinion for this coded value"
* #X23 "Fear sexually transm dis female" "Sri Lanka team to provide defitinion for this coded value"
* #X24 "Fear of sexual dysfunction female" "Sri Lanka team to provide defitinion for this coded value"
* #X25 "Fear of genital cancer female" "Sri Lanka team to provide defitinion for this coded value"
* #X26 "Fear of breast cancer female" "Sri Lanka team to provide defitinion for this coded value"
* #X27 "Fear genital/breast dis female other" "Sri Lanka team to provide defitinion for this coded value"
* #X28 "Limited function/disability (X)" "Sri Lanka team to provide defitinion for this coded value"
* #X29 "Genital sympt/compl female other" "Sri Lanka team to provide defitinion for this coded value"
* #X70 "Syphilis female" "Sri Lanka team to provide defitinion for this coded value"
* #X71 "Gonorrhoea female" "Sri Lanka team to provide defitinion for this coded value"
* #X72 "Genital candidiasis female" "Sri Lanka team to provide defitinion for this coded value"
* #X73 "Genital trichomoniasis female" "Sri Lanka team to provide defitinion for this coded value"
* #X74 "Pelvic inflammatory disease" "Sri Lanka team to provide defitinion for this coded value"
* #X75 "Malignant neoplasm cervix" "Sri Lanka team to provide defitinion for this coded value"
* #X76 "Malignant neoplasm breast female" "Sri Lanka team to provide defitinion for this coded value"
* #X77 "Malignant neopl genital female other" "Sri Lanka team to provide defitinion for this coded value"
* #X78 "Fibromyoma uterus" "Sri Lanka team to provide defitinion for this coded value"
* #X79 "Benign neoplasm breast female" "Sri Lanka team to provide defitinion for this coded value"
* #X80 "Benign neoplasm female genital" "Sri Lanka team to provide defitinion for this coded value"
* #X81 "Genital neopl female other/unspecif" "Sri Lanka team to provide defitinion for this coded value"
* #X82 "Injury genital female" "Sri Lanka team to provide defitinion for this coded value"
* #X83 "Congenital anomaly genital female" "Sri Lanka team to provide defitinion for this coded value"
* #X84 "Vaginitis/vulvitis NOS" "Sri Lanka team to provide defitinion for this coded value"
* #X85 "Cervical disease NOS" "Sri Lanka team to provide defitinion for this coded value"
* #X86 "Abnormal cervix smear" "Sri Lanka team to provide defitinion for this coded value"
* #X87 "Uterovaginal prolapse" "Sri Lanka team to provide defitinion for this coded value"
* #X88 "Fibrocystic disease breast" "Sri Lanka team to provide defitinion for this coded value"
* #X89 "Premenstrual tension syndrome" "Sri Lanka team to provide defitinion for this coded value"
* #X90 "Genital herpes female" "Sri Lanka team to provide defitinion for this coded value"
* #X91 "Condylomata acuminata female" "Sri Lanka team to provide defitinion for this coded value"
* #X92 "Chlamydia infection genital female" "Sri Lanka team to provide defitinion for this coded value"
* #X99 "Genital disease female other" "Sri Lanka team to provide defitinion for this coded value"
* #Y01 "Pain in penis" "Sri Lanka team to provide defitinion for this coded value"
* #Y02 "Pain in testis/scrotum" "Sri Lanka team to provide defitinion for this coded value"
* #Y03 "Urethral discharge male" "Sri Lanka team to provide defitinion for this coded value"
* #Y04 "Penis symptom/complaint other" "Sri Lanka team to provide defitinion for this coded value"
* #Y05 "Scrotum/testis sympt/compl other" "Sri Lanka team to provide defitinion for this coded value"
* #Y06 "Prostate symptom/complaint" "Sri Lanka team to provide defitinion for this coded value"
* #Y07 "Impotence NOS" "Sri Lanka team to provide defitinion for this coded value"
* #Y08 "Sexual function sympt/compl male" "Sri Lanka team to provide defitinion for this coded value"
* #Y10 "Infertility/subfertility male" "Sri Lanka team to provide defitinion for this coded value"
* #Y13 "Sterilization male" "Sri Lanka team to provide defitinion for this coded value"
* #Y14 "Family planning male other" "Sri Lanka team to provide defitinion for this coded value"
* #Y16 "Breast symptom/complaint male" "Sri Lanka team to provide defitinion for this coded value"
* #Y24 "Fear of sexual dysfunction male" "Sri Lanka team to provide defitinion for this coded value"
* #Y25 "Fear sexually transm disease male" "Sri Lanka team to provide defitinion for this coded value"
* #Y26 "Fear of genital cancer male" "Sri Lanka team to provide defitinion for this coded value"
* #Y27 "Fear of genital disease male other" "Sri Lanka team to provide defitinion for this coded value"
* #Y28 "Limited function/disability (Y)" "Sri Lanka team to provide defitinion for this coded value"
* #Y29 "Genital symptom/complaint male other" "Sri Lanka team to provide defitinion for this coded value"
* #Y70 "Syphilis male" "Sri Lanka team to provide defitinion for this coded value"
* #Y71 "Gonorrhoea male" "Sri Lanka team to provide defitinion for this coded value"
* #Y72 "Genital herpes male" "Sri Lanka team to provide defitinion for this coded value"
* #Y73 "Prostatitis/seminal vesiculitis" "Sri Lanka team to provide defitinion for this coded value"
* #Y74 "Orchitis/epididymitis" "Sri Lanka team to provide defitinion for this coded value"
* #Y75 "Balanitis" "Sri Lanka team to provide defitinion for this coded value"
* #Y76 "Condylomata acuminata male" "Sri Lanka team to provide defitinion for this coded value"
* #Y77 "Malignant neoplasm prostate" "Sri Lanka team to provide defitinion for this coded value"
* #Y78 "Malign neopl male genital other" "Sri Lanka team to provide defitinion for this coded value"
* #Y79 "Benign/unspecif neopl male genital" "Sri Lanka team to provide defitinion for this coded value"
* #Y80 "Injury male genital" "Sri Lanka team to provide defitinion for this coded value"
* #Y81 "Phimosis/redundant prepuce" "Sri Lanka team to provide defitinion for this coded value"
* #Y82 "Hypospadias" "Sri Lanka team to provide defitinion for this coded value"
* #Y83 "Undescended testicle" "Sri Lanka team to provide defitinion for this coded value"
* #Y84 "Congenital genital anom male other" "Sri Lanka team to provide defitinion for this coded value"
* #Y85 "Benign prostatic hypertrophy" "Sri Lanka team to provide defitinion for this coded value"
* #Y86 "Hydrocoele" "Sri Lanka team to provide defitinion for this coded value"
* #Y99 "Genital disease male other" "Sri Lanka team to provide defitinion for this coded value"
* #Z01 "Poverty/financial problem" "Sri Lanka team to provide defitinion for this coded value"
* #Z02 "Food/water problem" "Sri Lanka team to provide defitinion for this coded value"
* #Z03 "Housing/neighbourhood problem" "Sri Lanka team to provide defitinion for this coded value"
* #Z04 "Social cultural problem" "Sri Lanka team to provide defitinion for this coded value"
* #Z05 "Work problem" "Sri Lanka team to provide defitinion for this coded value"
* #Z06 "Unemployment problem" "Sri Lanka team to provide defitinion for this coded value"
* #Z07 "Education problem" "Sri Lanka team to provide defitinion for this coded value"
* #Z08 "Social welfare problem" "Sri Lanka team to provide defitinion for this coded value"
* #Z09 "Legal problem" "Sri Lanka team to provide defitinion for this coded value"
* #Z10 "Health care system problem" "Sri Lanka team to provide defitinion for this coded value"
* #Z11 "Compliance/being ill problem" "Sri Lanka team to provide defitinion for this coded value"
* #Z12 "Relationship problem with partner" "Sri Lanka team to provide defitinion for this coded value"
* #Z13 "Partner's behaviour problem" "Sri Lanka team to provide defitinion for this coded value"
* #Z14 "Partner illness problem" "Sri Lanka team to provide defitinion for this coded value"
* #Z15 "Loss/death of partner problem" "Sri Lanka team to provide defitinion for this coded value"
* #Z16 "Relationship problem with child" "Sri Lanka team to provide defitinion for this coded value"
* #Z18 "Illness problem with child" "Sri Lanka team to provide defitinion for this coded value"
* #Z19 "Loss/death of child problem" "Sri Lanka team to provide defitinion for this coded value"
* #Z20 "Relationship problem parent/fam memb" "Sri Lanka team to provide defitinion for this coded value"
* #Z21 "Behaviour problem parent/fam memb" "Sri Lanka team to provide defitinion for this coded value"
* #Z22 "Illness problem parent/family memb" "Sri Lanka team to provide defitinion for this coded value"
* #Z23 "Loss/death parent/fam memb problem" "Sri Lanka team to provide defitinion for this coded value"
* #Z24 "Relationship problem friend" "Sri Lanka team to provide defitinion for this coded value"
* #Z25 "Assault/harmful event problem" "Sri Lanka team to provide defitinion for this coded value"
* #Z27 "Fear of a social problem" "Sri Lanka team to provide defitinion for this coded value"
* #Z28 "Limited function/disability (Z)" "Sri Lanka team to provide defitinion for this coded value"
* #Z29 "Social problem NOS" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE01 "Road Traffic Accident" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE02 "Fall from hight" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE03 "Fall on ground" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE04 "Cut injury - minor" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE05 "Cut injury -major" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE06 "Assult" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE07 "Firearm injury" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE08 "Blunt trauma" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE09 "Penetrating injury" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE10 "Self inflicted injury" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE11 "Animal attack" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE12 "Animal bite" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE13 "Head injury" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE14 "Drowning" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE15 "Allergy" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE16 "Poisoning" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE17 "Crush injury" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE18 "Electric shock" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE19 "Fracture - upper limb" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE20 "Fracture lower limb" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE21 "Hand injury" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE22 "Foot injury" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE23 "Ocupational injury" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE24 "Other" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE25 "Road Traffic Accident" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE26 "Fall from hight" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE27 "Fall on ground" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE28 "Cut injury - minor" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE29 "Cut injury -major" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE30 "Assult" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE31 "Firearm injury" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE32 "Blunt trauma" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE33 "Penetrating injury" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE34 "Self inflicted injury" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE35 "Animal attack" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE36 "Animal bite" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE37 "Head injury" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE38 "Drowning" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE39 "Allergy" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE40 "Poisoning" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE41 "Crush injury" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE42 "Electric shock" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE43 "Fracture - upper limb" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE44 "Fracture lower limb" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE45 "Hand injury" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE46 "Foot injury" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE47 "Ocupational injury" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE48 "Other" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE49 "Dental pain" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE50 "Polyarthritis" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE51 "Monoarthritis" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE52 "Sore throat" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE53 "Dental abscess" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE54 "Investigated for abdominal pain" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE55 "wound" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE56 "Abscess" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE57 "cellulitis" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE58 "Ankle oedema" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE59 "Menorrhagia" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE60 "Hypothyroidism" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE61 "Foot pain" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE62 "Lumbar pain" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE63 "Heel pain" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE64 "Insomnia" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE65 "Cold" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE66 "present with report" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE67 "for C & D" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE68 "Developmental delay" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE69 "Loose stools" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE70 "requested to check blood pressure" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE71 "Nail prick" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE72 "Hip pain" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE73 "Requested to follow up" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE74 "Sweat rash" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE75 "For investigations" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE76 "PV bleeding" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE77 "RIF pain" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE78 "Hey fever" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE79 "Allergic rhinitis" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE80 "Foreign body in throat" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE81 "Trigger finger" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE82 "Gasteroenteritis" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE83 "For suture removal" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE84 "Pain in hand" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE85 "For referring to clinic" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE86 "inter digital rash" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE87 "interdigital rash" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE88 "Left sided chest pain" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE89 "Cellulitis" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE90 "For ordering investigation" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE91 "Chickenpox confirmed" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE92 "Body pain" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE93 "Reduced vision" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE94 "Callosity" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE95 "Oligomenorrhoea" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE96 "Erectyle impotence" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE97 "Numbness of feet" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE98 "Urine frequency" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE99 "Hand pain" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE100 "For Erythropoietin injection" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE101 "A fever" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE102 "Removed due to wrong entry" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE103 "Dandruff" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE104 "PR bleeding" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE105 "lower limb pain" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE106 "Demo data" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE107 "Polyurea" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE108 "Planter faciaitis" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE109 "Runny nose" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE110 "Cholera" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE111 "Plague" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE112 "Yellow Fever" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE113 "Acute Poliomyelitis" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE114 "Acute Flaccid Paralysis" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE115 "Dengue Fever" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE116 "Dengue haemorhagic Fever" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE117 "Diptheria" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE118 "Dysentary" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE119 "Encephalitis" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE120 "Enteric Fever" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE121 "Food Poisoning" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE122 "Rabies" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE123 "Leptospirosis" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE124 "Fever Continued for 7 days or more" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE125 "Neonatal Tetanus" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE126 "Typhus fever" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE127 "COVID 19 Suspected" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE128 "COVID 19 INFECTED" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE129 "COVID 19 WITH COMORBIDITIES" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE130 "Non Covid admission" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE131 "Heamodialysis" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE132 "Diagnostic Radiology" "Sri Lanka team to provide defitinion for this coded value"
* #LKRFE133 "HDU Care" "Sri Lanka team to provide defitinion for this coded value"

ValueSet: VSReasonForEncounter
Id: vs-reason-for-encounter
Title: "Reason For Encounter"
Description: "Encounter reasons."
* ^experimental = false
* include codes from system CSReasonForEncounter