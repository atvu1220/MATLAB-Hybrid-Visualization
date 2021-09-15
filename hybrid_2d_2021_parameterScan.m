%Get the properties of the FB compresional boundary for muiltiple runs with
%different parameters
clear; close all
% A = [0,0.447058826684952,0.741176486015320;0.00787401571869850,0.451412707567215,0.743214488029480;0.0157480314373970,0.455766558647156,0.745252430438995;0.0236220471560955,0.460120439529419,0.747290432453156;0.0314960628747940,0.464474290609360,0.749328434467316;0.0393700785934925,0.468828171491623,0.751366376876831;0.0472440943121910,0.473182022571564,0.753404378890991;0.0551181100308895,0.477535903453827,0.755442321300507;0.0629921257495880,0.481889754533768,0.757480323314667;0.0708661451935768,0.486243635416031,0.759518325328827;0.0787401571869850,0.490597516298294,0.761556267738342;0.0866141766309738,0.494951367378235,0.763594269752502;0.0944881886243820,0.499305248260498,0.765632271766663;0.102362208068371,0.503659129142761,0.767670214176178;0.110236220061779,0.508012950420380,0.769708216190338;0.118110239505768,0.512366831302643,0.771746218204498;0.125984251499176,0.516720712184906,0.773784160614014;0.133858263492584,0.521074593067169,0.775822162628174;0.141732290387154,0.525428414344788,0.777860105037689;0.149606302380562,0.529782295227051,0.779898107051849;0.157480314373970,0.534136176109314,0.781936109066010;0.165354326367378,0.538490056991577,0.783974051475525;0.173228353261948,0.542843937873840,0.786012053489685;0.181102365255356,0.547197759151459,0.788050055503845;0.188976377248764,0.551551640033722,0.790087997913361;0.196850389242172,0.555905520915985,0.792125999927521;0.204724416136742,0.560259401798248,0.794164001941681;0.212598428130150,0.564613223075867,0.796201944351196;0.220472440123558,0.568967103958130,0.798239946365356;0.228346452116966,0.573320984840393,0.800277888774872;0.236220479011536,0.577674865722656,0.802315890789032;0.244094491004944,0.582028746604919,0.804353892803192;0.251968502998352,0.586382567882538,0.806391835212708;0.259842514991760,0.590736448764801,0.808429837226868;0.267716526985168,0.595090329647064,0.810467839241028;0.275590538978577,0.599444210529327,0.812505781650543;0.283464580774307,0.603798031806946,0.814543783664703;0.291338592767715,0.608151912689209,0.816581785678864;0.299212604761124,0.612505793571472,0.818619728088379;0.307086616754532,0.616859674453735,0.820657730102539;0.314960628747940,0.621213555335999,0.822695732116699;0.322834640741348,0.625567376613617,0.824733674526215;0.330708652734756,0.629921257495880,0.826771676540375;0.338582664728165,0.634275138378143,0.828809618949890;0.346456706523895,0.638629019260407,0.830847620964050;0.354330718517303,0.642982840538025,0.832885622978210;0.362204730510712,0.647336721420288,0.834923565387726;0.370078742504120,0.651690602302551,0.836961567401886;0.377952754497528,0.656044483184815,0.838999569416046;0.385826766490936,0.660398364067078,0.841037511825562;0.393700778484345,0.664752185344696,0.843075513839722;0.401574790477753,0.669106066226959,0.845113515853882;0.409448832273483,0.673459947109222,0.847151458263397;0.417322844266892,0.677813827991486,0.849189460277557;0.425196856260300,0.682167649269104,0.851227402687073;0.433070868253708,0.686521530151367,0.853265404701233;0.440944880247116,0.690875411033630,0.855303406715393;0.448818892240524,0.695229291915894,0.857341349124908;0.456692904233933,0.699583113193512,0.859379351139069;0.464566916227341,0.703936994075775,0.861417353153229;0.472440958023071,0.708290874958038,0.863455295562744;0.480314970016480,0.712644755840302,0.865493297576904;0.488188982009888,0.716998636722565,0.867531299591065;0.496062994003296,0.721352458000183,0.869569242000580;0.503937005996704,0.725706338882446,0.871607244014740;0.511811017990112,0.730060219764710,0.873645186424255;0.519685029983521,0.734414100646973,0.875683188438416;0.527559041976929,0.738767921924591,0.877721190452576;0.535433053970337,0.743121802806854,0.879759132862091;0.543307065963745,0.747475683689117,0.881797134876251;0.551181077957153,0.751829564571381,0.883835136890411;0.559055089950562,0.756183445453644,0.885873079299927;0.566929161548615,0.760537266731262,0.887911081314087;0.574803173542023,0.764891147613525,0.889949083328247;0.582677185535431,0.769245028495789,0.891987025737763;0.590551197528839,0.773598909378052,0.894025027751923;0.598425209522247,0.777952730655670,0.896062970161438;0.606299221515656,0.782306611537933,0.898100972175598;0.614173233509064,0.786660492420197,0.900138974189758;0.622047245502472,0.791014373302460,0.902176916599274;0.629921257495880,0.795368254184723,0.904214918613434;0.637795269489288,0.799722075462341,0.906252920627594;0.645669281482697,0.804075956344605,0.908290863037109;0.653543293476105,0.808429837226868,0.910328865051270;0.661417305469513,0.812783718109131,0.912366867065430;0.669291317462921,0.817137539386749,0.914404809474945;0.677165329456329,0.821491420269013,0.916442811489105;0.685039341449738,0.825845301151276,0.918480753898621;0.692913413047791,0.830199182033539,0.920518755912781;0.700787425041199,0.834553062915802,0.922556757926941;0.708661437034607,0.838906884193420,0.924594700336456;0.716535449028015,0.843260765075684,0.926632702350617;0.724409461021423,0.847614645957947,0.928670704364777;0.732283473014832,0.851968526840210,0.930708646774292;0.740157485008240,0.856322348117828,0.932746648788452;0.748031497001648,0.860676229000092,0.934784650802612;0.755905508995056,0.865030109882355,0.936822593212128;0.763779520988464,0.869383990764618,0.938860595226288;0.771653532981873,0.873737871646881,0.940898597240448;0.779527544975281,0.878091692924500,0.942936539649963;0.787401556968689,0.882445573806763,0.944974541664124;0.795275568962097,0.886799454689026,0.947012484073639;0.803149580955505,0.891153335571289,0.949050486087799;0.811023592948914,0.895507156848908,0.951088488101959;0.818897664546967,0.899861037731171,0.953126430511475;0.826771676540375,0.904214918613434,0.955164432525635;0.834645688533783,0.908568799495697,0.957202434539795;0.842519700527191,0.912922620773315,0.959240376949310;0.850393712520599,0.917276501655579,0.961278378963471;0.858267724514008,0.921630382537842,0.963316380977631;0.866141736507416,0.925984263420105,0.965354323387146;0.874015748500824,0.930338144302368,0.967392325401306;0.881889760494232,0.934691965579987,0.969430267810822;0.889763772487640,0.939045846462250,0.971468269824982;0.897637784481049,0.943399727344513,0.973506271839142;0.905511796474457,0.947753608226776,0.975544214248657;0.913385808467865,0.952107429504395,0.977582216262817;0.921259820461273,0.956461310386658,0.979620218276978;0.929133832454681,0.960815191268921,0.981658160686493;0.937007844448090,0.965169072151184,0.983696162700653;0.944881916046143,0.969522953033447,0.985734164714813;0.952755928039551,0.973876774311066,0.987772107124329;0.960629940032959,0.978230655193329,0.989810109138489;0.968503952026367,0.982584536075592,0.991848051548004;0.976377964019775,0.986938416957855,0.993886053562164;0.984251976013184,0.991292238235474,0.995924055576325;0.992125988006592,0.995646119117737,0.997961997985840;1,1,1;0.997150719165802,0.992800235748291,0.993627429008484;0.994301497936249,0.985600471496582,0.987254917621613;0.991452217102051,0.978400707244873,0.980882346630096;0.988602936267853,0.971201002597809,0.974509775638580;0.985753655433655,0.964001238346100,0.968137264251709;0.982904434204102,0.956801474094391,0.961764693260193;0.980055153369904,0.949601709842682,0.955392181873322;0.977205872535706,0.942401945590973,0.949019610881805;0.974356591701508,0.935202181339264,0.942647039890289;0.971507370471954,0.928002476692200,0.936274528503418;0.968658089637756,0.920802712440491,0.929901957511902;0.965808808803558,0.913602948188782,0.923529386520386;0.962959587574005,0.906403183937073,0.917156875133514;0.960110306739807,0.899203419685364,0.910784304141998;0.957261025905609,0.892003655433655,0.904411792755127;0.954411745071411,0.884803950786591,0.898039221763611;0.951562523841858,0.877604186534882,0.891666650772095;0.948713243007660,0.870404422283173,0.885294139385223;0.945863962173462,0.863204658031464,0.878921568393707;0.943014681339264,0.856004893779755,0.872548997402191;0.940165460109711,0.848805129528046,0.866176486015320;0.937316179275513,0.841605365276337,0.859803915023804;0.934466898441315,0.834405660629273,0.853431344032288;0.931617677211762,0.827205896377564,0.847058832645416;0.928768396377564,0.820006132125855,0.840686261653900;0.925919115543366,0.812806367874146,0.834313750267029;0.923069834709168,0.805606603622437,0.827941179275513;0.920220613479614,0.798406839370728,0.821568608283997;0.917371332645416,0.791207134723663,0.815196096897125;0.914522051811218,0.784007370471954,0.808823525905609;0.911672770977020,0.776807606220245,0.802450954914093;0.908823549747467,0.769607841968536,0.796078443527222;0.905974268913269,0.762408077716827,0.789705872535706;0.903124988079071,0.755208313465118,0.783333361148834;0.900275766849518,0.748008608818054,0.776960790157318;0.897426486015320,0.740808844566345,0.770588219165802;0.894577205181122,0.733609080314636,0.764215707778931;0.891727924346924,0.726409316062927,0.757843136787415;0.888878703117371,0.719209551811218,0.751470565795898;0.886029422283173,0.712009787559509,0.745098054409027;0.883180141448975,0.704810023307800,0.738725483417511;0.880330860614777,0.697610318660736,0.732352972030640;0.877481639385223,0.690410554409027,0.725980401039124;0.874632358551025,0.683210790157318,0.719607830047607;0.871783077716827,0.676011025905609,0.713235318660736;0.868933856487274,0.668811261653900,0.706862747669220;0.866084575653076,0.661611497402191,0.700490176677704;0.863235294818878,0.654411792755127,0.694117665290833;0.860386013984680,0.647212028503418,0.687745094299316;0.857536792755127,0.640012264251709,0.681372523307800;0.854687511920929,0.632812500000000,0.675000011920929;0.851838231086731,0.625612735748291,0.668627440929413;0.848988950252533,0.618412971496582,0.662254929542542;0.846139729022980,0.611213207244873,0.655882358551025;0.843290448188782,0.604013502597809,0.649509787559509;0.840441167354584,0.596813738346100,0.643137276172638;0.837591946125031,0.589613974094391,0.636764705181122;0.834742665290833,0.582414209842682,0.630392134189606;0.831893384456635,0.575214445590973,0.624019622802734;0.829044103622437,0.568014681339264,0.617647051811218;0.826194882392883,0.560814976692200,0.611274540424347;0.823345601558685,0.553615212440491,0.604901969432831;0.820496320724487,0.546415448188782,0.598529398441315;0.817647099494934,0.539215683937073,0.592156887054443;0.814797818660736,0.532015919685364,0.585784316062927;0.811948537826538,0.524816155433655,0.579411745071411;0.809099256992340,0.517616450786591,0.573039233684540;0.806250035762787,0.510416686534882,0.566666662693024;0.803400754928589,0.503216922283173,0.560294091701508;0.800551474094391,0.496017158031464,0.553921580314636;0.797702193260193,0.488817393779755,0.547549009323120;0.794852972030640,0.481617659330368,0.541176497936249;0.792003691196442,0.474417895078659,0.534803926944733;0.789154410362244,0.467218130826950,0.528431355953217;0.786305189132690,0.460018396377564,0.522058844566345;0.783455908298492,0.452818632125855,0.515686273574829;0.780606627464294,0.445618867874146,0.509313702583313;0.777757346630096,0.438419133424759,0.502941191196442;0.774908125400543,0.431219369173050,0.496568620204926;0.772058844566345,0.424019604921341,0.490196079015732;0.769209563732147,0.416819840669632,0.483823537826538;0.766360282897949,0.409620106220245,0.477450996637344;0.763511061668396,0.402420341968536,0.471078425645828;0.760661780834198,0.395220577716827,0.464705884456635;0.757812500000000,0.388020843267441,0.458333343267441;0.754963278770447,0.380821079015732,0.451960772275925;0.752113997936249,0.373621314764023,0.445588231086731;0.749264717102051,0.366421580314636,0.439215689897537;0.746415436267853,0.359221816062927,0.432843148708344;0.743566215038300,0.352022051811218,0.426470577716827;0.740716934204102,0.344822317361832,0.420098036527634;0.737867653369904,0.337622553110123,0.413725495338440;0.735018372535706,0.330422788858414,0.407352954149246;0.732169151306152,0.323223054409027,0.400980383157730;0.729319870471954,0.316023290157318,0.394607841968536;0.726470589637756,0.308823525905609,0.388235300779343;0.723621368408203,0.301623791456223,0.381862759590149;0.720772087574005,0.294424027204514,0.375490188598633;0.717922806739807,0.287224262952805,0.369117647409439;0.715073525905609,0.280024498701096,0.362745106220245;0.712224304676056,0.272824764251709,0.356372565031052;0.709375023841858,0.265625000000000,0.349999994039536;0.706525743007660,0.258425235748291,0.343627452850342;0.703676462173462,0.251225501298904,0.337254911661148;0.700827240943909,0.244025737047195,0.330882370471954;0.697977960109711,0.236825987696648,0.324509799480438;0.695128679275513,0.229626223444939,0.318137258291245;0.692279458045960,0.222426474094391,0.311764717102051;0.689430177211762,0.215226724743843,0.305392146110535;0.686580896377564,0.208026960492134,0.299019604921341;0.683731615543366,0.200827211141586,0.292647063732147;0.680882394313812,0.193627446889877,0.286274522542954;0.678033113479614,0.186427697539330,0.279901951551437;0.675183832645416,0.179227948188782,0.273529410362244;0.672334551811218,0.172028183937073,0.267156869173050;0.669485330581665,0.164828434586525,0.260784327983856;0.666636049747467,0.157628685235977,0.254411756992340;0.663786768913269,0.150428920984268,0.248039215803146;0.660937547683716,0.143229171633720,0.241666674613953;0.658088266849518,0.136029407382011,0.235294118523598;0.655238986015320,0.128829658031464,0.228921577334404;0.652389705181122,0.121629901230335,0.222549021244049;0.649540483951569,0.114430151879787,0.216176480054855;0.646691203117371,0.107230395078659,0.209803923964500;0.643841922283173,0.100030638277531,0.203431382775307;0.640992641448975,0.0928308814764023,0.197058826684952;0.638143420219421,0.0856311321258545,0.190686285495758;0.635294139385223,0.0784313753247261,0.184313729405403];
% fig = figure('Position',[ 1 1 750 1500]);

timeSteps = 600;
outputSteps = 25;
nt=	floor(timeSteps/outputSteps);
va = 48.95;
dt = 0.02;
output = outputSteps;
stepInterval = 1;

time = 18%18;%gyroperiods
timeFrame = time/(dt*outputSteps)

xcut=150;


%Load the Data from each Run with different parameters
%Different Mach numbers for SW speed
% [n_6M,peakN_6M,peakPos_6M,expSpeed_6M,peakWidth_6M,peakArea_6M] = getCompressionProperties('214',dt,outputSteps,time,xcut)
% [n_8M,peakN_8M,peakPos_8M,expSpeed_8M,peakWidth_8M,peakArea_8M] = getCompressionProperties('215',dt,outputSteps,time,xcut)
% [n_10M,peakN_10M,peakPos_10M,expSpeed_10M,peakWidth_10M,peakArea_10M] = getCompressionProperties('201',dt,outputSteps,time,xcut)

%Different foreshock ion density ratios
[n_75fs,peakN_75fs,peakPos_75fs,expSpeed_75fs,peakWidth_75fs,peakArea_75fs,maxEx_75fs,maxEy_75fs,maxJx_75fs,maxJy_75fs,maxdeltaJx_75fs,maxdeltaJy_75fs,ke_cold_75fs,JfsdotE_75fs,JswdotE_75fs,maxJxTime_75fs] = getCompressionProperties('220',dt,outputSteps,time,xcut);
[n_105fs,peakN_105fs,peakPos_105fs,expSpeed_105fs,peakWidth_105fs,peakArea_105fs,maxEx_105fs,maxEy_105fs,maxJx_105fs,maxJy_105fs,maxdeltaJx_105fs,maxdeltaJy_105fs,ke_cold_105fs,JfsdotE_105fs,JswdotE_105fs,maxJxTime_105fs] = getCompressionProperties('221',dt,outputSteps,time,xcut);
[n_135fs,peakN_135fs,peakPos_135fs,expSpeed_135fs,peakWidth_135fs,peakArea_135fs,maxEx_135fs,maxEy_135fs,maxJx_135fs,maxJy_135fs,maxdeltaJx_135fs,maxdeltaJy_135fs,ke_cold_135fs,JfsdotE_135fs,JswdotE_135fs,maxJxTime_135fs] = getCompressionProperties('222',dt,outputSteps,time,xcut);
[n_165fs,peakN_165fs,peakPos_165fs,expSpeed_165fs,peakWidth_165fs,peakArea_165fs,maxEx_165fs,maxEy_165fs,maxJx_165fs,maxJy_165fs,maxdeltaJx_165fs,maxdeltaJy_165fs,ke_cold_165fs,JfsdotE_165fs,JswdotE_165fs,maxJxTime_165fs] = getCompressionProperties('223',dt,outputSteps,time,xcut);




[n_6fs,peakN_6fs,peakPos_6fs,expSpeed_6fs,peakWidth_6fs,peakArea_6fs,maxEx_6fs,maxEy_6fs,maxJx_6fs,maxJy_6fs,maxdeltaJx_6fs,maxdeltaJy_6fs,ke_cold_6fs,JfsdotE_6fs,JswdotE_6fs,maxJxTime_6fs] = getCompressionProperties('208',dt,outputSteps,time,xcut);
[n_9fs,peakN_9fs,peakPos_9fs,expSpeed_9fs,peakWidth_9fs,peakArea_9fs,maxEx_9fs,maxEy_9fs,maxJx_9fs,maxJy_9fs,maxdeltaJx_9fs,maxdeltaJy_9fs,ke_cold_9fs,JfsdotE_9fs,JswdotE_9fs,maxJxTime_9fs] = getCompressionProperties('209',dt,outputSteps,time,xcut);
[n_12fs,peakN_12fs,peakPos_12fs,expSpeed_12fs,peakWidth_12fs,peakArea_12fs,maxEx_12fs,maxEy_12fs,maxJx_12fs,maxJy_12fs,maxdeltaJx_12fs,maxdeltaJy_12fs,ke_cold_12fs,JfsdotE_12fs,JswdotE_12fs,maxJxTime_12fs] = getCompressionProperties('222',dt,outputSteps,time,xcut);
[n_15fs,peakN_15fs,peakPos_15fs,expSpeed_15fs,peakWidth_15fs,peakArea_15fs,maxEx_15fs,maxEy_15fs,maxJx_15fs,maxJy_15fs,maxdeltaJx_15fs,maxdeltaJy_15fs,ke_cold_15fs,JfsdotE_15fs,JswdotE_15fs,maxJxTime_15fs] = getCompressionProperties('210',dt,outputSteps,time,xcut);
[n_18fs,peakN_18fs,peakPos_18fs,expSpeed_18fs,peakWidth_18fs,peakArea_18fs,maxEx_18fs,maxEy_18fs,maxJx_18fs,maxJy_18fs,maxdeltaJx_18fs,maxdeltaJy_18fs,ke_cold_18fs,JfsdotE_18fs,JswdotE_18fs,maxJxTime_18fs] = getCompressionProperties('211',dt,outputSteps,time,xcut);

%Different Shear
% [n_30d,peakN_30d,peakPos_30d,expSpeed_30d,peakWidth_30d,peakArea_30d,maxEx_30d,maxEy_30d,maxJx_30d,maxJy_30d,maxdeltaJx_30d,maxdeltaJy_30d,ke_cold_30d,JfsdotE_30d,JswdotE_30d,maxJxTime_30d] = getCompressionProperties('204',dt,outputSteps,time,xcut);
% [n_60d,peakN_60d,peakPos_60d,expSpeed_60d,peakWidth_60d,peakArea_60d,maxEx_60d,maxEy_60d,maxJx_60d,maxJy_60d,maxdeltaJx_60d,maxdeltaJy_60d,ke_cold_60d,JfsdotE_60d,JswdotE_60d,maxJxTime_60d] = getCompressionProperties('205',dt,outputSteps,time,xcut);
% [n_90d,peakN_90d,peakPos_90d,expSpeed_90d,peakWidth_90d,peakArea_90d,maxEx_90d,maxEy_90d,maxJx_90d,maxJy_90d,maxdeltaJx_90d,maxdeltaJy_90d,ke_cold_90d,JfsdotE_90d,JswdotE_90d,maxJxTime_90d] = getCompressionProperties('222',dt,outputSteps,time,xcut);
% [n_120d,peakN_120d,peakPos_120d,expSpeed_120d,peakWidth_120d,peakArea_120d,maxEx_120d,maxEy_120d,maxJx_120d,maxJy_120d,maxdeltaJx_120d,maxdeltaJy_120d,ke_cold_120d,JfsdotE_120d,JswdotE_120d,maxJxTime_120d] = getCompressionProperties('206',dt,outputSteps,time,xcut);
% [n_150d,peakN_150d,peakPos_150d,expSpeed_150d,peakWidth_150d,peakArea_150d,maxEx_150d,maxEy_150d,maxJx_150d,maxJy_150d,maxdeltaJx_150d,maxdeltaJy_150d,ke_cold_150d,JfsdotE_150d,JswdotE_150d,maxJxTime_150d] = getCompressionProperties('207',dt,outputSteps,time,xcut);
% 
% %Different Ma
% [n_6M,peakN_6M,peakPos_6M,expSpeed_6M,peakWidth_6M,peakArea_6M,maxEx_6M,maxEy_6M,maxJx_6M,maxJy_6M,maxdeltaJx_6M,maxdeltaJy_6M,ke_cold_6M,JfsdotE_6M,JswdotE_6M,maxJxTime_6M] = getCompressionProperties('214',dt,outputSteps,time,xcut);
% [n_8M,peakN_8M,peakPos_8M,expSpeed_8M,peakWidth_8M,peakArea_8M,maxEx_8M,maxEy_8M,maxJx_8M,maxJy_8M,maxdeltaJx_8M,maxdeltaJy_8M,ke_cold_8M,JfsdotE_8M,JswdotE_8M,maxJxTime_8M] = getCompressionProperties('215',dt,outputSteps,time,xcut);
% [n_10M,peakN_10M,peakPos_10M,expSpeed_10M,peakWidth_10M,peakArea_10M,maxEx_10M,maxEy_10M,maxJx_10M,maxJy_10M,maxdeltaJx_10M,maxdeltaJy_10M,ke_cold_10M,JfsdotE_10M,JswdotE_10M,maxJxTime_10M] = getCompressionProperties('222',dt,outputSteps,time,xcut);
% [n_12M,peakN_12M,peakPos_12M,expSpeed_12M,peakWidth_12M,peakArea_12M,maxEx_12M,maxEy_12M,maxJx_12M,maxJy_12M,maxdeltaJx_12M,maxdeltaJy_12M,ke_cold_12M,JfsdotE_12M,JswdotE_12M,maxJxTime_12M] = getCompressionProperties('216',dt,outputSteps,time,xcut);
% [n_14M,peakN_14M,peakPos_14M,expSpeed_14M,peakWidth_14M,peakArea_14M,maxEx_14M,maxEy_14M,maxJx_14M,maxJy_14M,maxdeltaJx_14M,maxdeltaJy_14M,ke_cold_14M,JfsdotE_14M,JswdotE_14M,maxJxTime_14M] = getCompressionProperties('217',dt,outputSteps,time,xcut);
% [n_16M,peakN_16M,peakPos_16M,expSpeed_16M,peakWidth_16M,peakArea_146M,maxEx_16M,maxEy_16M,maxJx_16M,maxJy_16M,maxdeltaJx_16M,maxdeltaJy_16M,ke_cold_16M,JfsdotE_16M,JswdotE_16M,maxJxTime_16M] = getCompressionProperties('218',dt,outputSteps,time,xcut);

%% Density Ratio vs KE SW
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(0.06,sum(ke_cold_6fs(maxJxTime_6fs,:)),300,'filled','displayName','6%'); hold on
scatter(0.075,sum(ke_cold_75fs(maxJxTime_75fs,:)),300,'filled','displayName','7.5%'); hold on
scatter(0.09,sum(ke_cold_9fs(maxJxTime_9fs,:)),300,'filled','displayName','9%'); hold on
scatter(0.105,sum(ke_cold_105fs(maxJxTime_105fs,:)),300,'filled','displayName','10.5%'); hold on
scatter(0.12,sum(ke_cold_12fs(maxJxTime_12fs,:)),300,'kp','filled','displayName','12%'); hold on
scatter(0.135,sum(ke_cold_12fs(maxJxTime_135fs,:)),300,'kp','filled','displayName','13.5%'); hold on
scatter(0.15,sum(ke_cold_15fs(maxJxTime_15fs,:)),300,'filled','displayName','15%'); hold on
scatter(0.165,sum(ke_cold_12fs(maxJxTime_165fs,:)),300,'kp','filled','displayName','16.5%'); hold on
scatter(0.18,sum(ke_cold_18fs(maxJxTime_18fs,:)),300,'filled','displayName','18%'); hold on
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
scatter(0.06,abs(sum(JswdotE_6fs(1:maxJxTime_6fs,:),'all')),300,'filled','displayName','6%'); hold on
scatter(0.075,abs(sum(JswdotE_75fs(1:maxJxTime_75fs,:),'all')),300,'filled','displayName','7.5%'); hold on
scatter(0.09,abs(sum(JswdotE_9fs(1:maxJxTime_9fs,:),'all')),300,'filled','displayName','9%'); hold on
scatter(0.105,abs(sum(JswdotE_105fs(1:maxJxTime_105fs,:),'all')),300,'filled','displayName','10.5%'); hold on
scatter(0.12,abs(sum(JswdotE_12fs(1:maxJxTime_12fs,:),'all')),300,'kp','filled','displayName','12%'); hold on
scatter(0.135,abs(sum(JswdotE_135fs(1:maxJxTime_135fs,:),'all')),300,'filled','displayName','13.5%'); hold on
scatter(0.15,abs(sum(JswdotE_15fs(1:maxJxTime_15fs,:),'all')),300,'filled','displayName','15%'); hold on
scatter(0.165,abs(sum(JswdotE_165fs(1:maxJxTime_165fs,:),'all')),300,'filled','displayName','16.5%'); hold on
scatter(0.18,abs(sum(JswdotE_18fs(1:maxJxTime_18fs,:),'all')),300,'filled','displayName','18%'); hold on
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
scatter(0.06,abs(sum(JfsdotE_6fs(1:maxJxTime_6fs,:),'all')),300,'filled','displayName','6%'); hold on
scatter(0.075,abs(sum(JfsdotE_75fs(1:maxJxTime_75fs,:),'all')),300,'filled','displayName','7.5%'); hold on
scatter(0.09,abs(sum(JfsdotE_9fs(1:maxJxTime_9fs,:),'all')),300,'filled','displayName','9%'); hold on
scatter(0.105,abs(sum(JfsdotE_105fs(1:maxJxTime_105fs,:),'all')),300,'filled','displayName','10.5%'); hold on
scatter(0.12,abs(sum(JfsdotE_12fs(1:maxJxTime_12fs,:),'all')),300,'kp','filled','displayName','12%'); hold on
scatter(0.135,abs(sum(JfsdotE_135fs(1:maxJxTime_135fs,:),'all')),300,'filled','displayName','13.5%'); hold on
scatter(0.15,abs(sum(JfsdotE_15fs(1:maxJxTime_15fs,:),'all')),300,'filled','displayName','15%'); hold on
scatter(0.165,abs(sum(JfsdotE_165fs(1:maxJxTime_165fs,:),'all')),300,'filled','displayName','16.5%'); hold on
scatter(0.18,abs(sum(JfsdotE_18fs(1:maxJxTime_18fs,:),'all')),300,'filled','displayName','18%'); hold on
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
scatter(0.06,expSpeed_6fs,300,'filled','displayName','6%'); hold on
scatter(0.075,expSpeed_75fs,300,'filled','displayName','7.5%'); hold on
scatter(0.09,expSpeed_9fs,300,'filled','displayName','9%'); hold on
scatter(0.105,expSpeed_105fs,300,'filled','displayName','10.5%'); hold on
scatter(0.12,expSpeed_12fs,300,'kp','filled','displayName','12%'); hold on
scatter(0.135,expSpeed_135fs,300,'filled','displayName','13.5%'); hold on
scatter(0.15,expSpeed_15fs,300,'filled','displayName','15%'); hold on
scatter(0.165,expSpeed_165fs,300,'filled','displayName','16.5%'); hold on
scatter(0.18,expSpeed_18fs,300,'filled','displayName','18%'); hold on
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
scatter(0.06,maxEx_6fs,300,'filled','displayName','6%'); hold on
scatter(0.075,maxEx_75fs,300,'filled','displayName','7.5%'); hold on
scatter(0.09,maxEx_9fs,300,'filled','displayName','9%'); hold on
scatter(0.105,maxEx_105fs,300,'filled','displayName','10.5%'); hold on
scatter(0.12,maxEx_12fs,300,'kp','filled','displayName','12%'); hold on
scatter(0.135,maxEx_135fs,300,'filled','displayName','13.5%'); hold on
scatter(0.15,maxEx_15fs,300,'filled','displayName','15%'); hold on
scatter(0.165,maxEx_165fs,300,'filled','displayName','16.5%'); hold on
scatter(0.18,maxEx_18fs,300,'filled','displayName','18%'); hold on
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
scatter(0.06,maxEy_6fs,300,'filled','displayName','6%'); hold on
scatter(0.075,maxEy_75fs,300,'filled','displayName','7.5%'); hold on
scatter(0.09,maxEy_9fs,300,'filled','displayName','9%'); hold on
scatter(0.105,maxEy_105fs,300,'filled','displayName','10.5%'); hold on
scatter(0.12,maxEy_12fs,300,'kp','filled','displayName','12%'); hold on
scatter(0.135,maxEy_135fs,300,'filled','displayName','13.5%'); hold on
scatter(0.15,maxEy_15fs,300,'filled','displayName','15%'); hold on
scatter(0.165,maxEy_165fs,300,'filled','displayName','16.5%'); hold on
scatter(0.18,maxEy_18fs,300,'filled','displayName','18%'); hold on
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
figure; set(gcf,'color','w');
scatter(0.06,maxJx_6fs,300,'filled','displayName','6%'); hold on
scatter(0.075,maxJx_75fs,300,'filled','displayName','7.5%'); hold on
scatter(0.09,maxJx_9fs,300,'filled','displayName','9%'); hold on
scatter(0.105,maxJx_105fs,300,'filled','displayName','10.5%'); hold on
scatter(0.12,maxJx_12fs,300,'kp','filled','displayName','12%'); hold on
scatter(0.135,maxJx_135fs,300,'filled','displayName','13.5%'); hold on
scatter(0.15,maxJx_15fs,300,'filled','displayName','15%'); hold on
scatter(0.165,maxJx_165fs,300,'filled','displayName','16.5%'); hold on
scatter(0.18,maxJx_18fs,300,'filled','displayName','18%'); hold on
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
% scatter(0.06,maxdeltaJx_6fs,300,'filled','displayName','6%'); hold on
% scatter(0.075,maxdeltaJx_75fs,300,'filled','displayName','7.5%'); hold on
% scatter(0.09,maxdeltaJx_9fs,300,'filled','displayName','9%'); hold on
% scatter(0.105,maxdeltaJx_105fs,300,'filled','displayName','10.5%'); hold on
% scatter(0.12,maxdeltaJx_12fs,300,'kp','filled','displayName','12%'); hold on
% scatter(0.135,maxdeltaJx_135fs,300,'filled','displayName','13.5%'); hold on
% scatter(0.15,maxdeltaJx_15fs,300,'filled','displayName','15%'); hold on
% scatter(0.165,maxdeltaJx_165fs,300,'filled','displayName','16.5%'); hold on
% scatter(0.18,maxdeltaJx_18fs,300,'filled','displayName','18%'); hold on
scatter(peakN_30d,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
scatter(peakN_60d,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
scatter(peakN_90d,expSpeed_90d,300,'s','filled','displayName','90°'); hold on
scatter(peakN_120d,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
scatter(peakN_150d,expSpeed_150d,300,'s','filled','displayName','150°'); hold on

box on; grid on
xlabel('n_{fs} [n_0]')
ylabel('\delta max Jx/J0')
legend('location','southeast')
title('n_{fs} Density vs. \delta max Jx')
%% Density Ratio vs Jy
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(0.06,maxJy_6fs,300,'filled','displayName','6%'); hold on
scatter(0.075,maxJy_75fs,300,'filled','displayName','7.5%'); hold on
scatter(0.09,maxJy_9fs,300,'filled','displayName','9%'); hold on
scatter(0.105,maxJy_105fs,300,'filled','displayName','10.5%'); hold on
scatter(0.12,maxJy_12fs,300,'kp','filled','displayName','12%'); hold on
scatter(0.135,maxJy_135fs,300,'filled','displayName','13.5%'); hold on
scatter(0.15,maxJy_15fs,300,'filled','displayName','15%'); hold on
scatter(0.165,maxJy_165fs,300,'filled','displayName','16.5%'); hold on
scatter(0.18,maxJy_18fs,300,'filled','displayName','18%'); hold on
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
scatter(0.06,maxdeltaJy_6fs,300,'filled','displayName','6%'); hold on
scatter(0.075,maxdeltaJy_75fs,300,'filled','displayName','7.5%'); hold on
scatter(0.09,maxdeltaJy_9fs,300,'filled','displayName','9%'); hold on
scatter(0.105,maxdeltaJy_105fs,300,'filled','displayName','10.5%'); hold on
scatter(0.12,maxdeltaJy_12fs,300,'kp','filled','displayName','12%'); hold on
scatter(0.135,maxdeltaJy_135fs,300,'filled','displayName','13.5%'); hold on
scatter(0.15,maxdeltaJy_15fs,300,'filled','displayName','15%'); hold on
scatter(0.165,maxdeltaJy_165fs,300,'filled','displayName','16.5%'); hold on
scatter(0.18,maxdeltaJy_18fs,300,'filled','displayName','18%'); hold on
% scatter(peakN_30d,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
% scatter(peakN_60d,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
% scatter(peakN_120d,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
% scatter(peakN_150d,expSpeed_150d,300,'s','filled','displayName','150°'); hold on

box on; grid on
xlabel('n_{fs} [n_0]')
ylabel('\delta max Jy/J0')
legend('location','southeast')
title('n_{fs} Density vs. \delta max Jy')
%% Density Ratio vs Exp. Speed^2
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(0.06,expSpeed_6fs^2,300,'filled','displayName','6%'); hold on
scatter(0.09,expSpeed_9fs^2,300,'filled','displayName','9%'); hold on
scatter(0.12,expSpeed_12fs^2,300,'kp','filled','displayName','12%'); hold on
scatter(0.15,expSpeed_15fs^2,300,'filled','displayName','15%'); hold on
scatter(0.18,expSpeed_18fs^2,300,'filled','displayName','18%'); hold on
% scatter(peakN_30d,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
% scatter(peakN_60d,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
% scatter(peakN_120d,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
% scatter(peakN_150d,expSpeed_150d,300,'s','filled','displayName','150°'); hold on

box on; grid on
xlabel('n_{fs} [n_0]')
ylabel('Expansion Speed^2 [ \lambda_i^2/\Omega_i^2]')
legend('location','southeast')
title('n_{fs} Density vs. Expansion Speed^2')
%% Density Ratio vs energy ~n*expspeed^2
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(0.06,expSpeed_6fs^2*peakN_6fs,300,'filled','displayName','6%'); hold on
scatter(0.09,expSpeed_9fs^2*peakN_9fs,300,'filled','displayName','9%'); hold on
scatter(0.12,expSpeed_12fs^2*peakN_12fs,300,'kp','filled','displayName','12%'); hold on
scatter(0.15,expSpeed_15fs^2*peakN_15fs,300,'filled','displayName','15%'); hold on
scatter(0.18,expSpeed_18fs^2*peakN_18fs,300,'filled','displayName','18%'); hold on
% scatter(peakN_30d,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
% scatter(peakN_60d,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
% scatter(peakN_120d,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
% scatter(peakN_150d,expSpeed_150d,300,'s','filled','displayName','150°'); hold on

box on; grid on
xlabel('n_{fs} [n_0]')
ylabel('Expansion Speed^2 * peak density [n0 \lambda_i^2/\Omega_i^2]')
legend('location','southeast')
title('n_{fs} Density vs. Expansion Speed^2*peak density')

figure;
scatter([0.09,0.12,0.15,0.18],[expSpeed_9fs^2*peakN_9fs,expSpeed_12fs^2*peakN_12fs,expSpeed_15fs^2*peakN_15fs,expSpeed_18fs^2*peakN_18fs])

figure
scatter([0.06,0.09,0.12,0.15,0.18],[expSpeed_6fs^2,expSpeed_9fs^2,expSpeed_12fs^2,expSpeed_15fs^2,expSpeed_18fs^2])

%% Peak density vs Exp. Speed
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
% scatter(peakN_6fs,expSpeed_6fs,300,'filled','displayName','6%'); hold on
% scatter(peakN_9fs,expSpeed_9fs,300,'filled','displayName','9%'); hold on
% scatter(peakN_12fs,expSpeed_12fs,300,'kp','filled','displayName','12%'); hold on
% scatter(peakN_15fs,expSpeed_15fs,300,'filled','displayName','15%'); hold on
% scatter(peakN_18fs,expSpeed_18fs,300,'filled','displayName','18%'); hold on
scatter(30,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
scatter(60,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
scatter(90,expSpeed_90d,300,'s','filled','displayName','90°'); hold on
scatter(120,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
scatter(150,expSpeed_150d,300,'s','filled','displayName','150°'); hold on


box on; grid on
xlabel('Foreshock Density [n_0]')
ylabel('Expansion Speed [\lambda_i/\Omega_i]')
legend('location','southeast')
title('Foreshock Density vs. Expansion Speed')
%% Peak density vs Exp. Speed
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
% scatter(peakN_6fs,expSpeed_6fs,300,'filled','displayName','6%'); hold on
% scatter(peakN_9fs,expSpeed_9fs,300,'filled','displayName','9%'); hold on
% scatter(peakN_12fs,expSpeed_12fs,300,'kp','filled','displayName','12%'); hold on
% scatter(peakN_15fs,expSpeed_15fs,300,'filled','displayName','15%'); hold on
% scatter(peakN_18fs,expSpeed_18fs,300,'filled','displayName','18%'); hold on
% scatter(peakN_30d,expSpeed_30d,300,'s','filled','displayName','30°'); hold on
% scatter(peakN_60d,expSpeed_60d,300,'s','filled','displayName','60°'); hold on
% scatter(peakN_90d,expSpeed_90d,300,'s','filled','displayName','90°'); hold on
% scatter(peakN_120d,expSpeed_120d,300,'s','filled','displayName','120°'); hold on
% scatter(peakN_150d,expSpeed_150d,300,'s','filled','displayName','150°'); hold on

scatter(6,expSpeed_6M,300,'s','filled','displayName','6M'); hold on
scatter(8,expSpeed_8M,300,'s','filled','displayName','8M'); hold on
scatter(10,expSpeed_10M,300,'s','filled','displayName','10M'); hold on
scatter(12,expSpeed_12M,300,'s','filled','displayName','12M'); hold on
scatter(14,expSpeed_14M,300,'s','filled','displayName','14M'); hold on
scatter(16,expSpeed_16M,300,'s','filled','displayName','16M'); hold on


box on; grid on
xlabel('M [M_A]')
ylabel('Expansion Speed [\lambda_i/\Omega_i]')
legend('location','southeast')
title('M vs. Expansion Speed')
%% Peak density vs Area of Compressional Boundary
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(peakN_6fs,peakArea_6fs,300,'filled','displayName','6%'); hold on
scatter(peakN_9fs,peakArea_9fs,300,'filled','displayName','9%'); hold on
scatter(peakN_12fs,peakArea_12fs,300,'kp','filled','displayName','12%'); hold on
scatter(peakN_15fs,peakArea_15fs,300,'filled','displayName','15%'); hold on
scatter(peakN_18fs,peakArea_18fs,300,'filled','displayName','18%'); hold on
% scatter(peakN_30d,peakArea_30d,300,'s','filled','displayName','30°'); hold on
% scatter(peakN_60d,peakArea_60d,300,'s','filled','displayName','60°'); hold on
% scatter(peakN_120d,peakArea_120d,300,'s','filled','displayName','120°'); hold on
% scatter(peakN_150d,peakArea_150d,300,'s','filled','displayName','150°'); hold on

box on; grid on
xlabel('Peak Density [n_0]')
ylabel('Area [n0 \lambda_i]')
legend('location','northeast')
title('Peak Density vs. Area')
%% Density Ratio vs Area of Compressional Boundary
%Plot speed of boundary vs density peak, label each point with parameter
figure; set(gcf,'color','w');
scatter(0.06,peakArea_6fs,300,'filled','displayName','6%'); hold on
scatter(0.09,peakArea_9fs,300,'filled','displayName','9%'); hold on
scatter(0.12,peakArea_12fs,300,'kp','filled','displayName','12%'); hold on
scatter(0.15,peakArea_15fs,300,'filled','displayName','15%'); hold on
scatter(0.18,peakArea_18fs,300,'filled','displayName','18%'); hold on
% scatter(peakN_30d,peakArea_30d,300,'s','filled','displayName','30°'); hold on
% scatter(peakN_60d,peakArea_60d,300,'s','filled','displayName','60°'); hold on
% scatter(peakN_120d,peakArea_120d,300,'s','filled','displayName','120°'); hold on
% scatter(peakN_150d,peakArea_150d,300,'s','filled','displayName','150°'); hold on

box on; grid on
xlabel('n_{fs} [n_0]')
ylabel('Area [n0 \lambda_i]')
legend('location','northeast')
title('n_{fs} vs. Area')
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


function [Run] = getCompressionProperties(outputFolder,dt,outputSteps,time,xcut)


%Load the data for the Run
timeFrame = time/(dt*outputSteps);
outputDirectory = strcat('/import/c1/DAYSIDE/atvu/Run',outputFolder);
RunNumber= outputFolder;

[qx,qy,qz,nt,nx,ny,nz,va] = read_Coordinates(outputDirectory);
[X,Z,X2,Z2] = scale_Data(qx,qz);
q=1.6e-19;
moverq=1.0378e-8;
lambda_i = (qx(2)-qx(1));
E0 = (5e-9)/moverq* va;
J0 = (5e-9)/ ((lambda_i));
nv0 = (5e-9)/((4*pi*10^-7*(lambda_i)*10^3));
B0 = 5e-9/moverq;

%Bdata
[Bdata] = read_Plasma('B',timeFrame,nx,ny,nz,outputDirectory);
    [Bxdata_interp0] = (interpolate_Data(Bdata,1,1,nx,nz,X,Z,X2,Z2));
    [Bydata_interp0] = ((interpolate_Data(Bdata,2,1,nx,nz,X,Z,X2,Z2)));
    [Bzdata_interp0] = ((interpolate_Data(Bdata,3,1,nx,nz,X,Z,X2,Z2)));
%Ndata
[ndata] = read_Plasma('n',timeFrame,nx,ny,nz,outputDirectory);
%Edata
[Edata] = read_Plasma('E',timeFrame,nx,ny,nz,outputDirectory);
Edata = face_to_center(2*Edata);
%nswdata
[n_cold_data] = read_Plasma('n_cold',timeFrame,nx,ny,nz,outputDirectory);
[up_cold_data] = read_Plasma('up_cold',timeFrame,nx,ny,nz,outputDirectory);

%Nfsdata
[n_mixed_data] = read_Plasma('n_mixed',timeFrame,nx,ny,nz,outputDirectory);
[up_mixed_data] = read_Plasma('up_mixed',timeFrame,nx,ny,nz,outputDirectory);
[uedata] = read_Plasma('ue',timeFrame,nx,ny,nz,outputDirectory);

[ndata_interp] = interpolate_Data(ndata,1,timeFrame,nx,nz,X,Z,X2,Z2);
n0 = mean(ndata_interp(floor(nz-nz/4):nz-1,2:end-1),'all');
n0 = imgaussfilt(n0,1);

Jperpx_mixed_previous = 0;
Jperpy_mixed_previous = 0;
maxJxTime = 0;
maxdeltaJx = 0;
maxdeltaJy = 0;
timeStart = 18;
EnergyFig = figure;
 set(gcf,'color','w');
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
    
    
    % [upparax_mixed,upparay_mixed,upparaz_mixed,upperpx_mixed,upperpy_mixed,upperpz_mixed] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,upx_mixed_data_interp,upy_mixed_data_interp,upz_mixed_data_interp);
    [ppx_mixed_data_interp] = n_mixed_data_interp.*(upx_mixed_data_interp);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    [ppy_mixed_data_interp] = n_mixed_data_interp.*(upy_mixed_data_interp);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    [ppz_mixed_data_interp] = n_mixed_data_interp.*(upz_mixed_data_interp);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    
    [mixed_parax,mixed_paray,mixed_paraz,mixed_perpx,mixed_perpy,mixed_perpz] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,ppx_mixed_data_interp,ppy_mixed_data_interp,ppz_mixed_data_interp);
    
    delta_mixed_perpx = (mixed_perpx).*10^3 * 10^-9.*q./nv0;
    delta_mixed_perpy = (mixed_perpy).*10^3 * 10^-9.*q./nv0;
    delta_mixed_perpz = (mixed_perpz).*10^3 * 10^-9.*q./nv0;
    
    
    %Mixed Electron Momentum
    pex_mixed = n_mixed_data_interp .* uex_tot;
    pey_mixed = n_mixed_data_interp .* uey_tot;
    pez_mixed = n_mixed_data_interp .* uez_tot;
    
    % [electron_parax,electron_paray,electron_paraz,electron_perpx,electron_perpy,electron_perpz] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_tot,pey_tot,pez_tot);
    % [electron_parax0,electron_paray0,electron_paraz0,electron_perpx0,electron_perpy0,electron_perpz0] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_tot0,pey_tot0,pez_tot0);
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
    [n_cold_data_interp] = (interpolate_Data(n_cold_data,1,i,nx,nz,X,Z,X2,Z2))/n0;
    [n_cold_data_interp0] = (interpolate_Data(n_cold_data,1,1,nx,nz,X,Z,X2,Z2))/n0;
    upx_cold_data_interp = (interpolate_Data(up_cold_data,1,i,nx,nz,X,Z,X2,Z2))./va;
    upy_cold_data_interp = (interpolate_Data(up_cold_data,2,i,nx,nz,X,Z,X2,Z2))./va;
    upz_cold_data_interp = (interpolate_Data(up_cold_data,3,i,nx,nz,X,Z,X2,Z2))./va;
    upx_cold_data_interp0 = (interpolate_Data(up_cold_data,1,1,nx,nz,X,Z,X2,Z2))./va;
    upy_cold_data_interp0 = (interpolate_Data(up_cold_data,2,1,nx,nz,X,Z,X2,Z2))./va;
    upz_cold_data_interp0 = (interpolate_Data(up_cold_data,3,1,nx,nz,X,Z,X2,Z2))./va;
    
    pex_cold = n_cold_data_interp .* uex_tot - n_cold_data_interp0 .* uex_tot0;
    pey_cold = n_cold_data_interp .* uey_tot - n_cold_data_interp0 .* uey_tot0;
    pez_cold = n_cold_data_interp .* uez_tot - n_cold_data_interp0 .* uez_tot0;
    
    [ppx_cold_data_interp] = (n_cold_data_interp.*(upx_cold_data_interp) - n_cold_data_interp0.*(upx_cold_data_interp0) ).*n0.*va;%.*((n_mixed_data_interp./n0 > nFS_threshold));
    [ppy_cold_data_interp] = (n_cold_data_interp.*(upy_cold_data_interp) - n_cold_data_interp0.*(upy_cold_data_interp0) ).*n0.*va;%.*((n_mixed_data_interp./n0 > nFS_threshold));
    [ppz_cold_data_interp] = (n_cold_data_interp.*(upz_cold_data_interp) - n_cold_data_interp0.*(upz_cold_data_interp0) ).*n0.*va;%.*((n_mixed_data_interp./n0 > nFS_threshold));
    JswdotE(i,:) = ((ppx_cold_data_interp(:,xcut)+pex_cold(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Exdata_interp(:,xcut) - Exdata_interp0(:,xcut))+ ...
                   ((ppy_cold_data_interp(:,xcut)+pey_cold(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Eydata_interp(:,xcut) - Eydata_interp0(:,xcut))+ ...
                   ((ppz_cold_data_interp(:,xcut)+pez_cold(:,xcut)).*10^3 * 10^-9.*q./nv0).*(Ezdata_interp(:,xcut) - Ezdata_interp0(:,xcut));
    
    JswdotE(i,:) = JswdotE(i,:)./(10^3 * 10^-9 * q ).* (nv0) .* (E0)       .* q * (1e-9) .*1000 * 0.5 * moverq*1000;
    
    %Calculate nsw*vz^2
    %Keep track of each time's value
    
    
    ke_cold(i,:) = n_cold_data_interp(:,xcut).*upz_cold_data_interp(:,xcut).*upz_cold_data_interp(:,xcut);
    ke_cold(i,:) = ke_cold(i,:).*(n0*1e-9).*(0.5).*(1.67e-27).*va.^2*1000^2; %units of 0.5* kg * 1/m^3 * m^2/s^2
    
    %Calculate Jfs dot E
    %Keep track of each time's value

    JfsdotE(i,:) = ((ppx_mixed_data_interp(:,xcut)+pex_mixed(:,xcut)).*10^3 * 10^-9.*q./nv0).*Exdata_interp(:,xcut) + ...
                   ((ppy_mixed_data_interp(:,xcut)+pey_mixed(:,xcut)).*10^3 * 10^-9.*q./nv0).*Eydata_interp(:,xcut) + ...
                   ((ppz_mixed_data_interp(:,xcut)+pez_mixed(:,xcut)).*10^3 * 10^-9.*q./nv0).*Ezdata_interp(:,xcut);
    
    JfsdotE(i,:) = JfsdotE(i,:)./(10^3 * 10^-9 * q ).* (nv0) .* (E0)       .* q * (1e-9) .*1000 * 0.5 * moverq*1000; 
    
    %plot KE_cold of boundary at each time step
    figure(EnergyFig)
    hold off
    %     yyaxis left
    yyaxis left
    plot(ke_cold(i,:),'b-','linewidth',1.5); hold on
    plot(sum(JswdotE),'b--','linewidth',1.5)
    %     yyaxis right
    %     plot(JfsdotE(i,:)); %0.5 = outpuSteps * dt. deltaT
    plot(sum(JfsdotE),'r--','linewidth',1.5)
    title('Energy Density')
    ylabel('kg/(m s^2)')
    xlabel('z [\lambda_i]')
    xlim([nz/2-50 nz/2+50])
    grid on
    yyaxis right
    hold off
    plot(Bmag(:,xcut),'linewidth',1)
    ylabel('\DeltaB [B0]')
    legend({'SW KE','SW \SigmaJ\cdotE\Deltat','FS \SigmaJ\cdotE\Deltat','\Delta|B|'})
    

    %plot JfsdotE of boundary at each time step....
end

% legend(string(5:timeFrame))

ndata_interp = imgaussfilt(ndata_interp./n0,0.1);


[Exdata_interp] = ((interpolate_Data(Edata,1,timeFrame,nx,nz,X,Z,X2,Z2)))/E0;
[Eydata_interp] = ((interpolate_Data(Edata,2,timeFrame,nx,nz,X,Z,X2,Z2)))/E0;



if nz==800
    ndata_interp= ndata_interp(200:600,:);
    nz=400;
end

[peakN,peakPos] = max(ndata_interp(:,xcut));
maxEx = max(abs(Exdata_interp(:,xcut)));
maxEy = max(abs(Eydata_interp(:,xcut)));


for i=peakPos:-1:1
    
    if ndata_interp(i,xcut) < 1
        compressionLeft = i+1;
        break;
    end
end
for i=peakPos:+1:nz
    
    if ndata_interp(i,xcut) < 1
        compressionRight = i-1;
        break;
    end
end

peakWidth = 0.5*(compressionRight-compressionLeft); %Units of Gyroradii
peakArea = 0.5*(sum(ndata_interp(compressionLeft:compressionRight,xcut)) .*peakWidth); %Units of n0 * gyroradii
expSpeed = 0.5*(peakPos - (nz-2)/2)/time; %UNits of cold gyroradii over gyroperiod

n=ndata_interp(:,xcut);

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

end
