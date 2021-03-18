clear; close all
A = [0,0.447058826684952,0.741176486015320;0.00787401571869850,0.451412707567215,0.743214488029480;0.0157480314373970,0.455766558647156,0.745252430438995;0.0236220471560955,0.460120439529419,0.747290432453156;0.0314960628747940,0.464474290609360,0.749328434467316;0.0393700785934925,0.468828171491623,0.751366376876831;0.0472440943121910,0.473182022571564,0.753404378890991;0.0551181100308895,0.477535903453827,0.755442321300507;0.0629921257495880,0.481889754533768,0.757480323314667;0.0708661451935768,0.486243635416031,0.759518325328827;0.0787401571869850,0.490597516298294,0.761556267738342;0.0866141766309738,0.494951367378235,0.763594269752502;0.0944881886243820,0.499305248260498,0.765632271766663;0.102362208068371,0.503659129142761,0.767670214176178;0.110236220061779,0.508012950420380,0.769708216190338;0.118110239505768,0.512366831302643,0.771746218204498;0.125984251499176,0.516720712184906,0.773784160614014;0.133858263492584,0.521074593067169,0.775822162628174;0.141732290387154,0.525428414344788,0.777860105037689;0.149606302380562,0.529782295227051,0.779898107051849;0.157480314373970,0.534136176109314,0.781936109066010;0.165354326367378,0.538490056991577,0.783974051475525;0.173228353261948,0.542843937873840,0.786012053489685;0.181102365255356,0.547197759151459,0.788050055503845;0.188976377248764,0.551551640033722,0.790087997913361;0.196850389242172,0.555905520915985,0.792125999927521;0.204724416136742,0.560259401798248,0.794164001941681;0.212598428130150,0.564613223075867,0.796201944351196;0.220472440123558,0.568967103958130,0.798239946365356;0.228346452116966,0.573320984840393,0.800277888774872;0.236220479011536,0.577674865722656,0.802315890789032;0.244094491004944,0.582028746604919,0.804353892803192;0.251968502998352,0.586382567882538,0.806391835212708;0.259842514991760,0.590736448764801,0.808429837226868;0.267716526985168,0.595090329647064,0.810467839241028;0.275590538978577,0.599444210529327,0.812505781650543;0.283464580774307,0.603798031806946,0.814543783664703;0.291338592767715,0.608151912689209,0.816581785678864;0.299212604761124,0.612505793571472,0.818619728088379;0.307086616754532,0.616859674453735,0.820657730102539;0.314960628747940,0.621213555335999,0.822695732116699;0.322834640741348,0.625567376613617,0.824733674526215;0.330708652734756,0.629921257495880,0.826771676540375;0.338582664728165,0.634275138378143,0.828809618949890;0.346456706523895,0.638629019260407,0.830847620964050;0.354330718517303,0.642982840538025,0.832885622978210;0.362204730510712,0.647336721420288,0.834923565387726;0.370078742504120,0.651690602302551,0.836961567401886;0.377952754497528,0.656044483184815,0.838999569416046;0.385826766490936,0.660398364067078,0.841037511825562;0.393700778484345,0.664752185344696,0.843075513839722;0.401574790477753,0.669106066226959,0.845113515853882;0.409448832273483,0.673459947109222,0.847151458263397;0.417322844266892,0.677813827991486,0.849189460277557;0.425196856260300,0.682167649269104,0.851227402687073;0.433070868253708,0.686521530151367,0.853265404701233;0.440944880247116,0.690875411033630,0.855303406715393;0.448818892240524,0.695229291915894,0.857341349124908;0.456692904233933,0.699583113193512,0.859379351139069;0.464566916227341,0.703936994075775,0.861417353153229;0.472440958023071,0.708290874958038,0.863455295562744;0.480314970016480,0.712644755840302,0.865493297576904;0.488188982009888,0.716998636722565,0.867531299591065;0.496062994003296,0.721352458000183,0.869569242000580;0.503937005996704,0.725706338882446,0.871607244014740;0.511811017990112,0.730060219764710,0.873645186424255;0.519685029983521,0.734414100646973,0.875683188438416;0.527559041976929,0.738767921924591,0.877721190452576;0.535433053970337,0.743121802806854,0.879759132862091;0.543307065963745,0.747475683689117,0.881797134876251;0.551181077957153,0.751829564571381,0.883835136890411;0.559055089950562,0.756183445453644,0.885873079299927;0.566929161548615,0.760537266731262,0.887911081314087;0.574803173542023,0.764891147613525,0.889949083328247;0.582677185535431,0.769245028495789,0.891987025737763;0.590551197528839,0.773598909378052,0.894025027751923;0.598425209522247,0.777952730655670,0.896062970161438;0.606299221515656,0.782306611537933,0.898100972175598;0.614173233509064,0.786660492420197,0.900138974189758;0.622047245502472,0.791014373302460,0.902176916599274;0.629921257495880,0.795368254184723,0.904214918613434;0.637795269489288,0.799722075462341,0.906252920627594;0.645669281482697,0.804075956344605,0.908290863037109;0.653543293476105,0.808429837226868,0.910328865051270;0.661417305469513,0.812783718109131,0.912366867065430;0.669291317462921,0.817137539386749,0.914404809474945;0.677165329456329,0.821491420269013,0.916442811489105;0.685039341449738,0.825845301151276,0.918480753898621;0.692913413047791,0.830199182033539,0.920518755912781;0.700787425041199,0.834553062915802,0.922556757926941;0.708661437034607,0.838906884193420,0.924594700336456;0.716535449028015,0.843260765075684,0.926632702350617;0.724409461021423,0.847614645957947,0.928670704364777;0.732283473014832,0.851968526840210,0.930708646774292;0.740157485008240,0.856322348117828,0.932746648788452;0.748031497001648,0.860676229000092,0.934784650802612;0.755905508995056,0.865030109882355,0.936822593212128;0.763779520988464,0.869383990764618,0.938860595226288;0.771653532981873,0.873737871646881,0.940898597240448;0.779527544975281,0.878091692924500,0.942936539649963;0.787401556968689,0.882445573806763,0.944974541664124;0.795275568962097,0.886799454689026,0.947012484073639;0.803149580955505,0.891153335571289,0.949050486087799;0.811023592948914,0.895507156848908,0.951088488101959;0.818897664546967,0.899861037731171,0.953126430511475;0.826771676540375,0.904214918613434,0.955164432525635;0.834645688533783,0.908568799495697,0.957202434539795;0.842519700527191,0.912922620773315,0.959240376949310;0.850393712520599,0.917276501655579,0.961278378963471;0.858267724514008,0.921630382537842,0.963316380977631;0.866141736507416,0.925984263420105,0.965354323387146;0.874015748500824,0.930338144302368,0.967392325401306;0.881889760494232,0.934691965579987,0.969430267810822;0.889763772487640,0.939045846462250,0.971468269824982;0.897637784481049,0.943399727344513,0.973506271839142;0.905511796474457,0.947753608226776,0.975544214248657;0.913385808467865,0.952107429504395,0.977582216262817;0.921259820461273,0.956461310386658,0.979620218276978;0.929133832454681,0.960815191268921,0.981658160686493;0.937007844448090,0.965169072151184,0.983696162700653;0.944881916046143,0.969522953033447,0.985734164714813;0.952755928039551,0.973876774311066,0.987772107124329;0.960629940032959,0.978230655193329,0.989810109138489;0.968503952026367,0.982584536075592,0.991848051548004;0.976377964019775,0.986938416957855,0.993886053562164;0.984251976013184,0.991292238235474,0.995924055576325;0.992125988006592,0.995646119117737,0.997961997985840;1,1,1;0.997150719165802,0.992800235748291,0.993627429008484;0.994301497936249,0.985600471496582,0.987254917621613;0.991452217102051,0.978400707244873,0.980882346630096;0.988602936267853,0.971201002597809,0.974509775638580;0.985753655433655,0.964001238346100,0.968137264251709;0.982904434204102,0.956801474094391,0.961764693260193;0.980055153369904,0.949601709842682,0.955392181873322;0.977205872535706,0.942401945590973,0.949019610881805;0.974356591701508,0.935202181339264,0.942647039890289;0.971507370471954,0.928002476692200,0.936274528503418;0.968658089637756,0.920802712440491,0.929901957511902;0.965808808803558,0.913602948188782,0.923529386520386;0.962959587574005,0.906403183937073,0.917156875133514;0.960110306739807,0.899203419685364,0.910784304141998;0.957261025905609,0.892003655433655,0.904411792755127;0.954411745071411,0.884803950786591,0.898039221763611;0.951562523841858,0.877604186534882,0.891666650772095;0.948713243007660,0.870404422283173,0.885294139385223;0.945863962173462,0.863204658031464,0.878921568393707;0.943014681339264,0.856004893779755,0.872548997402191;0.940165460109711,0.848805129528046,0.866176486015320;0.937316179275513,0.841605365276337,0.859803915023804;0.934466898441315,0.834405660629273,0.853431344032288;0.931617677211762,0.827205896377564,0.847058832645416;0.928768396377564,0.820006132125855,0.840686261653900;0.925919115543366,0.812806367874146,0.834313750267029;0.923069834709168,0.805606603622437,0.827941179275513;0.920220613479614,0.798406839370728,0.821568608283997;0.917371332645416,0.791207134723663,0.815196096897125;0.914522051811218,0.784007370471954,0.808823525905609;0.911672770977020,0.776807606220245,0.802450954914093;0.908823549747467,0.769607841968536,0.796078443527222;0.905974268913269,0.762408077716827,0.789705872535706;0.903124988079071,0.755208313465118,0.783333361148834;0.900275766849518,0.748008608818054,0.776960790157318;0.897426486015320,0.740808844566345,0.770588219165802;0.894577205181122,0.733609080314636,0.764215707778931;0.891727924346924,0.726409316062927,0.757843136787415;0.888878703117371,0.719209551811218,0.751470565795898;0.886029422283173,0.712009787559509,0.745098054409027;0.883180141448975,0.704810023307800,0.738725483417511;0.880330860614777,0.697610318660736,0.732352972030640;0.877481639385223,0.690410554409027,0.725980401039124;0.874632358551025,0.683210790157318,0.719607830047607;0.871783077716827,0.676011025905609,0.713235318660736;0.868933856487274,0.668811261653900,0.706862747669220;0.866084575653076,0.661611497402191,0.700490176677704;0.863235294818878,0.654411792755127,0.694117665290833;0.860386013984680,0.647212028503418,0.687745094299316;0.857536792755127,0.640012264251709,0.681372523307800;0.854687511920929,0.632812500000000,0.675000011920929;0.851838231086731,0.625612735748291,0.668627440929413;0.848988950252533,0.618412971496582,0.662254929542542;0.846139729022980,0.611213207244873,0.655882358551025;0.843290448188782,0.604013502597809,0.649509787559509;0.840441167354584,0.596813738346100,0.643137276172638;0.837591946125031,0.589613974094391,0.636764705181122;0.834742665290833,0.582414209842682,0.630392134189606;0.831893384456635,0.575214445590973,0.624019622802734;0.829044103622437,0.568014681339264,0.617647051811218;0.826194882392883,0.560814976692200,0.611274540424347;0.823345601558685,0.553615212440491,0.604901969432831;0.820496320724487,0.546415448188782,0.598529398441315;0.817647099494934,0.539215683937073,0.592156887054443;0.814797818660736,0.532015919685364,0.585784316062927;0.811948537826538,0.524816155433655,0.579411745071411;0.809099256992340,0.517616450786591,0.573039233684540;0.806250035762787,0.510416686534882,0.566666662693024;0.803400754928589,0.503216922283173,0.560294091701508;0.800551474094391,0.496017158031464,0.553921580314636;0.797702193260193,0.488817393779755,0.547549009323120;0.794852972030640,0.481617659330368,0.541176497936249;0.792003691196442,0.474417895078659,0.534803926944733;0.789154410362244,0.467218130826950,0.528431355953217;0.786305189132690,0.460018396377564,0.522058844566345;0.783455908298492,0.452818632125855,0.515686273574829;0.780606627464294,0.445618867874146,0.509313702583313;0.777757346630096,0.438419133424759,0.502941191196442;0.774908125400543,0.431219369173050,0.496568620204926;0.772058844566345,0.424019604921341,0.490196079015732;0.769209563732147,0.416819840669632,0.483823537826538;0.766360282897949,0.409620106220245,0.477450996637344;0.763511061668396,0.402420341968536,0.471078425645828;0.760661780834198,0.395220577716827,0.464705884456635;0.757812500000000,0.388020843267441,0.458333343267441;0.754963278770447,0.380821079015732,0.451960772275925;0.752113997936249,0.373621314764023,0.445588231086731;0.749264717102051,0.366421580314636,0.439215689897537;0.746415436267853,0.359221816062927,0.432843148708344;0.743566215038300,0.352022051811218,0.426470577716827;0.740716934204102,0.344822317361832,0.420098036527634;0.737867653369904,0.337622553110123,0.413725495338440;0.735018372535706,0.330422788858414,0.407352954149246;0.732169151306152,0.323223054409027,0.400980383157730;0.729319870471954,0.316023290157318,0.394607841968536;0.726470589637756,0.308823525905609,0.388235300779343;0.723621368408203,0.301623791456223,0.381862759590149;0.720772087574005,0.294424027204514,0.375490188598633;0.717922806739807,0.287224262952805,0.369117647409439;0.715073525905609,0.280024498701096,0.362745106220245;0.712224304676056,0.272824764251709,0.356372565031052;0.709375023841858,0.265625000000000,0.349999994039536;0.706525743007660,0.258425235748291,0.343627452850342;0.703676462173462,0.251225501298904,0.337254911661148;0.700827240943909,0.244025737047195,0.330882370471954;0.697977960109711,0.236825987696648,0.324509799480438;0.695128679275513,0.229626223444939,0.318137258291245;0.692279458045960,0.222426474094391,0.311764717102051;0.689430177211762,0.215226724743843,0.305392146110535;0.686580896377564,0.208026960492134,0.299019604921341;0.683731615543366,0.200827211141586,0.292647063732147;0.680882394313812,0.193627446889877,0.286274522542954;0.678033113479614,0.186427697539330,0.279901951551437;0.675183832645416,0.179227948188782,0.273529410362244;0.672334551811218,0.172028183937073,0.267156869173050;0.669485330581665,0.164828434586525,0.260784327983856;0.666636049747467,0.157628685235977,0.254411756992340;0.663786768913269,0.150428920984268,0.248039215803146;0.660937547683716,0.143229171633720,0.241666674613953;0.658088266849518,0.136029407382011,0.235294118523598;0.655238986015320,0.128829658031464,0.228921577334404;0.652389705181122,0.121629901230335,0.222549021244049;0.649540483951569,0.114430151879787,0.216176480054855;0.646691203117371,0.107230395078659,0.209803923964500;0.643841922283173,0.100030638277531,0.203431382775307;0.640992641448975,0.0928308814764023,0.197058826684952;0.638143420219421,0.0856311321258545,0.190686285495758;0.635294139385223,0.0784313753247261,0.184313729405403];
fig = figure('Position',[ 1 1 750 1150]);
outputFolder = '179';
outputDirectory = strcat('/import/c1/DAYSIDE/atvu/Run',outputFolder);
%cd(outputDirectory)
RunNumber= '179';

[qx,qy,qz,~,nx,ny,nz,~] = read_Coordinates(outputDirectory);
[X,Z,X2,Z2] = scale_Data(qx,qz);
timeSteps = 2000;

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
[temp_cold_data] = read_Plasma('temp_cold',nt,nx,ny,nz,outputDirectory);
disp('t cold loaded')
[temp_mixed_data] = read_Plasma('temp_mixed',nt,nx,ny,nz,outputDirectory);
disp('t foreshock loaded')
% [Edata] = read_Plasma('E',nt,nx,ny,nz,outputDirectory);
% display('E loaded')

[ndata] = read_Plasma('n',nt,nx,ny,nz,outputDirectory);
display('n loaded')
[udata] = read_Plasma('Momentum',nt,nx,ny,nz,outputDirectory);
display('v loaded')
[Tdata] = read_Plasma('Temp',nt,nx,ny,nz,outputDirectory);
display('T loaded')
[gradPdata] = read_Plasma('gradP',nt,nx,ny,nz,outputDirectory);
display('gradP loaded')

xcut = 110;
zmid = nz/2;
ddthickness = 24;
foreshockthickness = 300;
zrange = [200 - 49, 200 + 49];

moverq=1.0378e-8;
fileName = strcat('/import/c1/DAYSIDE/atvu/Runs/2d_Hybrid_Foreshock_Jperp_separateJ_diff_',RunNumber,'_',string(xcut));
v = VideoWriter(fileName);
v.FrameRate= 10;
open(v);

plot_width= 1;
plot_height= 7;
plot_number = 1;

filterNumber = 0.01;

%% Initial State
[temp_cold_data_interp0] = interpolate_Data(temp_cold_data,1,1,nx,nz,X,Z,X2,Z2);
temp_cold_data_interp0 = imgaussfilt(temp_cold_data_interp0,filterNumber);
t0 = mean(temp_cold_data_interp0(floor(nz-nz/4):nz-1,2:end-4),'all');
t0 = imgaussfilt(t0,1);

[n_cold_data_interp0] = interpolate_Data(n_cold_data,1,1,nx,nz,X,Z,X2,Z2);
n_cold_data_interp0 = imgaussfilt(n_cold_data_interp0,filterNumber);
n0 = mean(n_cold_data_interp0(3:nz-3,2:end-4),'all');
n0 = imgaussfilt(n0,1);

E0 = (5e-9)* va;
J0 = (5e-9)/ ((lambda_i));
nv0 = (5e-9)/((4*pi*10^-7*(lambda_i)*10^3));

[Bxdata_interp0] = (interpolate_Data(Bdata,1,1,nx,nz,X,Z,X2,Z2));
Bxdata_interp0 = imgaussfilt(Bxdata_interp0,filterNumber);
[Bxdata_interp0_y1] = (interpolate_Data_y(Bdata,1,1,nx,nz,X,Z,X2,Z2));
Bxdata_interp0_y1 = imgaussfilt(Bxdata_interp0_y1,filterNumber);

[Bydata_interp0] = (interpolate_Data(Bdata,2,1,nx,nz,X,Z,X2,Z2));
Bydata_interp0 = imgaussfilt(Bydata_interp0,filterNumber);
[Bydata_interp0_y1] = (interpolate_Data_y(Bdata,2,1,nx,nz,X,Z,X2,Z2));
Bydata_interp0_y1 = imgaussfilt(Bydata_interp0_y1,filterNumber);

[Bzdata_interp0] = (interpolate_Data(Bdata,3,1,nx,nz,X,Z,X2,Z2));
Bzdata_interp0 = imgaussfilt(Bzdata_interp0,filterNumber);
[Bzdata_interp0_y1] = (interpolate_Data(Bdata,3,1,nx,nz,X,Z,X2,Z2));
Bzdata_interp0_y1 = imgaussfilt(Bzdata_interp0_y1,filterNumber);



%Parallel Speed 
upx_mixed_bulk = -2*MA*Bxdata_interp0 ./ (Bxdata_interp0.^2 + Bydata_interp0.^2 + Bzdata_interp0.^2).^(1/2);
upy_mixed_bulk = -2*MA*Bydata_interp0 ./ (Bxdata_interp0.^2 + Bydata_interp0.^2 + Bzdata_interp0.^2).^(1/2);
upz_mixed_bulk = -2*MA*Bzdata_interp0 ./ (Bxdata_interp0.^2 + Bydata_interp0.^2 + Bzdata_interp0.^2).^(1/2);

for k=nz/2+1:nz
    upx_mixed_bulk(k,:) = 0.0;%-2*FS_Ma*Bxdata_interp0(nz/2,:) ./ (Bxdata_interp0(nz/2,:).^2 + Bydata_interp0(nz/2,:).^2 + Bzdata_interp0(nz/2,:).^2).^(1/2);
    upy_mixed_bulk(k,:) = 0.0;%-2*FS_Ma*Bydata_interp0(nz/2,:) ./ (Bxdata_interp0(nz/2,:).^2 + Bydata_interp0(nz/2,:).^2 + Bzdata_interp0(nz/2,:).^2).^(1/2);
    upz_mixed_bulk(k,:) = 0.0;%-2*FS_Ma*Bzdata_interp0(nz/2,:) ./ (Bxdata_interp0(nz/2,:).^2 + Bydata_interp0(nz/2,:).^2 + Bzdata_interp0(nz/2,:).^2).^(1/2);
end

upx_mixed_bulk = imgaussfilt(upx_mixed_bulk,filterNumber);
upy_mixed_bulk = imgaussfilt(upy_mixed_bulk,filterNumber);

[upx_cold_data_interp0] = (imgaussfilt(interpolate_Data(up_cold_data,1,1,nx,nz,X,Z,X2,Z2),filterNumber));
[upy_cold_data_interp0] = (imgaussfilt(interpolate_Data(up_cold_data,2,1,nx,nz,X,Z,X2,Z2),filterNumber));
[upz_cold_data_interp0] = (imgaussfilt(interpolate_Data(up_cold_data,3,1,nx,nz,X,Z,X2,Z2),filterNumber));

[ppx_cold_data_interp0] = n_cold_data_interp0.*(upx_cold_data_interp0);%-ele*uex_cold0);0.996.*
[ppy_cold_data_interp0] = n_cold_data_interp0.*(upy_cold_data_interp0);%-ele*uey_cold0);0.996.*
[ppz_cold_data_interp0] = n_cold_data_interp0.*(upz_cold_data_interp0);%-ele*uez_cold0);0.996.*

[Jxdata_interp0] = imgaussfilt(interpolate_Data(Jdata,1,1,nx,nz,X,Z,X2,Z2),filterNumber);%.*ndata_interp.*alpha;
[Jydata_interp0] = imgaussfilt(interpolate_Data(Jdata,2,1,nx,nz,X,Z,X2,Z2),filterNumber);%.*ndata_interp.*alpha;
[Jzdata_interp0] = imgaussfilt(interpolate_Data(Jdata,3,1,nx,nz,X,Z,X2,Z2),filterNumber);%.*ndata_interp.*alpha;

[curlBx_interp0,curlBy_interp0,curlBz_interp0] = calculate_curlB(Bxdata_interp0,Bxdata_interp0_y1,Bydata_interp0,Bydata_interp0_y1,Bzdata_interp0,Bzdata_interp0_y1,lambda_i,nx_min,nx_max,nz_min,nz_max);
curlBx_interp0 = imgaussfilt(curlBx_interp0,filterNumber);
curlBy_interp0 = imgaussfilt(curlBy_interp0,filterNumber);
curlBz_interp0 = imgaussfilt(curlBz_interp0,filterNumber);

curlBx_interp0 = [zeros(1,nx_max-nx_min+1);curlBx_interp0;zeros(1,nx_max-nx_min+1)];
curlBy_interp0 = [zeros(1,nx_max-nx_min+1);curlBy_interp0;zeros(1,nx_max-nx_min+1)];
curlBz_interp0 = [zeros(1,nx_max-nx_min+1);curlBz_interp0;zeros(1,nx_max-nx_min+1)];

curlBx_interp0 = [zeros(nz,1),curlBx_interp0,zeros(nz,1)];
curlBy_interp0 = [zeros(nz,1),curlBy_interp0,zeros(nz,1)];
curlBz_interp0 = [zeros(nz,1),curlBz_interp0,zeros(nz,1)];

[ndata_interp0] = imgaussfilt(interpolate_Data(ndata,1,1,nx,nz,X,Z,X2,Z2),filterNumber);
[uxdata_interp0] = imgaussfilt(interpolate_Data(udata,1,1,nx,nz,X,Z,X2,Z2),filterNumber);
[uydata_interp0] = imgaussfilt(interpolate_Data(udata,2,1,nx,nz,X,Z,X2,Z2),filterNumber);
[uzdata_interp0] = imgaussfilt(interpolate_Data(udata,3,1,nx,nz,X,Z,X2,Z2),filterNumber);
% ndata_interp0(1:nz/2,:) = ndata_interp0(1:nz/2,:) + 0.12*ndata_interp0(1:nz/2,:);
% uex_cold0 = uxdata_interp0 - curlBx_interp0*moverq./ (1000*4*pi*10^-7 .* q .* ndata_interp0*10^-9)./1000;
% uey_cold0 = uydata_interp0 - curlBy_interp0*moverq./ (1000*4*pi*10^-7 .* q .* ndata_interp0*10^-9)./1000;
% uez_cold0 = uzdata_interp0 - curlBz_interp0*moverq./ (1000*4*pi*10^-7 .* q .* ndata_interp0*10^-9)./1000;

uex_tot0 = uxdata_interp0 - Jxdata_interp0*moverq./ (1000*4*pi*10^-7 .* q .* ndata_interp0*10^-9)./1000;
uey_tot0 = uydata_interp0 - Jydata_interp0*moverq./ (1000*4*pi*10^-7 .* q .* ndata_interp0*10^-9)./1000;
uez_tot0 = uzdata_interp0 - Jzdata_interp0*moverq./ (1000*4*pi*10^-7 .* q .* ndata_interp0*10^-9)./1000;

pex_tot0 =  imgaussfilt(ndata_interp0.*uex_tot0,filterNumber);
pey_tot0 =  imgaussfilt(ndata_interp0.*uey_tot0,filterNumber);
pez_tot0 =  imgaussfilt(ndata_interp0.*uez_tot0,filterNumber);



 [ndata_interp0_y1] = imgaussfilt(interpolate_Data_y(ndata,1,1,nx,nz,X,Z,X2,Z2),filterNumber);
%     [Tdata_interp] = imgaussfilt(interpolate_Data(Tdata,1,i,nx,nz,X,Z,X2,Z2),filterNumber);
%     [Tdata_interp_y1] = imgaussfilt(interpolate_Data_y(Tdata,1,i,nx,nz,X,Z,X2,Z2),filterNumber);
    
    gPcx0 = 1.38e-29*11604.505./(1.6605e-27*0.5*(ndata_interp0(nz_min:nz_max,nx_min+1:nx_max+1)+ndata_interp0(nz_min:nz_max,nx_min:nx_max)));
    gPcy0 = 1.38e-29*11604.505./(1.6605e-27*0.5*(ndata_interp0(nz_min:nz_max,nx_min:nx_max)+ndata_interp0_y1(nz_min:nz_max,nx_min:nx_max)));
    gPcz0 = 1.38e-29*11604.505./(1.6605e-27*0.5*(ndata_interp0(nz_min+1:nz_max+1,nx_min:nx_max)+ndata_interp0(nz_min:nz_max,nx_min:nx_max)));
    
    [gradPxdata_interp0] = imgaussfilt(interpolate_Data(gradPdata,1,1,nx,nz,X,Z,X2,Z2),filterNumber);
    [gradPydata_interp0] = imgaussfilt(interpolate_Data(gradPdata,2,1,nx,nz,X,Z,X2,Z2),filterNumber);
    [gradPzdata_interp0] = imgaussfilt(interpolate_Data(gradPdata,3,1,nx,nz,X,Z,X2,Z2),filterNumber);
    gradPxdata_interp0 = gradPxdata_interp0(nz_min:nz_max,nx_min:nx_max)./gPcx0.*10^-9.*q/1000;
    gradPydata_interp0 = gradPydata_interp0(nz_min:nz_max,nx_min:nx_max)./gPcy0.*10^-9.*q/1000;
    gradPzdata_interp0 = gradPzdata_interp0(nz_min:nz_max,nx_min:nx_max)./gPcz0.*10^-9.*q/1000;
    
%     Pt_electron = ndata_interp.*15.*10^-9.*q;
%     gradP_x_electron = (Pt_electron(nz_min:nz_max,nx_min:nx_max)-Pt_electron(nz_min:nz_max,nx_min-1:nx_max-1))./((lambda_i)*1000);
%     Pt_electron_y1 = 2*ndata_interp_y1.*15.*10^-9.*q;
%     gradP_y_electron = (Pt_electron(nz_min:nz_max,nx_min:nx_max)-Pt_electron_y1(nz_min:nz_max,nx_min:nx_max))./((4*lambda_i)*1000);
%     gradP_z_electron = (Pt_electron(nz_min:nz_max,nx_min:nx_max)-Pt_electron(nz_min-1:nz_max-1,nx_min:nx_max))./((lambda_i)*1000);
    
    jDx_electron0 = (Bydata_interp0(nz_min:nz_max,nx_min:nx_max).*gradPzdata_interp0 - Bzdata_interp0(nz_min:nz_max,nx_min:nx_max).*gradPydata_interp0)./...
        ((Bxdata_interp0(nz_min:nz_max,nx_min:nx_max).^2 + Bydata_interp0(nz_min:nz_max,nx_min:nx_max).^2 + Bzdata_interp0(nz_min:nz_max,nx_min:nx_max).^2).*moverq)./nv0;
    jDy_electron0 = (-Bxdata_interp0(nz_min:nz_max,nx_min:nx_max).*gradPzdata_interp0 + Bzdata_interp0(nz_min:nz_max,nx_min:nx_max).*gradPxdata_interp0)./...
        ((Bxdata_interp0(nz_min:nz_max,nx_min:nx_max).^2 + Bydata_interp0(nz_min:nz_max,nx_min:nx_max).^2 + Bzdata_interp0(nz_min:nz_max,nx_min:nx_max).^2).*moverq)./nv0;
    
    
    






for i=1:stepInterval:nt
    [ha,~] = tight_subplot(plot_height,plot_width,[0.01 0.01],0.1,0.1);
    h = sgtitle(sprintf('time = %2.2f gyroperiods at x=%3d',output*dt*double(i),xcut));
    plot_number = 1;
    axes_count = 1;
    set(gcf,'color','w');
    colormap(A)
    
    %% Data Interp
    [n_cold_data_interp] = imgaussfilt(interpolate_Data(n_cold_data,1,i,nx,nz,X,Z,X2,Z2),filterNumber);
    [n_mixed_data_interp] = imgaussfilt(interpolate_Data(n_mixed_data,1,i,nx,nz,X,Z,X2,Z2),filterNumber);

    [temp_cold_data_interp] = imgaussfilt(interpolate_Data(temp_cold_data,1,i,nx,nz,X,Z,X2,Z2),filterNumber);

    
    [Bxdata_interp] = imgaussfilt(interpolate_Data(Bdata,1,i,nx,nz,X,Z,X2,Z2),filterNumber);
    [Bxdata_interp_y1] = imgaussfilt(interpolate_Data_y(Bdata,1,i,nx,nz,X,Z,X2,Z2),filterNumber);
    [Bydata_interp] = (imgaussfilt(interpolate_Data(Bdata,2,i,nx,nz,X,Z,X2,Z2),filterNumber));
    [Bydata_interp_y1] = (imgaussfilt(interpolate_Data_y(Bdata,2,i,nx,nz,X,Z,X2,Z2),filterNumber)); 
    [Bzdata_interp] = (imgaussfilt(interpolate_Data(Bdata,3,i,nx,nz,X,Z,X2,Z2),filterNumber));
    [Bzdata_interp_y1] = (imgaussfilt(interpolate_Data(Bdata,3,i,nx,nz,X,Z,X2,Z2),filterNumber));

    
    [ndata_interp]  = imgaussfilt(interpolate_Data(ndata,1,i,nx,nz,X,Z,X2,Z2),filterNumber);
    [uxdata_interp] = imgaussfilt(interpolate_Data(udata,1,i,nx,nz,X,Z,X2,Z2),filterNumber);
    [uydata_interp] = imgaussfilt(interpolate_Data(udata,2,i,nx,nz,X,Z,X2,Z2),filterNumber);
    [uzdata_interp] = imgaussfilt(interpolate_Data(udata,3,i,nx,nz,X,Z,X2,Z2),filterNumber);
    
    upx_cold_data_interp = imgaussfilt((interpolate_Data(up_cold_data,1,i,nx,nz,X,Z,X2,Z2)),filterNumber);
    upy_cold_data_interp = imgaussfilt((interpolate_Data(up_cold_data,2,i,nx,nz,X,Z,X2,Z2)),filterNumber);
    upz_cold_data_interp = imgaussfilt((interpolate_Data(up_cold_data,3,i,nx,nz,X,Z,X2,Z2)),filterNumber);
    
    upx_mixed_data_interp = imgaussfilt(interpolate_Data(up_mixed_data,1,i,nx,nz,X,Z,X2,Z2),filterNumber);
    upy_mixed_data_interp = imgaussfilt(interpolate_Data(up_mixed_data,2,i,nx,nz,X,Z,X2,Z2),filterNumber);
    upz_mixed_data_interp = imgaussfilt(interpolate_Data(up_mixed_data,3,i,nx,nz,X,Z,X2,Z2),filterNumber);
    
    [Jxdata_interp] = imgaussfilt(interpolate_Data(Jdata,1,i,nx,nz,X,Z,X2,Z2),filterNumber);
    [Jydata_interp] = imgaussfilt(interpolate_Data(Jdata,2,i,nx,nz,X,Z,X2,Z2),filterNumber);
    [Jzdata_interp] = imgaussfilt(interpolate_Data(Jdata,3,i,nx,nz,X,Z,X2,Z2),filterNumber);
    
    
    [curlBx_interp,curlBy_interp,curlBz_interp] = calculate_curlB(Bxdata_interp,Bxdata_interp_y1,Bydata_interp,Bydata_interp_y1,Bzdata_interp,Bzdata_interp_y1,lambda_i,nx_min,nx_max,nz_min,nz_max);
    curlBx_interp = imgaussfilt(curlBx_interp,filterNumber);
    curlBy_interp = imgaussfilt(curlBy_interp,filterNumber);
    curlBz_interp = imgaussfilt(curlBz_interp,filterNumber);
    
    curlBx_interp = [zeros(1,nx_max-nx_min+1);curlBx_interp;zeros(1,nx_max-nx_min+1)];
    curlBy_interp = [zeros(1,nx_max-nx_min+1);curlBy_interp;zeros(1,nx_max-nx_min+1)];
    curlBz_interp = [zeros(1,nx_max-nx_min+1);curlBz_interp;zeros(1,nx_max-nx_min+1)];
    
    curlBx_interp = [zeros(nz,1),curlBx_interp,zeros(nz,1)];
    curlBy_interp = [zeros(nz,1),curlBy_interp,zeros(nz,1)];
    curlBz_interp = [zeros(nz,1),curlBz_interp,zeros(nz,1)];

%     uex_cold = uxdata_interp - curlBx_interp*moverq./ (1000*4*pi*10^-7 .* q .* ndata_interp*10^-9)./1000;
%     uey_cold = uydata_interp - curlBy_interp*moverq./ (1000*4*pi*10^-7 .* q .* ndata_interp*10^-9)./1000;
%     uez_cold = uzdata_interp - curlBz_interp*moverq./ (1000*4*pi*10^-7 .* q .* ndata_interp*10^-9)./1000;

    uex_tot = uxdata_interp - Jxdata_interp*moverq./ (1000*4*pi*10^-7 .* q .* ndata_interp*10^-9)./1000;
    uey_tot = uydata_interp - Jydata_interp*moverq./ (1000*4*pi*10^-7 .* q .* ndata_interp*10^-9)./1000;
    uez_tot = uzdata_interp - Jzdata_interp*moverq./ (1000*4*pi*10^-7 .* q .* ndata_interp*10^-9)./1000;


    pex_tot = imgaussfilt(ndata_interp.*uex_tot,filterNumber);
    pey_tot = imgaussfilt(ndata_interp.*uey_tot,filterNumber);
    pez_tot = imgaussfilt(ndata_interp.*uez_tot,filterNumber);
    
    [electron_parax,electron_paray,electron_paraz,electron_perpx,electron_perpy,electron_perpz] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_tot,pey_tot,pez_tot);
    [electron_parax0,electron_paray0,electron_paraz0,electron_perpx0,electron_perpy0,electron_perpz0] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_tot0,pey_tot0,pez_tot0);
    
    delta_electron_parax = (electron_parax-del*electron_parax0).*10^3 * 10^-9.*-q./nv0;
    delta_electron_paray = (electron_paray-del*electron_paray0).*10^3 * 10^-9.*-q./nv0;
    delta_electron_paraz = (electron_paraz-del*electron_paraz0).*10^3 * 10^-9.*-q./nv0;
    delta_electron_perpx = (electron_perpx-del*electron_perpx0).*10^3 * 10^-9.*-q./nv0;
    delta_electron_perpy = (electron_perpy-del*electron_perpy0).*10^3 * 10^-9.*-q./nv0;
    delta_electron_perpz = (electron_perpz-del*electron_perpz0).*10^3 * 10^-9.*-q./nv0;
    
    [ndata_interp_y1] = imgaussfilt(interpolate_Data_y(ndata,1,i,nx,nz,X,Z,X2,Z2),filterNumber);
%     [Tdata_interp] = imgaussfilt(interpolate_Data(Tdata,1,i,nx,nz,X,Z,X2,Z2),filterNumber);
%     [Tdata_interp_y1] = imgaussfilt(interpolate_Data_y(Tdata,1,i,nx,nz,X,Z,X2,Z2),filterNumber);
    
    gPcx = 1.38e-29*11604.505./(1.6605e-27*0.5*(ndata_interp(nz_min:nz_max,nx_min+1:nx_max+1)+ndata_interp(nz_min:nz_max,nx_min:nx_max)));
    gPcy = 1.38e-29*11604.505./(1.6605e-27*0.5*(ndata_interp(nz_min:nz_max,nx_min:nx_max)+ndata_interp_y1(nz_min:nz_max,nx_min:nx_max)));
    gPcz = 1.38e-29*11604.505./(1.6605e-27*0.5*(ndata_interp(nz_min+1:nz_max+1,nx_min:nx_max)+ndata_interp(nz_min:nz_max,nx_min:nx_max)));
    
    [gradPxdata_interp] = imgaussfilt(interpolate_Data(gradPdata,1,i,nx,nz,X,Z,X2,Z2),filterNumber);
    [gradPydata_interp] = imgaussfilt(interpolate_Data(gradPdata,2,i,nx,nz,X,Z,X2,Z2),filterNumber);
    [gradPzdata_interp] = imgaussfilt(interpolate_Data(gradPdata,3,i,nx,nz,X,Z,X2,Z2),filterNumber);
    gradPxdata_interp = gradPxdata_interp(nz_min:nz_max,nx_min:nx_max)./gPcx.*10^-9.*q/1000;
    gradPydata_interp = gradPydata_interp(nz_min:nz_max,nx_min:nx_max)./gPcy.*10^-9.*q/1000;
    gradPzdata_interp = gradPzdata_interp(nz_min:nz_max,nx_min:nx_max)./gPcz.*10^-9.*q/1000;
    
%     Pt_electron = ndata_interp.*15.*10^-9.*q;
%     gradP_x_electron = (Pt_electron(nz_min:nz_max,nx_min:nx_max)-Pt_electron(nz_min:nz_max,nx_min-1:nx_max-1))./((lambda_i)*1000);
%     Pt_electron_y1 = 2*ndata_interp_y1.*15.*10^-9.*q;
%     gradP_y_electron = (Pt_electron(nz_min:nz_max,nx_min:nx_max)-Pt_electron_y1(nz_min:nz_max,nx_min:nx_max))./((4*lambda_i)*1000);
%     gradP_z_electron = (Pt_electron(nz_min:nz_max,nx_min:nx_max)-Pt_electron(nz_min-1:nz_max-1,nx_min:nx_max))./((lambda_i)*1000);
    
    jDx_electron = (Bydata_interp(nz_min:nz_max,nx_min:nx_max).*gradPzdata_interp - Bzdata_interp(nz_min:nz_max,nx_min:nx_max).*gradPydata_interp)./...
        ((Bxdata_interp(nz_min:nz_max,nx_min:nx_max).^2 + Bydata_interp(nz_min:nz_max,nx_min:nx_max).^2 + Bzdata_interp(nz_min:nz_max,nx_min:nx_max).^2).*moverq)./nv0;
    jDy_electron = (-Bxdata_interp(nz_min:nz_max,nx_min:nx_max).*gradPzdata_interp + Bzdata_interp(nz_min:nz_max,nx_min:nx_max).*gradPxdata_interp)./...
        ((Bxdata_interp(nz_min:nz_max,nx_min:nx_max).^2 + Bydata_interp(nz_min:nz_max,nx_min:nx_max).^2 + Bzdata_interp(nz_min:nz_max,nx_min:nx_max).^2).*moverq)./nv0;
%     gradP_x_electron = gradP_x_electron./(n0.*t0*10^-9.*q./(lambda_i.*1000));
%     gradP_y_electron = gradP_y_electron./(n0.*t0*10^-9.*q./(lambda_i.*1000));
%     gradP_z_electron = gradP_z_electron./(n0.*t0*10^-9.*q./(lambda_i.*1000));
    
    
    delta_jDx_electron = jDx_electron-jDx_electron0;
    delta_jDy_electron = jDy_electron-jDy_electron0;
    
    [upparax_cold,upparay_cold,upparaz_cold,upperpx_cold,upperpy_cold,upperpz_cold] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,upx_cold_data_interp,upy_cold_data_interp,upz_cold_data_interp);
    [upparax_cold0,upparay_cold0,upparaz_cold0,upperpx_cold0,upperpy_cold0,upperpz_cold0] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,upx_cold_data_interp0,upy_cold_data_interp0,upz_cold_data_interp0);
    
    delta_upparax_cold = upparax_cold-del*upparax_cold0;
    delta_upparay_cold = upparay_cold-del*upparay_cold0;
    delta_upparaz_cold = upparaz_cold-del*upparaz_cold0;
    delta_upperpx_cold = upperpx_cold-del*upperpx_cold0;
    delta_upperpy_cold = upperpy_cold-del*upperpy_cold0;
    delta_upperpz_cold = upperpz_cold-del*upperpz_cold0;
   
    [ppx_cold_data_interp] = n_cold_data_interp.*(upx_cold_data_interp);
    [ppy_cold_data_interp] = n_cold_data_interp.*(upy_cold_data_interp);
    [ppz_cold_data_interp] = n_cold_data_interp.*(upz_cold_data_interp);
    
    [cold_parax,cold_paray,cold_paraz,cold_perpx,cold_perpy,cold_perpz] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,ppx_cold_data_interp,ppy_cold_data_interp,ppz_cold_data_interp);
    [cold_parax0,cold_paray0,cold_paraz0,cold_perpx0,cold_perpy0,cold_perpz0] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,ppx_cold_data_interp0,ppy_cold_data_interp0,ppz_cold_data_interp0);

    delta_cold_parax = (cold_parax-del*cold_parax0).*10^3 * 10^-9.*q./nv0;
    delta_cold_paray = (cold_paray-del*cold_paray0).*10^3 * 10^-9.*q./nv0;
    delta_cold_paraz = (cold_paraz-del*cold_paraz0).*10^3 * 10^-9.*q./nv0;
    delta_cold_perpx = (cold_perpx-del*cold_perpx0).*10^3 * 10^-9.*q./nv0;
    delta_cold_perpy = (cold_perpy-del*cold_perpy0).*10^3 * 10^-9.*q./nv0;
    delta_cold_perpz = (cold_perpz-del*cold_perpz0).*10^3 * 10^-9.*q./nv0;
     
   
    Pt_cold = n_cold_data_interp.*(temp_cold_data_interp-ele*15).*10^-9.*q;
    gradP_x_cold = (Pt_cold(nz_min:nz_max,nx_min:nx_max)-Pt_cold(nz_min:nz_max,nx_min-1:nx_max-1))./((lambda_i)*1000);
    
    [n_cold_data_interp_y1] = interpolate_Data_y(n_cold_data,1,i,nx,nz,X,Z,X2,Z2);
    n_cold_data_interp_y1 = imgaussfilt(n_cold_data_interp_y1,filterNumber);
    [temp_cold_data_interp_y1] = interpolate_Data_y(temp_cold_data,1,i,nx,nz,X,Z,X2,Z2);
    temp_cold_data_interp_y1 = imgaussfilt(temp_cold_data_interp_y1,filterNumber);
    
    Pt_cold_y1 = 2*n_cold_data_interp_y1.*(temp_cold_data_interp_y1-ele*15).*10^-9.*q;
    gradP_y_cold = (Pt_cold(nz_min:nz_max,nx_min:nx_max)-Pt_cold_y1(nz_min:nz_max,nx_min:nx_max))./((4*lambda_i)*1000);

    gradP_z_cold = (Pt_cold(nz_min:nz_max,nx_min:nx_max)-Pt_cold(nz_min-1:nz_max-1,nx_min:nx_max))./((lambda_i)*1000);
    
    jDx_cold = (Bydata_interp(nz_min:nz_max,nx_min:nx_max).*gradP_z_cold - Bzdata_interp(nz_min:nz_max,nx_min:nx_max).*gradP_y_cold)./...
        ((Bxdata_interp(nz_min:nz_max,nx_min:nx_max).^2 + Bydata_interp(nz_min:nz_max,nx_min:nx_max).^2 + Bzdata_interp(nz_min:nz_max,nx_min:nx_max).^2).*moverq)./nv0;
    jDy_cold = (-Bxdata_interp(nz_min:nz_max,nx_min:nx_max).*gradP_z_cold + Bzdata_interp(nz_min:nz_max,nx_min:nx_max).*gradP_x_cold)./...
        ((Bxdata_interp(nz_min:nz_max,nx_min:nx_max).^2 + Bydata_interp(nz_min:nz_max,nx_min:nx_max).^2 + Bzdata_interp(nz_min:nz_max,nx_min:nx_max).^2).*moverq)./nv0;
    gradP_x_cold = gradP_x_cold./(n0.*t0*10^-9.*q./(lambda_i.*1000));
    gradP_z_cold = gradP_z_cold./(n0.*t0*10^-9.*q./(lambda_i.*1000));
    
    [upparax_mixed,upparay_mixed,upparaz_mixed,upperpx_mixed,upperpy_mixed,upperpz_mixed] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,upx_mixed_data_interp,upy_mixed_data_interp,upz_mixed_data_interp);
    [upparax_mixed0,upparay_mixed0,upparaz_mixed0,upperpx_mixed0,upperpy_mixed0,upperpz_mixed0] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,upx_mixed_bulk.*va,upy_mixed_bulk.*va,upz_mixed_bulk.*va);

    delta_upparax_mixed = upparax_mixed - del*upparax_mixed0;
    delta_upparay_mixed = upparay_mixed - del*upparay_mixed0;
    delta_upparaz_mixed = upparaz_mixed - del*upparaz_mixed0;
    delta_upperpx_mixed = upperpx_mixed - del*upperpx_mixed0;
    delta_upperpy_mixed = upperpy_mixed - del*upperpy_mixed0;
    delta_upperpz_mixed = upperpz_mixed - del*upperpz_mixed0;
    
    delta_upparax_mixed = delta_upparax_mixed;%.*(n_mixed_data_interp./n0 > nFS_threshold);
    delta_upparay_mixed = delta_upparay_mixed;%.*(n_mixed_data_interp./n0 > nFS_threshold);
    delta_upparaz_mixed = delta_upparaz_mixed;%.*(n_mixed_data_interp./n0 > nFS_threshold);
    delta_upperpx_mixed = delta_upperpx_mixed;%.*(n_mixed_data_interp./n0 > nFS_threshold);
    delta_upperpy_mixed = delta_upperpy_mixed;%.*(n_mixed_data_interp./n0 > nFS_threshold);
    delta_upperpz_mixed = delta_upperpz_mixed;%.*(n_mixed_data_interp./n0 > nFS_threshold);

    [ppx_mixed_data_interp] = n_mixed_data_interp.*(upx_mixed_data_interp);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    [ppy_mixed_data_interp] = n_mixed_data_interp.*(upy_mixed_data_interp);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    [ppz_mixed_data_interp] = n_mixed_data_interp.*(upz_mixed_data_interp);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    
    ppx_mixed_data_interp0 = 0.12*n0.*(upx_mixed_bulk.*va);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    ppy_mixed_data_interp0 = 0.12*n0.*(upy_mixed_bulk.*va);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    ppz_mixed_data_interp0 = 0.12*n0.*(upz_mixed_bulk.*va);%.*((n_mixed_data_interp./n0 > nFS_threshold));
    
    [mixed_parax,mixed_paray,mixed_paraz,mixed_perpx,mixed_perpy,mixed_perpz] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,ppx_mixed_data_interp,ppy_mixed_data_interp,ppz_mixed_data_interp);
    [mixed_parax0,mixed_paray0,mixed_paraz0,mixed_perpx0,mixed_perpy0,mixed_perpz0] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,ppx_mixed_data_interp0,ppy_mixed_data_interp0,ppz_mixed_data_interp0);
        
    delta_mixed_parax = (mixed_parax-0*del*mixed_parax0).*10^3 * 10^-9.*q./nv0;
    delta_mixed_paray = (mixed_paray-0*del*mixed_paray0).*10^3 * 10^-9.*q./nv0;
    delta_mixed_paraz = (mixed_paraz-0*del*mixed_paraz0).*10^3 * 10^-9.*q./nv0;
    delta_mixed_perpx = (mixed_perpx-0*del*mixed_perpx0).*10^3 * 10^-9.*q./nv0;
    delta_mixed_perpy = (mixed_perpy-0*del*mixed_perpy0).*10^3 * 10^-9.*q./nv0;
    delta_mixed_perpz = (mixed_perpz-0*del*mixed_perpz0).*10^3 * 10^-9.*q./nv0;
    
    [temp_mixed_data_interp] = interpolate_Data(temp_mixed_data,1,i,nx,nz,X,Z,X2,Z2);
    temp_mixed_data_interp = imgaussfilt(temp_mixed_data_interp,filterNumber);
    
    Pt_mixed = n_mixed_data_interp.*((n_mixed_data_interp./n0 > nFS_threshold)).*(temp_mixed_data_interp-ele*15).*((n_mixed_data_interp./n0 > nFS_threshold)).*10^-9.*q;
    gradP_x_mixed = (Pt_mixed(nz_min:nz_max,nx_min:nx_max)-Pt_mixed(nz_min:nz_max,nx_min-1:nx_max-1))./((lambda_i)*1000);
    
    [n_mixed_data_interp_y1] = interpolate_Data_y(n_mixed_data,1,i,nx,nz,X,Z,X2,Z2);
    n_mixed_data_interp_y1 = imgaussfilt(n_mixed_data_interp_y1,filterNumber);
    [temp_mixed_data_interp_y1] = interpolate_Data_y(temp_mixed_data,1,i,nx,nz,X,Z,X2,Z2);
    temp_mixed_data_interp_y1 = imgaussfilt(temp_mixed_data_interp_y1,filterNumber);
    
    Pt_mixed_y1 = 2*n_mixed_data_interp_y1.*((n_mixed_data_interp_y1./n0 > nFS_threshold)).*(temp_mixed_data_interp_y1-ele*15).*((n_mixed_data_interp_y1./n0 > nFS_threshold)).*10^-9.*q;
    gradP_y_mixed = (Pt_mixed(nz_min:nz_max,nx_min:nx_max)-Pt_mixed_y1(nz_min:nz_max,nx_min:nx_max))./((4*lambda_i)*1000);
    
    gradP_z_mixed = (Pt_mixed(nz_min:nz_max,nx_min:nx_max)-Pt_mixed(nz_min-1:nz_max-1,nx_min:nx_max))./((lambda_i)*1000);
    jDx_mixed = (Bydata_interp(nz_min:nz_max,nx_min:nx_max).*gradP_z_mixed - Bzdata_interp(nz_min:nz_max,nx_min:nx_max).*gradP_y_mixed)./...
        ((Bxdata_interp(nz_min:nz_max,nx_min:nx_max).^2 + Bydata_interp(nz_min:nz_max,nx_min:nx_max).^2 + Bzdata_interp(nz_min:nz_max,nx_min:nx_max).^2).*moverq)./nv0;
    jDy_mixed = (-Bxdata_interp(nz_min:nz_max,nx_min:nx_max).*gradP_z_mixed + Bzdata_interp(nz_min:nz_max,nx_min:nx_max).*gradP_x_mixed)./...
        ((Bxdata_interp(nz_min:nz_max,nx_min:nx_max).^2 + Bydata_interp(nz_min:nz_max,nx_min:nx_max).^2 + Bzdata_interp(nz_min:nz_max,nx_min:nx_max).^2).*moverq)./nv0;
    gradP_x_mixed = gradP_x_mixed./(n0.*t0*10^-9.*q./(lambda_i.*1000));
    gradP_z_mixed = gradP_z_mixed./(n0.*t0*10^-9.*q./(lambda_i.*1000));
    


    [Jparax,Jparay,Jparaz,Jperpx,Jperpy,Jperpz] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,Jxdata_interp,Jydata_interp,Jzdata_interp);
    [Jparax0,Jparay0,Jparaz0,Jperpx0,Jperpy0,Jperpz0] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,Jxdata_interp0,Jydata_interp0,Jzdata_interp0);
    
    
    delta_Jparax = (Jparax-Jparax0).*moverq./J0;
    delta_Jparay = (Jparay-Jparay0).*moverq./J0;
    delta_Jparaz = (Jparaz-Jparaz0).*moverq./J0;
    delta_Jperpx = (Jperpx-Jperpx0).*moverq./J0;
    delta_Jperpy = (Jperpy-Jperpy0).*moverq./J0;
    delta_Jperpz = (Jperpz-Jperpz0).*moverq./J0;
    
    
%      Jperpx_tot = delta_cold_perpx(2:end-1,2:end-1) + delta_mixed_perpx(2:end-1,2:end-1) + delta_electron_perpx(2:end-1,2:end-1) - gradPe.*delta_jDx_electron;
%      Jperpy_tot = delta_cold_perpy(2:end-1,2:end-1) + delta_mixed_perpy(2:end-1,2:end-1) + delta_electron_perpy(2:end-1,2:end-1) - gradPe.*delta_jDy_electron;
%     
     Jperpx_tot_woJd = delta_cold_perpx(2:end-1,2:end-1) + delta_mixed_perpx(2:end-1,2:end-1) + delta_electron_perpx(2:end-1,2:end-1);
     Jperpy_tot_woJd = delta_cold_perpy(2:end-1,2:end-1) + delta_mixed_perpy(2:end-1,2:end-1) + delta_electron_perpy(2:end-1,2:end-1);
     
     Jperpx_tot_wJd = delta_cold_perpx(2:end-1,2:end-1) + delta_mixed_perpx(2:end-1,2:end-1) + delta_electron_perpx(2:end-1,2:end-1) - delta_jDx_electron;
     Jperpy_tot_wJd = delta_cold_perpy(2:end-1,2:end-1) + delta_mixed_perpy(2:end-1,2:end-1) + delta_electron_perpy(2:end-1,2:end-1) - delta_jDy_electron;
     
     
     
     %bulk flow check
     uswx = n_cold_data_interp.*upx_cold_data_interp-n_cold_data_interp0.*upx_cold_data_interp0;
     uswy = n_cold_data_interp.*upy_cold_data_interp-n_cold_data_interp0.*upy_cold_data_interp0;
     uswz = n_cold_data_interp.*upz_cold_data_interp-n_cold_data_interp0.*upz_cold_data_interp0;
     
     ufsx = n_mixed_data_interp.*upx_mixed_data_interp;
     ufsy = n_mixed_data_interp.*upy_mixed_data_interp;
     ufsz = n_mixed_data_interp.*upz_mixed_data_interp;
     
     usumx = uswx + ufsx;
     usumy = uswy + ufsy;
     usumz = uswz + ufsz;
     
     utotx = ndata_interp.*uxdata_interp-ndata_interp0.*uxdata_interp0;
     utoty = ndata_interp.*uydata_interp-ndata_interp0.*uydata_interp0;
     utotz = ndata_interp.*uzdata_interp-ndata_interp0.*uzdata_interp0;
     
     udiffx = (utotx-usumx)./utotx;
     udiffy = (utoty-usumy)./utoty;
     udiffz = (utotz-usumz)./utotz;
    %% Plotting
    axes(ha(axes_count));axes_count=axes_count+1;
    yyaxis left
    hold off;
    plot(smooth(delta_cold_perpx(2:end-1,xcut)),'linewidth',1)
    hold on;
%     plot(smooth(jDx_cold(:,xcut)),'linewidth',1)
    plot(smooth(delta_mixed_perpx(2:end-1,xcut)),'linewidth',1)
    plot(smooth(delta_electron_perpx(2:end-1,xcut)),'linewidth',1)
    yyaxis right
    plot(smooth(delta_jDx_electron(2:end-1,xcut)),'linewidth',1)
    yyaxis left
    hold off
    ylabel({'Jperpx/J0'},'FontSize',14)
    xlim(zrange)
    Alegend = legend('\Deltanqv_{sw}','nqv_{fs}','\Deltanqv_e','\DeltagradP_e','Location','northwest','Orientation','horizontal'); legend('boxoff')
%     Alegend = legend('\Deltanqv_{sw}','\Deltanqv_{fs}','Location','northwest','Orientation','horizontal'); legend('boxoff')
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    
    axes(ha(axes_count));axes_count=axes_count+1;
    plot(smooth(Jperpx_tot_woJd(:,xcut)),'b','linewidth',1)
    hold on
%     plot(smooth(Jperpx_tot_wJd(:,xcut)),'b--','linewidth',1)
    plot(smooth((delta_Jperpx(2:end-1,xcut))),'r','linewidth',1)
    hold off
    ylim([ -max(abs(ylim)) max(abs(ylim)) ])
    ylabel({'Jperpx_{tot}/J0'},'FontSize',14)
    xlim(zrange)
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    Clegend = legend('Jperptot wo. gradPe','\DeltaJperp','Location','northwest','Orientation','horizontal'); legend('boxoff')
%     Clegend = legend('Jperptot wo. gradPe','Jperptot w. gradPe','\DeltaJperp','Location','northwest','Orientation','horizontal'); legend('boxoff')

    
    axes(ha(axes_count));axes_count=axes_count+1;
    yyaxis left
    hold off;
    plot(smooth(delta_cold_perpy(2:end-1,xcut)),'linewidth',1)
    hold on;
%     plot(smooth(jDy_cold(:,xcut)),'linewidth',1)
    plot(smooth(delta_mixed_perpy(2:end-1,xcut)),'linewidth',1)
    plot(smooth(delta_electron_perpy(2:end-1,xcut)),'linewidth',1)
    yyaxis right
    plot(smooth(delta_jDy_electron(2:end-1,xcut)),'linewidth',1)
    yyaxis left
    hold off
    ylabel({'Jperpy/J0'},'FontSize',14)
    xlim(zrange)
    Blegend = legend('\Deltanqv_{sw}','nqv_{fs}','\Deltanqv_e','\DeltagradP_e','Location','northwest','Orientation','horizontal'); legend('boxoff')
%     Blegend = legend('\Deltanqv_{sw}','\Deltanqv_{fs}','Location','northwest','Orientation','horizontal'); legend('boxoff')
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    
    axes(ha(axes_count));axes_count=axes_count+1; %#ok<*LAXES>
    plot(smooth(Jperpy_tot_woJd(:,xcut)),'b','linewidth',1)
    hold on
%     plot(smooth(Jperpy_tot_wJd(:,xcut)),'b--','linewidth',1)
    plot(smooth((delta_Jperpy(2:end-1,xcut))),'r','linewidth',1)
    ylim([ -max(abs(ylim)) max(abs(ylim)) ])
    hold off
    ylabel({'Jperpy_{tot}/J0'},'FontSize',14)
    xlim(zrange)
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    Dlegend = legend('Jperptot wo. gradPe','\DeltaJperp','Location','northwest','Orientation','horizontal'); legend('boxoff')
%     Dlegend = legend('Jperptot wo. gradPe','Jperptot w. gradPe','\DeltaJperp','Location','northwest','Orientation','horizontal'); legend('boxoff')
%     xLabels = get(gca,'xtick');
%     set(gca,'xticklabels',xLabels);
    
    axes(ha(axes_count));axes_count=axes_count+1;
    plot(smooth((Jxdata_interp(:,xcut)-Jxdata_interp0(:,xcut)).*moverq./J0),'b','linewidth',1)
    hold on
    plot(smooth((Jydata_interp(:,xcut)-Jydata_interp0(:,xcut)).*moverq./J0),'g','linewidth',1)
    plot(smooth((Jzdata_interp(:,xcut)-Jzdata_interp0(:,xcut)).*moverq./J0),'r','linewidth',1)
    hold off
    ylabel({'\DeltaJ/J0'},'FontSize',14)
    xlim(zrange)
    if max(abs(ylim)) > .025
        ylim([-max(abs(ylim)) max(abs(ylim))])
    else
        ylim([-.025 .025])
    end
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    legend('Jx','Jy','Jz','Bot','Location','northwest','Orientation','horizontal'); legend('boxoff')
    
    
    axes(ha(axes_count));axes_count=axes_count+1;
%     [ndata_interp] = imgaussfilt((interpolate_Data(ndata,1,i,nx,nz,X,Z,X2,Z2)-1*interpolate_Data(ndata,1,1,nx,nz,X,Z,X2,Z2))./n0,filterNumber);
    hold off
    yyaxis left
    plot(smooth((n_cold_data_interp(:,xcut)-n_cold_data_interp0(:,xcut))./n0),'b','linewidth',1)
    hold on
    ylim([ -max(abs(ylim)) max(abs(ylim)) ])
%     plot(smooth(1+(ndata_interp(:,xcut))),'--k','linewidth',1)
    
%     if max(abs(ylim)) > 1.5
%         ylim([0 max(abs(ylim))])
%     else
%         ylim([0.5 1.5])
%     end
    yyaxis right
    hold on
    plot(smooth((n_mixed_data_interp(:,xcut))./n0),'r','linewidth',1)
    set(gca,'ycolor','r','yminortick','on')
    ylim([0 0.24])
    yyaxis left
    set(gca,'ycolor','b')
    hold off
    ylabel({'\Deltan/n0'},'FontSize',14)
    xlim(zrange)
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5)
    nlegend = legend('sw','fs','Location','northwest','Orientation','horizontal'); legend('boxoff')
    xlabel({'Z','[\lambda_i]'},'FontSize',14)
    
    axes(ha(axes_count));axes_count=axes_count+1;
    hold on
    hold off
    yyaxis left
    plot(smooth(delta_upperpx_cold(:,xcut))./va,'b','linewidth',1)
    hold on
    
    yyaxis right
    plot(smooth(delta_upperpx_mixed(:,xcut))./va,'r','linewidth',1)
    yyaxis left
    plot(smooth(delta_upperpy_cold(:,xcut))./va,'b--','linewidth',1)
    yyaxis right
    plot(smooth(delta_upperpy_mixed(:,xcut))./va,'r--','linewidth',1)
    ylim([-max(abs(ylim)) max(abs(ylim))])
    set(gca,'ycolor','r','yminortick','on')
    hold off
    yyaxis left
    ylabel({'\Deltavperp/va'},'FontSize',14)
    set(gca,'ycolor','b')
    xlim(zrange)
    ylim([-max(abs(ylim)) max(abs(ylim))])
    
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5)
    legend('SW perpx','SW perpy','FS perpx','FS perpy','Location','northwest','Orientation','horizontal'); legend('boxoff')
    %xlabel({'Z','[\lambda_i]'},'FontSize',14)
%     
%     %bulk flow sum check
%     axes(ha(axes_count));axes_count=axes_count+1;
% %     plot(smooth(uswx(:,xcut)),'b','linewidth',1)
% %     hold on
% %     plot(smooth(ufsx(:,xcut)),'g','linewidth',1)
% %     plot(smooth(usumx(:,xcut)),'r','linewidth',1)
% %     hold on
% %     plot(smooth(utotx(:,xcut)),'r--','linewidth',1)
% %     hold off
%     plot(smooth(udiffx(:,xcut)),'b','linewidth',1)
%     hold on
%     plot(smooth(udiffy(:,xcut)),'g','linewidth',1)
%     plot(smooth(udiffz(:,xcut)),'r','linewidth',1)
%     ylabel({'diffv/v'},'FontSize',14)
%     xlim(zrange)
% %     if max(abs(ylim)) > .025
% %         ylim([-max(abs(ylim)) max(abs(ylim))])
% %     else
% %         ylim([-.025 .025])
% %     end
%     set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
%     %     legend('sum','tot','Location','northwest','Orientation','horizontal'); legend('boxoff')
%     legend('vx','vy','vz','Location','northwest','Orientation','horizontal'); legend('boxoff')
    
    
%     axes(ha(axes_count));axes_count=axes_count+1;
%     %     plot(smooth(uswy(:,xcut)),'b','linewidth',1)
%     %     hold on
%     %     plot(smooth(ufsy(:,xcut)),'g','linewidth',1)
%     %     plot(smooth(usumy(:,xcut)),'r','linewidth',1)
%     %     hold on
%     %     plot(smooth(utoty(:,xcut)),'r--','linewidth',1)
%     %     hold off
%     plot(smooth(udiffy(:,xcut)),'r','linewidth',1)
%     ylabel({'\Deltavy/vy'},'FontSize',14)
%     xlim(zrange)
%     if max(abs(ylim)) > .025
%         ylim([-max(abs(ylim)) max(abs(ylim))])
%     else
%         ylim([-.025 .025])
%     end
%     set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
%     %     legend('sum','tot','Location','northwest','Orientation','horizontal'); legend('boxoff')
%     legend('ion-sum','Location','northwest','Orientation','horizontal'); legend('boxoff')
%     
%     
%     axes(ha(axes_count));axes_count=axes_count+1;
%     %     plot(smooth(uswz(:,xcut)),'b','linewidth',1)
%     %     hold on
%     %     plot(smooth(ufsz(:,xcut)),'g','linewidth',1)
%     %     plot(smooth(usumz(:,xcut)),'r','linewidth',1)
%     %     hold on
%     %     plot(smooth(utotz(:,xcut)),'r--','linewidth',1)
%     %     hold off
%     plot(smooth(udiffz(:,xcut)),'r','linewidth',1)
%     ylabel({'\Deltavz/vz'},'FontSize',14)
%     xlim(zrange)
%     if max(abs(ylim)) > .025
%         ylim([-max(abs(ylim)) max(abs(ylim))])
%     else
%         ylim([-.025 .025])
%     end
%     set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
%     %     legend('sum','tot','Location','northwest','Orientation','horizontal'); legend('boxoff')
%     legend('ion-sum','Location','northwest','Orientation','horizontal'); legend('boxoff')
    
    
    
    
    
    %Real Current vs Calculated Current
    %     [Jxdata_interp_real] = interpolate_Data(Jdata,1,i,nx,nz,X,Z,X2,Z2);
    %     Jxdata_interp_real = imgaussfilt(Jxdata_interp_real,filterNumber);
    %     [Jydata_interp_real] = interpolate_Data(Jdata,2,i,nx,nz,X,Z,X2,Z2);
    %     Jydata_interp_real = imgaussfilt(Jydata_interp_real,filterNumber);
    %     [Jzdata_interp_real] = interpolate_Data(Jdata,3,i,nx,nz,X,Z,X2,Z2);
    %     Jzdata_interp_real = imgaussfilt(Jzdata_interp_real,filterNumber);
    %
    %
    %     axes(ha(axes_count));axes_count=axes_count+1;
    %     hold off;
    %     plot(smooth(Jxdata_interp_real(2:end-1,xcut).*moverq./J0),'linewidth',1)
    %     hold on;
    %     plot(smooth(Jxdata_interp(:,xcut).*moverq./J0),'linewidth',1)
    %     hold off
    %     ylabel({'Jx';'[J0]'},'FontSize',14)
    %     xlim(zrange)
    %     legend('Jreal','Jcalc','Location','southeast','Orientation','horizontal'); legend('boxoff')
    %     set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    %
    %     axes(ha(axes_count));axes_count=axes_count+1;
    %     hold off;
    %     plot(smooth(Jydata_interp_real(2:end-1,xcut).*moverq./J0),'linewidth',1)
    %     hold on;
    %     plot(smooth(Jydata_interp(:,xcut).*moverq./J0),'linewidth',1)
    %     hold off
    %     ylabel({'Jy';'[J0]'},'FontSize',14)
    %     xlim(zrange)
    %     legend('Jreal','Jcalc','Location','southeast','Orientation','horizontal'); legend('boxoff')
    %     set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    %
    %
    %     axes(ha(axes_count));axes_count=axes_count+1;
    %     hold off;
    %     plot(smooth(Jzdata_interp_real(2:end-1,xcut).*moverq./J0),'linewidth',1)
    %     hold on;
    %     plot(smooth(Jzdata_interp(:,xcut).*moverq./J0),'linewidth',1)
    %     hold off
    %     ylabel({'Jz';'[J0]'},'FontSize',14)
    %     xlim(zrange)
    %     legend('Jreal','Jcalc','Location','southeast','Orientation','horizontal'); legend('boxoff')
    %     set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    %
    %% Draw
    drawnow
    
    %     fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/',RunNumber,'/','2d_Hybrid_Foreshock_paperFig3_',RunNumber,'_',string(i));
    
    %     print(gcf,'-dpng','-r300','-loose',fileNamePNG);
    
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