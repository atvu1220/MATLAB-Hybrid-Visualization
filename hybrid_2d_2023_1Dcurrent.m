clear; close all
A = [0,0.447058826684952,0.741176486015320;0.00787401571869850,0.451412707567215,0.743214488029480;0.0157480314373970,0.455766558647156,0.745252430438995;0.0236220471560955,0.460120439529419,0.747290432453156;0.0314960628747940,0.464474290609360,0.749328434467316;0.0393700785934925,0.468828171491623,0.751366376876831;0.0472440943121910,0.473182022571564,0.753404378890991;0.0551181100308895,0.477535903453827,0.755442321300507;0.0629921257495880,0.481889754533768,0.757480323314667;0.0708661451935768,0.486243635416031,0.759518325328827;0.0787401571869850,0.490597516298294,0.761556267738342;0.0866141766309738,0.494951367378235,0.763594269752502;0.0944881886243820,0.499305248260498,0.765632271766663;0.102362208068371,0.503659129142761,0.767670214176178;0.110236220061779,0.508012950420380,0.769708216190338;0.118110239505768,0.512366831302643,0.771746218204498;0.125984251499176,0.516720712184906,0.773784160614014;0.133858263492584,0.521074593067169,0.775822162628174;0.141732290387154,0.525428414344788,0.777860105037689;0.149606302380562,0.529782295227051,0.779898107051849;0.157480314373970,0.534136176109314,0.781936109066010;0.165354326367378,0.538490056991577,0.783974051475525;0.173228353261948,0.542843937873840,0.786012053489685;0.181102365255356,0.547197759151459,0.788050055503845;0.188976377248764,0.551551640033722,0.790087997913361;0.196850389242172,0.555905520915985,0.792125999927521;0.204724416136742,0.560259401798248,0.794164001941681;0.212598428130150,0.564613223075867,0.796201944351196;0.220472440123558,0.568967103958130,0.798239946365356;0.228346452116966,0.573320984840393,0.800277888774872;0.236220479011536,0.577674865722656,0.802315890789032;0.244094491004944,0.582028746604919,0.804353892803192;0.251968502998352,0.586382567882538,0.806391835212708;0.259842514991760,0.590736448764801,0.808429837226868;0.267716526985168,0.595090329647064,0.810467839241028;0.275590538978577,0.599444210529327,0.812505781650543;0.283464580774307,0.603798031806946,0.814543783664703;0.291338592767715,0.608151912689209,0.816581785678864;0.299212604761124,0.612505793571472,0.818619728088379;0.307086616754532,0.616859674453735,0.820657730102539;0.314960628747940,0.621213555335999,0.822695732116699;0.322834640741348,0.625567376613617,0.824733674526215;0.330708652734756,0.629921257495880,0.826771676540375;0.338582664728165,0.634275138378143,0.828809618949890;0.346456706523895,0.638629019260407,0.830847620964050;0.354330718517303,0.642982840538025,0.832885622978210;0.362204730510712,0.647336721420288,0.834923565387726;0.370078742504120,0.651690602302551,0.836961567401886;0.377952754497528,0.656044483184815,0.838999569416046;0.385826766490936,0.660398364067078,0.841037511825562;0.393700778484345,0.664752185344696,0.843075513839722;0.401574790477753,0.669106066226959,0.845113515853882;0.409448832273483,0.673459947109222,0.847151458263397;0.417322844266892,0.677813827991486,0.849189460277557;0.425196856260300,0.682167649269104,0.851227402687073;0.433070868253708,0.686521530151367,0.853265404701233;0.440944880247116,0.690875411033630,0.855303406715393;0.448818892240524,0.695229291915894,0.857341349124908;0.456692904233933,0.699583113193512,0.859379351139069;0.464566916227341,0.703936994075775,0.861417353153229;0.472440958023071,0.708290874958038,0.863455295562744;0.480314970016480,0.712644755840302,0.865493297576904;0.488188982009888,0.716998636722565,0.867531299591065;0.496062994003296,0.721352458000183,0.869569242000580;0.503937005996704,0.725706338882446,0.871607244014740;0.511811017990112,0.730060219764710,0.873645186424255;0.519685029983521,0.734414100646973,0.875683188438416;0.527559041976929,0.738767921924591,0.877721190452576;0.535433053970337,0.743121802806854,0.879759132862091;0.543307065963745,0.747475683689117,0.881797134876251;0.551181077957153,0.751829564571381,0.883835136890411;0.559055089950562,0.756183445453644,0.885873079299927;0.566929161548615,0.760537266731262,0.887911081314087;0.574803173542023,0.764891147613525,0.889949083328247;0.582677185535431,0.769245028495789,0.891987025737763;0.590551197528839,0.773598909378052,0.894025027751923;0.598425209522247,0.777952730655670,0.896062970161438;0.606299221515656,0.782306611537933,0.898100972175598;0.614173233509064,0.786660492420197,0.900138974189758;0.622047245502472,0.791014373302460,0.902176916599274;0.629921257495880,0.795368254184723,0.904214918613434;0.637795269489288,0.799722075462341,0.906252920627594;0.645669281482697,0.804075956344605,0.908290863037109;0.653543293476105,0.808429837226868,0.910328865051270;0.661417305469513,0.812783718109131,0.912366867065430;0.669291317462921,0.817137539386749,0.914404809474945;0.677165329456329,0.821491420269013,0.916442811489105;0.685039341449738,0.825845301151276,0.918480753898621;0.692913413047791,0.830199182033539,0.920518755912781;0.700787425041199,0.834553062915802,0.922556757926941;0.708661437034607,0.838906884193420,0.924594700336456;0.716535449028015,0.843260765075684,0.926632702350617;0.724409461021423,0.847614645957947,0.928670704364777;0.732283473014832,0.851968526840210,0.930708646774292;0.740157485008240,0.856322348117828,0.932746648788452;0.748031497001648,0.860676229000092,0.934784650802612;0.755905508995056,0.865030109882355,0.936822593212128;0.763779520988464,0.869383990764618,0.938860595226288;0.771653532981873,0.873737871646881,0.940898597240448;0.779527544975281,0.878091692924500,0.942936539649963;0.787401556968689,0.882445573806763,0.944974541664124;0.795275568962097,0.886799454689026,0.947012484073639;0.803149580955505,0.891153335571289,0.949050486087799;0.811023592948914,0.895507156848908,0.951088488101959;0.818897664546967,0.899861037731171,0.953126430511475;0.826771676540375,0.904214918613434,0.955164432525635;0.834645688533783,0.908568799495697,0.957202434539795;0.842519700527191,0.912922620773315,0.959240376949310;0.850393712520599,0.917276501655579,0.961278378963471;0.858267724514008,0.921630382537842,0.963316380977631;0.866141736507416,0.925984263420105,0.965354323387146;0.874015748500824,0.930338144302368,0.967392325401306;0.881889760494232,0.934691965579987,0.969430267810822;0.889763772487640,0.939045846462250,0.971468269824982;0.897637784481049,0.943399727344513,0.973506271839142;0.905511796474457,0.947753608226776,0.975544214248657;0.913385808467865,0.952107429504395,0.977582216262817;0.921259820461273,0.956461310386658,0.979620218276978;0.929133832454681,0.960815191268921,0.981658160686493;0.937007844448090,0.965169072151184,0.983696162700653;0.944881916046143,0.969522953033447,0.985734164714813;0.952755928039551,0.973876774311066,0.987772107124329;0.960629940032959,0.978230655193329,0.989810109138489;0.968503952026367,0.982584536075592,0.991848051548004;0.976377964019775,0.986938416957855,0.993886053562164;0.984251976013184,0.991292238235474,0.995924055576325;0.992125988006592,0.995646119117737,0.997961997985840;1,1,1;0.997150719165802,0.992800235748291,0.993627429008484;0.994301497936249,0.985600471496582,0.987254917621613;0.991452217102051,0.978400707244873,0.980882346630096;0.988602936267853,0.971201002597809,0.974509775638580;0.985753655433655,0.964001238346100,0.968137264251709;0.982904434204102,0.956801474094391,0.961764693260193;0.980055153369904,0.949601709842682,0.955392181873322;0.977205872535706,0.942401945590973,0.949019610881805;0.974356591701508,0.935202181339264,0.942647039890289;0.971507370471954,0.928002476692200,0.936274528503418;0.968658089637756,0.920802712440491,0.929901957511902;0.965808808803558,0.913602948188782,0.923529386520386;0.962959587574005,0.906403183937073,0.917156875133514;0.960110306739807,0.899203419685364,0.910784304141998;0.957261025905609,0.892003655433655,0.904411792755127;0.954411745071411,0.884803950786591,0.898039221763611;0.951562523841858,0.877604186534882,0.891666650772095;0.948713243007660,0.870404422283173,0.885294139385223;0.945863962173462,0.863204658031464,0.878921568393707;0.943014681339264,0.856004893779755,0.872548997402191;0.940165460109711,0.848805129528046,0.866176486015320;0.937316179275513,0.841605365276337,0.859803915023804;0.934466898441315,0.834405660629273,0.853431344032288;0.931617677211762,0.827205896377564,0.847058832645416;0.928768396377564,0.820006132125855,0.840686261653900;0.925919115543366,0.812806367874146,0.834313750267029;0.923069834709168,0.805606603622437,0.827941179275513;0.920220613479614,0.798406839370728,0.821568608283997;0.917371332645416,0.791207134723663,0.815196096897125;0.914522051811218,0.784007370471954,0.808823525905609;0.911672770977020,0.776807606220245,0.802450954914093;0.908823549747467,0.769607841968536,0.796078443527222;0.905974268913269,0.762408077716827,0.789705872535706;0.903124988079071,0.755208313465118,0.783333361148834;0.900275766849518,0.748008608818054,0.776960790157318;0.897426486015320,0.740808844566345,0.770588219165802;0.894577205181122,0.733609080314636,0.764215707778931;0.891727924346924,0.726409316062927,0.757843136787415;0.888878703117371,0.719209551811218,0.751470565795898;0.886029422283173,0.712009787559509,0.745098054409027;0.883180141448975,0.704810023307800,0.738725483417511;0.880330860614777,0.697610318660736,0.732352972030640;0.877481639385223,0.690410554409027,0.725980401039124;0.874632358551025,0.683210790157318,0.719607830047607;0.871783077716827,0.676011025905609,0.713235318660736;0.868933856487274,0.668811261653900,0.706862747669220;0.866084575653076,0.661611497402191,0.700490176677704;0.863235294818878,0.654411792755127,0.694117665290833;0.860386013984680,0.647212028503418,0.687745094299316;0.857536792755127,0.640012264251709,0.681372523307800;0.854687511920929,0.632812500000000,0.675000011920929;0.851838231086731,0.625612735748291,0.668627440929413;0.848988950252533,0.618412971496582,0.662254929542542;0.846139729022980,0.611213207244873,0.655882358551025;0.843290448188782,0.604013502597809,0.649509787559509;0.840441167354584,0.596813738346100,0.643137276172638;0.837591946125031,0.589613974094391,0.636764705181122;0.834742665290833,0.582414209842682,0.630392134189606;0.831893384456635,0.575214445590973,0.624019622802734;0.829044103622437,0.568014681339264,0.617647051811218;0.826194882392883,0.560814976692200,0.611274540424347;0.823345601558685,0.553615212440491,0.604901969432831;0.820496320724487,0.546415448188782,0.598529398441315;0.817647099494934,0.539215683937073,0.592156887054443;0.814797818660736,0.532015919685364,0.585784316062927;0.811948537826538,0.524816155433655,0.579411745071411;0.809099256992340,0.517616450786591,0.573039233684540;0.806250035762787,0.510416686534882,0.566666662693024;0.803400754928589,0.503216922283173,0.560294091701508;0.800551474094391,0.496017158031464,0.553921580314636;0.797702193260193,0.488817393779755,0.547549009323120;0.794852972030640,0.481617659330368,0.541176497936249;0.792003691196442,0.474417895078659,0.534803926944733;0.789154410362244,0.467218130826950,0.528431355953217;0.786305189132690,0.460018396377564,0.522058844566345;0.783455908298492,0.452818632125855,0.515686273574829;0.780606627464294,0.445618867874146,0.509313702583313;0.777757346630096,0.438419133424759,0.502941191196442;0.774908125400543,0.431219369173050,0.496568620204926;0.772058844566345,0.424019604921341,0.490196079015732;0.769209563732147,0.416819840669632,0.483823537826538;0.766360282897949,0.409620106220245,0.477450996637344;0.763511061668396,0.402420341968536,0.471078425645828;0.760661780834198,0.395220577716827,0.464705884456635;0.757812500000000,0.388020843267441,0.458333343267441;0.754963278770447,0.380821079015732,0.451960772275925;0.752113997936249,0.373621314764023,0.445588231086731;0.749264717102051,0.366421580314636,0.439215689897537;0.746415436267853,0.359221816062927,0.432843148708344;0.743566215038300,0.352022051811218,0.426470577716827;0.740716934204102,0.344822317361832,0.420098036527634;0.737867653369904,0.337622553110123,0.413725495338440;0.735018372535706,0.330422788858414,0.407352954149246;0.732169151306152,0.323223054409027,0.400980383157730;0.729319870471954,0.316023290157318,0.394607841968536;0.726470589637756,0.308823525905609,0.388235300779343;0.723621368408203,0.301623791456223,0.381862759590149;0.720772087574005,0.294424027204514,0.375490188598633;0.717922806739807,0.287224262952805,0.369117647409439;0.715073525905609,0.280024498701096,0.362745106220245;0.712224304676056,0.272824764251709,0.356372565031052;0.709375023841858,0.265625000000000,0.349999994039536;0.706525743007660,0.258425235748291,0.343627452850342;0.703676462173462,0.251225501298904,0.337254911661148;0.700827240943909,0.244025737047195,0.330882370471954;0.697977960109711,0.236825987696648,0.324509799480438;0.695128679275513,0.229626223444939,0.318137258291245;0.692279458045960,0.222426474094391,0.311764717102051;0.689430177211762,0.215226724743843,0.305392146110535;0.686580896377564,0.208026960492134,0.299019604921341;0.683731615543366,0.200827211141586,0.292647063732147;0.680882394313812,0.193627446889877,0.286274522542954;0.678033113479614,0.186427697539330,0.279901951551437;0.675183832645416,0.179227948188782,0.273529410362244;0.672334551811218,0.172028183937073,0.267156869173050;0.669485330581665,0.164828434586525,0.260784327983856;0.666636049747467,0.157628685235977,0.254411756992340;0.663786768913269,0.150428920984268,0.248039215803146;0.660937547683716,0.143229171633720,0.241666674613953;0.658088266849518,0.136029407382011,0.235294118523598;0.655238986015320,0.128829658031464,0.228921577334404;0.652389705181122,0.121629901230335,0.222549021244049;0.649540483951569,0.114430151879787,0.216176480054855;0.646691203117371,0.107230395078659,0.209803923964500;0.643841922283173,0.100030638277531,0.203431382775307;0.640992641448975,0.0928308814764023,0.197058826684952;0.638143420219421,0.0856311321258545,0.190686285495758;0.635294139385223,0.0784313753247261,0.184313729405403];
%Decompises current from local hybrid simulations of a planar shock with
%top/bot solar wind ions as mixed/cold outputs files. Once a
%particle reverses direction it is always considered as a "foreshock"
%particle in the hybrid code.
%2/6/2023
outputFolder = '29';
outputDirectory = strcat('/home/andrew/Documents/Run',outputFolder);

RunNumber= outputFolder;
int='int32';real='float32';

[qx,qy,qz,nt,nx,ny,nz,~] = read_Coordinates(outputDirectory);
[X,Z,X2,Z2] = scale_Data(qx,qz);
timeSteps = 3000;
outputSteps = 25;

nt=	floor(timeSteps/outputSteps);
va = 48.95;
moverq=1.0378e-8;
lambda_i = (qx(2)-qx(1));
q=1.6e-19;
MA=10;
dt = 0.02;
stepInterval = 1;



startFrame = 50*2;
endFrame = startFrame;
xcut = 700;
TD = 150;
TD = 450;

if TD == 150
    zrange = [ TD-126 TD+126];
    fileNamePNG = strcat('/home/andrew/Documents/output/','2d_Hybrid_current_',RunNumber,'_','botTD_t=',string(floor(startFrame/2)));
    fileName    = strcat('/home/andrew/Documents/output/','2d_Hybrid_current_',RunNumber,'_','botTD_x=',string(xcut),'_movie');

elseif TD==450
    zrange = [ TD-126 TD+126];
    fileNamePNG = strcat('/home/andrew/Documents/output/','2d_Hybrid_current_',RunNumber,'_','topTD_t=',string(floor(startFrame/2)));
    fileName    = strcat('/home/andrew/Documents/output/','2d_Hybrid_current_',RunNumber,'_','topTD_x=',string(xcut),'_movie');
end




nz_min = 2;
nz_max = nz-1;
nx_min = 2;
nx_max = nx-1;

gradPe = 0;
ele=0;
del = 1;

%% Load Data
[ndata] = read_Plasma('n',nt,nx,ny,nz,outputDirectory);
disp('n loaded')
[uedata] = read_Plasma('ue',nt,nx,ny,nz,outputDirectory);
disp('ue loaded')
[udata] = read_Plasma('Momentum',nt,nx,ny,nz,outputDirectory);
disp('u loaded')
[Jdata] = read_Plasma('Current',nt,nx,ny,nz,outputDirectory);
disp('J loaded')
[Bdata] = read_Plasma('B',nt,nx,ny,nz,outputDirectory);
disp('B loaded')
Btcdata = edge_to_center(Bdata);

[n_bot_data] = read_Plasma('n_cold',nt,nx,ny,nz,outputDirectory);
disp('n bot loaded')
[n_bot_foreshock_data] = read_Plasma('n_cold_foreshock',nt,nx,ny,nz,outputDirectory);
disp('n foreshock loaded')
[up_bot_data] = read_Plasma('up_cold',nt,nx,ny,nz,outputDirectory);
disp('u bot loaded')
[up_bot_foreshock_data] = read_Plasma('up_cold_foreshock',nt,nx,ny,nz,outputDirectory);
disp('u foreshock loaded')

[n_top_data] = read_Plasma('n_mixed',nt,nx,ny,nz,outputDirectory);
disp('n bot loaded')
[n_top_foreshock_data] = read_Plasma('n_mixed_foreshock',nt,nx,ny,nz,outputDirectory);
disp('n foreshock loaded')
[up_top_data] = read_Plasma('up_mixed',nt,nx,ny,nz,outputDirectory);
disp('u bot loaded')
[up_top_foreshock_data] = read_Plasma('up_mixed_foreshock',nt,nx,ny,nz,outputDirectory);
disp('u foreshock loaded')






if startFrame == 1
    v = VideoWriter(fileName);
    v.Quality = 100;
    v.FrameRate= 10;
    open(v);
end


plot_width= 1;
plot_height= 10;
plot_number = 1;

filterNumbern = 3;
filterNumber = 0.1;%0.1;
filterNumber2 = 0.1;%0.01;
filterNumber3 = 3; %Particle J
filterNumber4=3; %J current and B
filterNumber5=3; %u and Ji-Je
%% Initial State
J0 = (5e-9)/ ((lambda_i));
nv0 = (5e-9)/((4*pi*10^-7*(lambda_i)*10^3));
% B0 = 5e-9/moverq/2;
Btot0 = moverq.*(interpolate_Data(Bdata,1,1,nx,nz,X,Z,X2,Z2).^2 + interpolate_Data(Bdata,2,1,nx,nz,X,Z,X2,Z2).^2).^(1/2);
B0 =  median(Btot0,'all')./moverq;

E0 = (B0)* va;
J0 = (B0)/ ((qx(2)-qx(1)));
% Btot0 = moverq.*(interpolate_Data(Bdata,1,1,nx,nz,X,Z,X2,Z2).^2 + interpolate_Data(Bdata,2,1,nx,nz,X,Z,X2,Z2).^2).^(1/2);
% Btot0 = 
InitialOffsetTime = 30;
[n_data_interp0] = interpolate_Data(ndata,1,InitialOffsetTime,nx,nz,X,Z,X2,Z2);

[n_bot_data_interp0] = interpolate_Data(n_bot_data,1,InitialOffsetTime,nx,nz,X,Z,X2,Z2);
n0 = mean(n_bot_data_interp0(3:nz/4,3:nx/2),'all');
n0 = 2.5e+15%imgaussfilt(n0,1);

[n_top_data_interp0] = interpolate_Data(n_top_data,1,InitialOffsetTime,nx,nz,X,Z,X2,Z2);

[Bxdata_interp0] = (interpolate_Data(Bdata,1,InitialOffsetTime,nx,nz,X,Z,X2,Z2));
[Bydata_interp0] = (interpolate_Data(Bdata,2,InitialOffsetTime,nx,nz,X,Z,X2,Z2));
[Bzdata_interp0] = (interpolate_Data(Bdata,3,InitialOffsetTime,nx,nz,X,Z,X2,Z2));

[Btcxdata_interp0] = imgaussfilt((interpolate_Data(Btcdata,1,InitialOffsetTime,nx,nz,X,Z,X2,Z2)),filterNumber2);
[Btcydata_interp0] = imgaussfilt((interpolate_Data(Btcdata,2,InitialOffsetTime,nx,nz,X,Z,X2,Z2)),filterNumber2);
[Btczdata_interp0] = imgaussfilt((interpolate_Data(Btcdata,3,InitialOffsetTime,nx,nz,X,Z,X2,Z2)),filterNumber2);

[upx_bot_data_interp0] = ((interpolate_Data(up_bot_data,1,InitialOffsetTime,nx,nz,X,Z,X2,Z2)));
[upy_bot_data_interp0] = ((interpolate_Data(up_bot_data,2,InitialOffsetTime,nx,nz,X,Z,X2,Z2)));
[upz_bot_data_interp0] = ((interpolate_Data(up_bot_data,3,InitialOffsetTime,nx,nz,X,Z,X2,Z2)));

[ppx_bot_data_interp0] = n_bot_data_interp0.*(upx_bot_data_interp0);
[ppy_bot_data_interp0] = n_bot_data_interp0.*(upy_bot_data_interp0);
[ppz_bot_data_interp0] = n_bot_data_interp0.*(upz_bot_data_interp0);

[upx_top_data_interp0] = ((interpolate_Data(up_top_data,1,InitialOffsetTime,nx,nz,X,Z,X2,Z2)));
[upy_top_data_interp0] = ((interpolate_Data(up_top_data,2,InitialOffsetTime,nx,nz,X,Z,X2,Z2)));
[upz_top_data_interp0] = ((interpolate_Data(up_top_data,3,InitialOffsetTime,nx,nz,X,Z,X2,Z2)));

[ppx_top_data_interp0] = n_top_data_interp0.*(upx_top_data_interp0);
[ppy_top_data_interp0] = n_top_data_interp0.*(upy_top_data_interp0);
[ppz_top_data_interp0] = n_top_data_interp0.*(upz_top_data_interp0);

[Jxdata_interp0] = (interpolate_Data(Jdata,1,InitialOffsetTime,nx,nz,X,Z,X2,Z2));
[Jydata_interp0] = (interpolate_Data(Jdata,2,InitialOffsetTime,nx,nz,X,Z,X2,Z2));
[Jzdata_interp0] = (interpolate_Data(Jdata,3,InitialOffsetTime,nx,nz,X,Z,X2,Z2));

[uex_tot0] =- (interpolate_Data(uedata,1,InitialOffsetTime,nx,nz,X,Z,X2,Z2));
[uey_tot0] = -(interpolate_Data(uedata,2,InitialOffsetTime,nx,nz,X,Z,X2,Z2));
[uez_tot0] = -(interpolate_Data(uedata,3,InitialOffsetTime,nx,nz,X,Z,X2,Z2));

[ux_tot0] =- (interpolate_Data(udata,1,InitialOffsetTime,nx,nz,X,Z,X2,Z2));
[uy_tot0] = -(interpolate_Data(udata,2,InitialOffsetTime,nx,nz,X,Z,X2,Z2));
[uz_tot0] = -(interpolate_Data(udata,3,InitialOffsetTime,nx,nz,X,Z,X2,Z2));

[~,~,~,ueperpx0,ueperpy0,ueperpz0] = calculate_componentsVector(Btcxdata_interp0,Btcydata_interp0,Btczdata_interp0,uex_tot0,uey_tot0,uez_tot0);
[~,~,~,uperpx0,uperpy0,uperpz0] = calculate_componentsVector(Btcxdata_interp0,Btcydata_interp0,Btczdata_interp0,uex_tot0,uey_tot0,uez_tot0);

pex_tot0 = n_data_interp0 .* uex_tot0;
pey_tot0 = n_data_interp0 .* uey_tot0;
pez_tot0 = n_data_interp0 .* uez_tot0;

pex_bot0 = n_bot_data_interp0 .* uex_tot0;
pey_bot0 = n_bot_data_interp0 .* uey_tot0;
pez_bot0 = n_bot_data_interp0 .* uez_tot0;

pex_top0 = n_top_data_interp0 .* uex_tot0;
pey_top0 = n_top_data_interp0 .* uey_tot0;
pez_top0 = n_top_data_interp0 .* uez_tot0;

px_tot0 = n_data_interp0 .* ux_tot0;
py_tot0 = n_data_interp0 .* uy_tot0;
pz_tot0 = n_data_interp0 .* uz_tot0;


%% Calculations in each Step
% fig = figure('Position',[ 1 1 850 1150]);
fig = figure('Position',[ 1 1 1350 2150]);
for i=startFrame:stepInterval:endFrame
    i
    [ha,~] = tight_subplot(plot_height,plot_width,[0.01 0.01],0.051,0.1);
    %h = sgtitle(sprintf('time = %2.2f \\omega_{ci}^{-1} at x=%3d',output*dt*double(i),xcut));
    h = annotation('textbox',[0.30 0.9005 0.1 0.1],'String',sprintf('time = %2.2f \\omega_{ci}^{-1} at x=%3d',outputSteps*dt*double(i),xcut),'EdgeColor','none','fontsize',26)

    plot_number = 1;
    axes_count = 1;
    set(gcf,'color','w');
    colormap(A)
    
%% Data Interp
    [n_data_interp] = (interpolate_Data(ndata,1,i,nx,nz,X,Z,X2,Z2));

    [n_bot_data_interp] = (interpolate_Data(n_bot_data,1,i,nx,nz,X,Z,X2,Z2));
    [n_bot_foreshock_data_interp] = (interpolate_Data(n_bot_foreshock_data,1,i,nx,nz,X,Z,X2,Z2));

    [n_top_data_interp] = (interpolate_Data(n_top_data,1,i,nx,nz,X,Z,X2,Z2));
    [n_top_foreshock_data_interp] = (interpolate_Data(n_top_foreshock_data,1,i,nx,nz,X,Z,X2,Z2));

    %Magnetic Fields
    [Bxdata_interp] = (interpolate_Data(Bdata,1,i,nx,nz,X,Z,X2,Z2));
    [Bydata_interp] = ((interpolate_Data(Bdata,2,i,nx,nz,X,Z,X2,Z2)));
    [Bzdata_interp] = ((interpolate_Data(Bdata,3,i,nx,nz,X,Z,X2,Z2)));

    %Delta Magnetic Fields
    delta_Bxdata_interp = Bxdata_interp - del*Bxdata_interp0;
    delta_Bydata_interp = Bydata_interp - del*Bydata_interp0;

    %bot
    upx_bot_data_interp = ((interpolate_Data(up_bot_data,1,i,nx,nz,X,Z,X2,Z2)));
    upy_bot_data_interp = ((interpolate_Data(up_bot_data,2,i,nx,nz,X,Z,X2,Z2)));
    upz_bot_data_interp = ((interpolate_Data(up_bot_data,3,i,nx,nz,X,Z,X2,Z2)));
    
    %bot Foreshock
    upx_bot_foreshock_data_interp = (interpolate_Data(up_bot_foreshock_data,1,i,nx,nz,X,Z,X2,Z2));
    upy_bot_foreshock_data_interp = (interpolate_Data(up_bot_foreshock_data,2,i,nx,nz,X,Z,X2,Z2));
    upz_bot_foreshock_data_interp = (interpolate_Data(up_bot_foreshock_data,3,i,nx,nz,X,Z,X2,Z2));

    %top
    upx_top_data_interp = ((interpolate_Data(up_top_data,1,i,nx,nz,X,Z,X2,Z2)));
    upy_top_data_interp = ((interpolate_Data(up_top_data,2,i,nx,nz,X,Z,X2,Z2)));
    upz_top_data_interp = ((interpolate_Data(up_top_data,3,i,nx,nz,X,Z,X2,Z2)));
    
    %top Foreshock
    upx_top_foreshock_data_interp = (interpolate_Data(up_top_foreshock_data,1,i,nx,nz,X,Z,X2,Z2));
    upy_top_foreshock_data_interp = (interpolate_Data(up_top_foreshock_data,2,i,nx,nz,X,Z,X2,Z2));
    upz_top_foreshock_data_interp = (interpolate_Data(up_top_foreshock_data,3,i,nx,nz,X,Z,X2,Z2));
    
    %Currents
    [Jxdata_interp] = (interpolate_Data(Jdata,1,i,nx,nz,X,Z,X2,Z2));
    [Jydata_interp] = (interpolate_Data(Jdata,2,i,nx,nz,X,Z,X2,Z2));
    [Jzdata_interp] = (interpolate_Data(Jdata,3,i,nx,nz,X,Z,X2,Z2));
    
    %Electrons
    [uex_tot] = -(interpolate_Data(uedata,1,i,nx,nz,X,Z,X2,Z2));
    [uey_tot] = -(interpolate_Data(uedata,2,i,nx,nz,X,Z,X2,Z2));
    [uez_tot] = -(interpolate_Data(uedata,3,i,nx,nz,X,Z,X2,Z2));

    %Ions
    [ux_tot] = -(interpolate_Data(udata,1,i,nx,nz,X,Z,X2,Z2));
    [uy_tot] = -(interpolate_Data(udata,2,i,nx,nz,X,Z,X2,Z2));
    [uz_tot] = -(interpolate_Data(udata,3,i,nx,nz,X,Z,X2,Z2));
%% Total Ion Flow
    px_tot = n_data_interp .* ux_tot;
    py_tot = n_data_interp .* uy_tot;
    pz_tot = n_data_interp .* uz_tot;

    [~,~,~,ion_perpx_tot,ion_perpy_tot,~] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,px_tot,py_tot,pz_tot);
    [~,~,~,ion_perpx_tot0,ion_perpy_tot0,~] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,px_tot0,py_tot0,pz_tot0);
    
    delta_ion_perpx_tot = (ion_perpx_tot-del*ion_perpx_tot0).*10^3 * 10^-9.*-q./nv0;
    delta_ion_perpy_tot = (ion_perpy_tot-del*ion_perpy_tot0).*10^3 * 10^-9.*-q./nv0;

%% Electron Flow
    %total electron
    pex_tot = n_data_interp .* uex_tot;
    pey_tot = n_data_interp .* uey_tot;
    pez_tot = n_data_interp .* uez_tot;

    [electron_parax_tot,electron_paray_tot,~,electron_perpx_tot,electron_perpy_tot,~] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_tot,pey_tot,pez_tot);
    [electron_parax_tot0,electron_paray_tot0,~,electron_perpx_tot0,electron_perpy_tot0,~] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_tot0,pey_tot0,pez_tot0);
    
    delta_electron_perpx_tot = (electron_perpx_tot-del*electron_perpx_tot0).*10^3 * 10^-9.*-q./nv0;
    delta_electron_perpy_tot = (electron_perpy_tot-del*electron_perpy_tot0).*10^3 * 10^-9.*-q./nv0;

    delta_electron_parax_tot = (electron_parax_tot-del*electron_parax_tot0).*10^3 * 10^-9.*-q./nv0;
    delta_electron_paray_tot = (electron_paray_tot-del*electron_paray_tot0).*10^3 * 10^-9.*-q./nv0;
    
    %bot Electron Momentum
    pex_bot = n_bot_data_interp .* uex_tot;
    pey_bot = n_bot_data_interp .* uey_tot;
    pez_bot = n_bot_data_interp .* uez_tot;

    [electron_parax_bot,electron_paray_bot,~,electron_perpx_bot,electron_perpy_bot,~] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_bot,pey_bot,pez_bot);
    [electron_parax_bot0,electron_paray_bot0,~,electron_perpx_bot0,electron_perpy_bot0,~] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_bot0,pey_bot0,pez_bot0);
    
    delta_electron_perpx_bot = (electron_perpx_bot-del*electron_perpx_bot0).*10^3 * 10^-9.*-q./nv0;
    delta_electron_perpy_bot = (electron_perpy_bot-del*electron_perpy_bot0).*10^3 * 10^-9.*-q./nv0;

    delta_electron_parax_bot = (electron_parax_bot-del*electron_parax_bot0).*10^3 * 10^-9.*-q./nv0;
    delta_electron_paray_bot = (electron_paray_bot-del*electron_paray_bot0).*10^3 * 10^-9.*-q./nv0;

    %bot foreshock Electron Momentum
    pex_bot_foreshock = n_bot_foreshock_data_interp .* uex_tot;
    pey_bot_foreshock = n_bot_foreshock_data_interp .* uey_tot;
    pez_bot_foreshock = n_bot_foreshock_data_interp .* uez_tot;

    [electron_parax_bot_foreshock,electron_paray_bot_foreshock,~,electron_perpx_bot_foreshock,electron_perpy_bot_foreshock,~] = ...
        calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_bot_foreshock,pey_bot_foreshock,pez_bot_foreshock);

    delta_electron_perpx_bot_foreshock = (electron_perpx_bot_foreshock).*10^3 * 10^-9.*-q./nv0;
    delta_electron_perpy_bot_foreshock = (electron_perpy_bot_foreshock).*10^3 * 10^-9.*-q./nv0;

    delta_electron_parax_bot_foreshock = (electron_parax_bot_foreshock).*10^3 * 10^-9.*-q./nv0;
    delta_electron_paray_bot_foreshock = (electron_paray_bot_foreshock).*10^3 * 10^-9.*-q./nv0;

    %top Electron Momentum
    pex_top = n_top_data_interp .* uex_tot;
    pey_top = n_top_data_interp .* uey_tot;
    pez_top = n_top_data_interp .* uez_tot;

    [electron_parax_top,electron_paray_top,~,electron_perpx_top,electron_perpy_top,~] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_top,pey_top,pez_top);
    [electron_parax_top0,electron_paray_top0,~,electron_perpx_top0,electron_perpy_top0,~] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_top0,pey_top0,pez_top0);
    
    delta_electron_perpx_top = (electron_perpx_top-del*electron_perpx_top0).*10^3 * 10^-9.*-q./nv0;
    delta_electron_perpy_top = (electron_perpy_top-del*electron_perpy_top0).*10^3 * 10^-9.*-q./nv0;

    delta_electron_parax_top = (electron_parax_top-del*electron_parax_top0).*10^3 * 10^-9.*-q./nv0;
    delta_electron_paray_top = (electron_paray_top-del*electron_paray_top0).*10^3 * 10^-9.*-q./nv0;

    %top foreshock Electron Momentum
    pex_top_foreshock = n_top_foreshock_data_interp .* uex_tot;
    pey_top_foreshock = n_top_foreshock_data_interp .* uey_tot;
    pez_top_foreshock = n_top_foreshock_data_interp .* uez_tot;

    [electron_parax_top_foreshock,electron_paray_top_foreshock,~,electron_perpx_top_foreshock,electron_perpy_top_foreshock,~] = ...
        calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,pex_top_foreshock,pey_top_foreshock,pez_top_foreshock);

    delta_electron_perpx_top_foreshock = (electron_perpx_top_foreshock).*10^3 * 10^-9.*-q./nv0;
    delta_electron_perpy_top_foreshock = (electron_perpy_top_foreshock).*10^3 * 10^-9.*-q./nv0;

    delta_electron_parax_top_foreshock = (electron_parax_top_foreshock).*10^3 * 10^-9.*-q./nv0;
    delta_electron_paray_top_foreshock = (electron_paray_top_foreshock).*10^3 * 10^-9.*-q./nv0;
%% cold Flow
    %Delta bot Flow
    [ppx_bot_data_interp] = n_bot_data_interp.*(upx_bot_data_interp);
    [ppy_bot_data_interp] = n_bot_data_interp.*(upy_bot_data_interp);
    [ppz_bot_data_interp] = n_bot_data_interp.*(upz_bot_data_interp);

    [bot_parax,bot_paray,~,bot_perpx,bot_perpy,~] = ...
        calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,ppx_bot_data_interp,ppy_bot_data_interp,ppz_bot_data_interp);
    [bot_parax0,bot_paray0,~,bot_perpx0,bot_perpy0,~] = ...
        calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,ppx_bot_data_interp0,ppy_bot_data_interp0,ppz_bot_data_interp0);
    
    delta_bot_perpx = (bot_perpx-del*bot_perpx0).*10^3 * 10^-9.*q./nv0;
    delta_bot_perpy = (bot_perpy-del*bot_perpy0).*10^3 * 10^-9.*q./nv0;

    delta_bot_parax = (bot_parax-del*bot_parax0).*10^3 * 10^-9.*q./nv0;
    delta_bot_paray = (bot_paray-del*bot_paray0).*10^3 * 10^-9.*q./nv0;

    %Delta top Flow
    [ppx_top_data_interp] = n_top_data_interp.*(upx_top_data_interp);
    [ppy_top_data_interp] = n_top_data_interp.*(upy_top_data_interp);
    [ppz_top_data_interp] = n_top_data_interp.*(upz_top_data_interp);

    [top_parax,top_paray,~,top_perpx,top_perpy,~] = ...
        calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,ppx_top_data_interp,ppy_top_data_interp,ppz_top_data_interp);
    [top_parax0,top_paray0,~,top_perpx0,top_perpy0,~] = ...
        calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,ppx_top_data_interp0,ppy_top_data_interp0,ppz_top_data_interp0);
    
    delta_top_perpx = (top_perpx-del*top_perpx0).*10^3 * 10^-9.*q./nv0;
    delta_top_perpy = (top_perpy-del*top_perpy0).*10^3 * 10^-9.*q./nv0;

    delta_top_parax = (top_parax-del*top_parax0).*10^3 * 10^-9.*q./nv0;
    delta_top_paray = (top_paray-del*top_paray0).*10^3 * 10^-9.*q./nv0;
%% foreshock Flow
    %Delta bot Bulk Flow
    [ppx_bot_foreshock_data_interp] = n_bot_foreshock_data_interp.*(upx_bot_foreshock_data_interp);
    [ppy_bot_foreshock_data_interp] = n_bot_foreshock_data_interp.*(upy_bot_foreshock_data_interp);
    [ppz_bot_foreshock_data_interp] = n_bot_foreshock_data_interp.*(upz_bot_foreshock_data_interp);
   
    [bot_foreshock_parax,bot_foreshock_paray,~,bot_foreshock_perpx,bot_foreshock_perpy,~] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,ppx_bot_foreshock_data_interp,ppy_bot_foreshock_data_interp,ppz_bot_foreshock_data_interp);

    delta_bot_foreshock_perpx = (bot_foreshock_perpx).*10^3 * 10^-9.*q./nv0;
    delta_bot_foreshock_perpy = (bot_foreshock_perpy).*10^3 * 10^-9.*q./nv0;

    delta_bot_foreshock_parax = (bot_foreshock_parax).*10^3 * 10^-9.*q./nv0;
    delta_bot_foreshock_paray = (bot_foreshock_paray).*10^3 * 10^-9.*q./nv0;

    %Delta top Bulk Flow
    [ppx_top_foreshock_data_interp] = n_top_foreshock_data_interp.*(upx_top_foreshock_data_interp);
    [ppy_top_foreshock_data_interp] = n_top_foreshock_data_interp.*(upy_top_foreshock_data_interp);
    [ppz_top_foreshock_data_interp] = n_top_foreshock_data_interp.*(upz_top_foreshock_data_interp);
   
    [top_foreshock_parax,top_foreshock_paray,~,top_foreshock_perpx,top_foreshock_perpy,~] = ...
        calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,ppx_top_foreshock_data_interp,ppy_top_foreshock_data_interp,ppz_top_foreshock_data_interp);

    delta_top_foreshock_perpx = (top_foreshock_perpx).*10^3 * 10^-9.*q./nv0;
    delta_top_foreshock_perpy = (top_foreshock_perpy).*10^3 * 10^-9.*q./nv0;

    delta_top_foreshock_parax = (top_foreshock_parax).*10^3 * 10^-9.*q./nv0;
    delta_top_foreshock_paray = (top_foreshock_paray).*10^3 * 10^-9.*q./nv0;
%% Current Summation
    %Current Decomp
    [Jparax,Jparay,~,Jperpx,Jperpy,~] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,Jxdata_interp,Jydata_interp,Jzdata_interp);
    [Jparax0,Jparay0,~,Jperpx0,Jperpy0,~] = calculate_componentsVector(Bxdata_interp,Bydata_interp,Bzdata_interp,Jxdata_interp0,Jydata_interp0,Jzdata_interp0);
    
    %Delta J Calculation
    delta_Jperpx = (Jperpx-del*Jperpx0).*0.5*10^3*0.44;%moverq/nv0;%10^3 * 10^-9.*q./nv0;#/J0;
    delta_Jperpy = (Jperpy-del*Jperpy0).*0.5*10^3*0.44;%moverq/nv0;%./moverq;%./J0;

    delta_Jperpx_minus_delta_electron_perpx = delta_Jperpx;%- delta_electron_perpx_tot; %delta_electron_perpx;
    delta_Jperpy_minus_delta_electron_perpy = delta_Jperpy;%- delta_electron_perpy_tot;

    delta_Jparax = (Jparax-del*Jparax0).*moverq./J0;
    delta_Jparay = (Jparay-del*Jparay0).*moverq./J0;

    delta_Jparax_minus_delta_electron_parax = delta_Jparax;%- delta_electron_perpx;
    delta_Jparay_minus_delta_electron_paray = delta_Jparay;%- delta_electron_perpy;

    %Calculate Total Current from all perp sources
    Jperpx_tot_woJd = delta_bot_perpx(2:end-1,2:end-1) + delta_bot_foreshock_perpx(2:end-1,2:end-1) + ...
                      delta_electron_perpx_bot(2:end-1,2:end-1) + delta_electron_perpx_bot_foreshock(2:end-1,2:end-1) + ...
                      delta_top_perpx(2:end-1,2:end-1) + delta_top_foreshock_perpx(2:end-1,2:end-1) + ...
                      delta_electron_perpx_top(2:end-1,2:end-1) + delta_electron_perpx_top_foreshock(2:end-1,2:end-1);
    

    Jperpx_tot_woJd = delta_ion_perpx_tot(2:end-1,2:end-1) + ...
                      delta_electron_perpx_tot(2:end-1,2:end-1);

    Jperpy_tot_woJd = delta_bot_perpy(2:end-1,2:end-1) + delta_bot_foreshock_perpy(2:end-1,2:end-1) + ...
                      delta_electron_perpy_bot(2:end-1,2:end-1) + delta_electron_perpy_bot_foreshock(2:end-1,2:end-1) + ...
                      delta_top_perpy(2:end-1,2:end-1) + delta_top_foreshock_perpy(2:end-1,2:end-1) + ...
                      delta_electron_perpy_top(2:end-1,2:end-1) + delta_electron_perpy_top_foreshock(2:end-1,2:end-1);
    
    Jperpy_tot_woJd = delta_ion_perpy_tot(2:end-1,2:end-1) + ...
                      delta_electron_perpy_tot(2:end-1,2:end-1);

    Jparax_tot_woJd = delta_bot_parax(2:end-1,2:end-1) + delta_bot_foreshock_parax(2:end-1,2:end-1) + ...
                      delta_electron_parax_bot(2:end-1,2:end-1) + delta_electron_parax_bot_foreshock(2:end-1,2:end-1) + ...
                      delta_top_parax(2:end-1,2:end-1) + delta_top_foreshock_parax(2:end-1,2:end-1) + ...
                      delta_electron_parax_top(2:end-1,2:end-1) + delta_electron_parax_top_foreshock(2:end-1,2:end-1);
    
    Jparay_tot_woJd = delta_bot_paray(2:end-1,2:end-1) + delta_bot_foreshock_paray(2:end-1,2:end-1) + ...
                      delta_electron_paray_bot(2:end-1,2:end-1) + delta_electron_paray_bot_foreshock(2:end-1,2:end-1) + ...
                      delta_top_paray(2:end-1,2:end-1) + delta_top_foreshock_paray(2:end-1,2:end-1) + ...
                      delta_electron_paray_top(2:end-1,2:end-1) + delta_electron_paray_top_foreshock(2:end-1,2:end-1);    

    %Calculate currents from each source
    Jperpx_bot = delta_bot_perpx(2:end-1,2:end-1) + delta_electron_perpx_bot(2:end-1,2:end-1);
    Jperpx_bot_foreshock = delta_bot_foreshock_perpx(2:end-1,2:end-1) + delta_electron_perpx_bot_foreshock(2:end-1,2:end-1);

    Jperpy_bot = delta_bot_perpy(2:end-1,2:end-1) + delta_electron_perpy_bot(2:end-1,2:end-1);
    Jperpy_bot_foreshock = delta_bot_foreshock_perpy(2:end-1,2:end-1) + delta_electron_perpy_bot_foreshock(2:end-1,2:end-1);

    Jperpx_top = delta_top_perpx(2:end-1,2:end-1) + delta_electron_perpx_top(2:end-1,2:end-1);
    Jperpx_top_foreshock = delta_top_foreshock_perpx(2:end-1,2:end-1) + delta_electron_perpx_top_foreshock(2:end-1,2:end-1);

    Jperpy_top = delta_top_perpy(2:end-1,2:end-1) + delta_electron_perpy_top(2:end-1,2:end-1);
    Jperpy_top_foreshock = delta_top_foreshock_perpy(2:end-1,2:end-1) + delta_electron_perpy_top_foreshock(2:end-1,2:end-1);

    Jparax_bot = delta_bot_parax(2:end-1,2:end-1) + delta_electron_parax_bot(2:end-1,2:end-1);
    Jparax_bot_foreshock = delta_bot_foreshock_parax(2:end-1,2:end-1) + delta_electron_parax_bot_foreshock(2:end-1,2:end-1);

    Jparay_bot = delta_bot_paray(2:end-1,2:end-1) + delta_electron_paray_bot(2:end-1,2:end-1);
    Jparay_bot_foreshock = delta_bot_foreshock_paray(2:end-1,2:end-1) + delta_electron_paray_bot_foreshock(2:end-1,2:end-1);

    Jparax_top = delta_top_parax(2:end-1,2:end-1) + delta_electron_parax_top(2:end-1,2:end-1);
    Jparax_top_foreshock = delta_top_foreshock_parax(2:end-1,2:end-1) + delta_electron_parax_top_foreshock(2:end-1,2:end-1);

    Jparay_top = delta_top_paray(2:end-1,2:end-1) + delta_electron_paray_top(2:end-1,2:end-1);
    Jparay_top_foreshock = delta_top_foreshock_paray(2:end-1,2:end-1) + delta_electron_paray_top_foreshock(2:end-1,2:end-1);
    

    %% Plotting
    z1 = 2;
    z2 = nz-2;

    zoom1 = z1;%420;
    zoom2 = z2-1;%480;

    plot_zoom_matrix = nan((nz-2-1),nx);
    plot_zoom_matrix(zoom1:zoom2,xcut) = 1;
    plot_zoom_matrix = plot_zoom_matrix(:,xcut);
    % densities
    n_bot_data_interp_plot = imgaussfilt(n_bot_data_interp,filterNumbern);
    n_bot_data_interp0_plot = imgaussfilt(n_bot_data_interp0,filterNumbern);
    n_bot_foreshock_data_interp_plot = imgaussfilt(n_bot_foreshock_data_interp,filterNumbern);
    
    n_top_data_interp_plot = imgaussfilt(n_top_data_interp,filterNumbern);
    n_top_data_interp0_plot = imgaussfilt(n_top_data_interp0,filterNumbern);
    n_top_foreshock_data_interp_plot = imgaussfilt(n_top_foreshock_data_interp,filterNumbern);


 %total n
    axes(ha(axes_count));axes_count=axes_count+1;
    plot(smooth(n_data_interp(z1:z2,xcut)./n0).*plot_zoom_matrix,'k','linewidth',2)
    hold on
%     plot(smooth((delta_Bydata_interp(:,xcut))./B0),'g','linewidth',1)
    hold off
    ylim([0 max(abs(ylim)) ])%         
%      ylim([0 2])

    xlim(zrange)
%     line0=    yline(0,'k:','LineWidth',1.5);
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    legend('n_{tot}','Location','northeast','Orientation','horizontal','fontsize',18); legend('boxoff')
    set(gca,'FontSize',18)

    if TD == 150
       xline(TD,'--','LineWidth',1.5,'HandleVisibility','off')
    elseif TD == 450
       xline(TD,'--','LineWidth',1.5,'HandleVisibility','off')
    end
    ylabel({'n/n_0'},'FontSize',28)


    %Cold ion densities from bot/top
    axes(ha(axes_count));
    yyaxis left
    hold on
    plot(smooth((n_bot_data_interp_plot(z1:z2,xcut))./n0).*plot_zoom_matrix,'b-','linewidth',2)
    plot(smooth((n_top_data_interp_plot(z1:z2,xcut))./n0).*plot_zoom_matrix,'r-','linewidth',2)
    ylim([0 max(abs(ylim))])
%      ylim([0 2])
    hold off
    yyaxis right
    hold on
    plot(smooth((n_bot_foreshock_data_interp_plot(z1:z2,xcut))./n0).*plot_zoom_matrix,'b--','linewidth',2)
    plot(smooth((n_top_foreshock_data_interp_plot(z1:z2,xcut))./n0).*plot_zoom_matrix,'r--','linewidth',2)
    %     ylim([ -max(abs(ylim)) max(abs(ylim)) ])
     ylim([0 max(abs(ylim))])    
%       ylim([0 0.15])

    hold off

    yyaxis left
    xlim(zrange)
    ax = gca;
    ax.YAxis(1).Color = 'k';
    ax.YAxis(2).Color = 'k';
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'Xticklabel',[])
    box on
    nlegend = legend('sw R1','sw R2','fs R1','fs R2','Location','northeast','Orientation','horizontal','fontsize',18); legend('boxoff')
    if TD == 150
       xline(TD,'--','LineWidth',1.5,'HandleVisibility','off')
    elseif TD == 450
       xline(TD,'--','LineWidth',1.5,'HandleVisibility','off')
    end

    set(gca,'YtickLabels',yticks,'FontSize',18)
    ylabel({'n_i/n_0'},'FontSize',28)
    set(gca,'YtickLabels',yticks,'FontSize',18)
    ylabel({'n_i/n_0'},'FontSize',28)

    axes_count=axes_count+1;

    %magnetic fields
    smoothed_Bxdata_interp = imgaussfilt(Bxdata_interp,filterNumber4);
    smoothed_Bydata_interp = imgaussfilt(Bydata_interp,filterNumber4);

    delta_Bxdata_interp = imgaussfilt(delta_Bxdata_interp,filterNumber4);
    delta_Bydata_interp = imgaussfilt(delta_Bydata_interp,filterNumber4);

   

    %B
    axes(ha(axes_count));axes_count=axes_count+1;
    plot(smooth(smoothed_Bxdata_interp(z1:z2,xcut)./B0).*plot_zoom_matrix,'m','linewidth',2)
    hold on
    plot(smooth((smoothed_Bydata_interp(z1:z2,xcut))./B0).*plot_zoom_matrix,'g','linewidth',2)
    hold off
    ylim([ -max(abs(ylim)) max(abs(ylim)) ])
%      ylim([ -1.5 1.5  ])
    xlim(zrange)
    line0=    yline(0,'k:','LineWidth',1.5);
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    set(gca,'FontSize',18)

    legend('B_x','B_y','Location','northeast','Orientation','horizontal','fontsize',18); legend('boxoff')
    if TD == 150
       xline(TD,'--','LineWidth',1.5,'HandleVisibility','off')
    elseif TD == 450
       xline(TD,'--','LineWidth',1.5,'HandleVisibility','off')
    end
    ylabel({'B/B_0'},'FontSize',28)


    
    %Delta B
    axes(ha(axes_count));axes_count=axes_count+1;
    plot(smooth(delta_Bxdata_interp(z1:z2,xcut)./B0).*plot_zoom_matrix,'m','linewidth',2)
    hold on
    plot(smooth((delta_Bydata_interp(z1:z2,xcut))./B0).*plot_zoom_matrix,'g','linewidth',2)
    hold off
    ylim([ -max(abs(ylim)) max(abs(ylim)) ])
%     ylim([ -0.5 .5 ])
%     ylim([ -0.1 .1 ])
    xlim(zrange)
    line0=    yline(0,'k:','LineWidth',1.5);
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    set(gca,'FontSize',18)
    legend('\DeltaB_x','\DeltaB_y','Location','northeast','Orientation','horizontal','fontsize',18); legend('boxoff')
    if TD == 150
       xline(TD,'--','LineWidth',1.5,'HandleVisibility','off')
    elseif TD == 450
       xline(TD,'--','LineWidth',1.5,'HandleVisibility','off')
    end
    if del == 1
        ylabel({'\DeltaB/B_0'},'FontSize',28)
    else
        ylabel({'B/B_0'},'FontSize',28)
    end


    %Current components
    % Jx solar wind perp
    Jperpx_bot = imgaussfilt(Jperpx_bot,filterNumber5);
    Jperpx_bot_foreshock = imgaussfilt(Jperpx_bot_foreshock,filterNumber5);

    Jperpx_top = imgaussfilt(Jperpx_top,filterNumber5);
    Jperpx_top_foreshock = imgaussfilt(Jperpx_top_foreshock,filterNumber5);

    axes(ha(axes_count));axes_count=axes_count+1;

    plot(smooth(Jperpx_bot(z1:z2,xcut)).*plot_zoom_matrix,'b','linewidth',2)
    hold on
    plot(smooth((Jperpx_top(z1:z2,xcut))).*plot_zoom_matrix,'r-','linewidth',2)
    hold off
    ylim([ -max(abs(ylim)) max(abs(ylim)) ])
    %ylim([-1.5 1.5])
%     ylim([-0.5 0.5])
    xlim(zrange)
    line1 = yline(0,'k:','LineWidth',1.5);
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    set(gca,'FontSize',18)
    AAlegend = legend('sw R1','sw R2','Location','northeast','Orientation','horizontal','fontsize',18); legend('boxoff')
    if TD == 150
       xline(TD,'--','LineWidth',1.5,'HandleVisibility','off')
    elseif TD == 450
       xline(TD,'--','LineWidth',1.5,'HandleVisibility','off')
    end
    if del==1
        ylabel({'\DeltaJ_{\perpx}/J_0'},'FontSize',28)
    else
        ylabel({'J_{\perpx}/J_0'},'FontSize',28)
    end



    % Jx foreshock perp
    axes(ha(axes_count));axes_count=axes_count+1;
    plot(smooth(Jperpx_bot_foreshock(z1:z2,xcut)).*plot_zoom_matrix,'b','linewidth',2)
    hold on
    plot(smooth((Jperpx_top_foreshock(z1:z2,xcut))).*plot_zoom_matrix,'r-','linewidth',2)
    hold off
    ylim([ -max(abs(ylim)) max(abs(ylim)) ])
    %ylim([-1.5 1.5])
%     ylim([-0.5 0.5])
    xlim(zrange)
    line1 = yline(0,'k:','LineWidth',1.5);
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    set(gca,'FontSize',18)
    AAlegend = legend('fs R1','fs R2','Location','northeast','Orientation','horizontal','fontsize',18); legend('boxoff')
    if TD == 150
       xline(TD,'--','LineWidth',1.5,'HandleVisibility','off')
    elseif TD == 450
       xline(TD,'--','LineWidth',1.5,'HandleVisibility','off')
    end
    if del==1
        ylabel({'\DeltaJ_{\perpx}/J_0'},'FontSize',28)
    else
        ylabel({'J_{\perpx}/J_0'},'FontSize',28)
    end

  
    

    % Jx Total
    Jperpx_tot_woJd = imgaussfilt(Jperpx_tot_woJd,filterNumber4);
    delta_Jperpx_minus_delta_electron_perpx = imgaussfilt(delta_Jperpx_minus_delta_electron_perpx,filterNumber3);

    axes(ha(axes_count));axes_count=axes_count+1;    
    plot(smooth(Jperpx_tot_woJd(z1:z2,xcut)).*plot_zoom_matrix,'linewidth',2,'color',[0.75 0 0.75])    
    hold on

    plot(smooth((delta_Jperpx_minus_delta_electron_perpx(z1+1:z2+1,xcut))).*plot_zoom_matrix,'k','linewidth',2)
 
    hold off
    
    if max(abs(ylim)) < 0.01
        ylim([-0.1 0.1])
    else
        ylim([ -max(abs(ylim)) max(abs(ylim)) ])
    end
%     ylim([-0.01 0.01])
    xlim(zrange)
    line2=    yline(0,'k:','LineWidth',1.5);
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    set(gca,'FontSize',18)
    Blegend = legend(' sw,fs R1+R2','\nablaxB','Location','northeast','Orientation','horizontal','fontsize',18); legend('boxoff')
    if TD == 150
        xline(TD,'--','LineWidth',1.5,'HandleVisibility','off')
    elseif TD == 450
        xline(TD,'--','LineWidth',1.5,'HandleVisibility','off')
    end
    if del==1
        ylabel({'\DeltaJ_{\perpx}/J_0'},'FontSize',28)
    else
        ylabel({'J_{\perpx}/J_0'},'FontSize',28)
    end
    
    
    % Jy solar wind perp
    Jperpy_bot = imgaussfilt(Jperpy_bot,filterNumber5);
    Jperpy_bot_foreshock = imgaussfilt(Jperpy_bot_foreshock,filterNumber5);

    Jperpy_top = imgaussfilt(Jperpy_top,filterNumber5);
    Jperpy_top_foreshock = imgaussfilt(Jperpy_top_foreshock,filterNumber5);
    
    axes(ha(axes_count));axes_count=axes_count+1;
    plot(smooth(Jperpy_bot(z1:z2,xcut)).*plot_zoom_matrix,'b','linewidth',2)
    hold on
    plot(smooth((Jperpy_top(z1:z2,xcut))).*plot_zoom_matrix,'r','linewidth',2)
    hold off
    ylim([ -max(abs(ylim)) max(abs(ylim)) ])
%     ylim([-2.5 2.5])
%     ylim([-0.5 0.5])
    xlim(zrange)
    line3 = yline(0,'k:','LineWidth',1.5);

    set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    set(gca,'FontSize',18)
    CClegend = legend('sw R1','sw R2','Location','northeast','Orientation','horizontal','fontsize',18); legend('boxoff')
    if TD == 150
       xline(TD,'--','LineWidth',1.5,'HandleVisibility','off')
    elseif TD == 450
       xline(TD,'--','LineWidth',1.5,'HandleVisibility','off')
    end
    if del==1 
       ylabel({'\DeltaJ_{\perpy}/J_0'},'FontSize',28) 
    else
        ylabel({'J\perpy/J_0'},'FontSize',28)
    end

    %Jy foreshock perp
    axes(ha(axes_count));axes_count=axes_count+1;
    plot(smooth(Jperpy_bot_foreshock(z1:z2,xcut)).*plot_zoom_matrix,'b','linewidth',2)
    hold on
    plot(smooth((Jperpy_top_foreshock(z1:z2,xcut))).*plot_zoom_matrix,'r','linewidth',2)
    hold off
    ylim([ -max(abs(ylim)) max(abs(ylim)) ])
%     ylim([-2.5 2.5])
%     ylim([-0.5 0.5])
    xlim(zrange)
    line3 = yline(0,'k:','LineWidth',1.5);

    set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
    set(gca,'FontSize',18)
    CClegend = legend('fs R1','fs R2','Location','northeast','Orientation','horizontal','fontsize',18); legend('boxoff')
    if TD == 150
       xline(TD,'--','LineWidth',1.5,'HandleVisibility','off')
    elseif TD == 450
       xline(TD,'--','LineWidth',1.5,'HandleVisibility','off')
    end
    if del==1 
       ylabel({'\DeltaJ_{\perpy}/J_0'},'FontSize',28) 
    else
        ylabel({'J\perpy/J_0'},'FontSize',28)
    end





    %Jy total
    Jperpy_tot_woJd = imgaussfilt(Jperpy_tot_woJd,filterNumber4);
    delta_Jperpy_minus_delta_electron_perpy = imgaussfilt(delta_Jperpy_minus_delta_electron_perpy,filterNumber3);
   
    axes(ha(axes_count));axes_count=axes_count+1; %#ok<*LAXES>    
    plot(smooth(Jperpy_tot_woJd(z1:z2,xcut)).*plot_zoom_matrix,'linewidth',2,'color',[0.75 0 0.75])
    hold on
    plot(smooth((delta_Jperpy_minus_delta_electron_perpy(z1+1:z2+1,xcut))).*plot_zoom_matrix,'k','linewidth',2)
    
    
    if max(abs(ylim)) < 0.01
        ylim([-0.05 0.05])
    else
        ylim([ -max(abs(ylim)) max(abs(ylim)) ])
    end
    hold off

    xlim(zrange)
    line4 =    yline(0,'k:','LineWidth',1.5);
%     ylim([-0.01 0.01])
    set(gca,'xminortick','on','yminortick','on','linewidth',1.5); xlabel({'Z','[\lambda_i]'},'FontSize',18)
    set(gca,'FontSize',18)
    Dlegend = legend('sw,fs R1+R2','\nablaxB','Location','northeast','Orientation','horizontal','fontsize',18); legend('boxoff')
     if TD == 150
       xline(TD,'--','LineWidth',1.5,'HandleVisibility','off')
    elseif TD == 450
       xline(TD,'--','LineWidth',1.5,'HandleVisibility','off')
    end
    if del==1
       ylabel({'\DeltaJ_{\perpy}/J_0'},'FontSize',28) 
    else
        ylabel({'J\perpy/J_0'},'FontSize',28)
    end
% % % 
% % % 
% % %    % Jx solar wind para
% % %     Jparax_bot = imgaussfilt(Jparax_bot,filterNumber5);
% % %     Jparax_bot_foreshock = imgaussfilt(Jparax_bot_foreshock,filterNumber5);
% % % 
% % %     Jparax_top = imgaussfilt(Jparax_top,filterNumber5);
% % %     Jparax_top_foreshock = imgaussfilt(Jparax_top_foreshock,filterNumber5);
% % % 
% % %     axes(ha(axes_count));axes_count=axes_count+1;
% % % 
% % %     plot(smooth(Jparax_bot(:,xcut)),'b','linewidth',1)
% % %     hold on
% % %     plot(smooth((Jparax_top(:,xcut))),'r-','linewidth',1)
% % %     hold off
% % %     ylim([ -max(abs(ylim)) max(abs(ylim)) ])
% % %     if del==1
% % %         ylabel({'\DeltaJ_{||x}/J0'},'FontSize',14)
% % %     else
% % %         ylabel({'J_{||x}/J0'},'FontSize',14)
% % %     end
% % %     xlim(zrange)
% % %     line1 = yline(0,'k:','LineWidth',1.5);
% % %     set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
% % %     AAlegend = legend('sw R1','sw R2','Location','north','Orientation','horizontal','fontsize',12); legend('boxoff')
% % %     
% % % 
% % % 
% % % 
% % % 
% % %     % Jx foreshock para
% % %     axes(ha(axes_count));axes_count=axes_count+1;
% % %     plot(smooth(Jparax_bot_foreshock(:,xcut)),'b','linewidth',1)
% % %     hold on
% % %     plot(smooth((Jparax_top_foreshock(:,xcut))),'r-','linewidth',1)
% % %     hold off
% % %     ylim([ -max(abs(ylim)) max(abs(ylim)) ])
% % %     if del==1
% % %         ylabel({'\DeltaJ_{||x}/J0'},'FontSize',14)
% % %     else
% % %         ylabel({'J_{||x}/J0'},'FontSize',14)
% % %     end
% % %     xlim(zrange)
% % %     line1 = yline(0,'k:','LineWidth',1.5);
% % %     set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
% % %     AAlegend = legend('fs R1','fs R2','Location','north','Orientation','horizontal','fontsize',12); legend('boxoff')
% % % 
% % % 
% % % 
% % %     % Jx para Total
% % %     Jparax_tot_woJd = imgaussfilt(Jparax_tot_woJd,filterNumber4);
% % %     delta_Jparax_minus_delta_electron_parax = imgaussfilt(delta_Jparax_minus_delta_electron_parax,filterNumber3);
% % % 
% % %     axes(ha(axes_count));axes_count=axes_count+1;
% % %     plot(smooth((delta_Jparax_minus_delta_electron_parax(2:end-1,xcut))),'linewidth',1,'color',[0.75 0 0.75])
% % %     hold on
% % %     plot(smooth(Jparax_tot_woJd(:,xcut)),'k','linewidth',1)    
% % %     hold off
% % %     if max(abs(ylim)) < 0.01
% % %         ylim([-0.01 0.01])
% % %     else
% % %         ylim([ -max(abs(ylim)) max(abs(ylim)) ])
% % %     end
% % %     if del==1
% % %         ylabel({'\DeltaJ_{||x}/J0'},'FontSize',14)
% % %     else
% % %         ylabel({'J_{||x}/J0'},'FontSize',14)
% % %     end
% % %     xlim(zrange)
% % %     line2=    yline(0,'k:','LineWidth',1.5);
% % %     set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
% % %     Blegend = legend(' sw,fs R1+R2','\nablaxB','Location','north','Orientation','horizontal','fontsize',12); legend('boxoff')
% % % 
% % % 
% % %      % Jy solar wind para
% % %     Jparay_bot = imgaussfilt(Jparay_bot,filterNumber5);
% % %     Jparay_bot_foreshock = imgaussfilt(Jparay_bot_foreshock,filterNumber5);
% % % 
% % %     Jparay_top = imgaussfilt(Jparay_top,filterNumber5);
% % %     Jparay_top_foreshock = imgaussfilt(Jparay_top_foreshock,filterNumber5);
% % %     
% % %     axes(ha(axes_count));axes_count=axes_count+1;
% % %     plot(smooth(Jparay_bot(:,xcut)),'b','linewidth',1)
% % %     hold on
% % %     plot(smooth((Jparay_top(2:end-1,xcut))),'r','linewidth',1)
% % %     hold off
% % %     ylim([ -max(abs(ylim)) max(abs(ylim)) ])
% % %     if del==1 
% % %        ylabel({'\DeltaJ_{||y}/J_0'},'FontSize',14) 
% % %     else
% % %         ylabel({'J||y/J_0'},'FontSize',14)
% % %     end
% % %     xlim(zrange)
% % %     line3 = yline(0,'k:','LineWidth',1.5);
% % % 
% % %     set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
% % %     CClegend = legend('sw R1','sw R2','Location','north','Orientation','horizontal','fontsize',12); legend('boxoff')
% % %     
% % %     %Jy foreshock para
% % %     axes(ha(axes_count));axes_count=axes_count+1;
% % %     plot(smooth(Jparay_bot_foreshock(:,xcut)),'b','linewidth',1)
% % %     hold on
% % %     plot(smooth((Jparay_top_foreshock(2:end-1,xcut))),'r','linewidth',1)
% % %     hold off
% % %     ylim([ -max(abs(ylim)) max(abs(ylim)) ])
% % %     if del==1 
% % %        ylabel({'\DeltaJ_{||y}/J_0'},'FontSize',14) 
% % %     else
% % %         ylabel({'J||y/J_0'},'FontSize',14)
% % %     end
% % %     xlim(zrange)
% % %     line3 = yline(0,'k:','LineWidth',1.5);
% % % 
% % %     set(gca,'xminortick','on','yminortick','on','linewidth',1.5,'XTickLabel',[])
% % %     CClegend = legend('fs R1','fs R2','Location','north','Orientation','horizontal','fontsize',12); legend('boxoff')
% % % 
% % % 
% % %      %Jy para total
% % %     Jparay_tot_woJd = imgaussfilt(Jparay_tot_woJd,filterNumber4);
% % %     delta_Jparay_minus_delta_electron_paray = imgaussfilt(delta_Jparay_minus_delta_electron_paray,filterNumber3);
% % %    
% % %     axes(ha(axes_count));axes_count=axes_count+1; %#ok<*LAXES>
% % %     plot(smooth((delta_Jparay_minus_delta_electron_paray(2:end-1,xcut))),'linewidth',1,'color',[0.75 0 0.75])
% % %     hold on
% % %     plot(smooth(Jparay_tot_woJd(:,xcut)),'k','linewidth',1)
% % %     
% % %     if max(abs(ylim)) < 0.01
% % %         ylim([-0.01 0.01])
% % %     else
% % %         ylim([ -max(abs(ylim)) max(abs(ylim)) ])
% % %     end
% % %     hold off
% % %     if del==1
% % %        ylabel({'\DeltaJ_{||y}/J_0'},'FontSize',14) 
% % %     else
% % %         ylabel({'J||y/J_0'},'FontSize',14)
% % %     end
% % %     xlim(zrange)
% % %     line4 =    yline(0,'k:','LineWidth',1.5);
% % % 
% % %     set(gca,'xminortick','on','yminortick','on','linewidth',1.5); xlabel({'Z','[\lambda_i]'},'FontSize',14)
% % %     Dlegend = legend('sw,fs R1+R2','\nablaxB','Location','north','Orientation','horizontal','fontsize',12); legend('boxoff')
% % %     
    %% Draw
    drawnow

if startFrame ~= 1
        print(gcf,'-dpng','-r300','-loose',fileNamePNG); 
end

if startFrame == 1
    g(i) = getframe(fig); 
    writeVideo(v,g(i));
end
delete(h)

     delete(ha)

    
end
if startFrame == 1
    close(v)
end