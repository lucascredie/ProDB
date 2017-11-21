-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: prot_db
-- ------------------------------------------------------
-- Server version	5.7.19

 CREATE DATABASE prot_db;
 USE prot_db;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cofactor`
--

DROP TABLE IF EXISTS `cofactor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cofactor` (
  `name` varchar(50) NOT NULL,
  `mol_weight` int(10) DEFAULT NULL,
  `charge` varchar(50) DEFAULT NULL,
  `periodic_group` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cofactor`
--

LOCK TABLES `cofactor` WRITE;
/*!40000 ALTER TABLE `cofactor` DISABLE KEYS */;
INSERT INTO `cofactor` VALUES (' heme',616,'neutral ',NULL),(' thrombomodulin',74000,' neutral',NULL),('glycosaminoglycan',2500,' neutral',NULL),(' fibrin',145,' neutral',NULL),('glycoprotein-a ',29000,' neutral',NULL),(' retinal',284,' nuetral',NULL);
/*!40000 ALTER TABLE `cofactor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disease`
--

DROP TABLE IF EXISTS `disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disease` (
  `name` varchar(50) NOT NULL,
  `symptoms` mediumtext,
  `type` varchar(100) DEFAULT NULL,
  `prognosis` mediumtext,
  `treatment` mediumtext,
  `description` mediumtext,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease`
--

LOCK TABLES `disease` WRITE;
/*!40000 ALTER TABLE `disease` DISABLE KEYS */;
INSERT INTO `disease` VALUES ('myopathy','Symmetric proximal muscle weakness Malaise, fatigue Dark-colored urine (suggests myoglobinuria) and/or fever Absence of sensory complaints or paresthesias; however, deep tendon reflexes (DTRs) may be diminished/absent in hypokalemic paralysisVery late findings: Atrophy and hyporeflexia (early presence usually implicates neuropathies)Normal level of consciousness Gottron papules in dermatomyositis: Pink-to-violaceous scaly areas over knuckles, elbows, and knees','  Muscular Degenerative',' If the underlying cause of the myopathy can be treated successfully, as in the case of endocrine myopathies, the prognosis is usually good. Progressive myopathies that develop later in life usually have a better prognosis than conditions that develop during childhood.\nPatients with Duchenne MD rarely live beyond their middle to late 20s. Patients with Becker MD may live until middle age. ','Treatment for myopathies depends on the cause. The goals of myopathy treatment are to slow progression of the disease and relieve symptoms.\n Treatments range from drug therapy for muscular dystrophies and inflammatory myopathies to avoiding situations that work the muscles too hard for metabolic myopathies. Some physicians recommend that patients with myopathy keep their weight down (a lighter body demands less work from the muscles) and avoid overexerting the muscles.\nWhen breathing problems develop, an incentive spirometer can help improve breathing function in some patients. Unfortunately, there is no way to strengthen the breathing muscles.',' The myopathies are neuromuscular disorders in which the primary symptom is muscle weakness due to dysfunction of muscle fiber. Other symptoms of myopathy can include include muscle cramps, stiffness, and spasm. Myopathies can be inherited (such as the muscular dystrophies) or acquired (such as common muscle cramps). Myopathies are grouped as follows:\ncongenital myopathies: characterized by developmental delays in motor skills; skeletal and facial abnormalities are occasionally evident at birth\nmuscular dystrophies: characterized by progressive weakness in voluntary muscles; sometimes evident at birth\nmitochondrial myopathies: caused by genetic abnormalities in mitochondria, cellular structures that control energy; include Kearns-Sayre syndrome, MELAS and MERRF\nglycogen storage diseases of muscle: caused by mutations in genes controlling enzymes that metabolize glycogen and glucose (blood sugar); include Pompes, Andersens and Coris diseases\nmyoglobinurias: caused by disorders in the metabolism of a fuel (myoglobin) necessary for muscle work; include McArdle, Tarui, and DiMauro diseases\ndermatomyositis: an inflammatory myopathy of skin and muscle\nmyositis ossificans: characterized by bone growing in muscle tissue\nfamilial periodic paralysis: characterized by episodes of weakness in the arms and legs\npolymyositis, inclusion body myositis, and related myopathies: inflammatory myopathies of skeletal muscle\nneuromyotonia: characterized by alternating episodes of twitching and stiffness; and\nstiff-man syndrome:  characterized by episodes of rigidity and reflex spasms\ncommon muscle cramps and stiffness, and\ntetany:  characterized by prolonged spasms of the arms and legs'),('mitochondrial encephalopathy',' MELAS is a condition that affects many of the bodys systems, particularly the brain and nervous system (encephalo-) and muscles (myopathy). In most cases, the signs and symptoms of this disorder appear in childhood following a period of normal development.[3] Early symptoms may include muscle weakness and pain, recurrent headaches, loss of appetite, vomiting, and seizures. Most affected individuals experience stroke-like episodes beginning before age 40. These episodes often involve temporary muscle weakness on one side of the body (hemiparesis), altered consciousness, vision abnormalities, seizures, and severe headaches resembling migraines. Repeated stroke-like episodes can progressively damage the brain, leading to vision loss, problems with movement, and a loss of intellectual function (dementia). The stroke-like episodes can be mis-diagnosed as epilepsy by a doctor not aware of the MELAS condition.\n\nMost people with MELAS have a buildup of lactic acid in their bodies, a condition called lactic acidosis. Increased acidity in the blood can lead to vomiting, abdominal pain, extreme tiredness (fatigue), muscle weakness, loss of bowel control, and difficulty breathing. Less commonly, people with MELAS may experience involuntary muscle spasms (myoclonus), impaired muscle coordination (ataxia), hearing loss, heart and kidney problems, diabetes, epilepsy, and hormonal imbalances.',' Neuro Degenerative','null',' There is no known treatment for the underlying disease, which is progressive and fatal. Patients are managed according to what areas of the body are affected at a particular time. Enzymes, amino acids, antioxidants and vitamins have been used, but there have been no consistent successes reported.\n\nAlthough there hats have shown promise and given hope to MELAS patients.\n\nCoQ10 has been helpful for some MELAS patients.[7] Nicotinamide has been used because complex l accepts electrons from NADH and ultimately transfers electrons to CoQ10.\nRiboflavin has been reported to improve the function of a patient with complex l deficiency and the 3250T-C mutation.[8]\nThe administration of L-arginine during the acute and interictal periods may represent a potential new therapy for this syndrome to reduce brain damage due to impairment of vasodilation in intracerebral arteries due to nitric oxide depletion.\nThere is also a case report where succinate was successfully used to treat uncontrolled convulsions in MELAS patients, although this treatment modality is yet to be thoroughly investigated or widely recommended.\n','Mitochondrial encephalomyopathy, lactic acidosis, and stroke-like episodes (MELAS) is one of the family of mitochondrial cytopathies, which also include MERRF, and Lebers hereditary optic neuropathy. It was first characterized under this name in 1984. A feature of these diseases is that they are caused by defects in the mitochondrial genome which is inherited purely from the female parent.[2] However, it is important to know that some of the proteins essential to normal mitochondrial function are produced by the nuclear genome, and are subsequently transported to the mitochondria for use. As such, mutations in these proteins can result in mitochondrial disorders, but can be inherited from both male and female parent in the typical fashion. The disease can manifest in both sexes.'),('Alzheimers','  The most common early symptom of Alzheimers is difficulty remembering newly learned information because Alzheimers changes typically begin in the part of the brain that affects learning. As Alzheimers advances through the brain it leads to increasingly severe symptoms, including disorientation, mood and behavior changes; deepening confusion about events, time and place; unfounded suspicions about family, friends and professional caregivers; more serious memory loss and behavior changes; and difficulty speaking, swallowing and walking. ','Neuro Degnerative',' null','Currently, there is no cure for Alzheimers. But drug and non-drug treatments may help with both cognitive and behavioral symptoms.\n\nResearchers are looking for new treatments to alter the course of the disease and improve the quality of life for people with dementia. ',' Two abnormal structures called plaques and tangles are prime suspects in damaging and killing nerve cells.\n\nPlaques are deposits of a protein fragment called beta-amyloid (BAY-tuh AM-uh-loyd) that build up in the spaces between nerve cells.\n\nTangles are twisted fibers of another protein called tau (rhymes with \"wow\") that build up inside cells.\n\nThough most people develop some plaques and tangles as they age, those with Alzheimers tend to develop far more. They also tend to develop them in a predictable pattern, beginning in areas important for memory before spreading to other regions.\n\nScientists do not know exactly what role plaques and tangles play in Alzheimers disease. Most experts believe they somehow play a critical role in blocking communication among nerve cells and disrupting processes that cells need to survive.\n\nIts the destruction and death of nerve cells that causes memory failure, personality changes, problems carrying out daily activities and other symptoms of Alzheimers disease.'),('parkinsons','There are five primary motor symptoms of Parkinson’s disease: tremor, rigidity, bradykinesia (slow movement), postural instability (balance problems), and walking/gait problems. Observing one or more of these symptoms is the main way that physicians diagnose Parkinson’s.\n\nIt is important to know that not all of these symptoms must be present for a diagnosis of Parkinson’s disease to be considered. In fact, younger people may only notice one or two of these motor symptoms, especially in the early stages of the disease. Not everyone with Parkinson’s disease has a tremor, nor is a tremor proof of Parkinson’s. If you suspect Parkinson’s, see a neurologist or movement disorders specialist. ',' Neuro Degenerative',' null ',' null',' Parkinsons disease (PD) is a chronic and progressive disease of the central nervous system, meaning the symptoms will continue and worsen over time. Approximately 1–1.5 million people in the United States currently have PD. It is estimated that approximately 60,000 Americans are diagnosed with PD each year.\n\nThe disease is sometimes called idiopathic Parkinsons, because the exact cause is not known. However, many Parkinsons symptoms are believed to result from a lack of dopamine, one of the brains chemical messengers. Without enough dopamine, the neurons (nerve cells in the brain) that control movement cant function properly. This makes it difficult for people with Parkinsons to move normally. Symptoms may vary from person to person.\n\nNEUPRO has been approved by the FDA to treat Parkinsons disease and the approval was based on improvements in symptoms measured by a combination of motor function and activities of daily living. NEUPRO is not approved for the treatment of non-motor symptoms. The following information is provided for your education and to help you understand your disease.  '),('autism',' persistent deficits in social communication and interaction across multiple contexts, as well as restricted, repetitive patterns of behavior, interests, or activities. These deficits are present in early childhood, typically before age three, and lead to clinically significant functional impairment. Sample symptoms include lack of social or emotional reciprocity, stereotyped and repetitive use of language or idiosyncratic language, and persistent preoccupation with unusual objects. The disturbance must not be better accounted for by Rett syndrome, intellectual disability or global developmental delay. ICD-10 uses essentially the same definition.','Developmental Disorder ','null ','null ',' Autism is a neurodevelopmental disorder characterized by impaired social interaction, impaired verbal and non-verbal communication, and restricted and repetitive behavior. Parents usually notice signs in the first two years of their childs life. These signs often develop gradually, though some children with autism reach their developmental milestones at a normal pace and then regress. The diagnostic criteria require that symptoms become apparent in early childhood, typically before age three.\n\nAutism is caused by a combination of genetic and environmental factors. Some cases are strongly associated with certain infections during pregnancy including rubella and use of alcohol or cocaine. Controversies surround other proposed environmental causes; for example the vaccine hypotheses, which have been disproven. Autism affects information processing in the brain by altering how nerve cells and their synapses connect and organize; how this occurs is not well understood. In the DSM V, autism is included within the autism spectrum (ASDs), as is Asperger syndrome, which lacks delays in cognitive development and language, and pervasive developmental disorder, not otherwise specified (commonly abbreviated as PDD-NOS), which was diagnosed when the full set of criteria for autism or Asperger syndrome were not met. '),('schizophrenia','    Delusions. These are false beliefs that are not based in reality. For example, you think that youre being harmed or harassed; certain gestures or comments are directed at you; you have exceptional ability or fame; another person is in love with you; or a major catastrophe is about to occur. Delusions occur in most people with schizophrenia.\nHallucinations. These usually involve seeing or hearing things that dont exist. Yet for the person with schizophrenia, they have the full force and impact of a normal experience. Hallucinations can be in any of the senses, but hearing voices is the most common hallucination.\nDisorganized thinking (speech). Disorganized thinking is inferred from disorganized speech. Effective communication can be impaired, and answers to questions may be partially or completely unrelated. Rarely, speech may include putting together meaningless words that cant be understood, sometimes known as word salad.\nExtremely disorganized or abnormal motor behavior. This may show in a number of ways, from childlike silliness to unpredictable agitation. Behavior isnt focused on a goal, so its hard to do tasks. Behavior can include resistance to instructions, inappropriate or bizarre posture, a complete lack of response, or useless and excessive movement.\nNegative symptoms. This refers to reduced or lack of ability to function normally. For example, the person may neglect personal hygiene or appear to lack emotion (doesnt make eye contact, doesnt change facial expressions or speaks in a monotone). Also, the person may have lose interest in everyday activities, socially withdraw or lack the ability to experience pleasure.','Mental Dissociative Disorder','null','In most schizophrenia patients, it is difficult to implement effective rehabilitation programs without antipsychotic agents. Prompt initiation of drug treatment is vital, especially within five years after the first acute episode, as this is when most illness-related changes in the brain occur. Predictors of a poor prognosis include the illicit use of amphetamines and other central nervous system stimulants,22 as well as alcohol and drug abuse. Alcohol, caffeine, and nicotine also have the potential to cause drug interactions.\n\nIn the event of an acute psychotic episode, drug therapy should be administered immediately. During the first seven days of treatment, the goal is to decrease hostility and to attempt to return the patient to normal functioning (e.g., sleeping and eating).2 At the start of treatment, appropriate dosing should be titrated based on the patient’s response.2\n\nTreatment during the acute phase of schizophrenia is followed by maintenance therapy, which should be aimed at increasing socialization and at improving self-care and mood.2 Maintenance treatment is necessary to help prevent relapse. The incidence of relapse among patients receiving maintenance therapy, compared with those not receiving such therapy, is 18% to 32% versus 60% to 80%, respectively.16,23 Drug therapy should be continued for at least 12 months after the remission of the first psychotic episode.','Schizophrenia is a complex, chronic mental health disorder characterized by an array of symptoms, including delusions, hallucinations, disorganized speech or behavior, and impaired cognitive ability. The early onset of the disease, along with its chronic course, make it a disabling disorder for many patients and their families.1 Disability often results from both negative symptoms (characterized by loss or deficits) and cognitive symptoms, such as impairments in attention, working memory, or executive function.2 In addition, relapse may occur because of positive symptoms, such as suspiciousness, delusions, and hallucinations.1,2 The inherent heterogeneity of schizophrenia has resulted in a lack of consensus regarding the disorder’s diagnostic criteria, etiology, and pathophysiology.'),('anemia',' Fatigue\nWeakness\nPale or yellowish skin\nIrregular heartbeats\nShortness of breath\nDizziness or lightheadedness\nChest pain\nCold hands and feet\nHeadache',' Morphological Disorder',' null','High iron diet','     Anemia is a condition in which you dont have enough healthy red blood cells to carry adequate oxygen to the bodys tissues. Having anemia may make you feel tired and weak.\n\nThere are many forms of anemia, each with its own cause. Anemia can be temporary or long term, and it can range from mild to severe. See your doctor if you suspect you have anemia because it can be a warning sign of serious illness.\n\nTreatments for anemia range from taking supplements to undergoing medical procedures. You may be able to prevent some types of anemia by eating a healthy, varied diet.'),('prothrombin difficiency','    umbilical cord bleeding at birth.\nunexplained bruising.\nabnormal bleeding after giving birth, having surgery, or being injured.\nprolonged nose bleeds.\nbleeding from the gums.\nheavy or prolonged menstrual periods.','   Blood Clotting Disorder',' Prothrombin difficiency can lead to death due to the bodies inability to clot.  ','Controlling Bleeding\nTreatment for bleeding episodes may include infusions of prothrombin complex, a mixture of factor II (prothrombin) and other clotting factors, to boost your clotting ability. Infusions of fresh frozen plasma (FFP) have been used in the past. They are less common today, thanks to lower-risk alternatives.\n\nTreatment of Underlying Conditions\nOnce your bleeding is under control, underlying conditions that impair blood platelet function can be treated. If your underlying condition cannot be resolved, the focus of your treatment will shift to managing the symptoms and impacts of your clotting disorder.\n\nProphylactic Treatment Before Surgery\nIf you are planning any surgeries or invasive procedures, infusions of clotting factor or other treatments may be required to minimize bleeding risks','   Prothrombin deficiency is a bleeding disorder that slows the blood clotting process. People with this condition often experience prolonged bleeding following an injury, surgery, or having a tooth pulled. In severe cases of prothrombin deficiency, heavy bleeding occurs after minor trauma or even in the absence of injury (spontaneous bleeding). Women with prothrombin deficiency can have prolonged and sometimes abnormally heavy menstrual bleeding. Serious complications can result from bleeding into the joints, muscles, brain, or other internal organs. Milder forms of prothrombin deficiency do not involve spontaneous bleeding, and the condition may only become apparent following surgery or a serious injury.      '),('fibrosis','Signs and symptoms of pulmonary fibrosis may include:\n\nShortness of breath (dyspnea)\nA dry cough\nFatigue\nUnexplained weight loss\nAching muscles and joints\nWidening and rounding of the tips of the fingers or toes (clubbing)\nThe course of pulmonary fibrosis — and the severity of symptoms — can vary considerably from person to person. Some people become ill very quickly with severe disease. Others have moderate symptoms that worsen more slowly, over months or years.\n\nSome people may experience a rapid worsening of their symptoms (acute exacerbation), such as severe shortness of breath, that may last for several days to weeks. People who have acute exacerbations may be placed on a mechanical ventilator. Doctors may also prescribe antibiotics, corticosteroid medications or other medications to treat an acute exacerbation.',' Pulmonary Disease',' Death','The lung scarring that occurs in pulmonary fibrosis cant be reversed, and no current treatment has proved effective in stopping progression of the disease. Some treatments may improve symptoms temporarily or slow the diseases progression. Others may help improve quality of life. Doctors will evaluate the severity of your condition to determine the most appropriate treatment for your condition.\n\nMedications\n\nYour doctor may recommend newer medications, including pirfenidone (Esbriet) and nintedanib (Ofev). These medications may help slow the progression of idiopathic pulmonary fibrosis. Both medications have been approved by the Food and Drug Administration (FDA). Additional medications and new formulations of these medications are being developed but have not yet been FDA approved.\n\nNintedanib can cause side effects such as diarrhea and nausea. Side effects of pirfenidone include rash, nausea and diarrhea.\n\nResearchers continue to study medications to treat pulmonary fibrosis.\n\nDoctors may recommend anti-acid medications to treat gastroesophageal reflux disease (GERD), a digestive condition that commonly occurs in people with idiopathic pulmonary fibrosis.\n\nOxygen therapy\n\nUsing oxygen cant stop lung damage, but it can:\n\nMake breathing and exercise easier\nPrevent or lessen complications from low blood oxygen levels\nReduce blood pressure in the right side of your heart\nImprove your sleep and sense of well-being\nYou may receive oxygen when you sleep or exercise, although some people may use it all the time. Some people carry a canister of oxygen, making them more mobile.\n\nPulmonary rehabilitation\n\nPulmonary rehabilitation can help you manage your symptoms and improve your daily functioning. Pulmonary rehabilitation programs focus on:\n\nPhysical exercise to improve your endurance\nBreathing techniques that may improve lung efficiency\nNutritional counseling\nCounseling and support\nEducation about your condition\nLung transplant\n\nLung transplantation may be an option for people with pulmonary fibrosis. Having a lung transplant can improve your quality of life and allow you to live a longer life. However, a lung transplant can involve complications such as rejection and infection. Your doctor may discuss with you if a lung transplant may be appropriate for your condition.','Pulmonary fibrosis is a lung disease that occurs when lung tissue becomes damaged and scarred. This thickened, stiff tissue makes it more difficult for your lungs to work properly. As pulmonary fibrosis worsens, you become progressively more short of breath.\n\nThe scarring associated with pulmonary fibrosis can be caused by a multitude of factors. But in most cases, doctors cant pinpoint whats causing the problem. When a cause cant be found, the condition is termed idiopathic pulmonary fibrosis.\n\nThe lung damage caused by pulmonary fibrosis cant be repaired, but medications and therapies can sometimes help ease symptoms and improve quality of life. For some people, a lung transplant might be appropriate.'),('atherosclerosis','  Atherosclerosis develops gradually. Mild atherosclerosis usually doesnt have any symptoms.\n\nYou usually wont have atherosclerosis symptoms until an artery is so narrowed or clogged that it cant supply adequate blood to your organs and tissues. Sometimes a blood clot completely blocks blood flow, or even breaks apart and can trigger a heart attack or stroke.\n\nSymptoms of moderate to severe atherosclerosis depend on which arteries are affected. For example:\n\nIf you have atherosclerosis in your heart arteries, you may have symptoms, such as chest pain or pressure (angina).\nIf you have atherosclerosis in the arteries leading to your brain, you may have signs and symptoms such as sudden numbness or weakness in your arms or legs, difficulty speaking or slurred speech, temporary loss of vision in one eye, or drooping muscles in your face. These signal a transient ischemic attack (TIA), which, if left untreated, may progress to a stroke.\nIf you have atherosclerosis in the arteries in your arms and legs, you may have symptoms of peripheral artery disease, such as leg pain when walking (claudication).\nIf you have atherosclerosis in the arteries leading to your kidneys, you develop high blood pressure or kidney failure.','Cardiovascular Disease',' null','Treatment\n\nLifestyle changes, such as eating a healthy diet and exercising, are often the most appropriate treatment for atherosclerosis. Sometimes, medication or surgical procedures may be recommended as well.\n\nMedications\n\nVarious drugs can slow — or even reverse — the effects of atherosclerosis. Here are some common choices:\n\nCholesterol medications. Aggressively lowering your low-density lipoprotein (LDL) cholesterol, the \"bad\" cholesterol, can slow, stop or even reverse the buildup of fatty deposits in your arteries. Boosting your high-density lipoprotein (HDL) cholesterol, the \"good\" cholesterol, may help, too.\n\nYour doctor can choose from a range of cholesterol medications, including drugs known as statins and fibrates. In addition to lowering cholesterol, statins have additional effects that help stabilize the lining of your heart arteries and prevent atherosclerosis.\n\nAnti-platelet medications. Your doctor may prescribe anti-platelet medications, such as aspirin, to reduce the likelihood that platelets will clump in narrowed arteries, form a blood clot and cause further blockage.\nBeta blocker medications. These medications are commonly used for coronary artery disease. They lower your heart rate and blood pressure, reducing the demand on your heart and often relieve symptoms of chest pain. Beta blockers reduce the risk of heart attacks and some heart rhythm problems.\nAngiotensin-converting enzyme (ACE) inhibitors. These medications may help slow the progression of atherosclerosis by lowering blood pressure and producing other beneficial effects on the heart arteries. ACE inhibitors can also reduce the risk of recurrent heart attacks.\nCalcium channel blockers. These medications lower blood pressure and are sometimes used to treat angina.\nWater pills (diuretics). High blood pressure is a major risk factor for atherosclerosis. Diuretics lower blood pressure.\nOther medications. Your doctor may suggest certain medications to control specific risk factors for atherosclerosis, such as diabetes. Sometimes specific medications to treat symptoms of atherosclerosis, such as leg pain during exercise, are prescribed.\nSurgical procedures\n\nSometimes more aggressive treatment is needed to treat atherosclerosis. If you have severe symptoms or a blockage that threatens muscle or skin tissue survival, you may be a candidate for one of the following surgical procedures:\n\nAngioplasty and stent placement. In this procedure, your doctor inserts a long, thin tube (catheter) into the blocked or narrowed part of your artery. A second catheter with a deflated balloon on its tip is then passed through the catheter to the narrowed area.\n\nThe balloon is then inflated, compressing the deposits against your artery walls. A mesh tube (stent) is usually left in the artery to help keep the artery open.\n\nEndarterectomy. In some cases, fatty deposits must be surgically removed from the walls of a narrowed artery. When the procedure is done on arteries in the neck (the carotid arteries), its called a carotid endarterectomy.\nFibrinolytic therapy. If you have an artery thats blocked by a blood clot, your doctor may use a clot-dissolving drug to break it apart.\nBypass surgery. Your doctor may create a graft bypass using a vessel from another part of your body or a tube made of synthetic fabric. This allows blood to flow around the blocked or narrowed artery.     ',' Arteriosclerosis occurs when the blood vessels that carry oxygen and nutrients from your heart to the rest of your body (arteries) become thick and stiff — sometimes restricting blood flow to your organs and tissues. Healthy arteries are flexible and elastic, but over time, the walls in your arteries can harden, a condition commonly called hardening of the arteries.\n\nAtherosclerosis is a specific type of arteriosclerosis, but the terms are sometimes used interchangeably. Atherosclerosis refers to the buildup of fats, cholesterol and other substances in and on your artery walls (plaques), which can restrict blood flow.\n\nThese plaques can burst, triggering a blood clot. Although atherosclerosis is often considered a heart problem, it can affect arteries anywhere in your body. Atherosclerosis may be preventable and is treatable.'),('retinal degenerative disorder',' Progressive Blindess         ',' Retinal Degenerative Disorder',' People who suffer f        ','          ',' Retinal degeneration is the deterioration of the retina caused by the progressive and eventual death of the cells of the retina. There are several reasons for retinal degeneration, including artery or vein occlusion, diabetic retinopathy, R.L.F./R.O.P. (retrolental fibroplasia/ retinopathy of prematurity), or disease (usually hereditary). These may present in many different ways such as impaired vision, night blindness, retinal detachment, light sensitivity, tunnel vision, and loss of peripheral vision to total loss of vision.[4] Of the retinal degenerative diseases retinitis pigmentosa (RP) is a very important example.\n\nInherited retinal degenerative disorders in humans exhibit genetic and phenotypic heterogeneity in their underlying causes and clinical outcomes*. These retinopathies affect approximately one in 2000 individuals worldwide. A wide variety of causes have been attributed to retinal degeneration, such as disruption of genes that are involved in phototransduction, biosynthesis and folding of the rhodopsin molecule, and the structural support of the retina. Mutations in the rhodopsin gene account for 25% to 30% (30% to 40% according to) of all cases of autosomal dominant retinitis pigmentosa (adRP) in North America. There are many mechanisms of retinal degeneration attributed to rhodopsin mutations or mutations that involve or affect the function of rhodopsin. One mechanism of retinal degeneration is rhodopsin overexpression. Another mechanism, whereby a mutation caused a truncated rhodopsin, was found to affect rod function and increased the rate of photoreceptor degeneration.');
/*!40000 ALTER TABLE `disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enzyme`
--

DROP TABLE IF EXISTS `enzyme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enzyme` (
  `prot_name` varchar(50) NOT NULL,
  `lig_name` varchar(15) NOT NULL,
  `cofactor_name` varchar(50) DEFAULT NULL,
  `inhib_name` varchar(15) NOT NULL,
  `Km` varchar(15) NOT NULL,
  `Kcat` varchar(15) NOT NULL,
  `Vmax` varchar(15) NOT NULL,
  PRIMARY KEY (`prot_name`,`lig_name`,`inhib_name`),
  KEY `lig_name` (`lig_name`),
  KEY `cofactor_name` (`cofactor_name`),
  KEY `inhib_name` (`inhib_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enzyme`
--

LOCK TABLES `enzyme` WRITE;
/*!40000 ALTER TABLE `enzyme` DISABLE KEYS */;
INSERT INTO `enzyme` VALUES ('acetylcholinesterase','acetylcholine','null','caffiene','null','null','null'),('thrombin','thrombis','thrombomodulin','heperin','null','null','null'),('formaldehyde dismutase','formaldehyde','Zn2+','null','null','null','null'),('Lecithin–cholesterol acyltransferase','null','sphingomyelin','null','null','null','null'),('ATP Synthase','adenosine triph','null','pyrazole','null','null','null'),('serine racemase','serine','null','malonate','null','null','null');
/*!40000 ALTER TABLE `enzyme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inhibitor`
--

DROP TABLE IF EXISTS `inhibitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inhibitor` (
  `name` varchar(50) NOT NULL,
  `mol_weight` int(7) NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inhibitor`
--

LOCK TABLES `inhibitor` WRITE;
/*!40000 ALTER TABLE `inhibitor` DISABLE KEYS */;
INSERT INTO `inhibitor` VALUES ('caffiene',194,'non-competative'),('sarin',140,'covalent'),('heperin',12000,'non-competative'),('warfarin',308,'non-competative'),('pyrazole',68,'competative'),('sphingomyelin',650,'uncompetative'),('malonate',104,'non-competative');
/*!40000 ALTER TABLE `inhibitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligand`
--

DROP TABLE IF EXISTS `ligand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ligand` (
  `name` varchar(50) NOT NULL,
  `mol_weight` int(7) NOT NULL,
  `polarity` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligand`
--

LOCK TABLES `ligand` WRITE;
/*!40000 ALTER TABLE `ligand` DISABLE KEYS */;
INSERT INTO `ligand` VALUES ('acetylcholine',146,NULL),('nicotine',162,NULL),('cholesterol',387,NULL),('formaldehyde',30,NULL),('adenosine triphosphate',507,NULL),('methionine',149,NULL);
/*!40000 ALTER TABLE `ligand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mutation`
--

DROP TABLE IF EXISTS `mutation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mutation` (
  `disease_name` varchar(50) NOT NULL,
  `prot_name` varchar(15) NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`disease_name`,`prot_name`),
  KEY `prot_name` (`prot_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mutation`
--

LOCK TABLES `mutation` WRITE;
/*!40000 ALTER TABLE `mutation` DISABLE KEYS */;
/*!40000 ALTER TABLE `mutation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protein`
--

DROP TABLE IF EXISTS `protein`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protein` (
  `name` varchar(50) NOT NULL,
  `localization` varchar(15) NOT NULL,
  `mol_weight` int(7) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `seq_id` int(7) DEFAULT NULL,
  `gene_loc` varchar(10) DEFAULT NULL,
  `gene` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `seq_id` (`seq_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protein`
--

LOCK TABLES `protein` WRITE;
/*!40000 ALTER TABLE `protein` DISABLE KEYS */;
INSERT INTO `protein` VALUES ('actin','cytoplasm',41606,'cytoskeletal protein',1,'4p22.7','Act5c'),('groEL','cytoplasm/extra',52854,'chaperone protein',2,'2q33.1','Cpn60'),('acetylcholinesterase','cytoplasm/extra',70954,'enzyme',3,'7q22','AChE'),('hemoglobin','extracellular',34987,'hemoprotein',4,'7p45.8',NULL),('nicotonic acetylcholine receptor','extracellular',47987,'transmembrane receptor',5,'9p32.1',NULL),('thrombin','extracellular',106789,'enzyme',6,'11p11-q12',NULL),('integrin','cytoplasm/extra',54302,'cell adhesion',7,'4q12.4',NULL),('rhodopsin','cytoplasm/extra',46383,'g-protein coupled receptor',8,'20p23.9',NULL),('formaldehyde dismutase','cytoplasm/extra',98765,'enzyme',9,'16p10.5',NULL),('Lecithin–cholesterol acyltransferase','cytoplasm/extra',23457,'enzyme',10,'19p15.8',NULL),('ATP Synthase','cytoplasm/extra',78654,'enzyme',11,'20q16.2',NULL),('serine racemase','cytoplasm/extra',54632,'enzyme',12,'6q18.7',NULL);
/*!40000 ALTER TABLE `protein` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receptor`
--

DROP TABLE IF EXISTS `receptor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receptor` (
  `prot_name` varchar(50) NOT NULL,
  `lig_name` varchar(15) NOT NULL,
  `cofactor_name` varchar(50) DEFAULT NULL,
  `pathway` varchar(15) NOT NULL,
  `class` varchar(15) NOT NULL,
  PRIMARY KEY (`prot_name`,`lig_name`),
  KEY `lig_name` (`lig_name`),
  KEY `cofactor_name` (`cofactor_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receptor`
--

LOCK TABLES `receptor` WRITE;
/*!40000 ALTER TABLE `receptor` DISABLE KEYS */;
INSERT INTO `receptor` VALUES ('nicotonic acetylcholine receptor','nicotine','null','parasympathetic','transmembrane'),('rhodopsin','retinal','null','vision','G-coupled');
/*!40000 ALTER TABLE `receptor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence`
--

DROP TABLE IF EXISTS `sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequence` (
  `id` int(7) NOT NULL,
  `sequence` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence`
--

LOCK TABLES `sequence` WRITE;
/*!40000 ALTER TABLE `sequence` DISABLE KEYS */;
INSERT INTO `sequence` VALUES (1,'mdddiaalvvdngsgmckagfagddapravfpsivgrprhqgvmvgmgqkdsyvgdeaqskrgiltlkypiehgivtnwddmekiwhhtfynelrvapeehpvllteaplnpkanrekmtqimfetfntpamyvaiqavlslyasgrttgivmdsgdgvthtvpiyegyalphailrldlagrdltdylmkiltergysftttaereivrdikeklcyvaldfeqemataassssleksyelpdgqvitignerfrcpealfqpsflgmescgihettfnsimkcdvdirkdlyantvlsggttmypgiadrmqkeitalapstmkikiiapperkysvwiggsilaslstfqqmwiskqeydesgpsivhrkcf'),(2,' maakevkfgdsarkkmlvgvnvladavkatlgpkgrnvvldksfgaptitkdgvsvakeielkdkfenmgaqlvkdvaskandeagdgtttatvlaqaivneglkavaagmnpmdlkrgidkatiaivaelkslakpcsdskaiaqvgtisansdesigniiaeamnkvgkegvitveegsglenelsvvegmqfdrgylspyfinkpdtmvaeldnpllllvdkkisnirellpvleavaksgrpllivaedvegealatlvvnnmrgivkvaavkapgfndrrkamlqviailtgatvisekvglslesatlehlgkpkalvlnkenttimhgagaqadieaavaqir kqieetssdydreklqerlaklaggvavikvgaatevemkekkarveaalhatraaveegvvpgggvalvralqaieglkgdnedqnvgiallrraveaplrqivanagdepsvvvdkvkqgsgnfgfnaasgvygdmiemgildpakvtrsalqaassigglmitteam vadivedkaapampdmggmggmggmm '),(3,'  mvpmfnhninhfnnvivttlthhqytnsrcnsnnnvikritnsilksvtvftvktlwnhllvpivvillfqssanvfssalphseinsfhadgpsssssfnsehhhhhhhndplvvltkkgyvrgrsvvsptgkpvdaflgiryakpptgkfrfrhpkpidswqgifnatsfsgacyqvndtffgnfmgatewnpnvpldedclsvniwv prprpksaavllwiyggsfwsgsssldfydgsvlageesiifvsinyrvaslgfiffdtsdapgnaglfdqlmamewireniaafggnpanitifgesag avsaalhllsplsrnvfsqailqsgsatcpwaisdrkkayqrslalaqavgcgststrsvhaiiecmqsipaselvaqeetttgvvefafipivdgsfldedpevslrtknfkhtpiltgsnrdegtyflvyhsphifnlsegiyisrsefqsliriiyphlsplaqeaviqeythwinpddqienreatdkfvgdyhftcpvnemsyry alygndvwtyhfthrssksfwpswmgvihgeeikfvlgepldpvhgytpaevqlskrimrywanfartgnpnkqfpdgddtesivwpeytahekeylvis tndssigrglrakqcafwknflpklinalenrhnstctshsnqigssnwslaislislimcflpslr '),(4,'  mhssivlatvlfvaiasasktrelcmkslehakvgtskeakqdgidlykhmfehypamkkyfkhrenytpadvqkdpffikqgqnillachvlcatyddr etfdayvgelmarherdhvkvpndvwnhfwehfieflgskttldeptkhawqeigkefsheishhgrhsvrdhcmnsleyiaigdkehqkqngidlykhm fehyphmrkafkgrenftkedvqkdaffvnkdtrfcwpfvccdssyddeptfdyfvdalmdrhikddihlpqeqwhefwklfaeylnekshqhlteaekhawstigedfaheadkhakaekdhhegehkeehh'),(5,' mcggqrplfllpllavclgakgrnqeerllgdlmqgynphlrpaehdsdvvnvslkltltnlislnereealttnvwiemqwcdyrlrwdprdygglwvlrvpstmvwrpdivlennvdgvfevalycnvlvspdgcvywlppaifrsscpvsvtffpfdwqncslifqsqtystneinlqlsqedgqtiewifidpeaftengewairh rpakmlldeaapaeeaghqkvvfylliqrkplfyviniiapcvlissvailiyflpakaggqkctvainvllaqtvflflvakkvpetsqavpliskylt fllvvtilivvnavvvlnvslrsphthsmargvrkvflrllpqllrmhvrplapvavqdahprlqngsssgwpitageevalclprsellfrqrqrnglv raaleklekgpesgqspewcgslkqaapaiqacveacnliararhqqthfdsgnkewflvgrvldrvcflamlslfvcgtagiflmahynrvpalpfpgd prsylpssd'),(6,' mahskttmlqglllfgllhltlshdgvflekgqalsllkrprrankgfleemikgnlerecleetcnyeeafealestvdtdafwakyqvcqgtkmprtt ldaclegncaanlgqnyrgtinytksgiecqvwtskyphipkfnasiypdltenycrnpdnnsegpwcytrdptvereecpipvcgqerttveftprvkp sttgqpcesekgmlytgtlsvtvsgarclpwasekakallqdktinpevkllenycrnpdaddegvwcvideppyfeycdlhycdssledeneqveeiagrtifqefktffdektfgegeadcgtrplfekkqitdqsekelmdsymggrvvhgndaevgsapwqvmlykkspqellcgaslisnswiltaahcllyppwdknlttndilvrmglhfrakyernkekivlldkviihpkynwkenmdrdiallhlkrpvifsdyihpvclptkelvqrlmlagfkgrvtgwgnlketwattpenlptvlq qlnlpivdqntckastrvkvtdnmfcagyspedskrgdacegdsggpfvmknpddnrwyqvgivswgegcdrdgkygfythvfrlkkwmrktiekqg'),(7,' msnkkatfisrafsspsdskssaqipralaprplavalrrvlgggllavglvgpalgqtpglelsdldgsngfiingiaafddsgqsvsgaedvngdgfddlvigapdaspngvsgagqsyvvfgtggdfpaavelsaldgsngfvlngaafddsgqsvsgagdvngdglddlvigapaissrfappfgpphgggsgqs yvvfgtgegfppvlelsaldgsngftlngsaaydnagfsvsgagdvngdglddlvinapgaspngdysgqsyvvfgtgegfppvlelsaldggngfiingvaaadhsgrsvsgagdvngdglddivigapdaspngangagqsyvvfgtgggfppvlelaaldgsngfalngiaagdrsgssvsgagdvngdglddivigarfaspngvd rvgqsyvvfgtsggfpavlelsaldggngfalngsatydnagfsvsgaedvngdgvddiligapfaspngidysgqsyvvfgtsggfpaalelsaldgrngfalnggaasdlsgrsvsgvgdvngdgfddivigapyadpnsasfagqsyvvfgtdggfpsavelsaldgsngfalngiasgdfsgdsvsgagdvngdgf ddlvigapgadpngdyssqgqsyvvfgtpaafslgpaalfkglladvgalglpaglehwltercgdifngsglcrgsrsfqgpkptlpprgf\n'),(8,' mngtegpffyvpmsnasgivrspyeypqyylinpaayfmlacymffliitgfpinfltlyvtiehkklrtalnyillnlavadlfmviggftttlytsmhgyfvfgrtgcniegfcatlggeiamwslvvlaierwvvvckpmtnfrfgenhaimgvaft wvmaaacavpplfgwsryipegmqcscgidyytrapgfnnesfvvymfivhftlpltvvtfcygrllctvkeaaaaqqesettqraerevtrmvvlmeisylvcwlpyasvawyifcnqgsefgpvfmtapaffakssalynpliyvcmn kqfrhcmittlccgknpfeeeegasttaskteassvssssvapa '),(9,' magnksvvyhgtrdlrvetvpypklehnnrklehavilkvvstnicgsdqhiyrgrfivpkghvlgheitgevvekgsdvelmdigdlvsvpfnvacgrcrnckearsdvcennlvnpdadlgafgfdlkgwsggqaeyvlvpyadymll kfgdkeqamekikdltlisdilptgfhgcvsagvkpgshvyiagagpvgrcaaagarllgaacvivgdqnperlkllsdagfetidlrnsaplrdqidqilgkpevdcgvdavgfeahglgdeantetpngalnslfdvvraggaigipgiyvgsdpdpv nkdagsgrlhldfgkmwtksirimtgmapvtnynrhlteailwdqmpylskvmnievitldqapdgyakfdkgspakfvidphgmlknk '),(10,'maaspfptvekcsstdragdtvvadldgtllcgrssfpyfahmafetggvlrllllialaplagllyyfvsepagiqvlifassrggqgrrhrgrgaggaaqvllrrpapgvvarvlgvrppvrahrepadhgggvpqgvhrhgrrrrhgarrvarprhg agalprrpgrraeggrapeg '),(11,'msistfnrcwskvilesllrygvnhiciapgsrstpltleaarlqdesritchthfderglgffalglakaqqkpvaiivtsgtavanlypaiveayqtqtnlivltadrpielvecganqairqqnifahypiaevdlpkpsqdysanwlvstldqacy qqqltpgvihinvpfaeplyqanlqqidnhswlqplsswlhsqkpwvkhpenqvevlihenwdlwrtkrgivvvgrlpleqsmgistwvntmgwvlltdvqstveatlpyadiwlanktvfqqllqadiviqlgsgivskrinqflatfq geywlvdasqrrldpahhqqtrfhakahhwlrahpplrqkpwlleplalsqfcdkfieqqvgsnlneaslahhlerllptngilflgnslfvrlvdalcklpnnypiytnrgasgidgllataagvaiahqrpliafigdisalhdlnsfalfrkvklptiifvinnnggaifdmlpveneakeqyyrlphhlefsqianmfelnyarpytwadlsstlktaymrksatiieikvsategstiyknlleqiaqavigd\n'),(12,'mtalpfalnhmaapglpldaffalakslgisaveirndlsgnaildgtkpeevtalaekhgltivsinalqrfnewnqardaearelisyardcgaralvlvpvndgsgqkdgerqanlraalqalkplldaagiiglveplgfeicslrskteaaeaireiggetfrlvhdtfhhhlagedacfpdltglvhisgvsdeavavsemrdphrilvdaadrldnaaqirrlraegykgpfsfepfapsvhalsdpakairdsmdylqsrt ');
/*!40000 ALTER TABLE `sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-15 17:55:43
SELECT sequence FROM protein NATURAL JOIN sequence WHERE name = 'actin';