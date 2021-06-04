clear; close all
A = [0,0.447058826684952,0.741176486015320;0.00787401571869850,0.451412707567215,0.743214488029480;0.0157480314373970,0.455766558647156,0.745252430438995;0.0236220471560955,0.460120439529419,0.747290432453156;0.0314960628747940,0.464474290609360,0.749328434467316;0.0393700785934925,0.468828171491623,0.751366376876831;0.0472440943121910,0.473182022571564,0.753404378890991;0.0551181100308895,0.477535903453827,0.755442321300507;0.0629921257495880,0.481889754533768,0.757480323314667;0.0708661451935768,0.486243635416031,0.759518325328827;0.0787401571869850,0.490597516298294,0.761556267738342;0.0866141766309738,0.494951367378235,0.763594269752502;0.0944881886243820,0.499305248260498,0.765632271766663;0.102362208068371,0.503659129142761,0.767670214176178;0.110236220061779,0.508012950420380,0.769708216190338;0.118110239505768,0.512366831302643,0.771746218204498;0.125984251499176,0.516720712184906,0.773784160614014;0.133858263492584,0.521074593067169,0.775822162628174;0.141732290387154,0.525428414344788,0.777860105037689;0.149606302380562,0.529782295227051,0.779898107051849;0.157480314373970,0.534136176109314,0.781936109066010;0.165354326367378,0.538490056991577,0.783974051475525;0.173228353261948,0.542843937873840,0.786012053489685;0.181102365255356,0.547197759151459,0.788050055503845;0.188976377248764,0.551551640033722,0.790087997913361;0.196850389242172,0.555905520915985,0.792125999927521;0.204724416136742,0.560259401798248,0.794164001941681;0.212598428130150,0.564613223075867,0.796201944351196;0.220472440123558,0.568967103958130,0.798239946365356;0.228346452116966,0.573320984840393,0.800277888774872;0.236220479011536,0.577674865722656,0.802315890789032;0.244094491004944,0.582028746604919,0.804353892803192;0.251968502998352,0.586382567882538,0.806391835212708;0.259842514991760,0.590736448764801,0.808429837226868;0.267716526985168,0.595090329647064,0.810467839241028;0.275590538978577,0.599444210529327,0.812505781650543;0.283464580774307,0.603798031806946,0.814543783664703;0.291338592767715,0.608151912689209,0.816581785678864;0.299212604761124,0.612505793571472,0.818619728088379;0.307086616754532,0.616859674453735,0.820657730102539;0.314960628747940,0.621213555335999,0.822695732116699;0.322834640741348,0.625567376613617,0.824733674526215;0.330708652734756,0.629921257495880,0.826771676540375;0.338582664728165,0.634275138378143,0.828809618949890;0.346456706523895,0.638629019260407,0.830847620964050;0.354330718517303,0.642982840538025,0.832885622978210;0.362204730510712,0.647336721420288,0.834923565387726;0.370078742504120,0.651690602302551,0.836961567401886;0.377952754497528,0.656044483184815,0.838999569416046;0.385826766490936,0.660398364067078,0.841037511825562;0.393700778484345,0.664752185344696,0.843075513839722;0.401574790477753,0.669106066226959,0.845113515853882;0.409448832273483,0.673459947109222,0.847151458263397;0.417322844266892,0.677813827991486,0.849189460277557;0.425196856260300,0.682167649269104,0.851227402687073;0.433070868253708,0.686521530151367,0.853265404701233;0.440944880247116,0.690875411033630,0.855303406715393;0.448818892240524,0.695229291915894,0.857341349124908;0.456692904233933,0.699583113193512,0.859379351139069;0.464566916227341,0.703936994075775,0.861417353153229;0.472440958023071,0.708290874958038,0.863455295562744;0.480314970016480,0.712644755840302,0.865493297576904;0.488188982009888,0.716998636722565,0.867531299591065;0.496062994003296,0.721352458000183,0.869569242000580;0.503937005996704,0.725706338882446,0.871607244014740;0.511811017990112,0.730060219764710,0.873645186424255;0.519685029983521,0.734414100646973,0.875683188438416;0.527559041976929,0.738767921924591,0.877721190452576;0.535433053970337,0.743121802806854,0.879759132862091;0.543307065963745,0.747475683689117,0.881797134876251;0.551181077957153,0.751829564571381,0.883835136890411;0.559055089950562,0.756183445453644,0.885873079299927;0.566929161548615,0.760537266731262,0.887911081314087;0.574803173542023,0.764891147613525,0.889949083328247;0.582677185535431,0.769245028495789,0.891987025737763;0.590551197528839,0.773598909378052,0.894025027751923;0.598425209522247,0.777952730655670,0.896062970161438;0.606299221515656,0.782306611537933,0.898100972175598;0.614173233509064,0.786660492420197,0.900138974189758;0.622047245502472,0.791014373302460,0.902176916599274;0.629921257495880,0.795368254184723,0.904214918613434;0.637795269489288,0.799722075462341,0.906252920627594;0.645669281482697,0.804075956344605,0.908290863037109;0.653543293476105,0.808429837226868,0.910328865051270;0.661417305469513,0.812783718109131,0.912366867065430;0.669291317462921,0.817137539386749,0.914404809474945;0.677165329456329,0.821491420269013,0.916442811489105;0.685039341449738,0.825845301151276,0.918480753898621;0.692913413047791,0.830199182033539,0.920518755912781;0.700787425041199,0.834553062915802,0.922556757926941;0.708661437034607,0.838906884193420,0.924594700336456;0.716535449028015,0.843260765075684,0.926632702350617;0.724409461021423,0.847614645957947,0.928670704364777;0.732283473014832,0.851968526840210,0.930708646774292;0.740157485008240,0.856322348117828,0.932746648788452;0.748031497001648,0.860676229000092,0.934784650802612;0.755905508995056,0.865030109882355,0.936822593212128;0.763779520988464,0.869383990764618,0.938860595226288;0.771653532981873,0.873737871646881,0.940898597240448;0.779527544975281,0.878091692924500,0.942936539649963;0.787401556968689,0.882445573806763,0.944974541664124;0.795275568962097,0.886799454689026,0.947012484073639;0.803149580955505,0.891153335571289,0.949050486087799;0.811023592948914,0.895507156848908,0.951088488101959;0.818897664546967,0.899861037731171,0.953126430511475;0.826771676540375,0.904214918613434,0.955164432525635;0.834645688533783,0.908568799495697,0.957202434539795;0.842519700527191,0.912922620773315,0.959240376949310;0.850393712520599,0.917276501655579,0.961278378963471;0.858267724514008,0.921630382537842,0.963316380977631;0.866141736507416,0.925984263420105,0.965354323387146;0.874015748500824,0.930338144302368,0.967392325401306;0.881889760494232,0.934691965579987,0.969430267810822;0.889763772487640,0.939045846462250,0.971468269824982;0.897637784481049,0.943399727344513,0.973506271839142;0.905511796474457,0.947753608226776,0.975544214248657;0.913385808467865,0.952107429504395,0.977582216262817;0.921259820461273,0.956461310386658,0.979620218276978;0.929133832454681,0.960815191268921,0.981658160686493;0.937007844448090,0.965169072151184,0.983696162700653;0.944881916046143,0.969522953033447,0.985734164714813;0.952755928039551,0.973876774311066,0.987772107124329;0.960629940032959,0.978230655193329,0.989810109138489;0.968503952026367,0.982584536075592,0.991848051548004;0.976377964019775,0.986938416957855,0.993886053562164;0.984251976013184,0.991292238235474,0.995924055576325;0.992125988006592,0.995646119117737,0.997961997985840;1,1,1;0.997150719165802,0.992800235748291,0.993627429008484;0.994301497936249,0.985600471496582,0.987254917621613;0.991452217102051,0.978400707244873,0.980882346630096;0.988602936267853,0.971201002597809,0.974509775638580;0.985753655433655,0.964001238346100,0.968137264251709;0.982904434204102,0.956801474094391,0.961764693260193;0.980055153369904,0.949601709842682,0.955392181873322;0.977205872535706,0.942401945590973,0.949019610881805;0.974356591701508,0.935202181339264,0.942647039890289;0.971507370471954,0.928002476692200,0.936274528503418;0.968658089637756,0.920802712440491,0.929901957511902;0.965808808803558,0.913602948188782,0.923529386520386;0.962959587574005,0.906403183937073,0.917156875133514;0.960110306739807,0.899203419685364,0.910784304141998;0.957261025905609,0.892003655433655,0.904411792755127;0.954411745071411,0.884803950786591,0.898039221763611;0.951562523841858,0.877604186534882,0.891666650772095;0.948713243007660,0.870404422283173,0.885294139385223;0.945863962173462,0.863204658031464,0.878921568393707;0.943014681339264,0.856004893779755,0.872548997402191;0.940165460109711,0.848805129528046,0.866176486015320;0.937316179275513,0.841605365276337,0.859803915023804;0.934466898441315,0.834405660629273,0.853431344032288;0.931617677211762,0.827205896377564,0.847058832645416;0.928768396377564,0.820006132125855,0.840686261653900;0.925919115543366,0.812806367874146,0.834313750267029;0.923069834709168,0.805606603622437,0.827941179275513;0.920220613479614,0.798406839370728,0.821568608283997;0.917371332645416,0.791207134723663,0.815196096897125;0.914522051811218,0.784007370471954,0.808823525905609;0.911672770977020,0.776807606220245,0.802450954914093;0.908823549747467,0.769607841968536,0.796078443527222;0.905974268913269,0.762408077716827,0.789705872535706;0.903124988079071,0.755208313465118,0.783333361148834;0.900275766849518,0.748008608818054,0.776960790157318;0.897426486015320,0.740808844566345,0.770588219165802;0.894577205181122,0.733609080314636,0.764215707778931;0.891727924346924,0.726409316062927,0.757843136787415;0.888878703117371,0.719209551811218,0.751470565795898;0.886029422283173,0.712009787559509,0.745098054409027;0.883180141448975,0.704810023307800,0.738725483417511;0.880330860614777,0.697610318660736,0.732352972030640;0.877481639385223,0.690410554409027,0.725980401039124;0.874632358551025,0.683210790157318,0.719607830047607;0.871783077716827,0.676011025905609,0.713235318660736;0.868933856487274,0.668811261653900,0.706862747669220;0.866084575653076,0.661611497402191,0.700490176677704;0.863235294818878,0.654411792755127,0.694117665290833;0.860386013984680,0.647212028503418,0.687745094299316;0.857536792755127,0.640012264251709,0.681372523307800;0.854687511920929,0.632812500000000,0.675000011920929;0.851838231086731,0.625612735748291,0.668627440929413;0.848988950252533,0.618412971496582,0.662254929542542;0.846139729022980,0.611213207244873,0.655882358551025;0.843290448188782,0.604013502597809,0.649509787559509;0.840441167354584,0.596813738346100,0.643137276172638;0.837591946125031,0.589613974094391,0.636764705181122;0.834742665290833,0.582414209842682,0.630392134189606;0.831893384456635,0.575214445590973,0.624019622802734;0.829044103622437,0.568014681339264,0.617647051811218;0.826194882392883,0.560814976692200,0.611274540424347;0.823345601558685,0.553615212440491,0.604901969432831;0.820496320724487,0.546415448188782,0.598529398441315;0.817647099494934,0.539215683937073,0.592156887054443;0.814797818660736,0.532015919685364,0.585784316062927;0.811948537826538,0.524816155433655,0.579411745071411;0.809099256992340,0.517616450786591,0.573039233684540;0.806250035762787,0.510416686534882,0.566666662693024;0.803400754928589,0.503216922283173,0.560294091701508;0.800551474094391,0.496017158031464,0.553921580314636;0.797702193260193,0.488817393779755,0.547549009323120;0.794852972030640,0.481617659330368,0.541176497936249;0.792003691196442,0.474417895078659,0.534803926944733;0.789154410362244,0.467218130826950,0.528431355953217;0.786305189132690,0.460018396377564,0.522058844566345;0.783455908298492,0.452818632125855,0.515686273574829;0.780606627464294,0.445618867874146,0.509313702583313;0.777757346630096,0.438419133424759,0.502941191196442;0.774908125400543,0.431219369173050,0.496568620204926;0.772058844566345,0.424019604921341,0.490196079015732;0.769209563732147,0.416819840669632,0.483823537826538;0.766360282897949,0.409620106220245,0.477450996637344;0.763511061668396,0.402420341968536,0.471078425645828;0.760661780834198,0.395220577716827,0.464705884456635;0.757812500000000,0.388020843267441,0.458333343267441;0.754963278770447,0.380821079015732,0.451960772275925;0.752113997936249,0.373621314764023,0.445588231086731;0.749264717102051,0.366421580314636,0.439215689897537;0.746415436267853,0.359221816062927,0.432843148708344;0.743566215038300,0.352022051811218,0.426470577716827;0.740716934204102,0.344822317361832,0.420098036527634;0.737867653369904,0.337622553110123,0.413725495338440;0.735018372535706,0.330422788858414,0.407352954149246;0.732169151306152,0.323223054409027,0.400980383157730;0.729319870471954,0.316023290157318,0.394607841968536;0.726470589637756,0.308823525905609,0.388235300779343;0.723621368408203,0.301623791456223,0.381862759590149;0.720772087574005,0.294424027204514,0.375490188598633;0.717922806739807,0.287224262952805,0.369117647409439;0.715073525905609,0.280024498701096,0.362745106220245;0.712224304676056,0.272824764251709,0.356372565031052;0.709375023841858,0.265625000000000,0.349999994039536;0.706525743007660,0.258425235748291,0.343627452850342;0.703676462173462,0.251225501298904,0.337254911661148;0.700827240943909,0.244025737047195,0.330882370471954;0.697977960109711,0.236825987696648,0.324509799480438;0.695128679275513,0.229626223444939,0.318137258291245;0.692279458045960,0.222426474094391,0.311764717102051;0.689430177211762,0.215226724743843,0.305392146110535;0.686580896377564,0.208026960492134,0.299019604921341;0.683731615543366,0.200827211141586,0.292647063732147;0.680882394313812,0.193627446889877,0.286274522542954;0.678033113479614,0.186427697539330,0.279901951551437;0.675183832645416,0.179227948188782,0.273529410362244;0.672334551811218,0.172028183937073,0.267156869173050;0.669485330581665,0.164828434586525,0.260784327983856;0.666636049747467,0.157628685235977,0.254411756992340;0.663786768913269,0.150428920984268,0.248039215803146;0.660937547683716,0.143229171633720,0.241666674613953;0.658088266849518,0.136029407382011,0.235294118523598;0.655238986015320,0.128829658031464,0.228921577334404;0.652389705181122,0.121629901230335,0.222549021244049;0.649540483951569,0.114430151879787,0.216176480054855;0.646691203117371,0.107230395078659,0.209803923964500;0.643841922283173,0.100030638277531,0.203431382775307;0.640992641448975,0.0928308814764023,0.197058826684952;0.638143420219421,0.0856311321258545,0.190686285495758;0.635294139385223,0.0784313753247261,0.184313729405403];
fig = figure('Position',[ 1 1 750 1150]);
outputFolder = '194';
outputDirectory = strcat('/import/c1/DAYSIDE/atvu/Run',outputFolder);
%cd(outputDirectory)
RunNumber= '194';

[qx,qy,qz,~,nx,ny,nz,~] = read_Coordinates(outputDirectory);
[X,Z,X2,Z2] = scale_Data(qx,qz);
timeSteps = 1192;

outputSteps = 25;
nt=	floor(timeSteps/outputSteps);
va = 48.95; %km/s
alpha = 1.9373612*10^(-20);
lambda_i = (qx(2)-qx(1));
q=1.6e-19;
MA=12;
dt = 1.7296e-2/2;output = outputSteps;
stepInterval = 1;
nFS_threshold =0.01;

nz_min = 2;
nz_max = nz-1;
nx_min = 2;
nx_max = nx-1;

gradPe = 0;
ele=0;
del = 1;
%%
[ndata] = read_Plasma('n',nt,nx,ny,nz,outputDirectory);
disp('n loaded')
[n_cold_data] = read_Plasma('n_cold',nt,nx,ny,nz,outputDirectory);
disp('n cold loaded')
[n_mixed_data] = read_Plasma('n_mixed',nt,nx,ny,nz,outputDirectory);
disp('n foreshock loaded')
[up_cold_data] = read_Plasma('up_cold',nt,nx,ny,nz,outputDirectory);
disp('u cold loaded')
[up_mixed_data] = read_Plasma('up_mixed',nt,nx,ny,nz,outputDirectory);
disp('u foreshock loaded')
[Jdata] = read_Plasma('Current',nt,nx,ny,nz,outputDirectory);
disp('J loaded')
[Bdata] = read_Plasma('B',nt,nx,ny,nz,outputDirectory);
disp('B loaded')
Btcdata = edge_to_center(Bdata);
[temp_cold_data] = read_Plasma('temp_cold',nt,nx,ny,nz,outputDirectory);
disp('t cold loaded')
[temp_mixed_data] = read_Plasma('temp_mixed',nt,nx,ny,nz,outputDirectory);
disp('t foreshock loaded')
[Edata] = read_Plasma('E',nt,nx,ny,nz,outputDirectory);
disp('E loaded')
[udata] = read_Plasma('Momentum',nt,nx,ny,nz,outputDirectory);
disp('v loaded')
[Tdata] = read_Plasma('Temp',nt,nx,ny,nz,outputDirectory);
disp('T loaded')
[gradPdata] = read_Plasma('gradP',nt,nx,ny,nz,outputDirectory);
disp('gradP loaded')
[tpdata] = read_Plasma('temp_xyz',nt,nx,ny,nz,outputDirectory);
disp('Temp xyz loaded')
[tpcolddata] = read_Plasma('temp_cold_xyz',nt,nx,ny,nz,outputDirectory);
disp('Temp Cold xyz loaded')
[tpmixeddata] = read_Plasma('temp_mixed_xyz',nt,nx,ny,nz,outputDirectory);
disp('Temp Mixed xyz loaded')
[uedata] = read_Plasma('ue',nt,nx,ny,nz,outputDirectory);
disp('ue loaded')
Ecdata = face_to_center(Edata);
ExBdata = crossf2(2*Ecdata,Btcdata);
uexBdata = crossf2(uedata,Btcdata); %To compare with E
Edata = face_to_center(2*Edata);
uexBxBdata = crossf2(uexBdata,Btcdata);

xcut = 120;
zmid = nz/2;
ddthickness = 24;
foreshockthickness = 300;
zrange = [200 - 49, 200 + 49];

moverq=1.0378e-8;
fileName = strcat('/import/c1/DAYSIDE/atvu/Runs/2d_Hybrid_Foreshock_Jperp10_HFA_',RunNumber,'_',string(xcut));
v = VideoWriter(fileName);
v.FrameRate= 10;
open(v);

plot_width= 1;
plot_height= 7;
plot_number = 1;

filterNumber = 0.1;
filterNumber2 = 0.01;
%% Initial State
[temp_cold_data_interp0] = interpolate_Data(temp_cold_data,1,1,nx,nz,X,Z,X2,Z2);
temp_cold_data_interp0 = (temp_cold_data_interp0);
t0 = mean(temp_cold_data_interp0(floor(nz-nz/4):nz-1,2:end-4),'all');
t0 = imgaussfilt(t0,1);

[n_cold_data_interp0] = interpolate_Data(n_cold_data,1,1,nx,nz,X,Z,X2,Z2);
n_cold_data_interp0 = (n_cold_data_interp0);
n0 = mean(n_cold_data_interp0(3:nz-3,2:end-4),'all');
n0 = imgaussfilt(n0,1);

E0 = (5e-9)/moverq* va;
J0 = (5e-9)/ ((lambda_i));
nv0 = (5e-9)/((4*pi*10^-7*(lambda_i)*10^3));
B0 = 5e-9/moverq;

[Exdata_interp0] = ((interpolate_Data(Edata,1,1,nx,nz,X,Z,X2,Z2)));
[Eydata_interp0] = ((interpolate_Data(Edata,2,1,nx,nz,X,Z,X2,Z2)));
[Eydata_interp0_y1] = ((interpolate_Data_y(Edata,2,1,nx,nz,X,Z,X2,Z2)));
[Ezdata_interp0] = ((interpolate_Data(Edata,3,1,nx,nz,X,Z,X2,Z2)));

[gradPexdata_interp0] = ((interpolate_Data(gradPdata,1,1,nx,nz,X,Z,X2,Z2)));
[gradPeydata_interp0] = ((interpolate_Data(gradPdata,2,1,nx,nz,X,Z,X2,Z2)));
[gradPezdata_interp0] = ((interpolate_Data(gradPdata,3,1,nx,nz,X,Z,X2,Z2)));

[Bxdata_interp0] = (interpolate_Data(Bdata,1,1,nx,nz,X,Z,X2,Z2));
[Bxdata_interp0_y1] = (interpolate_Data_y(Bdata,1,1,nx,nz,X,Z,X2,Z2));

[Bydata_interp0] = (interpolate_Data(Bdata,2,1,nx,nz,X,Z,X2,Z2));
[Bydata_interp0_y1] = (interpolate_Data_y(Bdata,2,1,nx,nz,X,Z,X2,Z2));


[Bzdata_interp0] = (interpolate_Data(Bdata,3,1,nx,nz,X,Z,X2,Z2));
[Bzdata_interp0_y1] = (interpolate_Data(Bdata,3,1,nx,nz,X,Z,X2,Z2));

[Btcxdata_interp0] = imgaussfilt((interpolate_Data(Btcdata,1,1,nx,nz,X,Z,X2,Z2)),filterNumber2);
[Btcydata_interp0] = imgaussfilt((interpolate_Data(Btcdata,2,1,nx,nz,X,Z,X2,Z2)),filterNumber2);
[Btczdata_interp0] = imgaussfilt((interpolate_Data(Btcdata,3,1,nx,nz,X,Z,X2,Z2)),filterNumber2);


% ExBx0 =  (Eydata_interp0.*Bzdata_interp0-Ezdata_interp0.*Bydata_interp0)./(Bxdata_interp0.^2 + Bydata_interp0.^2 + Bzdata_interp0.^2);
% ExBy0 = -(Exdata_interp0.*Bzdata_interp0-Ezdata_interp0.*Bxdata_interp0)./(Bxdata_interp0.^2 + Bydata_interp0.^2 + Bzdata_interp0.^2);
% ExBz0 =  (Exdata_interp0.*Bydata_interp0-Eydata_interp0.*Bxdata_interp0)./(Bxdata_interp0.^2 + Bydata_interp0.^2 + Bzdata_interp0.^2);

ExBx0 = (interpolate_Data(ExBdata,1,1,nx,nz,X,Z,X2,Z2))./(Btcxdata_interp0.^2 + Btcydata_interp0.^2 + Btczdata_interp0.^2);
ExBy0 = (interpolate_Data(ExBdata,2,1,nx,nz,X,Z,X2,Z2))./(Btcxdata_interp0.^2 + Btcydata_interp0.^2 + Btczdata_interp0.^2);
ExBz0 = (interpolate_Data(ExBdata,3,1,nx,nz,X,Z,X2,Z2))./(Btcxdata_interp0.^2 + Btcydata_interp0.^2 + Btczdata_interp0.^2);

% ExBx0 = (interpolate_Data(ExBdata,1,1,nx,nz,X,Z,X2,Z2))./(Bxdata_interp0.^2 + Bydata_interp0.^2 + Bzdata_interp0.^2);
% ExBy0 = (interpolate_Data(ExBdata,2,1,nx,nz,X,Z,X2,Z2))./(Bxdata_interp0.^2 + Bydata_interp0.^2 + Bzdata_interp0.^2);
% ExBz0 = (interpolate_Data(ExBdata,3,1,nx,nz,X,Z,X2,Z2))./(Bxdata_interp0.^2 + Bydata_interp0.^2 + Bzdata_interp0.^2);



%Parallel Speed
upx_mixed_bulk = -2*MA*Bxdata_interp0 ./ (Bxdata_interp0.^2 + Bydata_interp0.^2 + Bzdata_interp0.^2).^(1/2);
upy_mixed_bulk = -2*MA*Bydata_interp0 ./ (Bxdata_interp0.^2 + Bydata_interp0.^2 + Bzdata_interp0.^2).^(1/2);
upz_mixed_bulk = -2*MA*Bzdata_interp0 ./ (Bxdata_interp0.^2 + Bydata_interp0.^2 + Bzdata_interp0.^2).^(1/2);

for k=nz/2+1:nz
    upx_mixed_bulk(k,:) = 0.0;%-2*FS_Ma*Bxdata_interp0(nz/2,:) ./ (Bxdata_interp0(nz/2,:).^2 + Bydata_interp0(nz/2,:).^2 + Bzdata_interp0(nz/2,:).^2).^(1/2);
    upy_mixed_bulk(k,:) = 0.0;%-2*FS_Ma*Bydata_interp0(nz/2,:) ./ (Bxdata_interp0(nz/2,:).^2 + Bydata_interp0(nz/2,:).^2 + Bzdata_interp0(nz/2,:).^2).^(1/2);
    upz_mixed_bulk(k,:) = 0.0;%-2*FS_Ma*Bzdata_interp0(nz/2,:) ./ (Bxdata_interp0(nz/2,:).^2 + Bydata_interp0(nz/2,:).^2 + Bzdata_interp0(nz/2,:).^2).^(1/2);
end

[upx_cold_data_interp0] = ((interpolate_Data(up_cold_data,1,1,nx,nz,X,Z,X2,Z2)));
[upy_cold_data_interp0] = ((interpolate_Data(up_cold_data,2,1,nx,nz,X,Z,X2,Z2)));
[upz_cold_data_interp0] = ((interpolate_Data(up_cold_data,3,1,nx,nz,X,Z,X2,Z2)));

[ppx_cold_data_interp0] = n_cold_data_interp0.*(upx_cold_data_interp0);%-ele*uex_cold0);0.996.*
[ppy_cold_data_interp0] = n_cold_data_interp0.*(upy_cold_data_interp0);%-ele*uey_cold0);0.996.*
[ppz_cold_data_interp0] = n_cold_data_interp0.*(upz_cold_data_interp0);%-ele*uez_cold0);0.996.*

[Jxdata_interp0] = (interpolate_Data(Jdata,1,1,nx,nz,X,Z,X2,Z2));%.*ndata_interp.*alpha;
[Jydata_interp0] = (interpolate_Data(Jdata,2,1,nx,nz,X,Z,X2,Z2));%.*ndata_interp.*alpha;
[Jzdata_interp0] = (interpolate_Data(Jdata,3,1,nx,nz,X,Z,X2,Z2));%.*ndata_interp.*alpha;

% [curlBx_interp0,curlBy_interp0,curlBz_interp0] = calculate_curlB(Bxdata_interp0,Bxdata_interp0_y1,Bydata_interp0,Bydata_interp0_y1,Bzdata_interp0,Bzdata_interp0_y1,lambda_i,nx_min,nx_max,nz_min,nz_max);
% 
% curlBx_interp0 = [zeros(1,nx_max-nx_min+1);curlBx_interp0;zeros(1,nx_max-nx_min+1)];
% curlBy_interp0 = [zeros(1,nx_max-nx_min+1);curlBy_interp0;zeros(1,nx_max-nx_min+1)];
% curlBz_interp0 = [zeros(1,nx_max-nx_min+1);curlBz_interp0;zeros(1,nx_max-nx_min+1)];
% 
% curlBx_interp0 = [zeros(nz,1),curlBx_interp0,zeros(nz,1)];
% curlBy_interp0 = [zeros(nz,1),curlBy_interp0,zeros(nz,1)];
% curlBz_interp0 = [zeros(nz,1),curlBz_interp0,zeros(nz,1)];

[ndata_interp0] = (interpolate_Data(ndata,1,1,nx,nz,X,Z,X2,Z2));
[uxdata_interp0] = (interpolate_Data(udata,1,1,nx,nz,X,Z,X2,Z2));
[uydata_interp0] = (interpolate_Data(udata,2,1,nx,nz,X,Z,X2,Z2));
[uzdata_interp0] = (interpolate_Data(udata,3,1,nx,nz,X,Z,X2,Z2));

uex_tot0 = uxdata_interp0 - Jxdata_interp0*moverq./ (1000*4*pi*10^-7 .* q .* ndata_interp0*10^-9)./1000;
uey_tot0 = uydata_interp0 - Jydata_interp0*moverq./ (1000*4*pi*10^-7 .* q .* ndata_interp0*10^-9)./1000;
uez_tot0 = uzdata_interp0 - Jzdata_interp0*moverq./ (1000*4*pi*10^-7 .* q .* ndata_interp0*10^-9)./1000;

[uex_tot0] =- (interpolate_Data(uedata,1,1,nx,nz,X,Z,X2,Z2));
[uey_tot0] = -(interpolate_Data(uedata,2,1,nx,nz,X,Z,X2,Z2));
[uez_tot0] = -(interpolate_Data(uedata,3,1,nx,nz,X,Z,X2,Z2));



[~,~,~,ueperpx0,ueperpy0,ueperpz0] = calculate_componentsVector(Btcxdata_interp0,Btcydata_interp0,Btczdata_interp0,uex_tot0,uey_tot0,uez_tot0);
% [~,~,~,ueperpx0,ueperpy0,ueperpz0] = calculate_componentsVector(Bxdata_interp0,Bydata_interp0,Bzdata_interp0,uex_tot0,uey_tot0,uez_tot0);

% B03 = (Btcxdata_interp0.^2 + Btcydata_interp0.^2 + Btczdata_interp0.^2).^(2/2);
% [ueperpx0] = (interpolate_Data(uexBxBdata,1,1,nx,nz,X,Z,X2,Z2))./B03;
% [ueperpy0] = (interpolate_Data(uexBxBdata,2,1,nx,nz,X,Z,X2,Z2))./B03;
% [ueperpz0] = (interpolate_Data(uexBxBdata,3,1,nx,nz,X,Z,X2,Z2))./B03;

% uexBx0 =  -(uey_tot0.*Bzdata_interp0-uez_tot0.*Bydata_interp0)./(va);
% uexBy0 = (uex_tot0.*Bzdata_interp0-uez_tot0.*Bxdata_interp0)./(va);
% uexBz0 =  -(uex_tot0.*Bydata_interp0-uey_tot0.*Bxdata_interp0)./(va);

uexBx0 = interpolate_Data(uexBdata,1,1,nx,nz,X,Z,X2,Z2);
uexBy0 = interpolate_Data(uexBdata,2,1,nx,nz,X,Z,X2,Z2);
uexBz0 = interpolate_Data(uexBdata,3,1,nx,nz,X,Z,X2,Z2);

pex_tot0 =  (ndata_interp0.*uex_tot0);
pey_tot0 =  (ndata_interp0.*uey_tot0);
pez_tot0 =  (ndata_interp0.*uez_tot0);


for i=1:stepInterval:nt
    i

    [ha,~] = tight_subplot(plot_height,plot_width,[0.01 0.01],0.1,0.1);
    h = sgtitle(sprintf('time = %2.2f gyroperiods at x=%3d',output*dt*double(i),xcut));
    plot_number = 1;
    axes_count = 1;
    set(gcf,'color','w');
    colormap(A)
    
    %% Data Interp
    [n_cold_data_interp] = (interpolate_Data(n_cold_data,1,i,nx,nz,X,Z,X2,Z2));
    [n_mixed_data_interp] = (interpolate_Data(n_mixed_data,1,i,nx,nz,X,Z,X2,Z2));
    
    [temp_cold_data_interp] = (interpolate_Data(temp_cold_data,1,i,nx,nz,X,Z,X2,Z2));
    
    [tempx_cold_data_interp] = (interpolate_Data(tpcolddata,1,i,nx,nz,X,Z,X2,Z2));
    tempx_cold_data_interp(end-3:end,:) = 0;
    [tempy_cold_data_interp] = (interpolate_Data(tpcolddata,2,i,nx,nz,X,Z,X2,Z2));
    tempy_cold_data_interp(end-3:end,:) = 0;
    [tempz_cold_data_interp] = (interpolate_Data(tpcolddata,3,i,nx,nz,X,Z,X2,Z2));
    tempz_cold_data_interp(end-3:end,:) = 0;
    [tempx_cold_data_interp_y1] = (interpolate_Data_y(tpcolddata,1,i,nx,nz,X,Z,X2,Z2));
    tempx_cold_data_interp_y1(end-3:end,:) = 0;
    [tempy_cold_data_interp_y1] = (interpolate_Data_y(tpcolddata,2,i,nx,nz,X,Z,X2,Z2));
    tempy_cold_data_interp_y1(end-3:end,:) = 0;
    [tempz_cold_data_interp_y1] = (interpolate_Data_y(tpcolddata,3,i,nx,nz,X,Z,X2,Z2));
    tempz_cold_data_interp_y1(end-3:end,:) = 0;
    
    [tempx_mixed_data_interp] = (interpolate_Data(tpmixeddata,1,i,nx,nz,X,Z,X2,Z2));
    tempx_mixed_data_interp(end-3:end,:) = 0;
    [tempy_mixed_data_interp] = (interpolate_Data(tpmixeddata,2,i,nx,nz,X,Z,X2,Z2));
    tempy_mixed_data_interp(end-3:end,:) = 0;
    [tempz_mixed_data_interp] = (interpolate_Data(tpmixeddata,3,i,nx,nz,X,Z,X2,Z2));
    tempz_mixed_data_interp(end-3:end,:) = 0;
    [tempx_mixed_data_interp_y1] = (interpolate_Data_y(tpmixeddata,1,i,nx,nz,X,Z,X2,Z2));
    tempx_mixed_data_interp_y1(end-3:end,:) = 0;
    [tempy_mixed_data_interp_y1] = (interpolate_Data_y(tpmixeddata,2,i,nx,nz,X,Z,X2,Z2));
    tempy_mixed_data_interp_y1(end-3:end,:) = 0;
    [tempz_mixed_data_interp_y1] = (interpolate_Data_y(tpmixeddata,3,i,nx,nz,X,Z,X2,Z2));
    tempz_mixed_data_interp_y1(end-3:end,:) = 0;
    
    
    %Electric Fields
    [Exdata_interp] = ((interpolate_Data(Edata,1,i,nx,nz,X,Z,X2,Z2)));
    [Eydata_interp] = ((interpolate_Data(Edata,2,i,nx,nz,X,Z,X2,Z2)));
    [Eydata_interp_y1] = ((interpolate_Data_y(Edata,2,i,nx,nz,X,Z,X2,Z2)));
    [Ezdata_interp] = ((interpolate_Data(Edata,3,i,nx,nz,X,Z,X2,Z2)));
    
    
    %Div E
    partialExdata_interp = (Exdata_interp(nz_min:nz_max,nx_min:nx_max)-Exdata_interp(nz_min:nz_max,nx_min-1:nx_max-1))./lambda_i;
    partialEydata_interp = (Eydata_interp(nz_min:nz_max,nx_min:nx_max)-Eydata_interp_y1(nz_min:nz_max,nx_min:nx_max))./lambda_i;
    partialEzdata_interp = (Ezdata_interp(nz_min:nz_max,nx_min:nx_max)-Ezdata_interp(nz_min-1:nz_max-1,nx_min:nx_max))./lambda_i;
    divEdata_interp = (partialExdata_interp + partialEydata_interp + partialEzdata_interp)./(E0/lambda_i);
    
    
    
    %Delta Electric Fields
    delta_Exdata_interp = (Exdata_interp-del*Exdata_interp0)./E0;
    delta_Eydata_interp = (Eydata_interp-del*Eydata_interp0)./E0;
    delta_Eydata_interp_y1 = (Eydata_interp_y1-Eydata_interp0_y1)./E0;
    delta_Ezdata_interp = (Ezdata_interp-del*Ezdata_interp0)./E0;
    
    %Delta divE
    partialdeltaExdata_interp = (delta_Exdata_interp(nz_min:nz_max,nx_min:nx_max)-del*delta_Exdata_interp(nz_min:nz_max,nx_min-1:nx_max-1))./lambda_i;
    partialdeltaEydata_interp = (delta_Eydata_interp(nz_min:nz_max,nx_min:nx_max)-del*delta_Eydata_interp_y1(nz_min:nz_max,nx_min:nx_max))./lambda_i;
    partialdeltaEzdata_interp = (delta_Ezdata_interp(nz_min:nz_max,nx_min:nx_max)-del*delta_Ezdata_interp(nz_min-1:nz_max-1,nx_min:nx_max))./lambda_i;
    divdeltaEdata_interp = ((partialdeltaExdata_interp + partialdeltaEydata_interp + partialdeltaEzdata_interp)./(E0/lambda_i));
    
    
    %Magnetic Fields
    [Bxdata_interp] = (interpolate_Data(Bdata,1,i,nx,nz,X,Z,X2,Z2));
    [Bxdata_interp_y1] = (interpolate_Data_y(Bdata,1,i,nx,nz,X,Z,X2,Z2));
    [Bydata_interp] = ((interpolate_Data(Bdata,2,i,nx,nz,X,Z,X2,Z2)));
    [Bydata_interp_y1] = ((interpolate_Data_y(Bdata,2,i,nx,nz,X,Z,X2,Z2)));
    [Bzdata_interp] = ((interpolate_Data(Bdata,3,i,nx,nz,X,Z,X2,Z2)));
    [Bzdata_interp_y1] = ((interpolate_Data(Bdata,3,i,nx,nz,X,Z,X2,Z2)));
    
    [Btcxdata_interp] = imgaussfilt((interpolate_Data(Btcdata,1,i,nx,nz,X,Z,X2,Z2)),filterNumber2);
    [Btcydata_interp] = imgaussfilt((interpolate_Data(Btcdata,2,i,nx,nz,X,Z,X2,Z2)),filterNumber2);
    [Btczdata_interp] = imgaussfilt((interpolate_Data(Btcdata,3,i,nx,nz,X,Z,X2,Z2)),filterNumber2);
    
    %Delta Magnetic Fields
    delta_Bxdata_interp = Bxdata_interp - del*Bxdata_interp0;
    delta_Bydata_interp = Bydata_interp - del*Bydata_interp0;
    delta_Bzdata_interp = Bzdata_interp - del*Bzdata_interp0;
    
    %ExB
%     ExBx =  (Eydata_interp.*Bzdata_interp-Ezdata_interp.*Bydata_interp)./(Bxdata_interp.^2 + Bydata_interp.^2 + Bzdata_interp.^2);
%     ExBy = -(Exdata_interp.*Bzdata_interp-Ezdata_interp.*Bxdata_interp)./(Bxdata_interp.^2 + Bydata_interp.^2 + Bzdata_interp.^2);
%     ExBz =  (Exdata_interp.*Bydata_interp-Eydata_interp.*Bxdata_interp)./(Bxdata_interp.^2 + Bydata_interp.^2 + Bzdata_interp.^2);
    ExBx = (interpolate_Data(ExBdata,1,i,nx,nz,X,Z,X2,Z2))./(Btcxdata_interp.^2 + Btcydata_interp.^2 + Btczdata_interp.^2);
    ExBy = (interpolate_Data(ExBdata,2,i,nx,nz,X,Z,X2,Z2))./(Btcxdata_interp.^2 + Btcydata_interp.^2 + Btczdata_interp.^2);
    ExBz = (interpolate_Data(ExBdata,3,i,nx,nz,X,Z,X2,Z2))./(Btcxdata_interp.^2 + Btcydata_interp.^2 + Btczdata_interp.^2);

%     ExBx = (interpolate_Data(ExBdata,1,i,nx,nz,X,Z,X2,Z2))./(Bxdata_interp.^2 + Bydata_interp.^2 + Bzdata_interp.^2);
%     ExBy = (interpolate_Data(ExBdata,2,i,nx,nz,X,Z,X2,Z2))./(Bxdata_interp.^2 + Bydata_interp.^2 + Bzdata_interp.^2);
%     ExBz = (interpolate_Data(ExBdata,3,i,nx,nz,X,Z,X2,Z2))./(Bxdata_interp.^2 + Bydata_interp.^2 + Bzdata_interp.^2);

    %Delta ExB
    delta_ExBx = (ExBx-del*ExBx0)./va;
    delta_ExBy = (ExBy-del*ExBy0)./va;
    delta_ExBz = (ExBz-del*ExBz0)./va;
    
    
    %Temperatures
    [~,~,~,perpx,perpy,perpz]=calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,tempx_cold_data_interp,tempy_cold_data_interp,tempz_cold_data_interp);
    tempperp_cold_data_interp = perpx+perpy+perpz;
    [~,~,~,perpx,perpy,perpz]=calculate_componentsVector(Bxdata_interp_y1,Bydata_interp_y1,Bzdata_interp_y1,tempx_cold_data_interp_y1,tempy_cold_data_interp_y1,tempz_cold_data_interp_y1);
    tempperp_cold_data_interp_y1 = perpx+perpy+perpz;
    
    [~,~,~,perpx,perpy,perpz]=calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,tempx_mixed_data_interp,tempy_mixed_data_interp,tempz_mixed_data_interp);
    tempperp_mixed_data_interp = perpx+perpy+perpz;
    [~,~,~,perpx,perpy,perpz]=calculate_componentsVector(Bxdata_interp_y1,Bydata_interp_y1,Bzdata_interp_y1,tempx_mixed_data_interp_y1,tempy_mixed_data_interp_y1,tempz_mixed_data_interp_y1);
    tempperp_mixed_data_interp_y1 = perpx+perpy+perpz;
    
    
    %Proton moments
    [ndata_interp]  = (interpolate_Data(ndata,1,i,nx,nz,X,Z,X2,Z2));
    [uxdata_interp] = (interpolate_Data(udata,1,i,nx,nz,X,Z,X2,Z2));
    [uydata_interp] = (interpolate_Data(udata,2,i,nx,nz,X,Z,X2,Z2));
    [uzdata_interp] = (interpolate_Data(udata,3,i,nx,nz,X,Z,X2,Z2));
    
    %Cold
    upx_cold_data_interp = ((interpolate_Data(up_cold_data,1,i,nx,nz,X,Z,X2,Z2)));
    upy_cold_data_interp = ((interpolate_Data(up_cold_data,2,i,nx,nz,X,Z,X2,Z2)));
    upz_cold_data_interp = ((interpolate_Data(up_cold_data,3,i,nx,nz,X,Z,X2,Z2)));
    
    %Mixed
    upx_mixed_data_interp = (interpolate_Data(up_mixed_data,1,i,nx,nz,X,Z,X2,Z2));
    upy_mixed_data_interp = (interpolate_Data(up_mixed_data,2,i,nx,nz,X,Z,X2,Z2));
    upz_mixed_data_interp = (interpolate_Data(up_mixed_data,3,i,nx,nz,X,Z,X2,Z2));
    
    %Currents
    [Jxdata_interp] = (interpolate_Data(Jdata,1,i,nx,nz,X,Z,X2,Z2));
    [Jydata_interp] = (interpolate_Data(Jdata,2,i,nx,nz,X,Z,X2,Z2));
    [Jzdata_interp] = (interpolate_Data(Jdata,3,i,nx,nz,X,Z,X2,Z2));
    
    
%     %Calculate curlB 
%     [curlBx_interp,curlBy_interp,curlBz_interp] = calculate_curlB(Bxdata_interp,Bxdata_interp_y1,Bydata_interp,Bydata_interp_y1,Bzdata_interp,Bzdata_interp_y1,lambda_i,nx_min,nx_max,nz_min,nz_max);
%     curlBx_interp = imgaussfilt(curlBx_interp,filterNumber);
%     curlBy_interp = imgaussfilt(curlBy_interp,filterNumber);
%     curlBz_interp = imgaussfilt(curlBz_interp,filterNumber);
%     
%     curlBx_interp = [zeros(1,nx_max-nx_min+1);curlBx_interp;zeros(1,nx_max-nx_min+1)];
%     curlBy_interp = [zeros(1,nx_max-nx_min+1);curlBy_interp;zeros(1,nx_max-nx_min+1)];
%     curlBz_interp = [zeros(1,nx_max-nx_min+1);curlBz_interp;zeros(1,nx_max-nx_min+1)];
%     
%     curlBx_interp = [zeros(nz,1),curlBx_interp,zeros(nz,1)];
%     curlBy_interp = [zeros(nz,1),curlBy_interp,zeros(nz,1)];
%     curlBz_interp = [zeros(nz,1),curlBz_interp,zeros(nz,1)];
    

%Electron Bulk Flow

    
    uex_tot = uxdata_interp - Jxdata_interp*moverq./ (1000*4*pi*10^-7 .* q .* ndata_interp*10^-9)./1000;
    uey_tot = uydata_interp - Jydata_interp*moverq./ (1000*4*pi*10^-7 .* q .* ndata_interp*10^-9)./1000;
    uez_tot = uzdata_interp - Jzdata_interp*moverq./ (1000*4*pi*10^-7 .* q .* ndata_interp*10^-9)./1000;
    
    [uex_tot] = -(interpolate_Data(uedata,1,i,nx,nz,X,Z,X2,Z2));
    [uey_tot] = -(interpolate_Data(uedata,2,i,nx,nz,X,Z,X2,Z2));
    [uez_tot] = -(interpolate_Data(uedata,3,i,nx,nz,X,Z,X2,Z2));
%     

    %Electron Bulk Momentum
    pex_tot = (ndata_interp.*uex_tot);
    pey_tot = (ndata_interp.*uey_tot);
    pez_tot = (ndata_interp.*uez_tot);
    
    [electron_parax,electron_paray,electron_paraz,electron_perpx,electron_perpy,electron_perpz] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_tot,pey_tot,pez_tot);
    [electron_parax0,electron_paray0,electron_paraz0,electron_perpx0,electron_perpy0,electron_perpz0] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_tot0,pey_tot0,pez_tot0);
    
    %Delta Electron Bulk Momentum Components
    delta_electron_perpx = (electron_perpx-del*electron_perpx0).*10^3 * 10^-9.*-q./nv0;
    delta_electron_perpy = (electron_perpy-del*electron_perpy0).*10^3 * 10^-9.*-q./nv0;
    delta_electron_perpz = (electron_perpz-del*electron_perpz0).*10^3 * 10^-9.*-q./nv0;
    
    
    %decomposition of electron bulk flow into cold and warm
    %Cold Electron Momentum
    pex_cold = n_cold_data_interp .* uex_tot;
    pey_cold = n_cold_data_interp .* uey_tot;
    pez_cold = n_cold_data_interp .* uez_tot;
    pex_cold0 = n_cold_data_interp0 .* uex_tot0;
    pey_cold0 = n_cold_data_interp0 .* uey_tot0;
    pez_cold0 = n_cold_data_interp0 .* uez_tot0;
    
    [electron_parax_cold,electron_paray_cold,electron_paraz_cold,electron_perpx_cold,electron_perpy_cold,electron_perpz_cold] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_cold,pey_cold,pez_cold);
    [electron_parax_cold0,electron_paray_cold0,electron_paraz_cold0,electron_perpx_cold0,electron_perpy_cold0,electron_perpz_cold0] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_cold0,pey_cold0,pez_cold0);
    
    delta_electron_perpx_cold = (electron_perpx_cold-del*electron_perpx_cold0).*10^3 * 10^-9.*-q./nv0;
    delta_electron_perpy_cold = (electron_perpy_cold-del*electron_perpy_cold0).*10^3 * 10^-9.*-q./nv0;
    delta_electron_perpz_cold = (electron_perpz_cold-del*electron_perpz_cold0).*10^3 * 10^-9.*-q./nv0;
    
    %Mixed Electron Momentum
    pex_mixed = n_mixed_data_interp .* uex_tot;
    pey_mixed = n_mixed_data_interp .* uey_tot;
    pez_mixed = n_mixed_data_interp .* uez_tot;


    [electron_parax_mixed,electron_paray_mixed,electron_paraz_mixed,electron_perpx_mixed,electron_perpy_mixed,electron_perpz_mixed] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_mixed,pey_mixed,pez_mixed);

    delta_electron_perpx_mixed = (electron_perpx_mixed).*10^3 * 10^-9.*-q./nv0;
    delta_electron_perpy_mixed = (electron_perpy_mixed).*10^3 * 10^-9.*-q./nv0;
    delta_electron_perpz_mixed = (electron_perpz_mixed).*10^3 * 10^-9.*-q./nv0;
    

    
    %E from uexB
%     uexBx =  -(uey_tot.*Bzdata_interp-uez_tot.*Bydata_interp)./(va);
%     uexBy = (uex_tot.*Bzdata_interp-uez_tot.*Bxdata_interp)./(va);
%     uexBz =  -(uex_tot.*Bydata_interp-uey_tot.*Bxdata_interp)./(va);
    uexBx = interpolate_Data(uexBdata,1,i,nx,nz,X,Z,X2,Z2);
    uexBy = interpolate_Data(uexBdata,2,i,nx,nz,X,Z,X2,Z2);
    uexBz = interpolate_Data(uexBdata,3,i,nx,nz,X,Z,X2,Z2);

    delta_uexBx = (uexBx - del*uexBx0)./E0;
    delta_uexBy = (uexBy - del*uexBy0)./E0;
    delta_uexBz = (uexBz - del*uexBz0)./E0;
    
    %Delta Electron Bulk Flow
    delta_uex_tot = uex_tot-del*uex_tot0;
    delta_uey_tot = uey_tot-del*uey_tot0;
    delta_uez_tot = uez_tot-del*uez_tot0;
    
    %ue perp

    
    [~,~,~,ueperpx,ueperpy,ueperpz] = calculate_componentsVector(Btcxdata_interp,Btcydata_interp,Btczdata_interp,uex_tot,uey_tot,uez_tot);
    [~,~,~,ueperpx0,ueperpy0,ueperpz0] = calculate_componentsVector(Btcxdata_interp,Btcydata_interp,Btczdata_interp,uex_tot0,uey_tot0,uez_tot0);

    %     [~,~,~,ueperpx,ueperpy,ueperpz] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,uex_tot,uey_tot,uez_tot);
%     B03 = (Btcxdata_interp.^2 + Btcydata_interp.^2 + Btczdata_interp.^2).^(2/2);
%     [ueperpx] = (interpolate_Data(uexBxBdata,1,i,nx,nz,X,Z,X2,Z2))./B03;
%     [ueperpy] = (interpolate_Data(uexBxBdata,2,i,nx,nz,X,Z,X2,Z2))./B03;
%     [ueperpz] = (interpolate_Data(uexBxBdata,3,i,nx,nz,X,Z,X2,Z2))./B03;
%     
    
    delta_ueperpx = (ueperpx - del*ueperpx0)./(va);
    delta_ueperpy = (ueperpy - del*ueperpy0)./(va);
    delta_ueperpz = (ueperpz - del*ueperpz0)./(va);
    
    
    %Delta Cold Flow
    [upparax_cold,upparay_cold,upparaz_cold,upperpx_cold,upperpy_cold,upperpz_cold] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,upx_cold_data_interp,upy_cold_data_interp,upz_cold_data_interp);
    [upparax_cold0,upparay_cold0,upparaz_cold0,upperpx_cold0,upperpy_cold0,upperpz_cold0] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,upx_cold_data_interp0,upy_cold_data_interp0,upz_cold_data_interp0);
    
    delta_upperpx_cold = upperpx_cold-del*upperpx_cold0;
    delta_upperpy_cold = upperpy_cold-del*upperpy_cold0;
    delta_upperpz_cold = upperpz_cold-del*upperpz_cold0;
    
    [ppx_cold_data_interp] = n_cold_data_interp.*(upx_cold_data_interp);
    [ppy_cold_data_interp] = n_cold_data_interp.*(upy_cold_data_interp);
    [ppz_cold_data_interp] = n_cold_data_interp.*(upz_cold_data_interp);
    
    [cold_parax,cold_paray,cold_paraz,cold_perpx,cold_perpy,cold_perpz] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,ppx_cold_data_interp,ppy_cold_data_interp,ppz_cold_data_interp);
    [cold_parax0,cold_paray0,cold_paraz0,cold_perpx0,cold_perpy0,cold_perpz0] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,ppx_cold_data_interp0,ppy_cold_data_interp0,ppz_cold_data_interp0);
    
    delta_cold_perpx = (cold_perpx-del*cold_perpx0).*10^3 * 10^-9.*q./nv0;
    delta_cold_perpy = (cold_perpy-del*cold_perpy0).*10^3 * 10^-9.*q./nv0;
    delta_cold_perpz = (cold_perpz-del*cold_perpz0).*10^3 * 10^-9.*q./nv0;
    


    %Delta Mixed Bulk Flow
    [upparax_mixed,upparay_mixed,upparaz_mixed,upperpx_mixed,upperpy_mixed,upperpz_mixed] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,upx_mixed_data_interp,upy_mixed_data_interp,upz_mixed_data_interp);

    delta_upperpx_mixed = upperpx_mixed;%.*(n_mixed_data_interp./n0 > nFS_threshold);
    delta_upperpy_mixed = upperpy_mixed;%.*(n_mixed_data_interp./n0 > nFS_threshold);
    delta_upperpz_mixed = upperpz_mixed;%.*(n_mixed_data_interp./n0 > nFS_threshold);
    
    [ppx_mixed_data_interp] = n_mixed_data_interp.*(upx_mixed_data_interp);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    [ppy_mixed_data_interp] = n_mixed_data_interp.*(upy_mixed_data_interp);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    [ppz_mixed_data_interp] = n_mixed_data_interp.*(upz_mixed_data_interp);%.*((n_mixed_data_interp./n0 > nFS_threshold));
   
    [mixed_parax,mixed_paray,mixed_paraz,mixed_perpx,mixed_perpy,mixed_perpz] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,ppx_mixed_data_interp,ppy_mixed_data_interp,ppz_mixed_data_interp);

    delta_mixed_perpx = (mixed_perpx).*10^3 * 10^-9.*q./nv0;
    delta_mixed_perpy = (mixed_perpy).*10^3 * 10^-9.*q./nv0;
    delta_mixed_perpz = (mixed_perpz).*10^3 * 10^-9.*q./nv0;
    
    %Current Decomp
    [Jparax,Jparay,Jparaz,Jperpx,Jperpy,Jperpz] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,Jxdata_interp,Jydata_interp,Jzdata_interp);
    [Jparax0,Jparay0,Jparaz0,Jperpx0,Jperpy0,Jperpz0] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,Jxdata_interp0,Jydata_interp0,Jzdata_interp0);
    
    delta_Jperpx = (Jperpx-del*Jperpx0).*moverq./J0;
    delta_Jperpy = (Jperpy-del*Jperpy0).*moverq./J0;
    delta_Jperpz = (Jperpz-del*Jperpz0).*moverq./J0;
    
    
    %Calculate Totals
    Jperpx_tot_woJd = delta_cold_perpx(2:end-1,2:end-1) + delta_mixed_perpx(2:end-1,2:end-1) + delta_electron_perpx_cold(2:end-1,2:end-1) + delta_electron_perpx_mixed(2:end-1,2:end-1);
    Jperpy_tot_woJd = delta_cold_perpy(2:end-1,2:end-1) + delta_mixed_perpy(2:end-1,2:end-1) + delta_electron_perpy_cold(2:end-1,2:end-1) + delta_electron_perpy_mixed(2:end-1,2:end-1);
    
    Jperpx_cold = delta_cold_perpx(2:end-1,2:end-1) + delta_electron_perpx_cold(2:end-1,2:end-1);
    Jperpx_mixed = delta_mixed_perpx(2:end-1,2:end-1) + delta_electron_perpx_mixed(2:end-1,2:end-1);
    
    Jperpy_cold = delta_cold_perpy(2:end-1,2:end-1) + delta_electron_perpy_cold(2:end-1,2:end-1);
    Jperpy_mixed = delta_mixed_perpy(2:end-1,2:end-1) + delta_electron_perpy_mixed(2:end-1,2:end-1);
    
    delta_Jperpx_minus_delta_electron_perpx = delta_Jperpx;%- delta_electron_perpx;
    delta_Jperpy_minus_delta_electron_perpy = delta_Jperpy;%- delta_electron_perpy;
    
%     %bulk flow check
%     uswx = n_cold_data_interp.*upx_cold_data_interp-n_cold_data_interp0.*upx_cold_data_interp0;
%     uswy = n_cold_data_interp.*upy_cold_data_interp-n_cold_data_interp0.*upy_cold_data_interp0;
%     uswz = n_cold_data_interp.*upz_cold_data_interp-n_cold_data_interp0.*upz_cold_data_interp0;
%     
%     ufsx = n_mixed_data_interp.*upx_mixed_data_interp;
%     ufsy = n_mixed_data_interp.*upy_mixed_data_interp;
%     ufsz = n_mixed_data_interp.*upz_mixed_data_interp;
%     
%     usumx = uswx + ufsx;
%     usumy = uswy + ufsy;
%     usumz = uswz + ufsz;
%     
%     utotx = ndata_interp.*uxdata_interp-ndata_interp0.*uxdata_interp0;
%     utoty = ndata_interp.*uydata_interp-ndata_interp0.*uydata_interp0;
%     utotz = ndata_interp.*uzdata_interp-ndata_interp0.*uzdata_interp0;
%     
%     udiffx = (utotx-usumx)./utotx;
%     udiffy = (utoty-usumy)./utoty;
%     udiffz = (utotz-usumz)./utotz;
    %% Plotting
    %Smoothing
    n_cold_data_interp = imgaussfilt(n_cold_data_interp,filterNumber);
    n_cold_data_interp0 = imgaussfilt(n_cold_data_interp0,filterNumber);
    n_mixed_data_interp = imgaussfilt(n_mixed_data_interp,filterNumber);
    
%     axes(ha(axes_count));axes_count=axes_count+1;
%     hold off
%     yyaxis left
%     plot(smooth((n_cold_data_interp(2:end-1,xcut)-n_cold_data_interp0(2:end-1,xcut))./n0),'b','linewidth',1)
%     hold on
%     ylim([ -max(abs(ylim)) max(abs(ylim)) ])
%     yyaxis right
%     hold on
%     plot(smooth((n_mixed_data_interp(2:end-1,xcut))./n0),'r','linewidth',1)
%     set(gca,'ycolor','r','yminortick','on')
%     ylim([0 0.24])
%     yyaxis left
%     set(gca,'ycolor','b')
%     ylabel({'\Deltan/n0'},'FontSize',14)
%     xlim(zrange)
%     set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'xticklabel',[])
%     nlegend = legend('sw','fs','Location','northeast','Orientation','horizontal'); legend('boxoff')
    
    delta_Bxdata_interp = imgaussfilt(delta_Bxdata_interp,filterNumber);
    delta_Bydata_interp = imgaussfilt(delta_Bydata_interp,filterNumber);
    
    axes(ha(axes_count));axes_count=axes_count+1;
    plot(smooth(delta_Bxdata_interp(:,xcut)./B0),'b','linewidth',1)
    hold on
    plot(smooth((delta_Bydata_interp(:,xcut))./B0),'r','linewidth',1)
    hold off
    ylim([ -max(abs(ylim)) max(abs(ylim)) ])
        if del == 1
        ylabel({'\DeltaB/E0'},'FontSize',14)
    else
        ylabel({'B/B0'},'FontSize',14)
    end
    xlim(zrange)
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    legend('Bx','By','Location','northeast','Orientation','horizontal'); legend('boxoff')
    
    delta_Exdata_interp = imgaussfilt(delta_Exdata_interp,filterNumber);
    delta_Ezdata_interp = imgaussfilt(delta_Ezdata_interp,filterNumber);
    delta_Eydata_interp = imgaussfilt(delta_Eydata_interp,filterNumber);

%     axes(ha(axes_count));axes_count=axes_count+1;
%     yyaxis left
%     plot(smooth(delta_Exdata_interp(:,xcut)),'b','linewidth',1)
%     hold on
%     yyaxis right
%     plot(smooth((delta_Ezdata_interp(:,xcut))),'r','linewidth',1)
%     hold on
%     plot(smooth((delta_Eydata_interp(:,xcut))),'g','linewidth',1)
%     hold off
%     ylim([ -max(abs(ylim)) max(abs(ylim)) ])
%     Erightlimits  = ylim;
%     yyaxis left
%     ylim([ -max(abs(ylim)) max(abs(ylim)) ])
%     Eleftlimits = ylim;
%     if del == 1
%         ylabel({'\DeltaE/E0'},'FontSize',14)
%     else
%         ylabel({'E/E0'},'FontSize',14)
%     end
%     xlim(zrange)
%     set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
%     legend('Ex','Ez','Ey','Location','northeast','Orientation','horizontal'); legend('boxoff')
    
    delta_uexBx = imgaussfilt(delta_uexBx,filterNumber);
    delta_uexBy = imgaussfilt(delta_uexBy,filterNumber);
    delta_uexBz = imgaussfilt(delta_uexBz,filterNumber);
    
%     axes(ha(axes_count));axes_count=axes_count+1;
%     yyaxis left
%     plot(smooth(delta_uexBx(:,xcut)),'b','linewidth',1)
%     hold on
%     yyaxis right
%     plot(smooth((delta_uexBz(:,xcut))),'r','linewidth',1)
%     hold on
%     plot(smooth((delta_uexBy(:,xcut))),'g','linewidth',1)
%     hold off
%     ylim(Erightlimits)
% %     ylim([ -max(abs(ylim)) max(abs(ylim)) ])
%     yyaxis left
%     ylim(Eleftlimits)
% %     ylim([ -max(abs(ylim)) max(abs(ylim)) ])
%     if del == 1
%         ylabel({'\DeltaE/E0'},'FontSize',14)
%     else
%         ylabel({'E/E0'},'FontSize',14)
%     end
%     xlim(zrange)
%     set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
%     legend('uexBx','uexBz','uexBy','Location','northeast','Orientation','horizontal'); legend('boxoff')
    
    delta_ExBx = imgaussfilt(delta_ExBx,filterNumber);
    delta_ExBy = imgaussfilt(delta_ExBy,filterNumber);
    delta_ExBz = imgaussfilt(delta_ExBz,filterNumber);
    
%     axes(ha(axes_count));axes_count=axes_count+1;
%     yyaxis left
%     plot(smooth(delta_ExBx(:,xcut)),'b','linewidth',1)
%     hold on
%     plot(smooth((delta_ExBy(:,xcut))),'g','linewidth',1)
%     yyaxis right
%     plot(smooth((delta_ExBz(:,xcut))),'r','linewidth',1)
%     hold on
%     hold off
%     ylim([ -max(abs(ylim)) max(abs(ylim)) ])
%     ExBrightlimits = ylim;
%     yyaxis left
%     ylim([ -max(abs(ylim)) max(abs(ylim)) ])
%     ExBleftlimits = ylim;
%     %     ylim([-0.05 0.05])
%     if del == 1
%     ylabel({'\DeltaExB/va'},'FontSize',14)
%     else
%      ylabel({'ExB/va'},'FontSize',14)   
%     end
%     xlim(zrange)
%     set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
%     legend('ExBx','ExBy','ExBz','Location','northeast','Orientation','horizontal'); legend('boxoff')
    
%     delta_ueperpx = imgaussfilt(delta_ueperpx,filterNumber);
%     delta_ueperpy = imgaussfilt(delta_ueperpy,filterNumber);
%     delta_ueperpz = imgaussfilt(delta_ueperpz,filterNumber);
    
%     axes(ha(axes_count));axes_count=axes_count+1;
%     yyaxis left
%     plot(smooth(delta_ueperpx(:,xcut)),'b','linewidth',1)
%     hold on
%     plot(smooth((delta_ueperpy(:,xcut))),'g','linewidth',1)
%     yyaxis right
%     plot(smooth((delta_ueperpz(:,xcut))),'r','linewidth',1)
%     hold on
%     hold off
%     ylim(ExBrightlimits)
%     yyaxis left
%     ylim(ExBleftlimits)
% %     ylim([ -max(abs(ylim)) max(abs(ylim)) ])
%     if del == 1
%     ylabel({'\Deltaue/va'},'FontSize',14)
%     else
%         ylabel({'u_e/va'},'FontSize',14)
%     end
%     xlim(zrange)
%     set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
%     legend('u_eperpx','u_eperpy','u_eperpz','Location','northeast','Orientation','horizontal'); legend('boxoff')
    

    % [uex_tot0] =- (interpolate_Data(uedata,1,1,nx,nz,X,Z,X2,Z2));
% [uey_tot0] = -(interpolate_Data(uedata,2,1,nx,nz,X,Z,X2,Z2));
% [uez_tot0] = -(interpolate_Data(uedata,3,1,nx,nz,X,Z,X2,Z2));
%     diffuex = uex_tot + (interpolate_Data(uedata,1,i,nx,nz,X,Z,X2,Z2));
%     diffuey = uey_tot + (interpolate_Data(uedata,2,i,nx,nz,X,Z,X2,Z2));
%     diffuez = uez_tot + (interpolate_Data(uedata,3,i,nx,nz,X,Z,X2,Z2));
%     axes(ha(axes_count));axes_count=axes_count+1;
%     plot(smooth((diffuex(:,xcut))./va),'b','linewidth',1)
%     hold on
%     plot(smooth((diffuey(:,xcut))./va),'g','linewidth',1)
%     plot(smooth((diffuez(:,xcut))./va),'r','linewidth',1)
%     hold off
%     ylim([ -0.025 0.025 ])
%     ylabel({'diff ue'},'FontSize',14)
%     xlim(zrange)
%     set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
%     legend('x','y','z','Location','northeast','Orientation','horizontal'); legend('boxoff')
    
    delta_upperpx_cold =imgaussfilt(delta_upperpx_cold,filterNumber)./va;
    delta_upperpx_mixed=imgaussfilt(delta_upperpx_mixed,filterNumber)./va;
    delta_ueperpx = imgaussfilt(delta_ueperpx,filterNumber);
    
    
    axes(ha(axes_count));axes_count=axes_count+1;
    yyaxis left
    plot(smooth(delta_upperpx_cold(:,xcut)),'b','linewidth',1)
    hold on
    plot(smooth((delta_ueperpx(:,xcut))),'r','linewidth',1)
    ylim([ -max(abs(ylim)) max(abs(ylim)) ])
    yyaxis right
    plot(smooth((delta_upperpx_mixed(:,xcut))),'g','linewidth',1)
    %     ylim(ExBrightlimits)
    %     yyaxis left
    %     ylim(ExBleftlimits)
    ylim([ -max(abs(ylim)) max(abs(ylim)) ])
    yyaxis left
    if del == 1
        ylabel({'\Deltau\perpx/va'},'FontSize',14)
    else
        ylabel({'u\perpx/va'},'FontSize',14)
    end
    xlim(zrange)
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    legend('\Deltau_{sw}','\Deltau_{e}','u_{fs}','Location','northeast','Orientation','horizontal'); legend('boxoff')

    
    
    
    
    delta_electron_perpx_cold = imgaussfilt(delta_electron_perpx_cold,filterNumber);
    delta_cold_perpx = imgaussfilt(delta_cold_perpx,filterNumber);
    delta_electron_perpx_mixed = imgaussfilt(delta_electron_perpx_mixed,filterNumber);
    delta_mixed_perpx = imgaussfilt(delta_mixed_perpx,filterNumber);
    
    axes(ha(axes_count));axes_count=axes_count+1;
    plot(smooth(delta_cold_perpx(2:end-1,xcut)),'b','linewidth',1)
    hold on
    plot(smooth(delta_electron_perpx_cold(2:end-1,xcut)),'b--','linewidth',1)
    plot(smooth(delta_mixed_perpx(2:end-1,xcut)),'r','linewidth',1)
    
    plot(smooth(delta_electron_perpx_mixed(2:end-1,xcut)),'r--','linewidth',1)
    hold off
    ylim([ -max(abs(ylim)) max(abs(ylim)) ])
    if del==1
        ylabel({'\DeltaJ\perpx/J0'},'FontSize',14)
    else
        ylabel({'J\perpx/J0'},'FontSize',14)
    end
    xlim(zrange)
    Alegend = legend('\Delta(nqu)_{sw}','\Delta(nqu_e)_{sw}','(nqu)_{fs}','(nqu_e)_{fs}','Location','northeast','Orientation','horizontal'); legend('boxoff')
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    
    Jperpx_cold = imgaussfilt(Jperpx_cold,filterNumber);
    Jperpx_mixed = imgaussfilt(Jperpx_mixed,filterNumber);
    
%     axes(ha(axes_count));axes_count=axes_count+1;
%     plot(smooth(Jperpx_cold(:,xcut)),'b','linewidth',1)
%     hold on
%     plot(smooth((Jperpx_mixed(:,xcut))),'r','linewidth',1)
%     hold off
%     ylim([ -max(abs(ylim)) max(abs(ylim)) ])
%     if del==1
%         ylabel({'\DeltaJ\perpx/J0'},'FontSize',14)
%     else
%         ylabel({'J\perpx/J0'},'FontSize',14)
%     end
%     xlim(zrange)
%     set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
%     AAlegend = legend('\Delta(nqu_i)_{sw} - \Delta(nqu_e)_{sw}','(nqu_i)_{fs} - \Delta(nqu_e)_{fs}','Location','northeast','Orientation','horizontal'); legend('boxoff')
    
    Jperpx_tot_woJd = imgaussfilt(Jperpx_tot_woJd,filterNumber);
    delta_Jperpx_minus_delta_electron_perpx = imgaussfilt(delta_Jperpx_minus_delta_electron_perpx,10*filterNumber);

    
    axes(ha(axes_count));axes_count=axes_count+1;
    plot(smooth(Jperpx_tot_woJd(:,xcut)),'b','linewidth',1)
    hold on
    plot(smooth((delta_Jperpx_minus_delta_electron_perpx(2:end-1,xcut))),'r','linewidth',1)
    hold off
    ylim([ -max(abs(ylim)) max(abs(ylim)) ])
    if del==1
        ylabel({'\DeltaJ\perpx/J0'},'FontSize',14)
    else
        ylabel({'J\perpx/J0'},'FontSize',14)
    end
    xlim(zrange)
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    Blegend = legend('\Delta(nqu)_{sw} + \Delta(nqu)_e + (nqu)_{fs}','\DeltaJperp','Location','northeast','Orientation','horizontal'); legend('boxoff')
    
    %% PerpX Direction
    delta_upperpy_cold =imgaussfilt(delta_upperpy_cold,filterNumber)./va;
    delta_upperpy_mixed=imgaussfilt(delta_upperpy_mixed,filterNumber)./va;
    delta_ueperpy = imgaussfilt(delta_ueperpy,filterNumber);
    
    
    axes(ha(axes_count));axes_count=axes_count+1;
    yyaxis left
    plot(smooth(delta_upperpy_cold(:,xcut)),'b','linewidth',1)
    hold on
    plot(smooth((delta_ueperpy(:,xcut))),'r','linewidth',1)
    ylim([ -max(abs(ylim)) max(abs(ylim)) ])
    yyaxis right
    plot(smooth((delta_upperpy_mixed(:,xcut))),'g','linewidth',1)
    
    
    %     ylim(ExBrightlimits)
    %     yyaxis left
    %     ylim(ExBleftlimits)
    ylim([ -max(abs(ylim)) max(abs(ylim)) ])
    yyaxis left
    if del == 1
        ylabel({'\Deltau\perpy/va'},'FontSize',14)
    else
        ylabel({'u\perpy/va'},'FontSize',14)
    end
    xlim(zrange)
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    legend('\Deltau_{sw}','\Deltau_{e}','u_{fs}','Location','northeast','Orientation','horizontal'); legend('boxoff')
    


    delta_electron_perpy_cold = imgaussfilt(delta_electron_perpy_cold,filterNumber);
    delta_cold_perpy = imgaussfilt(delta_cold_perpy,filterNumber);
    delta_electron_perpy_mixed = imgaussfilt(delta_electron_perpy_mixed,filterNumber);
    delta_mixed_perpy = imgaussfilt(delta_mixed_perpy,filterNumber);
    
    axes(ha(axes_count));axes_count=axes_count+1;
    plot(smooth(delta_cold_perpy(2:end-1,xcut)),'b','linewidth',1)
    hold on
    plot(smooth(delta_electron_perpy_cold(2:end-1,xcut)),'b--','linewidth',1)
    plot(smooth(delta_mixed_perpy(2:end-1,xcut)),'r','linewidth',1)
    plot(smooth(delta_electron_perpy_mixed(2:end-1,xcut)),'r--','linewidth',1)
    hold off
    ylim([ -max(abs(ylim)) max(abs(ylim)) ])
    if del==1 
       ylabel({'\DeltaJ\perpy/J0'},'FontSize',14) 
    else
    ylabel({'J\perpy/J0'},'FontSize',14)
    end
    xlim(zrange)
    Clegend = legend('\Delta(nqu)_{sw}','\Delta(nqu_e)_{sw}','(nqu)_{fs}','(nqu_e)_{fs}','Location','northeast','Orientation','horizontal'); legend('boxoff')
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    
    Jperpy_cold = imgaussfilt(Jperpy_cold,filterNumber);
    Jperpy_mixed = imgaussfilt(Jperpy_mixed,filterNumber);    
    
    
   
%     plot(smooth(Jperpy_cold(:,xcut)),'b','linewidth',1)
%     hold on
%     plot(smooth((Jperpy_mixed(2:end-1,xcut))),'r','linewidth',1)
%     hold off
%     ylim([ -max(abs(ylim)) max(abs(ylim)) ])
%     if del==1 
%        ylabel({'\DeltaJ\perpy/J0'},'FontSize',14) 
%     else
%     ylabel({'J\perpy/J0'},'FontSize',14)
%     end
%     xlim(zrange)
%     set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
%     CClegend = legend('(nqu_i)_{sw} - (nqu_e)_{sw}','(nqu_i)_{fs} - (nqu_e)_{fs}','Location','northeast','Orientation','horizontal'); legend('boxoff')
    
    Jperpy_tot_woJd = imgaussfilt(Jperpy_tot_woJd,filterNumber);
    delta_Jperpy_minus_delta_electron_perpy = imgaussfilt(delta_Jperpy_minus_delta_electron_perpy,10*filterNumber);
    
    axes(ha(axes_count));axes_count=axes_count+1; %#ok<*LAXES>
    plot(smooth(Jperpy_tot_woJd(:,xcut)),'b','linewidth',1)
    hold on
    plot(smooth((delta_Jperpy_minus_delta_electron_perpy(2:end-1,xcut))),'r','linewidth',1)
    ylim([ -max(abs(ylim)) max(abs(ylim)) ])
    hold off
    if del==1 
       ylabel({'\DeltaJ\perpy/J0'},'FontSize',14) 
    else
    ylabel({'J\perpy/J0'},'FontSize',14)
    end
    xlim(zrange)
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5); xlabel({'Z','[\lambda_i]'},'FontSize',14)
    Dlegend = legend('\Delta(nqu)_{sw} + \Delta(nqu)_e + (nqu)_{fs}','\DeltaJperp','Location','northeast','Orientation','horizontal'); legend('boxoff')
   
    %% Draw
    drawnow
        fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/',RunNumber,'/','2d_Hybrid_Foreshock_paperFig5_',RunNumber,'_',string(i));
        print(gcf,'-dpng','-r200','-loose',fileNamePNG); 
    g(i) = getframe(fig); %#ok<SAGROW>
    writeVideo(v,g(i));
    
    delete(h)
    delete(Alegend)
    delete(Blegend)
    delete(Clegend)
    delete(Dlegend)
    delete(ha)
    
end
close(v)
[h, w, p] = size(g(1).cdata);  % use 1st frame to get dimensions
close
hf = figure;
set(hf, 'position', [ 1 1 800 1000]);
axis off
movie(hf,g,10)