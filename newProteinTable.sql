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

#############################SEQUENCE UPDATES########################
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
