# dataPreparation.R

require(synapseClient)
require(Biobase)

#### BRING IN THE CLINICAL DATA
clinDatEnt <- loadEntity(274412)
clinDat <- clinDatEnt$objects$clinAll
standClin <- clinDat$clinical_patient_public_brca
erStatus <- standClin$breast_carcinoma_estrogen_receptor_status
prStatus <- standClin$breast_carcinoma_progesterone_receptor_status
her2IHC <- standClin$her2_immunohistochemistry_level_result
nStage <- standClin$breast_tumor_pathologic_n_stage
tStage <- standClin$breast_tumor_pathologic_t_stage

