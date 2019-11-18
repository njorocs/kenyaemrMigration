-- Migration Scripts : Staging to be run First before loading MSSQL Data
-- Description : Creates tables for RAW Data from IQCARE
-- Run First
DROP DATABASE IF EXISTS migration_st;
CREATE DATABASE migration_st;
-- DDL
-- Staging Database Scripts
-- 1. Demographics/Registration  DDL
DROP TABLE IF EXISTS migration_st.st_demographics;
CREATE TABLE migration_st.st_demographics
(
  Person_Id             INT(11),
  First_Name            VARCHAR(100),
  Middle_Name           VARCHAR(100),
  Last_Name             VARCHAR(100),
  Nickname              VARCHAR(100),
  DOB                   DATE NULL,
  Exact_DOB             VARCHAR(100),
  Sex                   VARCHAR(50),
  UPN                   VARCHAR(300),
  Encounter_Date        DATE,
  Encounter_ID          VARCHAR(100),
  National_id_no        VARCHAR(100),
  Patient_clinic_number VARCHAR(100),
  Birth_certificate     VARCHAR(100),
  Birth_notification    VARCHAR(100),
  Hei_no                VARCHAR(100),
  Passport              VARCHAR(100),
  Alien_registration    VARCHAR(100),
  Phone_number          VARCHAR(100),
  Alternate_Phone_number VARCHAR(100),
  Postal_Address        VARCHAR(100),
  Email_address         VARCHAR(100),
  County                VARCHAR(100),
  Sub_county            VARCHAR(100),
  Ward                  VARCHAR(100),
  Village               VARCHAR(255),
  Landmark              VARCHAR(255),
  Nearest_Health_Centre VARCHAR(255),
  Next_of_kin           VARCHAR(255),
  Next_of_kin_phone     VARCHAR(255),
  Next_of_kin_relationship VARCHAR(255),
  Next_of_kin_address   VARCHAR(100),
  Marital_status        VARCHAR(255),
  Occupation            VARCHAR(255),
  Education_level       VARCHAR(255),
  Dead                  VARCHAR(100),
  Death_date            DATE DEFAULT NULL,
  Consent               VARCHAR(255),
  Consent_decline_reason VARCHAR(255),
  voided                INT(11)
);

-- 2. HIV Enrollment
DROP TABLE IF EXISTS migration_st.st_hiv_enrollment;
CREATE TABLE migration_st.st_hiv_enrollment
(
  Person_Id                        INT(11),
  UPN                              VARCHAR(20) NOT NULL,
  Encounter_Date                   DATE,
  Encounter_ID                     VARCHAR(50),
  Patient_Type                     VARCHAR(100),
  Entry_point                      VARCHAR(100),
  TI_Facility                      VARCHAR(100),
  Date_first_enrolled_in_care       DATE,
  Transfer_in_date                  DATE,
  Date_started_art_at_transferring_facility DATE,
  Date_confirmed_hiv_positive       DATE,
  Facility_confirmed_hiv_positive   VARCHAR(100),
  Baseline_arv_use                  VARCHAR(100),
  Purpose_of_baseline_arv_use       VARCHAR(100),
  Baseline_arv_regimen              VARCHAR(100),
  Baseline_arv_regimen_line         VARCHAR(100),
  Baseline_arv_date_last_used       DATE,
  Baseline_who_stage                VARCHAR(50),
  Baseline_cd4_results              INT(11),
  Baseline_cd4_date                 DATE,
  Baseline_vl_results               INT(11),
  Baseline_vl_date                  DATE,
  Baseline_vl_ldl_results           INT(11),
  Baseline_vl_ldl_date              DATE,
  Baseline_HBV_Infected             VARCHAR(50),
  Baseline_TB_Infected              VARCHAR(50),
  Baseline_Pregnant                 VARCHAR(50),
  Baseline_Breastfeeding            VARCHAR(50),
  Baseline_Weight                   DOUBLE,
  Baseline_Height                   DOUBLE,
  Baseline_BMI                      DOUBLE,
  Name_of_treatment_supporter       VARCHAR(255),
  Relationship_of_treatment_supporter INT(11),
  Treatment_supporter_telephone      VARCHAR(100),
  Treatment_supporter_address        VARCHAR(100),
  voided                             INT(11)
);

-- 3. Triage
DROP TABLE IF EXISTS migration_st.st_triage;
CREATE TABLE migration_st.st_triage
(
  Person_Id                        INT(11),
  Encounter_Date                   DATE,
  Encounter_ID                     VARCHAR(50),
  Visit_reason                     VARCHAR(255),
  Systolic_pressure                DOUBLE,
  Diastolic_pressure               DOUBLE,
  Respiratory_rate                 DOUBLE,
  Pulse_rate                       DOUBLE,
  Oxygen_saturation                DOUBLE,
  Weight                           DOUBLE,
  Height                           DOUBLE,
  Temperature                      DOUBLE,
  BMI                              DOUBLE,
  Muac                             DOUBLE,
  Weight_for_age_zscore            VARCHAR(100),
  Weight_for_height_zscore         VARCHAR(100),
  BMI_Zscore                       VARCHAR(100),
  Head_circumference               DOUBLE,
  Nutritional_status               INT(11),
  Last_menstrual_period            DATE,
  Nurse_comments                   VARCHAR(255),
  Voided                           INT(11)
);

-- 4. HTS Initial Encounter
DROP TABLE IF EXISTS migration_st.st_hts_initial;
CREATE TABLE migration_st.st_hts_initial
(
  Person_Id                        INT(11),
  Encounter_Date                   DATE,
  Encounter_ID                     VARCHAR(50),
  Pop_Type                         VARCHAR(50),
  Key_Pop_Type                     VARCHAR(50),
  Priority_Pop_Type                VARCHAR(50),
  Patient_disabled                 VARCHAR(50),
  Disability                       VARCHAR(100),
  Ever_Tested                      VARCHAR(50),
  Self_Tested                      VARCHAR(50),
  HTS_Strategy                     VARCHAR(100),
  HTS_Entry_Point                  VARCHAR(100),
  Consented                        VARCHAR(50),
  Tested_As                        VARCHAR(100),
  TestType                         VARCHAR(50),
  Test_1_Kit_Name                  VARCHAR(100),
  Test_1_Lot_Number                VARCHAR(100),
  Test_1_Expiry_Date               DATE,
  Test_1_Final_Result              VARCHAR(100),
  Test_2_Kit_Name                  VARCHAR(100),
  Test_2_Lot_Number                VARCHAR(100),
  Test_2_Expiry_Date               DATE,
  Test_2_Final_Result              VARCHAR(100),
  Final_Result                     VARCHAR(100),
  Result_given                     VARCHAR(50),
  Couple_Discordant                VARCHAR(50),
  Tb_Screening_Results             VARCHAR(100),
  Remarks                          VARCHAR(255),
  Voided                           INT(11)
);

-- 5. HTS Retest Encounter
DROP TABLE IF EXISTS migration_st.st_hts_retest;
CREATE TABLE migration_st.st_hts_retest
(
  Person_Id                        INT(11),
  Encounter_Date                   DATE,
  Encounter_ID                     VARCHAR(50),
  Pop_Type                         VARCHAR(50),
  Key_Pop_Type                     VARCHAR(50),
  Priority_Pop_Type                VARCHAR(50),
  Patient_disabled                 VARCHAR(50),
  Disability                       VARCHAR(100),
  Ever_Tested                      VARCHAR(50),
  Self_Tested                      VARCHAR(50),
  HTS_Strategy                     VARCHAR(100),
  HTS_Entry_Point                  VARCHAR(100),
  Consented                        VARCHAR(50),
  Tested_As                        VARCHAR(100),
  TestType                         VARCHAR(50),
  Test_1_Kit_Name                  VARCHAR(100),
  Test_1_Lot_Number                VARCHAR(100),
  Test_1_Expiry_Date               DATE,
  Test_1_Final_Result              VARCHAR(100),
  Test_2_Kit_Name                  VARCHAR(100),
  Test_2_Lot_Number                VARCHAR(100),
  Test_2_Expiry_Date               DATE,
  Test_2_Final_Result              VARCHAR(100),
  Final_Result                     VARCHAR(100),
  Result_given                     VARCHAR(50),
  Couple_Discordant                VARCHAR(50),
  Tb_Screening_Results             VARCHAR(100),
  Remarks                          VARCHAR(255),
  Voided                           INT(11)
);


-- 6. Program Enrollment
DROP TABLE IF EXISTS migration_st.st_program_enrollment;
CREATE TABLE migration_st.st_program_enrollment
(
  Person_Id                        INT(11),
  Encounter_Date                   DATE,
  Encounter_ID                     VARCHAR(50),
  Program                          VARCHAR(100),
  Date_Enrolled                    DATE,
  Date_Completed                   DATE
);

-- 7. Program Discontinuation
DROP TABLE IF EXISTS migration_st.st_program_discontinuation;
CREATE TABLE migration_st.st_program_discontinuation
(
  Person_Id                        INT(11),
  Encounter_Date                   DATE,
  Encounter_ID                     VARCHAR(50),
  Program                          VARCHAR(100),
  Date_Enrolled                    DATE,
  Date_Completed                   DATE,
  Care_Ending_Reason               VARCHAR(255),
  Facility_Transfered_To           VARCHAR(255),
  Death_Date                       DATE
);

-- 8. IPT Program Screening
DROP TABLE IF EXISTS migration_st.st_ipt_screening;
CREATE TABLE migration_st.st_ipt_screening
(
  Person_Id                        INT(11),
  Encounter_Date                   DATE,
  Encounter_ID                     VARCHAR(50),
  Yellow_urine                     VARCHAR(100),
  Numbness                         VARCHAR(100),
  Yellow_eyes                      VARCHAR(100),
  Tenderness                       VARCHAR(100),
  IPT_Start_Date                   DATE
);

-- 9. IPT Program Enrollment
DROP TABLE IF EXISTS migration_st.st_ipt_program;
CREATE TABLE migration_st.st_ipt_program
(
  Person_Id                        INT(11),
  Encounter_Date                   DATE,
  Encounter_ID                     VARCHAR(50),
  IPT_Start_Date                   DATE,
  Indication_for_IPT               VARCHAR(100),
  IPT_Outcome                      VARCHAR(100),
  Outcome_Date                     DATE
);



-- 10. IPT Program Followup
DROP TABLE IF EXISTS migration_st.st_ipt_followup;
CREATE TABLE migration_st.st_ipt_followup
(
  Person_Id                        INT(11),
  Encounter_Date                   DATE,
  Encounter_ID                     VARCHAR(50),
  Ipt_due_date                     DATE,
  Date_collected_ipt               DATE,
  Weight                           DOUBLE,
  Hepatotoxity                     VARCHAR(100),
  Hepatotoxity_Action			   VARCHAR(400),
  Peripheral_neuropathy            VARCHAR(100),
  Peripheralneuropathy_Action	   VARCHAR(400),
  Rash                             VARCHAR(100),
  Rash_Action					   VARCHAR(100),
  Adherence                        VARCHAR(100),
  AdheranceMeasurement_Action	   VARCHAR(500),
  IPT_Outcome                      VARCHAR(100),
  Outcome_Date                     DATE
);

-- 11. Regimen History
DROP TABLE IF EXISTS regimen_history;
CREATE TABLE regimen_history
(
  Person_Id                        INT(11),
  Encounter_Date                   DATE,
  Encounter_ID                     VARCHAR(50),
  Program                          VARCHAR(100),
  Regimen                          VARCHAR(200),
  Regimen_Name                     VARCHAR(200),
  Regimen_Line                     VARCHAR(200),
  Date_Started                     DATE,
  Date_Stopped                     DATE,
  Discontinued                     VARCHAR(50),
  Regimen_Discontinued             VARCHAR(200),
  Date_Discontinued                DATE,
  Reason_Discontinued              VARCHAR(255),
  Voided                           INT(11),
  Date_voided                      DATE

);

-- 12. HIV Followup
DROP TABLE IF EXISTS hiv_followup;
CREATE TABLE hiv_followup
(
  Person_Id                  INT(11),
  Encounter_Date             DATE,
  Encounter_ID               VARCHAR(50),
  Visit_scheduled            VARCHAR(20),
  Visit_by                   VARCHAR(20),
  Visit_by_other             VARCHAR(100),
  Weight                     DOUBLE,
  Height                     DOUBLE,
  Systolic_pressure          DOUBLE,
  Diastolic_pressure         DOUBLE,
  Temperature                DOUBLE,
  Pulse_rate                 DOUBLE,
  Respiratory_rate           DOUBLE,
  Oxygen_saturation          DOUBLE,
  Bmi                        DOUBLE,
  Muac                       DOUBLE,
  Nutritional_status         VARCHAR(100),
  Population_type            VARCHAR(100),
  Key_population_type        VARCHAR(100),
  Who_stage                  VARCHAR(100),
  Presenting_complaints      VARCHAR(20),
  Clinical_notes             VARCHAR(600),
  On_anti_tb_drugs           VARCHAR(20),
  Tb_Screening_cough         VARCHAR(20),
  Tb_Screening_fever         VARCHAR(20),
  Tb_Screening_weightloss    VARCHAR(20),
  Tb_Screening_night_sweats  VARCHAR(20),
  Tests_ordered              VARCHAR(20),
  Spatum_smear_ordered       VARCHAR(20),
  Chest_xray_ordered         VARCHAR(20),
  Genexpert_ordered          VARCHAR(50),
  Spatum_smear_result        VARCHAR(50),
  Chest_xray_result          VARCHAR(50),
  Genexpert_result           VARCHAR(100),
  Referral                   VARCHAR(20),
  Clinical_tb_diagnosis      VARCHAR(20),
  Contact_invitation         VARCHAR(20),
  Evaluated_for_ipt          VARCHAR(20),
  Tb_status                  VARCHAR(20),
  Tb_treatment_date          DATE,
  Tb_regimen                 VARCHAR(100),
  Has_known_allergies        VARCHAR(20),
  Allergies_causative_agents VARCHAR(100),
  Allergies_reactions        VARCHAR(100),
  Allergies_severity         VARCHAR(100),
  Has_Chronic_illnesses_cormobidities VARCHAR(20),
  Chronic_illnesses_name     VARCHAR(100),
  Chronic_illnesses_onset_date DATE,
  Has_adverse_drug_reaction  VARCHAR(20),
  Medicine_causing_drug_reaction  VARCHAR(100),
  Drug_reaction              VARCHAR(100),
  Drug_reaction_severity     VARCHAR(100),
  Drug_reaction_onset_date   DATE,
  Drug_reaction_action_taken VARCHAR(100),
  Vaccinations_today         VARCHAR(100),
  Last_menstrual_period      DATE,
  Pregnancy_status           INT(11),
  Wants_pregnancy            INT(11) DEFAULT NULL,
  Pregnancy_outcome         INT(11),
  Anc_number                VARCHAR(50),
  Anc_profile               VARCHAR(50),
  Expected_delivery_date    DATE,
  Gravida                   INT(11),
  Parity                    INT(11),
  Family_planning_status    VARCHAR(100),
  Family_planning_method    VARCHAR(255),
  Reason_not_using_family_planning  VARCHAR(255),
  General_examinations_findings VARCHAR(100),
  System_review_finding     VARCHAR(50),
  Skin                      VARCHAR(50),
  Skin_finding_notes        VARCHAR(100),
  Eyes                      VARCHAR(50),
  Eyes_finding_notes        VARCHAR(100),
  ENT                       VARCHAR(50),
  ENT_finding_notes         VARCHAR(100),
  Chest                     VARCHAR(50),
  Chest_finding_notes       VARCHAR(100),
  CVS                       VARCHAR(50),
  CVS_finding_notes         VARCHAR(100),
  Abdomen                   VARCHAR(50),
  Abdomen_finding_notes     VARCHAR(100),
  CNS                       VARCHAR(50),
  CNS_finding_notes         VARCHAR(100),
  Genitourinary             VARCHAR(50),
  Genitourinary_finding_notes VARCHAR(100),
  Diagnosis                 VARCHAR(100),
  Treatment_plan            VARCHAR(100),
  Ctx_adherence             VARCHAR(50),
  Ctx_dispensed             VARCHAR(50),
  Dapsone_adherence         VARCHAR(50),
  Dapsone_dispensed         VARCHAR(50),
  Morisky_forget_taking_drugs    VARCHAR(50),
  Morisky_careless_taking_drugs  VARCHAR(50),
  Morisky_stop_taking_drugs_feeling_worse   VARCHAR(50),
  Morisky_stop_taking_drugs_feeling_better  VARCHAR(50),
  Morisky_took_drugs_yesterday      VARCHAR(50),
  Morisky_stop_taking_drugs_symptoms_under_control  VARCHAR(50),
  Morisky_feel_under_pressure_on_treatment_plan     VARCHAR(50),
  Morisky_how_often_difficulty_remembering    VARCHAR(100),
  Arv_adherence            VARCHAR(50),
  Condom_provided          VARCHAR(50),
  Screened_for_substance_abuse VARCHAR(50),
  Pwp_disclosure           VARCHAR(50),
  Pwp_partner_tested       VARCHAR(50),
  Cacx_screening           VARCHAR(50),
  Screened_for_sti         VARCHAR(50),
  Stability                VARCHAR(50),
  Next_appointment_date    DATE,
  Next_appointment_reason  VARCHAR(100),
  Appointment_type         VARCHAR(100),
  Differentiated_care      VARCHAR(100),
  Voided INT(11)
);

-- 13. Laboratory Extract
DROP TABLE IF EXISTS laboratory_extract;
CREATE TABLE laboratory_extract
(
  Person_Id       INT(11),
  Encounter_Date  DATE,
  Encounter_ID    VARCHAR(50),
  Lab_test        VARCHAR(180),
  Urgency         VARCHAR(50),
  Test_result     VARCHAR(180),
  Date_test_requested DATE ,
  Date_test_result_received DATE,
  Test_requested_by INT(11),
  Voided           INT(11)
);

-- 14. Pharmacy Extract
DROP TABLE IF EXISTS pharmacy_extract;
CREATE TABLE pharmacy_extract
(
  Person_Id       INT(11),
  Encounter_Date  DATE,
  Encounter_ID    VARCHAR(50),
  Drug            VARCHAR(100),
  Is_arv          VARCHAR(50),
  Is_ctx          VARCHAR(50),
  Is_dapsone      VARCHAR(50),
  Drug_name       VARCHAR(255),
  Dose            VARCHAR(50),
  Unit            VARCHAR(50),
  Frequency       VARCHAR(50),
  Duration        VARCHAR(50),
  Duration_units  VARCHAR(20) ,
  Duration_in_days  VARCHAR(50),
  Prescription_provider VARCHAR(50),
  Dispensing_provider VARCHAR(50),
  Regimen          VARCHAR(50),
  Adverse_effects  VARCHAR(100),
  Date_of_refill   DATE,
  Voided INT(11),
  Date_voided      DATE

);

-- 15.  MCH Enrollment
DROP TABLE IF EXISTS mch_enrollment;
CREATE TABLE mch_enrollment
(
  Person_Id                        INT(11),
  Encounter_Date                   DATE,
  Encounter_ID                     VARCHAR(50),
  Anc_number                       VARCHAR(50),
  Gestation_in_weeks               INT(11),
  Parity                           INT(11),
  Parity_abortion                  INT(11),
  Gravida                          INT(11),
  EDD                              DATE,
  Edd_ultrasound                   DATE,
  Age_at_menarche                  INT(11),
  Tb_screening                     VARCHAR(50),
  lmp                              DATE,
  lmp_estimated                    VARCHAR(50),
  First_anc_visit_date             DATE,
  Hiv_status                       VARCHAR(50),
  Hiv_test_date                    DATE,
  Partner_hiv_status               VARCHAR(50),
  Partner_hiv_test_date            DATE,
  Blood_group                      VARCHAR(100),
  Syphilis_serology                VARCHAR(100),
  Bs_for_mps                       VARCHAR(100),
  Urine_microscopy                 VARCHAR(255),
  Urinary_albumin                  VARCHAR(100),
  Glucose_measurement              VARCHAR(100),
  Urine_ph                         INT(11),
  Urine_gravity                    INT(11),
  Urine_nitrite_test               VARCHAR(100),
  Urine_leukocyte_esterace_test    VARCHAR(100),
  Urinary_ketone                   VARCHAR(100),
  Urine_bile_salt_test             VARCHAR(100),
  Urine_bile_pigment_test          VARCHAR(100),
  Urine_colour                     VARCHAR(100),
  Urine_turbidity                  VARCHAR(100),
  Urine_dipstick_for_blood         VARCHAR(100),
  Voided                           INT(11)
);

-- 16.  MCH ANC Visit
DROP TABLE IF EXISTS mch_antenatal_visit;
CREATE TABLE mch_antenatal_visit
(
  Person_Id                        INT(11),
  Encounter_Date                   DATE,
  Encounter_ID                     VARCHAR(50),
  Anc_visit_number                 INT(11),
  Anc_number                       VARCHAR(50),
  Temperature                      DOUBLE,
  Pulse_rate                       DOUBLE,
  Systolic_bp                      DOUBLE,
  Diastolic_bp                     DOUBLE,
  Respiratory_rate                 DOUBLE,
  Oxygen_saturation                INT(11),
  Weight                           DOUBLE,
  Height                           DOUBLE,
  BMI                              DOUBLE,
  Muac                             DOUBLE,
  Hemoglobin                       DOUBLE,
  Breast_exam_done                 VARCHAR(50),
  Pallor                           VARCHAR(50),
  Maturity                         INT(11),
  Fundal_height                    DOUBLE,
  Fetal_presentation               VARCHAR(100),
  Lie                              VARCHAR(100),
  Fetal_heart_rate                 INT(11),
  Fetal_movement                   VARCHAR(50),
  Who_stage                        INT(11),
  Cd4                              INT(11),
  Viral_load_sample_taken          VARCHAR(100),
  Viral_load                       INT(11),
  Ldl                              VARCHAR(100),
  Arv_status                       INT(11),
  Test_1_kit_name                  VARCHAR(50),
  Test_1_kit_lot_no                VARCHAR(50),
  Test_1_kit_expiry                DATE,
  Test_1_result                    VARCHAR(50),
  Test_2_kit_name                  VARCHAR(50),
  Test_2_kit_lot_no                VARCHAR(50),
  Test_2_kit_expiry                DATE,
  Test_2_result                    VARCHAR(50),
  Final_test_result                VARCHAR(50),
  Patient_given_result             VARCHAR(50),
  Partner_hiv_tested               VARCHAR(50),
  Partner_hiv_status               VARCHAR(50),
  Urine_microscopy                 VARCHAR(255),
  Urinary_albumin                  VARCHAR(100),
  Glucose_measurement              VARCHAR(100),
  Urine_ph                         INT(11),
  Urine_gravity                    INT(11),
  Urine_nitrite_test               VARCHAR(100),
  Urine_leukocyte_esterace_test    VARCHAR(100),
  Urinary_ketone                   VARCHAR(100),
  Urine_bile_salt_test             VARCHAR(100),
  Urine_bile_pigment_test          VARCHAR(100),
  Urine_colour                     VARCHAR(100),
  Urine_turbidity                  VARCHAR(100),
  Urine_dipstick_for_blood         VARCHAR(100),
  Syphilis_test_status             VARCHAR(50),
  Syphilis_treated_status          VARCHAR(50),
  Bs_for_mps                       VARCHAR(100),
  Anc_exercises                    VARCHAR(50),
  Tb_screening                     VARCHAR(50),
  Cacx_screening                   VARCHAR(50),
  Cacx_screening_method            VARCHAR(50),
  Prophylaxis_given                VARCHAR(50),
  Baby_azt_dispensed               VARCHAR(50),
  Baby_nvp_dispensed               VARCHAR(50),
  Has_other_illnes                 VARCHAR(50),
  Illnes_name                      VARCHAR(100),
  Illnes_Onset_Date                DATE,
  Drug                             VARCHAR(50),
  Dose                             INT(11),
  Units                            VARCHAR(50),
  Frequency                        VARCHAR(50),
  Duration                         INT(11),
  Duration_units                   VARCHAR(50),
  Anc_counselled                   VARCHAR(50),
  Counselled_subject               VARCHAR(100),
  Referred_from                    VARCHAR(100),
  Referred_to                      VARCHAR(100),
  Next_appointment_date            DATE,
  Clinical_notes                   VARCHAR(100),
  Voided                           INT(11)
);

-- 17. MCH Delivery
DROP TABLE IF EXISTS st_mch_delivery;
CREATE TABLE st_mch_delivery (
  Person_Id                                   INT(11),
  Encounter_Date                              DATE,
  Encounter_ID                                VARCHAR(50),
  Admission_number			   			      VARCHAR(200),
  Gestation_Weeks		        			  INT(50),
  Duration_Labour			    		      INT(50),
  Delivery_Mode				   			      VARCHAR(200),
  Delivery_Date_TIme            			  DATE,
  Placenta_Complete	   		    			  VARCHAR(100),
  Blood_Loss					 			  VARCHAR(100),
  Mother_Condition               			  VARCHAR(100),
  Death_Audited				     			  VARCHAR(100),
  Resuscitation_Done			 			  VARCHAR(100),
  Delivery_Complications					  VARCHAR(100),
  Delivery_Complications_Type				  VARCHAR(200),
  Delivery_Complications_Other				  VARCHAR(255),
  Delivery_Place	            			  VARCHAR(200),
  Delivery_Conducted_By			              VARCHAR(200),
  Delivery_Cadre						      VARCHAR(100),
  Delivery_Outcome							  VARCHAR(100),
  Baby_Name                                   VARCHAR(200),
  Baby_Sex                                    VARCHAR(100),
  Baby_Weight                                 DOUBLE,
  Baby_Condition                              VARCHAR(200),
  Birth_Deformity                             VARCHAR(200),
  TEO_Birth                                   VARCHAR(100),
  BF_At_Birth_Less_1_hr                       VARCHAR(100),
  Apgar_1                                     INT(50),
  Apgar_5                                     INT(50),
  Apgar_10                                    INT(50),
  Test_1_kit_name                             VARCHAR(50),
  Test_1_kit_lot_no                           VARCHAR(50),
  Test_1_kit_expiry                           DATE,
  Test_1_result                               VARCHAR(50),
  Test_2_kit_name                             VARCHAR(50),
  Test_2_kit_lot_no                           VARCHAR(50),
  Test_2_kit_expiry                           DATE,
  Test_2_result                               VARCHAR(50),
  Final_test_result                           VARCHAR(50),
  Test_Type                                   VARCHAR(50),
  Patient_given_result                        VARCHAR(50),
  Partner_hiv_tested                          VARCHAR(50),
  Partner_hiv_status                          VARCHAR(50),
  Next_HIV_Date                               DATE,
  Syphilis_Treated                            VARCHAR(50),
  Prophylaxis_given                           VARCHAR(50),
  Baby_azt_dispensed                          VARCHAR(50),
  Baby_nvp_dispensed                          VARCHAR(50),
  Clinical_notes                              VARCHAR(200),
  Next_Appointment_Date                       DATE,
  Voided                                     INT(11)
);

-- 18. MCH Discharge
DROP TABLE IF EXISTS st_mch_discharge;
CREATE TABLE st_mch_discharge (
  Person_Id                       	    	  INT(11),
  Encounter_Date                              DATE,
  Encounter_ID                                VARCHAR(50),
  Discharge_Date                              DATE,
  Vitamin_A_Supplimentation                   VARCHAR(50),
  Started_ART_In_ANC                          VARCHAR(50),
  Started_ART_In_Mat                          VARCHAR(50),
  Counselled_Infant_Feeding                   VARCHAR(50),
  Baby_Status_On_Discharge                    VARCHAR(200),
  Mother_Status_On_Discharge                  VARCHAR(200),
  Birth_Notification_Number                   VARCHAR(200),
  Referred_From                               VARCHAR(200),
  Referred_To                                 VARCHAR(200),
  Clinical_notes                              VARCHAR(255),
  Next_Appointment_Date                       DATE,
  Voided                                      INT(11)
);
