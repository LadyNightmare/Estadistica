<pre><div class="text_to_html">%VOL: Cubic feet of cab space 
%HP: Engine horsepower 
%MPG: Average miles per gallon 
%SP: Top speed (mph) 
%WT: Vehicle weight (100 lb) 
%The Data: 
%  VOL  HP   MPG    SP   WT
 
CC=[89  49  65.4    96  17.5
    92  55  56.0    97  20.0
    92  55  55.9    97  20.0
    92  70  49.0    105 20.0
    92  53  46.5    96  20.0
    89  70  46.2    105 20.0
    92  55  45.4    97  20.0
    50  62  59.2    98  22.5
    50  62  53.3    98  22.5
    94  80  43.4    107 22.5
    89  73  41.1    103 22.5
    50  92  40.9    113 22.5
    99  92  40.9    113 22.5
    89  73  40.4    103 22.5
    89  66  39.6    100 22.5
    89  73  39.3    103 22.5
    91  78  38.9    106 22.5
    50  92  38.8    113 22.5
    91  78  38.2    106 22.5
   103  90  42.2    109 25.0
    99  92  40.9    110 25.0
   107  74  40.7    101 25.0
   101  95  40.0    111 25.0
    96  81  39.3    105 25.0
    89  95  38.8    111 25.0
    50  92  38.4    110 25.0
   117  92  38.4    110 25.0
    99  92  38.4    110 25.0
   102  90  29.5    109 25.0
   104  52  46.9    90  27.5
   107 103  36.3    112 27.5
   114  84  36.1    103 27.5
   101  84  36.1    103 27.5
    97 102  35.4    111 27.5
   113 102  35.3    111 27.5
   101  81  35.1    102 27.5
    98  90  35.1    106 27.5
    88  90  35.0    106 27.5
    86 102  33.2    109 30.0
    86 102  32.9    109 30.0
    92 130  32.3    120 30.0
   113  95  32.2    106 30.0
   106  95  32.2    106 30.0
    92 102  32.2    109 30.0
    88  95  32.2    106 30.0
   102  93  31.5    105 30.0
    99 100  31.5    108 30.0
   111 100  31.4    108 30.0
   103  98  31.4    107 30.0
    86 130  31.2    120 30.0
   101 115  33.7    109 35.0
   101 115  32.6    109 35.0
   101 115  31.3    109 35.0
   124 115  31.3    109 35.0
   113 180  30.4    133 35.0
   113 160  28.9    125 35.0
   124 130  28.0    115 35.0
    92  96  28.0    102 35.0
   101 115  28.0    109 35.0
    94 100  28.0    104 35.0
   115 100  28.0    105 35.0
   111 145  27.7    120 35.0
   116 120  25.6    107 40.0
   131 140  25.3    114 40.0
   123 140  23.9    114 40.0
   121 150  23.6    117 40.0
    50 165  23.6    122 40.0
   114 165  23.6    122 40.0
   127 165  23.6    122 40.0
   123 165  23.6    122 40.0
   112 245  23.5    148 40.0
    50 280  23.4    160 40.0
   135 162  23.4    121 40.0
   132 162  23.1    121 40.0
   160 140  22.9    110 45.0
   129 140  22.9    110 45.0
   129 175  19.5    121 45.0
    50 322  18.1    165 45.0
   115 238  17.2    140 45.0
    50 263  17.0    147 45.0
   119 295  16.7    157 45.0
   107 236  13.2    130 55.0];


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
MODEL=['GM/GeoMetroXF1      ';
       'GM/GeoMetro         ';     
       'GM/GeoMetroLSI      ';  
       'SuzukiSwift         ';                 
       'DaihatsuCharade     '; 
       'GM/GeoSprintTurbo   ';   
       'GM/GeoSprint        ';           
       'HondaCivicCRXHF     '; 
       'HondaCivicCRXHF     '; 
       'DaihatsuCharade     ';
       'SubaruJusty         ';          
      'HondaCivicCRX       ';
      'HondaCivic          ';
      'SubaruJusty         ';        
      'SubaruJusty         ';   
      'SubaruJusty4wd      ';
      'ToyotaTercel        ';
      'HondaCivicCRX       ';
      'ToyotaTercel        ';
      'FordEscort          ';
      'HondaCivic          ';
      'PontiacLeMans       ';
      'IsuzuStylus         ';
      'DodgeColt           ';
      'GM/GeoStorm         ';
      'HondaCivicCRX       ';
      'HondaCivicWagon     ';
      'HondaCivic          ';       
      'Subaru Loyale       ';        
      'VolksJettaDiesel    ';          
      'Mazda323Protege     ';
      'FordEscortWagon     ';
      'FordEscort          ';
      'GM/GeoPrism         ';    
      'ToyotaCorolla       ';      
      'EagleSummit         ';
      'NissanCentraCoupe   ';
      'NissanCentraWagon   ';
      'ToyotaCelica        ';    
      'ToyotaCelica        ';     
      'ToyotaCorolla       ';        
      'ChevroletCorsica    ';
      'ChevroletBeretta    ';
      'ToyotaCorolla       ';    
      'PontiacSunbirdConv  ';     
      'DodgeShadow         ';
      'DodgeDaytona        ';
      'EagleSpirit         ';  
      'FordTempo           ';    
      'ToyotaCelica        ';         
      'ToyotaCamry         ';   
      'ToyotaCamry         ';    
      'ToyotaCamry         ';     
      'ToyotaCamryWagon    '; 
      'OldsCutlassSup      ';
      'OldsCutlassSup      ';
      'Saab9000            ';         
      'FordMustang         ';                     
      'ToyotaCamry         ';                 
      'ChryslerLebaronConv ';     
      'DodgeDynasty        ';        
      'Volvo740            ';                    
      'FordThunderbird     ';    
      'ChevroletCaprice    ';    
      'LincolnContinental  '; 
      'ChryslerNewYorker   ';  
      'BuickReatta         ';                
      'OldsTrof/Toronado   ';
      'Oldsmobile98        ';
      'PontiacBonneville   ';
      'LexusLS400          ';
      'Nissan300ZX         ';
      'Volvo760Wagon       ';
      'Audi200QuatroWag    ';  
      'BuickElectraWagon   '; 
      'CadillacBrougham    ';
      'CadillacBrougham    ';
      'Mercedes500SL       ';
      'Mercedes560SEL      ';
      'JaguarXJSConvert    ';
      'BMW750IL            ';
      'Rolls-RoyceVarious  '];





</div></pre>
