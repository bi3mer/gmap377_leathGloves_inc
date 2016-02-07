//Maya ASCII 2016 scene
//Name: Planet2_Boss_Rig_weights.ma
//Last modified: Sun, Feb 07, 2016 05:27:28 PM
//Codeset: 1252
requires maya "2016";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2016.0 - 3.13.1.8 ";
requires -nodeType "gameFbxExporter" "gameFbxExporter" "1.0";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201507301600-967122";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "0BB6CD86-1D4B-14D1-091D-BDA8D7298ED8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -399.76543104195963 238.89171194385057 139.93436762194017 ;
	setAttr ".r" -type "double3" 692.06164742001476 -433.79999999969874 -5.7001004916599862e-015 ;
	setAttr ".rp" -type "double3" -1.4210854715202004e-014 0 0 ;
	setAttr ".rpt" -type "double3" 1.8217937915458745e-014 -4.9878744959524891e-015 
		2.0182783572267885e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8FA39189-A94F-C984-E5FD-B4A2C2CD6ECE";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 484.05780215186883;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.515464046658483 8.7057907920660238 -14.993218385019333 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "CEF38A2B-9D42-9B49-2377-B1A1014EAA57";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 15.000000000000012 148.84724572496168 -9.9999999999999609 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "8AE1673D-6049-B2D8-C027-C7A44F2AD9F2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 6.2625219114461839;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "A83813B6-9444-59B2-D615-4A8688C18AA5";
	setAttr ".t" -type "double3" 0 20.814352814058623 164.38003704537468 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "72A3E2EB-E84B-942A-7DA5-6AA85F5FD693";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 84.686565787134157;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "BD63CD5B-5245-FA6D-321E-19BD4748DFE1";
	setAttr ".t" -type "double3" 180.44525238852111 5.9694141888219292 -1.6290585673294196 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D2489DC2-A542-5984-AB79-77AE71AEFE88";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 157.52554146669769;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Front_Ref";
	rename -uid "C3D68D4A-2D41-5699-B6E2-3FA409F487E6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -49.500690983287889 0 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 10 10 10 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode imagePlane -n "Front_RefShape" -p "Front_Ref";
	rename -uid "20101B5A-4B44-8109-6CE8-A3AFDAED9A40";
	setAttr -k off ".v";
	setAttr ".fc" 51;
	setAttr ".imn" -type "string" "/Users/wer29/Desktop/Planet2_Boss/reference/Boss2_orthographs.gif";
	setAttr ".cov" -type "short2" 1920 1080 ;
	setAttr ".dlc" no;
	setAttr ".w" 19.2;
	setAttr ".h" 10.799999999999999;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "Side_Ref";
	rename -uid "5295CCEC-3246-673A-1830-51BF274EE2CA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 -43.135170029854073 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 10 10 10 ;
createNode imagePlane -n "Side_RefShape" -p "Side_Ref";
	rename -uid "5CAB6AFA-7246-2F02-0494-6CAADBF121E9";
	setAttr -k off ".v";
	setAttr ".fc" 51;
	setAttr ".imn" -type "string" "/Users/wer29/Desktop/Planet2_Boss/reference/Boss2_orthographs.gif";
	setAttr ".cov" -type "short2" 1920 1080 ;
	setAttr ".dlc" no;
	setAttr ".w" 19.2;
	setAttr ".h" 10.799999999999999;
	setAttr ".cs" -type "string" "sRGB";
createNode joint -n "Base_Control";
	rename -uid "46322630-4CE5-39C7-FE0D-7E95CEC83B26";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0 -8.5485389286235716 -28.580356764965313 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -8.5485389286235716 -28.580356764965313 1;
	setAttr ".radi" 0.5;
createNode joint -n "Waist" -p "Base_Control";
	rename -uid "CF670255-1045-2E1A-FBDD-00BD51C52373";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 -1.5246285042514174 -1.3906393854052936 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -10.073167432874989 -29.970996150370606 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_Leg" -p "Waist";
	rename -uid "5DDA08B5-D64C-6BC7-0791-E783C4BD5A38";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -11.2157 -2.2972325671250093 -1.6891038496293902 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.000000000000156 56.051457026665474 89.999999999999929 ;
	setAttr ".bps" -type "matrix" 6.6613381477509392e-016 0.55844812393947396 -0.8295394462401906 0
		 1.7763568394002509e-015 -0.8295394462401906 -0.55844812393947396 0 -1 -1.1102230246251567e-015 -1.5543122344752192e-015 0
		 -11.2157 -12.370399999999998 -31.660099999999996 1;
	setAttr ".radi" 1.8247393464182324;
createNode joint -n "R_Knee" -p "R_Leg";
	rename -uid "7DE33EB7-944C-2326-728C-2E9F1AA3E26C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -26.611657532597864 -3.6434673699403675e-005 3.7363999999999784 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.0355549961366507e-013 179.99999999999991 47.629468332653865 ;
	setAttr ".bps" -type "matrix" -3.0656632803680707e-016 0.2365146893961711 0.97162791319508368 0
		 7.0498580808794731e-016 -0.97162791319508357 0.23651468939617121 0 1 7.6615746429748571e-016 1.4085371637235118e-016 0
		 -14.952099999999996 -27.231600000000007 -9.5846599999999995 1;
	setAttr ".radi" 1.615767856741372;
createNode joint -n "R_Ankle1" -p "R_Knee";
	rename -uid "429A1483-4243-C08E-009F-C6AFCA5CE133";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -22.571541461530675 -1.1506120003446085e-006 2.8571999999999989 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.4787793536106945e-006 -3.2155983237744409e-014 -64.118605913299959 ;
	setAttr ".bps" -type "matrix" -7.6809459262285846e-016 0.97741416543986781 0.21133279252753734 0
		 2.5809568662935632e-008 -0.21133279252753734 0.9774141654398677 0 0.99999999999999967 5.454408978882079e-009 -2.5226637842997806e-008 0
		 -12.09489999999999 -32.570099999999996 -31.515799999999995 1;
	setAttr ".radi" 0.73078558645810843;
createNode joint -n "R_Ankle2" -p "R_Ankle1";
	rename -uid "4BBBEF0E-914A-E33D-2D0A-1FB24361CBE8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -5.4618458313360279 6.8683157564919384e-005 -1.7710277688820497e-012 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999797045828 -7.9099130735219582e-007 -32.336772155628829 ;
	setAttr ".bps" -type "matrix" -1.3805402762730834e-008 0.93887631588660891 -0.34425464915842324 0
		 1.3615198144544187e-008 -0.3442546491584228 -0.93887631588660891 0 -0.99999999999999978 -1.7648660954342147e-008 -8.030412999166029e-009 0
		 -12.094899999999985 -37.908600000000007 -32.669999999999995 1;
	setAttr ".radi" 0.68674005575896402;
createNode joint -n "R_Heel" -p "R_Ankle2";
	rename -uid "40690817-A044-BF8E-4F83-41A9A5E75A1B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -4.6102926869945087 1.5647938596430322e-005 6.3647158654589475e-008 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.9553813197607491e-006 -4.4260857425399917e-007 68.875936172112134 ;
	setAttr ".bps" -type "matrix" 7.7249776337150488e-009 0.017238817250843974 -0.99985140054899779 0
		 -1.6343368975494799e-008 -0.99985140054899768 -0.017238817250843749 0 -0.99999999999999978 1.6474109828865852e-008 -7.4420893649728253e-009 0
		 -12.094899999999983 -42.237099999999998 -31.082899999999995 1;
	setAttr ".radi" 1.3141062740773242;
createNode joint -n "R_Foot" -p "R_Heel";
	rename -uid "91F50032-2D44-5400-CD1B-DDBC84F12A64";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -16.739388044636868 3.2787877742634919e-005 2.0879998706880691 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.98776039964064355 89.999998964259333 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999978 -1.6162482267070058e-008 -1.0632309219183776e-008 0
		 -1.6162482273500739e-008 -1.0000000000000002 1.5587074868355747e-014 0 -1.0632309178159778e-008 -1.506842092367251e-014 -1.0000000000000004 0
		 -14.182899999999986 -42.525700000000001 -14.345999999999989 1;
	setAttr ".radi" 1.3141062740773242;
createNode joint -n "L_Leg" -p "Waist";
	rename -uid "6060105B-3E47-790B-5C63-00B9E687F708";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 11.215709518339846 -2.2972068039795897 -1.6890582097053688 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999943 -56.05145702666546 -89.999999999999943 ;
	setAttr ".bps" -type "matrix" 3.3306690738754696e-016 -0.55844812393947407 0.82953944624019038 0
		 5.5511151231257827e-017 0.82953944624019038 0.55844812393947407 0 -1 -1.6653345369377348e-016 3.3306690738754696e-016 0
		 11.215709518339846 -12.370374236854579 -31.660054360075975 1;
	setAttr ".radi" 1.8247393464182324;
createNode joint -n "L_Knee" -p "L_Leg";
	rename -uid "1150C512-DC4F-B67E-F07A-749D799CC209";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 26.611627364085823 -8.3405345847105873e-015 -3.7364292524159506 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.0888874903416268e-014 179.99999999999997 47.629468332653879 ;
	setAttr ".bps" -type "matrix" 3.0108085572711794e-016 -0.23651468939617132 -0.97162791319508346 0
		 -2.0866030026469606e-016 0.97162791319508346 -0.23651468939617132 0 1 3.005317709576873e-016 2.1741266623718104e-016 0
		 14.952138770755806 -27.231587613304683 -9.5846597329219279 1;
	setAttr ".radi" 1.615767856741372;
createNode joint -n "L_Ankle1" -p "L_Knee";
	rename -uid "3FDCEA32-AC4A-1BF8-CBDB-D2B67D7E3497";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 22.571511896999858 -1.3597639380188169e-014 -2.857269428318101 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.4405257512423932e-014 2.3000223571501195e-014 -64.118605913299945 ;
	setAttr ".bps" -type "matrix" 3.191562820351026e-016 -0.97741416543986748 -0.21133279252753767 0
		 1.7980008406409818e-016 0.21133279252753767 -0.97741416543986748 0 1 3.005317709576873e-016 2.1741266623718104e-016 0
		 12.094869342437711 -32.570081738825607 -31.515770735061896 1;
	setAttr ".radi" 0.73078558645810843;
createNode joint -n "L_Ankle2" -p "L_Ankle1";
	rename -uid "9AD20654-E146-192B-965C-249FDF14A6DE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 5.4618546715234304 -6.4392935428259079e-015 -2.1925502999990325e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999997 2.0243626405302544e-014 -32.33677215562885 ;
	setAttr ".bps" -type "matrix" 1.7348699911757825e-016 -0.93887631588660858 0.34425464915842302 0
		 2.4392242240752961e-016 0.34425464915842302 0.93887631588660858 0 -1 -1.0549296040736681e-016 3.1451136253642024e-016 0
		 12.094869342437711 -37.908575864346524 -32.670039735174512 1;
	setAttr ".radi" 0.68674005575896402;
createNode joint -n "L_Heel" -p "L_Ankle2";
	rename -uid "8A58047A-3B4E-4E05-409C-3A927CA87AC2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 4.6103077446733041 -5.1070259132757201e-015 1.6289044042996127e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.8714737004034994e-014 -2.7293367797036637e-014 
		68.875936172112077 ;
	setAttr ".bps" -type "matrix" 2.9005412453111158e-016 -0.017238817250844529 0.99985140054899746 0
		 -7.3922201390856463e-017 0.99985140054899746 0.017238817250844529 0 -1 -1.0549296040736681e-016 3.1451136253642024e-016 0
		 12.094869342437711 -42.237084614768897 -31.082919860019647 1;
	setAttr ".radi" 1.3141062740773242;
createNode joint -n "L_Foot" -p "L_Heel";
	rename -uid "A054E841-754C-727D-64DC-B39AE2C5C182";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 16.739387965494924 -1.1549157888733989e-014 -2.0880045822324509 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.98776039963977602 89.999999999999929 0 ;
	setAttr ".bps" -type "matrix" 1 8.8267921761093164e-017 6.845408789474659e-016 0
		 -5.9829448402213454e-017 0.99999999999999989 3.4000580129145419e-016 0 -7.1046403083575265e-016 -3.434752482434079e-016 1 0
		 14.182873924670167 -42.525651864797062 -14.346019358386513 1;
	setAttr ".radi" 1.3141062740773242;
createNode joint -n "Spine_Base" -p "Base_Control";
	rename -uid "557AA7C1-2E48-1122-8405-A6B29EF7EF06";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 1.6150459802609891 1.8656332862954379 ;
	setAttr ".r" -type "double3" -9.5416640443905503e-015 -1.2722218725854067e-014 1.0593375115320381e-030 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 3.814074834290325 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0.99778515785660904 -0.0665190105237735 0
		 -2.7755575615628909e-016 0.066519010523773403 0.99778515785660904 0 1.0000000000000002 -2.7755575615628909e-016 2.2204460492503131e-016 0
		 0 -6.9334929483625825 -26.714723478669875 1;
	setAttr ".radi" 0.93121781047721419;
createNode joint -n "Spine_1" -p "Spine_Base";
	rename -uid "9437AD8D-A546-1E94-008C-F0B54026160D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 9.3368776692261424 1.7763568394002505e-015 -3.1098049699449983e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 1.5230424407012987e-014 22.351888500936337 ;
	setAttr ".bps" -type "matrix" 9.9808677474286579e-017 0.94811403619211154 0.31793045525004904 0
		 4.6360868506891735e-016 0.31793045525004909 -0.94811403619211188 0 -1.0000000000000002 3.1649100759363242e-016 -3.3815508688996608e-016 0
		 -1.0366016566483336e-015 2.382705010714071 -27.335803342608312 1;
	setAttr ".radi" 1.391348957149545;
createNode joint -n "Spine_2" -p "Spine_1";
	rename -uid "54318436-2746-7579-6C52-CAB222CBE15B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 18.23274650489121 -3.5527136788005009e-015 4.8466478636802526e-015 ;
	setAttr ".r" -type "double3" -8.1815880927216451e-015 2.1225829450466829e-015 6.3611093629270335e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.5382244160049265e-015 7.0527273792032018e-015 -53.28416753493547 ;
	setAttr ".bps" -type "matrix" -3.1196329094369763e-016 0.3119704441341708 0.95009180713588348 0
		 3.5717459326507897e-016 0.95009180713588326 -0.31197044413417102 0 -1.0000000000000002 3.1649100759363242e-016 -3.3815508688996608e-016 0
		 -4.0634632049514758e-015 19.669427890334092 -21.539057945849507 1;
	setAttr ".radi" 1.5809890170432397;
createNode joint -n "Chest" -p "Spine_2";
	rename -uid "06AEEDAD-E049-C59B-F5B9-1B87DC0C8D56";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 21.899120996169305 7.1054273576010019e-015 -2.6956353773824071e-015 ;
	setAttr ".r" -type "double3" -4.9280814663183033e-016 -1.070876461225078e-014 6.3611093629270335e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.6985016460743172e-015 1.8006758206357396e-014 -29.248221376357872 ;
	setAttr ".bps" -type "matrix" -4.4670487661180016e-016 -0.19201160638565634 0.98139265486002114 0
		 1.5921538299339398e-016 0.98139265486002092 0.19201160638565629 0 -1.0000000000000002 3.1649100759363242e-016 -3.3815508688996608e-016 0
		 -8.1995496823082683e-015 26.501306393656982 -0.73288250391164667 1;
	setAttr ".radi" 1.2011558321374305;
createNode joint -n "L_Arm" -p "Chest";
	rename -uid "40538C2A-364F-DD82-74B7-D2908EBAFE21";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 1.0818041192647314 -1.7123554087230026 -17.877216723425484 ;
	setAttr ".r" -type "double3" 4.7946449920320174e-015 -7.8267549441931636e-015 6.3611093629270335e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.0096171320636402e-014 4.2155069140466496e-014 -53.043522815319228 ;
	setAttr ".bps" -type "matrix" -3.9579043863818704e-016 -0.89966239045464047 0.43658628379902475 0
		 -2.6123689183017051e-016 0.43658628379902464 0.89966239045464058 0 -1.0000000000000002 3.1649100759363242e-016 -3.3815508688996608e-016 0
		 17.87721672342548 24.613094426291752 1.021405182655144e-014 1;
	setAttr ".radi" 2;
createNode joint -n "L_Elbow" -p "L_Arm";
	rename -uid "F4C4037D-B147-159A-EF19-EF9F789A1E1F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 31.998254610493703 3.5527136788005009e-015 -6.0293855159629857 ;
	setAttr ".r" -type "double3" 6.5736303777337906e-015 -6.1412383369456882e-015 -1.9083328088781101e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 6.1593210229889268e-016 -1.8112025844908901e-014 -3.8953914583243781 ;
	setAttr ".bps" -type "matrix" -3.7712892299432378e-016 -0.92724344988449148 0.37445905603457774 0
		 -2.8752140861445105e-016 0.37445905603457763 0.9272434498844917 0 -1.0000000000000002 3.1649100759363242e-016 -3.3815508688996608e-016 0
		 23.906602239388455 -4.1745318069612374 13.969999068450472 1;
	setAttr ".radi" 2;
createNode joint -n "L_Wrist" -p "L_Elbow";
	rename -uid "BB08BC9A-1E44-5221-80E5-C4B54F1C88F4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 33.717305247756336 -3.730349362740526e-014 -1.7763568394002505e-014 ;
	setAttr ".r" -type "double3" 5.1235059140650036e-015 -3.8039484618262541e-015 -1.7007842991747102e-031 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 -3.5899056552338384e-014 -34.795149213703837 ;
	setAttr ".bps" -type "matrix" -1.4562495807591045e-016 -0.97513285579145981 -0.22162110358896914 0
		 5.737829230158603e-016 0.22162110358896903 -0.97513285579146025 0 1.0000000000000002 -3.4363176510700593e-016 4.5757441994880899e-016 0
		 23.906602239388459 -35.438682245699304 26.59574936355499 1;
	setAttr ".radi" 0.83039144699950307;
createNode joint -n "L_Hand" -p "L_Wrist";
	rename -uid "BBD698A0-A443-9BCD-FE9B-72977A0925B6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 7.3875679753237371 -7.1054273576010019e-015 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 77.195733934713161 -89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -7.889801871316359e-016 4.1328562659829289e-016 0
		 7.1325529571241657e-016 1.0000000000000002 -7.4940054162198047e-016 0 -5.2724101640594624e-016 9.1593399531575415e-016 1.0000000000000007 0
		 23.906602239388459 -42.642542502830274 24.958508396025223 1;
	setAttr ".radi" 0.83039144699950307;
createNode joint -n "R_Arm" -p "Chest";
	rename -uid "45B17439-C343-6274-F7FF-0ABD88272F38";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 1.0818030490480721 -1.7123499387266818 17.877199999999995 ;
	setAttr ".r" -type "double3" -1.5910504426211696e-015 1.2091497573354971e-014 -1.6788481393857797e-031 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.0013513741641055e-013 -4.997303314856703e-014 126.95647718468079 ;
	setAttr ".bps" -type "matrix" 3.9579043863818704e-016 0.89966239045464025 -0.43658628379902498 0
		 2.6123689183017041e-016 -0.43658628379902475 -0.89966239045464036 0 -1.0000000000000002 3.1649100759363242e-016 -3.3815508688996608e-016 0
		 -17.877200000000006 24.613099999999992 1.021405182655144e-014 1;
	setAttr ".radi" 2;
createNode joint -n "R_Elbow" -p "R_Arm";
	rename -uid "DE39BB0D-BD4E-B1C1-EF57-F39E4E9B84E4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -31.998258405996104 8.0643000011093591e-007 6.0293999999999954 ;
	setAttr ".r" -type "double3" 1.293106473507353e-014 -5.9250423165516422e-015 3.1805546814635164e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.6782391348274862e-015 -4.9350099581564908e-014 -3.8953914583243781 ;
	setAttr ".bps" -type "matrix" 3.7712892299432378e-016 0.92724344988449126 -0.37445905603457796 0
		 2.8752140861445095e-016 -0.37445905603457774 -0.92724344988449148 0 -1.0000000000000002 3.1649100759363242e-016 -3.3815508688996608e-016 0
		 -23.906600000000015 -4.1745300000000221 13.970000000000018 1;
	setAttr ".radi" 2;
createNode joint -n "R_Wrist" -p "R_Elbow";
	rename -uid "77A2A660-D740-AD96-70E8-6FACBC2523B7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -33.717304552350953 5.3960697945498737e-005 -1.7763568394002505e-014 ;
	setAttr ".r" -type "double3" 7.4235262762638108e-016 -4.0470974511572586e-016 1.2722218725854067e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99999999999997 -3.4335955008199545e-014 -34.795149213703858 ;
	setAttr ".bps" -type "matrix" 1.4562495807591038e-016 0.97513285579145959 0.22162110358896914 0
		 1.1523564666367321e-016 -0.22162110358896919 0.97513285579145981 0 1.0000000000000002 -1.9093070930133466e-016 -2.1431022559614123e-016 0
		 -23.906600000000012 -35.438699999999997 26.595700000000015 1;
	setAttr ".radi" 0.83039144699950307;
createNode joint -n "R_Hand" -p "R_Wrist";
	rename -uid "2ED7E6EB-4D40-2504-1EDA-F9AE45D02F9D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -7.387500137346386 2.6594532442913987e-005 3.5527136788005009e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 77.195733934713161 -89.999999999999943 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 5.5459731209901241e-016 1.20547181953841e-017 0
		 6.0517993594966972e-016 -1 6.3837823915946481e-016 0 7.7400975786027423e-017 -7.2164496600635175e-016 -1.0000000000000002 0
		 -23.906600000000008 -42.642500000000005 24.958500000000019 1;
	setAttr ".radi" 0.83039144699950307;
createNode joint -n "Neck" -p "Chest";
	rename -uid "A7D8C57E-9B4A-A98C-FCBC-BDA35E777EC0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 13.330647968373498 2.9887165849079089 -3.2651401286985034e-015 ;
	setAttr ".r" -type "double3" 6.4644416438879975e-015 -5.7500378030343837e-015 1.590277340731758e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0390056202148887 ;
	setAttr ".bps" -type "matrix" -4.5208689896811933e-016 -0.22680783547492975 0.97393952880411316 0
		 1.4322088099116759e-016 0.97393952880411294 0.22680783547492969 0 -1.0000000000000002 3.1649100759363242e-016 -3.3815508688996608e-016 0
		 -1.041342535375257e-014 26.874771766974849 12.923585769274387 1;
	setAttr ".radi" 1.0076484419379135;
createNode joint -n "Head" -p "Neck";
	rename -uid "9D0A2A55-0548-DABA-9080-5FAE1C411DD6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 10.814536544133002 1.0658141036401503e-014 2.4013094943893267e-015 ;
	setAttr ".r" -type "double3" -2.3854160110976377e-014 3.7769086842379274e-014 7.9513867036587856e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -13.109208198154217 89.999999999999929 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -5.7996289069587366e-016 1.5307217763218294e-015 0
		 4.7794772108182553e-016 1.0000000000000002 5.5511151231257837e-016 0 -1.5180447079722603e-015 -6.3837823915946462e-016 1.0000000000000002 0
		 -1.7703845138156386e-014 24.421950141735525 23.456290395302148 1;
	setAttr ".radi" 1.0076484419379135;
createNode joint -n "Jaw_Control" -p "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head";
	rename -uid "098E417E-3E4F-D671-E5DE-6E93DB060E04";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 7.6811644080674363e-015 -2.3370891942704759 0.26664839635010296 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.0215269473903364e-014 8.7703897392009249e-014 3.0048871229617073e-014 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -5.7996289069587366e-016 1.5307217763218294e-015 0
		 4.7794772108182553e-016 1.0000000000000002 5.5511151231257837e-016 0 -1.5180447079722603e-015 -6.3837823915946462e-016 1.0000000000000002 0
		 -1.1544471371424046e-014 22.084860947465049 23.722938791652251 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_Jaw" -p "Jaw_Control";
	rename -uid "9529704B-EE4B-8318-5C1F-81A4F12990CD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 11.234015250213869 -1.2700014310814893 -0.98806652142050666 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.000000000000014 1.4688007143858564 -89.999999999999929 ;
	setAttr ".bps" -type "matrix" 5.603214739135451e-016 -0.99967143090948141 -0.025632600792551925 0
		 1.3632635148436217e-015 0.025632600792552009 -0.99967143090948141 0 1.0000000000000002 4.7474898269802535e-016 1.3086771713967986e-015 0
		 11.234015250213861 20.814859516383553 22.734872270231762 1;
	setAttr ".radi" 1.0305769856901552;
createNode joint -n "joint2" -p "L_Jaw";
	rename -uid "FEEEDDF9-0E42-06F9-5D05-7AA79F50A460";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 10.186287342561851 -0.98860416796724704 1.2051076250576465 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.5444437451708134e-014 180.00000000000003 85.498496669437145 ;
	setAttr ".bps" -type "matrix" -1.0814106641329561e-015 0.052905933795233701 0.99859950038504164 0
		 -4.5159695441644255e-016 0.99859950038504164 -0.052905933795233784 0 -1.0000000000000002 -4.5773313661034375e-016 -9.8750307649180678e-016 0
		 12.439122875271513 10.606578577010252 23.462050576416544 1;
	setAttr ".radi" 1.5767611696418058;
createNode joint -n "joint3" -p "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2";
	rename -uid "E215E818-7240-C1AC-E240-AC8BCF97692D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 20.262996594458691 -2.385858855439539 -1.3785555438363257 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.0327026161769961 89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 4.9056641752255832e-016 1.5416536010143862e-015 0
		 -5.3246366272141976e-016 1.0000000000000002 5.6898930012039273e-016 0 -1.6111155026543182e-015 -6.5919492087118699e-016 1.0000000000000002 0
		 13.817678419107818 9.2960938722985791 43.822894942597451 1;
	setAttr ".radi" 1.5767611696418058;
createNode joint -n "R_Jaw" -p "Jaw_Control";
	rename -uid "16580062-2747-0410-95F0-98805A4E267F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -11.234000000000007 -1.2699609474650444 -0.98803879165221531 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000028 -1.468800714385837 90.000000000000014 ;
	setAttr ".bps" -type "matrix" 2.1683464332406522e-016 0.99967143090948163 0.025632600792551599 0
		 -1.0301966074560745e-015 -0.025632600792551787 0.99967143090948163 0 1.0000000000000002 -5.2445173946461544e-016 8.6458796154673524e-016 0
		 -11.234000000000018 20.814900000000012 22.734900000000017 1;
	setAttr ".radi" 1.0305769856901552;
createNode joint -n "joint2" -p "R_Jaw";
	rename -uid "FDC4F6CC-DA4B-E12A-F03D-1E8D9CCB0481";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -10.186305840856917 0.98862634322797049 -1.2050999999999945 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.5444437451708134e-014 180 85.498496669437117 ;
	setAttr ".bps" -type "matrix" 8.8753573226381426e-016 -0.052905933795234603 -0.99859950038504186 0
		 -2.9702100928829887e-016 -0.99859950038504186 0.052905933795234783 0 -1.0000000000000002 5.3093084771243904e-016 -7.4229479336906647e-016 0
		 -12.439100000000016 10.606600000000004 23.462100000000007 1;
	setAttr ".radi" 1.5767611696418058;
createNode joint -n "joint3" -p "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2";
	rename -uid "7F0BC560-7644-460F-BCEF-C9B541C5BAD9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -20.26295095214175 2.3858817680676259 1.3786000000000058 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.0327026161767399 89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 1 -5.6270869122286384e-016 7.691034441432929e-017 0
		 -2.7046580649882754e-016 -1.0000000000000004 4.9057979900624105e-015 0 2.3587309789062169e-016 -4.7184478546569153e-015 -1.0000000000000002 0
		 -13.817700000000041 9.2960899999999906 43.822900000000004 1;
	setAttr ".radi" 1.5767611696418058;
createNode transform -n "Torso";
	rename -uid "7A5EF323-C140-53DF-96D2-2ABB65C7CE1A";
	setAttr ".t" -type "double3" 0 11.561456537644371 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 36.764276844333843 36.764276844333843 36.764276844333843 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "TorsoShape" -p "Torso";
	rename -uid "DDC2132C-3C41-011B-5411-FC8D9C7EC68E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49949067831039429 0.68230462074279785 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "TorsoShapeOrig" -p "Torso";
	rename -uid "46CC9FCD-40D9-FB2E-92D3-348857D93206";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Head";
	rename -uid "5D53C7F9-BB40-5145-CDD0-18A5C8E4347F";
	setAttr ".t" -type "double3" 0 19.617725165286679 31.000743091790163 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 22.220267096720594 20.926962622579421 20.926962622579421 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "HeadShape" -p "|Head";
	rename -uid "B10E4276-0C4D-6ECD-CD4C-99B937162131";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "HeadShapeOrig" -p "|Head";
	rename -uid "1C5C4DE5-46C0-8422-5744-078E9956A62A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Jaw";
	rename -uid "7727CF47-A94B-ABAF-9106-7F922293F382";
	setAttr ".t" -type "double3" 0 9.5017786097019599 33.811438599562621 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 27.967222727726977 2.433956180439881 29.697805139026539 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "JawShape" -p "Jaw";
	rename -uid "A7CA7AEF-D942-5713-F52F-62B53CA7845A";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "JawShapeOrig" -p "Jaw";
	rename -uid "A877877E-43D8-5ACA-DB45-6C9D1478E2AD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Arms";
	rename -uid "5B1366AA-5748-4F04-8360-798A97F71731";
	setAttr ".t" -type "double3" 18.876283281720202 20.804433693994056 6.4049762578744378 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 0 11.876137648757611 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 14.128895428174621 17.612834344654743 19.55167476822702 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "ArmsShape" -p "Arms";
	rename -uid "546281C6-3C4C-A153-7BA8-C1BE147BC3C5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "ArmsShapeOrig" -p "Arms";
	rename -uid "83D4CB24-4789-2090-2618-E1A9CE7A072A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Leg";
	rename -uid "BFABD5B8-494E-E78E-B1C2-22A1C874AF37";
	setAttr ".t" -type "double3" 12.903261752267436 -13.181326945442109 -24.452619527716614 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 8.0272937366198942 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 12.905860036274099 20.864441098464752 20.864441098464752 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "LegShape" -p "Leg";
	rename -uid "CB8D5EA6-424A-F462-CBB6-7FA2D38B3583";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "LegShapeOrig" -p "Leg";
	rename -uid "C899F162-4C2B-7E91-7FF8-59A66A72DA17";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Foot";
	rename -uid "EA9DF1F0-E84E-6F17-DCA1-09958E832EEE";
	setAttr ".t" -type "double3" 14.710233257018757 -40.432141440952073 -13.554738922429696 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 8.1364409365510291 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 18.822159636476453 7.1195675677703436 26.327318924006228 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "FootShape" -p "Foot";
	rename -uid "BA7D6A8C-2246-2961-6175-7D9C81335E63";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "FootShapeOrig" -p "Foot";
	rename -uid "8AF84858-44F2-C4A2-9B66-2682BB0C5294";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Hand";
	rename -uid "65CA9BC8-4B4F-A0EF-D312-019AD22B28C9";
	setAttr ".t" -type "double3" 25.574572953400576 -40.317685236147241 21.350867038302574 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 20.696721134477805 6.8157040094478578 18.516260425435387 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "HandShape" -p "Hand";
	rename -uid "6B963641-E449-FB54-454B-818FD7F3EBF3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "polySurfaceShape1" -p "Hand";
	rename -uid "7CD0B16C-3242-FADB-AEBE-9681D36506F4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "HandShapeOrig" -p "Hand";
	rename -uid "9EC16F9F-4E4A-4373-9351-F891ED362D57";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "ForeArm";
	rename -uid "E0F338E7-6440-FC3E-147C-C686CA1CE07E";
	setAttr ".t" -type "double3" 25.237931914039027 -23.833867081082438 23.626836586721062 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 1.3119978910934831 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 20.09468439292721 15.408649619960064 15.408649619960064 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "ForeArmShape" -p "ForeArm";
	rename -uid "2DE2C8DF-3545-D89B-1F31-59882AB4C934";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "ForeArmShapeOrig" -p "ForeArm";
	rename -uid "240CC4C5-43A6-61F0-2090-30A3755FB699";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Crystal1";
	rename -uid "34437009-CA4D-9E67-AD2C-589D9B742E77";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".t" -type "double3" 0 46.572776631207311 -6.5841957046503223 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 269.99999999999949 112.79661014656108 89.999999999997925 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 6.4564810939859463 6.4221676643517931 9.4866461210122228 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "Crystal1Shape" -p "Crystal1";
	rename -uid "7551D36F-A647-E21F-0AF8-E0B4A767D3DC";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.3749999925494194 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "Crystal1ShapeOrig" -p "Crystal1";
	rename -uid "BA9F2EAC-4FF6-D767-0E09-98B1B96CC9DE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.375 0 0.45833334
		 0 0.54166669 0 0.625 0 0.375 0.083333336 0.45833334 0.083333336 0.54166669 0.083333336
		 0.625 0.083333336 0.375 0.16666667 0.45833334 0.16666667 0.54166669 0.16666667 0.625
		 0.16666667 0.375 0.25 0.45833334 0.25 0.54166669 0.25 0.625 0.25 0.375 0.33333334
		 0.45833334 0.33333334 0.54166669 0.33333334 0.625 0.33333334 0.375 0.41666669 0.45833334
		 0.41666669 0.54166669 0.41666669 0.625 0.41666669 0.375 0.5 0.45833334 0.5 0.54166669
		 0.5 0.625 0.5 0.375 0.58333331 0.45833334 0.58333331 0.54166669 0.58333331 0.625
		 0.58333331 0.375 0.66666663 0.45833334 0.66666663 0.54166669 0.66666663 0.625 0.66666663
		 0.375 0.74999994 0.45833334 0.74999994 0.54166669 0.74999994 0.625 0.74999994 0.375
		 0.83333325 0.45833334 0.83333325 0.54166669 0.83333325 0.625 0.83333325 0.375 0.91666657
		 0.45833334 0.91666657 0.54166669 0.91666657 0.625 0.91666657 0.375 0.99999988 0.45833334
		 0.99999988 0.54166669 0.99999988 0.625 0.99999988 0.875 0 0.79166669 0 0.70833337
		 0 0.875 0.083333336 0.79166669 0.083333336 0.70833337 0.083333336 0.875 0.16666667
		 0.79166669 0.16666667 0.70833337 0.16666667 0.875 0.25 0.79166669 0.25 0.70833337
		 0.25 0.125 0 0.20833334 0 0.29166669 0 0.125 0.083333336 0.20833334 0.083333336 0.29166669
		 0.083333336 0.125 0.16666667 0.20833334 0.16666667 0.29166669 0.16666667 0.125 0.25
		 0.20833334 0.25 0.29166669 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt";
	setAttr ".pt[8]" -type "float3" -0.33690453 0 0.12009547 ;
	setAttr ".pt[9]" -type "float3" -0.11056311 0 0.12009547 ;
	setAttr ".pt[10]" -type "float3" 0.11577852 0 0.12009547 ;
	setAttr ".pt[11]" -type "float3" 0.34211993 0 0.12009547 ;
	setAttr ".pt[12]" -type "float3" -0.33690453 0 0.12009547 ;
	setAttr ".pt[13]" -type "float3" -0.11056311 0 0.12009547 ;
	setAttr ".pt[14]" -type "float3" 0.11577852 0 0.12009547 ;
	setAttr ".pt[15]" -type "float3" 0.34211993 0 0.12009547 ;
	setAttr ".pt[16]" -type "float3" -0.5759303 0 0.050316975 ;
	setAttr ".pt[17]" -type "float3" -0.32700139 0 0.086000808 ;
	setAttr ".pt[18]" -type "float3" 0.33221689 0 0.086000808 ;
	setAttr ".pt[19]" -type "float3" 0.58114582 0 0.050316975 ;
	setAttr ".pt[20]" -type "float3" -0.5759303 0 -0.050316978 ;
	setAttr ".pt[21]" -type "float3" -0.32700139 0 -0.0860008 ;
	setAttr ".pt[22]" -type "float3" 0.33221689 0 -0.0860008 ;
	setAttr ".pt[23]" -type "float3" 0.58114582 0 -0.050316978 ;
	setAttr ".pt[24]" -type "float3" -0.33690453 0 -0.12009547 ;
	setAttr ".pt[25]" -type "float3" -0.11056311 0 -0.12009547 ;
	setAttr ".pt[26]" -type "float3" 0.11577852 0 -0.12009547 ;
	setAttr ".pt[27]" -type "float3" 0.34211993 0 -0.12009547 ;
	setAttr ".pt[28]" -type "float3" -0.33690453 0 -0.12009547 ;
	setAttr ".pt[29]" -type "float3" -0.11056311 0 -0.12009547 ;
	setAttr ".pt[30]" -type "float3" 0.11577852 0 -0.12009547 ;
	setAttr ".pt[31]" -type "float3" 0.34211993 0 -0.12009547 ;
	setAttr ".pt[50]" -type "float3" 0.68484926 0 -0.050316975 ;
	setAttr ".pt[51]" -type "float3" 0.68484926 0 0.050316978 ;
	setAttr ".pt[54]" -type "float3" -0.67640811 0 -0.050316975 ;
	setAttr ".pt[55]" -type "float3" -0.67640811 0 0.050316978 ;
	setAttr -s 56 ".vt[0:55]"  -0.17892608 -1.17758012 0.138897 -0.059642017 -1.17758012 0.138897
		 0.059642032 -1.17758012 0.138897 0.17892608 -1.17758012 0.138897 -0.27479452 -0.55865681 0.20308588
		 -0.09159822 -0.55865681 0.20308588 0.091598228 -0.55865681 0.20308588 0.27479452 -0.55865681 0.20308588
		 -0.27479452 0.55865681 0.20308588 -0.09159822 0.55865681 0.20308588 0.091598228 0.55865681 0.20308588
		 0.27479452 0.55865681 0.20308588 -0.27479452 1.67597044 0.20308588 -0.09159822 1.67597044 0.20308588
		 0.091598228 1.67597044 0.20308588 0.27479452 1.67597044 0.20308588 -0.46825728 2.068053722 0.085087918
		 -0.26677912 2.44487 0.14543055 0.26677915 2.44487 0.14543055 0.46825728 2.068053722 0.085087918
		 -0.46825728 2.068053722 -0.085087933 -0.26677912 2.44487 -0.14543058 0.26677915 2.44487 -0.14543058
		 0.46825728 2.068053722 -0.085087933 -0.27479452 1.67597044 -0.20308588 -0.09159822 1.67597044 -0.20308588
		 0.091598228 1.67597044 -0.20308588 0.27479452 1.67597044 -0.20308588 -0.27479452 0.55865681 -0.20308588
		 -0.09159822 0.55865681 -0.20308588 0.091598228 0.55865681 -0.20308588 0.27479452 0.55865681 -0.20308588
		 -0.27479452 -0.55865681 -0.20308588 -0.09159822 -0.55865681 -0.20308588 0.091598228 -0.55865681 -0.20308588
		 0.27479452 -0.55865681 -0.20308588 -0.17892608 -1.17758012 -0.138897 -0.059642017 -1.17758012 -0.138897
		 0.059642032 -1.17758012 -0.138897 0.17892608 -1.17758012 -0.138897 -0.30489498 -1.215819 -0.058194399
		 -0.054840393 -1.46641278 -0.033573374 0.054840423 -1.46641278 -0.033573374 0.30489498 -1.215819 -0.058194399
		 -0.30489498 -1.215819 0.058194406 -0.054840393 -1.46641278 0.033573397 0.054840423 -1.46641278 0.033573397
		 0.30489498 -1.215819 0.058194406 0.46825728 -0.74070179 -0.085087918 0.46825728 -0.74070179 0.085087933
		 0.55219281 1.34544289 -0.085087918 0.55219281 1.34544289 0.085087933 -0.46825728 -0.74070179 -0.085087918
		 -0.46825728 -0.74070179 0.085087933 -0.54958189 1.34399521 -0.085087918 -0.54958189 1.34399521 0.085087933;
	setAttr -s 162 ".ed[0:161]"  0 1 0 1 4 0 4 0 0 1 5 0 5 4 0 1 2 0 2 5 0
		 2 6 0 6 5 0 2 3 0 3 6 0 3 7 0 7 6 0 5 8 0 8 4 0 5 9 0 9 8 0 6 9 0 6 10 0 10 9 0 7 10 0
		 7 11 0 11 10 0 9 12 0 12 8 0 9 13 0 13 12 0 10 13 0 10 14 0 14 13 0 11 14 0 11 15 0
		 15 14 0 13 17 0 17 12 0 17 16 0 16 12 0 14 17 0 14 18 0 18 17 0 15 18 0 15 19 0 19 18 0
		 17 20 0 20 16 0 17 21 0 21 20 0 18 21 0 18 22 0 22 21 0 19 22 0 19 23 0 23 22 0 21 24 0
		 24 20 0 21 25 0 25 24 0 22 25 0 22 26 0 26 25 0 23 27 0 27 22 0 27 26 0 25 28 0 28 24 0
		 25 29 0 29 28 0 26 29 0 26 30 0 30 29 0 27 30 0 27 31 0 31 30 0 29 32 0 32 28 0 29 33 0
		 33 32 0 30 33 0 30 34 0 34 33 0 31 34 0 31 35 0 35 34 0 33 36 0 36 32 0 33 37 0 37 36 0
		 34 37 0 34 38 0 38 37 0 35 38 0 35 39 0 39 38 0 37 41 0 41 36 0 41 40 0 40 36 0 38 41 0
		 38 42 0 42 41 0 39 42 0 39 43 0 43 42 0 41 44 0 44 40 0 41 45 0 45 44 0 42 45 0 42 46 0
		 46 45 0 43 46 0 43 47 0 47 46 0 45 0 0 0 44 0 45 1 0 46 1 0 46 2 0 47 3 0 3 46 0
		 39 48 0 48 43 0 35 48 0 43 49 0 49 47 0 48 49 0 49 3 0 49 7 0 35 50 0 50 48 0 31 50 0
		 48 51 0 51 49 0 50 51 0 51 7 0 51 11 0 27 50 0 23 50 0 50 19 0 19 51 0 51 15 0 40 52 0
		 52 36 0 52 32 0 44 52 0 44 53 0 53 52 0 0 53 0 4 53 0 52 54 0 54 32 0 54 28 0 53 54 0
		 53 55 0 55 54 0 4 55 0 8 55 0 54 24 0 54 20 0 55 20 0 55 16 0 12 55 0;
	setAttr -s 324 ".n";
	setAttr ".n[0:165]" -type "float3"  0 -0.10315726 0.99466509 0 -0.10315727
		 0.99466503 0 -0.10315725 0.99466503 0 -0.1031573 0.99466515 0 -0.10315729 0.99466509
		 0 -0.10315728 0.99466503 0 -0.10315728 0.99466509 0 -0.10315728 0.99466509 0 -0.10315729
		 0.99466509 0 -0.10315727 0.99466503 0 -0.10315727 0.99466509 0 -0.10315728 0.99466509
		 0 -0.10315728 0.99466503 0 -0.1031573 0.99466509 0 -0.10315729 0.99466497 0 -0.10315724
		 0.99466497 0 -0.10315726 0.99466509 0 -0.10315727 0.99466509 0 0 1 0 0 1 0 0 1 0
		 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1
		 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0.074774317 0.99720049 0 0.07477431 0.99720049
		 0 0.07477431 0.99720049 -0.40813699 0.072493099 0.91003788 -0.40813699 0.072493099
		 0.91003788 -0.40813699 0.072493099 0.91003793 0 0.07477437 0.99720055 0 0.074774362
		 0.99720049 0 0.074774362 0.99720049 0 0.074774332 0.99720049 0 0.074774325 0.99720043
		 0 0.074774332 0.99720043 0 0.074774288 0.99720049 0 0.074774288 0.99720049 0 0.074774295
		 0.99720049 0.40813708 0.072493099 0.91003776 0.40813705 0.072493106 0.91003788 0.40813714
		 0.072493114 0.91003782 -0.88185734 0.47151637 0 -0.88185734 0.47151628 0 -0.88185734
		 0.47151631 0 -0.8818574 0.47151622 0 -0.88185745 0.47151619 0 -0.8818574 0.47151619
		 0 0 0.99999994 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0.8818574 0.47151619 0 0.8818574 0.47151616
		 0 0.88185745 0.47151619 0 0.8818574 0.47151625 0 0.8818574 0.47151619 0 0.88185745
		 0.47151622 0 -0.40813699 0.072493106 -0.91003793 -0.40813699 0.072493106 -0.91003788
		 -0.40813696 0.072493099 -0.91003788 0 0.074774265 -0.99720049 0 0.074774273 -0.99720049
		 0 0.074774273 -0.99720049 0 0.07477428 -0.99720043 0 0.074774288 -0.99720049 0 0.07477428
		 -0.99720043 0 0.074774295 -0.99720043 0 0.074774303 -0.99720049 0 0.074774303 -0.99720049
		 0.40813708 0.072493084 -0.91003782 0.40813708 0.072493091 -0.91003788 0.40813702
		 0.072493076 -0.91003776 0 0.074774243 -0.99720049 0 0.074774243 -0.99720049 0 0.074774243
		 -0.99720049 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0
		 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0
		 0 -1 0 0 -1 0 0 -1 0 -0.10315728 -0.99466509 0 -0.10315727 -0.99466497 0 -0.10315727
		 -0.99466509 0 -0.10315727 -0.99466503 0 -0.10315728 -0.99466509 0 -0.10315727 -0.99466503
		 0 -0.10315729 -0.99466509 0 -0.10315728 -0.99466509 0 -0.10315729 -0.99466503 0 -0.10315727
		 -0.99466515 0 -0.10315727 -0.99466503 0 -0.10315725 -0.99466497 0 -0.10315727 -0.99466503
		 0 -0.10315729 -0.99466515 0 -0.10315726 -0.99466503 0 -0.10315727 -0.99466503 0 -0.10315727
		 -0.99466509 0 -0.10315726 -0.99466509 0 -0.34258637 -0.93948632 0 -0.34258637 -0.93948627
		 0 -0.34258637 -0.93948632 -0.37775981 -0.45611402 -0.80576521;
	setAttr ".n[166:323]" -type "float3"  -0.37775981 -0.45611399 -0.80576521 -0.37775984
		 -0.45611402 -0.80576521 0 -0.3425864 -0.93948627 0 -0.34258637 -0.93948632 0 -0.34258634
		 -0.93948627 0 -0.34258613 -0.93948644 0 -0.3425861 -0.93948644 0 -0.34258613 -0.93948638
		 0 -0.34258616 -0.93948632 0 -0.34258619 -0.93948638 0 -0.34258619 -0.9394865 0.37775978
		 -0.45611399 -0.80576521 0.37775981 -0.45611402 -0.80576521 0.37775978 -0.45611399
		 -0.80576521 -0.70786792 -0.7063449 0 -0.70786792 -0.70634484 0 -0.70786792 -0.70634478
		 0 -0.70786786 -0.7063449 0 -0.70786786 -0.7063449 0 -0.7078678 -0.70634496 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0.70786786 -0.70634484 0 0.70786792 -0.7063449
		 0 0.70786786 -0.70634484 0 0.70786792 -0.70634472 0 0.70786798 -0.70634478 0 0.70786804
		 -0.70634478 0 -0.37775975 -0.45611393 0.80576515 -0.37775975 -0.45611393 0.80576521
		 -0.37775975 -0.45611396 0.80576527 0 -0.34258634 0.93948638 0 -0.34258631 0.93948632
		 0 -0.34258628 0.93948638 0 -0.34258613 0.9394865 0 -0.3425861 0.93948644 0 -0.34258616
		 0.93948656 0 -0.34258631 0.93948638 0 -0.34258625 0.93948632 0 -0.34258628 0.93948638
		 0.37775975 -0.45611387 0.80576527 0.37775978 -0.4561139 0.80576527 0.37775975 -0.45611393
		 0.80576533 0 -0.34258619 0.9394865 0 -0.34258613 0.93948638 0 -0.34258616 0.93948644
		 0.4803015 -0.21330187 -0.85077184 0.48030153 -0.2133019 -0.8507719 0.48030147 -0.21330187
		 -0.85077184 0.40321228 -0.15597324 -0.90171623 0.40321231 -0.15597326 -0.90171629
		 0.40321222 -0.15597324 -0.90171629 0.94566172 -0.32515219 0 0.94566172 -0.32515219
		 0 0.94566166 -0.32515216 0 0.9456616 -0.32515249 0 0.94566166 -0.32515252 0 0.9456616
		 -0.32515249 0 0.48030144 -0.21330182 0.85077184 0.48030147 -0.21330187 0.85077196
		 0.48030144 -0.21330185 0.8507719 0.40321222 -0.15597326 0.90171629 0.40321219 -0.15597323
		 0.90171623 0.40321219 -0.15597324 0.90171629 0.50655699 -0.020381209 -0.8619656 0.50655699
		 -0.020381207 -0.86196554 0.50655693 -0.020381209 -0.86196566 0.39143193 0 -0.92020702
		 0.3914319 0 -0.92020708 0.39143196 0 -0.92020714 0.99919152 -0.040202249 0 0.99919158
		 -0.040202249 0 0.99919152 -0.040202245 0 0.99919158 -0.040202208 0 0.99919152 -0.040202204
		 0 0.99919152 -0.040202204 0 0.50655699 -0.020381192 0.8619656 0.50655693 -0.020381192
		 0.86196566 0.50655699 -0.020381192 0.8619656 0.39143181 0 0.92020708 0.39143184 0
		 0.92020708 0.39143181 0 0.92020714 0.39143193 0 -0.92020702 0.39143193 0 -0.92020708
		 0.39143199 0 -0.92020708 0.44210717 0.051353365 -0.89549088 0.44210723 0.051353373
		 -0.89549094 0.44210726 0.051353373 -0.89549094 0.99332142 0.11538009 0 0.99332148
		 0.1153801 0 0.99332136 0.11538009 0 0.99332142 0.11538021 0 0.99332136 0.11538021
		 0 0.99332142 0.11538021 0 0.3914319 0 0.92020702 0.39143196 0 0.92020708 0.39143193
		 0 0.92020708 0.44210723 0.05135341 0.89549094 0.44210717 0.051353406 0.89549088 0.44210726
		 0.051353417 0.89549094 -0.48030156 -0.21330193 -0.85077184 -0.48030156 -0.21330188
		 -0.85077184 -0.48030156 -0.21330191 -0.85077184 -0.40321225 -0.15597321 -0.90171617
		 -0.40321228 -0.15597324 -0.90171623 -0.40321225 -0.15597321 -0.90171629 -0.94566172
		 -0.32515222 0 -0.94566172 -0.32515225 0 -0.94566166 -0.32515222 0 -0.9456616 -0.32515252
		 0 -0.9456616 -0.32515252 0 -0.94566154 -0.32515249 0 -0.48030147 -0.21330185 0.85077196
		 -0.48030144 -0.21330187 0.85077196 -0.48030138 -0.21330187 0.85077196 -0.40321222
		 -0.15597323 0.90171623 -0.40321225 -0.15597326 0.90171629 -0.40321219 -0.15597324
		 0.90171629 -0.50698125 -0.019777499 -0.8617301 -0.50698125 -0.019777497 -0.8617301
		 -0.50698125 -0.019777499 -0.86173016 -0.39457452 0 -0.91886395 -0.39457452 0 -0.91886389
		 -0.39457449 0 -0.91886395 -0.99923998 -0.038980629 0 -0.99923998 -0.038980629 0 -0.99923992
		 -0.038980626 0 -0.99923998 -0.038980629 0 -0.99923992 -0.038980626 0 -0.99923998
		 -0.038980629 0 -0.50698125 -0.019777484 0.8617301 -0.50698125 -0.019777484 0.86173016
		 -0.50698125 -0.019777482 0.8617301 -0.39457437 0 0.91886401 -0.39457437 0 0.91886401
		 -0.39457437 0 0.91886407 -0.39457452 0 -0.91886401 -0.39457449 0 -0.91886401 -0.39457449
		 0 -0.91886395 -0.44438788 0.049912646 -0.89444298 -0.44438785 0.049912646 -0.89444286
		 -0.44438788 0.049912646 -0.89444292 -0.99375147 0.1116159 0 -0.99375135 0.11161589
		 0 -0.99375141 0.1116159 0 -0.99375135 0.11161589 0 -0.99375141 0.1116159 0 -0.99375147
		 0.1116159 0 -0.39457434 0 0.91886389 -0.3945744 0 0.91886401 -0.39457437 0 0.91886401
		 -0.44438794 0.049912687 0.89444292 -0.44438794 0.049912687 0.89444298 -0.44438794
		 0.049912687 0.89444292;
	setAttr -s 108 -ch 324 ".fc[0:107]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 4
		f 3 -2 3 4
		mu 0 3 4 1 5
		f 3 5 6 -4
		mu 0 3 1 2 5
		f 3 -7 7 8
		mu 0 3 5 2 6
		f 3 9 10 -8
		mu 0 3 2 3 6
		f 3 -11 11 12
		mu 0 3 6 3 7
		f 3 -5 13 14
		mu 0 3 4 5 8
		f 3 -14 15 16
		mu 0 3 8 5 9
		f 3 -9 17 -16
		mu 0 3 5 6 9
		f 3 -18 18 19
		mu 0 3 9 6 10
		f 3 -13 20 -19
		mu 0 3 6 7 10
		f 3 -21 21 22
		mu 0 3 10 7 11
		f 3 -17 23 24
		mu 0 3 8 9 12
		f 3 -24 25 26
		mu 0 3 12 9 13
		f 3 -20 27 -26
		mu 0 3 9 10 13
		f 3 -28 28 29
		mu 0 3 13 10 14
		f 3 -23 30 -29
		mu 0 3 10 11 14
		f 3 -31 31 32
		mu 0 3 14 11 15
		f 3 33 34 -27
		mu 0 3 13 17 12
		f 3 -35 35 36
		mu 0 3 12 17 16
		f 3 -30 37 -34
		mu 0 3 13 14 17
		f 3 -38 38 39
		mu 0 3 17 14 18
		f 3 -33 40 -39
		mu 0 3 14 15 18
		f 3 -41 41 42
		mu 0 3 18 15 19
		f 3 -36 43 44
		mu 0 3 16 17 20
		f 3 -44 45 46
		mu 0 3 20 17 21
		f 3 -40 47 -46
		mu 0 3 17 18 21
		f 3 -48 48 49
		mu 0 3 21 18 22
		f 3 -43 50 -49
		mu 0 3 18 19 22
		f 3 -51 51 52
		mu 0 3 22 19 23
		f 3 -47 53 54
		mu 0 3 20 21 24
		f 3 -54 55 56
		mu 0 3 24 21 25
		f 3 -50 57 -56
		mu 0 3 21 22 25
		f 3 -58 58 59
		mu 0 3 25 22 26
		f 3 60 61 -53
		mu 0 3 23 27 22
		f 3 -62 62 -59
		mu 0 3 22 27 26
		f 3 -57 63 64
		mu 0 3 24 25 28
		f 3 -64 65 66
		mu 0 3 28 25 29
		f 3 -60 67 -66
		mu 0 3 25 26 29
		f 3 -68 68 69
		mu 0 3 29 26 30
		f 3 -63 70 -69
		mu 0 3 26 27 30
		f 3 -71 71 72
		mu 0 3 30 27 31
		f 3 -67 73 74
		mu 0 3 28 29 32
		f 3 -74 75 76
		mu 0 3 32 29 33
		f 3 -70 77 -76
		mu 0 3 29 30 33
		f 3 -78 78 79
		mu 0 3 33 30 34
		f 3 -73 80 -79
		mu 0 3 30 31 34
		f 3 -81 81 82
		mu 0 3 34 31 35
		f 3 -77 83 84
		mu 0 3 32 33 36
		f 3 -84 85 86
		mu 0 3 36 33 37
		f 3 -80 87 -86
		mu 0 3 33 34 37
		f 3 -88 88 89
		mu 0 3 37 34 38
		f 3 -83 90 -89
		mu 0 3 34 35 38
		f 3 -91 91 92
		mu 0 3 38 35 39
		f 3 93 94 -87
		mu 0 3 37 41 36
		f 3 -95 95 96
		mu 0 3 36 41 40
		f 3 -90 97 -94
		mu 0 3 37 38 41
		f 3 -98 98 99
		mu 0 3 41 38 42
		f 3 -93 100 -99
		mu 0 3 38 39 42
		f 3 -101 101 102
		mu 0 3 42 39 43
		f 3 -96 103 104
		mu 0 3 40 41 44
		f 3 -104 105 106
		mu 0 3 44 41 45
		f 3 -100 107 -106
		mu 0 3 41 42 45
		f 3 -108 108 109
		mu 0 3 45 42 46
		f 3 -103 110 -109
		mu 0 3 42 43 46
		f 3 -111 111 112
		mu 0 3 46 43 47
		f 3 -107 113 114
		mu 0 3 44 45 48
		f 3 -114 115 -1
		mu 0 3 48 45 49
		f 3 -110 116 -116
		mu 0 3 45 46 49
		f 3 -117 117 -6
		mu 0 3 49 46 50
		f 3 118 119 -113
		mu 0 3 47 51 46
		f 3 -120 -10 -118
		mu 0 3 46 51 50
		f 3 -102 120 121
		mu 0 3 53 52 56
		f 3 -121 -92 122
		mu 0 3 56 52 55
		f 3 -112 123 124
		mu 0 3 54 53 57
		f 3 -124 -122 125
		mu 0 3 57 53 56
		f 3 -125 126 -119
		mu 0 3 54 57 3
		f 3 -127 127 -12
		mu 0 3 3 57 7
		f 3 -123 128 129
		mu 0 3 56 55 59
		f 3 -129 -82 130
		mu 0 3 59 55 58
		f 3 -126 131 132
		mu 0 3 57 56 60
		f 3 -132 -130 133
		mu 0 3 60 56 59
		f 3 -133 134 -128
		mu 0 3 57 60 7
		f 3 -135 135 -22
		mu 0 3 7 60 11
		f 3 -72 136 -131
		mu 0 3 58 61 59
		f 3 -137 -61 137
		mu 0 3 59 61 62
		f 3 -134 138 139
		mu 0 3 60 59 63
		f 3 -139 -138 -52
		mu 0 3 63 59 62
		f 3 -136 140 -32
		mu 0 3 11 60 15
		f 3 -141 -140 -42
		mu 0 3 15 60 63
		f 3 141 142 -97
		mu 0 3 65 68 64
		f 3 -143 143 -85
		mu 0 3 64 68 67
		f 3 -105 144 -142
		mu 0 3 65 66 68
		f 3 -145 145 146
		mu 0 3 68 66 69
		f 3 -115 147 -146
		mu 0 3 66 0 69
		f 3 -148 -3 148
		mu 0 3 69 0 4
		f 3 149 150 -144
		mu 0 3 68 71 67
		f 3 -151 151 -75
		mu 0 3 67 71 70
		f 3 -147 152 -150
		mu 0 3 68 69 71
		f 3 -153 153 154
		mu 0 3 71 69 72
		f 3 -149 155 -154
		mu 0 3 69 4 72
		f 3 -156 -15 156
		mu 0 3 72 4 8
		f 3 -152 157 -65
		mu 0 3 70 71 73
		f 3 -158 158 -55
		mu 0 3 73 71 74
		f 3 -155 159 -159
		mu 0 3 71 72 74
		f 3 -160 160 -45
		mu 0 3 74 72 75
		f 3 -25 161 -157
		mu 0 3 8 12 72
		f 3 -162 -37 -161
		mu 0 3 72 12 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Crystal2";
	rename -uid "0AB44A80-DB43-BE1A-F829-5F8617520363";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".t" -type "double3" 0 34.723260477941523 -29.659347332106609 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 269.99999999999829 128.31080491791067 89.999999999997854 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 6.4564810939859463 6.4221676643517931 9.4866461210122228 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "Crystal2Shape" -p "Crystal2";
	rename -uid "B76D855E-BF49-4C01-DA27-B684FD359280";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.3749999925494194 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "Crystal2ShapeOrig" -p "Crystal2";
	rename -uid "41D4C89F-4650-17B3-5CD8-6BAA66D667EF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.375 0 0.45833334
		 0 0.54166669 0 0.625 0 0.375 0.083333336 0.45833334 0.083333336 0.54166669 0.083333336
		 0.625 0.083333336 0.375 0.16666667 0.45833334 0.16666667 0.54166669 0.16666667 0.625
		 0.16666667 0.375 0.25 0.45833334 0.25 0.54166669 0.25 0.625 0.25 0.375 0.33333334
		 0.45833334 0.33333334 0.54166669 0.33333334 0.625 0.33333334 0.375 0.41666669 0.45833334
		 0.41666669 0.54166669 0.41666669 0.625 0.41666669 0.375 0.5 0.45833334 0.5 0.54166669
		 0.5 0.625 0.5 0.375 0.58333331 0.45833334 0.58333331 0.54166669 0.58333331 0.625
		 0.58333331 0.375 0.66666663 0.45833334 0.66666663 0.54166669 0.66666663 0.625 0.66666663
		 0.375 0.74999994 0.45833334 0.74999994 0.54166669 0.74999994 0.625 0.74999994 0.375
		 0.83333325 0.45833334 0.83333325 0.54166669 0.83333325 0.625 0.83333325 0.375 0.91666657
		 0.45833334 0.91666657 0.54166669 0.91666657 0.625 0.91666657 0.375 0.99999988 0.45833334
		 0.99999988 0.54166669 0.99999988 0.625 0.99999988 0.875 0 0.79166669 0 0.70833337
		 0 0.875 0.083333336 0.79166669 0.083333336 0.70833337 0.083333336 0.875 0.16666667
		 0.79166669 0.16666667 0.70833337 0.16666667 0.875 0.25 0.79166669 0.25 0.70833337
		 0.25 0.125 0 0.20833334 0 0.29166669 0 0.125 0.083333336 0.20833334 0.083333336 0.29166669
		 0.083333336 0.125 0.16666667 0.20833334 0.16666667 0.29166669 0.16666667 0.125 0.25
		 0.20833334 0.25 0.29166669 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt";
	setAttr ".pt[8]" -type "float3" -0.33690453 0 0.12009547 ;
	setAttr ".pt[9]" -type "float3" -0.11056311 0 0.12009547 ;
	setAttr ".pt[10]" -type "float3" 0.11577852 0 0.12009547 ;
	setAttr ".pt[11]" -type "float3" 0.34211993 0 0.12009547 ;
	setAttr ".pt[12]" -type "float3" -0.33690453 0 0.12009547 ;
	setAttr ".pt[13]" -type "float3" -0.11056311 0 0.12009547 ;
	setAttr ".pt[14]" -type "float3" 0.11577852 0 0.12009547 ;
	setAttr ".pt[15]" -type "float3" 0.34211993 0 0.12009547 ;
	setAttr ".pt[16]" -type "float3" -0.5759303 0 0.050316975 ;
	setAttr ".pt[17]" -type "float3" -0.32700139 0 0.086000808 ;
	setAttr ".pt[18]" -type "float3" 0.33221689 0 0.086000808 ;
	setAttr ".pt[19]" -type "float3" 0.58114582 0 0.050316975 ;
	setAttr ".pt[20]" -type "float3" -0.5759303 0 -0.050316978 ;
	setAttr ".pt[21]" -type "float3" -0.32700139 0 -0.0860008 ;
	setAttr ".pt[22]" -type "float3" 0.33221689 0 -0.0860008 ;
	setAttr ".pt[23]" -type "float3" 0.58114582 0 -0.050316978 ;
	setAttr ".pt[24]" -type "float3" -0.33690453 0 -0.12009547 ;
	setAttr ".pt[25]" -type "float3" -0.11056311 0 -0.12009547 ;
	setAttr ".pt[26]" -type "float3" 0.11577852 0 -0.12009547 ;
	setAttr ".pt[27]" -type "float3" 0.34211993 0 -0.12009547 ;
	setAttr ".pt[28]" -type "float3" -0.33690453 0 -0.12009547 ;
	setAttr ".pt[29]" -type "float3" -0.11056311 0 -0.12009547 ;
	setAttr ".pt[30]" -type "float3" 0.11577852 0 -0.12009547 ;
	setAttr ".pt[31]" -type "float3" 0.34211993 0 -0.12009547 ;
	setAttr ".pt[50]" -type "float3" 0.68484926 0 -0.050316975 ;
	setAttr ".pt[51]" -type "float3" 0.68484926 0 0.050316978 ;
	setAttr ".pt[54]" -type "float3" -0.67640811 0 -0.050316975 ;
	setAttr ".pt[55]" -type "float3" -0.67640811 0 0.050316978 ;
	setAttr -s 56 ".vt[0:55]"  -0.17892608 -1.17758012 0.138897 -0.059642017 -1.17758012 0.138897
		 0.059642032 -1.17758012 0.138897 0.17892608 -1.17758012 0.138897 -0.27479452 -0.55865681 0.20308588
		 -0.09159822 -0.55865681 0.20308588 0.091598228 -0.55865681 0.20308588 0.27479452 -0.55865681 0.20308588
		 -0.27479452 0.55865681 0.20308588 -0.09159822 0.55865681 0.20308588 0.091598228 0.55865681 0.20308588
		 0.27479452 0.55865681 0.20308588 -0.27479452 1.67597044 0.20308588 -0.09159822 1.67597044 0.20308588
		 0.091598228 1.67597044 0.20308588 0.27479452 1.67597044 0.20308588 -0.46825728 2.068053722 0.085087918
		 -0.26677912 2.44487 0.14543055 0.26677915 2.44487 0.14543055 0.46825728 2.068053722 0.085087918
		 -0.46825728 2.068053722 -0.085087933 -0.26677912 2.44487 -0.14543058 0.26677915 2.44487 -0.14543058
		 0.46825728 2.068053722 -0.085087933 -0.27479452 1.67597044 -0.20308588 -0.09159822 1.67597044 -0.20308588
		 0.091598228 1.67597044 -0.20308588 0.27479452 1.67597044 -0.20308588 -0.27479452 0.55865681 -0.20308588
		 -0.09159822 0.55865681 -0.20308588 0.091598228 0.55865681 -0.20308588 0.27479452 0.55865681 -0.20308588
		 -0.27479452 -0.55865681 -0.20308588 -0.09159822 -0.55865681 -0.20308588 0.091598228 -0.55865681 -0.20308588
		 0.27479452 -0.55865681 -0.20308588 -0.17892608 -1.17758012 -0.138897 -0.059642017 -1.17758012 -0.138897
		 0.059642032 -1.17758012 -0.138897 0.17892608 -1.17758012 -0.138897 -0.30489498 -1.215819 -0.058194399
		 -0.054840393 -1.46641278 -0.033573374 0.054840423 -1.46641278 -0.033573374 0.30489498 -1.215819 -0.058194399
		 -0.30489498 -1.215819 0.058194406 -0.054840393 -1.46641278 0.033573397 0.054840423 -1.46641278 0.033573397
		 0.30489498 -1.215819 0.058194406 0.46825728 -0.74070179 -0.085087918 0.46825728 -0.74070179 0.085087933
		 0.55219281 1.34544289 -0.085087918 0.55219281 1.34544289 0.085087933 -0.46825728 -0.74070179 -0.085087918
		 -0.46825728 -0.74070179 0.085087933 -0.54958189 1.34399521 -0.085087918 -0.54958189 1.34399521 0.085087933;
	setAttr -s 162 ".ed[0:161]"  0 1 0 1 4 0 4 0 0 1 5 0 5 4 0 1 2 0 2 5 0
		 2 6 0 6 5 0 2 3 0 3 6 0 3 7 0 7 6 0 5 8 0 8 4 0 5 9 0 9 8 0 6 9 0 6 10 0 10 9 0 7 10 0
		 7 11 0 11 10 0 9 12 0 12 8 0 9 13 0 13 12 0 10 13 0 10 14 0 14 13 0 11 14 0 11 15 0
		 15 14 0 13 17 0 17 12 0 17 16 0 16 12 0 14 17 0 14 18 0 18 17 0 15 18 0 15 19 0 19 18 0
		 17 20 0 20 16 0 17 21 0 21 20 0 18 21 0 18 22 0 22 21 0 19 22 0 19 23 0 23 22 0 21 24 0
		 24 20 0 21 25 0 25 24 0 22 25 0 22 26 0 26 25 0 23 27 0 27 22 0 27 26 0 25 28 0 28 24 0
		 25 29 0 29 28 0 26 29 0 26 30 0 30 29 0 27 30 0 27 31 0 31 30 0 29 32 0 32 28 0 29 33 0
		 33 32 0 30 33 0 30 34 0 34 33 0 31 34 0 31 35 0 35 34 0 33 36 0 36 32 0 33 37 0 37 36 0
		 34 37 0 34 38 0 38 37 0 35 38 0 35 39 0 39 38 0 37 41 0 41 36 0 41 40 0 40 36 0 38 41 0
		 38 42 0 42 41 0 39 42 0 39 43 0 43 42 0 41 44 0 44 40 0 41 45 0 45 44 0 42 45 0 42 46 0
		 46 45 0 43 46 0 43 47 0 47 46 0 45 0 0 0 44 0 45 1 0 46 1 0 46 2 0 47 3 0 3 46 0
		 39 48 0 48 43 0 35 48 0 43 49 0 49 47 0 48 49 0 49 3 0 49 7 0 35 50 0 50 48 0 31 50 0
		 48 51 0 51 49 0 50 51 0 51 7 0 51 11 0 27 50 0 23 50 0 50 19 0 19 51 0 51 15 0 40 52 0
		 52 36 0 52 32 0 44 52 0 44 53 0 53 52 0 0 53 0 4 53 0 52 54 0 54 32 0 54 28 0 53 54 0
		 53 55 0 55 54 0 4 55 0 8 55 0 54 24 0 54 20 0 55 20 0 55 16 0 12 55 0;
	setAttr -s 324 ".n";
	setAttr ".n[0:165]" -type "float3"  0 -0.10315726 0.99466509 0 -0.10315727
		 0.99466503 0 -0.10315725 0.99466503 0 -0.1031573 0.99466515 0 -0.10315729 0.99466509
		 0 -0.10315728 0.99466503 0 -0.10315728 0.99466509 0 -0.10315728 0.99466509 0 -0.10315729
		 0.99466509 0 -0.10315727 0.99466503 0 -0.10315727 0.99466509 0 -0.10315728 0.99466509
		 0 -0.10315728 0.99466503 0 -0.1031573 0.99466509 0 -0.10315729 0.99466497 0 -0.10315724
		 0.99466497 0 -0.10315726 0.99466509 0 -0.10315727 0.99466509 0 0 1 0 0 1 0 0 1 0
		 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1
		 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0.074774317 0.99720049 0 0.07477431 0.99720049
		 0 0.07477431 0.99720049 -0.40813699 0.072493099 0.91003788 -0.40813699 0.072493099
		 0.91003788 -0.40813699 0.072493099 0.91003793 0 0.07477437 0.99720055 0 0.074774362
		 0.99720049 0 0.074774362 0.99720049 0 0.074774332 0.99720049 0 0.074774325 0.99720043
		 0 0.074774332 0.99720043 0 0.074774288 0.99720049 0 0.074774288 0.99720049 0 0.074774295
		 0.99720049 0.40813708 0.072493099 0.91003776 0.40813705 0.072493106 0.91003788 0.40813714
		 0.072493114 0.91003782 -0.88185734 0.47151637 0 -0.88185734 0.47151628 0 -0.88185734
		 0.47151631 0 -0.8818574 0.47151622 0 -0.88185745 0.47151619 0 -0.8818574 0.47151619
		 0 0 0.99999994 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0.8818574 0.47151619 0 0.8818574 0.47151616
		 0 0.88185745 0.47151619 0 0.8818574 0.47151625 0 0.8818574 0.47151619 0 0.88185745
		 0.47151622 0 -0.40813699 0.072493106 -0.91003793 -0.40813699 0.072493106 -0.91003788
		 -0.40813696 0.072493099 -0.91003788 0 0.074774265 -0.99720049 0 0.074774273 -0.99720049
		 0 0.074774273 -0.99720049 0 0.07477428 -0.99720043 0 0.074774288 -0.99720049 0 0.07477428
		 -0.99720043 0 0.074774295 -0.99720043 0 0.074774303 -0.99720049 0 0.074774303 -0.99720049
		 0.40813708 0.072493084 -0.91003782 0.40813708 0.072493091 -0.91003788 0.40813702
		 0.072493076 -0.91003776 0 0.074774243 -0.99720049 0 0.074774243 -0.99720049 0 0.074774243
		 -0.99720049 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0
		 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0
		 0 -1 0 0 -1 0 0 -1 0 -0.10315728 -0.99466509 0 -0.10315727 -0.99466497 0 -0.10315727
		 -0.99466509 0 -0.10315727 -0.99466503 0 -0.10315728 -0.99466509 0 -0.10315727 -0.99466503
		 0 -0.10315729 -0.99466509 0 -0.10315728 -0.99466509 0 -0.10315729 -0.99466503 0 -0.10315727
		 -0.99466515 0 -0.10315727 -0.99466503 0 -0.10315725 -0.99466497 0 -0.10315727 -0.99466503
		 0 -0.10315729 -0.99466515 0 -0.10315726 -0.99466503 0 -0.10315727 -0.99466503 0 -0.10315727
		 -0.99466509 0 -0.10315726 -0.99466509 0 -0.34258637 -0.93948632 0 -0.34258637 -0.93948627
		 0 -0.34258637 -0.93948632 -0.37775981 -0.45611402 -0.80576521;
	setAttr ".n[166:323]" -type "float3"  -0.37775981 -0.45611399 -0.80576521 -0.37775984
		 -0.45611402 -0.80576521 0 -0.3425864 -0.93948627 0 -0.34258637 -0.93948632 0 -0.34258634
		 -0.93948627 0 -0.34258613 -0.93948644 0 -0.3425861 -0.93948644 0 -0.34258613 -0.93948638
		 0 -0.34258616 -0.93948632 0 -0.34258619 -0.93948638 0 -0.34258619 -0.9394865 0.37775978
		 -0.45611399 -0.80576521 0.37775981 -0.45611402 -0.80576521 0.37775978 -0.45611399
		 -0.80576521 -0.70786792 -0.7063449 0 -0.70786792 -0.70634484 0 -0.70786792 -0.70634478
		 0 -0.70786786 -0.7063449 0 -0.70786786 -0.7063449 0 -0.7078678 -0.70634496 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0.70786786 -0.70634484 0 0.70786792 -0.7063449
		 0 0.70786786 -0.70634484 0 0.70786792 -0.70634472 0 0.70786798 -0.70634478 0 0.70786804
		 -0.70634478 0 -0.37775975 -0.45611393 0.80576515 -0.37775975 -0.45611393 0.80576521
		 -0.37775975 -0.45611396 0.80576527 0 -0.34258634 0.93948638 0 -0.34258631 0.93948632
		 0 -0.34258628 0.93948638 0 -0.34258613 0.9394865 0 -0.3425861 0.93948644 0 -0.34258616
		 0.93948656 0 -0.34258631 0.93948638 0 -0.34258625 0.93948632 0 -0.34258628 0.93948638
		 0.37775975 -0.45611387 0.80576527 0.37775978 -0.4561139 0.80576527 0.37775975 -0.45611393
		 0.80576533 0 -0.34258619 0.9394865 0 -0.34258613 0.93948638 0 -0.34258616 0.93948644
		 0.4803015 -0.21330187 -0.85077184 0.48030153 -0.2133019 -0.8507719 0.48030147 -0.21330187
		 -0.85077184 0.40321228 -0.15597324 -0.90171623 0.40321231 -0.15597326 -0.90171629
		 0.40321222 -0.15597324 -0.90171629 0.94566172 -0.32515219 0 0.94566172 -0.32515219
		 0 0.94566166 -0.32515216 0 0.9456616 -0.32515249 0 0.94566166 -0.32515252 0 0.9456616
		 -0.32515249 0 0.48030144 -0.21330182 0.85077184 0.48030147 -0.21330187 0.85077196
		 0.48030144 -0.21330185 0.8507719 0.40321222 -0.15597326 0.90171629 0.40321219 -0.15597323
		 0.90171623 0.40321219 -0.15597324 0.90171629 0.50655699 -0.020381209 -0.8619656 0.50655699
		 -0.020381207 -0.86196554 0.50655693 -0.020381209 -0.86196566 0.39143193 0 -0.92020702
		 0.3914319 0 -0.92020708 0.39143196 0 -0.92020714 0.99919152 -0.040202249 0 0.99919158
		 -0.040202249 0 0.99919152 -0.040202245 0 0.99919158 -0.040202208 0 0.99919152 -0.040202204
		 0 0.99919152 -0.040202204 0 0.50655699 -0.020381192 0.8619656 0.50655693 -0.020381192
		 0.86196566 0.50655699 -0.020381192 0.8619656 0.39143181 0 0.92020708 0.39143184 0
		 0.92020708 0.39143181 0 0.92020714 0.39143193 0 -0.92020702 0.39143193 0 -0.92020708
		 0.39143199 0 -0.92020708 0.44210717 0.051353365 -0.89549088 0.44210723 0.051353373
		 -0.89549094 0.44210726 0.051353373 -0.89549094 0.99332142 0.11538009 0 0.99332148
		 0.1153801 0 0.99332136 0.11538009 0 0.99332142 0.11538021 0 0.99332136 0.11538021
		 0 0.99332142 0.11538021 0 0.3914319 0 0.92020702 0.39143196 0 0.92020708 0.39143193
		 0 0.92020708 0.44210723 0.05135341 0.89549094 0.44210717 0.051353406 0.89549088 0.44210726
		 0.051353417 0.89549094 -0.48030156 -0.21330193 -0.85077184 -0.48030156 -0.21330188
		 -0.85077184 -0.48030156 -0.21330191 -0.85077184 -0.40321225 -0.15597321 -0.90171617
		 -0.40321228 -0.15597324 -0.90171623 -0.40321225 -0.15597321 -0.90171629 -0.94566172
		 -0.32515222 0 -0.94566172 -0.32515225 0 -0.94566166 -0.32515222 0 -0.9456616 -0.32515252
		 0 -0.9456616 -0.32515252 0 -0.94566154 -0.32515249 0 -0.48030147 -0.21330185 0.85077196
		 -0.48030144 -0.21330187 0.85077196 -0.48030138 -0.21330187 0.85077196 -0.40321222
		 -0.15597323 0.90171623 -0.40321225 -0.15597326 0.90171629 -0.40321219 -0.15597324
		 0.90171629 -0.50698125 -0.019777499 -0.8617301 -0.50698125 -0.019777497 -0.8617301
		 -0.50698125 -0.019777499 -0.86173016 -0.39457452 0 -0.91886395 -0.39457452 0 -0.91886389
		 -0.39457449 0 -0.91886395 -0.99923998 -0.038980629 0 -0.99923998 -0.038980629 0 -0.99923992
		 -0.038980626 0 -0.99923998 -0.038980629 0 -0.99923992 -0.038980626 0 -0.99923998
		 -0.038980629 0 -0.50698125 -0.019777484 0.8617301 -0.50698125 -0.019777484 0.86173016
		 -0.50698125 -0.019777482 0.8617301 -0.39457437 0 0.91886401 -0.39457437 0 0.91886401
		 -0.39457437 0 0.91886407 -0.39457452 0 -0.91886401 -0.39457449 0 -0.91886401 -0.39457449
		 0 -0.91886395 -0.44438788 0.049912646 -0.89444298 -0.44438785 0.049912646 -0.89444286
		 -0.44438788 0.049912646 -0.89444292 -0.99375147 0.1116159 0 -0.99375135 0.11161589
		 0 -0.99375141 0.1116159 0 -0.99375135 0.11161589 0 -0.99375141 0.1116159 0 -0.99375147
		 0.1116159 0 -0.39457434 0 0.91886389 -0.3945744 0 0.91886401 -0.39457437 0 0.91886401
		 -0.44438794 0.049912687 0.89444292 -0.44438794 0.049912687 0.89444298 -0.44438794
		 0.049912687 0.89444292;
	setAttr -s 108 -ch 324 ".fc[0:107]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 4
		f 3 -2 3 4
		mu 0 3 4 1 5
		f 3 5 6 -4
		mu 0 3 1 2 5
		f 3 -7 7 8
		mu 0 3 5 2 6
		f 3 9 10 -8
		mu 0 3 2 3 6
		f 3 -11 11 12
		mu 0 3 6 3 7
		f 3 -5 13 14
		mu 0 3 4 5 8
		f 3 -14 15 16
		mu 0 3 8 5 9
		f 3 -9 17 -16
		mu 0 3 5 6 9
		f 3 -18 18 19
		mu 0 3 9 6 10
		f 3 -13 20 -19
		mu 0 3 6 7 10
		f 3 -21 21 22
		mu 0 3 10 7 11
		f 3 -17 23 24
		mu 0 3 8 9 12
		f 3 -24 25 26
		mu 0 3 12 9 13
		f 3 -20 27 -26
		mu 0 3 9 10 13
		f 3 -28 28 29
		mu 0 3 13 10 14
		f 3 -23 30 -29
		mu 0 3 10 11 14
		f 3 -31 31 32
		mu 0 3 14 11 15
		f 3 33 34 -27
		mu 0 3 13 17 12
		f 3 -35 35 36
		mu 0 3 12 17 16
		f 3 -30 37 -34
		mu 0 3 13 14 17
		f 3 -38 38 39
		mu 0 3 17 14 18
		f 3 -33 40 -39
		mu 0 3 14 15 18
		f 3 -41 41 42
		mu 0 3 18 15 19
		f 3 -36 43 44
		mu 0 3 16 17 20
		f 3 -44 45 46
		mu 0 3 20 17 21
		f 3 -40 47 -46
		mu 0 3 17 18 21
		f 3 -48 48 49
		mu 0 3 21 18 22
		f 3 -43 50 -49
		mu 0 3 18 19 22
		f 3 -51 51 52
		mu 0 3 22 19 23
		f 3 -47 53 54
		mu 0 3 20 21 24
		f 3 -54 55 56
		mu 0 3 24 21 25
		f 3 -50 57 -56
		mu 0 3 21 22 25
		f 3 -58 58 59
		mu 0 3 25 22 26
		f 3 60 61 -53
		mu 0 3 23 27 22
		f 3 -62 62 -59
		mu 0 3 22 27 26
		f 3 -57 63 64
		mu 0 3 24 25 28
		f 3 -64 65 66
		mu 0 3 28 25 29
		f 3 -60 67 -66
		mu 0 3 25 26 29
		f 3 -68 68 69
		mu 0 3 29 26 30
		f 3 -63 70 -69
		mu 0 3 26 27 30
		f 3 -71 71 72
		mu 0 3 30 27 31
		f 3 -67 73 74
		mu 0 3 28 29 32
		f 3 -74 75 76
		mu 0 3 32 29 33
		f 3 -70 77 -76
		mu 0 3 29 30 33
		f 3 -78 78 79
		mu 0 3 33 30 34
		f 3 -73 80 -79
		mu 0 3 30 31 34
		f 3 -81 81 82
		mu 0 3 34 31 35
		f 3 -77 83 84
		mu 0 3 32 33 36
		f 3 -84 85 86
		mu 0 3 36 33 37
		f 3 -80 87 -86
		mu 0 3 33 34 37
		f 3 -88 88 89
		mu 0 3 37 34 38
		f 3 -83 90 -89
		mu 0 3 34 35 38
		f 3 -91 91 92
		mu 0 3 38 35 39
		f 3 93 94 -87
		mu 0 3 37 41 36
		f 3 -95 95 96
		mu 0 3 36 41 40
		f 3 -90 97 -94
		mu 0 3 37 38 41
		f 3 -98 98 99
		mu 0 3 41 38 42
		f 3 -93 100 -99
		mu 0 3 38 39 42
		f 3 -101 101 102
		mu 0 3 42 39 43
		f 3 -96 103 104
		mu 0 3 40 41 44
		f 3 -104 105 106
		mu 0 3 44 41 45
		f 3 -100 107 -106
		mu 0 3 41 42 45
		f 3 -108 108 109
		mu 0 3 45 42 46
		f 3 -103 110 -109
		mu 0 3 42 43 46
		f 3 -111 111 112
		mu 0 3 46 43 47
		f 3 -107 113 114
		mu 0 3 44 45 48
		f 3 -114 115 -1
		mu 0 3 48 45 49
		f 3 -110 116 -116
		mu 0 3 45 46 49
		f 3 -117 117 -6
		mu 0 3 49 46 50
		f 3 118 119 -113
		mu 0 3 47 51 46
		f 3 -120 -10 -118
		mu 0 3 46 51 50
		f 3 -102 120 121
		mu 0 3 53 52 56
		f 3 -121 -92 122
		mu 0 3 56 52 55
		f 3 -112 123 124
		mu 0 3 54 53 57
		f 3 -124 -122 125
		mu 0 3 57 53 56
		f 3 -125 126 -119
		mu 0 3 54 57 3
		f 3 -127 127 -12
		mu 0 3 3 57 7
		f 3 -123 128 129
		mu 0 3 56 55 59
		f 3 -129 -82 130
		mu 0 3 59 55 58
		f 3 -126 131 132
		mu 0 3 57 56 60
		f 3 -132 -130 133
		mu 0 3 60 56 59
		f 3 -133 134 -128
		mu 0 3 57 60 7
		f 3 -135 135 -22
		mu 0 3 7 60 11
		f 3 -72 136 -131
		mu 0 3 58 61 59
		f 3 -137 -61 137
		mu 0 3 59 61 62
		f 3 -134 138 139
		mu 0 3 60 59 63
		f 3 -139 -138 -52
		mu 0 3 63 59 62
		f 3 -136 140 -32
		mu 0 3 11 60 15
		f 3 -141 -140 -42
		mu 0 3 15 60 63
		f 3 141 142 -97
		mu 0 3 65 68 64
		f 3 -143 143 -85
		mu 0 3 64 68 67
		f 3 -105 144 -142
		mu 0 3 65 66 68
		f 3 -145 145 146
		mu 0 3 68 66 69
		f 3 -115 147 -146
		mu 0 3 66 0 69
		f 3 -148 -3 148
		mu 0 3 69 0 4
		f 3 149 150 -144
		mu 0 3 68 71 67
		f 3 -151 151 -75
		mu 0 3 67 71 70
		f 3 -147 152 -150
		mu 0 3 68 69 71
		f 3 -153 153 154
		mu 0 3 71 69 72
		f 3 -149 155 -154
		mu 0 3 69 4 72
		f 3 -156 -15 156
		mu 0 3 72 4 8
		f 3 -152 157 -65
		mu 0 3 70 71 73
		f 3 -158 158 -55
		mu 0 3 73 71 74
		f 3 -155 159 -159
		mu 0 3 71 72 74
		f 3 -160 160 -45
		mu 0 3 74 72 75
		f 3 -25 161 -157
		mu 0 3 8 12 72
		f 3 -162 -37 -161
		mu 0 3 72 12 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Crystal3";
	rename -uid "4C057722-504A-3843-2DBD-8BABE61549A3";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".t" -type "double3" 0 16.344432103441783 -28.865140699275813 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 112.03188147075809 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 2.1898993621495286 2.1048148387440162 2.1898993621495286 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.21285721352625275 -1.3557578591711104 -9.1281919479370117 ;
	setAttr ".sp" -type "double3" -0.21285721352625275 -1.3557578591711104 -9.1281919479370117 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "Crystal3Shape" -p "Crystal3";
	rename -uid "5373B8A1-3741-5BE6-BAE6-788BD887D522";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "Crystal3ShapeOrig" -p "Crystal3";
	rename -uid "35B9811C-4D40-76C5-399C-4F952FDC6012";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.099106349 0.25
		 0.22160855 0.25 0.25946382 0.36803401 0.16035745 0.440983 0.061251096 0.36803401
		 0.037855253 0.440983 0.1982127 0.559017 0.099106349 0.63196599 0 0.559017 0.32071489
		 0.559017 0.35857016 0.67705101 0.25946379 0.75 0.16035745 0.67705101 0.35857016 0.440983
		 0.48107234 0.440983 0.51892757 0.559017 0.41982123 0.63196599 0.29731905 0.25 0.41982123
		 0.25 0.4576765 0.36803398 0.74053615 0.25 0.83964252 0.32294902 0.80178726 0.440983
		 0.67928505 0.440983 0.64142984 0.32294902 0.58017874 0.36803401 0.64142984 0.559017
		 0.74053615 0.63196599 0.70268089 0.75 0.58017874 0.75 0.54232347 0.63196599 0.83964252
		 0.559017 0.9387489 0.63196599 0.90089363 0.75 0.77839142 0.75 0.90089363 0.36803398
		 1 0.440983 0.96214473 0.559017 0.1982127 0.559017 0.32071489 0.559017 0.35857016
		 0.67705101 0.25946379 0.75 0.16035745 0.67705101;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".vt[0:24]"  1.13499761 -2.081776619 -9.12819195 1.83347845 0.47309309 -9.12819195
		 0.56692851 0.47124708 -10.87145042 1.48239219 1.17271435 -10.20558548 0.35222661 -2.082917452 -10.20558548
		 0.56692851 0.47124708 -7.38493347 0.35222661 -2.082917452 -8.050798416 1.48239219 1.17271435 -8.050798416
		 -1.83347845 1.16788173 -9.12819195 -1.13499773 2.30173898 -9.12819195 -0.56692851 1.16972768 -7.38493347
		 -1.48239207 0.46826053 -8.050798416 -0.35222673 2.30287981 -8.050798416 -0.56692851 1.16972768 -10.87145042
		 -0.35222673 2.30287981 -10.20558548 -1.48239207 0.46826053 -10.20558548 -0.91432303 -2.08476305 -8.462327
		 0.91432297 2.30472565 -8.462327 0.91432297 2.30472565 -9.79405689 -0.91432303 -2.08476305 -9.79405689
		 0.12966168 -5.86937571 -9.056235313 0.18194103 -5.86929989 -9.12819195 0.045072079 -5.86949873 -9.083720207
		 0.045072079 -5.86949873 -9.17266369 0.12966168 -5.86937571 -9.20014858;
	setAttr -s 69 ".ed[0:68]"  1 0 0 0 3 0 3 1 0 0 4 0 4 3 0 4 2 0 2 3 0
		 1 7 0 7 0 0 7 6 0 6 0 0 7 5 0 5 6 0 21 20 0 20 24 0 24 21 0 20 22 0 22 24 0 22 23 0
		 23 24 0 5 10 0 10 6 0 10 16 0 16 6 0 10 11 0 11 16 0 11 8 0 8 16 0 8 19 0 19 16 0
		 8 15 0 15 19 0 15 13 0 13 19 0 13 4 0 4 19 0 13 2 0 13 14 0 14 2 0 14 18 0 18 2 0
		 18 3 0 18 1 0 18 17 0 17 1 0 17 7 0 17 5 0 17 12 0 12 5 0 12 10 0 11 9 0 9 8 0 11 12 0
		 12 9 0 12 14 0 14 9 0 17 14 0 15 14 0 15 9 0 6 20 0 20 0 0 21 0 0 16 22 0 22 6 0
		 19 22 0 19 23 0 4 23 0 4 24 0 0 24 0;
	setAttr -s 138 ".n[0:137]" -type "float3"  0.86771303 -0.23722576 -0.43680444
		 0.86771303 -0.23722576 -0.43680441 0.86771297 -0.23722582 -0.43680441 0.77901006
		 -0.27042672 -0.56569678 0.77901006 -0.27042675 -0.56569666 0.77901006 -0.27042672
		 -0.56569672 0.68376458 -0.23736326 -0.69001794 0.68376458 -0.23736326 -0.69001794
		 0.68376458 -0.2373632 -0.69001788 0.86771303 -0.23722576 0.43680444 0.86771297 -0.23722582
		 0.43680441 0.86771303 -0.23722576 0.43680441 0.77901006 -0.27042672 0.56569678 0.77901006
		 -0.27042678 0.56569672 0.77901006 -0.27042678 0.56569666 0.68376458 -0.2373632 0.69001788
		 0.68376458 -0.23736326 0.69001794 0.68376458 -0.23736326 0.69001794 0.0014529735
		 -0.99999899 0 0.0014529735 -0.99999899 0 0.0014529735 -0.99999899 0 0.0014524175
		 -0.99999905 0 0.0014523619 -0.99999905 0 0.0014524453 -0.99999905 0 0.0014571726
		 -0.99999905 0 0.0014571726 -0.99999905 0 0.0014571445 -0.99999899 0 -0.14660294 -0.23798342
		 0.96014142 -0.14660296 -0.23798341 0.96014142 -0.14660294 -0.23798341 0.96014142
		 -0.2970652 -0.27136064 0.91548663 -0.2970652 -0.27136058 0.91548663 -0.2970652 -0.27136064
		 0.91548663 -0.44527391 -0.23820682 0.86312729 -0.44527391 -0.23820685 0.86312717
		 -0.44527397 -0.23820682 0.86312717 -0.95828921 -0.23858982 0.15734257 -0.95828921
		 -0.23858981 0.15734257 -0.95828921 -0.23858988 0.15734257 -0.96231478 -0.27193773
		 0 -0.96231478 -0.27193782 0 -0.96231478 -0.27193773 0 -0.95828921 -0.23858981 -0.15734257
		 -0.95828921 -0.23858982 -0.15734257 -0.95828921 -0.23858988 -0.15734257 -0.44527397
		 -0.23820676 -0.86312723 -0.44527397 -0.23820676 -0.86312729 -0.44527397 -0.23820679
		 -0.86312717 -0.2970652 -0.27136061 -0.91548657 -0.2970652 -0.27136061 -0.91548657
		 -0.29706523 -0.27136064 -0.91548657 -0.14660294 -0.23798341 -0.96014142 -0.14660296
		 -0.23798341 -0.96014142 -0.14660294 -0.23798342 -0.96014142 0.27574104 0.44761577
		 -0.85065097 0.27574104 0.44761577 -0.85065091 0.27574101 0.44761574 -0.85065091 0.2757417
		 0.44761598 -0.85065067 0.27574167 0.44761592 -0.85065067 0.2757417 0.44761598 -0.85065061
		 0.27574077 0.44761625 -0.85065079 0.27574077 0.44761625 -0.85065079 0.27574077 0.44761625
		 -0.85065079 0.89377451 0.4485167 -1.2305803e-007 0.89377445 0.44851664 -1.2305802e-007
		 0.89377445 0.44851664 -1.2305802e-007 0.89377451 0.4485167 0 0.89377451 0.4485167
		 0 0.89377445 0.44851679 0 0.89377445 0.44851664 1.2305802e-007 0.89377445 0.44851664
		 1.2305802e-007 0.89377451 0.4485167 1.2305803e-007 0.27574077 0.44761625 0.85065079
		 0.27574077 0.44761625 0.85065079 0.27574077 0.44761625 0.85065079 0.27574164 0.44761589
		 0.85065061 0.27574167 0.44761592 0.85065061 0.27574167 0.44761592 0.85065061 0.27574104
		 0.44761577 0.85065091 0.27574104 0.44761577 0.85065097 0.27574101 0.44761574 0.85065091
		 -0.72425795 0.44615862 0.52573091 -0.72425789 0.44615859 0.52573085 -0.72425795 0.44615862
		 0.52573097 -0.72425795 0.44615862 0.52573079 -0.72425795 0.44615862 0.52573085 -0.72425789
		 0.44615859 0.52573085 -0.72425783 0.44615853 0.52573121 -0.72425771 0.44615847 0.52573121
		 -0.72425777 0.4461585 0.52573127 -0.0014575062 0.99999905 0 -0.001457506 0.99999899
		 0 -0.001457506 0.99999899 0 -0.0014573113 0.99999899 0 -0.0014573672 0.99999905 0
		 -0.0014573672 0.99999905 0 -0.001457367 0.99999899 0 -0.0014573113 0.99999899 0 -0.001457367
		 0.99999899 0 -0.72425777 0.4461585 -0.52573127 -0.72425777 0.4461585 -0.52573127
		 -0.72425771 0.44615847 -0.52573121 -0.72425789 0.44615859 -0.52573079 -0.72425789
		 0.44615859 -0.52573079 -0.72425789 0.44615859 -0.52573079 -0.72425795 0.44615862
		 -0.52573097 -0.72425789 0.44615859 -0.52573085 -0.72425795 0.44615862 -0.52573091
		 0.79285383 -0.19950637 0.57582974 0.79285389 -0.1995064 0.5758298 0.79285383 -0.19950639
		 0.57582974 0.79285359 -0.19950609 0.57583022 0.79285365 -0.19950613 0.57583022 0.79285359
		 -0.19950607 0.57583022 -0.30056104 -0.22823247 0.92605239 -0.30056107 -0.22823249
		 0.92605233 -0.30056104 -0.22823243 0.92605233 -0.30055976 -0.22823085 0.92605323
		 -0.30055976 -0.22823082 0.92605323 -0.30055976 -0.22823085 0.92605323 -0.9693411
		 -0.24571888 0 -0.9693411 -0.24571888 0 -0.9693411 -0.24571888 0 -0.96934098 -0.24571975
		 0 -0.96934098 -0.24571975 0 -0.96934098 -0.24571975 0 -0.30056107 -0.22823246 -0.92605227
		 -0.30056107 -0.22823249 -0.92605233 -0.3005611 -0.22823252 -0.92605239 -0.30055928
		 -0.22823092 -0.92605335 -0.30055928 -0.22823089 -0.92605335 -0.30055928 -0.22823092
		 -0.92605335 0.79285389 -0.19950643 -0.57582968 0.79285389 -0.19950645 -0.57582974
		 0.79285389 -0.19950645 -0.57582974 0.79285377 -0.19950616 -0.57582986 0.79285377
		 -0.19950616 -0.57582986 0.79285383 -0.19950616 -0.57582986;
	setAttr -s 46 -ch 138 ".fc[0:45]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 3 6 5
		f 3 3 4 -2
		mu 0 3 6 7 5
		f 3 5 6 -5
		mu 0 3 7 8 5
		f 3 7 8 -1
		mu 0 3 3 2 6
		f 3 -9 9 10
		mu 0 3 6 2 9
		f 3 11 12 -10
		mu 0 3 2 13 9
		f 3 13 14 15
		mu 0 3 38 39 42
		f 3 16 17 -15
		mu 0 3 39 40 42
		f 3 18 19 -18
		mu 0 3 40 41 42
		f 3 20 21 -13
		mu 0 3 13 14 9
		f 3 -22 22 23
		mu 0 3 9 14 16
		f 3 24 25 -23
		mu 0 3 14 15 16
		f 3 26 27 -26
		mu 0 3 30 26 29
		f 3 -28 28 29
		mu 0 3 29 26 28
		f 3 30 31 -29
		mu 0 3 26 27 28
		f 3 32 33 -32
		mu 0 3 27 31 34
		f 3 -34 34 35
		mu 0 3 34 31 33
		f 3 -35 36 -6
		mu 0 3 33 31 32
		f 3 37 38 -37
		mu 0 3 31 22 37
		f 3 39 40 -39
		mu 0 3 22 35 37
		f 3 -41 41 -7
		mu 0 3 37 35 36
		f 3 -42 42 -3
		mu 0 3 4 0 3
		f 3 43 44 -43
		mu 0 3 0 1 3
		f 3 -45 45 -8
		mu 0 3 3 1 2
		f 3 -46 46 -12
		mu 0 3 2 17 13
		f 3 47 48 -47
		mu 0 3 17 18 13
		f 3 49 -21 -49
		mu 0 3 18 19 13
		f 3 -27 50 51
		mu 0 3 26 15 23
		f 3 -51 52 53
		mu 0 3 23 15 25
		f 3 -25 -50 -53
		mu 0 3 15 14 25
		f 3 -54 54 55
		mu 0 3 23 24 22
		f 3 -48 56 -55
		mu 0 3 24 20 22
		f 3 -44 -40 -57
		mu 0 3 20 21 22
		f 3 -33 57 -38
		mu 0 3 31 27 22
		f 3 -58 58 -56
		mu 0 3 22 27 23
		f 3 -59 -31 -52
		mu 0 3 23 27 26
		f 3 59 60 -11
		mu 0 3 9 39 6
		f 3 -61 -14 61
		mu 0 3 6 39 38
		f 3 62 63 -24
		mu 0 3 10 40 9
		f 3 -64 -17 -60
		mu 0 3 9 40 39
		f 3 -30 64 -63
		mu 0 3 10 11 40
		f 3 -65 65 -19
		mu 0 3 40 11 41
		f 3 -36 66 -66
		mu 0 3 11 12 41
		f 3 -67 67 -20
		mu 0 3 41 12 42
		f 3 -4 68 -68
		mu 0 3 12 6 42
		f 3 -69 -62 -16
		mu 0 3 42 6 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FLoorPlane";
	rename -uid "96952CE8-4CE0-036D-9BE2-248E68695E02";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -44.025233464431913 0 ;
	setAttr ".s" -type "double3" 245.43086199420537 1 245.43086199420537 ;
createNode mesh -n "FLoorPlaneShape" -p "FLoorPlane";
	rename -uid "7EB2A7A6-497D-5688-B1C8-A3AE0FEC98AA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "imagePlane1";
	rename -uid "A0F090A9-45A0-8DAD-E59F-0883B8D2A660";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -2.1963941050841882 2.4404378945380145 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 24.96409064339662 17.330464203153504 1 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "A34713D1-4286-14C5-B145-91B8D6379902";
	setAttr -k off ".v";
	setAttr ".fc" 204;
	setAttr ".imn" -type "string" "C:/Users/wer29/Desktop/gmap377_leathGloves_inc/ReferenceImages/Walk_Ref1.jpg";
	setAttr ".cov" -type "short2" 720 720 ;
	setAttr ".dlc" no;
	setAttr ".w" 7.2;
	setAttr ".h" 7.2;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "imagePlane2";
	rename -uid "D859641C-4243-F971-2FEA-1D8297C3E790";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -2.196 2.44 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 24.964 17.33 1 ;
createNode imagePlane -n "imagePlaneShape2" -p "imagePlane2";
	rename -uid "42DD66EE-4374-B84A-BECA-08ACF3AB2C2D";
	setAttr -k off ".v";
	setAttr ".fc" 204;
	setAttr ".imn" -type "string" "C:/Users/wer29/Desktop/gmap377_leathGloves_inc/ReferenceImages/Walk_Ref2.jpg";
	setAttr ".cov" -type "short2" 720 720 ;
	setAttr ".dlc" no;
	setAttr ".w" 7.2;
	setAttr ".h" 7.2;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "imagePlane3";
	rename -uid "DEC164A6-4B26-0C34-52FC-60A55CB8C0DF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -2.196 2.44 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 24.964 17.33 1 ;
createNode imagePlane -n "imagePlaneShape3" -p "imagePlane3";
	rename -uid "A279509E-4508-0849-CD51-8CB46EA7A554";
	setAttr -k off ".v";
	setAttr ".fc" 204;
	setAttr ".imn" -type "string" "C:/Users/wer29/Desktop/gmap377_leathGloves_inc/ReferenceImages/Walk_Ref3.jpg";
	setAttr ".cov" -type "short2" 720 720 ;
	setAttr ".dlc" no;
	setAttr ".w" 7.2;
	setAttr ".h" 7.2;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "imagePlane4";
	rename -uid "703CCD07-48C5-6CB2-C36D-C182C4C6AFE8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -2.196 2.44 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 24.964 17.33 1 ;
createNode imagePlane -n "imagePlaneShape4" -p "imagePlane4";
	rename -uid "3966ED50-4BE6-E805-9139-4FBB58D2CC0C";
	setAttr -k off ".v";
	setAttr ".fc" 204;
	setAttr ".imn" -type "string" "C:/Users/wer29/Desktop/gmap377_leathGloves_inc/ReferenceImages/Walk_Ref4.jpg";
	setAttr ".cov" -type "short2" 720 720 ;
	setAttr ".dlc" no;
	setAttr ".w" 7.2;
	setAttr ".h" 7.2;
	setAttr ".cs" -type "string" "sRGB";
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	rename -uid "3591DBB3-3746-64B4-8AA3-B8B70D6BDDBC";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	rename -uid "F3F50E04-0D4A-97EB-208A-3F885479887F";
	setAttr ".rvb" 3;
	setAttr ".ivb" no;
createNode mentalrayOptions -s -n "miDefaultOptions";
	rename -uid "3B134236-5D48-56F0-C1A1-FF80F17F7B73";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 81 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "false";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1 1 1";
	setAttr ".stringOptions[47].type" -type "string" "color";
	setAttr ".stringOptions[48].name" -type "string" "environment lighting caustic photons";
	setAttr ".stringOptions[48].value" -type "string" "0";
	setAttr ".stringOptions[48].type" -type "string" "integer";
	setAttr ".stringOptions[49].name" -type "string" "environment lighting globillum photons";
	setAttr ".stringOptions[49].value" -type "string" "0";
	setAttr ".stringOptions[49].type" -type "string" "integer";
	setAttr ".stringOptions[50].name" -type "string" "light importance sampling";
	setAttr ".stringOptions[50].value" -type "string" "all";
	setAttr ".stringOptions[50].type" -type "string" "string";
	setAttr ".stringOptions[51].name" -type "string" "light importance sampling quality";
	setAttr ".stringOptions[51].value" -type "string" "1.0";
	setAttr ".stringOptions[51].type" -type "string" "scalar";
	setAttr ".stringOptions[52].name" -type "string" "light importance sampling samples";
	setAttr ".stringOptions[52].value" -type "string" "4";
	setAttr ".stringOptions[52].type" -type "string" "integer";
	setAttr ".stringOptions[53].name" -type "string" "light importance sampling resolution";
	setAttr ".stringOptions[53].value" -type "string" "1.0";
	setAttr ".stringOptions[53].type" -type "string" "scalar";
	setAttr ".stringOptions[54].name" -type "string" "light importance sampling precomputed";
	setAttr ".stringOptions[54].value" -type "string" "false";
	setAttr ".stringOptions[54].type" -type "string" "boolean";
	setAttr ".stringOptions[55].name" -type "string" "mila quality";
	setAttr ".stringOptions[55].value" -type "string" "1.0";
	setAttr ".stringOptions[55].type" -type "string" "scalar";
	setAttr ".stringOptions[56].name" -type "string" "mila glossy quality";
	setAttr ".stringOptions[56].value" -type "string" "1.0";
	setAttr ".stringOptions[56].type" -type "string" "scalar";
	setAttr ".stringOptions[57].name" -type "string" "mila scatter quality";
	setAttr ".stringOptions[57].value" -type "string" "1.0";
	setAttr ".stringOptions[57].type" -type "string" "scalar";
	setAttr ".stringOptions[58].name" -type "string" "mila scatter scale";
	setAttr ".stringOptions[58].value" -type "string" "1.0";
	setAttr ".stringOptions[58].type" -type "string" "scalar";
	setAttr ".stringOptions[59].name" -type "string" "mila diffuse quality";
	setAttr ".stringOptions[59].value" -type "string" "1.0";
	setAttr ".stringOptions[59].type" -type "string" "scalar";
	setAttr ".stringOptions[60].name" -type "string" "mila diffuse detail";
	setAttr ".stringOptions[60].value" -type "string" "false";
	setAttr ".stringOptions[60].type" -type "string" "boolean";
	setAttr ".stringOptions[61].name" -type "string" "mila diffuse detail distance";
	setAttr ".stringOptions[61].value" -type "string" "10.0";
	setAttr ".stringOptions[61].type" -type "string" "scalar";
	setAttr ".stringOptions[62].name" -type "string" "mila use max distance inside";
	setAttr ".stringOptions[62].value" -type "string" "true";
	setAttr ".stringOptions[62].type" -type "string" "boolean";
	setAttr ".stringOptions[63].name" -type "string" "mila clamp output";
	setAttr ".stringOptions[63].value" -type "string" "false";
	setAttr ".stringOptions[63].type" -type "string" "boolean";
	setAttr ".stringOptions[64].name" -type "string" "mila clamp level";
	setAttr ".stringOptions[64].value" -type "string" "1.0";
	setAttr ".stringOptions[64].type" -type "string" "scalar";
	setAttr ".stringOptions[65].name" -type "string" "gi gpu";
	setAttr ".stringOptions[65].value" -type "string" "off";
	setAttr ".stringOptions[65].type" -type "string" "string";
	setAttr ".stringOptions[66].name" -type "string" "gi gpu rays";
	setAttr ".stringOptions[66].value" -type "string" "34";
	setAttr ".stringOptions[66].type" -type "string" "integer";
	setAttr ".stringOptions[67].name" -type "string" "gi gpu passes";
	setAttr ".stringOptions[67].value" -type "string" "4";
	setAttr ".stringOptions[67].type" -type "string" "integer";
	setAttr ".stringOptions[68].name" -type "string" "gi gpu presample density";
	setAttr ".stringOptions[68].value" -type "string" "1.0";
	setAttr ".stringOptions[68].type" -type "string" "scalar";
	setAttr ".stringOptions[69].name" -type "string" "gi gpu presample depth";
	setAttr ".stringOptions[69].value" -type "string" "2";
	setAttr ".stringOptions[69].type" -type "string" "integer";
	setAttr ".stringOptions[70].name" -type "string" "gi gpu filter";
	setAttr ".stringOptions[70].value" -type "string" "1.0";
	setAttr ".stringOptions[70].type" -type "string" "integer";
	setAttr ".stringOptions[71].name" -type "string" "gi gpu depth";
	setAttr ".stringOptions[71].value" -type "string" "3";
	setAttr ".stringOptions[71].type" -type "string" "integer";
	setAttr ".stringOptions[72].name" -type "string" "gi gpu devices";
	setAttr ".stringOptions[72].value" -type "string" "0";
	setAttr ".stringOptions[72].type" -type "string" "integer";
	setAttr ".stringOptions[73].name" -type "string" "shutter shape function";
	setAttr ".stringOptions[73].value" -type "string" "none";
	setAttr ".stringOptions[73].type" -type "string" "string";
	setAttr ".stringOptions[74].name" -type "string" "shutter full open";
	setAttr ".stringOptions[74].value" -type "string" "0.2";
	setAttr ".stringOptions[74].type" -type "string" "scalar";
	setAttr ".stringOptions[75].name" -type "string" "shutter full close";
	setAttr ".stringOptions[75].value" -type "string" "0.8";
	setAttr ".stringOptions[75].type" -type "string" "scalar";
	setAttr ".stringOptions[76].name" -type "string" "gi";
	setAttr ".stringOptions[76].value" -type "string" "off";
	setAttr ".stringOptions[76].type" -type "string" "boolean";
	setAttr ".stringOptions[77].name" -type "string" "gi rays";
	setAttr ".stringOptions[77].value" -type "string" "100";
	setAttr ".stringOptions[77].type" -type "string" "integer";
	setAttr ".stringOptions[78].name" -type "string" "gi depth";
	setAttr ".stringOptions[78].value" -type "string" "0";
	setAttr ".stringOptions[78].type" -type "string" "integer";
	setAttr ".stringOptions[79].name" -type "string" "gi freeze";
	setAttr ".stringOptions[79].value" -type "string" "off";
	setAttr ".stringOptions[79].type" -type "string" "boolean";
	setAttr ".stringOptions[80].name" -type "string" "gi filter";
	setAttr ".stringOptions[80].value" -type "string" "1.0";
	setAttr ".stringOptions[80].type" -type "string" "scalar";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	rename -uid "24DC4DFD-9B4A-B10E-9340-49991E231A19";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "DD4E35FD-42D9-C26A-E5BD-EDADE39B56D8";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "34502A4E-4556-34F4-AA30-11820B074022";
createNode displayLayer -n "defaultLayer";
	rename -uid "CA86460E-1643-5168-698A-22AFDE549337";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "4B884B35-453D-0816-EB51-C7885CBA4468";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "3BC405EF-3342-4327-0FF4-CCB5C167C6E0";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "B5772FA8-684D-65DB-5187-5A802783CA35";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "6BB6D5A9-F24C-D6F7-2CE1-6BBC723FAF66";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 36.764276844333843 0 0 0 0 36.764276844333843 0 0 0 0 36.764276844333843 0
		 0 11.561456537644371 0 1;
	setAttr ".wt" 0.1641148179769516;
	setAttr ".dr" no;
	setAttr ".re" 9;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "A49C2ECC-E345-3E05-3989-7B8298C11755";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0.39402339 -0.36378834 1.1920929e-007
		 -0.38862589 -0.36399052 1.1920929e-007 0.24163479 -0.39967296 0.042518452 -0.24163479
		 -0.39967296 0.042518452 0.24163479 -0.014172789 1.040283322 -0.24163479 -0.014172789
		 1.040283322 0.39402339 -0.36378855 0.66509336 -0.38862589 -0.36399075 0.66509336;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "F665BBC6-2A44-EE91-1007-A084DFB938A4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[12:13]";
	setAttr ".ix" -type "matrix" 36.764276844333843 0 0 0 0 36.764276844333843 0 0 0 0 36.764276844333843 0
		 0 11.561456537644371 0 1;
	setAttr ".wt" 0.40480291843414307;
	setAttr ".dr" no;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "5CDA9C61-EE4D-8231-9121-9DA986D63D82";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0 0.44011202 -0.16750523 0
		 0.44011202 -0.16750523 0 -0.098532505 -0.13137655 0 -0.098532505 -0.13137655;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "1B7C9DDF-8F40-F85A-8AE8-5FA48229C6A3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[20:21]";
	setAttr ".ix" -type "matrix" 36.764276844333843 0 0 0 0 36.764276844333843 0 0 0 0 36.764276844333843 0
		 0 11.561456537644371 0 1;
	setAttr ".wt" 0.10623869299888611;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "AABB207D-BD43-8A80-12DF-4CA3FB90BF14";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.011096594 -1.1909403 ;
	setAttr ".tk[1]" -type "float3" 0 0.011096594 -1.1909403 ;
	setAttr ".tk[6]" -type "float3" 0 0.12483665 -1.1798445 ;
	setAttr ".tk[7]" -type "float3" 0 0.12483665 -1.1798445 ;
	setAttr ".tk[8]" -type "float3" 0.18703909 -0.0080281608 0 ;
	setAttr ".tk[9]" -type "float3" -0.18703911 -0.0080281608 0 ;
	setAttr ".tk[10]" -type "float3" -0.2883521 0 0 ;
	setAttr ".tk[11]" -type "float3" 0.2883521 0 0 ;
	setAttr ".tk[12]" -type "float3" 0.02987905 0.70006973 -0.23202297 ;
	setAttr ".tk[13]" -type "float3" -0.029879043 0.70006973 -0.23202297 ;
	setAttr ".tk[14]" -type "float3" -0.27775255 0.1191802 -0.2439829 ;
	setAttr ".tk[15]" -type "float3" 0.27775258 0.1191802 -0.2439829 ;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "1441CBC2-DD4F-49B8-A8FC-95A01C0C6E74";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[20:21]" "e[28:29]";
	setAttr ".ix" -type "matrix" 36.764276844333843 0 0 0 0 36.764276844333843 0 0 0 0 36.764276844333843 0
		 0 11.561456537644371 0 1;
	setAttr ".wt" 0.31194350123405457;
	setAttr ".re" 28;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "A75569C2-6540-B0A8-A3B5-329225551BD4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[20:21]" "e[36:37]";
	setAttr ".ix" -type "matrix" 36.764276844333843 0 0 0 0 36.764276844333843 0 0 0 0 36.764276844333843 0
		 0 11.561456537644371 0 1;
	setAttr ".wt" 0.59317982196807861;
	setAttr ".dr" no;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	rename -uid "4FAD4742-9042-9B39-9806-02BFB1CBD647";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[16:23]" -type "float3"  0 0.20217848 0.24261415 0
		 0.20217848 0.24261415 3.8857806e-016 0.17185171 -0.20217842 3.8857806e-016 0.17185171
		 -0.20217842 0 0.23250522 0.067392789 0 0.23250522 0.067392819 0 -0.015431109 -0.31939703
		 0 -0.015431109 -0.31939703;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "3E9D4357-3E4C-A3CE-C83D-FFB876F85F78";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 616\n                -height 359\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 616\n            -height 359\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 615\n                -height 358\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 615\n            -height 358\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 616\n                -height 358\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 616\n            -height 358\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1237\n                -height 762\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1237\n            -height 762\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n"
		+ "                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n"
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1237\\n    -height 762\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1237\\n    -height 762\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E3EEB950-084F-FFB3-A3E5-99B38F182D44";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "B4255B41-CE4E-A32F-8F2E-D786B9E3C80E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[6:7]" "e[10:11]" "e[16]" "e[19]" "e[24]" "e[27]" "e[32]" "e[35]" "e[40]" "e[43]" "e[48]" "e[51]";
	setAttr ".ix" -type "matrix" 36.764276844333843 0 0 0 0 36.764276844333843 0 0 0 0 36.764276844333843 0
		 0 11.561456537644371 0 1;
	setAttr ".wt" 0.58427023887634277;
	setAttr ".dr" no;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "7F916F92-E740-93FD-DB11-49857AE6730D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[24:27]" -type "float3"  -0.02351982 0.2675201 -0.18429163
		 0.02351982 0.2675201 -0.18429163 0 -0.076041304 -0.13250212 0 -0.076041304 -0.13250212;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "C8E7E966-B44B-F72B-747B-06851EFBFF36";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[6:7]" "e[19]" "e[27]" "e[32]" "e[40]" "e[51]" "e[53]" "e[55]" "e[57]" "e[63]" "e[65]" "e[67]" "e[69]";
	setAttr ".ix" -type "matrix" 36.764276844333843 0 0 0 0 36.764276844333843 0 0 0 0 36.764276844333843 0
		 0 11.561456537644371 0 1;
	setAttr ".wt" 0.44260480999946594;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyCube -n "polyCube2";
	rename -uid "DF80A731-C149-48C9-29ED-E8A54469DAD9";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "5BECA0EC-1043-6F6C-430A-6AB3ABB85EB9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 22.220267096720594 0 0 0 0 20.926962622579421 0 0 0 0 20.926962622579421 0
		 0 19.617725165286679 31.000743091790163 1;
	setAttr ".wt" 0.30157771706581116;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "4F640425-B44F-9C31-2BD4-5C8671D723D4";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0.00024693646 0.050567612
		 0.14903715 -0.00024693646 0.050567612 0.14903715 0.26022118 -0.4207086 0.029807422
		 -0.26022136 -0.42070875 0.029807422 0.26022118 0.67098838 -0.37259281 -0.26022136
		 0.6709882 -0.37259281 0.00024693646 0.94851601 0.055888914 -0.00024693646 0.94851601
		 0.055888914;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "9CC95890-0546-EE10-73F9-12B9FC5260C9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0:3]" "e[14]" "e[18]";
	setAttr ".ix" -type "matrix" 22.220267096720594 0 0 0 0 20.926962622579421 0 0 0 0 20.926962622579421 0
		 0 19.617725165286679 31.000743091790163 1;
	setAttr ".wt" 0.77365201711654663;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "ECB98ABC-8347-C592-A861-BE8F92447C93";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.13366318 0.19759066 0.02976861
		 -0.13366318 0.19759066 0.02976861 0 -0.25336316 0 0 -0.25336316 0;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "4FDD7863-C84B-289C-5DAB-FC8B7117669F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0:3]" "e[18]" "e[21]";
	setAttr ".ix" -type "matrix" 22.220267096720594 0 0 0 0 20.926962622579421 0 0 0 0 20.926962622579421 0
		 0 19.617725165286679 31.000743091790163 1;
	setAttr ".wt" 0.30283603072166443;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "E9881B88-BE4D-63CF-9423-B38733C1097A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[6:7]" "e[15]" "e[17]" "e[22]" "e[30]" "e[34]" "e[42]";
	setAttr ".ix" -type "matrix" 22.220267096720594 0 0 0 0 20.926962622579421 0 0 0 0 20.926962622579421 0
		 0 19.617725165286679 31.000743091790163 1;
	setAttr ".wt" 0.49211680889129639;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak8";
	rename -uid "79D28562-954B-230E-1167-D1980177D7BC";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -1.0154309 ;
	setAttr ".tk[1]" -type "float3" 0 0 -1.0154309 ;
	setAttr ".tk[2]" -type "float3" 0 -0.54088295 0.1020534 ;
	setAttr ".tk[3]" -type "float3" 0 -0.54088295 0.1020534 ;
	setAttr ".tk[10]" -type "float3" 6.6613381e-016 0.83085287 -0.87102282 ;
	setAttr ".tk[11]" -type "float3" 6.6613381e-016 0.83085287 -0.87102282 ;
	setAttr ".tk[12]" -type "float3" 0 -0.54088295 0.1020534 ;
	setAttr ".tk[16]" -type "float3" 6.6613381e-016 0.83085287 -0.87102282 ;
	setAttr ".tk[17]" -type "float3" 0 0 -1.0154309 ;
	setAttr ".tk[18]" -type "float3" 0 -0.54088295 0.1020534 ;
	setAttr ".tk[22]" -type "float3" 6.6613381e-016 0.83085287 -0.87102282 ;
	setAttr ".tk[23]" -type "float3" 0 0 -1.0154309 ;
createNode polySplitRing -n "polySplitRing12";
	rename -uid "248464E8-4249-F3AE-0C00-988E0C2BB7A1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[4:5]" "e[8:9]" "e[16]" "e[19]" "e[26]" "e[31]" "e[38]" "e[43]" "e[52]" "e[59]";
	setAttr ".ix" -type "matrix" 22.220267096720594 0 0 0 0 20.926962622579421 0 0 0 0 20.926962622579421 0
		 0 19.617725165286679 31.000743091790163 1;
	setAttr ".wt" 0.29158392548561096;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak9";
	rename -uid "66CC567A-084C-62A9-801C-4F98C442D837";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[0]" -type "float3" -0.081079952 0 0 ;
	setAttr ".tk[1]" -type "float3" 0.081079952 0 0 ;
	setAttr ".tk[2]" -type "float3" -0.038901713 0 0.017579619 ;
	setAttr ".tk[3]" -type "float3" 0.038901702 0 0.017579619 ;
	setAttr ".tk[10]" -type "float3" 0 -0.052707601 -0.032435451 ;
	setAttr ".tk[11]" -type "float3" 0 -0.052707601 -0.032435451 ;
	setAttr ".tk[12]" -type "float3" 0.021291047 0 0.017579619 ;
	setAttr ".tk[16]" -type "float3" 0 -0.052707601 -0.032435451 ;
	setAttr ".tk[17]" -type "float3" 0.04437539 0 0 ;
	setAttr ".tk[18]" -type "float3" -0.020673182 0 0.017579619 ;
	setAttr ".tk[22]" -type "float3" 0 -0.052707601 -0.032435451 ;
	setAttr ".tk[23]" -type "float3" -0.04308755 0 0 ;
	setAttr ".tk[24]" -type "float3" -0.069379419 0.015387202 0.14797738 ;
	setAttr ".tk[25]" -type "float3" -0.037971646 0.0153872 0.14797738 ;
	setAttr ".tk[26]" -type "float3" 0.03686966 0.0153872 0.14797738 ;
	setAttr ".tk[27]" -type "float3" 0.069379419 0.015387202 0.14797738 ;
	setAttr ".tk[28]" -type "float3" -0.053329192 -0.13785075 -0.016217742 ;
	setAttr ".tk[29]" -type "float3" -0.0283402 -0.13785075 -0.016217742 ;
	setAttr ".tk[30]" -type "float3" 0.029187288 -0.13785075 -0.016217742 ;
	setAttr ".tk[31]" -type "float3" 0.053329192 -0.13785075 -0.016217742 ;
createNode polySplitRing -n "polySplitRing13";
	rename -uid "B2E2E18E-864D-5AA4-2F33-81AF5A6EE36F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[21]" "e[32]" "e[35]" "e[37]" "e[39]" "e[41]" "e[48]" "e[56]" "e[68]" "e[80]";
	setAttr ".ix" -type "matrix" 22.220267096720594 0 0 0 0 20.926962622579421 0 0 0 0 20.926962622579421 0
		 0 19.617725165286679 31.000743091790163 1;
	setAttr ".wt" 0.50709235668182373;
	setAttr ".re" 48;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak10";
	rename -uid "DCA6A2C4-1D42-474E-0D39-DC839C22DB61";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[0]" -type "float3" 0.096152075 0 0 ;
	setAttr ".tk[1]" -type "float3" -0.096152075 0 0 ;
	setAttr ".tk[2]" -type "float3" -0.22815315 0 0 ;
	setAttr ".tk[3]" -type "float3" 0.22815315 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.041820414 0 0 ;
	setAttr ".tk[7]" -type "float3" -0.041820414 0 0 ;
	setAttr ".tk[10]" -type "float3" 0.041820414 0 0 ;
	setAttr ".tk[11]" -type "float3" -0.041820414 0 0 ;
	setAttr ".tk[12]" -type "float3" 0.12486915 0 0 ;
	setAttr ".tk[15]" -type "float3" -0.022888485 0 0 ;
	setAttr ".tk[16]" -type "float3" -0.022888485 0 0 ;
	setAttr ".tk[17]" -type "float3" -0.052624442 0 0 ;
	setAttr ".tk[18]" -type "float3" -0.1212453 0 0 ;
	setAttr ".tk[21]" -type "float3" 0.022224231 0 0 ;
	setAttr ".tk[22]" -type "float3" 0.022224231 0 0 ;
	setAttr ".tk[23]" -type "float3" 0.051097192 0 0 ;
	setAttr ".tk[28]" -type "float3" 0.091558173 0 0 ;
	setAttr ".tk[29]" -type "float3" 0.048655894 0 0 ;
	setAttr ".tk[30]" -type "float3" -0.050110165 0 0 ;
	setAttr ".tk[31]" -type "float3" -0.091558173 0 0 ;
	setAttr ".tk[32]" -type "float3" 0.015070242 0.071037009 0.19535175 ;
	setAttr ".tk[33]" -type "float3" 0.078905694 0.076956756 0.17759255 ;
	setAttr ".tk[34]" -type "float3" 0.087087706 0 0.18125048 ;
	setAttr ".tk[35]" -type "float3" 0 0 0.17379797 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.17379797 ;
	setAttr ".tk[37]" -type "float3" -0.087087698 0 0.18125048 ;
	setAttr ".tk[38]" -type "float3" -0.078905702 0.076956756 0.17759255 ;
	setAttr ".tk[39]" -type "float3" -0.015070231 0.071037009 0.19535175 ;
	setAttr ".tk[40]" -type "float3" 0.012291536 -5.9604645e-008 0 ;
	setAttr ".tk[41]" -type "float3" 0.0065319603 -5.9604645e-008 0 ;
	setAttr ".tk[42]" -type "float3" -0.0067272009 -5.9604645e-008 0 ;
	setAttr ".tk[43]" -type "float3" -0.012291536 -5.9604645e-008 0 ;
createNode polySplitRing -n "polySplitRing14";
	rename -uid "C07B6E15-8448-000F-F061-F48CAD725964";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[10:13]" "e[24]" "e[28]" "e[36]" "e[40]" "e[76]" "e[83]" "e[96]" "e[102]";
	setAttr ".ix" -type "matrix" 22.220267096720594 0 0 0 0 20.926962622579421 0 0 0 0 20.926962622579421 0
		 0 19.617725165286679 31.000743091790163 1;
	setAttr ".wt" 0.64144450426101685;
	setAttr ".dr" no;
	setAttr ".re" 102;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak11";
	rename -uid "F27DA0F3-EE45-9DBC-05A5-91A7A422D374";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[4]" -type "float3" 0.015238165 -0.020606276 0 ;
	setAttr ".tk[5]" -type "float3" 0.012990072 -0.020606276 0 ;
	setAttr ".tk[14]" -type "float3" 0.0071095182 -0.3883906 0.49852622 ;
	setAttr ".tk[20]" -type "float3" -0.0069031916 -0.3883906 0.49852622 ;
	setAttr ".tk[32]" -type "float3" 0 0.020606257 0 ;
	setAttr ".tk[39]" -type "float3" 0 0.020606257 0 ;
	setAttr ".tk[40]" -type "float3" -0.013153538 0 0 ;
	setAttr ".tk[41]" -type "float3" -0.0069900611 0 0 ;
	setAttr ".tk[42]" -type "float3" 0.0071989847 0 0 ;
	setAttr ".tk[43]" -type "float3" 0.013153538 0 0 ;
	setAttr ".tk[51]" -type "float3" 3.828336e-006 0 0 ;
	setAttr ".tk[52]" -type "float3" 0.033524804 -0.0037465969 0 ;
createNode polySplitRing -n "polySplitRing15";
	rename -uid "3D95828B-FA4A-C94D-7DFF-5692698B182F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[15]" "e[17]" "e[30]" "e[42]" "e[44:45]" "e[47]" "e[49]" "e[62]" "e[74]" "e[94]" "e[103]";
	setAttr ".ix" -type "matrix" 22.220267096720594 0 0 0 0 20.926962622579421 0 0 0 0 20.926962622579421 0
		 0 19.617725165286679 31.000743091790163 1;
	setAttr ".wt" 0.22986699640750885;
	setAttr ".re" 44;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak12";
	rename -uid "AF96FD31-D34E-B333-3E99-3FB4BEEBCC02";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[14]" -type "float3" 0.01814523 0 -0.092749059 ;
	setAttr ".tk[20]" -type "float3" -0.01814523 0 -0.092749059 ;
	setAttr ".tk[54]" -type "float3" 0 0.019258516 0.12993316 ;
	setAttr ".tk[55]" -type "float3" 0 0.091399647 -0.1043427 ;
	setAttr ".tk[56]" -type "float3" 0.062179059 0.04314632 -0.039597593 ;
	setAttr ".tk[57]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[63]" -type "float3" 3.7252903e-009 0 0 ;
	setAttr ".tk[64]" -type "float3" -0.062179059 0.04314632 -0.039597593 ;
	setAttr ".tk[65]" -type "float3" 0 0.091399647 -0.1043427 ;
createNode polySplitRing -n "polySplitRing16";
	rename -uid "E024F758-3F42-FF2F-82DF-60B6B22B504F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[15]" "e[17]" "e[30]" "e[42]" "e[62]" "e[103]" "e[128:129]" "e[133]" "e[135]" "e[137]" "e[143]";
	setAttr ".ix" -type "matrix" 22.220267096720594 0 0 0 0 20.926962622579421 0 0 0 0 20.926962622579421 0
		 0 19.617725165286679 31.000743091790163 1;
	setAttr ".wt" 0.80837434530258179;
	setAttr ".dr" no;
	setAttr ".re" 128;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing17";
	rename -uid "8E1F9026-F545-3B8E-AB93-39B88439114F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[8:9]" "e[16]" "e[26]" "e[38]" "e[52]" "e[60:61]" "e[63]" "e[65]" "e[67]" "e[69]" "e[88]" "e[100]" "e[110]" "e[124]" "e[138]" "e[151]" "e[162]" "e[175]";
	setAttr ".ix" -type "matrix" 22.220267096720594 0 0 0 0 20.926962622579421 0 0 0 0 20.926962622579421 0
		 0 19.617725165286679 31.000743091790163 1;
	setAttr ".wt" 0.68331485986709595;
	setAttr ".re" 175;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing18";
	rename -uid "6B069187-0747-5210-7C40-E087E943A250";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[60:61]" "e[63]" "e[65]" "e[67]" "e[69]" "e[100]" "e[124]" "e[151]" "e[175]" "e[185]" "e[191]" "e[193]" "e[195]" "e[197]" "e[201]" "e[203]" "e[207]" "e[209]" "e[211]";
	setAttr ".ix" -type "matrix" 22.220267096720594 0 0 0 0 20.926962622579421 0 0 0 0 20.926962622579421 0
		 0 19.617725165286679 31.000743091790163 1;
	setAttr ".wt" 0.67808634042739868;
	setAttr ".re" 151;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "91883720-ED43-7DEC-879C-71A45A38E957";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[178]" "e[193]" "e[195:196]" "e[216]" "e[234]" "e[253]" "e[255]";
	setAttr ".ix" -type "matrix" 22.220267096720594 0 0 0 0 20.926962622579421 0 0 0 0 20.926962622579421 0
		 0 19.617725165286679 31.000743091790163 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyTweak -n "polyTweak13";
	rename -uid "91B91029-8C4D-FDBC-F53F-BEAABA2D050F";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[66]" -type "float3" -0.051313225 0 0 ;
	setAttr ".tk[90]" -type "float3" 0.024031635 -0.029858366 0.0079140719 ;
	setAttr ".tk[91]" -type "float3" 0 0.0091274772 0.042214584 ;
	setAttr ".tk[99]" -type "float3" 0.051313225 0.0091274772 0.042214584 ;
	setAttr ".tk[100]" -type "float3" -0.024031639 -0.029858366 0.0079140719 ;
	setAttr ".tk[110]" -type "float3" 0.017970162 0.090133861 -0.055905815 ;
	setAttr ".tk[118]" -type "float3" -0.017970162 0.090133861 -0.055905815 ;
	setAttr ".tk[119]" -type "float3" 0.0042365934 -0.010633062 0.080775633 ;
	setAttr ".tk[129]" -type "float3" -0.0042365934 -0.010633062 0.080775633 ;
createNode polySplitRing -n "polySplitRing19";
	rename -uid "4ECD02BB-9047-F751-67CA-C3A5ED07F2F4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[232]" "e[234]" "e[237]" "e[240]";
	setAttr ".ix" -type "matrix" 22.220267096720594 0 0 0 0 20.926962622579421 0 0 0 0 20.926962622579421 0
		 0 19.617725165286679 31.000743091790163 1;
	setAttr ".wt" 0.10689926147460938;
	setAttr ".dr" no;
	setAttr ".re" 237;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak14";
	rename -uid "D5173B50-C941-AFB0-D73D-E8AF4CC7281C";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[123]" -type "float3" -0.080303662 0 -0.036047004 ;
	setAttr ".tk[124]" -type "float3" -0.066936307 0 -0.036047004 ;
	setAttr ".tk[126]" -type "float3" 0.057190441 0 -0.036047004 ;
	setAttr ".tk[129]" -type "float3" 0.081088588 0 -0.036047004 ;
	setAttr ".tk[130]" -type "float3" 0.080308162 0 -0.036047004 ;
	setAttr ".tk[132]" -type "float3" 0.080471329 0 -0.036047004 ;
	setAttr ".tk[134]" -type "float3" -0.081088588 0 -0.036047004 ;
	setAttr ".tk[137]" -type "float3" -0.080452375 0 -0.036047004 ;
createNode polySplitRing -n "polySplitRing20";
	rename -uid "91CFC1FF-084A-7205-6603-D2ACD3979A78";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[242]" "e[244]" "e[247]" "e[250]";
	setAttr ".ix" -type "matrix" 22.220267096720594 0 0 0 0 20.926962622579421 0 0 0 0 20.926962622579421 0
		 0 19.617725165286679 31.000743091790163 1;
	setAttr ".wt" 0.88626658916473389;
	setAttr ".dr" no;
	setAttr ".re" 247;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "BAB5D9CD-7A4A-5536-B3DE-889ECFB39118";
	setAttr ".dc" -type "componentList" 0;
createNode polyCube -n "polyCube3";
	rename -uid "3FF3A7D3-AA43-18CD-1574-8FB4DB58423B";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing21";
	rename -uid "049F2D1D-AC43-47AF-6B03-8AAFB68EFE2A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.15127719938755035;
	setAttr ".re" 0;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing22";
	rename -uid "217261AA-C64A-D100-3083-019B4ED3BD21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.80459487438201904;
	setAttr ".dr" no;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing23";
	rename -uid "E6250474-D745-FCC9-2E32-7EAFABD2BA60";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[6:7]" "e[10:11]" "e[16]" "e[19]" "e[24]" "e[27]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.22133687138557434;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak15";
	rename -uid "6CCF8FD2-E145-6B9B-944E-569CDC63FE73";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[0:15]" -type "float3"  -0.060570486 0 0 0.060570486
		 0 0 -0.060570486 0 0 0.060570486 0 0 -0.060570486 0 0 0.060570486 0 0 -0.060570486
		 0 0 0.060570486 0 0 -0.11991041 0 0 -0.11991041 0 0 -0.11991041 0 0 -0.11991041 0
		 0 0.13423823 0 0 0.13423823 0 0 0.13423823 0 0 0.13423823 0 0;
createNode polySplitRing -n "polySplitRing24";
	rename -uid "9D5775EF-D944-A4D0-5513-789D588E3D9A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[10:11]" "e[19]" "e[27:29]" "e[31]" "e[33]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.28583076596260071;
	setAttr ".re" 28;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing25";
	rename -uid "2A5918BA-9245-5B46-C394-5B885DCD296F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[10:11]" "e[19]" "e[27]" "e[44:45]" "e[47]" "e[49]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.36069956421852112;
	setAttr ".re" 44;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing26";
	rename -uid "11836157-5D41-B3A6-4ED6-F2B14130CA02";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[10:11]" "e[19]" "e[27]" "e[60:61]" "e[63]" "e[65]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.42508953809738159;
	setAttr ".re" 60;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing27";
	rename -uid "76BDE39E-9742-D9C9-3549-BC858ED73511";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[12:13]" "e[15]" "e[17]" "e[32]" "e[40]" "e[48]" "e[56]" "e[64]" "e[72]" "e[80]" "e[88]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.15258429944515228;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak16";
	rename -uid "4A21B5AB-9C46-B260-CAC3-208E35D95C7E";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[41]" -type "float3" -0.028938908 0 0 ;
	setAttr ".tk[42]" -type "float3" 0.028938908 0 0 ;
	setAttr ".tk[45]" -type "float3" 0.028938908 0 0 ;
	setAttr ".tk[46]" -type "float3" -0.028938904 0 0 ;
createNode polySplitRing -n "polySplitRing28";
	rename -uid "0725E07B-E242-B797-B88B-F4BF62CDA8E5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[32]" "e[48]" "e[64]" "e[80]" "e[92:93]" "e[103]" "e[105]" "e[107]" "e[109]" "e[111]" "e[113]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.82580852508544922;
	setAttr ".dr" no;
	setAttr ".re" 103;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing29";
	rename -uid "77179F1E-554F-63D7-265B-89B03F75317B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[6:7]" "e[16]" "e[24]" "e[35]" "e[37]" "e[39]" "e[41]" "e[96]" "e[115]" "e[128]" "e[132]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.62816101312637329;
	setAttr ".re" 24;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing30";
	rename -uid "D0E24343-3048-4077-CBAD-E39E8618B369";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[6:7]" "e[16]" "e[24]" "e[96]" "e[132]" "e[149]" "e[151]" "e[153]" "e[155]" "e[157]" "e[159]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.50300157070159912;
	setAttr ".re" 24;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing31";
	rename -uid "7947CEFC-1D47-5A5B-3817-889D39F05965";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[20:21]" "e[23]" "e[25]" "e[30]" "e[42]" "e[46]" "e[58]" "e[62]" "e[74]" "e[78]" "e[90]" "e[160]" "e[163]" "e[184]" "e[187]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.48754572868347168;
	setAttr ".re" 187;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing32";
	rename -uid "4D05BD2A-5C48-BEF8-FA05-BC91C4FF9B31";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[0:3]" "e[34]" "e[38]" "e[50]" "e[54]" "e[66]" "e[70]" "e[82]" "e[86]" "e[148]" "e[152]" "e[172]" "e[176]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.49525734782218933;
	setAttr ".dr" no;
	setAttr ".re" 172;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing33";
	rename -uid "468B06E7-AF44-D25C-64DA-38AC5D08528F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[92:93]" "e[103]" "e[105]" "e[107]" "e[109]" "e[111]" "e[113]" "e[131]" "e[133]" "e[135]" "e[137]" "e[144]" "e[156]" "e[168]" "e[180]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.81499725580215454;
	setAttr ".dr" no;
	setAttr ".re" 93;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak17";
	rename -uid "6225E9F3-D446-68A7-439D-22B21CB00DC5";
	setAttr ".uopa" yes;
	setAttr -s 94 ".tk";
	setAttr ".tk[0]" -type "float3" 0.023532301 0.90989321 -0.066164866 ;
	setAttr ".tk[1]" -type "float3" -0.025070809 0.90989321 -0.066164866 ;
	setAttr ".tk[2]" -type "float3" 0.010953628 0.61208493 -0.062410649 ;
	setAttr ".tk[3]" -type "float3" -0.012817277 0.61208504 -0.062410649 ;
	setAttr ".tk[4]" -type "float3" 0.021953985 0.9345445 0 ;
	setAttr ".tk[5]" -type "float3" -0.021953985 0.9345445 0 ;
	setAttr ".tk[6]" -type "float3" 0.023324022 0.99867857 0 ;
	setAttr ".tk[7]" -type "float3" -0.023324011 0.99867857 0 ;
	setAttr ".tk[8]" -type "float3" 0.017607711 -7.4505806e-009 0.0091064377 ;
	setAttr ".tk[9]" -type "float3" 0.017607711 0.60657758 0.050769243 ;
	setAttr ".tk[12]" -type "float3" -0.017607711 -7.4505806e-009 0.0091064377 ;
	setAttr ".tk[13]" -type "float3" -0.017607711 0.60657769 0.050769243 ;
	setAttr ".tk[16]" -type "float3" -0.021953985 0.9345445 -0.11512829 ;
	setAttr ".tk[17]" -type "float3" -0.017594127 0 -0.11512829 ;
	setAttr ".tk[18]" -type "float3" 0.017658232 0 -0.11512829 ;
	setAttr ".tk[19]" -type "float3" 0.021953985 0.9345445 -0.11512829 ;
	setAttr ".tk[20]" -type "float3" 0.023324022 0.99867857 -0.11512829 ;
	setAttr ".tk[21]" -type "float3" 0.017658221 0 -0.11512829 ;
	setAttr ".tk[22]" -type "float3" -0.017594116 0 -0.11512829 ;
	setAttr ".tk[23]" -type "float3" -0.023324011 0.99867857 -0.11512829 ;
	setAttr ".tk[24]" -type "float3" -0.021953985 0.9345445 0 ;
	setAttr ".tk[27]" -type "float3" 0.021953985 0.9345445 0 ;
	setAttr ".tk[28]" -type "float3" 0.023324022 0.99867857 0 ;
	setAttr ".tk[31]" -type "float3" -0.023324011 0.99867857 0 ;
	setAttr ".tk[32]" -type "float3" -0.021953985 0.9345445 0 ;
	setAttr ".tk[35]" -type "float3" 0.021953985 0.9345445 0 ;
	setAttr ".tk[36]" -type "float3" 0.023324022 0.99867857 0 ;
	setAttr ".tk[39]" -type "float3" -0.023324011 0.99867857 0 ;
	setAttr ".tk[40]" -type "float3" -0.021953985 0.9345445 0 ;
	setAttr ".tk[43]" -type "float3" 0.021953985 0.9345445 0 ;
	setAttr ".tk[44]" -type "float3" 0.023324022 0.99867857 0 ;
	setAttr ".tk[47]" -type "float3" -0.023324011 0.99867857 0 ;
	setAttr ".tk[48]" -type "float3" 0 0.33104119 -9.3132257e-010 ;
	setAttr ".tk[49]" -type "float3" 0 0.65668005 1.8626451e-009 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.11512829 ;
	setAttr ".tk[59]" -type "float3" 0 0 -0.11512829 ;
	setAttr ".tk[65]" -type "float3" 0 0 -0.11512829 ;
	setAttr ".tk[66]" -type "float3" 0 0.33104119 -9.3132257e-010 ;
	setAttr ".tk[67]" -type "float3" 0 0.65668005 1.8626451e-009 ;
	setAttr ".tk[68]" -type "float3" 0 0 -0.11512829 ;
	setAttr ".tk[72]" -type "float3" -0.017594127 0 -0.083435677 ;
	setAttr ".tk[75]" -type "float3" 0.017658221 0 -0.083435677 ;
	setAttr ".tk[76]" -type "float3" 0.014430333 0.9345445 -0.083435677 ;
	setAttr ".tk[77]" -type "float3" 0.023324022 0.99867857 -0.083729662 ;
	setAttr ".tk[78]" -type "float3" 0.017658221 0 -0.083729662 ;
	setAttr ".tk[79]" -type "float3" 0 0 -0.083729662 ;
	setAttr ".tk[80]" -type "float3" 0 0 -0.083729662 ;
	setAttr ".tk[81]" -type "float3" -0.017594116 0 -0.083729662 ;
	setAttr ".tk[82]" -type "float3" -0.023324011 0.99867857 -0.083729662 ;
	setAttr ".tk[83]" -type "float3" -0.014430333 0.9345445 -0.083435677 ;
	setAttr ".tk[84]" -type "float3" -0.017607711 3.8564222 -0.017942071 ;
	setAttr ".tk[85]" -type "float3" 0 0.65668005 0 ;
	setAttr ".tk[86]" -type "float3" 0 0.65668005 0 ;
	setAttr ".tk[87]" -type "float3" 0.017607711 3.8564222 -0.017942071 ;
	setAttr ".tk[88]" -type "float3" 0.0058633653 0.62085295 -0.053192332 ;
	setAttr ".tk[89]" -type "float3" 0.023324022 0.99867857 -0.053192332 ;
	setAttr ".tk[90]" -type "float3" 0.038723826 -2.0221679 0.014694347 ;
	setAttr ".tk[91]" -type "float3" 0 -0.52993703 0 ;
	setAttr ".tk[92]" -type "float3" 0 -0.52993703 0 ;
	setAttr ".tk[93]" -type "float3" -0.038723826 -2.0221679 0.014694347 ;
	setAttr ".tk[94]" -type "float3" -0.023324011 0.99867857 -0.053192332 ;
	setAttr ".tk[95]" -type "float3" -0.0058633653 0.62085295 -0.053192332 ;
	setAttr ".tk[96]" -type "float3" -0.051068064 4.206923 -0.017942071 ;
	setAttr ".tk[97]" -type "float3" -0.049941242 0.60657769 0.057665288 ;
	setAttr ".tk[98]" -type "float3" -0.049041659 0.0026454511 0.01008571 ;
	setAttr ".tk[99]" -type "float3" -0.076370783 -2.1570351 0.016446896 ;
	setAttr ".tk[100]" -type "float3" -0.010484416 0 -0.083729662 ;
	setAttr ".tk[101]" -type "float3" -0.010484416 0 -0.11512829 ;
	setAttr ".tk[102]" -type "float3" 0.017246636 0.85107887 0 ;
	setAttr ".tk[103]" -type "float3" 0.017246636 0.85083818 0 ;
	setAttr ".tk[104]" -type "float3" 0.00042918883 0 0 ;
	setAttr ".tk[105]" -type "float3" 0.017246636 0.85107887 0 ;
	setAttr ".tk[106]" -type "float3" 0 0.9345445 0 ;
	setAttr ".tk[107]" -type "float3" 0.00042918883 0.9345445 0 ;
	setAttr ".tk[108]" -type "float3" 0 0.93956888 0 ;
	setAttr ".tk[109]" -type "float3" 0 0.9345445 0 ;
	setAttr ".tk[110]" -type "float3" -0.010484416 0.9345445 -0.11512829 ;
	setAttr ".tk[111]" -type "float3" -0.010484416 0.9345445 -0.083435677 ;
	setAttr ".tk[112]" -type "float3" 0.051068064 4.206923 -0.017942071 ;
	setAttr ".tk[113]" -type "float3" 0.049941242 0.60657758 0.057665288 ;
	setAttr ".tk[114]" -type "float3" 0.049041659 0.0026454511 0.01008571 ;
	setAttr ".tk[115]" -type "float3" 0.076370783 -2.1570351 0.016446896 ;
	setAttr ".tk[116]" -type "float3" 0.010484416 0 -0.083729662 ;
	setAttr ".tk[117]" -type "float3" 0.010484416 0 -0.11512829 ;
	setAttr ".tk[118]" -type "float3" -0.017246636 0.85107887 0 ;
	setAttr ".tk[119]" -type "float3" -0.017246636 0.85107887 0 ;
	setAttr ".tk[120]" -type "float3" -0.00042918883 0 0 ;
	setAttr ".tk[121]" -type "float3" -0.017246636 0.85107887 0 ;
	setAttr ".tk[122]" -type "float3" 0 0.9345445 0 ;
	setAttr ".tk[123]" -type "float3" -0.00042918883 0.9345445 0 ;
	setAttr ".tk[124]" -type "float3" 0 0.9345445 0 ;
	setAttr ".tk[125]" -type "float3" 0 0.9345445 0 ;
	setAttr ".tk[126]" -type "float3" 0.010484416 0.9345445 -0.11512829 ;
	setAttr ".tk[127]" -type "float3" 0.010484416 0.9345445 -0.083435677 ;
createNode polySplitRing -n "polySplitRing34";
	rename -uid "EA84E8D0-2C40-C04B-309B-EAB217E97292";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[92:93]" "e[103]" "e[105]" "e[107]" "e[109]" "e[111]" "e[113]" "e[156]" "e[180]" "e[253]" "e[255]" "e[257]" "e[259]" "e[261]" "e[263]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.61605465412139893;
	setAttr ".dr" no;
	setAttr ".re" 93;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing35";
	rename -uid "86D1DCF7-B84F-9BA9-7AE2-4796CDC4CABB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[92:93]" "e[103]" "e[105]" "e[107]" "e[109]" "e[111]" "e[113]" "e[156]" "e[180]" "e[285]" "e[287]" "e[289]" "e[291]" "e[293]" "e[295]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.59959918260574341;
	setAttr ".dr" no;
	setAttr ".re" 93;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing36";
	rename -uid "B9AD9628-2741-DC42-97CF-91B81A4A4E8C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[285]" "e[287]" "e[289]" "e[291]" "e[293]" "e[295]" "e[316]" "e[329]" "e[331]" "e[333]" "e[335]" "e[337]" "e[339]" "e[341]" "e[343]" "e[345]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.41739127039909363;
	setAttr ".re" 316;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing37";
	rename -uid "63C8F87C-7A4E-B69C-1565-EA9DD134B649";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[253]" "e[255]" "e[257]" "e[259]" "e[261]" "e[263]" "e[284]" "e[297]" "e[299]" "e[301]" "e[303]" "e[305]" "e[307]" "e[309]" "e[311]" "e[313]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.63687151670455933;
	setAttr ".dr" no;
	setAttr ".re" 284;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing38";
	rename -uid "1620E3EB-6348-BD45-F350-87A3BF9BE10B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[131]" "e[133]" "e[135]" "e[137]" "e[144]" "e[168]" "e[252]" "e[265]" "e[267]" "e[269]" "e[271]" "e[273]" "e[275]" "e[277]" "e[279]" "e[281]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.4724593460559845;
	setAttr ".re" 252;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing39";
	rename -uid "E41D9AEA-7243-5571-7DF7-4CA3600EA8D3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[92:93]" "e[103]" "e[105]" "e[107]" "e[109]" "e[111]" "e[113]" "e[156]" "e[180]" "e[317]" "e[319]" "e[321]" "e[323]" "e[325]" "e[327]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.50061601400375366;
	setAttr ".re" 93;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing40";
	rename -uid "2310FE88-4145-8FE4-8794-2A894902FB8C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 29 "e[44:45]" "e[47]" "e[49]" "e[67]" "e[69]" "e[71]" "e[73]" "e[100]" "e[112]" "e[124]" "e[136]" "e[202]" "e[214]" "e[234]" "e[246]" "e[262]" "e[274]" "e[294]" "e[306]" "e[326]" "e[338]" "e[358]" "e[370]" "e[390]" "e[402]" "e[422]" "e[434]" "e[454]" "e[466]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.55154019594192505;
	setAttr ".re" 44;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak18";
	rename -uid "014136AA-0347-79BE-4FE0-14AD09187564";
	setAttr ".uopa" yes;
	setAttr -s 145 ".tk";
	setAttr ".tk[0]" -type "float3" 0.0060825325 -0.22008994 -0.001275786 ;
	setAttr ".tk[2]" -type "float3" -0.0029277951 -0.22008994 -0.001275786 ;
	setAttr ".tk[32]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[33]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[34]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[35]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[36]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[37]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[38]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[39]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[42]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[43]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[44]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[45]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[46]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[47]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[48]" -type "float3" -0.0039585717 0 0 ;
	setAttr ".tk[49]" -type "float3" -0.0039585717 0 0 ;
	setAttr ".tk[50]" -type "float3" -0.0039585717 0 0 ;
	setAttr ".tk[51]" -type "float3" -0.0039585717 0 0 ;
	setAttr ".tk[52]" -type "float3" -0.0039585717 0 -0.0074984003 ;
	setAttr ".tk[53]" -type "float3" -0.0037157945 0 -0.014996799 ;
	setAttr ".tk[54]" -type "float3" -0.0039585717 0 0 ;
	setAttr ".tk[55]" -type "float3" -0.0039585717 0 0 ;
	setAttr ".tk[56]" -type "float3" -0.0037157945 0 -0.014996799 ;
	setAttr ".tk[57]" -type "float3" -0.0039585717 0 -0.0074984003 ;
	setAttr ".tk[58]" -type "float3" -0.0039585717 0 0 ;
	setAttr ".tk[59]" -type "float3" -0.0039585717 0 0 ;
	setAttr ".tk[60]" -type "float3" 0.0059379409 0 0 ;
	setAttr ".tk[61]" -type "float3" 0.0059379409 0 0 ;
	setAttr ".tk[62]" -type "float3" 0.0056916927 0 -0.014996799 ;
	setAttr ".tk[63]" -type "float3" 0.0059379409 0 -0.0074984003 ;
	setAttr ".tk[64]" -type "float3" 0.0059379409 0 0 ;
	setAttr ".tk[65]" -type "float3" 0.0059379409 0 0 ;
	setAttr ".tk[66]" -type "float3" 0.0059379409 0 0 ;
	setAttr ".tk[67]" -type "float3" 0.0059379409 0 0 ;
	setAttr ".tk[68]" -type "float3" 0.005937939 0 0 ;
	setAttr ".tk[69]" -type "float3" 0.0059379395 0 0 ;
	setAttr ".tk[70]" -type "float3" 0.0059379395 0 -0.0074984003 ;
	setAttr ".tk[71]" -type "float3" 0.0056916904 0 -0.014996799 ;
	setAttr ".tk[73]" -type "float3" 0.005937939 0 0 ;
	setAttr ".tk[74]" -type "float3" -0.0039585717 0 0 ;
	setAttr ".tk[79]" -type "float3" -0.018885963 0 0 ;
	setAttr ".tk[80]" -type "float3" 0.0059379409 0 0 ;
	setAttr ".tk[85]" -type "float3" 0.0059379409 0.32267988 0 ;
	setAttr ".tk[86]" -type "float3" -0.0039585717 0.63062179 0 ;
	setAttr ".tk[87]" -type "float3" -0.0038285488 0.45458108 0 ;
	setAttr ".tk[88]" -type "float3" -0.039505504 -0.22008994 0 ;
	setAttr ".tk[89]" -type "float3" -0.035914097 -0.22008994 0 ;
	setAttr ".tk[90]" -type "float3" -0.020351317 -0.23384556 0 ;
	setAttr ".tk[91]" -type "float3" -0.043794975 0 0 ;
	setAttr ".tk[92]" -type "float3" 0.0043093702 0 0 ;
	setAttr ".tk[103]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[104]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[107]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[108]" -type "float3" 0 -2.9802322e-008 -0.0074984003 ;
	setAttr ".tk[110]" -type "float3" 0 1.811529 0 ;
	setAttr ".tk[112]" -type "float3" -0.0038285488 0.45458108 0 ;
	setAttr ".tk[115]" -type "float3" -0.020351317 -0.23384556 0 ;
	setAttr ".tk[119]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[120]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[123]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[124]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[126]" -type "float3" 0 1.811529 0 ;
	setAttr ".tk[129]" -type "float3" 0 7.4505806e-009 0 ;
	setAttr ".tk[133]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[134]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[137]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[138]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[149]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[150]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[153]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[154]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[160]" -type "float3" 0 -1.8626451e-009 0 ;
	setAttr ".tk[161]" -type "float3" 0 0.21995854 0 ;
	setAttr ".tk[165]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[166]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[169]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[170]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[176]" -type "float3" -0.00085217302 0 0 ;
	setAttr ".tk[177]" -type "float3" -0.00085217302 1.4736446 0 ;
	setAttr ".tk[178]" -type "float3" -0.00085217302 0 0 ;
	setAttr ".tk[179]" -type "float3" -0.00085217302 0 0 ;
	setAttr ".tk[180]" -type "float3" -0.00085217302 0 0 ;
	setAttr ".tk[181]" -type "float3" -0.00085217302 0 -0.0074984003 ;
	setAttr ".tk[182]" -type "float3" -0.00085217302 0 -0.014996799 ;
	setAttr ".tk[183]" -type "float3" -0.00085217302 0 0 ;
	setAttr ".tk[184]" -type "float3" -0.00085217302 0 0 ;
	setAttr ".tk[185]" -type "float3" -0.00085217302 0 -0.014996799 ;
	setAttr ".tk[186]" -type "float3" -0.00085217302 0 -0.0074984003 ;
	setAttr ".tk[187]" -type "float3" -0.00085217302 0 0 ;
	setAttr ".tk[188]" -type "float3" -0.00085217302 0 0 ;
	setAttr ".tk[189]" -type "float3" -0.00085217302 0 0 ;
	setAttr ".tk[190]" -type "float3" -0.00085217302 0 0 ;
	setAttr ".tk[191]" -type "float3" -0.00085217302 0 0 ;
	setAttr ".tk[192]" -type "float3" -7.5816992e-005 0 0 ;
	setAttr ".tk[193]" -type "float3" -7.5816992e-005 1.5438496 0 ;
	setAttr ".tk[194]" -type "float3" -7.5816992e-005 0 0 ;
	setAttr ".tk[195]" -type "float3" -7.5816992e-005 0 0 ;
	setAttr ".tk[196]" -type "float3" -7.5816992e-005 0 0 ;
	setAttr ".tk[197]" -type "float3" -7.5816992e-005 0 -0.0074984003 ;
	setAttr ".tk[198]" -type "float3" -7.5816992e-005 0 -0.014996799 ;
	setAttr ".tk[199]" -type "float3" -7.5816992e-005 0 0 ;
	setAttr ".tk[200]" -type "float3" -7.5816992e-005 0 0 ;
	setAttr ".tk[201]" -type "float3" -7.5816992e-005 0 -0.014996799 ;
	setAttr ".tk[202]" -type "float3" -7.5816992e-005 0 -0.0074984003 ;
	setAttr ".tk[203]" -type "float3" -7.5816992e-005 0 0 ;
	setAttr ".tk[204]" -type "float3" -7.5816992e-005 0 0 ;
	setAttr ".tk[205]" -type "float3" -7.5816992e-005 0 0 ;
	setAttr ".tk[206]" -type "float3" -7.5816992e-005 0 0 ;
	setAttr ".tk[207]" -type "float3" -7.5816992e-005 0 0 ;
	setAttr ".tk[208]" -type "float3" 0.0036852709 -1.8626451e-009 0 ;
	setAttr ".tk[209]" -type "float3" 0.0036852709 1.6838368 0 ;
	setAttr ".tk[210]" -type "float3" 0.0036852709 1.8626451e-009 0 ;
	setAttr ".tk[211]" -type "float3" 0.0036852709 1.8626451e-009 0 ;
	setAttr ".tk[212]" -type "float3" 0.0036852709 1.8626451e-009 0 ;
	setAttr ".tk[213]" -type "float3" 0.0036852709 1.8626451e-009 -0.0074984003 ;
	setAttr ".tk[214]" -type "float3" 0.0036852709 1.8626451e-009 -0.014996799 ;
	setAttr ".tk[215]" -type "float3" 0.0036852709 1.8626451e-009 0 ;
	setAttr ".tk[216]" -type "float3" 0.0036852709 -7.4505806e-009 0 ;
	setAttr ".tk[217]" -type "float3" 0.0036852709 -7.4505806e-009 -0.014996799 ;
	setAttr ".tk[218]" -type "float3" 0.0036852709 -7.4505806e-009 -0.0074984003 ;
	setAttr ".tk[219]" -type "float3" 0.0036852709 -7.4505806e-009 0 ;
	setAttr ".tk[220]" -type "float3" 0.0036852709 -7.4505806e-009 0 ;
	setAttr ".tk[221]" -type "float3" 0.0036852709 -7.4505806e-009 0 ;
	setAttr ".tk[222]" -type "float3" 0.0036852709 -7.4505806e-009 0 ;
	setAttr ".tk[223]" -type "float3" 0.0036852709 0 0 ;
	setAttr ".tk[224]" -type "float3" 0.00065141165 -6.6613381e-016 0 ;
	setAttr ".tk[225]" -type "float3" 0.00065141165 1.6801395 0 ;
	setAttr ".tk[226]" -type "float3" 0.00065141165 -6.1062266e-016 0 ;
	setAttr ".tk[227]" -type "float3" 0.00065141165 -6.1062266e-016 0 ;
	setAttr ".tk[228]" -type "float3" 0.00065141165 -6.1062266e-016 0 ;
	setAttr ".tk[229]" -type "float3" 0.00065141165 -6.1062266e-016 -0.0074984003 ;
	setAttr ".tk[230]" -type "float3" 0.00065141165 -6.1062266e-016 -0.014996799 ;
	setAttr ".tk[231]" -type "float3" 0.00065141165 -6.1062266e-016 0 ;
	setAttr ".tk[232]" -type "float3" 0.00065141165 -8.8817842e-016 0 ;
	setAttr ".tk[233]" -type "float3" 0.00065141165 -8.8817842e-016 -0.014996799 ;
	setAttr ".tk[234]" -type "float3" 0.00065141165 -8.8817842e-016 -0.0074984003 ;
	setAttr ".tk[235]" -type "float3" 0.00065141165 -8.8817842e-016 0 ;
	setAttr ".tk[236]" -type "float3" 0.00065141165 -8.8817842e-016 0 ;
	setAttr ".tk[237]" -type "float3" 0.00065141165 -8.8817842e-016 0 ;
	setAttr ".tk[238]" -type "float3" 0.00065141165 -6.6613381e-016 0 ;
	setAttr ".tk[239]" -type "float3" 0.00065141165 -7.2164497e-016 0 ;
createNode polySplitRing -n "polySplitRing41";
	rename -uid "F6F4D30E-0848-6283-8506-45AFF7AF9545";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 29 "e[60:61]" "e[63]" "e[65]" "e[83]" "e[85]" "e[87]" "e[89]" "e[102]" "e[110]" "e[122]" "e[138]" "e[204]" "e[212]" "e[236]" "e[244]" "e[264]" "e[272]" "e[296]" "e[304]" "e[328]" "e[336]" "e[360]" "e[368]" "e[392]" "e[400]" "e[424]" "e[432]" "e[456]" "e[464]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.70695477724075317;
	setAttr ".dr" no;
	setAttr ".re" 60;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "FA767830-AB46-2AE3-33B3-6CB0C1462BF1";
	setAttr ".ics" -type "componentList" 2 "f[38]" "f[120]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 13.750529 21.774792 ;
	setAttr ".rs" 1086461486;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -15.063607017443413 12.9933972156465 18.96253603004935 ;
	setAttr ".cbx" -type "double3" 15.063607017443413 14.507662026935535 24.587048592894348 ;
createNode polyTweak -n "polyTweak19";
	rename -uid "135A2C62-C340-C2A2-0B9C-D3A067F81971";
	setAttr ".uopa" yes;
	setAttr -s 66 ".tk";
	setAttr ".tk[4]" -type "float3" 0 0.11560202 0 ;
	setAttr ".tk[5]" -type "float3" 0 0.11560202 0 ;
	setAttr ".tk[10]" -type "float3" 0 0.60113049 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.99229014 0 ;
	setAttr ".tk[14]" -type "float3" 0 0.60113049 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.99229014 0 ;
	setAttr ".tk[29]" -type "float3" 0 -0.14638622 -0.010497759 ;
	setAttr ".tk[30]" -type "float3" 0 -0.14638622 -0.010497759 ;
	setAttr ".tk[37]" -type "float3" 0 -0.40256202 0.028493915 ;
	setAttr ".tk[38]" -type "float3" 0 -0.40256202 0.028493915 ;
	setAttr ".tk[40]" -type "float3" 0 0 -7.4505806e-009 ;
	setAttr ".tk[43]" -type "float3" 0 0 -7.4505806e-009 ;
	setAttr ".tk[45]" -type "float3" 0 -0.41506639 0.012532866 ;
	setAttr ".tk[46]" -type "float3" 0 -0.41506639 0.012532866 ;
	setAttr ".tk[54]" -type "float3" 0 0.60113049 0 ;
	setAttr ".tk[55]" -type "float3" 0 -0.5024488 0 ;
	setAttr ".tk[56]" -type "float3" 0 -0.41506639 0.012532866 ;
	setAttr ".tk[58]" -type "float3" 0 -0.14638622 -0.010497759 ;
	setAttr ".tk[60]" -type "float3" 0 0.60113049 0 ;
	setAttr ".tk[61]" -type "float3" 0 -0.5024488 0 ;
	setAttr ".tk[62]" -type "float3" 0 -0.41506639 0.012532866 ;
	setAttr ".tk[64]" -type "float3" 0 -0.14638622 -0.010497759 ;
	setAttr ".tk[104]" -type "float3" 0 0.3832022 0.012532866 ;
	setAttr ".tk[105]" -type "float3" -0.030771293 -0.45875767 0 ;
	setAttr ".tk[106]" -type "float3" 0 0.60113049 0 ;
	setAttr ".tk[107]" -type "float3" 0 0.62214136 1.1175871e-008 ;
	setAttr ".tk[120]" -type "float3" 0 0.3832022 0.012532866 ;
	setAttr ".tk[121]" -type "float3" 0.030771293 -0.45875767 0 ;
	setAttr ".tk[122]" -type "float3" 0 0.60113049 0 ;
	setAttr ".tk[123]" -type "float3" 0 0.62214136 1.1175871e-008 ;
	setAttr ".tk[135]" -type "float3" 0 0.60113049 0 ;
	setAttr ".tk[136]" -type "float3" 0 -0.5024488 0 ;
	setAttr ".tk[137]" -type "float3" 0 -0.41506639 0.012532866 ;
	setAttr ".tk[139]" -type "float3" 0 -0.14638622 -0.010497759 ;
	setAttr ".tk[151]" -type "float3" 0 0.60113049 0 ;
	setAttr ".tk[152]" -type "float3" 0 -0.5024488 0 ;
	setAttr ".tk[153]" -type "float3" 0 -0.41506639 0.012532866 ;
	setAttr ".tk[155]" -type "float3" 0 -0.14638622 -0.010497759 ;
	setAttr ".tk[167]" -type "float3" 0 0.60113049 0 ;
	setAttr ".tk[168]" -type "float3" 0 -0.5024488 0 ;
	setAttr ".tk[169]" -type "float3" 0 -0.41506639 0.012532866 ;
	setAttr ".tk[171]" -type "float3" 0 -0.14638622 -0.010497759 ;
	setAttr ".tk[183]" -type "float3" 0 0.60113049 0 ;
	setAttr ".tk[184]" -type "float3" 0 -0.5024488 0 ;
	setAttr ".tk[185]" -type "float3" 0 -0.41506639 0.012532866 ;
	setAttr ".tk[187]" -type "float3" 0 -0.14638622 -0.010497759 ;
	setAttr ".tk[199]" -type "float3" 0 0.60113049 0 ;
	setAttr ".tk[200]" -type "float3" 0 -0.5024488 0 ;
	setAttr ".tk[201]" -type "float3" 0 -0.41506639 0.012532866 ;
	setAttr ".tk[203]" -type "float3" 0 -0.14638622 -0.010497759 ;
	setAttr ".tk[215]" -type "float3" 0 0.60113049 0 ;
	setAttr ".tk[216]" -type "float3" 0 -0.5024488 0 ;
	setAttr ".tk[217]" -type "float3" 0 -0.41506639 0.012532866 ;
	setAttr ".tk[219]" -type "float3" 0 -0.14638622 -0.010497759 ;
	setAttr ".tk[231]" -type "float3" 0 0.60113049 0 ;
	setAttr ".tk[232]" -type "float3" 0 -0.5024488 0 ;
	setAttr ".tk[233]" -type "float3" 0 -0.41506639 0.012532866 ;
	setAttr ".tk[235]" -type "float3" 0 -0.14638622 -0.010497759 ;
	setAttr ".tk[241]" -type "float3" 0 1.3906689 0 ;
	setAttr ".tk[253]" -type "float3" 0 1.3906689 0 ;
	setAttr ".tk[257]" -type "float3" 0 -1.006405 -0.011997442 ;
	setAttr ".tk[267]" -type "float3" 0 -1.006405 -0.011997442 ;
	setAttr ".tk[271]" -type "float3" 0 1.3174758 0 ;
	setAttr ".tk[283]" -type "float3" 0 1.3174758 0 ;
	setAttr ".tk[287]" -type "float3" 0 -0.39322081 0 ;
	setAttr ".tk[297]" -type "float3" 0 -0.39322081 0 ;
createNode polySplitRing -n "polySplitRing42";
	rename -uid "82D0AD0E-3846-FDB3-3C85-C1B4AEA04E13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[596:597]" "e[599]" "e[601]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.82392007112503052;
	setAttr ".dr" no;
	setAttr ".re" 599;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak20";
	rename -uid "B0D3C1CE-6448-AF48-FBF9-2EAAB57159A6";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[300:307]" -type "float3"  0 4.24166441 0.0056049321
		 0 4.015791416 -0.071307778 0 4.59741163 -0.074348688 0 4.64855909 0.004864011 0 4.015791416
		 -0.071307793 0 4.59741163 -0.074348688 0 4.24166441 0.0056049321 0 4.64855909 0.004864011;
createNode polySplitRing -n "polySplitRing43";
	rename -uid "ED4C049E-3148-C992-F62D-C5BE1BEEC6B1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[596:597]" "e[599]" "e[601]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.73686474561691284;
	setAttr ".dr" no;
	setAttr ".re" 599;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing44";
	rename -uid "E2C8C3FA-134E-C69D-1D3E-1BAAECF0F5E0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[596:597]" "e[599]" "e[601]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.74171149730682373;
	setAttr ".dr" no;
	setAttr ".re" 599;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing45";
	rename -uid "6A84B015-A147-5D2E-4C54-8E9ECC0A24EE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[604:605]" "e[607]" "e[609]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.51420265436172485;
	setAttr ".dr" no;
	setAttr ".re" 605;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak21";
	rename -uid "585D99DC-FE40-DBDF-D0CB-64B0FC5B94DC";
	setAttr ".uopa" yes;
	setAttr -s 64 ".tk";
	setAttr ".tk[4]" -type "float3" 0.097428374 0 -0.027056657 ;
	setAttr ".tk[5]" -type "float3" -0.097428359 0 -0.027056657 ;
	setAttr ".tk[6]" -type "float3" 0.097180545 -1.355138e-005 -0.036466688 ;
	setAttr ".tk[7]" -type "float3" -0.09718053 -1.355138e-005 -0.036466688 ;
	setAttr ".tk[10]" -type "float3" 0.084769368 -0.0041889586 -0.0058219107 ;
	setAttr ".tk[11]" -type "float3" 0.084769368 -0.79884613 0.0068513076 ;
	setAttr ".tk[14]" -type "float3" -0.084725969 -0.0041889586 -0.0058219107 ;
	setAttr ".tk[15]" -type "float3" -0.084725969 -0.79884613 0.0068513076 ;
	setAttr ".tk[33]" -type "float3" -0.027173163 0 0 ;
	setAttr ".tk[34]" -type "float3" 0.027173163 0 0 ;
	setAttr ".tk[40]" -type "float3" -0.032032017 0 0 ;
	setAttr ".tk[41]" -type "float3" -0.025494743 0 0 ;
	setAttr ".tk[42]" -type "float3" 0.025494743 0 0 ;
	setAttr ".tk[47]" -type "float3" -0.032032017 0 0 ;
	setAttr ".tk[54]" -type "float3" 0 -0.0041889586 -0.0058219107 ;
	setAttr ".tk[55]" -type "float3" 0 -0.79884613 0.0068513076 ;
	setAttr ".tk[60]" -type "float3" 0 -0.0041889586 -0.0058219107 ;
	setAttr ".tk[61]" -type "float3" 0 -0.79884613 0.0068513076 ;
	setAttr ".tk[104]" -type "float3" -0.032032017 0 0 ;
	setAttr ".tk[105]" -type "float3" -0.090823971 0.0041889157 -0.030625965 ;
	setAttr ".tk[106]" -type "float3" -0.093270391 0 -0.027056657 ;
	setAttr ".tk[107]" -type "float3" -0.032032017 0 0 ;
	setAttr ".tk[121]" -type "float3" 0.090559147 0.0041889157 -0.030625965 ;
	setAttr ".tk[122]" -type "float3" 0.09300556 0 -0.027056657 ;
	setAttr ".tk[135]" -type "float3" 0 -0.0041889586 -0.0058219107 ;
	setAttr ".tk[136]" -type "float3" 0 -0.79884613 0.0068513076 ;
	setAttr ".tk[151]" -type "float3" 0 -0.0041889586 -0.0058219107 ;
	setAttr ".tk[152]" -type "float3" 0 -0.79884613 0.0068513076 ;
	setAttr ".tk[167]" -type "float3" 0 -0.0041889586 -0.0058219107 ;
	setAttr ".tk[168]" -type "float3" 0 -0.79884613 0.0068513076 ;
	setAttr ".tk[183]" -type "float3" 0 -0.0041889586 -0.0058219107 ;
	setAttr ".tk[184]" -type "float3" 0 -0.79884613 0.0068513076 ;
	setAttr ".tk[199]" -type "float3" 0 -0.0041889586 -0.0058219107 ;
	setAttr ".tk[200]" -type "float3" 0 -0.79884613 0.0068513076 ;
	setAttr ".tk[215]" -type "float3" 0 -0.0041889586 -0.0058219107 ;
	setAttr ".tk[216]" -type "float3" 0 -0.79884613 0.0068513076 ;
	setAttr ".tk[231]" -type "float3" 0 -0.0041889586 -0.0058219107 ;
	setAttr ".tk[232]" -type "float3" 0 -0.79884613 0.0068513076 ;
	setAttr ".tk[270]" -type "float3" -0.032032017 0 0 ;
	setAttr ".tk[271]" -type "float3" -0.032032017 0 0 ;
	setAttr ".tk[272]" -type "float3" -0.025986593 0 0 ;
	setAttr ".tk[282]" -type "float3" 0.025986591 0 0 ;
	setAttr ".tk[298]" -type "float3" -0.032032017 0 0 ;
	setAttr ".tk[299]" -type "float3" -0.032032017 0 0 ;
	setAttr ".tk[300]" -type "float3" -0.13871093 2.3980817e-014 0.0010399467 ;
	setAttr ".tk[301]" -type "float3" -0.11531336 2.3980817e-014 0.0011625829 ;
	setAttr ".tk[302]" -type "float3" -0.12296367 2.3980817e-014 -0.0037055013 ;
	setAttr ".tk[303]" -type "float3" -0.14329195 2.3980817e-014 -0.0020296387 ;
	setAttr ".tk[304]" -type "float3" 0.10689186 2.0428104e-014 0.0017186704 ;
	setAttr ".tk[305]" -type "float3" 0.11607115 2.0428104e-014 -0.0065542134 ;
	setAttr ".tk[306]" -type "float3" 0.14358197 2.0428104e-014 0.0031947233 ;
	setAttr ".tk[307]" -type "float3" 0.14903799 2.0428104e-014 -0.0020897845 ;
	setAttr ".tk[308]" -type "float3" -0.10646485 0.11972104 0.071266249 ;
	setAttr ".tk[309]" -type "float3" -0.099378146 -0.023700502 0.073661327 ;
	setAttr ".tk[310]" -type "float3" -0.15049604 0.34731561 -0.060876504 ;
	setAttr ".tk[311]" -type "float3" -0.155053 0.4965536 -0.063948065 ;
	setAttr ".tk[312]" -type "float3" -0.10423833 0.088840812 0.067031264 ;
	setAttr ".tk[313]" -type "float3" -0.097146511 -0.18023233 0.070113026 ;
	setAttr ".tk[314]" -type "float3" -0.14890368 -0.11201432 -0.051162116 ;
	setAttr ".tk[315]" -type "float3" -0.15337306 0.12715128 -0.053926732 ;
	setAttr ".tk[316]" -type "float3" -0.11517653 0.36037874 -0.0030103179 ;
	setAttr ".tk[317]" -type "float3" -0.1080813 2.3980817e-014 0.00056637172 ;
	setAttr ".tk[318]" -type "float3" -0.14311938 -0.4824985 -0.01940942 ;
	setAttr ".tk[319]" -type "float3" -0.14757252 -0.18029502 -0.022203257 ;
createNode polySplitRing -n "polySplitRing46";
	rename -uid "1325D2F9-ED43-2DDA-0E7D-9CA1AF16EAB7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[636:637]" "e[639]" "e[641]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.43429014086723328;
	setAttr ".re" 636;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak22";
	rename -uid "6E2C6199-0F4E-69CC-4ECD-6A8E25F1F276";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[320:321]" -type "float3"  1.3463484e-005 0.27612305
		 0.0045618317 0 0.27252534 0;
createNode polySplitRing -n "polySplitRing47";
	rename -uid "382841A2-9044-DAC8-89DA-7DB9D7CD6343";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[636:637]" "e[639]" "e[641]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".wt" 0.39439958333969116;
	setAttr ".re" 636;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak23";
	rename -uid "59A8F637-AA49-BA95-97CC-52819C63E9B9";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[324]" -type "float3" 0 0 0.067922279 ;
	setAttr ".tk[327]" -type "float3" 0 0 0.067922279 ;
createNode polyCube -n "polyCube4";
	rename -uid "7C50D4C9-004A-30E0-9FEB-E1B1EE135E12";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing48";
	rename -uid "F1758485-054D-D69C-5CC7-4C9A3C5538C5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 19.55167476822702 0 0 0 0 19.55167476822702 0 0 0 0 19.55167476822702 0
		 0 21.616794870326238 6.4049762578744378 1;
	setAttr ".wt" 0.93564325571060181;
	setAttr ".dr" no;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak24";
	rename -uid "C5647E39-5543-48F0-3363-2B967DFF900C";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0 -1.054049253 0.27015528
		 0 -1.054049253 0.27015528 0 0.016316775 -0.42967501 0 0.016316775 -0.42967501 0 0.016316775
		 0.18492343 0 0.016316775 0.18492343 0 -1.32420433 0.53145319 0 -1.32420433 0.53145319;
createNode polySplitRing -n "polySplitRing49";
	rename -uid "E8F957CD-5748-3E98-0483-2C9C5BB0B1FF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 19.55167476822702 0 0 0 0 19.55167476822702 0 0 0 0 19.55167476822702 0
		 0 21.616794870326238 6.4049762578744378 1;
	setAttr ".wt" 0.09159281849861145;
	setAttr ".dr" no;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing50";
	rename -uid "10B22EC1-3249-84FF-97A0-A486FE2014DE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[15]" "e[17]" "e[20:21]";
	setAttr ".ix" -type "matrix" 19.55167476822702 0 0 0 0 19.55167476822702 0 0 0 0 19.55167476822702 0
		 0 21.616794870326238 6.4049762578744378 1;
	setAttr ".wt" 0.065756678581237793;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing51";
	rename -uid "9680EB10-8D45-0786-9BB7-A8B62C68D69E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[15]" "e[17]" "e[28:29]";
	setAttr ".ix" -type "matrix" 19.55167476822702 0 0 0 0 19.55167476822702 0 0 0 0 19.55167476822702 0
		 0 21.616794870326238 6.4049762578744378 1;
	setAttr ".wt" 0.10818257182836533;
	setAttr ".re" 28;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing52";
	rename -uid "C86A0640-E840-CC62-F1C4-25BB2F4E2981";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[15]" "e[17]" "e[36:37]";
	setAttr ".ix" -type "matrix" 19.55167476822702 0 0 0 0 19.55167476822702 0 0 0 0 19.55167476822702 0
		 0 21.616794870326238 6.4049762578744378 1;
	setAttr ".wt" 0.14474993944168091;
	setAttr ".re" 36;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing53";
	rename -uid "65E3268E-354D-CC77-787B-74B3B68C9502";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[15]" "e[17]" "e[44:45]";
	setAttr ".ix" -type "matrix" 19.55167476822702 0 0 0 0 19.55167476822702 0 0 0 0 19.55167476822702 0
		 0 21.616794870326238 6.4049762578744378 1;
	setAttr ".wt" 0.84453177452087402;
	setAttr ".dr" no;
	setAttr ".re" 17;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak25";
	rename -uid "BC1C0659-7E47-7994-9AE3-939FE57DECA2";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[8:27]" -type "float3"  0 0.075289205 0.34987321 0
		 0.075289205 0.34987321 0 -0.12843451 -0.27901289 0 -0.12843451 -0.27901289 0 -0.075864471
		 0.1045244 0 -0.075864471 0.1045244 0 -0.13869092 -0.075744011 0 -0.13869092 -0.075744011
		 0 -0.051658507 0.13599932 0 -0.051658507 0.13599932 0 -0.032703817 0.014764851 0
		 -0.032703817 0.014764851 0 0.12400572 0.25244021 0 0.12400572 0.25244021 0 -0.039858989
		 -0.022143882 0 -0.039858989 -0.022143882 0 0.12400572 0.27015528 0 0.12400572 0.27015528
		 0 0.0044287764 0.017715106 0 0.0044287764 0.017715106;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "86221338-DA45-8012-C4F7-6494A0CD4172";
	setAttr ".dc" -type "componentList" 0;
createNode polySplitRing -n "polySplitRing54";
	rename -uid "283824A3-0342-6E99-C096-FDB42136A642";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[15]" "e[17]" "e[55]" "e[57]";
	setAttr ".ix" -type "matrix" 19.55167476822702 0 0 0 0 19.55167476822702 0 0 0 0 19.55167476822702 0
		 0 21.616794870326238 6.4049762578744378 1;
	setAttr ".wt" 0.45479902625083923;
	setAttr ".re" 17;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak26";
	rename -uid "B15F6920-A142-9F6C-D89C-CAA1A2FBC426";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[28:31]" -type "float3"  0 -0.053812493 -0.16435729
		 0 -0.053812493 -0.16435729 0 0.22959997 0.10762499 0 0.22959997 0.10762499;
createNode polySplitRing -n "polySplitRing55";
	rename -uid "0771A2DA-184C-F96D-634D-A7A052B6B698";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[6:7]" "e[10:11]" "e[16]" "e[19]" "e[24]" "e[27]" "e[32]" "e[35]" "e[40]" "e[43]" "e[48]" "e[51]" "e[56]" "e[59]" "e[64]" "e[67]";
	setAttr ".ix" -type "matrix" 13.826463305464079 2.9076792262815045 0 0 -4.0236690016985053 19.133166857770714 0 0
		 0 0 19.55167476822702 0 18.324088115649186 22.398168923413259 6.4049762578744378 1;
	setAttr ".wt" 0.45999258756637573;
	setAttr ".dr" no;
	setAttr ".re" 64;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak27";
	rename -uid "7F27F59F-494D-4A3D-7B9A-809C692CCEB2";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[2]" -type "float3" -5.2154064e-008 7.4505806e-008 0 ;
	setAttr ".tk[3]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[4]" -type "float3" -5.2154064e-008 7.4505806e-008 0 ;
	setAttr ".tk[5]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[8]" -type "float3" 0 1.4901161e-008 0 ;
	setAttr ".tk[9]" -type "float3" -5.9604645e-008 -1.1920929e-007 0 ;
	setAttr ".tk[10]" -type "float3" 0 7.4505806e-009 0 ;
	setAttr ".tk[11]" -type "float3" 0 7.4505806e-009 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.019797655 -0.0043994794 ;
	setAttr ".tk[19]" -type "float3" 0 0.019797655 -0.0043994794 ;
	setAttr ".tk[30]" -type "float3" 2.3841858e-007 2.9802322e-008 0 ;
	setAttr ".tk[31]" -type "float3" 2.3841858e-007 1.4901161e-008 0 ;
	setAttr ".tk[32]" -type "float3" 2.3841858e-007 -0.010105714 -0.21026602 ;
	setAttr ".tk[33]" -type "float3" 0 -0.010105694 -0.21026604 ;
	setAttr ".tk[34]" -type "float3" -1.8626451e-008 -1.7881393e-007 0 ;
	setAttr ".tk[35]" -type "float3" 2.9802322e-008 2.9802322e-008 0 ;
createNode polySplitRing -n "polySplitRing56";
	rename -uid "F1C87DEB-EF41-7573-B797-86B8EC48FD77";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[26]" "e[30]" "e[34]" "e[38]" "e[42]" "e[46]" "e[50]" "e[54]" "e[58]" "e[62]" "e[66]" "e[74]" "e[92]";
	setAttr ".ix" -type "matrix" 13.826463305464079 2.9076792262815045 0 0 -3.6246621542520963 17.235827741068377 0 0
		 0 0 19.55167476822702 0 18.876283281720202 20.804433693994056 6.4049762578744378 1;
	setAttr ".wt" 0.56101739406585693;
	setAttr ".re" 14;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak28";
	rename -uid "FAAAB5C9-7A4A-97A4-4658-5DB6C5D0E681";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk";
	setAttr ".tk[0]" -type "float3" 0.062741444 -0.010584464 0 ;
	setAttr ".tk[2]" -type "float3" -0.010838533 -0.041344143 0 ;
	setAttr ".tk[3]" -type "float3" 0.051017243 -0.11681957 0 ;
	setAttr ".tk[4]" -type "float3" -0.010838533 -0.041344143 0 ;
	setAttr ".tk[5]" -type "float3" 0.051017243 -0.11681957 0 ;
	setAttr ".tk[6]" -type "float3" 0.062741444 -0.010584464 0 ;
	setAttr ".tk[8]" -type "float3" 0.051017243 -0.11681957 0 ;
	setAttr ".tk[9]" -type "float3" -0.010838533 -0.041344143 0 ;
	setAttr ".tk[13]" -type "float3" 0.062741444 -0.010584464 0 ;
	setAttr ".tk[14]" -type "float3" 0.062741444 -0.010584464 0 ;
	setAttr ".tk[17]" -type "float3" 0.062741444 -0.010584464 0 ;
	setAttr ".tk[18]" -type "float3" 0.062741444 -0.010584464 0 ;
	setAttr ".tk[20]" -type "float3" -0.013951184 -0.053217519 0 ;
	setAttr ".tk[21]" -type "float3" 0.048790287 -0.063801989 0 ;
	setAttr ".tk[22]" -type "float3" 0.062741473 -0.010584474 0 ;
	setAttr ".tk[25]" -type "float3" -0.011026504 -0.042061172 0 ;
	setAttr ".tk[36]" -type "float3" -0.23904067 -0.1148608 0 ;
	setAttr ".tk[37]" -type "float3" -0.13033591 -0.054410666 0 ;
	setAttr ".tk[38]" -type "float3" -0.010838533 -0.041344143 0 ;
	setAttr ".tk[39]" -type "float3" 0.051017243 -0.11681957 0 ;
	setAttr ".tk[40]" -type "float3" 0.051017243 -0.11681957 0 ;
	setAttr ".tk[41]" -type "float3" 0.13926321 0.026080906 0 ;
	setAttr ".tk[42]" -type "float3" 0.26093167 -0.079429507 0 ;
	setAttr ".tk[43]" -type "float3" 0.094713368 -0.10587696 0 ;
	setAttr ".tk[44]" -type "float3" 0.12317423 0.057965517 0 ;
	setAttr ".tk[45]" -type "float3" 0.098926619 0.077805087 0 ;
	setAttr ".tk[46]" -type "float3" 0.012325058 0.15934797 0 ;
	setAttr ".tk[48]" -type "float3" 0.062741444 -0.010584464 0 ;
	setAttr ".tk[49]" -type "float3" 0.062741444 -0.010584464 0 ;
	setAttr ".tk[50]" -type "float3" 0.062741444 -0.010584464 0 ;
	setAttr ".tk[51]" -type "float3" 0.062741473 -0.010584474 0 ;
	setAttr ".tk[52]" -type "float3" 0.0039120549 -0.044112299 0 ;
	setAttr ".tk[53]" -type "float3" -0.22228 -0.080443472 0 ;
createNode polySplitRing -n "polySplitRing57";
	rename -uid "8481B17F-C94B-1014-A715-8DBD875F3400";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[10:11]" "e[19]" "e[27]" "e[35]" "e[43]" "e[51]" "e[56]" "e[64]" "e[69]" "e[71]" "e[73]" "e[77]" "e[79]" "e[93]" "e[95]" "e[97]" "e[99]" "e[122]" "e[140]";
	setAttr ".ix" -type "matrix" 13.826463305464079 2.9076792262815045 0 0 -3.6246621542520963 17.235827741068377 0 0
		 0 0 19.55167476822702 0 18.876283281720202 20.804433693994056 6.4049762578744378 1;
	setAttr ".wt" 0.093125209212303162;
	setAttr ".re" 73;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak29";
	rename -uid "411CC555-9E4B-860D-81B9-C982A367163E";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk";
	setAttr ".tk[36]" -type "float3" 0 0 0.088924378 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.088924378 ;
	setAttr ".tk[38]" -type "float3" 0 0 0.088924378 ;
	setAttr ".tk[39]" -type "float3" 0 0 0.088924378 ;
	setAttr ".tk[40]" -type "float3" 0 0 0.088924378 ;
	setAttr ".tk[41]" -type "float3" 0 0 0.088924378 ;
	setAttr ".tk[42]" -type "float3" 0 0 0.088924378 ;
	setAttr ".tk[43]" -type "float3" 0 0 0.088924378 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.088924378 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.088924378 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.088924378 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.088924378 ;
	setAttr ".tk[48]" -type "float3" 0 0 0.088924378 ;
	setAttr ".tk[49]" -type "float3" 0 0 0.088924378 ;
	setAttr ".tk[50]" -type "float3" 0 0 0.088924378 ;
	setAttr ".tk[51]" -type "float3" 0 0 0.088924378 ;
	setAttr ".tk[52]" -type "float3" 0 0 0.088924378 ;
	setAttr ".tk[53]" -type "float3" 0 0 0.088924378 ;
	setAttr ".tk[54]" -type "float3" 0.079510204 0.18522589 0 ;
	setAttr ".tk[55]" -type "float3" 0.019463848 0.13328093 0 ;
	setAttr ".tk[56]" -type "float3" -0.014057674 0.064446285 0 ;
	setAttr ".tk[62]" -type "float3" 0 0 0.088924378 ;
	setAttr ".tk[70]" -type "float3" 0.079510212 0.18522589 0 ;
	setAttr ".tk[71]" -type "float3" 0.079510212 0.18522589 0 ;
	setAttr ".tk[72]" -type "float3" 0.079510212 0.18522589 0.088924378 ;
	setAttr ".tk[73]" -type "float3" 0.079510212 0.18522589 0 ;
createNode polyMirror -n "polyMirror1";
	rename -uid "62851BED-DC48-0AA4-F420-AF8B5856865C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 13.826463305464079 2.9076792262815045 0 0 -3.6246621542520963 17.235827741068377 0 0
		 0 0 19.55167476822702 0 18.876283281720202 20.804433693994056 6.4049762578744378 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 36.047768274205623 10.428209970399315 8.3725752093483923 ;
createNode polyTweak -n "polyTweak30";
	rename -uid "85C1370B-3F42-A675-F024-24AD63D510A9";
	setAttr ".uopa" yes;
	setAttr -s 76 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -0.13381526 ;
	setAttr ".tk[1]" -type "float3" 0 0 -0.13381526 ;
	setAttr ".tk[2]" -type "float3" 0 0 0.0060581546 ;
	setAttr ".tk[3]" -type "float3" 0 0 0.0060581546 ;
	setAttr ".tk[4]" -type "float3" 0 0 0.083087429 ;
	setAttr ".tk[5]" -type "float3" 0 0 0.083087429 ;
	setAttr ".tk[6]" -type "float3" 0 0 0.013827366 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.013827366 ;
	setAttr ".tk[8]" -type "float3" 0 0 -0.072871961 ;
	setAttr ".tk[9]" -type "float3" 0 0 -0.072871961 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.13439573 ;
	setAttr ".tk[11]" -type "float3" 0 0 0.13439573 ;
	setAttr ".tk[12]" -type "float3" 0 0 -0.14271939 ;
	setAttr ".tk[13]" -type "float3" 0 0 -0.14271939 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.034901597 ;
	setAttr ".tk[15]" -type "float3" 0 0 0.034901597 ;
	setAttr ".tk[16]" -type "float3" 0 0 -0.14119273 ;
	setAttr ".tk[17]" -type "float3" 0 0 -0.14119273 ;
	setAttr ".tk[18]" -type "float3" 0 0 0.021562042 ;
	setAttr ".tk[19]" -type "float3" 0 0 0.021562042 ;
	setAttr ".tk[20]" -type "float3" 0 0 -0.15244995 ;
	setAttr ".tk[21]" -type "float3" 0 0 -0.15244995 ;
	setAttr ".tk[22]" -type "float3" 0 0 0.034009233 ;
	setAttr ".tk[23]" -type "float3" 0 0 0.034009233 ;
	setAttr ".tk[24]" -type "float3" 0 0 -0.14165288 ;
	setAttr ".tk[25]" -type "float3" 0 0 -0.14165288 ;
	setAttr ".tk[26]" -type "float3" 0 0 0.03314222 ;
	setAttr ".tk[27]" -type "float3" 0 0 0.03314222 ;
	setAttr ".tk[28]" -type "float3" 0 0 0.081733629 ;
	setAttr ".tk[29]" -type "float3" 0 0 0.081733629 ;
	setAttr ".tk[30]" -type "float3" 0 0 -0.15247039 ;
	setAttr ".tk[31]" -type "float3" 0 0 -0.15247039 ;
	setAttr ".tk[32]" -type "float3" 0 0 0.15247039 ;
	setAttr ".tk[33]" -type "float3" 0 0 0.15247039 ;
	setAttr ".tk[34]" -type "float3" 0 0 -0.10907325 ;
	setAttr ".tk[35]" -type "float3" 0 0 -0.10907325 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.065500483 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.065500483 ;
	setAttr ".tk[38]" -type "float3" 0 0 0.065500483 ;
	setAttr ".tk[39]" -type "float3" 0 0 0.065500483 ;
	setAttr ".tk[40]" -type "float3" 0 0 0.065500483 ;
	setAttr ".tk[41]" -type "float3" 0 0 0.065500483 ;
	setAttr ".tk[42]" -type "float3" 0 0 0.065500483 ;
	setAttr ".tk[43]" -type "float3" 0 0 0.065500483 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.065500483 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.065500483 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.065500483 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.065500483 ;
	setAttr ".tk[48]" -type "float3" 0 0 0.065500483 ;
	setAttr ".tk[49]" -type "float3" 0 0 0.065500483 ;
	setAttr ".tk[50]" -type "float3" 0 0 0.065500483 ;
	setAttr ".tk[51]" -type "float3" 0 0 0.065500483 ;
	setAttr ".tk[52]" -type "float3" 0 0 0.065500483 ;
	setAttr ".tk[53]" -type "float3" 0 0 0.065500483 ;
	setAttr ".tk[62]" -type "float3" 0 0 0.065500483 ;
	setAttr ".tk[72]" -type "float3" 0 0 0.065500483 ;
	setAttr ".tk[74]" -type "float3" 0 0 -0.18986328 ;
	setAttr ".tk[75]" -type "float3" 0 0 -0.18986328 ;
	setAttr ".tk[76]" -type "float3" 0 0 -0.18986328 ;
	setAttr ".tk[77]" -type "float3" 0 0 -0.18986328 ;
	setAttr ".tk[78]" -type "float3" 0 0 -0.18986328 ;
	setAttr ".tk[79]" -type "float3" 0 0 -0.18986328 ;
	setAttr ".tk[80]" -type "float3" 0 0 -0.18986328 ;
	setAttr ".tk[81]" -type "float3" 0 0 -0.18986328 ;
	setAttr ".tk[82]" -type "float3" 0 0 -0.18986328 ;
	setAttr ".tk[83]" -type "float3" 0 0 -0.18986328 ;
	setAttr ".tk[84]" -type "float3" 0 0 -0.18986328 ;
	setAttr ".tk[85]" -type "float3" 0 0 -0.18986328 ;
	setAttr ".tk[86]" -type "float3" 0 0 -0.18986328 ;
	setAttr ".tk[87]" -type "float3" 0 0 -0.18986328 ;
	setAttr ".tk[88]" -type "float3" 0 0 -0.18986328 ;
	setAttr ".tk[89]" -type "float3" 0 0 -0.18986328 ;
	setAttr ".tk[90]" -type "float3" 0 0 -0.18986328 ;
	setAttr ".tk[91]" -type "float3" 0 0 -0.18986328 ;
	setAttr ".tk[92]" -type "float3" 0 0 -0.18986328 ;
	setAttr ".tk[93]" -type "float3" 0 0 -0.18986328 ;
createNode polyCube -n "polyCube5";
	rename -uid "15A04A67-2C4C-0C1F-2E90-0E9E15BB097C";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing58";
	rename -uid "B5D66C71-1C4A-9C80-A534-5C922CD20776";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 20.864441098464752 0 0 0 0 20.864441098464752 0 0 0 0 20.864441098464752 0
		 0 -13.181326945442109 -24.430358251129917 1;
	setAttr ".wt" 0.14667992293834686;
	setAttr ".re" 11;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak31";
	rename -uid "07AF489F-B74D-B72F-9224-19AFAA86E411";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0 -0.46359175 0.26270202 0
		 -0.46359175 0.26270202 0 -1.29805744 0.43268579 0 -1.29805744 0.43268579 0 -0.066963255
		 0.061812233 0 -0.066963255 0.061812233 6.6613381e-016 0.62842453 -0.25239998 6.6613381e-016
		 0.62842453 -0.25239998;
createNode polySplitRing -n "polySplitRing59";
	rename -uid "80997C9D-414F-4580-3182-8CBA22FFA9D9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[12:13]";
	setAttr ".ix" -type "matrix" 20.864441098464752 0 0 0 0 20.864441098464752 0 0 0 0 20.864441098464752 0
		 0 -13.181326945442109 -24.430358251129917 1;
	setAttr ".wt" 0.47930234670639038;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing60";
	rename -uid "CEA5EA44-3248-7F3B-6978-6FAA2530E9D1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[20:21]";
	setAttr ".ix" -type "matrix" 20.864441098464752 0 0 0 0 20.864441098464752 0 0 0 0 20.864441098464752 0
		 0 -13.181326945442109 -24.430358251129917 1;
	setAttr ".wt" 0.37999320030212402;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "147D641D-C543-4B19-E804-73B7A3BDE454";
	setAttr ".ics" -type "componentList" 1 "f[14]";
	setAttr ".ix" -type "matrix" 20.864441098464752 0 0 0 0 20.864441098464752 0 0 0 0 20.864441098464752 0
		 0 -13.181326945442109 -24.430358251129917 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -30.24346 -12.87125 ;
	setAttr ".rs" 711013444;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.432220549232376 -33.222351420226929 -17.48060959885732 ;
	setAttr ".cbx" -type "double3" 10.432220549232376 -27.264568750403711 -8.2618905841229058 ;
createNode polyTweak -n "polyTweak32";
	rename -uid "18E8140E-114F-4C51-D8E6-26BB6D10B350";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.0030568338 0.012227336 ;
	setAttr ".tk[1]" -type "float3" 0 0.0030568338 0.012227336 ;
	setAttr ".tk[8]" -type "float3" 0 -0.20786473 -0.24760364 ;
	setAttr ".tk[9]" -type "float3" 0 -0.20786473 -0.24760364 ;
	setAttr ".tk[10]" -type "float3" 0 0.18340999 0.25983086 ;
	setAttr ".tk[11]" -type "float3" 0 0.18340999 0.25983086 ;
	setAttr ".tk[12]" -type "float3" 0 -0.16506907 -0.18341011 ;
	setAttr ".tk[13]" -type "float3" 0 -0.16506907 -0.18341011 ;
	setAttr ".tk[14]" -type "float3" 0 0.26288769 0.3454223 ;
	setAttr ".tk[15]" -type "float3" 0 0.26288769 0.3454223 ;
	setAttr ".tk[16]" -type "float3" 0 -0.012227334 -0.012227335 ;
	setAttr ".tk[17]" -type "float3" 0 -0.012227334 -0.012227335 ;
	setAttr ".tk[18]" -type "float3" 0 -0.019677475 0.34829137 ;
	setAttr ".tk[19]" -type "float3" 0 -0.019677475 0.34829137 ;
createNode polySplitRing -n "polySplitRing61";
	rename -uid "0E6F55CB-904B-D928-AE5E-0D8D2C5D84EA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[4:5]" "e[8:9]" "e[16]" "e[19]" "e[24]" "e[27]" "e[32]" "e[35]";
	setAttr ".ix" -type "matrix" 12.779404020195582 0 -1.8022364341300769 0 0 20.864441098464752 0 0
		 2.9136110123405587 0 20.660004192160098 0 12.903261752267436 -13.181326945442109 -24.452619527716614 1;
	setAttr ".wt" 0.45287102460861206;
	setAttr ".re" 9;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak33";
	rename -uid "350B24DA-E04E-6317-9161-89A4166C9C12";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[20:23]" -type "float3"  0 -0.12908049 -0.70686924
		 0 -0.12908049 -0.70686924 0 -0.13522716 -0.74989611 0 -0.13522716 -0.74989611;
createNode polySplitRing -n "polySplitRing62";
	rename -uid "75F2B8C6-4941-8D31-A9F6-44B7DE9DE0CF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[4:5]" "e[16]" "e[24]" "e[32]" "e[44:45]" "e[57]" "e[59]" "e[61]";
	setAttr ".ix" -type "matrix" 12.779404020195582 0 -1.8022364341300769 0 0 20.864441098464752 0 0
		 2.9136110123405587 0 20.660004192160098 0 12.903261752267436 -13.181326945442109 -24.452619527716614 1;
	setAttr ".wt" 0.61154109239578247;
	setAttr ".dr" no;
	setAttr ".re" 44;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyCube -n "polyCube6";
	rename -uid "B5FDBDAA-1D41-4581-7917-9DA23401FDBA";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing63";
	rename -uid "7C952CFC-9646-4E00-ADC6-C98265E072EC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 20.696721134477805 0 0 0 0 6.8157040094478578 0 0 0 0 14.874839459621764 0
		 27.394953849354906 -41.822332157503588 10.544284508500731 1;
	setAttr ".wt" 0.26873204112052917;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing64";
	rename -uid "E9CDB12C-0F43-9B94-2E9F-DFAAFE922BE0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 20.696721134477805 0 0 0 0 6.8157040094478578 0 0 0 0 14.874839459621764 0
		 27.394953849354906 -41.822332157503588 10.544284508500731 1;
	setAttr ".wt" 0.35999763011932373;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing65";
	rename -uid "6F83DC13-0F4F-B16B-D652-628BC42764F4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[20:21]" "e[23]" "e[25]";
	setAttr ".ix" -type "matrix" 20.696721134477805 0 0 0 0 6.8157040094478578 0 0 0 0 14.874839459621764 0
		 27.394953849354906 -41.822332157503588 10.544284508500731 1;
	setAttr ".wt" 0.47595658898353577;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing66";
	rename -uid "7AD2821F-D74B-2186-2B7A-FA90AE4163D5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 20.696721134477805 0 0 0 0 6.8157040094478578 0 0 0 0 14.874839459621764 0
		 27.394953849354906 -41.822332157503588 10.544284508500731 1;
	setAttr ".wt" 0.15384611487388611;
	setAttr ".re" 17;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing67";
	rename -uid "4D098ECF-0044-D94B-B3DD-7AA0D111FCD4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 20.696721134477805 0 0 0 0 6.8157040094478578 0 0 0 0 14.874839459621764 0
		 27.394953849354906 -41.822332157503588 10.544284508500731 1;
	setAttr ".wt" 0.86812829971313477;
	setAttr ".dr" no;
	setAttr ".re" 0;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing68";
	rename -uid "60DD7B57-6A43-FAE2-953B-359073679510";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[36:37]" "e[39]" "e[41]";
	setAttr ".ix" -type "matrix" 20.696721134477805 0 0 0 0 6.8157040094478578 0 0 0 0 14.874839459621764 0
		 27.394953849354906 -41.822332157503588 10.544284508500731 1;
	setAttr ".wt" 0.79545450210571289;
	setAttr ".dr" no;
	setAttr ".re" 36;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing69";
	rename -uid "696E9C24-874A-3B60-0901-35B0BFB8DCF8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[20:21]" "e[23]" "e[25]";
	setAttr ".ix" -type "matrix" 20.696721134477805 0 0 0 0 6.8157040094478578 0 0 0 0 14.874839459621764 0
		 27.394953849354906 -41.822332157503588 10.544284508500731 1;
	setAttr ".wt" 0.15909084677696228;
	setAttr ".re" 25;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing70";
	rename -uid "C2D28AA9-D546-14B0-23F7-A6B35A45B7C2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[60:61]" "e[63]" "e[65]";
	setAttr ".ix" -type "matrix" 20.696721134477805 0 0 0 0 6.8157040094478578 0 0 0 0 14.874839459621764 0
		 27.394953849354906 -41.822332157503588 10.544284508500731 1;
	setAttr ".wt" 0.837837815284729;
	setAttr ".dr" no;
	setAttr ".re" 60;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing71";
	rename -uid "92E4427E-EB4A-99CF-D887-ECB3B2F5DC02";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[28:29]" "e[31]" "e[33]";
	setAttr ".ix" -type "matrix" 20.696721134477805 0 0 0 0 6.8157040094478578 0 0 0 0 14.874839459621764 0
		 27.394953849354906 -41.822332157503588 10.544284508500731 1;
	setAttr ".wt" 0.1238507553935051;
	setAttr ".re" 33;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing72";
	rename -uid "C383546D-2149-CD73-CFF3-57AE8D983617";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[4:5]" "e[8:9]" "e[16]" "e[19]" "e[24]" "e[27]" "e[32]" "e[35]" "e[38]" "e[42]" "e[46]" "e[50]" "e[54]" "e[58]" "e[62]" "e[66]" "e[70]" "e[74]" "e[78]" "e[82]";
	setAttr ".ix" -type "matrix" 20.696721134477805 0 0 0 0 6.8157040094478578 0 0 0 0 14.874839459621764 0
		 27.394953849354906 -41.822332157503588 10.544284508500731 1;
	setAttr ".wt" 0.15266212821006775;
	setAttr ".re" 35;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing73";
	rename -uid "E8224E5D-3642-D2FD-003D-9FA2B683EB28";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[8:9]" "e[16]" "e[24]" "e[32]" "e[42]" "e[50]" "e[58]" "e[66]" "e[74]" "e[82]" "e[84:85]" "e[87]" "e[89]" "e[91]" "e[93]" "e[95]" "e[97]" "e[99]" "e[123]" "e[125]";
	setAttr ".ix" -type "matrix" 20.696721134477805 0 0 0 0 6.8157040094478578 0 0 0 0 14.874839459621764 0
		 27.394953849354906 -41.822332157503588 10.544284508500731 1;
	setAttr ".wt" 0.65314489603042603;
	setAttr ".dr" no;
	setAttr ".re" 99;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing74";
	rename -uid "14E7F142-5D4F-558B-B434-DD8E1A94E26F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 23.142128841668384 0 0 0 0 8.7536155856952806 0 0 0 0 32.369835256009068 0
		 14.710233257018757 -36.164264498770351 19.246114565430819 1;
	setAttr ".wt" 0.36589106917381287;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing75";
	rename -uid "89972B6C-1149-29D3-3782-CDB580504C0B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 23.142128841668384 0 0 0 0 8.7536155856952806 0 0 0 0 32.369835256009068 0
		 14.710233257018757 -36.164264498770351 19.246114565430819 1;
	setAttr ".wt" 0.57835197448730469;
	setAttr ".dr" no;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing76";
	rename -uid "0BF8E7A3-C648-F40F-08BB-67AAD46C1FEB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[4:5]" "e[8:9]" "e[16]" "e[19]" "e[24]" "e[27]";
	setAttr ".ix" -type "matrix" 23.142128841668384 0 0 0 0 8.7536155856952806 0 0 0 0 32.369835256009068 0
		 14.710233257018757 -36.164264498770351 19.246114565430819 1;
	setAttr ".wt" 0.097889415919780731;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing77";
	rename -uid "C6B028A2-B942-BEBD-FFF7-59B0B234868E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0:3]" "e[30]" "e[34]";
	setAttr ".ix" -type "matrix" 23.142128841668384 0 0 0 0 8.7536155856952806 0 0 0 0 32.369835256009068 0
		 14.710233257018757 -36.164264498770351 19.246114565430819 1;
	setAttr ".wt" 0.46790677309036255;
	setAttr ".re" 0;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing78";
	rename -uid "1174F8EB-794C-EB86-65D5-27B6B8697900";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[12:13]" "e[15]" "e[17]" "e[36]" "e[43]";
	setAttr ".ix" -type "matrix" 23.142128841668384 0 0 0 0 8.7536155856952806 0 0 0 0 32.369835256009068 0
		 14.710233257018757 -36.164264498770351 19.246114565430819 1;
	setAttr ".wt" 0.5308641791343689;
	setAttr ".re" 43;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing79";
	rename -uid "6D979348-3F47-F12D-EFC6-98943FB7F6C5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[20:21]" "e[23]" "e[25]" "e[38]" "e[42]";
	setAttr ".ix" -type "matrix" 23.142128841668384 0 0 0 0 8.7536155856952806 0 0 0 0 32.369835256009068 0
		 14.710233257018757 -36.164264498770351 19.246114565430819 1;
	setAttr ".wt" 0.47504892945289612;
	setAttr ".re" 42;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing80";
	rename -uid "A55CA94D-E347-E902-C875-BBB6C8081AA8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[6:7]" "e[10:11]" "e[14]" "e[18]" "e[22]" "e[26]" "e[32]" "e[40]" "e[50]" "e[55]" "e[60]" "e[66]" "e[72]" "e[78]";
	setAttr ".ix" -type "matrix" 23.142128841668384 0 0 0 0 8.7536155856952806 0 0 0 0 32.369835256009068 0
		 14.710233257018757 -36.164264498770351 19.246114565430819 1;
	setAttr ".wt" 0.18950998783111572;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak34";
	rename -uid "E2434B34-0441-0124-2FA9-AEAD139D070C";
	setAttr ".uopa" yes;
	setAttr -s 42 ".tk[0:41]" -type "float3"  0 0 -0.16730839 0 0 -0.16730839
		 0 0 -0.30859101 0 0 -0.30859101 0.14051118 0 0 -0.14051118 0 0 0.14051118 0 0 -0.14051118
		 0 0 0 0 -0.30859101 0.037687607 0 0 0.037687607 0 0 0 0 -0.16730839 0 0 -0.30859101
		 -0.065374009 0 0 -0.065374009 0 0 0 0 -0.16730839 0 0 -0.16730839 0 0 -0.16730839
		 0.14051118 0 0 0.037687607 0 0 -0.065374009 0 0 -0.14051118 0 0 0 0 -0.16730839 0
		 0 -0.16730839 0 0 7.4505806e-009 0 0 7.4505806e-009 0 0 -0.14128262 0.092399336 0
		 0 0.092399336 0 0 0.092399336 0 0 0 0 7.4505806e-009 0 0 7.4505806e-009 -0.010662292
		 0 0 -0.010662292 0 0 -0.010662292 0 0 0 0 -0.14128262 0 0 7.4505806e-009 0 0 7.4505806e-009
		 -0.10481734 0 0 -0.10481734 0 0 -0.10481734 0 0 0 0 -0.14128262;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "54F57B10-DB4F-24ED-F621-629076B9B1E1";
	setAttr ".ics" -type "componentList" 1 "f[14]";
	setAttr ".ix" -type "matrix" 12.779404020195582 0 -1.8022364341300769 0 0 20.864441098464752 0 0
		 2.9136110123405587 0 20.660004192160098 0 12.903261752267436 -13.181326945442109 -24.452619527716614 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 12.395207 -33.000774 -28.055161 ;
	setAttr ".rs" 1450478086;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.4245140032572285 -36.043791439832482 -33.076007270839696 ;
	setAttr ".cbx" -type "double3" 19.36590087313801 -29.95775946138021 -23.034314559246756 ;
createNode polyTweak -n "polyTweak35";
	rename -uid "53F4C04A-EF42-E338-CCDD-1684DC4F5473";
	setAttr ".uopa" yes;
	setAttr -s 29 ".tk";
	setAttr ".tk[1]" -type "float3" -7.4505806e-009 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.23575518 0 0 ;
	setAttr ".tk[3]" -type "float3" -0.23575518 0 0 ;
	setAttr ".tk[4]" -type "float3" 0.23575518 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.23575518 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.23575518 0 0 ;
	setAttr ".tk[7]" -type "float3" -0.23575518 0 0 ;
	setAttr ".tk[8]" -type "float3" -0.23575518 0 0 ;
	setAttr ".tk[9]" -type "float3" 0.23575518 0 0 ;
	setAttr ".tk[10]" -type "float3" 0.23575518 0 0 ;
	setAttr ".tk[11]" -type "float3" -0.23575518 0 0 ;
	setAttr ".tk[12]" -type "float3" -0.23575518 0 0 ;
	setAttr ".tk[13]" -type "float3" 0.23575518 0 0 ;
	setAttr ".tk[14]" -type "float3" 0.23575518 0 0 ;
	setAttr ".tk[15]" -type "float3" -0.23575518 0 0 ;
	setAttr ".tk[16]" -type "float3" -0.097036876 0 0 ;
	setAttr ".tk[17]" -type "float3" 0.097036883 0 0 ;
	setAttr ".tk[18]" -type "float3" 0.23575518 0 0 ;
	setAttr ".tk[19]" -type "float3" -0.23575518 0 0 ;
	setAttr ".tk[24]" -type "float3" -0.0059726108 0.033835474 0.026196498 ;
	setAttr ".tk[25]" -type "float3" -0.0059726108 0.033835474 0.026196498 ;
	setAttr ".tk[26]" -type "float3" -0.0059726108 0.033835474 0.026196498 ;
	setAttr ".tk[27]" -type "float3" -0.0059726108 0.033835474 0.026196498 ;
	setAttr ".tk[28]" -type "float3" -0.0059726108 0.033835474 0.026196498 ;
	setAttr ".tk[29]" -type "float3" -0.0059726108 0.033835474 0.026196498 ;
	setAttr ".tk[30]" -type "float3" -0.0059726108 0.033835474 0.026196498 ;
	setAttr ".tk[31]" -type "float3" -0.0059726108 0.033835474 0.026196498 ;
	setAttr ".tk[32]" -type "float3" -0.0059726108 0.033835474 0.026196498 ;
	setAttr ".tk[33]" -type "float3" -0.0059726108 0.033835474 0.026196498 ;
createNode polySplitRing -n "polySplitRing81";
	rename -uid "124305E3-7546-F6FF-FFF4-1AB14C247756";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[84:85]" "e[87]" "e[89]";
	setAttr ".ix" -type "matrix" 12.779404020195582 0 -1.8022364341300769 0 0 20.864441098464752 0 0
		 2.9136110123405587 0 20.660004192160098 0 12.903261752267436 -13.181326945442109 -24.452619527716614 1;
	setAttr ".wt" 0.96701222658157349;
	setAttr ".dr" no;
	setAttr ".re" 84;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak36";
	rename -uid "D0BAEAD3-AD44-605D-F640-368B469BB7B0";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[44:47]" -type "float3"  0.02130793 -0.39688274 -0.10121014
		 0.02130793 -0.39688283 -0.10121014 0.02130793 -0.021621134 -0.085707605 0.02130793
		 -0.021621224 -0.085707545;
createNode polyMirror -n "polyMirror2";
	rename -uid "50B05AD8-094E-DC7E-B82E-A8B7E6734467";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 12.779404020195582 0 -1.8022364341300769 0 0 20.864441098464752 0 0
		 2.9136110123405587 0 20.660004192160098 0 12.903261752267436 -13.181326945442109 -24.452619527716614 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 22.400189821495886 -23.767030115314189 -22.874427210652744 ;
createNode polyTweak -n "polyTweak37";
	rename -uid "CA653FFC-E643-A458-E6E7-F9A885EF36AD";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[44:47]" -type "float3"  0.0091897789 -0.24963084 0.079882361
		 -0.00070236158 -0.24963111 0.079882436 0.0091897808 0.010892454 0.0853099 -0.00070235692
		 0.01089239 0.08530993;
createNode polyMirror -n "polyMirror3";
	rename -uid "73998C41-2542-C321-01C9-13AED73FE742";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 18.632692808969374 0 -2.6639166780483876 0 0 7.1195675677703436 0 0
		 3.7261284212064152 0 26.062303979407005 0 14.710233257018757 -40.432141440952073 -13.554738922429696 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 26.270129289090118 -39.345394203586743 -16.640049101674439 ;
createNode polyTweak -n "polyTweak38";
	rename -uid "D389E8B7-9748-C5AA-BDE6-888ACD455D44";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[0]" -type "float3" -0.020420298 0.0041241683 -0.041025113 ;
	setAttr ".tk[1]" -type "float3" 0.020420298 0.0041241683 -0.041025113 ;
	setAttr ".tk[2]" -type "float3" -0.020420298 -0.0041241646 0.041025113 ;
	setAttr ".tk[3]" -type "float3" 0.020420298 -0.0041241646 0.041025113 ;
	setAttr ".tk[4]" -type "float3" 0 0.09840861 0.089175895 ;
	setAttr ".tk[5]" -type "float3" 0 0.09840861 0.089175895 ;
	setAttr ".tk[6]" -type "float3" 0 0 -0.22043562 ;
	setAttr ".tk[7]" -type "float3" 0 0 -0.22043562 ;
	setAttr ".tk[9]" -type "float3" 0 0.09840861 0.089175895 ;
	setAttr ".tk[10]" -type "float3" 0 0 -0.22043562 ;
	setAttr ".tk[13]" -type "float3" 0 0.09840861 0.089175895 ;
	setAttr ".tk[14]" -type "float3" 0 0 -0.22043562 ;
	setAttr ".tk[17]" -type "float3" -0.020420298 -0.0096146185 -0.033555303 ;
	setAttr ".tk[18]" -type "float3" 0 0 -0.23676419 ;
	setAttr ".tk[19]" -type "float3" 0 0 -0.23676419 ;
	setAttr ".tk[20]" -type "float3" 0 0 -0.23676419 ;
	setAttr ".tk[21]" -type "float3" 0 0 -0.23676419 ;
	setAttr ".tk[22]" -type "float3" 0.020420298 -0.0096146185 -0.033555303 ;
	setAttr ".tk[27]" -type "float3" 0 0.09840861 0.089175895 ;
	setAttr ".tk[28]" -type "float3" 0 0 -0.23676419 ;
	setAttr ".tk[29]" -type "float3" 0 0 -0.22043562 ;
	setAttr ".tk[32]" -type "float3" 0 0 -0.22043562 ;
	setAttr ".tk[33]" -type "float3" 0 0 -0.23676419 ;
	setAttr ".tk[34]" -type "float3" 0 0.09840861 0.089175895 ;
	setAttr ".tk[38]" -type "float3" 0 0 -0.22043562 ;
	setAttr ".tk[39]" -type "float3" 0 0 -0.23676419 ;
	setAttr ".tk[40]" -type "float3" 0 0.09840861 0.089175895 ;
	setAttr ".tk[42]" -type "float3" 0.031229354 0 0.076388501 ;
	setAttr ".tk[43]" -type "float3" 0 0.30528462 0 ;
	setAttr ".tk[45]" -type "float3" 0 0.30528462 0 ;
	setAttr ".tk[47]" -type "float3" 0 0.30528462 0 ;
	setAttr ".tk[48]" -type "float3" -0.031229354 0 0.076388501 ;
createNode polySplitRing -n "polySplitRing82";
	rename -uid "6E51EE17-3147-39BD-595D-A8928CE28C66";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 21 "e[84:85]" "e[87]" "e[89]" "e[91]" "e[93]" "e[95]" "e[97]" "e[99]" "e[123]" "e[125]" "e[129]" "e[131]" "e[133]" "e[135]" "e[137]" "e[139]" "e[141]" "e[143]" "e[145]" "e[147]" "e[149]";
	setAttr ".ix" -type "matrix" 20.696721134477805 0 0 0 0 6.8157040094478578 0 0 0 0 14.874839459621764 0
		 27.394953849354906 -41.822332157503588 23.145776761899072 1;
	setAttr ".wt" 0.88658201694488525;
	setAttr ".dr" no;
	setAttr ".re" 149;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak39";
	rename -uid "DCD473DD-D24B-5488-17B1-76B50EFAA5D2";
	setAttr ".uopa" yes;
	setAttr -s 80 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -0.17756681 ;
	setAttr ".tk[1]" -type "float3" 0 0 -0.17756681 ;
	setAttr ".tk[2]" -type "float3" 0.04556331 0.46782535 0 ;
	setAttr ".tk[3]" -type "float3" -0.040500723 0.46782535 0 ;
	setAttr ".tk[4]" -type "float3" 0.04556331 0.46782535 0 ;
	setAttr ".tk[5]" -type "float3" -0.040500723 0.46782535 0 ;
	setAttr ".tk[8]" -type "float3" 0 0.46782535 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.46782535 0 ;
	setAttr ".tk[10]" -type "float3" 0 0.12610486 0 ;
	setAttr ".tk[11]" -type "float3" 0 0.12610486 -0.17756681 ;
	setAttr ".tk[12]" -type "float3" 9.3132257e-010 0.46782535 0 ;
	setAttr ".tk[13]" -type "float3" 9.3132257e-010 0.46782535 0 ;
	setAttr ".tk[14]" -type "float3" 0 0.12610486 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.12610486 -0.17756681 ;
	setAttr ".tk[16]" -type "float3" -3.7252903e-009 0.46782535 0 ;
	setAttr ".tk[17]" -type "float3" -3.7252903e-009 0.46782535 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.12610486 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.12610486 -0.17756681 ;
	setAttr ".tk[20]" -type "float3" 0 0 -0.17756681 ;
	setAttr ".tk[21]" -type "float3" -1.8626451e-009 0.46782535 0 ;
	setAttr ".tk[22]" -type "float3" -1.8626451e-009 0.46782535 0 ;
	setAttr ".tk[24]" -type "float3" 0 0 -0.17756681 ;
	setAttr ".tk[25]" -type "float3" 0 0.46782535 0 ;
	setAttr ".tk[26]" -type "float3" 0 0.46782535 0 ;
	setAttr ".tk[28]" -type "float3" 0 0 -0.17756681 ;
	setAttr ".tk[29]" -type "float3" 1.1641532e-010 0.46782535 0 ;
	setAttr ".tk[30]" -type "float3" 1.1641532e-010 0.46782535 0 ;
	setAttr ".tk[32]" -type "float3" 0 0 -0.17756681 ;
	setAttr ".tk[33]" -type "float3" -1.8626451e-009 0.46782535 0 ;
	setAttr ".tk[34]" -type "float3" -1.8626451e-009 0.46782535 0 ;
	setAttr ".tk[36]" -type "float3" 0 0 -0.17756681 ;
	setAttr ".tk[37]" -type "float3" -1.8626451e-009 0.46782535 0 ;
	setAttr ".tk[38]" -type "float3" -1.8626451e-009 0.46782535 0 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.17756681 ;
	setAttr ".tk[41]" -type "float3" 3.7252903e-009 0.46782535 0 ;
	setAttr ".tk[42]" -type "float3" 3.7252903e-009 0.46782535 0 ;
	setAttr ".tk[44]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[45]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[46]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[47]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[48]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[49]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[50]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[51]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[52]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[53]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[54]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[55]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[56]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[57]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[58]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[59]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[60]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[61]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[62]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[63]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[64]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[65]" -type "float3" 0 0.4097639 0 ;
	setAttr ".tk[66]" -type "float3" 0 0.46782535 0 ;
	setAttr ".tk[67]" -type "float3" 0 0.46782535 0 ;
	setAttr ".tk[68]" -type "float3" 0 0.46782535 0 ;
	setAttr ".tk[69]" -type "float3" -1.8626451e-009 0.46782535 0 ;
	setAttr ".tk[70]" -type "float3" -1.8626451e-009 0.46782535 0 ;
	setAttr ".tk[71]" -type "float3" 1.1641532e-010 0.46782535 0 ;
	setAttr ".tk[72]" -type "float3" 9.3132257e-010 0.46782535 0 ;
	setAttr ".tk[73]" -type "float3" -1.8626451e-009 0.46782535 0 ;
	setAttr ".tk[74]" -type "float3" -1.8626451e-009 0.46782535 0 ;
	setAttr ".tk[75]" -type "float3" -3.7252903e-009 0.46782535 0 ;
	setAttr ".tk[76]" -type "float3" 3.7252903e-009 0.46782535 0 ;
	setAttr ".tk[77]" -type "float3" 0 0.46782535 0 ;
	setAttr ".tk[78]" -type "float3" 0 0.46782535 0 ;
	setAttr ".tk[79]" -type "float3" 3.7252903e-009 0.46782535 0 ;
	setAttr ".tk[80]" -type "float3" -3.7252903e-009 0.46782535 0 ;
	setAttr ".tk[81]" -type "float3" -1.8626451e-009 0.46782535 0 ;
	setAttr ".tk[82]" -type "float3" -1.8626451e-009 0.46782535 0 ;
	setAttr ".tk[83]" -type "float3" 9.3132257e-010 0.46782535 0 ;
	setAttr ".tk[84]" -type "float3" 1.1641532e-010 0.46782535 0 ;
	setAttr ".tk[85]" -type "float3" -1.8626451e-009 0.46782535 0 ;
	setAttr ".tk[86]" -type "float3" 0 0.46782535 0 ;
	setAttr ".tk[87]" -type "float3" 0 0.46782535 0 ;
createNode polySplitRing -n "polySplitRing83";
	rename -uid "83396AB4-F247-3937-81FA-04B9B3A54565";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 22 "e[129]" "e[131]" "e[133]" "e[135]" "e[137]" "e[139]" "e[141]" "e[143]" "e[145]" "e[147]" "e[149]" "e[193]" "e[195]" "e[197]" "e[199]" "e[201]" "e[203]" "e[205]" "e[207]" "e[209]" "e[211]" "e[213]";
	setAttr ".ix" -type "matrix" 20.696721134477805 0 0 0 0 6.8157040094478578 0 0 0 0 14.874839459621764 0
		 27.394953849354906 -41.822332157503588 23.145776761899072 1;
	setAttr ".wt" 0.50177031755447388;
	setAttr ".dr" no;
	setAttr ".re" 149;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing84";
	rename -uid "AF6CC486-E746-598E-11E8-4EBE395B5AFF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[76:77]" "e[79]" "e[81]" "e[122]" "e[126]" "e[150]" "e[154]" "e[174]" "e[214]" "e[218]" "e[258]";
	setAttr ".ix" -type "matrix" 20.696721134477805 0 0 0 0 6.8157040094478578 0 0 0 0 14.874839459621764 0
		 27.394953849354906 -41.822332157503588 23.145776761899072 1;
	setAttr ".wt" 0.8592381477355957;
	setAttr ".dr" no;
	setAttr ".re" 122;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak40";
	rename -uid "5B467245-1742-D1B5-7B3D-FDB84E1A77E0";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[10]" -type "float3" 0 0 0.17097141 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.17097141 ;
	setAttr ".tk[18]" -type "float3" 0 0 0.17097141 ;
	setAttr ".tk[55]" -type "float3" 0 -0.087806545 0.1698738 ;
	setAttr ".tk[58]" -type "float3" 0 -0.087806545 0.1698738 ;
	setAttr ".tk[61]" -type "float3" 0 -0.087806545 0.1698738 ;
	setAttr ".tk[88]" -type "float3" 0 0 0.21457744 ;
	setAttr ".tk[89]" -type "float3" 0 0 0.21457744 ;
	setAttr ".tk[90]" -type "float3" 0 0 0.21457744 ;
	setAttr ".tk[91]" -type "float3" 0 0 0.21457744 ;
	setAttr ".tk[92]" -type "float3" 0 0 0.21457744 ;
	setAttr ".tk[93]" -type "float3" 0 0 0.21457744 ;
	setAttr ".tk[94]" -type "float3" 0 0 0.21457744 ;
	setAttr ".tk[95]" -type "float3" 0 0 0.21457744 ;
	setAttr ".tk[96]" -type "float3" 0 0 0.21457744 ;
	setAttr ".tk[97]" -type "float3" 0 0 0.21457744 ;
	setAttr ".tk[98]" -type "float3" 0 0 0.21457744 ;
	setAttr ".tk[110]" -type "float3" 0 0 0.21457744 ;
	setAttr ".tk[111]" -type "float3" 0 0 0.21457744 ;
	setAttr ".tk[112]" -type "float3" 0 0 0.21457744 ;
	setAttr ".tk[113]" -type "float3" 0 0 0.21457744 ;
	setAttr ".tk[114]" -type "float3" 0 0 0.21457744 ;
	setAttr ".tk[115]" -type "float3" 0 0 0.21457744 ;
	setAttr ".tk[116]" -type "float3" 0 0 0.21457744 ;
	setAttr ".tk[117]" -type "float3" 0 0 0.21457744 ;
	setAttr ".tk[118]" -type "float3" 0 0 0.21457744 ;
	setAttr ".tk[119]" -type "float3" 0 0 0.21457744 ;
	setAttr ".tk[120]" -type "float3" 0 0 0.21457744 ;
createNode polySplitRing -n "polySplitRing85";
	rename -uid "025A3F83-4D44-E74C-A95D-70A078A987BA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[0:3]" "e[100]" "e[104]" "e[132]" "e[171]" "e[192]" "e[196]" "e[236]" "e[240]";
	setAttr ".ix" -type "matrix" 20.696721134477805 0 0 0 0 6.8157040094478578 0 0 0 0 14.874839459621764 0
		 27.394953849354906 -41.822332157503588 23.145776761899072 1;
	setAttr ".wt" 0.14745889604091644;
	setAttr ".re" 104;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyCube -n "polyCube7";
	rename -uid "0606934F-8C4B-5019-1EFE-BBA189397C96";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing86";
	rename -uid "3D24F241-664C-FAE5-06CC-66AF51DBAF70";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 15.408649619960064 0 0 0 0 15.408649619960064 0 0 0 0 15.408649619960064 0
		 0 -29.968098913651815 23.886012418261231 1;
	setAttr ".wt" 0.54720407724380493;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak41";
	rename -uid "C7E676A1-1048-7D50-4914-99B440A31784";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[2:7]" -type "float3"  0 1.35639811 -0.53825343 0
		 1.35639811 -0.53825343 0 0.61002016 -0.77508467 0 0.61002016 -0.77508467 0 -0.25118482
		 -0.3875424 0 -0.25118482 -0.3875424;
createNode polySplitRing -n "polySplitRing87";
	rename -uid "E5B380F7-F241-FCD2-EAFA-B4A5EF4AF38D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[8:9]" "e[12:13]";
	setAttr ".ix" -type "matrix" 15.408649619960064 0 0 0 0 15.408649619960064 0 0 0 0 15.408649619960064 0
		 0 -29.968098913651815 23.886012418261231 1;
	setAttr ".wt" 0.15342524647712708;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing88";
	rename -uid "45F64E02-E94D-B0B3-731F-418A6086968B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[8:9]" "e[20:21]";
	setAttr ".ix" -type "matrix" 15.408649619960064 0 0 0 0 15.408649619960064 0 0 0 0 15.408649619960064 0
		 0 -29.968098913651815 23.886012418261231 1;
	setAttr ".wt" 0.28326818346977234;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing89";
	rename -uid "FBFDD21D-F54B-A3E2-A030-6EB78AD526C6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[8:9]" "e[28:29]";
	setAttr ".ix" -type "matrix" 15.408649619960064 0 0 0 0 15.408649619960064 0 0 0 0 15.408649619960064 0
		 0 -29.968098913651815 23.886012418261231 1;
	setAttr ".wt" 0.56138670444488525;
	setAttr ".dr" no;
	setAttr ".re" 28;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing90";
	rename -uid "8C7677C9-D149-09B8-0CD7-BDA2AC65B65A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 15.408649619960064 0 0 0 0 15.408649619960064 0 0 0 0 15.408649619960064 0
		 0 -29.968098913651815 23.886012418261231 1;
	setAttr ".wt" 0.31235459446907043;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing91";
	rename -uid "A26C04A4-304C-86A6-6A89-07AB4CC0F3C1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[15]" "e[17]" "e[44:45]";
	setAttr ".ix" -type "matrix" 15.408649619960064 0 0 0 0 15.408649619960064 0 0 0 0 15.408649619960064 0
		 0 -29.968098913651815 23.886012418261231 1;
	setAttr ".wt" 0.45120859146118164;
	setAttr ".re" 44;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing92";
	rename -uid "2ADA140C-4E47-2DB2-E220-7BAB2C9D0C03";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[47]" "e[49]";
	setAttr ".ix" -type "matrix" 15.408649619960064 0 0 0 0 15.408649619960064 0 0 0 0 15.408649619960064 0
		 0 -29.968098913651815 23.886012418261231 1;
	setAttr ".wt" 0.27084067463874817;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing93";
	rename -uid "17C1EC26-3842-5F95-9D31-93A6B0265A37";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[15]" "e[17]" "e[52:53]";
	setAttr ".ix" -type "matrix" 15.408649619960064 0 0 0 0 15.408649619960064 0 0 0 0 15.408649619960064 0
		 0 -29.968098913651815 23.886012418261231 1;
	setAttr ".wt" 0.37512251734733582;
	setAttr ".re" 52;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak42";
	rename -uid "3956B8BE-C148-23E4-E1ED-92BBCF0927AF";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk";
	setAttr ".tk[6]" -type "float3" 0 0 -0.032772522 ;
	setAttr ".tk[7]" -type "float3" 0 0 -0.032772522 ;
	setAttr ".tk[10]" -type "float3" 0 -0.3303822 -0.016386261 ;
	setAttr ".tk[11]" -type "float3" 0 -0.3303822 -0.016386261 ;
	setAttr ".tk[12]" -type "float3" 0 0.035883546 0.071767092 ;
	setAttr ".tk[13]" -type "float3" 0 0.035883546 0.071767092 ;
	setAttr ".tk[14]" -type "float3" 0 -0.17205572 0.0081931297 ;
	setAttr ".tk[15]" -type "float3" 0 -0.17205572 0.0081931297 ;
	setAttr ".tk[16]" -type "float3" 0 0.035883546 0.093297221 ;
	setAttr ".tk[17]" -type "float3" 0 0.035883546 0.093297221 ;
	setAttr ".tk[18]" -type "float3" 0 -0.27583534 -0.062814005 ;
	setAttr ".tk[19]" -type "float3" 0 -0.27583534 -0.062814005 ;
	setAttr ".tk[20]" -type "float3" 0 0.0071767089 -0.021530129 ;
	setAttr ".tk[21]" -type "float3" 0 0.0071767089 -0.021530129 ;
	setAttr ".tk[22]" -type "float3" 0 -0.021848349 -0.027310435 ;
	setAttr ".tk[23]" -type "float3" 0 -0.021848349 -0.027310435 ;
	setAttr ".tk[24]" -type "float3" 0 0.032772522 0.040965654 ;
	setAttr ".tk[25]" -type "float3" 0 0.032772522 0.040965654 ;
	setAttr ".tk[26]" -type "float3" 0 -0.0081931315 -0.10104858 ;
	setAttr ".tk[27]" -type "float3" 0 -0.0081931315 -0.10104858 ;
	setAttr ".tk[30]" -type "float3" 0 -0.19408172 0.021147888 ;
	setAttr ".tk[31]" -type "float3" 0 -0.19408172 0.021147888 ;
	setAttr ".tk[32]" -type "float3" 0 0 0.011691562 ;
	setAttr ".tk[33]" -type "float3" 0 0 0.011691562 ;
	setAttr ".tk[34]" -type "float3" 0 0.0081931297 -0.021848347 ;
	setAttr ".tk[35]" -type "float3" 0 0.0081931297 -0.021848347 ;
createNode polySplitRing -n "polySplitRing94";
	rename -uid "A0119311-684E-488F-ADC1-A2BE7C8CC562";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[6:7]" "e[10:11]" "e[16]" "e[19]" "e[24]" "e[27]" "e[32]" "e[35]" "e[40]" "e[43]" "e[48]" "e[51]" "e[56]" "e[59]" "e[64]" "e[67]" "e[72]" "e[75]";
	setAttr ".ix" -type "matrix" 15.408649619960064 0 0 0 0 15.408649619960064 0 0 0 0 15.408649619960064 0
		 0 -29.968098913651815 23.886012418261231 1;
	setAttr ".wt" 0.10096993297338486;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak43";
	rename -uid "EA1781ED-734E-7051-92C5-93B459017732";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[36:37]" -type "float3"  0 0.050663427 0.058457799
		 0 0.050663427 0.058457799;
createNode polySplitRing -n "polySplitRing95";
	rename -uid "A3D24B9A-6B4F-2D3C-5222-55BB58D14F50";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[10:11]" "e[19]" "e[27]" "e[35]" "e[43]" "e[51]" "e[59]" "e[67]" "e[75:77]" "e[79]" "e[81]" "e[83]" "e[85]" "e[87]" "e[89]" "e[91]" "e[93]";
	setAttr ".ix" -type "matrix" 15.408649619960064 0 0 0 0 15.408649619960064 0 0 0 0 15.408649619960064 0
		 0 -29.968098913651815 23.886012418261231 1;
	setAttr ".wt" 0.088549815118312836;
	setAttr ".re" 76;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing96";
	rename -uid "ECEC7252-8F4E-4320-C37F-6ABC66B6E378";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[10:11]" "e[19]" "e[27]" "e[35]" "e[43]" "e[51]" "e[59]" "e[67]" "e[75]" "e[116:117]" "e[119]" "e[121]" "e[123]" "e[125]" "e[127]" "e[129]" "e[131]" "e[133]";
	setAttr ".ix" -type "matrix" 15.408649619960064 0 0 0 0 15.408649619960064 0 0 0 0 15.408649619960064 0
		 0 -29.968098913651815 23.886012418261231 1;
	setAttr ".wt" 0.1304440051317215;
	setAttr ".re" 116;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing97";
	rename -uid "39ADFBF1-1B43-0BFA-1646-72BAD506C1C7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[10:11]" "e[19]" "e[27]" "e[35]" "e[43]" "e[51]" "e[59]" "e[67]" "e[75]" "e[156:157]" "e[159]" "e[161]" "e[163]" "e[165]" "e[167]" "e[169]" "e[171]" "e[173]";
	setAttr ".ix" -type "matrix" 15.408649619960064 0 0 0 0 15.408649619960064 0 0 0 0 15.408649619960064 0
		 0 -29.968098913651815 23.886012418261231 1;
	setAttr ".wt" 0.27984744310379028;
	setAttr ".re" 156;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing98";
	rename -uid "DEABFEBE-FA4D-1EAE-9F80-15AFDD9F6A60";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[10:11]" "e[19]" "e[27]" "e[35]" "e[43]" "e[51]" "e[59]" "e[67]" "e[75]" "e[196:197]" "e[199]" "e[201]" "e[203]" "e[205]" "e[207]" "e[209]" "e[211]" "e[213]";
	setAttr ".ix" -type "matrix" 15.408649619960064 0 0 0 0 15.408649619960064 0 0 0 0 15.408649619960064 0
		 0 -29.968098913651815 23.886012418261231 1;
	setAttr ".wt" 0.25068125128746033;
	setAttr ".re" 196;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing99";
	rename -uid "D5CC0E99-9F48-D260-BC81-A8A6A20F9EB8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[10:11]" "e[19]" "e[27]" "e[35]" "e[43]" "e[51]" "e[59]" "e[67]" "e[75]" "e[236:237]" "e[239]" "e[241]" "e[243]" "e[245]" "e[247]" "e[249]" "e[251]" "e[253]";
	setAttr ".ix" -type "matrix" 15.408649619960064 0 0 0 0 15.408649619960064 0 0 0 0 15.408649619960064 0
		 0 -29.968098913651815 23.886012418261231 1;
	setAttr ".wt" 0.41626548767089844;
	setAttr ".re" 236;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing100";
	rename -uid "77BA90F9-D64E-84CC-C955-13B3C24410BA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[10:11]" "e[19]" "e[27]" "e[35]" "e[43]" "e[51]" "e[59]" "e[67]" "e[75]" "e[276:277]" "e[279]" "e[281]" "e[283]" "e[285]" "e[287]" "e[289]" "e[291]" "e[293]";
	setAttr ".ix" -type "matrix" 15.408649619960064 0 0 0 0 15.408649619960064 0 0 0 0 15.408649619960064 0
		 0 -29.968098913651815 23.886012418261231 1;
	setAttr ".wt" 0.41040602326393127;
	setAttr ".re" 276;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing101";
	rename -uid "7CAC5E66-C648-C1CB-B582-D08AEA2A9DB0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[156:157]" "e[159]" "e[161]" "e[163]" "e[165]" "e[167]" "e[169]" "e[171]" "e[173]" "e[215]" "e[217]" "e[219]" "e[221]" "e[223]" "e[225]" "e[227]" "e[229]" "e[231]" "e[233]";
	setAttr ".ix" -type "matrix" 15.408649619960064 0 0 0 0 15.408649619960064 0 0 0 0 15.408649619960064 0
		 0 -29.968098913651815 23.886012418261231 1;
	setAttr ".wt" 0.26203256845474243;
	setAttr ".re" 156;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak44";
	rename -uid "D6DB8CA7-924C-5F1A-A263-1CA7777E851B";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[40]" -type "float3" 0 0.14029877 -0.027280308 ;
	setAttr ".tk[41]" -type "float3" 0 0.14029877 -0.027280308 ;
	setAttr ".tk[42]" -type "float3" 0 -0.050663427 0.070149355 ;
	setAttr ".tk[59]" -type "float3" 0 -0.050663427 0.070149355 ;
	setAttr ".tk[60]" -type "float3" 0 -0.15199032 0.062354986 ;
	setAttr ".tk[61]" -type "float3" 0 -0.15199032 0.062354986 ;
	setAttr ".tk[62]" -type "float3" 0 -0.14809315 0.07794375 ;
	setAttr ".tk[79]" -type "float3" 0 -0.14809315 0.07794375 ;
	setAttr ".tk[80]" -type "float3" 0 -0.21434537 0.085738115 ;
	setAttr ".tk[81]" -type "float3" 0 -0.21434537 0.085738115 ;
	setAttr ".tk[82]" -type "float3" 0 -0.21434537 0.085738115 ;
	setAttr ".tk[99]" -type "float3" 0 -0.21434537 0.085738115 ;
	setAttr ".tk[100]" -type "float3" 0 -0.21434537 0.085738122 ;
	setAttr ".tk[101]" -type "float3" 0 -0.21434537 0.085738122 ;
	setAttr ".tk[102]" -type "float3" 0 -0.21434537 0.085738122 ;
	setAttr ".tk[119]" -type "float3" 0 -0.21434537 0.085738122 ;
	setAttr ".tk[120]" -type "float3" 0 -0.30398059 0.12471001 ;
	setAttr ".tk[121]" -type "float3" 0 -0.30398059 0.12471001 ;
	setAttr ".tk[122]" -type "float3" 0 -0.30398059 0.12471001 ;
	setAttr ".tk[139]" -type "float3" 0 -0.30398059 0.12471001 ;
	setAttr ".tk[140]" -type "float3" 0 -0.10522404 0.074046552 ;
	setAttr ".tk[141]" -type "float3" 0 -0.10522404 0.074046552 ;
	setAttr ".tk[142]" -type "float3" 0 -0.10522404 0.074046552 ;
	setAttr ".tk[159]" -type "float3" 0 -0.10522404 0.074046552 ;
	setAttr ".tk[160]" -type "float3" 0 -0.2572144 0 ;
	setAttr ".tk[161]" -type "float3" 0 -0.2572144 0 ;
	setAttr ".tk[162]" -type "float3" 0 -0.2572144 0 ;
	setAttr ".tk[179]" -type "float3" 0 -0.2572144 0 ;
createNode polyMirror -n "polyMirror4";
	rename -uid "CEACF76F-D146-2261-648B-E8A067A2B6F0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 20.09468439292721 0 0 0 0 15.404610036212164 0.35280694852412148 0
		 0 -0.35280694852412148 15.404610036212164 0 25.237931914039027 -23.833867081082438 23.626836586721062 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 37.86490993109566 -16.541150612482433 18.362415316660314 ;
createNode polyTweak -n "polyTweak45";
	rename -uid "C571CACF-7D41-603B-C0F5-63981CE6DE94";
	setAttr ".uopa" yes;
	setAttr -s 164 ".tk";
	setAttr ".tk[0]" -type "float3" -0.044410244 -0.23543471 0.070283182 ;
	setAttr ".tk[1]" -type "float3" 0.044410244 -0.23543471 0.070283182 ;
	setAttr ".tk[2]" -type "float3" -0.041858241 -0.089772478 0.077898599 ;
	setAttr ".tk[3]" -type "float3" 0.041858241 -0.089772478 0.077898599 ;
	setAttr ".tk[4]" -type "float3" -0.041858241 0 0 ;
	setAttr ".tk[5]" -type "float3" 0.041858241 0 0 ;
	setAttr ".tk[6]" -type "float3" -0.044410244 -0.23543471 0.012939801 ;
	setAttr ".tk[7]" -type "float3" 0.044410244 -0.23543471 0.012939801 ;
	setAttr ".tk[8]" -type "float3" 0.029527709 0 0 ;
	setAttr ".tk[9]" -type "float3" -0.029527709 0 0 ;
	setAttr ".tk[10]" -type "float3" -0.029527709 0 0 ;
	setAttr ".tk[11]" -type "float3" 0.029527709 0 0 ;
	setAttr ".tk[16]" -type "float3" 0.041858241 0 0 ;
	setAttr ".tk[17]" -type "float3" -0.041858241 0 0 ;
	setAttr ".tk[18]" -type "float3" -0.041858241 0 0 ;
	setAttr ".tk[19]" -type "float3" 0.041858241 0 0 ;
	setAttr ".tk[24]" -type "float3" 0.10633712 0 0 ;
	setAttr ".tk[25]" -type "float3" -0.044046015 0 0 ;
	setAttr ".tk[26]" -type "float3" -0.044046015 0 0 ;
	setAttr ".tk[27]" -type "float3" 0.10633712 0 0 ;
	setAttr ".tk[28]" -type "float3" 0.12837404 0 0 ;
	setAttr ".tk[29]" -type "float3" -0.052808486 0 0 ;
	setAttr ".tk[30]" -type "float3" -0.052808486 0 0 ;
	setAttr ".tk[31]" -type "float3" 0.12837404 0 0 ;
	setAttr ".tk[32]" -type "float3" 0.035804078 0 0 ;
	setAttr ".tk[33]" -type "float3" 0.0050719744 0 0 ;
	setAttr ".tk[34]" -type "float3" 0.0050719744 0 0 ;
	setAttr ".tk[35]" -type "float3" 0.035804078 0 0 ;
	setAttr ".tk[36]" -type "float3" 0.11490739 0 0 ;
	setAttr ".tk[37]" -type "float3" -0.010814667 0 0 ;
	setAttr ".tk[38]" -type "float3" -0.010814667 0 0 ;
	setAttr ".tk[39]" -type "float3" 0.11490739 0 0 ;
	setAttr ".tk[40]" -type "float3" 0.041858241 0.001736088 0.075802803 ;
	setAttr ".tk[41]" -type "float3" -0.041858241 0.001736088 0.075802803 ;
	setAttr ".tk[43]" -type "float3" -0.041858241 0 0 ;
	setAttr ".tk[45]" -type "float3" -0.029527709 0 0 ;
	setAttr ".tk[46]" -type "float3" -0.010814667 0 0 ;
	setAttr ".tk[47]" -type "float3" -0.052808486 0 0 ;
	setAttr ".tk[48]" -type "float3" -0.044046015 0 0 ;
	setAttr ".tk[49]" -type "float3" 0.0050719744 0.024006473 0 ;
	setAttr ".tk[50]" -type "float3" -0.044410244 -0.21142823 0.064493224 ;
	setAttr ".tk[51]" -type "float3" 0.044410244 -0.21142823 0.064493224 ;
	setAttr ".tk[52]" -type "float3" 0.035804078 0.024006473 0 ;
	setAttr ".tk[53]" -type "float3" 0.10633712 0 0 ;
	setAttr ".tk[54]" -type "float3" 0.12837404 0 0 ;
	setAttr ".tk[55]" -type "float3" 0.11490739 0 0 ;
	setAttr ".tk[56]" -type "float3" 0.029527709 0 0 ;
	setAttr ".tk[58]" -type "float3" 0.041858241 0 0 ;
	setAttr ".tk[60]" -type "float3" 0.041858241 0 0 ;
	setAttr ".tk[61]" -type "float3" -0.041858241 0 0 ;
	setAttr ".tk[63]" -type "float3" -0.041858241 0 0 ;
	setAttr ".tk[65]" -type "float3" -0.029527709 0 0 ;
	setAttr ".tk[66]" -type "float3" -0.010814667 0 0 ;
	setAttr ".tk[67]" -type "float3" -0.052808486 0 0 ;
	setAttr ".tk[68]" -type "float3" -0.044046015 0 0 ;
	setAttr ".tk[69]" -type "float3" 0.0050719744 -0.027007284 -0.036009714 ;
	setAttr ".tk[70]" -type "float3" -0.044410244 -0.26244202 0.022464611 ;
	setAttr ".tk[71]" -type "float3" 0.044410244 -0.26244202 0.022464611 ;
	setAttr ".tk[72]" -type "float3" 0.035804078 -0.027007284 -0.036009714 ;
	setAttr ".tk[73]" -type "float3" 0.10633712 0 0 ;
	setAttr ".tk[74]" -type "float3" 0.12837404 0 0 ;
	setAttr ".tk[75]" -type "float3" 0.11490739 0 0 ;
	setAttr ".tk[76]" -type "float3" 0.029527709 0 0 ;
	setAttr ".tk[78]" -type "float3" 0.041858241 0 0 ;
	setAttr ".tk[80]" -type "float3" 0.041858241 0 0 ;
	setAttr ".tk[81]" -type "float3" -0.041858241 0 0 ;
	setAttr ".tk[82]" -type "float3" 0 -0.015588748 0.062354993 ;
	setAttr ".tk[83]" -type "float3" -0.041858241 0 0 ;
	setAttr ".tk[85]" -type "float3" -0.029527709 0 0 ;
	setAttr ".tk[86]" -type "float3" -0.010814667 0 0 ;
	setAttr ".tk[87]" -type "float3" -0.052808486 0 0 ;
	setAttr ".tk[88]" -type "float3" -0.044046015 0 0 ;
	setAttr ".tk[89]" -type "float3" 0.0050719744 0.063017003 0.015004048 ;
	setAttr ".tk[90]" -type "float3" -0.044410244 -0.17241767 0.069408633 ;
	setAttr ".tk[91]" -type "float3" 0.044410244 -0.17241767 0.069408633 ;
	setAttr ".tk[92]" -type "float3" 0.035804078 0.063017003 0.015004048 ;
	setAttr ".tk[93]" -type "float3" 0.10633712 0 0 ;
	setAttr ".tk[94]" -type "float3" 0.12837404 0 0 ;
	setAttr ".tk[95]" -type "float3" 0.11490739 0 0 ;
	setAttr ".tk[96]" -type "float3" 0.029527709 0 0 ;
	setAttr ".tk[98]" -type "float3" 0.041858241 0 0 ;
	setAttr ".tk[99]" -type "float3" 0 -0.015588748 0.062354993 ;
	setAttr ".tk[100]" -type "float3" 0.041858241 0 0 ;
	setAttr ".tk[101]" -type "float3" -0.041858241 0 0 ;
	setAttr ".tk[103]" -type "float3" -0.041858241 0 0 ;
	setAttr ".tk[105]" -type "float3" -0.029527709 0 0 ;
	setAttr ".tk[106]" -type "float3" -0.010814667 0 0 ;
	setAttr ".tk[107]" -type "float3" -0.052808486 0 0 ;
	setAttr ".tk[108]" -type "float3" -0.044046015 0 0 ;
	setAttr ".tk[109]" -type "float3" 0.0050719744 0.0090024285 0 ;
	setAttr ".tk[110]" -type "float3" -0.044410244 -0.22643229 0.042364534 ;
	setAttr ".tk[111]" -type "float3" 0.044410244 -0.22643229 0.042364534 ;
	setAttr ".tk[112]" -type "float3" 0.035804078 0.0090024285 0 ;
	setAttr ".tk[113]" -type "float3" 0.10633712 0 0 ;
	setAttr ".tk[114]" -type "float3" 0.12837404 0 0 ;
	setAttr ".tk[115]" -type "float3" 0.11490739 0 0 ;
	setAttr ".tk[116]" -type "float3" 0.029527709 0 0 ;
	setAttr ".tk[118]" -type "float3" 0.041858241 0 0 ;
	setAttr ".tk[120]" -type "float3" 0.041858241 0 0 ;
	setAttr ".tk[121]" -type "float3" -0.041858241 0 0 ;
	setAttr ".tk[123]" -type "float3" -0.041858241 0 0 ;
	setAttr ".tk[125]" -type "float3" -0.029527709 0 0 ;
	setAttr ".tk[126]" -type "float3" -0.010814667 0 0 ;
	setAttr ".tk[127]" -type "float3" -0.052808486 0 0 ;
	setAttr ".tk[128]" -type "float3" -0.044046015 0.0090024285 0.054014578 ;
	setAttr ".tk[129]" -type "float3" 0.0050719744 0.093025103 0.027007284 ;
	setAttr ".tk[130]" -type "float3" -0.044410244 -0.14240955 0.063085951 ;
	setAttr ".tk[131]" -type "float3" 0.044410244 -0.14240955 0.063085951 ;
	setAttr ".tk[132]" -type "float3" 0.035804078 0.093025103 0.027007284 ;
	setAttr ".tk[133]" -type "float3" 0.10633712 0.0090024285 0.054014578 ;
	setAttr ".tk[134]" -type "float3" 0.12837404 0 0 ;
	setAttr ".tk[135]" -type "float3" 0.11490739 0 0 ;
	setAttr ".tk[136]" -type "float3" 0.029527709 0 0 ;
	setAttr ".tk[138]" -type "float3" 0.041858241 0 0 ;
	setAttr ".tk[140]" -type "float3" 0.041858241 0 0 ;
	setAttr ".tk[141]" -type "float3" -0.041858241 0 0 ;
	setAttr ".tk[143]" -type "float3" -0.041858241 0 0 ;
	setAttr ".tk[145]" -type "float3" -0.029527709 0 0 ;
	setAttr ".tk[146]" -type "float3" -0.010814667 0 0 ;
	setAttr ".tk[147]" -type "float3" -0.052808486 0 0 ;
	setAttr ".tk[148]" -type "float3" -0.044046015 0.0090024285 0.093025111 ;
	setAttr ".tk[149]" -type "float3" 0.0050719744 0.012003239 0.13803723 ;
	setAttr ".tk[150]" -type "float3" -0.044410244 -0.22343147 0.16942061 ;
	setAttr ".tk[151]" -type "float3" 0.044410244 -0.22343147 0.16942061 ;
	setAttr ".tk[152]" -type "float3" 0.035804078 0.012003239 0.13803723 ;
	setAttr ".tk[153]" -type "float3" 0.10633712 0.0090024285 0.093025111 ;
	setAttr ".tk[154]" -type "float3" 0.12837404 0 0 ;
	setAttr ".tk[155]" -type "float3" 0.11490739 0 0 ;
	setAttr ".tk[156]" -type "float3" 0.029527709 0 0 ;
	setAttr ".tk[158]" -type "float3" 0.041858241 0 0 ;
	setAttr ".tk[160]" -type "float3" 0.041858241 0 0 ;
	setAttr ".tk[161]" -type "float3" -0.041858241 0 0 ;
	setAttr ".tk[163]" -type "float3" -0.041858241 0 0 ;
	setAttr ".tk[165]" -type "float3" -0.029527709 0 0 ;
	setAttr ".tk[166]" -type "float3" -0.010814667 0 0 ;
	setAttr ".tk[167]" -type "float3" -0.052808486 0 0 ;
	setAttr ".tk[168]" -type "float3" -0.044046015 -0.0030008096 0.063017003 ;
	setAttr ".tk[169]" -type "float3" 0.0050719744 -0.039010525 -0.018004857 ;
	setAttr ".tk[170]" -type "float3" -0.044410244 -0.27444527 0.0017963713 ;
	setAttr ".tk[171]" -type "float3" 0.044410244 -0.27444527 0.0017963713 ;
	setAttr ".tk[172]" -type "float3" 0.035804078 -0.039010525 -0.018004857 ;
	setAttr ".tk[173]" -type "float3" 0.10633712 -0.0030008096 0.063017003 ;
	setAttr ".tk[174]" -type "float3" 0.12837404 0 0 ;
	setAttr ".tk[175]" -type "float3" 0.11490739 0 0 ;
	setAttr ".tk[176]" -type "float3" 0.029527709 0 0 ;
	setAttr ".tk[178]" -type "float3" 0.041858241 0 0 ;
	setAttr ".tk[180]" -type "float3" 0.041858241 -0.09353251 0.035074685 ;
	setAttr ".tk[181]" -type "float3" -0.041858241 -0.09353251 0.035074685 ;
	setAttr ".tk[182]" -type "float3" 0 -0.09353251 0.035074685 ;
	setAttr ".tk[183]" -type "float3" -0.041858241 0 0 ;
	setAttr ".tk[185]" -type "float3" -0.029527709 0 0 ;
	setAttr ".tk[186]" -type "float3" -0.010814667 0 0 ;
	setAttr ".tk[187]" -type "float3" -0.052808486 0 0 ;
	setAttr ".tk[188]" -type "float3" -0.044046015 0 0 ;
	setAttr ".tk[189]" -type "float3" 0.0050719744 0 0 ;
	setAttr ".tk[190]" -type "float3" -0.044410244 -0.23543471 0.050802667 ;
	setAttr ".tk[191]" -type "float3" 0.044410244 -0.23543471 0.050802667 ;
	setAttr ".tk[192]" -type "float3" 0.035804078 0 0 ;
	setAttr ".tk[193]" -type "float3" 0.10633712 0 0 ;
	setAttr ".tk[194]" -type "float3" 0.12837404 0 0 ;
	setAttr ".tk[195]" -type "float3" 0.11490739 0 0 ;
	setAttr ".tk[196]" -type "float3" 0.029527709 0 0 ;
	setAttr ".tk[198]" -type "float3" 0.041858241 0 0 ;
	setAttr ".tk[199]" -type "float3" 0 -0.09353251 0.035074685 ;
createNode polyMirror -n "polyMirror5";
	rename -uid "75288FD8-C247-2B3F-CDCA-ACA8DF0127BD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 20.696721134477805 0 0 0 0 6.8157040094478578 0 0 0 0 18.516260425435387 0
		 25.574572953400576 -40.317685236147241 21.350867038302574 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 35.922933520639475 -38.723405668569328 21.350867038302574 ;
createNode polyTweak -n "polyTweak46";
	rename -uid "F47C90A2-D34E-32DC-1691-CC825E655A5F";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.1213917 -0.10145658 ;
	setAttr ".tk[1]" -type "float3" 0 0.1213917 -0.10145658 ;
	setAttr ".tk[2]" -type "float3" 0 0 -0.15732957 ;
	setAttr ".tk[3]" -type "float3" 0 0 -0.15732957 ;
	setAttr ".tk[4]" -type "float3" 0 0 0.15732957 ;
	setAttr ".tk[5]" -type "float3" 0 0 0.15732957 ;
	setAttr ".tk[6]" -type "float3" 0 0.1213917 0.15732957 ;
	setAttr ".tk[7]" -type "float3" 0 0.1213917 0.15732957 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.15732957 ;
	setAttr ".tk[53]" -type "float3" 0 0 0.15732957 ;
	setAttr ".tk[63]" -type "float3" 0 0 0.15732957 ;
	setAttr ".tk[64]" -type "float3" 0 0 -0.15732957 ;
	setAttr ".tk[66]" -type "float3" 0 0 -0.15732957 ;
	setAttr ".tk[67]" -type "float3" 0 0 0.15732957 ;
	setAttr ".tk[77]" -type "float3" 0 0 0.15732957 ;
	setAttr ".tk[78]" -type "float3" 0 0 -0.15732957 ;
	setAttr ".tk[88]" -type "float3" 0 0 0.089810818 ;
	setAttr ".tk[98]" -type "float3" 0 0 0.089810818 ;
	setAttr ".tk[99]" -type "float3" 0 0 -0.15732957 ;
	setAttr ".tk[109]" -type "float3" 0 0 -0.15732957 ;
	setAttr ".tk[110]" -type "float3" 0 0 0.089810818 ;
	setAttr ".tk[120]" -type "float3" 0 0 0.089810818 ;
	setAttr ".tk[121]" -type "float3" 0 0 -0.15732957 ;
	setAttr ".tk[131]" -type "float3" 0 0 -0.15732957 ;
createNode polySplitRing -n "polySplitRing102";
	rename -uid "F035F0A8-6647-DD64-6A72-3EAAE0E8AC4E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[26]" "e[30]" "e[34]" "e[38]" "e[42]" "e[46]" "e[50]" "e[66]" "e[79]" "e[94]" "e[107]";
	setAttr ".ix" -type "matrix" 36.764276844333843 0 0 0 0 36.764276844333843 0 0 0 0 36.764276844333843 0
		 0 11.561456537644371 0 1;
	setAttr ".wt" 0.49769237637519836;
	setAttr ".dr" no;
	setAttr ".re" 50;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak47";
	rename -uid "5E702167-C541-E6C7-474B-C3BC54E0B151";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[8]" -type "float3" -0.11393057 0 0 ;
	setAttr ".tk[9]" -type "float3" 0.11393057 0 0 ;
	setAttr ".tk[10]" -type "float3" 0.20368527 0 0 ;
	setAttr ".tk[11]" -type "float3" -0.20368527 0 0 ;
	setAttr ".tk[29]" -type "float3" -0.034879036 0 0 ;
	setAttr ".tk[30]" -type "float3" -0.20341863 0 -0.24700487 ;
	setAttr ".tk[31]" -type "float3" -0.2050745 0.14026079 -0.070216037 ;
	setAttr ".tk[32]" -type "float3" -0.13465899 0.028178304 -0.085999481 ;
	setAttr ".tk[33]" -type "float3" -0.1347753 0.028178304 -0.085999481 ;
	setAttr ".tk[36]" -type "float3" 0.13477531 0.028178304 -0.085999481 ;
	setAttr ".tk[37]" -type "float3" 0.13465899 0.028178304 -0.085999481 ;
	setAttr ".tk[38]" -type "float3" 0.20507453 0.14026079 -0.070216037 ;
	setAttr ".tk[39]" -type "float3" 0.20341873 0 -0.24700487 ;
	setAttr ".tk[40]" -type "float3" 0.034879044 0 0 ;
	setAttr ".tk[43]" -type "float3" -0.0025617247 0 0 ;
	setAttr ".tk[44]" -type "float3" -0.098004639 0 -0.24700487 ;
	setAttr ".tk[45]" -type "float3" -0.16823594 0 0 ;
	setAttr ".tk[46]" -type "float3" -0.13589355 0 0 ;
	setAttr ".tk[47]" -type "float3" -0.14361815 0 0 ;
	setAttr ".tk[50]" -type "float3" 0.14361815 0 0 ;
	setAttr ".tk[51]" -type "float3" 0.13589355 0 0 ;
	setAttr ".tk[52]" -type "float3" 0.16823594 0 0 ;
	setAttr ".tk[53]" -type "float3" 0.098004691 0 -0.24700487 ;
	setAttr ".tk[54]" -type "float3" 0.0025617247 0 0 ;
createNode polyExtrudeVertex -n "polyChamfer1";
	rename -uid "F4F5DA48-6448-B11F-C7F9-9CBB25BF43D0";
	setAttr ".ics" -type "componentList" 1 "vtx[64:65]";
	setAttr ".ix" -type "matrix" 36.764276844333843 0 0 0 0 36.764276844333843 0 0 0 0 36.764276844333843 0
		 0 11.561456537644371 0 1;
	setAttr -l on ".l";
	setAttr ".w" 0.25;
	setAttr -l on ".d";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "F02CA4FD-7D48-6419-E239-5FAF1C7FC27D";
	setAttr ".dc" -type "componentList" 6 "e[123]" "e[125:126]" "e[128]" "e[144:145]" "e[147]" "e[150]";
createNode polyBevel3 -n "polyBevel2";
	rename -uid "E9571A46-E649-2992-9721-04801C82EDCE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[144:151]";
	setAttr ".ix" -type "matrix" 36.764276844333843 0 0 0 0 36.764276844333843 0 0 0 0 36.764276844333843 0
		 0 11.561456537644371 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyTweak -n "polyTweak48";
	rename -uid "22FE6D27-5042-5F4D-4CCD-81871F7AD840";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[72]" -type "float3" 0.025658946 0 0 ;
	setAttr ".tk[73]" -type "float3" 0.018579721 0 0 ;
	setAttr ".tk[74]" -type "float3" -0.025658946 0 0 ;
	setAttr ".tk[76]" -type "float3" -0.017902358 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "CD7368BE-A140-66E4-A036-5793396B5F32";
	setAttr ".ics" -type "componentList" 1 "f[74]";
	setAttr ".ix" -type "matrix" 36.764276844333843 0 0 0 0 36.764276844333843 0 0 0 0 36.764276844333843 0
		 0 11.561456537644371 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.021226101 38.782963 -1.0521461 ;
	setAttr ".rs" 147701358;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2096909633905102 37.704292104130047 -4.8013807884797215 ;
	setAttr ".cbx" -type "double3" 2.2521431640280101 39.861630749530569 2.6970885622055465 ;
createNode polyTweak -n "polyTweak49";
	rename -uid "5563EE93-AA4F-600F-3A76-8C9260012706";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[72]" -type "float3" 0 0.0085906861 0.0040190797 ;
	setAttr ".tk[75]" -type "float3" -3.6379788e-012 0 -3.7252903e-009 ;
	setAttr ".tk[76]" -type "float3" 0 -1.8626451e-009 1.8626451e-009 ;
	setAttr ".tk[78]" -type "float3" 0 0.0085906871 0.0040190816 ;
	setAttr ".tk[80]" -type "float3" 0 0.011061713 -0.011465173 ;
	setAttr ".tk[83]" -type "float3" 3.6379788e-012 0 1.8626451e-009 ;
	setAttr ".tk[84]" -type "float3" 0 -9.3132257e-010 3.7252903e-009 ;
	setAttr ".tk[86]" -type "float3" 0 0.011061713 -0.011465173 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "9ABCC2F4-BC4F-7F21-841D-A9AD5591279B";
	setAttr ".ics" -type "componentList" 1 "f[76]";
	setAttr ".ix" -type "matrix" 36.764276844333843 0 0 0 0 36.764276844333843 0 0 0 0 36.764276844333843 0
		 0 11.561456537644371 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.058409818 27.927067 -25.041708 ;
	setAttr ".rs" 1496965236;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5943668820733201 24.770272380399383 -28.24837794176787 ;
	setAttr ".cbx" -type "double3" 1.7111865137753881 31.0838623344228 -21.835039025702475 ;
createNode polyTweak -n "polyTweak50";
	rename -uid "23EC2405-4040-3C35-0C16-CF9E5D849DE2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[88:91]" -type "float3"  -0.040997699 0.33495489 -0.092401445
		 0.00031530907 0.33495489 -0.11213094 1.137426e-006 0.33495489 -0.035757098 0.040997699
		 0.33495489 -0.09243232;
createNode lambert -n "CrystalsNRocks:lambert2";
	rename -uid "64112730-C94E-1C6C-C199-009868A08EAC";
createNode shadingEngine -n "CrystalsNRocks:pCube1SG";
	rename -uid "C57E9278-E14A-1085-39B7-EBA48298BAE8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "92ED9221-A347-DC12-4687-CCB7111ED76D";
createNode partition -n "mtorPartition";
	rename -uid "0DAC3740-6147-E58D-44E4-F1BDCCC130C1";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode lambert -n "CrystalsNRocks:lambert3";
	rename -uid "829571D5-A245-86D6-1505-0AAB39DADBED";
createNode shadingEngine -n "CrystalsNRocks:pCube2SG";
	rename -uid "7EB27D9A-6A44-7EE0-4F4A-609FDC55A371";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "869DE94E-944A-BF48-AB4E-5A8CE2418282";
createNode lambert -n "lambert2";
	rename -uid "D799F0C0-334A-1DB8-6CE2-41997F691DE3";
createNode shadingEngine -n "CrystalsNRocks:pSolid6SG";
	rename -uid "900B6B11-4744-8E41-CB7D-2388F481C6C2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "17BF5799-CC4E-A2C5-2644-6C82294567C4";
createNode lambert -n "CrystalsNRocks:lambert4";
	rename -uid "E6085FF0-024A-5BB4-2789-11B8F71C38B8";
createNode shadingEngine -n "CrystalsNRocks:pCube1SG1";
	rename -uid "77D043F4-DB4D-BBD0-5324-1D978FC75D03";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "2D7F972E-F448-D7DF-9FFB-E1AC67FE3D10";
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "8058B0DB-0842-6005-AC0B-48AC17D0AF4A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 36.764276844333843 0 0 0 0 36.764276844333843 0 0 0 0 36.764276844333843 0
		 0 11.561456537644371 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak51";
	rename -uid "6916F93E-0E47-D030-7A53-77B12091A8A7";
	setAttr ".uopa" yes;
	setAttr -s 19 ".tk";
	setAttr ".tk[72]" -type "float3" 0.026402818 0.084474184 -0.042729683 ;
	setAttr ".tk[73]" -type "float3" 0.041929707 -1.8626451e-009 0 ;
	setAttr ".tk[74]" -type "float3" 0 -0.012500567 0.047502153 ;
	setAttr ".tk[75]" -type "float3" 0 0.046972495 -0.0077280849 ;
	setAttr ".tk[76]" -type "float3" 0 0.036972009 -0.027728999 ;
	setAttr ".tk[78]" -type "float3" -0.026450679 0.084474184 -0.042729683 ;
	setAttr ".tk[79]" -type "float3" -0.041929707 -1.8626451e-009 0 ;
	setAttr ".tk[80]" -type "float3" 0.019994814 0.066973366 -0.031365294 ;
	setAttr ".tk[81]" -type "float3" 0.032453217 -1.8626451e-009 0 ;
	setAttr ".tk[83]" -type "float3" 0 0.036972005 -0.013864502 ;
	setAttr ".tk[84]" -type "float3" 0 0.036972005 -0.013864502 ;
	setAttr ".tk[86]" -type "float3" -0.019161742 0.066973366 -0.031365294 ;
	setAttr ".tk[87]" -type "float3" -0.031561282 -1.8626451e-009 0 ;
	setAttr ".tk[88]" -type "float3" 0 1.1175871e-008 0 ;
	setAttr ".tk[91]" -type "float3" 0 1.1175871e-008 0 ;
	setAttr ".tk[92]" -type "float3" -0.024988264 0.31908467 -0.1895413 ;
	setAttr ".tk[93]" -type "float3" 0.00025526964 0.2896421 -0.26569203 ;
	setAttr ".tk[94]" -type "float3" 0.00013814753 0.38509697 -0.16872905 ;
	setAttr ".tk[95]" -type "float3" 0.024988264 0.3191072 -0.18959071 ;
createNode polySoftEdge -n "polySoftEdge2";
	rename -uid "C90D9814-9347-30C6-5F6E-B1B7F454A2AE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 22.220267096720594 0 0 0 0 20.926962622579421 0 0 0 0 20.926962622579421 0
		 0 19.617725165286679 31.000743091790163 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak52";
	rename -uid "6161A007-934A-862E-D5C8-E0B967F00DD4";
	setAttr ".uopa" yes;
	setAttr -s 25 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.048489265 0 ;
	setAttr ".tk[1]" -type "float3" 0 0.048489265 0 ;
	setAttr ".tk[2]" -type "float3" 0 0.048489265 -0.013576994 ;
	setAttr ".tk[3]" -type "float3" 0 0.048489265 -0.013576994 ;
	setAttr ".tk[12]" -type "float3" 0 0.048489265 -0.013576994 ;
	setAttr ".tk[17]" -type "float3" 0 0.048489265 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.048489265 -0.013576994 ;
	setAttr ".tk[23]" -type "float3" 0 0.048489265 0 ;
	setAttr ".tk[34]" -type "float3" 0 0.048489265 0 ;
	setAttr ".tk[35]" -type "float3" 0 0.048489265 0 ;
	setAttr ".tk[36]" -type "float3" 0 0.048489265 0 ;
	setAttr ".tk[37]" -type "float3" 0 0.048489265 0 ;
	setAttr ".tk[45]" -type "float3" 0 0.048489265 -0.013576994 ;
	setAttr ".tk[46]" -type "float3" 0 0.048489265 0 ;
	setAttr ".tk[47]" -type "float3" 0 0.048489265 0 ;
	setAttr ".tk[91]" -type "float3" 0 0.048489265 0 ;
	setAttr ".tk[92]" -type "float3" 0 0.048489265 0 ;
	setAttr ".tk[93]" -type "float3" 0 0.048489265 0 ;
	setAttr ".tk[94]" -type "float3" 0 0.048489265 0 ;
	setAttr ".tk[95]" -type "float3" 0 0.048489265 0 ;
	setAttr ".tk[107]" -type "float3" 0 0.048489265 0 ;
	setAttr ".tk[108]" -type "float3" 0 0.048489265 0 ;
	setAttr ".tk[109]" -type "float3" 0 0.048489265 0 ;
	setAttr ".tk[110]" -type "float3" 0 0.048489265 0 ;
	setAttr ".tk[111]" -type "float3" 0 0.048489265 0 ;
createNode polySoftEdge -n "polySoftEdge3";
	rename -uid "9B9F1D62-DA4C-E763-ADDF-37A37B9BFB8C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak53";
	rename -uid "43439FB4-5342-36B7-2737-0497A1CBA13A";
	setAttr ".uopa" yes;
	setAttr -s 52 ".tk";
	setAttr ".tk[4]" -type "float3" 0 0 0.028486457 ;
	setAttr ".tk[5]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[6]" -type "float3" 0 0 0.030815126 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[11]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[15]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[54]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[55]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[60]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[61]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[105]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[106]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[121]" -type "float3" 0 0 0.028486457 ;
	setAttr ".tk[122]" -type "float3" 0 0 0.028486457 ;
	setAttr ".tk[135]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[136]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[151]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[152]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[167]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[168]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[183]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[184]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[199]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[200]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[215]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[216]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[231]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[232]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[300]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[303]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[306]" -type "float3" -0.0018803724 0 0.08532577 ;
	setAttr ".tk[307]" -type "float3" -0.0018803724 0 0.08532577 ;
	setAttr ".tk[310]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[311]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[314]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[315]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[316]" -type "float3" 0 -0.33989358 0.027856812 ;
	setAttr ".tk[317]" -type "float3" 0 -0.33989358 0.027856812 ;
	setAttr ".tk[318]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[319]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[320]" -type "float3" 0 -0.66719854 0.027856812 ;
	setAttr ".tk[321]" -type "float3" 0 -0.86114848 0.054576948 ;
	setAttr ".tk[322]" -type "float3" 0 -0.86114848 0.054576948 ;
	setAttr ".tk[323]" -type "float3" 0 -0.66719854 0.027856812 ;
	setAttr ".tk[325]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[326]" -type "float3" 0 0 0.064405665 ;
	setAttr ".tk[328]" -type "float3" 0 -0.32682309 0.032700833 ;
	setAttr ".tk[329]" -type "float3" 0 -0.38968393 0.064268246 ;
	setAttr ".tk[330]" -type "float3" 0 -0.38968393 0.064268246 ;
	setAttr ".tk[331]" -type "float3" 0 -0.32682309 0.032700833 ;
createNode polySoftEdge -n "polySoftEdge4";
	rename -uid "D861D758-FF48-6600-1F75-5A81405236D5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 13.826463305464079 2.9076792262815045 0 0 -3.6246621542520963 17.235827741068377 0 0
		 0 0 19.55167476822702 0 18.876283281720202 20.804433693994056 6.4049762578744378 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak54";
	rename -uid "C399E9EB-4D4F-1A3C-E91B-79A5291100F3";
	setAttr ".uopa" yes;
	setAttr -s 96 ".tk";
	setAttr ".tk[4]" -type "float3" 1.8626451e-009 0 -0.050394565 ;
	setAttr ".tk[5]" -type "float3" -1.1175871e-008 5.9604645e-008 -0.050029822 ;
	setAttr ".tk[94]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[95]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[96]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[97]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[98]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[99]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[100]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[101]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[102]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[103]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[104]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[105]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[106]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[107]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[108]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[109]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[110]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[111]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[112]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[113]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[114]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[115]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[116]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[117]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[118]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[119]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[120]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[121]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[122]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[123]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[124]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[125]" -type "float3" -4.973815 0.83908153 -0.050029822 ;
	setAttr ".tk[126]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[127]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[128]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[129]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[130]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[131]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[132]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[133]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[134]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[135]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[136]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[137]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[138]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[139]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[140]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[141]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[142]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[143]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[144]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[145]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[146]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[147]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[148]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[149]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[150]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[151]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[152]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[153]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[154]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[155]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[156]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[157]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[158]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[159]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[160]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[161]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[162]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[163]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[164]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[165]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[166]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[167]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[168]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[169]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[170]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[171]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[172]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[173]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[174]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[175]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[176]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[177]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[178]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[179]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[180]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[181]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[182]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[183]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[184]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[185]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[186]" -type "float3" -4.9738159 0.83908159 0 ;
	setAttr ".tk[187]" -type "float3" -4.9738135 0.83908159 -0.050394565 ;
createNode polySoftEdge -n "polySoftEdge5";
	rename -uid "6B4E3D64-D643-6A6C-366B-8AB96495547D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 12.779404020195582 0 -1.8022364341300769 0 0 20.864441098464752 0 0
		 2.9136110123405587 0 20.660004192160098 0 12.903261752267436 -13.181326945442109 -24.452619527716614 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak55";
	rename -uid "B11E96EE-A545-C320-145C-36ABA0F3F9C3";
	setAttr ".uopa" yes;
	setAttr -s 52 ".tk[52:103]" -type "float3"  -3.43852186 0 -0.29995292
		 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186
		 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292
		 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186
		 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292
		 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186
		 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292
		 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186
		 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292
		 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186
		 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292
		 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186
		 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292
		 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186
		 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292
		 -3.43852186 0 -0.29995292 -3.43852186 0 -0.29995292;
createNode polySoftEdge -n "polySoftEdge6";
	rename -uid "FFCA4266-A444-BDE6-ED68-31B1E89EF755";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 18.632692808969374 0 -2.6639166780483876 0 0 7.1195675677703436 0 0
		 3.7261284212064152 0 26.062303979407005 0 14.710233257018757 -40.432141440952073 -13.554738922429696 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak56";
	rename -uid "CEEC50DD-7944-ADA0-F86A-96A9BD84EEDF";
	setAttr ".uopa" yes;
	setAttr -s 58 ".tk[58:115]" -type "float3"  -2.76368141 0 -0.28248528
		 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141
		 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528
		 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141
		 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528
		 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141
		 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528
		 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141
		 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528
		 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141
		 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528
		 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141
		 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528
		 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141
		 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528
		 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141
		 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528 -2.76368141 0 -0.28248528
		 -2.76368141 0 -0.28248528;
createNode polySoftEdge -n "polySoftEdge7";
	rename -uid "11ED3D63-ED4F-DD69-9AE5-C993E3F36EBB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 20.696721134477805 0 0 0 0 6.8157040094478578 0 0 0 0 18.516260425435387 0
		 25.574572953400576 -40.317685236147241 21.350867038302574 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak57";
	rename -uid "DE15CE7F-3343-AD54-EAF4-039F23571F11";
	setAttr ".uopa" yes;
	setAttr -s 156 ".tk[156:311]" -type "float3"  -3.48297143 0 0 -3.48297143
		 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0
		 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0
		 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143
		 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0
		 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0
		 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143
		 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0
		 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0
		 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143
		 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0
		 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0
		 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143
		 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0
		 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0
		 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143
		 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0
		 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0
		 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143
		 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0
		 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0
		 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143
		 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0
		 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0
		 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143
		 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0
		 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0
		 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143
		 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0
		 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0 -3.48297143 0 0;
createNode polySoftEdge -n "polySoftEdge8";
	rename -uid "36BD4598-CF4A-1818-B85F-50B5094D4F3B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 20.09468439292721 0 0 0 0 15.404610036212164 0.35280694852412148 0
		 0 -0.35280694852412148 15.404610036212164 0 25.237931914039027 -23.833867081082438 23.626836586721062 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak58";
	rename -uid "B2EFF171-BE4B-DCBD-9BF7-5AAA90C55CA6";
	setAttr ".uopa" yes;
	setAttr -s 200 ".tk";
	setAttr ".tk[200:365]" -type "float3"  -3.78516841 0 0 -3.78516841 0 0 -3.78516841
		 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0
		 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0
		 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841
		 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0
		 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0
		 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841
		 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0
		 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0
		 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841
		 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0
		 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0
		 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841
		 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0
		 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0
		 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841
		 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0
		 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0
		 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841
		 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0
		 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0
		 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841
		 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0
		 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0
		 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841
		 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0
		 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0
		 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841
		 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0
		 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0
		 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841
		 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0;
	setAttr ".tk[366:399]" -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841
		 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0
		 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0
		 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841
		 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0
		 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0
		 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0 -3.78516841 0 0;
createNode polySoftEdge -n "polySoftEdge9";
	rename -uid "5ED11A5F-D04A-3F29-93A9-2E9BE00635A4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 36.764276844333843 0 0 0 0 36.764276844333843 0 0 0 0 36.764276844333843 0
		 0 11.561456537644371 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge10";
	rename -uid "ED17C0D6-1E41-9A17-3D93-B5AD54B6580F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 22.220267096720594 0 0 0 0 20.926962622579421 0 0 0 0 20.926962622579421 0
		 0 19.617725165286679 31.000743091790163 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge11";
	rename -uid "ACABA894-184A-6919-41A7-A68A2B7D1BF6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge12";
	rename -uid "79BBD3D4-AA45-5FDB-45CF-538C89952AE6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 13.826463305464079 2.9076792262815045 0 0 -3.6246621542520963 17.235827741068377 0 0
		 0 0 19.55167476822702 0 18.876283281720202 20.804433693994056 6.4049762578744378 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge13";
	rename -uid "B95107D4-8B4F-F248-2464-3FAF82B383E5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 12.779404020195582 0 -1.8022364341300769 0 0 20.864441098464752 0 0
		 2.9136110123405587 0 20.660004192160098 0 12.903261752267436 -13.181326945442109 -24.452619527716614 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge14";
	rename -uid "F4445883-3046-2877-5FFB-C19C8C7CA9D5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 18.632692808969374 0 -2.6639166780483876 0 0 7.1195675677703436 0 0
		 3.7261284212064152 0 26.062303979407005 0 14.710233257018757 -40.432141440952073 -13.554738922429696 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge15";
	rename -uid "D0E3865D-9A46-3A47-4F94-37A6CA30A938";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 20.696721134477805 0 0 0 0 6.8157040094478578 0 0 0 0 18.516260425435387 0
		 25.574572953400576 -40.317685236147241 21.350867038302574 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge16";
	rename -uid "CEFEBD39-1C4F-0986-A425-E7A9D5A6C09D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 20.09468439292721 0 0 0 0 15.404610036212164 0.35280694852412148 0
		 0 -0.35280694852412148 15.404610036212164 0 25.237931914039027 -23.833867081082438 23.626836586721062 1;
	setAttr ".a" 0;
createNode polyTriangulate -n "polyTriangulate1";
	rename -uid "E066BF01-4440-23F2-8600-89BE5181D1B2";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate2";
	rename -uid "B806371A-C446-1886-D531-E5B4A61F4C9B";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate3";
	rename -uid "85472B2C-B04A-DD29-0A16-07944A7A6ECC";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate4";
	rename -uid "830D37E5-F042-52D7-F25B-BE873A4EC923";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate5";
	rename -uid "F5EC59E7-B547-3B62-4E60-5EA36EC84DA5";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate6";
	rename -uid "2EEA9B94-4745-5BC1-121A-9B8FCCDED288";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate7";
	rename -uid "AD2E01FE-274A-61D5-9B22-F0AF5BB81F0B";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate8";
	rename -uid "FAF27E81-E344-23B4-C6C5-D29E0EDFCE63";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode gameFbxExporter -n "gameExporterPreset1";
	rename -uid "7C958FED-FA41-0811-0059-16A1B653F9FF";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ils" yes;
	setAttr ".ilu" yes;
	setAttr ".esi" 2;
	setAttr ".ebm" yes;
	setAttr ".inc" yes;
	setAttr ".ft" 1;
createNode gameFbxExporter -n "gameExporterPreset2";
	rename -uid "F63B21CE-D44E-CD80-CAF0-8684F681191A";
	setAttr ".pn" -type "string" "Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 2;
	setAttr ".spt" 2;
	setAttr ".ic" no;
	setAttr ".ebm" yes;
createNode polyPlane -n "polyPlane1";
	rename -uid "941BAAF2-49BE-7098-1E11-C6AEA3AE1886";
	setAttr ".cuv" 2;
createNode skinCluster -n "skinCluster1";
	rename -uid "086A776D-4CC4-419E-EE99-0FAC70C0112C";
	setAttr -s 96 ".wl";
	setAttr -s 5 ".wl[0].w";
	setAttr ".wl[0].w[0]" 0.19873443326673212;
	setAttr ".wl[0].w[1]" 0.22144206069523262;
	setAttr ".wl[0].w[2]" 0.25358650350878748;
	setAttr ".wl[0].w[3]" 0.15806139809362341;
	setAttr ".wl[0].w[26]" 0.16817560443562449;
	setAttr -s 5 ".wl[1].w";
	setAttr ".wl[1].w[0]" 0.19645235233100991;
	setAttr ".wl[1].w[1]" 0.22061948726537892;
	setAttr ".wl[1].w[16]" 0.25765778946775686;
	setAttr ".wl[1].w[17]" 0.15873726872837143;
	setAttr ".wl[1].w[26]" 0.16653310220748266;
	setAttr -s 2 ".wl[2].w[28:29]"  0.11462790170975959 0.17557700644778013;
	setAttr -s 2 ".wl[3].w[29:30]"  0.10653011230766957 0.098375231374625421;
	setAttr -s 2 ".wl[4].w[28:29]"  0.17019895791105924 0.32336721257415163;
	setAttr -s 3 ".wl[5].w[28:30]"  0.13160678388773456 0.25004453249275821 
		0.1372996353741896;
	setAttr -s 5 ".wl[6].w";
	setAttr ".wl[6].w[0]" 0.21873649951848045;
	setAttr ".wl[6].w[1]" 0.27232709181017389;
	setAttr ".wl[6].w[2]" 0.22288551238824053;
	setAttr ".wl[6].w[16]" 0.13267495018049982;
	setAttr ".wl[6].w[26]" 0.1533759461026053;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[0]" 0.2167403287051603;
	setAttr ".wl[7].w[1]" 0.27352888814152776;
	setAttr ".wl[7].w[2]" 0.13109548755885719;
	setAttr ".wl[7].w[16]" 0.22603623637305217;
	setAttr ".wl[7].w[26]" 0.15259905922140277;
	setAttr -s 3 ".wl[8].w[28:30]"  0.1982902979790504 0.25568989566228462 
		0.21489881584302725;
	setAttr -s 3 ".wl[9].w[28:30]"  0.23766263645907126 0.30664528708133698 
		0.13893778801442838;
	setAttr -s 2 ".wl[10].w[28:29]"  0.13822550183604493 0.16255765292229396;
	setAttr -s 3 ".wl[11].w";
	setAttr ".wl[11].w[29]" 0.10506945219776072;
	setAttr ".wl[11].w[30]" 0.21923682481070664;
	setAttr ".wl[11].w[32]" 0.16108569438700771;
	setAttr -s 4 ".wl[12].w[27:30]"  0.12570951630910299 0.25082089954829923 
		0.27591405641262484 0.21415966046681018;
	setAttr -s 4 ".wl[13].w[27:30]"  0.14029934406101788 0.28057332307327526 
		0.30785050519093493 0.14593167152122238;
	setAttr -s 4 ".wl[14].w";
	setAttr ".wl[14].w[2]" 0.1728436156982627;
	setAttr ".wl[14].w[3]" 0.17279921683778598;
	setAttr ".wl[14].w[28]" 0.16812674361832886;
	setAttr ".wl[14].w[29]" 0.21137019342126862;
	setAttr -s 3 ".wl[15].w";
	setAttr ".wl[15].w[29]" 0.10214567345645022;
	setAttr ".wl[15].w[30]" 0.37533855206548239;
	setAttr ".wl[15].w[32]" 0.25718457489463481;
	setAttr -s 5 ".wl[16].w";
	setAttr ".wl[16].w[0]" 0.2135899644209007;
	setAttr ".wl[16].w[1]" 0.18375560448294834;
	setAttr ".wl[16].w[16]" 0.22501100368366725;
	setAttr ".wl[16].w[17]" 0.1640534629915831;
	setAttr ".wl[16].w[26]" 0.2135899644209007;
	setAttr -s 5 ".wl[17].w";
	setAttr ".wl[17].w[0]" 0.21460159701565623;
	setAttr ".wl[17].w[1]" 0.18409017999904737;
	setAttr ".wl[17].w[2]" 0.22342163028985212;
	setAttr ".wl[17].w[3]" 0.1632849956797883;
	setAttr ".wl[17].w[26]" 0.21460159701565623;
	setAttr -s 5 ".wl[18].w";
	setAttr ".wl[18].w[0]" 0.20881515515999999;
	setAttr ".wl[18].w[1]" 0.22127200058170662;
	setAttr ".wl[18].w[2]" 0.1923997355401319;
	setAttr ".wl[18].w[26]" 0.19389301694298028;
	setAttr ".wl[18].w[27]" 0.18362009177518129;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[0]" 0.20812838212523288;
	setAttr ".wl[19].w[1]" 0.22157332074530733;
	setAttr ".wl[19].w[16]" 0.19384931738119487;
	setAttr ".wl[19].w[26]" 0.19332150987140176;
	setAttr ".wl[19].w[27]" 0.18312746987686315;
	setAttr -s 5 ".wl[20].w";
	setAttr ".wl[20].w[0]" 0.20909000975388586;
	setAttr ".wl[20].w[1]" 0.18011372833777001;
	setAttr ".wl[20].w[16]" 0.20408587751768353;
	setAttr ".wl[20].w[26]" 0.21035621280725847;
	setAttr ".wl[20].w[27]" 0.19635417158340207;
	setAttr -s 5 ".wl[21].w";
	setAttr ".wl[21].w[0]" 0.20944647100018041;
	setAttr ".wl[21].w[1]" 0.17996192184109985;
	setAttr ".wl[21].w[2]" 0.20323536669156642;
	setAttr ".wl[21].w[26]" 0.21073244389596857;
	setAttr ".wl[21].w[27]" 0.1966237965711847;
	setAttr -s 5 ".wl[22].w";
	setAttr ".wl[22].w[0]" 0.16560385857741328;
	setAttr ".wl[22].w[1]" 0.15353255702661439;
	setAttr ".wl[22].w[2]" 0.13577455448622608;
	setAttr ".wl[22].w[26]" 0.27241316415319727;
	setAttr ".wl[22].w[27]" 0.27267586575654895;
	setAttr -s 5 ".wl[23].w";
	setAttr ".wl[23].w[0]" 0.16598316149500195;
	setAttr ".wl[23].w[1]" 0.15422548268209496;
	setAttr ".wl[23].w[16]" 0.13695403744237067;
	setAttr ".wl[23].w[26]" 0.27129395048811711;
	setAttr ".wl[23].w[27]" 0.27154336789241523;
	setAttr -s 5 ".wl[24].w[26:30]"  0.13489958051555329 0.30139850345970531 
		0.30139850345970531 0.13892163791408174 0.12338177465095436;
	setAttr -s 5 ".wl[25].w[26:30]"  0.13744430478069455 0.30829062613716057 
		0.30829062613716057 0.14145986352656764 0.1045145794184167;
	setAttr -s 5 ".wl[26].w";
	setAttr ".wl[26].w[0]" 0.19618915548757357;
	setAttr ".wl[26].w[2]" 0.2282518122371065;
	setAttr ".wl[26].w[3]" 0.1967213381978144;
	setAttr ".wl[26].w[26]" 0.19624426226438207;
	setAttr ".wl[26].w[27]" 0.18259343181312335;
	setAttr -s 5 ".wl[27].w";
	setAttr ".wl[27].w[0]" 0.19326894376431999;
	setAttr ".wl[27].w[16]" 0.22574012966003215;
	setAttr ".wl[27].w[17]" 0.19462016386705921;
	setAttr ".wl[27].w[26]" 0.19332184655674725;
	setAttr ".wl[27].w[30]" 0.19304891615184128;
	setAttr -s 2 ".wl[28].w[28:29]"  0.15348713814269432 0.28701502155138309;
	setAttr -s 2 ".wl[29].w[28:29]"  0.18437216799560194 0.32799877060015287;
	setAttr -s 4 ".wl[30].w[26:29]"  0.087749145903459613 0.12452388877962976 
		0.16329017047544558 0.52790187481467854;
	setAttr -s 5 ".wl[31].w";
	setAttr ".wl[31].w[0]" 0.12918709885107374;
	setAttr ".wl[31].w[26]" 0.16786923750979979;
	setAttr ".wl[31].w[27]" 0.25876142376349887;
	setAttr ".wl[31].w[28]" 0.25876200660856363;
	setAttr ".wl[31].w[29]" 0.18542023326706403;
	setAttr -s 5 ".wl[32].w";
	setAttr ".wl[32].w[0]" 0.18039666847270336;
	setAttr ".wl[32].w[1]" 0.18019683936443248;
	setAttr ".wl[32].w[2]" 0.17680024119395335;
	setAttr ".wl[32].w[26]" 0.23130220766595536;
	setAttr ".wl[32].w[27]" 0.23130404330295548;
	setAttr -s 5 ".wl[33].w";
	setAttr ".wl[33].w[0]" 0.16980386607169451;
	setAttr ".wl[33].w[1]" 0.27278188645780288;
	setAttr ".wl[33].w[2]" 0.25187464185063757;
	setAttr ".wl[33].w[26]" 0.16627555140767353;
	setAttr ".wl[33].w[27]" 0.13926405421219151;
	setAttr -s 5 ".wl[34].w";
	setAttr ".wl[34].w[0]" 0.22136938684220672;
	setAttr ".wl[34].w[1]" 0.29076830628935685;
	setAttr ".wl[34].w[2]" 0.21599782994408095;
	setAttr ".wl[34].w[16]" 0.11937313730893169;
	setAttr ".wl[34].w[26]" 0.15249133961542388;
	setAttr -s 5 ".wl[35].w";
	setAttr ".wl[35].w[0]" 0.21863572290148026;
	setAttr ".wl[35].w[1]" 0.29217621924459819;
	setAttr ".wl[35].w[2]" 0.1178335200394565;
	setAttr ".wl[35].w[16]" 0.21987233727611308;
	setAttr ".wl[35].w[26]" 0.15148220053835182;
	setAttr -s 5 ".wl[36].w";
	setAttr ".wl[36].w[0]" 0.16826878977142951;
	setAttr ".wl[36].w[1]" 0.27336033846978658;
	setAttr ".wl[36].w[16]" 0.25491306403112618;
	setAttr ".wl[36].w[26]" 0.16483860287768293;
	setAttr ".wl[36].w[27]" 0.13861920484997486;
	setAttr -s 5 ".wl[37].w";
	setAttr ".wl[37].w[0]" 0.1804046114471691;
	setAttr ".wl[37].w[1]" 0.18128118942076649;
	setAttr ".wl[37].w[16]" 0.17821706355023503;
	setAttr ".wl[37].w[26]" 0.23004788141384599;
	setAttr ".wl[37].w[27]" 0.23004925416798344;
	setAttr -s 5 ".wl[38].w[26:30]"  0.15929580846092881 0.24430312963587658 
		0.24430362066724362 0.17653388944665752 0.17556355178929339;
	setAttr -s 4 ".wl[39].w[27:30]"  0.085956481901725432 0.11246859969876881 
		0.36417290080650533 0.36417290080650533;
	setAttr -s 3 ".wl[40].w[28:30]"  0.12690284493984466 0.22599843842882955 
		0.25574646513366539;
	setAttr -s 3 ".wl[41].w[28:30]"  0.090807097179361071 0.16980576528648619 
		0.1034570659913478;
	setAttr -s 2 ".wl[42].w[28:29]"  0.13588872856226619 0.22883120104840518;
	setAttr -s 2 ".wl[43].w[28:29]"  0.15447260082079281 0.23381959402660105;
	setAttr -s 4 ".wl[44].w[26:29]"  0.15025445396628168 0.17131600950231407 
		0.19877958348530603 0.31075295384593393;
	setAttr -s 5 ".wl[45].w";
	setAttr ".wl[45].w[0]" 0.1920456359358097;
	setAttr ".wl[45].w[2]" 0.1909693295469776;
	setAttr ".wl[45].w[26]" 0.20977764177126204;
	setAttr ".wl[45].w[27]" 0.21756552802022847;
	setAttr ".wl[45].w[28]" 0.18964186472572225;
	setAttr -s 5 ".wl[46].w";
	setAttr ".wl[46].w[0]" 0.20103622965085824;
	setAttr ".wl[46].w[1]" 0.18847268619370142;
	setAttr ".wl[46].w[2]" 0.19940651859718225;
	setAttr ".wl[46].w[26]" 0.2091891904302153;
	setAttr ".wl[46].w[27]" 0.20189537512804281;
	setAttr -s 5 ".wl[47].w";
	setAttr ".wl[47].w[0]" 0.19810626503898388;
	setAttr ".wl[47].w[1]" 0.208535326694161;
	setAttr ".wl[47].w[2]" 0.24848889220199635;
	setAttr ".wl[47].w[26]" 0.19810626503898388;
	setAttr ".wl[47].w[27]" 0.14676325102587495;
	setAttr -s 5 ".wl[48].w";
	setAttr ".wl[48].w[0]" 0.21433392690636052;
	setAttr ".wl[48].w[1]" 0.25661347820430869;
	setAttr ".wl[48].w[2]" 0.23292678081200943;
	setAttr ".wl[48].w[3]" 0.13206139802467912;
	setAttr ".wl[48].w[26]" 0.16406441605264199;
	setAttr -s 5 ".wl[49].w";
	setAttr ".wl[49].w[0]" 0.21159362206595508;
	setAttr ".wl[49].w[1]" 0.25641799211665228;
	setAttr ".wl[49].w[16]" 0.23683935512145077;
	setAttr ".wl[49].w[17]" 0.13258880886317326;
	setAttr ".wl[49].w[26]" 0.16256022183276869;
	setAttr -s 5 ".wl[50].w";
	setAttr ".wl[50].w[0]" 0.19670806046065459;
	setAttr ".wl[50].w[1]" 0.20910202513513981;
	setAttr ".wl[50].w[16]" 0.25095036367061352;
	setAttr ".wl[50].w[26]" 0.19670806046065459;
	setAttr ".wl[50].w[27]" 0.14653149027293749;
	setAttr -s 5 ".wl[51].w";
	setAttr ".wl[51].w[0]" 0.2006221832795346;
	setAttr ".wl[51].w[1]" 0.18901596191594627;
	setAttr ".wl[51].w[16]" 0.20031020493737686;
	setAttr ".wl[51].w[26]" 0.20862084642938436;
	setAttr ".wl[51].w[27]" 0.20143080343775796;
	setAttr -s 5 ".wl[52].w";
	setAttr ".wl[52].w[0]" 0.18622410401049694;
	setAttr ".wl[52].w[16]" 0.18572573913875604;
	setAttr ".wl[52].w[26]" 0.20325057901041949;
	setAttr ".wl[52].w[27]" 0.21070986063303587;
	setAttr ".wl[52].w[30]" 0.21408971720729178;
	setAttr -s 5 ".wl[53].w";
	setAttr ".wl[53].w[27]" 0.12544666483179576;
	setAttr ".wl[53].w[28]" 0.14542447852228249;
	setAttr ".wl[53].w[29]" 0.22802960465868194;
	setAttr ".wl[53].w[30]" 0.35402085384437071;
	setAttr ".wl[53].w[32]" 0.1470783981428691;
	setAttr -s 3 ".wl[54].w";
	setAttr ".wl[54].w[29]" 0.14003202098702969;
	setAttr ".wl[54].w[30]" 0.29790113315369937;
	setAttr ".wl[54].w[32]" 0.13024074910922198;
	setAttr -s 2 ".wl[55].w[29:30]"  0.12645573467948423 0.095553791779114078;
	setAttr -s 5 ".wl[56].w";
	setAttr ".wl[56].w[0]" 0.21997395442372852;
	setAttr ".wl[56].w[1]" 0.18363673749094339;
	setAttr ".wl[56].w[16]" 0.1771163569264044;
	setAttr ".wl[56].w[26]" 0.22006080739361791;
	setAttr ".wl[56].w[27]" 0.19921214376530574;
	setAttr -s 2 ".wl[57].w";
	setAttr ".wl[57].w[30]" 0.20595226794354554;
	setAttr ".wl[57].w[32]" 0.1864400334277595;
	setAttr -s 2 ".wl[58].w[29:30]"  0.16847082412847778 0.15812935406325762;
	setAttr -s 2 ".wl[59].w[28:29]"  0.12370764654712692 0.21443274161106557;
	setAttr -s 2 ".wl[60].w[28:29]"  0.12806283012284581 0.26585483233652213;
	setAttr -s 2 ".wl[61].w[28:29]"  0.12954054961672848 0.34909967045138851;
	setAttr -s 2 ".wl[62].w[28:29]"  0.14139307073029297 0.3978698382191786;
	setAttr -s 3 ".wl[63].w[28:30]"  0.22511741992425044 0.35281180273923402 
		0.14759246805847764;
	setAttr -s 5 ".wl[64].w";
	setAttr ".wl[64].w[0]" 0.15570666911168768;
	setAttr ".wl[64].w[1]" 0.14063715928399384;
	setAttr ".wl[64].w[26]" 0.2939687678737537;
	setAttr ".wl[64].w[27]" 0.2943894799219432;
	setAttr ".wl[64].w[28]" 0.11529792380862144;
	setAttr -s 5 ".wl[65].w";
	setAttr ".wl[65].w[0]" 0.22047003773988844;
	setAttr ".wl[65].w[1]" 0.22053733274848505;
	setAttr ".wl[65].w[16]" 0.16461473036776403;
	setAttr ".wl[65].w[26]" 0.20306135215569196;
	setAttr ".wl[65].w[27]" 0.19131654698817052;
	setAttr -s 5 ".wl[66].w";
	setAttr ".wl[66].w[0]" 0.24271614399280997;
	setAttr ".wl[66].w[1]" 0.25031912103319731;
	setAttr ".wl[66].w[2]" 0.17109454543312375;
	setAttr ".wl[66].w[16]" 0.17294757266653144;
	setAttr ".wl[66].w[26]" 0.16292261687433748;
	setAttr -s 5 ".wl[67].w";
	setAttr ".wl[67].w[0]" 0.2547645241354165;
	setAttr ".wl[67].w[1]" 0.26272680942992194;
	setAttr ".wl[67].w[2]" 0.15795352214214381;
	setAttr ".wl[67].w[16]" 0.15987907046631761;
	setAttr ".wl[67].w[26]" 0.16467607382620023;
	setAttr -s 5 ".wl[68].w";
	setAttr ".wl[68].w[0]" 0.24043340711602001;
	setAttr ".wl[68].w[1]" 0.2444128281744023;
	setAttr ".wl[68].w[2]" 0.16805395380947513;
	setAttr ".wl[68].w[16]" 0.17013793243949146;
	setAttr ".wl[68].w[26]" 0.17696187846061101;
	setAttr -s 5 ".wl[69].w";
	setAttr ".wl[69].w[0]" 0.22066919128873033;
	setAttr ".wl[69].w[1]" 0.22240866963202113;
	setAttr ".wl[69].w[2]" 0.18563599751378013;
	setAttr ".wl[69].w[16]" 0.18793873069253023;
	setAttr ".wl[69].w[26]" 0.18334741087293815;
	setAttr -s 5 ".wl[70].w";
	setAttr ".wl[70].w[0]" 0.22663308894668363;
	setAttr ".wl[70].w[1]" 0.18853014582695177;
	setAttr ".wl[70].w[2]" 0.17859795999563424;
	setAttr ".wl[70].w[16]" 0.17960571628404673;
	setAttr ".wl[70].w[26]" 0.22663308894668363;
	setAttr -s 5 ".wl[71].w";
	setAttr ".wl[71].w[0]" 0.22390979503681602;
	setAttr ".wl[71].w[1]" 0.18113502583757177;
	setAttr ".wl[71].w[16]" 0.16255621954128777;
	setAttr ".wl[71].w[26]" 0.2256750432686972;
	setAttr ".wl[71].w[27]" 0.20672391631562734;
	setAttr -s 4 ".wl[72].w[27:30]"  0.14203533202102864 0.2672586623961184 
		0.2681732662718887 0.18909667277385764;
	setAttr -s 4 ".wl[73].w[27:30]"  0.12696502446034846 0.26936608108851884 
		0.27892439090082161 0.19453804858957599;
	setAttr -s 4 ".wl[74].w[27:30]"  0.11251566076404423 0.27262501064451594 
		0.31582134161312503 0.1599397689326868;
	setAttr -s 4 ".wl[75].w[27:30]"  0.12630429507552793 0.2704002454998819 
		0.28850822174142315 0.17139682755585695;
	setAttr -s 4 ".wl[76].w[27:30]"  0.15526034572158143 0.28662435629806926 
		0.28597050346750541 0.16356252389225753;
	setAttr -s 4 ".wl[77].w[27:30]"  0.15998747198676203 0.29944509934920754 
		0.28831170198186523 0.15433276590472922;
	setAttr -s 4 ".wl[78].w[27:30]"  0.14746189512665697 0.2775813600180369 
		0.27847679457436297 0.16588313197894203;
	setAttr -s 4 ".wl[79].w[27:30]"  0.1362214034610669 0.28924445807768034 
		0.29926398744738703 0.15073809229766577;
	setAttr -s 5 ".wl[80].w[26:30]"  0.13890274336998573 0.29524499606569465 
		0.29524499606569465 0.14621068796989883 0.12439657652872615;
	setAttr -s 5 ".wl[81].w[26:30]"  0.13185265051371731 0.30845882618826026 
		0.30845882618826026 0.13476732613352715 0.11646237097623491;
	setAttr -s 5 ".wl[82].w[26:30]"  0.10997698910597081 0.26054792992245723 
		0.31092235141365199 0.18840191310576185 0.13015081645215817;
	setAttr -s 5 ".wl[83].w[26:30]"  0.12153416710032937 0.28934644180557684 
		0.29895907267110888 0.1652276086997321 0.12493270972325274;
	setAttr -s 5 ".wl[84].w";
	setAttr ".wl[84].w[0]" 0.096031520495279521;
	setAttr ".wl[84].w[26]" 0.13372131933821196;
	setAttr ".wl[84].w[27]" 0.32837346408171664;
	setAttr ".wl[84].w[28]" 0.32837346408171664;
	setAttr ".wl[84].w[29]" 0.11350023200307521;
	setAttr -s 5 ".wl[85].w";
	setAttr ".wl[85].w[0]" 0.093730783025452569;
	setAttr ".wl[85].w[26]" 0.13924873067398519;
	setAttr ".wl[85].w[27]" 0.33802569804965693;
	setAttr ".wl[85].w[28]" 0.33663495464278353;
	setAttr ".wl[85].w[29]" 0.092359833608121764;
	setAttr -s 5 ".wl[86].w[26:30]"  0.14000666476950813 0.29806390785179915 
		0.29806390785179915 0.14736996996785462 0.11649554955903896;
	setAttr -s 5 ".wl[87].w[26:30]"  0.13345586106447682 0.31334385714037827 
		0.31334385714037827 0.13634278004824582 0.1035136446065209;
	setAttr -s 4 ".wl[88].w[27:30]"  0.13968095074972248 0.27721399021915422 
		0.27751719261960717 0.1759070525200663;
	setAttr -s 4 ".wl[89].w[27:30]"  0.13710341979367971 0.27703723916466916 
		0.27918477657464247 0.17348999479200439;
	setAttr -s 4 ".wl[90].w[27:30]"  0.14880739153835523 0.28376862956934129 
		0.28376862956934129 0.16765942437502399;
	setAttr -s 4 ".wl[91].w[27:30]"  0.14094608701825562 0.27976618035382722 
		0.2800738653826445 0.17025241495208643;
	setAttr -s 5 ".wl[92].w[26:30]"  0.13543570772075103 0.30168740725391313 
		0.30168740725391313 0.14330369029943602 0.11788578747198669;
	setAttr -s 5 ".wl[93].w[26:30]"  0.12923935722223465 0.298686411128605 
		0.29878060614075841 0.15264203029868575 0.12065159520971608;
	setAttr -s 5 ".wl[94].w[26:30]"  0.13474220213013141 0.31323569341498642 
		0.31323569341498642 0.13130647062000844 0.10747994041988726;
	setAttr -s 5 ".wl[95].w[26:30]"  0.13576769810799244 0.30257406758940492 
		0.30257406758940492 0.14366158036254636 0.1154225863506515;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 8.5485389286235716 28.580356764965313 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[2]" -type "matrix" 6.693613450145993e-016 1.7889765444095194e-015 -1 -0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-015 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-015 -0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[3]" -type "matrix" -3.1806489720151766e-016 7.1110600523609972e-016 1 -0
		 0.23651468939617115 -0.97162791319508346 7.5749132939959201e-016 -0 0.97162791319508335 0.23651468939617104 1.3112890213765272e-016 -0
		 15.75339661024516 -24.192069798095325 14.952100000000019 1;
	setAttr ".pm[4]" -type "matrix" -7.7862017067354629e-016 2.5809568655261894e-008 0.99999999999999978 -0
		 0.97741416543986737 -0.21133279252753712 5.4544089702159369e-009 -0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-008 -0
		 38.494799132532364 23.920859481432768 12.094899382612956 1;
	setAttr ".pm[5]" -type "matrix" -1.3805402767519452e-008 1.3615198156657948e-008 -1 -0
		 0.93887631588660836 -0.34425464915842291 -1.7648660945676008e-008 0 -0.3442546491584228 -0.93887631588660847 -8.0304129894412123e-009 0
		 24.344687153438453 -43.723300868428026 -12.094900931389606 1;
	setAttr ".pm[6]" -type "matrix" 7.7249776432890241e-009 -1.634336896666231e-008 -0.99999999999999978 -0
		 0.017238817250843617 -0.99985140054899724 1.6474109837531978e-008 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-009 0
		 -30.350163356585984 -42.766656220525725 -12.094899535503076 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999999999978 -1.6162482267069893e-008 -1.0632309219184019e-008 -0
		 -1.6162482273500898e-008 -0.99999999999999956 -1.5415230359074293e-014 0 -1.0632309178159527e-008 1.5240265432222506e-014 -0.99999999999999933 -0
		 14.182899160148004 -42.525700229230644 -14.346000150797614 1;
	setAttr ".pm[8]" -type "matrix" 3.6929243270364759e-016 4.7854520619298905e-017 -1 -0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-016 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-016 -0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[9]" -type "matrix" 2.8232439365995012e-016 -2.4058376823856014e-016 1 -0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-016 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-016 -0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[10]" -type "matrix" 3.3969043598553431e-016 1.4899000132653635e-016 1 -0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-016 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-016 -0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[11]" -type "matrix" 2.0731684078555344e-016 2.5897082728895037e-016 -1 -0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-017 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-016 -0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[12]" -type "matrix" 3.1628320018632648e-016 -1.0005548030928621e-016 -1 -0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-017 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-016 -0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[13]" -type "matrix" 1 -8.8267921761093423e-017 -6.84540878947466e-016 -0
		 5.982944840221322e-017 1.0000000000000002 -3.4000580129145434e-016 0 7.1046403083575275e-016 3.4347524824340795e-016 1 -0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
	setAttr ".pm[14]" -type "matrix" 2.9171120138216851e-016 -2.0309007691163655e-016 0.99999999999999978 -0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-016 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-016 -0
		 5.141099383762306 27.116763673658916 6.384860464405965e-015 1;
	setAttr ".pm[15]" -type "matrix" 1.9255976590806024e-016 4.2123171441692991e-016 -0.99999999999999978 -0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-016 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-016 -0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-014 1;
	setAttr ".pm[16]" -type "matrix" -2.2254253739202254e-016 4.0618990599018242e-016 -0.99999999999999978 -0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-016 -0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-016 -0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-014 1;
	setAttr ".pm[17]" -type "matrix" -3.9263286525203279e-016 2.4567224874041425e-016 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-016 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-016 -0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-014 1;
	setAttr ".pm[18]" -type "matrix" -4.3236892918211134e-016 -1.660497809547105e-016 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-016 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-016 -0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[19]" -type "matrix" -4.200894483686455e-016 -1.9503916541689796e-016 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-016 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-016 -0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[20]" -type "matrix" -2.3367847652631728e-016 5.2235190187304229e-016 0.99999999999999978 -0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-016 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-016 -0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[21]" -type "matrix" 0.99999999999999978 7.889801871316359e-016 -4.1328562659829196e-016 -0
		 -7.1325529571241588e-016 0.99999999999999978 7.4940054162198017e-016 0 5.2724101640594644e-016 -9.1593399531575296e-016 0.99999999999999933 -0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[22]" -type "matrix" 4.3236892918211144e-016 1.6604978095471038e-016 -0.99999999999999978 -0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-016 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-016 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[23]" -type "matrix" 4.200894483686456e-016 1.9503916541689791e-016 -1 -0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-016 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-016 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[24]" -type "matrix" 2.3367847652631718e-016 1.6666666780649064e-016 0.99999999999999978 -0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-016 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-016 -0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[25]" -type "matrix" 0.99999999999999978 5.5459731209901231e-016 1.205471819538445e-017 -0
		 6.0517993594966963e-016 -1 -6.3837823915946462e-016 0 7.7400975786026954e-017 7.2164496600635165e-016 -0.99999999999999978 -0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[26]" -type "matrix" -4.0112524636791838e-016 2.3154687949413117e-016 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-016 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-016 -0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-014 1;
	setAttr ".pm[27]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -6.2314369504761027e-015 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[28]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -1.3912601358543541e-014 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[29]" -type "matrix" 5.0813779435729561e-016 1.296078129378641e-015 0.99999999999999978 -0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-016 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-015 -0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[30]" -type "matrix" -1.0103368778348008e-015 -4.0484730914130193e-016 -0.99999999999999978 -0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-016 -0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-015 -0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[31]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-016 -1.5416536010143854e-015 -0
		 5.3246366272141857e-016 0.99999999999999978 -5.6898930012039322e-016 0 1.611115502654318e-015 6.5919492087118591e-016 0.99999999999999978 -0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[32]" -type "matrix" 5.0211778276518463e-016 -8.7774694673919145e-016 0.99999999999999978 -0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-016 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-015 -0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[33]" -type "matrix" 7.131658175178445e-016 -5.6945907845917879e-016 -0.99999999999999978 -0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-016 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-016 -0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[34]" -type "matrix" 1 -5.6270869122286394e-016 7.6910344414326517e-017 -0
		 -2.7046580649882625e-016 -0.99999999999999956 -4.9057979900624073e-015 0 2.3587309789062293e-016 4.7184478546569121e-015 -0.99999999999999978 -0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".gm" -type "matrix" 36.764276844333843 0 0 0 0 36.764276844333843 0 0 0 0 36.764276844333843 0
		 0 11.561456537644371 0 1;
	setAttr -s 21 ".ma";
	setAttr -s 35 ".dpf[0:34]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 21 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 21 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "65CA25BB-4EC1-DCA3-720C-6B8764442C01";
	setAttr -s 12 ".vl[0].vt";
	setAttr ".vl[0].vt[72]" -type "float3" -0.0032952307 -0.0046758899 0 ;
	setAttr ".vl[0].vt[75]" -type "float3" 0 0.01040566 0.053392377 ;
	setAttr ".vl[0].vt[78]" -type "float3" 0.0032952307 -0.0046758899 0 ;
	setAttr ".vl[0].vt[84]" -type "float3" 0 -2.2351742e-008 5.9604645e-008 ;
	setAttr ".vl[0].vt[88]" -type "float3" 0 -0.27818137 0.059973009 ;
	setAttr ".vl[0].vt[89]" -type "float3" 0 -0.2610392 0.059973009 ;
	setAttr ".vl[0].vt[90]" -type "float3" 0 -0.2610392 0.059973009 ;
	setAttr ".vl[0].vt[91]" -type "float3" 0 -0.27818137 0.059973009 ;
	setAttr ".vl[0].vt[92]" -type "float3" 0 -0.26600382 0.17325407 ;
	setAttr ".vl[0].vt[93]" -type "float3" 0 -0.26600382 0.17325407 ;
	setAttr ".vl[0].vt[94]" -type "float3" 0 -0.26600382 0.17325407 ;
	setAttr ".vl[0].vt[95]" -type "float3" 0 -0.26600382 0.17325407 ;
createNode objectSet -n "skinCluster1Set";
	rename -uid "40D486B0-4695-2923-4296-6590CB9A5836";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "3F84530C-4F84-F292-9723-869724E8358C";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "A25D358F-4C86-D230-C8BE-54ACCA55156B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "D01ED17E-42A7-076C-43A0-3BB90A1A522E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "EC3DEACB-45AC-26C4-E8A5-1898A815EDCA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "9C8C10FC-4023-EF96-4264-04B9A12CFC4B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "D51412C9-4DFD-43B3-EDED-2BBC30F73837";
	setAttr -s 35 ".wm";
	setAttr -s 57 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -8.5485389286235716
		 -28.580356764965313 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.5246285042514174
		 -1.3906393854052972 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 -11.2157 -2.2972325671250093
		 -1.6891038496293902 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.67630234478378681 -0.20643434413864517 0.67630234478378604 0.20643434413864409 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -26.611657532597871 -3.6434673702956388e-005
		 3.7363999999999784 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.4037805737737129 0.91485586200393954 2.936963233014526e-016 6.6543519048025704e-016 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -22.571541461530671 -1.1506120003446085e-006
		 2.8572000000000006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.0936793850406475e-008 -6.8498174065843186e-009 -0.53079673701726493 0.84749915868502446 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.4618458313360279 6.8683157564919384e-005
		 -1.7745804825608502e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.96044747758436266 -0.27846120520071554 -4.9318522057855758e-009 1.7010574264559921e-008 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.6102926869945087 1.5647938596430322e-005
		 6.3647156878232636e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.4073280039850297e-008 9.6498803917679154e-009 0.56551365574260537 0.82473893152235367 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -16.739388044636868 3.2787877742634919e-005
		 2.0879998706880691 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0060950687791223217 0.70708050538773759 0.0060950686689412465 0.70708051816969197 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.215709518339846 -2.2972068039795897
		 -1.6890582097053688 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.20643434413864473 -0.67630234478378637 -0.2064343441386447 0.67630234478378659 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 26.611627364085813 -1.7763568394002505e-014
		 -3.7364292524159488 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.40378057377371307 0.91485586200393942 1.1438172734147954e-016 2.5915757359622956e-016 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 22.571511896999866 -2.4868995751603507e-014
		 -2.8572694283180997 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.53079673701726482 0.84749915868502468 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.4618546715234331 0
		 -1.7763568394002505e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.96044747758436266 -0.27846120520071577 -7.8881639477529558e-017 2.7207262717010465e-016 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.6103077446732996 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.56551365574260515 0.82473893152235411 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 16.739387965494924 -1.1549157888733989e-014
		 -2.0880045822324509 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0060950687240264347 0.70708051177871456 0.0060950687240264277 0.70708051177871534 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 -1.6653345369377348e-016 -2.2204460492503131e-016
		 1.8488927466117464e-032 0 0 1.6150459802609891 1.8656332862954379 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.48308409968561034 0.51636203639592182 0.48308409968561034 0.51636203639592215 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 9.3368776692261406 0
		 -3.1098049699449983e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.98103661857481306 0.19382247809605749 1.1868203870157238e-017 6.0071167739199385e-017 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 -1.4279565025995582e-016 3.7046061037742484e-017
		 1.1102230246251565e-016 0 18.23274650489121 1.0658141036401503e-014 4.8466478636802621e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.44841572355753345 0.89382511648888774 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 -8.6011247393764436e-018 -1.8690320130483e-016
		 1.1102230246251565e-016 0 21.899120996169305 1.0658141036401503e-014 -2.6956353773824086e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.25247655847346462 0.96760301127135562 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 8.368234157521599e-017 -1.3660264352291575e-016
		 1.1102230246251565e-016 0 1.0818041192647305 -1.7123554087229991 -17.877216723425484 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.44653768433977092 0.89476482746276698 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 1.1473149390057318e-016 -1.0718482912940319e-016
		 -3.3306690738754696e-016 0 31.99825461049371 0 -6.0293855159629786 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.033987156651331007 0.99942226970523218 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 8.9422047445835967e-017 -6.6391425235041964e-017
		 -2.9684285886822971e-033 0 33.717305247756336 -3.3750779948604759e-014 -1.7763568394002505e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.95425298638582279 0.29900039794913114 -1.8308494014609415e-017 5.8431143267710039e-017 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.3875679753237371 -7.1054273576010019e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.4411289200480486 -0.5526348486091357 0.44112892004804838 0.55263484860913592 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 -2.7769068789052529e-017 2.1103644415194881e-016
		 -2.9301427673262549e-033 0 1.0818030490480721 -1.7123499387266818 17.877199999999995 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.89476482746276698 0.44653768433977081 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 2.2568965541556136e-016 -1.0341149674381828e-016
		 5.5511151231257821e-017 0 -31.998258405996097 8.0643000011093591e-007 6.029399999999999 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.033987156651331007 0.99942226970523218 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 1.2956497562911767e-017 -7.0635175671764559e-018
		 2.2204460492503131e-016 0 -33.717304552350946 5.3960697947275094e-005 -1.4210854715202004e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.95425298638582268 0.2990003979491313 -8.4699919249651435e-017 2.7031787062828133e-016 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.387500137346386 2.6594532442913987e-005
		 3.5527136788005009e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44112892004804866 -0.55263484860913559 0.44112892004804832 0.55263484860913603 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 1.1282579098888033e-016 -1.0035709177709119e-016
		 2.7755575615628907e-017 0 13.330647968373498 2.9887165849079089 -3.2651401286985034e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.017792741826644164 0.99984169663916822 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 -4.1633363423443375e-016 6.5919492087118689e-016
		 1.3877787807814447e-016 0 10.814536544133 1.0658141036401503e-014 2.4013094943893251e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.080716279640304145 0.7024847914375284 0.080716279640304062 0.70248479143752918 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.6811644080674442e-015
		 -2.3370891942704795 0.26664839635010651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.234015250213869 -1.2700014310814893
		 -0.98806652142050666 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49355025053368423 0.50636760381973256 -0.49355025053368362 0.506367603819733 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.186287342561853 -0.98860416796724593
		 1.2051076250576465 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.67879111187253505 0.73433141458257634 -1.0915793614014113e-016 -1.1808949801593254e-016 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 20.262996594458691 -2.385858855439539
		 -1.3785555438363257 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.018711624828957333 0.70685916213646138 -0.018711624828957323 0.70685916213646172 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 -11.234000000000007 -1.2699609474650444
		 -0.98803879165221531 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.50636760381973278 0.49355025053368412 0.50636760381973256 0.49355025053368384 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 -10.186305840856921 0.98862634322796694
		 -1.2050999999999963 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.67879111187253482 0.73433141458257656 4.1563968122218635e-017 4.4964830819095017e-017 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 -20.26295095214175 2.3858817680676259
		 1.3786000000000058 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.018711624828955747 0.70685916213646138 -0.01871162482895574 0.70685916213646172 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 -16.739388044636868 3.2787877742634919e-005
		 2.0879998706880691 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0060950687791223217 0.70708050538773759 0.0060950686689412465 0.70708051816969197 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 0 0 16.739387965494924 -1.1549157888733989e-014
		 -2.0880045822324509 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0060950687240264347 0.70708051177871456 0.0060950687240264277 0.70708051177871534 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.3875679753237371 -7.1054273576010019e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.4411289200480486 -0.5526348486091357 0.44112892004804838 0.55263484860913592 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.387500137346386 2.6594532442913987e-005
		 3.5527136788005009e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44112892004804866 -0.55263484860913559 0.44112892004804832 0.55263484860913603 1
		 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 20.262996594458695 -2.3858588554395403
		 -1.3785555438363275 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.018711624828957333 0.70685916213646138 -0.018711624828957323 0.70685916213646172 1
		 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 -20.262950952141743 2.3858817680676241
		 1.3786000000000076 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.018711624828955747 0.70685916213646138 -0.01871162482895574 0.70685916213646172 1
		 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 -16.739388044636868 3.2787877742634919e-005
		 2.0879998706880691 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0060950687791223217 0.70708050538773759 0.0060950686689412465 0.70708051816969197 1
		 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 16.739387965494924 -1.1549157888733989e-014
		 -2.0880045822324509 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0060950687240264347 0.70708051177871456 0.0060950687240264277 0.70708051177871534 1
		 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.3875679753237371 -7.1054273576010019e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.4411289200480486 -0.5526348486091357 0.44112892004804838 0.55263484860913592 1
		 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.387500137346386 2.6594532442913987e-005
		 3.5527136788005009e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44112892004804866 -0.55263484860913559 0.44112892004804832 0.55263484860913603 1
		 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 -16.739388044636868 3.2787877742634919e-005
		 2.0879998706880691 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0060950687791223217 0.70708050538773759 0.0060950686689412465 0.70708051816969197 1
		 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 0 0 0 16.739387965494924 -1.1549157888733989e-014
		 -2.0880045822324509 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0060950687240264347 0.70708051177871456 0.0060950687240264277 0.70708051177871534 1
		 1 1 yes;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.3875679753237371 -7.1054273576010019e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.4411289200480486 -0.5526348486091357 0.44112892004804838 0.55263484860913592 1
		 1 1 yes;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.387500137346386 2.6594532442913987e-005
		 3.5527136788005009e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44112892004804866 -0.55263484860913559 0.44112892004804832 0.55263484860913603 1
		 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 0 0 -16.739388044636861 3.2787877749740346e-005
		 2.0879998706880674 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0060950687791223217 0.70708050538773759 0.0060950686689412465 0.70708051816969197 1
		 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 0 0 0 16.73938796549492 -1.4210854715202004e-014
		 -2.088004582232454 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0060950687240264347 0.70708051177871456 0.0060950687240264277 0.70708051177871534 1
		 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.3875679753237371 -7.1054273576010019e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.4411289200480486 -0.5526348486091357 0.44112892004804838 0.55263484860913592 1
		 1 1 yes;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.387500137346386 2.6594532442913987e-005
		 3.5527136788005009e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44112892004804866 -0.55263484860913559 0.44112892004804832 0.55263484860913603 1
		 1 1 yes;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.3875679753237371 -7.1054273576010019e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.4411289200480486 -0.5526348486091357 0.44112892004804838 0.55263484860913592 1
		 1 1 yes;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.387500137346386 2.6594532442913987e-005
		 3.5527136788005009e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44112892004804866 -0.55263484860913559 0.44112892004804832 0.55263484860913603 1
		 1 1 yes;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.3875679753237407 -1.4210854715202004e-014
		 3.5527136788005009e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.4411289200480486 -0.5526348486091357 0.44112892004804838 0.55263484860913592 1
		 1 1 yes;
	setAttr ".xm[56]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.3875001373463931 2.6594532442913987e-005
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44112892004804866 -0.55263484860913559 0.44112892004804832 0.55263484860913603 1
		 1 1 yes;
	setAttr -s 35 ".m";
	setAttr -s 35 ".p";
	setAttr -s 57 ".g[4:56]" yes yes yes no no no yes yes yes no no no 
		no no no no yes no no no yes no no no no no no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "7819EF40-4C88-17BC-AEC8-DDAC2BAEE301";
	setAttr -s 146 ".wl";
	setAttr -s 5 ".wl[0].w";
	setAttr ".wl[0].w[26]" 4.6363834579806308e-005;
	setAttr ".wl[0].w[27]" 7.1244427435380016e-005;
	setAttr ".wl[0].w[28]" 0.00045606476579313849;
	setAttr ".wl[0].w[32]" 0.61562476008555356;
	setAttr ".wl[0].w[33]" 0.38380156688663808;
	setAttr -s 5 ".wl[1].w[26:30]"  4.6366078371145114e-005 7.124787533028924e-005 
		0.00045609402581639491 0.61562787303944022 0.38379841898104194;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[28]" 0.00014530876739526739;
	setAttr ".wl[2].w[30]" 0.00011539111529676688;
	setAttr ".wl[2].w[32]" 0.00024110410944751714;
	setAttr ".wl[2].w[33]" 0.4997490980039303;
	setAttr ".wl[2].w[34]" 0.49974909800393019;
	setAttr -s 5 ".wl[3].w";
	setAttr ".wl[3].w[28]" 0.00014530534027461136;
	setAttr ".wl[3].w[29]" 0.00024109638963681418;
	setAttr ".wl[3].w[30]" 0.49974910498867109;
	setAttr ".wl[3].w[31]" 0.49974910498867131;
	setAttr ".wl[3].w[33]" 0.00011538829274615692;
	setAttr -s 5 ".wl[4].w";
	setAttr ".wl[4].w[16]" 0.12524856393060332;
	setAttr ".wl[4].w[17]" 0.33318665667169273;
	setAttr ".wl[4].w[26]" 0.3331866566716925;
	setAttr ".wl[4].w[27]" 0.12081215639678233;
	setAttr ".wl[4].w[28]" 0.087565966329229208;
	setAttr -s 5 ".wl[5].w";
	setAttr ".wl[5].w[16]" 0.12639288723706182;
	setAttr ".wl[5].w[17]" 0.33074829834232206;
	setAttr ".wl[5].w[26]" 0.33074829834232194;
	setAttr ".wl[5].w[27]" 0.12197296230223342;
	setAttr ".wl[5].w[28]" 0.090137553776060836;
	setAttr -s 5 ".wl[6].w";
	setAttr ".wl[6].w[17]" 0.048577138539248846;
	setAttr ".wl[6].w[26]" 0.11559483807393313;
	setAttr ".wl[6].w[27]" 0.10236321404629897;
	setAttr ".wl[6].w[28]" 0.38582195615798504;
	setAttr ".wl[6].w[32]" 0.34764285318253396;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[17]" 0.048577714492049125;
	setAttr ".wl[7].w[26]" 0.11559620861926892;
	setAttr ".wl[7].w[27]" 0.102364427711441;
	setAttr ".wl[7].w[28]" 0.38582108425562378;
	setAttr ".wl[7].w[29]" 0.34764056492161716;
	setAttr -s 5 ".wl[8].w[26:30]"  0.24738093885964071 0.24738093885964071 
		0.25046447622328188 0.20254201316030504 0.052231632897131633;
	setAttr -s 5 ".wl[9].w";
	setAttr ".wl[9].w[26]" 0.24737983373760419;
	setAttr ".wl[9].w[27]" 0.24737983373760419;
	setAttr ".wl[9].w[28]" 0.25046503045691487;
	setAttr ".wl[9].w[32]" 0.2025437458427648;
	setAttr ".wl[9].w[33]" 0.052231556225111962;
	setAttr -s 5 ".wl[10].w";
	setAttr ".wl[10].w[17]" 0.056610187007047397;
	setAttr ".wl[10].w[26]" 0.097017343425089012;
	setAttr ".wl[10].w[27]" 0.06228297843341743;
	setAttr ".wl[10].w[28]" 0.40629116869669823;
	setAttr ".wl[10].w[32]" 0.37779832243774791;
	setAttr -s 5 ".wl[11].w";
	setAttr ".wl[11].w[17]" 0.056610619242473091;
	setAttr ".wl[11].w[26]" 0.097018084181036468;
	setAttr ".wl[11].w[27]" 0.062283453982273571;
	setAttr ".wl[11].w[28]" 0.40629091891770469;
	setAttr ".wl[11].w[29]" 0.37779692367651219;
	setAttr -s 5 ".wl[12].w";
	setAttr ".wl[12].w[29]" 0.0081864752364558917;
	setAttr ".wl[12].w[30]" 0.48466970139586923;
	setAttr ".wl[12].w[31]" 0.48435713851532464;
	setAttr ".wl[12].w[33]" 0.01142013381092408;
	setAttr ".wl[12].w[34]" 0.011366551041426132;
	setAttr -s 5 ".wl[13].w";
	setAttr ".wl[13].w[17]" 0.046339439728306855;
	setAttr ".wl[13].w[26]" 0.30314805600697964;
	setAttr ".wl[13].w[27]" 0.30314805600697942;
	setAttr ".wl[13].w[28]" 0.22495588152072538;
	setAttr ".wl[13].w[29]" 0.12240856673700877;
	setAttr -s 5 ".wl[14].w";
	setAttr ".wl[14].w[17]" 0.20948234253581474;
	setAttr ".wl[14].w[26]" 0.34502665372923497;
	setAttr ".wl[14].w[27]" 0.24807222684631436;
	setAttr ".wl[14].w[28]" 0.13149246651398494;
	setAttr ".wl[14].w[29]" 0.065926310374651076;
	setAttr -s 5 ".wl[15].w";
	setAttr ".wl[15].w[17]" 0.063517789085698592;
	setAttr ".wl[15].w[26]" 0.35686192544259038;
	setAttr ".wl[15].w[27]" 0.26600338121076622;
	setAttr ".wl[15].w[28]" 0.23328574668540089;
	setAttr ".wl[15].w[29]" 0.080331157575543918;
	setAttr -s 5 ".wl[16].w";
	setAttr ".wl[16].w[17]" 0.11658402641991478;
	setAttr ".wl[16].w[26]" 0.46344296603247764;
	setAttr ".wl[16].w[27]" 0.14342920771418921;
	setAttr ".wl[16].w[28]" 0.20665388220831918;
	setAttr ".wl[16].w[29]" 0.069889917625099246;
	setAttr -s 5 ".wl[17].w[26:30]"  0.017884368005982549 0.0334216981893155 
		0.074106007000484322 0.45725056121852514 0.41733736558569245;
	setAttr -s 5 ".wl[18].w[30:34]"  0.012875059163741378 0.012815084647396661 
		0.0088212059414383148 0.48291998434676048 0.48256866590066316;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[17]" 0.046218666939794359;
	setAttr ".wl[19].w[26]" 0.30465153345514101;
	setAttr ".wl[19].w[27]" 0.30465153345514101;
	setAttr ".wl[19].w[28]" 0.22440430504108821;
	setAttr ".wl[19].w[32]" 0.1200739611088355;
	setAttr -s 5 ".wl[20].w";
	setAttr ".wl[20].w[17]" 0.20966585299574458;
	setAttr ".wl[20].w[26]" 0.34606232747441629;
	setAttr ".wl[20].w[27]" 0.24845352540083776;
	setAttr ".wl[20].w[28]" 0.13094273760735775;
	setAttr ".wl[20].w[32]" 0.064875556521643687;
	setAttr -s 5 ".wl[21].w";
	setAttr ".wl[21].w[17]" 0.062612318167914141;
	setAttr ".wl[21].w[26]" 0.36771625389491819;
	setAttr ".wl[21].w[27]" 0.27121381381352727;
	setAttr ".wl[21].w[28]" 0.22451048863745371;
	setAttr ".wl[21].w[32]" 0.073947125486186677;
	setAttr -s 5 ".wl[22].w";
	setAttr ".wl[22].w[17]" 0.11535799178696064;
	setAttr ".wl[22].w[26]" 0.48513003861378212;
	setAttr ".wl[22].w[27]" 0.14279044459930038;
	setAttr ".wl[22].w[28]" 0.19406418443447812;
	setAttr ".wl[22].w[32]" 0.062657340565478822;
	setAttr -s 5 ".wl[23].w";
	setAttr ".wl[23].w[26]" 0.01992723273194684;
	setAttr ".wl[23].w[27]" 0.037503331286306556;
	setAttr ".wl[23].w[28]" 0.080404807279382123;
	setAttr ".wl[23].w[32]" 0.45030699482124026;
	setAttr ".wl[23].w[33]" 0.41185763388112429;
	setAttr -s 5 ".wl[24].w";
	setAttr ".wl[24].w[26]" 0.10143268855364625;
	setAttr ".wl[24].w[27]" 0.11221055280184898;
	setAttr ".wl[24].w[28]" 0.12086485521365528;
	setAttr ".wl[24].w[30]" 0.34611447525755962;
	setAttr ".wl[24].w[31]" 0.31937742817329001;
	setAttr -s 5 ".wl[25].w";
	setAttr ".wl[25].w[26]" 0.13770411452486297;
	setAttr ".wl[25].w[27]" 0.15316149519027181;
	setAttr ".wl[25].w[28]" 0.15470087300967758;
	setAttr ".wl[25].w[30]" 0.28742485511142574;
	setAttr ".wl[25].w[31]" 0.26700866216376196;
	setAttr -s 5 ".wl[26].w";
	setAttr ".wl[26].w[26]" 0.13897803615931675;
	setAttr ".wl[26].w[27]" 0.15459997104070483;
	setAttr ".wl[26].w[28]" 0.15596677327618469;
	setAttr ".wl[26].w[33]" 0.28532934492117462;
	setAttr ".wl[26].w[34]" 0.2651258746026191;
	setAttr -s 5 ".wl[27].w";
	setAttr ".wl[27].w[26]" 0.10143282656571594;
	setAttr ".wl[27].w[27]" 0.1122107042343073;
	setAttr ".wl[27].w[28]" 0.1208652479681681;
	setAttr ".wl[27].w[33]" 0.34611448536658795;
	setAttr ".wl[27].w[34]" 0.31937673586522075;
	setAttr -s 5 ".wl[28].w";
	setAttr ".wl[28].w[26]" 0.0010956608802220524;
	setAttr ".wl[28].w[27]" 0.0016210146967113185;
	setAttr ".wl[28].w[28]" 0.052132874926757146;
	setAttr ".wl[28].w[32]" 0.92306377054633504;
	setAttr ".wl[28].w[33]" 0.022086678949974452;
	setAttr -s 5 ".wl[29].w";
	setAttr ".wl[29].w[26]" 0.04889592178662374;
	setAttr ".wl[29].w[27]" 0.10143024665900802;
	setAttr ".wl[29].w[28]" 0.48793573122495559;
	setAttr ".wl[29].w[32]" 0.2858299710477909;
	setAttr ".wl[29].w[33]" 0.075908129281621661;
	setAttr -s 5 ".wl[30].w[26:30]"  0.045718845118073413 0.093446288812296691 
		0.47936197018594706 0.30395612601577104 0.077516769867911825;
	setAttr -s 5 ".wl[31].w[26:30]"  0.0010956230472868016 0.0016209587234214406 
		0.052132857472379848 0.92306475309194047 0.022085807664971435;
	setAttr -s 5 ".wl[32].w";
	setAttr ".wl[32].w[17]" 0.036538814226635935;
	setAttr ".wl[32].w[26]" 0.1510168132209537;
	setAttr ".wl[32].w[27]" 0.1510168132209537;
	setAttr ".wl[32].w[28]" 0.34359335143361314;
	setAttr ".wl[32].w[29]" 0.31783420789784356;
	setAttr -s 5 ".wl[33].w[26:30]"  0.031212807224673275 0.038595112573109276 
		0.32098107948571408 0.37348800640135127 0.23572299431515203;
	setAttr -s 5 ".wl[34].w[27:31]"  1.4466978567867521e-005 4.7599984586971777e-005 
		0.00021589047598885642 0.99956471006540504 0.00015733249545129939;
	setAttr -s 5 ".wl[35].w[27:31]"  0.03322208920900846 0.047526496031315021 
		0.10795461835729661 0.74868041644527494 0.06261637995710484;
	setAttr -s 5 ".wl[36].w";
	setAttr ".wl[36].w[27]" 0.036417365688770978;
	setAttr ".wl[36].w[28]" 0.051177958938942246;
	setAttr ".wl[36].w[32]" 0.11260097750976958;
	setAttr ".wl[36].w[33]" 0.73435025032769874;
	setAttr ".wl[36].w[34]" 0.065453447534818535;
	setAttr -s 5 ".wl[37].w";
	setAttr ".wl[37].w[27]" 1.4466515224995104e-005;
	setAttr ".wl[37].w[28]" 4.7598354143958863e-005;
	setAttr ".wl[37].w[32]" 0.00021588782465889822;
	setAttr ".wl[37].w[33]" 0.99956472034466992;
	setAttr ".wl[37].w[34]" 0.00015732696130221793;
	setAttr -s 5 ".wl[38].w";
	setAttr ".wl[38].w[26]" 0.031212457907964924;
	setAttr ".wl[38].w[27]" 0.0385946753124344;
	setAttr ".wl[38].w[28]" 0.3209804361295;
	setAttr ".wl[38].w[32]" 0.37349032926639825;
	setAttr ".wl[38].w[33]" 0.23572210138370248;
	setAttr -s 5 ".wl[39].w";
	setAttr ".wl[39].w[17]" 0.036538416031403474;
	setAttr ".wl[39].w[26]" 0.15101515418527697;
	setAttr ".wl[39].w[27]" 0.15101515418527697;
	setAttr ".wl[39].w[28]" 0.34359458466051473;
	setAttr ".wl[39].w[32]" 0.31783669093752787;
	setAttr -s 5 ".wl[40].w";
	setAttr ".wl[40].w[17]" 0.19695829915866075;
	setAttr ".wl[40].w[26]" 0.25464225580655786;
	setAttr ".wl[40].w[27]" 0.15919521749986681;
	setAttr ".wl[40].w[28]" 0.2039604160045817;
	setAttr ".wl[40].w[32]" 0.18524381153033287;
	setAttr -s 5 ".wl[41].w";
	setAttr ".wl[41].w[17]" 0.25272787357462351;
	setAttr ".wl[41].w[26]" 0.38831815334935404;
	setAttr ".wl[41].w[27]" 0.18148405168654738;
	setAttr ".wl[41].w[28]" 0.11351338560166707;
	setAttr ".wl[41].w[32]" 0.063956535787808064;
	setAttr -s 5 ".wl[42].w";
	setAttr ".wl[42].w[17]" 0.25170768413905947;
	setAttr ".wl[42].w[26]" 0.38413202393248996;
	setAttr ".wl[42].w[27]" 0.18153752881655946;
	setAttr ".wl[42].w[28]" 0.11591454223998245;
	setAttr ".wl[42].w[29]" 0.066708220871908586;
	setAttr -s 5 ".wl[43].w";
	setAttr ".wl[43].w[17]" 0.19695894204959669;
	setAttr ".wl[43].w[26]" 0.25464309211949454;
	setAttr ".wl[43].w[27]" 0.15919573476298837;
	setAttr ".wl[43].w[28]" 0.2039596927873556;
	setAttr ".wl[43].w[29]" 0.18524253828056481;
	setAttr -s 5 ".wl[44].w";
	setAttr ".wl[44].w[27]" 0.18943248893147954;
	setAttr ".wl[44].w[30]" 0.20932778701705115;
	setAttr ".wl[44].w[31]" 0.19605886497566735;
	setAttr ".wl[44].w[33]" 0.20922088713246087;
	setAttr ".wl[44].w[34]" 0.19595997194334108;
	setAttr -s 5 ".wl[45].w";
	setAttr ".wl[45].w[27]" 0.030410895864749442;
	setAttr ".wl[45].w[30]" 0.24301163527734965;
	setAttr ".wl[45].w[31]" 0.24223655863420415;
	setAttr ".wl[45].w[33]" 0.24255757785927229;
	setAttr ".wl[45].w[34]" 0.24178333236442448;
	setAttr -s 5 ".wl[46].w";
	setAttr ".wl[46].w[27]" 0.17669100128185541;
	setAttr ".wl[46].w[28]" 0.17696779260343035;
	setAttr ".wl[46].w[29]" 0.12571695896402754;
	setAttr ".wl[46].w[30]" 0.26056326592731371;
	setAttr ".wl[46].w[33]" 0.2600609812233729;
	setAttr -s 5 ".wl[47].w";
	setAttr ".wl[47].w[27]" 0.2609688781743964;
	setAttr ".wl[47].w[28]" 0.26804141257791703;
	setAttr ".wl[47].w[29]" 0.16003476722858034;
	setAttr ".wl[47].w[30]" 0.15124343294338197;
	setAttr ".wl[47].w[32]" 0.15971150907572426;
	setAttr -s 5 ".wl[48].w";
	setAttr ".wl[48].w[26]" 0.12875035218051906;
	setAttr ".wl[48].w[27]" 0.39111937135662012;
	setAttr ".wl[48].w[28]" 0.40642669630187117;
	setAttr ".wl[48].w[29]" 0.036888065958553665;
	setAttr ".wl[48].w[32]" 0.036815514202435951;
	setAttr -s 5 ".wl[49].w";
	setAttr ".wl[49].w[17]" 0.0025257775726374057;
	setAttr ".wl[49].w[26]" 0.9922277073216772;
	setAttr ".wl[49].w[27]" 0.0038260963843660119;
	setAttr ".wl[49].w[28]" 0.0013271814014548453;
	setAttr ".wl[49].w[29]" 9.3237319864437416e-005;
	setAttr -s 5 ".wl[50].w";
	setAttr ".wl[50].w[17]" 0.025254216553328396;
	setAttr ".wl[50].w[26]" 0.61662968853674571;
	setAttr ".wl[50].w[27]" 0.2911905686049992;
	setAttr ".wl[50].w[28]" 0.062460566685354747;
	setAttr ".wl[50].w[29]" 0.0044649596195720414;
	setAttr -s 5 ".wl[51].w";
	setAttr ".wl[51].w[17]" 0.26224729962657195;
	setAttr ".wl[51].w[26]" 0.47054183110979891;
	setAttr ".wl[51].w[27]" 0.17161960261014972;
	setAttr ".wl[51].w[28]" 0.076329025226038377;
	setAttr ".wl[51].w[29]" 0.019262241427441092;
	setAttr -s 5 ".wl[52].w";
	setAttr ".wl[52].w[16]" 0.12320046786189769;
	setAttr ".wl[52].w[17]" 0.338786640763588;
	setAttr ".wl[52].w[26]" 0.33878664076358778;
	setAttr ".wl[52].w[27]" 0.11803669834597277;
	setAttr ".wl[52].w[28]" 0.081189552264953835;
	setAttr -s 5 ".wl[53].w";
	setAttr ".wl[53].w[26]" 0.32531488935433756;
	setAttr ".wl[53].w[27]" 0.32531488935433756;
	setAttr ".wl[53].w[28]" 0.2199557252161565;
	setAttr ".wl[53].w[29]" 0.064725300626497478;
	setAttr ".wl[53].w[32]" 0.06468919544867098;
	setAttr -s 5 ".wl[54].w";
	setAttr ".wl[54].w[17]" 0.088992799235674741;
	setAttr ".wl[54].w[26]" 0.32912635925725231;
	setAttr ".wl[54].w[27]" 0.32912635925725231;
	setAttr ".wl[54].w[28]" 0.18715729431405007;
	setAttr ".wl[54].w[29]" 0.06559718793577074;
	setAttr -s 5 ".wl[55].w";
	setAttr ".wl[55].w[17]" 0.082191218015789394;
	setAttr ".wl[55].w[26]" 0.32033167801142753;
	setAttr ".wl[55].w[27]" 0.32033167801142753;
	setAttr ".wl[55].w[28]" 0.18413818391937473;
	setAttr ".wl[55].w[29]" 0.093007242041980742;
	setAttr -s 5 ".wl[56].w";
	setAttr ".wl[56].w[17]" 0.12514180065158062;
	setAttr ".wl[56].w[26]" 0.24399486971910028;
	setAttr ".wl[56].w[27]" 0.24213673532127097;
	setAttr ".wl[56].w[28]" 0.20912686459026447;
	setAttr ".wl[56].w[29]" 0.17959972971778351;
	setAttr -s 5 ".wl[57].w";
	setAttr ".wl[57].w[17]" 0.060575876058376249;
	setAttr ".wl[57].w[26]" 0.16694603202170136;
	setAttr ".wl[57].w[27]" 0.16575863700124308;
	setAttr ".wl[57].w[28]" 0.31810941005442106;
	setAttr ".wl[57].w[29]" 0.28861004486425834;
	setAttr -s 5 ".wl[58].w";
	setAttr ".wl[58].w[17]" 0.050665524766126749;
	setAttr ".wl[58].w[26]" 0.098536233143038776;
	setAttr ".wl[58].w[27]" 0.072370194267078899;
	setAttr ".wl[58].w[28]" 0.4064337907693561;
	setAttr ".wl[58].w[29]" 0.37199425705439954;
	setAttr -s 5 ".wl[59].w";
	setAttr ".wl[59].w[17]" 0.088746308827015355;
	setAttr ".wl[59].w[26]" 0.42280025729741882;
	setAttr ".wl[59].w[27]" 0.18787647905033369;
	setAttr ".wl[59].w[28]" 0.22690717435471347;
	setAttr ".wl[59].w[29]" 0.073669780470518795;
	setAttr -s 5 ".wl[60].w";
	setAttr ".wl[60].w[17]" 0.011187721279966707;
	setAttr ".wl[60].w[26]" 0.92835009952998893;
	setAttr ".wl[60].w[27]" 0.0473202077941191;
	setAttr ".wl[60].w[28]" 0.012347583208800195;
	setAttr ".wl[60].w[29]" 0.00079438818712508044;
	setAttr -s 5 ".wl[61].w";
	setAttr ".wl[61].w[17]" 0.087630961446959921;
	setAttr ".wl[61].w[26]" 0.44105063597067817;
	setAttr ".wl[61].w[27]" 0.18944194494636399;
	setAttr ".wl[61].w[28]" 0.21522839941426988;
	setAttr ".wl[61].w[32]" 0.066648058221728035;
	setAttr -s 5 ".wl[62].w";
	setAttr ".wl[62].w[17]" 0.05066500536318512;
	setAttr ".wl[62].w[26]" 0.098535222988509405;
	setAttr ".wl[62].w[27]" 0.072369452356441571;
	setAttr ".wl[62].w[28]" 0.40643425946321182;
	setAttr ".wl[62].w[32]" 0.37199605982865197;
	setAttr -s 5 ".wl[63].w";
	setAttr ".wl[63].w[17]" 0.06057533000088236;
	setAttr ".wl[63].w[26]" 0.16694446877162342;
	setAttr ".wl[63].w[27]" 0.16575708538854755;
	setAttr ".wl[63].w[28]" 0.31811063732294637;
	setAttr ".wl[63].w[32]" 0.28861247851600025;
	setAttr -s 5 ".wl[64].w";
	setAttr ".wl[64].w[17]" 0.12569269080540252;
	setAttr ".wl[64].w[26]" 0.2473107447112535;
	setAttr ".wl[64].w[27]" 0.24539725456077557;
	setAttr ".wl[64].w[28]" 0.20672521307465869;
	setAttr ".wl[64].w[32]" 0.17487409684790978;
	setAttr -s 5 ".wl[65].w";
	setAttr ".wl[65].w[17]" 0.082043390557183904;
	setAttr ".wl[65].w[26]" 0.32159960965387951;
	setAttr ".wl[65].w[27]" 0.32159960965387974;
	setAttr ".wl[65].w[28]" 0.18351327175184698;
	setAttr ".wl[65].w[32]" 0.091244118383209796;
	setAttr -s 5 ".wl[66].w";
	setAttr ".wl[66].w[26]" 0.18555793733332446;
	setAttr ".wl[66].w[27]" 0.19342034434593788;
	setAttr ".wl[66].w[28]" 0.20660701084874117;
	setAttr ".wl[66].w[30]" 0.22527432425322649;
	setAttr ".wl[66].w[31]" 0.18914038321877011;
	setAttr -s 5 ".wl[67].w";
	setAttr ".wl[67].w[26]" 0.2084746576440217;
	setAttr ".wl[67].w[27]" 0.21769592071209551;
	setAttr ".wl[67].w[28]" 0.22154836900321659;
	setAttr ".wl[67].w[30]" 0.1906587438688864;
	setAttr ".wl[67].w[31]" 0.1616223087717798;
	setAttr -s 5 ".wl[68].w";
	setAttr ".wl[68].w[26]" 0.2392615699422726;
	setAttr ".wl[68].w[27]" 0.2502530724929084;
	setAttr ".wl[68].w[28]" 0.25025307249290862;
	setAttr ".wl[68].w[30]" 0.1301476315649118;
	setAttr ".wl[68].w[33]" 0.13008465350699844;
	setAttr -s 5 ".wl[69].w";
	setAttr ".wl[69].w[26]" 0.20975993840812623;
	setAttr ".wl[69].w[27]" 0.21905779916399518;
	setAttr ".wl[69].w[28]" 0.22249313973439935;
	setAttr ".wl[69].w[33]" 0.18866288802918851;
	setAttr ".wl[69].w[34]" 0.16002623466429078;
	setAttr -s 5 ".wl[70].w";
	setAttr ".wl[70].w[26]" 0.16736345075747591;
	setAttr ".wl[70].w[27]" 0.17417434758861292;
	setAttr ".wl[70].w[28]" 0.196182439242155;
	setAttr ".wl[70].w[33]" 0.25203353849772592;
	setAttr ".wl[70].w[34]" 0.21024622391403017;
	setAttr -s 5 ".wl[71].w";
	setAttr ".wl[71].w[26]" 0.037122935284551996;
	setAttr ".wl[71].w[27]" 0.041629220335794637;
	setAttr ".wl[71].w[28]" 0.42546905997731505;
	setAttr ".wl[71].w[32]" 0.4239810979652438;
	setAttr ".wl[71].w[33]" 0.071797686437094596;
	setAttr -s 5 ".wl[72].w";
	setAttr ".wl[72].w[26]" 0.0015908927569397652;
	setAttr ".wl[72].w[27]" 0.002076891835231358;
	setAttr ".wl[72].w[28]" 0.29988793849151318;
	setAttr ".wl[72].w[32]" 0.6906631115430143;
	setAttr ".wl[72].w[33]" 0.0057811653733015229;
	setAttr -s 5 ".wl[73].w";
	setAttr ".wl[73].w[26]" 0.037453321121616458;
	setAttr ".wl[73].w[27]" 0.068073166438901697;
	setAttr ".wl[73].w[28]" 0.77401529643525169;
	setAttr ".wl[73].w[32]" 0.10770007042195193;
	setAttr ".wl[73].w[33]" 0.012758145582278186;
	setAttr -s 5 ".wl[74].w";
	setAttr ".wl[74].w[17]" 0.012978960450795229;
	setAttr ".wl[74].w[26]" 0.12749787540413898;
	setAttr ".wl[74].w[27]" 0.41535469650937418;
	setAttr ".wl[74].w[28]" 0.43264369003141934;
	setAttr ".wl[74].w[29]" 0.011524777604272328;
	setAttr -s 5 ".wl[75].w[26:30]"  0.034802782777350466 0.062172964676346948 
		0.7743992599597852 0.11567752176078083 0.012947470825736499;
	setAttr -s 5 ".wl[76].w[26:30]"  0.0015908264213492279 0.0020768052348959401 
		0.29989149827518347 0.69065996901787663 0.005780901050694778;
	setAttr -s 5 ".wl[77].w[26:30]"  0.037123492587316842 0.041629846905963122 
		0.42546838103348089 0.42398000601561919 0.071798273457620021;
	setAttr -s 5 ".wl[78].w[26:30]"  0.24234869211853097 0.24234869211853097 
		0.25357929890186942 0.19769795662506001 0.064025360236008619;
	setAttr -s 5 ".wl[79].w";
	setAttr ".wl[79].w[26]" 0.29674485863170219;
	setAttr ".wl[79].w[27]" 0.29674485863170197;
	setAttr ".wl[79].w[28]" 0.23633818910844023;
	setAttr ".wl[79].w[29]" 0.12435318804192609;
	setAttr ".wl[79].w[32]" 0.045818905586229641;
	setAttr -s 5 ".wl[80].w";
	setAttr ".wl[80].w[26]" 0.31554400483167699;
	setAttr ".wl[80].w[27]" 0.31554400483167699;
	setAttr ".wl[80].w[28]" 0.23305349867421837;
	setAttr ".wl[80].w[29]" 0.067947435733171094;
	setAttr ".wl[80].w[32]" 0.067911055929256683;
	setAttr -s 5 ".wl[81].w";
	setAttr ".wl[81].w[26]" 0.29795119523554509;
	setAttr ".wl[81].w[27]" 0.29795119523554509;
	setAttr ".wl[81].w[28]" 0.23580663413911218;
	setAttr ".wl[81].w[29]" 0.046226078969705139;
	setAttr ".wl[81].w[32]" 0.12206489642009265;
	setAttr -s 5 ".wl[82].w";
	setAttr ".wl[82].w[26]" 0.24234768620170508;
	setAttr ".wl[82].w[27]" 0.24234768620170508;
	setAttr ".wl[82].w[28]" 0.25357977175008745;
	setAttr ".wl[82].w[32]" 0.19769961294294947;
	setAttr ".wl[82].w[33]" 0.064025242903552937;
	setAttr -s 5 ".wl[83].w";
	setAttr ".wl[83].w[26]" 0.11706408860825955;
	setAttr ".wl[83].w[27]" 0.11706408860825955;
	setAttr ".wl[83].w[28]" 0.38366952773929758;
	setAttr ".wl[83].w[32]" 0.35803746373439627;
	setAttr ".wl[83].w[33]" 0.024164831309787041;
	setAttr -s 5 ".wl[84].w";
	setAttr ".wl[84].w[17]" 0.023673112571121601;
	setAttr ".wl[84].w[26]" 0.046021607047706845;
	setAttr ".wl[84].w[27]" 0.032611249293496097;
	setAttr ".wl[84].w[28]" 0.4689114822737751;
	setAttr ".wl[84].w[32]" 0.42878254881390038;
	setAttr -s 5 ".wl[85].w";
	setAttr ".wl[85].w[17]" 0.067085724661315113;
	setAttr ".wl[85].w[26]" 0.3849022531495131;
	setAttr ".wl[85].w[27]" 0.138825411560178;
	setAttr ".wl[85].w[28]" 0.3349400276802082;
	setAttr ".wl[85].w[32]" 0.074246582948785486;
	setAttr -s 5 ".wl[86].w";
	setAttr ".wl[86].w[17]" 3.8918911839544028e-007;
	setAttr ".wl[86].w[26]" 0.99999720965994865;
	setAttr ".wl[86].w[27]" 1.7105116805686077e-006;
	setAttr ".wl[86].w[28]" 6.6483429536071954e-007;
	setAttr ".wl[86].w[29]" 2.5804957073307867e-008;
	setAttr -s 5 ".wl[87].w";
	setAttr ".wl[87].w[17]" 0.067296950821934667;
	setAttr ".wl[87].w[26]" 0.36083218031219405;
	setAttr ".wl[87].w[27]" 0.13629597225321416;
	setAttr ".wl[87].w[28]" 0.35273426952069431;
	setAttr ".wl[87].w[29]" 0.082840627091962771;
	setAttr -s 5 ".wl[88].w";
	setAttr ".wl[88].w[17]" 0.02367331131198698;
	setAttr ".wl[88].w[26]" 0.046021993408983858;
	setAttr ".wl[88].w[27]" 0.032611523071939118;
	setAttr ".wl[88].w[28]" 0.46891186313706756;
	setAttr ".wl[88].w[29]" 0.4287813090700226;
	setAttr -s 5 ".wl[89].w[26:30]"  0.11706575248744416 0.11706575248744416 
		0.38366845055484683 0.35803498568592579 0.024165058784339145;
	setAttr -s 5 ".wl[90].w[27:31]"  0.11553278528337983 0.15485219517219531 
		0.12618475229747417 0.36883654015699113 0.23459372708995962;
	setAttr -s 5 ".wl[91].w[27:31]"  9.3092003960136712e-005 0.00015761676014904448 
		0.00030590801252263649 0.8698208945883068 0.12962248863506143;
	setAttr -s 5 ".wl[92].w";
	setAttr ".wl[92].w[29]" 0.016168422173978084;
	setAttr ".wl[92].w[30]" 0.56826314444616977;
	setAttr ".wl[92].w[31]" 0.39108399864876559;
	setAttr ".wl[92].w[33]" 0.012806819585206051;
	setAttr ".wl[92].w[34]" 0.01167761514588072;
	setAttr -s 5 ".wl[93].w";
	setAttr ".wl[93].w[27]" 0.050724378407013021;
	setAttr ".wl[93].w[30]" 0.25588920455260544;
	setAttr ".wl[93].w[31]" 0.21918496880621896;
	setAttr ".wl[93].w[33]" 0.25540689835501351;
	setAttr ".wl[93].w[34]" 0.21879454987914898;
	setAttr -s 5 ".wl[94].w[30:34]"  0.014382118149540015 0.013099338911122369 
		0.017289701121440789 0.562886071658389 0.39234277015950775;
	setAttr -s 5 ".wl[95].w";
	setAttr ".wl[95].w[27]" 9.3093490468876814e-005;
	setAttr ".wl[95].w[28]" 0.00015761946400809796;
	setAttr ".wl[95].w[32]" 0.00030591645695907615;
	setAttr ".wl[95].w[33]" 0.86982097054289997;
	setAttr ".wl[95].w[34]" 0.12962240004566392;
	setAttr -s 5 ".wl[96].w";
	setAttr ".wl[96].w[27]" 0.11553270532074557;
	setAttr ".wl[96].w[28]" 0.15485265395810618;
	setAttr ".wl[96].w[32]" 0.12618577059805067;
	setAttr ".wl[96].w[33]" 0.36883634100527873;
	setAttr ".wl[96].w[34]" 0.23459252911781889;
	setAttr -s 5 ".wl[97].w";
	setAttr ".wl[97].w[17]" 0.044846158349314387;
	setAttr ".wl[97].w[26]" 0.22904530999365413;
	setAttr ".wl[97].w[27]" 0.22904530999365413;
	setAttr ".wl[97].w[28]" 0.27066103600692759;
	setAttr ".wl[97].w[32]" 0.22640218565644976;
	setAttr -s 5 ".wl[98].w";
	setAttr ".wl[98].w[17]" 0.1073827315516073;
	setAttr ".wl[98].w[26]" 0.23521033516207948;
	setAttr ".wl[98].w[27]" 0.2333777479071614;
	setAttr ".wl[98].w[28]" 0.22784527195871832;
	setAttr ".wl[98].w[32]" 0.19618391342043354;
	setAttr -s 5 ".wl[99].w";
	setAttr ".wl[99].w[17]" 0.3465155130293413;
	setAttr ".wl[99].w[26]" 0.34651551302934119;
	setAttr ".wl[99].w[27]" 0.12957948080020859;
	setAttr ".wl[99].w[28]" 0.096430666453656166;
	setAttr ".wl[99].w[32]" 0.080958826687452842;
	setAttr -s 5 ".wl[100].w";
	setAttr ".wl[100].w[17]" 0.22095079184851377;
	setAttr ".wl[100].w[26]" 0.35966889977542482;
	setAttr ".wl[100].w[27]" 0.23075818714680105;
	setAttr ".wl[100].w[28]" 0.12471339839879715;
	setAttr ".wl[100].w[32]" 0.063908722830463338;
	setAttr -s 5 ".wl[101].w";
	setAttr ".wl[101].w[16]" 0.071066703727883623;
	setAttr ".wl[101].w[17]" 0.36678107160230017;
	setAttr ".wl[101].w[26]" 0.36678107160230039;
	setAttr ".wl[101].w[27]" 0.1193661769424713;
	setAttr ".wl[101].w[28]" 0.076004976125044435;
	setAttr -s 5 ".wl[102].w";
	setAttr ".wl[102].w[17]" 0.22063111634485455;
	setAttr ".wl[102].w[26]" 0.35796416145069104;
	setAttr ".wl[102].w[27]" 0.23036371487983631;
	setAttr ".wl[102].w[28]" 0.12567685343800752;
	setAttr ".wl[102].w[29]" 0.065364153886610654;
	setAttr -s 5 ".wl[103].w";
	setAttr ".wl[103].w[17]" 0.34231019936032508;
	setAttr ".wl[103].w[26]" 0.34231019936032508;
	setAttr ".wl[103].w[27]" 0.13045205788741979;
	setAttr ".wl[103].w[28]" 0.099501593968218019;
	setAttr ".wl[103].w[29]" 0.085425949423712039;
	setAttr -s 5 ".wl[104].w";
	setAttr ".wl[104].w[17]" 0.10698166039891452;
	setAttr ".wl[104].w[26]" 0.23228778827352373;
	setAttr ".wl[104].w[27]" 0.23050222191240718;
	setAttr ".wl[104].w[28]" 0.22999127242387937;
	setAttr ".wl[104].w[29]" 0.20023705699127514;
	setAttr -s 5 ".wl[105].w";
	setAttr ".wl[105].w[17]" 0.044846374715608733;
	setAttr ".wl[105].w[26]" 0.22904659045533934;
	setAttr ".wl[105].w[27]" 0.22904659045533934;
	setAttr ".wl[105].w[28]" 0.27066025057544818;
	setAttr ".wl[105].w[29]" 0.22640019379826437;
	setAttr -s 5 ".wl[106].w[27:31]"  0.1061204871815475 0.19551723403641572 
		0.17476816522346611 0.37533067006850074 0.14826344349006987;
	setAttr -s 5 ".wl[107].w[27:31]"  5.9373937720772717e-005 0.00011839426599138099 
		0.00027270803260939514 0.98718985131127257 0.012359672452405898;
	setAttr -s 5 ".wl[108].w[27:31]"  0.015259712054325431 0.018615529547371553 
		0.030461306084872158 0.6809378193255079 0.25472563298792306;
	setAttr -s 5 ".wl[109].w";
	setAttr ".wl[109].w[27]" 0.079788176637037925;
	setAttr ".wl[109].w[30]" 0.27615371232677277;
	setAttr ".wl[109].w[31]" 0.18436236011589621;
	setAttr ".wl[109].w[33]" 0.27562945267128547;
	setAttr ".wl[109].w[34]" 0.18406629824900764;
	setAttr -s 5 ".wl[110].w";
	setAttr ".wl[110].w[27]" 0.016670626139092665;
	setAttr ".wl[110].w[28]" 0.020116014429839069;
	setAttr ".wl[110].w[32]" 0.032350665126083401;
	setAttr ".wl[110].w[33]" 0.67152279893091993;
	setAttr ".wl[110].w[34]" 0.25933989537406493;
	setAttr -s 5 ".wl[111].w";
	setAttr ".wl[111].w[27]" 5.9373822284203038e-005;
	setAttr ".wl[111].w[28]" 0.00011839415026222153;
	setAttr ".wl[111].w[32]" 0.00027271130881768992;
	setAttr ".wl[111].w[33]" 0.98718995464548986;
	setAttr ".wl[111].w[34]" 0.01235956607314611;
	setAttr -s 5 ".wl[112].w";
	setAttr ".wl[112].w[27]" 0.10612011455717797;
	setAttr ".wl[112].w[28]" 0.19551759549788411;
	setAttr ".wl[112].w[32]" 0.17476946028555798;
	setAttr ".wl[112].w[33]" 0.37533040637256876;
	setAttr ".wl[112].w[34]" 0.14826242328681113;
	setAttr -s 5 ".wl[113].w";
	setAttr ".wl[113].w[17]" 0.042027043658503835;
	setAttr ".wl[113].w[26]" 0.2094232559826138;
	setAttr ".wl[113].w[27]" 0.2094232559826138;
	setAttr ".wl[113].w[28]" 0.28976225929793242;
	setAttr ".wl[113].w[32]" 0.24936418507833608;
	setAttr -s 5 ".wl[114].w";
	setAttr ".wl[114].w[17]" 0.093305833912685293;
	setAttr ".wl[114].w[26]" 0.22081332408508911;
	setAttr ".wl[114].w[27]" 0.21910945491670558;
	setAttr ".wl[114].w[28]" 0.24913518142315294;
	setAttr ".wl[114].w[32]" 0.21763620566236705;
	setAttr -s 5 ".wl[115].w";
	setAttr ".wl[115].w[17]" 0.32838280937049852;
	setAttr ".wl[115].w[26]" 0.32952661802075434;
	setAttr ".wl[115].w[27]" 0.13801813561505466;
	setAttr ".wl[115].w[28]" 0.10995412674194863;
	setAttr ".wl[115].w[32]" 0.094118310251743734;
	setAttr -s 5 ".wl[116].w";
	setAttr ".wl[116].w[17]" 0.23008841291566323;
	setAttr ".wl[116].w[26]" 0.3693819446655271;
	setAttr ".wl[116].w[27]" 0.21626179626459044;
	setAttr ".wl[116].w[28]" 0.1207122980503631;
	setAttr ".wl[116].w[32]" 0.063555548103856066;
	setAttr -s 5 ".wl[117].w";
	setAttr ".wl[117].w[16]" 0.042205083698201591;
	setAttr ".wl[117].w[17]" 0.37878453431972625;
	setAttr ".wl[117].w[26]" 0.38035273899559763;
	setAttr ".wl[117].w[27]" 0.124899942657899;
	setAttr ".wl[117].w[28]" 0.073757700328575704;
	setAttr -s 5 ".wl[118].w";
	setAttr ".wl[118].w[17]" 0.22962066441844597;
	setAttr ".wl[118].w[26]" 0.36704516942558135;
	setAttr ".wl[118].w[27]" 0.21592862505044683;
	setAttr ".wl[118].w[28]" 0.12205039605137839;
	setAttr ".wl[118].w[29]" 0.065355145054147343;
	setAttr -s 5 ".wl[119].w";
	setAttr ".wl[119].w[17]" 0.32442210410888483;
	setAttr ".wl[119].w[26]" 0.32552695862996017;
	setAttr ".wl[119].w[27]" 0.13850856928275176;
	setAttr ".wl[119].w[28]" 0.11311104564969682;
	setAttr ".wl[119].w[29]" 0.098431322328706328;
	setAttr -s 5 ".wl[120].w";
	setAttr ".wl[120].w[17]" 0.09301117411934158;
	setAttr ".wl[120].w[26]" 0.21849085971203083;
	setAttr ".wl[120].w[27]" 0.21682263136341723;
	setAttr ".wl[120].w[28]" 0.25082838032075483;
	setAttr ".wl[120].w[29]" 0.22084695448445557;
	setAttr -s 5 ".wl[121].w";
	setAttr ".wl[121].w[17]" 0.042027314773733788;
	setAttr ".wl[121].w[26]" 0.20942466203324339;
	setAttr ".wl[121].w[27]" 0.20942466203324339;
	setAttr ".wl[121].w[28]" 0.28976131784956033;
	setAttr ".wl[121].w[29]" 0.24936204331021913;
	setAttr -s 5 ".wl[122].w[26:30]"  0.20252889019116183 0.20252889019116183 
		0.29188579933952097 0.24861376192373166 0.05444265835442378;
	setAttr -s 5 ".wl[123].w[26:30]"  0.2437958693401405 0.2437958693401405 
		0.28036453462784983 0.19444813259962743 0.037595594092241814;
	setAttr -s 5 ".wl[124].w[26:30]"  0.19015151988720744 0.20177074692342831 
		0.25384913874241766 0.1735005239286628 0.18072807051828382;
	setAttr -s 5 ".wl[125].w[27:31]"  0.16799228409363431 0.23209862989500601 
		0.18705678174893653 0.24921155135386158 0.16364075290856159;
	setAttr -s 5 ".wl[126].w";
	setAttr ".wl[126].w[26]" 0.2063435324638245;
	setAttr ".wl[126].w[27]" 0.21960789926829474;
	setAttr ".wl[126].w[28]" 0.25703024143562159;
	setAttr ".wl[126].w[32]" 0.15776442669669341;
	setAttr ".wl[126].w[33]" 0.15925390013556576;
	setAttr -s 5 ".wl[127].w";
	setAttr ".wl[127].w[26]" 0.17909411297208777;
	setAttr ".wl[127].w[27]" 0.18972158877463532;
	setAttr ".wl[127].w[28]" 0.23816838833009799;
	setAttr ".wl[127].w[32]" 0.17344305715691244;
	setAttr ".wl[127].w[33]" 0.21957285276626645;
	setAttr -s 5 ".wl[128].w";
	setAttr ".wl[128].w[26]" 0.14200094301664437;
	setAttr ".wl[128].w[27]" 0.14345902962991519;
	setAttr ".wl[128].w[28]" 0.32895535888730099;
	setAttr ".wl[128].w[32]" 0.28262344733860933;
	setAttr ".wl[128].w[33]" 0.1029612211275301;
	setAttr -s 5 ".wl[129].w";
	setAttr ".wl[129].w[26]" 0.18047908201313856;
	setAttr ".wl[129].w[27]" 0.18242828578671502;
	setAttr ".wl[129].w[28]" 0.34163639609254526;
	setAttr ".wl[129].w[32]" 0.22819389806518137;
	setAttr ".wl[129].w[33]" 0.067262338042419781;
	setAttr -s 5 ".wl[130].w";
	setAttr ".wl[130].w[26]" 0.24383943362079294;
	setAttr ".wl[130].w[27]" 0.24383943362079294;
	setAttr ".wl[130].w[28]" 0.2803471718199475;
	setAttr ".wl[130].w[32]" 0.19439074253023039;
	setAttr ".wl[130].w[33]" 0.03758321840823621;
	setAttr -s 5 ".wl[131].w";
	setAttr ".wl[131].w[26]" 0.20252225361473628;
	setAttr ".wl[131].w[27]" 0.20252225361473628;
	setAttr ".wl[131].w[28]" 0.29189241372462282;
	setAttr ".wl[131].w[32]" 0.24862373716680253;
	setAttr ".wl[131].w[33]" 0.05443934187910205;
	setAttr -s 5 ".wl[132].w";
	setAttr ".wl[132].w[26]" 0.24316088442719627;
	setAttr ".wl[132].w[27]" 0.24316088442719627;
	setAttr ".wl[132].w[28]" 0.28130122084284309;
	setAttr ".wl[132].w[32]" 0.19503091331062639;
	setAttr ".wl[132].w[33]" 0.037346096992138068;
	setAttr -s 5 ".wl[133].w";
	setAttr ".wl[133].w[26]" 0.20059508314898622;
	setAttr ".wl[133].w[27]" 0.20059508314898622;
	setAttr ".wl[133].w[28]" 0.29400425767048483;
	setAttr ".wl[133].w[32]" 0.25097007748294747;
	setAttr ".wl[133].w[33]" 0.053835498548595255;
	setAttr -s 5 ".wl[134].w[26:30]"  0.18042790535453024 0.18237695801036807 
		0.34161476204139596 0.22827155582988576 0.067308818763819972;
	setAttr -s 5 ".wl[135].w[26:30]"  0.14200777299015849 0.14346450571939889 
		0.32895591030801263 0.2826212607125142 0.10295055026991581;
	setAttr -s 5 ".wl[136].w[26:30]"  0.2005964636632144 0.2005964636632144 
		0.29400341779819084 0.25096798009184285 0.053835674783537353;
	setAttr -s 5 ".wl[137].w[26:30]"  0.24315160699783195 0.24315160699783195 
		0.28130543518009082 0.19504297696673861 0.037348373857506612;
	setAttr -s 5 ".wl[138].w[26:30]"  0.16295589674498734 0.17215456974241897 
		0.2354794924891784 0.1869706772964069 0.24243936372700836;
	setAttr -s 5 ".wl[139].w[26:30]"  0.20654819002802299 0.20654819002802299 
		0.29092365398907516 0.24349417535979928 0.052485790595079601;
	setAttr -s 5 ".wl[140].w[26:30]"  0.204751045084066 0.204751045084066 
		0.29292090545324578 0.24565183862151094 0.051925165757111272;
	setAttr -s 5 ".wl[141].w[26:30]"  0.14557409768412313 0.14707544290260821 
		0.33042651028142633 0.27816095985329448 0.098762989278547833;
	setAttr -s 5 ".wl[142].w";
	setAttr ".wl[142].w[26]" 0.14580467899773528;
	setAttr ".wl[142].w[27]" 0.14731020635719097;
	setAttr ".wl[142].w[28]" 0.33052332180367977;
	setAttr ".wl[142].w[32]" 0.27786112465612689;
	setAttr ".wl[142].w[33]" 0.098500668185267135;
	setAttr -s 5 ".wl[143].w";
	setAttr ".wl[143].w[26]" 0.18216736511675177;
	setAttr ".wl[143].w[27]" 0.19307579350197174;
	setAttr ".wl[143].w[28]" 0.24043580574460871;
	setAttr ".wl[143].w[32]" 0.17212918187186074;
	setAttr ".wl[143].w[33]" 0.21219185376480693;
	setAttr -s 5 ".wl[144].w";
	setAttr ".wl[144].w[26]" 0.20680706589742845;
	setAttr ".wl[144].w[27]" 0.20680706589742845;
	setAttr ".wl[144].w[28]" 0.29086483511608247;
	setAttr ".wl[144].w[32]" 0.24316358828394205;
	setAttr ".wl[144].w[33]" 0.052357444805118628;
	setAttr -s 5 ".wl[145].w";
	setAttr ".wl[145].w[26]" 0.20501985583174959;
	setAttr ".wl[145].w[27]" 0.20501985583174959;
	setAttr ".wl[145].w[28]" 0.29285035379153884;
	setAttr ".wl[145].w[32]" 0.24530617397593901;
	setAttr ".wl[145].w[33]" 0.051803760569022979;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 8.5485389286235716 28.580356764965313 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[2]" -type "matrix" 6.693613450145993e-016 1.7889765444095194e-015 -1 -0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-015 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-015 -0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[3]" -type "matrix" -3.1806489720151766e-016 7.1110600523609972e-016 1 -0
		 0.23651468939617115 -0.97162791319508346 7.5749132939959201e-016 -0 0.97162791319508335 0.23651468939617104 1.3112890213765272e-016 -0
		 15.75339661024516 -24.192069798095325 14.952100000000019 1;
	setAttr ".pm[4]" -type "matrix" -7.7862017067354629e-016 2.5809568655261894e-008 0.99999999999999978 -0
		 0.97741416543986737 -0.21133279252753712 5.4544089702159369e-009 -0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-008 -0
		 38.494799132532364 23.920859481432768 12.094899382612956 1;
	setAttr ".pm[5]" -type "matrix" -1.3805402767519452e-008 1.3615198156657948e-008 -1 -0
		 0.93887631588660836 -0.34425464915842291 -1.7648660945676008e-008 0 -0.3442546491584228 -0.93887631588660847 -8.0304129894412123e-009 0
		 24.344687153438453 -43.723300868428026 -12.094900931389606 1;
	setAttr ".pm[6]" -type "matrix" 7.7249776432890241e-009 -1.634336896666231e-008 -0.99999999999999978 -0
		 0.017238817250843617 -0.99985140054899724 1.6474109837531978e-008 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-009 0
		 -30.350163356585984 -42.766656220525725 -12.094899535503076 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999999999978 -1.6162482267069893e-008 -1.0632309219184019e-008 -0
		 -1.6162482273500898e-008 -0.99999999999999956 -1.5415230359074293e-014 0 -1.0632309178159527e-008 1.5240265432222506e-014 -0.99999999999999933 -0
		 14.182899160148004 -42.525700229230644 -14.346000150797614 1;
	setAttr ".pm[8]" -type "matrix" 3.6929243270364759e-016 4.7854520619298905e-017 -1 -0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-016 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-016 -0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[9]" -type "matrix" 2.8232439365995012e-016 -2.4058376823856014e-016 1 -0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-016 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-016 -0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[10]" -type "matrix" 3.3969043598553431e-016 1.4899000132653635e-016 1 -0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-016 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-016 -0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[11]" -type "matrix" 2.0731684078555344e-016 2.5897082728895037e-016 -1 -0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-017 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-016 -0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[12]" -type "matrix" 3.1628320018632648e-016 -1.0005548030928621e-016 -1 -0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-017 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-016 -0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[13]" -type "matrix" 1 -8.8267921761093423e-017 -6.84540878947466e-016 -0
		 5.982944840221322e-017 1.0000000000000002 -3.4000580129145434e-016 0 7.1046403083575275e-016 3.4347524824340795e-016 1 -0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
	setAttr ".pm[14]" -type "matrix" 2.9171120138216851e-016 -2.0309007691163655e-016 0.99999999999999978 -0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-016 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-016 -0
		 5.141099383762306 27.116763673658916 6.384860464405965e-015 1;
	setAttr ".pm[15]" -type "matrix" 1.9255976590806024e-016 4.2123171441692991e-016 -0.99999999999999978 -0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-016 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-016 -0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-014 1;
	setAttr ".pm[16]" -type "matrix" -2.2254253739202254e-016 4.0618990599018242e-016 -0.99999999999999978 -0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-016 -0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-016 -0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-014 1;
	setAttr ".pm[17]" -type "matrix" -3.9263286525203279e-016 2.4567224874041425e-016 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-016 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-016 -0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-014 1;
	setAttr ".pm[18]" -type "matrix" -4.3236892918211134e-016 -1.660497809547105e-016 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-016 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-016 -0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[19]" -type "matrix" -4.200894483686455e-016 -1.9503916541689796e-016 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-016 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-016 -0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[20]" -type "matrix" -2.3367847652631728e-016 5.2235190187304229e-016 0.99999999999999978 -0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-016 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-016 -0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[21]" -type "matrix" 0.99999999999999978 7.889801871316359e-016 -4.1328562659829196e-016 -0
		 -7.1325529571241588e-016 0.99999999999999978 7.4940054162198017e-016 0 5.2724101640594644e-016 -9.1593399531575296e-016 0.99999999999999933 -0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[22]" -type "matrix" 4.3236892918211144e-016 1.6604978095471038e-016 -0.99999999999999978 -0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-016 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-016 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[23]" -type "matrix" 4.200894483686456e-016 1.9503916541689791e-016 -1 -0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-016 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-016 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[24]" -type "matrix" 2.3367847652631718e-016 1.6666666780649064e-016 0.99999999999999978 -0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-016 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-016 -0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[25]" -type "matrix" 0.99999999999999978 5.5459731209901231e-016 1.205471819538445e-017 -0
		 6.0517993594966963e-016 -1 -6.3837823915946462e-016 0 7.7400975786026954e-017 7.2164496600635165e-016 -0.99999999999999978 -0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[26]" -type "matrix" -4.0112524636791838e-016 2.3154687949413117e-016 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-016 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-016 -0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-014 1;
	setAttr ".pm[27]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -6.2314369504761027e-015 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[28]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -1.3912601358543541e-014 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[29]" -type "matrix" 5.0813779435729561e-016 1.296078129378641e-015 0.99999999999999978 -0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-016 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-015 -0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[30]" -type "matrix" -1.0103368778348008e-015 -4.0484730914130193e-016 -0.99999999999999978 -0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-016 -0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-015 -0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[31]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-016 -1.5416536010143854e-015 -0
		 5.3246366272141857e-016 0.99999999999999978 -5.6898930012039322e-016 0 1.611115502654318e-015 6.5919492087118591e-016 0.99999999999999978 -0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[32]" -type "matrix" 5.0211778276518463e-016 -8.7774694673919145e-016 0.99999999999999978 -0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-016 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-015 -0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[33]" -type "matrix" 7.131658175178445e-016 -5.6945907845917879e-016 -0.99999999999999978 -0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-016 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-016 -0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[34]" -type "matrix" 1 -5.6270869122286394e-016 7.6910344414326517e-017 -0
		 -2.7046580649882625e-016 -0.99999999999999956 -4.9057979900624073e-015 0 2.3587309789062293e-016 4.7184478546569121e-015 -0.99999999999999978 -0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".gm" -type "matrix" 22.220267096720594 0 0 0 0 20.926962622579421 0 0 0 0 20.926962622579421 0
		 0 19.617725165286679 31.000743091790163 1;
	setAttr -s 11 ".ma";
	setAttr -s 35 ".dpf[0:34]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 11 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 11 ".ifcl";
createNode tweak -n "tweak2";
	rename -uid "0E5880CE-4790-CA7D-CBC9-658712D39E8D";
createNode objectSet -n "skinCluster2Set";
	rename -uid "F365A87D-472F-7258-B29B-0A806F3A7710";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	rename -uid "A4710D6C-4C1D-37E2-FBCA-32B14F04B76C";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	rename -uid "6079D0D2-425F-7829-D175-13AF77A91FA1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "D97731F2-4D15-01E1-BA21-AC9115CC3960";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "0ACA0B98-4017-A5F0-ED91-54AE233009CB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "510FCE65-44F4-5685-B4D6-1FAB0C81AC05";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster3";
	rename -uid "1FF24D4C-43AD-9091-650B-B999AF88394A";
	setAttr -s 332 ".wl";
	setAttr -s 5 ".wl[0].w";
	setAttr ".wl[0].w[28]" 9.2118332708280497e-005;
	setAttr ".wl[0].w[30]" 6.6060643680289951e-005;
	setAttr ".wl[0].w[32]" 0.00015374316155077427;
	setAttr ".wl[0].w[33]" 0.49984403893103035;
	setAttr ".wl[0].w[34]" 0.49984403893103035;
	setAttr -s 5 ".wl[1].w";
	setAttr ".wl[1].w[28]" 0.00012633271843424693;
	setAttr ".wl[1].w[29]" 0.00020423128246014507;
	setAttr ".wl[1].w[30]" 0.49979141309805702;
	setAttr ".wl[1].w[31]" 0.49979141309805702;
	setAttr ".wl[1].w[33]" 8.6609802991528058e-005;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[28]" 0.00031321786619483837;
	setAttr ".wl[2].w[30]" 0.00019030985832968421;
	setAttr ".wl[2].w[32]" 0.00047149453258540301;
	setAttr ".wl[2].w[33]" 0.49951248887144506;
	setAttr ".wl[2].w[34]" 0.49951248887144506;
	setAttr -s 5 ".wl[3].w[27:31]"  0.0002573987027499729 0.0004288367580940844 
		0.00062347956232129838 0.49934514248841716 0.49934514248841738;
	setAttr -s 5 ".wl[4].w";
	setAttr ".wl[4].w[22]" 0.0042235236739760745;
	setAttr ".wl[4].w[27]" 0.0034000107521831406;
	setAttr ".wl[4].w[28]" 0.041706541223305769;
	setAttr ".wl[4].w[32]" 0.65409090271324999;
	setAttr ".wl[4].w[33]" 0.29657902163728495;
	setAttr -s 5 ".wl[5].w";
	setAttr ".wl[5].w[18]" 0.0012425902002628037;
	setAttr ".wl[5].w[27]" 0.0013340466204151678;
	setAttr ".wl[5].w[28]" 0.018579758676366818;
	setAttr ".wl[5].w[29]" 0.75135861520692371;
	setAttr ".wl[5].w[30]" 0.22748498929603161;
	setAttr -s 5 ".wl[6].w";
	setAttr ".wl[6].w[22]" 0.0055159118607217162;
	setAttr ".wl[6].w[27]" 0.0024715159190833546;
	setAttr ".wl[6].w[28]" 0.016327027557195058;
	setAttr ".wl[6].w[32]" 0.49244662415976859;
	setAttr ".wl[6].w[33]" 0.48323892050323125;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[18]" 0.0017471107142798359;
	setAttr ".wl[7].w[27]" 0.0010167536782245345;
	setAttr ".wl[7].w[28]" 0.0071350279856088944;
	setAttr ".wl[7].w[29]" 0.50043970589826969;
	setAttr ".wl[7].w[30]" 0.489661401723617;
	setAttr -s 5 ".wl[8].w[30:34]"  0.00077251104605278933 0.00077251104605278933 
		0.00095107561196499768 0.49875195114796478 0.49875195114796467;
	setAttr -s 5 ".wl[9].w[30:34]"  0.0022331086774024312 0.0022331086774024312 
		0.0024341996003444497 0.4965497915224254 0.49654979152242529;
	setAttr -s 5 ".wl[10].w";
	setAttr ".wl[10].w[26]" 0.00074641304580695038;
	setAttr ".wl[10].w[27]" 0.0011214195893023179;
	setAttr ".wl[10].w[28]" 0.0088883364048649039;
	setAttr ".wl[10].w[32]" 0.65865717174868776;
	setAttr ".wl[10].w[33]" 0.33058665921133801;
	setAttr -s 5 ".wl[11].w";
	setAttr ".wl[11].w[22]" 0.022010309742150774;
	setAttr ".wl[11].w[23]" 0.015972207669087416;
	setAttr ".wl[11].w[28]" 0.016123710167607844;
	setAttr ".wl[11].w[32]" 0.47294688621057701;
	setAttr ".wl[11].w[33]" 0.47294688621057701;
	setAttr -s 5 ".wl[12].w";
	setAttr ".wl[12].w[29]" 0.00095215018179203544;
	setAttr ".wl[12].w[30]" 0.49874978706108208;
	setAttr ".wl[12].w[31]" 0.49874978706108208;
	setAttr ".wl[12].w[33]" 0.00077413784802189234;
	setAttr ".wl[12].w[34]" 0.00077413784802189234;
	setAttr -s 5 ".wl[13].w";
	setAttr ".wl[13].w[29]" 0.0024357477855548853;
	setAttr ".wl[13].w[30]" 0.49654547987914865;
	setAttr ".wl[13].w[31]" 0.49654547987914854;
	setAttr ".wl[13].w[33]" 0.0022366462280740034;
	setAttr ".wl[13].w[34]" 0.0022366462280740034;
	setAttr -s 5 ".wl[14].w[26:30]"  0.00074948837864609655 0.0011262597600195066 
		0.0089161859706211963 0.65849631574589074 0.33071175014482246;
	setAttr -s 5 ".wl[15].w";
	setAttr ".wl[15].w[18]" 0.02200203877985837;
	setAttr ".wl[15].w[19]" 0.015967263509075548;
	setAttr ".wl[15].w[28]" 0.016134388586321605;
	setAttr ".wl[15].w[29]" 0.47294815456237221;
	setAttr ".wl[15].w[30]" 0.47294815456237221;
	setAttr -s 5 ".wl[16].w[27:31]"  0.00060617248138229989 0.0015836825265381541 
		0.0029193837572830867 0.89633410615920961 0.098556655075586808;
	setAttr -s 5 ".wl[17].w[27:31]"  1.395979834668229e-005 2.8547251217875197e-005 
		6.8288770601477032e-005 0.99584741612570848 0.0040417880541253649;
	setAttr -s 5 ".wl[18].w";
	setAttr ".wl[18].w[27]" 1.3832146771157191e-005;
	setAttr ".wl[18].w[28]" 2.8297779926257729e-005;
	setAttr ".wl[18].w[32]" 6.7697006356544508e-005;
	setAttr ".wl[18].w[33]" 0.99588026870803359;
	setAttr ".wl[18].w[34]" 0.0040099043589125246;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[27]" 0.00060616831915786585;
	setAttr ".wl[19].w[28]" 0.0015836729353703098;
	setAttr ".wl[19].w[32]" 0.0029193971540438395;
	setAttr ".wl[19].w[33]" 0.89633491057437142;
	setAttr ".wl[19].w[34]" 0.098555851017056509;
	setAttr -s 5 ".wl[20].w";
	setAttr ".wl[20].w[27]" 3.8280982123609733e-005;
	setAttr ".wl[20].w[28]" 9.3421531923332731e-005;
	setAttr ".wl[20].w[32]" 0.00022622362080361162;
	setAttr ".wl[20].w[33]" 0.98545638774363609;
	setAttr ".wl[20].w[34]" 0.014185686121513446;
	setAttr -s 5 ".wl[21].w";
	setAttr ".wl[21].w[27]" 1.9445849574825659e-005;
	setAttr ".wl[21].w[28]" 3.7456746886243223e-005;
	setAttr ".wl[21].w[32]" 0.00011396213715388016;
	setAttr ".wl[21].w[33]" 0.99226552187845352;
	setAttr ".wl[21].w[34]" 0.0075636133879315179;
	setAttr -s 5 ".wl[22].w[27:31]"  1.9582934959329399e-005 3.7706987099049174e-005 
		0.00011471615577792999 0.9922205216643496 0.0076074722578141091;
	setAttr -s 5 ".wl[23].w[27:31]"  3.8281748321861611e-005 9.3423426850272525e-005 
		0.00022622550645865313 0.98545608887112701 0.014185980447242142;
	setAttr -s 5 ".wl[24].w[27:31]"  0.00084686581087070872 0.0029917412927849673 
		0.0070218085685627646 0.96557003345166481 0.023569550876116761;
	setAttr -s 5 ".wl[25].w[27:31]"  3.3463607918675409e-006 8.9918139115308485e-006 
		3.0744956558891967e-005 0.9998331791685996 0.00012373770013809465;
	setAttr -s 5 ".wl[26].w";
	setAttr ".wl[26].w[27]" 3.3273827410801798e-006;
	setAttr ".wl[26].w[28]" 8.9462934718739609e-006;
	setAttr ".wl[26].w[32]" 3.0591806839854062e-005;
	setAttr ".wl[26].w[33]" 0.99983396774835009;
	setAttr ".wl[26].w[34]" 0.00012316676859711105;
	setAttr -s 5 ".wl[27].w";
	setAttr ".wl[27].w[27]" 0.00084685873578428878;
	setAttr ".wl[27].w[28]" 0.0029917152085012278;
	setAttr ".wl[27].w[32]" 0.007021846468308706;
	setAttr ".wl[27].w[33]" 0.96557025854224299;
	setAttr ".wl[27].w[34]" 0.023569321045162767;
	setAttr -s 5 ".wl[28].w";
	setAttr ".wl[28].w[27]" 6.2832654882710381e-005;
	setAttr ".wl[28].w[28]" 0.00019670026333649422;
	setAttr ".wl[28].w[32]" 0.00066967976259650153;
	setAttr ".wl[28].w[33]" 0.99621231709585623;
	setAttr ".wl[28].w[34]" 0.0028584702233281013;
	setAttr -s 5 ".wl[29].w";
	setAttr ".wl[29].w[27]" 5.412868895291507e-005;
	setAttr ".wl[29].w[28]" 0.00013044722414676233;
	setAttr ".wl[29].w[32]" 0.00065536426315589776;
	setAttr ".wl[29].w[33]" 0.99686850859284282;
	setAttr ".wl[29].w[34]" 0.0022915512309016153;
	setAttr -s 5 ".wl[30].w[27:31]"  5.4218857746877569e-005 0.00013059378976287595 
		0.00065606907266565118 0.99686591524581813 0.0022932030340065365;
	setAttr -s 5 ".wl[31].w[27:31]"  6.2833321500892003e-005 0.00019670267010707577 
		0.00066967734521438923 0.99621228272893469 0.0028585039342429856;
	setAttr -s 5 ".wl[32].w[27:31]"  0.0012461544113707488 0.010226296898625517 
		0.07492137740949685 0.91078003915489847 0.0028261321256084701;
	setAttr -s 5 ".wl[33].w[27:31]"  2.3418154808753599e-006 1.06980129076235e-005 
		0.00019696493207271035 0.99978505528189565 4.9399576431868715e-006;
	setAttr -s 5 ".wl[34].w";
	setAttr ".wl[34].w[27]" 2.2756416942987198e-006;
	setAttr ".wl[34].w[28]" 1.0404543987168846e-005;
	setAttr ".wl[34].w[32]" 0.00019162310205000051;
	setAttr ".wl[34].w[33]" 0.99979089038486813;
	setAttr ".wl[34].w[34]" 4.8063274004423142e-006;
	setAttr -s 5 ".wl[35].w";
	setAttr ".wl[35].w[27]" 0.0012461462437046201;
	setAttr ".wl[35].w[28]" 0.010226163463636749;
	setAttr ".wl[35].w[32]" 0.074922462431660106;
	setAttr ".wl[35].w[33]" 0.91077911730161154;
	setAttr ".wl[35].w[34]" 0.0028261105593869432;
	setAttr -s 5 ".wl[36].w";
	setAttr ".wl[36].w[27]" 0.00016636750848128166;
	setAttr ".wl[36].w[28]" 0.00097556998440278782;
	setAttr ".wl[36].w[32]" 0.014931006113035475;
	setAttr ".wl[36].w[33]" 0.98338778022013185;
	setAttr ".wl[36].w[34]" 0.00053927617394870211;
	setAttr -s 5 ".wl[37].w";
	setAttr ".wl[37].w[27]" 0.00035688839209483883;
	setAttr ".wl[37].w[28]" 0.001144606851880219;
	setAttr ".wl[37].w[32]" 0.021189190014576208;
	setAttr ".wl[37].w[33]" 0.97549927912418843;
	setAttr ".wl[37].w[34]" 0.0018100356172603518;
	setAttr -s 5 ".wl[38].w[27:31]"  0.0003569449335685888 0.0011441008703460375 
		0.021181652491235898 0.97550863191775417 0.0018086697870952951;
	setAttr -s 5 ".wl[39].w[27:31]"  0.00016636510067910486 0.00097556283269025499 
		0.014930450644697668 0.98338835252077117 0.00053926890116181311;
	setAttr -s 5 ".wl[40].w[26:30]"  0.0002011312562610891 0.00027563921190773934 
		0.004151382325686701 0.70647584995649959 0.28889599724964482;
	setAttr -s 5 ".wl[41].w[26:30]"  6.5547200834277205e-006 9.8196411628731707e-006 
		6.149840832507552e-005 0.17048261106420703 0.82943951616622169;
	setAttr -s 5 ".wl[42].w";
	setAttr ".wl[42].w[26]" 6.3867551410816296e-006;
	setAttr ".wl[42].w[27]" 9.565953634337583e-006;
	setAttr ".wl[42].w[28]" 5.9974020002316595e-005;
	setAttr ".wl[42].w[32]" 0.16819152623905417;
	setAttr ".wl[42].w[33]" 0.83173254703216815;
	setAttr -s 5 ".wl[43].w";
	setAttr ".wl[43].w[22]" 0.00053370264298403781;
	setAttr ".wl[43].w[27]" 0.00062324262613085938;
	setAttr ".wl[43].w[28]" 0.0095502889621380104;
	setAttr ".wl[43].w[32]" 0.60773573885629439;
	setAttr ".wl[43].w[33]" 0.38155702691245269;
	setAttr -s 5 ".wl[44].w";
	setAttr ".wl[44].w[22]" 0.00025696397761521797;
	setAttr ".wl[44].w[27]" 0.00019280906002906562;
	setAttr ".wl[44].w[28]" 0.0017003415407490941;
	setAttr ".wl[44].w[32]" 0.3845965501838457;
	setAttr ".wl[44].w[33]" 0.61325333523776093;
	setAttr -s 5 ".wl[45].w";
	setAttr ".wl[45].w[22]" 0.00062535993551435058;
	setAttr ".wl[45].w[28]" 0.0018925107420792128;
	setAttr ".wl[45].w[32]" 0.3801880971458535;
	setAttr ".wl[45].w[33]" 0.61677654382592595;
	setAttr ".wl[45].w[34]" 0.00051748835062696787;
	setAttr -s 5 ".wl[46].w";
	setAttr ".wl[46].w[18]" 0.00062515583250889934;
	setAttr ".wl[46].w[28]" 0.0018937722996701216;
	setAttr ".wl[46].w[29]" 0.38026873237161907;
	setAttr ".wl[46].w[30]" 0.61669464711036659;
	setAttr ".wl[46].w[31]" 0.00051769238583532684;
	setAttr -s 5 ".wl[47].w";
	setAttr ".wl[47].w[18]" 4.7605141768520171e-005;
	setAttr ".wl[47].w[27]" 4.5268790009240142e-005;
	setAttr ".wl[47].w[28]" 0.00037978697508031235;
	setAttr ".wl[47].w[29]" 0.28775273265417778;
	setAttr ".wl[47].w[30]" 0.71177460643896429;
	setAttr -s 5 ".wl[48].w[30:34]"  0.0032103608284026436 0.0032103608284026436 
		0.0023501535309841163 0.49561456240610535 0.49561456240610535;
	setAttr -s 5 ".wl[49].w[30:34]"  0.0044863126097762001 0.0044863126097762001 
		0.0033871177407024749 0.49382012851987273 0.4938201285198725;
	setAttr -s 5 ".wl[50].w";
	setAttr ".wl[50].w[27]" 0.0016491362692441806;
	setAttr ".wl[50].w[28]" 0.0025080059321458729;
	setAttr ".wl[50].w[32]" 0.0054080985334316453;
	setAttr ".wl[50].w[33]" 0.86288273051113606;
	setAttr ".wl[50].w[34]" 0.12755202875404226;
	setAttr -s 5 ".wl[51].w";
	setAttr ".wl[51].w[27]" 0.0022006195463342921;
	setAttr ".wl[51].w[28]" 0.0039058694664898847;
	setAttr ".wl[51].w[32]" 0.01140726841935305;
	setAttr ".wl[51].w[33]" 0.95078077700082397;
	setAttr ".wl[51].w[34]" 0.031705465566998776;
	setAttr -s 5 ".wl[52].w";
	setAttr ".wl[52].w[27]" 0.0026409391653827051;
	setAttr ".wl[52].w[28]" 0.007350558042629028;
	setAttr ".wl[52].w[32]" 0.080448474098778255;
	setAttr ".wl[52].w[33]" 0.90666295382033213;
	setAttr ".wl[52].w[34]" 0.0028970748728777878;
	setAttr -s 5 ".wl[53].w";
	setAttr ".wl[53].w[26]" 0.0016263986514912438;
	setAttr ".wl[53].w[27]" 0.0027012648635449496;
	setAttr ".wl[53].w[28]" 0.0094416679831993908;
	setAttr ".wl[53].w[32]" 0.4765450569126603;
	setAttr ".wl[53].w[33]" 0.50968561158910419;
	setAttr -s 5 ".wl[54].w";
	setAttr ".wl[54].w[26]" 0.0026038399478140804;
	setAttr ".wl[54].w[27]" 0.0041420705245011971;
	setAttr ".wl[54].w[28]" 0.02270066377593756;
	setAttr ".wl[54].w[32]" 0.60358940486127499;
	setAttr ".wl[54].w[33]" 0.3669640208904722;
	setAttr -s 5 ".wl[55].w";
	setAttr ".wl[55].w[22]" 0.012180922039108323;
	setAttr ".wl[55].w[23]" 0.0082641096150306917;
	setAttr ".wl[55].w[28]" 0.016027296065178446;
	setAttr ".wl[55].w[32]" 0.48176383614034135;
	setAttr ".wl[55].w[33]" 0.48176383614034124;
	setAttr -s 5 ".wl[56].w";
	setAttr ".wl[56].w[26]" 0.0025273759317112178;
	setAttr ".wl[56].w[27]" 0.0039810868617397152;
	setAttr ".wl[56].w[28]" 0.0093018394609524786;
	setAttr ".wl[56].w[32]" 0.45341180032030176;
	setAttr ".wl[56].w[33]" 0.5307778974252948;
	setAttr -s 5 ".wl[57].w";
	setAttr ".wl[57].w[27]" 0.0026749190892106445;
	setAttr ".wl[57].w[28]" 0.0061110453203571937;
	setAttr ".wl[57].w[32]" 0.10124775238154723;
	setAttr ".wl[57].w[33]" 0.88534366258178643;
	setAttr ".wl[57].w[34]" 0.0046226206270984947;
	setAttr -s 5 ".wl[58].w";
	setAttr ".wl[58].w[27]" 0.0021248430909026755;
	setAttr ".wl[58].w[28]" 0.0035525850979452349;
	setAttr ".wl[58].w[32]" 0.015424816397458182;
	setAttr ".wl[58].w[33]" 0.94052897992186391;
	setAttr ".wl[58].w[34]" 0.038368775491830001;
	setAttr -s 5 ".wl[59].w";
	setAttr ".wl[59].w[27]" 0.0013440464857283894;
	setAttr ".wl[59].w[28]" 0.0019793549102399568;
	setAttr ".wl[59].w[32]" 0.0054813686402761927;
	setAttr ".wl[59].w[33]" 0.85048863821116127;
	setAttr ".wl[59].w[34]" 0.14070659175259415;
	setAttr -s 5 ".wl[60].w[26:30]"  0.0022415963636852033 0.0035407302484460586 
		0.02028969723229291 0.61052255457596294 0.36340542157961281;
	setAttr -s 5 ".wl[61].w";
	setAttr ".wl[61].w[18]" 0.011994203139339224;
	setAttr ".wl[61].w[19]" 0.0081147137556801495;
	setAttr ".wl[61].w[28]" 0.01535725322491255;
	setAttr ".wl[61].w[29]" 0.48226691494003388;
	setAttr ".wl[61].w[30]" 0.4822669149400341;
	setAttr -s 5 ".wl[62].w[26:30]"  0.0022557957162545354 0.0035388839999288234 
		0.0084770428982304455 0.4515196606773062 0.53420861670828002;
	setAttr -s 5 ".wl[63].w[27:31]"  0.0022692550142799899 0.0053137457996234446 
		0.091853678102174707 0.89649996613073846 0.0040633549531834852;
	setAttr -s 5 ".wl[64].w[27:31]"  0.0018180655782396866 0.0030912319672816292 
		0.013606309193709632 0.94700073015500408 0.034483663105765054;
	setAttr -s 5 ".wl[65].w[27:31]"  0.0011502250207710029 0.0017167798495047639 
		0.0047971524782893299 0.86180500268506999 0.13053083996636497;
	setAttr -s 5 ".wl[66].w";
	setAttr ".wl[66].w[29]" 0.0021924004223728096;
	setAttr ".wl[66].w[30]" 0.4960064705856857;
	setAttr ".wl[66].w[31]" 0.4960064705856857;
	setAttr ".wl[66].w[33]" 0.0028973292031279191;
	setAttr ".wl[66].w[34]" 0.0028973292031279191;
	setAttr -s 5 ".wl[67].w";
	setAttr ".wl[67].w[29]" 0.0032004732799437185;
	setAttr ".wl[67].w[30]" 0.49429661481019438;
	setAttr ".wl[67].w[31]" 0.49429661481019438;
	setAttr ".wl[67].w[33]" 0.0041031485498337836;
	setAttr ".wl[67].w[34]" 0.0041031485498337836;
	setAttr -s 5 ".wl[68].w[27:31]"  0.0014007494711009564 0.0021618779128069004 
		0.0047072639690853759 0.87423227875456577 0.11749782989244099;
	setAttr -s 5 ".wl[69].w[27:31]"  0.0018290287025860968 0.0033085393842817194 
		0.0098024704285270218 0.95724867955294946 0.02781128193165576;
	setAttr -s 5 ".wl[70].w[27:31]"  0.0021347964346058327 0.0061219644981010532 
		0.070299207071573722 0.91900462032334318 0.0024394116723763337;
	setAttr -s 5 ".wl[71].w[26:30]"  0.0013383494933114455 0.0022085634541795349 
		0.0079965133835369559 0.47473985295318777 0.51371672071578423;
	setAttr -s 5 ".wl[72].w[27:31]"  1.7867417666999734e-005 3.0588167919344525e-005 
		5.8248596612330416e-005 0.84102952296738442 0.15886377285041686;
	setAttr -s 5 ".wl[73].w";
	setAttr ".wl[73].w[29]" 0.0011819386474103231;
	setAttr ".wl[73].w[30]" 0.49857972150467755;
	setAttr ".wl[73].w[31]" 0.49857972150467744;
	setAttr ".wl[73].w[33]" 0.00083069517245717896;
	setAttr ".wl[73].w[34]" 0.00082792317077747392;
	setAttr -s 5 ".wl[74].w[30:34]"  0.00098610368512439006 0.00098284665903231603 
		0.0013538463814958116 0.49833860163717375 0.49833860163717375;
	setAttr -s 5 ".wl[75].w";
	setAttr ".wl[75].w[27]" 1.7740297171843468e-005;
	setAttr ".wl[75].w[28]" 3.0380905340197501e-005;
	setAttr ".wl[75].w[32]" 5.7857189036002528e-005;
	setAttr ".wl[75].w[33]" 0.84153463954101904;
	setAttr ".wl[75].w[34]" 0.15835938206743297;
	setAttr -s 5 ".wl[76].w";
	setAttr ".wl[76].w[27]" 0.00033256058053994893;
	setAttr ".wl[76].w[28]" 0.00069586873822518225;
	setAttr ".wl[76].w[32]" 0.0010976890034848936;
	setAttr ".wl[76].w[33]" 0.60307183027788702;
	setAttr ".wl[76].w[34]" 0.39480205139986291;
	setAttr -s 5 ".wl[77].w";
	setAttr ".wl[77].w[27]" 1.9784671284525354e-005;
	setAttr ".wl[77].w[28]" 3.9434323496793279e-005;
	setAttr ".wl[77].w[32]" 7.6172575114079842e-005;
	setAttr ".wl[77].w[33]" 0.78546196750752328;
	setAttr ".wl[77].w[34]" 0.21440264092258138;
	setAttr -s 5 ".wl[78].w";
	setAttr ".wl[78].w[27]" 1.0708789724773101e-005;
	setAttr ".wl[78].w[28]" 1.7779889863504972e-005;
	setAttr ".wl[78].w[32]" 4.0871846204675865e-005;
	setAttr ".wl[78].w[33]" 0.84170780904110853;
	setAttr ".wl[78].w[34]" 0.15822283043309857;
	setAttr -s 5 ".wl[79].w";
	setAttr ".wl[79].w[28]" 0.000670771316598045;
	setAttr ".wl[79].w[30]" 0.00063547796440787069;
	setAttr ".wl[79].w[32]" 0.0014598106201981816;
	setAttr ".wl[79].w[33]" 0.59762679499460891;
	setAttr ".wl[79].w[34]" 0.3996071451041871;
	setAttr -s 5 ".wl[80].w";
	setAttr ".wl[80].w[28]" 0.00081894486270649213;
	setAttr ".wl[80].w[29]" 0.0017677140951681233;
	setAttr ".wl[80].w[30]" 0.58964130829833084;
	setAttr ".wl[80].w[31]" 0.40696406232809018;
	setAttr ".wl[80].w[33]" 0.00080797041570435308;
	setAttr -s 5 ".wl[81].w[27:31]"  1.0798484797208851e-005 1.7923237719287757e-005 
		4.1199264913506723e-005 0.84110559966588871 0.1588244793466814;
	setAttr -s 5 ".wl[82].w[27:31]"  1.9785082484095466e-005 3.9435120913247416e-005 
		7.6173412490328994e-005 0.7854590050823409 0.21440560130177147;
	setAttr -s 5 ".wl[83].w[27:31]"  0.00033256203373511719 0.00069587080660817968 
		0.0010976832051584253 0.60307078866451636 0.39480309528998192;
	setAttr -s 5 ".wl[84].w[27:31]"  0.01624663132858329 0.023868453171518478 
		0.024397216765295701 0.46774384936730118 0.4677438493673014;
	setAttr -s 5 ".wl[85].w";
	setAttr ".wl[85].w[29]" 0.002857212714172119;
	setAttr ".wl[85].w[30]" 0.49583909975860174;
	setAttr ".wl[85].w[31]" 0.49583909975860174;
	setAttr ".wl[85].w[33]" 0.0027322938843121615;
	setAttr ".wl[85].w[34]" 0.0027322938843121615;
	setAttr -s 5 ".wl[86].w[30:34]"  0.0038787293516347895 0.0038787293516347895 
		0.0039832099678892494 0.49412966566442057 0.49412966566442057;
	setAttr -s 5 ".wl[87].w";
	setAttr ".wl[87].w[27]" 0.022843860671395232;
	setAttr ".wl[87].w[28]" 0.033537128757225927;
	setAttr ".wl[87].w[32]" 0.033743565815029235;
	setAttr ".wl[87].w[33]" 0.45493772237817481;
	setAttr ".wl[87].w[34]" 0.45493772237817481;
	setAttr -s 5 ".wl[88].w";
	setAttr ".wl[88].w[27]" 0.00016020556735053714;
	setAttr ".wl[88].w[28]" 0.00030354160810297601;
	setAttr ".wl[88].w[32]" 0.00048172640798459297;
	setAttr ".wl[88].w[33]" 0.499527263208281;
	setAttr ".wl[88].w[34]" 0.49952726320828089;
	setAttr -s 5 ".wl[89].w";
	setAttr ".wl[89].w[27]" 3.4442746483313416e-005;
	setAttr ".wl[89].w[28]" 6.2528992276442418e-005;
	setAttr ".wl[89].w[32]" 0.00010971653182638984;
	setAttr ".wl[89].w[33]" 0.49989665586470694;
	setAttr ".wl[89].w[34]" 0.49989665586470694;
	setAttr -s 5 ".wl[90].w[30:34]"  0.0025689593040324117 0.0025689593040324117 
		0.0038078187711843396 0.49552713131037546 0.49552713131037546;
	setAttr -s 5 ".wl[91].w[30:34]"  0.00088119765306984821 0.00088119765306984821 
		0.0010275069718358653 0.4986050488610122 0.4986050488610122;
	setAttr -s 5 ".wl[92].w";
	setAttr ".wl[92].w[29]" 0.0017298539032338347;
	setAttr ".wl[92].w[30]" 0.49735814600023703;
	setAttr ".wl[92].w[31]" 0.49735814600023726;
	setAttr ".wl[92].w[33]" 0.0017769270481458775;
	setAttr ".wl[92].w[34]" 0.0017769270481458775;
	setAttr -s 5 ".wl[93].w";
	setAttr ".wl[93].w[29]" 0.0031824659538952989;
	setAttr ".wl[93].w[30]" 0.4960964704705027;
	setAttr ".wl[93].w[31]" 0.4960964704705027;
	setAttr ".wl[93].w[33]" 0.0023122965525496225;
	setAttr ".wl[93].w[34]" 0.0023122965525496225;
	setAttr -s 5 ".wl[94].w[27:31]"  1.8148344668102964e-005 3.1597711836697371e-005 
		5.3453314952430582e-005 0.49994840031427146 0.49994840031427146;
	setAttr -s 5 ".wl[95].w[27:31]"  0.00013253855459393235 0.00023971341424879067 
		0.00036548786344567282 0.49963113008385585 0.49963113008385585;
	setAttr -s 5 ".wl[96].w[27:31]"  0.020590315612464001 0.030802594204342316 
		0.031123709294441946 0.45874169044437585 0.45874169044437585;
	setAttr -s 5 ".wl[97].w";
	setAttr ".wl[97].w[29]" 0.0025334654490381673;
	setAttr ".wl[97].w[30]" 0.49648493188222104;
	setAttr ".wl[97].w[31]" 0.49648493188222126;
	setAttr ".wl[97].w[33]" 0.0022483353932597591;
	setAttr ".wl[97].w[34]" 0.0022483353932597591;
	setAttr -s 5 ".wl[98].w";
	setAttr ".wl[98].w[29]" 0.00090844801504225592;
	setAttr ".wl[98].w[30]" 0.49884961380307641;
	setAttr ".wl[98].w[31]" 0.49884961380307641;
	setAttr ".wl[98].w[33]" 0.00069616218940247825;
	setAttr ".wl[98].w[34]" 0.00069616218940247825;
	setAttr -s 5 ".wl[99].w";
	setAttr ".wl[99].w[29]" 0.0035615048079699193;
	setAttr ".wl[99].w[30]" 0.49570090321751259;
	setAttr ".wl[99].w[31]" 0.49570090321751248;
	setAttr ".wl[99].w[33]" 0.0025183443785025367;
	setAttr ".wl[99].w[34]" 0.0025183443785025367;
	setAttr -s 5 ".wl[100].w[27:31]"  3.546444792310432e-006 6.4471353409726779e-006 
		1.4941977323764857e-005 0.89804284228688658 0.10193222215565642;
	setAttr -s 5 ".wl[101].w[27:31]"  1.3024282185007228e-005 2.7879952312024501e-005 
		8.5455277411623418e-005 0.99348299029020304 0.0063906501978882348;
	setAttr -s 5 ".wl[102].w[27:31]"  3.602747414169496e-005 0.00010976053718341108 
		0.00039419072114803998 0.99773521569740575 0.0017248055701210672;
	setAttr -s 5 ".wl[103].w[27:31]"  0.00011839828378509948 0.00065661723950509595 
		0.011192139982675216 0.98763541779458375 0.0003974266994508798;
	setAttr -s 5 ".wl[104].w";
	setAttr ".wl[104].w[18]" 3.0961878800853015e-005;
	setAttr ".wl[104].w[27]" 2.970256173173057e-005;
	setAttr ".wl[104].w[28]" 0.00016752440169070081;
	setAttr ".wl[104].w[29]" 0.1575686684896129;
	setAttr ".wl[104].w[30]" 0.84220314266816387;
	setAttr -s 5 ".wl[105].w";
	setAttr ".wl[105].w[18]" 0.0019933147769396111;
	setAttr ".wl[105].w[27]" 0.0011430579187892058;
	setAttr ".wl[105].w[28]" 0.0055282408382782431;
	setAttr ".wl[105].w[29]" 0.49566769323299653;
	setAttr ".wl[105].w[30]" 0.49566769323299642;
	setAttr -s 5 ".wl[106].w[26:30]"  0.0012834556849793187 0.0017896576171684366 
		0.034808837798547258 0.85037549608591689 0.11174255281338809;
	setAttr -s 5 ".wl[107].w[26:30]"  0.00013760329363505296 0.00019139149646966265 
		0.0046475693199537647 0.95584292049694008 0.039180515393001318;
	setAttr -s 5 ".wl[108].w[27:31]"  0.0009394409831349138 0.0074426740149737105 
		0.058507644071620249 0.93119426912444703 0.0019159718058241783;
	setAttr -s 5 ".wl[109].w[27:31]"  0.0006805944269382716 0.0022910263759168357 
		0.0053916277975423667 0.97376759280611203 0.017869158593490433;
	setAttr -s 5 ".wl[110].w[27:31]"  0.011941461724038772 0.031505708329984651 
		0.037683704277526396 0.6419638665495454 0.27690525911890473;
	setAttr -s 5 ".wl[111].w[27:31]"  0.00027688005353020286 0.00053987308215061873 
		0.00084712355445446094 0.62765626055536572 0.37067986275449899;
	setAttr -s 5 ".wl[112].w";
	setAttr ".wl[112].w[27]" 0.028183090887880128;
	setAttr ".wl[112].w[28]" 0.041951249127319012;
	setAttr ".wl[112].w[32]" 0.041989996592527237;
	setAttr ".wl[112].w[33]" 0.44393783169613682;
	setAttr ".wl[112].w[34]" 0.44393783169613682;
	setAttr -s 5 ".wl[113].w[30:34]"  0.0022669026109475555 0.0022669026109475555 
		0.0025402030420763376 0.49646299586801435 0.49646299586801423;
	setAttr -s 5 ".wl[114].w[30:34]"  0.00070349019969875967 0.00070349019969875967 
		0.00091276922446751837 0.49884012518806753 0.49884012518806753;
	setAttr -s 5 ".wl[115].w[30:34]"  0.0028565751174520794 0.0028565751174520794 
		0.0043114564937973346 0.49498769663564929 0.49498769663564929;
	setAttr -s 5 ".wl[116].w";
	setAttr ".wl[116].w[27]" 3.4087284403803694e-006;
	setAttr ".wl[116].w[28]" 6.1824678629882276e-006;
	setAttr ".wl[116].w[32]" 1.4327260271566872e-005;
	setAttr ".wl[116].w[33]" 0.90122337514956619;
	setAttr ".wl[116].w[34]" 0.098752706393858927;
	setAttr -s 5 ".wl[117].w";
	setAttr ".wl[117].w[27]" 1.2476994446578077e-005;
	setAttr ".wl[117].w[28]" 2.6637769336647742e-005;
	setAttr ".wl[117].w[32]" 8.1650336753325521e-005;
	setAttr ".wl[117].w[33]" 0.99376972550900899;
	setAttr ".wl[117].w[34]" 0.0061095093904544222;
	setAttr -s 5 ".wl[118].w";
	setAttr ".wl[118].w[27]" 3.3061341965550936e-005;
	setAttr ".wl[118].w[28]" 0.00010044155402700363;
	setAttr ".wl[118].w[32]" 0.00036093228746100141;
	setAttr ".wl[118].w[33]" 0.99792667951606828;
	setAttr ".wl[118].w[34]" 0.0015788853004781707;
	setAttr -s 5 ".wl[119].w";
	setAttr ".wl[119].w[27]" 0.00011012998680584455;
	setAttr ".wl[119].w[28]" 0.00060919313272682785;
	setAttr ".wl[119].w[32]" 0.010449152302158525;
	setAttr ".wl[119].w[33]" 0.98846388446275024;
	setAttr ".wl[119].w[34]" 0.00036764011555856692;
	setAttr -s 5 ".wl[120].w";
	setAttr ".wl[120].w[22]" 0.00010329873986193852;
	setAttr ".wl[120].w[28]" 0.00048413810007678421;
	setAttr ".wl[120].w[32]" 0.24345588725896575;
	setAttr ".wl[120].w[33]" 0.75587406178655436;
	setAttr ".wl[120].w[34]" 8.2614114541062567e-005;
	setAttr -s 5 ".wl[121].w";
	setAttr ".wl[121].w[22]" 0.005964255975483986;
	setAttr ".wl[121].w[27]" 0.00267096137263672;
	setAttr ".wl[121].w[28]" 0.012364013640651912;
	setAttr ".wl[121].w[32]" 0.48950038450561373;
	setAttr ".wl[121].w[33]" 0.48950038450561362;
	setAttr -s 5 ".wl[122].w";
	setAttr ".wl[122].w[22]" 0.0037129114909994422;
	setAttr ".wl[122].w[27]" 0.0046543803800088322;
	setAttr ".wl[122].w[28]" 0.074904544446762242;
	setAttr ".wl[122].w[32]" 0.73547245442579989;
	setAttr ".wl[122].w[33]" 0.18125570925642956;
	setAttr -s 5 ".wl[123].w";
	setAttr ".wl[123].w[26]" 0.00035337055246090503;
	setAttr ".wl[123].w[27]" 0.00047814974593996207;
	setAttr ".wl[123].w[28]" 0.011938818952781149;
	setAttr ".wl[123].w[32]" 0.89139133858247699;
	setAttr ".wl[123].w[33]" 0.095838322166341069;
	setAttr -s 5 ".wl[124].w";
	setAttr ".wl[124].w[27]" 0.00091094874860953435;
	setAttr ".wl[124].w[28]" 0.0071825562896831383;
	setAttr ".wl[124].w[32]" 0.056937699583936435;
	setAttr ".wl[124].w[33]" 0.93311971103343594;
	setAttr ".wl[124].w[34]" 0.0018490843443349468;
	setAttr -s 5 ".wl[125].w";
	setAttr ".wl[125].w[27]" 0.00067322931855055802;
	setAttr ".wl[125].w[28]" 0.0022587935161723777;
	setAttr ".wl[125].w[32]" 0.0053161224277532655;
	setAttr ".wl[125].w[33]" 0.97415314705776401;
	setAttr ".wl[125].w[34]" 0.017598707679759868;
	setAttr -s 5 ".wl[126].w";
	setAttr ".wl[126].w[27]" 0.01198601140217485;
	setAttr ".wl[126].w[28]" 0.031513452500852725;
	setAttr ".wl[126].w[32]" 0.037685284442397431;
	setAttr ".wl[126].w[33]" 0.64217737453634727;
	setAttr ".wl[126].w[34]" 0.27663787711822774;
	setAttr -s 5 ".wl[127].w";
	setAttr ".wl[127].w[27]" 0.00027669914238341012;
	setAttr ".wl[127].w[28]" 0.00053807844167081916;
	setAttr ".wl[127].w[32]" 0.00084410904457140018;
	setAttr ".wl[127].w[33]" 0.62825077751945924;
	setAttr ".wl[127].w[34]" 0.37009033585191509;
	setAttr -s 5 ".wl[128].w";
	setAttr ".wl[128].w[29]" 0.009388347807733682;
	setAttr ".wl[128].w[30]" 0.47049512603980004;
	setAttr ".wl[128].w[31]" 0.47049512603980004;
	setAttr ".wl[128].w[33]" 0.024810700056333165;
	setAttr ".wl[128].w[34]" 0.024810700056333165;
	setAttr -s 5 ".wl[129].w";
	setAttr ".wl[129].w[29]" 0.0091462705677398896;
	setAttr ".wl[129].w[30]" 0.47646709874007148;
	setAttr ".wl[129].w[31]" 0.4764670987400717;
	setAttr ".wl[129].w[33]" 0.018959765976058432;
	setAttr ".wl[129].w[34]" 0.018959765976058432;
	setAttr -s 5 ".wl[130].w";
	setAttr ".wl[130].w[29]" 0.0088788338182244041;
	setAttr ".wl[130].w[30]" 0.48159056613039769;
	setAttr ".wl[130].w[31]" 0.48159056613039769;
	setAttr ".wl[130].w[33]" 0.013988186545277989;
	setAttr ".wl[130].w[34]" 0.013951847375702294;
	setAttr -s 5 ".wl[131].w";
	setAttr ".wl[131].w[28]" 0.018493091819842156;
	setAttr ".wl[131].w[29]" 0.030613359839439944;
	setAttr ".wl[131].w[30]" 0.6626122040394683;
	setAttr ".wl[131].w[31]" 0.27158246961492805;
	setAttr ".wl[131].w[33]" 0.016698874686321592;
	setAttr -s 5 ".wl[132].w[27:31]"  0.025388821394462063 0.032825940681935319 
		0.065310506906216911 0.7505186194825838 0.12595611153480185;
	setAttr -s 5 ".wl[133].w[26:30]"  0.022773210482316928 0.039506808332718975 
		0.065241494054907145 0.24901560391574115 0.62346288321431576;
	setAttr -s 5 ".wl[134].w[26:30]"  0.021680076020043841 0.040670244500489457 
		0.077146956223286572 0.4328865003035347 0.42761622295264556;
	setAttr -s 5 ".wl[135].w[26:30]"  0.027354036684138258 0.050239186946128778 
		0.12324057828187326 0.44955253777221693 0.34961366031564278;
	setAttr -s 5 ".wl[136].w";
	setAttr ".wl[136].w[27]" 0.026548178041022642;
	setAttr ".wl[136].w[28]" 0.040475947177662015;
	setAttr ".wl[136].w[29]" 0.45598784868367148;
	setAttr ".wl[136].w[30]" 0.45598784868367148;
	setAttr ".wl[136].w[32]" 0.021000177413972372;
	setAttr -s 5 ".wl[137].w[26:30]"  0.016008416307012181 0.027079898151511305 
		0.041659924649279409 0.44619431323442421 0.46905744765777296;
	setAttr -s 5 ".wl[138].w[27:31]"  0.02743707052786197 0.041100483266858182 
		0.26012665356819331 0.64774614144530029 0.023589651191786264;
	setAttr -s 5 ".wl[139].w[27:31]"  0.019150898340653401 0.024229234542939366 
		0.072576650040803076 0.75446536672607878 0.1295778503495254;
	setAttr -s 5 ".wl[140].w";
	setAttr ".wl[140].w[28]" 0.013882288307082749;
	setAttr ".wl[140].w[29]" 0.029961513833812844;
	setAttr ".wl[140].w[30]" 0.65685811202363953;
	setAttr ".wl[140].w[31]" 0.28240134804914085;
	setAttr ".wl[140].w[33]" 0.016896737786324039;
	setAttr -s 5 ".wl[141].w";
	setAttr ".wl[141].w[29]" 0.01311504488395385;
	setAttr ".wl[141].w[30]" 0.51665704934860401;
	setAttr ".wl[141].w[31]" 0.44284396605303433;
	setAttr ".wl[141].w[33]" 0.014017787225935923;
	setAttr ".wl[141].w[34]" 0.013366152488471731;
	setAttr -s 5 ".wl[142].w";
	setAttr ".wl[142].w[29]" 0.0080270250969566286;
	setAttr ".wl[142].w[30]" 0.47838804953886049;
	setAttr ".wl[142].w[31]" 0.47838804953886038;
	setAttr ".wl[142].w[33]" 0.017598437912661268;
	setAttr ".wl[142].w[34]" 0.017598437912661268;
	setAttr -s 5 ".wl[143].w";
	setAttr ".wl[143].w[29]" 0.0077706759493606911;
	setAttr ".wl[143].w[30]" 0.47466818644756864;
	setAttr ".wl[143].w[31]" 0.47466818644756864;
	setAttr ".wl[143].w[33]" 0.021446475577751024;
	setAttr ".wl[143].w[34]" 0.021446475577751024;
	setAttr -s 5 ".wl[144].w";
	setAttr ".wl[144].w[27]" 0.023678916161406036;
	setAttr ".wl[144].w[30]" 0.25011624752124517;
	setAttr ".wl[144].w[31]" 0.25011624752124517;
	setAttr ".wl[144].w[33]" 0.23804429439805186;
	setAttr ".wl[144].w[34]" 0.23804429439805186;
	setAttr -s 5 ".wl[145].w";
	setAttr ".wl[145].w[27]" 0.027442887759584617;
	setAttr ".wl[145].w[30]" 0.24960871091346096;
	setAttr ".wl[145].w[31]" 0.24960871091346096;
	setAttr ".wl[145].w[33]" 0.23666984520674669;
	setAttr ".wl[145].w[34]" 0.23666984520674669;
	setAttr -s 5 ".wl[146].w";
	setAttr ".wl[146].w[27]" 0.028723176078791834;
	setAttr ".wl[146].w[30]" 0.24987765142603929;
	setAttr ".wl[146].w[31]" 0.24962493231198074;
	setAttr ".wl[146].w[33]" 0.23601342474631715;
	setAttr ".wl[146].w[34]" 0.235760815436871;
	setAttr -s 5 ".wl[147].w";
	setAttr ".wl[147].w[28]" 0.072998700760913374;
	setAttr ".wl[147].w[30]" 0.28327263049395063;
	setAttr ".wl[147].w[31]" 0.19308756049020356;
	setAttr ".wl[147].w[33]" 0.26703586774605265;
	setAttr ".wl[147].w[34]" 0.18360524050887966;
	setAttr -s 5 ".wl[148].w";
	setAttr ".wl[148].w[28]" 0.12967779788033262;
	setAttr ".wl[148].w[30]" 0.30985868683755796;
	setAttr ".wl[148].w[31]" 0.13716776963924787;
	setAttr ".wl[148].w[33]" 0.29178229478444956;
	setAttr ".wl[148].w[34]" 0.13151345085841204;
	setAttr -s 5 ".wl[149].w";
	setAttr ".wl[149].w[27]" 0.21421712933428433;
	setAttr ".wl[149].w[28]" 0.21632887439207765;
	setAttr ".wl[149].w[29]" 0.16075756338529648;
	setAttr ".wl[149].w[30]" 0.21070580886756565;
	setAttr ".wl[149].w[33]" 0.19799062402077597;
	setAttr -s 5 ".wl[150].w";
	setAttr ".wl[150].w[27]" 0.23980004840583588;
	setAttr ".wl[150].w[28]" 0.24605585250370679;
	setAttr ".wl[150].w[29]" 0.1763847094581279;
	setAttr ".wl[150].w[30]" 0.17159886309872399;
	setAttr ".wl[150].w[32]" 0.16616052653360547;
	setAttr -s 5 ".wl[151].w";
	setAttr ".wl[151].w[26]" 0.13366066690225575;
	setAttr ".wl[151].w[27]" 0.28801497775136287;
	setAttr ".wl[151].w[28]" 0.29998580037984207;
	setAttr ".wl[151].w[29]" 0.14351275220884754;
	setAttr ".wl[151].w[32]" 0.13482580275769182;
	setAttr -s 5 ".wl[152].w";
	setAttr ".wl[152].w[28]" 0.097419670196654998;
	setAttr ".wl[152].w[29]" 0.23153530112456178;
	setAttr ".wl[152].w[30]" 0.23153530112456178;
	setAttr ".wl[152].w[32]" 0.21975486377711068;
	setAttr ".wl[152].w[33]" 0.21975486377711068;
	setAttr -s 5 ".wl[153].w";
	setAttr ".wl[153].w[28]" 0.12863182396187653;
	setAttr ".wl[153].w[29]" 0.22287484977664537;
	setAttr ".wl[153].w[30]" 0.22493378600914207;
	setAttr ".wl[153].w[32]" 0.21086014319180743;
	setAttr ".wl[153].w[33]" 0.21269939706052859;
	setAttr -s 5 ".wl[154].w";
	setAttr ".wl[154].w[28]" 0.14261037946370581;
	setAttr ".wl[154].w[29]" 0.18814723113582529;
	setAttr ".wl[154].w[30]" 0.252709272402517;
	setAttr ".wl[154].w[32]" 0.17875082342367923;
	setAttr ".wl[154].w[33]" 0.23778229357427258;
	setAttr -s 5 ".wl[155].w";
	setAttr ".wl[155].w[29]" 0.11125301482050298;
	setAttr ".wl[155].w[30]" 0.31710996495993204;
	setAttr ".wl[155].w[31]" 0.1391873795040072;
	setAttr ".wl[155].w[33]" 0.29889177455443861;
	setAttr ".wl[155].w[34]" 0.13355786616111914;
	setAttr -s 5 ".wl[156].w";
	setAttr ".wl[156].w[29]" 0.060909070750878355;
	setAttr ".wl[156].w[30]" 0.28471656963897368;
	setAttr ".wl[156].w[31]" 0.19783549185105326;
	setAttr ".wl[156].w[33]" 0.26846223137825026;
	setAttr ".wl[156].w[34]" 0.18807663638084451;
	setAttr -s 5 ".wl[157].w";
	setAttr ".wl[157].w[29]" 0.034971518450486808;
	setAttr ".wl[157].w[30]" 0.2572601231269262;
	setAttr ".wl[157].w[31]" 0.2390860220713778;
	setAttr ".wl[157].w[33]" 0.24276538193417671;
	setAttr ".wl[157].w[34]" 0.22591695441703241;
	setAttr -s 5 ".wl[158].w";
	setAttr ".wl[158].w[29]" 0.020756954410582701;
	setAttr ".wl[158].w[30]" 0.25144699593289055;
	setAttr ".wl[158].w[31]" 0.25144699593289044;
	setAttr ".wl[158].w[33]" 0.23817452686181817;
	setAttr ".wl[158].w[34]" 0.23817452686181817;
	setAttr -s 5 ".wl[159].w";
	setAttr ".wl[159].w[29]" 0.018090834970130695;
	setAttr ".wl[159].w[30]" 0.25180493419142957;
	setAttr ".wl[159].w[31]" 0.25180493419142957;
	setAttr ".wl[159].w[33]" 0.23914964832350502;
	setAttr ".wl[159].w[34]" 0.23914964832350502;
	setAttr -s 5 ".wl[160].w[30:34]"  0.070544855275813084 0.070544855275813084 
		0.015512557253541667 0.42169886609741608 0.42169886609741608;
	setAttr -s 5 ".wl[161].w";
	setAttr ".wl[161].w[28]" 0.017693784847852452;
	setAttr ".wl[161].w[30]" 0.063859803353434788;
	setAttr ".wl[161].w[31]" 0.063859803353434788;
	setAttr ".wl[161].w[33]" 0.42729330422263895;
	setAttr ".wl[161].w[34]" 0.42729330422263895;
	setAttr -s 5 ".wl[162].w[30:34]"  0.053924685314377239 0.053814361580137728 
		0.018404977897883614 0.43695125657086969 0.43690471863673175;
	setAttr -s 5 ".wl[163].w[30:34]"  0.061946536862243322 0.047597436996933119 
		0.054576049336196558 0.54134845593008851 0.29453152087453854;
	setAttr -s 5 ".wl[164].w";
	setAttr ".wl[164].w[27]" 0.065952838888083704;
	setAttr ".wl[164].w[28]" 0.073310257972571624;
	setAttr ".wl[164].w[32]" 0.10446527389944314;
	setAttr ".wl[164].w[33]" 0.58973132172578469;
	setAttr ".wl[164].w[34]" 0.16654030751411686;
	setAttr -s 5 ".wl[165].w";
	setAttr ".wl[165].w[26]" 0.058391762963732934;
	setAttr ".wl[165].w[27]" 0.10736532283909765;
	setAttr ".wl[165].w[28]" 0.1351343372049591;
	setAttr ".wl[165].w[32]" 0.25705394162484874;
	setAttr ".wl[165].w[33]" 0.4420546353673615;
	setAttr -s 5 ".wl[166].w";
	setAttr ".wl[166].w[26]" 0.057286822672854551;
	setAttr ".wl[166].w[27]" 0.11527299772894663;
	setAttr ".wl[166].w[28]" 0.15774202897559914;
	setAttr ".wl[166].w[32]" 0.3386589504529669;
	setAttr ".wl[166].w[33]" 0.33103920016963273;
	setAttr -s 5 ".wl[167].w";
	setAttr ".wl[167].w[26]" 0.069700702472667658;
	setAttr ".wl[167].w[27]" 0.14013152111731386;
	setAttr ".wl[167].w[28]" 0.219788891889132;
	setAttr ".wl[167].w[32]" 0.31120645526686991;
	setAttr ".wl[167].w[33]" 0.25917242925401657;
	setAttr -s 5 ".wl[168].w";
	setAttr ".wl[168].w[28]" 0.069363848659857383;
	setAttr ".wl[168].w[29]" 0.061472628431800166;
	setAttr ".wl[168].w[30]" 0.061472628431800166;
	setAttr ".wl[168].w[32]" 0.4038454472382712;
	setAttr ".wl[168].w[33]" 0.4038454472382712;
	setAttr -s 5 ".wl[169].w";
	setAttr ".wl[169].w[27]" 0.066876279911549888;
	setAttr ".wl[169].w[28]" 0.083043962420509973;
	setAttr ".wl[169].w[30]" 0.052240676883031641;
	setAttr ".wl[169].w[32]" 0.39391201172594592;
	setAttr ".wl[169].w[33]" 0.40392706905896253;
	setAttr -s 5 ".wl[170].w";
	setAttr ".wl[170].w[27]" 0.072281998896745719;
	setAttr ".wl[170].w[28]" 0.087411579342602047;
	setAttr ".wl[170].w[30]" 0.053486756087318926;
	setAttr ".wl[170].w[32]" 0.28610915769793993;
	setAttr ".wl[170].w[33]" 0.50071050797539352;
	setAttr -s 5 ".wl[171].w";
	setAttr ".wl[171].w[28]" 0.052026548428904994;
	setAttr ".wl[171].w[30]" 0.0682635646973518;
	setAttr ".wl[171].w[32]" 0.11241626623974509;
	setAttr ".wl[171].w[33]" 0.59832032582731232;
	setAttr ".wl[171].w[34]" 0.1689732948066858;
	setAttr -s 5 ".wl[172].w[30:34]"  0.061931840620748073 0.048195037701623693 
		0.05306636016915689 0.5358710217692666 0.30093573973920468;
	setAttr -s 5 ".wl[173].w[30:34]"  0.054454678783156102 0.051554993599437965 
		0.026410666935624126 0.45725681666980733 0.41032284401197444;
	setAttr -s 5 ".wl[174].w[30:34]"  0.059941159244926871 0.059941159244926871 
		0.01525748334577242 0.43243009908218699 0.43243009908218688;
	setAttr -s 5 ".wl[175].w[30:34]"  0.06584812976090347 0.06584812976090347 
		0.01369548212734898 0.4273041291754221 0.4273041291754221;
	setAttr -s 5 ".wl[176].w";
	setAttr ".wl[176].w[28]" 0.020195063505890894;
	setAttr ".wl[176].w[30]" 0.12911344026380361;
	setAttr ".wl[176].w[31]" 0.12911344026380361;
	setAttr ".wl[176].w[33]" 0.36078902798325091;
	setAttr ".wl[176].w[34]" 0.36078902798325091;
	setAttr -s 5 ".wl[177].w";
	setAttr ".wl[177].w[28]" 0.038903466985891616;
	setAttr ".wl[177].w[30]" 0.13437224008657922;
	setAttr ".wl[177].w[31]" 0.13437224008657922;
	setAttr ".wl[177].w[33]" 0.34617602642047501;
	setAttr ".wl[177].w[34]" 0.34617602642047501;
	setAttr -s 5 ".wl[178].w[30:34]"  0.11374707087884665 0.11356083944872036 
		0.02428687803697465 0.37428671210209791 0.37411849953336035;
	setAttr -s 5 ".wl[179].w[30:34]"  0.12858145762572798 0.094882971386427872 
		0.065360278058055832 0.44098644396903303 0.27018884896075529;
	setAttr -s 5 ".wl[180].w";
	setAttr ".wl[180].w[28]" 0.10464211188761803;
	setAttr ".wl[180].w[30]" 0.13508383944564506;
	setAttr ".wl[180].w[32]" 0.11724798582948427;
	setAttr ".wl[180].w[33]" 0.47409517666495055;
	setAttr ".wl[180].w[34]" 0.16893088617230217;
	setAttr -s 5 ".wl[181].w";
	setAttr ".wl[181].w[27]" 0.16512851142312215;
	setAttr ".wl[181].w[28]" 0.1825541588462615;
	setAttr ".wl[181].w[30]" 0.091262858374575317;
	setAttr ".wl[181].w[32]" 0.22582444796850928;
	setAttr ".wl[181].w[33]" 0.33523002338753177;
	setAttr -s 5 ".wl[182].w";
	setAttr ".wl[182].w[26]" 0.086286174692183831;
	setAttr ".wl[182].w[27]" 0.17945177494910092;
	setAttr ".wl[182].w[28]" 0.20878957399895604;
	setAttr ".wl[182].w[32]" 0.26611282682440779;
	setAttr ".wl[182].w[33]" 0.2593596495353514;
	setAttr -s 5 ".wl[183].w";
	setAttr ".wl[183].w[26]" 0.10162220348817211;
	setAttr ".wl[183].w[27]" 0.21365766770192993;
	setAttr ".wl[183].w[28]" 0.26668192027874732;
	setAttr ".wl[183].w[32]" 0.2251502408461605;
	setAttr ".wl[183].w[33]" 0.19288796768499022;
	setAttr -s 5 ".wl[184].w";
	setAttr ".wl[184].w[28]" 0.088147528068251046;
	setAttr ".wl[184].w[29]" 0.1152386578255595;
	setAttr ".wl[184].w[30]" 0.1152386578255595;
	setAttr ".wl[184].w[32]" 0.34068757814031503;
	setAttr ".wl[184].w[33]" 0.34068757814031503;
	setAttr -s 5 ".wl[185].w";
	setAttr ".wl[185].w[28]" 0.11305352252939238;
	setAttr ".wl[185].w[29]" 0.10530500432342998;
	setAttr ".wl[185].w[30]" 0.10582279778062351;
	setAttr ".wl[185].w[32]" 0.33517906387427993;
	setAttr ".wl[185].w[33]" 0.34063961149227429;
	setAttr -s 5 ".wl[186].w";
	setAttr ".wl[186].w[27]" 0.11056614012054783;
	setAttr ".wl[186].w[28]" 0.12068152359828641;
	setAttr ".wl[186].w[30]" 0.11116634586619842;
	setAttr ".wl[186].w[32]" 0.26116547308006277;
	setAttr ".wl[186].w[33]" 0.39642051733490452;
	setAttr -s 5 ".wl[187].w";
	setAttr ".wl[187].w[28]" 0.073646462251943975;
	setAttr ".wl[187].w[30]" 0.14154855036114439;
	setAttr ".wl[187].w[32]" 0.12564716369733711;
	setAttr ".wl[187].w[33]" 0.48670986675945621;
	setAttr ".wl[187].w[34]" 0.1724479569301183;
	setAttr -s 5 ".wl[188].w[30:34]"  0.12820185333394002 0.09602228383233595 
		0.063614224520806437 0.43737942724859324 0.27478221106432438;
	setAttr -s 5 ".wl[189].w[30:34]"  0.11549832131700255 0.10866286064715734 
		0.034096903426031021 0.38750145898416694 0.35424045562564216;
	setAttr -s 5 ".wl[190].w[30:34]"  0.11973481566431438 0.11973481566431438 
		0.019649460085306512 0.37044045429303235 0.37044045429303235;
	setAttr -s 5 ".wl[191].w[30:34]"  0.12528835785455655 0.12528835785455655 
		0.017197829728105529 0.36611272728139072 0.36611272728139072;
	setAttr -s 5 ".wl[192].w";
	setAttr ".wl[192].w[29]" 0.015060590714450267;
	setAttr ".wl[192].w[30]" 0.42681813827046627;
	setAttr ".wl[192].w[31]" 0.42681813827046605;
	setAttr ".wl[192].w[33]" 0.065651566372308776;
	setAttr ".wl[192].w[34]" 0.065651566372308776;
	setAttr -s 5 ".wl[193].w";
	setAttr ".wl[193].w[28]" 0.030570688671380519;
	setAttr ".wl[193].w[30]" 0.40981832470263491;
	setAttr ".wl[193].w[31]" 0.40981832470263513;
	setAttr ".wl[193].w[33]" 0.074896330961674681;
	setAttr ".wl[193].w[34]" 0.074896330961674681;
	setAttr -s 5 ".wl[194].w";
	setAttr ".wl[194].w[29]" 0.017661543405176061;
	setAttr ".wl[194].w[30]" 0.44195309108181446;
	setAttr ".wl[194].w[31]" 0.44191784417382457;
	setAttr ".wl[194].w[33]" 0.049285243455897534;
	setAttr ".wl[194].w[34]" 0.049182277883287329;
	setAttr -s 5 ".wl[195].w";
	setAttr ".wl[195].w[29]" 0.052967050751639072;
	setAttr ".wl[195].w[30]" 0.55124490946437532;
	setAttr ".wl[195].w[31]" 0.29523507933044663;
	setAttr ".wl[195].w[33]" 0.056766616475771407;
	setAttr ".wl[195].w[34]" 0.04378634397776747;
	setAttr -s 5 ".wl[196].w[27:31]"  0.062229768907110988 0.069803961608943921 
		0.10206306919840609 0.60116836116410244 0.16473483912143658;
	setAttr -s 5 ".wl[197].w[26:30]"  0.055294212729998952 0.10129759412636888 
		0.12968866145619148 0.25910961303937885 0.45460991864806194;
	setAttr -s 5 ".wl[198].w[26:30]"  0.054200940759939295 0.10858144476774127 
		0.15170757343585986 0.3465765041108772 0.33893353692558231;
	setAttr -s 5 ".wl[199].w[26:30]"  0.06614422106385949 0.13219722368520023 
		0.2134530098405526 0.32148224901790246 0.26672329639248532;
	setAttr -s 5 ".wl[200].w";
	setAttr ".wl[200].w[28]" 0.06710515905562861;
	setAttr ".wl[200].w[29]" 0.40937021350138814;
	setAttr ".wl[200].w[30]" 0.40937021350138814;
	setAttr ".wl[200].w[32]" 0.057077206970797559;
	setAttr ".wl[200].w[33]" 0.057077206970797559;
	setAttr -s 5 ".wl[201].w";
	setAttr ".wl[201].w[27]" 0.063290419559616756;
	setAttr ".wl[201].w[28]" 0.079662618458517701;
	setAttr ".wl[201].w[29]" 0.39915500240696683;
	setAttr ".wl[201].w[30]" 0.40982028811155807;
	setAttr ".wl[201].w[33]" 0.048071671463340584;
	setAttr -s 5 ".wl[202].w";
	setAttr ".wl[202].w[27]" 0.068262724536939948;
	setAttr ".wl[202].w[28]" 0.083664118469036181;
	setAttr ".wl[202].w[29]" 0.28700196590161658;
	setAttr ".wl[202].w[30]" 0.51201486528830376;
	setAttr ".wl[202].w[33]" 0.049056325804103525;
	setAttr -s 5 ".wl[203].w";
	setAttr ".wl[203].w[28]" 0.049689677869153299;
	setAttr ".wl[203].w[29]" 0.11011404816138812;
	setAttr ".wl[203].w[30]" 0.61017278405346387;
	setAttr ".wl[203].w[31]" 0.16736688294357341;
	setAttr ".wl[203].w[33]" 0.062656606972421411;
	setAttr -s 5 ".wl[204].w";
	setAttr ".wl[204].w[29]" 0.05149891894089146;
	setAttr ".wl[204].w[30]" 0.54553703739505399;
	setAttr ".wl[204].w[31]" 0.3018482852380952;
	setAttr ".wl[204].w[33]" 0.056773197658200505;
	setAttr ".wl[204].w[34]" 0.044342560767758846;
	setAttr -s 5 ".wl[205].w";
	setAttr ".wl[205].w[29]" 0.025403186714646659;
	setAttr ".wl[205].w[30]" 0.46315001668679717;
	setAttr ".wl[205].w[31]" 0.41458168867870376;
	setAttr ".wl[205].w[33]" 0.049742743453196417;
	setAttr ".wl[205].w[34]" 0.04712236446665611;
	setAttr -s 5 ".wl[206].w";
	setAttr ".wl[206].w[29]" 0.014700732600493052;
	setAttr ".wl[206].w[30]" 0.43747547205726844;
	setAttr ".wl[206].w[31]" 0.43747547205726822;
	setAttr ".wl[206].w[33]" 0.055174161642485155;
	setAttr ".wl[206].w[34]" 0.055174161642485155;
	setAttr -s 5 ".wl[207].w";
	setAttr ".wl[207].w[29]" 0.01324719179552686;
	setAttr ".wl[207].w[30]" 0.43238660415242508;
	setAttr ".wl[207].w[31]" 0.43238660415242508;
	setAttr ".wl[207].w[33]" 0.060989799949811491;
	setAttr ".wl[207].w[34]" 0.060989799949811491;
	setAttr -s 5 ".wl[208].w";
	setAttr ".wl[208].w[29]" 0.0057438044423793952;
	setAttr ".wl[208].w[30]" 0.48660860863772465;
	setAttr ".wl[208].w[31]" 0.48660860863772487;
	setAttr ".wl[208].w[33]" 0.01051948914108553;
	setAttr ".wl[208].w[34]" 0.01051948914108553;
	setAttr -s 5 ".wl[209].w";
	setAttr ".wl[209].w[29]" 0.013956772794518386;
	setAttr ".wl[209].w[30]" 0.47588631727015362;
	setAttr ".wl[209].w[31]" 0.47588631727015385;
	setAttr ".wl[209].w[33]" 0.017135296332587004;
	setAttr ".wl[209].w[34]" 0.017135296332587004;
	setAttr -s 5 ".wl[210].w";
	setAttr ".wl[210].w[29]" 0.0039567125649910577;
	setAttr ".wl[210].w[30]" 0.49390188283565706;
	setAttr ".wl[210].w[31]" 0.49390188283565728;
	setAttr ".wl[210].w[33]" 0.0041258905717697757;
	setAttr ".wl[210].w[34]" 0.0041136311919247404;
	setAttr -s 5 ".wl[211].w[27:31]"  0.0058778479852248829 0.0078584904201005421 
		0.015132758837875392 0.75768026427822521 0.21345063847857387;
	setAttr -s 5 ".wl[212].w[27:31]"  0.0090654608083074757 0.013602785533239209 
		0.033639971187252836 0.86635378526858298 0.077337997202617373;
	setAttr -s 5 ".wl[213].w[27:31]"  0.012856048564260565 0.027299113025758558 
		0.18057105207017343 0.76975110958028892 0.0095226767595184784;
	setAttr -s 5 ".wl[214].w[26:30]"  0.0071798911368405631 0.012666478288984822 
		0.032342066630248079 0.47177165864346365 0.47603990530046297;
	setAttr -s 5 ".wl[215].w[26:30]"  0.0095445104119450761 0.01627606865611134 
		0.059199500858134031 0.53533307251200679 0.37964684756180278;
	setAttr -s 5 ".wl[216].w";
	setAttr ".wl[216].w[18]" 0.014845791415267642;
	setAttr ".wl[216].w[27]" 0.01365781979932707;
	setAttr ".wl[216].w[28]" 0.025064299439600698;
	setAttr ".wl[216].w[29]" 0.47321604467290235;
	setAttr ".wl[216].w[30]" 0.47321604467290224;
	setAttr -s 5 ".wl[217].w[26:30]"  0.0067581380213633923 0.011041899036156141 
		0.020748677263869031 0.45963659743057189 0.50181468824803965;
	setAttr -s 5 ".wl[218].w[27:31]"  0.0099575203208968829 0.018240553124823471 
		0.19204004169711936 0.76754243778855191 0.01221944706860833;
	setAttr -s 5 ".wl[219].w[27:31]"  0.007385612471102 0.010648051472499004 
		0.039398306994582029 0.86007098149737804 0.082497047564438999;
	setAttr -s 5 ".wl[220].w";
	setAttr ".wl[220].w[28]" 0.0059888328966867738;
	setAttr ".wl[220].w[29]" 0.014917920511714906;
	setAttr ".wl[220].w[30]" 0.74790498960829377;
	setAttr ".wl[220].w[31]" 0.2259940325374199;
	setAttr ".wl[220].w[33]" 0.005194224445884698;
	setAttr -s 5 ".wl[221].w";
	setAttr ".wl[221].w[29]" 0.0059286438761159002;
	setAttr ".wl[221].w[30]" 0.54698585873488004;
	setAttr ".wl[221].w[31]" 0.43906344073398496;
	setAttr ".wl[221].w[33]" 0.0040981447093012989;
	setAttr ".wl[221].w[34]" 0.0039239119457178733;
	setAttr -s 5 ".wl[222].w";
	setAttr ".wl[222].w[29]" 0.0041125479839814417;
	setAttr ".wl[222].w[30]" 0.49184186167822536;
	setAttr ".wl[222].w[31]" 0.49184186167822525;
	setAttr ".wl[222].w[33]" 0.0061018643297839729;
	setAttr ".wl[222].w[34]" 0.0061018643297839729;
	setAttr -s 5 ".wl[223].w";
	setAttr ".wl[223].w[29]" 0.0044141501372289864;
	setAttr ".wl[223].w[30]" 0.48940945946107284;
	setAttr ".wl[223].w[31]" 0.48940945946107284;
	setAttr ".wl[223].w[33]" 0.0083834654703126062;
	setAttr ".wl[223].w[34]" 0.0083834654703126062;
	setAttr -s 5 ".wl[224].w[30:34]"  0.019493928327487062 0.019493928327487062 
		0.0082221587054784381 0.47639499231977372 0.47639499231977372;
	setAttr -s 5 ".wl[225].w";
	setAttr ".wl[225].w[28]" 0.018554923806821763;
	setAttr ".wl[225].w[30]" 0.028086137542365108;
	setAttr ".wl[225].w[31]" 0.028086137542365108;
	setAttr ".wl[225].w[33]" 0.46263640055422406;
	setAttr ".wl[225].w[34]" 0.46263640055422406;
	setAttr -s 5 ".wl[226].w[30:34]"  0.010065473694117633 0.010038217562737655 
		0.0072234227438119098 0.48633644299966644 0.48633644299966644;
	setAttr -s 5 ".wl[227].w";
	setAttr ".wl[227].w[28]" 0.014833755578441519;
	setAttr ".wl[227].w[30]" 0.012137567304518052;
	setAttr ".wl[227].w[32]" 0.025722838695049512;
	setAttr ".wl[227].w[33]" 0.68877449529524082;
	setAttr ".wl[227].w[34]" 0.25853134312675019;
	setAttr -s 5 ".wl[228].w";
	setAttr ".wl[228].w[27]" 0.019544500317421925;
	setAttr ".wl[228].w[28]" 0.026296710470816432;
	setAttr ".wl[228].w[32]" 0.055895456552480793;
	setAttr ".wl[228].w[33]" 0.78521339431614634;
	setAttr ".wl[228].w[34]" 0.11304993834313447;
	setAttr -s 5 ".wl[229].w";
	setAttr ".wl[229].w[26]" 0.017410531858186699;
	setAttr ".wl[229].w[27]" 0.029774928213616825;
	setAttr ".wl[229].w[28]" 0.052658126407834578;
	setAttr ".wl[229].w[32]" 0.23512998126510015;
	setAttr ".wl[229].w[33]" 0.66502643225526181;
	setAttr -s 5 ".wl[230].w";
	setAttr ".wl[230].w[26]" 0.016418168756312055;
	setAttr ".wl[230].w[27]" 0.030277340368067975;
	setAttr ".wl[230].w[28]" 0.062275687323504109;
	setAttr ".wl[230].w[32]" 0.44730717664981107;
	setAttr ".wl[230].w[33]" 0.44372162690230488;
	setAttr -s 5 ".wl[231].w";
	setAttr ".wl[231].w[26]" 0.020882316933276992;
	setAttr ".wl[231].w[27]" 0.037549139765579928;
	setAttr ".wl[231].w[28]" 0.10270654246999979;
	setAttr ".wl[231].w[32]" 0.47632116130839275;
	setAttr ".wl[231].w[33]" 0.36254083952275046;
	setAttr -s 5 ".wl[232].w";
	setAttr ".wl[232].w[22]" 0.017608161272185605;
	setAttr ".wl[232].w[27]" 0.022084477388330685;
	setAttr ".wl[232].w[28]" 0.035406211611952107;
	setAttr ".wl[232].w[32]" 0.46245057486376578;
	setAttr ".wl[232].w[33]" 0.46245057486376578;
	setAttr -s 5 ".wl[233].w";
	setAttr ".wl[233].w[26]" 0.012742969908462945;
	setAttr ".wl[233].w[27]" 0.021353913053559895;
	setAttr ".wl[233].w[28]" 0.034671310591464354;
	setAttr ".wl[233].w[32]" 0.45202296064011882;
	setAttr ".wl[233].w[33]" 0.47920884580639411;
	setAttr -s 5 ".wl[234].w";
	setAttr ".wl[234].w[27]" 0.021106799153290532;
	setAttr ".wl[234].w[28]" 0.033388305260054457;
	setAttr ".wl[234].w[32]" 0.24463891826640902;
	setAttr ".wl[234].w[33]" 0.68078499769804823;
	setAttr ".wl[234].w[34]" 0.020080979622197802;
	setAttr -s 5 ".wl[235].w";
	setAttr ".wl[235].w[27]" 0.014983315494679572;
	setAttr ".wl[235].w[28]" 0.019630294765078618;
	setAttr ".wl[235].w[32]" 0.062709385617207222;
	setAttr ".wl[235].w[33]" 0.78577883608706856;
	setAttr ".wl[235].w[34]" 0.11689816803596605;
	setAttr -s 5 ".wl[236].w";
	setAttr ".wl[236].w[28]" 0.011166718746093134;
	setAttr ".wl[236].w[30]" 0.012301480654007112;
	setAttr ".wl[236].w[32]" 0.025188642215813441;
	setAttr ".wl[236].w[33]" 0.68160383166886895;
	setAttr ".wl[236].w[34]" 0.26973932671521739;
	setAttr -s 5 ".wl[237].w[30:34]"  0.010065922776061312 0.0096102819818196863 
		0.010723418884630749 0.52566956748455218 0.44393080887293612;
	setAttr -s 5 ".wl[238].w[30:34]"  0.013149907290778974 0.013149907290778974 
		0.0067349213653945389 0.48348263202652375 0.48348263202652375;
	setAttr -s 5 ".wl[239].w[30:34]"  0.01650481387564854 0.01650481387564854 
		0.0066803555658251487 0.48015500834143893 0.48015500834143893;
	setAttr -s 5 ".wl[240].w[27:31]"  0.0011007979115418246 0.0059606353146536622 
		0.022138013242410774 0.96407078557328207 0.0067297679581116536;
	setAttr -s 5 ".wl[241].w[27:31]"  0.01283557881147385 0.090313199662786184 
		0.16109544343886201 0.70111565101600981 0.034640127070868172;
	setAttr -s 5 ".wl[242].w[27:31]"  1.4651273372997795e-006 5.4236117060683843e-006 
		3.6196256339881312e-005 0.99994675725252702 1.0157752089733344e-005;
	setAttr -s 5 ".wl[243].w[27:31]"  0.0021233510401033337 0.0048409980695368971 
		0.025205297559506637 0.96096638659413858 0.0068639667367146199;
	setAttr -s 5 ".wl[244].w[27:31]"  0.012049828174795397 0.021483825476842831 
		0.08200123328886956 0.8600077634528227 0.024457349606669562;
	setAttr -s 5 ".wl[245].w[27:31]"  0.035796633212166092 0.052180291510962554 
		0.1404768771065853 0.72480215195268538 0.046744046217600747;
	setAttr -s 5 ".wl[246].w[27:31]"  0.089694361997013597 0.10718624389387815 
		0.18248689340218949 0.55089493650314558 0.069737564203773222;
	setAttr -s 5 ".wl[247].w";
	setAttr ".wl[247].w[27]" 0.18026210447715035;
	setAttr ".wl[247].w[28]" 0.18101702126387101;
	setAttr ".wl[247].w[29]" 0.14024191183754076;
	setAttr ".wl[247].w[30]" 0.25687377955321722;
	setAttr ".wl[247].w[33]" 0.24160518286822066;
	setAttr -s 5 ".wl[248].w";
	setAttr ".wl[248].w[27]" 0.14272231912660358;
	setAttr ".wl[248].w[28]" 0.15268619703635708;
	setAttr ".wl[248].w[30]" 0.11415566529895846;
	setAttr ".wl[248].w[32]" 0.17965027764543573;
	setAttr ".wl[248].w[33]" 0.41078554089264524;
	setAttr -s 5 ".wl[249].w";
	setAttr ".wl[249].w[27]" 0.095046979142247259;
	setAttr ".wl[249].w[28]" 0.11211007901948941;
	setAttr ".wl[249].w[32]" 0.1839897483244495;
	setAttr ".wl[249].w[33]" 0.53779084997635951;
	setAttr ".wl[249].w[34]" 0.071062343537454289;
	setAttr -s 5 ".wl[250].w";
	setAttr ".wl[250].w[27]" 0.027216824500346189;
	setAttr ".wl[250].w[28]" 0.041894015716272916;
	setAttr ".wl[250].w[32]" 0.12508440081835293;
	setAttr ".wl[250].w[33]" 0.76550912989809006;
	setAttr ".wl[250].w[34]" 0.040295629066937927;
	setAttr -s 5 ".wl[251].w";
	setAttr ".wl[251].w[27]" 0.0026015801380856593;
	setAttr ".wl[251].w[28]" 0.0057867946126988886;
	setAttr ".wl[251].w[32]" 0.029375302472027819;
	setAttr ".wl[251].w[33]" 0.9541840073531509;
	setAttr ".wl[251].w[34]" 0.0080523154240366955;
	setAttr -s 5 ".wl[252].w";
	setAttr ".wl[252].w[27]" 1.4709683096462502e-006;
	setAttr ".wl[252].w[28]" 5.448962433105981e-006;
	setAttr ".wl[252].w[32]" 3.6367162331626208e-005;
	setAttr ".wl[252].w[33]" 0.99994650361291315;
	setAttr ".wl[252].w[34]" 1.0209294012559711e-005;
	setAttr -s 5 ".wl[253].w";
	setAttr ".wl[253].w[27]" 0.012824768206167892;
	setAttr ".wl[253].w[28]" 0.089903347228843744;
	setAttr ".wl[253].w[32]" 0.16062630354141674;
	setAttr ".wl[253].w[33]" 0.70222809409690101;
	setAttr ".wl[253].w[34]" 0.034417486926670682;
	setAttr -s 5 ".wl[254].w";
	setAttr ".wl[254].w[27]" 0.0011007893397753973;
	setAttr ".wl[254].w[28]" 0.0059605718987575818;
	setAttr ".wl[254].w[32]" 0.022138223964037841;
	setAttr ".wl[254].w[33]" 0.9640707074698065;
	setAttr ".wl[254].w[34]" 0.0067297073276227377;
	setAttr -s 5 ".wl[255].w";
	setAttr ".wl[255].w[27]" 0.00010903119066847297;
	setAttr ".wl[255].w[28]" 0.00047484373852268747;
	setAttr ".wl[255].w[32]" 0.0030133880617985724;
	setAttr ".wl[255].w[33]" 0.99542235262466672;
	setAttr ".wl[255].w[34]" 0.00098038438434351139;
	setAttr -s 5 ".wl[256].w";
	setAttr ".wl[256].w[27]" 6.5433486678328695e-005;
	setAttr ".wl[256].w[28]" 0.0002727756472158097;
	setAttr ".wl[256].w[32]" 0.0018730765716838584;
	setAttr ".wl[256].w[33]" 0.99718006514370516;
	setAttr ".wl[256].w[34]" 0.00060864915071685171;
	setAttr -s 5 ".wl[257].w";
	setAttr ".wl[257].w[27]" 0.0012173910669637784;
	setAttr ".wl[257].w[28]" 0.0031936065464332726;
	setAttr ".wl[257].w[32]" 0.0364742196933538;
	setAttr ".wl[257].w[33]" 0.94711309676754518;
	setAttr ".wl[257].w[34]" 0.01200168592570397;
	setAttr -s 5 ".wl[258].w";
	setAttr ".wl[258].w[27]" 0.0024506129608720946;
	setAttr ".wl[258].w[28]" 0.0048136762774647285;
	setAttr ".wl[258].w[32]" 0.036152295913847929;
	setAttr ".wl[258].w[33]" 0.94523068826858681;
	setAttr ".wl[258].w[34]" 0.011352726579228372;
	setAttr -s 5 ".wl[259].w";
	setAttr ".wl[259].w[27]" 0.019709561492235534;
	setAttr ".wl[259].w[28]" 0.028404197699216177;
	setAttr ".wl[259].w[32]" 0.13002410021559285;
	setAttr ".wl[259].w[33]" 0.77532246527617232;
	setAttr ".wl[259].w[34]" 0.046539675316783151;
	setAttr -s 5 ".wl[260].w";
	setAttr ".wl[260].w[27]" 0.065670031242036381;
	setAttr ".wl[260].w[28]" 0.075912126046139977;
	setAttr ".wl[260].w[32]" 0.19641602571792288;
	setAttr ".wl[260].w[33]" 0.57971073314255117;
	setAttr ".wl[260].w[34]" 0.082291083851349603;
	setAttr -s 5 ".wl[261].w";
	setAttr ".wl[261].w[27]" 0.099670725765585985;
	setAttr ".wl[261].w[28]" 0.10617669783413254;
	setAttr ".wl[261].w[30]" 0.13156297366737352;
	setAttr ".wl[261].w[32]" 0.19934435982163448;
	setAttr ".wl[261].w[33]" 0.4632452429112735;
	setAttr -s 5 ".wl[262].w";
	setAttr ".wl[262].w[28]" 0.12511197535027391;
	setAttr ".wl[262].w[29]" 0.15662189318702455;
	setAttr ".wl[262].w[30]" 0.29263835325279058;
	setAttr ".wl[262].w[32]" 0.15010886499492271;
	setAttr ".wl[262].w[33]" 0.27551891321498823;
	setAttr -s 5 ".wl[263].w[27:31]"  0.061967048719824898 0.072410900000982908 
		0.19407940815078373 0.59098963702179386 0.080553006106614602;
	setAttr -s 5 ".wl[264].w[27:31]"  0.025482738388089489 0.035100222605937599 
		0.14568245602023991 0.74013156839514638 0.053603014590586549;
	setAttr -s 5 ".wl[265].w[27:31]"  0.0093346155209942713 0.015208947807215798 
		0.087697692093743271 0.85832349588892964 0.029435248689117115;
	setAttr -s 5 ".wl[266].w[27:31]"  0.0020693599755641388 0.0041511665980589483 
		0.031910570583035487 0.95189659518365932 0.009972307659681998;
	setAttr -s 5 ".wl[267].w[27:31]"  0.0012180763530058709 0.0031936918540491567 
		0.036475735667721318 0.94711392653022686 0.01199856959499683;
	setAttr -s 5 ".wl[268].w[27:31]"  7.085532512859577e-005 0.00029620998330095788 
		0.0020297074910129598 0.9969411793515629 0.00066204784899461671;
	setAttr -s 5 ".wl[269].w[27:31]"  0.00010903085842117254 0.00047484423143922204 
		0.0030133238854804121 0.99542241855126579 0.00098038247339345477;
	setAttr -s 5 ".wl[270].w[27:31]"  0.00057301511032334276 0.0074048283728414795 
		0.3924882235318865 0.59910306070452812 0.00043087228042044712;
	setAttr -s 5 ".wl[271].w[26:30]"  0.0014826487893824325 0.0019913936714333006 
		0.072047871708664973 0.84206911068641743 0.08240897514410192;
	setAttr -s 5 ".wl[272].w[27:31]"  6.8987610749631535e-006 4.0622524565190654e-005 
		0.011503202880517647 0.98844438800056333 4.8878332788646705e-006;
	setAttr -s 5 ".wl[273].w[26:30]"  0.0014719173443040561 0.0024054239651189737 
		0.0083327950560242742 0.34035790436159241 0.64743195927296038;
	setAttr -s 5 ".wl[274].w[26:30]"  0.0074560254874936312 0.013015284068241794 
		0.032061949381285579 0.4091007752352987 0.53836596582768037;
	setAttr -s 5 ".wl[275].w[26:30]"  0.021985852101424206 0.04077821326282887 
		0.075206091930150196 0.4009475384005457 0.46108230430505098;
	setAttr -s 5 ".wl[276].w[26:30]"  0.054561010368723961 0.10799714352562144 
		0.14795831670918599 0.33371444089744368 0.355769088499025;
	setAttr -s 5 ".wl[277].w";
	setAttr ".wl[277].w[27]" 0.23849442205195687;
	setAttr ".wl[277].w[28]" 0.24344299997816399;
	setAttr ".wl[277].w[29]" 0.17488769577250551;
	setAttr ".wl[277].w[30]" 0.17678060657199049;
	setAttr ".wl[277].w[33]" 0.16639427562538317;
	setAttr -s 5 ".wl[278].w";
	setAttr ".wl[278].w[26]" 0.086838306770624901;
	setAttr ".wl[278].w[27]" 0.1783853090350194;
	setAttr ".wl[278].w[28]" 0.20485835239893455;
	setAttr ".wl[278].w[32]" 0.26066351841495866;
	setAttr ".wl[278].w[33]" 0.26925451338046258;
	setAttr -s 5 ".wl[279].w";
	setAttr ".wl[279].w[26]" 0.057662293588332421;
	setAttr ".wl[279].w[27]" 0.11463837448494668;
	setAttr ".wl[279].w[28]" 0.15392251055102024;
	setAttr ".wl[279].w[32]" 0.3267723395433067;
	setAttr ".wl[279].w[33]" 0.34700448183239402;
	setAttr -s 5 ".wl[280].w";
	setAttr ".wl[280].w[26]" 0.016717334207881764;
	setAttr ".wl[280].w[27]" 0.030486464373234295;
	setAttr ".wl[280].w[28]" 0.060844074060872645;
	setAttr ".wl[280].w[32]" 0.40854614686929314;
	setAttr ".wl[280].w[33]" 0.48340598048871825;
	setAttr -s 5 ".wl[281].w";
	setAttr ".wl[281].w[26]" 0.001773663276620656;
	setAttr ".wl[281].w[27]" 0.0029169345393790756;
	setAttr ".wl[281].w[28]" 0.0097649529490467513;
	setAttr ".wl[281].w[32]" 0.35223419796933664;
	setAttr ".wl[281].w[33]" 0.63331025126561691;
	setAttr -s 5 ".wl[282].w";
	setAttr ".wl[282].w[27]" 6.6889558588950102e-006;
	setAttr ".wl[282].w[28]" 3.9426914543886007e-005;
	setAttr ".wl[282].w[32]" 0.01119563087558711;
	setAttr ".wl[282].w[33]" 0.98875350780090832;
	setAttr ".wl[282].w[34]" 4.7454531019049824e-006;
	setAttr -s 5 ".wl[283].w";
	setAttr ".wl[283].w[26]" 0.0019559602629655036;
	setAttr ".wl[283].w[27]" 0.0025579183733952758;
	setAttr ".wl[283].w[28]" 0.091104203768167732;
	setAttr ".wl[283].w[32]" 0.78743507152635961;
	setAttr ".wl[283].w[33]" 0.11694684606911189;
	setAttr -s 5 ".wl[284].w";
	setAttr ".wl[284].w[27]" 0.0009361980456940506;
	setAttr ".wl[284].w[28]" 0.012444059301566213;
	setAttr ".wl[284].w[32]" 0.39455136461779955;
	setAttr ".wl[284].w[33]" 0.59123793482357334;
	setAttr ".wl[284].w[34]" 0.0008304432113668196;
	setAttr -s 5 ".wl[285].w";
	setAttr ".wl[285].w[22]" 0.00023280910227315013;
	setAttr ".wl[285].w[28]" 0.0017852328013305782;
	setAttr ".wl[285].w[32]" 0.17049137829480579;
	setAttr ".wl[285].w[33]" 0.82721414809992799;
	setAttr ".wl[285].w[34]" 0.00027643170166243919;
	setAttr -s 5 ".wl[286].w";
	setAttr ".wl[286].w[22]" 0.00018713703298174812;
	setAttr ".wl[286].w[28]" 0.00083249973115329546;
	setAttr ".wl[286].w[32]" 0.14003620001511605;
	setAttr ".wl[286].w[33]" 0.85873059961101739;
	setAttr ".wl[286].w[34]" 0.00021356360973152116;
	setAttr -s 5 ".wl[287].w";
	setAttr ".wl[287].w[22]" 0.00056168302739713588;
	setAttr ".wl[287].w[28]" 0.0018775150062066473;
	setAttr ".wl[287].w[32]" 0.24355000819682696;
	setAttr ".wl[287].w[33]" 0.7533387558267165;
	setAttr ".wl[287].w[34]" 0.0006720379428527657;
	setAttr -s 5 ".wl[288].w";
	setAttr ".wl[288].w[26]" 0.0018978519794106083;
	setAttr ".wl[288].w[27]" 0.0030165531864382038;
	setAttr ".wl[288].w[28]" 0.0076391555420208092;
	setAttr ".wl[288].w[32]" 0.36625812397505236;
	setAttr ".wl[288].w[33]" 0.62118831531707797;
	setAttr -s 5 ".wl[289].w";
	setAttr ".wl[289].w[26]" 0.012569102835571697;
	setAttr ".wl[289].w[27]" 0.021469646911197966;
	setAttr ".wl[289].w[28]" 0.036394017616219625;
	setAttr ".wl[289].w[32]" 0.4194377043420906;
	setAttr ".wl[289].w[33]" 0.51012952829492009;
	setAttr -s 5 ".wl[290].w";
	setAttr ".wl[290].w[27]" 0.074989726125303538;
	setAttr ".wl[290].w[28]" 0.094378518346242182;
	setAttr ".wl[290].w[30]" 0.047270896397207829;
	setAttr ".wl[290].w[32]" 0.37379879364342039;
	setAttr ".wl[290].w[33]" 0.40956206548782609;
	setAttr -s 5 ".wl[291].w";
	setAttr ".wl[291].w[27]" 0.11664047368049207;
	setAttr ".wl[291].w[28]" 0.13060930188405942;
	setAttr ".wl[291].w[30]" 0.098625682078308158;
	setAttr ".wl[291].w[32]" 0.31674895290937188;
	setAttr ".wl[291].w[33]" 0.33737558944776846;
	setAttr -s 5 ".wl[292].w";
	setAttr ".wl[292].w[28]" 0.15347862744505991;
	setAttr ".wl[292].w[29]" 0.21336323969959314;
	setAttr ".wl[292].w[30]" 0.22216093299648973;
	setAttr ".wl[292].w[32]" 0.20152341102872745;
	setAttr ".wl[292].w[33]" 0.20947378883012979;
	setAttr -s 5 ".wl[293].w";
	setAttr ".wl[293].w[27]" 0.070694060711321338;
	setAttr ".wl[293].w[28]" 0.090319125671669956;
	setAttr ".wl[293].w[29]" 0.37887645875687453;
	setAttr ".wl[293].w[30]" 0.41677121796743305;
	setAttr ".wl[293].w[33]" 0.043339136892701136;
	setAttr -s 5 ".wl[294].w[26:30]"  0.016181547418448659 0.027951094710247704 
		0.044627175575816594 0.41717809630476127 0.49406208599072576;
	setAttr -s 5 ".wl[295].w[26:30]"  0.0061421463879003926 0.010184691425273467 
		0.020288646852790828 0.41235037355518817 0.55103414177884713;
	setAttr -s 5 ".wl[296].w[27:31]"  0.0026059108857830844 0.0067807054509148633 
		0.35807983460778814 0.63084423654146982 0.0016893125140440613;
	setAttr -s 5 ".wl[297].w";
	setAttr ".wl[297].w[18]" 0.00056133328633377626;
	setAttr ".wl[297].w[28]" 0.0018781294549101194;
	setAttr ".wl[297].w[29]" 0.24361589064196373;
	setAttr ".wl[297].w[30]" 0.75327258644153661;
	setAttr ".wl[297].w[31]" 0.00067206017525580969;
	setAttr -s 5 ".wl[298].w";
	setAttr ".wl[298].w[18]" 6.5876023754777921e-005;
	setAttr ".wl[298].w[28]" 0.00033635893752669173;
	setAttr ".wl[298].w[29]" 0.081033915404680301;
	setAttr ".wl[298].w[30]" 0.91848215850631387;
	setAttr ".wl[298].w[31]" 8.169112772437589e-005;
	setAttr -s 5 ".wl[299].w[27:31]"  4.7485641945373029e-005 0.00036270495660939287 
		0.063299278992633573 0.93623911539175064 5.1415017061014468e-005;
	setAttr -s 5 ".wl[300].w";
	setAttr ".wl[300].w[17]" 0.0049950884851790384;
	setAttr ".wl[300].w[26]" 0.013378047615648401;
	setAttr ".wl[300].w[27]" 0.012089460011371246;
	setAttr ".wl[300].w[28]" 0.5101803373773921;
	setAttr ".wl[300].w[29]" 0.45935706651040931;
	setAttr -s 5 ".wl[301].w[26:30]"  0.0051323994807022195 0.0050628236499338439 
		0.51936923824664816 0.46849950950243358 0.0019360291202821947;
	setAttr -s 5 ".wl[302].w[26:30]"  0.0037096085369094137 0.003644478774127379 
		0.49534464260333072 0.49534464260333072 0.0019566274823018333;
	setAttr -s 5 ".wl[303].w";
	setAttr ".wl[303].w[17]" 0.0039795633918278455;
	setAttr ".wl[303].w[26]" 0.0097956953100825517;
	setAttr ".wl[303].w[27]" 0.008887818260036642;
	setAttr ".wl[303].w[28]" 0.49422392050963659;
	setAttr ".wl[303].w[29]" 0.48311300252841644;
	setAttr -s 5 ".wl[304].w";
	setAttr ".wl[304].w[26]" 0.0048100620211535949;
	setAttr ".wl[304].w[27]" 0.0047491934665418959;
	setAttr ".wl[304].w[28]" 0.50949641544115276;
	setAttr ".wl[304].w[32]" 0.47899378556991018;
	setAttr ".wl[304].w[33]" 0.0019505435012415388;
	setAttr -s 5 ".wl[305].w";
	setAttr ".wl[305].w[26]" 0.0036371238751205836;
	setAttr ".wl[305].w[27]" 0.0035656888814460524;
	setAttr ".wl[305].w[28]" 0.49537325736645255;
	setAttr ".wl[305].w[32]" 0.49537325736645255;
	setAttr ".wl[305].w[33]" 0.0020506725105282311;
	setAttr -s 5 ".wl[306].w";
	setAttr ".wl[306].w[17]" 0.0036923191527584169;
	setAttr ".wl[306].w[26]" 0.01143261009164253;
	setAttr ".wl[306].w[27]" 0.010823410267642721;
	setAttr ".wl[306].w[28]" 0.52680016940276742;
	setAttr ".wl[306].w[32]" 0.44725149108518897;
	setAttr -s 5 ".wl[307].w";
	setAttr ".wl[307].w[17]" 0.0029379091877558814;
	setAttr ".wl[307].w[26]" 0.0081704494514790223;
	setAttr ".wl[307].w[27]" 0.0077157276785814067;
	setAttr ".wl[307].w[28]" 0.50217869723157449;
	setAttr ".wl[307].w[32]" 0.47899721645060911;
	setAttr -s 5 ".wl[308].w[26:30]"  0.0014526197002197772 0.0015379895924044554 
		0.49768987182697821 0.4976898718269781 0.0016296470534194946;
	setAttr -s 5 ".wl[309].w[26:30]"  0.0018245488504897208 0.0019499881798102036 
		0.50553705743457267 0.4891523354397323 0.0015360700953951051;
	setAttr -s 5 ".wl[310].w";
	setAttr ".wl[310].w[17]" 0.0097714987782818678;
	setAttr ".wl[310].w[26]" 0.020119160772540629;
	setAttr ".wl[310].w[27]" 0.015215570902046612;
	setAttr ".wl[310].w[28]" 0.50096051856192347;
	setAttr ".wl[310].w[29]" 0.45393325098520743;
	setAttr -s 5 ".wl[311].w";
	setAttr ".wl[311].w[17]" 0.009044620169559309;
	setAttr ".wl[311].w[26]" 0.017287060162220615;
	setAttr ".wl[311].w[27]" 0.013223758585655535;
	setAttr ".wl[311].w[28]" 0.48602975237984003;
	setAttr ".wl[311].w[29]" 0.4744148087027244;
	setAttr -s 5 ".wl[312].w[26:30]"  0.00086304948612301972 0.0010523053464685369 
		0.41593707631055299 0.57907321192484695 0.0030743569320085106;
	setAttr -s 5 ".wl[313].w[26:30]"  0.0011018671603944354 0.0013806821861025399 
		0.42835403177914266 0.56616003135215676 0.0030033875222034907;
	setAttr -s 5 ".wl[314].w[26:30]"  0.0040688812810952997 0.0041939749436690557 
		0.51093281164156357 0.47599634256000084 0.0048079895736713946;
	setAttr -s 5 ".wl[315].w[26:30]"  0.0035041083505028717 0.0035703852993654202 
		0.49440102904324418 0.49353557705459905 0.00498890025228852;
	setAttr -s 5 ".wl[316].w[26:30]"  0.00012040210297039384 0.00016113171288537908 
		0.036659393944006954 0.96183695799685409 0.0012221142432831701;
	setAttr -s 5 ".wl[317].w[26:30]"  0.00025587019297113321 0.00035547992377875945 
		0.060758345595423965 0.93667061558471554 0.001959688703110622;
	setAttr -s 5 ".wl[318].w[26:30]"  0.0018741484863327624 0.0024870756391698469 
		0.22270601441918395 0.76261654065831719 0.010316220796996248;
	setAttr -s 5 ".wl[319].w[26:30]"  0.0014978003409752663 0.0019389483492114415 
		0.2059825670509067 0.78074409749383811 0.0098365867650685081;
	setAttr -s 5 ".wl[320].w";
	setAttr ".wl[320].w[26]" 0.00045425188810465169;
	setAttr ".wl[320].w[27]" 0.00058075330014250735;
	setAttr ".wl[320].w[28]" 0.086057130875236532;
	setAttr ".wl[320].w[32]" 0.90482473525659124;
	setAttr ".wl[320].w[33]" 0.008083128679925099;
	setAttr -s 5 ".wl[321].w";
	setAttr ".wl[321].w[26]" 0.0012617353924338276;
	setAttr ".wl[321].w[27]" 0.0016141322825553119;
	setAttr ".wl[321].w[28]" 0.16719024349141468;
	setAttr ".wl[321].w[32]" 0.81789744990983682;
	setAttr ".wl[321].w[33]" 0.012036438923759463;
	setAttr -s 5 ".wl[322].w";
	setAttr ".wl[322].w[26]" 0.0013663481519826828;
	setAttr ".wl[322].w[27]" 0.0017883782289184428;
	setAttr ".wl[322].w[28]" 0.16965336388976468;
	setAttr ".wl[322].w[32]" 0.81614760469105463;
	setAttr ".wl[322].w[33]" 0.011044305038279552;
	setAttr -s 5 ".wl[323].w";
	setAttr ".wl[323].w[26]" 0.00017729545212527521;
	setAttr ".wl[323].w[27]" 0.00023323320080383627;
	setAttr ".wl[323].w[28]" 0.044370622402383667;
	setAttr ".wl[323].w[32]" 0.95282811025744318;
	setAttr ".wl[323].w[33]" 0.0023907386872441356;
	setAttr -s 5 ".wl[324].w";
	setAttr ".wl[324].w[26]" 0.00093976331612088341;
	setAttr ".wl[324].w[27]" 0.0010457985016204215;
	setAttr ".wl[324].w[28]" 0.49803878039092353;
	setAttr ".wl[324].w[32]" 0.49803878039092353;
	setAttr ".wl[324].w[33]" 0.0019368774004116212;
	setAttr -s 5 ".wl[325].w";
	setAttr ".wl[325].w[26]" 0.00070743600758169469;
	setAttr ".wl[325].w[27]" 0.00071422696399380849;
	setAttr ".wl[325].w[28]" 0.49892563485978814;
	setAttr ".wl[325].w[32]" 0.49892563485978803;
	setAttr ".wl[325].w[33]" 0.00072706730884830237;
	setAttr -s 5 ".wl[326].w";
	setAttr ".wl[326].w[26]" 0.0007966811291387298;
	setAttr ".wl[326].w[27]" 0.00080655185805148172;
	setAttr ".wl[326].w[28]" 0.51805464592243067;
	setAttr ".wl[326].w[32]" 0.47969402485734325;
	setAttr ".wl[326].w[33]" 0.00064809623303580097;
	setAttr -s 5 ".wl[327].w";
	setAttr ".wl[327].w[26]" 0.00095125125823576206;
	setAttr ".wl[327].w[27]" 0.0010695563104642708;
	setAttr ".wl[327].w[28]" 0.49827999356463237;
	setAttr ".wl[327].w[32]" 0.4982799935646326;
	setAttr ".wl[327].w[33]" 0.0014192053020348867;
	setAttr -s 5 ".wl[328].w";
	setAttr ".wl[328].w[26]" 0.00097297148461490571;
	setAttr ".wl[328].w[27]" 0.0011832083239049702;
	setAttr ".wl[328].w[28]" 0.33627098309748232;
	setAttr ".wl[328].w[32]" 0.65550011990216372;
	setAttr ".wl[328].w[33]" 0.0060727171918340123;
	setAttr -s 5 ".wl[329].w";
	setAttr ".wl[329].w[26]" 0.00056691806532255316;
	setAttr ".wl[329].w[27]" 0.00066648956485974896;
	setAttr ".wl[329].w[28]" 0.39985475959529104;
	setAttr ".wl[329].w[32]" 0.59714782799081301;
	setAttr ".wl[329].w[33]" 0.0017640047837136057;
	setAttr -s 5 ".wl[330].w";
	setAttr ".wl[330].w[26]" 0.00057674777453419867;
	setAttr ".wl[330].w[27]" 0.00068999369261120132;
	setAttr ".wl[330].w[28]" 0.41042763299782931;
	setAttr ".wl[330].w[32]" 0.58683564860968118;
	setAttr ".wl[330].w[33]" 0.0014699769253441401;
	setAttr -s 5 ".wl[331].w";
	setAttr ".wl[331].w[26]" 0.00073685158427008583;
	setAttr ".wl[331].w[27]" 0.00091657319155656549;
	setAttr ".wl[331].w[28]" 0.33588737507997374;
	setAttr ".wl[331].w[32]" 0.65906751925356155;
	setAttr ".wl[331].w[33]" 0.0033916808906380119;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 8.5485389286235716 28.580356764965313 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[2]" -type "matrix" 6.693613450145993e-016 1.7889765444095194e-015 -1 -0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-015 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-015 -0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[3]" -type "matrix" -3.1806489720151766e-016 7.1110600523609972e-016 1 -0
		 0.23651468939617115 -0.97162791319508346 7.5749132939959201e-016 -0 0.97162791319508335 0.23651468939617104 1.3112890213765272e-016 -0
		 15.75339661024516 -24.192069798095325 14.952100000000019 1;
	setAttr ".pm[4]" -type "matrix" -7.7862017067354629e-016 2.5809568655261894e-008 0.99999999999999978 -0
		 0.97741416543986737 -0.21133279252753712 5.4544089702159369e-009 -0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-008 -0
		 38.494799132532364 23.920859481432768 12.094899382612956 1;
	setAttr ".pm[5]" -type "matrix" -1.3805402767519452e-008 1.3615198156657948e-008 -1 -0
		 0.93887631588660836 -0.34425464915842291 -1.7648660945676008e-008 0 -0.3442546491584228 -0.93887631588660847 -8.0304129894412123e-009 0
		 24.344687153438453 -43.723300868428026 -12.094900931389606 1;
	setAttr ".pm[6]" -type "matrix" 7.7249776432890241e-009 -1.634336896666231e-008 -0.99999999999999978 -0
		 0.017238817250843617 -0.99985140054899724 1.6474109837531978e-008 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-009 0
		 -30.350163356585984 -42.766656220525725 -12.094899535503076 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999999999978 -1.6162482267069893e-008 -1.0632309219184019e-008 -0
		 -1.6162482273500898e-008 -0.99999999999999956 -1.5415230359074293e-014 0 -1.0632309178159527e-008 1.5240265432222506e-014 -0.99999999999999933 -0
		 14.182899160148004 -42.525700229230644 -14.346000150797614 1;
	setAttr ".pm[8]" -type "matrix" 3.6929243270364759e-016 4.7854520619298905e-017 -1 -0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-016 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-016 -0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[9]" -type "matrix" 2.8232439365995012e-016 -2.4058376823856014e-016 1 -0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-016 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-016 -0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[10]" -type "matrix" 3.3969043598553431e-016 1.4899000132653635e-016 1 -0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-016 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-016 -0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[11]" -type "matrix" 2.0731684078555344e-016 2.5897082728895037e-016 -1 -0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-017 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-016 -0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[12]" -type "matrix" 3.1628320018632648e-016 -1.0005548030928621e-016 -1 -0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-017 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-016 -0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[13]" -type "matrix" 1 -8.8267921761093423e-017 -6.84540878947466e-016 -0
		 5.982944840221322e-017 1.0000000000000002 -3.4000580129145434e-016 0 7.1046403083575275e-016 3.4347524824340795e-016 1 -0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
	setAttr ".pm[14]" -type "matrix" 2.9171120138216851e-016 -2.0309007691163655e-016 0.99999999999999978 -0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-016 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-016 -0
		 5.141099383762306 27.116763673658916 6.384860464405965e-015 1;
	setAttr ".pm[15]" -type "matrix" 1.9255976590806024e-016 4.2123171441692991e-016 -0.99999999999999978 -0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-016 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-016 -0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-014 1;
	setAttr ".pm[16]" -type "matrix" -2.2254253739202254e-016 4.0618990599018242e-016 -0.99999999999999978 -0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-016 -0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-016 -0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-014 1;
	setAttr ".pm[17]" -type "matrix" -3.9263286525203279e-016 2.4567224874041425e-016 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-016 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-016 -0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-014 1;
	setAttr ".pm[18]" -type "matrix" -4.3236892918211134e-016 -1.660497809547105e-016 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-016 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-016 -0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[19]" -type "matrix" -4.200894483686455e-016 -1.9503916541689796e-016 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-016 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-016 -0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[20]" -type "matrix" -2.3367847652631728e-016 5.2235190187304229e-016 0.99999999999999978 -0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-016 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-016 -0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[21]" -type "matrix" 0.99999999999999978 7.889801871316359e-016 -4.1328562659829196e-016 -0
		 -7.1325529571241588e-016 0.99999999999999978 7.4940054162198017e-016 0 5.2724101640594644e-016 -9.1593399531575296e-016 0.99999999999999933 -0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[22]" -type "matrix" 4.3236892918211144e-016 1.6604978095471038e-016 -0.99999999999999978 -0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-016 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-016 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[23]" -type "matrix" 4.200894483686456e-016 1.9503916541689791e-016 -1 -0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-016 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-016 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[24]" -type "matrix" 2.3367847652631718e-016 1.6666666780649064e-016 0.99999999999999978 -0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-016 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-016 -0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[25]" -type "matrix" 0.99999999999999978 5.5459731209901231e-016 1.205471819538445e-017 -0
		 6.0517993594966963e-016 -1 -6.3837823915946462e-016 0 7.7400975786026954e-017 7.2164496600635165e-016 -0.99999999999999978 -0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[26]" -type "matrix" -4.0112524636791838e-016 2.3154687949413117e-016 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-016 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-016 -0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-014 1;
	setAttr ".pm[27]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -6.2314369504761027e-015 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[28]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -1.3912601358543541e-014 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[29]" -type "matrix" 5.0813779435729561e-016 1.296078129378641e-015 0.99999999999999978 -0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-016 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-015 -0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[30]" -type "matrix" -1.0103368778348008e-015 -4.0484730914130193e-016 -0.99999999999999978 -0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-016 -0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-015 -0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[31]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-016 -1.5416536010143854e-015 -0
		 5.3246366272141857e-016 0.99999999999999978 -5.6898930012039322e-016 0 1.611115502654318e-015 6.5919492087118591e-016 0.99999999999999978 -0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[32]" -type "matrix" 5.0211778276518463e-016 -8.7774694673919145e-016 0.99999999999999978 -0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-016 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-015 -0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[33]" -type "matrix" 7.131658175178445e-016 -5.6945907845917879e-016 -0.99999999999999978 -0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-016 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-016 -0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[34]" -type "matrix" 1 -5.6270869122286394e-016 7.6910344414326517e-017 -0
		 -2.7046580649882625e-016 -0.99999999999999956 -4.9057979900624073e-015 0 2.3587309789062293e-016 4.7184478546569121e-015 -0.99999999999999978 -0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".gm" -type "matrix" 27.967222727726977 0 0 0 0 2.433956180439881 0 0 0 0 29.697805139026539 0
		 0 9.5017786097019599 33.811438599562621 1;
	setAttr -s 14 ".ma";
	setAttr -s 35 ".dpf[0:34]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 14 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 14 ".ifcl";
createNode tweak -n "tweak3";
	rename -uid "7F8EAB50-4E4C-BF65-AEB2-89BB24F07DD1";
createNode objectSet -n "skinCluster3Set";
	rename -uid "27FBD076-4EA8-BF47-D901-C7BF2A3EEA1E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	rename -uid "4FAE5304-4C81-FD9B-AA81-238BAC960F56";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	rename -uid "7375F7A9-4459-20C2-323C-A3ACEC8D60F5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet3";
	rename -uid "E31ADFE0-44CB-952B-2853-08BC40E775B5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	rename -uid "99C11E5B-4E00-D292-733B-4CA7B72C432B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "A044FF47-42E4-B3DB-B179-E4AC2CEEB6E8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster4";
	rename -uid "F9B546BD-49DA-4F69-7D91-64889786D9F8";
	setAttr -s 188 ".wl";
	setAttr ".wl[0].w[18]"  1;
	setAttr ".wl[1].w[18]"  1;
	setAttr ".wl[2].w[18]"  1;
	setAttr ".wl[3].w[18]"  1;
	setAttr ".wl[4].w[18]"  1;
	setAttr ".wl[5].w[18]"  1;
	setAttr ".wl[6].w[18]"  1;
	setAttr ".wl[7].w[18]"  1;
	setAttr ".wl[8].w[18]"  1;
	setAttr ".wl[9].w[18]"  1;
	setAttr ".wl[10].w[18]"  1;
	setAttr ".wl[11].w[18]"  1;
	setAttr ".wl[12].w[18]"  1;
	setAttr ".wl[13].w[18]"  1;
	setAttr ".wl[14].w[18]"  1;
	setAttr ".wl[15].w[18]"  1;
	setAttr ".wl[16].w[18]"  1;
	setAttr ".wl[17].w[18]"  1;
	setAttr ".wl[18].w[18]"  1;
	setAttr ".wl[19].w[18]"  1;
	setAttr ".wl[20].w[18]"  1;
	setAttr ".wl[21].w[18]"  1;
	setAttr ".wl[22].w[18]"  1;
	setAttr ".wl[23].w[18]"  1;
	setAttr ".wl[24].w[18]"  1;
	setAttr ".wl[25].w[18]"  1;
	setAttr ".wl[26].w[18]"  1;
	setAttr ".wl[27].w[18]"  1;
	setAttr ".wl[28].w[18]"  1;
	setAttr ".wl[29].w[18]"  1;
	setAttr ".wl[30].w[18]"  1;
	setAttr ".wl[31].w[18]"  1;
	setAttr ".wl[32].w[18]"  1;
	setAttr ".wl[33].w[18]"  1;
	setAttr ".wl[34].w[18]"  1;
	setAttr ".wl[35].w[18]"  1;
	setAttr ".wl[36].w[18]"  1;
	setAttr ".wl[37].w[18]"  1;
	setAttr ".wl[38].w[18]"  1;
	setAttr ".wl[39].w[18]"  1;
	setAttr ".wl[40].w[18]"  1;
	setAttr ".wl[41].w[18]"  1;
	setAttr ".wl[42].w[18]"  1;
	setAttr ".wl[43].w[18]"  1;
	setAttr ".wl[44].w[18]"  1;
	setAttr ".wl[45].w[18]"  1;
	setAttr ".wl[46].w[18]"  1;
	setAttr ".wl[47].w[18]"  1;
	setAttr ".wl[48].w[18]"  1;
	setAttr ".wl[49].w[18]"  1;
	setAttr ".wl[50].w[18]"  1;
	setAttr ".wl[51].w[18]"  1;
	setAttr ".wl[52].w[18]"  1;
	setAttr ".wl[53].w[18]"  1;
	setAttr ".wl[54].w[18]"  1;
	setAttr ".wl[55].w[18]"  1;
	setAttr ".wl[56].w[18]"  1;
	setAttr ".wl[57].w[18]"  1;
	setAttr ".wl[58].w[18]"  1;
	setAttr ".wl[59].w[18]"  1;
	setAttr ".wl[60].w[18]"  1;
	setAttr ".wl[61].w[18]"  1;
	setAttr ".wl[62].w[18]"  1;
	setAttr ".wl[63].w[18]"  1;
	setAttr ".wl[64].w[18]"  1;
	setAttr ".wl[65].w[18]"  1;
	setAttr ".wl[66].w[18]"  1;
	setAttr ".wl[67].w[18]"  1;
	setAttr ".wl[68].w[18]"  1;
	setAttr ".wl[69].w[18]"  1;
	setAttr ".wl[70].w[18]"  1;
	setAttr ".wl[71].w[18]"  1;
	setAttr ".wl[72].w[18]"  1;
	setAttr ".wl[73].w[18]"  1;
	setAttr ".wl[74].w[18]"  1;
	setAttr ".wl[75].w[18]"  1;
	setAttr ".wl[76].w[18]"  1;
	setAttr ".wl[77].w[18]"  1;
	setAttr ".wl[78].w[18]"  1;
	setAttr ".wl[79].w[18]"  1;
	setAttr ".wl[80].w[18]"  1;
	setAttr ".wl[81].w[18]"  1;
	setAttr ".wl[82].w[18]"  1;
	setAttr -s 2 ".wl[83].w";
	setAttr ".wl[83].w[8]" 0.0071246315691285492;
	setAttr ".wl[83].w[18]" 0.99287536843087143;
	setAttr ".wl[84].w[18]"  1;
	setAttr ".wl[85].w[18]"  1;
	setAttr ".wl[86].w[18]"  1;
	setAttr ".wl[87].w[18]"  1;
	setAttr ".wl[88].w[18]"  1;
	setAttr ".wl[89].w[18]"  1;
	setAttr ".wl[90].w[18]"  1;
	setAttr ".wl[91].w[18]"  1;
	setAttr ".wl[92].w[18]"  1;
	setAttr ".wl[93].w[18]"  1;
	setAttr -s 2 ".wl[94].w[22:23]"  0.29111778951451417 0.70888221048548583;
	setAttr -s 2 ".wl[95].w[22:23]"  0.46866569582316125 0.5313343041768388;
	setAttr -s 2 ".wl[96].w[22:23]"  0.49608320448513021 0.50391679551486979;
	setAttr -s 2 ".wl[97].w[22:23]"  0.41381595529328896 0.58618404470671104;
	setAttr ".wl[98].w[22]"  1;
	setAttr ".wl[99].w[22]"  1;
	setAttr ".wl[100].w[22]"  1;
	setAttr ".wl[101].w[22]"  1;
	setAttr -s 4 ".wl[102].w";
	setAttr ".wl[102].w[2]" 0.01601683511140824;
	setAttr ".wl[102].w[3]" 0.01601683511140824;
	setAttr ".wl[102].w[22]" 0.46998756839478156;
	setAttr ".wl[102].w[23]" 0.49797876138240188;
	setAttr -s 4 ".wl[103].w";
	setAttr ".wl[103].w[2]" 0.013727603844474374;
	setAttr ".wl[103].w[3]" 0.013727603844474374;
	setAttr ".wl[103].w[22]" 0.48533053885435218;
	setAttr ".wl[103].w[23]" 0.48721425345669905;
	setAttr -s 4 ".wl[104].w";
	setAttr ".wl[104].w[2]" 0.01084464966760664;
	setAttr ".wl[104].w[3]" 0.01084464966760664;
	setAttr ".wl[104].w[22]" 0.47249689277591816;
	setAttr ".wl[104].w[23]" 0.50581380788886865;
	setAttr -s 4 ".wl[105].w";
	setAttr ".wl[105].w[2]" 0.0088354364413611337;
	setAttr ".wl[105].w[3]" 0.0088354364413611337;
	setAttr ".wl[105].w[22]" 0.42021243808421782;
	setAttr ".wl[105].w[23]" 0.56211668903305989;
	setAttr -s 3 ".wl[106].w";
	setAttr ".wl[106].w[2]" 0.00043928359258626191;
	setAttr ".wl[106].w[22]" 0.31313500454238014;
	setAttr ".wl[106].w[23]" 0.68642571186503354;
	setAttr -s 3 ".wl[107].w";
	setAttr ".wl[107].w[2]" 0.002516791278692013;
	setAttr ".wl[107].w[22]" 0.4803776399056679;
	setAttr ".wl[107].w[23]" 0.51710556881564018;
	setAttr -s 3 ".wl[108].w[22:24]"  0.40218078172397842 0.59533670309631381 
		0.0024825151797077502;
	setAttr -s 3 ".wl[109].w[22:24]"  0.0011686946448230225 0.99882993990893487 
		1.3654462421216116e-006;
	setAttr -s 2 ".wl[110].w[22:23]"  0.50852294236262319 0.49147705763737681;
	setAttr -s 2 ".wl[111].w[22:23]"  0.5 0.5;
	setAttr -s 3 ".wl[112].w";
	setAttr ".wl[112].w[2]" 0.0033267428060034659;
	setAttr ".wl[112].w[22]" 0.34592425757662593;
	setAttr ".wl[112].w[23]" 0.65074899961737065;
	setAttr -s 3 ".wl[113].w[22:24]"  0.13617499091849661 0.86279614365747437 
		0.0010288654240290069;
	setAttr -s 3 ".wl[114].w[22:24]"  0.23931264520641776 0.75978786702910994 
		0.00089948776447226666;
	setAttr -s 3 ".wl[115].w";
	setAttr ".wl[115].w[2]" 0.003438020321597941;
	setAttr ".wl[115].w[22]" 0.43411344592107254;
	setAttr ".wl[115].w[23]" 0.56244853375732962;
	setAttr ".wl[116].w[22]"  1;
	setAttr ".wl[117].w[22]"  1;
	setAttr ".wl[118].w[22]"  1;
	setAttr ".wl[119].w[22]"  1;
	setAttr ".wl[120].w[22]"  1;
	setAttr ".wl[121].w[22]"  1;
	setAttr ".wl[122].w[22]"  1;
	setAttr ".wl[123].w[22]"  1;
	setAttr ".wl[124].w[22]"  1;
	setAttr ".wl[125].w[22]"  1;
	setAttr ".wl[126].w[22]"  1;
	setAttr ".wl[127].w[22]"  1;
	setAttr ".wl[128].w[22]"  1;
	setAttr ".wl[129].w[22]"  1;
	setAttr -s 2 ".wl[130].w[22:23]"  0.49999999999999989 0.50000000000000011;
	setAttr -s 2 ".wl[131].w[22:23]"  0.49230378273390646 0.50769621726609349;
	setAttr -s 2 ".wl[132].w[22:23]"  0.46280977471000972 0.53719022528999028;
	setAttr -s 2 ".wl[133].w[22:23]"  0.52650941025470133 0.47349058974529867;
	setAttr -s 3 ".wl[134].w";
	setAttr ".wl[134].w[2]" 0.0025588268481986668;
	setAttr ".wl[134].w[22]" 0.54504124724270553;
	setAttr ".wl[134].w[23]" 0.45239992590909578;
	setAttr -s 2 ".wl[135].w[22:23]"  0.52500754747879341 0.47499245252120659;
	setAttr -s 2 ".wl[136].w[22:23]"  0.55411223674005017 0.44588776325994983;
	setAttr -s 2 ".wl[137].w[22:23]"  0.50251898891314939 0.49748101108685061;
	setAttr -s 2 ".wl[138].w[22:23]"  0.56571231311259951 0.43428768688740049;
	setAttr -s 2 ".wl[139].w[22:23]"  0.52924476366164619 0.47075523633835381;
	setAttr -s 2 ".wl[140].w[22:23]"  0.58860857937896793 0.41139142062103207;
	setAttr -s 2 ".wl[141].w[22:23]"  0.7635520933810902 0.2364479066189098;
	setAttr -s 2 ".wl[142].w[22:23]"  0.72022389156882449 0.27977610843117551;
	setAttr -s 2 ".wl[143].w[22:23]"  0.63543872767184106 0.36456127232815894;
	setAttr -s 2 ".wl[144].w[22:23]"  0.71978435157938858 0.28021564842061142;
	setAttr -s 2 ".wl[145].w[22:23]"  0.59002428123369632 0.40997571876630368;
	setAttr -s 2 ".wl[146].w[22:23]"  0.69383291896122357 0.30616708103877643;
	setAttr -s 2 ".wl[147].w[22:23]"  0.63908355656206683 0.36091644343793317;
	setAttr -s 2 ".wl[148].w[22:23]"  0.7204202698556299 0.2795797301443701;
	setAttr -s 2 ".wl[149].w[22:23]"  0.88416152807233683 0.11583847192766317;
	setAttr -s 2 ".wl[150].w[22:23]"  0.96311578983513924 0.036884210164860765;
	setAttr -s 2 ".wl[151].w[22:23]"  0.85713286383040832 0.14286713616959168;
	setAttr -s 2 ".wl[152].w[22:23]"  0.81185823335918661 0.18814176664081339;
	setAttr -s 2 ".wl[153].w[22:23]"  0.65619032564029744 0.34380967435970256;
	setAttr ".wl[154].w[22]"  1;
	setAttr ".wl[155].w[22]"  1;
	setAttr ".wl[156].w[22]"  1;
	setAttr ".wl[157].w[22]"  1;
	setAttr -s 2 ".wl[158].w[22:23]"  0.98391424714632425 0.01608575285367575;
	setAttr -s 2 ".wl[159].w[22:23]"  0.98697420640407096 0.013025793595929036;
	setAttr ".wl[160].w[22]"  1;
	setAttr -s 2 ".wl[161].w[22:23]"  0.99033064101527479 0.0096693589847252071;
	setAttr -s 2 ".wl[162].w[22:23]"  0.9454057130131418 0.054594286986858198;
	setAttr -s 2 ".wl[163].w[22:23]"  0.90325859878225145 0.096741401217748546;
	setAttr -s 2 ".wl[164].w[22:23]"  0.79965205455513144 0.20034794544486856;
	setAttr -s 2 ".wl[165].w[22:23]"  0.89792331432758798 0.10207668567241202;
	setAttr -s 2 ".wl[166].w[22:23]"  0.78522912644960474 0.21477087355039526;
	setAttr ".wl[167].w[22]"  1;
	setAttr -s 2 ".wl[168].w[22:23]"  0.88976895016125934 0.11023104983874066;
	setAttr -s 2 ".wl[169].w[22:23]"  0.79060022979447397 0.20939977020552603;
	setAttr -s 3 ".wl[170].w[29:31]"  0.19967616729954488 0.32438460151992055 
		0.12884317985875521;
	setAttr -s 3 ".wl[171].w[29:31]"  0.21212276250942602 0.37585593968360903 
		0.12115906415082216;
	setAttr ".wl[172].w[22]"  1;
	setAttr -s 2 ".wl[173].w[22:23]"  0.29562880791735163 0.70437119208264831;
	setAttr -s 2 ".wl[174].w[22:23]"  0.40578775835339714 0.59421224164660291;
	setAttr -s 2 ".wl[175].w[22:23]"  0.49002807923316816 0.50997192076683184;
	setAttr -s 2 ".wl[176].w[22:23]"  0.56360269022842446 0.43639730977157554;
	setAttr -s 2 ".wl[177].w[22:23]"  0.67378545693502923 0.32621454306497077;
	setAttr ".wl[178].w[22]"  1;
	setAttr -s 4 ".wl[179].w";
	setAttr ".wl[179].w[2]" 0.032712711546055581;
	setAttr ".wl[179].w[3]" 0.032712711546055581;
	setAttr ".wl[179].w[22]" 0.43128195106679484;
	setAttr ".wl[179].w[23]" 0.50329262584109391;
	setAttr -s 4 ".wl[180].w";
	setAttr ".wl[180].w[2]" 0.022699907687459144;
	setAttr ".wl[180].w[3]" 0.022699907687459144;
	setAttr ".wl[180].w[22]" 0.38330885614441385;
	setAttr ".wl[180].w[23]" 0.57129132848066788;
	setAttr -s 3 ".wl[181].w";
	setAttr ".wl[181].w[2]" 0.0084087494957446694;
	setAttr ".wl[181].w[22]" 0.51897117239672141;
	setAttr ".wl[181].w[23]" 0.47262007810753393;
	setAttr -s 3 ".wl[182].w";
	setAttr ".wl[182].w[2]" 0.0068862067008114451;
	setAttr ".wl[182].w[22]" 0.63512670095467405;
	setAttr ".wl[182].w[23]" 0.35798709234451448;
	setAttr -s 2 ".wl[183].w[22:23]"  0.85280764098088468 0.14719235901911532;
	setAttr -s 2 ".wl[184].w[22:23]"  0.9005994662530894 0.099400533746910602;
	setAttr ".wl[185].w[22]"  1;
	setAttr ".wl[186].w[22]"  1;
	setAttr ".wl[187].w[22]"  1;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 8.5485389286235716 28.580356764965313 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[2]" -type "matrix" 6.693613450145993e-016 1.7889765444095194e-015 -1 -0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-015 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-015 -0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[3]" -type "matrix" -3.1806489720151766e-016 7.1110600523609972e-016 1 -0
		 0.23651468939617115 -0.97162791319508346 7.5749132939959201e-016 -0 0.97162791319508335 0.23651468939617104 1.3112890213765272e-016 -0
		 15.75339661024516 -24.192069798095325 14.952100000000019 1;
	setAttr ".pm[4]" -type "matrix" -7.7862017067354629e-016 2.5809568655261894e-008 0.99999999999999978 -0
		 0.97741416543986737 -0.21133279252753712 5.4544089702159369e-009 -0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-008 -0
		 38.494799132532364 23.920859481432768 12.094899382612956 1;
	setAttr ".pm[5]" -type "matrix" -1.3805402767519452e-008 1.3615198156657948e-008 -1 -0
		 0.93887631588660836 -0.34425464915842291 -1.7648660945676008e-008 0 -0.3442546491584228 -0.93887631588660847 -8.0304129894412123e-009 0
		 24.344687153438453 -43.723300868428026 -12.094900931389606 1;
	setAttr ".pm[6]" -type "matrix" 7.7249776432890241e-009 -1.634336896666231e-008 -0.99999999999999978 -0
		 0.017238817250843617 -0.99985140054899724 1.6474109837531978e-008 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-009 0
		 -30.350163356585984 -42.766656220525725 -12.094899535503076 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999999999978 -1.6162482267069893e-008 -1.0632309219184019e-008 -0
		 -1.6162482273500898e-008 -0.99999999999999956 -1.5415230359074293e-014 0 -1.0632309178159527e-008 1.5240265432222506e-014 -0.99999999999999933 -0
		 14.182899160148004 -42.525700229230644 -14.346000150797614 1;
	setAttr ".pm[8]" -type "matrix" 3.6929243270364759e-016 4.7854520619298905e-017 -1 -0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-016 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-016 -0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[9]" -type "matrix" 2.8232439365995012e-016 -2.4058376823856014e-016 1 -0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-016 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-016 -0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[10]" -type "matrix" 3.3969043598553431e-016 1.4899000132653635e-016 1 -0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-016 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-016 -0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[11]" -type "matrix" 2.0731684078555344e-016 2.5897082728895037e-016 -1 -0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-017 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-016 -0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[12]" -type "matrix" 3.1628320018632648e-016 -1.0005548030928621e-016 -1 -0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-017 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-016 -0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[13]" -type "matrix" 1 -8.8267921761093423e-017 -6.84540878947466e-016 -0
		 5.982944840221322e-017 1.0000000000000002 -3.4000580129145434e-016 0 7.1046403083575275e-016 3.4347524824340795e-016 1 -0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
	setAttr ".pm[14]" -type "matrix" 2.9171120138216851e-016 -2.0309007691163655e-016 0.99999999999999978 -0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-016 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-016 -0
		 5.141099383762306 27.116763673658916 6.384860464405965e-015 1;
	setAttr ".pm[15]" -type "matrix" 1.9255976590806024e-016 4.2123171441692991e-016 -0.99999999999999978 -0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-016 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-016 -0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-014 1;
	setAttr ".pm[16]" -type "matrix" -2.2254253739202254e-016 4.0618990599018242e-016 -0.99999999999999978 -0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-016 -0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-016 -0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-014 1;
	setAttr ".pm[17]" -type "matrix" -3.9263286525203279e-016 2.4567224874041425e-016 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-016 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-016 -0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-014 1;
	setAttr ".pm[18]" -type "matrix" -4.3236892918211134e-016 -1.660497809547105e-016 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-016 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-016 -0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[19]" -type "matrix" -4.200894483686455e-016 -1.9503916541689796e-016 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-016 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-016 -0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[20]" -type "matrix" -2.3367847652631728e-016 5.2235190187304229e-016 0.99999999999999978 -0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-016 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-016 -0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[21]" -type "matrix" 0.99999999999999978 7.889801871316359e-016 -4.1328562659829196e-016 -0
		 -7.1325529571241588e-016 0.99999999999999978 7.4940054162198017e-016 0 5.2724101640594644e-016 -9.1593399531575296e-016 0.99999999999999933 -0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[22]" -type "matrix" 4.3236892918211144e-016 1.6604978095471038e-016 -0.99999999999999978 -0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-016 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-016 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[23]" -type "matrix" 4.200894483686456e-016 1.9503916541689791e-016 -1 -0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-016 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-016 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[24]" -type "matrix" 2.3367847652631718e-016 1.6666666780649064e-016 0.99999999999999978 -0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-016 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-016 -0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[25]" -type "matrix" 0.99999999999999978 5.5459731209901231e-016 1.205471819538445e-017 -0
		 6.0517993594966963e-016 -1 -6.3837823915946462e-016 0 7.7400975786026954e-017 7.2164496600635165e-016 -0.99999999999999978 -0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[26]" -type "matrix" -4.0112524636791838e-016 2.3154687949413117e-016 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-016 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-016 -0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-014 1;
	setAttr ".pm[27]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -6.2314369504761027e-015 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[28]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -1.3912601358543541e-014 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[29]" -type "matrix" 5.0813779435729561e-016 1.296078129378641e-015 0.99999999999999978 -0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-016 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-015 -0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[30]" -type "matrix" -1.0103368778348008e-015 -4.0484730914130193e-016 -0.99999999999999978 -0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-016 -0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-015 -0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[31]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-016 -1.5416536010143854e-015 -0
		 5.3246366272141857e-016 0.99999999999999978 -5.6898930012039322e-016 0 1.611115502654318e-015 6.5919492087118591e-016 0.99999999999999978 -0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[32]" -type "matrix" 5.0211778276518463e-016 -8.7774694673919145e-016 0.99999999999999978 -0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-016 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-015 -0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[33]" -type "matrix" 7.131658175178445e-016 -5.6945907845917879e-016 -0.99999999999999978 -0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-016 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-016 -0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[34]" -type "matrix" 1 -5.6270869122286394e-016 7.6910344414326517e-017 -0
		 -2.7046580649882625e-016 -0.99999999999999956 -4.9057979900624073e-015 0 2.3587309789062293e-016 4.7184478546569121e-015 -0.99999999999999978 -0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".gm" -type "matrix" 13.826463305464079 2.9076792262815045 0 0 -3.6246621542520963 17.235827741068377 0 0
		 0 0 19.55167476822702 0 18.876283281720202 20.804433693994056 6.4049762578744378 1;
	setAttr -s 22 ".ma";
	setAttr -s 35 ".dpf[0:34]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 22 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 22 ".ifcl";
createNode tweak -n "tweak4";
	rename -uid "15FA0FCA-45B7-FFC0-5A80-4B96FA33BD69";
createNode objectSet -n "skinCluster4Set";
	rename -uid "A939F5A9-4EE2-7DE2-6B8C-5C9F7F223691";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster4GroupId";
	rename -uid "4E23C998-43F3-BC33-13ED-B98C734FA390";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster4GroupParts";
	rename -uid "3B00AB4B-4B49-624C-E41E-CB93C2956DBC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet4";
	rename -uid "3AD9692F-4702-5EA3-05FE-CBA9F01E4E21";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8";
	rename -uid "8DC3E7E0-40B3-00F3-8E16-4D876462738B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "27A8C661-4882-3641-42DF-34B3A55C8A83";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster5";
	rename -uid "245EECAF-4380-02B1-D356-73B9C3FA3779";
	setAttr -s 104 ".wl";
	setAttr ".wl[0].w[8]"  1;
	setAttr ".wl[1].w[8]"  1;
	setAttr ".wl[2].w[8]"  1;
	setAttr ".wl[3].w[8]"  1;
	setAttr ".wl[4].w[8]"  1;
	setAttr ".wl[5].w[8]"  1;
	setAttr ".wl[6].w[8]"  1;
	setAttr ".wl[7].w[8]"  1;
	setAttr ".wl[8].w[8]"  1;
	setAttr ".wl[9].w[8]"  1;
	setAttr ".wl[10].w[8]"  1;
	setAttr ".wl[11].w[8]"  1;
	setAttr ".wl[12].w[8]"  1;
	setAttr ".wl[13].w[8]"  1;
	setAttr ".wl[14].w[8]"  1;
	setAttr ".wl[15].w[8]"  1;
	setAttr ".wl[16].w[8]"  1;
	setAttr ".wl[17].w[8]"  1;
	setAttr ".wl[18].w[8]"  1;
	setAttr ".wl[19].w[8]"  1;
	setAttr ".wl[20].w[8]"  1;
	setAttr ".wl[21].w[8]"  1;
	setAttr ".wl[22].w[8]"  1;
	setAttr ".wl[23].w[8]"  1;
	setAttr ".wl[24].w[8]"  1;
	setAttr ".wl[25].w[8]"  1;
	setAttr -s 5 ".wl[26].w";
	setAttr ".wl[26].w[0]" 0.16682504723143096;
	setAttr ".wl[26].w[1]" 0.58003994783875146;
	setAttr ".wl[26].w[2]" 0.054192377718367865;
	setAttr ".wl[26].w[14]" 0.1311748415039633;
	setAttr ".wl[26].w[15]" 0.067767785707486594;
	setAttr ".wl[27].w[8]"  1;
	setAttr ".wl[28].w[8]"  1;
	setAttr ".wl[29].w[8]"  1;
	setAttr ".wl[30].w[8]"  1;
	setAttr ".wl[31].w[8]"  1;
	setAttr ".wl[32].w[8]"  1;
	setAttr ".wl[33].w[8]"  1;
	setAttr ".wl[34].w[8]"  1;
	setAttr ".wl[35].w[8]"  1;
	setAttr ".wl[36].w[8]"  1;
	setAttr ".wl[37].w[8]"  1;
	setAttr ".wl[38].w[8]"  1;
	setAttr ".wl[39].w[8]"  1;
	setAttr ".wl[40].w[8]"  1;
	setAttr ".wl[41].w[8]"  1;
	setAttr ".wl[42].w[8]"  1;
	setAttr ".wl[43].w[8]"  1;
	setAttr ".wl[44].w[8]"  1;
	setAttr ".wl[45].w[8]"  1;
	setAttr ".wl[46].w[8]"  1;
	setAttr ".wl[47].w[8]"  1;
	setAttr ".wl[48].w[8]"  1;
	setAttr ".wl[49].w[8]"  1;
	setAttr ".wl[50].w[8]"  1;
	setAttr ".wl[51].w[8]"  1;
	setAttr -s 5 ".wl[52].w";
	setAttr ".wl[52].w[2]" 0.29806573143348342;
	setAttr ".wl[52].w[3]" 0.29806573143348342;
	setAttr ".wl[52].w[6]" 0.1528069530126373;
	setAttr ".wl[52].w[7]" 0.1528069530126373;
	setAttr ".wl[52].w[9]" 0.098254631107758686;
	setAttr -s 5 ".wl[53].w";
	setAttr ".wl[53].w[2]" 0.30080155941647146;
	setAttr ".wl[53].w[3]" 0.30080155941647146;
	setAttr ".wl[53].w[4]" 0.092123898936111323;
	setAttr ".wl[53].w[6]" 0.15313649111547289;
	setAttr ".wl[53].w[7]" 0.15313649111547289;
	setAttr -s 5 ".wl[54].w";
	setAttr ".wl[54].w[2]" 0.33305521358685036;
	setAttr ".wl[54].w[3]" 0.33305521358685036;
	setAttr ".wl[54].w[4]" 0.076972135694421198;
	setAttr ".wl[54].w[6]" 0.12845871856593905;
	setAttr ".wl[54].w[7]" 0.12845871856593905;
	setAttr -s 5 ".wl[55].w";
	setAttr ".wl[55].w[2]" 0.33398668763269213;
	setAttr ".wl[55].w[3]" 0.33398668763269213;
	setAttr ".wl[55].w[4]" 0.076200693927082827;
	setAttr ".wl[55].w[6]" 0.12791296540376648;
	setAttr ".wl[55].w[7]" 0.12791296540376648;
	setAttr -s 5 ".wl[56].w";
	setAttr ".wl[56].w[0]" 0.2096037241664645;
	setAttr ".wl[56].w[1]" 0.20270288280125501;
	setAttr ".wl[56].w[2]" 0.19046197177378862;
	setAttr ".wl[56].w[14]" 0.21645674464121029;
	setAttr ".wl[56].w[15]" 0.18077467661728167;
	setAttr -s 5 ".wl[57].w";
	setAttr ".wl[57].w[0]" 0.1742569608824201;
	setAttr ".wl[57].w[1]" 0.24092967544623603;
	setAttr ".wl[57].w[2]" 0.24445045815902755;
	setAttr ".wl[57].w[14]" 0.17654570349930787;
	setAttr ".wl[57].w[15]" 0.16381720201300834;
	setAttr -s 5 ".wl[58].w";
	setAttr ".wl[58].w[0]" 0.15448867958371754;
	setAttr ".wl[58].w[1]" 0.27338217505637569;
	setAttr ".wl[58].w[2]" 0.27338217505637569;
	setAttr ".wl[58].w[14]" 0.15406278828561717;
	setAttr ".wl[58].w[15]" 0.14468418201791394;
	setAttr -s 5 ".wl[59].w";
	setAttr ".wl[59].w[0]" 0.18561928799271216;
	setAttr ".wl[59].w[1]" 0.24887517829962852;
	setAttr ".wl[59].w[2]" 0.21760339054663078;
	setAttr ".wl[59].w[14]" 0.18717330422906306;
	setAttr ".wl[59].w[15]" 0.16072883893196552;
	setAttr -s 5 ".wl[60].w";
	setAttr ".wl[60].w[0]" 0.15124153212960714;
	setAttr ".wl[60].w[1]" 0.28570819539574988;
	setAttr ".wl[60].w[2]" 0.28570819539574988;
	setAttr ".wl[60].w[14]" 0.14375109012885065;
	setAttr ".wl[60].w[15]" 0.13359098695004251;
	setAttr -s 5 ".wl[61].w";
	setAttr ".wl[61].w[0]" 0.2201490693896285;
	setAttr ".wl[61].w[1]" 0.2727883419821453;
	setAttr ".wl[61].w[2]" 0.18543009550622205;
	setAttr ".wl[61].w[14]" 0.18281622740724088;
	setAttr ".wl[61].w[15]" 0.13881626571476319;
	setAttr -s 5 ".wl[62].w";
	setAttr ".wl[62].w[0]" 0.19248408029232353;
	setAttr ".wl[62].w[1]" 0.27467467872537599;
	setAttr ".wl[62].w[2]" 0.25913433964922877;
	setAttr ".wl[62].w[14]" 0.15279649622429226;
	setAttr ".wl[62].w[15]" 0.12091040510877948;
	setAttr -s 5 ".wl[63].w";
	setAttr ".wl[63].w[0]" 0.15734208502393435;
	setAttr ".wl[63].w[1]" 0.29253407299310519;
	setAttr ".wl[63].w[2]" 0.29253407299310519;
	setAttr ".wl[63].w[14]" 0.13821657106798302;
	setAttr ".wl[63].w[15]" 0.11937319792187223;
	setAttr -s 5 ".wl[64].w[0:4]"  0.14894968009415455 0.25716984888005234 
		0.25716984888005234 0.16835531107287041 0.16835531107287041;
	setAttr -s 5 ".wl[65].w[0:4]"  0.18414986187245408 0.25205755706092126 
		0.24986005227530061 0.15696626439566208 0.15696626439566208;
	setAttr -s 5 ".wl[66].w";
	setAttr ".wl[66].w[0]" 0.13080271969166399;
	setAttr ".wl[66].w[1]" 0.31827390585838117;
	setAttr ".wl[66].w[2]" 0.31827390585838117;
	setAttr ".wl[66].w[14]" 0.12527717006571967;
	setAttr ".wl[66].w[15]" 0.10737229852585406;
	setAttr -s 5 ".wl[67].w";
	setAttr ".wl[67].w[0]" 0.15310850022485409;
	setAttr ".wl[67].w[1]" 0.532570485519124;
	setAttr ".wl[67].w[2]" 0.13145616359629816;
	setAttr ".wl[67].w[14]" 0.12052058897837425;
	setAttr ".wl[67].w[15]" 0.062344261681349399;
	setAttr -s 5 ".wl[68].w[1:5]"  0.11818942052089447 0.19323492859427802 
		0.32960508081470352 0.21879042696781262 0.14018014310231136;
	setAttr -s 5 ".wl[69].w[1:5]"  0.12096075289392975 0.19992450750279242 
		0.3238427848373906 0.21627203900081146 0.13899991576507581;
	setAttr -s 5 ".wl[70].w";
	setAttr ".wl[70].w[0]" 0.14397692252686897;
	setAttr ".wl[70].w[1]" 0.15234971702585132;
	setAttr ".wl[70].w[2]" 0.35758902490433869;
	setAttr ".wl[70].w[3]" 0.20210741301607177;
	setAttr ".wl[70].w[14]" 0.14397692252686897;
	setAttr -s 5 ".wl[71].w";
	setAttr ".wl[71].w[0]" 0.16121901193119687;
	setAttr ".wl[71].w[1]" 0.15890758140873801;
	setAttr ".wl[71].w[2]" 0.28833426698352788;
	setAttr ".wl[71].w[3]" 0.23032012774534025;
	setAttr ".wl[71].w[14]" 0.16121901193119687;
	setAttr -s 5 ".wl[72].w";
	setAttr ".wl[72].w[0]" 0.14504387750057071;
	setAttr ".wl[72].w[1]" 0.16519974830963;
	setAttr ".wl[72].w[2]" 0.30135322747592042;
	setAttr ".wl[72].w[3]" 0.24335926921330808;
	setAttr ".wl[72].w[14]" 0.14504387750057071;
	setAttr -s 5 ".wl[73].w[0:4]"  0.11107964985522709 0.15860260491164418 
		0.37378748286032032 0.22613551249449348 0.13039474987831498;
	setAttr -s 5 ".wl[74].w";
	setAttr ".wl[74].w[2]" 0.27904458676740013;
	setAttr ".wl[74].w[3]" 0.35633981888565441;
	setAttr ".wl[74].w[4]" 0.1238187360264047;
	setAttr ".wl[74].w[6]" 0.12185078072920613;
	setAttr ".wl[74].w[7]" 0.11894607759133458;
	setAttr -s 5 ".wl[75].w";
	setAttr ".wl[75].w[2]" 0.2892537729886599;
	setAttr ".wl[75].w[3]" 0.3500619742415233;
	setAttr ".wl[75].w[4]" 0.12150196821930064;
	setAttr ".wl[75].w[6]" 0.12091652793921681;
	setAttr ".wl[75].w[7]" 0.11826575661129943;
	setAttr -s 5 ".wl[76].w";
	setAttr ".wl[76].w[2]" 0.3452137469324289;
	setAttr ".wl[76].w[3]" 0.32194767561215898;
	setAttr ".wl[76].w[6]" 0.11721795495538939;
	setAttr ".wl[76].w[7]" 0.11721795495538939;
	setAttr ".wl[76].w[9]" 0.098402667544633365;
	setAttr -s 5 ".wl[77].w";
	setAttr ".wl[77].w[2]" 0.3518255460387163;
	setAttr ".wl[77].w[3]" 0.3518255460387163;
	setAttr ".wl[77].w[6]" 0.10687173747356771;
	setAttr ".wl[77].w[7]" 0.10687173747356771;
	setAttr ".wl[77].w[9]" 0.082605432975432061;
	setAttr -s 5 ".wl[78].w";
	setAttr ".wl[78].w[2]" 0.35099424832862303;
	setAttr ".wl[78].w[3]" 0.35099424832862303;
	setAttr ".wl[78].w[4]" 0.083130593020656326;
	setAttr ".wl[78].w[6]" 0.10744045516104885;
	setAttr ".wl[78].w[7]" 0.10744045516104885;
	setAttr -s 5 ".wl[79].w";
	setAttr ".wl[79].w[2]" 0.34235104831750718;
	setAttr ".wl[79].w[3]" 0.32453862846665898;
	setAttr ".wl[79].w[4]" 0.098442737796081911;
	setAttr ".wl[79].w[6]" 0.11733379270987591;
	setAttr ".wl[79].w[7]" 0.11733379270987591;
	setAttr -s 5 ".wl[80].w";
	setAttr ".wl[80].w[3]" 0.14238583423482012;
	setAttr ".wl[80].w[4]" 0.21056758327141234;
	setAttr ".wl[80].w[5]" 0.27290289587828997;
	setAttr ".wl[80].w[6]" 0.27290289587828997;
	setAttr ".wl[80].w[12]" 0.1012407907371877;
	setAttr -s 5 ".wl[81].w[3:7]"  0.14711254605441185 0.22043117305210433 
		0.26847577477185341 0.26847577477185341 0.095504731349776883;
	setAttr -s 5 ".wl[82].w[3:7]"  0.23900715752680771 0.19534453846124086 
		0.18771026837929203 0.2249774829882269 0.15296055264443259;
	setAttr -s 5 ".wl[83].w[3:7]"  0.24134920463731083 0.1915195911699174 
		0.18322307498782731 0.23020869570680741 0.15369943349813722;
	setAttr -s 5 ".wl[84].w[2:6]"  0.11603589989909677 0.27849421300028776 
		0.27849421300028776 0.1896168499212478 0.13735882417907982;
	setAttr -s 5 ".wl[85].w[2:6]"  0.12242234332684586 0.27460031364934501 
		0.27460001375241022 0.18775288586237168 0.14062444340902738;
	setAttr -s 5 ".wl[86].w";
	setAttr ".wl[86].w[2]" 0.2662203822546837;
	setAttr ".wl[86].w[3]" 0.26641679544292796;
	setAttr ".wl[86].w[4]" 0.098537917092461361;
	setAttr ".wl[86].w[6]" 0.1844124526049635;
	setAttr ".wl[86].w[7]" 0.1844124526049635;
	setAttr -s 5 ".wl[87].w[3:7]"  0.24565226652621444 0.19548592219385591 
		0.18589566203226163 0.22268587018705047 0.15028027906061758;
	setAttr -s 5 ".wl[88].w";
	setAttr ".wl[88].w[2]" 0.26639849676945021;
	setAttr ".wl[88].w[3]" 0.26647403401131492;
	setAttr ".wl[88].w[4]" 0.097223954265805879;
	setAttr ".wl[88].w[6]" 0.1849517574767145;
	setAttr ".wl[88].w[7]" 0.1849517574767145;
	setAttr -s 5 ".wl[89].w[3:7]"  0.24417822652603829 0.19293009870080738 
		0.18300161154665717 0.22580659521812957 0.15408346800836761;
	setAttr -s 5 ".wl[90].w";
	setAttr ".wl[90].w[0]" 0.15333215128756741;
	setAttr ".wl[90].w[1]" 0.29029530247087887;
	setAttr ".wl[90].w[2]" 0.29029530247087887;
	setAttr ".wl[90].w[14]" 0.14019440997222354;
	setAttr ".wl[90].w[15]" 0.12588283379845133;
	setAttr -s 5 ".wl[91].w";
	setAttr ".wl[91].w[0]" 0.22291593847117455;
	setAttr ".wl[91].w[1]" 0.27656623639511874;
	setAttr ".wl[91].w[2]" 0.20997520783532025;
	setAttr ".wl[91].w[14]" 0.1661460197688602;
	setAttr ".wl[91].w[15]" 0.12439659752952627;
	setAttr -s 5 ".wl[92].w";
	setAttr ".wl[92].w[0]" 0.21307511744377525;
	setAttr ".wl[92].w[1]" 0.29904535399798771;
	setAttr ".wl[92].w[2]" 0.23780679355573431;
	setAttr ".wl[92].w[4]" 0.10199661604174472;
	setAttr ".wl[92].w[14]" 0.14807611896075809;
	setAttr -s 5 ".wl[93].w[0:4]"  0.13431466955418761 0.15242835495170048 
		0.3017487515337981 0.24721253287956299 0.16429569108075079;
	setAttr -s 5 ".wl[94].w";
	setAttr ".wl[94].w[2]" 0.32084626204911293;
	setAttr ".wl[94].w[3]" 0.31711466879706707;
	setAttr ".wl[94].w[4]" 0.11376306120705573;
	setAttr ".wl[94].w[6]" 0.12421827765550018;
	setAttr ".wl[94].w[7]" 0.12405773029126409;
	setAttr -s 5 ".wl[95].w";
	setAttr ".wl[95].w[2]" 0.27812847439740096;
	setAttr ".wl[95].w[3]" 0.27812847439740096;
	setAttr ".wl[95].w[6]" 0.17371163344903107;
	setAttr ".wl[95].w[7]" 0.17371163344903107;
	setAttr ".wl[95].w[9]" 0.096319784307135919;
	setAttr -s 5 ".wl[96].w";
	setAttr ".wl[96].w[2]" 0.27811249613947836;
	setAttr ".wl[96].w[3]" 0.27811249613947836;
	setAttr ".wl[96].w[4]" 0.096325216836935734;
	setAttr ".wl[96].w[6]" 0.17372489544205375;
	setAttr ".wl[96].w[7]" 0.17372489544205375;
	setAttr -s 5 ".wl[97].w";
	setAttr ".wl[97].w[2]" 0.31081021681597321;
	setAttr ".wl[97].w[3]" 0.32174643799042291;
	setAttr ".wl[97].w[4]" 0.1164682142531769;
	setAttr ".wl[97].w[6]" 0.12560958230887984;
	setAttr ".wl[97].w[7]" 0.125365548631547;
	setAttr -s 5 ".wl[98].w[1:5]"  0.14858063919699702 0.28994748954756766 
		0.25875230140539235 0.1722647418607855 0.13045482798925742;
	setAttr -s 5 ".wl[99].w[0:4]"  0.13631532792473583 0.29120600165453892 
		0.29120600165453892 0.14063633438309323 0.14063633438309323;
	setAttr -s 5 ".wl[100].w[3:7]"  0.1933840003967906 0.26187996394269469 
		0.26187996394269469 0.20326845436087732 0.079587617356942739;
	setAttr -s 5 ".wl[101].w";
	setAttr ".wl[101].w[3]" 0.19301337636053933;
	setAttr ".wl[101].w[4]" 0.25240722042452685;
	setAttr ".wl[101].w[5]" 0.25240722042452685;
	setAttr ".wl[101].w[6]" 0.20554330219360739;
	setAttr ".wl[101].w[11]" 0.096628880596799541;
	setAttr -s 5 ".wl[102].w[3:7]"  0.23244044191895885 0.21122351519584745 
		0.20346714019195369 0.21941215175585035 0.13345675093738962;
	setAttr -s 5 ".wl[103].w[3:7]"  0.23432441916220334 0.20780222307657065 
		0.19918519390405359 0.22427318205475003 0.13441498180242242;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 8.5485389286235716 28.580356764965313 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[2]" -type "matrix" 6.693613450145993e-016 1.7889765444095194e-015 -1 -0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-015 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-015 -0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[3]" -type "matrix" -3.1806489720151766e-016 7.1110600523609972e-016 1 -0
		 0.23651468939617115 -0.97162791319508346 7.5749132939959201e-016 -0 0.97162791319508335 0.23651468939617104 1.3112890213765272e-016 -0
		 15.75339661024516 -24.192069798095325 14.952100000000019 1;
	setAttr ".pm[4]" -type "matrix" -7.7862017067354629e-016 2.5809568655261894e-008 0.99999999999999978 -0
		 0.97741416543986737 -0.21133279252753712 5.4544089702159369e-009 -0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-008 -0
		 38.494799132532364 23.920859481432768 12.094899382612956 1;
	setAttr ".pm[5]" -type "matrix" -1.3805402767519452e-008 1.3615198156657948e-008 -1 -0
		 0.93887631588660836 -0.34425464915842291 -1.7648660945676008e-008 0 -0.3442546491584228 -0.93887631588660847 -8.0304129894412123e-009 0
		 24.344687153438453 -43.723300868428026 -12.094900931389606 1;
	setAttr ".pm[6]" -type "matrix" 7.7249776432890241e-009 -1.634336896666231e-008 -0.99999999999999978 -0
		 0.017238817250843617 -0.99985140054899724 1.6474109837531978e-008 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-009 0
		 -30.350163356585984 -42.766656220525725 -12.094899535503076 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999999999978 -1.6162482267069893e-008 -1.0632309219184019e-008 -0
		 -1.6162482273500898e-008 -0.99999999999999956 -1.5415230359074293e-014 0 -1.0632309178159527e-008 1.5240265432222506e-014 -0.99999999999999933 -0
		 14.182899160148004 -42.525700229230644 -14.346000150797614 1;
	setAttr ".pm[8]" -type "matrix" 3.6929243270364759e-016 4.7854520619298905e-017 -1 -0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-016 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-016 -0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[9]" -type "matrix" 2.8232439365995012e-016 -2.4058376823856014e-016 1 -0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-016 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-016 -0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[10]" -type "matrix" 3.3969043598553431e-016 1.4899000132653635e-016 1 -0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-016 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-016 -0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[11]" -type "matrix" 2.0731684078555344e-016 2.5897082728895037e-016 -1 -0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-017 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-016 -0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[12]" -type "matrix" 3.1628320018632648e-016 -1.0005548030928621e-016 -1 -0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-017 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-016 -0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[13]" -type "matrix" 1 -8.8267921761093423e-017 -6.84540878947466e-016 -0
		 5.982944840221322e-017 1.0000000000000002 -3.4000580129145434e-016 0 7.1046403083575275e-016 3.4347524824340795e-016 1 -0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
	setAttr ".pm[14]" -type "matrix" 2.9171120138216851e-016 -2.0309007691163655e-016 0.99999999999999978 -0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-016 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-016 -0
		 5.141099383762306 27.116763673658916 6.384860464405965e-015 1;
	setAttr ".pm[15]" -type "matrix" 1.9255976590806024e-016 4.2123171441692991e-016 -0.99999999999999978 -0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-016 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-016 -0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-014 1;
	setAttr ".pm[16]" -type "matrix" -2.2254253739202254e-016 4.0618990599018242e-016 -0.99999999999999978 -0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-016 -0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-016 -0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-014 1;
	setAttr ".pm[17]" -type "matrix" -3.9263286525203279e-016 2.4567224874041425e-016 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-016 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-016 -0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-014 1;
	setAttr ".pm[18]" -type "matrix" -4.3236892918211134e-016 -1.660497809547105e-016 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-016 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-016 -0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[19]" -type "matrix" -4.200894483686455e-016 -1.9503916541689796e-016 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-016 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-016 -0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[20]" -type "matrix" -2.3367847652631728e-016 5.2235190187304229e-016 0.99999999999999978 -0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-016 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-016 -0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[21]" -type "matrix" 0.99999999999999978 7.889801871316359e-016 -4.1328562659829196e-016 -0
		 -7.1325529571241588e-016 0.99999999999999978 7.4940054162198017e-016 0 5.2724101640594644e-016 -9.1593399531575296e-016 0.99999999999999933 -0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[22]" -type "matrix" 4.3236892918211144e-016 1.6604978095471038e-016 -0.99999999999999978 -0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-016 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-016 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[23]" -type "matrix" 4.200894483686456e-016 1.9503916541689791e-016 -1 -0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-016 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-016 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[24]" -type "matrix" 2.3367847652631718e-016 1.6666666780649064e-016 0.99999999999999978 -0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-016 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-016 -0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[25]" -type "matrix" 0.99999999999999978 5.5459731209901231e-016 1.205471819538445e-017 -0
		 6.0517993594966963e-016 -1 -6.3837823915946462e-016 0 7.7400975786026954e-017 7.2164496600635165e-016 -0.99999999999999978 -0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[26]" -type "matrix" -4.0112524636791838e-016 2.3154687949413117e-016 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-016 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-016 -0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-014 1;
	setAttr ".pm[27]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -6.2314369504761027e-015 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[28]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -1.3912601358543541e-014 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[29]" -type "matrix" 5.0813779435729561e-016 1.296078129378641e-015 0.99999999999999978 -0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-016 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-015 -0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[30]" -type "matrix" -1.0103368778348008e-015 -4.0484730914130193e-016 -0.99999999999999978 -0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-016 -0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-015 -0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[31]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-016 -1.5416536010143854e-015 -0
		 5.3246366272141857e-016 0.99999999999999978 -5.6898930012039322e-016 0 1.611115502654318e-015 6.5919492087118591e-016 0.99999999999999978 -0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[32]" -type "matrix" 5.0211778276518463e-016 -8.7774694673919145e-016 0.99999999999999978 -0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-016 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-015 -0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[33]" -type "matrix" 7.131658175178445e-016 -5.6945907845917879e-016 -0.99999999999999978 -0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-016 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-016 -0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[34]" -type "matrix" 1 -5.6270869122286394e-016 7.6910344414326517e-017 -0
		 -2.7046580649882625e-016 -0.99999999999999956 -4.9057979900624073e-015 0 2.3587309789062293e-016 4.7184478546569121e-015 -0.99999999999999978 -0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".gm" -type "matrix" 12.779404020195582 0 -1.8022364341300769 0 0 20.864441098464752 0 0
		 2.9136110123405587 0 20.660004192160098 0 12.903261752267436 -13.181326945442109 -24.452619527716614 1;
	setAttr -s 18 ".ma";
	setAttr -s 35 ".dpf[0:34]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 18 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 18 ".ifcl";
createNode tweak -n "tweak5";
	rename -uid "507F44F2-4EE8-3F70-6AEF-6D96EFDE1825";
createNode objectSet -n "skinCluster5Set";
	rename -uid "FE8C1FE0-4B9D-BD0B-3514-E8B1887297A1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster5GroupId";
	rename -uid "6C50B50A-473A-5FDF-79B4-228CDA1D3304";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster5GroupParts";
	rename -uid "7C5ABF8A-4DDC-AA47-88AB-AAAB73E4010D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet5";
	rename -uid "190588BC-45BB-B9DA-7B91-5198EAC558EA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId10";
	rename -uid "8F1C366C-47F9-0FCE-8103-099A34469EC4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "3AE76F87-4127-56FC-882C-23AA58E80872";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster6";
	rename -uid "EC4B6E01-45AA-8740-D863-3E827B0C49F1";
	setAttr -s 116 ".wl";
	setAttr ".wl[0].w[13]"  1;
	setAttr ".wl[1].w[13]"  1;
	setAttr ".wl[2].w[13]"  1;
	setAttr ".wl[3].w[13]"  1;
	setAttr ".wl[4].w[13]"  1;
	setAttr ".wl[5].w[13]"  1;
	setAttr ".wl[6].w[13]"  1;
	setAttr ".wl[7].w[13]"  1;
	setAttr ".wl[8].w[13]"  1;
	setAttr ".wl[9].w[13]"  1;
	setAttr ".wl[10].w[13]"  1;
	setAttr ".wl[11].w[13]"  1;
	setAttr ".wl[12].w[13]"  1;
	setAttr ".wl[13].w[13]"  1;
	setAttr ".wl[14].w[13]"  1;
	setAttr ".wl[15].w[13]"  1;
	setAttr ".wl[16].w[13]"  1;
	setAttr ".wl[17].w[13]"  1;
	setAttr ".wl[18].w[13]"  1;
	setAttr ".wl[19].w[13]"  1;
	setAttr ".wl[20].w[13]"  1;
	setAttr ".wl[21].w[13]"  1;
	setAttr ".wl[22].w[13]"  1;
	setAttr ".wl[23].w[13]"  1;
	setAttr ".wl[24].w[13]"  1;
	setAttr ".wl[25].w[13]"  1;
	setAttr ".wl[26].w[13]"  1;
	setAttr ".wl[27].w[13]"  1;
	setAttr ".wl[28].w[13]"  1;
	setAttr ".wl[29].w[13]"  1;
	setAttr ".wl[30].w[13]"  1;
	setAttr ".wl[31].w[13]"  1;
	setAttr ".wl[32].w[13]"  1;
	setAttr ".wl[33].w[13]"  1;
	setAttr ".wl[34].w[13]"  1;
	setAttr ".wl[35].w[13]"  1;
	setAttr ".wl[36].w[13]"  1;
	setAttr ".wl[37].w[13]"  1;
	setAttr ".wl[38].w[13]"  1;
	setAttr ".wl[39].w[13]"  1;
	setAttr ".wl[40].w[13]"  1;
	setAttr ".wl[41].w[13]"  1;
	setAttr ".wl[42].w[13]"  1;
	setAttr ".wl[43].w[13]"  1;
	setAttr ".wl[44].w[13]"  1;
	setAttr ".wl[45].w[13]"  1;
	setAttr ".wl[46].w[13]"  1;
	setAttr ".wl[47].w[13]"  1;
	setAttr ".wl[48].w[13]"  1;
	setAttr ".wl[49].w[13]"  1;
	setAttr ".wl[50].w[13]"  1;
	setAttr ".wl[51].w[13]"  1;
	setAttr ".wl[52].w[13]"  1;
	setAttr ".wl[53].w[13]"  1;
	setAttr ".wl[54].w[13]"  1;
	setAttr ".wl[55].w[13]"  1;
	setAttr ".wl[56].w[13]"  1;
	setAttr ".wl[57].w[13]"  1;
	setAttr ".wl[58].w[7]"  1;
	setAttr ".wl[59].w[7]"  1;
	setAttr ".wl[60].w[7]"  1;
	setAttr ".wl[61].w[7]"  1;
	setAttr ".wl[62].w[7]"  1;
	setAttr ".wl[63].w[7]"  1;
	setAttr ".wl[64].w[7]"  1;
	setAttr ".wl[65].w[7]"  1;
	setAttr ".wl[66].w[7]"  1;
	setAttr ".wl[67].w[7]"  1;
	setAttr ".wl[68].w[7]"  1;
	setAttr ".wl[69].w[7]"  1;
	setAttr ".wl[70].w[7]"  1;
	setAttr ".wl[71].w[7]"  1;
	setAttr ".wl[72].w[7]"  1;
	setAttr ".wl[73].w[7]"  1;
	setAttr ".wl[74].w[7]"  1;
	setAttr ".wl[75].w[7]"  1;
	setAttr ".wl[76].w[7]"  1;
	setAttr ".wl[77].w[7]"  1;
	setAttr ".wl[78].w[7]"  1;
	setAttr ".wl[79].w[7]"  1;
	setAttr ".wl[80].w[7]"  1;
	setAttr ".wl[81].w[7]"  1;
	setAttr ".wl[82].w[7]"  1;
	setAttr ".wl[83].w[7]"  1;
	setAttr ".wl[84].w[7]"  1;
	setAttr ".wl[85].w[7]"  1;
	setAttr ".wl[86].w[7]"  1;
	setAttr ".wl[87].w[7]"  1;
	setAttr ".wl[88].w[7]"  1;
	setAttr ".wl[89].w[7]"  1;
	setAttr ".wl[90].w[7]"  1;
	setAttr ".wl[91].w[7]"  1;
	setAttr ".wl[92].w[7]"  1;
	setAttr ".wl[93].w[7]"  1;
	setAttr ".wl[94].w[7]"  1;
	setAttr ".wl[95].w[7]"  1;
	setAttr ".wl[96].w[7]"  1;
	setAttr ".wl[97].w[7]"  1;
	setAttr ".wl[98].w[7]"  1;
	setAttr ".wl[99].w[7]"  1;
	setAttr ".wl[100].w[7]"  1;
	setAttr ".wl[101].w[7]"  1;
	setAttr ".wl[102].w[7]"  1;
	setAttr ".wl[103].w[7]"  1;
	setAttr ".wl[104].w[7]"  1;
	setAttr ".wl[105].w[7]"  1;
	setAttr ".wl[106].w[7]"  1;
	setAttr ".wl[107].w[7]"  1;
	setAttr ".wl[108].w[7]"  1;
	setAttr ".wl[109].w[7]"  1;
	setAttr ".wl[110].w[7]"  1;
	setAttr ".wl[111].w[7]"  1;
	setAttr ".wl[112].w[7]"  1;
	setAttr ".wl[113].w[7]"  1;
	setAttr ".wl[114].w[7]"  1;
	setAttr ".wl[115].w[7]"  1;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 8.5485389286235716 28.580356764965313 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[2]" -type "matrix" 6.693613450145993e-016 1.7889765444095194e-015 -1 -0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-015 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-015 -0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[3]" -type "matrix" -3.1806489720151766e-016 7.1110600523609972e-016 1 -0
		 0.23651468939617115 -0.97162791319508346 7.5749132939959201e-016 -0 0.97162791319508335 0.23651468939617104 1.3112890213765272e-016 -0
		 15.75339661024516 -24.192069798095325 14.952100000000019 1;
	setAttr ".pm[4]" -type "matrix" -7.7862017067354629e-016 2.5809568655261894e-008 0.99999999999999978 -0
		 0.97741416543986737 -0.21133279252753712 5.4544089702159369e-009 -0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-008 -0
		 38.494799132532364 23.920859481432768 12.094899382612956 1;
	setAttr ".pm[5]" -type "matrix" -1.3805402767519452e-008 1.3615198156657948e-008 -1 -0
		 0.93887631588660836 -0.34425464915842291 -1.7648660945676008e-008 0 -0.3442546491584228 -0.93887631588660847 -8.0304129894412123e-009 0
		 24.344687153438453 -43.723300868428026 -12.094900931389606 1;
	setAttr ".pm[6]" -type "matrix" 7.7249776432890241e-009 -1.634336896666231e-008 -0.99999999999999978 -0
		 0.017238817250843617 -0.99985140054899724 1.6474109837531978e-008 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-009 0
		 -30.350163356585984 -42.766656220525725 -12.094899535503076 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999999999978 -1.6162482267069893e-008 -1.0632309219184019e-008 -0
		 -1.6162482273500898e-008 -0.99999999999999956 -1.5415230359074293e-014 0 -1.0632309178159527e-008 1.5240265432222506e-014 -0.99999999999999933 -0
		 14.182899160148004 -42.525700229230644 -14.346000150797614 1;
	setAttr ".pm[8]" -type "matrix" 3.6929243270364759e-016 4.7854520619298905e-017 -1 -0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-016 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-016 -0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[9]" -type "matrix" 2.8232439365995012e-016 -2.4058376823856014e-016 1 -0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-016 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-016 -0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[10]" -type "matrix" 3.3969043598553431e-016 1.4899000132653635e-016 1 -0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-016 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-016 -0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[11]" -type "matrix" 2.0731684078555344e-016 2.5897082728895037e-016 -1 -0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-017 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-016 -0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[12]" -type "matrix" 3.1628320018632648e-016 -1.0005548030928621e-016 -1 -0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-017 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-016 -0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[13]" -type "matrix" 1 -8.8267921761093423e-017 -6.84540878947466e-016 -0
		 5.982944840221322e-017 1.0000000000000002 -3.4000580129145434e-016 0 7.1046403083575275e-016 3.4347524824340795e-016 1 -0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
	setAttr ".pm[14]" -type "matrix" 2.9171120138216851e-016 -2.0309007691163655e-016 0.99999999999999978 -0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-016 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-016 -0
		 5.141099383762306 27.116763673658916 6.384860464405965e-015 1;
	setAttr ".pm[15]" -type "matrix" 1.9255976590806024e-016 4.2123171441692991e-016 -0.99999999999999978 -0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-016 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-016 -0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-014 1;
	setAttr ".pm[16]" -type "matrix" -2.2254253739202254e-016 4.0618990599018242e-016 -0.99999999999999978 -0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-016 -0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-016 -0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-014 1;
	setAttr ".pm[17]" -type "matrix" -3.9263286525203279e-016 2.4567224874041425e-016 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-016 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-016 -0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-014 1;
	setAttr ".pm[18]" -type "matrix" -4.3236892918211134e-016 -1.660497809547105e-016 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-016 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-016 -0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[19]" -type "matrix" -4.200894483686455e-016 -1.9503916541689796e-016 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-016 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-016 -0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[20]" -type "matrix" -2.3367847652631728e-016 5.2235190187304229e-016 0.99999999999999978 -0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-016 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-016 -0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[21]" -type "matrix" 0.99999999999999978 7.889801871316359e-016 -4.1328562659829196e-016 -0
		 -7.1325529571241588e-016 0.99999999999999978 7.4940054162198017e-016 0 5.2724101640594644e-016 -9.1593399531575296e-016 0.99999999999999933 -0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[22]" -type "matrix" 4.3236892918211144e-016 1.6604978095471038e-016 -0.99999999999999978 -0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-016 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-016 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[23]" -type "matrix" 4.200894483686456e-016 1.9503916541689791e-016 -1 -0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-016 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-016 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[24]" -type "matrix" 2.3367847652631718e-016 1.6666666780649064e-016 0.99999999999999978 -0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-016 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-016 -0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[25]" -type "matrix" 0.99999999999999978 5.5459731209901231e-016 1.205471819538445e-017 -0
		 6.0517993594966963e-016 -1 -6.3837823915946462e-016 0 7.7400975786026954e-017 7.2164496600635165e-016 -0.99999999999999978 -0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[26]" -type "matrix" -4.0112524636791838e-016 2.3154687949413117e-016 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-016 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-016 -0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-014 1;
	setAttr ".pm[27]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -6.2314369504761027e-015 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[28]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -1.3912601358543541e-014 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[29]" -type "matrix" 5.0813779435729561e-016 1.296078129378641e-015 0.99999999999999978 -0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-016 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-015 -0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[30]" -type "matrix" -1.0103368778348008e-015 -4.0484730914130193e-016 -0.99999999999999978 -0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-016 -0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-015 -0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[31]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-016 -1.5416536010143854e-015 -0
		 5.3246366272141857e-016 0.99999999999999978 -5.6898930012039322e-016 0 1.611115502654318e-015 6.5919492087118591e-016 0.99999999999999978 -0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[32]" -type "matrix" 5.0211778276518463e-016 -8.7774694673919145e-016 0.99999999999999978 -0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-016 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-015 -0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[33]" -type "matrix" 7.131658175178445e-016 -5.6945907845917879e-016 -0.99999999999999978 -0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-016 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-016 -0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[34]" -type "matrix" 1 -5.6270869122286394e-016 7.6910344414326517e-017 -0
		 -2.7046580649882625e-016 -0.99999999999999956 -4.9057979900624073e-015 0 2.3587309789062293e-016 4.7184478546569121e-015 -0.99999999999999978 -0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".gm" -type "matrix" 18.632692808969374 0 -2.6639166780483881 0 0 7.1195675677703436 0 0
		 3.7261284212064161 0 26.062303979407005 0 14.710233257018757 -40.432141440952073 -13.554738922429696 1;
	setAttr -s 14 ".ma";
	setAttr -s 35 ".dpf[0:34]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 14 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 14 ".ifcl";
createNode tweak -n "tweak6";
	rename -uid "A0C908DF-481D-56C6-707B-6F9C4F24BFC6";
createNode objectSet -n "skinCluster6Set";
	rename -uid "D08B3B2C-4EF2-8198-5BC8-AF9554679457";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster6GroupId";
	rename -uid "010E165F-4E65-2795-73FF-47A17F221EE7";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster6GroupParts";
	rename -uid "754BFFB5-4182-C941-A58F-0398C9937F3D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet6";
	rename -uid "2453E386-4720-F636-ADAC-D79752D5558C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId12";
	rename -uid "C06AC145-4CC3-B73F-8510-39B5488DD337";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "97215A51-49CA-2349-614B-F59CAB28CC89";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster7";
	rename -uid "3261FA55-4E83-CE86-0359-579FB49B0392";
	setAttr -s 312 ".wl";
	setAttr -s 3 ".wl[0].w[19:21]"  0.14046455402014651 0.42976772298992677 
		0.42976772298992677;
	setAttr -s 4 ".wl[1].w[18:21]"  0.0026322183674654959 0.20464711919028844 
		0.39636033122112302 0.39636033122112302;
	setAttr -s 4 ".wl[2].w[18:21]"  0.001456862702500619 0.46691275804492594 
		0.44680810369271917 0.08482227555985436;
	setAttr -s 4 ".wl[3].w[18:21]"  0.0049254789704674421 0.42500113870492984 
		0.41587565610123328 0.15419772622336941;
	setAttr -s 3 ".wl[4].w[19:21]"  0.4669897452335226 0.31771037352623477 
		0.21529988124024271;
	setAttr -s 4 ".wl[5].w[18:21]"  0.0218358917233725 0.42282454219154841 
		0.3188861451063178 0.23645342097876135;
	setAttr -s 3 ".wl[6].w[19:21]"  0.17777291363872161 0.4111135431806392 
		0.4111135431806392;
	setAttr -s 3 ".wl[7].w[19:21]"  0.20961365032448329 0.3951931748377584 
		0.3951931748377584;
	setAttr -s 4 ".wl[8].w[18:21]"  0.00029939915136617431 0.48629234323824011 
		0.4860207306235162 0.027387526986877471;
	setAttr -s 3 ".wl[9].w[19:21]"  0.47980916655669492 0.29731867935897605 
		0.222872154084329;
	setAttr -s 3 ".wl[10].w[19:21]"  0.12600787076220474 0.43699606461889762 
		0.43699606461889762;
	setAttr -s 3 ".wl[11].w[19:21]"  0.026656987980395282 0.48964125371165523 
		0.48370175830794943;
	setAttr -s 4 ".wl[12].w[18:21]"  0.00021964265345193303 0.48933309139940784 
		0.48901183061028974 0.021435435336850561;
	setAttr -s 3 ".wl[13].w[19:21]"  0.48306552478145492 0.2961310438058023 
		0.22080343141274267;
	setAttr -s 3 ".wl[14].w[19:21]"  0.12171485158116049 0.43914257420941982 
		0.43914257420941982;
	setAttr -s 4 ".wl[15].w[18:21]"  2.1127569889756448e-005 0.015975692688274108 
		0.49617493051236666 0.48782824922946944;
	setAttr -s 4 ".wl[16].w[18:21]"  0.001443844867494531 0.45869763036505812 
		0.45858793239213197 0.081270592375315448;
	setAttr -s 3 ".wl[17].w[19:21]"  0.4558897939862066 0.30561534283645153 
		0.23849486317734186;
	setAttr -s 3 ".wl[18].w[19:21]"  0.15849241806883596 0.42075379096558208 
		0.42075379096558208;
	setAttr -s 4 ".wl[19].w[18:21]"  0.00042874171898522813 0.11806037845051662 
		0.44152151390228761 0.43998936592821059;
	setAttr -s 3 ".wl[20].w[19:21]"  0.012745089922255799 0.49362745503887212 
		0.49362745503887212;
	setAttr -s 4 ".wl[21].w[18:21]"  0.00021570429337039611 0.48949162498034682 
		0.48916722424941417 0.021125446476868662;
	setAttr -s 3 ".wl[22].w[19:21]"  0.48324323021723709 0.2960658459695138 
		0.22069092381324909;
	setAttr -s 5 ".wl[23].w";
	setAttr ".wl[23].w[12]" 0.020946504659581863;
	setAttr ".wl[23].w[13]" 0.020946504659581863;
	setAttr ".wl[23].w[19]" 0.14815272974025476;
	setAttr ".wl[23].w[20]" 0.40497713047029077;
	setAttr ".wl[23].w[21]" 0.40497713047029077;
	setAttr -s 3 ".wl[24].w[19:21]"  0.03195528487022347 0.48402235756488826 
		0.48402235756488826;
	setAttr -s 4 ".wl[25].w[18:21]"  0.00040845204933787706 0.48255783457910517 
		0.48232895898723871 0.034704754384318345;
	setAttr -s 3 ".wl[26].w[19:21]"  0.47611130104270483 0.29865090134494765 
		0.22523779761234747;
	setAttr -s 5 ".wl[27].w";
	setAttr ".wl[27].w[12]" 0.024370695055604304;
	setAttr ".wl[27].w[13]" 0.024370695055604304;
	setAttr ".wl[27].w[19]" 0.15244433078343619;
	setAttr ".wl[27].w[20]" 0.39940713955267743;
	setAttr ".wl[27].w[21]" 0.39940713955267765;
	setAttr -s 3 ".wl[28].w[19:21]"  0.0073898582830736713 0.49630507085846315 
		0.49630507085846315;
	setAttr -s 4 ".wl[29].w[18:21]"  0.00016300833046501123 0.49170476498839361 
		0.49132802231842576 0.01680420436271569;
	setAttr -s 3 ".wl[30].w[19:21]"  0.48582959040254331 0.2951124531113537 
		0.21905795648610302;
	setAttr -s 5 ".wl[31].w";
	setAttr ".wl[31].w[12]" 0.017139067694185384;
	setAttr ".wl[31].w[13]" 0.017139067694185384;
	setAttr ".wl[31].w[19]" 0.14740952020040957;
	setAttr ".wl[31].w[20]" 0.40915617220560985;
	setAttr ".wl[31].w[21]" 0.40915617220560985;
	setAttr -s 4 ".wl[32].w[18:21]"  4.1556747790528345e-005 0.020654457226159832 
		0.48965199301302487 0.48965199301302487;
	setAttr -s 4 ".wl[33].w[18:21]"  0.00029267520880135874 0.48653734636111828 
		0.48626234444557781 0.026907633984502483;
	setAttr -s 3 ".wl[34].w[19:21]"  0.48006210862279364 0.29722691118044037 
		0.22271098019676591;
	setAttr -s 5 ".wl[35].w";
	setAttr ".wl[35].w[12]" 0.016914317309096805;
	setAttr ".wl[35].w[13]" 0.016914317309096805;
	setAttr ".wl[35].w[19]" 0.15179882741477241;
	setAttr ".wl[35].w[20]" 0.40718626898351706;
	setAttr ".wl[35].w[21]" 0.40718626898351695;
	setAttr -s 4 ".wl[36].w[18:21]"  0.00031296868943682057 0.083631495487873533 
		0.45802776791134486 0.45802776791134486;
	setAttr -s 4 ".wl[37].w[18:21]"  0.0011375318178370182 0.46435261202150452 
		0.46422585302349006 0.07028400313716833;
	setAttr -s 3 ".wl[38].w[19:21]"  0.4603943919788398 0.30411211955604128 
		0.23549348846511892;
	setAttr -s 5 ".wl[39].w";
	setAttr ".wl[39].w[12]" 0.018514697307034842;
	setAttr ".wl[39].w[13]" 0.018514697307034842;
	setAttr ".wl[39].w[19]" 0.16699561227533499;
	setAttr ".wl[39].w[20]" 0.39798749655529764;
	setAttr ".wl[39].w[21]" 0.39798749655529764;
	setAttr -s 4 ".wl[40].w[18:21]"  0.00056084211986398439 0.11355542636064117 
		0.44294186575974742 0.44294186575974742;
	setAttr -s 4 ".wl[41].w[18:21]"  0.0018108543967673327 0.45283980546075153 
		0.45274444695147165 0.092604893191009494;
	setAttr -s 3 ".wl[42].w[19:21]"  0.45130677399867208 0.30711540317943747 
		0.2415778228218905;
	setAttr -s 5 ".wl[43].w";
	setAttr ".wl[43].w[12]" 0.019741368067623371;
	setAttr ".wl[43].w[13]" 0.019741368067623371;
	setAttr ".wl[43].w[19]" 0.17437315623027391;
	setAttr ".wl[43].w[20]" 0.39307205381723975;
	setAttr ".wl[43].w[21]" 0.39307205381723975;
	setAttr -s 4 ".wl[44].w[18:21]"  0.00084137495584002723 0.30477691745027952 
		0.41380553048419288 0.28057617710968763;
	setAttr -s 4 ".wl[45].w[18:21]"  0.00068137867300081204 0.30091964908060326 
		0.42382583703443505 0.27457313521196103;
	setAttr -s 4 ".wl[46].w[18:21]"  0.00022742058948146843 0.27009513476501434 
		0.4974154645108691 0.23226198013463506;
	setAttr -s 4 ".wl[47].w[18:21]"  0.00018441458195574676 0.26157867668887663 
		0.51639267240842412 0.22184423632074352;
	setAttr -s 4 ".wl[48].w[18:21]"  0.0001495366213588412 0.25205713406674246 
		0.53712002537125469 0.21067330394064396;
	setAttr -s 4 ".wl[49].w[18:21]"  0.00018204096160686617 0.26101986076802658 
		0.51762269532522076 0.22117540294514587;
	setAttr -s 4 ".wl[50].w[18:21]"  0.00023130024500351028 0.27074016050938315 
		0.49595938956531394 0.2330691496802994;
	setAttr -s 4 ".wl[51].w[18:21]"  0.00029292309665719977 0.27912060758652885 
		0.47677225358836123 0.24381421572845269;
	setAttr -s 5 ".wl[52].w";
	setAttr ".wl[52].w[18]" 0.0010855573948565372;
	setAttr ".wl[52].w[19]" 0.27689740894836401;
	setAttr ".wl[52].w[20]" 0.40614147650947152;
	setAttr ".wl[52].w[21]" 0.31478450593531304;
	setAttr ".wl[52].w[24]" 0.0010910512119949225;
	setAttr -s 3 ".wl[53].w[19:21]"  0.23899060183664991 0.38097923284755014 
		0.38003016531579986;
	setAttr -s 3 ".wl[54].w[19:21]"  0.22974949477054893 0.38512525261472552 
		0.38512525261472552;
	setAttr -s 3 ".wl[55].w[19:21]"  0.18004203453728951 0.40997898273135508 
		0.4099789827313553;
	setAttr -s 3 ".wl[56].w[19:21]"  0.22544961389482249 0.38727519305258884 
		0.38727519305258873;
	setAttr -s 3 ".wl[57].w[19:21]"  0.22390737138101069 0.38804631430949454 
		0.38804631430949477;
	setAttr -s 3 ".wl[58].w[19:21]"  0.17601305416346311 0.41199347291826843 
		0.41199347291826843;
	setAttr -s 3 ".wl[59].w[19:21]"  0.22735892877117184 0.38632053561441393 
		0.38632053561441426;
	setAttr -s 3 ".wl[60].w[19:21]"  0.23947674822751169 0.38026162588624435 
		0.38026162588624401;
	setAttr -s 3 ".wl[61].w[19:21]"  0.20887193601767268 0.39556403199116374 
		0.39556403199116363;
	setAttr -s 3 ".wl[62].w[19:21]"  0.24526486413100324 0.37736756793449838 
		0.37736756793449838;
	setAttr -s 3 ".wl[63].w[19:21]"  0.26102625082916769 0.36982086486982174 
		0.36915288430101068;
	setAttr -s 4 ".wl[64].w[18:21]"  0.0031804037053758736 0.30066703154174784 
		0.37248355428597285 0.32366901046690338;
	setAttr -s 4 ".wl[65].w[18:21]"  0.0010330805397296876 0.30805521403911196 
		0.40505528724738316 0.28585641817377522;
	setAttr -s 4 ".wl[66].w[18:21]"  0.0015781632342879198 0.42597130028974983 
		0.42598479644848597 0.14646574002747631;
	setAttr -s 3 ".wl[67].w[19:21]"  0.37415803889826776 0.34328389287288552 
		0.2825580682288466;
	setAttr -s 3 ".wl[68].w[19:21]"  0.38085794458677197 0.33082885570943132 
		0.28831319970379676;
	setAttr -s 3 ".wl[69].w[19:21]"  0.38206357209810948 0.33068669026552278 
		0.2872497376363678;
	setAttr -s 3 ".wl[70].w[19:21]"  0.38318289712035086 0.33055145852471485 
		0.28626564435493435;
	setAttr -s 3 ".wl[71].w[19:21]"  0.3840257626509862 0.33044757548704529 
		0.28552666186196851;
	setAttr -s 3 ".wl[72].w[19:21]"  0.38312498048322169 0.33055853211111264 
		0.28631648740566568;
	setAttr -s 3 ".wl[73].w[19:21]"  0.38214602691601779 0.3306768347983291 
		0.28717713828565311;
	setAttr -s 3 ".wl[74].w[19:21]"  0.37572845388915932 0.33139279739291427 
		0.29287874871792641;
	setAttr -s 3 ".wl[75].w[19:21]"  0.37425623546056541 0.33154228196325902 
		0.29420148257617562;
	setAttr -s 3 ".wl[76].w[19:21]"  0.37275720887699282 0.33168875388744484 
		0.29555403723556228;
	setAttr -s 3 ".wl[77].w[19:21]"  0.3638615386324548 0.34137230965022802 
		0.29476615171731729;
	setAttr -s 4 ".wl[78].w[18:21]"  0.0047292154861814711 0.39308214088128507 
		0.39308869263102958 0.20909995100150389;
	setAttr -s 4 ".wl[79].w[18:21]"  0.0013334882142793543 0.43660940028025963 
		0.43660940028025963 0.12544771122520132;
	setAttr -s 4 ".wl[80].w[18:21]"  0.0010532511554454419 0.44339342446965763 
		0.44339342446965752 0.11215989990523947;
	setAttr -s 4 ".wl[81].w[18:21]"  0.00082081048375980603 0.45021547438768311 
		0.45021547438768311 0.098748240740874058;
	setAttr -s 4 ".wl[82].w[18:21]"  0.00019116267973954442 0.48016032329723729 
		0.48016032329723751 0.039488190725785556;
	setAttr -s 4 ".wl[83].w[18:21]"  0.00013864047361759755 0.48434765527284057 
		0.48434765527284057 0.031166048980701376;
	setAttr -s 4 ".wl[84].w[18:21]"  9.859141074530713e-005 0.487964076287566 
		0.487964076287566 0.023973256014122726;
	setAttr -s 4 ".wl[85].w[18:21]"  0.00013583241391087629 0.48458773877758055 
		0.48458773877758055 0.030688690030928049;
	setAttr -s 4 ".wl[86].w[18:21]"  0.00019603398247604217 0.47979779896692953 
		0.47979779896692953 0.040208368083664889;
	setAttr -s 4 ".wl[87].w[18:21]"  0.0002756334315654925 0.47436456052378539 
		0.47436456052378517 0.050995245520863985;
	setAttr -s 3 ".wl[88].w[19:21]"  0.27079252157423123 0.36880750354969105 
		0.36039997487607778;
	setAttr -s 3 ".wl[89].w[19:21]"  0.23968756645833511 0.38373162329634641 
		0.37658081024531859;
	setAttr -s 3 ".wl[90].w[19:21]"  0.2347557949336059 0.38646038046660464 
		0.37878382459978949;
	setAttr -s 3 ".wl[91].w[19:21]"  0.2297833202423353 0.3892217860200885 
		0.38099489373757622;
	setAttr -s 3 ".wl[92].w[19:21]"  0.20652562856061857 0.40228929471279018 
		0.39118507672659125;
	setAttr -s 3 ".wl[93].w[19:21]"  0.20273975661193561 0.40444294442191903 
		0.39281729896614537;
	setAttr -s 3 ".wl[94].w[19:21]"  0.19919807118302352 0.40646521407784819 
		0.39433671473912846;
	setAttr -s 3 ".wl[95].w[19:21]"  0.20251372454156788 0.40457178582089565 
		0.39291448963753645;
	setAttr -s 3 ".wl[96].w[19:21]"  0.20684152725058516 0.40210995595764931 
		0.39104851679176561;
	setAttr -s 3 ".wl[97].w[19:21]"  0.21140829154267601 0.39952343549947916 
		0.3890682729578448;
	setAttr -s 3 ".wl[98].w[19:21]"  0.24498869520170258 0.38405432845708759 
		0.37095697634120994;
	setAttr -s 5 ".wl[99].w";
	setAttr ".wl[99].w[18]" 0.0011232166241322596;
	setAttr ".wl[99].w[19]" 0.29832159100649663;
	setAttr ".wl[99].w[20]" 0.40640134165699088;
	setAttr ".wl[99].w[21]" 0.29307301715156991;
	setAttr ".wl[99].w[24]" 0.0010808335608103691;
	setAttr -s 4 ".wl[100].w[18:21]"  0.00029074078963384307 0.31244963635568423 
		0.47784206857696354 0.20941755427771847;
	setAttr -s 4 ".wl[101].w[18:21]"  0.00022768483748121038 0.30634450644187738 
		0.49693972513868601 0.19648808358195535;
	setAttr -s 4 ".wl[102].w[18:21]"  0.00017745460543501523 0.2986923812475078 
		0.51851618931295751 0.18261397483409972;
	setAttr -s 4 ".wl[103].w[18:21]"  0.00014443809909354859 0.29115721916876303 
		0.53796858470093833 0.17072975803120519;
	setAttr -s 4 ".wl[104].w[18:21]"  0.00017987024738761123 0.29914755392136105 
		0.51729026923334331 0.18338230659790805;
	setAttr -s 4 ".wl[105].w[18:21]"  0.00022372208091873995 0.30585486331037454 
		0.49838922846618289 0.19553218614252391;
	setAttr -s 4 ".wl[106].w[18:21]"  0.00069054624190974245 0.32561882790376712 
		0.4250390753039302 0.24865155055039306;
	setAttr -s 4 ".wl[107].w[18:21]"  0.00085571461394855404 0.32742236482066261 
		0.41500276371685246 0.25671915684853641;
	setAttr -s 4 ".wl[108].w[18:21]"  0.001053783114929545 0.32879043898298821 
		0.40622084989700247 0.26393492800507973;
	setAttr -s 4 ".wl[109].w[18:21]"  0.0032971367188425575 0.31377950037053354 
		0.37232153941879004 0.31060182349183396;
	setAttr -s 4 ".wl[110].w[18:21]"  0.009791869549300624 0.31186360201675817 
		0.35657470184957796 0.32176982658436326;
	setAttr -s 3 ".wl[111].w[19:21]"  0.30280779116748724 0.36805548638011715 
		0.32913672245239567;
	setAttr -s 3 ".wl[112].w[19:21]"  0.301016673211076 0.3701974530466412 
		0.32878587374228285;
	setAttr -s 3 ".wl[113].w[19:21]"  0.29918681094380406 0.3723982319006145 
		0.3284149571555815;
	setAttr -s 3 ".wl[114].w[19:21]"  0.2902771108547908 0.38329692065845422 
		0.32642596848675498;
	setAttr -s 3 ".wl[115].w[19:21]"  0.28876679719863224 0.38517493907996392 
		0.32605826372140378;
	setAttr -s 3 ".wl[116].w[19:21]"  0.28733726666796333 0.38696078118551258 
		0.32570195214652409;
	setAttr -s 3 ".wl[117].w[19:21]"  0.28867605000954577 0.38528806540839677 
		0.3260358845820574;
	setAttr -s 3 ".wl[118].w[19:21]"  0.29040232229297086 0.38314162663606599 
		0.32645605107096309;
	setAttr -s 3 ".wl[119].w[19:21]"  0.29219882677334863 0.38092024830086246 
		0.32688092492578891;
	setAttr -s 3 ".wl[120].w[19:21]"  0.306493571185949 0.37284163770719692 
		0.32066479110685409;
	setAttr -s 4 ".wl[121].w[18:21]"  0.0013042804579715013 0.37705932491949723 
		0.41072056151610775 0.21091583310642353;
	setAttr -s 4 ".wl[122].w[18:21]"  0.00027370153648380183 0.42970827425827218 
		0.46660196287931893 0.10341606132592508;
	setAttr -s 4 ".wl[123].w[18:21]"  0.0002039030867889257 0.4336447069300215 
		0.47760445661704432 0.088546933366145331;
	setAttr -s 4 ".wl[124].w[18:21]"  0.00014966174111438326 0.43648007519397614 
		0.4891507085064809 0.074219554558428505;
	setAttr -s 4 ".wl[125].w[18:21]"  0.00011503668540071166 0.43770965943376405 
		0.49896877358464986 0.063206530296185351;
	setAttr -s 4 ".wl[126].w[18:21]"  0.0001522323386015447 0.43636172861114669 
		0.48851534565037485 0.074970693399876845;
	setAttr -s 4 ".wl[127].w[18:21]"  0.00019957146123517817 0.43388677743685061 
		0.47840673529275313 0.087506915809161034;
	setAttr -s 4 ".wl[128].w[18:21]"  0.00073244481692028062 0.4103545694112416 
		0.43050380925488918 0.15840917651694897;
	setAttr -s 4 ".wl[129].w[18:21]"  0.00092477432392796351 0.40498130724856801 
		0.42238362096330062 0.17171029746420347;
	setAttr -s 4 ".wl[130].w[18:21]"  0.0011560429616063377 0.39975445580575819 
		0.41486608283059556 0.18422341840203987;
	setAttr -s 4 ".wl[131].w[18:21]"  0.0038756601890971862 0.36059591637152605 
		0.37747415783808669 0.25805426560129008;
	setAttr -s 3 ".wl[132].w[19:21]"  0.2632640118292936 0.36836799408535331 
		0.36836799408535309;
	setAttr -s 5 ".wl[133].w";
	setAttr ".wl[133].w[12]" 0.025146442684857769;
	setAttr ".wl[133].w[13]" 0.025146442684857769;
	setAttr ".wl[133].w[19]" 0.19775292513375001;
	setAttr ".wl[133].w[20]" 0.37597709474826718;
	setAttr ".wl[133].w[21]" 0.37597709474826718;
	setAttr -s 4 ".wl[134].w[18:21]"  0.0021464737677003407 0.19012168879811073 
		0.40386591871709449 0.40386591871709449;
	setAttr -s 4 ".wl[135].w[18:21]"  0.0030992538639937573 0.31956012563280245 
		0.37105522458974693 0.30628539591345677;
	setAttr -s 4 ".wl[136].w[18:21]"  0.0031913399068385019 0.33184271197875032 
		0.37189308457058645 0.29307286354382467;
	setAttr -s 4 ".wl[137].w[18:21]"  0.0036509155857285575 0.37396939817968206 
		0.38119914601316929 0.24118054022142013;
	setAttr -s 4 ".wl[138].w[18:21]"  0.0043406556232438668 0.40065913265784348 
		0.40065913265784348 0.19434107906106915;
	setAttr -s 4 ".wl[139].w[18:21]"  0.0046888724093428341 0.42396620771868782 
		0.42391492626478727 0.1474299936071822;
	setAttr -s 3 ".wl[140].w[19:21]"  0.42905803101897516 0.31395804463129762 
		0.25698392434972728;
	setAttr -s 3 ".wl[141].w[19:21]"  0.36387065448632455 0.3324362374724118 
		0.3036931080412637;
	setAttr -s 3 ".wl[142].w[19:21]"  0.31213916816005072 0.3570886717154636 
		0.33077216012448568;
	setAttr -s 3 ".wl[143].w[19:21]"  0.26640983030636745 0.36910108786109191 
		0.36448908183254064;
	setAttr -s 3 ".wl[144].w[19:21]"  0.24715687839562697 0.37642156080218658 
		0.37642156080218647;
	setAttr -s 5 ".wl[145].w";
	setAttr ".wl[145].w[12]" 0.040160532619687606;
	setAttr ".wl[145].w[13]" 0.040160532619687606;
	setAttr ".wl[145].w[19]" 0.16944547730780657;
	setAttr ".wl[145].w[20]" 0.37511672872640911;
	setAttr ".wl[145].w[21]" 0.37511672872640911;
	setAttr -s 5 ".wl[146].w";
	setAttr ".wl[146].w[19]" 0.12270659281848285;
	setAttr ".wl[146].w[20]" 0.43779675478005486;
	setAttr ".wl[146].w[21]" 0.43779675478005475;
	setAttr ".wl[146].w[24]" 0.00084994881070379793;
	setAttr ".wl[146].w[25]" 0.00084994881070379793;
	setAttr -s 5 ".wl[147].w";
	setAttr ".wl[147].w[18]" 0.0011717000022217262;
	setAttr ".wl[147].w[19]" 0.30950870870617447;
	setAttr ".wl[147].w[20]" 0.39961571700710641;
	setAttr ".wl[147].w[21]" 0.28852564954796622;
	setAttr ".wl[147].w[24]" 0.0011782247365311998;
	setAttr -s 5 ".wl[148].w";
	setAttr ".wl[148].w[18]" 0.0011971217046284665;
	setAttr ".wl[148].w[19]" 0.32909448408909786;
	setAttr ".wl[148].w[20]" 0.40076264655033028;
	setAttr ".wl[148].w[21]" 0.26778995682880102;
	setAttr ".wl[148].w[24]" 0.0011557908271422864;
	setAttr -s 5 ".wl[149].w";
	setAttr ".wl[149].w[18]" 0.0013237892432774344;
	setAttr ".wl[149].w[19]" 0.39611902463364201;
	setAttr ".wl[149].w[20]" 0.40996045456885893;
	setAttr ".wl[149].w[21]" 0.19150957737562882;
	setAttr ".wl[149].w[24]" 0.0010871541785928429;
	setAttr -s 5 ".wl[150].w";
	setAttr ".wl[150].w[18]" 0.0015370110983976709;
	setAttr ".wl[150].w[19]" 0.43190967464214658;
	setAttr ".wl[150].w[20]" 0.43190967464214658;
	setAttr ".wl[150].w[21]" 0.13357746719173377;
	setAttr ".wl[150].w[23]" 0.0010661724255753757;
	setAttr -s 4 ".wl[151].w[18:21]"  0.0015674478042592599 0.4566266547765947 
		0.45652236445067829 0.085283532968467787;
	setAttr -s 3 ".wl[152].w[19:21]"  0.45426166342042329 0.30615166137879191 
		0.2395866752007848;
	setAttr -s 3 ".wl[153].w[19:21]"  0.3717984677976951 0.33177938308545246 
		0.29642214911685244;
	setAttr -s 3 ".wl[154].w[19:21]"  0.30391714590185065 0.3667348534887967 
		0.32934800060935265;
	setAttr -s 3 ".wl[155].w[19:21]"  0.24277413352992563 0.38202869638310011 
		0.37519717008697429;
	setAttr -s 5 ".wl[156].w";
	setAttr ".wl[156].w[2]" 0.0010188920781224295;
	setAttr ".wl[156].w[3]" 0.0010188920781224295;
	setAttr ".wl[156].w[23]" 0.13441900070140181;
	setAttr ".wl[156].w[24]" 0.43177160757117666;
	setAttr ".wl[156].w[25]" 0.43177160757117666;
	setAttr -s 5 ".wl[157].w";
	setAttr ".wl[157].w[20]" 0.00074801710794647979;
	setAttr ".wl[157].w[21]" 0.00074801710794647979;
	setAttr ".wl[157].w[23]" 0.11717287709321535;
	setAttr ".wl[157].w[24]" 0.44066554434544591;
	setAttr ".wl[157].w[25]" 0.44066554434544591;
	setAttr -s 5 ".wl[158].w";
	setAttr ".wl[158].w[20]" 0.0010614759928930767;
	setAttr ".wl[158].w[22]" 0.0010859627762203584;
	setAttr ".wl[158].w[23]" 0.30847498358780756;
	setAttr ".wl[158].w[24]" 0.40259367866467127;
	setAttr ".wl[158].w[25]" 0.28678389897840778;
	setAttr -s 5 ".wl[159].w";
	setAttr ".wl[159].w[2]" 0.00097181336556297114;
	setAttr ".wl[159].w[22]" 0.00099089891466388005;
	setAttr ".wl[159].w[23]" 0.27431293040835469;
	setAttr ".wl[159].w[24]" 0.41002799807832269;
	setAttr ".wl[159].w[25]" 0.3136963592330958;
	setAttr -s 5 ".wl[160].w";
	setAttr ".wl[160].w[2]" 0.00079460640227748899;
	setAttr ".wl[160].w[22]" 0.0013083103802139307;
	setAttr ".wl[160].w[23]" 0.4698744344115568;
	setAttr ".wl[160].w[24]" 0.44843003440687496;
	setAttr ".wl[160].w[25]" 0.079592614399076861;
	setAttr -s 5 ".wl[161].w";
	setAttr ".wl[161].w[2]" 0.00074517417842122249;
	setAttr ".wl[161].w[22]" 0.0014342398630285706;
	setAttr ".wl[161].w[23]" 0.45850223407033108;
	setAttr ".wl[161].w[24]" 0.45839221458220086;
	setAttr ".wl[161].w[25]" 0.080926137306018289;
	setAttr -s 5 ".wl[162].w";
	setAttr ".wl[162].w[2]" 0.066619858683443667;
	setAttr ".wl[162].w[3]" 0.066619858683443667;
	setAttr ".wl[162].w[23]" 0.39524824768564709;
	setAttr ".wl[162].w[24]" 0.26486194782997857;
	setAttr ".wl[162].w[25]" 0.206650087117487;
	setAttr -s 5 ".wl[163].w";
	setAttr ".wl[163].w[2]" 0.026464985185798033;
	setAttr ".wl[163].w[3]" 0.026464985185798033;
	setAttr ".wl[163].w[23]" 0.44481614612242026;
	setAttr ".wl[163].w[24]" 0.30018800838425724;
	setAttr ".wl[163].w[25]" 0.20206587512172627;
	setAttr -s 5 ".wl[164].w";
	setAttr ".wl[164].w[2]" 0.01976090200478238;
	setAttr ".wl[164].w[3]" 0.01976090200478238;
	setAttr ".wl[164].w[23]" 0.22787736319449745;
	setAttr ".wl[164].w[24]" 0.36676780242440832;
	setAttr ".wl[164].w[25]" 0.36583303037152959;
	setAttr -s 5 ".wl[165].w";
	setAttr ".wl[165].w[2]" 0.046449978944665037;
	setAttr ".wl[165].w[3]" 0.046449978944665037;
	setAttr ".wl[165].w[23]" 0.22316319955947755;
	setAttr ".wl[165].w[24]" 0.34196842127559623;
	setAttr ".wl[165].w[25]" 0.34196842127559623;
	setAttr -s 5 ".wl[166].w";
	setAttr ".wl[166].w[6]" 0.038937094995237218;
	setAttr ".wl[166].w[7]" 0.038937094995237218;
	setAttr ".wl[166].w[23]" 0.16839319132823705;
	setAttr ".wl[166].w[24]" 0.37686630934064425;
	setAttr ".wl[166].w[25]" 0.37686630934064425;
	setAttr -s 5 ".wl[167].w";
	setAttr ".wl[167].w[2]" 0.016015947621365319;
	setAttr ".wl[167].w[3]" 0.016015947621365319;
	setAttr ".wl[167].w[23]" 0.16976247163276517;
	setAttr ".wl[167].w[24]" 0.39910281656225205;
	setAttr ".wl[167].w[25]" 0.39910281656225205;
	setAttr -s 5 ".wl[168].w";
	setAttr ".wl[168].w[2]" 0.002413086172925231;
	setAttr ".wl[168].w[22]" 0.00280989401210807;
	setAttr ".wl[168].w[23]" 0.2076962234427473;
	setAttr ".wl[168].w[24]" 0.3935403981861097;
	setAttr ".wl[168].w[25]" 0.3935403981861097;
	setAttr -s 5 ".wl[169].w";
	setAttr ".wl[169].w[2]" 0.014089824392746702;
	setAttr ".wl[169].w[3]" 0.014089824392746702;
	setAttr ".wl[169].w[23]" 0.20576817413597681;
	setAttr ".wl[169].w[24]" 0.38302608853926495;
	setAttr ".wl[169].w[25]" 0.38302608853926495;
	setAttr -s 5 ".wl[170].w";
	setAttr ".wl[170].w[2]" 0.015942983950545251;
	setAttr ".wl[170].w[3]" 0.015942983950545251;
	setAttr ".wl[170].w[23]" 0.25406191273658718;
	setAttr ".wl[170].w[24]" 0.35734145354047919;
	setAttr ".wl[170].w[25]" 0.35671066582184302;
	setAttr -s 5 ".wl[171].w";
	setAttr ".wl[171].w[2]" 0.0022075498587299952;
	setAttr ".wl[171].w[22]" 0.0033882652119851405;
	setAttr ".wl[171].w[23]" 0.30104889270787211;
	setAttr ".wl[171].w[24]" 0.37010162796716806;
	setAttr ".wl[171].w[25]" 0.32325366425424479;
	setAttr -s 5 ".wl[172].w";
	setAttr ".wl[172].w[2]" 0.00012676759003482483;
	setAttr ".wl[172].w[22]" 0.00027139079300175952;
	setAttr ".wl[172].w[23]" 0.48726255610239189;
	setAttr ".wl[172].w[24]" 0.48697603646664211;
	setAttr ".wl[172].w[25]" 0.025363249047929391;
	setAttr -s 5 ".wl[173].w";
	setAttr ".wl[173].w[2]" 9.0782665353119022e-005;
	setAttr ".wl[173].w[22]" 0.00019826721232569117;
	setAttr ".wl[173].w[23]" 0.4901589605431369;
	setAttr ".wl[173].w[24]" 0.48981956818179073;
	setAttr ".wl[173].w[25]" 0.019732421397393517;
	setAttr -s 5 ".wl[174].w";
	setAttr ".wl[174].w[2]" 0.040148495868524883;
	setAttr ".wl[174].w[3]" 0.040148495868524883;
	setAttr ".wl[174].w[23]" 0.44518595026800389;
	setAttr ".wl[174].w[24]" 0.27201875081661098;
	setAttr ".wl[174].w[25]" 0.20249830717833545;
	setAttr -s 5 ".wl[175].w";
	setAttr ".wl[175].w[2]" 0.04324967215244948;
	setAttr ".wl[175].w[3]" 0.04324967215244948;
	setAttr ".wl[175].w[23]" 0.43928985836892021;
	setAttr ".wl[175].w[24]" 0.27124349024161343;
	setAttr ".wl[175].w[25]" 0.20296730708456753;
	setAttr -s 5 ".wl[176].w";
	setAttr ".wl[176].w[2]" 0.0056235151349228281;
	setAttr ".wl[176].w[3]" 0.0056235151349228281;
	setAttr ".wl[176].w[23]" 0.1231850838359798;
	setAttr ".wl[176].w[24]" 0.43278394294708733;
	setAttr ".wl[176].w[25]" 0.43278394294708722;
	setAttr -s 5 ".wl[177].w";
	setAttr ".wl[177].w[2]" 0.0068002418455466685;
	setAttr ".wl[177].w[3]" 0.0068002418455466685;
	setAttr ".wl[177].w[23]" 0.17628379706538849;
	setAttr ".wl[177].w[24]" 0.40505785962175911;
	setAttr ".wl[177].w[25]" 0.40505785962175911;
	setAttr -s 5 ".wl[178].w";
	setAttr ".wl[178].w[2]" 0.025153154512578747;
	setAttr ".wl[178].w[3]" 0.025153154512578747;
	setAttr ".wl[178].w[23]" 0.21364977886760614;
	setAttr ".wl[178].w[24]" 0.3680219560536182;
	setAttr ".wl[178].w[25]" 0.36802195605361809;
	setAttr -s 5 ".wl[179].w";
	setAttr ".wl[179].w[6]" 0.020529812640892944;
	setAttr ".wl[179].w[7]" 0.020529812640892944;
	setAttr ".wl[179].w[23]" 0.14768288646293354;
	setAttr ".wl[179].w[24]" 0.40562874412764033;
	setAttr ".wl[179].w[25]" 0.40562874412764033;
	setAttr -s 5 ".wl[180].w";
	setAttr ".wl[180].w[2]" 3.4793266229314009e-005;
	setAttr ".wl[180].w[3]" 3.4793266229314009e-005;
	setAttr ".wl[180].w[23]" 0.022958328321662249;
	setAttr ".wl[180].w[24]" 0.49177541229791577;
	setAttr ".wl[180].w[25]" 0.48519667284796331;
	setAttr -s 5 ".wl[181].w";
	setAttr ".wl[181].w[2]" 2.083347899515018e-005;
	setAttr ".wl[181].w[3]" 2.083347899515018e-005;
	setAttr ".wl[181].w[23]" 0.010950752965660801;
	setAttr ".wl[181].w[24]" 0.4945037900381743;
	setAttr ".wl[181].w[25]" 0.49450379003817452;
	setAttr -s 5 ".wl[182].w";
	setAttr ".wl[182].w[2]" 0.00015944169943824554;
	setAttr ".wl[182].w[22]" 0.00021504389931818936;
	setAttr ".wl[182].w[23]" 0.26788029865358337;
	setAttr ".wl[182].w[24]" 0.50221473836310859;
	setAttr ".wl[182].w[25]" 0.22953047738455176;
	setAttr -s 5 ".wl[183].w";
	setAttr ".wl[183].w[2]" 0.00012493246938169699;
	setAttr ".wl[183].w[22]" 0.00017143510068588143;
	setAttr ".wl[183].w[23]" 0.25835316247853785;
	setAttr ".wl[183].w[24]" 0.52332859948766786;
	setAttr ".wl[183].w[25]" 0.21802187046372656;
	setAttr -s 5 ".wl[184].w";
	setAttr ".wl[184].w[2]" 0.00010027972777030094;
	setAttr ".wl[184].w[22]" 0.00024036674568730392;
	setAttr ".wl[184].w[23]" 0.48846274294725295;
	setAttr ".wl[184].w[24]" 0.48815673358676376;
	setAttr ".wl[184].w[25]" 0.02303987699252576;
	setAttr -s 5 ".wl[185].w";
	setAttr ".wl[185].w[2]" 0.00013331156824953521;
	setAttr ".wl[185].w[22]" 0.00032338553907103866;
	setAttr ".wl[185].w[23]" 0.4853669831537224;
	setAttr ".wl[185].w[24]" 0.48510661716319586;
	setAttr ".wl[185].w[25]" 0.029069702575761271;
	setAttr -s 5 ".wl[186].w";
	setAttr ".wl[186].w[2]" 0.03130086126328778;
	setAttr ".wl[186].w[3]" 0.03130086126328778;
	setAttr ".wl[186].w[23]" 0.44895109285934443;
	setAttr ".wl[186].w[24]" 0.27900350941911228;
	setAttr ".wl[186].w[25]" 0.20944367519496773;
	setAttr -s 5 ".wl[187].w";
	setAttr ".wl[187].w[2]" 0.031601738749208817;
	setAttr ".wl[187].w[3]" 0.031601738749208817;
	setAttr ".wl[187].w[23]" 0.45168581776656813;
	setAttr ".wl[187].w[24]" 0.27772533167998842;
	setAttr ".wl[187].w[25]" 0.20738537305502591;
	setAttr -s 5 ".wl[188].w";
	setAttr ".wl[188].w[2]" 0.004460940601696585;
	setAttr ".wl[188].w[3]" 0.004460940601696585;
	setAttr ".wl[188].w[23]" 0.12181077136680254;
	setAttr ".wl[188].w[24]" 0.43463367371490208;
	setAttr ".wl[188].w[25]" 0.43463367371490208;
	setAttr -s 5 ".wl[189].w";
	setAttr ".wl[189].w[2]" 0.0053196869492873663;
	setAttr ".wl[189].w[3]" 0.0053196869492873663;
	setAttr ".wl[189].w[23]" 0.1752534895726218;
	setAttr ".wl[189].w[24]" 0.40705356826440175;
	setAttr ".wl[189].w[25]" 0.40705356826440175;
	setAttr -s 5 ".wl[190].w";
	setAttr ".wl[190].w[2]" 0.020572026458582075;
	setAttr ".wl[190].w[3]" 0.020572026458582075;
	setAttr ".wl[190].w[23]" 0.21865913427148706;
	setAttr ".wl[190].w[24]" 0.37009840640567454;
	setAttr ".wl[190].w[25]" 0.37009840640567432;
	setAttr -s 5 ".wl[191].w";
	setAttr ".wl[191].w[6]" 0.016945985824538257;
	setAttr ".wl[191].w[7]" 0.016945985824538257;
	setAttr ".wl[191].w[23]" 0.15265176155252411;
	setAttr ".wl[191].w[24]" 0.40672813339919967;
	setAttr ".wl[191].w[25]" 0.40672813339919967;
	setAttr -s 5 ".wl[192].w";
	setAttr ".wl[192].w[2]" 2.4101634902151122e-005;
	setAttr ".wl[192].w[22]" 2.5774795528913792e-005;
	setAttr ".wl[192].w[23]" 0.018786534698985811;
	setAttr ".wl[192].w[24]" 0.49434009319654337;
	setAttr ".wl[192].w[25]" 0.48682349567403971;
	setAttr -s 5 ".wl[193].w";
	setAttr ".wl[193].w[2]" 4.7859161949329425e-005;
	setAttr ".wl[193].w[22]" 4.9560838161032387e-005;
	setAttr ".wl[193].w[23]" 0.023742564078514439;
	setAttr ".wl[193].w[24]" 0.48808000796068762;
	setAttr ".wl[193].w[25]" 0.48808000796068762;
	setAttr -s 5 ".wl[194].w";
	setAttr ".wl[194].w[2]" 0.00013132920679354034;
	setAttr ".wl[194].w[22]" 0.00019678749974844117;
	setAttr ".wl[194].w[23]" 0.26429265073215713;
	setAttr ".wl[194].w[24]" 0.51024535254827175;
	setAttr ".wl[194].w[25]" 0.22513388001302906;
	setAttr -s 5 ".wl[195].w";
	setAttr ".wl[195].w[2]" 0.00016146761409190996;
	setAttr ".wl[195].w[22]" 0.00024503446762107482;
	setAttr ".wl[195].w[23]" 0.27285517909052764;
	setAttr ".wl[195].w[24]" 0.49098187738378252;
	setAttr ".wl[195].w[25]" 0.2357564414439767;
	setAttr -s 5 ".wl[196].w";
	setAttr ".wl[196].w[2]" 0.00061824830309498407;
	setAttr ".wl[196].w[22]" 0.0015756472552084263;
	setAttr ".wl[196].w[23]" 0.45619444623877226;
	setAttr ".wl[196].w[24]" 0.45609057664039981;
	setAttr ".wl[196].w[25]" 0.085521081562524554;
	setAttr -s 5 ".wl[197].w";
	setAttr ".wl[197].w[2]" 0.00076725557421581173;
	setAttr ".wl[197].w[22]" 0.0019668263415844232;
	setAttr ".wl[197].w[23]" 0.45022297043352316;
	setAttr ".wl[197].w[24]" 0.45013252909462098;
	setAttr ".wl[197].w[25]" 0.096910418556055672;
	setAttr -s 5 ".wl[198].w";
	setAttr ".wl[198].w[2]" 0.033728106760384693;
	setAttr ".wl[198].w[3]" 0.033728106760384693;
	setAttr ".wl[198].w[23]" 0.41922157983694047;
	setAttr ".wl[198].w[24]" 0.28692860466496556;
	setAttr ".wl[198].w[25]" 0.22639360197732447;
	setAttr -s 5 ".wl[199].w";
	setAttr ".wl[199].w[2]" 0.033025364046320553;
	setAttr ".wl[199].w[3]" 0.033025364046320553;
	setAttr ".wl[199].w[23]" 0.42414877234257781;
	setAttr ".wl[199].w[24]" 0.28596588899987258;
	setAttr ".wl[199].w[25]" 0.2238346105649085;
	setAttr -s 5 ".wl[200].w";
	setAttr ".wl[200].w[2]" 0.0069765032692181107;
	setAttr ".wl[200].w[3]" 0.0069765032692181107;
	setAttr ".wl[200].w[23]" 0.15867294646430172;
	setAttr ".wl[200].w[24]" 0.41368702349863101;
	setAttr ".wl[200].w[25]" 0.41368702349863101;
	setAttr -s 5 ".wl[201].w";
	setAttr ".wl[201].w[2]" 0.0079599823484556558;
	setAttr ".wl[201].w[3]" 0.0079599823484556558;
	setAttr ".wl[201].w[23]" 0.20756278053923707;
	setAttr ".wl[201].w[24]" 0.38825862738192579;
	setAttr ".wl[201].w[25]" 0.38825862738192579;
	setAttr -s 5 ".wl[202].w";
	setAttr ".wl[202].w[2]" 0.023686211505896546;
	setAttr ".wl[202].w[3]" 0.023686211505896546;
	setAttr ".wl[202].w[23]" 0.23472936591268209;
	setAttr ".wl[202].w[24]" 0.35894910553776249;
	setAttr ".wl[202].w[25]" 0.35894910553776238;
	setAttr -s 5 ".wl[203].w";
	setAttr ".wl[203].w[6]" 0.020009810124578573;
	setAttr ".wl[203].w[7]" 0.020009810124578573;
	setAttr ".wl[203].w[23]" 0.17583230539036002;
	setAttr ".wl[203].w[24]" 0.39207403718024147;
	setAttr ".wl[203].w[25]" 0.39207403718024136;
	setAttr -s 5 ".wl[204].w";
	setAttr ".wl[204].w[2]" 0.0004099120779591422;
	setAttr ".wl[204].w[22]" 0.00047905389103509337;
	setAttr ".wl[204].w[23]" 0.12418997608665175;
	setAttr ".wl[204].w[24]" 0.43817551527893051;
	setAttr ".wl[204].w[25]" 0.43674554266542359;
	setAttr -s 5 ".wl[205].w";
	setAttr ".wl[205].w[2]" 0.00055030230308119438;
	setAttr ".wl[205].w[22]" 0.00062050695787643371;
	setAttr ".wl[205].w[23]" 0.11909452674240141;
	setAttr ".wl[205].w[24]" 0.43986733199832045;
	setAttr ".wl[205].w[25]" 0.43986733199832045;
	setAttr -s 5 ".wl[206].w";
	setAttr ".wl[206].w[2]" 0.00068605222485501388;
	setAttr ".wl[206].w[22]" 0.0011147344863695061;
	setAttr ".wl[206].w[23]" 0.3089593016241885;
	setAttr ".wl[206].w[24]" 0.40173850944966566;
	setAttr ".wl[206].w[25]" 0.28750140221492132;
	setAttr -s 5 ".wl[207].w";
	setAttr ".wl[207].w[2]" 0.00056493608645205844;
	setAttr ".wl[207].w[22]" 0.00091017069958119372;
	setAttr ".wl[207].w[23]" 0.30592024811169705;
	setAttr ".wl[207].w[24]" 0.41008655134456157;
	setAttr ".wl[207].w[25]" 0.28251809375770803;
	setAttr -s 5 ".wl[208].w";
	setAttr ".wl[208].w[2]" 1.437632962384748e-005;
	setAttr ".wl[208].w[22]" 1.4390777758255453e-005;
	setAttr ".wl[208].w[23]" 0.0084910929676304363;
	setAttr ".wl[208].w[24]" 0.4957400699624937;
	setAttr ".wl[208].w[25]" 0.4957400699624937;
	setAttr -s 5 ".wl[209].w";
	setAttr ".wl[209].w[2]" 0.00010620464501972729;
	setAttr ".wl[209].w[22]" 0.00015647623855620803;
	setAttr ".wl[209].w[23]" 0.254182258257865;
	setAttr ".wl[209].w[24]" 0.5324159940640224;
	setAttr ".wl[209].w[25]" 0.21313906679453673;
	setAttr -s 5 ".wl[210].w";
	setAttr ".wl[210].w[2]" 7.3831752565643908e-005;
	setAttr ".wl[210].w[22]" 0.00017406441565819014;
	setAttr ".wl[210].w[23]" 0.49118819100223399;
	setAttr ".wl[210].w[24]" 0.49082436529932499;
	setAttr ".wl[210].w[25]" 0.017739547530217087;
	setAttr -s 5 ".wl[211].w";
	setAttr ".wl[211].w[2]" 0.032354678537336777;
	setAttr ".wl[211].w[3]" 0.032354678537336777;
	setAttr ".wl[211].w[23]" 0.45385092409106853;
	setAttr ".wl[211].w[24]" 0.27621615753516876;
	setAttr ".wl[211].w[25]" 0.20522356129908928;
	setAttr -s 5 ".wl[212].w";
	setAttr ".wl[212].w[2]" 0.02084148599329267;
	setAttr ".wl[212].w[3]" 0.02084148599329267;
	setAttr ".wl[212].w[23]" 0.21490581287519334;
	setAttr ".wl[212].w[24]" 0.37170560756911075;
	setAttr ".wl[212].w[25]" 0.37170560756911064;
	setAttr -s 5 ".wl[213].w";
	setAttr ".wl[213].w[6]" 0.017056372708098049;
	setAttr ".wl[213].w[7]" 0.017056372708098049;
	setAttr ".wl[213].w[23]" 0.147864081141486;
	setAttr ".wl[213].w[24]" 0.40901158672115895;
	setAttr ".wl[213].w[25]" 0.40901158672115895;
	setAttr -s 5 ".wl[214].w";
	setAttr ".wl[214].w[2]" 6.890097157165388e-005;
	setAttr ".wl[214].w[3]" 6.890097157165388e-005;
	setAttr ".wl[214].w[23]" 0.028159412909025024;
	setAttr ".wl[214].w[24]" 0.4858513925739158;
	setAttr ".wl[214].w[25]" 0.4858513925739158;
	setAttr -s 5 ".wl[215].w";
	setAttr ".wl[215].w[2]" 0.0002036954371885454;
	setAttr ".wl[215].w[22]" 0.00027054487505858864;
	setAttr ".wl[215].w[23]" 0.27637885033827081;
	setAttr ".wl[215].w[24]" 0.48287546395211872;
	setAttr ".wl[215].w[25]" 0.24027144539736336;
	setAttr -s 5 ".wl[216].w";
	setAttr ".wl[216].w[2]" 0.046431094216746724;
	setAttr ".wl[216].w[3]" 0.046431094216746724;
	setAttr ".wl[216].w[23]" 0.43305652580864412;
	setAttr ".wl[216].w[24]" 0.27050230116509494;
	setAttr ".wl[216].w[25]" 0.20357898459276752;
	setAttr -s 5 ".wl[217].w";
	setAttr ".wl[217].w[2]" 0.00017525017414526681;
	setAttr ".wl[217].w[22]" 0.00036845044063876602;
	setAttr ".wl[217].w[23]" 0.48379181980516728;
	setAttr ".wl[217].w[24]" 0.48354952020258557;
	setAttr ".wl[217].w[25]" 0.032114959377463087;
	setAttr -s 5 ".wl[218].w";
	setAttr ".wl[218].w[6]" 0.023764679697613252;
	setAttr ".wl[218].w[7]" 0.023764679697613252;
	setAttr ".wl[218].w[23]" 0.1516669026612967;
	setAttr ".wl[218].w[24]" 0.40040186897173846;
	setAttr ".wl[218].w[25]" 0.40040186897173835;
	setAttr -s 5 ".wl[219].w";
	setAttr ".wl[219].w[2]" 0.028994878634506643;
	setAttr ".wl[219].w[3]" 0.028994878634506643;
	setAttr ".wl[219].w[23]" 0.21569827595546073;
	setAttr ".wl[219].w[24]" 0.36315598338776317;
	setAttr ".wl[219].w[25]" 0.36315598338776295;
	setAttr -s 5 ".wl[220].w";
	setAttr ".wl[220].w[2]" 0.00031960330519953357;
	setAttr ".wl[220].w[22]" 0.00035228693078630621;
	setAttr ".wl[220].w[23]" 0.089330025911017533;
	setAttr ".wl[220].w[24]" 0.45499904192649832;
	setAttr ".wl[220].w[25]" 0.45499904192649832;
	setAttr -s 5 ".wl[221].w";
	setAttr ".wl[221].w[2]" 0.00046255980236044645;
	setAttr ".wl[221].w[22]" 0.00073867128068659256;
	setAttr ".wl[221].w[23]" 0.30232678669030122;
	setAttr ".wl[221].w[24]" 0.41964174153466899;
	setAttr ".wl[221].w[25]" 0.27683024069198281;
	setAttr -s 5 ".wl[222].w";
	setAttr ".wl[222].w[2]" 0.00049252401220237262;
	setAttr ".wl[222].w[22]" 0.0012471882271543932;
	setAttr ".wl[222].w[23]" 0.46199402979800758;
	setAttr ".wl[222].w[24]" 0.46187418942072478;
	setAttr ".wl[222].w[25]" 0.074392068541910772;
	setAttr -s 5 ".wl[223].w";
	setAttr ".wl[223].w[2]" 0.032425041511926406;
	setAttr ".wl[223].w[3]" 0.032425041511926406;
	setAttr ".wl[223].w[23]" 0.42894059185319988;
	setAttr ".wl[223].w[24]" 0.28492667129947247;
	setAttr ".wl[223].w[25]" 0.2212826538234749;
	setAttr -s 5 ".wl[224].w";
	setAttr ".wl[224].w[2]" 0.022331566433360889;
	setAttr ".wl[224].w[3]" 0.022331566433360889;
	setAttr ".wl[224].w[23]" 0.22981285608190516;
	setAttr ".wl[224].w[24]" 0.3627620055256866;
	setAttr ".wl[224].w[25]" 0.36276200552568649;
	setAttr -s 5 ".wl[225].w";
	setAttr ".wl[225].w[6]" 0.018725216978833684;
	setAttr ".wl[225].w[7]" 0.018725216978833684;
	setAttr ".wl[225].w[23]" 0.16836537927659589;
	setAttr ".wl[225].w[24]" 0.39709209338286844;
	setAttr ".wl[225].w[25]" 0.39709209338286833;
	setAttr -s 5 ".wl[226].w";
	setAttr ".wl[226].w[2]" 0.0019106947383000354;
	setAttr ".wl[226].w[22]" 0.0022946155234514756;
	setAttr ".wl[226].w[23]" 0.19353620200741764;
	setAttr ".wl[226].w[24]" 0.40112924386541549;
	setAttr ".wl[226].w[25]" 0.40112924386541537;
	setAttr -s 5 ".wl[227].w";
	setAttr ".wl[227].w[2]" 0.0019348042868867577;
	setAttr ".wl[227].w[22]" 0.0032857032865156338;
	setAttr ".wl[227].w[23]" 0.31934003616868234;
	setAttr ".wl[227].w[24]" 0.36894819090099024;
	setAttr ".wl[227].w[25]" 0.30649126535692511;
	setAttr -s 5 ".wl[228].w";
	setAttr ".wl[228].w[2]" 0.0019061534510518129;
	setAttr ".wl[228].w[22]" 0.0049861514222679804;
	setAttr ".wl[228].w[23]" 0.42105915192333837;
	setAttr ".wl[228].w[24]" 0.42101012877867117;
	setAttr ".wl[228].w[25]" 0.15103841442467078;
	setAttr -s 5 ".wl[229].w";
	setAttr ".wl[229].w[2]" 0.038442398097480179;
	setAttr ".wl[229].w[3]" 0.038442398097480179;
	setAttr ".wl[229].w[23]" 0.39456633276023728;
	setAttr ".wl[229].w[24]" 0.29025447557706446;
	setAttr ".wl[229].w[25]" 0.2382943954677379;
	setAttr -s 5 ".wl[230].w";
	setAttr ".wl[230].w[2]" 0.02962150412435224;
	setAttr ".wl[230].w[3]" 0.02962150412435224;
	setAttr ".wl[230].w[23]" 0.24868312441707405;
	setAttr ".wl[230].w[24]" 0.34603693366711075;
	setAttr ".wl[230].w[25]" 0.34603693366711075;
	setAttr -s 5 ".wl[231].w";
	setAttr ".wl[231].w[6]" 0.025558894941114563;
	setAttr ".wl[231].w[7]" 0.025558894941114563;
	setAttr ".wl[231].w[23]" 0.19916537803812301;
	setAttr ".wl[231].w[24]" 0.37485841603982395;
	setAttr ".wl[231].w[25]" 0.37485841603982395;
	setAttr -s 5 ".wl[232].w";
	setAttr ".wl[232].w[2]" 0.00042057832345141004;
	setAttr ".wl[232].w[22]" 0.00090393698728537936;
	setAttr ".wl[232].w[23]" 0.4474232282010891;
	setAttr ".wl[232].w[24]" 0.44742322820108898;
	setAttr ".wl[232].w[25]" 0.10382902828708519;
	setAttr -s 5 ".wl[233].w";
	setAttr ".wl[233].w[2]" 0.00042855019959463767;
	setAttr ".wl[233].w[22]" 0.0008012822141489559;
	setAttr ".wl[233].w[23]" 0.40811537276044119;
	setAttr ".wl[233].w[24]" 0.4271468908608313;
	setAttr ".wl[233].w[25]" 0.16350790396498391;
	setAttr -s 5 ".wl[234].w";
	setAttr ".wl[234].w[2]" 0.00053460246194991172;
	setAttr ".wl[234].w[22]" 0.0010077770420114534;
	setAttr ".wl[234].w[23]" 0.4027448999007785;
	setAttr ".wl[234].w[24]" 0.41921333840083164;
	setAttr ".wl[234].w[25]" 0.17649938219442854;
	setAttr -s 5 ".wl[235].w";
	setAttr ".wl[235].w[2]" 0.00053285918824130373;
	setAttr ".wl[235].w[22]" 0.0011538144442478917;
	setAttr ".wl[235].w[23]" 0.44055409363144321;
	setAttr ".wl[235].w[24]" 0.44055409363144321;
	setAttr ".wl[235].w[25]" 0.11720513910462435;
	setAttr -s 5 ".wl[236].w";
	setAttr ".wl[236].w[2]" 0.00010404645927816396;
	setAttr ".wl[236].w[22]" 0.00021345909860034682;
	setAttr ".wl[236].w[23]" 0.47848044900606723;
	setAttr ".wl[236].w[24]" 0.47848044900606745;
	setAttr ".wl[236].w[25]" 0.042721596429986651;
	setAttr -s 5 ".wl[237].w";
	setAttr ".wl[237].w[2]" 0.00012318662710583933;
	setAttr ".wl[237].w[22]" 0.00021932373012509659;
	setAttr ".wl[237].w[23]" 0.4327201214847774;
	setAttr ".wl[237].w[24]" 0.47481553505718338;
	setAttr ".wl[237].w[25]" 0.092121833100808168;
	setAttr -s 5 ".wl[238].w";
	setAttr ".wl[238].w[2]" 7.5733947419197783e-005;
	setAttr ".wl[238].w[22]" 0.00015346736789888899;
	setAttr ".wl[238].w[23]" 0.48307157915862442;
	setAttr ".wl[238].w[24]" 0.48307157915862442;
	setAttr ".wl[238].w[25]" 0.033627640367433112;
	setAttr -s 5 ".wl[239].w";
	setAttr ".wl[239].w[2]" 9.4258833170022223e-005;
	setAttr ".wl[239].w[22]" 0.00016572437549190107;
	setAttr ".wl[239].w[23]" 0.43566203159036565;
	setAttr ".wl[239].w[24]" 0.48529597464860041;
	setAttr ".wl[239].w[25]" 0.078782010552372064;
	setAttr -s 5 ".wl[240].w";
	setAttr ".wl[240].w[2]" 5.3372798722515349e-005;
	setAttr ".wl[240].w[22]" 0.00010634920459636258;
	setAttr ".wl[240].w[23]" 0.48720187699202105;
	setAttr ".wl[240].w[24]" 0.48720187699202105;
	setAttr ".wl[240].w[25]" 0.025436524012639038;
	setAttr -s 5 ".wl[241].w";
	setAttr ".wl[241].w[2]" 7.0770950937315859e-005;
	setAttr ".wl[241].w[22]" 0.00012233916718004079;
	setAttr ".wl[241].w[23]" 0.43749391037488172;
	setAttr ".wl[241].w[24]" 0.4966320091164424;
	setAttr ".wl[241].w[25]" 0.065680970390558521;
	setAttr -s 5 ".wl[242].w";
	setAttr ".wl[242].w[2]" 6.677418217835211e-005;
	setAttr ".wl[242].w[22]" 0.00012344065067583602;
	setAttr ".wl[242].w[23]" 0.48563651160305787;
	setAttr ".wl[242].w[24]" 0.48563651160305787;
	setAttr ".wl[242].w[25]" 0.028536761961030051;
	setAttr -s 5 ".wl[243].w";
	setAttr ".wl[243].w[2]" 8.6065028611929161e-005;
	setAttr ".wl[243].w[22]" 0.00013825241082509381;
	setAttr ".wl[243].w[23]" 0.43693208694350311;
	setAttr ".wl[243].w[24]" 0.49206189351787027;
	setAttr ".wl[243].w[25]" 0.070781702099189672;
	setAttr -s 5 ".wl[244].w";
	setAttr ".wl[244].w[2]" 9.6917004882033451e-005;
	setAttr ".wl[244].w[22]" 0.00017578489251007351;
	setAttr ".wl[244].w[23]" 0.48128314532441502;
	setAttr ".wl[244].w[24]" 0.48128314532441502;
	setAttr ".wl[244].w[25]" 0.037161007453777893;
	setAttr -s 5 ".wl[245].w";
	setAttr ".wl[245].w[2]" 0.00011781270242556775;
	setAttr ".wl[245].w[22]" 0.00018583152163980491;
	setAttr ".wl[245].w[23]" 0.4345913449349586;
	setAttr ".wl[245].w[24]" 0.48100884179105596;
	setAttr ".wl[245].w[25]" 0.08409616904992015;
	setAttr -s 5 ".wl[246].w";
	setAttr ".wl[246].w[2]" 0.00015993382711686986;
	setAttr ".wl[246].w[22]" 0.00024818584131947665;
	setAttr ".wl[246].w[23]" 0.43106788687557346;
	setAttr ".wl[246].w[24]" 0.47017643397886089;
	setAttr ".wl[246].w[25]" 0.098347559477129351;
	setAttr -s 5 ".wl[247].w";
	setAttr ".wl[247].w[2]" 0.00013816320716378272;
	setAttr ".wl[247].w[22]" 0.00024633303715346835;
	setAttr ".wl[247].w[23]" 0.47619749533657257;
	setAttr ".wl[247].w[24]" 0.47619749533657246;
	setAttr ".wl[247].w[25]" 0.047220513082537753;
	setAttr -s 5 ".wl[248].w";
	setAttr ".wl[248].w[2]" 0.0010007959222543305;
	setAttr ".wl[248].w[22]" 0.0011857267523079256;
	setAttr ".wl[248].w[23]" 0.37810508421578742;
	setAttr ".wl[248].w[24]" 0.41378674291936812;
	setAttr ".wl[248].w[25]" 0.20592165019028219;
	setAttr -s 5 ".wl[249].w";
	setAttr ".wl[249].w[20]" 0.00097344403528531662;
	setAttr ".wl[249].w[22]" 0.0012201369636942322;
	setAttr ".wl[249].w[23]" 0.39807624749751813;
	setAttr ".wl[249].w[24]" 0.41265581288664055;
	setAttr ".wl[249].w[25]" 0.18707435861686184;
	setAttr -s 5 ".wl[250].w";
	setAttr ".wl[250].w[19]" 0.00095056070885571277;
	setAttr ".wl[250].w[22]" 0.0014113093458468396;
	setAttr ".wl[250].w[23]" 0.4344968430421513;
	setAttr ".wl[250].w[24]" 0.4344968430421513;
	setAttr ".wl[250].w[25]" 0.12864444386099486;
	setAttr -s 5 ".wl[251].w";
	setAttr ".wl[251].w[2]" 0.0010540610647261743;
	setAttr ".wl[251].w[22]" 0.0014308263979531696;
	setAttr ".wl[251].w[23]" 0.42843114901007145;
	setAttr ".wl[251].w[24]" 0.42844547295324797;
	setAttr ".wl[251].w[25]" 0.14063849057400127;
	setAttr -s 5 ".wl[252].w";
	setAttr ".wl[252].w[2]" 0.009595677855061038;
	setAttr ".wl[252].w[3]" 0.009595677855061038;
	setAttr ".wl[252].w[23]" 0.29987122851376258;
	setAttr ".wl[252].w[24]" 0.36681580119845131;
	setAttr ".wl[252].w[25]" 0.31412161457766397;
	setAttr -s 5 ".wl[253].w";
	setAttr ".wl[253].w[2]" 0.027615512548041579;
	setAttr ".wl[253].w[3]" 0.027615512548041579;
	setAttr ".wl[253].w[23]" 0.354284482179751;
	setAttr ".wl[253].w[24]" 0.32445401954286535;
	setAttr ".wl[253].w[25]" 0.26603047318130052;
	setAttr -s 5 ".wl[254].w";
	setAttr ".wl[254].w[2]" 0.06499548062048062;
	setAttr ".wl[254].w[3]" 0.06499548062048062;
	setAttr ".wl[254].w[23]" 0.3239705965963528;
	setAttr ".wl[254].w[24]" 0.28860364104875247;
	setAttr ".wl[254].w[25]" 0.25743480111393352;
	setAttr -s 5 ".wl[255].w";
	setAttr ".wl[255].w[2]" 0.014707261762374762;
	setAttr ".wl[255].w[3]" 0.014707261762374762;
	setAttr ".wl[255].w[23]" 0.2943339600813813;
	setAttr ".wl[255].w[24]" 0.35671387101930124;
	setAttr ".wl[255].w[25]" 0.31953764537456808;
	setAttr -s 5 ".wl[256].w";
	setAttr ".wl[256].w[2]" 0.0063972664083511615;
	setAttr ".wl[256].w[3]" 0.0063972664083511615;
	setAttr ".wl[256].w[23]" 0.28616012500783872;
	setAttr ".wl[256].w[24]" 0.37889414126914417;
	setAttr ".wl[256].w[25]" 0.32215120090631488;
	setAttr -s 5 ".wl[257].w";
	setAttr ".wl[257].w[2]" 0.0070938751135782678;
	setAttr ".wl[257].w[3]" 0.0070938751135782678;
	setAttr ".wl[257].w[23]" 0.28745054339502402;
	setAttr ".wl[257].w[24]" 0.37626062246265923;
	setAttr ".wl[257].w[25]" 0.32210108391516029;
	setAttr -s 5 ".wl[258].w";
	setAttr ".wl[258].w[2]" 0.041576278901264946;
	setAttr ".wl[258].w[3]" 0.041576278901264946;
	setAttr ".wl[258].w[23]" 0.34957096670183169;
	setAttr ".wl[258].w[24]" 0.30327467743250197;
	setAttr ".wl[258].w[25]" 0.26400179806313639;
	setAttr -s 5 ".wl[259].w";
	setAttr ".wl[259].w[2]" 0.038800537782391724;
	setAttr ".wl[259].w[3]" 0.038800537782391724;
	setAttr ".wl[259].w[23]" 0.35273961099130302;
	setAttr ".wl[259].w[24]" 0.30498593169767646;
	setAttr ".wl[259].w[25]" 0.26467338174623711;
	setAttr -s 5 ".wl[260].w";
	setAttr ".wl[260].w[2]" 0.0057811736145662587;
	setAttr ".wl[260].w[3]" 0.0057811736145662587;
	setAttr ".wl[260].w[23]" 0.2849288909918512;
	setAttr ".wl[260].w[24]" 0.38134507569591036;
	setAttr ".wl[260].w[25]" 0.32216368608310592;
	setAttr -s 5 ".wl[261].w";
	setAttr ".wl[261].w[2]" 0.036100002396357848;
	setAttr ".wl[261].w[3]" 0.036100002396357848;
	setAttr ".wl[261].w[23]" 0.35576301992189641;
	setAttr ".wl[261].w[24]" 0.3066552908244311;
	setAttr ".wl[261].w[25]" 0.26538168446095683;
	setAttr -s 5 ".wl[262].w";
	setAttr ".wl[262].w[2]" 0.0048359663995977123;
	setAttr ".wl[262].w[3]" 0.0048359663995977123;
	setAttr ".wl[262].w[23]" 0.28485946162955472;
	setAttr ".wl[262].w[24]" 0.38284216192972409;
	setAttr ".wl[262].w[25]" 0.32262644364152576;
	setAttr -s 5 ".wl[263].w";
	setAttr ".wl[263].w[2]" 0.029343452432924595;
	setAttr ".wl[263].w[3]" 0.029343452432924595;
	setAttr ".wl[263].w[23]" 0.36131184677864148;
	setAttr ".wl[263].w[24]" 0.31107632262534851;
	setAttr ".wl[263].w[25]" 0.26892492573016075;
	setAttr -s 5 ".wl[264].w";
	setAttr ".wl[264].w[2]" 0.0049651570083477535;
	setAttr ".wl[264].w[3]" 0.0049651570083477535;
	setAttr ".wl[264].w[23]" 0.28635648372879302;
	setAttr ".wl[264].w[24]" 0.38078160842492398;
	setAttr ".wl[264].w[25]" 0.32293159382958753;
	setAttr -s 5 ".wl[265].w";
	setAttr ".wl[265].w[2]" 0.028705013184674655;
	setAttr ".wl[265].w[3]" 0.028705013184674655;
	setAttr ".wl[265].w[23]" 0.36085234470624655;
	setAttr ".wl[265].w[24]" 0.31161470223699239;
	setAttr ".wl[265].w[25]" 0.27012292668741178;
	setAttr -s 5 ".wl[266].w";
	setAttr ".wl[266].w[2]" 0.0051587521788331626;
	setAttr ".wl[266].w[3]" 0.0051587521788331626;
	setAttr ".wl[266].w[23]" 0.28783471504861879;
	setAttr ".wl[266].w[24]" 0.37865845956300503;
	setAttr ".wl[266].w[25]" 0.3231893210307098;
	setAttr -s 5 ".wl[267].w";
	setAttr ".wl[267].w[2]" 0.028461770641910144;
	setAttr ".wl[267].w[3]" 0.028461770641910144;
	setAttr ".wl[267].w[23]" 0.36004658263136236;
	setAttr ".wl[267].w[24]" 0.31189459873118319;
	setAttr ".wl[267].w[25]" 0.27113527735363419;
	setAttr -s 5 ".wl[268].w";
	setAttr ".wl[268].w[2]" 0.0069860778289883626;
	setAttr ".wl[268].w[3]" 0.0069860778289883626;
	setAttr ".wl[268].w[23]" 0.29570025844110354;
	setAttr ".wl[268].w[24]" 0.366359991841951;
	setAttr ".wl[268].w[25]" 0.32396759405896869;
	setAttr -s 5 ".wl[269].w";
	setAttr ".wl[269].w[2]" 0.029614637079951364;
	setAttr ".wl[269].w[3]" 0.029614637079951364;
	setAttr ".wl[269].w[23]" 0.35294995410746827;
	setAttr ".wl[269].w[24]" 0.31181831502411922;
	setAttr ".wl[269].w[25]" 0.27600245670850976;
	setAttr -s 5 ".wl[270].w";
	setAttr ".wl[270].w[2]" 0.0075262581992159138;
	setAttr ".wl[270].w[3]" 0.0075262581992159138;
	setAttr ".wl[270].w[23]" 0.29716642889719891;
	setAttr ".wl[270].w[24]" 0.3638102198971252;
	setAttr ".wl[270].w[25]" 0.32397083480724409;
	setAttr -s 5 ".wl[271].w";
	setAttr ".wl[271].w[2]" 0.030193514233317575;
	setAttr ".wl[271].w[3]" 0.030193514233317575;
	setAttr ".wl[271].w[23]" 0.35112066613100706;
	setAttr ".wl[271].w[24]" 0.31157420017928095;
	setAttr ".wl[271].w[25]" 0.27691810522307697;
	setAttr -s 5 ".wl[272].w";
	setAttr ".wl[272].w[2]" 0.0081284932450209624;
	setAttr ".wl[272].w[3]" 0.0081284932450209624;
	setAttr ".wl[272].w[23]" 0.29854536746925109;
	setAttr ".wl[272].w[24]" 0.36128610117130472;
	setAttr ".wl[272].w[25]" 0.32391154486940238;
	setAttr -s 5 ".wl[273].w";
	setAttr ".wl[273].w[2]" 0.030870153237076273;
	setAttr ".wl[273].w[3]" 0.030870153237076273;
	setAttr ".wl[273].w[23]" 0.34920305791083933;
	setAttr ".wl[273].w[24]" 0.31126132963146469;
	setAttr ".wl[273].w[25]" 0.27779530598354341;
	setAttr -s 5 ".wl[274].w";
	setAttr ".wl[274].w[2]" 0.013130431544408537;
	setAttr ".wl[274].w[3]" 0.013130431544408537;
	setAttr ".wl[274].w[23]" 0.30441350328100553;
	setAttr ".wl[274].w[24]" 0.34716615563706793;
	setAttr ".wl[274].w[25]" 0.32215947799310946;
	setAttr -s 5 ".wl[275].w";
	setAttr ".wl[275].w[2]" 0.03673013542102261;
	setAttr ".wl[275].w[3]" 0.03673013542102261;
	setAttr ".wl[275].w[23]" 0.33666248945875471;
	setAttr ".wl[275].w[24]" 0.30804948582829961;
	setAttr ".wl[275].w[25]" 0.28182775387090053;
	setAttr -s 5 ".wl[276].w";
	setAttr ".wl[276].w[2]" 0.0023043931360557397;
	setAttr ".wl[276].w[22]" 0.0041286143013956654;
	setAttr ".wl[276].w[23]" 0.35882499278408558;
	setAttr ".wl[276].w[24]" 0.37497117490542281;
	setAttr ".wl[276].w[25]" 0.25977082487304026;
	setAttr -s 5 ".wl[277].w";
	setAttr ".wl[277].w[2]" 0.0097701463776193632;
	setAttr ".wl[277].w[22]" 0.01012153876580808;
	setAttr ".wl[277].w[23]" 0.30915031962484657;
	setAttr ".wl[277].w[24]" 0.35224149778643032;
	setAttr ".wl[277].w[25]" 0.31871649744529573;
	setAttr -s 5 ".wl[278].w";
	setAttr ".wl[278].w[2]" 0.019741706882883965;
	setAttr ".wl[278].w[3]" 0.019741706882883965;
	setAttr ".wl[278].w[23]" 0.34888398474043619;
	setAttr ".wl[278].w[24]" 0.32776745321437067;
	setAttr ".wl[278].w[25]" 0.28386514827942533;
	setAttr -s 5 ".wl[279].w";
	setAttr ".wl[279].w[2]" 0.0024510169532599318;
	setAttr ".wl[279].w[22]" 0.0050343187631175573;
	setAttr ".wl[279].w[23]" 0.39025809305678283;
	setAttr ".wl[279].w[24]" 0.39026433872857041;
	setAttr ".wl[279].w[25]" 0.21199223249826935;
	setAttr -s 5 ".wl[280].w";
	setAttr ".wl[280].w[2]" 0.00066651951297739089;
	setAttr ".wl[280].w[22]" 0.0014532779384305028;
	setAttr ".wl[280].w[23]" 0.43376119373362554;
	setAttr ".wl[280].w[24]" 0.43376119373362554;
	setAttr ".wl[280].w[25]" 0.13035781508134101;
	setAttr -s 5 ".wl[281].w";
	setAttr ".wl[281].w[2]" 0.00066050526570582532;
	setAttr ".wl[281].w[22]" 0.0012547968467241284;
	setAttr ".wl[281].w[23]" 0.39755145586526269;
	setAttr ".wl[281].w[24]" 0.41188138015540515;
	setAttr ".wl[281].w[25]" 0.18865186186690228;
	setAttr -s 5 ".wl[282].w";
	setAttr ".wl[282].w[2]" 0.001963884337823592;
	setAttr ".wl[282].w[22]" 0.0038751688743553872;
	setAttr ".wl[282].w[23]" 0.37197363331748917;
	setAttr ".wl[282].w[24]" 0.37890607735212817;
	setAttr ".wl[282].w[25]" 0.24328123611820365;
	setAttr -s 5 ".wl[283].w";
	setAttr ".wl[283].w[2]" 0.002047845742497674;
	setAttr ".wl[283].w[22]" 0.0046081719262793122;
	setAttr ".wl[283].w[23]" 0.39797564468157398;
	setAttr ".wl[283].w[24]" 0.39797564468157398;
	setAttr ".wl[283].w[25]" 0.19739269296807505;
	setAttr -s 5 ".wl[284].w";
	setAttr ".wl[284].w[2]" 0.019752839782738254;
	setAttr ".wl[284].w[22]" 0.022074977177099966;
	setAttr ".wl[284].w[23]" 0.41216954032198472;
	setAttr ".wl[284].w[24]" 0.31276912894030362;
	setAttr ".wl[284].w[25]" 0.2332335137778733;
	setAttr -s 5 ".wl[285].w";
	setAttr ".wl[285].w[2]" 0.0021908173805635241;
	setAttr ".wl[285].w[22]" 0.0052619223628726898;
	setAttr ".wl[285].w[23]" 0.4215949076954561;
	setAttr ".wl[285].w[24]" 0.41290590785768172;
	setAttr ".wl[285].w[25]" 0.15804644470342602;
	setAttr -s 5 ".wl[286].w";
	setAttr ".wl[286].w[2]" 0.011853503116128384;
	setAttr ".wl[286].w[3]" 0.011853503116128384;
	setAttr ".wl[286].w[23]" 0.26149190812307149;
	setAttr ".wl[286].w[24]" 0.35959200429301363;
	setAttr ".wl[286].w[25]" 0.35520908135165818;
	setAttr -s 5 ".wl[287].w";
	setAttr ".wl[287].w[2]" 0.0070892280900519879;
	setAttr ".wl[287].w[3]" 0.0070892280900519879;
	setAttr ".wl[287].w[23]" 0.23812570486959003;
	setAttr ".wl[287].w[24]" 0.37727724422972841;
	setAttr ".wl[287].w[25]" 0.37041859472057764;
	setAttr -s 5 ".wl[288].w";
	setAttr ".wl[288].w[2]" 0.0065181310978121645;
	setAttr ".wl[288].w[3]" 0.0065181310978121645;
	setAttr ".wl[288].w[23]" 0.23356467882112317;
	setAttr ".wl[288].w[24]" 0.38038703380570182;
	setAttr ".wl[288].w[25]" 0.37301202517755072;
	setAttr -s 5 ".wl[289].w";
	setAttr ".wl[289].w[2]" 0.0060060124776698453;
	setAttr ".wl[289].w[3]" 0.0060060124776698453;
	setAttr ".wl[289].w[23]" 0.22890244491468631;
	setAttr ".wl[289].w[24]" 0.38350162503140578;
	setAttr ".wl[289].w[25]" 0.3755839050985682;
	setAttr -s 5 ".wl[290].w";
	setAttr ".wl[290].w[2]" 0.0042626184873941304;
	setAttr ".wl[290].w[3]" 0.0042626184873941304;
	setAttr ".wl[290].w[23]" 0.20616177167445757;
	setAttr ".wl[290].w[24]" 0.39806716879105125;
	setAttr ".wl[290].w[25]" 0.38724582255970286;
	setAttr -s 5 ".wl[291].w";
	setAttr ".wl[291].w[2]" 0.0040706318285315636;
	setAttr ".wl[291].w[3]" 0.0040706318285315636;
	setAttr ".wl[291].w[23]" 0.20223049454145675;
	setAttr ".wl[291].w[24]" 0.40050022493729226;
	setAttr ".wl[291].w[25]" 0.38912801686418796;
	setAttr -s 5 ".wl[292].w";
	setAttr ".wl[292].w[2]" 0.0039319172778089356;
	setAttr ".wl[292].w[3]" 0.0039319172778089356;
	setAttr ".wl[292].w[23]" 0.19837390794185134;
	setAttr ".wl[292].w[24]" 0.40284443644463441;
	setAttr ".wl[292].w[25]" 0.39091782105789652;
	setAttr -s 5 ".wl[293].w";
	setAttr ".wl[293].w[2]" 0.0046804182987321202;
	setAttr ".wl[293].w[3]" 0.0046804182987321202;
	setAttr ".wl[293].w[23]" 0.19959595394024679;
	setAttr ".wl[293].w[24]" 0.4013676849313933;
	setAttr ".wl[293].w[25]" 0.38967552453089566;
	setAttr -s 5 ".wl[294].w";
	setAttr ".wl[294].w[2]" 0.0052057441773897409;
	setAttr ".wl[294].w[3]" 0.0052057441773897409;
	setAttr ".wl[294].w[23]" 0.20335615405822216;
	setAttr ".wl[294].w[24]" 0.39867993216617498;
	setAttr ".wl[294].w[25]" 0.38755242542082347;
	setAttr -s 5 ".wl[295].w";
	setAttr ".wl[295].w[2]" 0.0058053936087835243;
	setAttr ".wl[295].w[3]" 0.0058053936087835243;
	setAttr ".wl[295].w[23]" 0.20740855054585;
	setAttr ".wl[295].w[24]" 0.39575858419375654;
	setAttr ".wl[295].w[25]" 0.38522207804282638;
	setAttr -s 5 ".wl[296].w";
	setAttr ".wl[296].w[2]" 0.0081885100559975048;
	setAttr ".wl[296].w[3]" 0.0081885100559975048;
	setAttr ".wl[296].w[23]" 0.23879693451899622;
	setAttr ".wl[296].w[24]" 0.37907346135490017;
	setAttr ".wl[296].w[25]" 0.36575258401410859;
	setAttr -s 5 ".wl[297].w";
	setAttr ".wl[297].w[2]" 0.01249920357122378;
	setAttr ".wl[297].w[3]" 0.01249920357122378;
	setAttr ".wl[297].w[23]" 0.23490177377616503;
	setAttr ".wl[297].w[24]" 0.37347316274807224;
	setAttr ".wl[297].w[25]" 0.36662665633331515;
	setAttr -s 5 ".wl[298].w";
	setAttr ".wl[298].w[2]" 0.00097651572442158138;
	setAttr ".wl[298].w[22]" 0.0010249600158921007;
	setAttr ".wl[298].w[23]" 0.29655059420251478;
	setAttr ".wl[298].w[24]" 0.41035314595273781;
	setAttr ".wl[298].w[25]" 0.29109478410443373;
	setAttr -s 5 ".wl[299].w";
	setAttr ".wl[299].w[20]" 0.0010401681494125671;
	setAttr ".wl[299].w[22]" 0.0011084818460749797;
	setAttr ".wl[299].w[23]" 0.32873612421321996;
	setAttr ".wl[299].w[24]" 0.40375662842191651;
	setAttr ".wl[299].w[25]" 0.26535859736937606;
	setAttr -s 5 ".wl[300].w";
	setAttr ".wl[300].w[2]" 0.00015181677239397564;
	setAttr ".wl[300].w[22]" 0.00021109032400567392;
	setAttr ".wl[300].w[23]" 0.30414017449299408;
	setAttr ".wl[300].w[24]" 0.50317089041690699;
	setAttr ".wl[300].w[25]" 0.1923260279936993;
	setAttr -s 5 ".wl[301].w";
	setAttr ".wl[301].w[2]" 0.00019563786191841378;
	setAttr ".wl[301].w[22]" 0.00026782430573701817;
	setAttr ".wl[301].w[23]" 0.31048605689945019;
	setAttr ".wl[301].w[24]" 0.48392008912876516;
	setAttr ".wl[301].w[25]" 0.20513039180412923;
	setAttr -s 5 ".wl[302].w";
	setAttr ".wl[302].w[2]" 0.0001177948881801447;
	setAttr ".wl[302].w[22]" 0.00016667043654862267;
	setAttr ".wl[302].w[23]" 0.2964879258395145;
	setAttr ".wl[302].w[24]" 0.52420846662697973;
	setAttr ".wl[302].w[25]" 0.17901914220877693;
	setAttr -s 5 ".wl[303].w";
	setAttr ".wl[303].w[2]" 9.9661473504754591e-005;
	setAttr ".wl[303].w[22]" 0.00015147811048907335;
	setAttr ".wl[303].w[23]" 0.29297655552374752;
	setAttr ".wl[303].w[24]" 0.53327501529397514;
	setAttr ".wl[303].w[25]" 0.17349728959828367;
	setAttr -s 5 ".wl[304].w";
	setAttr ".wl[304].w[2]" 0.00012451056023187829;
	setAttr ".wl[304].w[22]" 0.00019247346008048667;
	setAttr ".wl[304].w[23]" 0.30132258746678686;
	setAttr ".wl[304].w[24]" 0.51116849765467065;
	setAttr ".wl[304].w[25]" 0.1871919308582301;
	setAttr -s 5 ".wl[305].w";
	setAttr ".wl[305].w[2]" 0.0001544023325212249;
	setAttr ".wl[305].w[22]" 0.00024172422463475656;
	setAttr ".wl[305].w[23]" 0.30791596954091532;
	setAttr ".wl[305].w[24]" 0.49198818679298123;
	setAttr ".wl[305].w[25]" 0.19969971710894746;
	setAttr -s 5 ".wl[306].w";
	setAttr ".wl[306].w[2]" 0.0004552123240224318;
	setAttr ".wl[306].w[22]" 0.00074968401611852039;
	setAttr ".wl[306].w[23]" 0.32621672352454079;
	setAttr ".wl[306].w[24]" 0.42085353844552359;
	setAttr ".wl[306].w[25]" 0.25172484168979475;
	setAttr -s 5 ".wl[307].w";
	setAttr ".wl[307].w[2]" 0.00055786384662868146;
	setAttr ".wl[307].w[22]" 0.00092679142545487819;
	setAttr ".wl[307].w[23]" 0.32780778841376684;
	setAttr ".wl[307].w[24]" 0.41127552962529029;
	setAttr ".wl[307].w[25]" 0.25943202668885934;
	setAttr -s 5 ".wl[308].w";
	setAttr ".wl[308].w[2]" 0.0006794112323920689;
	setAttr ".wl[308].w[22]" 0.0011382026233464897;
	setAttr ".wl[308].w[23]" 0.32899347078804209;
	setAttr ".wl[308].w[24]" 0.40289062116188429;
	setAttr ".wl[308].w[25]" 0.26629829419433509;
	setAttr -s 5 ".wl[309].w";
	setAttr ".wl[309].w[2]" 0.0019350338794903114;
	setAttr ".wl[309].w[22]" 0.0033842693301060012;
	setAttr ".wl[309].w[23]" 0.33122261429522687;
	setAttr ".wl[309].w[24]" 0.36976253020253708;
	setAttr ".wl[309].w[25]" 0.29369555229263977;
	setAttr -s 5 ".wl[310].w";
	setAttr ".wl[310].w[2]" 0.0088595683300757566;
	setAttr ".wl[310].w[3]" 0.0088595683300757566;
	setAttr ".wl[310].w[23]" 0.26747792352458266;
	setAttr ".wl[310].w[24]" 0.36140864439707004;
	setAttr ".wl[310].w[25]" 0.35339429541819573;
	setAttr -s 5 ".wl[311].w";
	setAttr ".wl[311].w[2]" 0.0022205007919819612;
	setAttr ".wl[311].w[22]" 0.0035126895207933436;
	setAttr ".wl[311].w[23]" 0.31370411996096548;
	setAttr ".wl[311].w[24]" 0.36992483619877425;
	setAttr ".wl[311].w[25]" 0.31063785352748502;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 8.5485389286235716 28.580356764965313 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[2]" -type "matrix" 6.693613450145993e-016 1.7889765444095194e-015 -1 -0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-015 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-015 -0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[3]" -type "matrix" -3.1806489720151766e-016 7.1110600523609972e-016 1 -0
		 0.23651468939617115 -0.97162791319508346 7.5749132939959201e-016 -0 0.97162791319508335 0.23651468939617104 1.3112890213765272e-016 -0
		 15.75339661024516 -24.192069798095325 14.952100000000019 1;
	setAttr ".pm[4]" -type "matrix" -7.7862017067354629e-016 2.5809568655261894e-008 0.99999999999999978 -0
		 0.97741416543986737 -0.21133279252753712 5.4544089702159369e-009 -0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-008 -0
		 38.494799132532364 23.920859481432768 12.094899382612956 1;
	setAttr ".pm[5]" -type "matrix" -1.3805402767519452e-008 1.3615198156657948e-008 -1 -0
		 0.93887631588660836 -0.34425464915842291 -1.7648660945676008e-008 0 -0.3442546491584228 -0.93887631588660847 -8.0304129894412123e-009 0
		 24.344687153438453 -43.723300868428026 -12.094900931389606 1;
	setAttr ".pm[6]" -type "matrix" 7.7249776432890241e-009 -1.634336896666231e-008 -0.99999999999999978 -0
		 0.017238817250843617 -0.99985140054899724 1.6474109837531978e-008 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-009 0
		 -30.350163356585984 -42.766656220525725 -12.094899535503076 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999999999978 -1.6162482267069893e-008 -1.0632309219184019e-008 -0
		 -1.6162482273500898e-008 -0.99999999999999956 -1.5415230359074293e-014 0 -1.0632309178159527e-008 1.5240265432222506e-014 -0.99999999999999933 -0
		 14.182899160148004 -42.525700229230644 -14.346000150797614 1;
	setAttr ".pm[8]" -type "matrix" 3.6929243270364759e-016 4.7854520619298905e-017 -1 -0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-016 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-016 -0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[9]" -type "matrix" 2.8232439365995012e-016 -2.4058376823856014e-016 1 -0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-016 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-016 -0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[10]" -type "matrix" 3.3969043598553431e-016 1.4899000132653635e-016 1 -0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-016 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-016 -0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[11]" -type "matrix" 2.0731684078555344e-016 2.5897082728895037e-016 -1 -0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-017 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-016 -0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[12]" -type "matrix" 3.1628320018632648e-016 -1.0005548030928621e-016 -1 -0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-017 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-016 -0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[13]" -type "matrix" 1 -8.8267921761093423e-017 -6.84540878947466e-016 -0
		 5.982944840221322e-017 1.0000000000000002 -3.4000580129145434e-016 0 7.1046403083575275e-016 3.4347524824340795e-016 1 -0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
	setAttr ".pm[14]" -type "matrix" 2.9171120138216851e-016 -2.0309007691163655e-016 0.99999999999999978 -0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-016 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-016 -0
		 5.141099383762306 27.116763673658916 6.384860464405965e-015 1;
	setAttr ".pm[15]" -type "matrix" 1.9255976590806024e-016 4.2123171441692991e-016 -0.99999999999999978 -0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-016 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-016 -0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-014 1;
	setAttr ".pm[16]" -type "matrix" -2.2254253739202254e-016 4.0618990599018242e-016 -0.99999999999999978 -0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-016 -0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-016 -0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-014 1;
	setAttr ".pm[17]" -type "matrix" -3.9263286525203279e-016 2.4567224874041425e-016 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-016 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-016 -0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-014 1;
	setAttr ".pm[18]" -type "matrix" -4.3236892918211134e-016 -1.660497809547105e-016 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-016 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-016 -0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[19]" -type "matrix" -4.200894483686455e-016 -1.9503916541689796e-016 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-016 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-016 -0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[20]" -type "matrix" -2.3367847652631728e-016 5.2235190187304229e-016 0.99999999999999978 -0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-016 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-016 -0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[21]" -type "matrix" 0.99999999999999978 7.889801871316359e-016 -4.1328562659829196e-016 -0
		 -7.1325529571241588e-016 0.99999999999999978 7.4940054162198017e-016 0 5.2724101640594644e-016 -9.1593399531575296e-016 0.99999999999999933 -0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[22]" -type "matrix" 4.3236892918211144e-016 1.6604978095471038e-016 -0.99999999999999978 -0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-016 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-016 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[23]" -type "matrix" 4.200894483686456e-016 1.9503916541689791e-016 -1 -0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-016 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-016 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[24]" -type "matrix" 2.3367847652631718e-016 1.6666666780649064e-016 0.99999999999999978 -0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-016 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-016 -0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[25]" -type "matrix" 0.99999999999999978 5.5459731209901231e-016 1.205471819538445e-017 -0
		 6.0517993594966963e-016 -1 -6.3837823915946462e-016 0 7.7400975786026954e-017 7.2164496600635165e-016 -0.99999999999999978 -0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[26]" -type "matrix" -4.0112524636791838e-016 2.3154687949413117e-016 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-016 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-016 -0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-014 1;
	setAttr ".pm[27]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -6.2314369504761027e-015 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[28]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -1.3912601358543541e-014 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[29]" -type "matrix" 5.0813779435729561e-016 1.296078129378641e-015 0.99999999999999978 -0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-016 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-015 -0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[30]" -type "matrix" -1.0103368778348008e-015 -4.0484730914130193e-016 -0.99999999999999978 -0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-016 -0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-015 -0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[31]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-016 -1.5416536010143854e-015 -0
		 5.3246366272141857e-016 0.99999999999999978 -5.6898930012039322e-016 0 1.611115502654318e-015 6.5919492087118591e-016 0.99999999999999978 -0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[32]" -type "matrix" 5.0211778276518463e-016 -8.7774694673919145e-016 0.99999999999999978 -0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-016 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-015 -0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[33]" -type "matrix" 7.131658175178445e-016 -5.6945907845917879e-016 -0.99999999999999978 -0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-016 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-016 -0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[34]" -type "matrix" 1 -5.6270869122286394e-016 7.6910344414326517e-017 -0
		 -2.7046580649882625e-016 -0.99999999999999956 -4.9057979900624073e-015 0 2.3587309789062293e-016 4.7184478546569121e-015 -0.99999999999999978 -0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".gm" -type "matrix" 20.696721134477805 0 0 0 0 6.8157040094478578 0 0 0 0 18.516260425435387 0
		 25.574572953400576 -40.317685236147241 21.350867038302574 1;
	setAttr -s 16 ".ma";
	setAttr -s 35 ".dpf[0:34]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 16 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 16 ".ifcl";
createNode tweak -n "tweak7";
	rename -uid "7B6FAE56-4EB5-62EF-7E94-11A169344B51";
createNode objectSet -n "skinCluster7Set";
	rename -uid "66ACC0B3-4956-C35C-CE11-4B904BC58FEA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster7GroupId";
	rename -uid "301C8FC1-43BD-EEA0-28FA-64A7778ACEF6";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster7GroupParts";
	rename -uid "842DBA0E-4201-095E-6D79-3799A6F1C716";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet7";
	rename -uid "EC2A9604-4B1F-A6AC-D144-2D91CCEC773F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId14";
	rename -uid "9166E4AC-45E2-87EC-065F-0488EB81F608";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "A9D48478-43E9-8CE3-182C-0A889D5FE087";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster8";
	rename -uid "4366D64E-4217-CEBE-1FBB-8A81C2B99F3F";
	setAttr -s 400 ".wl";
	setAttr -s 2 ".wl[0].w";
	setAttr ".wl[0].w[19]" 0.99321373963268522;
	setAttr ".wl[0].w[23]" 0.0067862603673148145;
	setAttr ".wl[1].w[19]"  1;
	setAttr ".wl[2].w[19]"  1;
	setAttr ".wl[3].w[19]"  1;
	setAttr ".wl[4].w[19]"  1;
	setAttr ".wl[5].w[19]"  1;
	setAttr ".wl[6].w[19]"  1;
	setAttr ".wl[7].w[19]"  1;
	setAttr ".wl[8].w[19]"  1;
	setAttr ".wl[9].w[19]"  1;
	setAttr ".wl[10].w[19]"  1;
	setAttr ".wl[11].w[19]"  1;
	setAttr ".wl[12].w[19]"  1;
	setAttr ".wl[13].w[19]"  1;
	setAttr ".wl[14].w[19]"  1;
	setAttr ".wl[15].w[19]"  1;
	setAttr ".wl[16].w[19]"  1;
	setAttr ".wl[17].w[19]"  1;
	setAttr ".wl[18].w[19]"  1;
	setAttr ".wl[19].w[19]"  1;
	setAttr ".wl[20].w[19]"  1;
	setAttr ".wl[21].w[22]"  1;
	setAttr ".wl[22].w[19]"  1;
	setAttr ".wl[23].w[19]"  1;
	setAttr ".wl[24].w[19]"  1;
	setAttr ".wl[25].w[19]"  1;
	setAttr ".wl[26].w[19]"  1;
	setAttr ".wl[27].w[19]"  1;
	setAttr ".wl[28].w[19]"  1;
	setAttr ".wl[29].w[19]"  1;
	setAttr ".wl[30].w[19]"  1;
	setAttr ".wl[31].w[19]"  1;
	setAttr ".wl[32].w[19]"  1;
	setAttr -s 2 ".wl[33].w";
	setAttr ".wl[33].w[19]" 0.99501489106654983;
	setAttr ".wl[33].w[23]" 0.0049851089334501429;
	setAttr ".wl[34].w[19]"  1;
	setAttr ".wl[35].w[19]"  1;
	setAttr ".wl[36].w[19]"  1;
	setAttr ".wl[37].w[19]"  1;
	setAttr ".wl[38].w[19]"  1;
	setAttr ".wl[39].w[19]"  1;
	setAttr ".wl[40].w[19]"  1;
	setAttr ".wl[41].w[19]"  1;
	setAttr ".wl[42].w[19]"  1;
	setAttr ".wl[43].w[19]"  1;
	setAttr ".wl[44].w[19]"  1;
	setAttr ".wl[45].w[19]"  1;
	setAttr ".wl[46].w[19]"  1;
	setAttr ".wl[47].w[19]"  1;
	setAttr ".wl[48].w[19]"  1;
	setAttr ".wl[49].w[19]"  1;
	setAttr -s 2 ".wl[50].w";
	setAttr ".wl[50].w[19]" 0.99512105405029505;
	setAttr ".wl[50].w[23]" 0.0048789459497049345;
	setAttr ".wl[51].w[19]"  1;
	setAttr ".wl[52].w[19]"  1;
	setAttr ".wl[53].w[19]"  1;
	setAttr ".wl[54].w[19]"  1;
	setAttr ".wl[55].w[19]"  1;
	setAttr ".wl[56].w[19]"  1;
	setAttr ".wl[57].w[19]"  1;
	setAttr ".wl[58].w[19]"  1;
	setAttr ".wl[59].w[19]"  1;
	setAttr ".wl[60].w[19]"  1;
	setAttr ".wl[61].w[22]"  1;
	setAttr ".wl[62].w[19]"  1;
	setAttr ".wl[63].w[19]"  1;
	setAttr ".wl[64].w[19]"  1;
	setAttr ".wl[65].w[19]"  1;
	setAttr ".wl[66].w[19]"  1;
	setAttr ".wl[67].w[19]"  1;
	setAttr ".wl[68].w[19]"  1;
	setAttr ".wl[69].w[19]"  1;
	setAttr ".wl[70].w[19]"  1;
	setAttr ".wl[71].w[19]"  1;
	setAttr ".wl[72].w[19]"  1;
	setAttr ".wl[73].w[19]"  1;
	setAttr ".wl[74].w[19]"  1;
	setAttr ".wl[75].w[19]"  1;
	setAttr ".wl[76].w[19]"  1;
	setAttr ".wl[77].w[19]"  1;
	setAttr ".wl[78].w[19]"  1;
	setAttr ".wl[79].w[19]"  1;
	setAttr ".wl[80].w[19]"  1;
	setAttr ".wl[81].w[19]"  1;
	setAttr ".wl[82].w[19]"  1;
	setAttr ".wl[83].w[19]"  1;
	setAttr ".wl[84].w[19]"  1;
	setAttr ".wl[85].w[19]"  1;
	setAttr ".wl[86].w[19]"  1;
	setAttr ".wl[87].w[19]"  1;
	setAttr ".wl[88].w[19]"  1;
	setAttr ".wl[89].w[19]"  1;
	setAttr ".wl[90].w[19]"  1;
	setAttr ".wl[91].w[19]"  1;
	setAttr ".wl[92].w[19]"  1;
	setAttr ".wl[93].w[19]"  1;
	setAttr ".wl[94].w[19]"  1;
	setAttr ".wl[95].w[19]"  1;
	setAttr ".wl[96].w[19]"  1;
	setAttr ".wl[97].w[19]"  1;
	setAttr ".wl[98].w[19]"  1;
	setAttr ".wl[99].w[19]"  1;
	setAttr ".wl[100].w[19]"  1;
	setAttr ".wl[101].w[19]"  1;
	setAttr ".wl[102].w[19]"  1;
	setAttr ".wl[103].w[19]"  1;
	setAttr ".wl[104].w[19]"  1;
	setAttr ".wl[105].w[19]"  1;
	setAttr ".wl[106].w[19]"  1;
	setAttr ".wl[107].w[19]"  1;
	setAttr ".wl[108].w[19]"  1;
	setAttr ".wl[109].w[19]"  1;
	setAttr ".wl[110].w[19]"  1;
	setAttr ".wl[111].w[19]"  1;
	setAttr ".wl[112].w[19]"  1;
	setAttr ".wl[113].w[19]"  1;
	setAttr ".wl[114].w[19]"  1;
	setAttr ".wl[115].w[19]"  1;
	setAttr ".wl[116].w[19]"  1;
	setAttr ".wl[117].w[19]"  1;
	setAttr ".wl[118].w[19]"  1;
	setAttr ".wl[119].w[19]"  1;
	setAttr ".wl[120].w[19]"  1;
	setAttr ".wl[121].w[19]"  1;
	setAttr ".wl[122].w[19]"  1;
	setAttr ".wl[123].w[19]"  1;
	setAttr ".wl[124].w[19]"  1;
	setAttr ".wl[125].w[19]"  1;
	setAttr ".wl[126].w[19]"  1;
	setAttr ".wl[127].w[19]"  1;
	setAttr ".wl[128].w[19]"  1;
	setAttr ".wl[129].w[19]"  1;
	setAttr ".wl[130].w[19]"  1;
	setAttr ".wl[131].w[19]"  1;
	setAttr ".wl[132].w[19]"  1;
	setAttr ".wl[133].w[19]"  1;
	setAttr ".wl[134].w[19]"  1;
	setAttr ".wl[135].w[19]"  1;
	setAttr ".wl[136].w[19]"  1;
	setAttr ".wl[137].w[19]"  1;
	setAttr ".wl[138].w[19]"  1;
	setAttr ".wl[139].w[19]"  1;
	setAttr ".wl[140].w[19]"  1;
	setAttr ".wl[141].w[19]"  1;
	setAttr ".wl[142].w[19]"  1;
	setAttr ".wl[143].w[19]"  1;
	setAttr ".wl[144].w[19]"  1;
	setAttr ".wl[145].w[19]"  1;
	setAttr ".wl[146].w[19]"  1;
	setAttr ".wl[147].w[19]"  1;
	setAttr ".wl[148].w[19]"  1;
	setAttr ".wl[149].w[19]"  1;
	setAttr ".wl[150].w[19]"  1;
	setAttr ".wl[151].w[19]"  1;
	setAttr ".wl[152].w[19]"  1;
	setAttr ".wl[153].w[19]"  1;
	setAttr ".wl[154].w[19]"  1;
	setAttr ".wl[155].w[19]"  1;
	setAttr ".wl[156].w[19]"  1;
	setAttr ".wl[157].w[19]"  1;
	setAttr ".wl[158].w[19]"  1;
	setAttr ".wl[159].w[19]"  1;
	setAttr ".wl[160].w[19]"  1;
	setAttr ".wl[161].w[19]"  1;
	setAttr ".wl[162].w[19]"  1;
	setAttr ".wl[163].w[19]"  1;
	setAttr ".wl[164].w[19]"  1;
	setAttr ".wl[165].w[19]"  1;
	setAttr ".wl[166].w[19]"  1;
	setAttr ".wl[167].w[19]"  1;
	setAttr ".wl[168].w[19]"  1;
	setAttr ".wl[169].w[19]"  1;
	setAttr ".wl[170].w[19]"  1;
	setAttr ".wl[171].w[19]"  1;
	setAttr ".wl[172].w[19]"  1;
	setAttr ".wl[173].w[19]"  1;
	setAttr ".wl[174].w[19]"  1;
	setAttr ".wl[175].w[19]"  1;
	setAttr ".wl[176].w[19]"  1;
	setAttr ".wl[177].w[19]"  1;
	setAttr ".wl[178].w[19]"  1;
	setAttr ".wl[179].w[19]"  1;
	setAttr ".wl[180].w[19]"  1;
	setAttr ".wl[181].w[19]"  1;
	setAttr ".wl[182].w[19]"  1;
	setAttr ".wl[183].w[19]"  1;
	setAttr ".wl[184].w[19]"  1;
	setAttr ".wl[185].w[19]"  1;
	setAttr ".wl[186].w[19]"  1;
	setAttr ".wl[187].w[19]"  1;
	setAttr ".wl[188].w[19]"  1;
	setAttr ".wl[189].w[19]"  1;
	setAttr ".wl[190].w[19]"  1;
	setAttr ".wl[191].w[19]"  1;
	setAttr ".wl[192].w[19]"  1;
	setAttr ".wl[193].w[19]"  1;
	setAttr ".wl[194].w[19]"  1;
	setAttr ".wl[195].w[19]"  1;
	setAttr ".wl[196].w[19]"  1;
	setAttr ".wl[197].w[19]"  1;
	setAttr ".wl[198].w[19]"  1;
	setAttr ".wl[199].w[19]"  1;
	setAttr -s 3 ".wl[200].w";
	setAttr ".wl[200].w[19]" 0.002966153120887138;
	setAttr ".wl[200].w[23]" 0.49851692343955645;
	setAttr ".wl[200].w[24]" 0.49851692343955645;
	setAttr -s 2 ".wl[201].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[202].w[23:24]"  0.52879445081337795 0.47120554918662205;
	setAttr -s 3 ".wl[203].w";
	setAttr ".wl[203].w[19]" 0.0024026844881694484;
	setAttr ".wl[203].w[23]" 0.54957250493752985;
	setAttr ".wl[203].w[24]" 0.44802481057430071;
	setAttr ".wl[204].w[22]"  1;
	setAttr ".wl[205].w[22]"  1;
	setAttr -s 2 ".wl[206].w[22:23]"  0.97265886706161486 0.027341132938385145;
	setAttr ".wl[207].w[22]"  1;
	setAttr -s 2 ".wl[208].w[23:24]"  0.59185696734661752 0.40814303265338248;
	setAttr -s 2 ".wl[209].w[23:24]"  0.57362196254375686 0.4263780374562432;
	setAttr -s 2 ".wl[210].w[23:24]"  0.45726412319850102 0.54273587680149893;
	setAttr -s 2 ".wl[211].w[23:24]"  0.4487899442713621 0.5512100557286379;
	setAttr -s 3 ".wl[212].w";
	setAttr ".wl[212].w[19]" 0.0020846159195527744;
	setAttr ".wl[212].w[23]" 0.4989576920402235;
	setAttr ".wl[212].w[24]" 0.49895769204022383;
	setAttr -s 2 ".wl[213].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[214].w[23:24]"  0.54899968713117553 0.45100031286882442;
	setAttr -s 2 ".wl[215].w[23:24]"  0.59322616857703137 0.40677383142296858;
	setAttr -s 2 ".wl[216].w[23:24]"  0.93643534604125245 0.063564653958747608;
	setAttr -s 2 ".wl[217].w[23:24]"  0.89966149318733324 0.1003385068126668;
	setAttr -s 2 ".wl[218].w[23:24]"  0.91610891581715881 0.083891084182841219;
	setAttr ".wl[219].w[23]"  1;
	setAttr -s 2 ".wl[220].w[23:24]"  0.95426671709525412 0.045733282904745952;
	setAttr ".wl[221].w[23]"  1;
	setAttr -s 2 ".wl[222].w[23:24]"  0.90164089916556145 0.098359100834438565;
	setAttr -s 2 ".wl[223].w[23:24]"  0.8693752344229112 0.1306247655770888;
	setAttr -s 2 ".wl[224].w[23:24]"  0.77732286821650742 0.22267713178349266;
	setAttr -s 2 ".wl[225].w[23:24]"  0.81195521687443606 0.18804478312556391;
	setAttr -s 2 ".wl[226].w[23:24]"  0.9158292000044479 0.084170799995552076;
	setAttr -s 2 ".wl[227].w[23:24]"  0.93400088421384464 0.065999115786155374;
	setAttr ".wl[228].w[23]"  1;
	setAttr ".wl[229].w[23]"  1;
	setAttr ".wl[230].w[23]"  1;
	setAttr -s 2 ".wl[231].w[23:24]"  0.90393075185912131 0.096069248140878763;
	setAttr -s 2 ".wl[232].w[23:24]"  0.87446517464454954 0.12553482535545041;
	setAttr -s 2 ".wl[233].w[23:24]"  0.94482916749798129 0.055170832502018666;
	setAttr ".wl[234].w[22]"  1;
	setAttr ".wl[235].w[22]"  1;
	setAttr ".wl[236].w[23]"  1;
	setAttr ".wl[237].w[23]"  1;
	setAttr ".wl[238].w[22]"  1;
	setAttr ".wl[239].w[22]"  1;
	setAttr ".wl[240].w[22]"  1;
	setAttr ".wl[241].w[22]"  1;
	setAttr -s 2 ".wl[242].w[23:24]"  0.68450794163313033 0.31549205836686967;
	setAttr -s 2 ".wl[243].w[23:24]"  0.61794678883132403 0.38205321116867597;
	setAttr -s 2 ".wl[244].w[23:24]"  0.75561650298848493 0.24438349701151504;
	setAttr -s 2 ".wl[245].w[23:24]"  0.84472721706197373 0.15527278293802624;
	setAttr -s 2 ".wl[246].w[23:24]"  0.7332569361483231 0.26674306385167684;
	setAttr -s 2 ".wl[247].w[23:24]"  0.87562336649894357 0.12437663350105647;
	setAttr -s 2 ".wl[248].w[23:24]"  0.72347969008863133 0.27652030991136861;
	setAttr -s 2 ".wl[249].w[23:24]"  0.67628348195448085 0.32371651804551921;
	setAttr -s 2 ".wl[250].w[23:24]"  0.63679809287847744 0.3632019071215225;
	setAttr -s 2 ".wl[251].w[23:24]"  0.66979026816138465 0.33020973183861529;
	setAttr -s 2 ".wl[252].w[23:24]"  0.64205236026670931 0.35794763973329075;
	setAttr -s 2 ".wl[253].w[23:24]"  0.7736210202378363 0.22637897976216373;
	setAttr -s 2 ".wl[254].w[23:24]"  0.80828800242624366 0.19171199757375632;
	setAttr -s 2 ".wl[255].w[23:24]"  0.88916384058033082 0.11083615941966921;
	setAttr -s 2 ".wl[256].w[23:24]"  0.91880704662675128 0.08119295337324868;
	setAttr -s 2 ".wl[257].w[23:24]"  0.76560406313901352 0.23439593686098648;
	setAttr -s 2 ".wl[258].w[23:24]"  0.70978740776812843 0.29021259223187157;
	setAttr -s 2 ".wl[259].w[23:24]"  0.82798474328248428 0.17201525671751572;
	setAttr ".wl[260].w[22]"  1;
	setAttr ".wl[261].w[22]"  1;
	setAttr ".wl[262].w[22]"  1;
	setAttr ".wl[263].w[23]"  1;
	setAttr -s 2 ".wl[264].w[23:24]"  0.97277273610747728 0.027227263892522745;
	setAttr -s 2 ".wl[265].w[23:24]"  0.96439590713379353 0.035604092866206485;
	setAttr -s 2 ".wl[266].w[23:24]"  0.93697703635329888 0.063022963646701069;
	setAttr -s 2 ".wl[267].w[23:24]"  0.8942566503045245 0.10574334969547554;
	setAttr -s 2 ".wl[268].w[23:24]"  0.76837165385770867 0.23162834614229127;
	setAttr -s 2 ".wl[269].w[23:24]"  0.60423856979488499 0.39576143020511506;
	setAttr -s 2 ".wl[270].w[23:24]"  0.49701097578575815 0.50298902421424185;
	setAttr -s 2 ".wl[271].w[23:24]"  0.49836932740248735 0.50163067259751259;
	setAttr -s 2 ".wl[272].w[23:24]"  0.550443396488422 0.44955660351157811;
	setAttr -s 2 ".wl[273].w[23:24]"  0.65969453566351255 0.3403054643364874;
	setAttr -s 2 ".wl[274].w[23:24]"  0.7844046288605443 0.21559537113945573;
	setAttr -s 2 ".wl[275].w[23:24]"  0.84015782588058541 0.15984217411941462;
	setAttr -s 2 ".wl[276].w[23:24]"  0.92519029747869408 0.074809702521306018;
	setAttr -s 2 ".wl[277].w[23:24]"  0.94512011181194788 0.054879888188052096;
	setAttr -s 2 ".wl[278].w[23:24]"  0.95416293454387791 0.045837065456122074;
	setAttr ".wl[279].w[22]"  1;
	setAttr ".wl[280].w[22]"  1;
	setAttr ".wl[281].w[22]"  1;
	setAttr ".wl[282].w[23]"  1;
	setAttr -s 2 ".wl[283].w[23:24]"  0.98409816868772093 0.015901831312279045;
	setAttr -s 2 ".wl[284].w[23:24]"  0.98209022476473051 0.017909775235269557;
	setAttr -s 2 ".wl[285].w[23:24]"  0.972267233380953 0.027732766619046983;
	setAttr -s 2 ".wl[286].w[23:24]"  0.9523218302087928 0.047678169791207252;
	setAttr -s 2 ".wl[287].w[23:24]"  0.90865495546384756 0.091345044536152456;
	setAttr -s 2 ".wl[288].w[23:24]"  0.8008201740398958 0.1991798259601042;
	setAttr -s 2 ".wl[289].w[23:24]"  0.67789244981239671 0.32210755018760329;
	setAttr -s 2 ".wl[290].w[23:24]"  0.50066990895830155 0.49933009104169851;
	setAttr -s 2 ".wl[291].w[23:24]"  0.50036390440801415 0.49963609559198585;
	setAttr -s 2 ".wl[292].w[23:24]"  0.59034951785836332 0.40965048214163668;
	setAttr -s 2 ".wl[293].w[23:24]"  0.67831238399724691 0.32168761600275309;
	setAttr -s 2 ".wl[294].w[23:24]"  0.79246604917995356 0.20753395082004644;
	setAttr -s 2 ".wl[295].w[23:24]"  0.85005340462953316 0.1499465953704669;
	setAttr -s 2 ".wl[296].w[23:24]"  0.93216740785445762 0.067832592145542395;
	setAttr -s 2 ".wl[297].w[23:24]"  0.9554571070471386 0.044542892952861367;
	setAttr -s 2 ".wl[298].w[23:24]"  0.96274393683681625 0.037256063163183764;
	setAttr ".wl[299].w[22]"  1;
	setAttr ".wl[300].w[22]"  1;
	setAttr ".wl[301].w[22]"  1;
	setAttr ".wl[302].w[23]"  1;
	setAttr -s 2 ".wl[303].w[23:24]"  0.98635866089078295 0.013641339109217073;
	setAttr -s 2 ".wl[304].w[23:24]"  0.98477158336131532 0.015228416638684692;
	setAttr -s 2 ".wl[305].w[23:24]"  0.9737327983413816 0.026267201658618452;
	setAttr -s 2 ".wl[306].w[23:24]"  0.95579502156363283 0.044204978436367164;
	setAttr -s 2 ".wl[307].w[23:24]"  0.91073579953101447 0.089264200468985574;
	setAttr -s 2 ".wl[308].w[23:24]"  0.80832512754993657 0.19167487245006351;
	setAttr -s 2 ".wl[309].w[23:24]"  0.64893811709947991 0.35106188290052015;
	setAttr -s 2 ".wl[310].w[23:24]"  0.48720164671383737 0.51279835328616263;
	setAttr -s 2 ".wl[311].w[23:24]"  0.49289219534765166 0.50710780465234828;
	setAttr -s 2 ".wl[312].w[23:24]"  0.57436384685417963 0.42563615314582037;
	setAttr -s 2 ".wl[313].w[23:24]"  0.68442844525223068 0.31557155474776927;
	setAttr -s 2 ".wl[314].w[23:24]"  0.79332152563483993 0.20667847436516007;
	setAttr -s 2 ".wl[315].w[23:24]"  0.85169169708572712 0.14830830291427285;
	setAttr -s 2 ".wl[316].w[23:24]"  0.93298330121956174 0.067016698780438339;
	setAttr -s 2 ".wl[317].w[23:24]"  0.95853426695609056 0.041465733043909388;
	setAttr -s 2 ".wl[318].w[23:24]"  0.96524063391017778 0.034759366089822261;
	setAttr -s 2 ".wl[319].w[23:24]"  0.9756475459190026 0.02435245408099743;
	setAttr ".wl[320].w[22]"  1;
	setAttr ".wl[321].w[22]"  1;
	setAttr ".wl[322].w[22]"  1;
	setAttr ".wl[323].w[22]"  1;
	setAttr ".wl[324].w[23]"  1;
	setAttr ".wl[325].w[23]"  1;
	setAttr ".wl[326].w[23]"  1;
	setAttr -s 2 ".wl[327].w[23:24]"  0.98782840383602166 0.012171596163978326;
	setAttr -s 2 ".wl[328].w[23:24]"  0.98119035082530481 0.01880964917469518;
	setAttr -s 2 ".wl[329].w[23:24]"  0.98664983207540424 0.013350167924595714;
	setAttr -s 2 ".wl[330].w[23:24]"  0.95095315576088812 0.049046844239111827;
	setAttr -s 2 ".wl[331].w[23:24]"  0.96885373343933723 0.031146266560662821;
	setAttr -s 2 ".wl[332].w[23:24]"  0.92573775303396799 0.074262246966031981;
	setAttr -s 2 ".wl[333].w[23:24]"  0.95061324654517532 0.04938675345482469;
	setAttr -s 2 ".wl[334].w[23:24]"  0.86648672668272164 0.13351327331727839;
	setAttr -s 2 ".wl[335].w[23:24]"  0.8982806092311667 0.10171939076883332;
	setAttr -s 2 ".wl[336].w[23:24]"  0.77796569390610726 0.22203430609389274;
	setAttr -s 2 ".wl[337].w[23:24]"  0.80074959569366644 0.19925040430633359;
	setAttr -s 2 ".wl[338].w[23:24]"  0.69886078631407988 0.30113921368592012;
	setAttr -s 2 ".wl[339].w[23:24]"  0.65955941205566571 0.34044058794433429;
	setAttr -s 2 ".wl[340].w[23:24]"  0.5026227577620932 0.4973772422379068;
	setAttr -s 2 ".wl[341].w[23:24]"  0.47294269539816852 0.52705730460183153;
	setAttr -s 2 ".wl[342].w[23:24]"  0.50174719610115082 0.49825280389884918;
	setAttr -s 2 ".wl[343].w[23:24]"  0.48340434767690371 0.51659565232309634;
	setAttr -s 2 ".wl[344].w[23:24]"  0.5893735086577726 0.4106264913422274;
	setAttr -s 2 ".wl[345].w[23:24]"  0.6251297855500233 0.3748702144499767;
	setAttr -s 2 ".wl[346].w[23:24]"  0.68986124270649529 0.31013875729350465;
	setAttr -s 2 ".wl[347].w[23:24]"  0.68354650445364107 0.31645349554635893;
	setAttr -s 2 ".wl[348].w[23:24]"  0.78435280797401097 0.21564719202598906;
	setAttr -s 2 ".wl[349].w[23:24]"  0.76429753542604695 0.235702464573953;
	setAttr -s 2 ".wl[350].w[23:24]"  0.84367363834311293 0.15632636165688704;
	setAttr -s 2 ".wl[351].w[23:24]"  0.82156604556725954 0.17843395443274052;
	setAttr -s 2 ".wl[352].w[23:24]"  0.92494428874688783 0.075055711253112264;
	setAttr -s 2 ".wl[353].w[23:24]"  0.90399408649652147 0.096005913503478507;
	setAttr -s 2 ".wl[354].w[23:24]"  0.96007766071328637 0.039922339286713654;
	setAttr -s 2 ".wl[355].w[23:24]"  0.95218389667100745 0.047816103328992596;
	setAttr -s 2 ".wl[356].w[23:24]"  0.96604251006871689 0.033957489931283114;
	setAttr -s 2 ".wl[357].w[23:24]"  0.95830621497595914 0.04169378502404085;
	setAttr -s 2 ".wl[358].w[23:24]"  0.98166540606690766 0.018334593933092398;
	setAttr -s 2 ".wl[359].w[23:24]"  0.97565731635712738 0.024342683642872617;
	setAttr ".wl[360].w[22]"  1;
	setAttr ".wl[361].w[22]"  1;
	setAttr ".wl[362].w[22]"  1;
	setAttr -s 2 ".wl[363].w[23:24]"  0.9635421242413349 0.036457875758665055;
	setAttr -s 2 ".wl[364].w[23:24]"  0.96117461376596192 0.038825386234038112;
	setAttr -s 2 ".wl[365].w[23:24]"  0.90614084680653162 0.093859153193468381;
	setAttr -s 2 ".wl[366].w[23:24]"  0.86804781593552405 0.13195218406447598;
	setAttr -s 2 ".wl[367].w[23:24]"  0.8086980104816105 0.19130198951838953;
	setAttr -s 2 ".wl[368].w[23:24]"  0.73531498334663592 0.26468501665336408;
	setAttr -s 2 ".wl[369].w[23:24]"  0.62522428531940955 0.37477571468059045;
	setAttr -s 2 ".wl[370].w[23:24]"  0.44919905647163683 0.55080094352836317;
	setAttr -s 2 ".wl[371].w[23:24]"  0.46381893656244344 0.53618106343755656;
	setAttr -s 2 ".wl[372].w[23:24]"  0.58299210668001633 0.41700789331998378;
	setAttr -s 2 ".wl[373].w[23:24]"  0.66665714532944953 0.33334285467055047;
	setAttr -s 2 ".wl[374].w[23:24]"  0.72930388461822515 0.27069611538177485;
	setAttr -s 2 ".wl[375].w[23:24]"  0.77905574356791618 0.22094425643208385;
	setAttr -s 2 ".wl[376].w[23:24]"  0.85977669108493193 0.1402233089150681;
	setAttr -s 2 ".wl[377].w[23:24]"  0.9284390527679578 0.071560947232042205;
	setAttr -s 2 ".wl[378].w[23:24]"  0.93496698153370161 0.065033018466298442;
	setAttr -s 2 ".wl[379].w[23:24]"  0.9768695377146861 0.02313046228531394;
	setAttr ".wl[380].w[22]"  1;
	setAttr ".wl[381].w[22]"  1;
	setAttr ".wl[382].w[23]"  1;
	setAttr -s 2 ".wl[383].w[23:24]"  0.94379889603117573 0.056201103968824377;
	setAttr -s 2 ".wl[384].w[23:24]"  0.94109395598640855 0.058906044013591424;
	setAttr -s 2 ".wl[385].w[23:24]"  0.87015546317417924 0.12984453682582073;
	setAttr -s 2 ".wl[386].w[23:24]"  0.82639690311456115 0.1736030968854389;
	setAttr -s 2 ".wl[387].w[23:24]"  0.77250171464299855 0.22749828535700156;
	setAttr -s 2 ".wl[388].w[23:24]"  0.70243037581499368 0.29756962418500627;
	setAttr -s 2 ".wl[389].w[23:24]"  0.59009616759865613 0.40990383240134393;
	setAttr -s 2 ".wl[390].w[23:24]"  0.43393745457962879 0.56606254542037115;
	setAttr -s 2 ".wl[391].w[23:24]"  0.44725559079122323 0.55274440920877688;
	setAttr -s 2 ".wl[392].w[23:24]"  0.56834436788500176 0.43165563211499819;
	setAttr -s 2 ".wl[393].w[23:24]"  0.6516414993274342 0.3483585006725658;
	setAttr -s 2 ".wl[394].w[23:24]"  0.7072225199445058 0.29277748005549414;
	setAttr -s 2 ".wl[395].w[23:24]"  0.7506883284573167 0.24931167154268324;
	setAttr -s 2 ".wl[396].w[23:24]"  0.82743197215543052 0.17256802784456948;
	setAttr -s 2 ".wl[397].w[23:24]"  0.9074333191299635 0.092566680870036513;
	setAttr -s 2 ".wl[398].w[23:24]"  0.9137916174024282 0.086208382597571756;
	setAttr -s 2 ".wl[399].w[23:24]"  0.95379887453754197 0.046201125462457984;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 8.5485389286235716 28.580356764965313 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[2]" -type "matrix" 6.693613450145993e-016 1.7889765444095194e-015 -1 -0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-015 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-015 -0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[3]" -type "matrix" -3.1806489720151766e-016 7.1110600523609972e-016 1 -0
		 0.23651468939617115 -0.97162791319508346 7.5749132939959201e-016 -0 0.97162791319508335 0.23651468939617104 1.3112890213765272e-016 -0
		 15.75339661024516 -24.192069798095325 14.952100000000019 1;
	setAttr ".pm[4]" -type "matrix" -7.7862017067354629e-016 2.5809568655261894e-008 0.99999999999999978 -0
		 0.97741416543986737 -0.21133279252753712 5.4544089702159369e-009 -0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-008 -0
		 38.494799132532364 23.920859481432768 12.094899382612956 1;
	setAttr ".pm[5]" -type "matrix" -1.3805402767519452e-008 1.3615198156657948e-008 -1 -0
		 0.93887631588660836 -0.34425464915842291 -1.7648660945676008e-008 0 -0.3442546491584228 -0.93887631588660847 -8.0304129894412123e-009 0
		 24.344687153438453 -43.723300868428026 -12.094900931389606 1;
	setAttr ".pm[6]" -type "matrix" 7.7249776432890241e-009 -1.634336896666231e-008 -0.99999999999999978 -0
		 0.017238817250843617 -0.99985140054899724 1.6474109837531978e-008 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-009 0
		 -30.350163356585984 -42.766656220525725 -12.094899535503076 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999999999978 -1.6162482267069893e-008 -1.0632309219184019e-008 -0
		 -1.6162482273500898e-008 -0.99999999999999956 -1.5415230359074293e-014 0 -1.0632309178159527e-008 1.5240265432222506e-014 -0.99999999999999933 -0
		 14.182899160148004 -42.525700229230644 -14.346000150797614 1;
	setAttr ".pm[8]" -type "matrix" 3.6929243270364759e-016 4.7854520619298905e-017 -1 -0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-016 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-016 -0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[9]" -type "matrix" 2.8232439365995012e-016 -2.4058376823856014e-016 1 -0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-016 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-016 -0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[10]" -type "matrix" 3.3969043598553431e-016 1.4899000132653635e-016 1 -0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-016 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-016 -0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[11]" -type "matrix" 2.0731684078555344e-016 2.5897082728895037e-016 -1 -0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-017 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-016 -0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[12]" -type "matrix" 3.1628320018632648e-016 -1.0005548030928621e-016 -1 -0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-017 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-016 -0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[13]" -type "matrix" 1 -8.8267921761093423e-017 -6.84540878947466e-016 -0
		 5.982944840221322e-017 1.0000000000000002 -3.4000580129145434e-016 0 7.1046403083575275e-016 3.4347524824340795e-016 1 -0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
	setAttr ".pm[14]" -type "matrix" 2.9171120138216851e-016 -2.0309007691163655e-016 0.99999999999999978 -0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-016 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-016 -0
		 5.141099383762306 27.116763673658916 6.384860464405965e-015 1;
	setAttr ".pm[15]" -type "matrix" 1.9255976590806024e-016 4.2123171441692991e-016 -0.99999999999999978 -0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-016 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-016 -0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-014 1;
	setAttr ".pm[16]" -type "matrix" -2.2254253739202254e-016 4.0618990599018242e-016 -0.99999999999999978 -0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-016 -0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-016 -0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-014 1;
	setAttr ".pm[17]" -type "matrix" -3.9263286525203279e-016 2.4567224874041425e-016 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-016 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-016 -0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-014 1;
	setAttr ".pm[18]" -type "matrix" -4.3236892918211134e-016 -1.660497809547105e-016 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-016 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-016 -0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[19]" -type "matrix" -4.200894483686455e-016 -1.9503916541689796e-016 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-016 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-016 -0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[20]" -type "matrix" -2.3367847652631728e-016 5.2235190187304229e-016 0.99999999999999978 -0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-016 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-016 -0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[21]" -type "matrix" 0.99999999999999978 7.889801871316359e-016 -4.1328562659829196e-016 -0
		 -7.1325529571241588e-016 0.99999999999999978 7.4940054162198017e-016 0 5.2724101640594644e-016 -9.1593399531575296e-016 0.99999999999999933 -0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[22]" -type "matrix" 4.3236892918211144e-016 1.6604978095471038e-016 -0.99999999999999978 -0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-016 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-016 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[23]" -type "matrix" 4.200894483686456e-016 1.9503916541689791e-016 -1 -0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-016 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-016 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[24]" -type "matrix" 2.3367847652631718e-016 1.6666666780649064e-016 0.99999999999999978 -0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-016 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-016 -0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[25]" -type "matrix" 0.99999999999999978 5.5459731209901231e-016 1.205471819538445e-017 -0
		 6.0517993594966963e-016 -1 -6.3837823915946462e-016 0 7.7400975786026954e-017 7.2164496600635165e-016 -0.99999999999999978 -0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[26]" -type "matrix" -4.0112524636791838e-016 2.3154687949413117e-016 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-016 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-016 -0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-014 1;
	setAttr ".pm[27]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -6.2314369504761027e-015 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[28]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -1.3912601358543541e-014 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[29]" -type "matrix" 5.0813779435729561e-016 1.296078129378641e-015 0.99999999999999978 -0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-016 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-015 -0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[30]" -type "matrix" -1.0103368778348008e-015 -4.0484730914130193e-016 -0.99999999999999978 -0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-016 -0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-015 -0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[31]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-016 -1.5416536010143854e-015 -0
		 5.3246366272141857e-016 0.99999999999999978 -5.6898930012039322e-016 0 1.611115502654318e-015 6.5919492087118591e-016 0.99999999999999978 -0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[32]" -type "matrix" 5.0211778276518463e-016 -8.7774694673919145e-016 0.99999999999999978 -0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-016 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-015 -0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[33]" -type "matrix" 7.131658175178445e-016 -5.6945907845917879e-016 -0.99999999999999978 -0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-016 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-016 -0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[34]" -type "matrix" 1 -5.6270869122286394e-016 7.6910344414326517e-017 -0
		 -2.7046580649882625e-016 -0.99999999999999956 -4.9057979900624073e-015 0 2.3587309789062293e-016 4.7184478546569121e-015 -0.99999999999999978 -0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".gm" -type "matrix" 20.09468439292721 0 0 0 0 15.404610036212164 0.35280694852412148 0
		 0 -0.35280694852412148 15.404610036212164 0 25.237931914039027 -23.833867081082438 23.626836586721062 1;
	setAttr -s 19 ".ma";
	setAttr -s 35 ".dpf[0:34]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 19 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 19 ".ifcl";
createNode tweak -n "tweak8";
	rename -uid "4967A421-4659-5968-BF89-418B914EAA5E";
createNode objectSet -n "skinCluster8Set";
	rename -uid "A2AE6823-42E2-FCA5-9237-258DEF4754B4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster8GroupId";
	rename -uid "185BCC13-41FB-399E-2936-6D831E3EB272";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster8GroupParts";
	rename -uid "DDE9C0F5-4090-3DE1-77BA-D5A64A246618";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet8";
	rename -uid "E6E526BA-43E5-BFD6-276A-A699C1C7686A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId16";
	rename -uid "75B15FC1-409A-7B3E-F8DF-4D8051DBD4B5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "61358006-4051-764E-9855-1E95383155F1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster9";
	rename -uid "266BB8D4-448A-B147-C425-C288D55895FB";
	setAttr -s 56 ".wl";
	setAttr -s 5 ".wl[0].w";
	setAttr ".wl[0].w[16]" 0.30134946130741236;
	setAttr ".wl[0].w[17]" 0.30134946130741236;
	setAttr ".wl[0].w[18]" 0.11848964633540082;
	setAttr ".wl[0].w[22]" 0.13768299670735021;
	setAttr ".wl[0].w[26]" 0.14112843434242439;
	setAttr -s 5 ".wl[1].w";
	setAttr ".wl[1].w[16]" 0.30319319341171269;
	setAttr ".wl[1].w[17]" 0.30319319341171269;
	setAttr ".wl[1].w[18]" 0.11870044134451012;
	setAttr ".wl[1].w[22]" 0.13800985372110638;
	setAttr ".wl[1].w[26]" 0.13690331811095818;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[15]" 0.12208306310377326;
	setAttr ".wl[2].w[16]" 0.30383977131600282;
	setAttr ".wl[2].w[17]" 0.3037764047391226;
	setAttr ".wl[2].w[22]" 0.13788764421964139;
	setAttr ".wl[2].w[26]" 0.13241311662146005;
	setAttr -s 5 ".wl[3].w";
	setAttr ".wl[3].w[15]" 0.12818283787098686;
	setAttr ".wl[3].w[16]" 0.30385291850955221;
	setAttr ".wl[3].w[17]" 0.30300952100472728;
	setAttr ".wl[3].w[22]" 0.13728316286665798;
	setAttr ".wl[3].w[26]" 0.12767155974807584;
	setAttr -s 5 ".wl[4].w";
	setAttr ".wl[4].w[16]" 0.31829257973098812;
	setAttr ".wl[4].w[17]" 0.31829257973098812;
	setAttr ".wl[4].w[18]" 0.098199466664407029;
	setAttr ".wl[4].w[22]" 0.12813293859836539;
	setAttr ".wl[4].w[26]" 0.13708243527525132;
	setAttr -s 5 ".wl[5].w";
	setAttr ".wl[5].w[16]" 0.32220714890639607;
	setAttr ".wl[5].w[17]" 0.32220714890639607;
	setAttr ".wl[5].w[18]" 0.098211843949621291;
	setAttr ".wl[5].w[22]" 0.12843424210099041;
	setAttr ".wl[5].w[26]" 0.12893961613659621;
	setAttr -s 5 ".wl[6].w";
	setAttr ".wl[6].w[15]" 0.10167614886108725;
	setAttr ".wl[6].w[16]" 0.32439645887760554;
	setAttr ".wl[6].w[17]" 0.32436299511161909;
	setAttr ".wl[6].w[22]" 0.12843872818730406;
	setAttr ".wl[6].w[26]" 0.12112566896238416;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[15]" 0.11132900332477008;
	setAttr ".wl[7].w[16]" 0.32502501969122893;
	setAttr ".wl[7].w[17]" 0.32303055547364262;
	setAttr ".wl[7].w[22]" 0.12749719751679328;
	setAttr ".wl[7].w[26]" 0.11311822399356515;
	setAttr -s 5 ".wl[8].w";
	setAttr ".wl[8].w[16]" 0.34724682571927035;
	setAttr ".wl[8].w[17]" 0.34966616620341856;
	setAttr ".wl[8].w[18]" 0.057344312009482902;
	setAttr ".wl[8].w[22]" 0.10427628745332394;
	setAttr ".wl[8].w[26]" 0.14146640861450427;
	setAttr -s 5 ".wl[9].w";
	setAttr ".wl[9].w[16]" 0.3653653602996082;
	setAttr ".wl[9].w[17]" 0.36816597212600216;
	setAttr ".wl[9].w[18]" 0.05482698452674236;
	setAttr ".wl[9].w[22]" 0.10200388481937871;
	setAttr ".wl[9].w[26]" 0.10963779822826857;
	setAttr -s 5 ".wl[10].w";
	setAttr ".wl[10].w[15]" 0.059081591034396981;
	setAttr ".wl[10].w[16]" 0.37529266776433434;
	setAttr ".wl[10].w[17]" 0.37804143643199617;
	setAttr ".wl[10].w[22]" 0.10086888744230534;
	setAttr ".wl[10].w[26]" 0.086715417326967151;
	setAttr -s 5 ".wl[11].w";
	setAttr ".wl[11].w[15]" 0.079726087628093273;
	setAttr ".wl[11].w[16]" 0.385834335123177;
	setAttr ".wl[11].w[17]" 0.36684509159509898;
	setAttr ".wl[11].w[22]" 0.098425154166203177;
	setAttr ".wl[11].w[26]" 0.069169331487427529;
	setAttr -s 5 ".wl[12].w";
	setAttr ".wl[12].w[16]" 0.38979976600723792;
	setAttr ".wl[12].w[17]" 0.41832262814270138;
	setAttr ".wl[12].w[18]" 0.022403630125288485;
	setAttr ".wl[12].w[22]" 0.053228901148917304;
	setAttr ".wl[12].w[26]" 0.11624507457585485;
	setAttr -s 5 ".wl[13].w";
	setAttr ".wl[13].w[16]" 0.42311779733488847;
	setAttr ".wl[13].w[17]" 0.44931044762293421;
	setAttr ".wl[13].w[18]" 0.017979882622562973;
	setAttr ".wl[13].w[22]" 0.044870892741843374;
	setAttr ".wl[13].w[26]" 0.064720979677770935;
	setAttr -s 5 ".wl[14].w";
	setAttr ".wl[14].w[16]" 0.43726054402173248;
	setAttr ".wl[14].w[17]" 0.46782215373679925;
	setAttr ".wl[14].w[18]" 0.015661500228895384;
	setAttr ".wl[14].w[22]" 0.040097198436401735;
	setAttr ".wl[14].w[26]" 0.039158603576171153;
	setAttr -s 5 ".wl[15].w";
	setAttr ".wl[15].w[15]" 0.022189854439723981;
	setAttr ".wl[15].w[16]" 0.46443650478229281;
	setAttr ".wl[15].w[17]" 0.44696457377310606;
	setAttr ".wl[15].w[22]" 0.0390961068570925;
	setAttr ".wl[15].w[26]" 0.027312960147784646;
	setAttr -s 5 ".wl[16].w";
	setAttr ".wl[16].w[16]" 0.27847950908337876;
	setAttr ".wl[16].w[17]" 0.47963943738409165;
	setAttr ".wl[16].w[22]" 0.0273252642744044;
	setAttr ".wl[16].w[26]" 0.19304337576092245;
	setAttr ".wl[16].w[27]" 0.021512413497202822;
	setAttr -s 5 ".wl[17].w";
	setAttr ".wl[17].w[16]" 0.33858348966971002;
	setAttr ".wl[17].w[17]" 0.56605177258759909;
	setAttr ".wl[17].w[18]" 0.0066749978251825874;
	setAttr ".wl[17].w[22]" 0.014381600442529315;
	setAttr ".wl[17].w[26]" 0.074308139474979024;
	setAttr -s 5 ".wl[18].w";
	setAttr ".wl[18].w[15]" 0.002349513885820418;
	setAttr ".wl[18].w[16]" 0.51000323296546279;
	setAttr ".wl[18].w[17]" 0.47818292837680804;
	setAttr ".wl[18].w[22]" 0.0048735779324006658;
	setAttr ".wl[18].w[26]" 0.0045907468395082248;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[15]" 0.01568931673710006;
	setAttr ".wl[19].w[16]" 0.65892136208839647;
	setAttr ".wl[19].w[17]" 0.30435658898486428;
	setAttr ".wl[19].w[22]" 0.012145487961240514;
	setAttr ".wl[19].w[26]" 0.0088872442283987278;
	setAttr -s 5 ".wl[20].w";
	setAttr ".wl[20].w[16]" 0.27847953239133383;
	setAttr ".wl[20].w[17]" 0.47963947598486567;
	setAttr ".wl[20].w[18]" 0.027325183914953505;
	setAttr ".wl[20].w[26]" 0.193043392251077;
	setAttr ".wl[20].w[27]" 0.021512415457769971;
	setAttr -s 5 ".wl[21].w";
	setAttr ".wl[21].w[16]" 0.33858350127782894;
	setAttr ".wl[21].w[17]" 0.56605178901743891;
	setAttr ".wl[21].w[18]" 0.014381548047582227;
	setAttr ".wl[21].w[22]" 0.0066750189256179803;
	setAttr ".wl[21].w[26]" 0.074308142731532092;
	setAttr -s 5 ".wl[22].w";
	setAttr ".wl[22].w[15]" 0.0023495141741420298;
	setAttr ".wl[22].w[16]" 0.51000327531092027;
	setAttr ".wl[22].w[17]" 0.47818290374802036;
	setAttr ".wl[22].w[18]" 0.004873559369331335;
	setAttr ".wl[22].w[26]" 0.0045907473975860431;
	setAttr -s 5 ".wl[23].w";
	setAttr ".wl[23].w[15]" 0.015689317730751162;
	setAttr ".wl[23].w[16]" 0.65892138831856018;
	setAttr ".wl[23].w[17]" 0.30435659981419361;
	setAttr ".wl[23].w[18]" 0.012145449335804028;
	setAttr ".wl[23].w[26]" 0.0088872448006909726;
	setAttr -s 5 ".wl[24].w";
	setAttr ".wl[24].w[16]" 0.38979980843772472;
	setAttr ".wl[24].w[17]" 0.41832267367796011;
	setAttr ".wl[24].w[18]" 0.053228736950568865;
	setAttr ".wl[24].w[22]" 0.022403693704387054;
	setAttr ".wl[24].w[26]" 0.11624508722935928;
	setAttr -s 5 ".wl[25].w";
	setAttr ".wl[25].w[16]" 0.42311786735848977;
	setAttr ".wl[25].w[17]" 0.44931045664804009;
	setAttr ".wl[25].w[18]" 0.044870749425772481;
	setAttr ".wl[25].w[22]" 0.017979936178975441;
	setAttr ".wl[25].w[26]" 0.064720990388722283;
	setAttr -s 5 ".wl[26].w";
	setAttr ".wl[26].w[16]" 0.43726061330862426;
	setAttr ".wl[26].w[17]" 0.46782216191764331;
	setAttr ".wl[26].w[18]" 0.040097067869947357;
	setAttr ".wl[26].w[22]" 0.015661547122671791;
	setAttr ".wl[26].w[26]" 0.039158609781113372;
	setAttr -s 5 ".wl[27].w";
	setAttr ".wl[27].w[15]" 0.02218985850594677;
	setAttr ".wl[27].w[16]" 0.46443658988890069;
	setAttr ".wl[27].w[17]" 0.44696460306802077;
	setAttr ".wl[27].w[18]" 0.039095983384331248;
	setAttr ".wl[27].w[26]" 0.027312965152800475;
	setAttr -s 5 ".wl[28].w";
	setAttr ".wl[28].w[16]" 0.34724687116694092;
	setAttr ".wl[28].w[17]" 0.34966619477894706;
	setAttr ".wl[28].w[18]" 0.10427606229690384;
	setAttr ".wl[28].w[22]" 0.057344444627580232;
	setAttr ".wl[28].w[26]" 0.14146642712962781;
	setAttr -s 5 ".wl[29].w";
	setAttr ".wl[29].w[16]" 0.3653654100992621;
	setAttr ".wl[29].w[17]" 0.36816600413145972;
	setAttr ".wl[29].w[18]" 0.10200365860052021;
	setAttr ".wl[29].w[22]" 0.054827113996753281;
	setAttr ".wl[29].w[26]" 0.10963781317200463;
	setAttr -s 5 ".wl[30].w";
	setAttr ".wl[30].w[15]" 0.059081606193070201;
	setAttr ".wl[30].w[16]" 0.37529276405387557;
	setAttr ".wl[30].w[17]" 0.3780415155555934;
	setAttr ".wl[30].w[18]" 0.10086867462175918;
	setAttr ".wl[30].w[26]" 0.0867154395757017;
	setAttr -s 5 ".wl[31].w";
	setAttr ".wl[31].w[15]" 0.079726107111262851;
	setAttr ".wl[31].w[16]" 0.38583442941196672;
	setAttr ".wl[31].w[17]" 0.36684516551505642;
	setAttr ".wl[31].w[18]" 0.098424949570939321;
	setAttr ".wl[31].w[26]" 0.06916934839077471;
	setAttr -s 5 ".wl[32].w";
	setAttr ".wl[32].w[16]" 0.31829259525726533;
	setAttr ".wl[32].w[17]" 0.31829259525726533;
	setAttr ".wl[32].w[18]" 0.12813272707135323;
	setAttr ".wl[32].w[22]" 0.098199640451999359;
	setAttr ".wl[32].w[26]" 0.13708244196211672;
	setAttr -s 5 ".wl[33].w";
	setAttr ".wl[33].w[16]" 0.32220716483853984;
	setAttr ".wl[33].w[17]" 0.32220716483853984;
	setAttr ".wl[33].w[18]" 0.12843402958101344;
	setAttr ".wl[33].w[22]" 0.098212018229647438;
	setAttr ".wl[33].w[26]" 0.12893962251225943;
	setAttr -s 5 ".wl[34].w";
	setAttr ".wl[34].w[15]" 0.1016761711105019;
	setAttr ".wl[34].w[16]" 0.32439652986408041;
	setAttr ".wl[34].w[17]" 0.32436306609077137;
	setAttr ".wl[34].w[18]" 0.12843853746678172;
	setAttr ".wl[34].w[26]" 0.12112569546786467;
	setAttr -s 5 ".wl[35].w";
	setAttr ".wl[35].w[15]" 0.11132902743093687;
	setAttr ".wl[35].w[16]" 0.32502509006918234;
	setAttr ".wl[35].w[17]" 0.3230306254197331;
	setAttr ".wl[35].w[18]" 0.12749700859299473;
	setAttr ".wl[35].w[26]" 0.11311824848715302;
	setAttr -s 5 ".wl[36].w";
	setAttr ".wl[36].w[16]" 0.30134946867667362;
	setAttr ".wl[36].w[17]" 0.30134946867667362;
	setAttr ".wl[36].w[18]" 0.13768279928925481;
	setAttr ".wl[36].w[22]" 0.11848982556379058;
	setAttr ".wl[36].w[26]" 0.14112843779360737;
	setAttr -s 5 ".wl[37].w";
	setAttr ".wl[37].w[16]" 0.30319320087528456;
	setAttr ".wl[37].w[17]" 0.30319320087528456;
	setAttr ".wl[37].w[18]" 0.13800965579313434;
	setAttr ".wl[37].w[22]" 0.11870062097525071;
	setAttr ".wl[37].w[26]" 0.13690332148104586;
	setAttr -s 5 ".wl[38].w";
	setAttr ".wl[38].w[15]" 0.12208308764396313;
	setAttr ".wl[38].w[16]" 0.30383983239151574;
	setAttr ".wl[38].w[17]" 0.30377646580189815;
	setAttr ".wl[38].w[18]" 0.13788747092450615;
	setAttr ".wl[38].w[26]" 0.13241314323811676;
	setAttr -s 5 ".wl[39].w";
	setAttr ".wl[39].w[15]" 0.12818286348163996;
	setAttr ".wl[39].w[16]" 0.30385297921870652;
	setAttr ".wl[39].w[17]" 0.30300958154537272;
	setAttr ".wl[39].w[18]" 0.13728299049770451;
	setAttr ".wl[39].w[26]" 0.12767158525657635;
	setAttr -s 5 ".wl[40].w";
	setAttr ".wl[40].w[16]" 0.2985974299539409;
	setAttr ".wl[40].w[17]" 0.2985974299539409;
	setAttr ".wl[40].w[18]" 0.13225088265712054;
	setAttr ".wl[40].w[22]" 0.12431456269365876;
	setAttr ".wl[40].w[26]" 0.14623969474133888;
	setAttr -s 5 ".wl[41].w";
	setAttr ".wl[41].w[16]" 0.29581462220467369;
	setAttr ".wl[41].w[17]" 0.29581462220467369;
	setAttr ".wl[41].w[18]" 0.13629532826510427;
	setAttr ".wl[41].w[22]" 0.13182275020559497;
	setAttr ".wl[41].w[26]" 0.14025267711995337;
	setAttr -s 5 ".wl[42].w";
	setAttr ".wl[42].w[16]" 0.29727316619499639;
	setAttr ".wl[42].w[17]" 0.29716463698485085;
	setAttr ".wl[42].w[18]" 0.13660974661121264;
	setAttr ".wl[42].w[22]" 0.13211566839500227;
	setAttr ".wl[42].w[26]" 0.13683678181393785;
	setAttr -s 5 ".wl[43].w";
	setAttr ".wl[43].w[15]" 0.13694793191173127;
	setAttr ".wl[43].w[16]" 0.30490613453916665;
	setAttr ".wl[43].w[17]" 0.30225078535566391;
	setAttr ".wl[43].w[18]" 0.13193043385674422;
	setAttr ".wl[43].w[26]" 0.12396471433669393;
	setAttr -s 5 ".wl[44].w";
	setAttr ".wl[44].w[16]" 0.2985974269595601;
	setAttr ".wl[44].w[17]" 0.29859742695955999;
	setAttr ".wl[44].w[18]" 0.12431437868067831;
	setAttr ".wl[44].w[22]" 0.13225107411718101;
	setAttr ".wl[44].w[26]" 0.14623969328302064;
	setAttr -s 5 ".wl[45].w";
	setAttr ".wl[45].w[16]" 0.29581462067288261;
	setAttr ".wl[45].w[17]" 0.2958146206728825;
	setAttr ".wl[45].w[18]" 0.13182256581105051;
	setAttr ".wl[45].w[22]" 0.13629551643664864;
	setAttr ".wl[45].w[26]" 0.1402526764065358;
	setAttr -s 5 ".wl[46].w";
	setAttr ".wl[46].w[16]" 0.29727316465013148;
	setAttr ".wl[46].w[17]" 0.29716463544056643;
	setAttr ".wl[46].w[18]" 0.13211548371377643;
	setAttr ".wl[46].w[22]" 0.13660993507971445;
	setAttr ".wl[46].w[26]" 0.13683678111581116;
	setAttr -s 5 ".wl[47].w";
	setAttr ".wl[47].w[15]" 0.13694790566815288;
	setAttr ".wl[47].w[16]" 0.30490607609016512;
	setAttr ".wl[47].w[17]" 0.30225072741593262;
	setAttr ".wl[47].w[22]" 0.13193060024386227;
	setAttr ".wl[47].w[26]" 0.1239646905818871;
	setAttr -s 5 ".wl[48].w";
	setAttr ".wl[48].w[15]" 0.13066121320547089;
	setAttr ".wl[48].w[16]" 0.32265021518223874;
	setAttr ".wl[48].w[17]" 0.31551451908800038;
	setAttr ".wl[48].w[18]" 0.12172768949527504;
	setAttr ".wl[48].w[26]" 0.109446363029015;
	setAttr -s 5 ".wl[49].w";
	setAttr ".wl[49].w[15]" 0.13066118729555828;
	setAttr ".wl[49].w[16]" 0.32265015111824424;
	setAttr ".wl[49].w[17]" 0.3155144564433191;
	setAttr ".wl[49].w[22]" 0.12172786381272901;
	setAttr ".wl[49].w[26]" 0.10944634133014926;
	setAttr -s 5 ".wl[50].w";
	setAttr ".wl[50].w[15]" 0.073695080945634192;
	setAttr ".wl[50].w[16]" 0.5433100624792726;
	setAttr ".wl[50].w[17]" 0.31462666892505781;
	setAttr ".wl[50].w[18]" 0.039829468624416102;
	setAttr ".wl[50].w[22]" 0.028538719025619368;
	setAttr -s 5 ".wl[51].w";
	setAttr ".wl[51].w[15]" 0.07369507877653797;
	setAttr ".wl[51].w[16]" 0.54331004285191797;
	setAttr ".wl[51].w[17]" 0.31462665835567721;
	setAttr ".wl[51].w[18]" 0.028538644532705305;
	setAttr ".wl[51].w[22]" 0.039829575483161517;
	setAttr -s 5 ".wl[52].w";
	setAttr ".wl[52].w[16]" 0.30890607540491277;
	setAttr ".wl[52].w[17]" 0.30890607540491266;
	setAttr ".wl[52].w[18]" 0.12293555404731293;
	setAttr ".wl[52].w[22]" 0.1107816429793243;
	setAttr ".wl[52].w[26]" 0.14847065216353741;
	setAttr -s 5 ".wl[53].w";
	setAttr ".wl[53].w[16]" 0.30890606965246392;
	setAttr ".wl[53].w[17]" 0.30890606965246392;
	setAttr ".wl[53].w[18]" 0.11078145858164774;
	setAttr ".wl[53].w[22]" 0.1229357526842091;
	setAttr ".wl[53].w[26]" 0.14847064942921526;
	setAttr -s 5 ".wl[54].w";
	setAttr ".wl[54].w[16]" 0.30203398090596445;
	setAttr ".wl[54].w[17]" 0.37803256349733683;
	setAttr ".wl[54].w[18]" 0.057784801239324154;
	setAttr ".wl[54].w[22]" 0.043128045697629236;
	setAttr ".wl[54].w[26]" 0.21902060865974537;
	setAttr -s 5 ".wl[55].w";
	setAttr ".wl[55].w[16]" 0.30203396808097221;
	setAttr ".wl[55].w[17]" 0.37803254718959839;
	setAttr ".wl[55].w[18]" 0.043127936514109219;
	setAttr ".wl[55].w[22]" 0.057784948670483151;
	setAttr ".wl[55].w[26]" 0.21902059954483702;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 8.5485389286235716 28.580356764965313 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[2]" -type "matrix" 6.693613450145993e-016 1.7889765444095194e-015 -1 -0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-015 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-015 -0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[3]" -type "matrix" -3.1806489720151766e-016 7.1110600523609972e-016 1 -0
		 0.23651468939617115 -0.97162791319508346 7.5749132939959201e-016 -0 0.97162791319508335 0.23651468939617104 1.3112890213765272e-016 -0
		 15.75339661024516 -24.192069798095325 14.952100000000019 1;
	setAttr ".pm[4]" -type "matrix" -7.7862017067354629e-016 2.5809568655261894e-008 0.99999999999999978 -0
		 0.97741416543986737 -0.21133279252753712 5.4544089702159369e-009 -0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-008 -0
		 38.494799132532364 23.920859481432768 12.094899382612956 1;
	setAttr ".pm[5]" -type "matrix" -1.3805402767519452e-008 1.3615198156657948e-008 -1 -0
		 0.93887631588660836 -0.34425464915842291 -1.7648660945676008e-008 0 -0.3442546491584228 -0.93887631588660847 -8.0304129894412123e-009 0
		 24.344687153438453 -43.723300868428026 -12.094900931389606 1;
	setAttr ".pm[6]" -type "matrix" 7.7249776432890241e-009 -1.634336896666231e-008 -0.99999999999999978 -0
		 0.017238817250843617 -0.99985140054899724 1.6474109837531978e-008 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-009 0
		 -30.350163356585984 -42.766656220525725 -12.094899535503076 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999999999978 -1.6162482267069893e-008 -1.0632309219184019e-008 -0
		 -1.6162482273500898e-008 -0.99999999999999956 -1.5415230359074293e-014 0 -1.0632309178159527e-008 1.5240265432222506e-014 -0.99999999999999933 -0
		 14.182899160148004 -42.525700229230644 -14.346000150797614 1;
	setAttr ".pm[8]" -type "matrix" 3.6929243270364759e-016 4.7854520619298905e-017 -1 -0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-016 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-016 -0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[9]" -type "matrix" 2.8232439365995012e-016 -2.4058376823856014e-016 1 -0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-016 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-016 -0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[10]" -type "matrix" 3.3969043598553431e-016 1.4899000132653635e-016 1 -0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-016 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-016 -0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[11]" -type "matrix" 2.0731684078555344e-016 2.5897082728895037e-016 -1 -0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-017 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-016 -0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[12]" -type "matrix" 3.1628320018632648e-016 -1.0005548030928621e-016 -1 -0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-017 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-016 -0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[13]" -type "matrix" 1 -8.8267921761093423e-017 -6.84540878947466e-016 -0
		 5.982944840221322e-017 1.0000000000000002 -3.4000580129145434e-016 0 7.1046403083575275e-016 3.4347524824340795e-016 1 -0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
	setAttr ".pm[14]" -type "matrix" 2.9171120138216851e-016 -2.0309007691163655e-016 0.99999999999999978 -0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-016 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-016 -0
		 5.141099383762306 27.116763673658916 6.384860464405965e-015 1;
	setAttr ".pm[15]" -type "matrix" 1.9255976590806024e-016 4.2123171441692991e-016 -0.99999999999999978 -0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-016 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-016 -0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-014 1;
	setAttr ".pm[16]" -type "matrix" -2.2254253739202254e-016 4.0618990599018242e-016 -0.99999999999999978 -0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-016 -0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-016 -0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-014 1;
	setAttr ".pm[17]" -type "matrix" -3.9263286525203279e-016 2.4567224874041425e-016 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-016 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-016 -0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-014 1;
	setAttr ".pm[18]" -type "matrix" -4.3236892918211134e-016 -1.660497809547105e-016 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-016 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-016 -0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[19]" -type "matrix" -4.200894483686455e-016 -1.9503916541689796e-016 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-016 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-016 -0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[20]" -type "matrix" -2.3367847652631728e-016 5.2235190187304229e-016 0.99999999999999978 -0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-016 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-016 -0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[21]" -type "matrix" 0.99999999999999978 7.889801871316359e-016 -4.1328562659829196e-016 -0
		 -7.1325529571241588e-016 0.99999999999999978 7.4940054162198017e-016 0 5.2724101640594644e-016 -9.1593399531575296e-016 0.99999999999999933 -0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[22]" -type "matrix" 4.3236892918211144e-016 1.6604978095471038e-016 -0.99999999999999978 -0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-016 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-016 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[23]" -type "matrix" 4.200894483686456e-016 1.9503916541689791e-016 -1 -0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-016 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-016 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[24]" -type "matrix" 2.3367847652631718e-016 1.6666666780649064e-016 0.99999999999999978 -0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-016 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-016 -0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[25]" -type "matrix" 0.99999999999999978 5.5459731209901231e-016 1.205471819538445e-017 -0
		 6.0517993594966963e-016 -1 -6.3837823915946462e-016 0 7.7400975786026954e-017 7.2164496600635165e-016 -0.99999999999999978 -0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[26]" -type "matrix" -4.0112524636791838e-016 2.3154687949413117e-016 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-016 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-016 -0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-014 1;
	setAttr ".pm[27]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -6.2314369504761027e-015 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[28]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -1.3912601358543541e-014 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[29]" -type "matrix" 5.0813779435729561e-016 1.296078129378641e-015 0.99999999999999978 -0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-016 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-015 -0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[30]" -type "matrix" -1.0103368778348008e-015 -4.0484730914130193e-016 -0.99999999999999978 -0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-016 -0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-015 -0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[31]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-016 -1.5416536010143854e-015 -0
		 5.3246366272141857e-016 0.99999999999999978 -5.6898930012039322e-016 0 1.611115502654318e-015 6.5919492087118591e-016 0.99999999999999978 -0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[32]" -type "matrix" 5.0211778276518463e-016 -8.7774694673919145e-016 0.99999999999999978 -0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-016 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-015 -0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[33]" -type "matrix" 7.131658175178445e-016 -5.6945907845917879e-016 -0.99999999999999978 -0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-016 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-016 -0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[34]" -type "matrix" 1 -5.6270869122286394e-016 7.6910344414326517e-017 -0
		 -2.7046580649882625e-016 -0.99999999999999956 -4.9057979900624073e-015 0 2.3587309789062293e-016 4.7184478546569121e-015 -0.99999999999999978 -0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".gm" -type "matrix" -9.0318488004362736e-014 -2.5016349089018304 -5.9521400268778697 0
		 -1.5828685267905686e-013 -5.9205069538444581 2.4883397916131105 0 -9.4866461210122228 2.6699362628297402e-013 3.2650108145057969e-014 0
		 0 46.572776631207311 -6.5841957046503223 1;
	setAttr -s 7 ".ma";
	setAttr -s 35 ".dpf[0:34]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 7 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 7 ".ifcl";
createNode tweak -n "tweak9";
	rename -uid "132CE66E-4806-D34E-92FD-54B44C460200";
createNode objectSet -n "skinCluster9Set";
	rename -uid "3C299E38-4715-F7E2-425A-3C9D6DBA47A9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster9GroupId";
	rename -uid "F72EC9C2-4898-895D-A4CD-D4833933E976";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster9GroupParts";
	rename -uid "F7215622-4CCA-3F1A-3D85-C9A7E89AA41A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet9";
	rename -uid "B301A677-455C-5356-0B90-D1A0CDCA49B0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId18";
	rename -uid "0A93AF43-4DF4-B7BE-CC6F-99974AE31DE7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "342182EA-4604-B2A9-20C3-83975710C2C8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster10";
	rename -uid "CA616736-437F-AF05-B303-EB84A533A81F";
	setAttr -s 56 ".wl";
	setAttr -s 5 ".wl[0].w";
	setAttr ".wl[0].w[14]" 0.061718951736235421;
	setAttr ".wl[0].w[15]" 0.39745052358663935;
	setAttr ".wl[0].w[16]" 0.39745052358663935;
	setAttr ".wl[0].w[17]" 0.089793659542048751;
	setAttr ".wl[0].w[22]" 0.053586341548437146;
	setAttr -s 5 ".wl[1].w";
	setAttr ".wl[1].w[14]" 0.063316920168418889;
	setAttr ".wl[1].w[15]" 0.40002968319030807;
	setAttr ".wl[1].w[16]" 0.40002968319030807;
	setAttr ".wl[1].w[17]" 0.085240843089267784;
	setAttr ".wl[1].w[22]" 0.05138287036169719;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[14]" 0.065083488003817663;
	setAttr ".wl[2].w[15]" 0.40224438948865421;
	setAttr ".wl[2].w[16]" 0.40224438948865421;
	setAttr ".wl[2].w[17]" 0.081065856355098387;
	setAttr ".wl[2].w[22]" 0.049361876663775596;
	setAttr -s 5 ".wl[3].w";
	setAttr ".wl[3].w[14]" 0.067033920898977778;
	setAttr ".wl[3].w[15]" 0.40409973977973423;
	setAttr ".wl[3].w[16]" 0.40409973977973412;
	setAttr ".wl[3].w[17]" 0.077250027370009772;
	setAttr ".wl[3].w[22]" 0.04751657217154414;
	setAttr -s 5 ".wl[4].w";
	setAttr ".wl[4].w[14]" 0.046535868368457092;
	setAttr ".wl[4].w[15]" 0.41700923410091684;
	setAttr ".wl[4].w[16]" 0.41700923410091684;
	setAttr ".wl[4].w[17]" 0.076394878509017689;
	setAttr ".wl[4].w[22]" 0.043050784920691448;
	setAttr -s 5 ".wl[5].w";
	setAttr ".wl[5].w[14]" 0.048293865481730737;
	setAttr ".wl[5].w[15]" 0.42178997420803255;
	setAttr ".wl[5].w[16]" 0.42178997420803255;
	setAttr ".wl[5].w[17]" 0.068653441360451511;
	setAttr ".wl[5].w[22]" 0.039472744741752677;
	setAttr -s 5 ".wl[6].w";
	setAttr ".wl[6].w[14]" 0.050493274245693671;
	setAttr ".wl[6].w[15]" 0.42546583173981078;
	setAttr ".wl[6].w[16]" 0.42546583173981067;
	setAttr ".wl[6].w[17]" 0.062130110172316309;
	setAttr ".wl[6].w[22]" 0.03644495210236863;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[14]" 0.053214934759503715;
	setAttr ".wl[7].w[15]" 0.42808863633332717;
	setAttr ".wl[7].w[16]" 0.42808863633332717;
	setAttr ".wl[7].w[17]" 0.056687912543355562;
	setAttr ".wl[7].w[22]" 0.03391988003048646;
	setAttr -s 5 ".wl[8].w";
	setAttr ".wl[8].w[14]" 0.021905523373957663;
	setAttr ".wl[8].w[15]" 0.43728091365416832;
	setAttr ".wl[8].w[16]" 0.45152317141828563;
	setAttr ".wl[8].w[17]" 0.060421767080252473;
	setAttr ".wl[8].w[22]" 0.028868624473335949;
	setAttr -s 5 ".wl[9].w";
	setAttr ".wl[9].w[14]" 0.021980802788375886;
	setAttr ".wl[9].w[15]" 0.460043694635902;
	setAttr ".wl[9].w[16]" 0.460043694635902;
	setAttr ".wl[9].w[17]" 0.038222472111861271;
	setAttr ".wl[9].w[22]" 0.019709335827958849;
	setAttr -s 5 ".wl[10].w";
	setAttr ".wl[10].w[14]" 0.023726323899521017;
	setAttr ".wl[10].w[15]" 0.46801657354268045;
	setAttr ".wl[10].w[16]" 0.46801657354268045;
	setAttr ".wl[10].w[17]" 0.025891272085511844;
	setAttr ".wl[10].w[22]" 0.014349256929606272;
	setAttr -s 5 ".wl[11].w";
	setAttr ".wl[11].w[14]" 0.028822563257107001;
	setAttr ".wl[11].w[15]" 0.46976737400146557;
	setAttr ".wl[11].w[16]" 0.46976737400146534;
	setAttr ".wl[11].w[17]" 0.019874468168600626;
	setAttr ".wl[11].w[22]" 0.011768220571361553;
	setAttr -s 5 ".wl[12].w";
	setAttr ".wl[12].w[14]" 0.0057383328391614414;
	setAttr ".wl[12].w[15]" 0.37278939585723109;
	setAttr ".wl[12].w[16]" 0.58996186274383566;
	setAttr ".wl[12].w[17]" 0.023232826544683911;
	setAttr ".wl[12].w[22]" 0.0082775820150879122;
	setAttr -s 5 ".wl[13].w";
	setAttr ".wl[13].w[14]" 0.0045888154669056396;
	setAttr ".wl[13].w[15]" 0.46257106000905984;
	setAttr ".wl[13].w[16]" 0.51970305624499125;
	setAttr ".wl[13].w[17]" 0.0092847539919652094;
	setAttr ".wl[13].w[22]" 0.0038523142870781199;
	setAttr -s 5 ".wl[14].w";
	setAttr ".wl[14].w[14]" 0.0039024596659123032;
	setAttr ".wl[14].w[15]" 0.49513747835292815;
	setAttr ".wl[14].w[16]" 0.49513747835292815;
	setAttr ".wl[14].w[17]" 0.0039528559453472526;
	setAttr ".wl[14].w[22]" 0.0018697276828842483;
	setAttr -s 5 ".wl[15].w";
	setAttr ".wl[15].w[14]" 0.0050500869907308277;
	setAttr ".wl[15].w[15]" 0.49549137272568078;
	setAttr ".wl[15].w[16]" 0.49549137272568078;
	setAttr ".wl[15].w[17]" 0.0025958679930398049;
	setAttr ".wl[15].w[22]" 0.0013712995648678572;
	setAttr -s 5 ".wl[16].w";
	setAttr ".wl[16].w[15]" 0.14827226338824864;
	setAttr ".wl[16].w[16]" 0.81209620081920508;
	setAttr ".wl[16].w[17]" 0.029647608687047168;
	setAttr ".wl[16].w[18]" 0.0042278626163165288;
	setAttr ".wl[16].w[22]" 0.0057560644891825868;
	setAttr -s 5 ".wl[17].w";
	setAttr ".wl[17].w[14]" 0.00064937436003904673;
	setAttr ".wl[17].w[15]" 0.089809797149822332;
	setAttr ".wl[17].w[16]" 0.90522390789211982;
	setAttr ".wl[17].w[17]" 0.0034496253141947362;
	setAttr ".wl[17].w[22]" 0.00086729528382408871;
	setAttr -s 5 ".wl[18].w";
	setAttr ".wl[18].w[0]" 4.3468590033296254e-005;
	setAttr ".wl[18].w[14]" 0.00021536948550608122;
	setAttr ".wl[18].w[15]" 0.50110549313360386;
	setAttr ".wl[18].w[16]" 0.4985521623384162;
	setAttr ".wl[18].w[17]" 8.3506452440617248e-005;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[0]" 0.0007319308487809277;
	setAttr ".wl[19].w[14]" 0.0039343441035118026;
	setAttr ".wl[19].w[15]" 0.52463956789572785;
	setAttr ".wl[19].w[16]" 0.46993291391917924;
	setAttr ".wl[19].w[17]" 0.00076124323280024381;
	setAttr -s 5 ".wl[20].w";
	setAttr ".wl[20].w[15]" 0.14827226599404902;
	setAttr ".wl[20].w[16]" 0.81209620051731912;
	setAttr ".wl[20].w[17]" 0.029647609522362652;
	setAttr ".wl[20].w[18]" 0.0057560523594835291;
	setAttr ".wl[20].w[22]" 0.0042278716067857026;
	setAttr -s 5 ".wl[21].w[14:18]"  0.00064937440547078323 0.089809801482354554 
		0.90522390482508308 0.0034496256421222326 0.00086729364496930799;
	setAttr -s 5 ".wl[22].w";
	setAttr ".wl[22].w[0]" 4.3468597729287125e-005;
	setAttr ".wl[22].w[14]" 0.00021536952319646595;
	setAttr ".wl[22].w[15]" 0.50110549298793483;
	setAttr ".wl[22].w[16]" 0.49855216242114192;
	setAttr ".wl[22].w[17]" 8.3506469997561767e-005;
	setAttr -s 5 ".wl[23].w";
	setAttr ".wl[23].w[0]" 0.00073193088500819053;
	setAttr ".wl[23].w[14]" 0.0039343442879573387;
	setAttr ".wl[23].w[15]" 0.52463956704921533;
	setAttr ".wl[23].w[16]" 0.46993291449754759;
	setAttr ".wl[23].w[17]" 0.00076124328027155942;
	setAttr -s 5 ".wl[24].w[14:18]"  0.0057383329199170953 0.37278940110350445 
		0.58996187104636544 0.023232826980395496 0.0082775679498174638;
	setAttr -s 5 ".wl[25].w[14:18]"  0.0045888154925180693 0.46257106259090014 
		0.51970305914570503 0.0092847541545325422 0.0038523086163441932;
	setAttr -s 5 ".wl[26].w[14:18]"  0.0039024596748786461 0.49513747949056908 
		0.49513747949056908 0.0039528560222026653 0.0018697253217804985;
	setAttr -s 5 ".wl[27].w[14:18]"  0.0050500869979274365 0.49549137343178473 
		0.49549137343178462 0.0025958680508953295 0.0013712980876079762;
	setAttr -s 5 ".wl[28].w[14:18]"  0.02190552422502173 0.43728093064321838 
		0.45152318896066812 0.060421769044176545 0.028868587126915361;
	setAttr -s 5 ".wl[29].w[14:18]"  0.021980803307218098 0.46004370549492557 
		0.46004370549492557 0.038222472907524542 0.019709312795406216;
	setAttr -s 5 ".wl[30].w[14:18]"  0.023726324259490776 0.46801658064330731 
		0.4680165806433072 0.025891272489380671 0.014349241964514078;
	setAttr -s 5 ".wl[31].w[14:18]"  0.028822563571879317 0.46976737913181021 
		0.46976737913181044 0.019874468450311322 0.011768209714188597;
	setAttr -s 5 ".wl[32].w[14:18]"  0.046535870370168632 0.41700925203830924 
		0.41700925203830924 0.076394881795095168 0.043050743758117689;
	setAttr -s 5 ".wl[33].w[14:18]"  0.048293867314172338 0.42178999021224806 
		0.42178999021224806 0.068653443965407276 0.039472708295924211;
	setAttr -s 5 ".wl[34].w[14:18]"  0.050493275945213204 0.42546584606028071 
		0.42546584606028093 0.062130112263511755 0.036444919670713297;
	setAttr -s 5 ".wl[35].w[14:18]"  0.053214936359113237 0.42808864920141737 
		0.42808864920141737 0.056687914247360048 0.033919850990691926;
	setAttr -s 5 ".wl[36].w[14:18]"  0.061718954663988558 0.39745054244044276 
		0.39745054244044253 0.089793663801577217 0.053586296653549026;
	setAttr -s 5 ".wl[37].w[14:18]"  0.06331692298567522 0.4000297009894383 
		0.4000297009894383 0.085240846882018106 0.051382828153430087;
	setAttr -s 5 ".wl[38].w[14:18]"  0.065083490723697332 0.40224440629869801 
		0.40224440629869823 0.081065859742890684 0.049361836936015702;
	setAttr -s 5 ".wl[39].w[14:18]"  0.067033923534149165 0.40409975566530426 
		0.40409975566530404 0.077250030406786171 0.047516534728456433;
	setAttr -s 5 ".wl[40].w[14:18]"  0.061013298724926002 0.39393046360358042 
		0.39393046360358064 0.096021576227187808 0.055104197840725115;
	setAttr -s 5 ".wl[41].w[14:18]"  0.069861614644829442 0.39107011075961212 
		0.39107011075961201 0.092632740101940225 0.055365423734006207;
	setAttr -s 5 ".wl[42].w[14:18]"  0.071577407292624115 0.39298577249097127 
		0.39298577249097127 0.088872602960075014 0.053578444765358328;
	setAttr -s 5 ".wl[43].w[14:18]"  0.070170631847145531 0.4050598594511321 
		0.4050598594511321 0.074579201753211491 0.045130447497378809;
	setAttr -s 5 ".wl[44].w";
	setAttr ".wl[44].w[14]" 0.061013295644061653;
	setAttr ".wl[44].w[15]" 0.3939304436531168;
	setAttr ".wl[44].w[16]" 0.39393044365311658;
	setAttr ".wl[44].w[17]" 0.096021571376208412;
	setAttr ".wl[44].w[22]" 0.055104245673496637;
	setAttr -s 5 ".wl[45].w";
	setAttr ".wl[45].w[14]" 0.069861611366282966;
	setAttr ".wl[45].w[15]" 0.39107009231999862;
	setAttr ".wl[45].w[16]" 0.39107009231999862;
	setAttr ".wl[45].w[17]" 0.09263273575247806;
	setAttr ".wl[45].w[22]" 0.055365468241241715;
	setAttr -s 5 ".wl[46].w";
	setAttr ".wl[46].w[14]" 0.071577404103910058;
	setAttr ".wl[46].w[15]" 0.39298575489643184;
	setAttr ".wl[46].w[16]" 0.39298575489643184;
	setAttr ".wl[46].w[17]" 0.088872598999193766;
	setAttr ".wl[46].w[22]" 0.053578487104032554;
	setAttr -s 5 ".wl[47].w";
	setAttr ".wl[47].w[14]" 0.070170629254630149;
	setAttr ".wl[47].w[15]" 0.40505984442524878;
	setAttr ".wl[47].w[16]" 0.40505984442524867;
	setAttr ".wl[47].w[17]" 0.074579198997571747;
	setAttr ".wl[47].w[22]" 0.045130482897300664;
	setAttr -s 5 ".wl[48].w[14:18]"  0.061346949966056948 0.42401077030102063 
		0.42401077030102063 0.056953619337742165 0.03367789009415964;
	setAttr -s 5 ".wl[49].w";
	setAttr ".wl[49].w[14]" 0.06134694822958453;
	setAttr ".wl[49].w[15]" 0.4240107580424799;
	setAttr ".wl[49].w[16]" 0.4240107580424799;
	setAttr ".wl[49].w[17]" 0.056953617726398266;
	setAttr ".wl[49].w[22]" 0.033677917959057405;
	setAttr -s 5 ".wl[50].w";
	setAttr ".wl[50].w[0]" 0.0051629995941604861;
	setAttr ".wl[50].w[14]" 0.022504476409164111;
	setAttr ".wl[50].w[15]" 0.48353874381252937;
	setAttr ".wl[50].w[16]" 0.48353874381252937;
	setAttr ".wl[50].w[17]" 0.0052550363716165937;
	setAttr -s 5 ".wl[51].w";
	setAttr ".wl[51].w[0]" 0.0051629996634543181;
	setAttr ".wl[51].w[14]" 0.022504476672211182;
	setAttr ".wl[51].w[15]" 0.4835387436190659;
	setAttr ".wl[51].w[16]" 0.48353874361906579;
	setAttr ".wl[51].w[17]" 0.0052550364262028545;
	setAttr -s 5 ".wl[52].w[14:18]"  0.048913249087897702 0.4057015176488607 
		0.4057015176488607 0.091010074212780373 0.048673641401600513;
	setAttr -s 5 ".wl[53].w";
	setAttr ".wl[53].w[14]" 0.048913246649556166;
	setAttr ".wl[53].w[15]" 0.40570149718426618;
	setAttr ".wl[53].w[16]" 0.40570149718426618;
	setAttr ".wl[53].w[17]" 0.091010069665462504;
	setAttr ".wl[53].w[22]" 0.048673689316449054;
	setAttr -s 5 ".wl[54].w";
	setAttr ".wl[54].w[15]" 0.29197818569547224;
	setAttr ".wl[54].w[16]" 0.58071206559049249;
	setAttr ".wl[54].w[17]" 0.086883405516197276;
	setAttr ".wl[54].w[18]" 0.02279304625903977;
	setAttr ".wl[54].w[22]" 0.017633296938798237;
	setAttr -s 5 ".wl[55].w";
	setAttr ".wl[55].w[15]" 0.29197818307252671;
	setAttr ".wl[55].w[16]" 0.58071205852709729;
	setAttr ".wl[55].w[17]" 0.086883405041761189;
	setAttr ".wl[55].w[18]" 0.017633262530202976;
	setAttr ".wl[55].w[22]" 0.022793090828411695;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 8.5485389286235716 28.580356764965313 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[2]" -type "matrix" 6.693613450145993e-016 1.7889765444095194e-015 -1 -0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-015 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-015 -0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[3]" -type "matrix" -3.1806489720151766e-016 7.1110600523609972e-016 1 -0
		 0.23651468939617115 -0.97162791319508346 7.5749132939959201e-016 -0 0.97162791319508335 0.23651468939617104 1.3112890213765272e-016 -0
		 15.75339661024516 -24.192069798095325 14.952100000000019 1;
	setAttr ".pm[4]" -type "matrix" -7.7862017067354629e-016 2.5809568655261894e-008 0.99999999999999978 -0
		 0.97741416543986737 -0.21133279252753712 5.4544089702159369e-009 -0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-008 -0
		 38.494799132532364 23.920859481432768 12.094899382612956 1;
	setAttr ".pm[5]" -type "matrix" -1.3805402767519452e-008 1.3615198156657948e-008 -1 -0
		 0.93887631588660836 -0.34425464915842291 -1.7648660945676008e-008 0 -0.3442546491584228 -0.93887631588660847 -8.0304129894412123e-009 0
		 24.344687153438453 -43.723300868428026 -12.094900931389606 1;
	setAttr ".pm[6]" -type "matrix" 7.7249776432890241e-009 -1.634336896666231e-008 -0.99999999999999978 -0
		 0.017238817250843617 -0.99985140054899724 1.6474109837531978e-008 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-009 0
		 -30.350163356585984 -42.766656220525725 -12.094899535503076 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999999999978 -1.6162482267069893e-008 -1.0632309219184019e-008 -0
		 -1.6162482273500898e-008 -0.99999999999999956 -1.5415230359074293e-014 0 -1.0632309178159527e-008 1.5240265432222506e-014 -0.99999999999999933 -0
		 14.182899160148004 -42.525700229230644 -14.346000150797614 1;
	setAttr ".pm[8]" -type "matrix" 3.6929243270364759e-016 4.7854520619298905e-017 -1 -0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-016 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-016 -0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[9]" -type "matrix" 2.8232439365995012e-016 -2.4058376823856014e-016 1 -0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-016 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-016 -0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[10]" -type "matrix" 3.3969043598553431e-016 1.4899000132653635e-016 1 -0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-016 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-016 -0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[11]" -type "matrix" 2.0731684078555344e-016 2.5897082728895037e-016 -1 -0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-017 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-016 -0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[12]" -type "matrix" 3.1628320018632648e-016 -1.0005548030928621e-016 -1 -0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-017 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-016 -0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[13]" -type "matrix" 1 -8.8267921761093423e-017 -6.84540878947466e-016 -0
		 5.982944840221322e-017 1.0000000000000002 -3.4000580129145434e-016 0 7.1046403083575275e-016 3.4347524824340795e-016 1 -0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
	setAttr ".pm[14]" -type "matrix" 2.9171120138216851e-016 -2.0309007691163655e-016 0.99999999999999978 -0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-016 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-016 -0
		 5.141099383762306 27.116763673658916 6.384860464405965e-015 1;
	setAttr ".pm[15]" -type "matrix" 1.9255976590806024e-016 4.2123171441692991e-016 -0.99999999999999978 -0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-016 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-016 -0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-014 1;
	setAttr ".pm[16]" -type "matrix" -2.2254253739202254e-016 4.0618990599018242e-016 -0.99999999999999978 -0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-016 -0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-016 -0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-014 1;
	setAttr ".pm[17]" -type "matrix" -3.9263286525203279e-016 2.4567224874041425e-016 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-016 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-016 -0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-014 1;
	setAttr ".pm[18]" -type "matrix" -4.3236892918211134e-016 -1.660497809547105e-016 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-016 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-016 -0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[19]" -type "matrix" -4.200894483686455e-016 -1.9503916541689796e-016 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-016 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-016 -0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[20]" -type "matrix" -2.3367847652631728e-016 5.2235190187304229e-016 0.99999999999999978 -0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-016 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-016 -0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[21]" -type "matrix" 0.99999999999999978 7.889801871316359e-016 -4.1328562659829196e-016 -0
		 -7.1325529571241588e-016 0.99999999999999978 7.4940054162198017e-016 0 5.2724101640594644e-016 -9.1593399531575296e-016 0.99999999999999933 -0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[22]" -type "matrix" 4.3236892918211144e-016 1.6604978095471038e-016 -0.99999999999999978 -0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-016 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-016 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[23]" -type "matrix" 4.200894483686456e-016 1.9503916541689791e-016 -1 -0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-016 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-016 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[24]" -type "matrix" 2.3367847652631718e-016 1.6666666780649064e-016 0.99999999999999978 -0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-016 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-016 -0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[25]" -type "matrix" 0.99999999999999978 5.5459731209901231e-016 1.205471819538445e-017 -0
		 6.0517993594966963e-016 -1 -6.3837823915946462e-016 0 7.7400975786026954e-017 7.2164496600635165e-016 -0.99999999999999978 -0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[26]" -type "matrix" -4.0112524636791838e-016 2.3154687949413117e-016 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-016 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-016 -0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-014 1;
	setAttr ".pm[27]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -6.2314369504761027e-015 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[28]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -1.3912601358543541e-014 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[29]" -type "matrix" 5.0813779435729561e-016 1.296078129378641e-015 0.99999999999999978 -0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-016 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-015 -0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[30]" -type "matrix" -1.0103368778348008e-015 -4.0484730914130193e-016 -0.99999999999999978 -0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-016 -0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-015 -0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[31]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-016 -1.5416536010143854e-015 -0
		 5.3246366272141857e-016 0.99999999999999978 -5.6898930012039322e-016 0 1.611115502654318e-015 6.5919492087118591e-016 0.99999999999999978 -0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[32]" -type "matrix" 5.0211778276518463e-016 -8.7774694673919145e-016 0.99999999999999978 -0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-016 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-015 -0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[33]" -type "matrix" 7.131658175178445e-016 -5.6945907845917879e-016 -0.99999999999999978 -0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-016 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-016 -0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[34]" -type "matrix" 1 -5.6270869122286394e-016 7.6910344414326517e-017 -0
		 -2.7046580649882625e-016 -0.99999999999999956 -4.9057979900624073e-015 0 2.3587309789062293e-016 4.7184478546569121e-015 -0.99999999999999978 -0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".gm" -type "matrix" -1.5053081334060456e-013 -4.0025470519649948 -5.0661390835432343 0
		 -3.5650192044832624e-016 -5.039214725765448 3.9812752299576606 0 -9.4866461210122228 1.3744642299774401e-013 1.7272960438030667e-013 0
		 0 34.723260477941523 -29.659347332106609 1;
	setAttr -s 7 ".ma";
	setAttr -s 35 ".dpf[0:34]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 7 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 7 ".ifcl";
createNode tweak -n "tweak10";
	rename -uid "DEB72D3F-4B51-C1E1-8433-9189A47CB5CF";
createNode objectSet -n "skinCluster10Set";
	rename -uid "A67E3A3D-4490-E884-7757-2BBE7F8814DD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster10GroupId";
	rename -uid "F2B076C6-428E-6081-124D-6385A7DB3B34";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster10GroupParts";
	rename -uid "492F16F6-497C-1976-F1E5-F3BB3ABF90C6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet10";
	rename -uid "DE930DDF-4E22-0058-96B2-F2A826939957";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId20";
	rename -uid "391E3C03-497A-68DD-E68A-D9A51ECA6AD3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "BB4D3739-46BC-8ECF-98D3-2CBB94E18A34";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster11";
	rename -uid "C115B72D-434B-6427-DA28-2AA04D8EF15F";
	setAttr -s 25 ".wl";
	setAttr -s 4 ".wl[0].w";
	setAttr ".wl[0].w[0]" 0.061435376210809821;
	setAttr ".wl[0].w[14]" 0.26159121229356885;
	setAttr ".wl[0].w[15]" 0.44027408922960015;
	setAttr ".wl[0].w[16]" 0.23669932226602128;
	setAttr -s 4 ".wl[1].w";
	setAttr ".wl[1].w[0]" 0.034728038693166437;
	setAttr ".wl[1].w[14]" 0.23015571961123377;
	setAttr ".wl[1].w[15]" 0.56069939718813167;
	setAttr ".wl[1].w[16]" 0.17441684450746822;
	setAttr -s 4 ".wl[2].w";
	setAttr ".wl[2].w[0]" 0.015975866028289275;
	setAttr ".wl[2].w[14]" 0.097469768077427854;
	setAttr ".wl[2].w[15]" 0.57550573757951706;
	setAttr ".wl[2].w[16]" 0.31104862831476582;
	setAttr -s 4 ".wl[3].w";
	setAttr ".wl[3].w[0]" 0.017091467391631979;
	setAttr ".wl[3].w[14]" 0.12119940503959523;
	setAttr ".wl[3].w[15]" 0.63413081025918305;
	setAttr ".wl[3].w[16]" 0.22757831730958977;
	setAttr -s 4 ".wl[4].w";
	setAttr ".wl[4].w[0]" 0.046551957866129867;
	setAttr ".wl[4].w[14]" 0.19925290697214043;
	setAttr ".wl[4].w[15]" 0.44997619639651959;
	setAttr ".wl[4].w[16]" 0.30421893876521011;
	setAttr -s 4 ".wl[5].w";
	setAttr ".wl[5].w[0]" 0.046830013122036565;
	setAttr ".wl[5].w[14]" 0.36784502110973755;
	setAttr ".wl[5].w[15]" 0.51331594378512779;
	setAttr ".wl[5].w[16]" 0.072009021983098054;
	setAttr -s 4 ".wl[6].w";
	setAttr ".wl[6].w[0]" 0.075247386107230058;
	setAttr ".wl[6].w[14]" 0.32019412107402911;
	setAttr ".wl[6].w[15]" 0.42991597873361631;
	setAttr ".wl[6].w[16]" 0.17464251408512452;
	setAttr -s 4 ".wl[7].w";
	setAttr ".wl[7].w[0]" 0.034209627904915288;
	setAttr ".wl[7].w[14]" 0.30559841660607784;
	setAttr ".wl[7].w[15]" 0.57806676868339657;
	setAttr ".wl[7].w[16]" 0.082125186805610345;
	setAttr -s 4 ".wl[8].w";
	setAttr ".wl[8].w[0]" 0.02578208907059127;
	setAttr ".wl[8].w[14]" 0.20635447652617178;
	setAttr ".wl[8].w[15]" 0.62460671357121522;
	setAttr ".wl[8].w[16]" 0.14325672083202176;
	setAttr -s 4 ".wl[9].w";
	setAttr ".wl[9].w[0]" 0.011312669762258632;
	setAttr ".wl[9].w[14]" 0.13370978551871548;
	setAttr ".wl[9].w[15]" 0.7797586925480734;
	setAttr ".wl[9].w[16]" 0.075218852170952463;
	setAttr -s 4 ".wl[10].w";
	setAttr ".wl[10].w[0]" 0.034697163854220593;
	setAttr ".wl[10].w[14]" 0.36140335002465079;
	setAttr ".wl[10].w[15]" 0.55323353953839105;
	setAttr ".wl[10].w[16]" 0.050665946582737632;
	setAttr -s 4 ".wl[11].w";
	setAttr ".wl[11].w[0]" 0.042614882738829428;
	setAttr ".wl[11].w[14]" 0.31632189655729326;
	setAttr ".wl[11].w[15]" 0.53745135153833101;
	setAttr ".wl[11].w[16]" 0.10361186916554636;
	setAttr -s 4 ".wl[12].w";
	setAttr ".wl[12].w[0]" 0.0141769801740733;
	setAttr ".wl[12].w[14]" 0.23258186351595597;
	setAttr ".wl[12].w[15]" 0.71916588402668957;
	setAttr ".wl[12].w[16]" 0.034075272283281215;
	setAttr -s 4 ".wl[13].w";
	setAttr ".wl[13].w[0]" 0.010667575210005378;
	setAttr ".wl[13].w[14]" 0.073296910948392538;
	setAttr ".wl[13].w[15]" 0.63758020861954234;
	setAttr ".wl[13].w[16]" 0.2784553052220598;
	setAttr -s 4 ".wl[14].w";
	setAttr ".wl[14].w[0]" 0.0060082180484593373;
	setAttr ".wl[14].w[14]" 0.057619927962634931;
	setAttr ".wl[14].w[15]" 0.80939386742500108;
	setAttr ".wl[14].w[16]" 0.12697798656390463;
	setAttr -s 4 ".wl[15].w";
	setAttr ".wl[15].w[0]" 0.022343194092877532;
	setAttr ".wl[15].w[14]" 0.14207509011530148;
	setAttr ".wl[15].w[15]" 0.58084888237804599;
	setAttr ".wl[15].w[16]" 0.25473283341377501;
	setAttr -s 4 ".wl[16].w";
	setAttr ".wl[16].w[0]" 0.069729699519678778;
	setAttr ".wl[16].w[14]" 0.29846646445205915;
	setAttr ".wl[16].w[15]" 0.43479984966134322;
	setAttr ".wl[16].w[16]" 0.19700398636691896;
	setAttr -s 4 ".wl[17].w";
	setAttr ".wl[17].w[0]" 0.014406995389739248;
	setAttr ".wl[17].w[14]" 0.19826115773338482;
	setAttr ".wl[17].w[15]" 0.73711414330260727;
	setAttr ".wl[17].w[16]" 0.050217703574268642;
	setAttr -s 4 ".wl[18].w";
	setAttr ".wl[18].w[0]" 0.0086206162199803284;
	setAttr ".wl[18].w[14]" 0.087074979013896089;
	setAttr ".wl[18].w[15]" 0.79293097888811603;
	setAttr ".wl[18].w[16]" 0.1113734258780076;
	setAttr -s 4 ".wl[19].w";
	setAttr ".wl[19].w[0]" 0.051886095621316082;
	setAttr ".wl[19].w[14]" 0.22276001876678109;
	setAttr ".wl[19].w[15]" 0.44750959493651515;
	setAttr ".wl[19].w[16]" 0.27784429067538768;
	setAttr -s 4 ".wl[20].w";
	setAttr ".wl[20].w[0]" 0.10110742129849361;
	setAttr ".wl[20].w[14]" 0.27273832767507789;
	setAttr ".wl[20].w[15]" 0.35745697271170129;
	setAttr ".wl[20].w[16]" 0.26869727831472723;
	setAttr -s 4 ".wl[21].w";
	setAttr ".wl[21].w[0]" 0.1001185884578317;
	setAttr ".wl[21].w[14]" 0.27059677226545759;
	setAttr ".wl[21].w[15]" 0.35788032743984016;
	setAttr ".wl[21].w[16]" 0.27140431183687064;
	setAttr -s 4 ".wl[22].w";
	setAttr ".wl[22].w[0]" 0.10070282540840741;
	setAttr ".wl[22].w[14]" 0.27191971708202201;
	setAttr ".wl[22].w[15]" 0.35764872665259101;
	setAttr ".wl[22].w[16]" 0.26972873085697963;
	setAttr -s 4 ".wl[23].w";
	setAttr ".wl[23].w[0]" 0.099464012924799672;
	setAttr ".wl[23].w[14]" 0.26926102841216548;
	setAttr ".wl[23].w[15]" 0.35819927377553068;
	setAttr ".wl[23].w[16]" 0.27307568488750422;
	setAttr -s 4 ".wl[24].w";
	setAttr ".wl[24].w[0]" 0.099102969025550602;
	setAttr ".wl[24].w[14]" 0.26843786952803811;
	setAttr ".wl[24].w[15]" 0.35834769335590916;
	setAttr ".wl[24].w[16]" 0.27411146809050219;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 8.5485389286235716 28.580356764965313 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[2]" -type "matrix" 6.693613450145993e-016 1.7889765444095194e-015 -1 -0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-015 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-015 -0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[3]" -type "matrix" -3.1806489720151766e-016 7.1110600523609972e-016 1 -0
		 0.23651468939617115 -0.97162791319508346 7.5749132939959201e-016 -0 0.97162791319508335 0.23651468939617104 1.3112890213765272e-016 -0
		 15.75339661024516 -24.192069798095325 14.952100000000019 1;
	setAttr ".pm[4]" -type "matrix" -7.7862017067354629e-016 2.5809568655261894e-008 0.99999999999999978 -0
		 0.97741416543986737 -0.21133279252753712 5.4544089702159369e-009 -0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-008 -0
		 38.494799132532364 23.920859481432768 12.094899382612956 1;
	setAttr ".pm[5]" -type "matrix" -1.3805402767519452e-008 1.3615198156657948e-008 -1 -0
		 0.93887631588660836 -0.34425464915842291 -1.7648660945676008e-008 0 -0.3442546491584228 -0.93887631588660847 -8.0304129894412123e-009 0
		 24.344687153438453 -43.723300868428026 -12.094900931389606 1;
	setAttr ".pm[6]" -type "matrix" 7.7249776432890241e-009 -1.634336896666231e-008 -0.99999999999999978 -0
		 0.017238817250843617 -0.99985140054899724 1.6474109837531978e-008 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-009 0
		 -30.350163356585984 -42.766656220525725 -12.094899535503076 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999999999978 -1.6162482267069893e-008 -1.0632309219184019e-008 -0
		 -1.6162482273500898e-008 -0.99999999999999956 -1.5415230359074293e-014 0 -1.0632309178159527e-008 1.5240265432222506e-014 -0.99999999999999933 -0
		 14.182899160148004 -42.525700229230644 -14.346000150797614 1;
	setAttr ".pm[8]" -type "matrix" 3.6929243270364759e-016 4.7854520619298905e-017 -1 -0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-016 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-016 -0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[9]" -type "matrix" 2.8232439365995012e-016 -2.4058376823856014e-016 1 -0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-016 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-016 -0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[10]" -type "matrix" 3.3969043598553431e-016 1.4899000132653635e-016 1 -0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-016 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-016 -0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[11]" -type "matrix" 2.0731684078555344e-016 2.5897082728895037e-016 -1 -0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-017 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-016 -0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[12]" -type "matrix" 3.1628320018632648e-016 -1.0005548030928621e-016 -1 -0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-017 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-016 -0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[13]" -type "matrix" 1 -8.8267921761093423e-017 -6.84540878947466e-016 -0
		 5.982944840221322e-017 1.0000000000000002 -3.4000580129145434e-016 0 7.1046403083575275e-016 3.4347524824340795e-016 1 -0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
	setAttr ".pm[14]" -type "matrix" 2.9171120138216851e-016 -2.0309007691163655e-016 0.99999999999999978 -0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-016 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-016 -0
		 5.141099383762306 27.116763673658916 6.384860464405965e-015 1;
	setAttr ".pm[15]" -type "matrix" 1.9255976590806024e-016 4.2123171441692991e-016 -0.99999999999999978 -0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-016 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-016 -0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-014 1;
	setAttr ".pm[16]" -type "matrix" -2.2254253739202254e-016 4.0618990599018242e-016 -0.99999999999999978 -0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-016 -0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-016 -0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-014 1;
	setAttr ".pm[17]" -type "matrix" -3.9263286525203279e-016 2.4567224874041425e-016 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-016 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-016 -0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-014 1;
	setAttr ".pm[18]" -type "matrix" -4.3236892918211134e-016 -1.660497809547105e-016 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-016 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-016 -0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[19]" -type "matrix" -4.200894483686455e-016 -1.9503916541689796e-016 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-016 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-016 -0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[20]" -type "matrix" -2.3367847652631728e-016 5.2235190187304229e-016 0.99999999999999978 -0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-016 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-016 -0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[21]" -type "matrix" 0.99999999999999978 7.889801871316359e-016 -4.1328562659829196e-016 -0
		 -7.1325529571241588e-016 0.99999999999999978 7.4940054162198017e-016 0 5.2724101640594644e-016 -9.1593399531575296e-016 0.99999999999999933 -0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[22]" -type "matrix" 4.3236892918211144e-016 1.6604978095471038e-016 -0.99999999999999978 -0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-016 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-016 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[23]" -type "matrix" 4.200894483686456e-016 1.9503916541689791e-016 -1 -0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-016 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-016 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[24]" -type "matrix" 2.3367847652631718e-016 1.6666666780649064e-016 0.99999999999999978 -0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-016 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-016 -0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[25]" -type "matrix" 0.99999999999999978 5.5459731209901231e-016 1.205471819538445e-017 -0
		 6.0517993594966963e-016 -1 -6.3837823915946462e-016 0 7.7400975786026954e-017 7.2164496600635165e-016 -0.99999999999999978 -0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[26]" -type "matrix" -4.0112524636791838e-016 2.3154687949413117e-016 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-016 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-016 -0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-014 1;
	setAttr ".pm[27]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -6.2314369504761027e-015 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[28]" -type "matrix" 0.99999999999999978 5.7996289069587238e-016 -1.5307217763218292e-015 -0
		 -4.7794772108182622e-016 0.99999999999999978 -5.5511151231257738e-016 0 1.5180447079722593e-015 6.3837823915946521e-016 0.99999999999999978 -0
		 -1.3912601358543541e-014 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[29]" -type "matrix" 5.0813779435729561e-016 1.296078129378641e-015 0.99999999999999978 -0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-016 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-015 -0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[30]" -type "matrix" -1.0103368778348008e-015 -4.0484730914130193e-016 -0.99999999999999978 -0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-016 -0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-015 -0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[31]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-016 -1.5416536010143854e-015 -0
		 5.3246366272141857e-016 0.99999999999999978 -5.6898930012039322e-016 0 1.611115502654318e-015 6.5919492087118591e-016 0.99999999999999978 -0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[32]" -type "matrix" 5.0211778276518463e-016 -8.7774694673919145e-016 0.99999999999999978 -0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-016 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-015 -0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[33]" -type "matrix" 7.131658175178445e-016 -5.6945907845917879e-016 -0.99999999999999978 -0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-016 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-016 -0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[34]" -type "matrix" 1 -5.6270869122286394e-016 7.6910344414326517e-017 -0
		 -2.7046580649882625e-016 -0.99999999999999956 -4.9057979900624073e-015 0 2.3587309789062293e-016 4.7184478546569121e-015 -0.99999999999999978 -0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".gm" -type "matrix" 2.1898993621495286 0 0 0 0 -0.78956330849407486 1.9511112954613559 0
		 0 -2.0299825441952835 -0.82148042375053376 0 0.25327866260381415 -4.6118527309093889 -42.846729163741074 1;
	setAttr -s 5 ".ma";
	setAttr -s 35 ".dpf[0:34]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak11";
	rename -uid "EDF86EEE-42B5-4E4C-41FB-78B759D10C24";
createNode objectSet -n "skinCluster11Set";
	rename -uid "76626356-497C-68CD-3B2E-8D90CDA9EBA7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster11GroupId";
	rename -uid "AFC2ADDB-4F8F-3CF2-EDC1-7FB93EE7A8D1";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster11GroupParts";
	rename -uid "B1438B24-4168-4983-81FA-7EBED38B0DD8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet11";
	rename -uid "C6393FBC-4F9E-9E11-BE96-5185AAB68871";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId22";
	rename -uid "2CBF9C87-44AA-CB15-5D20-FE9530B0F408";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "FCE56EA8-45B3-8A6E-40BE-65B304EAA7B9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 1;
	setAttr -av ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 6 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 9 ".dsm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -k on ".mico";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av -cb on ".micc";
	setAttr -k on ".micr";
	setAttr -k on ".micg";
	setAttr -k on ".micb";
	setAttr -cb on ".mica";
	setAttr -av -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -k on ".mico";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av -cb on ".micc";
	setAttr -k on ".micr";
	setAttr -k on ".micg";
	setAttr -k on ".micb";
	setAttr -cb on ".mica";
	setAttr -av -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".w";
	setAttr -av ".h";
	setAttr -av ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av ".dar";
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr -av ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
connectAttr ":defaultColorMgtGlobals.cme" "Front_RefShape.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Front_RefShape.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Front_RefShape.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Front_RefShape.ws";
connectAttr ":frontShape.msg" "Front_RefShape.ltc";
connectAttr ":defaultColorMgtGlobals.cme" "Side_RefShape.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Side_RefShape.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Side_RefShape.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Side_RefShape.ws";
connectAttr ":sideShape.msg" "Side_RefShape.ltc";
connectAttr "Base_Control.s" "Waist.is";
connectAttr "Waist.s" "R_Leg.is";
connectAttr "R_Leg.s" "R_Knee.is";
connectAttr "R_Knee.s" "R_Ankle1.is";
connectAttr "R_Ankle1.s" "R_Ankle2.is";
connectAttr "R_Ankle2.s" "R_Heel.is";
connectAttr "R_Heel.s" "R_Foot.is";
connectAttr "Waist.s" "L_Leg.is";
connectAttr "L_Leg.s" "L_Knee.is";
connectAttr "L_Knee.s" "L_Ankle1.is";
connectAttr "L_Ankle1.s" "L_Ankle2.is";
connectAttr "L_Ankle2.s" "L_Heel.is";
connectAttr "L_Heel.s" "L_Foot.is";
connectAttr "Base_Control.s" "Spine_Base.is";
connectAttr "Spine_Base.s" "Spine_1.is";
connectAttr "Spine_1.s" "Spine_2.is";
connectAttr "Spine_2.s" "Chest.is";
connectAttr "Chest.s" "L_Arm.is";
connectAttr "L_Arm.s" "L_Elbow.is";
connectAttr "L_Elbow.s" "L_Wrist.is";
connectAttr "L_Wrist.s" "L_Hand.is";
connectAttr "Chest.s" "R_Arm.is";
connectAttr "R_Arm.s" "R_Elbow.is";
connectAttr "R_Elbow.s" "R_Wrist.is";
connectAttr "R_Wrist.s" "R_Hand.is";
connectAttr "Chest.s" "Neck.is";
connectAttr "Neck.s" "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.is"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.s" "Jaw_Control.is"
		;
connectAttr "Jaw_Control.s" "L_Jaw.is";
connectAttr "L_Jaw.s" "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.is"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.s" "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.is"
		;
connectAttr "Jaw_Control.s" "R_Jaw.is";
connectAttr "R_Jaw.s" "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.is"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.s" "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.is"
		;
connectAttr "skinCluster1.og[0]" "TorsoShape.i";
connectAttr "skinCluster1GroupId.id" "TorsoShape.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "TorsoShape.iog.og[0].gco";
connectAttr "groupId2.id" "TorsoShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "TorsoShape.iog.og[1].gco";
connectAttr "tweak1.vl[0].vt[0]" "TorsoShape.twl";
connectAttr "polyTriangulate1.out" "TorsoShapeOrig.i";
connectAttr "skinCluster2.og[0]" "HeadShape.i";
connectAttr "skinCluster2GroupId.id" "HeadShape.iog.og[0].gid";
connectAttr "skinCluster2Set.mwc" "HeadShape.iog.og[0].gco";
connectAttr "groupId4.id" "HeadShape.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "HeadShape.iog.og[1].gco";
connectAttr "tweak2.vl[0].vt[0]" "HeadShape.twl";
connectAttr "polyTriangulate2.out" "HeadShapeOrig.i";
connectAttr "skinCluster3.og[0]" "JawShape.i";
connectAttr "skinCluster3GroupId.id" "JawShape.iog.og[0].gid";
connectAttr "skinCluster3Set.mwc" "JawShape.iog.og[0].gco";
connectAttr "groupId6.id" "JawShape.iog.og[1].gid";
connectAttr "tweakSet3.mwc" "JawShape.iog.og[1].gco";
connectAttr "tweak3.vl[0].vt[0]" "JawShape.twl";
connectAttr "polyTriangulate3.out" "JawShapeOrig.i";
connectAttr "skinCluster4.og[0]" "ArmsShape.i";
connectAttr "skinCluster4GroupId.id" "ArmsShape.iog.og[0].gid";
connectAttr "skinCluster4Set.mwc" "ArmsShape.iog.og[0].gco";
connectAttr "groupId8.id" "ArmsShape.iog.og[1].gid";
connectAttr "tweakSet4.mwc" "ArmsShape.iog.og[1].gco";
connectAttr "tweak4.vl[0].vt[0]" "ArmsShape.twl";
connectAttr "polyTriangulate4.out" "ArmsShapeOrig.i";
connectAttr "skinCluster5.og[0]" "LegShape.i";
connectAttr "skinCluster5GroupId.id" "LegShape.iog.og[0].gid";
connectAttr "skinCluster5Set.mwc" "LegShape.iog.og[0].gco";
connectAttr "groupId10.id" "LegShape.iog.og[1].gid";
connectAttr "tweakSet5.mwc" "LegShape.iog.og[1].gco";
connectAttr "tweak5.vl[0].vt[0]" "LegShape.twl";
connectAttr "polyTriangulate5.out" "LegShapeOrig.i";
connectAttr "skinCluster6.og[0]" "FootShape.i";
connectAttr "skinCluster6GroupId.id" "FootShape.iog.og[0].gid";
connectAttr "skinCluster6Set.mwc" "FootShape.iog.og[0].gco";
connectAttr "groupId12.id" "FootShape.iog.og[1].gid";
connectAttr "tweakSet6.mwc" "FootShape.iog.og[1].gco";
connectAttr "tweak6.vl[0].vt[0]" "FootShape.twl";
connectAttr "polyTriangulate6.out" "FootShapeOrig.i";
connectAttr "skinCluster7.og[0]" "HandShape.i";
connectAttr "skinCluster7GroupId.id" "HandShape.iog.og[0].gid";
connectAttr "skinCluster7Set.mwc" "HandShape.iog.og[0].gco";
connectAttr "groupId14.id" "HandShape.iog.og[1].gid";
connectAttr "tweakSet7.mwc" "HandShape.iog.og[1].gco";
connectAttr "tweak7.vl[0].vt[0]" "HandShape.twl";
connectAttr "polyTriangulate7.out" "HandShapeOrig.i";
connectAttr "skinCluster8.og[0]" "ForeArmShape.i";
connectAttr "skinCluster8GroupId.id" "ForeArmShape.iog.og[0].gid";
connectAttr "skinCluster8Set.mwc" "ForeArmShape.iog.og[0].gco";
connectAttr "groupId16.id" "ForeArmShape.iog.og[1].gid";
connectAttr "tweakSet8.mwc" "ForeArmShape.iog.og[1].gco";
connectAttr "tweak8.vl[0].vt[0]" "ForeArmShape.twl";
connectAttr "polyTriangulate8.out" "ForeArmShapeOrig.i";
connectAttr "skinCluster9GroupId.id" "Crystal1Shape.iog.og[0].gid";
connectAttr "skinCluster9Set.mwc" "Crystal1Shape.iog.og[0].gco";
connectAttr "groupId18.id" "Crystal1Shape.iog.og[1].gid";
connectAttr "tweakSet9.mwc" "Crystal1Shape.iog.og[1].gco";
connectAttr "skinCluster9.og[0]" "Crystal1Shape.i";
connectAttr "tweak9.vl[0].vt[0]" "Crystal1Shape.twl";
connectAttr "skinCluster10GroupId.id" "Crystal2Shape.iog.og[0].gid";
connectAttr "skinCluster10Set.mwc" "Crystal2Shape.iog.og[0].gco";
connectAttr "groupId20.id" "Crystal2Shape.iog.og[1].gid";
connectAttr "tweakSet10.mwc" "Crystal2Shape.iog.og[1].gco";
connectAttr "skinCluster10.og[0]" "Crystal2Shape.i";
connectAttr "tweak10.vl[0].vt[0]" "Crystal2Shape.twl";
connectAttr "skinCluster11GroupId.id" "Crystal3Shape.iog.og[0].gid";
connectAttr "skinCluster11Set.mwc" "Crystal3Shape.iog.og[0].gco";
connectAttr "groupId22.id" "Crystal3Shape.iog.og[1].gid";
connectAttr "tweakSet11.mwc" "Crystal3Shape.iog.og[1].gco";
connectAttr "skinCluster11.og[0]" "Crystal3Shape.i";
connectAttr "tweak11.vl[0].vt[0]" "Crystal3Shape.twl";
connectAttr "polyPlane1.out" "FLoorPlaneShape.i";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":sideShape.msg" "imagePlaneShape1.ltc";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape2.ws";
connectAttr ":sideShape.msg" "imagePlaneShape2.ltc";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape3.ws";
connectAttr ":sideShape.msg" "imagePlaneShape3.ltc";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape4.ws";
connectAttr ":sideShape.msg" "imagePlaneShape4.ltc";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "CrystalsNRocks:pCube1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "CrystalsNRocks:pCube2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "CrystalsNRocks:pSolid6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "CrystalsNRocks:pCube1SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "CrystalsNRocks:pCube1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "CrystalsNRocks:pCube2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "CrystalsNRocks:pSolid6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "CrystalsNRocks:pCube1SG1.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "TorsoShape.wm" "polySplitRing1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polySplitRing2.ip";
connectAttr "TorsoShape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polySplitRing3.ip";
connectAttr "TorsoShape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing2.out" "polyTweak3.ip";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "TorsoShape.wm" "polySplitRing4.mp";
connectAttr "polyTweak4.out" "polySplitRing5.ip";
connectAttr "TorsoShape.wm" "polySplitRing5.mp";
connectAttr "polySplitRing4.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polySplitRing6.ip";
connectAttr "TorsoShape.wm" "polySplitRing6.mp";
connectAttr "polySplitRing5.out" "polyTweak5.ip";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "TorsoShape.wm" "polySplitRing7.mp";
connectAttr "polyTweak6.out" "polySplitRing8.ip";
connectAttr "HeadShape.wm" "polySplitRing8.mp";
connectAttr "polyCube2.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polySplitRing9.ip";
connectAttr "HeadShape.wm" "polySplitRing9.mp";
connectAttr "polySplitRing8.out" "polyTweak7.ip";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "HeadShape.wm" "polySplitRing10.mp";
connectAttr "polyTweak8.out" "polySplitRing11.ip";
connectAttr "HeadShape.wm" "polySplitRing11.mp";
connectAttr "polySplitRing10.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polySplitRing12.ip";
connectAttr "HeadShape.wm" "polySplitRing12.mp";
connectAttr "polySplitRing11.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polySplitRing13.ip";
connectAttr "HeadShape.wm" "polySplitRing13.mp";
connectAttr "polySplitRing12.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polySplitRing14.ip";
connectAttr "HeadShape.wm" "polySplitRing14.mp";
connectAttr "polySplitRing13.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polySplitRing15.ip";
connectAttr "HeadShape.wm" "polySplitRing15.mp";
connectAttr "polySplitRing14.out" "polyTweak12.ip";
connectAttr "polySplitRing15.out" "polySplitRing16.ip";
connectAttr "HeadShape.wm" "polySplitRing16.mp";
connectAttr "polySplitRing16.out" "polySplitRing17.ip";
connectAttr "HeadShape.wm" "polySplitRing17.mp";
connectAttr "polySplitRing17.out" "polySplitRing18.ip";
connectAttr "HeadShape.wm" "polySplitRing18.mp";
connectAttr "polyTweak13.out" "polyBevel1.ip";
connectAttr "HeadShape.wm" "polyBevel1.mp";
connectAttr "polySplitRing18.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polySplitRing19.ip";
connectAttr "HeadShape.wm" "polySplitRing19.mp";
connectAttr "polyBevel1.out" "polyTweak14.ip";
connectAttr "polySplitRing19.out" "polySplitRing20.ip";
connectAttr "HeadShape.wm" "polySplitRing20.mp";
connectAttr "polySplitRing20.out" "deleteComponent1.ig";
connectAttr "polyCube3.out" "polySplitRing21.ip";
connectAttr "JawShape.wm" "polySplitRing21.mp";
connectAttr "polySplitRing21.out" "polySplitRing22.ip";
connectAttr "JawShape.wm" "polySplitRing22.mp";
connectAttr "polyTweak15.out" "polySplitRing23.ip";
connectAttr "JawShape.wm" "polySplitRing23.mp";
connectAttr "polySplitRing22.out" "polyTweak15.ip";
connectAttr "polySplitRing23.out" "polySplitRing24.ip";
connectAttr "JawShape.wm" "polySplitRing24.mp";
connectAttr "polySplitRing24.out" "polySplitRing25.ip";
connectAttr "JawShape.wm" "polySplitRing25.mp";
connectAttr "polySplitRing25.out" "polySplitRing26.ip";
connectAttr "JawShape.wm" "polySplitRing26.mp";
connectAttr "polyTweak16.out" "polySplitRing27.ip";
connectAttr "JawShape.wm" "polySplitRing27.mp";
connectAttr "polySplitRing26.out" "polyTweak16.ip";
connectAttr "polySplitRing27.out" "polySplitRing28.ip";
connectAttr "JawShape.wm" "polySplitRing28.mp";
connectAttr "polySplitRing28.out" "polySplitRing29.ip";
connectAttr "JawShape.wm" "polySplitRing29.mp";
connectAttr "polySplitRing29.out" "polySplitRing30.ip";
connectAttr "JawShape.wm" "polySplitRing30.mp";
connectAttr "polySplitRing30.out" "polySplitRing31.ip";
connectAttr "JawShape.wm" "polySplitRing31.mp";
connectAttr "polySplitRing31.out" "polySplitRing32.ip";
connectAttr "JawShape.wm" "polySplitRing32.mp";
connectAttr "polyTweak17.out" "polySplitRing33.ip";
connectAttr "JawShape.wm" "polySplitRing33.mp";
connectAttr "polySplitRing32.out" "polyTweak17.ip";
connectAttr "polySplitRing33.out" "polySplitRing34.ip";
connectAttr "JawShape.wm" "polySplitRing34.mp";
connectAttr "polySplitRing34.out" "polySplitRing35.ip";
connectAttr "JawShape.wm" "polySplitRing35.mp";
connectAttr "polySplitRing35.out" "polySplitRing36.ip";
connectAttr "JawShape.wm" "polySplitRing36.mp";
connectAttr "polySplitRing36.out" "polySplitRing37.ip";
connectAttr "JawShape.wm" "polySplitRing37.mp";
connectAttr "polySplitRing37.out" "polySplitRing38.ip";
connectAttr "JawShape.wm" "polySplitRing38.mp";
connectAttr "polySplitRing38.out" "polySplitRing39.ip";
connectAttr "JawShape.wm" "polySplitRing39.mp";
connectAttr "polyTweak18.out" "polySplitRing40.ip";
connectAttr "JawShape.wm" "polySplitRing40.mp";
connectAttr "polySplitRing39.out" "polyTweak18.ip";
connectAttr "polySplitRing40.out" "polySplitRing41.ip";
connectAttr "JawShape.wm" "polySplitRing41.mp";
connectAttr "polyTweak19.out" "polyExtrudeFace1.ip";
connectAttr "JawShape.wm" "polyExtrudeFace1.mp";
connectAttr "polySplitRing41.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polySplitRing42.ip";
connectAttr "JawShape.wm" "polySplitRing42.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak20.ip";
connectAttr "polySplitRing42.out" "polySplitRing43.ip";
connectAttr "JawShape.wm" "polySplitRing43.mp";
connectAttr "polySplitRing43.out" "polySplitRing44.ip";
connectAttr "JawShape.wm" "polySplitRing44.mp";
connectAttr "polyTweak21.out" "polySplitRing45.ip";
connectAttr "JawShape.wm" "polySplitRing45.mp";
connectAttr "polySplitRing44.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polySplitRing46.ip";
connectAttr "JawShape.wm" "polySplitRing46.mp";
connectAttr "polySplitRing45.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polySplitRing47.ip";
connectAttr "JawShape.wm" "polySplitRing47.mp";
connectAttr "polySplitRing46.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polySplitRing48.ip";
connectAttr "ArmsShape.wm" "polySplitRing48.mp";
connectAttr "polyCube4.out" "polyTweak24.ip";
connectAttr "polySplitRing48.out" "polySplitRing49.ip";
connectAttr "ArmsShape.wm" "polySplitRing49.mp";
connectAttr "polySplitRing49.out" "polySplitRing50.ip";
connectAttr "ArmsShape.wm" "polySplitRing50.mp";
connectAttr "polySplitRing50.out" "polySplitRing51.ip";
connectAttr "ArmsShape.wm" "polySplitRing51.mp";
connectAttr "polySplitRing51.out" "polySplitRing52.ip";
connectAttr "ArmsShape.wm" "polySplitRing52.mp";
connectAttr "polyTweak25.out" "polySplitRing53.ip";
connectAttr "ArmsShape.wm" "polySplitRing53.mp";
connectAttr "polySplitRing52.out" "polyTweak25.ip";
connectAttr "polySplitRing53.out" "deleteComponent2.ig";
connectAttr "polyTweak26.out" "polySplitRing54.ip";
connectAttr "ArmsShape.wm" "polySplitRing54.mp";
connectAttr "deleteComponent2.og" "polyTweak26.ip";
connectAttr "polyTweak27.out" "polySplitRing55.ip";
connectAttr "ArmsShape.wm" "polySplitRing55.mp";
connectAttr "polySplitRing54.out" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polySplitRing56.ip";
connectAttr "ArmsShape.wm" "polySplitRing56.mp";
connectAttr "polySplitRing55.out" "polyTweak28.ip";
connectAttr "polyTweak29.out" "polySplitRing57.ip";
connectAttr "ArmsShape.wm" "polySplitRing57.mp";
connectAttr "polySplitRing56.out" "polyTweak29.ip";
connectAttr "polyTweak30.out" "polyMirror1.ip";
connectAttr "ArmsShape.wm" "polyMirror1.mp";
connectAttr "polySplitRing57.out" "polyTweak30.ip";
connectAttr "polyTweak31.out" "polySplitRing58.ip";
connectAttr "LegShape.wm" "polySplitRing58.mp";
connectAttr "polyCube5.out" "polyTweak31.ip";
connectAttr "polySplitRing58.out" "polySplitRing59.ip";
connectAttr "LegShape.wm" "polySplitRing59.mp";
connectAttr "polySplitRing59.out" "polySplitRing60.ip";
connectAttr "LegShape.wm" "polySplitRing60.mp";
connectAttr "polyTweak32.out" "polyExtrudeFace2.ip";
connectAttr "LegShape.wm" "polyExtrudeFace2.mp";
connectAttr "polySplitRing60.out" "polyTweak32.ip";
connectAttr "polyTweak33.out" "polySplitRing61.ip";
connectAttr "LegShape.wm" "polySplitRing61.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak33.ip";
connectAttr "polySplitRing61.out" "polySplitRing62.ip";
connectAttr "LegShape.wm" "polySplitRing62.mp";
connectAttr "polySurfaceShape1.o" "polySplitRing63.ip";
connectAttr "HandShape.wm" "polySplitRing63.mp";
connectAttr "polySplitRing63.out" "polySplitRing64.ip";
connectAttr "HandShape.wm" "polySplitRing64.mp";
connectAttr "polySplitRing64.out" "polySplitRing65.ip";
connectAttr "HandShape.wm" "polySplitRing65.mp";
connectAttr "polySplitRing65.out" "polySplitRing66.ip";
connectAttr "HandShape.wm" "polySplitRing66.mp";
connectAttr "polySplitRing66.out" "polySplitRing67.ip";
connectAttr "HandShape.wm" "polySplitRing67.mp";
connectAttr "polySplitRing67.out" "polySplitRing68.ip";
connectAttr "HandShape.wm" "polySplitRing68.mp";
connectAttr "polySplitRing68.out" "polySplitRing69.ip";
connectAttr "HandShape.wm" "polySplitRing69.mp";
connectAttr "polySplitRing69.out" "polySplitRing70.ip";
connectAttr "HandShape.wm" "polySplitRing70.mp";
connectAttr "polySplitRing70.out" "polySplitRing71.ip";
connectAttr "HandShape.wm" "polySplitRing71.mp";
connectAttr "polySplitRing71.out" "polySplitRing72.ip";
connectAttr "HandShape.wm" "polySplitRing72.mp";
connectAttr "polySplitRing72.out" "polySplitRing73.ip";
connectAttr "HandShape.wm" "polySplitRing73.mp";
connectAttr "polyCube6.out" "polySplitRing74.ip";
connectAttr "FootShape.wm" "polySplitRing74.mp";
connectAttr "polySplitRing74.out" "polySplitRing75.ip";
connectAttr "FootShape.wm" "polySplitRing75.mp";
connectAttr "polySplitRing75.out" "polySplitRing76.ip";
connectAttr "FootShape.wm" "polySplitRing76.mp";
connectAttr "polySplitRing76.out" "polySplitRing77.ip";
connectAttr "FootShape.wm" "polySplitRing77.mp";
connectAttr "polySplitRing77.out" "polySplitRing78.ip";
connectAttr "FootShape.wm" "polySplitRing78.mp";
connectAttr "polySplitRing78.out" "polySplitRing79.ip";
connectAttr "FootShape.wm" "polySplitRing79.mp";
connectAttr "polyTweak34.out" "polySplitRing80.ip";
connectAttr "FootShape.wm" "polySplitRing80.mp";
connectAttr "polySplitRing79.out" "polyTweak34.ip";
connectAttr "polyTweak35.out" "polyExtrudeFace3.ip";
connectAttr "LegShape.wm" "polyExtrudeFace3.mp";
connectAttr "polySplitRing62.out" "polyTweak35.ip";
connectAttr "polyTweak36.out" "polySplitRing81.ip";
connectAttr "LegShape.wm" "polySplitRing81.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak36.ip";
connectAttr "polyTweak37.out" "polyMirror2.ip";
connectAttr "LegShape.wm" "polyMirror2.mp";
connectAttr "polySplitRing81.out" "polyTweak37.ip";
connectAttr "polyTweak38.out" "polyMirror3.ip";
connectAttr "FootShape.wm" "polyMirror3.mp";
connectAttr "polySplitRing80.out" "polyTweak38.ip";
connectAttr "polyTweak39.out" "polySplitRing82.ip";
connectAttr "HandShape.wm" "polySplitRing82.mp";
connectAttr "polySplitRing73.out" "polyTweak39.ip";
connectAttr "polySplitRing82.out" "polySplitRing83.ip";
connectAttr "HandShape.wm" "polySplitRing83.mp";
connectAttr "polyTweak40.out" "polySplitRing84.ip";
connectAttr "HandShape.wm" "polySplitRing84.mp";
connectAttr "polySplitRing83.out" "polyTweak40.ip";
connectAttr "polySplitRing84.out" "polySplitRing85.ip";
connectAttr "HandShape.wm" "polySplitRing85.mp";
connectAttr "polyTweak41.out" "polySplitRing86.ip";
connectAttr "ForeArmShape.wm" "polySplitRing86.mp";
connectAttr "polyCube7.out" "polyTweak41.ip";
connectAttr "polySplitRing86.out" "polySplitRing87.ip";
connectAttr "ForeArmShape.wm" "polySplitRing87.mp";
connectAttr "polySplitRing87.out" "polySplitRing88.ip";
connectAttr "ForeArmShape.wm" "polySplitRing88.mp";
connectAttr "polySplitRing88.out" "polySplitRing89.ip";
connectAttr "ForeArmShape.wm" "polySplitRing89.mp";
connectAttr "polySplitRing89.out" "polySplitRing90.ip";
connectAttr "ForeArmShape.wm" "polySplitRing90.mp";
connectAttr "polySplitRing90.out" "polySplitRing91.ip";
connectAttr "ForeArmShape.wm" "polySplitRing91.mp";
connectAttr "polySplitRing91.out" "polySplitRing92.ip";
connectAttr "ForeArmShape.wm" "polySplitRing92.mp";
connectAttr "polyTweak42.out" "polySplitRing93.ip";
connectAttr "ForeArmShape.wm" "polySplitRing93.mp";
connectAttr "polySplitRing92.out" "polyTweak42.ip";
connectAttr "polyTweak43.out" "polySplitRing94.ip";
connectAttr "ForeArmShape.wm" "polySplitRing94.mp";
connectAttr "polySplitRing93.out" "polyTweak43.ip";
connectAttr "polySplitRing94.out" "polySplitRing95.ip";
connectAttr "ForeArmShape.wm" "polySplitRing95.mp";
connectAttr "polySplitRing95.out" "polySplitRing96.ip";
connectAttr "ForeArmShape.wm" "polySplitRing96.mp";
connectAttr "polySplitRing96.out" "polySplitRing97.ip";
connectAttr "ForeArmShape.wm" "polySplitRing97.mp";
connectAttr "polySplitRing97.out" "polySplitRing98.ip";
connectAttr "ForeArmShape.wm" "polySplitRing98.mp";
connectAttr "polySplitRing98.out" "polySplitRing99.ip";
connectAttr "ForeArmShape.wm" "polySplitRing99.mp";
connectAttr "polySplitRing99.out" "polySplitRing100.ip";
connectAttr "ForeArmShape.wm" "polySplitRing100.mp";
connectAttr "polyTweak44.out" "polySplitRing101.ip";
connectAttr "ForeArmShape.wm" "polySplitRing101.mp";
connectAttr "polySplitRing100.out" "polyTweak44.ip";
connectAttr "polyTweak45.out" "polyMirror4.ip";
connectAttr "ForeArmShape.wm" "polyMirror4.mp";
connectAttr "polySplitRing101.out" "polyTweak45.ip";
connectAttr "polyTweak46.out" "polyMirror5.ip";
connectAttr "HandShape.wm" "polyMirror5.mp";
connectAttr "polySplitRing85.out" "polyTweak46.ip";
connectAttr "polyTweak47.out" "polySplitRing102.ip";
connectAttr "TorsoShape.wm" "polySplitRing102.mp";
connectAttr "polySplitRing7.out" "polyTweak47.ip";
connectAttr "polySplitRing102.out" "polyChamfer1.ip";
connectAttr "TorsoShape.wm" "polyChamfer1.mp";
connectAttr "polyChamfer1.out" "deleteComponent3.ig";
connectAttr "polyTweak48.out" "polyBevel2.ip";
connectAttr "TorsoShape.wm" "polyBevel2.mp";
connectAttr "deleteComponent3.og" "polyTweak48.ip";
connectAttr "polyTweak49.out" "polyExtrudeFace4.ip";
connectAttr "TorsoShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyBevel2.out" "polyTweak49.ip";
connectAttr "polyTweak50.out" "polyExtrudeFace5.ip";
connectAttr "TorsoShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak50.ip";
connectAttr "CrystalsNRocks:lambert2.oc" "CrystalsNRocks:pCube1SG.ss";
connectAttr "CrystalsNRocks:pCube1SG.msg" "materialInfo1.sg";
connectAttr "CrystalsNRocks:lambert2.msg" "materialInfo1.m";
connectAttr ":defaultRenderGlobals.msg" "mtorPartition.rgcnx";
connectAttr "CrystalsNRocks:lambert3.oc" "CrystalsNRocks:pCube2SG.ss";
connectAttr "Crystal1Shape.iog" "CrystalsNRocks:pCube2SG.dsm" -na;
connectAttr "Crystal2Shape.iog" "CrystalsNRocks:pCube2SG.dsm" -na;
connectAttr "CrystalsNRocks:pCube2SG.msg" "materialInfo2.sg";
connectAttr "CrystalsNRocks:lambert3.msg" "materialInfo2.m";
connectAttr "lambert2.oc" "CrystalsNRocks:pSolid6SG.ss";
connectAttr "Crystal3Shape.iog" "CrystalsNRocks:pSolid6SG.dsm" -na;
connectAttr "CrystalsNRocks:pSolid6SG.msg" "materialInfo3.sg";
connectAttr "lambert2.msg" "materialInfo3.m";
connectAttr "CrystalsNRocks:lambert4.oc" "CrystalsNRocks:pCube1SG1.ss";
connectAttr "CrystalsNRocks:pCube1SG1.msg" "materialInfo4.sg";
connectAttr "CrystalsNRocks:lambert4.msg" "materialInfo4.m";
connectAttr "polyTweak51.out" "polySoftEdge1.ip";
connectAttr "TorsoShape.wm" "polySoftEdge1.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak51.ip";
connectAttr "polyTweak52.out" "polySoftEdge2.ip";
connectAttr "HeadShape.wm" "polySoftEdge2.mp";
connectAttr "deleteComponent1.og" "polyTweak52.ip";
connectAttr "polyTweak53.out" "polySoftEdge3.ip";
connectAttr "JawShape.wm" "polySoftEdge3.mp";
connectAttr "polySplitRing47.out" "polyTweak53.ip";
connectAttr "polyTweak54.out" "polySoftEdge4.ip";
connectAttr "ArmsShape.wm" "polySoftEdge4.mp";
connectAttr "polyMirror1.out" "polyTweak54.ip";
connectAttr "polyTweak55.out" "polySoftEdge5.ip";
connectAttr "LegShape.wm" "polySoftEdge5.mp";
connectAttr "polyMirror2.out" "polyTweak55.ip";
connectAttr "polyTweak56.out" "polySoftEdge6.ip";
connectAttr "FootShape.wm" "polySoftEdge6.mp";
connectAttr "polyMirror3.out" "polyTweak56.ip";
connectAttr "polyTweak57.out" "polySoftEdge7.ip";
connectAttr "HandShape.wm" "polySoftEdge7.mp";
connectAttr "polyMirror5.out" "polyTweak57.ip";
connectAttr "polyTweak58.out" "polySoftEdge8.ip";
connectAttr "ForeArmShape.wm" "polySoftEdge8.mp";
connectAttr "polyMirror4.out" "polyTweak58.ip";
connectAttr "polySoftEdge1.out" "polySoftEdge9.ip";
connectAttr "TorsoShape.wm" "polySoftEdge9.mp";
connectAttr "polySoftEdge2.out" "polySoftEdge10.ip";
connectAttr "HeadShape.wm" "polySoftEdge10.mp";
connectAttr "polySoftEdge3.out" "polySoftEdge11.ip";
connectAttr "JawShape.wm" "polySoftEdge11.mp";
connectAttr "polySoftEdge4.out" "polySoftEdge12.ip";
connectAttr "ArmsShape.wm" "polySoftEdge12.mp";
connectAttr "polySoftEdge5.out" "polySoftEdge13.ip";
connectAttr "LegShape.wm" "polySoftEdge13.mp";
connectAttr "polySoftEdge6.out" "polySoftEdge14.ip";
connectAttr "FootShape.wm" "polySoftEdge14.mp";
connectAttr "polySoftEdge7.out" "polySoftEdge15.ip";
connectAttr "HandShape.wm" "polySoftEdge15.mp";
connectAttr "polySoftEdge8.out" "polySoftEdge16.ip";
connectAttr "ForeArmShape.wm" "polySoftEdge16.mp";
connectAttr "polySoftEdge9.out" "polyTriangulate1.ip";
connectAttr "polySoftEdge10.out" "polyTriangulate2.ip";
connectAttr "polySoftEdge11.out" "polyTriangulate3.ip";
connectAttr "polySoftEdge12.out" "polyTriangulate4.ip";
connectAttr "polySoftEdge13.out" "polyTriangulate5.ip";
connectAttr "polySoftEdge14.out" "polyTriangulate6.ip";
connectAttr "polySoftEdge15.out" "polyTriangulate7.ip";
connectAttr "polySoftEdge16.out" "polyTriangulate8.ip";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Base_Control.wm" "skinCluster1.ma[0]";
connectAttr "Waist.wm" "skinCluster1.ma[1]";
connectAttr "R_Leg.wm" "skinCluster1.ma[2]";
connectAttr "R_Knee.wm" "skinCluster1.ma[3]";
connectAttr "L_Leg.wm" "skinCluster1.ma[8]";
connectAttr "L_Knee.wm" "skinCluster1.ma[9]";
connectAttr "Spine_Base.wm" "skinCluster1.ma[14]";
connectAttr "Spine_1.wm" "skinCluster1.ma[15]";
connectAttr "Spine_2.wm" "skinCluster1.ma[16]";
connectAttr "Chest.wm" "skinCluster1.ma[17]";
connectAttr "L_Arm.wm" "skinCluster1.ma[18]";
connectAttr "L_Elbow.wm" "skinCluster1.ma[19]";
connectAttr "R_Arm.wm" "skinCluster1.ma[22]";
connectAttr "R_Elbow.wm" "skinCluster1.ma[23]";
connectAttr "Neck.wm" "skinCluster1.ma[26]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.wm" "skinCluster1.ma[27]"
		;
connectAttr "Jaw_Control.wm" "skinCluster1.ma[28]";
connectAttr "L_Jaw.wm" "skinCluster1.ma[29]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.wm" "skinCluster1.ma[30]"
		;
connectAttr "R_Jaw.wm" "skinCluster1.ma[32]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.wm" "skinCluster1.ma[33]"
		;
connectAttr "Base_Control.liw" "skinCluster1.lw[0]";
connectAttr "Waist.liw" "skinCluster1.lw[1]";
connectAttr "R_Leg.liw" "skinCluster1.lw[2]";
connectAttr "R_Knee.liw" "skinCluster1.lw[3]";
connectAttr "L_Leg.liw" "skinCluster1.lw[8]";
connectAttr "L_Knee.liw" "skinCluster1.lw[9]";
connectAttr "Spine_Base.liw" "skinCluster1.lw[14]";
connectAttr "Spine_1.liw" "skinCluster1.lw[15]";
connectAttr "Spine_2.liw" "skinCluster1.lw[16]";
connectAttr "Chest.liw" "skinCluster1.lw[17]";
connectAttr "L_Arm.liw" "skinCluster1.lw[18]";
connectAttr "L_Elbow.liw" "skinCluster1.lw[19]";
connectAttr "R_Arm.liw" "skinCluster1.lw[22]";
connectAttr "R_Elbow.liw" "skinCluster1.lw[23]";
connectAttr "Neck.liw" "skinCluster1.lw[26]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.liw" "skinCluster1.lw[27]"
		;
connectAttr "Jaw_Control.liw" "skinCluster1.lw[28]";
connectAttr "L_Jaw.liw" "skinCluster1.lw[29]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.liw" "skinCluster1.lw[30]"
		;
connectAttr "R_Jaw.liw" "skinCluster1.lw[32]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.liw" "skinCluster1.lw[33]"
		;
connectAttr "Base_Control.obcc" "skinCluster1.ifcl[0]";
connectAttr "Waist.obcc" "skinCluster1.ifcl[1]";
connectAttr "R_Leg.obcc" "skinCluster1.ifcl[2]";
connectAttr "R_Knee.obcc" "skinCluster1.ifcl[3]";
connectAttr "L_Leg.obcc" "skinCluster1.ifcl[8]";
connectAttr "L_Knee.obcc" "skinCluster1.ifcl[9]";
connectAttr "Spine_Base.obcc" "skinCluster1.ifcl[14]";
connectAttr "Spine_1.obcc" "skinCluster1.ifcl[15]";
connectAttr "Spine_2.obcc" "skinCluster1.ifcl[16]";
connectAttr "Chest.obcc" "skinCluster1.ifcl[17]";
connectAttr "L_Arm.obcc" "skinCluster1.ifcl[18]";
connectAttr "L_Elbow.obcc" "skinCluster1.ifcl[19]";
connectAttr "R_Arm.obcc" "skinCluster1.ifcl[22]";
connectAttr "R_Elbow.obcc" "skinCluster1.ifcl[23]";
connectAttr "Neck.obcc" "skinCluster1.ifcl[26]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.obcc" "skinCluster1.ifcl[27]"
		;
connectAttr "Jaw_Control.obcc" "skinCluster1.ifcl[28]";
connectAttr "L_Jaw.obcc" "skinCluster1.ifcl[29]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.obcc" "skinCluster1.ifcl[30]"
		;
connectAttr "R_Jaw.obcc" "skinCluster1.ifcl[32]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.obcc" "skinCluster1.ifcl[33]"
		;
connectAttr "R_Jaw.msg" "skinCluster1.ptt";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "TorsoShape.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "TorsoShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "TorsoShapeOrig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "Base_Control.msg" "bindPose1.m[0]";
connectAttr "Waist.msg" "bindPose1.m[1]";
connectAttr "R_Leg.msg" "bindPose1.m[2]";
connectAttr "R_Knee.msg" "bindPose1.m[3]";
connectAttr "R_Ankle1.msg" "bindPose1.m[4]";
connectAttr "R_Ankle2.msg" "bindPose1.m[5]";
connectAttr "R_Heel.msg" "bindPose1.m[6]";
connectAttr "L_Leg.msg" "bindPose1.m[8]";
connectAttr "L_Knee.msg" "bindPose1.m[9]";
connectAttr "L_Ankle1.msg" "bindPose1.m[10]";
connectAttr "L_Ankle2.msg" "bindPose1.m[11]";
connectAttr "L_Heel.msg" "bindPose1.m[12]";
connectAttr "Spine_Base.msg" "bindPose1.m[14]";
connectAttr "Spine_1.msg" "bindPose1.m[15]";
connectAttr "Spine_2.msg" "bindPose1.m[16]";
connectAttr "Chest.msg" "bindPose1.m[17]";
connectAttr "L_Arm.msg" "bindPose1.m[18]";
connectAttr "L_Elbow.msg" "bindPose1.m[19]";
connectAttr "L_Wrist.msg" "bindPose1.m[20]";
connectAttr "R_Arm.msg" "bindPose1.m[22]";
connectAttr "R_Elbow.msg" "bindPose1.m[23]";
connectAttr "R_Wrist.msg" "bindPose1.m[24]";
connectAttr "Neck.msg" "bindPose1.m[26]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.msg" "bindPose1.m[27]"
		;
connectAttr "Jaw_Control.msg" "bindPose1.m[28]";
connectAttr "L_Jaw.msg" "bindPose1.m[29]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.msg" "bindPose1.m[30]"
		;
connectAttr "R_Jaw.msg" "bindPose1.m[32]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.msg" "bindPose1.m[33]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.msg" "bindPose1.m[39]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.msg" "bindPose1.m[40]"
		;
connectAttr "R_Foot.msg" "bindPose1.m[49]";
connectAttr "L_Foot.msg" "bindPose1.m[50]";
connectAttr "L_Hand.msg" "bindPose1.m[55]";
connectAttr "R_Hand.msg" "bindPose1.m[56]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[1]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[0]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[17]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[17]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[29]" "bindPose1.p[30]";
connectAttr "bindPose1.m[28]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[30]" "bindPose1.p[39]";
connectAttr "bindPose1.m[33]" "bindPose1.p[40]";
connectAttr "bindPose1.m[6]" "bindPose1.p[49]";
connectAttr "bindPose1.m[12]" "bindPose1.p[50]";
connectAttr "bindPose1.m[20]" "bindPose1.p[55]";
connectAttr "bindPose1.m[24]" "bindPose1.p[56]";
connectAttr "Base_Control.bps" "bindPose1.wm[0]";
connectAttr "Waist.bps" "bindPose1.wm[1]";
connectAttr "R_Leg.bps" "bindPose1.wm[2]";
connectAttr "R_Knee.bps" "bindPose1.wm[3]";
connectAttr "R_Ankle1.bps" "bindPose1.wm[4]";
connectAttr "R_Ankle2.bps" "bindPose1.wm[5]";
connectAttr "R_Heel.bps" "bindPose1.wm[6]";
connectAttr "L_Leg.bps" "bindPose1.wm[8]";
connectAttr "L_Knee.bps" "bindPose1.wm[9]";
connectAttr "L_Ankle1.bps" "bindPose1.wm[10]";
connectAttr "L_Ankle2.bps" "bindPose1.wm[11]";
connectAttr "L_Heel.bps" "bindPose1.wm[12]";
connectAttr "Spine_Base.bps" "bindPose1.wm[14]";
connectAttr "Spine_1.bps" "bindPose1.wm[15]";
connectAttr "Spine_2.bps" "bindPose1.wm[16]";
connectAttr "Chest.bps" "bindPose1.wm[17]";
connectAttr "L_Arm.bps" "bindPose1.wm[18]";
connectAttr "L_Elbow.bps" "bindPose1.wm[19]";
connectAttr "L_Wrist.bps" "bindPose1.wm[20]";
connectAttr "R_Arm.bps" "bindPose1.wm[22]";
connectAttr "R_Elbow.bps" "bindPose1.wm[23]";
connectAttr "R_Wrist.bps" "bindPose1.wm[24]";
connectAttr "Neck.bps" "bindPose1.wm[26]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.bps" "bindPose1.wm[27]"
		;
connectAttr "Jaw_Control.bps" "bindPose1.wm[28]";
connectAttr "L_Jaw.bps" "bindPose1.wm[29]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.bps" "bindPose1.wm[30]"
		;
connectAttr "R_Jaw.bps" "bindPose1.wm[32]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.bps" "bindPose1.wm[33]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.bps" "bindPose1.wm[39]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.bps" "bindPose1.wm[40]"
		;
connectAttr "R_Foot.bps" "bindPose1.wm[49]";
connectAttr "L_Foot.bps" "bindPose1.wm[50]";
connectAttr "L_Hand.bps" "bindPose1.wm[55]";
connectAttr "R_Hand.bps" "bindPose1.wm[56]";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "Spine_2.wm" "skinCluster2.ma[16]";
connectAttr "Chest.wm" "skinCluster2.ma[17]";
connectAttr "Neck.wm" "skinCluster2.ma[26]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.wm" "skinCluster2.ma[27]"
		;
connectAttr "Jaw_Control.wm" "skinCluster2.ma[28]";
connectAttr "L_Jaw.wm" "skinCluster2.ma[29]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.wm" "skinCluster2.ma[30]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.wm" "skinCluster2.ma[31]"
		;
connectAttr "R_Jaw.wm" "skinCluster2.ma[32]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.wm" "skinCluster2.ma[33]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.wm" "skinCluster2.ma[34]"
		;
connectAttr "Spine_2.liw" "skinCluster2.lw[16]";
connectAttr "Chest.liw" "skinCluster2.lw[17]";
connectAttr "Neck.liw" "skinCluster2.lw[26]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.liw" "skinCluster2.lw[27]"
		;
connectAttr "Jaw_Control.liw" "skinCluster2.lw[28]";
connectAttr "L_Jaw.liw" "skinCluster2.lw[29]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.liw" "skinCluster2.lw[30]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.liw" "skinCluster2.lw[31]"
		;
connectAttr "R_Jaw.liw" "skinCluster2.lw[32]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.liw" "skinCluster2.lw[33]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.liw" "skinCluster2.lw[34]"
		;
connectAttr "Spine_2.obcc" "skinCluster2.ifcl[16]";
connectAttr "Chest.obcc" "skinCluster2.ifcl[17]";
connectAttr "Neck.obcc" "skinCluster2.ifcl[26]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.obcc" "skinCluster2.ifcl[27]"
		;
connectAttr "Jaw_Control.obcc" "skinCluster2.ifcl[28]";
connectAttr "L_Jaw.obcc" "skinCluster2.ifcl[29]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.obcc" "skinCluster2.ifcl[30]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.obcc" "skinCluster2.ifcl[31]"
		;
connectAttr "R_Jaw.obcc" "skinCluster2.ifcl[32]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.obcc" "skinCluster2.ifcl[33]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.obcc" "skinCluster2.ifcl[34]"
		;
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "HeadShape.iog.og[0]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "HeadShape.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "HeadShapeOrig.w" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "skinCluster3GroupParts.og" "skinCluster3.ip[0].ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3.ip[0].gi";
connectAttr "Chest.wm" "skinCluster3.ma[17]";
connectAttr "L_Arm.wm" "skinCluster3.ma[18]";
connectAttr "L_Elbow.wm" "skinCluster3.ma[19]";
connectAttr "R_Arm.wm" "skinCluster3.ma[22]";
connectAttr "R_Elbow.wm" "skinCluster3.ma[23]";
connectAttr "Neck.wm" "skinCluster3.ma[26]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.wm" "skinCluster3.ma[27]"
		;
connectAttr "Jaw_Control.wm" "skinCluster3.ma[28]";
connectAttr "L_Jaw.wm" "skinCluster3.ma[29]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.wm" "skinCluster3.ma[30]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.wm" "skinCluster3.ma[31]"
		;
connectAttr "R_Jaw.wm" "skinCluster3.ma[32]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.wm" "skinCluster3.ma[33]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.wm" "skinCluster3.ma[34]"
		;
connectAttr "Chest.liw" "skinCluster3.lw[17]";
connectAttr "L_Arm.liw" "skinCluster3.lw[18]";
connectAttr "L_Elbow.liw" "skinCluster3.lw[19]";
connectAttr "R_Arm.liw" "skinCluster3.lw[22]";
connectAttr "R_Elbow.liw" "skinCluster3.lw[23]";
connectAttr "Neck.liw" "skinCluster3.lw[26]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.liw" "skinCluster3.lw[27]"
		;
connectAttr "Jaw_Control.liw" "skinCluster3.lw[28]";
connectAttr "L_Jaw.liw" "skinCluster3.lw[29]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.liw" "skinCluster3.lw[30]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.liw" "skinCluster3.lw[31]"
		;
connectAttr "R_Jaw.liw" "skinCluster3.lw[32]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.liw" "skinCluster3.lw[33]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.liw" "skinCluster3.lw[34]"
		;
connectAttr "Chest.obcc" "skinCluster3.ifcl[17]";
connectAttr "L_Arm.obcc" "skinCluster3.ifcl[18]";
connectAttr "L_Elbow.obcc" "skinCluster3.ifcl[19]";
connectAttr "R_Arm.obcc" "skinCluster3.ifcl[22]";
connectAttr "R_Elbow.obcc" "skinCluster3.ifcl[23]";
connectAttr "Neck.obcc" "skinCluster3.ifcl[26]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.obcc" "skinCluster3.ifcl[27]"
		;
connectAttr "Jaw_Control.obcc" "skinCluster3.ifcl[28]";
connectAttr "L_Jaw.obcc" "skinCluster3.ifcl[29]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.obcc" "skinCluster3.ifcl[30]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.obcc" "skinCluster3.ifcl[31]"
		;
connectAttr "R_Jaw.obcc" "skinCluster3.ifcl[32]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.obcc" "skinCluster3.ifcl[33]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.obcc" "skinCluster3.ifcl[34]"
		;
connectAttr "bindPose1.msg" "skinCluster3.bp";
connectAttr "groupParts6.og" "tweak3.ip[0].ig";
connectAttr "groupId6.id" "tweak3.ip[0].gi";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "JawShape.iog.og[0]" "skinCluster3Set.dsm" -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak3.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "groupId6.msg" "tweakSet3.gn" -na;
connectAttr "JawShape.iog.og[1]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "JawShapeOrig.w" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "skinCluster4GroupParts.og" "skinCluster4.ip[0].ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4.ip[0].gi";
connectAttr "R_Leg.wm" "skinCluster4.ma[2]";
connectAttr "R_Knee.wm" "skinCluster4.ma[3]";
connectAttr "L_Leg.wm" "skinCluster4.ma[8]";
connectAttr "L_Knee.wm" "skinCluster4.ma[9]";
connectAttr "Spine_1.wm" "skinCluster4.ma[15]";
connectAttr "Spine_2.wm" "skinCluster4.ma[16]";
connectAttr "Chest.wm" "skinCluster4.ma[17]";
connectAttr "L_Arm.wm" "skinCluster4.ma[18]";
connectAttr "L_Elbow.wm" "skinCluster4.ma[19]";
connectAttr "L_Wrist.wm" "skinCluster4.ma[20]";
connectAttr "R_Arm.wm" "skinCluster4.ma[22]";
connectAttr "R_Elbow.wm" "skinCluster4.ma[23]";
connectAttr "R_Wrist.wm" "skinCluster4.ma[24]";
connectAttr "Neck.wm" "skinCluster4.ma[26]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.wm" "skinCluster4.ma[27]"
		;
connectAttr "Jaw_Control.wm" "skinCluster4.ma[28]";
connectAttr "L_Jaw.wm" "skinCluster4.ma[29]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.wm" "skinCluster4.ma[30]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.wm" "skinCluster4.ma[31]"
		;
connectAttr "R_Jaw.wm" "skinCluster4.ma[32]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.wm" "skinCluster4.ma[33]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.wm" "skinCluster4.ma[34]"
		;
connectAttr "R_Leg.liw" "skinCluster4.lw[2]";
connectAttr "R_Knee.liw" "skinCluster4.lw[3]";
connectAttr "L_Leg.liw" "skinCluster4.lw[8]";
connectAttr "L_Knee.liw" "skinCluster4.lw[9]";
connectAttr "Spine_1.liw" "skinCluster4.lw[15]";
connectAttr "Spine_2.liw" "skinCluster4.lw[16]";
connectAttr "Chest.liw" "skinCluster4.lw[17]";
connectAttr "L_Arm.liw" "skinCluster4.lw[18]";
connectAttr "L_Elbow.liw" "skinCluster4.lw[19]";
connectAttr "L_Wrist.liw" "skinCluster4.lw[20]";
connectAttr "R_Arm.liw" "skinCluster4.lw[22]";
connectAttr "R_Elbow.liw" "skinCluster4.lw[23]";
connectAttr "R_Wrist.liw" "skinCluster4.lw[24]";
connectAttr "Neck.liw" "skinCluster4.lw[26]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.liw" "skinCluster4.lw[27]"
		;
connectAttr "Jaw_Control.liw" "skinCluster4.lw[28]";
connectAttr "L_Jaw.liw" "skinCluster4.lw[29]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.liw" "skinCluster4.lw[30]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.liw" "skinCluster4.lw[31]"
		;
connectAttr "R_Jaw.liw" "skinCluster4.lw[32]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.liw" "skinCluster4.lw[33]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.liw" "skinCluster4.lw[34]"
		;
connectAttr "R_Leg.obcc" "skinCluster4.ifcl[2]";
connectAttr "R_Knee.obcc" "skinCluster4.ifcl[3]";
connectAttr "L_Leg.obcc" "skinCluster4.ifcl[8]";
connectAttr "L_Knee.obcc" "skinCluster4.ifcl[9]";
connectAttr "Spine_1.obcc" "skinCluster4.ifcl[15]";
connectAttr "Spine_2.obcc" "skinCluster4.ifcl[16]";
connectAttr "Chest.obcc" "skinCluster4.ifcl[17]";
connectAttr "L_Arm.obcc" "skinCluster4.ifcl[18]";
connectAttr "L_Elbow.obcc" "skinCluster4.ifcl[19]";
connectAttr "L_Wrist.obcc" "skinCluster4.ifcl[20]";
connectAttr "R_Arm.obcc" "skinCluster4.ifcl[22]";
connectAttr "R_Elbow.obcc" "skinCluster4.ifcl[23]";
connectAttr "R_Wrist.obcc" "skinCluster4.ifcl[24]";
connectAttr "Neck.obcc" "skinCluster4.ifcl[26]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.obcc" "skinCluster4.ifcl[27]"
		;
connectAttr "Jaw_Control.obcc" "skinCluster4.ifcl[28]";
connectAttr "L_Jaw.obcc" "skinCluster4.ifcl[29]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.obcc" "skinCluster4.ifcl[30]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.obcc" "skinCluster4.ifcl[31]"
		;
connectAttr "R_Jaw.obcc" "skinCluster4.ifcl[32]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.obcc" "skinCluster4.ifcl[33]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.obcc" "skinCluster4.ifcl[34]"
		;
connectAttr "bindPose1.msg" "skinCluster4.bp";
connectAttr "R_Arm.msg" "skinCluster4.ptt";
connectAttr "groupParts8.og" "tweak4.ip[0].ig";
connectAttr "groupId8.id" "tweak4.ip[0].gi";
connectAttr "skinCluster4GroupId.msg" "skinCluster4Set.gn" -na;
connectAttr "ArmsShape.iog.og[0]" "skinCluster4Set.dsm" -na;
connectAttr "skinCluster4.msg" "skinCluster4Set.ub[0]";
connectAttr "tweak4.og[0]" "skinCluster4GroupParts.ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4GroupParts.gi";
connectAttr "groupId8.msg" "tweakSet4.gn" -na;
connectAttr "ArmsShape.iog.og[1]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "ArmsShapeOrig.w" "groupParts8.ig";
connectAttr "groupId8.id" "groupParts8.gi";
connectAttr "skinCluster5GroupParts.og" "skinCluster5.ip[0].ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5.ip[0].gi";
connectAttr "Base_Control.wm" "skinCluster5.ma[0]";
connectAttr "Waist.wm" "skinCluster5.ma[1]";
connectAttr "R_Leg.wm" "skinCluster5.ma[2]";
connectAttr "R_Knee.wm" "skinCluster5.ma[3]";
connectAttr "R_Ankle1.wm" "skinCluster5.ma[4]";
connectAttr "R_Ankle2.wm" "skinCluster5.ma[5]";
connectAttr "R_Heel.wm" "skinCluster5.ma[6]";
connectAttr "R_Foot.wm" "skinCluster5.ma[7]";
connectAttr "L_Leg.wm" "skinCluster5.ma[8]";
connectAttr "L_Knee.wm" "skinCluster5.ma[9]";
connectAttr "L_Ankle1.wm" "skinCluster5.ma[10]";
connectAttr "L_Ankle2.wm" "skinCluster5.ma[11]";
connectAttr "L_Heel.wm" "skinCluster5.ma[12]";
connectAttr "L_Foot.wm" "skinCluster5.ma[13]";
connectAttr "Spine_Base.wm" "skinCluster5.ma[14]";
connectAttr "Spine_1.wm" "skinCluster5.ma[15]";
connectAttr "L_Elbow.wm" "skinCluster5.ma[19]";
connectAttr "R_Elbow.wm" "skinCluster5.ma[23]";
connectAttr "Base_Control.liw" "skinCluster5.lw[0]";
connectAttr "Waist.liw" "skinCluster5.lw[1]";
connectAttr "R_Leg.liw" "skinCluster5.lw[2]";
connectAttr "R_Knee.liw" "skinCluster5.lw[3]";
connectAttr "R_Ankle1.liw" "skinCluster5.lw[4]";
connectAttr "R_Ankle2.liw" "skinCluster5.lw[5]";
connectAttr "R_Heel.liw" "skinCluster5.lw[6]";
connectAttr "R_Foot.liw" "skinCluster5.lw[7]";
connectAttr "L_Leg.liw" "skinCluster5.lw[8]";
connectAttr "L_Knee.liw" "skinCluster5.lw[9]";
connectAttr "L_Ankle1.liw" "skinCluster5.lw[10]";
connectAttr "L_Ankle2.liw" "skinCluster5.lw[11]";
connectAttr "L_Heel.liw" "skinCluster5.lw[12]";
connectAttr "L_Foot.liw" "skinCluster5.lw[13]";
connectAttr "Spine_Base.liw" "skinCluster5.lw[14]";
connectAttr "Spine_1.liw" "skinCluster5.lw[15]";
connectAttr "L_Elbow.liw" "skinCluster5.lw[19]";
connectAttr "R_Elbow.liw" "skinCluster5.lw[23]";
connectAttr "Base_Control.obcc" "skinCluster5.ifcl[0]";
connectAttr "Waist.obcc" "skinCluster5.ifcl[1]";
connectAttr "R_Leg.obcc" "skinCluster5.ifcl[2]";
connectAttr "R_Knee.obcc" "skinCluster5.ifcl[3]";
connectAttr "R_Ankle1.obcc" "skinCluster5.ifcl[4]";
connectAttr "R_Ankle2.obcc" "skinCluster5.ifcl[5]";
connectAttr "R_Heel.obcc" "skinCluster5.ifcl[6]";
connectAttr "R_Foot.obcc" "skinCluster5.ifcl[7]";
connectAttr "L_Leg.obcc" "skinCluster5.ifcl[8]";
connectAttr "L_Knee.obcc" "skinCluster5.ifcl[9]";
connectAttr "L_Ankle1.obcc" "skinCluster5.ifcl[10]";
connectAttr "L_Ankle2.obcc" "skinCluster5.ifcl[11]";
connectAttr "L_Heel.obcc" "skinCluster5.ifcl[12]";
connectAttr "L_Foot.obcc" "skinCluster5.ifcl[13]";
connectAttr "Spine_Base.obcc" "skinCluster5.ifcl[14]";
connectAttr "Spine_1.obcc" "skinCluster5.ifcl[15]";
connectAttr "L_Elbow.obcc" "skinCluster5.ifcl[19]";
connectAttr "R_Elbow.obcc" "skinCluster5.ifcl[23]";
connectAttr "bindPose1.msg" "skinCluster5.bp";
connectAttr "L_Leg.msg" "skinCluster5.ptt";
connectAttr "groupParts10.og" "tweak5.ip[0].ig";
connectAttr "groupId10.id" "tweak5.ip[0].gi";
connectAttr "skinCluster5GroupId.msg" "skinCluster5Set.gn" -na;
connectAttr "LegShape.iog.og[0]" "skinCluster5Set.dsm" -na;
connectAttr "skinCluster5.msg" "skinCluster5Set.ub[0]";
connectAttr "tweak5.og[0]" "skinCluster5GroupParts.ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5GroupParts.gi";
connectAttr "groupId10.msg" "tweakSet5.gn" -na;
connectAttr "LegShape.iog.og[1]" "tweakSet5.dsm" -na;
connectAttr "tweak5.msg" "tweakSet5.ub[0]";
connectAttr "LegShapeOrig.w" "groupParts10.ig";
connectAttr "groupId10.id" "groupParts10.gi";
connectAttr "skinCluster6GroupParts.og" "skinCluster6.ip[0].ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6.ip[0].gi";
connectAttr "R_Leg.wm" "skinCluster6.ma[2]";
connectAttr "R_Knee.wm" "skinCluster6.ma[3]";
connectAttr "R_Ankle1.wm" "skinCluster6.ma[4]";
connectAttr "R_Ankle2.wm" "skinCluster6.ma[5]";
connectAttr "R_Heel.wm" "skinCluster6.ma[6]";
connectAttr "R_Foot.wm" "skinCluster6.ma[7]";
connectAttr "L_Leg.wm" "skinCluster6.ma[8]";
connectAttr "L_Knee.wm" "skinCluster6.ma[9]";
connectAttr "L_Ankle1.wm" "skinCluster6.ma[10]";
connectAttr "L_Ankle2.wm" "skinCluster6.ma[11]";
connectAttr "L_Heel.wm" "skinCluster6.ma[12]";
connectAttr "L_Foot.wm" "skinCluster6.ma[13]";
connectAttr "L_Wrist.wm" "skinCluster6.ma[20]";
connectAttr "R_Wrist.wm" "skinCluster6.ma[24]";
connectAttr "R_Leg.liw" "skinCluster6.lw[2]";
connectAttr "R_Knee.liw" "skinCluster6.lw[3]";
connectAttr "R_Ankle1.liw" "skinCluster6.lw[4]";
connectAttr "R_Ankle2.liw" "skinCluster6.lw[5]";
connectAttr "R_Heel.liw" "skinCluster6.lw[6]";
connectAttr "R_Foot.liw" "skinCluster6.lw[7]";
connectAttr "L_Leg.liw" "skinCluster6.lw[8]";
connectAttr "L_Knee.liw" "skinCluster6.lw[9]";
connectAttr "L_Ankle1.liw" "skinCluster6.lw[10]";
connectAttr "L_Ankle2.liw" "skinCluster6.lw[11]";
connectAttr "L_Heel.liw" "skinCluster6.lw[12]";
connectAttr "L_Foot.liw" "skinCluster6.lw[13]";
connectAttr "L_Wrist.liw" "skinCluster6.lw[20]";
connectAttr "R_Wrist.liw" "skinCluster6.lw[24]";
connectAttr "R_Leg.obcc" "skinCluster6.ifcl[2]";
connectAttr "R_Knee.obcc" "skinCluster6.ifcl[3]";
connectAttr "R_Ankle1.obcc" "skinCluster6.ifcl[4]";
connectAttr "R_Ankle2.obcc" "skinCluster6.ifcl[5]";
connectAttr "R_Heel.obcc" "skinCluster6.ifcl[6]";
connectAttr "R_Foot.obcc" "skinCluster6.ifcl[7]";
connectAttr "L_Leg.obcc" "skinCluster6.ifcl[8]";
connectAttr "L_Knee.obcc" "skinCluster6.ifcl[9]";
connectAttr "L_Ankle1.obcc" "skinCluster6.ifcl[10]";
connectAttr "L_Ankle2.obcc" "skinCluster6.ifcl[11]";
connectAttr "L_Heel.obcc" "skinCluster6.ifcl[12]";
connectAttr "L_Foot.obcc" "skinCluster6.ifcl[13]";
connectAttr "L_Wrist.obcc" "skinCluster6.ifcl[20]";
connectAttr "R_Wrist.obcc" "skinCluster6.ifcl[24]";
connectAttr "bindPose1.msg" "skinCluster6.bp";
connectAttr "L_Wrist.msg" "skinCluster6.ptt";
connectAttr "groupParts12.og" "tweak6.ip[0].ig";
connectAttr "groupId12.id" "tweak6.ip[0].gi";
connectAttr "skinCluster6GroupId.msg" "skinCluster6Set.gn" -na;
connectAttr "FootShape.iog.og[0]" "skinCluster6Set.dsm" -na;
connectAttr "skinCluster6.msg" "skinCluster6Set.ub[0]";
connectAttr "tweak6.og[0]" "skinCluster6GroupParts.ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6GroupParts.gi";
connectAttr "groupId12.msg" "tweakSet6.gn" -na;
connectAttr "FootShape.iog.og[1]" "tweakSet6.dsm" -na;
connectAttr "tweak6.msg" "tweakSet6.ub[0]";
connectAttr "FootShapeOrig.w" "groupParts12.ig";
connectAttr "groupId12.id" "groupParts12.gi";
connectAttr "skinCluster7GroupParts.og" "skinCluster7.ip[0].ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7.ip[0].gi";
connectAttr "R_Leg.wm" "skinCluster7.ma[2]";
connectAttr "R_Knee.wm" "skinCluster7.ma[3]";
connectAttr "R_Heel.wm" "skinCluster7.ma[6]";
connectAttr "R_Foot.wm" "skinCluster7.ma[7]";
connectAttr "L_Leg.wm" "skinCluster7.ma[8]";
connectAttr "L_Knee.wm" "skinCluster7.ma[9]";
connectAttr "L_Heel.wm" "skinCluster7.ma[12]";
connectAttr "L_Foot.wm" "skinCluster7.ma[13]";
connectAttr "L_Arm.wm" "skinCluster7.ma[18]";
connectAttr "L_Elbow.wm" "skinCluster7.ma[19]";
connectAttr "L_Wrist.wm" "skinCluster7.ma[20]";
connectAttr "L_Hand.wm" "skinCluster7.ma[21]";
connectAttr "R_Arm.wm" "skinCluster7.ma[22]";
connectAttr "R_Elbow.wm" "skinCluster7.ma[23]";
connectAttr "R_Wrist.wm" "skinCluster7.ma[24]";
connectAttr "R_Hand.wm" "skinCluster7.ma[25]";
connectAttr "R_Leg.liw" "skinCluster7.lw[2]";
connectAttr "R_Knee.liw" "skinCluster7.lw[3]";
connectAttr "R_Heel.liw" "skinCluster7.lw[6]";
connectAttr "R_Foot.liw" "skinCluster7.lw[7]";
connectAttr "L_Leg.liw" "skinCluster7.lw[8]";
connectAttr "L_Knee.liw" "skinCluster7.lw[9]";
connectAttr "L_Heel.liw" "skinCluster7.lw[12]";
connectAttr "L_Foot.liw" "skinCluster7.lw[13]";
connectAttr "L_Arm.liw" "skinCluster7.lw[18]";
connectAttr "L_Elbow.liw" "skinCluster7.lw[19]";
connectAttr "L_Wrist.liw" "skinCluster7.lw[20]";
connectAttr "L_Hand.liw" "skinCluster7.lw[21]";
connectAttr "R_Arm.liw" "skinCluster7.lw[22]";
connectAttr "R_Elbow.liw" "skinCluster7.lw[23]";
connectAttr "R_Wrist.liw" "skinCluster7.lw[24]";
connectAttr "R_Hand.liw" "skinCluster7.lw[25]";
connectAttr "R_Leg.obcc" "skinCluster7.ifcl[2]";
connectAttr "R_Knee.obcc" "skinCluster7.ifcl[3]";
connectAttr "R_Heel.obcc" "skinCluster7.ifcl[6]";
connectAttr "R_Foot.obcc" "skinCluster7.ifcl[7]";
connectAttr "L_Leg.obcc" "skinCluster7.ifcl[8]";
connectAttr "L_Knee.obcc" "skinCluster7.ifcl[9]";
connectAttr "L_Heel.obcc" "skinCluster7.ifcl[12]";
connectAttr "L_Foot.obcc" "skinCluster7.ifcl[13]";
connectAttr "L_Arm.obcc" "skinCluster7.ifcl[18]";
connectAttr "L_Elbow.obcc" "skinCluster7.ifcl[19]";
connectAttr "L_Wrist.obcc" "skinCluster7.ifcl[20]";
connectAttr "L_Hand.obcc" "skinCluster7.ifcl[21]";
connectAttr "R_Arm.obcc" "skinCluster7.ifcl[22]";
connectAttr "R_Elbow.obcc" "skinCluster7.ifcl[23]";
connectAttr "R_Wrist.obcc" "skinCluster7.ifcl[24]";
connectAttr "R_Hand.obcc" "skinCluster7.ifcl[25]";
connectAttr "bindPose1.msg" "skinCluster7.bp";
connectAttr "L_Arm.msg" "skinCluster7.ptt";
connectAttr "groupParts14.og" "tweak7.ip[0].ig";
connectAttr "groupId14.id" "tweak7.ip[0].gi";
connectAttr "skinCluster7GroupId.msg" "skinCluster7Set.gn" -na;
connectAttr "HandShape.iog.og[0]" "skinCluster7Set.dsm" -na;
connectAttr "skinCluster7.msg" "skinCluster7Set.ub[0]";
connectAttr "tweak7.og[0]" "skinCluster7GroupParts.ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7GroupParts.gi";
connectAttr "groupId14.msg" "tweakSet7.gn" -na;
connectAttr "HandShape.iog.og[1]" "tweakSet7.dsm" -na;
connectAttr "tweak7.msg" "tweakSet7.ub[0]";
connectAttr "HandShapeOrig.w" "groupParts14.ig";
connectAttr "groupId14.id" "groupParts14.gi";
connectAttr "skinCluster8GroupParts.og" "skinCluster8.ip[0].ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8.ip[0].gi";
connectAttr "R_Leg.wm" "skinCluster8.ma[2]";
connectAttr "R_Knee.wm" "skinCluster8.ma[3]";
connectAttr "L_Leg.wm" "skinCluster8.ma[8]";
connectAttr "L_Knee.wm" "skinCluster8.ma[9]";
connectAttr "L_Arm.wm" "skinCluster8.ma[18]";
connectAttr "L_Elbow.wm" "skinCluster8.ma[19]";
connectAttr "L_Wrist.wm" "skinCluster8.ma[20]";
connectAttr "L_Hand.wm" "skinCluster8.ma[21]";
connectAttr "R_Arm.wm" "skinCluster8.ma[22]";
connectAttr "R_Elbow.wm" "skinCluster8.ma[23]";
connectAttr "R_Wrist.wm" "skinCluster8.ma[24]";
connectAttr "R_Hand.wm" "skinCluster8.ma[25]";
connectAttr "Jaw_Control.wm" "skinCluster8.ma[28]";
connectAttr "L_Jaw.wm" "skinCluster8.ma[29]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.wm" "skinCluster8.ma[30]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.wm" "skinCluster8.ma[31]"
		;
connectAttr "R_Jaw.wm" "skinCluster8.ma[32]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.wm" "skinCluster8.ma[33]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.wm" "skinCluster8.ma[34]"
		;
connectAttr "R_Leg.liw" "skinCluster8.lw[2]";
connectAttr "R_Knee.liw" "skinCluster8.lw[3]";
connectAttr "L_Leg.liw" "skinCluster8.lw[8]";
connectAttr "L_Knee.liw" "skinCluster8.lw[9]";
connectAttr "L_Arm.liw" "skinCluster8.lw[18]";
connectAttr "L_Elbow.liw" "skinCluster8.lw[19]";
connectAttr "L_Wrist.liw" "skinCluster8.lw[20]";
connectAttr "L_Hand.liw" "skinCluster8.lw[21]";
connectAttr "R_Arm.liw" "skinCluster8.lw[22]";
connectAttr "R_Elbow.liw" "skinCluster8.lw[23]";
connectAttr "R_Wrist.liw" "skinCluster8.lw[24]";
connectAttr "R_Hand.liw" "skinCluster8.lw[25]";
connectAttr "Jaw_Control.liw" "skinCluster8.lw[28]";
connectAttr "L_Jaw.liw" "skinCluster8.lw[29]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.liw" "skinCluster8.lw[30]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.liw" "skinCluster8.lw[31]"
		;
connectAttr "R_Jaw.liw" "skinCluster8.lw[32]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.liw" "skinCluster8.lw[33]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.liw" "skinCluster8.lw[34]"
		;
connectAttr "R_Leg.obcc" "skinCluster8.ifcl[2]";
connectAttr "R_Knee.obcc" "skinCluster8.ifcl[3]";
connectAttr "L_Leg.obcc" "skinCluster8.ifcl[8]";
connectAttr "L_Knee.obcc" "skinCluster8.ifcl[9]";
connectAttr "L_Arm.obcc" "skinCluster8.ifcl[18]";
connectAttr "L_Elbow.obcc" "skinCluster8.ifcl[19]";
connectAttr "L_Wrist.obcc" "skinCluster8.ifcl[20]";
connectAttr "L_Hand.obcc" "skinCluster8.ifcl[21]";
connectAttr "R_Arm.obcc" "skinCluster8.ifcl[22]";
connectAttr "R_Elbow.obcc" "skinCluster8.ifcl[23]";
connectAttr "R_Wrist.obcc" "skinCluster8.ifcl[24]";
connectAttr "R_Hand.obcc" "skinCluster8.ifcl[25]";
connectAttr "Jaw_Control.obcc" "skinCluster8.ifcl[28]";
connectAttr "L_Jaw.obcc" "skinCluster8.ifcl[29]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.obcc" "skinCluster8.ifcl[30]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.obcc" "skinCluster8.ifcl[31]"
		;
connectAttr "R_Jaw.obcc" "skinCluster8.ifcl[32]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.obcc" "skinCluster8.ifcl[33]"
		;
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.obcc" "skinCluster8.ifcl[34]"
		;
connectAttr "bindPose1.msg" "skinCluster8.bp";
connectAttr "L_Arm.msg" "skinCluster8.ptt";
connectAttr "groupParts16.og" "tweak8.ip[0].ig";
connectAttr "groupId16.id" "tweak8.ip[0].gi";
connectAttr "skinCluster8GroupId.msg" "skinCluster8Set.gn" -na;
connectAttr "ForeArmShape.iog.og[0]" "skinCluster8Set.dsm" -na;
connectAttr "skinCluster8.msg" "skinCluster8Set.ub[0]";
connectAttr "tweak8.og[0]" "skinCluster8GroupParts.ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8GroupParts.gi";
connectAttr "groupId16.msg" "tweakSet8.gn" -na;
connectAttr "ForeArmShape.iog.og[1]" "tweakSet8.dsm" -na;
connectAttr "tweak8.msg" "tweakSet8.ub[0]";
connectAttr "ForeArmShapeOrig.w" "groupParts16.ig";
connectAttr "groupId16.id" "groupParts16.gi";
connectAttr "skinCluster9GroupParts.og" "skinCluster9.ip[0].ig";
connectAttr "skinCluster9GroupId.id" "skinCluster9.ip[0].gi";
connectAttr "Spine_1.wm" "skinCluster9.ma[15]";
connectAttr "Spine_2.wm" "skinCluster9.ma[16]";
connectAttr "Chest.wm" "skinCluster9.ma[17]";
connectAttr "L_Arm.wm" "skinCluster9.ma[18]";
connectAttr "R_Arm.wm" "skinCluster9.ma[22]";
connectAttr "Neck.wm" "skinCluster9.ma[26]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.wm" "skinCluster9.ma[27]"
		;
connectAttr "Spine_1.liw" "skinCluster9.lw[15]";
connectAttr "Spine_2.liw" "skinCluster9.lw[16]";
connectAttr "Chest.liw" "skinCluster9.lw[17]";
connectAttr "L_Arm.liw" "skinCluster9.lw[18]";
connectAttr "R_Arm.liw" "skinCluster9.lw[22]";
connectAttr "Neck.liw" "skinCluster9.lw[26]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.liw" "skinCluster9.lw[27]"
		;
connectAttr "Spine_1.obcc" "skinCluster9.ifcl[15]";
connectAttr "Spine_2.obcc" "skinCluster9.ifcl[16]";
connectAttr "Chest.obcc" "skinCluster9.ifcl[17]";
connectAttr "L_Arm.obcc" "skinCluster9.ifcl[18]";
connectAttr "R_Arm.obcc" "skinCluster9.ifcl[22]";
connectAttr "Neck.obcc" "skinCluster9.ifcl[26]";
connectAttr "|Base_Control|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.obcc" "skinCluster9.ifcl[27]"
		;
connectAttr "bindPose1.msg" "skinCluster9.bp";
connectAttr "groupParts18.og" "tweak9.ip[0].ig";
connectAttr "groupId18.id" "tweak9.ip[0].gi";
connectAttr "skinCluster9GroupId.msg" "skinCluster9Set.gn" -na;
connectAttr "Crystal1Shape.iog.og[0]" "skinCluster9Set.dsm" -na;
connectAttr "skinCluster9.msg" "skinCluster9Set.ub[0]";
connectAttr "tweak9.og[0]" "skinCluster9GroupParts.ig";
connectAttr "skinCluster9GroupId.id" "skinCluster9GroupParts.gi";
connectAttr "groupId18.msg" "tweakSet9.gn" -na;
connectAttr "Crystal1Shape.iog.og[1]" "tweakSet9.dsm" -na;
connectAttr "tweak9.msg" "tweakSet9.ub[0]";
connectAttr "Crystal1ShapeOrig.w" "groupParts18.ig";
connectAttr "groupId18.id" "groupParts18.gi";
connectAttr "skinCluster10GroupParts.og" "skinCluster10.ip[0].ig";
connectAttr "skinCluster10GroupId.id" "skinCluster10.ip[0].gi";
connectAttr "Base_Control.wm" "skinCluster10.ma[0]";
connectAttr "Spine_Base.wm" "skinCluster10.ma[14]";
connectAttr "Spine_1.wm" "skinCluster10.ma[15]";
connectAttr "Spine_2.wm" "skinCluster10.ma[16]";
connectAttr "Chest.wm" "skinCluster10.ma[17]";
connectAttr "L_Arm.wm" "skinCluster10.ma[18]";
connectAttr "R_Arm.wm" "skinCluster10.ma[22]";
connectAttr "Base_Control.liw" "skinCluster10.lw[0]";
connectAttr "Spine_Base.liw" "skinCluster10.lw[14]";
connectAttr "Spine_1.liw" "skinCluster10.lw[15]";
connectAttr "Spine_2.liw" "skinCluster10.lw[16]";
connectAttr "Chest.liw" "skinCluster10.lw[17]";
connectAttr "L_Arm.liw" "skinCluster10.lw[18]";
connectAttr "R_Arm.liw" "skinCluster10.lw[22]";
connectAttr "Base_Control.obcc" "skinCluster10.ifcl[0]";
connectAttr "Spine_Base.obcc" "skinCluster10.ifcl[14]";
connectAttr "Spine_1.obcc" "skinCluster10.ifcl[15]";
connectAttr "Spine_2.obcc" "skinCluster10.ifcl[16]";
connectAttr "Chest.obcc" "skinCluster10.ifcl[17]";
connectAttr "L_Arm.obcc" "skinCluster10.ifcl[18]";
connectAttr "R_Arm.obcc" "skinCluster10.ifcl[22]";
connectAttr "bindPose1.msg" "skinCluster10.bp";
connectAttr "groupParts20.og" "tweak10.ip[0].ig";
connectAttr "groupId20.id" "tweak10.ip[0].gi";
connectAttr "skinCluster10GroupId.msg" "skinCluster10Set.gn" -na;
connectAttr "Crystal2Shape.iog.og[0]" "skinCluster10Set.dsm" -na;
connectAttr "skinCluster10.msg" "skinCluster10Set.ub[0]";
connectAttr "tweak10.og[0]" "skinCluster10GroupParts.ig";
connectAttr "skinCluster10GroupId.id" "skinCluster10GroupParts.gi";
connectAttr "groupId20.msg" "tweakSet10.gn" -na;
connectAttr "Crystal2Shape.iog.og[1]" "tweakSet10.dsm" -na;
connectAttr "tweak10.msg" "tweakSet10.ub[0]";
connectAttr "Crystal2ShapeOrig.w" "groupParts20.ig";
connectAttr "groupId20.id" "groupParts20.gi";
connectAttr "skinCluster11GroupParts.og" "skinCluster11.ip[0].ig";
connectAttr "skinCluster11GroupId.id" "skinCluster11.ip[0].gi";
connectAttr "Base_Control.wm" "skinCluster11.ma[0]";
connectAttr "Waist.wm" "skinCluster11.ma[1]";
connectAttr "Spine_Base.wm" "skinCluster11.ma[14]";
connectAttr "Spine_1.wm" "skinCluster11.ma[15]";
connectAttr "Spine_2.wm" "skinCluster11.ma[16]";
connectAttr "Base_Control.liw" "skinCluster11.lw[0]";
connectAttr "Waist.liw" "skinCluster11.lw[1]";
connectAttr "Spine_Base.liw" "skinCluster11.lw[14]";
connectAttr "Spine_1.liw" "skinCluster11.lw[15]";
connectAttr "Spine_2.liw" "skinCluster11.lw[16]";
connectAttr "Base_Control.obcc" "skinCluster11.ifcl[0]";
connectAttr "Waist.obcc" "skinCluster11.ifcl[1]";
connectAttr "Spine_Base.obcc" "skinCluster11.ifcl[14]";
connectAttr "Spine_1.obcc" "skinCluster11.ifcl[15]";
connectAttr "Spine_2.obcc" "skinCluster11.ifcl[16]";
connectAttr "bindPose1.msg" "skinCluster11.bp";
connectAttr "groupParts22.og" "tweak11.ip[0].ig";
connectAttr "groupId22.id" "tweak11.ip[0].gi";
connectAttr "skinCluster11GroupId.msg" "skinCluster11Set.gn" -na;
connectAttr "Crystal3Shape.iog.og[0]" "skinCluster11Set.dsm" -na;
connectAttr "skinCluster11.msg" "skinCluster11Set.ub[0]";
connectAttr "tweak11.og[0]" "skinCluster11GroupParts.ig";
connectAttr "skinCluster11GroupId.id" "skinCluster11GroupParts.gi";
connectAttr "groupId22.msg" "tweakSet11.gn" -na;
connectAttr "Crystal3Shape.iog.og[1]" "tweakSet11.dsm" -na;
connectAttr "tweak11.msg" "tweakSet11.ub[0]";
connectAttr "Crystal3ShapeOrig.w" "groupParts22.ig";
connectAttr "groupId22.id" "groupParts22.gi";
connectAttr "CrystalsNRocks:pCube1SG.pa" ":renderPartition.st" -na;
connectAttr "CrystalsNRocks:pCube2SG.pa" ":renderPartition.st" -na;
connectAttr "CrystalsNRocks:pSolid6SG.pa" ":renderPartition.st" -na;
connectAttr "CrystalsNRocks:pCube1SG1.pa" ":renderPartition.st" -na;
connectAttr "CrystalsNRocks:lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "CrystalsNRocks:lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "CrystalsNRocks:lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "TorsoShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "HeadShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "JawShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ArmsShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LegShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "FootShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "HandShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ForeArmShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "FLoorPlaneShape.iog" ":initialShadingGroup.dsm" -na;
// End of Planet2_Boss_Rig_weights.ma
