%Get the properties of the FB compresional boundary for muiltiple runs with
%different parameters
clear 
% close all
% A = [0,0.447058826684952,0.741176486015320;0.00787401571869850,0.451412707567215,0.743214488029480;0.0157480314373970,0.455766558647156,0.745252430438995;0.0236220471560955,0.460120439529419,0.747290432453156;0.0314960628747940,0.464474290609360,0.749328434467316;0.0393700785934925,0.468828171491623,0.751366376876831;0.0472440943121910,0.473182022571564,0.753404378890991;0.0551181100308895,0.477535903453827,0.755442321300507;0.0629921257495880,0.481889754533768,0.757480323314667;0.0708661451935768,0.486243635416031,0.759518325328827;0.0787401571869850,0.490597516298294,0.761556267738342;0.0866141766309738,0.494951367378235,0.763594269752502;0.0944881886243820,0.499305248260498,0.765632271766663;0.102362208068371,0.503659129142761,0.767670214176178;0.110236220061779,0.508012950420380,0.769708216190338;0.118110239505768,0.512366831302643,0.771746218204498;0.125984251499176,0.516720712184906,0.773784160614014;0.133858263492584,0.521074593067169,0.775822162628174;0.141732290387154,0.525428414344788,0.777860105037689;0.149606302380562,0.529782295227051,0.779898107051849;0.157480314373970,0.534136176109314,0.781936109066010;0.165354326367378,0.538490056991577,0.783974051475525;0.173228353261948,0.542843937873840,0.786012053489685;0.181102365255356,0.547197759151459,0.788050055503845;0.188976377248764,0.551551640033722,0.790087997913361;0.196850389242172,0.555905520915985,0.792125999927521;0.204724416136742,0.560259401798248,0.794164001941681;0.212598428130150,0.564613223075867,0.796201944351196;0.220472440123558,0.568967103958130,0.798239946365356;0.228346452116966,0.573320984840393,0.800277888774872;0.236220479011536,0.577674865722656,0.802315890789032;0.244094491004944,0.582028746604919,0.804353892803192;0.251968502998352,0.586382567882538,0.806391835212708;0.259842514991760,0.590736448764801,0.808429837226868;0.267716526985168,0.595090329647064,0.810467839241028;0.275590538978577,0.599444210529327,0.812505781650543;0.283464580774307,0.603798031806946,0.814543783664703;0.291338592767715,0.608151912689209,0.816581785678864;0.299212604761124,0.612505793571472,0.818619728088379;0.307086616754532,0.616859674453735,0.820657730102539;0.314960628747940,0.621213555335999,0.822695732116699;0.322834640741348,0.625567376613617,0.824733674526215;0.330708652734756,0.629921257495880,0.826771676540375;0.338582664728165,0.634275138378143,0.828809618949890;0.346456706523895,0.638629019260407,0.830847620964050;0.354330718517303,0.642982840538025,0.832885622978210;0.362204730510712,0.647336721420288,0.834923565387726;0.370078742504120,0.651690602302551,0.836961567401886;0.377952754497528,0.656044483184815,0.838999569416046;0.385826766490936,0.660398364067078,0.841037511825562;0.393700778484345,0.664752185344696,0.843075513839722;0.401574790477753,0.669106066226959,0.845113515853882;0.409448832273483,0.673459947109222,0.847151458263397;0.417322844266892,0.677813827991486,0.849189460277557;0.425196856260300,0.682167649269104,0.851227402687073;0.433070868253708,0.686521530151367,0.853265404701233;0.440944880247116,0.690875411033630,0.855303406715393;0.448818892240524,0.695229291915894,0.857341349124908;0.456692904233933,0.699583113193512,0.859379351139069;0.464566916227341,0.703936994075775,0.861417353153229;0.472440958023071,0.708290874958038,0.863455295562744;0.480314970016480,0.712644755840302,0.865493297576904;0.488188982009888,0.716998636722565,0.867531299591065;0.496062994003296,0.721352458000183,0.869569242000580;0.503937005996704,0.725706338882446,0.871607244014740;0.511811017990112,0.730060219764710,0.873645186424255;0.519685029983521,0.734414100646973,0.875683188438416;0.527559041976929,0.738767921924591,0.877721190452576;0.535433053970337,0.743121802806854,0.879759132862091;0.543307065963745,0.747475683689117,0.881797134876251;0.551181077957153,0.751829564571381,0.883835136890411;0.559055089950562,0.756183445453644,0.885873079299927;0.566929161548615,0.760537266731262,0.887911081314087;0.574803173542023,0.764891147613525,0.889949083328247;0.582677185535431,0.769245028495789,0.891987025737763;0.590551197528839,0.773598909378052,0.894025027751923;0.598425209522247,0.777952730655670,0.896062970161438;0.606299221515656,0.782306611537933,0.898100972175598;0.614173233509064,0.786660492420197,0.900138974189758;0.622047245502472,0.791014373302460,0.902176916599274;0.629921257495880,0.795368254184723,0.904214918613434;0.637795269489288,0.799722075462341,0.906252920627594;0.645669281482697,0.804075956344605,0.908290863037109;0.653543293476105,0.808429837226868,0.910328865051270;0.661417305469513,0.812783718109131,0.912366867065430;0.669291317462921,0.817137539386749,0.914404809474945;0.677165329456329,0.821491420269013,0.916442811489105;0.685039341449738,0.825845301151276,0.918480753898621;0.692913413047791,0.830199182033539,0.920518755912781;0.700787425041199,0.834553062915802,0.922556757926941;0.708661437034607,0.838906884193420,0.924594700336456;0.716535449028015,0.843260765075684,0.926632702350617;0.724409461021423,0.847614645957947,0.928670704364777;0.732283473014832,0.851968526840210,0.930708646774292;0.740157485008240,0.856322348117828,0.932746648788452;0.748031497001648,0.860676229000092,0.934784650802612;0.755905508995056,0.865030109882355,0.936822593212128;0.763779520988464,0.869383990764618,0.938860595226288;0.771653532981873,0.873737871646881,0.940898597240448;0.779527544975281,0.878091692924500,0.942936539649963;0.787401556968689,0.882445573806763,0.944974541664124;0.795275568962097,0.886799454689026,0.947012484073639;0.803149580955505,0.891153335571289,0.949050486087799;0.811023592948914,0.895507156848908,0.951088488101959;0.818897664546967,0.899861037731171,0.953126430511475;0.826771676540375,0.904214918613434,0.955164432525635;0.834645688533783,0.908568799495697,0.957202434539795;0.842519700527191,0.912922620773315,0.959240376949310;0.850393712520599,0.917276501655579,0.961278378963471;0.858267724514008,0.921630382537842,0.963316380977631;0.866141736507416,0.925984263420105,0.965354323387146;0.874015748500824,0.930338144302368,0.967392325401306;0.881889760494232,0.934691965579987,0.969430267810822;0.889763772487640,0.939045846462250,0.971468269824982;0.897637784481049,0.943399727344513,0.973506271839142;0.905511796474457,0.947753608226776,0.975544214248657;0.913385808467865,0.952107429504395,0.977582216262817;0.921259820461273,0.956461310386658,0.979620218276978;0.929133832454681,0.960815191268921,0.981658160686493;0.937007844448090,0.965169072151184,0.983696162700653;0.944881916046143,0.969522953033447,0.985734164714813;0.952755928039551,0.973876774311066,0.987772107124329;0.960629940032959,0.978230655193329,0.989810109138489;0.968503952026367,0.982584536075592,0.991848051548004;0.976377964019775,0.986938416957855,0.993886053562164;0.984251976013184,0.991292238235474,0.995924055576325;0.992125988006592,0.995646119117737,0.997961997985840;1,1,1;0.997150719165802,0.992800235748291,0.993627429008484;0.994301497936249,0.985600471496582,0.987254917621613;0.991452217102051,0.978400707244873,0.980882346630096;0.988602936267853,0.971201002597809,0.974509775638580;0.985753655433655,0.964001238346100,0.968137264251709;0.982904434204102,0.956801474094391,0.961764693260193;0.980055153369904,0.949601709842682,0.955392181873322;0.977205872535706,0.942401945590973,0.949019610881805;0.974356591701508,0.935202181339264,0.942647039890289;0.971507370471954,0.928002476692200,0.936274528503418;0.968658089637756,0.920802712440491,0.929901957511902;0.965808808803558,0.913602948188782,0.923529386520386;0.962959587574005,0.906403183937073,0.917156875133514;0.960110306739807,0.899203419685364,0.910784304141998;0.957261025905609,0.892003655433655,0.904411792755127;0.954411745071411,0.884803950786591,0.898039221763611;0.951562523841858,0.877604186534882,0.891666650772095;0.948713243007660,0.870404422283173,0.885294139385223;0.945863962173462,0.863204658031464,0.878921568393707;0.943014681339264,0.856004893779755,0.872548997402191;0.940165460109711,0.848805129528046,0.866176486015320;0.937316179275513,0.841605365276337,0.859803915023804;0.934466898441315,0.834405660629273,0.853431344032288;0.931617677211762,0.827205896377564,0.847058832645416;0.928768396377564,0.820006132125855,0.840686261653900;0.925919115543366,0.812806367874146,0.834313750267029;0.923069834709168,0.805606603622437,0.827941179275513;0.920220613479614,0.798406839370728,0.821568608283997;0.917371332645416,0.791207134723663,0.815196096897125;0.914522051811218,0.784007370471954,0.808823525905609;0.911672770977020,0.776807606220245,0.802450954914093;0.908823549747467,0.769607841968536,0.796078443527222;0.905974268913269,0.762408077716827,0.789705872535706;0.903124988079071,0.755208313465118,0.783333361148834;0.900275766849518,0.748008608818054,0.776960790157318;0.897426486015320,0.740808844566345,0.770588219165802;0.894577205181122,0.733609080314636,0.764215707778931;0.891727924346924,0.726409316062927,0.757843136787415;0.888878703117371,0.719209551811218,0.751470565795898;0.886029422283173,0.712009787559509,0.745098054409027;0.883180141448975,0.704810023307800,0.738725483417511;0.880330860614777,0.697610318660736,0.732352972030640;0.877481639385223,0.690410554409027,0.725980401039124;0.874632358551025,0.683210790157318,0.719607830047607;0.871783077716827,0.676011025905609,0.713235318660736;0.868933856487274,0.668811261653900,0.706862747669220;0.866084575653076,0.661611497402191,0.700490176677704;0.863235294818878,0.654411792755127,0.694117665290833;0.860386013984680,0.647212028503418,0.687745094299316;0.857536792755127,0.640012264251709,0.681372523307800;0.854687511920929,0.632812500000000,0.675000011920929;0.851838231086731,0.625612735748291,0.668627440929413;0.848988950252533,0.618412971496582,0.662254929542542;0.846139729022980,0.611213207244873,0.655882358551025;0.843290448188782,0.604013502597809,0.649509787559509;0.840441167354584,0.596813738346100,0.643137276172638;0.837591946125031,0.589613974094391,0.636764705181122;0.834742665290833,0.582414209842682,0.630392134189606;0.831893384456635,0.575214445590973,0.624019622802734;0.829044103622437,0.568014681339264,0.617647051811218;0.826194882392883,0.560814976692200,0.611274540424347;0.823345601558685,0.553615212440491,0.604901969432831;0.820496320724487,0.546415448188782,0.598529398441315;0.817647099494934,0.539215683937073,0.592156887054443;0.814797818660736,0.532015919685364,0.585784316062927;0.811948537826538,0.524816155433655,0.579411745071411;0.809099256992340,0.517616450786591,0.573039233684540;0.806250035762787,0.510416686534882,0.566666662693024;0.803400754928589,0.503216922283173,0.560294091701508;0.800551474094391,0.496017158031464,0.553921580314636;0.797702193260193,0.488817393779755,0.547549009323120;0.794852972030640,0.481617659330368,0.541176497936249;0.792003691196442,0.474417895078659,0.534803926944733;0.789154410362244,0.467218130826950,0.528431355953217;0.786305189132690,0.460018396377564,0.522058844566345;0.783455908298492,0.452818632125855,0.515686273574829;0.780606627464294,0.445618867874146,0.509313702583313;0.777757346630096,0.438419133424759,0.502941191196442;0.774908125400543,0.431219369173050,0.496568620204926;0.772058844566345,0.424019604921341,0.490196079015732;0.769209563732147,0.416819840669632,0.483823537826538;0.766360282897949,0.409620106220245,0.477450996637344;0.763511061668396,0.402420341968536,0.471078425645828;0.760661780834198,0.395220577716827,0.464705884456635;0.757812500000000,0.388020843267441,0.458333343267441;0.754963278770447,0.380821079015732,0.451960772275925;0.752113997936249,0.373621314764023,0.445588231086731;0.749264717102051,0.366421580314636,0.439215689897537;0.746415436267853,0.359221816062927,0.432843148708344;0.743566215038300,0.352022051811218,0.426470577716827;0.740716934204102,0.344822317361832,0.420098036527634;0.737867653369904,0.337622553110123,0.413725495338440;0.735018372535706,0.330422788858414,0.407352954149246;0.732169151306152,0.323223054409027,0.400980383157730;0.729319870471954,0.316023290157318,0.394607841968536;0.726470589637756,0.308823525905609,0.388235300779343;0.723621368408203,0.301623791456223,0.381862759590149;0.720772087574005,0.294424027204514,0.375490188598633;0.717922806739807,0.287224262952805,0.369117647409439;0.715073525905609,0.280024498701096,0.362745106220245;0.712224304676056,0.272824764251709,0.356372565031052;0.709375023841858,0.265625000000000,0.349999994039536;0.706525743007660,0.258425235748291,0.343627452850342;0.703676462173462,0.251225501298904,0.337254911661148;0.700827240943909,0.244025737047195,0.330882370471954;0.697977960109711,0.236825987696648,0.324509799480438;0.695128679275513,0.229626223444939,0.318137258291245;0.692279458045960,0.222426474094391,0.311764717102051;0.689430177211762,0.215226724743843,0.305392146110535;0.686580896377564,0.208026960492134,0.299019604921341;0.683731615543366,0.200827211141586,0.292647063732147;0.680882394313812,0.193627446889877,0.286274522542954;0.678033113479614,0.186427697539330,0.279901951551437;0.675183832645416,0.179227948188782,0.273529410362244;0.672334551811218,0.172028183937073,0.267156869173050;0.669485330581665,0.164828434586525,0.260784327983856;0.666636049747467,0.157628685235977,0.254411756992340;0.663786768913269,0.150428920984268,0.248039215803146;0.660937547683716,0.143229171633720,0.241666674613953;0.658088266849518,0.136029407382011,0.235294118523598;0.655238986015320,0.128829658031464,0.228921577334404;0.652389705181122,0.121629901230335,0.222549021244049;0.649540483951569,0.114430151879787,0.216176480054855;0.646691203117371,0.107230395078659,0.209803923964500;0.643841922283173,0.100030638277531,0.203431382775307;0.640992641448975,0.0928308814764023,0.197058826684952;0.638143420219421,0.0856311321258545,0.190686285495758;0.635294139385223,0.0784313753247261,0.184313729405403];
% fig = figure('Position',[ 1 1 750 1500]);

timeSteps = 800;
outputSteps = 25;
nt=	floor(timeSteps/outputSteps);
va = 48.95;
dt = 0.02;
output = outputSteps;
stepInterval = 1;

time = 800/50%18;%gyroperiods
timeFrame = time/(dt*outputSteps)

xcut=120;

n0 = 5e15;
va = 48.95;
%Load the Data from each Run with different parameters
%Different Mach numbers for SW speed
% [n_6M,peakN_6M,peakPos_6M,expSpeed_6M,peakWidth_6M,peakArea_6M] = getCompressionProperties('214',dt,outputSteps,time,xcut)
% [n_8M,peakN_8M,peakPos_8M,expSpeed_8M,peakWidth_8M,peakArea_8M] = getCompressionProperties('215',dt,outputSteps,time,xcut)
% [n_10M,peakN_10M,peakPos_10M,expSpeed_10M,peakWidth_10M,peakArea_10M] = getCompressionProperties('201',dt,outputSteps,time,xcut)
% (outputFolder,dt,outputSteps,time,xcut,nfs_setup,swSpeed_setup,fsSpeed_setup,fsThermal_setup,shear_setup)

%Different foreshock ion density ratios
% [fs75] =   getCompressionProperties('220',dt,outputSteps,time,xcut,0.075,10,20,8,90);
% [fs105] =  getCompressionProperties('221',dt,outputSteps,time,xcut,0.105,10,20,8,90);
% [fs135] =  getCompressionProperties('223',dt,outputSteps,time,xcut,0.135,10,20,8,90);
% 
% [fs135b] = getCompressionProperties('237',dt,outputSteps,time,xcut,0.135,10,20,8,90);
% [fs75b] =  getCompressionProperties('238',dt,outputSteps,time,xcut,0.075,10,20,8,90);
% 
% [fs7] =    getCompressionProperties('245',dt,outputSteps,time,xcut,0.07,10,20,8,90);
% [fs8] =    getCompressionProperties('246',dt,outputSteps,time,xcut,0.08,10,20,8,90);
% [fs13] =   getCompressionProperties('247',dt,outputSteps,time,xcut,0.13,10,20,8,90);
% [fs14] =   getCompressionProperties('248',dt,outputSteps,time,xcut,0.14,10,20,8,90);
% 
% [fs165] =  getCompressionProperties('224',dt,outputSteps,time,xcut,0.165,10,20,8,90);
% [fs45] =   getCompressionProperties('236',dt,outputSteps,time,xcut,0.045,10,20,8,90);
% [fs6] =    getCompressionProperties('208',dt,outputSteps,time,xcut,0.06,10,20,8,90);
% [fs9] =    getCompressionProperties('209',dt,outputSteps,time,xcut,0.09,10,20,8,90);
% [fs12] =   getCompressionProperties('222',dt,outputSteps,time,xcut,0.12,10,20,8,90);
% [fs15] =   getCompressionProperties('210',dt,outputSteps,time,xcut,0.15,10,20,8,90);
% [fs18] =   getCompressionProperties('211',dt,outputSteps,time,xcut,0.18,10,20,8,90);
% 
% %Different Shear
% [d30] = getCompressionProperties('204',dt,outputSteps,time,xcut,012,10,20,8,30);
% [d60] = getCompressionProperties('205',dt,outputSteps,time,xcut,012,10,20,8,60);
% [d90] = getCompressionProperties('222',dt,outputSteps,time,xcut,012,10,20,8,90);
% [d120] = getCompressionProperties('206',dt,outputSteps,time,xcut,012,10,20,8,120);
% [d150] = getCompressionProperties('207',dt,outputSteps,time,xcut,012,10,20,8,150);
% % 
% % %Different Ma
% [M6] = getCompressionProperties('214',dt,outputSteps,time,xcut,012,6,12,8,90);
% [M8] = getCompressionProperties('215',dt,outputSteps,time,xcut,012,8,16,8,90);
% [M10] = getCompressionProperties('222',dt,outputSteps,time,xcut,012,10,20,8,90);
% [M12] = getCompressionProperties('216',dt,outputSteps,time,xcut,012,12,24,8,90);
% [M14] = getCompressionProperties('217',dt,outputSteps,time,xcut,012,14,28,8,90);
% [M16] = getCompressionProperties('218',dt,outputSteps,time,xcut,012,16,32,8,90);

% %Different FS Speeds
[FSv12] = getCompressionProperties('225',dt,outputSteps,time,xcut,012,10,12,8,90);
[FSv16] = getCompressionProperties('226',dt,outputSteps,time,xcut,012,10,16,8,90);
[FSv20] = getCompressionProperties('222',dt,outputSteps,time,xcut,012,10,20,8,90);
[FSv24] = getCompressionProperties('227',dt,outputSteps,time,xcut,012,10,24,8,90);
[FSv28] = getCompressionProperties('218',dt,outputSteps,time,xcut,012,10,28,8,90);

% % %Different Shear
% [d15] = getCompressionProperties('229',dt,outputSteps,time,xcut,0.12,10,20,8,15);
% [d30] = getCompressionProperties('204',dt,outputSteps,time,xcut,0.12,10,20,8,30);
% [d45] = getCompressionProperties('230',dt,outputSteps,time,xcut,0.12,10,20,8,45);
% [d60] = getCompressionProperties('205',dt,outputSteps,time,xcut,0.12,10,20,8,60);
% [d75] = getCompressionProperties('231',dt,outputSteps,time,xcut,0.12,10,20,8,75);
% [d90] = getCompressionProperties('222',dt,outputSteps,time,xcut,0.12,10,20,8,90);
% [d105] = getCompressionProperties('232',dt,outputSteps,time,xcut,0.12,10,20,8,105);
% [d120] = getCompressionProperties('206',dt,outputSteps,time,xcut,0.12,10,20,8,120);
% [d135] = getCompressionProperties('233',dt,outputSteps,time,xcut,0.12,10,20,8,135);
% [d150] = getCompressionProperties('207',dt,outputSteps,time,xcut,0.12,10,20,8,150);
% [d165] = getCompressionProperties('234',dt,outputSteps,time,xcut,0.12,10,20,8,165);
% [d180] = getCompressionProperties('235',dt,outputSteps,time,xcut,0.12,10,20,8,180);
% 
% % %Different FS Thermals
% [fsT4] = getCompressionProperties('239',dt,outputSteps,time,xcut,0.12,10,20,4,90);
% [fsT5] = getCompressionProperties('242',dt,outputSteps,time,xcut,0.12,10,20,5,90);
% [fsT6] = getCompressionProperties('240',dt,outputSteps,time,xcut,0.12,10,20,6,90);
% [fsT7] = getCompressionProperties('243',dt,outputSteps,time,xcut,0.12,10,20,7,90);
% [fsT8] = getCompressionProperties('222',dt,outputSteps,time,xcut,0.12,10,20,8,90);
% [fsT9] = getCompressionProperties('244',dt,outputSteps,time,xcut,0.12,10,20,9,90);
% [fsT10] = getCompressionProperties('241',dt,outputSteps,time,xcut,0.12,10,20,10,90);

%exp speed includes uz and ux in sw frame. delta ux, thermal speed *cos(shear)
%exp_speed = sqrt(n_fs) * sqrt(1-1/(n_max/n0)) * (( V_sw + v_fspara ) * sind(shear/2)  + V_fsthermal * cosd(shear/2));
%sqrt(0.12) * sqrt(1-1/(fs12.peakN(26,:)/n0)) * ((10 + 20) * sind(45) + 8*cosd(45))
%% time vs SW UZ at N max at each time for different FS U
timeperFrameinSeconds = 25.* 4.15125e-2;


figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(FSv12.Uzatmax(:,:))./va,'displayname','12va'); hold on
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(FSv16.Uzatmax(:,:))./va,'displayname','16va'); hold on
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(FSv20.Uzatmax(:,:))./va,'displayname','20va')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(FSv24.Uzatmax(:,:))./va,'displayname','24va')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(FSv28.Uzatmax(:,:))./va,'displayname','28va')
legend('location','southeast');
% plot((fs135b.Uzatmax(:,:)),'displayname','13.5%b')
% plot((fs75b.Uzatmax(:,:)),'displayname','7.5%b')

figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(FSv12.Uzatmax(:,:))./va,'displayname','12va'); hold on
plot([1:32].*timeperFrameinSeconds,(FSv16.Uzatmax(:,:))./va,'displayname','16va'); hold on
plot([1:32].*timeperFrameinSeconds,(FSv20.Uzatmax(:,:))./va,'displayname','20va')
plot([1:32].*timeperFrameinSeconds,(FSv24.Uzatmax(:,:))./va,'displayname','24va')
plot([1:32].*timeperFrameinSeconds,(FSv28.Uzatmax(:,:))./va,'displayname','28va')

box on; grid on
xlabel('time [sec]')
ylabel('SW Uz at Nmax[va]')
legend('location','southeast')
title('Time vs. SW Uz @ Nmax')
%% time vs SW UZ at N max at each time
timeperFrameinSeconds = 25.* 4.15125e-2;


figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs45.Uzatmax(:,:))./va,'displayname','4.5%'); hold on
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs6.Uzatmax(:,:))./va,'displayname','6%'); hold on
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs7.Uzatmax(:,:))./va,'displayname','7%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs75.Uzatmax(:,:))./va,'displayname','7.5%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs8.Uzatmax(:,:))./va,'displayname','8%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs9.Uzatmax(:,:))./va,'displayname','9%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs105.Uzatmax(:,:))./va,'displayname','10.5%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs12.Uzatmax(:,:))./va,'displayname','12%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs13.Uzatmax(:,:))./va,'displayname','13%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs135.Uzatmax(:,:))./va,'displayname','13.5%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs14.Uzatmax(:,:))./va,'displayname','14%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs15.Uzatmax(:,:))./va,'displayname','15%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs165.Uzatmax(:,:))./va,'displayname','16.5%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs18.Uzatmax(:,:))./va,'displayname','18%')
legend('location','southeast');
% plot((fs135b.Uzatmax(:,:)),'displayname','13.5%b')
% plot((fs75b.Uzatmax(:,:)),'displayname','7.5%b')

figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs45.Uzatmax(:,:))./va,'displayname','4.5%'); hold on
plot([1:32].*timeperFrameinSeconds,(fs6.Uzatmax(:,:))./va,'displayname','6%'); hold on
plot([1:32].*timeperFrameinSeconds,(fs7.Uzatmax(:,:))./va,'displayname','7%')
plot([1:32].*timeperFrameinSeconds,(fs75.Uzatmax(:,:))./va,'displayname','7.5%')
plot([1:32].*timeperFrameinSeconds,(fs8.Uzatmax(:,:))./va,'displayname','8%')
plot([1:32].*timeperFrameinSeconds,(fs9.Uzatmax(:,:))./va,'displayname','9%')
plot([1:32].*timeperFrameinSeconds,(fs105.Uzatmax(:,:))./va,'displayname','10.5%')
plot([1:32].*timeperFrameinSeconds,(fs12.Uzatmax(:,:))./va,'displayname','12%')
plot([1:32].*timeperFrameinSeconds,(fs13.Uzatmax(:,:))./va,'displayname','13%')
plot([1:32].*timeperFrameinSeconds,(fs135.Uzatmax(:,:))./va,'displayname','13.5%')
plot([1:32].*timeperFrameinSeconds,(fs14.Uzatmax(:,:))./va,'displayname','14%')
plot([1:32].*timeperFrameinSeconds,(fs15.Uzatmax(:,:))./va,'displayname','15%')
plot([1:32].*timeperFrameinSeconds,(fs165.Uzatmax(:,:))./va,'displayname','16.5%')
plot([1:32].*timeperFrameinSeconds,(fs18.Uzatmax(:,:))./va,'displayname','18%')
box on; grid on
xlabel('time [sec]')
ylabel('SW Uz at Nmax[va]')
legend('location','southeast')
title('Time vs. SW Uz @ Nmax')
%% time vs FS U at N max at each time
timeperFrameinSeconds = 25.* 4.15125e-2;



figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,abs(fs45.Ufsatmax(:,:))./va,'displayname','4.5%'); hold on
plot([1:32].*timeperFrameinSeconds,abs(fs6.Ufsatmax(:,:))./va,'displayname','6%'); hold on
plot([1:32].*timeperFrameinSeconds,abs(fs7.Ufsatmax(:,:))./va,'displayname','7%')
plot([1:32].*timeperFrameinSeconds,abs(fs75.Ufsatmax(:,:))./va,'displayname','7.5%')
plot([1:32].*timeperFrameinSeconds,abs(fs8.Ufsatmax(:,:))./va,'displayname','8%')
plot([1:32].*timeperFrameinSeconds,abs(fs9.Ufsatmax(:,:))./va,'displayname','9%')
plot([1:32].*timeperFrameinSeconds,abs(fs105.Ufsatmax(:,:))./va,'displayname','10.5%')
plot([1:32].*timeperFrameinSeconds,abs(fs12.Ufsatmax(:,:))./va,'displayname','12%')
plot([1:32].*timeperFrameinSeconds,abs(fs13.Ufsatmax(:,:))./va,'displayname','13%')
plot([1:32].*timeperFrameinSeconds,abs(fs135.Ufsatmax(:,:))./va,'displayname','13.5%')
plot([1:32].*timeperFrameinSeconds,abs(fs14.Ufsatmax(:,:))./va,'displayname','14%')
plot([1:32].*timeperFrameinSeconds,abs(fs15.Ufsatmax(:,:))./va,'displayname','15%')
plot([1:32].*timeperFrameinSeconds,abs(fs165.Ufsatmax(:,:))./va,'displayname','16.5%')
plot([1:32].*timeperFrameinSeconds,abs(fs18.Ufsatmax(:,:))./va,'displayname','18%')
box on; grid on
xlabel('time [sec]')
ylabel('FS U at Nmax [va]')
legend('location','southeast')
title('Time vs. FS U @ Nmax')


figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs45.Ufsatmax(:,:))./va,'displayname','4.5%'); hold on
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs6.Ufsatmax(:,:))./va,'displayname','6%'); hold on
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs7.Ufsatmax(:,:))./va,'displayname','7%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs75.Ufsatmax(:,:))./va,'displayname','7.5%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs8.Ufsatmax(:,:))./va,'displayname','8%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs9.Ufsatmax(:,:))./va,'displayname','9%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs105.Ufsatmax(:,:))./va,'displayname','10.5%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs12.Ufsatmax(:,:))./va,'displayname','12%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs13.Ufsatmax(:,:))./va,'displayname','13%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs135.Ufsatmax(:,:))./va,'displayname','13.5%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs14.Ufsatmax(:,:))./va,'displayname','14%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs15.Ufsatmax(:,:))./va,'displayname','15%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs165.Ufsatmax(:,:))./va,'displayname','16.5%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs18.Ufsatmax(:,:))./va,'displayname','18%')
legend('location','southeast');
% plot((fs135b.Uzatmax(:,:)),'displayname','13.5%b')
% plot((fs75b.Uzatmax(:,:)),'displayname','7.5%b')


%% time vs FS U max at each time
timeperFrameinSeconds = 25.* 4.15125e-2;



figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,abs(fs45.Ufsmax(:,:))./va,'displayname','4.5%'); hold on
plot([1:32].*timeperFrameinSeconds,abs(fs6.Ufsmax(:,:))./va,'displayname','6%'); hold on
plot([1:32].*timeperFrameinSeconds,abs(fs7.Ufsmax(:,:))./va,'displayname','7%')
plot([1:32].*timeperFrameinSeconds,abs(fs75.Ufsmax(:,:))./va,'displayname','7.5%')
plot([1:32].*timeperFrameinSeconds,abs(fs8.Ufsmax(:,:))./va,'displayname','8%')
plot([1:32].*timeperFrameinSeconds,abs(fs9.Ufsmax(:,:))./va,'displayname','9%')
plot([1:32].*timeperFrameinSeconds,abs(fs105.Ufsmax(:,:))./va,'displayname','10.5%')
plot([1:32].*timeperFrameinSeconds,abs(fs12.Ufsmax(:,:))./va,'displayname','12%')
plot([1:32].*timeperFrameinSeconds,abs(fs13.Ufsmax(:,:))./va,'displayname','13%')
plot([1:32].*timeperFrameinSeconds,abs(fs135.Ufsmax(:,:))./va,'displayname','13.5%')
plot([1:32].*timeperFrameinSeconds,abs(fs14.Ufsmax(:,:))./va,'displayname','14%')
plot([1:32].*timeperFrameinSeconds,abs(fs15.Ufsmax(:,:))./va,'displayname','15%')
plot([1:32].*timeperFrameinSeconds,abs(fs165.Ufsmax(:,:))./va,'displayname','16.5%')
plot([1:32].*timeperFrameinSeconds,abs(fs18.Ufsmax(:,:))./va,'displayname','18%')
box on; grid on
xlabel('time [sec]')
ylabel('FS U max [va]')
legend('location','southeast')
title('Time vs. FS U max')


figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs45.Ufsmax(:,:))./va,'displayname','4.5%'); hold on
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs6.Ufsmax(:,:))./va,'displayname','6%'); hold on
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs7.Ufsmax(:,:))./va,'displayname','7%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs75.Ufsmax(:,:))./va,'displayname','7.5%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs8.Ufsmax(:,:))./va,'displayname','8%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs9.Ufsmax(:,:))./va,'displayname','9%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs105.Ufsmax(:,:))./va,'displayname','10.5%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs12.Ufsmax(:,:))./va,'displayname','12%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs13.Ufsmax(:,:))./va,'displayname','13%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs135.Ufsmax(:,:))./va,'displayname','13.5%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs14.Ufsmax(:,:))./va,'displayname','14%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs15.Ufsmax(:,:))./va,'displayname','15%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs165.Ufsmax(:,:))./va,'displayname','16.5%')
legend('location','southeast');figure; set(gcf,'color','w');
plot([1:32].*timeperFrameinSeconds,(fs18.Ufsmax(:,:))./va,'displayname','18%')
legend('location','southeast');
% plot((fs135b.Uzatmax(:,:)),'displayname','13.5%b')
% plot((fs75b.Uzatmax(:,:)),'displayname','7.5%b')



%% model prediction of exp Speed vs uz speed
%Plot speed of boundary vs density peak, label each point with parameter
cutTime = 8;
figure; set(gcf,'color','w');
scatter(d15.expSpeed(cutTime,:),d15.maxUz(cutTime,:)/va,300,'filled','displayname','15deg'); hold on
scatter(d30.expSpeed(cutTime,:),d30.maxUz(cutTime,:)/va,300,'filled','displayname','30deg'); hold on
scatter(d45.expSpeed(cutTime,:),d45.maxUz(cutTime,:)/va,300,'filled','displayname','45deg')
scatter(d60.expSpeed(cutTime,:),d60.maxUz(cutTime,:)/va,300,'filled','displayname','60deg')
scatter(d75.expSpeed(cutTime,:),d75.maxUz(cutTime,:)/va,300,'filled','displayname','75deg')
scatter(d90.expSpeed(cutTime,:),d90.maxUz(cutTime,:)/va,300,'filled','displayname','90deg')
scatter(d105.expSpeed(cutTime,:),d105.maxUz(cutTime,:)/va,300,'filled','displayname','105deg')
scatter(d120.expSpeed(cutTime,:),d120.maxUz(cutTime,:)/va,300,'filled','displayname','120deg')
scatter(d135.expSpeed(cutTime,:),d135.maxUz(cutTime,:)/va,300,'filled','displayname','135deg')
scatter(d150.expSpeed(cutTime,:),d150.maxUz(cutTime,:)/va,300,'filled','displayname','150deg')
scatter(d165.expSpeed(cutTime,:),d165.maxUz(cutTime,:)/va,300,'filled','displayname','165deg')
scatter(d180.expSpeed(cutTime,:),d180.maxUz(cutTime,:)/va,300,'filled','displayname','180deg')



cutTime = 20;
figure; set(gcf,'color','w');
expSpeed = [d15.expSpeed(cutTime,:),...
    d30.expSpeed(cutTime,:),...
    d45.expSpeed(cutTime,:),...
    d60.expSpeed(cutTime,:),...
    d75.expSpeed(cutTime,:),...
    d90.expSpeed(cutTime,:),...
    d105.expSpeed(cutTime,:),...
    d120.expSpeed(cutTime,:),...
    d135.expSpeed(cutTime,:),...
    d150.expSpeed(cutTime,:),...
    d165.expSpeed(cutTime,:),...
    d180.expSpeed(cutTime,:)];
maxUz = [d15.maxUz(cutTime,:)/va,...
    d30.maxUz(cutTime,:)/va,...
    d45.maxUz(cutTime,:)/va,...
    d60.maxUz(cutTime,:)/va,...
    d75.maxUz(cutTime,:)/va,...
    d90.maxUz(cutTime,:)/va,...
    d105.maxUz(cutTime,:)/va,...
    d120.maxUz(cutTime,:)/va,...
    d135.maxUz(cutTime,:)/va,...
    d150.maxUz(cutTime,:)/va,...
    d165.maxUz(cutTime,:)/va,...
    d180.maxUz(cutTime,:)/va]


plot(expSpeed,maxUz);
box on; grid on
xlabel('Model Exp. Speed [va]')
ylabel('Max Uz [va]')
legend('location','southeast')
title('Model Exp. Speed vs. Max Uz at t=20')
%% model prediction of exp Speed vs uz speed
%Plot speed of boundary vs density peak, label each point with parameter
cutTime = 30;
figure; set(gcf,'color','w');
scatter(fsT4.expSpeed(cutTime,:),fsT4.maxUz(cutTime,:)/va,300,'filled','displayname','4 FSTherm'); hold on
scatter(fsT5.expSpeed(cutTime,:),fsT5.maxUz(cutTime,:)/va,300,'filled','displayname','5 FSTherm'); hold on
scatter(fsT6.expSpeed(cutTime,:),fsT6.maxUz(cutTime,:)/va,300,'filled','displayname','6 FSTherm')
scatter(fsT7.expSpeed(cutTime,:),fsT7.maxUz(cutTime,:)/va,300,'filled','displayname','7 FSTherm')
scatter(fsT8.expSpeed(cutTime,:),fsT8.maxUz(cutTime,:)/va,300,'filled','displayname','8 FSTherm')
scatter(fsT9.expSpeed(cutTime,:),fsT9.maxUz(cutTime,:)/va,300,'filled','displayname','9 FSTherm')
scatter(fsT10.expSpeed(cutTime,:),fsT10.maxUz(cutTime,:)/va,300,'filled','displayname','10 FSTherm')

cutTime = 20;
figure; set(gcf,'color','w');
expSpeed = [fsT4.expSpeed(cutTime,:),...
    fsT5.expSpeed(cutTime,:),...
    fsT6.expSpeed(cutTime,:),...
    fsT7.expSpeed(cutTime,:),...
    fsT8.expSpeed(cutTime,:),...
    fsT9.expSpeed(cutTime,:),...
    fsT10.expSpeed(cutTime,:)];
maxUz = [fsT4.maxUz(cutTime,:)/va,...
    fsT5.maxUz(cutTime,:)/va,...
    fsT6.maxUz(cutTime,:)/va,...
    fsT7.maxUz(cutTime,:)/va,...
    fsT8.maxUz(cutTime,:)/va,...
    fsT9.maxUz(cutTime,:)/va,...
    fsT10.maxUz(cutTime,:)/va];

plot(expSpeed,maxUz);

box on; grid on
xlabel('Model Exp. Speed [va]')
ylabel('Max Uz [va]')
legend('location','southeast')
title('Model Exp. Speed vs. Max Uz at t=20')
%% model prediction of exp Speed vs uz speed
%Plot speed of boundary vs density peak, label each point with parameter
cutTime = 20;
figure; set(gcf,'color','w');
scatter(fs45.expSpeed(cutTime,:),fs45.maxUz(cutTime,:)/va,300,'filled','displayname','4.5%'); hold on
scatter(fs6.expSpeed(cutTime,:),fs6.maxUz(cutTime,:)/va,300,'filled','displayname','6%'); hold on
scatter(fs7.expSpeed(cutTime,:),fs7.maxUz(cutTime,:)/va,300,'filled','displayname','7%')
scatter(fs75.expSpeed(cutTime,:),fs75.maxUz(cutTime,:)/va,300,'filled','displayname','7.5%')
scatter(fs8.expSpeed(cutTime,:),fs8.maxUz(cutTime,:)/va,300,'filled','displayname','8%')
scatter(fs9.expSpeed(cutTime,:),fs9.maxUz(cutTime,:)/va,300,'filled','displayname','9%')
scatter(fs105.expSpeed(cutTime,:),fs105.maxUz(cutTime,:)/va,300,'filled','displayname','10.5%')
scatter(fs12.expSpeed(cutTime,:),fs12.maxUz(cutTime,:)/va,300,'filled','displayname','12%')
scatter(fs13.expSpeed(cutTime,:),fs13.maxUz(cutTime,:)/va,300,'filled','displayname','13%')
scatter(fs135.expSpeed(cutTime,:),fs135.maxUz(cutTime,:)/va,300,'filled','displayname','13.5%')
scatter(fs14.expSpeed(cutTime,:),fs14.maxUz(cutTime,:)/va,300,'filled','displayname','14%')
scatter(fs15.expSpeed(cutTime,:),fs15.maxUz(cutTime,:)/va,300,'filled','displayname','15%')
scatter(fs165.expSpeed(cutTime,:),fs165.maxUz(cutTime,:)/va,300,'filled','displayname','16.5%')
scatter(fs18.expSpeed(cutTime,:),fs18.maxUz(cutTime,:)/va,300,'filled','displayname','18%')

cutTime = 32;
figure; set(gcf,'color','w');
expSpeed = [fs45.expSpeed(cutTime,:),...
    fs6.expSpeed(cutTime,:),...
    fs7.expSpeed(cutTime,:),...
    fs75.expSpeed(cutTime,:),...
    fs8.expSpeed(cutTime,:),...
    fs9.expSpeed(cutTime,:),...
    fs105.expSpeed(cutTime,:),...
    fs12.expSpeed(cutTime,:),...
    fs13.expSpeed(cutTime,:),...
    fs135.expSpeed(cutTime,:),...
    fs14.expSpeed(cutTime,:),...
    fs15.expSpeed(cutTime,:),...
    fs165.expSpeed(cutTime,:),...
    fs18.expSpeed(cutTime,:)];
maxUz = [fs45.maxUz(cutTime,:)/va,...
    fs6.maxUz(cutTime,:)/va,...
    fs7.maxUz(cutTime,:)/va,...
    fs75.maxUz(cutTime,:)/va,...
    fs8.maxUz(cutTime,:)/va,...
    fs9.maxUz(cutTime,:)/va,...
    fs105.maxUz(cutTime,:)/va,...
    fs12.maxUz(cutTime,:)/va,...
    fs13.maxUz(cutTime,:)/va,...
    fs135.maxUz(cutTime,:)/va,...
    fs14.maxUz(cutTime,:)/va,...
    fs15.maxUz(cutTime,:)/va,...
    fs165.maxUz(cutTime,:)/va,...
    fs18.maxUz(cutTime,:)/va]


plot(maxUz,expSpeed./1.3);



box on; grid on
ylabel('Model Exp. Speed [va]')
xlabel('Max Uz [va]')
legend('location','southeast')
title('Model Exp. Speed vs. Max Uz at t=32')
%% n_fs vs max SW Thermal Energy
%Plot speed of boundary vs density peak, label each point with parameter
cutTime = 20;
figure; set(gcf,'color','w');
scatter(log(0.045),log(fs45.maxSWTE(cutTime,:)),300,'filled','displayname','4.5%'); hold on
scatter(log(0.06),log(fs6.maxSWTE(cutTime,:)),300,'filled','displayname','6%'); hold on
scatter(log(0.7),log(fs7.maxSWTE(cutTime,:)),300,'filled','displayname','7%')
scatter(log(0.75),log(fs75.maxSWTE(cutTime,:)),300,'filled','displayname','7.5%')
scatter(log(0.8),log(fs8.maxSWTE(cutTime,:)),300,'filled','displayname','8%')
scatter(log(0.09),log(fs9.maxSWTE(cutTime,:)),300,'filled','displayname','9%')
scatter(log(0.105),log(fs105.maxSWTE(cutTime,:)),300,'filled','displayname','10.5%')
scatter(log(0.12),log(fs12.maxSWTE(cutTime,:)),300,'filled','displayname','12%')
scatter(log(0.13),log(fs13.maxSWTE(cutTime,:)),300,'filled','displayname','13%')
scatter(log(0.135),log(fs135.maxSWTE(cutTime,:)),300,'filled','displayname','13.5%')
scatter(log(0.14),log(fs14.maxSWTE(cutTime,:)),300,'filled','displayname','14%')
scatter(log(0.15),log(fs15.maxSWTE(cutTime,:)),300,'filled','displayname','15%')
scatter(log(0.165),log(fs165.maxSWTE(cutTime,:)),300,'filled','displayname','16.5%')
scatter(log(0.18),log(fs18.maxSWTE(cutTime,:)),300,'filled','displayname','18%')

scatter(log(0.135),log(fs135b.maxSWTE(cutTime,:)),300,'displayname','13.5%b')
scatter(log(0.75),log(fs75b.maxSWTE(cutTime,:)),300,'displayname','7.5%b')


box on; grid on
xlabel('log n_{fs} [n0]')
ylabel('log max SW TE [kg / m s^2]')
legend('location','southeast')
title('n_{fs} vs. max SW TE at t=26')
% A=[0.05:0.005:0.20];
% B = A.^(1/2);
% C = 10;
% hold  on;
% plot(log(A),log(C.*B)-0.4,'displayName','sqrt');
% plot(log(A),log(A)+3.4,'displayName','linear');

%% n_fs vs vz * sqrt ( 1- 1/gamma)
%Plot speed of boundary vs density peak, label each point with parameter
cutTime = 26;
figure; set(gcf,'color','w');
scatter(4.5,fs45.maxUz(cutTime,:)./va.*(1-(fs45.peakN(cutTime,:)/n0)^(-1))^(1/2),300,'filled','displayname','4.5%'); hold on
scatter(6,fs6.maxUz(cutTime,:)./va.*(1-(fs6.peakN(cutTime,:)/n0)^(-1))^(1/2),300,'filled','displayname','6%'); hold on
scatter(7,fs7.maxUz(cutTime,:)./va.*(1-(fs7.peakN(cutTime,:)/n0)^(-1))^(1/2),300,'filled','displayname','7%')
scatter(7.5,fs75.maxUz(cutTime,:)./va.*(1-(fs75.peakN(cutTime,:)/n0)^(-1))^(1/2),300,'filled','displayname','7.5%')
scatter(8,fs8.maxUz(cutTime,:)./va.*(1-(fs8.peakN(cutTime,:)/n0)^(-1))^(1/2),300,'filled','displayname','8%')
scatter(9,fs9.maxUz(cutTime,:)./va.*(1-(fs9.peakN(cutTime,:)/n0)^(-1))^(1/2),300,'filled','displayname','9%')
scatter(10.5,fs105.maxUz(cutTime,:)./va.*(1-(fs105.peakN(cutTime,:)/n0)^(-1))^(1/2),300,'filled','displayname','10.5%')
scatter(12,fs12.maxUz(cutTime,:)./va.*(1-(fs12.peakN(cutTime,:)/n0)^(-1))^(1/2),300,'filled','displayname','12%')
scatter(13,fs13.maxUz(cutTime,:)./va.*(1-(fs13.peakN(cutTime,:)/n0)^(-1))^(1/2),300,'filled','displayname','13%')
scatter(13.5,fs135.maxUz(cutTime,:)./va.*(1-(fs135.peakN(cutTime,:)/n0)^(-1))^(1/2),300,'filled','displayname','13.5%')
scatter(14,fs14.maxUz(cutTime,:)./va.*(1-(fs14.peakN(cutTime,:)/n0)^(-1))^(1/2),300,'filled','displayname','14%')
scatter(15,fs15.maxUz(cutTime,:)./va.*(1-(fs15.peakN(cutTime,:)/n0)^(-1))^(1/2),300,'filled','displayname','15%')
scatter(16.5,fs165.maxUz(cutTime,:)./va.*(1-(fs165.peakN(cutTime,:)/n0)^(-1))^(1/2),300,'filled','displayname','16.5%')
scatter(18,fs18.maxUz(cutTime,:)./va.*(1-(fs18.peakN(cutTime,:)/n0)^(-1))^(1/2),300,'filled','displayname','18%')

scatter(13.5,fs135b.maxUz(cutTime,:)./va.*(1-(fs135b.peakN(cutTime,:)/n0)^(-1))^(1/2),300,'displayname','13.5%b')
scatter(7.5,fs75b.maxUz(cutTime,:)./va.*(1-(fs75b.peakN(cutTime,:)/n0)^(-1))^(1/2),300,'displayname','7.5%b')

box on; grid on
xlabel('n_{fs} [n0]')
ylabel('uz sqrt(1-1/gamma)')
legend('location','southeast')
title('n_{fs} vs. uz sqrt(1-1/gamma) at t=26')
%% n_fs vs vz * sqrt ( 1- 1/gamma)
%Plot speed of boundary vs density peak, label each point with parameter
cutTime = 26;
figure; set(gcf,'color','w');
scatter(log(0.045),log(fs45.maxUz(cutTime,:)./va./(1-(fs45.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','4.5%'); hold on
scatter(log(0.06),log(fs6.maxUz(cutTime,:)./va./(1-(fs6.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','6%'); hold on
scatter(log(0.07),log(fs7.maxUz(cutTime,:)./va./(1-(fs7.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','7%')
scatter(log(0.075),log(fs75.maxUz(cutTime,:)./va./(1-(fs75.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','7.5%')
scatter(log(0.08),log(fs8.maxUz(cutTime,:)./va./(1-(fs8.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','8%')
scatter(log(0.09),log(fs9.maxUz(cutTime,:)./va./(1-(fs9.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','9%')
scatter(log(0.105),log(fs105.maxUz(cutTime,:)./va./(1-(fs105.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','10.5%')
scatter(log(0.12),log(fs12.maxUz(cutTime,:)./va./(1-(fs12.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','12%')
scatter(log(0.13),log(fs13.maxUz(cutTime,:)./va./(1-(fs13.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','13%')
scatter(log(0.135),log(fs135.maxUz(cutTime,:)./va./(1-(fs135.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','13.5%')
scatter(log(0.14),log(fs14.maxUz(cutTime,:)./va./(1-(fs14.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','14%')
scatter(log(0.15),log(fs15.maxUz(cutTime,:)./va./(1-(fs15.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','15%')
scatter(log(0.165),log(fs165.maxUz(cutTime,:)./va./(1-(fs165.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','16.5%')
scatter(log(0.18),log(fs18.maxUz(cutTime,:)./va./(1-(fs18.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','18%')

scatter(log(0.135),log(fs135b.maxUz(cutTime,:)./va./(1-(fs135b.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'displayname','13.5%b')
scatter(log(0.075),log(fs75b.maxUz(cutTime,:)./va./(1-(fs75b.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'displayname','7.5%b')

box on; grid on
xlabel('n_{fs} [n0]')
ylabel('uz/sqrt(1-1/gamma)')
legend('location','southeast')
title('n_{fs} vs. uz/sqrt(1-1/gamma) at t=26')
A=[0.05:0.005:0.20];
B = A.^(1/2);
C = 10;
hold  on;
plot(log(A),log(C.*B)+0.41,'displayName','sqrt');
plot(log(A),log(A)+3.8,'displayName','linear');
%% n_fs vs sqrt ( 1- 1/gamma)
%Plot speed of boundary vs density peak, label each point with parameter
cutTime = 26;
figure; set(gcf,'color','w');
scatter(log(0.045),log((1-(fs45.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','4.5%'); hold on
scatter(log(0.06),log((1-(fs6.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','6%'); hold on
scatter(log(0.07),log((1-(fs7.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','7%')
scatter(log(0.075),log((1-(fs75.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','7.5%')
scatter(log(0.08),log((1-(fs8.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','8%')
scatter(log(0.09),log((1-(fs9.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','9%')
scatter(log(0.105),log((1-(fs105.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','10.5%')
scatter(log(0.12),log((1-(fs12.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','12%')
scatter(log(0.13),log((1-(fs13.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','13%')
scatter(log(0.135),log((1-(fs135.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','13.5%')
scatter(log(0.14),log((1-(fs14.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','14%')
scatter(log(0.15),log((1-(fs15.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','15%')
scatter(log(0.165),log((1-(fs165.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','16.5%')
scatter(log(0.18),log((1-(fs18.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'filled','displayname','18%')

scatter(log(0.135),log((1-(fs135b.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'displayname','13.5%b')
scatter(log(0.075),log((1-(fs75b.peakN(cutTime,:)/n0)^(-1))^(1/2)),300,'displayname','7.5%b')

box on; grid on
xlabel('log n_{fs} [n0]')
ylabel('log sqrt(1-1/gamma)')
legend('location','southeast')
title('n_{fs} vs. sqrt(1-1/gamma) at t=26')
A=[0.05:0.005:0.20];
B = A.^(1/2);
C = 10;
hold  on;
plot(log(A),log(C.*B)-1.5,'displayName','sqrt');
plot(log(A),log(A)+2.4,'displayName','linear');
%% n_fs vs peak Density at 26
%Plot speed of boundary vs density peak, label each point with parameter
cutTime = 26;
figure; set(gcf,'color','w');
scatter(log(0.045),log(fs45.peakN(cutTime,:)/n0),300,'filled','displayname','4.5%'); hold on
scatter(log(0.06),log(fs6.peakN(cutTime,:)/n0),300,'filled','displayname','6%'); hold on
scatter(log(0.07),log(fs7.peakN(cutTime,:)/n0),300,'filled','displayname','7%')
scatter(log(0.075),log(fs75.peakN(cutTime,:)/n0),300,'filled','displayname','7.5%')
scatter(log(0.08),log(fs8.peakN(cutTime,:)/n0),300,'filled','displayname','8%')
scatter(log(0.09),log(fs9.peakN(cutTime,:)/n0),300,'filled','displayname','9%')
scatter(log(0.105),log(fs105.peakN(cutTime,:)/n0),300,'filled','displayname','10.5%')
scatter(log(0.12),log(fs12.peakN(cutTime,:)/n0),300,'filled','displayname','12%')
scatter(log(0.13),log(fs13.peakN(cutTime,:)/n0),300,'filled','displayname','13%')
scatter(log(0.135),log(fs135.peakN(cutTime,:)/n0),300,'filled','displayname','13.5%')
scatter(log(0.14),log(fs14.peakN(cutTime,:)/n0),300,'filled','displayname','14%')
scatter(log(0.15),log(fs15.peakN(cutTime,:)/n0),300,'filled','displayname','15%')
scatter(log(0.165),log(fs165.peakN(cutTime,:)/n0),300,'filled','displayname','16.5%')
scatter(log(0.18),log(fs18.peakN(cutTime,:)/n0),300,'filled','displayname','18%')

scatter(log(0.135),log(fs135b.peakN(cutTime,:)/n0),300,'displayname','13.5%b')
scatter(log(0.075),log(fs75b.peakN(cutTime,:)/n0),300,'displayname','7.5%b')


box on; grid on
xlabel('log n_{fs} [n0]')
ylabel('log peak density [n0]')
legend('location','southeast')
title('n_{fs} vs. peak N at t=26')
A=[0.05:0.005:0.20];
B = A.^(1/2);
C = 10;
hold  on;
plot(log(A),log(C.*B)-0.4,'displayName','sqrt');
plot(log(A),log(A)+3,'displayName','linear');
%% n_fs vs Uz at 26
%Plot speed of boundary vs density peak, label each point with parameter
cutTime = 26;
figure; set(gcf,'color','w');
scatter(log(0.045),log(fs45.maxUz(cutTime,:)/va),300,'filled','displayname','4.5%'); hold on
scatter(log(0.06),log(fs6.maxUz(cutTime,:)/va),300,'filled','displayname','6%'); hold on
scatter(log(0.7),log(fs7.maxUz(cutTime,:)/va),300,'filled','displayname','7%')
scatter(log(0.75),log(fs75.maxUz(cutTime,:)/va),300,'filled','displayname','7.5%')
scatter(log(0.8),log(fs8.maxUz(cutTime,:)/va),300,'filled','displayname','8%')
scatter(log(0.09),log(fs9.maxUz(cutTime,:)/va),300,'filled','displayname','9%')
scatter(log(0.105),log(fs105.maxUz(cutTime,:)/va),300,'filled','displayname','10.5%')
scatter(log(0.12),log(fs12.maxUz(cutTime,:)/va),300,'filled','displayname','12%')
scatter(log(0.13),log(fs13.maxUz(cutTime,:)/va),300,'filled','displayname','13%')
scatter(log(0.135),log(fs135.maxUz(cutTime,:)/va),300,'filled','displayname','13.5%')
scatter(log(0.14),log(fs14.maxUz(cutTime,:)/va),300,'filled','displayname','14%')
scatter(log(0.15),log(fs15.maxUz(cutTime,:)/va),300,'filled','displayname','15%')
scatter(log(0.165),log(fs165.maxUz(cutTime,:)/va),300,'filled','displayname','16.5%')
scatter(log(0.18),log(fs18.maxUz(cutTime,:)/va),300,'filled','displayname','18%')

scatter(log(0.135),log(fs135b.maxUz(cutTime,:)/va),300,'displayname','13.5%b')
scatter(log(0.75),log(fs75b.maxUz(cutTime,:)/va),300,'displayname','7.5%b')


box on; grid on
xlabel('log n_{fs} [n0]')
ylabel('log peak Uz [va]')
legend('location','southeast')
title('n_{fs} vs. peak uz at t=26')
A=[0.05:0.005:0.20];
B = A.^(1/2);
C = 10;
hold  on;
plot(log(A),log(C.*B)-0.4,'displayName','sqrt');
plot(log(A),log(A)+3.4,'displayName','linear');
%% n_fs vs peak Density at 10
%Plot speed of boundary vs density peak, label each point with parameter
cutTime = 10;
figure; set(gcf,'color','w');
scatter(4.5,fs45.peakN(cutTime,:)/n0,300,'filled','displayname','4.5%'); hold on
scatter(6,fs6.peakN(cutTime,:)/n0,300,'filled','displayname','6%'); hold on
scatter(7,fs7.peakN(cutTime,:)/n0,300,'filled','displayname','7%')
scatter(7.5,fs75.peakN(cutTime,:)/n0,300,'filled','displayname','7.5%')
scatter(8,fs8.peakN(cutTime,:)/n0,300,'filled','displayname','8%')
scatter(9,fs9.peakN(cutTime,:)/n0,300,'filled','displayname','9%')
scatter(10.5,fs105.peakN(cutTime,:)/n0,300,'filled','displayname','10.5%')
scatter(12,fs12.peakN(cutTime,:)/n0,300,'filled','displayname','12%')
scatter(13,fs13.peakN(cutTime,:)/n0,300,'filled','displayname','13%')
scatter(13.5,fs135.peakN(cutTime,:)/n0,300,'filled','displayname','13.5%')
scatter(14,fs14.peakN(cutTime,:)/n0,300,'filled','displayname','14%')
scatter(15,fs15.peakN(cutTime,:)/n0,300,'filled','displayname','15%')
scatter(16.5,fs165.peakN(cutTime,:)/n0,300,'filled','displayname','16.5%')
scatter(18,fs18.peakN(cutTime,:)/n0,300,'filled','displayname','18%')

scatter(13.5,fs135b.peakN(cutTime,:)/n0,300,'displayname','13.5%b')
scatter(7.5,fs75b.peakN(cutTime,:)/n0,300,'displayname','7.5%b')


box on; grid on
xlabel('n_{fs} [n0]')
ylabel('peak density [n0]')
legend('location','southeast')
title('n_{fs} vs. peak N at t=10')
%% n_fs vs peak Density at 26
%Plot speed of boundary vs density peak, label each point with parameter
cutTime = 26;
figure; set(gcf,'color','w');
scatter(4.5,fs45.peakN(cutTime,:)/n0,300,'filled','displayname','4.5%'); hold on
scatter(6,fs6.peakN(cutTime,:)/n0,300,'filled','displayname','6%'); hold on
scatter(7,fs7.peakN(cutTime,:)/n0,300,'filled','displayname','7%')
scatter(7.5,fs75.peakN(cutTime,:)/n0,300,'filled','displayname','7.5%')
scatter(8,fs8.peakN(cutTime,:)/n0,300,'filled','displayname','8%')
scatter(9,fs9.peakN(cutTime,:)/n0,300,'filled','displayname','9%')
scatter(10.5,fs105.peakN(cutTime,:)/n0,300,'filled','displayname','10.5%')
scatter(12,fs12.peakN(cutTime,:)/n0,300,'filled','displayname','12%')
scatter(13,fs13.peakN(cutTime,:)/n0,300,'filled','displayname','13%')
scatter(13.5,fs135.peakN(cutTime,:)/n0,300,'filled','displayname','13.5%')
scatter(14,fs14.peakN(cutTime,:)/n0,300,'filled','displayname','14%')
scatter(15,fs15.peakN(cutTime,:)/n0,300,'filled','displayname','15%')
scatter(16.5,fs165.peakN(cutTime,:)/n0,300,'filled','displayname','16.5%')
scatter(18,fs18.peakN(cutTime,:)/n0,300,'filled','displayname','18%')

scatter(13.5,fs135b.peakN(cutTime,:)/n0,300,'displayname','13.5%b')
scatter(7.5,fs75b.peakN(cutTime,:)/n0,300,'displayname','7.5%b')


box on; grid on
xlabel('n_{fs} [n0]')
ylabel('peak density [n0]')
legend('location','southeast')
title('n_{fs} vs. peak N at t=26')
%% n for denstiy ratio
%Plot n
figure; set(gcf,'color','w');
plot(fs45.n,'displayname','4.5%'); hold on
plot(fs6.n,'displayname','6%'); hold on
plot(fs7.n,'displayname','7%');
plot(fs75.n,'displayname','7.5%');
plot(fs8.n,'displayname','8%');
plot(fs9.n,'displayname','9%');
plot(fs105.n,'displayname','10.5%');
plot(fs12.n,'displayname','12%');
plot(fs13.n,'displayname','13%'); hold on
plot(fs135.n,'displayname','13.5%'); hold on
plot(fs14.n,'displayname','14%'); hold on
plot(fs15.n,'displayname','15%');
plot(fs165.n,'displayname','16.5%');
plot(fs18.n,'displayname','18%');

plot(fs135b.n,'displayname','13.5%b');
plot(fs75b.n,'displayname','7.5%b');


xlim([100 300])
box on; grid on
xlabel('z [\lambda_i]')
ylabel('n [n_0]')
legend
title('n for different density ratios')
%% n_fs vs peak Pos
figure; set(gcf,'color','w');
scatter(4.5,fs45.peakPos(:,:),300,'filled','displayname','4.5%'); hold on
scatter(6,fs6.peakPos(:,:),300,'filled','displayname','6%'); hold on
scatter(7,fs7.peakPos(:,:),300,'filled','displayname','7%')
scatter(7.5,fs75.peakPos(:,:),300,'filled','displayname','7.5%')
scatter(8,fs8.peakPos(:,:),300,'filled','displayname','8%')
scatter(9,fs9.peakPos(:,:),300,'filled','displayname','9%')
scatter(10.5,fs105.peakPos(:,:),300,'filled','displayname','10.5%')
scatter(12,fs12.peakPos(:,:),300,'filled','displayname','12%')
scatter(13,fs13.peakPos(:,:),300,'filled','displayname','13%')
scatter(13.5,fs135.peakPos(:,:),300,'filled','displayname','13.5%')
scatter(14,fs14.peakPos(:,:),300,'filled','displayname','14%')
scatter(15,fs15.peakPos(:,:),300,'filled','displayname','15%')
scatter(16.5,fs165.peakPos(:,:),300,'filled','displayname','16.5%')
scatter(18,fs18.peakPos(:,:),300,'filled','displayname','18%')

scatter(13.5,fs135b.peakPos(:,:),300,'displayname','13.5%b')
scatter(7.5,fs75b.peakPos(:,:),300,'displayname','7.5%b')


box on; grid on
xlabel('n_{fs] [n0]')
ylabel('peak Pos [\lambda_i]')
legend('location','southeast')
title('n_{fs} vs. peak Pos')
%% time vs KE SW max value per time
figure; set(gcf,'color','w');
plot(max(fs45.ke_cold(:,:),[],2),'displayname','4.5%'); hold on
plot(max(fs6.ke_cold(:,:),[],2),'displayname','6%'); hold on
plot(max(fs7.ke_cold(:,:),[],2),'displayname','7%')
plot(max(fs75.ke_cold(:,:),[],2),'displayname','7.5%')
plot(max(fs8.ke_cold(:,:),[],2),'displayname','8%')
plot(max(fs9.ke_cold(:,:),[],2),'displayname','9%')
plot(max(fs105.ke_cold(:,:),[],2),'displayname','10.5%')
plot(max(fs12.ke_cold(:,:),[],2),'displayname','12%')
plot(max(fs13.ke_cold(:,:),[],2),'displayname','13%')
plot(max(fs135.ke_cold(:,:),[],2),'displayname','13.5%')
plot(max(fs14.ke_cold(:,:),[],2),'displayname','14%')
plot(max(fs15.ke_cold(:,:),[],2),'displayname','15%')
plot(max(fs165.ke_cold(:,:),[],2),'displayname','16.5%')
plot(max(fs18.ke_cold(:,:),[],2),'displayname','18%')

plot(max(fs135b.ke_cold(:,:),[],2),'displayname','13.5%b')
plot(max(fs75b.ke_cold(:,:),[],2),'displayname','7.5%b')


box on; grid on
xlabel('time [\Omega_i]')
ylabel('SW KEmax [ kg/(ms^2)]')
legend('location','southeast')
title('Time vs. SW KE')
%% time vs SW UZ max at each time
figure; set(gcf,'color','w');
plot((fs45.maxUz(:,:)),'displayname','4.5%'); hold on
plot((fs6.maxUz(:,:)),'displayname','6%'); hold on
plot((fs7.maxUz(:,:)),'displayname','7%')
plot((fs75.maxUz(:,:)),'displayname','7.5%')
plot((fs8.maxUz(:,:)),'displayname','8%')
plot((fs9.maxUz(:,:)),'displayname','9%')
plot((fs105.maxUz(:,:)),'displayname','10.5%')
plot((fs12.maxUz(:,:)),'displayname','12%')
plot((fs13.maxUz(:,:)),'displayname','13%')
plot((fs135.maxUz(:,:)),'displayname','13.5%')
plot((fs14.maxUz(:,:)),'displayname','14%')
plot((fs15.maxUz(:,:)),'displayname','15%')
plot((fs165.maxUz(:,:)),'displayname','16.5%')
plot((fs18.maxUz(:,:)),'displayname','18%')

plot((fs135b.maxUz(:,:)),'displayname','13.5%b')
plot((fs75b.maxUz(:,:)),'displayname','7.5%b')


box on; grid on
xlabel('time [\Omega_i]')
ylabel('SW Uz [ km/s]')
legend('location','southeast')
title('Time vs. SW Uz')
%% n_fs vs SW UZ at 10
cutTime = 10;
figure; set(gcf,'color','w');
scatter(4.5,fs45.maxUz(cutTime,:)./va,300,'filled','displayname','4.5%'); hold on
scatter(6,fs6.maxUz(cutTime,:)./va,300,'filled','displayname','6%'); hold on
scatter(7,fs7.maxUz(cutTime,:)./va,300,'filled','displayname','7%')
scatter(7.5,fs75.maxUz(cutTime,:)./va,300,'filled','displayname','7.5%')
scatter(8,fs8.maxUz(cutTime,:)./va,300,'filled','displayname','8%')
scatter(9,fs9.maxUz(cutTime,:)./va,300,'filled','displayname','9%')
scatter(10.5,fs105.maxUz(cutTime,:)./va,300,'filled','displayname','10.5%')
scatter(12,fs12.maxUz(cutTime,:)./va,300,'filled','displayname','12%')
scatter(13,fs13.maxUz(cutTime,:)./va,300,'filled','displayname','13%')
scatter(13.5,fs135.maxUz(cutTime,:)./va,300,'filled','displayname','13.5%')
scatter(14,fs14.maxUz(cutTime,:)./va,300,'filled','displayname','14%')
scatter(15,fs15.maxUz(cutTime,:)./va,300,'filled','displayname','15%')
scatter(16.5,fs165.maxUz(cutTime,:)./va,300,'filled','displayname','16.5%')
scatter(18,fs18.maxUz(cutTime,:)./va,300,'filled','displayname','18%')

scatter(13.5,fs135b.maxUz(cutTime,:)./va,300,'displayname','13.5%b')
scatter(7.5,fs75b.maxUz(cutTime,:)./va,300,'displayname','7.5%b')


box on; grid on
xlabel('n_{fs} [n0]')
ylabel('SW Uz [km/s]')
legend('location','southeast')
title('n_{fs} vs. SW Uz at t=10')
%% n_fs vs SW UZ at 26
cutTime = 26;
figure; set(gcf,'color','w');
scatter(4.5,fs45.maxUz(cutTime,:)./va,300,'filled','displayname','4.5%'); hold on
scatter(6,fs6.maxUz(cutTime,:)./va,300,'filled','displayname','6%'); hold on
scatter(7,fs7.maxUz(cutTime,:)./va,300,'filled','displayname','7%')
scatter(7.5,fs75.maxUz(cutTime,:)./va,300,'filled','displayname','7.5%')
scatter(8,fs8.maxUz(cutTime,:)./va,300,'filled','displayname','8%')
scatter(9,fs9.maxUz(cutTime,:)./va,300,'filled','displayname','9%')
scatter(10.5,fs105.maxUz(cutTime,:)./va,300,'filled','displayname','10.5%')
scatter(12,fs12.maxUz(cutTime,:)./va,300,'filled','displayname','12%')
scatter(13,fs13.maxUz(cutTime,:)./va,300,'filled','displayname','13%')
scatter(13.5,fs135.maxUz(cutTime,:)./va,300,'filled','displayname','13.5%')
scatter(14,fs14.maxUz(cutTime,:)./va,300,'filled','displayname','14%')
scatter(15,fs15.maxUz(cutTime,:)./va,300,'filled','displayname','15%')
scatter(16.5,fs165.maxUz(cutTime,:)./va,300,'filled','displayname','16.5%')
scatter(18,fs18.maxUz(cutTime,:)./va,300,'filled','displayname','18%')

scatter(13.5,fs135b.maxUz(cutTime,:)./va,300,'displayname','13.5%b')
scatter(7.5,fs75b.maxUz(cutTime,:)./va,300,'displayname','7.5%b')


box on; grid on
xlabel('n_{fs} [n0]')
ylabel('SW Uz [km/s]')
legend('location','southeast')
title('n_{fs} vs. SW Uz at t=26')
%% n_fs vs SW UZ at 26, log log
cutTime = 26;
figure; set(gcf,'color','w');
scatter(log(0.045),log(fs45.maxUz(cutTime,:)./va),300,'filled','displayname','4.5%'); hold on
scatter(log(0.06),log(fs6.maxUz(cutTime,:)./va),300,'filled','displayname','6%'); hold on
scatter(log(0.07),log(fs7.maxUz(cutTime,:)./va),300,'filled','displayname','7%')
scatter(log(0.075),log(fs75.maxUz(cutTime,:)./va),300,'filled','displayname','7.5%')
scatter(log(0.08),log(fs8.maxUz(cutTime,:)./va),300,'filled','displayname','8%')
scatter(log(0.09),log(fs9.maxUz(cutTime,:)./va),300,'filled','displayname','9%')
scatter(log(0.105),log(fs105.maxUz(cutTime,:)./va),300,'filled','displayname','10.5%')
scatter(log(0.12),log(fs12.maxUz(cutTime,:)./va),300,'filled','displayname','12%')
scatter(log(0.13),log(fs13.maxUz(cutTime,:)./va),300,'filled','displayname','13%')
scatter(log(0.135),log(fs135.maxUz(cutTime,:)./va),300,'filled','displayname','13.5%')
scatter(log(0.14),log(fs14.maxUz(cutTime,:)./va),300,'filled','displayname','14%')
scatter(log(0.15),log(fs15.maxUz(cutTime,:)./va),300,'filled','displayname','15%')
scatter(log(0.165),log(fs165.maxUz(cutTime,:)./va),300,'filled','displayname','16.5%')
scatter(log(0.18),log(fs18.maxUz(cutTime,:)./va),300,'filled','displayname','18%')

% scatter(log(0.135),log(fs135b.maxUz(cutTime,:)./va),300,'displayname','13.5%b')
% scatter(log(0.75),log(fs75b.maxUz(cutTime,:)./va),300,'displayname','7.5%b')


box on; grid on
xlabel('log n_{fs} [n0]')
ylabel('log SW Uz [km/s]')
legend('location','southeast')
title('n_{fs} vs. SW Uz at t=26')

A=[0:0.025:0.4];
B = A.^(1/2);
C = 10;
hold  on;
plot(log(A),log(C.*B)-0.4,'displayName','sqrt');
plot(log(A),log(A)+3.4,'displayName','linear');
%% n_fs vs KE SW max value over all time
figure; set(gcf,'color','w');
scatter(4.5,max(fs45.ke_cold(:,:),[],'all'),300,'filled','displayname','4.5%'); hold on
scatter(6,max(fs6.ke_cold(:,:),[],'all'),300,'filled','displayname','6%'); hold on
scatter(7,max(fs7.ke_cold(:,:),[],'all'),300,'filled','displayname','7%')
scatter(7.5,max(fs75.ke_cold(:,:),[],'all'),300,'filled','displayname','7.5%')
scatter(8,max(fs8.ke_cold(:,:),[],'all'),300,'filled','displayname','8%')
scatter(9,max(fs9.ke_cold(:,:),[],'all'),300,'filled','displayname','9%')
scatter(10.5,max(fs105.ke_cold(:,:),[],'all'),300,'filled','displayname','10.5%')
scatter(12,max(fs12.ke_cold(:,:),[],'all'),300,'filled','displayname','12%')
scatter(13,max(fs13.ke_cold(:,:),[],'all'),300,'filled','displayname','13%')
scatter(13.5,max(fs135.ke_cold(:,:),[],'all'),300,'filled','displayname','13.5%')
scatter(14,max(fs14.ke_cold(:,:),[],'all'),300,'filled','displayname','14%')
scatter(15,max(fs15.ke_cold(:,:),[],'all'),300,'filled','displayname','15%')
scatter(16.5,max(fs165.ke_cold(:,:),[],'all'),300,'filled','displayname','16.5%')
scatter(18,max(fs18.ke_cold(:,:),[],'all'),300,'filled','displayname','18%')

scatter(13.5,max(fs135b.ke_cold(:,:),[],'all'),300,'displayname','13.5%b')
scatter(7.5,max(fs75b.ke_cold(:,:),[],'all'),300,'displayname','7.5%b')


box on; grid on
xlabel('n_{fs] [n0]')
ylabel('SW KEmax [ kg/(ms^2)]')
legend('location','southeast')
title('n_{fs} vs. SW KE')
%% FS thermal vs SW UZ at 26
cutTime = 26;
figure; set(gcf,'color','w');
scatter(4,fsT4.maxUz(cutTime,:)./va,300,'filled','displayname','4'); hold on
scatter(5,fsT5.maxUz(cutTime,:)./va,300,'filled','displayname','5'); hold on
scatter(6,fsT6.maxUz(cutTime,:)./va,300,'filled','displayname','6'); hold on
scatter(7,fsT7.maxUz(cutTime,:)./va,300,'filled','displayname','7'); hold on
scatter(8,fsT8.maxUz(cutTime,:)./va,300,'filled','displayname','8')
scatter(9,fsT9.maxUz(cutTime,:)./va,300,'filled','displayname','9'); hold on
scatter(10,fsT10.maxUz(cutTime,:)./va,300,'filled','displayname','10')
% scatter(12,fsT12.maxUz(cutTime,:)./va,300,'filled','displayname','12')




box on; grid on
xlabel('FS Thermal [\lambda_i]')
ylabel('SW Uz [km/s]')
legend('location','southeast')
title('FS Thermal vs. SW Uz at t=26')
%% n_fs vs Time of Uzmax
% %Plot speed of boundary vs density peak, label each point with parameter
% figure; set(gcf,'color','w');
% scatter(6,26,300,'filled','displayname','6%'); hold on
% scatter(7.5,26,300,'filled','displayname','7.5%')
% scatter(9,25,300,'filled','displayname','9%')
% scatter(10.5,26,300,'filled','displayname','10.5%')
% scatter(12,28,300,'filled','displayname','12%')
% scatter(13.5,28,300,'filled','displayname','13.5%')
% scatter(15,30,300,'filled','displayname','15%')
% scatter(16.5,31,300,'filled','displayname','16.5%')
% scatter(18,34,300,'filled','0displayname','18%')
% 
% 
% 
% % scatter(peakN_30d,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
% % scatter(peakN_60d,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
% % scatter(peakN_120d,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
% % scatter(peakN_150d,expSpeed_150d,300,'s','filled','displayName','150°'); hold on
% 
% box on; grid on
% xlabel('n_{fs] [n0]')
% ylabel('time of max Uz [\Omega_i]')
% legend('location','southeast')
% title('n_{fs} vs. Time of Max Uz')
% % timexlabels = get(gca,'xticklabel');
% % set(gca,'xticklabel',timexlabels./2)
%% n_fs vs Uzmax
% %Plot speed of boundary vs density peak, label each point with parameter
% figure; set(gcf,'color','w');
% scatter(6,85.21,300,'filled','displayname','6%'); hold on
% scatter(7.5,86,300,'filled','displayname','7.5%')
% scatter(9,140,300,'filled','displayname','9%')
% scatter(10.5,178,300,'filled','displayname','10.5%')
% scatter(12,210,300,'filled','displayname','12%')
% scatter(13.5,200,300,'filled','displayname','13.5%')
% scatter(15,227,300,'filled','displayname','15%')
% scatter(16.5,243,300,'filled','displayname','16.5%')
% scatter(18,277.7,300,'filled','displayname','18%')
% 
% 
% 
% % scatter(peakN_30d,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
% % scatter(peakN_60d,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
% % scatter(peakN_120d,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
% % scatter(peakN_150d,expSpeed_150d,300,'s','filled','displayName','150°'); hold on
% 
% box on; grid on
% xlabel('n_{fs] [n0]')
% ylabel('peak SW Uz [km/s]')
% legend('location','southeast')
% title('n_{fs} vs. peak SW Uz')
% % timexlabels = get(gca,'xticklabel');
% % set(gca,'xticklabel',timexlabels./2)
%% magnetic shear vs KE SW
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(15,sum(d15.ke_cold(d15.maxJxTime,:)),300,'filled','displayName','15'); hold on
scatter(30,sum(d30.ke_cold(d30.maxJxTime,:)),300,'filled','displayName','30'); hold on
scatter(45,sum(d45.ke_cold(d45.maxJxTime,:)),300,'filled','displayName','45'); hold on
scatter(60,sum(d60.ke_cold(d60.maxJxTime,:)),300,'filled','displayName','60'); hold on
scatter(75,sum(d75.ke_cold(d75.maxJxTime,:)),300,'filled','displayName','75'); hold on
scatter(90,sum(d90.ke_cold(d90.maxJxTime,:)),300,'filled','displayName','90'); hold on
scatter(105,sum(d105.ke_cold(d105.maxJxTime,:)),300,'filled','displayName','105'); hold on
scatter(120,sum(d120.ke_cold(d120.maxJxTime,:)),300,'filled','displayName','120'); hold on
scatter(135,sum(d135.ke_cold(d135.maxJxTime,:)),300,'filled','displayName','135'); hold on
scatter(150,sum(d150.ke_cold(d150.maxJxTime,:)),300,'filled','displayName','150'); hold on
scatter(165,sum(d165.ke_cold(d165.maxJxTime,:)),300,'filled','displayName','165'); hold on
scatter(180,sum(d180.ke_cold(d180.maxJxTime,:)),300,'filled','displayName','180'); hold on
% scatter(peakN_30d,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
% scatter(peakN_60d,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
% scatter(peakN_120d,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
% scatter(peakN_150d,expSpeed_150d,300,'s','filled','displayName','150°'); hold on

box on; grid on
xlabel('Magnetic Shear [degrees]')
ylabel('SW KE [ kg/(ms^2)]')
legend('location','southeast')
title('Magnetic Shear vs. SW KE')
%% magnetic shear vs KE_SW at Time 3
figure; set(gcf,'color','w');
scatter(15,sum(d15.ke_cold(3,:)),300,'filled','displayName','15'); hold on
scatter(30,sum(d30.ke_cold(3,:)),300,'filled','displayName','30'); hold on
scatter(45,sum(d45.ke_cold(3,:)),300,'filled','displayName','45'); hold on
scatter(60,sum(d60.ke_cold(3,:)),300,'filled','displayName','60'); hold on
scatter(75,sum(d75.ke_cold(3,:)),300,'filled','displayName','75'); hold on
scatter(90,sum(d90.ke_cold(3,:)),300,'filled','displayName','90'); hold on
scatter(105,sum(d105.ke_cold(3,:)),300,'filled','displayName','105'); hold on
scatter(120,sum(d120.ke_cold(3,:)),300,'filled','displayName','120'); hold on
scatter(135,sum(d135.ke_cold(3,:)),300,'filled','displayName','135'); hold on
scatter(150,sum(d150.ke_cold(3,:)),300,'filled','displayName','150'); hold on
scatter(165,sum(d165.ke_cold(3,:)),300,'filled','displayName','165'); hold on
scatter(180,sum(d180.ke_cold(3,:)),300,'filled','displayName','180'); hold on
% scatter(peakN_30d,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
% scatter(peakN_60d,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
% scatter(peakN_120d,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
% scatter(peakN_150d,expSpeed_150d,300,'s','filled','displayName','150°'); hold on

box on; grid on
xlabel('Magnetic Shear [degrees]')
ylabel('SW KE [ kg/(ms^2)]')
legend('location','southeast')
title('Magnetic Shear vs. SW KE')

%% Magnetic Shear vs Jx
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(15,d15.maxJx,300,'filled','displayName','15'); hold on
scatter(30,d30.maxJx,300,'filled','displayName','30'); hold on
scatter(45,d45.maxJx,300,'filled','displayName','45'); hold on
scatter(60,d60.maxJx,300,'filled','displayName','60'); hold on
scatter(75,d75.maxJx,300,'filled','displayName','75'); hold on
scatter(90,d90.maxJx,300,'filled','displayName','90'); hold on
scatter(105,d105.maxJx,300,'filled','displayName','105'); hold on
scatter(120,d120.maxJx,300,'filled','displayName','120'); hold on
scatter(135,d135.maxJx,300,'filled','displayName','135'); hold on
scatter(150,d150.maxJx,300,'filled','displayName','150'); hold on
scatter(165,d165.maxJx,300,'filled','displayName','165'); hold on
scatter(180,d180.maxJx,300,'filled','displayName','180'); hold on

box on; grid on
xlabel('Magnetic Shear [degrees]')
ylabel('Jx [J0]')
legend('location','southeast')
title('Magnetic Shear vs. max Jx')
maxEx
yyaxis right; plot([1:5:180]+10,sind([1:5:180]./2))
%% Magnetic Shear Ex
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(15,dd15.maxEx,300,'filled','displayName','15'); hold on
scatter(30,d30.maxEx,300,'filled','displayName','30'); hold on
scatter(45,d45.maxEx,300,'filled','displayName','45'); hold on
scatter(60,d60.maxEx,300,'filled','displayName','60'); hold on
scatter(75,d75.maxEx,300,'filled','displayName','75'); hold on
scatter(90,d90.maxEx,300,'filled','displayName','90'); hold on
scatter(105,d105.maxEx,300,'filled','displayName','105'); hold on
scatter(120,d120.maxEx,300,'filled','displayName','120'); hold on
scatter(135,d135.maxEx,300,'filled','displayName','135'); hold on
scatter(150,d150.maxEx,300,'filled','displayName','150'); hold on
scatter(165,d165.maxEx,300,'filled','displayName','165'); hold on
scatter(180,d180.maxEx,300,'filled','displayName','180'); hold on

box on; grid on
xlabel('Magnetic Shear [degrees]')
ylabel('Jx dot Ex [J0E0]')
legend('location','southeast')
title('Magnetic Shear vs. Ex')
%% Magnetic Shear vs  Ey
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(15,d15.maxEy,300,'filled','displayName','15'); hold on
scatter(30,d30.maxEy,300,'filled','displayName','30'); hold on
scatter(45,d45.maxEy,300,'filled','displayName','45'); hold on
scatter(60,d60.maxEy,300,'filled','displayName','60'); hold on
scatter(75,d75.maxEy,300,'filled','displayName','75'); hold on
scatter(90,d90.maxEy,300,'filled','displayName','90'); hold on
scatter(105,d105.maxEy,300,'filled','displayName','105'); hold on
scatter(120,d120.maxEy,300,'filled','displayName','120'); hold on
scatter(135,d135.maxEy,300,'filled','displayName','135'); hold on
scatter(150,d150.maxEy,300,'filled','displayName','150'); hold on
scatter(165,d165.maxEy,300,'filled','displayName','165'); hold on
scatter(180,d180.maxEy,300,'filled','displayName','180'); hold on

box on; grid on
xlabel('Magnetic Shear [degrees]')
ylabel('Jy dot Ey [J0E0]')
legend('location','southeast')
title('Magnetic Shear vs. Ey')

%% Magnetic Shear vs Jx
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(15,d15.maxJx,300,'filled','displayName','15'); hold on
scatter(30,d30.maxJx,300,'filled','displayName','30'); hold on
scatter(45,d45.maxJx,300,'filled','displayName','45'); hold on
scatter(60,d60.maxJx,300,'filled','displayName','60'); hold on
scatter(75,d75.maxJx,300,'filled','displayName','75'); hold on
scatter(90,d90.maxJx,300,'filled','displayName','90'); hold on
scatter(105,d105.maxJx,300,'filled','displayName','105'); hold on
scatter(120,d120.maxJx,300,'filled','displayName','120'); hold on
scatter(135,d135.maxJx,300,'filled','displayName','135'); hold on
scatter(150,d150.maxJx,300,'filled','displayName','150'); hold on
scatter(165,d165.maxJx,300,'filled','displayName','165'); hold on
scatter(180,d180.maxJx,300,'filled','displayName','180'); hold on

box on; grid on
xlabel('Magnetic Shear [degrees]')
ylabel('Jx [J0]')
legend('location','southeast')
title('Magnetic Shear vs. max Jx')
yyaxis right; plot([1:5:180]+10,sind([1:5:180]./2))
%% Magnetic Shear vs Jx dot Ex
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(15,d15.maxJx.*d15.maxEx,300,'filled','displayName','15'); hold on
scatter(30,d30.maxJx.*d30.maxEx,300,'filled','displayName','30'); hold on
scatter(45,d45.maxJx.*d45.maxEx,300,'filled','displayName','45'); hold on
scatter(60,d60.maxJx.*d60.maxEx,300,'filled','displayName','60'); hold on
scatter(75,d75.maxJx.*d75.maxEx,300,'filled','displayName','75'); hold on
scatter(90,d90.maxJx.*d90.maxEx,300,'filled','displayName','90'); hold on
scatter(105,d105.maxJx.*d105.maxEx,300,'filled','displayName','105'); hold on
scatter(120,d120.maxJx.*d120.maxEx,300,'filled','displayName','120'); hold on
scatter(135,d135.maxJx.*d135.maxEx,300,'filled','displayName','135'); hold on
scatter(150,d150.maxJx.*d150.maxEx,300,'filled','displayName','150'); hold on
scatter(165,d165.maxJx.*d165.maxEx,300,'filled','displayName','165'); hold on
scatter(180,d180.maxJx.*d180.maxEx,300,'filled','displayName','180'); hold on

box on; grid on
xlabel('Magnetic Shear [degrees]')
ylabel('Jx dot Ex [J0E0]')
legend('location','southeast')
title('Magnetic Shear vs. max JxdotEx')
%% Magnetic Shear vs Jy dot Ey
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(15,d15.maxJy.*d15.maxEy,300,'filled','displayName','15'); hold on
scatter(30,d30.maxJy.*d30.maxEy,300,'filled','displayName','30'); hold on
scatter(45,d45.maxJy.*d45.maxEy,300,'filled','displayName','45'); hold on
scatter(60,d60.maxJy.*d60.maxEy,300,'filled','displayName','60'); hold on
scatter(75,d75.maxJy.*d75.maxEy,300,'filled','displayName','75'); hold on
scatter(90,d90.maxJy.*d90.maxEy,300,'filled','displayName','90'); hold on
scatter(105,d105.maxJy.*d105.maxEy,300,'filled','displayName','105'); hold on
scatter(120,d120.maxJy.*d120.maxEy,300,'filled','displayName','120'); hold on
scatter(135,d135.maxJy.*d135.maxEy,300,'filled','displayName','135'); hold on
scatter(150,d150.maxJy.*d150.maxEy,300,'filled','displayName','150'); hold on
scatter(165,d165.maxJy.*d165.maxEy,300,'filled','displayName','165'); hold on
scatter(180,d180.maxJy.*d180.maxEy,300,'filled','displayName','180'); hold on

box on; grid on
xlabel('Magnetic Shear [degrees]')
ylabel('Jy dot Ey [J0E0]')
legend('location','southeast')
title('Magnetic Shear vs. max JydotEy')

%% Magnetic Shear vs Jy
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(15,d15.maxJy,300,'filled','displayName','15'); hold on
scatter(30,d30.maxJy,300,'filled','displayName','30'); hold on
scatter(45,d45.maxJy,300,'filled','displayName','45'); hold on
scatter(60,d60.maxJy,300,'filled','displayName','60'); hold on
scatter(75,d75.maxJy,300,'filled','displayName','75'); hold on
scatter(90,d90.maxJy,300,'filled','displayName','90'); hold on
scatter(105,d105.maxJy,300,'filled','displayName','105'); hold on
scatter(120,d120.maxJy,300,'filled','displayName','120'); hold on
scatter(135,d135.maxJy,300,'filled','displayName','135'); hold on
scatter(150,d150.maxJy,300,'filled','displayName','150'); hold on
scatter(165,d165.maxJy,300,'filled','displayName','165'); hold on
scatter(180,d180.maxJy,300,'filled','displayName','180'); hold on

box on; grid on
xlabel('Magnetic Shear [degrees]')
ylabel('Jy [J0]')
legend('location','southeast')
title('Magnetic Shear vs. max Jy')
%% n for magnetic shear
%Plot n
figure; set(gcf,'color','w');



plot(d15.n,'displayname','15'); hold on
plot(d30.n,'displayname','30');
plot(d45.n,'displayname','45');
plot(d60.n,'displayname','60');
plot(d75.n,'displayname','75');
plot(d90.n,'displayname','90'); hold on
plot(d105.n,'displayname','105');
plot(d120.n,'displayname','120');
plot(d135.n,'displayname','135');
plot(d150.n,'displayname','150');
plot(d165.n,'displayname','165');
plot(d180.n,'displayname','180');

xlim([100 300])
box on; grid on
xlabel('z [\lambda_i]')
ylabel('n [n_0]')
legend
title('n for different Magnetic Shear')
%% FS v vs KE SW
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(1.2,sum(FSv12.ke_cold(FSv12.maxJxTime,:)),300,'filled','displayName','1.2 SWMa'); hold on
scatter(1.6,sum(FSv16.ke_cold(FSv16.maxJxTime,:)),300,'filled','displayName','1.6 SWMa'); hold on
scatter(2.0,sum(FSv20.ke_cold(FSv20.maxJxTime,:)),300,'filled','displayName','2.0 SWMa'); hold on
scatter(2.4,sum(FSv24.ke_cold(FSv24.maxJxTime,:)),300,'filled','displayName','2.4 SWMa'); hold on
scatter(2.8,sum(FSv28.ke_cold(FSv28.maxJxTime,:)),300,'filled','displayName','2.8 SWMa'); hold on

% scatter(peakN_30d,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
% scatter(peakN_60d,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
% scatter(peakN_120d,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
% scatter(peakN_150d,expSpeed_150d,300,'s','filled','displayName','150°'); hold on

box on; grid on
xlabel('FS v [SWM_a]')
ylabel('SW KE [ kg/(ms^2)]')
legend('location','southeast')
title(' FS v vs. SW KE')
% 
figure; set(gcf,'color','w');
scatter(1.2,sum(FSv12.ke_cold(6,:)),300,'filled','displayName','1.2 SWMa'); hold on
scatter(1.6,sum(FSv16.ke_cold(6,:)),300,'filled','displayName','1.6 SWMa'); hold on
scatter(2.0,sum(FSv20.ke_cold(6,:)),300,'filled','displayName','2.0 SWMa'); hold on
scatter(2.4,sum(FSv24.ke_cold(6,:)),300,'filled','displayName','2.4 SWMa'); hold on
scatter(2.8,sum(FSv28.ke_cold(6,:)),300,'filled','displayName','2.8 SWMa'); hold on

% scatter(peakN_30d,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
% scatter(peakN_60d,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
% scatter(peakN_120d,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
% scatter(peakN_150d,expSpeed_150d,300,'s','filled','displayName','150°'); hold on

box on; grid on
xlabel('FS v [SWM_a]')
ylabel('SW KE [ kg/(ms^2)]')
legend('location','southeast')
title(' FS v vs. SW KE')




%% FS v vs Jx
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(1.2,FSv12.maxJx,300,'filled','displayName','1.2 SWMa'); hold on
scatter(1.6,FSv16.maxJx,300,'filled','displayName','1.6 SWMa'); hold on
scatter(2.0,FSv20.maxJx,300,'filled','displayName','2.0 SWMa'); hold on
scatter(2.4,FSv24.maxJx,300,'filled','displayName','2.4 SWMa'); hold on
scatter(2.8,FSv28.maxJx,300,'filled','displayName','2.8 SWMa'); hold on


box on; grid on
xlabel('FS v [SWM_a]')
ylabel('Jx [J0]')
legend('location','southeast')
title('FS v v vs. max Jx')
%% FS v vs Jy
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(1.2,FSv12.maxJy,300,'filled','displayName','1.2 SWMa'); hold on
scatter(1.6,FSv16.maxJy,300,'filled','displayName','1.6 SWMa'); hold on
scatter(2.0,FSv20.maxJy,300,'filled','displayName','2.0 SWMa'); hold on
scatter(2.4,FSv24.maxJy,300,'filled','displayName','2.4 SWMa'); hold on
scatter(2.8,FSv28.maxJy,300,'filled','displayName','2.8 SWMa'); hold on


box on; grid on
xlabel('FS v [SWM_a]')
ylabel('Jy [J0]')
legend('location','southeast')
title('FS v v vs. max Jy')

%% n
%Plot n
figure; set(gcf,'color','w');



plot(FSv12.n,'displayname','1.2 SWMa'); hold on
plot(FSv16.n,'displayname','1.6 SWMa');
plot(FSv20.n,'displayname','2.0 SWMa');
plot(FSv24.n,'displayname','2.4 SWMa');
plot(FSv28.n,'displayname','2.8 SWMa');

xlim([100 300])
box on; grid on
xlabel('z [\lambda_i]')
ylabel('n [n_0]')
legend
title('n for different FS v')
%% Density Ratio vs KE SW
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(0.06,sum(fs9.ke_cold(fs6.maxJxTime,:)),300,'filled','displayName','6%'); hold on
scatter(0.075,sum(fs75.ke_cold(fs75.maxJxTime,:)),300,'filled','displayName','7.5%'); hold on
scatter(0.09,sum(fs9.ke_cold(fs9.maxJxTime,:)),300,'filled','displayName','9%'); hold on
scatter(0.105,sum(fs105.ke_cold(fs105.maxJxTime,:)),300,'filled','displayName','10.5%'); hold on
scatter(0.12,sum(fs12.ke_cold(fs12.axJxTime,:)),300,'kp','filled','displayName','12%'); hold on
scatter(0.135,sum(fs135.ke_cold(fs135.maxJxTime,:)),300,'kp','filled','displayName','13.5%'); hold on
scatter(0.15,sum(fs15.ke_cold(fs15.maxJxTime,:)),300,'filled','displayName','15%'); hold on
scatter(0.165,sum(fs12.ke_cold(fs165.maxJxTime,:)),300,'kp','filled','displayName','16.5%'); hold on
scatter(0.18,sum(fs18.ke_cold(fs18maxJxTime,:)),300,'filled','displayName','18%'); hold on
% scatter(peakN_30d,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
% scatter(peakN_60d,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
% scatter(peakN_120d,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
% scatter(peakN_150d,expSpeed_150d,300,'s','filled','displayName','150°'); hold on

box on; grid on
xlabel('n_{fs} [n_0]')
ylabel('SW KE [ kg/(ms^2)]')
legend('location','southeast')
title('n_{fs} Density vs. SW KE')
%% Density Ratio vs KE SW
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
plot((fs6.maxUz(2:end)),'displayName','6%'); hold on
plot((fs75.maxUz(2:end)),'displayName','7.5%'); hold on
plot((fs9.maxUz(2:end)),'displayName','9%'); hold on
plot((fs105.maxUz(2:end)),'displayName','10.5%'); hold on
plot((fs12.maxUz(2:end)),'displayName','12%'); hold on
plot((fs135.maxUz(2:end)),'displayName','13.5%'); hold on
plot((fs15.maxUz(2:end)),'displayName','15%'); hold on
plot((fs165.maxUz(2:end)),'displayName','16.5%'); hold on
plot((fs18.ke_cold(2:end)),'displayName','18%'); hold on

box on; grid on
xlabel('n_{fs} [n_0]')
ylabel('SW Uz [ km/s]')
legend('location','southeast')
title('n_{fs} Density vs. SW Uz')
%% Density Ratio vs DELTA KE SW
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
plot((fs6.ke_cold(2:end)-fs6.ke_cold(1:end-1))./0.5,'displayName','6%'); hold on
plot((fs75.ke_cold(2:end)-fs75.ke_cold(1:end-1))./0.5,'displayName','7.5%'); hold on
plot((fs9.ke_cold(2:end)-fs9.ke_cold(1:end-1))./0.5,'displayName','9%'); hold on
plot((fs105.ke_cold(2:end)-fs105.ke_cold(1:end-1))./0.5,'displayName','10.5%'); hold on
plot((fs12.ke_cold(2:end)-fs12.ke_cold(1:end-1))./0.5,'displayName','12%'); hold on
plot((fs135.ke_cold(2:end)-fs135.ke_cold(1:end-1))./0.5,'displayName','13.5%'); hold on
plot((fs15.ke_cold(2:end)-fs15.ke_cold(1:end-1))./0.5,'displayName','15%'); hold on
plot((fs165.ke_cold(2:end)-fs165.ke_cold(1:end-1))./0.5,'displayName','16.5%'); hold on
plot((fs18.ke_cold(2:end)-fs18.ke_cold(1:end-1))./0.5,'displayName','18%'); hold on



plo(0.06,sum(fs9.ke_cold(fs6.maxJxTime,:)),300,'filled','displayName','6%'); hold on
scatter(0.075,sum(fs75.ke_cold(fs75.maxJxTime,:)),300,'filled','displayName','7.5%'); hold on
scatter(0.09,sum(fs9.ke_cold(fs9.maxJxTime,:)),300,'filled','displayName','9%'); hold on
scatter(0.105,sum(fs105.ke_cold_105fs(fs105.maxJxTime,:)),300,'filled','displayName','10.5%'); hold on
scatter(0.12,sum(fs12.ke_cold(fs12.axJxTime,:)),300,'kp','filled','displayName','12%'); hold on
scatter(0.135,sum(fs135.ke_cold(fs135.maxJxTime,:)),300,'kp','filled','displayName','13.5%'); hold on
scatter(0.15,sum(fs15.ke_cold(fs15.maxJxTime,:)),300,'filled','displayName','15%'); hold on
scatter(0.165,sum(fs12.ke_cold(fs165.maxJxTime,:)),300,'kp','filled','displayName','16.5%'); hold on
scatter(0.18,sum(fs18.ke_cold(fs18maxJxTime,:)),300,'filled','displayName','18%'); hold on
% scatter(peakN_30d,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
% scatter(peakN_60d,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
% scatter(peakN_120d,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
% scatter(peakN_150d,expSpeed_150d,300,'s','filled','displayName','150°'); hold on

box on; grid on
xlabel('n_{fs} [n_0]')
ylabel('SW KE [ kg/(ms^2)]')
legend('location','southeast')
title('n_{fs} Density vs. SW KE')
%% Density Ratio vs SW JdotE
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(0.06,abs(sum(fs6.JswdotE(1:fs6.maxJxTime,:),'all')),300,'filled','displayName','6%'); hold on
scatter(0.075,abs(sum(fs75.JswdotE(1:fs75.maxJxTime,:),'all')),300,'filled','displayName','7.5%'); hold on
scatter(0.09,abs(sum(fs9.JswdotE(1:fs9.maxJxTime,:),'all')),300,'filled','displayName','9%'); hold on
scatter(0.105,abs(sum(fs105.JswdotE(1:fs105.maxJxTime,:),'all')),300,'filled','displayName','10.5%'); hold on
scatter(0.12,abs(sum(fs12.JswdotE(1:fs12.maxJxTime,:),'all')),300,'kp','filled','displayName','12%'); hold on
scatter(0.135,abs(sum(fs135.JswdotE(1:fs135.maxJxTime,:),'all')),300,'filled','displayName','13.5%'); hold on
scatter(0.15,abs(sum(fs15.JswdotE(1:fs15.maxJxTime,:),'all')),300,'filled','displayName','15%'); hold on
scatter(0.165,abs(sum(fs165.JswdotE_(1:fs165.maxJxTime,:),'all')),300,'filled','displayName','16.5%'); hold on
scatter(0.18,abs(sum(fs18.JswdotE(1:fs18.maxJxTime,:),'all')),300,'filled','displayName','18%'); hold on
% scatter(peakN_30d,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
% scatter(peakN_60d,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
% scatter(peakN_120d,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
% scatter(peakN_150d,expSpeed_150d,300,'s','filled','displayName','150°'); hold on

box on; grid on
xlabel('n_{fs} [n_0]')
ylabel('SW JdotE [ kg/(ms^2)]')
legend('location','southeast')
title('n_{fs} Density vs. SW JdotE')
%% Density Ratio vs FS JdotE
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(0.06,abs(sum(fs6.JfsdotE(1:fs6.maxJxTime,:),'all')),300,'filled','displayName','6%'); hold on
scatter(0.075,abs(sum(fs75.JfsdotE(1:fs75.maxJxTime,:),'all')),300,'filled','displayName','7.5%'); hold on
scatter(0.09,abs(sum(fs9.JfsdotE(1:fs9.maxJxTime,:),'all')),300,'filled','displayName','9%'); hold on
scatter(0.105,abs(sum(fs105.JfsdotE(1:fs105.maxJxTime,:),'all')),300,'filled','displayName','10.5%'); hold on
scatter(0.12,abs(sum(fs12.JfsdotE(1:fs12.maxJxTime,:),'all')),300,'kp','filled','displayName','12%'); hold on
scatter(0.135,abs(sum(fs135.JfsdotE(1:fs135.maxJxTime,:),'all')),300,'filled','displayName','13.5%'); hold on
scatter(0.15,abs(sum(fs15.JfsdotE(1:fs15.maxJxTime,:),'all')),300,'filled','displayName','15%'); hold on
scatter(0.165,abs(sum(fs165.JfsdotE(1:fs165.maxJxTime,:),'all')),300,'filled','displayName','16.5%'); hold on
scatter(0.18,abs(sum(fs18.JfsdotE(1:fs18.maxJxTime,:),'all')),300,'filled','displayName','18%'); hold on
% scatter(peakN_30d,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
% scatter(peakN_60d,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
% scatter(peakN_120d,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
% scatter(peakN_150d,expSpeed_150d,300,'s','filled','displayName','150°'); hold on

box on; grid on
xlabel('n_{fs} [n_0]')
ylabel('FS JdotE [ kg/(ms^2)]')
legend('location','southeast')
title('n_{fs} Density vs. FS JdotE')
%% Density Ratio vs Exp. Speed
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(0.06,fs6.expSpeed,300,'filled','displayName','6%'); hold on
scatter(0.075,fs75.expSpeed,300,'filled','displayName','7.5%'); hold on
scatter(0.09,fs9.expSpeed,300,'filled','displayName','9%'); hold on
scatter(0.105,fs105.expSpeed,300,'filled','displayName','10.5%'); hold on
scatter(0.12,fs12.expSpeed,300,'kp','filled','displayName','12%'); hold on
scatter(0.135,fs135.expSpeed,300,'filled','displayName','13.5%'); hold on
scatter(0.15,fs15.expSpeed,300,'filled','displayName','15%'); hold on
scatter(0.165,fs165.xpSpeed,300,'filled','displayName','16.5%'); hold on
scatter(0.18,fs18.expSpeed,300,'filled','displayName','18%'); hold on
% scatter(peakN_30d,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
% scatter(peakN_60d,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
% scatter(peakN_120d,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
% scatter(peakN_150d,expSpeed_150d,300,'s','filled','displayName','150°'); hold on

box on; grid on
xlabel('n_{fs} [n_0]')
ylabel('Expansion Speed [ \lambda_i/\Omega_i]')
legend('location','southeast')
title('n_{fs} Density vs. Expansion Speed')
%% Density Ratio vs Ex
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(0.06,fs6.maxEx,300,'filled','displayName','6%'); hold on
scatter(0.075,fs75.maxEx,300,'filled','displayName','7.5%'); hold on
scatter(0.09,fs9.maxEx,300,'filled','displayName','9%'); hold on
scatter(0.105,fs105.maxEx,300,'filled','displayName','10.5%'); hold on
scatter(0.12,fs12.maxEx,300,'kp','filled','displayName','12%'); hold on
scatter(0.135,fs135.maxEx,300,'filled','displayName','13.5%'); hold on
scatter(0.15,fs15.maxEx,300,'filled','displayName','15%'); hold on
scatter(0.165,fs165.maxEx,300,'filled','displayName','16.5%'); hold on
scatter(0.18,fs18.maxEx,300,'filled','displayName','18%'); hold on
% scatter(30,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
% scatter(60,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
% scatter(90,expSpeed_90d,300,'s','filled','displayName','90°'); hold on
% scatter(120,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
% scatter(150,expSpeed_150d,300,'s','filled','displayName','150°'); hold on

box on; grid on
xlabel('n_{fs} [n_0]')
ylabel('Ex [E0]')
legend('location','southeast')
title('n_{fs} Density vs. Ex')
%% Density Ratio vs Ey
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(0.06,fs6.maxEy,300,'filled','displayName','6%'); hold on
scatter(0.075,fs75.maxEy,300,'filled','displayName','7.5%'); hold on
scatter(0.09,fs9.maxEy,300,'filled','displayName','9%'); hold on
scatter(0.105,fs105.maxEy,300,'filled','displayName','10.5%'); hold on
scatter(0.12,fs12.maxEy,300,'kp','filled','displayName','12%'); hold on
scatter(0.135,fs135.maxEy,300,'filled','displayName','13.5%'); hold on
scatter(0.15,fs15.maxEy,300,'filled','displayName','15%'); hold on
scatter(0.165,fs165.maxEy,300,'filled','displayName','16.5%'); hold on
scatter(0.18,fs18.maxEy,300,'filled','displayName','18%'); hold on
% scatter(peakN_30d,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
% scatter(peakN_60d,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
% scatter(peakN_120d,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
% scatter(peakN_150d,expSpeed_150d,300,'s','filled','displayName','150°'); hold on

box on; grid on
xlabel('n_{fs} [n_0]')
ylabel('Ey [E0]')
legend('location','southeast')
title('n_{fs} Density vs. Ey')
%% Density Ratio vs Jx
%Plot speed of boundary vs density peak, label each point with parameter
scatter(0.06,fs6.maxJx,300,'filled','displayName','6%'); hold on
scatter(0.075,fs75.maxJx,300,'filled','displayName','7.5%'); hold on
scatter(0.09,fs9.maxJx,300,'filled','displayName','9%'); hold on
scatter(0.105,fs105.maxJx,300,'filled','displayName','10.5%'); hold on
scatter(0.12,fs12.maxJx,300,'kp','filled','displayName','12%'); hold on
scatter(0.135,fs135.maxJx,300,'filled','displayName','13.5%'); hold on
scatter(0.15,fs15.maxJx,300,'filled','displayName','15%'); hold on
scatter(0.165,fs165.maxJx,300,'filled','displayName','16.5%'); hold on
scatter(0.18,fs18.maxJx,300,'filled','displayName','18%'); hold on
% scatter(peakN_30d,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
% scatter(peakN_60d,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
% scatter(peakN_120d,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
% scatter(peakN_150d,expSpeed_150d,300,'s','filled','displayName','150°'); hold on

box on; grid on
xlabel('n_{fs} [n_0]')
ylabel('Jx [J0]')
legend('location','southeast')
title('n_{fs} Density vs. max Jx')
%% Density Ratio vs deltaJx
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(0.06,fs6.maxdeltaJx,300,'filled','displayName','6%'); hold on
scatter(0.075,fs75.maxdeltaJx,300,'filled','displayName','7.5%'); hold on
scatter(0.09,fs9.maxdeltaJx,300,'filled','displayName','9%'); hold on
scatter(0.105,fs105.maxdeltaJx,300,'filled','displayName','10.5%'); hold on
scatter(0.12,fs12.maxdeltaJx,300,'kp','filled','displayName','12%'); hold on
scatter(0.135,fs135.maxdeltaJx,300,'filled','displayName','13.5%'); hold on
scatter(0.15,fs15.maxdeltaJx,300,'filled','displayName','15%'); hold on
scatter(0.165,fs165.maxdeltaJx,300,'filled','displayName','16.5%'); hold on
scatter(0.18,fs18.maxdeltaJx,300,'filled','displayName','18%'); hold on% scatter(peakN_30d,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
% scatter(peakN_60d,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
% scatter(peakN_90d,expSpeed_90d,300,'s','filled','displayName','90°'); hold on
% scatter(peakN_120d,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
% scatter(peakN_150d,expSpeed_150d,300,'s','filled','displayName','150°'); hold on

box on; grid on
xlabel('n_{fs} [n_0]')
ylabel('\delta max Jx/J0')
legend('location','southeast')
title('n_{fs} Density vs. \delta max Jx')
%% Density Ratio vs Jy
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(0.06,fs6.maxJy,300,'filled','displayName','6%'); hold on
scatter(0.075,fs75.maxEJy,300,'filled','displayName','7.5%'); hold on
scatter(0.09,fs9.maxJy,300,'filled','displayName','9%'); hold on
scatter(0.105,fs105.maxJy,300,'filled','displayName','10.5%'); hold on
scatter(0.12,fs12.maxJy,300,'kp','filled','displayName','12%'); hold on
scatter(0.135,fs135.maxJy,300,'filled','displayName','13.5%'); hold on
scatter(0.15,fs15.maxJy,300,'filled','displayName','15%'); hold on
scatter(0.165,fs165.maxJy,300,'filled','displayName','16.5%'); hold on
scatter(0.18,fs18.maxJy,300,'filled','displayName','18%'); hold on
% scatter(peakN_30d,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
% scatter(peakN_60d,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
% scatter(peakN_120d,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
% scatter(peakN_150d,expSpeed_150d,300,'s','filled','displayName','150°'); hold on

box on; grid on
xlabel('n_{fs} [n_0]')
ylabel('Jy [J0]')
legend('location','southeast')
title('n_{fs} Density vs. Jy')
%% Density Ratio vs delta Jy
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(0.06,fs6.maxdeltaJy,300,'filled','displayName','6%'); hold on
scatter(0.075,fs75.maxdeltaJy,300,'filled','displayName','7.5%'); hold on
scatter(0.09,fs9.maxdeltaJy,300,'filled','displayName','9%'); hold on
scatter(0.105,fs105.maxdeltaJy,300,'filled','displayName','10.5%'); hold on
scatter(0.12,fs12.maxdeltaJy,300,'kp','filled','displayName','12%'); hold on
scatter(0.135,fs135.maxdeltaJy,300,'filled','displayName','13.5%'); hold on
scatter(0.15,fs15.maxdeltaJy,300,'filled','displayName','15%'); hold on
scatter(0.165,fs165.maxdeltaJy,300,'filled','displayName','16.5%'); hold on
scatter(0.18,fs18.maxdeltaJy,300,'filled','displayName','18%'); hold on
% scatter(peakN_30d,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
% scatter(peakN_60d,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
% scatter(peakN_120d,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
% scatter(peakN_150d,expSpeed_150d,300,'s','filled','displayName','150°'); hold on

box on; grid on
xlabel('n_{fs} [n_0]')
ylabel('\delta max Jy/J0')
legend('location','southeast')
title('n_{fs} Density vs. \delta max Jy')
%% Density Ratio vs delta Jx dot delta Ex
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(0.06,abs(sum(fs6.JfsdotEx(1:fs6.maxJxTime,:),'all')),300,'filled','displayName','6%'); hold on
scatter(0.075,abs(sum(fs75.JfsdotEx(1:fs75.maxJxTime,:),'all')),300,'filled','displayName','7.5%'); hold on
scatter(0.09,abs(sum(fs9.JfsdotEx(1:fs9.maxJxTime,:),'all')),300,'filled','displayName','9%'); hold on
scatter(0.105,abs(sum(fs105.JfsdotEx(1:fs105.maxJxTime,:),'all')),300,'filled','displayName','10.5%'); hold on
scatter(0.12,abs(sum(fs12.JfsdotEx(1:fs12.maxJxTime,:),'all')),300,'kp','filled','displayName','12%'); hold on
scatter(0.135,abs(sum(fs135.JfsdotEx(1:fs135.maxJxTime,:),'all')),300,'filled','displayName','13.5%'); hold on
scatter(0.15,abs(sum(fs15.JfsdotEx(1:fs15.maxJxTime,:),'all')),300,'filled','displayName','15%'); hold on
scatter(0.165,abs(sum(fs165.JfsdotEx(1:fs165.maxJxTime,:),'all')),300,'filled','displayName','16.5%'); hold on
scatter(0.18,abs(sum(fs18.JfsdotEx(1:fs18.maxJxTime,:),'all')),300,'filled','displayName','18%'); hold on

box on; grid on
xlabel('n_{fs} [n_0]')
ylabel('\delta Jx /cdot \delta Ex')
legend('location','southeast')
title('n_{fs} Density vs. \delta Jx \cdot \delta Ex')
%% Density Ratio vs delta Jy dot delta Ey
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(0.06,abs(sum(fs6.JfsdotEy(1:fs6.maxJxTime,:),'all')),300,'filled','displayName','6%'); hold on
scatter(0.075,abs(sum(fs75.JfsdotEy(1:fs75.maxJxTime,:),'all')),300,'filled','displayName','7.5%'); hold on
scatter(0.09,abs(sum(fs9.JfsdotEy(1:fs9.maxJxTime,:),'all')),300,'filled','displayName','9%'); hold on
scatter(0.105,abs(sum(fs105.JfsdotEy(1:fs105.maxJxTime,:),'all')),300,'filled','displayName','10.5%'); hold on
scatter(0.12,abs(sum(fs12.JfsdotEy(1:fs12.maxJxTime,:),'all')),300,'kp','filled','displayName','12%'); hold on
scatter(0.135,abs(sum(fs135.JfsdotEy(1:fs135.maxJxTime,:),'all')),300,'filled','displayName','13.5%'); hold on
scatter(0.15,abs(sum(fs15.JfsdotEy(1:fs15.maxJxTime,:),'all')),300,'filled','displayName','15%'); hold on
scatter(0.165,abs(sum(fs165.JfsdotEy(1:fs165.maxJxTime,:),'all')),300,'filled','displayName','16.5%'); hold on
scatter(0.18,abs(sum(fs18.JfsdotEy(1:fs18.maxJxTime,:),'all')),300,'filled','displayName','18%'); hold on

box on; grid on
xlabel('n_{fs} [n_0]')
ylabel('\delta Jy /cdot \delta Ey')
legend('location','southeast')
title('n_{fs} Density vs. \delta Jy \cdot \delta Ey')


%% n
%Plot n
figure; set(gcf,'color','w');
% plot(n_6fs,'displayname','6%'); hold on;
% plot(n_9fs,'displayname','9%');
% plot(n_12fs,'k','displayname','12%');
% plot(n_15fs,'displayname','15%');
% plot(n_18fs,'displayname','18%');
% plot(n_30d,'displayname','30°'); hold on
% plot(n_60d,'displayname','60°');
% plot(n_90d,'displayname','90°');
% plot(n_120d,'displayname','120°');
% plot(n_150d,'displayname','150°');


plot(n_6M,'displayname','6M'); hold on
plot(n_8M,'displayname','8M');
plot(n_10M,'displayname','10M');
plot(n_12M,'displayname','12M');
plot(n_14M,'displayname','14M');
plot(n_16M,'displayname','16M');

xlim([100 300])
box on; grid on
xlabel('z [\lambda_i]')
ylabel('n [n_0]')
legend
title('n for different n_{fs}')


function [Run] = getCompressionProperties(outputFolder,dt,outputSteps,time,xcut,nfs_setup,swSpeed_setup,fsSpeed_setup,fsThermal_setup,shear_setup)



%Load the data for the Run
timeFrame = time/(dt*outputSteps);
outputDirectory = strcat('/import/c1/DAYSIDE/atvu/Run',outputFolder);
RunNumber= outputFolder;

[qx,qy,qz,nt,nx,ny,nz,va] = read_Coordinates(outputDirectory);
va = 48.95;
[X,Z,X2,Z2] = scale_Data(qx,qz);
q=1.6e-19;
moverq=1.0378e-8;
lambda_i = (qx(2)-qx(1));
E0 = (5e-9)/moverq* va;
J0 = (5e-9)/ ((lambda_i));
nv0 = (5e-9)/((4*pi*10^-7*(lambda_i)*10^3));
B0 = 5e-9/moverq;
kb = 8.617*10^-5;
timeperFrameinSeconds = 25.* 4.15125e-2;
%Bdata
[Bdata] = read_Plasma('B',timeFrame,nx,ny,nz,outputDirectory);
[Bxdata_interp0] = (interpolate_Data(Bdata,1,1,nx,nz,X,Z,X2,Z2));
[Bydata_interp0] = ((interpolate_Data(Bdata,2,1,nx,nz,X,Z,X2,Z2)));
[Bzdata_interp0] = ((interpolate_Data(Bdata,3,1,nx,nz,X,Z,X2,Z2)));
%Ndata
[ndata] = read_Plasma('n',timeFrame,nx,ny,nz,outputDirectory);
%Edata
[Edata] = read_Plasma('E',timeFrame,nx,ny,nz,outputDirectory);
% Edata = face_to_center(Edata);
%nswdata
[n_cold_data] = read_Plasma('n_cold',timeFrame,nx,ny,nz,outputDirectory);
[up_cold_data] = read_Plasma('up_cold',timeFrame,nx,ny,nz,outputDirectory);
[temp_cold_data] = read_Plasma('temp_cold',timeFrame,nx,ny,nz,outputDirectory);
[temp_mixed_data] = read_Plasma('temp_mixed',timeFrame,nx,ny,nz,outputDirectory);

%Nfsdata
[n_mixed_data] = read_Plasma('n_mixed',timeFrame,nx,ny,nz,outputDirectory);
[up_mixed_data] = read_Plasma('up_mixed',timeFrame,nx,ny,nz,outputDirectory);
[uedata] = read_Plasma('ue',timeFrame,nx,ny,nz,outputDirectory);

[ndata_interp] = interpolate_Data(ndata,1,timeFrame,nx,nz,X,Z,X2,Z2);
[ndata_interp0] = interpolate_Data(ndata,1,1,nx,nz,X,Z,X2,Z2);
n0 = mean(ndata_interp0(floor(nz-nz/4):nz-1,2:end-1),'all');
n0 = imgaussfilt(n0,1);

[temp_cold_data_interp0] = (interpolate_Data(temp_cold_data,1,1,nx,nz,X,Z,X2,Z2));
t0 = mean(temp_cold_data_interp0(floor(nz-nz/4):nz-1,2:end-1),'all');
t0 = imgaussfilt(t0,1);

    
Btcdata = edge_to_center(Bdata);
uexBdata = crossf2(uedata,Btcdata);

[Exdata_interp0] = ((interpolate_Data(Edata,1,1,nx,nz,X,Z,X2,Z2)));
[Eydata_interp0] = ((interpolate_Data(Edata,2,1,nx,nz,X,Z,X2,Z2)));
[Ezdata_interp0] = ((interpolate_Data(Edata,3,1,nx,nz,X,Z,X2,Z2)));


uexBx0 = interpolate_Data(uexBdata,1,1,nx,nz,X,Z,X2,Z2);
uexBy0 = interpolate_Data(uexBdata,2,1,nx,nz,X,Z,X2,Z2);
uexBz0 = interpolate_Data(uexBdata,3,1,nx,nz,X,Z,X2,Z2);

Jperpx_mixed_previous = 0;
Jperpy_mixed_previous = 0;
maxJxTime = 0;
maxdeltaJx = 0;
maxdeltaJy = 0;
peakN=[];
SWTEmax = [];
maxUz = 0;
minUx = 0;
expSpeed = [];
outerRightEdge = [];
outerLeftEdge = [];
boundarySpeed = [];
uz=[];
Width = [];
Area = [];
Uzatmax = [];
timeStart = 2;
% EnergyFig = figure;
%  set(gcf,'color','w');
 
 %Calculate quantities at each time
for i=1:timeFrame
    [Bxdata_interp] = (interpolate_Data(Bdata,1,i,nx,nz,X,Z,X2,Z2));
    [Bydata_interp] = ((interpolate_Data(Bdata,2,i,nx,nz,X,Z,X2,Z2)));
    [Bzdata_interp] = ((interpolate_Data(Bdata,3,i,nx,nz,X,Z,X2,Z2)));
    Bmag = ( (Bxdata_interp).^2 + (Bydata_interp).^2 + (Bzdata_interp).^2 ).^(1/2)/B0 - ( (Bxdata_interp0).^2 + (Bydata_interp0).^2 + (Bzdata_interp0).^2 ).^(1/2)/B0;
    
    
    [Exdata_interp] = ((interpolate_Data(Edata,1,i,nx,nz,X,Z,X2,Z2)))/E0;
    [Eydata_interp] = ((interpolate_Data(Edata,2,i,nx,nz,X,Z,X2,Z2)))/E0;
    [Ezdata_interp] = ((interpolate_Data(Edata,3,i,nx,nz,X,Z,X2,Z2)))/E0;
    
    [Exdata_interp0] = ((interpolate_Data(Edata,1,1,nx,nz,X,Z,X2,Z2)))/E0;
    [Eydata_interp0] = ((interpolate_Data(Edata,2,1,nx,nz,X,Z,X2,Z2)))/E0;
    [Ezdata_interp0] = ((interpolate_Data(Edata,3,1,nx,nz,X,Z,X2,Z2)))/E0;
    
    uexBx = interpolate_Data(uexBdata,1,i,nx,nz,X,Z,X2,Z2);
    uexBy = interpolate_Data(uexBdata,2,i,nx,nz,X,Z,X2,Z2);
    uexBz = interpolate_Data(uexBdata,3,i,nx,nz,X,Z,X2,Z2);
    
    [n_mixed_data_interp] = (interpolate_Data(n_mixed_data,1,i,nx,nz,X,Z,X2,Z2));
    upx_mixed_data_interp = (interpolate_Data(up_mixed_data,1,i,nx,nz,X,Z,X2,Z2));
    upy_mixed_data_interp = (interpolate_Data(up_mixed_data,2,i,nx,nz,X,Z,X2,Z2));
    upz_mixed_data_interp = (interpolate_Data(up_mixed_data,3,i,nx,nz,X,Z,X2,Z2));
    
    [uex_tot] = -(interpolate_Data(uedata,1,i,nx,nz,X,Z,X2,Z2));
    [uey_tot] = -(interpolate_Data(uedata,2,i,nx,nz,X,Z,X2,Z2));
    [uez_tot] = -(interpolate_Data(uedata,3,i,nx,nz,X,Z,X2,Z2));
    
    [uex_tot0] = -(interpolate_Data(uedata,1,1,nx,nz,X,Z,X2,Z2));
    [uey_tot0] = -(interpolate_Data(uedata,2,1,nx,nz,X,Z,X2,Z2));
    [uez_tot0] = -(interpolate_Data(uedata,3,1,nx,nz,X,Z,X2,Z2));
    [temp_cold_data_interp] = (interpolate_Data(temp_cold_data,1,i,nx,nz,X,Z,X2,Z2));
    [temp_mixed_data_interp] = (interpolate_Data(temp_mixed_data,1,i,nx,nz,X,Z,X2,Z2));
    %Mixed FS Momentum
    [ppx_mixed_data_interp] = n_mixed_data_interp.*(upx_mixed_data_interp);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    [ppy_mixed_data_interp] = n_mixed_data_interp.*(upy_mixed_data_interp);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    [ppz_mixed_data_interp] = n_mixed_data_interp.*(upz_mixed_data_interp);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    
    [mixed_parax,mixed_paray,mixed_paraz,mixed_perpx,mixed_perpy,mixed_perpz]...
        = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,ppx_mixed_data_interp,ppy_mixed_data_interp,ppz_mixed_data_interp);
    
    delta_mixed_perpx = (mixed_perpx).*10^3 * 10^-9.*q./nv0;
    delta_mixed_perpy = (mixed_perpy).*10^3 * 10^-9.*q./nv0;
    delta_mixed_perpz = (mixed_perpz).*10^3 * 10^-9.*q./nv0;
    
   
    %Mixed Electron Momentum
    pex_mixed = n_mixed_data_interp .* uex_tot;
    pey_mixed = n_mixed_data_interp .* uey_tot;
    pez_mixed = n_mixed_data_interp .* uez_tot;
    
    [electron_parax_mixed,electron_paray_mixed,electron_paraz_mixed,electron_perpx_mixed,electron_perpy_mixed,electron_perpz_mixed]...
        = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_mixed,pey_mixed,pez_mixed);
    
    delta_electron_perpx_mixed = (electron_perpx_mixed).*10^3 * 10^-9.*-q./nv0;
    delta_electron_perpy_mixed = (electron_perpy_mixed).*10^3 * 10^-9.*-q./nv0;
    delta_electron_perpz_mixed = (electron_perpz_mixed).*10^3 * 10^-9.*-q./nv0;
    
    
    
    
    Jperpx_mixed = delta_mixed_perpx(2:end-1,2:end-1) + delta_electron_perpx_mixed(2:end-1,2:end-1);
    Jperpy_mixed = delta_mixed_perpy(2:end-1,2:end-1) + delta_electron_perpy_mixed(2:end-1,2:end-1);
    

    if i > timeStart

        del_Jperpx = ( max(abs(Jperpx_mixed(:,xcut))) - max(abs(Jperpx_mixed_previous(:,xcut))) );% ./ (( max(abs(Jperpx_mixed(:,xcut))) + max(abs(Jperpx_mixed_previous(:,xcut))) )./2);
        del_Jperpy = ( max(abs(Jperpy_mixed(:,xcut))) - max(abs(Jperpy_mixed_previous(:,xcut))) );% ./ (( max(abs(Jperpy_mixed(:,xcut))) + max(abs(Jperpy_mixed_previous(:,xcut))) )./2);

        if del_Jperpx  > maxdeltaJx
            maxdeltaJx =del_Jperpx;
            maxJxTime = i;
        end
        
        if del_Jperpy  > maxdeltaJy
            maxdeltaJy = del_Jperpy;
        end
%         scatter(i,del_Jperpx); hold on
    end
        Jperpx_mixed_previous = Jperpx_mixed;
        Jperpy_mixed_previous = Jperpy_mixed;
    
    if i ==timeFrame
        maxJx = max(abs(Jperpx_mixed(:,xcut)));
        maxJy = max(abs(Jperpy_mixed(:,xcut)));
    end
    
    
    %Calculate JdotE SW
    [n_cold_data_interp] = (interpolate_Data(n_cold_data,1,i,nx,nz,X,Z,X2,Z2));
    [n_cold_data_interp0] = (interpolate_Data(n_cold_data,1,1,nx,nz,X,Z,X2,Z2));

    
    TE_cold(i,:) = n_cold_data_interp(:,xcut).*temp_cold_data_interp(:,xcut).*10^-9.*q -...
        q.*n_cold_data_interp0(:,xcut).*temp_cold_data_interp0(:,xcut).*10^-9 ;
    
    
    T_cold(i,:) = temp_cold_data_interp(:,xcut)./t0 - temp_cold_data_interp0(:,xcut)./t0;
    upx_cold_data_interp = (interpolate_Data(up_cold_data,1,i,nx,nz,X,Z,X2,Z2));
    upy_cold_data_interp = (interpolate_Data(up_cold_data,2,i,nx,nz,X,Z,X2,Z2));
    upz_cold_data_interp = (interpolate_Data(up_cold_data,3,i,nx,nz,X,Z,X2,Z2));
    avgvz=mean(upz_cold_data_interp(:,xcut));
    upx_cold_data_interp0 = (interpolate_Data(up_cold_data,1,1,nx,nz,X,Z,X2,Z2));
    upy_cold_data_interp0 = (interpolate_Data(up_cold_data,2,1,nx,nz,X,Z,X2,Z2));
    upz_cold_data_interp0 = (interpolate_Data(up_cold_data,3,1,nx,nz,X,Z,X2,Z2));
    
    Eswx0=Exdata_interp0 + (upy_cold_data_interp0.*Bzdata_interp0-upz_cold_data_interp0.*Bydata_interp0);
    Eswy0=Eydata_interp0 + (upz_cold_data_interp0.*Bxdata_interp0-upx_cold_data_interp0.*Bzdata_interp0);
    Eswz0=Ezdata_interp0 + (upx_cold_data_interp0.*Bydata_interp0-upy_cold_data_interp0.*Bxdata_interp0);

    Eswx=Exdata_interp + (upy_cold_data_interp0.*Bzdata_interp-upz_cold_data_interp0.*Bydata_interp)/(va*B0);%-Eswx0;
    Eswy=Eydata_interp + (upz_cold_data_interp0.*Bxdata_interp-upx_cold_data_interp0.*Bzdata_interp)/(va*B0);%-Eswy0;
    Eswz=Ezdata_interp + (upx_cold_data_interp0.*Bydata_interp-upy_cold_data_interp0.*Bxdata_interp)/(va*B0);%-Eswz0;
    
%     Eswx=Exdata_interp + (0.*Bzdata_interp-0.*Bydata_interp)/(va*B0);%-Eswx0;
%     Eswy=Eydata_interp + (0.*Bxdata_interp-swSpeed_setup*va.*0)/(va*B0);%-Eswy0;
%     Eswz=Ezdata_interp + (swSpeed_setup*va.*Bydata_interp-0.*Bxdata_interp)/(va*B0);%-Eswz0;
    
    
    pex_cold = n_cold_data_interp .* uex_tot;
    pex_cold0 = n_cold_data_interp0 .* uex_tot0;
    pey_cold = n_cold_data_interp .* uey_tot;
    pey_cold0= n_cold_data_interp0 .* uey_tot0;
    pez_cold = n_cold_data_interp .* uez_tot;
    pez_cold0 = n_cold_data_interp0 .* uez_tot0;
    
    [electron_parax_cold,electron_paray_cold,electron_paraz_cold,electron_perpx_cold,electron_perpy_cold,electron_perpz_cold]...
        = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_cold,pey_cold,pez_cold);
    
    [electron_parax_cold,electron_paray_cold,electron_paraz_cold,electron_perpx_cold0,electron_perpy_cold0,electron_perpz_cold0]...
        = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_cold0,pey_cold0,pez_cold0);
    
    
    [ppx_cold_data_interp] = (n_cold_data_interp.*(upx_cold_data_interp)) ;
    ppx_cold_data_interp0 = n_cold_data_interp0.*(upx_cold_data_interp0);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    [ppy_cold_data_interp] = (n_cold_data_interp.*(upy_cold_data_interp));
    ppy_cold_data_interp0 = n_cold_data_interp0.*(upy_cold_data_interp0);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    [ppz_cold_data_interp] = (n_cold_data_interp.*(upz_cold_data_interp));%.*((n_mixed_data_interp./n0 > nFS_threshold));
    ppz_cold_data_interp0 = n_cold_data_interp0.*(upz_cold_data_interp0);
    
    [cold_parax,cold_paray,cold_paraz,cold_perpx0,cold_perpy0,cold_perpz0]...
        = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,ppx_cold_data_interp0,ppy_cold_data_interp0,ppz_cold_data_interp0);
    
    
    [cold_parax,cold_paray,cold_paraz,cold_perpx,cold_perpy,cold_perpz]...
        = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,ppx_cold_data_interp,ppy_cold_data_interp,ppz_cold_data_interp);

    %Non SW frame E
%     JswdotEx(i,:) = ((ppx_cold_data_interp(:,xcut)-pex_cold(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Exdata_interp(:,xcut) - Exdata_interp0(:,xcut))...
%         ./(10^3 * 10^-9 * q ).* (nv0) .* (E0)       .* q * (1e-9) .*1000 * 0.5 * moverq*1000;
%     JswdotEy(i,:) = ((ppy_cold_data_interp(:,xcut)-pey_cold(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Eydata_interp(:,xcut) - Eydata_interp0(:,xcut))...
%         ./(10^3 * 10^-9 * q ).* (nv0) .* (E0)       .* q * (1e-9) .*1000 * 0.5 * moverq*1000;
%     
%     
%     
%     JswdotE(i,:) = ((ppx_cold_data_interp(:,xcut)-pex_cold(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Exdata_interp(:,xcut) - Exdata_interp0(:,xcut))+ ...
%                    ((ppy_cold_data_interp(:,xcut)-pey_cold(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Eydata_interp(:,xcut) - Eydata_interp0(:,xcut))+ ...
%                    ((ppz_cold_data_interp(:,xcut)-pez_cold(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Ezdata_interp(:,xcut) - Ezdata_interp0(:,xcut));           
%SW Frame E
JswdotEx(i,:) = ((ppx_cold_data_interp(:,xcut)-pex_cold(:,xcut)).*10^3 * 10^-9.*q).*(Eswx(:,xcut).* (E0) * moverq*1000)...
            *timeperFrameinSeconds;% 0.5;
JswdotEy(i,:) = ((ppy_cold_data_interp(:,xcut)-pey_cold(:,xcut)).*10^3 * 10^-9.*q).*(Eswy(:,xcut).* (E0) * moverq*1000)...
          *timeperFrameinSeconds;% 0.5;



JswdotE(i,:) = ((ppx_cold_data_interp(:,xcut)-pex_cold(:,xcut)).*10^3 * 10^-9.*q).*(Eswx(:,xcut).*E0.*moverq.*1000)+ ...
    ((ppy_cold_data_interp(:,xcut)-pey_cold(:,xcut)).*10^3 * 10^-9.*q).*(Eswy(:,xcut).*E0.*moverq.*1000)+ ...
    ((ppz_cold_data_interp(:,xcut)-pez_cold(:,xcut)).*10^3 * 10^-9.*q).*(Eswz(:,xcut).*E0.*moverq.*1000);
        
    
%     JswdotE(i,:) = ((cold_perpx(:,xcut)-cold_perpx0(:,xcut)+electron_perpx_cold(:,xcut)-electron_perpx_cold0(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Exdata_interp(:,xcut) - Exdata_interp0(:,xcut))+ ...
%                    ((cold_perpy(:,xcut)-cold_perpy0(:,xcut)+electron_perpy_cold(:,xcut)-electron_perpy_cold0(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Eydata_interp(:,xcut) - Eydata_interp0(:,xcut))+ ...
%                    ((cold_perpz(:,xcut)-cold_perpz0(:,xcut)+electron_perpz_cold(:,xcut)-electron_perpz_cold0(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Ezdata_interp(:,xcut) - Ezdata_interp0(:,xcut));
               
    JswdotE(i,:) = JswdotE(i,:) * timeperFrameinSeconds;%0.5;
    
    %Calculate nsw*vz^2
    %Keep track of each time's value
    
    %NonSwFrame
    ke_cold(i,:) = n_cold_data_interp(:,xcut).*upz_cold_data_interp(:,xcut).*upz_cold_data_interp(:,xcut);
    %SwFrame
    ke_cold(i,:) = n_cold_data_interp(:,xcut).*(...
        (upx_cold_data_interp(:,xcut) - upx_cold_data_interp0(:,xcut)).*(upx_cold_data_interp(:,xcut) - upx_cold_data_interp0(:,xcut)) + ...
        (upy_cold_data_interp(:,xcut) - upy_cold_data_interp0(:,xcut)).*(upy_cold_data_interp(:,xcut) - upy_cold_data_interp0(:,xcut)) +...
        (upz_cold_data_interp(:,xcut) - upz_cold_data_interp0(:,xcut)).*(upz_cold_data_interp(:,xcut) - upz_cold_data_interp0(:,xcut)) );
% %     ke_cold0(i,:) = n_cold_data_interp0(:,xcut).*(...
% %         (upx_cold_data_interp0(:,xcut)).^2 + ...
% %          (upy_cold_data_interp0(:,xcut)).^2 +...
% %          (upz_cold_data_interp0(:,xcut)).^2  );
%     ke_cold(i,:) = n_cold_data_interp(:,xcut).*(...
%         (upx_cold_data_interp(:,xcut)).^2 + ...
%         (upy_cold_data_interp(:,xcut)).^2 +...
%         (upz_cold_data_interp(:,xcut)).^2  );% -...
% %         n_cold_data_interp0(:,xcut).*(...
% %         (upx_cold_data_interp0(:,xcut)).^2 + ...
% %          (upy_cold_data_interp0(:,xcut)).^2 +...
% %          (upz_cold_data_interp0(:,xcut)).^2  );
%     
% 
    maxUz(i,:) = max(upz_cold_data_interp(:,xcut));
    minUx(i,:) = min(upx_cold_data_interp(:,xcut));

    ke_cold(i,:) = (ke_cold(i,:)).*(1e-9).*(0.5).*(1.67e-27).*1000^2; %units of 0.5* kg * 1/m^3 * m^2/s^2
    
    %Calculate Jfs dot E
    %Keep track of each time's value
    [ppx_mixed_data_interp] = n_mixed_data_interp.*(upx_mixed_data_interp);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    [ppy_mixed_data_interp] = n_mixed_data_interp.*(upy_mixed_data_interp);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    [ppz_mixed_data_interp] = n_mixed_data_interp.*(upz_mixed_data_interp);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    
    %Mixed Electron Momentum
    pex_mixed = n_mixed_data_interp .* uex_tot;
    pey_mixed = n_mixed_data_interp .* uey_tot;
    pez_mixed = n_mixed_data_interp .* uez_tot;
    
    %Nonsw Frame
%     JfsdotEx(i,:) = ((ppx_mixed_data_interp(:,xcut)-pex_mixed(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Exdata_interp(:,xcut) - Exdata_interp0(:,xcut))...
%         ./(10^3 * 10^-9 * q ).* (nv0) .* (E0)       .* q * (1e-9) .*1000 * 0.5 * moverq*1000;
%     JfsdotEy(i,:) = ((ppy_mixed_data_interp(:,xcut)-pey_mixed(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Eydata_interp(:,xcut) - Eydata_interp0(:,xcut))...
%         ./(10^3 * 10^-9 * q ).* (nv0) .* (E0)       .* q * (1e-9) .*1000 * 0.5 * moverq*1000;
%     
%     
%     JfsdotE(i,:) = ((ppx_mixed_data_interp(:,xcut)-pex_mixed(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Exdata_interp(:,xcut) - Exdata_interp0(:,xcut)) + ...
%                    ((ppy_mixed_data_interp(:,xcut)-pey_mixed(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Eydata_interp(:,xcut) - Eydata_interp0(:,xcut)) + ...
%                    ((ppz_mixed_data_interp(:,xcut)-pez_mixed(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Ezdata_interp(:,xcut) - Ezdata_interp0(:,xcut));
    %SW Frame
    JfsdotEx(i,:) = ((ppx_mixed_data_interp(:,xcut)-pex_mixed(:,xcut)).*10^3 * 10^-9.*q).*(Eswx(:,xcut).*E0.*moverq.*1000)...
               .*timeperFrameinSeconds;% 0.5 ;
    JfsdotEy(i,:) = ((ppy_mixed_data_interp(:,xcut)-pey_mixed(:,xcut)).*10^3 * 10^-9.*q).*(Eswy(:,xcut).*E0.*moverq.*1000)...
         .*timeperFrameinSeconds;% 0.5 ;
    
    
    
    
    JfsdotE(i,:) = ((ppx_mixed_data_interp(:,xcut)-pex_mixed(:,xcut)).*10^3 * 10^-9.*q).*(Eswx(:,xcut).*E0.*moverq.*1000) + ...
                   ((ppy_mixed_data_interp(:,xcut)-pey_mixed(:,xcut)).*10^3 * 10^-9.*q).*(Eswy(:,xcut).*E0.*moverq.*1000) + ...
                   ((ppz_mixed_data_interp(:,xcut)-pez_mixed(:,xcut)).*10^3 * 10^-9.*q).*(Eswz(:,xcut).*E0.*moverq.*1000);
%     JfsdotE(i,:) = ((mixed_perpx(:,xcut)+electron_perpx_mixed(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Exdata_interp(:,xcut) - Exdata_interp0(:,xcut)) + ...
%                    ((mixed_perpy(:,xcut)+electron_perpy_mixed(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Eydata_interp(:,xcut) - Eydata_interp0(:,xcut)) + ...
%                    ((mixed_perpz(:,xcut)+electron_perpz_mixed(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Ezdata_interp(:,xcut) - Ezdata_interp0(:,xcut));
%     
    
    
    JfsdotE(i,:) = JfsdotE(i,:)  *timeperFrameinSeconds;% 0.5;
    
    %Jfs * vxBsw
    2*50*1000*5e-9 * 0.075*5e6*30*50*1000*q*sin(45)*0.5;
    0.075*5e6*q*30*50*1000*2*50*1000*5e-9;
    0.05051*5e6*q*(-25.3951*va*1000)*63.316*1000*0.1865*10^-9;
    % KE Sw
    0.5 * 1.67e-27 * 5e6 * (2 * 50 * 1000).^2 * 2.5*va;
    
    
    [Nmax,~] = max(n_cold_data_interp(:,xcut));
   
    peakN(i,:) = Nmax;
    [Nmax,NmaxIndex] = max(n_cold_data_interp(:,xcut));
    SWTEmax(i,:) = max(TE_cold(i,:));
    Uzatmax(i) = upz_cold_data_interp(NmaxIndex,xcut);
    
    
    Ufsatmax(i) =  ( (upx_mixed_data_interp(NmaxIndex,xcut) - uex_tot(NmaxIndex,xcut)).^2 +...
        (upy_mixed_data_interp(NmaxIndex,xcut) - uey_tot(NmaxIndex,xcut)).^2 +...;
        (upz_mixed_data_interp(NmaxIndex,xcut) - uez_tot(NmaxIndex,xcut)).^2).^(1/2);
    
    Ufsmax(i) = max( (upx_mixed_data_interp(:,xcut) - uex_tot(:,xcut)).^2 +...
        (upy_mixed_data_interp(:,xcut) - uey_tot(:,xcut)).^2 +...;
        (upz_mixed_data_interp(:,xcut) - uez_tot(:,xcut)).^2).^(1/2);
%         figure; title('uz vs time for n=' + string(nfs_setup))
%         plot([1:32].*timeperFrameinSeconds,Uzatmax./va)
    %plot KE_cold of boundary at each time step
%     figure(EnergyFig)
%     hold off
%     %     yyaxis left
%     yyaxis left
%     plot(ke_cold(i,:),'b-','linewidth',1.5); hold on
%     plot(sum(JswdotE),'b--','linewidth',1.5)
%      plot(TE_cold(i,:),'b-.','linewidth',1.4);
%     %     yyaxis right
%     %     plot(JfsdotE(i,:)); %0.5 = outpuSteps * dt. deltaT
%     plot(sum(JfsdotE),'r--','linewidth',1.5)
%     title('Energy Density for ' + string(nfs_setup))
%     ylabel('kg/(m s^2)')
%     xlabel('z [\lambda_i]')
%     xlim([nz/2-50 nz/2+50])
%     grid on
%     yyaxis right
%     hold off
%     plot(Bmag(:,xcut),'linewidth',1)
%     ylabel('\DeltaB [B0]')
%     legend({'SW KE','SW \SigmaJ\cdotE\Deltat','SW \DeltaTE','FS \SigmaJ\cdotE\Deltat','\Delta|B|'})

    
    
    
%     plot(TE_cold(i,:),'linewidth',1.4);
% 
%     ylabel('\DeltaTE [kg/(m s^2)]')
%     legend({'SW KE','SW \SigmaJ\cdotE\Deltat','FS \SigmaJ\cdotE\Deltat','\DeltaTE'})
    
% expSpeed(i,:) = sqrt(nfs_setup) * sqrt(1-1/(peakN(i,:)/n0)) *...
%     ( (swSpeed_setup + fsSpeed_setup) * sind(shear_setup/2) + fsThermal_setup*cosd(shear_setup/2) );

expSpeed(i,:) = sqrt(nfs_setup) * sqrt(1-1/(peakN(i,:)/n0)) *...
    ( (swSpeed_setup + fsSpeed_setup) * sind(shear_setup/2) + fsThermal_setup );


JfsdotEsw(i,:) = timeperFrameinSeconds*n_mixed_data_interp(:,xcut)./n0.*5e6.*q.*...
       ((upx_cold_data_interp(:,xcut)+abs(upx_mixed_data_interp(:,xcut))).*1000)....
       .*(upz_cold_data_interp(:,xcut).*1000.*Bydata_interp(:,xcut)).*moverq;
%For comparing values
if i==0
    
    %JfsdotE vs SW KE
   figure; 
   title('JfsdotE vs SW KE'); 
   hold on; 
   plot(JfsdotEsw(i,:) );
   plot(ke_cold(i,:))
    yyaxis right
     hold off
     plot(Bmag(:,xcut),'k--','linewidth',1)
     ylabel('\DeltaB [B0]')
   xlim([151 249])
   legend({'J_{fs}UzBy','KE_{sw}','\DeltaB'})
   grid on
   
   %Area of JdotE vs area of SW KE
   figure;
   title('Area of JfsdotEsw vs KE sw'); hold on;
   plot(sum(JfsdotEsw,2));
   plot(sum(ke_cold,2));
   legend({'J_{fs}UzBy','KE_{sw}'},'Location','Northwest')
   
   %n and uz
   figure; title('density and uz'); hold on
   yyaxis left
   plot(n_cold_data_interp(:,xcut)./n0); 
   ylabel('[n0]')
   yyaxis right
   plot(upz_cold_data_interp(:,xcut)./va);
   ylabel('[va]')
   yyaxis left
   xlim([151 249])
   grid on
   legend({'n_{sw}','uz_{sw}'})
   
   
   %Exp Speed
   figure; title('Boundary Position'); hold on
   plot(outerRightEdge);
   ylabel('Z Pos')
    figure; title('Boundary Speed'); hold on;
    plot(boundarySpeed);
    ylabel('[km/s]')
   
   %FS Gyroradius
     fsvperp = (temp_mixed_data_interp(:,xcut).*q./(1.67e-27*1e6).*3).^(1/2);
     fsperp_gyro_initial= 1.67e-27.*(8.*va.*1000) ./...
         (1.61e-19 * ((Bxdata_interp(:,xcut).^2 + Bydata_interp(:,xcut).^2).^(1/2).*moverq)) ./ (50.925*1000);
     
     fsperp_gyro= 1.67e-27.*(fsvperp.*1000) ./...
         (1.61e-19 * ((Bxdata_interp(:,xcut).^2 + Bydata_interp(:,xcut).^2).^(1/2).*moverq)) ./ (50.925*1000);
     
     fspara_gyro= 1.67e-27.*((upx_cold_data_interp(:,xcut)+abs(upx_mixed_data_interp(:,xcut))).*1000) ./...
         (1.61e-19 * ((Bxdata_interp(:,xcut).^2 + Bydata_interp(:,xcut).^2).^(1/2).*moverq)) ./ (50.825*1000);
  
     figure; title('fs gyroradius'); hold on
     
     plot(fsperp_gyro_initial);hold on
     plot(real(fsperp_gyro));
     plot(fspara_gyro);hold on
     xlim([151 249])
     yyaxis right
     hold off
     plot(Bmag(:,xcut),'k--','linewidth',1)
     ylabel('\DeltaB [B0]')
     legend({'v_{perp,i}','v_{perp}','v_{para}','\DeltaB'})
     grid on
     
     
     %Plot Width And Area
     figure; 
     title('Boundary Width'); hold on
     plot(Width);
     ylabel('\lambda_i');
     figure; 
     title('Boundary Area'); hold on
     plot(Area./n0);
     ylabel('n0 \lambda_i')
     figure; title('n'); hold on
for i=1:4:timeFrame
    plot(n(i,:));
end
     xlim([151 249]);
     
     figure; plot(upx_mixed_data_interp(:,xcut)./va - uex_tot(:,xcut)./va); 
     hold on; 
     plot(upy_mixed_data_interp(:,xcut)./va - uey_tot(:,xcut)./va); 
     plot(upz_mixed_data_interp(:,xcut)./va - uez_tot(:,xcut)./va)
     xlim([150 250])
     yyaxis right; plot(n_cold_data_interp(:,xcut)./n0);
end
%
% if nz==800
%     ndata_interp= ndata_interp(200:600,:);
%     nz=400;
% end
n_cold_data_interp = imgaussfilt(n_cold_data_interp,1);
% ndata_interp=ndata_interp./n0;
[~,peakPos] = max(n_cold_data_interp(100:300,xcut));
peakPos=peakPos+100;
compressionRight = (nz-2)/2;
for j=peakPos:+1:nz
    
    if n_cold_data_interp(j,xcut)/n0 < 1.2
        compressionRight = j;
        break;
        
    end
end
outerRightEdge(i) = compressionRight;

if i > 1
    boundarySpeed(i) = 50.825.*(outerRightEdge(i) - outerRightEdge(i-1))/(25.*4.15125e-2); %Units of km / s
end

compressionLeft = (nz-2)/2;
for j=peakPos:-1:1
    
    if n_cold_data_interp(j,xcut)/n0 < 1.2
        compressionLeft = j;
        break;
    end
end
outerLeftEdge(i) = compressionLeft;

Width(i) = 0.5*(compressionRight-compressionLeft); %Units of Gyroradii
Area(i) = 0.5*(sum(n_cold_data_interp(compressionLeft:compressionRight,xcut)) .*Width(i)); %Units of n0 * gyroradii
% expSpeed = 0.5*(peakPos - (nz-2)/2)/time; %UNits of cold gyroradii over gyroperiod



n(i,:)=n_cold_data_interp(:,xcut);
uz(i,:) = upz_cold_data_interp(:,xcut);


if i==32
    i
end
i
end

% legend(string(5:timeFrame))

n_cold_data_interp = imgaussfilt(n_cold_data_interp./n0,0.1);
[Exdata_interp] = ((interpolate_Data(Edata,1,timeFrame,nx,nz,X,Z,X2,Z2)))/E0;
[Eydata_interp] = ((interpolate_Data(Edata,2,timeFrame,nx,nz,X,Z,X2,Z2)))/E0;%cold



if nz==800
    n_cold_data_interp= n_cold_data_interp(200:600,:);
    nz=400;
end

[~,peakPos] = max(n_cold_data_interp(:,xcut));
maxEx = max(abs(Exdata_interp(:,xcut)));
maxEy = max(abs(Eydata_interp(:,xcut)));

for i=peakPos:-1:1
    
    if n_cold_data_interp(i,xcut)/n0 < 1
        compressionLeft = i+1;
        break;
    end
end
for i=peakPos:+1:nz
    
    if n_cold_data_interp(i,xcut)/n0 < 1
        compressionRight = i-1;
        break;
    end
end
% figure
% for k=1:2:i
%     plot(ke_cold(k,:)); hold on
% end

peakWidth = 0.5*(compressionRight-compressionLeft); %Units of Gyroradii
peakArea = 0.5*(sum(n_cold_data_interp(compressionLeft:compressionRight,xcut)) .*peakWidth); %Units of n0 * gyroradii
% expSpeed = 0.5*(peakPos - (nz-2)/2)/time; %UNits of cold gyroradii over gyroperiod


Run.n = n;
Run.peakN = peakN;
Run.peakPos = peakPos;
Run.expSpeed = expSpeed;
Run.peakWidth = peakWidth;
Run.peakArea = peakArea;
Run.maxEx = maxEx;
Run.maxEy = maxEy;
Run.maxJx = maxJx;
Run.maxJy = maxJy;
Run.maxdeltaJx = maxdeltaJx;
Run.maxdeltaJy = maxdeltaJy;
Run.ke_cold = ke_cold;
Run.JfsdotE = JfsdotE;
Run.JswdotE = JswdotE;
Run.maxJxTime = maxJxTime;
Run.avgvz = avgvz;
Run.JfsdotEx = JfsdotEx;
Run.JfdsdotEy = JfsdotEy;
Run.JswdotEx = JswdotEx;
Run.JswdotEy = JswdotEy;
Run.maxUz = maxUz;
Run.minUx = minUx;
Run.expSpeed = expSpeed;
Run.maxSWTE= SWTEmax;
Run.boundarySpeed = boundarySpeed;
Run.Width = Width;
Run.Area = Area;
Run.Uzatmax = Uzatmax;
Run.Ufsatmax = Ufsatmax;
Run.Ufsmax = Ufsmax;
end
