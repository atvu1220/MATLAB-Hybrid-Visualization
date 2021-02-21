%Plots Position Data of particles
clear all
close all
outputFolder = '181';
outputDirectory = strcat('/import/c1/DAYSIDE/atvu/Run',outputFolder);
%cd(outputDirectory)
RunNumber= '181';
int='int32';real='float32';
[qx,qy,qz,nt,nx,ny,nz,va] = read_Coordinates(outputDirectory);
[X,Z,X2,Z2] = scale_Data(qx,qz);
% nt=5%floor(3596/10)
timeSteps = 2000;
outputSteps = 10*25;


nt=	floor(timeSteps/outputSteps)
nt_n = floor(timeSteps/outputSteps*10);
va = 48.95; %km/s
dt = 1.7296e-2/2;output = outputSteps;


numproc = 100;
col=3;
nParticles = 500;
nmax = 1600000;%2000000;%250000;%3500000;

%Grid
oneCelllength=101.649992187500/2;
[XX,ZZ] = meshgrid(0:1:nx,0:1:nz);
xDir='ExB';
yDir='B';

%Desired Cell
xSC = 150*[1,1,1,1,1,1,1];%%10+[20,40,60,80];
TDthickness = 2*3;
FSbeamthickness = 100;
% zSC = [nz/2 - TDthickness - FSbeamthickness/2 , nz/2, nz/2 + TDthickness + FSbeamthickness/2]-1;
zSC = [nz/2 + 1*TDthickness,nz/2 - TDthickness ,nz/2 - 2*TDthickness, nz/2 - 4*TDthickness ]-1;
% zSC = [nz/2 - TDthickness,nz/2 - TDthickness,nz/2 - TDthickness,nz/2 - TDthickness]
% zSC = [nz/2 + 10, nz/2 + 20, nz/2 + 30, nz/2 + 40]
zSC = fliplr([nz/2 + 3*TDthickness,nz/2 + 2*TDthickness,nz/2 + 1*TDthickness ,nz/2 , nz/2 - 1*TDthickness, nz/2 - 2*TDthickness, nz/2 - 3*TDthickness]);

neighboring = 1;



% h = sgtitle(sprintf('time = %2.2f Gyroperiods',output*dt*double(i)));










%Search for files in directory
directory_structure = dir(outputDirectory);

%Get the filenames of all n,x,v files, for all processes
all_filenames = {directory_structure(:,1).name};
number_of_filenames = size(all_filenames,2); %subtract 2 for .. and .,

% nSC_filenames_indices = contains(all_filenames, 'nSC_');
% nSC_filenames = all_filenames((nSC_filenames_indices==1));

mixed_filenames_indices = contains(all_filenames, 'c.mixed');
mixed_filenames = all_filenames((mixed_filenames_indices==1));
mixed_filenames(contains(mixed_filenames,'**'))=[];

xp_filenames_indices = contains(all_filenames, 'c.xp');
xp_filenames = all_filenames((xp_filenames_indices==1));
xp_filenames(end) = []; %mixed
xp_filenames(contains(xp_filenames,'**'))=[];

vp_filenames_indices = contains(all_filenames, 'c.vp');
vp_filenames = all_filenames((vp_filenames_indices==1));
vp_filenames(contains(vp_filenames,'**'))=[];

%Create matrices for all n,x,v values
% % % % % % procnum=length(xp_filenames);

mixed=int8(zeros(nt,numproc,nmax,1));
x=single(zeros(nt,numproc,nmax,2));

v=single(zeros(nt,numproc,nmax,3));

for proc=2:numproc

    %Get the data from each process, one at a time
    proc;
     fileName = strcat(outputDirectory,strcat('/',string(mixed_filenames(proc))))
     [fid0,~]=fopen(fileName,'r','n');
    
    
    fileName = strcat(outputDirectory,strcat('/',string(xp_filenames(proc))))
    [fid1,~]=fopen(fileName,'r','n');
    
    
    fileName = strcat(outputDirectory,strcat('/',string(vp_filenames(proc))))
    [fid2,~]=fopen(fileName,'r','n');
    
    
    
    for t=1:nt
        %Get n for each time step
        fread(fid0,4,int);
        f=fread(fid0,nmax,real);
        fread(fid0,1,int);
%         if length(f) ~= nmax
%             nmax = length(f);
%         else
%             nmax = 2000000;
%         end
        mixed(t,proc,:,1)=reshape(f,[nmax,1]);
        clear f
            
        %Get x for each time step
        fread(fid1,4,int);
        f=fread(fid1,nmax*3,real);
        fread(fid1,1,int);
        f1= reshape(f,[nmax,3]);
        clear f
        x(t,proc,:,:)=[f1(:,1),f1(:,3)];
        clear f1
        %f1 = [f;zeros(nmax - length(f),3)];
%         x(t,proc,:,:)=f;

%         clear f1
        
        
        %Get v for each time step
        fread(fid2,4,int);
        f=fread(fid2,nmax*3,real);
        fread(fid2,1,int);
        f2 = reshape(f,[nmax,3]);
        clear f
        v(t,proc,:,:)=[f2(:,1),f2(:,2),f2(:,3)];%reshape(f,[nmax,3]);
        %         f2 = [f;zeros(nmax - length(f),3)];
%         clear f
        %         f2b = nonzeros(f2);
%         v(t,proc,:,:)=f;
        %         clear f2
        clear f2
        %         v(t,proc,:,:)=reshape(f2b,[length(f2b)/3,3]);
        
        
        
           
    end
    
end

%Combine all n,x,v from each spacecraft into a single matrix for each time step
%Array is (time,particle,
%alln = sum(n,2);

allv= reshape(v,[nt,numproc*nmax,3]);
clear v
%allv = allvbeta(:,:,1:3);
allx = reshape(x,[nt,numproc*nmax,2]);
clear x
allmixed = reshape(mixed,[nt,numproc*nmax,1]);
clear mixed
%allbeta = allvbeta(:,:,4);
% alln = length(nonzeros(allv(:,:,1)));

%Get the nonzero values only.
% allv2 = allv(:,any(allv,3),:);
% allx2 = allv(:,any(allx,3),:);
% alln2 = length(allv2);



rbins = logspace(0,3.5,50)./va;%0:25:3000;
thetabins = 0:pi/36:2*pi;%linspace(0,2*pi,pi/12);
X = rbins'*cos(thetabins);
Y = rbins'*sin(thetabins);
Area = 1/2.*(rbins.^2 - [0,rbins(1:end-1)].^2).*ones(1,length(thetabins))'.*pi/24;
Area = Area';
%Find the particles within Target Spacecraft cell
for i =1:length(zSC)
xCellRange(i,:) = XX(2,xSC-neighboring:xSC+neighboring).*oneCelllength;
zCellRange(i,:) = ZZ(zSC(i)-0*neighboring:zSC(i)+1,1).*oneCelllength;
end




plot_width = length(xSC);
plot_height = 2;
plot_number = 1;

A = [0,0.447058826684952,0.741176486015320;0.00787401571869850,0.451412707567215,0.743214488029480;0.0157480314373970,0.455766558647156,0.745252430438995;0.0236220471560955,0.460120439529419,0.747290432453156;0.0314960628747940,0.464474290609360,0.749328434467316;0.0393700785934925,0.468828171491623,0.751366376876831;0.0472440943121910,0.473182022571564,0.753404378890991;0.0551181100308895,0.477535903453827,0.755442321300507;0.0629921257495880,0.481889754533768,0.757480323314667;0.0708661451935768,0.486243635416031,0.759518325328827;0.0787401571869850,0.490597516298294,0.761556267738342;0.0866141766309738,0.494951367378235,0.763594269752502;0.0944881886243820,0.499305248260498,0.765632271766663;0.102362208068371,0.503659129142761,0.767670214176178;0.110236220061779,0.508012950420380,0.769708216190338;0.118110239505768,0.512366831302643,0.771746218204498;0.125984251499176,0.516720712184906,0.773784160614014;0.133858263492584,0.521074593067169,0.775822162628174;0.141732290387154,0.525428414344788,0.777860105037689;0.149606302380562,0.529782295227051,0.779898107051849;0.157480314373970,0.534136176109314,0.781936109066010;0.165354326367378,0.538490056991577,0.783974051475525;0.173228353261948,0.542843937873840,0.786012053489685;0.181102365255356,0.547197759151459,0.788050055503845;0.188976377248764,0.551551640033722,0.790087997913361;0.196850389242172,0.555905520915985,0.792125999927521;0.204724416136742,0.560259401798248,0.794164001941681;0.212598428130150,0.564613223075867,0.796201944351196;0.220472440123558,0.568967103958130,0.798239946365356;0.228346452116966,0.573320984840393,0.800277888774872;0.236220479011536,0.577674865722656,0.802315890789032;0.244094491004944,0.582028746604919,0.804353892803192;0.251968502998352,0.586382567882538,0.806391835212708;0.259842514991760,0.590736448764801,0.808429837226868;0.267716526985168,0.595090329647064,0.810467839241028;0.275590538978577,0.599444210529327,0.812505781650543;0.283464580774307,0.603798031806946,0.814543783664703;0.291338592767715,0.608151912689209,0.816581785678864;0.299212604761124,0.612505793571472,0.818619728088379;0.307086616754532,0.616859674453735,0.820657730102539;0.314960628747940,0.621213555335999,0.822695732116699;0.322834640741348,0.625567376613617,0.824733674526215;0.330708652734756,0.629921257495880,0.826771676540375;0.338582664728165,0.634275138378143,0.828809618949890;0.346456706523895,0.638629019260407,0.830847620964050;0.354330718517303,0.642982840538025,0.832885622978210;0.362204730510712,0.647336721420288,0.834923565387726;0.370078742504120,0.651690602302551,0.836961567401886;0.377952754497528,0.656044483184815,0.838999569416046;0.385826766490936,0.660398364067078,0.841037511825562;0.393700778484345,0.664752185344696,0.843075513839722;0.401574790477753,0.669106066226959,0.845113515853882;0.409448832273483,0.673459947109222,0.847151458263397;0.417322844266892,0.677813827991486,0.849189460277557;0.425196856260300,0.682167649269104,0.851227402687073;0.433070868253708,0.686521530151367,0.853265404701233;0.440944880247116,0.690875411033630,0.855303406715393;0.448818892240524,0.695229291915894,0.857341349124908;0.456692904233933,0.699583113193512,0.859379351139069;0.464566916227341,0.703936994075775,0.861417353153229;0.472440958023071,0.708290874958038,0.863455295562744;0.480314970016480,0.712644755840302,0.865493297576904;0.488188982009888,0.716998636722565,0.867531299591065;0.496062994003296,0.721352458000183,0.869569242000580;0.503937005996704,0.725706338882446,0.871607244014740;0.511811017990112,0.730060219764710,0.873645186424255;0.519685029983521,0.734414100646973,0.875683188438416;0.527559041976929,0.738767921924591,0.877721190452576;0.535433053970337,0.743121802806854,0.879759132862091;0.543307065963745,0.747475683689117,0.881797134876251;0.551181077957153,0.751829564571381,0.883835136890411;0.559055089950562,0.756183445453644,0.885873079299927;0.566929161548615,0.760537266731262,0.887911081314087;0.574803173542023,0.764891147613525,0.889949083328247;0.582677185535431,0.769245028495789,0.891987025737763;0.590551197528839,0.773598909378052,0.894025027751923;0.598425209522247,0.777952730655670,0.896062970161438;0.606299221515656,0.782306611537933,0.898100972175598;0.614173233509064,0.786660492420197,0.900138974189758;0.622047245502472,0.791014373302460,0.902176916599274;0.629921257495880,0.795368254184723,0.904214918613434;0.637795269489288,0.799722075462341,0.906252920627594;0.645669281482697,0.804075956344605,0.908290863037109;0.653543293476105,0.808429837226868,0.910328865051270;0.661417305469513,0.812783718109131,0.912366867065430;0.669291317462921,0.817137539386749,0.914404809474945;0.677165329456329,0.821491420269013,0.916442811489105;0.685039341449738,0.825845301151276,0.918480753898621;0.692913413047791,0.830199182033539,0.920518755912781;0.700787425041199,0.834553062915802,0.922556757926941;0.708661437034607,0.838906884193420,0.924594700336456;0.716535449028015,0.843260765075684,0.926632702350617;0.724409461021423,0.847614645957947,0.928670704364777;0.732283473014832,0.851968526840210,0.930708646774292;0.740157485008240,0.856322348117828,0.932746648788452;0.748031497001648,0.860676229000092,0.934784650802612;0.755905508995056,0.865030109882355,0.936822593212128;0.763779520988464,0.869383990764618,0.938860595226288;0.771653532981873,0.873737871646881,0.940898597240448;0.779527544975281,0.878091692924500,0.942936539649963;0.787401556968689,0.882445573806763,0.944974541664124;0.795275568962097,0.886799454689026,0.947012484073639;0.803149580955505,0.891153335571289,0.949050486087799;0.811023592948914,0.895507156848908,0.951088488101959;0.818897664546967,0.899861037731171,0.953126430511475;0.826771676540375,0.904214918613434,0.955164432525635;0.834645688533783,0.908568799495697,0.957202434539795;0.842519700527191,0.912922620773315,0.959240376949310;0.850393712520599,0.917276501655579,0.961278378963471;0.858267724514008,0.921630382537842,0.963316380977631;0.866141736507416,0.925984263420105,0.965354323387146;0.874015748500824,0.930338144302368,0.967392325401306;0.881889760494232,0.934691965579987,0.969430267810822;0.889763772487640,0.939045846462250,0.971468269824982;0.897637784481049,0.943399727344513,0.973506271839142;0.905511796474457,0.947753608226776,0.975544214248657;0.913385808467865,0.952107429504395,0.977582216262817;0.921259820461273,0.956461310386658,0.979620218276978;0.929133832454681,0.960815191268921,0.981658160686493;0.937007844448090,0.965169072151184,0.983696162700653;0.944881916046143,0.969522953033447,0.985734164714813;0.952755928039551,0.973876774311066,0.987772107124329;0.960629940032959,0.978230655193329,0.989810109138489;0.968503952026367,0.982584536075592,0.991848051548004;0.976377964019775,0.986938416957855,0.993886053562164;0.984251976013184,0.991292238235474,0.995924055576325;0.992125988006592,0.995646119117737,0.997961997985840;1,1,1;0.997150719165802,0.992800235748291,0.993627429008484;0.994301497936249,0.985600471496582,0.987254917621613;0.991452217102051,0.978400707244873,0.980882346630096;0.988602936267853,0.971201002597809,0.974509775638580;0.985753655433655,0.964001238346100,0.968137264251709;0.982904434204102,0.956801474094391,0.961764693260193;0.980055153369904,0.949601709842682,0.955392181873322;0.977205872535706,0.942401945590973,0.949019610881805;0.974356591701508,0.935202181339264,0.942647039890289;0.971507370471954,0.928002476692200,0.936274528503418;0.968658089637756,0.920802712440491,0.929901957511902;0.965808808803558,0.913602948188782,0.923529386520386;0.962959587574005,0.906403183937073,0.917156875133514;0.960110306739807,0.899203419685364,0.910784304141998;0.957261025905609,0.892003655433655,0.904411792755127;0.954411745071411,0.884803950786591,0.898039221763611;0.951562523841858,0.877604186534882,0.891666650772095;0.948713243007660,0.870404422283173,0.885294139385223;0.945863962173462,0.863204658031464,0.878921568393707;0.943014681339264,0.856004893779755,0.872548997402191;0.940165460109711,0.848805129528046,0.866176486015320;0.937316179275513,0.841605365276337,0.859803915023804;0.934466898441315,0.834405660629273,0.853431344032288;0.931617677211762,0.827205896377564,0.847058832645416;0.928768396377564,0.820006132125855,0.840686261653900;0.925919115543366,0.812806367874146,0.834313750267029;0.923069834709168,0.805606603622437,0.827941179275513;0.920220613479614,0.798406839370728,0.821568608283997;0.917371332645416,0.791207134723663,0.815196096897125;0.914522051811218,0.784007370471954,0.808823525905609;0.911672770977020,0.776807606220245,0.802450954914093;0.908823549747467,0.769607841968536,0.796078443527222;0.905974268913269,0.762408077716827,0.789705872535706;0.903124988079071,0.755208313465118,0.783333361148834;0.900275766849518,0.748008608818054,0.776960790157318;0.897426486015320,0.740808844566345,0.770588219165802;0.894577205181122,0.733609080314636,0.764215707778931;0.891727924346924,0.726409316062927,0.757843136787415;0.888878703117371,0.719209551811218,0.751470565795898;0.886029422283173,0.712009787559509,0.745098054409027;0.883180141448975,0.704810023307800,0.738725483417511;0.880330860614777,0.697610318660736,0.732352972030640;0.877481639385223,0.690410554409027,0.725980401039124;0.874632358551025,0.683210790157318,0.719607830047607;0.871783077716827,0.676011025905609,0.713235318660736;0.868933856487274,0.668811261653900,0.706862747669220;0.866084575653076,0.661611497402191,0.700490176677704;0.863235294818878,0.654411792755127,0.694117665290833;0.860386013984680,0.647212028503418,0.687745094299316;0.857536792755127,0.640012264251709,0.681372523307800;0.854687511920929,0.632812500000000,0.675000011920929;0.851838231086731,0.625612735748291,0.668627440929413;0.848988950252533,0.618412971496582,0.662254929542542;0.846139729022980,0.611213207244873,0.655882358551025;0.843290448188782,0.604013502597809,0.649509787559509;0.840441167354584,0.596813738346100,0.643137276172638;0.837591946125031,0.589613974094391,0.636764705181122;0.834742665290833,0.582414209842682,0.630392134189606;0.831893384456635,0.575214445590973,0.624019622802734;0.829044103622437,0.568014681339264,0.617647051811218;0.826194882392883,0.560814976692200,0.611274540424347;0.823345601558685,0.553615212440491,0.604901969432831;0.820496320724487,0.546415448188782,0.598529398441315;0.817647099494934,0.539215683937073,0.592156887054443;0.814797818660736,0.532015919685364,0.585784316062927;0.811948537826538,0.524816155433655,0.579411745071411;0.809099256992340,0.517616450786591,0.573039233684540;0.806250035762787,0.510416686534882,0.566666662693024;0.803400754928589,0.503216922283173,0.560294091701508;0.800551474094391,0.496017158031464,0.553921580314636;0.797702193260193,0.488817393779755,0.547549009323120;0.794852972030640,0.481617659330368,0.541176497936249;0.792003691196442,0.474417895078659,0.534803926944733;0.789154410362244,0.467218130826950,0.528431355953217;0.786305189132690,0.460018396377564,0.522058844566345;0.783455908298492,0.452818632125855,0.515686273574829;0.780606627464294,0.445618867874146,0.509313702583313;0.777757346630096,0.438419133424759,0.502941191196442;0.774908125400543,0.431219369173050,0.496568620204926;0.772058844566345,0.424019604921341,0.490196079015732;0.769209563732147,0.416819840669632,0.483823537826538;0.766360282897949,0.409620106220245,0.477450996637344;0.763511061668396,0.402420341968536,0.471078425645828;0.760661780834198,0.395220577716827,0.464705884456635;0.757812500000000,0.388020843267441,0.458333343267441;0.754963278770447,0.380821079015732,0.451960772275925;0.752113997936249,0.373621314764023,0.445588231086731;0.749264717102051,0.366421580314636,0.439215689897537;0.746415436267853,0.359221816062927,0.432843148708344;0.743566215038300,0.352022051811218,0.426470577716827;0.740716934204102,0.344822317361832,0.420098036527634;0.737867653369904,0.337622553110123,0.413725495338440;0.735018372535706,0.330422788858414,0.407352954149246;0.732169151306152,0.323223054409027,0.400980383157730;0.729319870471954,0.316023290157318,0.394607841968536;0.726470589637756,0.308823525905609,0.388235300779343;0.723621368408203,0.301623791456223,0.381862759590149;0.720772087574005,0.294424027204514,0.375490188598633;0.717922806739807,0.287224262952805,0.369117647409439;0.715073525905609,0.280024498701096,0.362745106220245;0.712224304676056,0.272824764251709,0.356372565031052;0.709375023841858,0.265625000000000,0.349999994039536;0.706525743007660,0.258425235748291,0.343627452850342;0.703676462173462,0.251225501298904,0.337254911661148;0.700827240943909,0.244025737047195,0.330882370471954;0.697977960109711,0.236825987696648,0.324509799480438;0.695128679275513,0.229626223444939,0.318137258291245;0.692279458045960,0.222426474094391,0.311764717102051;0.689430177211762,0.215226724743843,0.305392146110535;0.686580896377564,0.208026960492134,0.299019604921341;0.683731615543366,0.200827211141586,0.292647063732147;0.680882394313812,0.193627446889877,0.286274522542954;0.678033113479614,0.186427697539330,0.279901951551437;0.675183832645416,0.179227948188782,0.273529410362244;0.672334551811218,0.172028183937073,0.267156869173050;0.669485330581665,0.164828434586525,0.260784327983856;0.666636049747467,0.157628685235977,0.254411756992340;0.663786768913269,0.150428920984268,0.248039215803146;0.660937547683716,0.143229171633720,0.241666674613953;0.658088266849518,0.136029407382011,0.235294118523598;0.655238986015320,0.128829658031464,0.228921577334404;0.652389705181122,0.121629901230335,0.222549021244049;0.649540483951569,0.114430151879787,0.216176480054855;0.646691203117371,0.107230395078659,0.209803923964500;0.643841922283173,0.100030638277531,0.203431382775307;0.640992641448975,0.0928308814764023,0.197058826684952;0.638143420219421,0.0856311321258545,0.190686285495758;0.635294139385223,0.0784313753247261,0.184313729405403];
% fig = figure('Position',[ 1 1 800 400*length(xSC)]);
fig = figure('Position',[ 1 1  400*length(xSC) 800]);
colormap(A)
set(gcf,'color','w');

fileName = strcat('/import/c1/DAYSIDE/atvu/Runs/2d_Hybrid_Foreshock_PaperFig4_',xDir,yDir,'_Run',RunNumber);%,'_x(',string(xSC),')_z(',string(zSC),')');
v = VideoWriter(fileName);v.FrameRate= 1;
open(v);
%Plotting distribution
for t=1:nt
    
  [ha,~] = tight_subplot(plot_height,plot_width,[-.385 0],0.0,0.05);
% % % % % % % % % % % % % %       % %5Get Cell
h = sgtitle(sprintf('time = %2.2f gyroperiods',dt*t*outputSteps));

    plot_count = 0;
    %% Plot dist
    for SC=1:1*length(xSC)
        
        plot_count=plot_count+1;
%     plot2=subplot(plot_height,plot_width,plot_number); plot_number = plot_number+1;

    ParticleInCellVel = reshape(allv(t,allx(t,:,1) >= xCellRange(SC,1) & allx(t,:,1) <= xCellRange(SC,end) &...
        allx(t,:,2) >= zCellRange(SC,1) & allx(t,:,2) <= zCellRange(SC,end),:) ,[],3) ;
    ParticleInCellPos = reshape(allx(t,allx(t,:,1) >= xCellRange(SC,1) & allx(t,:,1) <= xCellRange(SC,end) &...
        allx(t,:,2) >= zCellRange(SC,1) & allx(t,:,2) <= zCellRange(SC,end),:) ,[],2) ;
    ParticleInCellMixed = allmixed(allx(t,:,1) >= xCellRange(SC,1) & allx(t,:,1) <= xCellRange(SC,end) &...
        allx(t,:,2) >= zCellRange(SC,1) & allx(t,:,2) <= zCellRange(SC,end) ) ;

    
%%    %First Column
    xDir = 'ExB';
    yDir = 'B';
    [horComp] = calculateDistComponents(ParticleInCellVel,ParticleInCellPos,xDir,outputSteps,timeSteps,t,outputDirectory);
    [vertComp] = calculateDistComponents(ParticleInCellVel,ParticleInCellPos,yDir,outputSteps,timeSteps,t,outputDirectory);
    %Determine components for distribution

    ParticleInCellVel = [horComp,vertComp];
    
    
    %Bins
    Vr = (ParticleInCellVel(:,1).^2 + ParticleInCellVel(:,2).^2).^(1/2)./va;
    Vtheta = atan(ParticleInCellVel(:,2)./ParticleInCellVel(:,1));
    
    
    thirdQuadrantsum = 0;
    for i=1:length(ParticleInCellMixed)%numproc*nmax
    if ((ParticleInCellVel(i,1) < 0) & (ParticleInCellVel(i,2) < 0))
        Vtheta(i) = Vtheta(i)+pi;%180;
        thirdQuadrantsum=thirdQuadrantsum+1;
    elseif (ParticleInCellVel(i,2) < 0) 
         Vtheta(i) = Vtheta(i)+2*pi;%360;
    elseif (ParticleInCellVel(i,1) < 0)
         Vtheta(i) = Vtheta(i)+pi;%180;
        
    end
    end
%     thirdQuadrantsum
    %Vtheta(ParticleInCellVel(t,:,1) < 0) = -Vtheta(ParticleInCellVel(t,:,1) < 0);
    Cphi_cold = histcounts2(Vr(ParticleInCellMixed(:)==0),Vtheta(ParticleInCellMixed(:)==0),[rbins inf],[thetabins inf]);
    Cphi_mixed = 1./100.*histcounts2(Vr(ParticleInCellMixed(:)==1),Vtheta(ParticleInCellMixed(:)==1),[rbins inf],[thetabins inf]);

    Cphi = (Cphi_cold+Cphi_mixed );%./sum(Cphi_cold+Cphi_mixed,'all');
    
     Cphi(Cphi ==0) = NaN;
     axes(ha(plot_count));
    h = pcolor(X,Y,log(Cphi./Area)) ;
%     h = pcolor(X,Y,Cphi) ;
    set(h, 'EdgeColor', 'none');
    myColorMap = parula(256); myColorMap(1,:) = 1;
    colormap(myColorMap); 
    plotsize = get(gca,'position');
    set(gca,'CLim',[-8 7])
    c = colorbar;
    c.Limits = ([-8 7]);
    cbarTicks = c.Ticks;
    c.TickLabels = strcat('10^{',c.TickLabels,'}');
    cbarLabels = c.TickLabels;
    ylabel(c,'Particles per dV^2','FontSize',12)
    %scatter(allv(i,:,1)./allbeta(i,:),allv(i,:,3)./allbeta(i,:),50,'filled','linewidth',2,'MarkerEdgeColor','k')
    % ax = gca;
    % ax.XAxisLocation = 'origin'
    % ax.YAxisLocation = 'origin'
%     title(strcat('Ion Velocity Distribution at t=',string(dt*t*outputSteps),' gyroperiods'),'FontSize',14);

    xlabel({xDir;'[M_A]'},'FontSize',12);
    ylabel({yDir;'[M_A]'},'FontSize',12)
    box on
    
    ylim([-50 50])
    xlim([-50 50])
    xticks([-50-25:25:50-25])
    yticks([-50-25:25:50-25])
    
    ylim([-30 30])
    xlim([-30 30])
    xticks([-30-15:15:30-15])
    yticks([-30-15:15:30-15])
    
        
    ylim([-39 39])
    xlim([-39 39])
    xticks([-40-20:20:40-20])
    yticks([-40-20:20:40-20])
    
%     ylim([-42 42])
%     xlim([-42 42])
%     xticks([-42-21:20:42-21])
%     yticks([-42-21:20:42-21])
    
    
    axis square
    line([0 0],ylim,'Color','Black','linewidth',1)
    line(xlim,[0 0],'Color','Black','linewidth',1)
%     set(gcf,'color','w','Position',[100 100 800 800]);
    grid on
    set(ha(plot_count),'XMinorTick','off','TickDir','in','YMinorTick','off','linewidth',2)
%     xtickangle(45)
%     title( {strcat('x=',string(xSC(SC)-neighboring),'-',string(xSC(SC)+neighboring));...
%         strcat('z=',string(zSC(SC)-neighboring),'-',string(zSC(SC)+neighboring))},'FontSize', 14)
    %set(gcf, 'EdgeColor', 'none');
    drawnow
%     textboxPos = [max(xlim) max(ylim)] - [diff(xlim) diff(ylim)]*0.05;
%     textboxPos = ha(SC).Position+ [0.3 0.3 0 0 ];
    
    yboundary = get(ha(plot_count),'ylim');
    xboundary = get(ha(plot_count),'xlim');
%     text(xboundary(2),yboundary(2),{strcat('x=',string(xSC(SC)-neighboring),'-',string(xSC(SC)+neighboring)),...
%         strcat('z=',string(zSC(SC)))},...
%         'VerticalAlignment','top','HorizontalAlignment','right','FontSize',10)

        text(xboundary(2),yboundary(2),{strcat('x=',string(xSC(SC))),...
        strcat('z=',string(zSC(SC)))},...
        'VerticalAlignment','top','HorizontalAlignment','right','FontSize',10)
%     CellPos = text(textboxPos(1), textboxPos(2),'Units','normalized',...
%         {strcat('x=',string(xSC(SC)-neighboring),'-',string(xSC(SC)+neighboring)),...
%         strcat('z=',string(zSC(SC)-neighboring),'-',string(zSC(SC)+neighboring))},...
%         'VerticalAlignment','top','HorizontalAlignment','right','FontSize',14);
        set(gca,'XTickLabel',[])
        set(gca,'Xlabel',[])
        if SC ~= 1
            set(gca,'YTickLabel',[])
            set(gca,'YLabel',[])
            
        end
        
    if SC ~=length(xSC)
        delete(c)
    elseif SC==length(xSC)
%         set(gca,'XTickLabel',[])
%         delete(c)
%     elseif SC==3
%         set(gca,'XTickLabel',[])
%         delete(c)
%     elseif SC==4
%         set(gca,'XTickLabel',[])
%         delete(c)
%     elseif SC==5
%         
        set(c,'Location','eastoutside')
        c.Ticks=cbarTicks;
        c.TickLabels=cbarLabels;
%          c.Limits = ([-8 7]);
%      c.TickLabels = strcat('10^{',c.TickLabels,'}');
set(gca,'position',plotsize);
    end
     clear ParticleInCellPos
    clear ParticleInCellMixed
    clear ParticleInCellVel
    
    end
    for SC=1:1*length(xSC)
        
        %     plot2=subplot(plot_height,plot_width,plot_number); plot_number = plot_number+1;
        
        ParticleInCellVel = reshape(allv(t,allx(t,:,1) >= xCellRange(SC,1) & allx(t,:,1) <= xCellRange(SC,end) &...
            allx(t,:,2) >= zCellRange(SC,1) & allx(t,:,2) <= zCellRange(SC,end),:) ,[],3) ;
    ParticleInCellPos = reshape(allx(t,allx(t,:,1) >= xCellRange(SC,1) & allx(t,:,1) <= xCellRange(SC,end) &...
        allx(t,:,2) >= zCellRange(SC,1) & allx(t,:,2) <= zCellRange(SC,end),:) ,[],2) ;
    ParticleInCellMixed = allmixed(allx(t,:,1) >= xCellRange(SC,1) & allx(t,:,1) <= xCellRange(SC,end) &...
        allx(t,:,2) >= zCellRange(SC,1) & allx(t,:,2) <= zCellRange(SC,end) ) ;
    
%% %Second Column
plot_count=plot_count+1;
    ParticleInCellVel = reshape(allv(t,allx(t,:,1) > xCellRange(SC,1) & allx(t,:,1) < xCellRange(SC,end) &...
        allx(t,:,2) > zCellRange(SC,1) & allx(t,:,2) < zCellRange(SC,end),:) ,[],3) ;
    ParticleInCellPos = reshape(allx(t,allx(t,:,1) > xCellRange(SC,1) & allx(t,:,1) < xCellRange(SC,end) &...
        allx(t,:,2) > zCellRange(SC,1) & allx(t,:,2) < zCellRange(SC,end),:) ,[],2) ;
    ParticleInCellMixed = allmixed(allx(t,:,1) > xCellRange(SC,1) & allx(t,:,1) < xCellRange(SC,end) &...
        allx(t,:,2) > zCellRange(SC,1) & allx(t,:,2) < zCellRange(SC,end) ) ;

    xDir = 'ExB';
    yDir = 'ExBperp';
    [horComp] = calculateDistComponents(ParticleInCellVel,ParticleInCellPos,xDir,outputSteps,timeSteps,t,outputDirectory);
    [vertComp] = calculateDistComponents(ParticleInCellVel,ParticleInCellPos,yDir,outputSteps,timeSteps,t,outputDirectory);
    %Determine components for distribution

    ParticleInCellVel = [horComp,vertComp];
    
    
    %Bins
    Vr = (ParticleInCellVel(:,1).^2 + ParticleInCellVel(:,2).^2).^(1/2)./va;
    Vtheta = atan(ParticleInCellVel(:,2)./ParticleInCellVel(:,1));
    
   % Vtheta(ParticleInCellVel(t,:,1) < 0) = Vtheta(ParticleInCellVel(t,:,1) < 0) + 180;
    %Vtheta(ParticleInCellVel(t,:,3) < 0) = Vtheta(ParticleInCellVel(t,:,3) < 0) + 360;
    
    
    thirdQuadrantsum = 0;
    for i=1:length(ParticleInCellMixed)%numproc*nmax
    if ((ParticleInCellVel(i,1) < 0) & (ParticleInCellVel(i,2) < 0))
        Vtheta(i) = Vtheta(i)+pi;%180;
        thirdQuadrantsum=thirdQuadrantsum+1;
    elseif (ParticleInCellVel(i,2) < 0) 
         Vtheta(i) = Vtheta(i)+2*pi;%360;
    elseif (ParticleInCellVel(i,1) < 0)
         Vtheta(i) = Vtheta(i)+pi;%180;
        
    end
    end
%     thirdQuadrantsum
    %Vtheta(ParticleInCellVel(t,:,1) < 0) = -Vtheta(ParticleInCellVel(t,:,1) < 0);
    Cphi_cold = histcounts2(Vr(ParticleInCellMixed(:)==0),Vtheta(ParticleInCellMixed(:)==0),[rbins inf],[thetabins inf]);
    Cphi_mixed = 1./100.*histcounts2(Vr(ParticleInCellMixed(:)==1),Vtheta(ParticleInCellMixed(:)==1),[rbins inf],[thetabins inf]);

    Cphi = (Cphi_cold+Cphi_mixed );%./sum(Cphi_cold+Cphi_mixed,'all');
    
     Cphi(Cphi ==0) = NaN;
     axes(ha(plot_count));
    h = pcolor(X,Y,log(Cphi./Area)) ;
%     h = pcolor(X,Y,Cphi) ;
    set(h, 'EdgeColor', 'none');
    myColorMap = parula(256); myColorMap(1,:) = 1;
    colormap(myColorMap); 
    plotsize = get(gca,'position');
    set(gca,'CLim',[-8 7])
    c = colorbar;
    c.Limits = ([-8 7]);
    cbarTicks = c.Ticks;
    c.TickLabels = strcat('10^{',c.TickLabels,'}');
    cbarLabels = c.TickLabels;
    ylabel(c,'Particles per dV^2','FontSize',12)
    %scatter(allv(i,:,1)./allbeta(i,:),allv(i,:,3)./allbeta(i,:),50,'filled','linewidth',2,'MarkerEdgeColor','k')
    % ax = gca;
    % ax.XAxisLocation = 'origin'
    % ax.YAxisLocation = 'origin'
%     title(strcat('Ion Velocity Distribution at t=',string(dt*t*outputSteps),' gyroperiods'),'FontSize',14);

    xlabel({xDir;'[M_A]'},'FontSize',12);
    ylabel({'Bx(ExB)';'[M_A]'},'FontSize',12)
    box on
    
    ylim([-39 39])
    xlim([-39 39])
    xticks([-40-20:20:40-20])
    yticks([-40-20:20:40-20])

%         ylim([-30 30])
%     xlim([-30 30])
%     xticks([-30-15:15:30-15])
%     yticks([-30-15:15:30-15])
%     
%     
%         ylim([-42 42])
%     xlim([-42 42])
%     xticks([-42-21:20:42-21])
%     yticks([-42-21:20:42-21])
%     
    
    axis square
    line([0 0],ylim,'Color','Black','linewidth',1)
    line(xlim,[0 0],'Color','Black','linewidth',1)
%     set(gcf,'color','w','Position',[100 100 800 800]);
    grid on
    set(ha(plot_count),'XMinorTick','off','TickDir','in','YMinorTick','off','linewidth',2)
%     xtickangle(45)
%     title( {strcat('x=',string(xSC(SC)-neighboring),'-',string(xSC(SC)+neighboring));...
%         strcat('z=',string(zSC(SC)-neighboring),'-',string(zSC(SC)+neighboring))},'FontSize', 14)
    %set(gcf, 'EdgeColor', 'none');
    drawnow
%     textboxPos = [max(xlim) max(ylim)] - [diff(xlim) diff(ylim)]*0.05;
%     textboxPos = ha(SC).Position+ [0.3 0.3 0 0 ];
    
    yboundary = get(ha(plot_count),'ylim');
    xboundary = get(ha(plot_count),'xlim');
%     text(xboundary(2),yboundary(2),{strcat('x=',string(xSC(SC)-neighboring),'-',string(xSC(SC)+neighboring)),...
%         strcat('z=',string(zSC(SC)))},...
%         'VerticalAlignment','top','HorizontalAlignment','right','FontSize',10)
    text(xboundary(2),yboundary(2),{strcat('x=',string(xSC(SC))),...
        strcat('z=',string(zSC(SC)))},...
        'VerticalAlignment','top','HorizontalAlignment','right','FontSize',10)
    
%     CellPos = text(textboxPos(1), textboxPos(2),'Units','normalized',...
%         {strcat('x=',string(xSC(SC)-neighboring),'-',string(xSC(SC)+neighboring)),...
%         strcat('z=',string(zSC(SC)-neighboring),'-',string(zSC(SC)+neighboring))},...
%         'VerticalAlignment','top','HorizontalAlignment','right','FontSize',14);
        if SC ~= 1
            set(gca,'YTickLabel',[])
            set(gca,'YLabel',[])
            
        end
    if SC ~=length(xSC)
%         set(gca,'XTickLabel',[])
        delete(c)
    elseif SC==length(xSC)
%         set(gca,'XTickLabel',[])
%         delete(c)
%     elseif SC==3
%         set(gca,'XTickLabel',[])
%         delete(c)
%     elseif SC==4
%         set(gca,'XTickLabel',[])
%         delete(c)
%     elseif SC==5
%         
        set(c,'Location','eastoutside')
        c.Ticks=cbarTicks;
        c.TickLabels=cbarLabels;
%          c.Limits = ([-8 7]);
%      c.TickLabels = strcat('10^{',c.TickLabels,'}');
         set(gca,'position',plotsize);
    end
        
    
     clear ParticleInCellPos
    clear ParticleInCellMixed
    clear ParticleInCellVel
    
    end
   
     
    
    
    
    %%
    
        fileNamePNG = strcat('/import/c1/DAYSIDE/atvu/Runs/',RunNumber,'/','2d_Hybrid_Foreshock_paperFig4_',RunNumber,'_',string(t));
    
    print(gcf,'-dpng','-r300','-loose',fileNamePNG);
    
    g(t) = getframe(gcf);
    writeVideo(v,g(t));
    delete(h)
    delete(ha)
%     delete(plot1)
%     delete(plot2)
    
    
end

close(v)
% clear all
% close all
function output_txt = getPcolorTime(obj,event_obj)
% Display data cursor position in a data tip
% obj          Currently not used
% event_obj    Handle to event object
% output_txt   Data tip text, returned as a character vector or a cell array of character vectors

pos = event_obj.Position;


%********* Define the content of the data tip here *********%

% Display the x and y values:
output_txt = {['X',formatValue(pos(1),event_obj)],...
              ['Y',formatValue(pos(2),event_obj)]};
%***********************************************************%


% If there is a z value, display it:
if length(pos) > 2
    output_txt{end+1} = ['Z',formatValue(pos(3),event_obj)];
end
end
