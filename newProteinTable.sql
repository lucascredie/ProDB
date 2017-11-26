use prot_db;

AlTER TABLE protein
ADD COLUMN 3d_file VARCHAR(20);

ALTER TABLE protein
ADD COLUMN iP DECIMAL(4,2);

UPDATE protein
SET 3d_file = '1J6Z', iP = 5.29
WHERE name = 'actin';

UPDATE protein
SET 3d_file = '1SS8', iP = 5.26
WHERE name = 'groEL';

UPDATE protein
SET 3d_file = '1EEA', iP = 6.43
WHERE name = 'acetylcholinesterase';

UPDATE protein
SET 3d_file = '1FN3', iP = 5.96
WHERE name = 'hemoglobin';

UPDATE protein
SET 3d_file = '2MJO', iP = 7.52
WHERE name = 'nicotonic acetylcholine receptor';

UPDATE protein
SET 3d_file = '2A2X', iP = 5.47
WHERE name = 'thrombin';

UPDATE protein
SET 3d_file = '3K6S', iP = 3.76
WHERE name = 'integrin';

UPDATE protein
SET 3d_file = '1F88', iP = 5.99
WHERE name = 'rhodopsin';

UPDATE protein
SET 3d_file = '2DPH', iP = 5.66
WHERE name = 'formaldehyde dismutase';

UPDATE protein
SET 3d_file = '5TXF', iP = 11.82
WHERE name = 'Lecithin–cholesterol acyltransferase';

UPDATE protein
SET 3d_file = '1OBD', iP = 6.72
WHERE name = 'ATP Synthase';

UPDATE protein
SET 3d_file = '3HMK', iP = 5.28
WHERE name = 'serine racemase';
####################################################################

#############################SEQUENCE UPDATES######################## !!!RUN THIS!!!
UPDATE sequence
SET sequence = 'maakevkfgdsarkkmlvgvnvladavkatlgpkgrnvvldksfgaptitkdgvsvakeielkdkfenmgaqlvkdvaskandeagdgtttatvlaqaivneglkavaagmnpmdlkrgidkatiaivaelkslakpcsdskaiaqvgtisansdesigniiaeamnkvgkegvitveegsglenelsvvegmqfdrgylspyfinkpdtmvaeldnpllllvdkkisnirellpvleavaksgrpllivaedvegealatlvvnnmrgivkvaavkapgfndrrkamlqviailtgatvisekvglslesatlehlgkpkalvlnkenttimhgagaqadieaavaqirkqieetssdydreklqerlaklaggvavikvgaatevemkekkarveaalhatraaveegvvpgggvalvralqaieglkgdnedqnvgiallrraveaplrqivanagdepsvvvdkvkqgsgnfgfnaasgvygdmiemgildpakvtrsalqaassigglmitteamvadivedkaapampdmggmggmggmm'
WHERE id = 2;

UPDATE sequence
SET sequence = 'mvpmfnhninhfnnvivttlthhqytnsrcnsnnnvikritnsilksvtvftvktlwnhllvpivvillfqssanvfssalphseinsfhadgpsssssfnsehhhhhhhndplvvltkkgyvrgrsvvsptgkpvdaflgiryakpptgkfrfrhpkpidswqgifnatsfsgacyqvndtffgnfmgatewnpnvpldedclsvniwvprprpksaavllwiyggsfwsgsssldfydgsvlageesiifvsinyrvaslgfiffdtsdapgnaglfdqlmamewireniaafggnpanitifgesagavsaalhllsplsrnvfsqailqsgsatcpwaisdrkkayqrslalaqavgcgststrsvhaiiecmqsipaselvaqeetttgvvefafipivdgsfldedpevslrtknfkhtpiltgsnrdegtyflvyhsphifnlsegiyisrsefqsliriiyphlsplaqeaviqeythwinpddqienreatdkfvgdyhftcpvnemsyryalygndvwtyhfthrssksfwpswmgvihgeeikfvlgepldpvhgytpaevqlskrimrywanfartgnpnkqfpdgddtesivwpeytahekeylvistndssigrglrakqcafwknflpklinalenrhnstctshsnqigssnwslaislislimcflpslr'
WHERE id = 3;

UPDATE sequence
SET sequence = 'mhssivlatvlfvaiasasktrelcmkslehakvgtskeakqdgidlykhmfehypamkkyfkhrenytpadvqkdpffikqgqnillachvlcatyddretfdayvgelmarherdhvkvpndvwnhfwehfieflgskttldeptkhawqeigkefsheishhgrhsvrdhcmnsleyiaigdkehqkqngidlykhmfehyphmrkafkgrenftkedvqkdaffvnkdtrfcwpfvccdssyddeptfdyfvdalmdrhikddihlpqeqwhefwklfaeylnekshqhlteaekhawstigedfaheadkhakaekdhhegehkeehh'
WHERE id = 4;

UPDATE sequence
SET sequence = 'mcggqrplfllpllavclgakgrnqeerllgdlmqgynphlrpaehdsdvvnvslkltltnlislnereealttnvwiemqwcdyrlrwdprdygglwvlrvpstmvwrpdivlennvdgvfevalycnvlvspdgcvywlppaifrsscpvsvtffpfdwqncslifqsqtystneinlqlsqedgqtiewifidpeaftengewairhrpakmlldeaapaeeaghqkvvfylliqrkplfyviniiapcvlissvailiyflpakaggqkctvainvllaqtvflflvakkvpetsqavpliskyltfllvvtilivvnavvvlnvslrsphthsmargvrkvflrllpqllrmhvrplapvavqdahprlqngsssgwpitageevalclprsellfrqrqrnglvraaleklekgpesgqspewcgslkqaapaiqacveacnliararhqqthfdsgnkewflvgrvldrvcflamlslfvcgtagiflmahynrvpalpfpgdprsylpssd'
WHERE id = 5;

UPDATE sequence
SET sequence = 'mahskttmlqglllfgllhltlshdgvflekgqalsllkrprrankgfleemikgnlerecleetcnyeeafealestvdtdafwakyqvcqgtkmprttldaclegncaanlgqnyrgtinytksgiecqvwtskyphipkfnasiypdltenycrnpdnnsegpwcytrdptvereecpipvcgqerttveftprvkpsttgqpcesekgmlytgtlsvtvsgarclpwasekakallqdktinpevkllenycrnpdaddegvwcvideppyfeycdlhycdssledeneqveeiagrtifqefktffdektfgegeadcgtrplfekkqitdqsekelmdsymggrvvhgndaevgsapwqvmlykkspqellcgaslisnswiltaahcllyppwdknlttndilvrmglhfrakyernkekivlldkviihpkynwkenmdrdiallhlkrpvifsdyihpvclptkelvqrlmlagfkgrvtgwgnlketwattpenlptvlqqlnlpivdqntckastrvkvtdnmfcagyspedskrgdacegdsggpfvmknpddnrwyqvgivswgegcdrdgkygfythvfrlkkwmrktiekqg'
WHERE id = 6;

UPDATE sequence
SET sequence = 'msnkkatfisrafsspsdskssaqipralaprplavalrrvlgggllavglvgpalgqtpglelsdldgsngfiingiaafddsgqsvsgaedvngdgfddlvigapdaspngvsgagqsyvvfgtggdfpaavelsaldgsngfvlngaafddsgqsvsgagdvngdglddlvigapaissrfappfgpphgggsgqsyvvfgtgegfppvlelsaldgsngftlngsaaydnagfsvsgagdvngdglddlvinapgaspngdysgqsyvvfgtgegfppvlelsaldggngfiingvaaadhsgrsvsgagdvngdglddivigapdaspngangagqsyvvfgtgggfppvlelaaldgsngfalngiaagdrsgssvsgagdvngdglddivigarfaspngvdrvgqsyvvfgtsggfpavlelsaldggngfalngsatydnagfsvsgaedvngdgvddiligapfaspngidysgqsyvvfgtsggfpaalelsaldgrngfalnggaasdlsgrsvsgvgdvngdgfddivigapyadpnsasfagqsyvvfgtdggfpsavelsaldgsngfalngiasgdfsgdsvsgagdvngdgfddlvigapgadpngdyssqgqsyvvfgtpaafslgpaalfkglladvgalglpaglehwltercgdifngsglcrgsrsfqgpkptlpprgf'
WHERE id = 7;

UPDATE sequence
SET sequence = 'mngtegpffyvpmsnasgivrspyeypqyylinpaayfmlacymffliitgfpinfltlyvtiehkklrtalnyillnlavadlfmviggftttlytsmhgyfvfgrtgcniegfcatlggeiamwslvvlaierwvvvckpmtnfrfgenhaimgvaftwvmaaacavpplfgwsryipegmqcscgidyytrapgfnnesfvvymfivhftlpltvvtfcygrllctvkeaaaaqqesettqraerevtrmvvlmeisylvcwlpyasvawyifcnqgsefgpvfmtapaffakssalynpliyvcmnkqfrhcmittlccgknpfeeeegasttaskteassvssssvapa'
WHERE id = 8;

UPDATE sequence
SET sequence = 'magnksvvyhgtrdlrvetvpypklehnnrklehavilkvvstnicgsdqhiyrgrfivpkghvlgheitgevvekgsdvelmdigdlvsvpfnvacgrcrnckearsdvcennlvnpdadlgafgfdlkgwsggqaeyvlvpyadymllkfgdkeqamekikdltlisdilptgfhgcvsagvkpgshvyiagagpvgrcaaagarllgaacvivgdqnperlkllsdagfetidlrnsaplrdqidqilgkpevdcgvdavgfeahglgdeantetpngalnslfdvvraggaigipgiyvgsdpdpvnkdagsgrlhldfgkmwtksirimtgmapvtnynrhlteailwdqmpylskvmnievitldqapdgyakfdkgspakfvidphgmlknk'
WHERE id = 9;

UPDATE sequence
SET sequence = 'maaspfptvekcsstdragdtvvadldgtllcgrssfpyfahmafetggvlrllllialaplagllyyfvsepagiqvlifassrggqgrrhrgrgaggaaqvllrrpapgvvarvlgvrppvrahrepadhgggvpqgvhrhgrrrrhgarrvarprhgagalprrpgrraeggrapeg'
WHERE id = 10;

UPDATE sequence
SET sequence = 'msistfnrcwskvilesllrygvnhiciapgsrstpltleaarlqdesritchthfderglgffalglakaqqkpvaiivtsgtavanlypaiveayqtqtnlivltadrpielvecganqairqqnifahypiaevdlpkpsqdysanwlvstldqacyqqqltpgvihinvpfaeplyqanlqqidnhswlqplsswlhsqkpwvkhpenqvevlihenwdlwrtkrgivvvgrlpleqsmgistwvntmgwvlltdvqstveatlpyadiwlanktvfqqllqadiviqlgsgivskrinqflatfqgeywlvdasqrrldpahhqqtrfhakahhwlrahpplrqkpwlleplalsqfcdkfieqqvgsnlneaslahhlerllptngilflgnslfvrlvdalcklpnnypiytnrgasgidgllataagvaiahqrpliafigdisalhdlnsfalfrkvklptiifvinnnggaifdmlpveneakeqyyrlphhlefsqianmfelnyarpytwadlsstlktaymrksatiieikvsategstiyknlleqiaqavigd'
WHERE id = 11;

UPDATE sequence
SET sequence = 'mtalpfalnhmaapglpldaffalakslgisaveirndlsgnaildgtkpeevtalaekhgltivsinalqrfnewnqardaearelisyardcgaralvlvpvndgsgqkdgerqanlraalqalkplldaagiiglveplgfeicslrskteaaeaireiggetfrlvhdtfhhhlagedacfpdltglvhisgvsdeavavsemrdphrilvdaadrldnaaqirrlraegykgpfsfepfapsvhalsdpakairdsmdylqsrt'
WHERE id = 12;
#######################################################################################################

#####################################MORE PROTEIN UPDATES################################# !!!RUN THIS!!!

UPDATE protein
SET gene = 'BCL11A'
WHERE seq_id = 4;

UPDATE protein
SET gene = 'CHRNA4'
WHERE seq_id = 5;

UPDATE protein
SET gene = 'F2'
WHERE seq_id = 6;

UPDATE protein
SET gene = 'ITGB1'
WHERE seq_id = 7;

UPDATE protein
SET gene = 'RHO'
WHERE seq_id = 8;

UPDATE protein
SET gene = 'EC 1.2.98.1'
WHERE seq_id = 9;

UPDATE protein
SET gene = 'EC 2.1.3.43'
WHERE seq_id = 10;

UPDATE protein
SET gene = 'ATP5A1'
WHERE seq_id = 11;

UPDATE protein
SET gene = 'SSR'
WHERE seq_id = 12;

############################################################################

##############################UPDATE DISEASE INFO###########################

UPDATE disease
SET prognosis = 'There is currently no known treatment for the underlying disease which is usually progressive and fatal. Individuals are managed according to what areas of the body are affected at any particular time. Enzymes, amino acids, vitamins and antioxidants have been used but there has been no reliable successes described.'
WHERE name = 'mitochondrial encephalopathy';

UPDATE disease
SET prognosis = 'individuals with Alzheimer''s have been known to live anywhere between 3 and 20 years after the first signs of AD emerge. The length of time people will live after diagnosis is highly dependent on their age as well as the type and severity of their other medical conditions. People with Alzheimers Disease often die of a medical complication such as pneumonia or the flu. If this does not occur, AD is fatal, and the person will die when all bodily systems fail because of the disease.'
WHERE name = 'Alzheimers';

UPDATE disease
SET prognosis = 'The life expectancy for someone with Parkinson''s disease is the same as for people who do not have the disease, according to the Parkinson''s Disease Foundation. Although this is an incurable and progressive disease in which symptoms get worse, Parkinson''s disease is not a fatal disease.',
    treatment = 'There is no standard treatment for Parkinson’s disease (PD). Treatment for each person with Parkinson''s is based on his or her symptoms. Treatments include medication and surgical therapy. Other treatments include lifestyle modifications, like getting more rest and exercise. There are many medications available to treat the Parkinson’s symptoms, although none yet that reverse the effects of the disease. It is common for people with PD to take a variety of these medications — all at different doses and at different times of day — to manage symptoms.'
WHERE name = 'parkinsons';

UPDATE disease
SET prognosis = 'Autism is acquired at birth, but it is not a fatal disease. People who suffer from autism have a normal life expectancy, But they will have trouble progressing along natural neuro-developmental milestones',
    treatment = 'Each child or adult with autism is unique and, so, each autism intervention plan should be tailored to address specific needs. Intervention can involve behavioral treatments, medicines or both. Many persons with autism have additional medical conditions such as sleep disturbance, seizures and gastrointestinal (GI) distress. Addressing these conditions can improve attention, learning and related behaviors. Early intensive behavioral intervention involves a child''s entire family, working closely with a team of professionals. In some early intervention programs, therapists come into the home to deliver services. This can include parent training with the parent leading therapy sessions under the supervision of the therapist. Other programs deliver therapy in a specialized center, classroom or preschool. Typically, different interventions and supports become appropriate as a child develops and acquires social and learning skills. As children with autism enter school, for example, they may benefit from targeted social skills training and specialized approaches to teaching. Adolescents with autism can benefit from transition services that promote a successful maturation into independence and employment opportunities of adulthood.'
WHERE name = 'autism';

UPDATE disease
SET prognosis = 'NAMI estimates that as many as half of the 2 million Americans with schizophrenia can recover significantly or even completely if they get treatment. At the same time, studies show that about 20 percent of schizophrenia patients on medications will relapse within a year after successful treatment of an acute episode. Recovery for people with schizophrenia means that they are not showing any symptoms, are living in their community, and are engaging in positive social interactions with friends and family. In short, a stranger would not be able to guess their mental health history. Successful schizophrenia treatment combines medical treatment with social rehabilitation and support.'
WHERE name = 'schizophrenia';

UPDATE disease
SET prognosis = 'Anemia is a relatively benign disorder, and will not lead to death if properly managed. People with this disorder can lead healthy and productive, and only infrequently will they notice the symptoms.'
WHERE name = 'anemia';

UPDATE disease
SET prognosis = 'Atherosclerosis is not directly fatal, however, if this disease is ignored blood clots and anuerysms may develop. These two things are immediately life threatening and can lead to spontaneous death.'
WHERE name = 'atherosclerosis';

UPDATE disease
SET treatment = 'There is no known treatment for retinal degenerative disorder. People who suffer from this disease face life long vision impairment.'
WHERE name = 'retinal degenerative disorder';

UPDATE disease
SET prognosis = 'The prognosis of this disease is poor. The survival of patients with pulmonary fibrosis is less than 5 years. It is best to become involved with an academic center in the area where research on interstitial lung diseases is studied in order to receive the latest treatments. These centers often are linked with a lung transplant program. Clinical trials are the best way of treating this disease at this time.'
WHERE name = 'fibrosis';





#############################################################################



