//Maya ASCII 2016 scene
//Name: Planet2_Boss_Charge.ma
//Last modified: Thu, Feb 25, 2016 06:43:24 PM
//Codeset: UTF-8
requires maya "2016";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2016.0 - 3.13.1.8 ";
requires -nodeType "gameFbxExporter" "gameFbxExporter" "1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201507301600-967122";
fileInfo "osv" "Mac OS X 10.9.5";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "0BB6CD86-1D4B-14D1-091D-BDA8D7298ED8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -205.22722541413285 18.955295009433176 86.146867050546206 ;
	setAttr ".r" -type "double3" -369.33835255945263 284.59999999963719 0 ;
	setAttr ".rp" -type "double3" 0 -1.0658141036401503e-14 -2.8421709430404007e-14 ;
	setAttr ".rpt" -type "double3" -2.9440156540572718e-14 -3.680585122052255e-15 1.8703929024680332e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8FA39189-A94F-C984-E5FD-B4A2C2CD6ECE";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 222.68539481811169;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 13.268299738180504 -39.956577303189896 -17.584502395700326 ;
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
	setAttr ".ow" 159.55927738071438;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "A83813B6-9444-59B2-D615-4A8688C18AA5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 20.814352814058623 164.38003704537468 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "72A3E2EB-E84B-942A-7DA5-6AA85F5FD693";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30.509898648779131;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "BD63CD5B-5245-FA6D-321E-19BD4748DFE1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 187.57632370046582 -37.763551070781574 -13.159677990746935 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D2489DC2-A542-5984-AB79-77AE71AEFE88";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 59.885559142041359;
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
createNode transform -n "Mesh";
	rename -uid "B7EA6E30-4407-2A27-40C8-569FF170809D";
createNode transform -n "Torso" -p "Mesh";
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
	rename -uid "AD1C24B2-48C2-5016-8B0E-95AA2AF541E3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Head" -p "Mesh";
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
createNode mesh -n "HeadShape" -p "|Mesh|Head";
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
createNode mesh -n "HeadShapeOrig" -p "|Mesh|Head";
	rename -uid "571F7798-4A85-3A87-BC58-2DA37F411E87";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Jaw" -p "Mesh";
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
	rename -uid "4AAF4B5B-4303-1C8D-25D3-99A36ADED4B2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Arms" -p "Mesh";
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
	rename -uid "8FCF3FB8-46AF-BF86-D46E-4B88D953C40C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Leg" -p "Mesh";
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
	rename -uid "9594FAF9-47FE-06BA-7477-18B21E8751D6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Foot" -p "Mesh";
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
	setAttr -av ".iog[0].og[0].gid";
	setAttr -av ".iog[0].og[1].gid";
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
	rename -uid "1CF49333-45C9-E94E-2017-7093F083F006";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Hand" -p "Mesh";
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
	setAttr -av ".iog[0].og[2].gid";
	setAttr -av ".iog[0].og[3].gid";
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
	rename -uid "DA3D4BD6-4082-70C5-74E4-499763E8CFE8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "ForeArm" -p "Mesh";
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
	setAttr -av ".iog[0].og[0].gid";
	setAttr -av ".iog[0].og[1].gid";
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
	rename -uid "43CCBAF3-4FEF-990E-466E-DA9DEEF3A94B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Crystal1" -p "Mesh";
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
	rename -uid "95C82990-4997-03A6-86DF-01AE25C7C8B9";
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
createNode transform -n "Crystal2" -p "Mesh";
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
	rename -uid "8E6D40F7-499D-2129-9ED8-1987B19AFDA6";
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
createNode transform -n "Crystal3" -p "Mesh";
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
	rename -uid "640BC154-400D-B2A1-0390-F5B19DE55088";
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
		 -0.85065079 0.89377451 0.4485167 -1.2305803e-07 0.89377445 0.44851664 -1.2305802e-07
		 0.89377445 0.44851664 -1.2305802e-07 0.89377451 0.4485167 0 0.89377451 0.4485167
		 0 0.89377445 0.44851679 0 0.89377445 0.44851664 1.2305802e-07 0.89377445 0.44851664
		 1.2305802e-07 0.89377451 0.4485167 1.2305803e-07 0.27574077 0.44761625 0.85065079
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
createNode joint -n "Joint_Base";
	rename -uid "2537B7B3-4C6B-83FC-E270-6EBB7D75B826";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -8.3935626233273428 -28.545776100389716 1;
	setAttr ".radi" 0.5;
createNode joint -n "Spine_Base" -p "Joint_Base";
	rename -uid "557AA7C1-2E48-1122-8405-A6B29EF7EF06";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 3.814074834290325 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 0.99778515785660904 -0.0665190105237735 0
		 -2.7755575615628909e-16 0.066519010523773403 0.99778515785660904 0 1.0000000000000002 -2.7755575615628909e-16 2.2204460492503131e-16 0
		 0 -6.9334929483625825 -26.714723478669875 1;
	setAttr ".radi" 0.93121781047721419;
createNode joint -n "Spine_1" -p "Spine_Base";
	rename -uid "9437AD8D-A546-1E94-008C-F0B54026160D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 1.5230424407012987e-14 22.351888500936337 ;
	setAttr ".bps" -type "matrix" 9.9808677474286579e-17 0.94811403619211154 0.31793045525004904 0
		 4.6360868506891735e-16 0.31793045525004909 -0.94811403619211188 0 -1.0000000000000002 3.1649100759363242e-16 -3.3815508688996608e-16 0
		 -1.0366016566483336e-15 2.382705010714071 -27.335803342608312 1;
	setAttr ".radi" 1.391348957149545;
createNode joint -n "Spine_2" -p "Spine_1";
	rename -uid "54318436-2746-7579-6C52-CAB222CBE15B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.5382244160049265e-15 7.0527273792032018e-15 -53.28416753493547 ;
	setAttr ".bps" -type "matrix" -3.1196329094369763e-16 0.3119704441341708 0.95009180713588348 0
		 3.5717459326507897e-16 0.95009180713588326 -0.31197044413417102 0 -1.0000000000000002 3.1649100759363242e-16 -3.3815508688996608e-16 0
		 -4.0634632049514758e-15 19.669427890334092 -21.539057945849507 1;
	setAttr ".radi" 1.5809890170432397;
createNode joint -n "Chest" -p "Spine_2";
	rename -uid "06AEEDAD-E049-C59B-F5B9-1B87DC0C8D56";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.6985016460743172e-15 1.8006758206357396e-14 -29.248221376357872 ;
	setAttr ".bps" -type "matrix" -4.4670487661180016e-16 -0.19201160638565634 0.98139265486002114 0
		 1.5921538299339398e-16 0.98139265486002092 0.19201160638565629 0 -1.0000000000000002 3.1649100759363242e-16 -3.3815508688996608e-16 0
		 -8.1995496823082683e-15 26.501306393656982 -0.73288250391164667 1;
	setAttr ".radi" 1.2011558321374305;
createNode joint -n "L_Arm" -p "Chest";
	rename -uid "40538C2A-364F-DD82-74B7-D2908EBAFE21";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.0096171320636402e-14 4.2155069140466496e-14 -53.043522815319228 ;
	setAttr ".bps" -type "matrix" -3.9579043863818704e-16 -0.89966239045464047 0.43658628379902475 0
		 -2.6123689183017051e-16 0.43658628379902464 0.89966239045464058 0 -1.0000000000000002 3.1649100759363242e-16 -3.3815508688996608e-16 0
		 17.87721672342548 24.613094426291752 1.021405182655144e-14 1;
	setAttr ".radi" 2;
createNode joint -n "L_Elbow" -p "L_Arm";
	rename -uid "F4C4037D-B147-159A-EF19-EF9F789A1E1F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 6.1593210229889268e-16 -1.8112025844908901e-14 -3.8953914583243781 ;
	setAttr ".bps" -type "matrix" -3.7712892299432378e-16 -0.92724344988449148 0.37445905603457774 0
		 -2.8752140861445105e-16 0.37445905603457763 0.9272434498844917 0 -1.0000000000000002 3.1649100759363242e-16 -3.3815508688996608e-16 0
		 23.906602239388455 -4.1745318069612374 13.969999068450472 1;
	setAttr ".radi" 2;
createNode joint -n "L_Wrist" -p "L_Elbow";
	rename -uid "BB08BC9A-1E44-5221-80E5-C4B54F1C88F4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 -3.5899056552338384e-14 -34.795149213703837 ;
	setAttr ".bps" -type "matrix" -1.4562495807591045e-16 -0.97513285579145981 -0.22162110358896914 0
		 5.737829230158603e-16 0.22162110358896903 -0.97513285579146025 0 1.0000000000000002 -3.4363176510700593e-16 4.5757441994880899e-16 0
		 23.906602239388459 -35.438682245699304 26.59574936355499 1;
	setAttr ".radi" 0.83039144699950307;
createNode joint -n "L_Hand" -p "L_Wrist";
	rename -uid "BBD698A0-A443-9BCD-FE9B-72977A0925B6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 77.195733934713161 -89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -7.889801871316359e-16 4.1328562659829289e-16 0
		 7.1325529571241657e-16 1.0000000000000002 -7.4940054162198047e-16 0 -5.2724101640594624e-16 9.1593399531575415e-16 1.0000000000000007 0
		 23.906602239388459 -42.642542502830274 24.958508396025223 1;
	setAttr ".radi" 0.83039144699950307;
createNode joint -n "R_Arm" -p "Chest";
	rename -uid "45B17439-C343-6274-F7FF-0ABD88272F38";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.0013513741641055e-13 -4.997303314856703e-14 126.95647718468079 ;
	setAttr ".bps" -type "matrix" 3.9579043863818704e-16 0.89966239045464025 -0.43658628379902498 0
		 2.6123689183017041e-16 -0.43658628379902475 -0.89966239045464036 0 -1.0000000000000002 3.1649100759363242e-16 -3.3815508688996608e-16 0
		 -17.877200000000006 24.613099999999992 1.021405182655144e-14 1;
	setAttr ".radi" 2;
createNode joint -n "R_Elbow" -p "R_Arm";
	rename -uid "DE39BB0D-BD4E-B1C1-EF57-F39E4E9B84E4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.6782391348274862e-15 -4.9350099581564908e-14 -3.8953914583243781 ;
	setAttr ".bps" -type "matrix" 3.7712892299432378e-16 0.92724344988449126 -0.37445905603457796 0
		 2.8752140861445095e-16 -0.37445905603457774 -0.92724344988449148 0 -1.0000000000000002 3.1649100759363242e-16 -3.3815508688996608e-16 0
		 -23.906600000000015 -4.1745300000000221 13.970000000000018 1;
	setAttr ".radi" 2;
createNode joint -n "R_Wrist" -p "R_Elbow";
	rename -uid "77A2A660-D740-AD96-70E8-6FACBC2523B7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99999999999997 -3.4335955008199545e-14 -34.795149213703858 ;
	setAttr ".bps" -type "matrix" 1.4562495807591038e-16 0.97513285579145959 0.22162110358896914 0
		 1.1523564666367321e-16 -0.22162110358896919 0.97513285579145981 0 1.0000000000000002 -1.9093070930133466e-16 -2.1431022559614123e-16 0
		 -23.906600000000012 -35.438699999999997 26.595700000000015 1;
	setAttr ".radi" 0.83039144699950307;
createNode joint -n "R_Hand" -p "R_Wrist";
	rename -uid "2ED7E6EB-4D40-2504-1EDA-F9AE45D02F9D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 77.195733934713161 -89.999999999999943 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 5.5459731209901241e-16 1.20547181953841e-17 0
		 6.0517993594966972e-16 -1 6.3837823915946481e-16 0 7.7400975786027423e-17 -7.2164496600635175e-16 -1.0000000000000002 0
		 -23.906600000000008 -42.642500000000005 24.958500000000019 1;
	setAttr ".radi" 0.83039144699950307;
createNode joint -n "Neck" -p "Chest";
	rename -uid "A7D8C57E-9B4A-A98C-FCBC-BDA35E777EC0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0390056202148887 ;
	setAttr ".bps" -type "matrix" -4.5208689896811933e-16 -0.22680783547492975 0.97393952880411316 0
		 1.4322088099116759e-16 0.97393952880411294 0.22680783547492969 0 -1.0000000000000002 3.1649100759363242e-16 -3.3815508688996608e-16 0
		 -1.041342535375257e-14 26.874771766974849 12.923585769274387 1;
	setAttr ".radi" 1.0076484419379135;
createNode joint -n "Head" -p "Neck";
	rename -uid "9D0A2A55-0548-DABA-9080-5FAE1C411DD6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -13.109208198154217 89.999999999999929 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -5.7996289069587366e-16 1.5307217763218294e-15 0
		 4.7794772108182553e-16 1.0000000000000002 5.5511151231257837e-16 0 -1.5180447079722603e-15 -6.3837823915946462e-16 1.0000000000000002 0
		 -1.7703845138156386e-14 24.421950141735525 23.456290395302148 1;
	setAttr ".radi" 1.0076484419379135;
createNode joint -n "Jaw_Control" -p "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head";
	rename -uid "098E417E-3E4F-D671-E5DE-6E93DB060E04";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.0215269473903364e-14 8.7703897392009249e-14 3.0048871229617073e-14 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -5.7996289069587366e-16 1.5307217763218294e-15 0
		 4.7794772108182553e-16 1.0000000000000002 5.5511151231257837e-16 0 -1.5180447079722603e-15 -6.3837823915946462e-16 1.0000000000000002 0
		 -1.1544471371424046e-14 22.084860947465049 23.722938791652251 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_Jaw" -p "Jaw_Control";
	rename -uid "9529704B-EE4B-8318-5C1F-81A4F12990CD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.000000000000014 1.4688007143858564 -89.999999999999929 ;
	setAttr ".bps" -type "matrix" 5.603214739135451e-16 -0.99967143090948141 -0.025632600792551925 0
		 1.3632635148436217e-15 0.025632600792552009 -0.99967143090948141 0 1.0000000000000002 4.7474898269802535e-16 1.3086771713967986e-15 0
		 11.234015250213861 20.814859516383553 22.734872270231762 1;
	setAttr ".radi" 1.0305769856901552;
createNode joint -n "joint2" -p "L_Jaw";
	rename -uid "FEEEDDF9-0E42-06F9-5D05-7AA79F50A460";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.5444437451708134e-14 180.00000000000003 85.498496669437145 ;
	setAttr ".bps" -type "matrix" -1.0814106641329561e-15 0.052905933795233701 0.99859950038504164 0
		 -4.5159695441644255e-16 0.99859950038504164 -0.052905933795233784 0 -1.0000000000000002 -4.5773313661034375e-16 -9.8750307649180678e-16 0
		 12.439122875271513 10.606578577010252 23.462050576416544 1;
	setAttr ".radi" 1.5767611696418058;
createNode joint -n "joint3" -p "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2";
	rename -uid "E215E818-7240-C1AC-E240-AC8BCF97692D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.0327026161769961 89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 4.9056641752255832e-16 1.5416536010143862e-15 0
		 -5.3246366272141976e-16 1.0000000000000002 5.6898930012039273e-16 0 -1.6111155026543182e-15 -6.5919492087118699e-16 1.0000000000000002 0
		 13.817678419107818 9.2960938722985791 43.822894942597451 1;
	setAttr ".radi" 1.5767611696418058;
createNode joint -n "R_Jaw" -p "Jaw_Control";
	rename -uid "16580062-2747-0410-95F0-98805A4E267F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000028 -1.468800714385837 90.000000000000014 ;
	setAttr ".bps" -type "matrix" 2.1683464332406522e-16 0.99967143090948163 0.025632600792551599 0
		 -1.0301966074560745e-15 -0.025632600792551787 0.99967143090948163 0 1.0000000000000002 -5.2445173946461544e-16 8.6458796154673524e-16 0
		 -11.234000000000018 20.814900000000012 22.734900000000017 1;
	setAttr ".radi" 1.0305769856901552;
createNode joint -n "joint2" -p "R_Jaw";
	rename -uid "FDC4F6CC-DA4B-E12A-F03D-1E8D9CCB0481";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.5444437451708134e-14 180 85.498496669437117 ;
	setAttr ".bps" -type "matrix" 8.8753573226381426e-16 -0.052905933795234603 -0.99859950038504186 0
		 -2.9702100928829887e-16 -0.99859950038504186 0.052905933795234783 0 -1.0000000000000002 5.3093084771243904e-16 -7.4229479336906647e-16 0
		 -12.439100000000016 10.606600000000004 23.462100000000007 1;
	setAttr ".radi" 1.5767611696418058;
createNode joint -n "joint3" -p "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2";
	rename -uid "7F0BC560-7644-460F-BCEF-C9B541C5BAD9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.0327026161767399 89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 1 -5.6270869122286384e-16 7.691034441432929e-17 0 -2.7393525345078115e-16 -1.0000000000000004 4.891920202254596e-15 0
		 2.3587309789062169e-16 -4.7045700668491008e-15 -1.0000000000000002 0 -13.817700000000041 9.2960899999999906 43.822900000000004 1;
	setAttr ".radi" 1.5767611696418058;
createNode joint -n "Waist" -p "Joint_Base";
	rename -uid "CF670255-1045-2E1A-FBDD-00BD51C52373";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -10.073167432874989 -29.970996150370606 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_Leg" -p "Waist";
	rename -uid "5DDA08B5-D64C-6BC7-0791-E783C4BD5A38";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.000000000000156 56.051457026665474 89.999999999999929 ;
	setAttr ".bps" -type "matrix" 6.6613381477509392e-16 0.55844812393947396 -0.8295394462401906 0
		 1.7763568394002509e-15 -0.8295394462401906 -0.55844812393947396 0 -1 -1.1102230246251567e-15 -1.5543122344752192e-15 0
		 -11.2157 -12.370399999999998 -31.660099999999996 1;
	setAttr ".radi" 1.8247393464182324;
createNode joint -n "R_Knee" -p "R_Leg";
	rename -uid "7DE33EB7-944C-2326-728C-2E9F1AA3E26C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.0355549961366507e-13 179.99999999999991 47.629468332653865 ;
	setAttr ".bps" -type "matrix" -3.0656632803680726e-16 0.2365146893961711 0.97162791319508379 0
		 7.0498580808794701e-16 -0.97162791319508357 0.23651468939617126 0 1 7.6615746429748561e-16 1.4085371637235137e-16 0
		 -14.952099999999996 -27.231600000000007 -9.5846599999999995 1;
	setAttr ".radi" 1.615767856741372;
createNode joint -n "R_Ankle1" -p "R_Knee";
	rename -uid "429A1483-4243-C08E-009F-C6AFCA5CE133";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.4787793536106945e-06 -3.2155983237744409e-14 -64.118605913299959 ;
	setAttr ".bps" -type "matrix" -7.6809459262285827e-16 0.97741416543986781 0.21133279252753737 0
		 2.5809568662935632e-08 -0.21133279252753734 0.97741416543986781 0 0.99999999999999967 5.454408978882079e-09 -2.5226637842997806e-08 0
		 -12.09489999999999 -32.570099999999996 -31.515799999999999 1;
	setAttr ".radi" 0.73078558645810843;
createNode joint -n "R_Ankle2" -p "R_Ankle1";
	rename -uid "4BBBEF0E-914A-E33D-2D0A-1FB24361CBE8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999797045828 -7.9099130735219582e-07 -32.336772155628829 ;
	setAttr ".bps" -type "matrix" -1.3805402762730834e-08 0.93887631588660891 -0.34425464915842319 0
		 1.3615198144544187e-08 -0.3442546491584228 -0.93887631588660903 0 -0.99999999999999978 -1.7648660954342147e-08 -8.030412999166029e-09 0
		 -12.094899999999985 -37.908600000000007 -32.670000000000002 1;
	setAttr ".radi" 0.68674005575896402;
createNode joint -n "R_Heel" -p "R_Ankle2";
	rename -uid "40690817-A044-BF8E-4F83-41A9A5E75A1B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.9553813197607491e-06 -4.4260857425399917e-07 68.875936172112134 ;
	setAttr ".bps" -type "matrix" 7.7249776337150488e-09 0.017238817250843974 -0.9998514005489979 0
		 -1.6343368975494799e-08 -0.99985140054899768 -0.01723881725084386 0 -0.99999999999999978 1.6474109828865852e-08 -7.442089364972822e-09 0
		 -12.094899999999983 -42.237099999999998 -31.082900000000006 1;
	setAttr ".radi" 1.3141062740773242;
createNode joint -n "R_Foot" -p "R_Heel";
	rename -uid "91F50032-2D44-5400-CD1B-DDBC84F12A64";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.98776039964064355 89.999998964259333 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999967 -1.6162482267249487e-08 -1.0632309108148071e-08 0
		 -1.6162482276970186e-08 -1.0000000000000002 1.5479522012819364e-14 0 -1.0632309067137476e-08 -1.5068420925501503e-14 -1.0000000000000004 0
		 -14.182899999999986 -42.525700000000001 -14.345999999999997 1;
	setAttr ".radi" 1.3141062740773242;
createNode joint -n "L_Leg" -p "Waist";
	rename -uid "6060105B-3E47-790B-5C63-00B9E687F708";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999943 -56.05145702666546 -89.999999999999943 ;
	setAttr ".bps" -type "matrix" 3.3306690738754696e-16 -0.55844812393947407 0.82953944624019038 0
		 5.5511151231257827e-17 0.82953944624019038 0.55844812393947407 0 -1 -1.6653345369377348e-16 3.3306690738754696e-16 0
		 11.215709518339846 -12.370374236854579 -31.660054360075975 1;
	setAttr ".radi" 1.8247393464182324;
createNode joint -n "L_Knee" -p "L_Leg";
	rename -uid "1150C512-DC4F-B67E-F07A-749D799CC209";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.0888874903416268e-14 179.99999999999997 47.629468332653879 ;
	setAttr ".bps" -type "matrix" 3.0108085572711794e-16 -0.23651468939617132 -0.97162791319508346 0
		 -2.0866030026469606e-16 0.97162791319508346 -0.23651468939617132 0 1 3.005317709576873e-16 2.1741266623718104e-16 0
		 14.952138770755806 -27.231587613304683 -9.5846597329219279 1;
	setAttr ".radi" 1.615767856741372;
createNode joint -n "L_Ankle1" -p "L_Knee";
	rename -uid "3FDCEA32-AC4A-1BF8-CBDB-D2B67D7E3497";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.4405257512423932e-14 2.3000223571501195e-14 -64.118605913299945 ;
	setAttr ".bps" -type "matrix" 3.191562820351026e-16 -0.97741416543986748 -0.21133279252753767 0
		 1.7980008406409818e-16 0.21133279252753767 -0.97741416543986748 0 1 3.005317709576873e-16 2.1741266623718104e-16 0
		 12.094869342437711 -32.570081738825607 -31.515770735061896 1;
	setAttr ".radi" 0.73078558645810843;
createNode joint -n "L_Ankle2" -p "L_Ankle1";
	rename -uid "9AD20654-E146-192B-965C-249FDF14A6DE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999997 2.0243626405302544e-14 -32.33677215562885 ;
	setAttr ".bps" -type "matrix" 1.7348699911757825e-16 -0.93887631588660858 0.34425464915842302 0
		 2.4392242240752961e-16 0.34425464915842302 0.93887631588660858 0 -1 -1.0549296040736681e-16 3.1451136253642024e-16 0
		 12.094869342437711 -37.908575864346524 -32.670039735174512 1;
	setAttr ".radi" 0.68674005575896402;
createNode joint -n "L_Heel" -p "L_Ankle2";
	rename -uid "8A58047A-3B4E-4E05-409C-3A927CA87AC2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.8714737004034994e-14 -2.7293367797036637e-14 68.875936172112077 ;
	setAttr ".bps" -type "matrix" 2.9005412453111158e-16 -0.017238817250844529 0.99985140054899746 0
		 -7.3922201390856463e-17 0.99985140054899746 0.017238817250844529 0 -1 -1.0549296040736681e-16 3.1451136253642024e-16 0
		 12.094869342437711 -42.237084614768897 -31.082919860019647 1;
	setAttr ".radi" 1.3141062740773242;
createNode joint -n "L_Foot" -p "L_Heel";
	rename -uid "A054E841-754C-727D-64DC-B39AE2C5C182";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.98776039963977602 89.999999999999929 0 ;
	setAttr ".bps" -type "matrix" 1 8.8267921761093164e-17 6.845408789474659e-16 0 -5.9829448402213454e-17 0.99999999999999989 3.4000580129145419e-16 0
		 -7.1046403083575265e-16 -3.434752482434079e-16 1 0 14.182873924670167 -42.525651864797062 -14.346019358386513 1;
	setAttr ".radi" 1.3141062740773242;
createNode transform -n "FloorPlane";
	rename -uid "5AF825EC-4340-A18D-8679-38AD7890F1E3";
	setAttr ".t" -type "double3" 0 -44.008577879960853 0 ;
	setAttr ".s" -type "double3" 215.08116568991375 1 215.08116568991375 ;
createNode mesh -n "FloorPlaneShape" -p "FloorPlane";
	rename -uid "7AB17242-48AB-DF6E-FB45-7DAB5B52A3D9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "imagePlane1";
	rename -uid "B7BF1BE3-6843-3966-E3C9-9EA4EFDE9B57";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 6.7437342235755509 -8.8310805308727467 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 10.929622942584553 10.929622942584553 1 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "B20A7502-4040-891B-CC8F-378B6CD533C2";
	setAttr -k off ".v";
	setAttr ".fc" 51;
	setAttr ".imn" -type "string" "/Users/wer29/Desktop/WalkRef_1.jpg";
	setAttr ".cov" -type "short2" 1920 1080 ;
	setAttr ".dlc" no;
	setAttr ".w" 19.2;
	setAttr ".h" 10.799999999999999;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "imagePlane2";
	rename -uid "71128E5C-C347-4DAB-28F4-45977FF48487";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 6.744 -8.831 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 10.93 10.93 1 ;
createNode imagePlane -n "imagePlaneShape2" -p "imagePlane2";
	rename -uid "059A94EC-464D-B59D-4D87-D8AED2915673";
	setAttr -k off ".v";
	setAttr ".fc" 51;
	setAttr ".imn" -type "string" "/Users/wer29/Desktop/WalkRef_2.jpg";
	setAttr ".cov" -type "short2" 1920 1080 ;
	setAttr ".dlc" no;
	setAttr ".w" 19.2;
	setAttr ".h" 10.799999999999999;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "imagePlane3";
	rename -uid "D970AD8F-F448-35B5-2EB1-06A69FCD5ABB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 6.744 -8.831 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 10.93 10.93 1 ;
createNode imagePlane -n "imagePlaneShape3" -p "imagePlane3";
	rename -uid "3532E78A-A74B-5653-0265-BEB93ED456A7";
	setAttr -k off ".v";
	setAttr ".fc" 51;
	setAttr ".imn" -type "string" "/Users/wer29/Desktop/WalkRef_3.jpg";
	setAttr ".cov" -type "short2" 1920 1080 ;
	setAttr ".dlc" no;
	setAttr ".w" 19.2;
	setAttr ".h" 10.799999999999999;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "imagePlane4";
	rename -uid "2A9F8180-8B4D-5993-EBAB-4B979BB8FB37";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 6.744 -8.831 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 10.93 10.93 1 ;
createNode imagePlane -n "imagePlaneShape4" -p "imagePlane4";
	rename -uid "5E028D1A-0142-06B6-0DA9-E8A9291AFA2D";
	setAttr -k off ".v";
	setAttr ".fc" 51;
	setAttr ".imn" -type "string" "/Users/wer29/Desktop/WalkRef_4.jpg";
	setAttr ".cov" -type "short2" 1920 1080 ;
	setAttr ".dlc" no;
	setAttr ".w" 19.2;
	setAttr ".h" 10.799999999999999;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "imagePlane5";
	rename -uid "4DA2D936-9D4D-70E0-F0B0-22B7C08E8673";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 6.744 -8.831 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 10.93 10.93 1 ;
createNode imagePlane -n "imagePlaneShape5" -p "imagePlane5";
	rename -uid "6BD0494E-DA49-9118-FE52-569C3D62280F";
	setAttr -k off ".v";
	setAttr ".fc" 51;
	setAttr ".imn" -type "string" "/Users/wer29/Desktop/WalkRef_5.jpg";
	setAttr ".cov" -type "short2" 1920 1080 ;
	setAttr ".dlc" no;
	setAttr ".w" 19.2;
	setAttr ".h" 10.799999999999999;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "imagePlane6";
	rename -uid "884DAEBE-7347-06B0-1E0A-759DA3E2B8C6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 6.744 -8.831 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 10.93 10.93 1 ;
createNode imagePlane -n "imagePlaneShape6" -p "imagePlane6";
	rename -uid "1DB7E5E8-1940-B35C-B288-A7B4E0E5FA4B";
	setAttr -k off ".v";
	setAttr ".fc" 51;
	setAttr ".imn" -type "string" "/Users/wer29/Desktop/WalkRef_6.jpg";
	setAttr ".cov" -type "short2" 1920 1080 ;
	setAttr ".dlc" no;
	setAttr ".w" 19.2;
	setAttr ".h" 10.799999999999999;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "imagePlane7";
	rename -uid "BE3945F0-994F-22DE-D5DD-9590896CEB4B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 6.744 -8.831 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 10.93 10.93 1 ;
createNode imagePlane -n "imagePlaneShape7" -p "imagePlane7";
	rename -uid "7E145AF5-074F-8A95-48CA-CFBFF213C4AF";
	setAttr -k off ".v";
	setAttr ".fc" 51;
	setAttr ".imn" -type "string" "/Users/wer29/Desktop/WalkRef_7.jpg";
	setAttr ".cov" -type "short2" 1920 1080 ;
	setAttr ".dlc" no;
	setAttr ".w" 19.2;
	setAttr ".h" 10.799999999999999;
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
	rename -uid "261AEAA6-9749-131C-901F-0C8263F1F40F";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "6B3F9B2E-9E44-2C57-AB8A-2CBF7D6B9404";
createNode displayLayer -n "defaultLayer";
	rename -uid "CA86460E-1643-5168-698A-22AFDE549337";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "DF68A680-D241-AC43-C64A-EB9A66BBDD46";
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
	setAttr -s 8 ".tk[0:7]" -type "float3"  0.39402339 -0.36378834 1.1920929e-07
		 -0.38862589 -0.36399052 1.1920929e-07 0.24163479 -0.39967296 0.042518452 -0.24163479
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
		 0.20217848 0.24261415 3.8857806e-16 0.17185171 -0.20217842 3.8857806e-16 0.17185171
		 -0.20217842 0 0.23250522 0.067392789 0 0.23250522 0.067392819 0 -0.015431109 -0.31939703
		 0 -0.015431109 -0.31939703;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "3E9D4357-3E4C-A3CE-C83D-FFB876F85F78";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1070\n                -height 673\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1070\n            -height 673\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
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
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n"
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1070\\n    -height 673\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1070\\n    -height 673\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E3EEB950-084F-FFB3-A3E5-99B38F182D44";
	setAttr ".b" -type "string" "playbackOptions -min 38 -max 56 -ast 1 -aet 100 ";
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
	setAttr ".tk[10]" -type "float3" 6.6613381e-16 0.83085287 -0.87102282 ;
	setAttr ".tk[11]" -type "float3" 6.6613381e-16 0.83085287 -0.87102282 ;
	setAttr ".tk[12]" -type "float3" 0 -0.54088295 0.1020534 ;
	setAttr ".tk[16]" -type "float3" 6.6613381e-16 0.83085287 -0.87102282 ;
	setAttr ".tk[17]" -type "float3" 0 0 -1.0154309 ;
	setAttr ".tk[18]" -type "float3" 0 -0.54088295 0.1020534 ;
	setAttr ".tk[22]" -type "float3" 6.6613381e-16 0.83085287 -0.87102282 ;
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
	setAttr ".tk[40]" -type "float3" 0.012291536 -5.9604645e-08 0 ;
	setAttr ".tk[41]" -type "float3" 0.0065319603 -5.9604645e-08 0 ;
	setAttr ".tk[42]" -type "float3" -0.0067272009 -5.9604645e-08 0 ;
	setAttr ".tk[43]" -type "float3" -0.012291536 -5.9604645e-08 0 ;
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
	setAttr ".tk[51]" -type "float3" 3.828336e-06 0 0 ;
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
	setAttr ".tk[57]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".tk[63]" -type "float3" 3.7252903e-09 0 0 ;
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
	setAttr ".tk[8]" -type "float3" 0.017607711 -7.4505806e-09 0.0091064377 ;
	setAttr ".tk[9]" -type "float3" 0.017607711 0.60657758 0.050769243 ;
	setAttr ".tk[12]" -type "float3" -0.017607711 -7.4505806e-09 0.0091064377 ;
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
	setAttr ".tk[48]" -type "float3" 0 0.33104119 -9.3132257e-10 ;
	setAttr ".tk[49]" -type "float3" 0 0.65668005 1.8626451e-09 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.11512829 ;
	setAttr ".tk[59]" -type "float3" 0 0 -0.11512829 ;
	setAttr ".tk[65]" -type "float3" 0 0 -0.11512829 ;
	setAttr ".tk[66]" -type "float3" 0 0.33104119 -9.3132257e-10 ;
	setAttr ".tk[67]" -type "float3" 0 0.65668005 1.8626451e-09 ;
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
	setAttr ".tk[108]" -type "float3" 0 -2.9802322e-08 -0.0074984003 ;
	setAttr ".tk[110]" -type "float3" 0 1.811529 0 ;
	setAttr ".tk[112]" -type "float3" -0.0038285488 0.45458108 0 ;
	setAttr ".tk[115]" -type "float3" -0.020351317 -0.23384556 0 ;
	setAttr ".tk[119]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[120]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[123]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[124]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[126]" -type "float3" 0 1.811529 0 ;
	setAttr ".tk[129]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".tk[133]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[134]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[137]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[138]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[149]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[150]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[153]" -type "float3" 0 0 -0.014996799 ;
	setAttr ".tk[154]" -type "float3" 0 0 -0.0074984003 ;
	setAttr ".tk[160]" -type "float3" 0 -1.8626451e-09 0 ;
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
	setAttr ".tk[192]" -type "float3" -7.5816992e-05 0 0 ;
	setAttr ".tk[193]" -type "float3" -7.5816992e-05 1.5438496 0 ;
	setAttr ".tk[194]" -type "float3" -7.5816992e-05 0 0 ;
	setAttr ".tk[195]" -type "float3" -7.5816992e-05 0 0 ;
	setAttr ".tk[196]" -type "float3" -7.5816992e-05 0 0 ;
	setAttr ".tk[197]" -type "float3" -7.5816992e-05 0 -0.0074984003 ;
	setAttr ".tk[198]" -type "float3" -7.5816992e-05 0 -0.014996799 ;
	setAttr ".tk[199]" -type "float3" -7.5816992e-05 0 0 ;
	setAttr ".tk[200]" -type "float3" -7.5816992e-05 0 0 ;
	setAttr ".tk[201]" -type "float3" -7.5816992e-05 0 -0.014996799 ;
	setAttr ".tk[202]" -type "float3" -7.5816992e-05 0 -0.0074984003 ;
	setAttr ".tk[203]" -type "float3" -7.5816992e-05 0 0 ;
	setAttr ".tk[204]" -type "float3" -7.5816992e-05 0 0 ;
	setAttr ".tk[205]" -type "float3" -7.5816992e-05 0 0 ;
	setAttr ".tk[206]" -type "float3" -7.5816992e-05 0 0 ;
	setAttr ".tk[207]" -type "float3" -7.5816992e-05 0 0 ;
	setAttr ".tk[208]" -type "float3" 0.0036852709 -1.8626451e-09 0 ;
	setAttr ".tk[209]" -type "float3" 0.0036852709 1.6838368 0 ;
	setAttr ".tk[210]" -type "float3" 0.0036852709 1.8626451e-09 0 ;
	setAttr ".tk[211]" -type "float3" 0.0036852709 1.8626451e-09 0 ;
	setAttr ".tk[212]" -type "float3" 0.0036852709 1.8626451e-09 0 ;
	setAttr ".tk[213]" -type "float3" 0.0036852709 1.8626451e-09 -0.0074984003 ;
	setAttr ".tk[214]" -type "float3" 0.0036852709 1.8626451e-09 -0.014996799 ;
	setAttr ".tk[215]" -type "float3" 0.0036852709 1.8626451e-09 0 ;
	setAttr ".tk[216]" -type "float3" 0.0036852709 -7.4505806e-09 0 ;
	setAttr ".tk[217]" -type "float3" 0.0036852709 -7.4505806e-09 -0.014996799 ;
	setAttr ".tk[218]" -type "float3" 0.0036852709 -7.4505806e-09 -0.0074984003 ;
	setAttr ".tk[219]" -type "float3" 0.0036852709 -7.4505806e-09 0 ;
	setAttr ".tk[220]" -type "float3" 0.0036852709 -7.4505806e-09 0 ;
	setAttr ".tk[221]" -type "float3" 0.0036852709 -7.4505806e-09 0 ;
	setAttr ".tk[222]" -type "float3" 0.0036852709 -7.4505806e-09 0 ;
	setAttr ".tk[223]" -type "float3" 0.0036852709 0 0 ;
	setAttr ".tk[224]" -type "float3" 0.00065141165 -6.6613381e-16 0 ;
	setAttr ".tk[225]" -type "float3" 0.00065141165 1.6801395 0 ;
	setAttr ".tk[226]" -type "float3" 0.00065141165 -6.1062266e-16 0 ;
	setAttr ".tk[227]" -type "float3" 0.00065141165 -6.1062266e-16 0 ;
	setAttr ".tk[228]" -type "float3" 0.00065141165 -6.1062266e-16 0 ;
	setAttr ".tk[229]" -type "float3" 0.00065141165 -6.1062266e-16 -0.0074984003 ;
	setAttr ".tk[230]" -type "float3" 0.00065141165 -6.1062266e-16 -0.014996799 ;
	setAttr ".tk[231]" -type "float3" 0.00065141165 -6.1062266e-16 0 ;
	setAttr ".tk[232]" -type "float3" 0.00065141165 -8.8817842e-16 0 ;
	setAttr ".tk[233]" -type "float3" 0.00065141165 -8.8817842e-16 -0.014996799 ;
	setAttr ".tk[234]" -type "float3" 0.00065141165 -8.8817842e-16 -0.0074984003 ;
	setAttr ".tk[235]" -type "float3" 0.00065141165 -8.8817842e-16 0 ;
	setAttr ".tk[236]" -type "float3" 0.00065141165 -8.8817842e-16 0 ;
	setAttr ".tk[237]" -type "float3" 0.00065141165 -8.8817842e-16 0 ;
	setAttr ".tk[238]" -type "float3" 0.00065141165 -6.6613381e-16 0 ;
	setAttr ".tk[239]" -type "float3" 0.00065141165 -7.2164497e-16 0 ;
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
	setAttr ".tk[40]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[43]" -type "float3" 0 0 -7.4505806e-09 ;
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
	setAttr ".tk[107]" -type "float3" 0 0.62214136 1.1175871e-08 ;
	setAttr ".tk[120]" -type "float3" 0 0.3832022 0.012532866 ;
	setAttr ".tk[121]" -type "float3" 0.030771293 -0.45875767 0 ;
	setAttr ".tk[122]" -type "float3" 0 0.60113049 0 ;
	setAttr ".tk[123]" -type "float3" 0 0.62214136 1.1175871e-08 ;
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
	setAttr ".tk[6]" -type "float3" 0.097180545 -1.355138e-05 -0.036466688 ;
	setAttr ".tk[7]" -type "float3" -0.09718053 -1.355138e-05 -0.036466688 ;
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
	setAttr ".tk[300]" -type "float3" -0.13871093 2.3980817e-14 0.0010399467 ;
	setAttr ".tk[301]" -type "float3" -0.11531336 2.3980817e-14 0.0011625829 ;
	setAttr ".tk[302]" -type "float3" -0.12296367 2.3980817e-14 -0.0037055013 ;
	setAttr ".tk[303]" -type "float3" -0.14329195 2.3980817e-14 -0.0020296387 ;
	setAttr ".tk[304]" -type "float3" 0.10689186 2.0428104e-14 0.0017186704 ;
	setAttr ".tk[305]" -type "float3" 0.11607115 2.0428104e-14 -0.0065542134 ;
	setAttr ".tk[306]" -type "float3" 0.14358197 2.0428104e-14 0.0031947233 ;
	setAttr ".tk[307]" -type "float3" 0.14903799 2.0428104e-14 -0.0020897845 ;
	setAttr ".tk[308]" -type "float3" -0.10646485 0.11972104 0.071266249 ;
	setAttr ".tk[309]" -type "float3" -0.099378146 -0.023700502 0.073661327 ;
	setAttr ".tk[310]" -type "float3" -0.15049604 0.34731561 -0.060876504 ;
	setAttr ".tk[311]" -type "float3" -0.155053 0.4965536 -0.063948065 ;
	setAttr ".tk[312]" -type "float3" -0.10423833 0.088840812 0.067031264 ;
	setAttr ".tk[313]" -type "float3" -0.097146511 -0.18023233 0.070113026 ;
	setAttr ".tk[314]" -type "float3" -0.14890368 -0.11201432 -0.051162116 ;
	setAttr ".tk[315]" -type "float3" -0.15337306 0.12715128 -0.053926732 ;
	setAttr ".tk[316]" -type "float3" -0.11517653 0.36037874 -0.0030103179 ;
	setAttr ".tk[317]" -type "float3" -0.1080813 2.3980817e-14 0.00056637172 ;
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
	setAttr -s 2 ".tk[320:321]" -type "float3"  1.3463484e-05 0.27612305 0.0045618317
		 0 0.27252534 0;
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
	setAttr ".tk[2]" -type "float3" -5.2154064e-08 7.4505806e-08 0 ;
	setAttr ".tk[3]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[4]" -type "float3" -5.2154064e-08 7.4505806e-08 0 ;
	setAttr ".tk[5]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[8]" -type "float3" 0 1.4901161e-08 0 ;
	setAttr ".tk[9]" -type "float3" -5.9604645e-08 -1.1920929e-07 0 ;
	setAttr ".tk[10]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".tk[11]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.019797655 -0.0043994794 ;
	setAttr ".tk[19]" -type "float3" 0 0.019797655 -0.0043994794 ;
	setAttr ".tk[30]" -type "float3" 2.3841858e-07 2.9802322e-08 0 ;
	setAttr ".tk[31]" -type "float3" 2.3841858e-07 1.4901161e-08 0 ;
	setAttr ".tk[32]" -type "float3" 2.3841858e-07 -0.010105714 -0.21026602 ;
	setAttr ".tk[33]" -type "float3" 0 -0.010105694 -0.21026604 ;
	setAttr ".tk[34]" -type "float3" -1.8626451e-08 -1.7881393e-07 0 ;
	setAttr ".tk[35]" -type "float3" 2.9802322e-08 2.9802322e-08 0 ;
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
		 0.061812233 0 -0.066963255 0.061812233 6.6613381e-16 0.62842453 -0.25239998 6.6613381e-16
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
		 0 -0.16730839 0 0 7.4505806e-09 0 0 7.4505806e-09 0 0 -0.14128262 0.092399336 0 0
		 0.092399336 0 0 0.092399336 0 0 0 0 7.4505806e-09 0 0 7.4505806e-09 -0.010662292
		 0 0 -0.010662292 0 0 -0.010662292 0 0 0 0 -0.14128262 0 0 7.4505806e-09 0 0 7.4505806e-09
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
	setAttr ".tk[1]" -type "float3" -7.4505806e-09 0 0 ;
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
	setAttr ".tk[12]" -type "float3" 9.3132257e-10 0.46782535 0 ;
	setAttr ".tk[13]" -type "float3" 9.3132257e-10 0.46782535 0 ;
	setAttr ".tk[14]" -type "float3" 0 0.12610486 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.12610486 -0.17756681 ;
	setAttr ".tk[16]" -type "float3" -3.7252903e-09 0.46782535 0 ;
	setAttr ".tk[17]" -type "float3" -3.7252903e-09 0.46782535 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.12610486 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.12610486 -0.17756681 ;
	setAttr ".tk[20]" -type "float3" 0 0 -0.17756681 ;
	setAttr ".tk[21]" -type "float3" -1.8626451e-09 0.46782535 0 ;
	setAttr ".tk[22]" -type "float3" -1.8626451e-09 0.46782535 0 ;
	setAttr ".tk[24]" -type "float3" 0 0 -0.17756681 ;
	setAttr ".tk[25]" -type "float3" 0 0.46782535 0 ;
	setAttr ".tk[26]" -type "float3" 0 0.46782535 0 ;
	setAttr ".tk[28]" -type "float3" 0 0 -0.17756681 ;
	setAttr ".tk[29]" -type "float3" 1.1641532e-10 0.46782535 0 ;
	setAttr ".tk[30]" -type "float3" 1.1641532e-10 0.46782535 0 ;
	setAttr ".tk[32]" -type "float3" 0 0 -0.17756681 ;
	setAttr ".tk[33]" -type "float3" -1.8626451e-09 0.46782535 0 ;
	setAttr ".tk[34]" -type "float3" -1.8626451e-09 0.46782535 0 ;
	setAttr ".tk[36]" -type "float3" 0 0 -0.17756681 ;
	setAttr ".tk[37]" -type "float3" -1.8626451e-09 0.46782535 0 ;
	setAttr ".tk[38]" -type "float3" -1.8626451e-09 0.46782535 0 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.17756681 ;
	setAttr ".tk[41]" -type "float3" 3.7252903e-09 0.46782535 0 ;
	setAttr ".tk[42]" -type "float3" 3.7252903e-09 0.46782535 0 ;
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
	setAttr ".tk[69]" -type "float3" -1.8626451e-09 0.46782535 0 ;
	setAttr ".tk[70]" -type "float3" -1.8626451e-09 0.46782535 0 ;
	setAttr ".tk[71]" -type "float3" 1.1641532e-10 0.46782535 0 ;
	setAttr ".tk[72]" -type "float3" 9.3132257e-10 0.46782535 0 ;
	setAttr ".tk[73]" -type "float3" -1.8626451e-09 0.46782535 0 ;
	setAttr ".tk[74]" -type "float3" -1.8626451e-09 0.46782535 0 ;
	setAttr ".tk[75]" -type "float3" -3.7252903e-09 0.46782535 0 ;
	setAttr ".tk[76]" -type "float3" 3.7252903e-09 0.46782535 0 ;
	setAttr ".tk[77]" -type "float3" 0 0.46782535 0 ;
	setAttr ".tk[78]" -type "float3" 0 0.46782535 0 ;
	setAttr ".tk[79]" -type "float3" 3.7252903e-09 0.46782535 0 ;
	setAttr ".tk[80]" -type "float3" -3.7252903e-09 0.46782535 0 ;
	setAttr ".tk[81]" -type "float3" -1.8626451e-09 0.46782535 0 ;
	setAttr ".tk[82]" -type "float3" -1.8626451e-09 0.46782535 0 ;
	setAttr ".tk[83]" -type "float3" 9.3132257e-10 0.46782535 0 ;
	setAttr ".tk[84]" -type "float3" 1.1641532e-10 0.46782535 0 ;
	setAttr ".tk[85]" -type "float3" -1.8626451e-09 0.46782535 0 ;
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
	setAttr ".tk[75]" -type "float3" -3.6379788e-12 0 -3.7252903e-09 ;
	setAttr ".tk[76]" -type "float3" 0 -1.8626451e-09 1.8626451e-09 ;
	setAttr ".tk[78]" -type "float3" 0 0.0085906871 0.0040190816 ;
	setAttr ".tk[80]" -type "float3" 0 0.011061713 -0.011465173 ;
	setAttr ".tk[83]" -type "float3" 3.6379788e-12 0 1.8626451e-09 ;
	setAttr ".tk[84]" -type "float3" 0 -9.3132257e-10 3.7252903e-09 ;
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
		 0.00031530907 0.33495489 -0.11213094 1.137426e-06 0.33495489 -0.035757098 0.040997699
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
	setAttr ".tk[73]" -type "float3" 0.041929707 -1.8626451e-09 0 ;
	setAttr ".tk[74]" -type "float3" 0 -0.012500567 0.047502153 ;
	setAttr ".tk[75]" -type "float3" 0 0.046972495 -0.0077280849 ;
	setAttr ".tk[76]" -type "float3" 0 0.036972009 -0.027728999 ;
	setAttr ".tk[78]" -type "float3" -0.026450679 0.084474184 -0.042729683 ;
	setAttr ".tk[79]" -type "float3" -0.041929707 -1.8626451e-09 0 ;
	setAttr ".tk[80]" -type "float3" 0.019994814 0.066973366 -0.031365294 ;
	setAttr ".tk[81]" -type "float3" 0.032453217 -1.8626451e-09 0 ;
	setAttr ".tk[83]" -type "float3" 0 0.036972005 -0.013864502 ;
	setAttr ".tk[84]" -type "float3" 0 0.036972005 -0.013864502 ;
	setAttr ".tk[86]" -type "float3" -0.019161742 0.066973366 -0.031365294 ;
	setAttr ".tk[87]" -type "float3" -0.031561282 -1.8626451e-09 0 ;
	setAttr ".tk[88]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[91]" -type "float3" 0 1.1175871e-08 0 ;
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
	setAttr ".tk[4]" -type "float3" 1.8626451e-09 0 -0.050394565 ;
	setAttr ".tk[5]" -type "float3" -1.1175871e-08 5.9604645e-08 -0.050029822 ;
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
createNode skinCluster -n "skinCluster1";
	rename -uid "0465678A-411D-5DF4-B0DA-0EB381C9E6E8";
	setAttr -s 96 ".wl";
	setAttr ".wl[0].w[22]"  1;
	setAttr ".wl[1].w[22]"  1;
	setAttr ".wl[2].w[4]"  1;
	setAttr ".wl[3].w[4]"  1;
	setAttr ".wl[4].w[4]"  1;
	setAttr ".wl[5].w[4]"  1;
	setAttr ".wl[6].w[22]"  1;
	setAttr ".wl[7].w[22]"  1;
	setAttr ".wl[8].w[4]"  1;
	setAttr ".wl[9].w[4]"  1;
	setAttr ".wl[10].w[4]"  1;
	setAttr ".wl[11].w[4]"  1;
	setAttr ".wl[12].w[4]"  1;
	setAttr ".wl[13].w[4]"  1;
	setAttr ".wl[14].w[4]"  1;
	setAttr ".wl[15].w[4]"  1;
	setAttr ".wl[16].w[2]"  1;
	setAttr ".wl[17].w[2]"  1;
	setAttr ".wl[18].w[22]"  1;
	setAttr ".wl[19].w[22]"  1;
	setAttr ".wl[20].w[1]"  1;
	setAttr ".wl[21].w[1]"  1;
	setAttr ".wl[22].w[1]"  1;
	setAttr ".wl[23].w[1]"  1;
	setAttr ".wl[24].w[3]"  1;
	setAttr ".wl[25].w[3]"  1;
	setAttr ".wl[26].w[3]"  1;
	setAttr ".wl[27].w[3]"  1;
	setAttr ".wl[28].w[4]"  1;
	setAttr ".wl[29].w[4]"  1;
	setAttr -s 3 ".wl[30].w[2:4]"  0.0030585103695970717 0.0090435600669774921 
		0.98789792956342548;
	setAttr ".wl[31].w[3]"  1;
	setAttr ".wl[32].w[1]"  1;
	setAttr ".wl[33].w[22]"  1;
	setAttr ".wl[34].w[22]"  1;
	setAttr ".wl[35].w[22]"  1;
	setAttr ".wl[36].w[22]"  1;
	setAttr ".wl[37].w[1]"  1;
	setAttr ".wl[38].w[3]"  1;
	setAttr -s 3 ".wl[39].w[2:4]"  0.0030663195461906141 0.0089872750900231863 
		0.9879464053637862;
	setAttr ".wl[40].w[4]"  1;
	setAttr ".wl[41].w[4]"  1;
	setAttr ".wl[42].w[4]"  1;
	setAttr ".wl[43].w[4]"  1;
	setAttr ".wl[44].w[4]"  1;
	setAttr ".wl[45].w[3]"  1;
	setAttr ".wl[46].w[1]"  1;
	setAttr ".wl[47].w[22]"  1;
	setAttr ".wl[48].w[22]"  1;
	setAttr ".wl[49].w[22]"  1;
	setAttr ".wl[50].w[22]"  1;
	setAttr ".wl[51].w[1]"  1;
	setAttr ".wl[52].w[3]"  1;
	setAttr ".wl[53].w[4]"  1;
	setAttr ".wl[54].w[4]"  1;
	setAttr ".wl[55].w[4]"  1;
	setAttr ".wl[56].w[3]"  1;
	setAttr ".wl[57].w[4]"  1;
	setAttr ".wl[58].w[4]"  1;
	setAttr ".wl[59].w[4]"  1;
	setAttr ".wl[60].w[4]"  1;
	setAttr ".wl[61].w[4]"  1;
	setAttr ".wl[62].w[4]"  1;
	setAttr ".wl[63].w[4]"  1;
	setAttr ".wl[64].w[1]"  1;
	setAttr ".wl[65].w[22]"  1;
	setAttr ".wl[66].w[22]"  1;
	setAttr ".wl[67].w[22]"  1;
	setAttr ".wl[68].w[22]"  1;
	setAttr ".wl[69].w[22]"  1;
	setAttr ".wl[70].w[2]"  1;
	setAttr ".wl[71].w[1]"  1;
	setAttr -s 2 ".wl[72].w[3:4]"  0.49658372807518908 0.50341627192481087;
	setAttr ".wl[73].w[4]"  1;
	setAttr ".wl[74].w[4]"  1;
	setAttr ".wl[75].w[4]"  1;
	setAttr -s 2 ".wl[76].w[3:4]"  0.50228380872250844 0.49771619127749156;
	setAttr -s 3 ".wl[77].w[2:4]"  0.041983830545637209 0.51523694440933543 
		0.44277922504502731;
	setAttr -s 2 ".wl[78].w[3:4]"  0.49677939100745222 0.50322060899254784;
	setAttr ".wl[79].w[4]"  1;
	setAttr ".wl[80].w[3]"  1;
	setAttr ".wl[81].w[3]"  1;
	setAttr -s 3 ".wl[82].w[2:4]"  0.30290682661761792 0.61427993135649128 
		0.082813242025890854;
	setAttr -s 3 ".wl[83].w[2:4]"  0.44523834531833245 0.50741923558463353 
		0.047342419097033857;
	setAttr -s 5 ".wl[84].w[0:4]"  0.00356962454528733 0.013420538109342045 
		0.48802215248332631 0.4880221524833262 0.0069655323787181913;
	setAttr -s 5 ".wl[85].w[0:4]"  0.0029210237708039467 0.014228892256631548 
		0.49408877102018778 0.48600747311605175 0.0027538398363249742;
	setAttr -s 4 ".wl[86].w[1:4]"  0.023088526589091236 0.47428451268650462 
		0.4742845126865044 0.02834244803789979;
	setAttr ".wl[87].w[3]"  1;
	setAttr -s 2 ".wl[88].w[3:4]"  0.49890685089667508 0.50109314910332492;
	setAttr ".wl[89].w[4]"  1;
	setAttr -s 2 ".wl[90].w[3:4]"  0.50000000000000011 0.49999999999999994;
	setAttr -s 2 ".wl[91].w[3:4]"  0.49890081259290558 0.50109918740709447;
	setAttr ".wl[92].w[3]"  1;
	setAttr -s 4 ".wl[93].w[1:4]"  0.016655733509740631 0.47516721118671473 
		0.47576689777177666 0.032410157531767861;
	setAttr -s 4 ".wl[94].w[1:4]"  0.016580003887010569 0.48423373487182469 
		0.48423373487182469 0.014952526369339922;
	setAttr -s 4 ".wl[95].w[1:4]"  0.019383431346982546 0.47815825281842372 
		0.47815825281842361 0.024300063016170211;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.3935626233273428 28.545776100389716 1;
	setAttr ".pm[1]" -type "matrix" 2.9171120138216851e-16 -2.0309007691163655e-16 0.99999999999999978 0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-16 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-16 0
		 5.141099383762306 27.116763673658916 6.384860464405965e-15 1;
	setAttr ".pm[2]" -type "matrix" 1.9255976590806024e-16 4.2123171441692991e-16 -0.99999999999999978 0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-16 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-16 0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-14 1;
	setAttr ".pm[3]" -type "matrix" -2.2254253739202254e-16 4.0618990599018242e-16 -0.99999999999999978 0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-16 0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-16 0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-14 1;
	setAttr ".pm[4]" -type "matrix" -3.9263286525203279e-16 2.4567224874041425e-16 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-16 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-16 0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-14 1;
	setAttr ".pm[5]" -type "matrix" -4.3236892918211134e-16 -1.660497809547105e-16 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-16 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-16 0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[6]" -type "matrix" -4.2008944836864555e-16 -1.9503916541689796e-16 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-16 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-16 0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[7]" -type "matrix" -2.3367847652631728e-16 5.2235190187304229e-16 0.99999999999999978 0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-16 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-16 0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[8]" -type "matrix" 0.99999999999999978 7.889801871316359e-16 -4.1328562659829196e-16 0
		 -7.1325529571241588e-16 0.99999999999999978 7.4940054162198017e-16 0 5.2724101640594644e-16 -9.1593399531575296e-16 0.99999999999999933 0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[9]" -type "matrix" 4.3236892918211144e-16 1.6604978095471038e-16 -0.99999999999999978 0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-16 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-16 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[10]" -type "matrix" 4.200894483686456e-16 1.9503916541689791e-16 -1 0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-16 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-16 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[11]" -type "matrix" 2.3367847652631718e-16 1.6666666780649064e-16 0.99999999999999978 0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-16 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-16 0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[12]" -type "matrix" 0.99999999999999978 5.5459731209901231e-16 1.2054718195384451e-17 0
		 6.0517993594966963e-16 -1 -6.3837823915946462e-16 0 7.7400975786026954e-17 7.2164496600635165e-16 -0.99999999999999978 0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[13]" -type "matrix" -4.0112524636791838e-16 2.3154687949413117e-16 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-16 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-16 0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-14 1;
	setAttr ".pm[14]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -6.2314369504761027e-15 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[15]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -1.3912601358543541e-14 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[16]" -type "matrix" 5.0813779435729561e-16 1.296078129378641e-15 0.99999999999999978 0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-16 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-15 0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[17]" -type "matrix" -1.0103368778348008e-15 -4.0484730914130193e-16 -0.99999999999999978 0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-16 0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-15 0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[18]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-16 -1.5416536010143854e-15 0
		 5.3246366272141857e-16 0.99999999999999978 -5.6898930012039322e-16 0 1.611115502654318e-15 6.5919492087118591e-16 0.99999999999999978 0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[19]" -type "matrix" 5.0211778276518463e-16 -8.7774694673919145e-16 0.99999999999999978 0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-16 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-15 0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[20]" -type "matrix" 7.131658175178445e-16 -5.6945907845917879e-16 -0.99999999999999978 0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-16 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-16 0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[21]" -type "matrix" 1 -5.6270869122286394e-16 7.6910344414326529e-17 0
		 -2.7393525345077987e-16 -0.99999999999999956 -4.8919202022545929e-15 0 2.3587309789062293e-16 4.7045700668490977e-15 -0.99999999999999978 0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".pm[22]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[23]" -type "matrix" 6.693613450145993e-16 1.7889765444095194e-15 -1 0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-15 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-15 0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[24]" -type "matrix" -3.1806489720151775e-16 7.1110600523609952e-16 1 0
		 0.23651468939617115 -0.97162791319508335 7.5749132939959172e-16 0 0.97162791319508313 0.23651468939617099 1.3112890213765296e-16 0
		 15.753396610245158 -24.192069798095329 14.952100000000017 1;
	setAttr ".pm[25]" -type "matrix" -7.7862017067354629e-16 2.5809568655261894e-08 0.99999999999999978 0
		 0.97741416543986748 -0.21133279252753714 5.4544089702159377e-09 0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-08 0
		 38.494799132532364 23.920859481432771 12.09489938261296 1;
	setAttr ".pm[26]" -type "matrix" -1.3805402767519449e-08 1.3615198156657945e-08 -0.99999999999999978 0
		 0.93887631588660825 -0.3442546491584228 -1.7648660945676001e-08 0 -0.34425464915842274 -0.93887631588660825 -8.0304129894412106e-09 0
		 24.344687153438446 -43.723300868428026 -12.094900931389603 1;
	setAttr ".pm[27]" -type "matrix" 7.7249776432890225e-09 -1.6343368966662313e-08 -1 0
		 0.017238817250843728 -0.99985140054899735 1.6474109837531978e-08 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-09 0
		 -30.350163356585991 -42.766656220525725 -12.094899535503078 1;
	setAttr ".pm[28]" -type "matrix" 1 -1.6162482267249325e-08 -1.0632309108148316e-08 0
		 -1.6162482276970348e-08 -0.99999999999999956 -1.5307677505295637e-14 0 -1.0632309067137227e-08 1.5240265432259012e-14 -0.99999999999999956 0
		 14.182899160148009 -42.525700229230644 -14.346000150797618 1;
	setAttr ".pm[29]" -type "matrix" 3.6929243270364759e-16 4.7854520619298905e-17 -1 0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-16 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-16 0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[30]" -type "matrix" 2.8232439365995012e-16 -2.4058376823856014e-16 1 0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-16 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-16 0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[31]" -type "matrix" 3.3969043598553431e-16 1.4899000132653635e-16 1 0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-16 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-16 0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[32]" -type "matrix" 2.0731684078555344e-16 2.5897082728895037e-16 -1 0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-17 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-16 0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[33]" -type "matrix" 3.1628320018632648e-16 -1.0005548030928621e-16 -1 0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-17 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-16 0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[34]" -type "matrix" 1 -8.8267921761093423e-17 -6.84540878947466e-16 0
		 5.982944840221322e-17 1.0000000000000002 -3.4000580129145434e-16 0 7.1046403083575275e-16 3.4347524824340795e-16 1 0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
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
	rename -uid "80B26057-46CB-CAD8-4DC3-C18875A4E786";
	setAttr -s 13 ".vl[0].vt";
	setAttr ".vl[0].vt[72]" -type "float3" -0.0032952307 -0.0046758899 0 ;
	setAttr ".vl[0].vt[75]" -type "float3" 0 0.01040566 0.053392377 ;
	setAttr ".vl[0].vt[78]" -type "float3" 0.0032952307 -0.0046758899 0 ;
	setAttr ".vl[0].vt[84]" -type "float3" 0 -2.2351742e-08 5.9604645e-08 ;
	setAttr ".vl[0].vt[88]" -type "float3" 0 -0.27818137 0.059973009 ;
	setAttr ".vl[0].vt[89]" -type "float3" 0 -0.2610392 0.059973009 ;
	setAttr ".vl[0].vt[90]" -type "float3" 0 -0.2610392 0.059973009 ;
	setAttr ".vl[0].vt[91]" -type "float3" 0 -0.27818137 0.059973009 ;
	setAttr ".vl[0].vt[92]" -type "float3" 0 -0.26600382 0.17325407 ;
	setAttr ".vl[0].vt[93]" -type "float3" 0 -0.26600382 0.17325407 ;
	setAttr ".vl[0].vt[94]" -type "float3" 0 -0.26600382 0.17325407 ;
	setAttr ".vl[0].vt[95]" -type "float3" 0 -0.26600382 0.17325407 ;
createNode objectSet -n "skinCluster1Set";
	rename -uid "CC4AC0D8-4943-0A3E-0450-FEA8BA8E21A1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "FCBF7C2D-4645-E16B-32BF-46B16782E3CB";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "F6CB94E5-4E35-FF64-569A-7683FA4EF0B7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "E12317D8-4E54-F65C-F8B1-2D8609FCB9FD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "4C6896FD-4313-B46C-3ED8-9F827D5CFE3E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "3E06FE84-42A5-1889-1D8F-79BA14AEF92F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "0672BE09-46C0-36AB-2294-00989233772C";
	setAttr -s 35 ".wm";
	setAttr -s 57 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -8.3935626233273428
		 -28.545776100389716 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 -1.6653345369377348e-16 -2.2204460492503131e-16
		 1.8488927466117464e-32 0 0 1.4600696749647613 1.8310526217198415 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0.48308409968561034 0.51636203639592182 0.48308409968561034 0.51636203639592215 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 9.3368776692261406 0 -3.1098049699449983e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.98103661857481306 0.19382247809605749 1.1868203870157238e-17 6.0071167739199385e-17 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -1.4279565025995582e-16 3.7046061037742484e-17
		 1.1102230246251565e-16 0 18.23274650489121 1.0658141036401503e-14 4.8466478636802621e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.44841572355753345 0.89382511648888774 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -8.6011247393764436e-18 -1.8690320130483e-16
		 1.1102230246251565e-16 0 21.899120996169305 1.0658141036401503e-14 -2.6956353773824086e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.25247655847346462 0.96760301127135562 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 8.368234157521599e-17 -1.3660264352291575e-16
		 1.1102230246251565e-16 0 1.0818041192647305 -1.7123554087229991 -17.877216723425484 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.44653768433977092 0.89476482746276698 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 1.1473149390057318e-16 -1.0718482912940319e-16
		 -3.3306690738754696e-16 0 31.99825461049371 0 -6.0293855159629786 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.033987156651331007 0.99942226970523218 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 8.9422047445835967e-17 -6.6391425235041964e-17
		 -2.9684285886822971e-33 0 33.717305247756336 -3.3750779948604759e-14 -1.7763568394002505e-14 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.95425298638582279 0.29900039794913114 -1.8308494014609415e-17 5.8431143267710039e-17 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.3875679753237371 -7.1054273576010019e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.4411289200480486 -0.5526348486091357 0.44112892004804838 0.55263484860913592 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -2.7769068789052529e-17 2.1103644415194881e-16
		 -2.9301427673262549e-33 0 1.0818030490480721 -1.7123499387266818 17.877199999999995 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.89476482746276698 0.44653768433977081 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 2.2568965541556136e-16 -1.0341149674381828e-16
		 5.5511151231257821e-17 0 -31.998258405996097 8.0643000011093591e-07 6.029399999999999 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.033987156651331007 0.99942226970523218 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 1.2956497562911767e-17 -7.0635175671764559e-18
		 2.2204460492503131e-16 0 -33.717304552350946 5.3960697947275094e-05 -1.4210854715202004e-14 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.95425298638582268 0.2990003979491313 -8.4699919249651435e-17 2.7031787062828133e-16 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.387500137346386 2.6594532442913987e-05
		 3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44112892004804866 -0.55263484860913559 0.44112892004804832 0.55263484860913603 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 1.1282579098888033e-16 -1.0035709177709119e-16
		 2.7755575615628907e-17 0 13.330647968373498 2.9887165849079089 -3.2651401286985034e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.017792741826644164 0.99984169663916822 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 -4.1633363423443375e-16 6.5919492087118689e-16
		 1.3877787807814447e-16 0 10.814536544133 1.0658141036401503e-14 2.4013094943893251e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.080716279640304145 0.7024847914375284 0.080716279640304062 0.70248479143752918 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.6811644080674442e-15
		 -2.3370891942704795 0.26664839635010651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.234015250213869 -1.2700014310814893
		 -0.98806652142050666 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49355025053368423 0.50636760381973256 -0.49355025053368362 0.506367603819733 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.186287342561853 -0.98860416796724593
		 1.2051076250576465 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.67879111187253505 0.73433141458257634 -1.0915793614014113e-16 -1.1808949801593254e-16 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 20.262996594458691 -2.385858855439539
		 -1.3785555438363257 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.018711624828957333 0.70685916213646138 -0.018711624828957323 0.70685916213646172 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 -11.234000000000007 -1.2699609474650444
		 -0.98803879165221531 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.50636760381973278 0.49355025053368412 0.50636760381973256 0.49355025053368384 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 -10.186305840856921 0.98862634322796694
		 -1.2050999999999963 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.67879111187253482 0.73433141458257656 4.1563968122218635e-17 4.4964830819095017e-17 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 -20.26295095214175 2.3858817680676259
		 1.3786000000000058 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.018711624828955751 0.70685916213646138 -0.018711624828955744 0.70685916213646172 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.6796048095476461
		 -1.42522004998089 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 -11.2157 -2.2972325671250093
		 -1.6891038496293902 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.67630234478378681 -0.20643434413864517 0.67630234478378604 0.20643434413864409 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 -26.611657532597871 -3.6434673702956388e-05
		 3.7363999999999784 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.40378057377371296 0.91485586200393942 2.9369632330145265e-16 6.6543519048025694e-16 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 -22.571541461530671 -1.1506119967918949e-06
		 2.8572000000000006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.0936793850406475e-08 -6.8498174065843186e-09 -0.53079673701726493 0.84749915868502446 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.4618458313360279 6.8683157557813956e-05
		 -1.77280412572145e-12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.96044747758436266 -0.27846120520071554 -4.9318522057855758e-09 1.7010574264559921e-08 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.6102926869945051 1.5647938596430322e-05
		 6.3647158654589475e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.4073280039850297e-08 9.6498803917679154e-09 0.56551365574260537 0.82473893152235367 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 -16.739388044636868 3.2787877742634919e-05
		 2.0879998706880691 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0060950687791223217 0.7070805053877377 0.0060950686689412474 0.70708051816969197 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.215709518339846 -2.2972068039795897
		 -1.6890582097053688 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.20643434413864473 -0.67630234478378637 -0.2064343441386447 0.67630234478378659 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 26.611627364085813 -1.7763568394002505e-14
		 -3.7364292524159488 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.40378057377371307 0.91485586200393942 1.1438172734147954e-16 2.5915757359622956e-16 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 22.571511896999866 -2.4868995751603507e-14
		 -2.8572694283180997 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.53079673701726482 0.84749915868502468 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.4618546715234331 0
		 -1.7763568394002505e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.96044747758436266 -0.27846120520071577 -7.8881639477529558e-17 2.7207262717010465e-16 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.6103077446732996 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.56551365574260515 0.82473893152235411 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 16.739387965494924 -1.1549157888733989e-14
		 -2.0880045822324509 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0060950687240264347 0.70708051177871456 0.0060950687240264277 0.70708051177871534 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.3875679753237371 -7.1054273576010019e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.4411289200480486 -0.5526348486091357 0.44112892004804838 0.55263484860913592 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.387500137346386 2.6594532442913987e-05
		 3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44112892004804866 -0.55263484860913559 0.44112892004804832 0.55263484860913603 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 20.262996594458695 -2.3858588554395403
		 -1.3785555438363275 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.018711624828957333 0.70685916213646138 -0.018711624828957323 0.70685916213646172 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 -20.262950952141743 2.3858817680676241
		 1.3786000000000076 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.018711624828955751 0.70685916213646138 -0.018711624828955744 0.70685916213646172 1
		 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 -16.739388044636868 3.2787877742634919e-05
		 2.0879998706880691 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0060950687791223217 0.7070805053877377 0.0060950686689412474 0.70708051816969197 1
		 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 16.739387965494924 -1.1549157888733989e-14
		 -2.0880045822324509 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0060950687240264347 0.70708051177871456 0.0060950687240264277 0.70708051177871534 1
		 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.3875679753237371 -7.1054273576010019e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.4411289200480486 -0.5526348486091357 0.44112892004804838 0.55263484860913592 1
		 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.387500137346386 2.6594532442913987e-05
		 3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44112892004804866 -0.55263484860913559 0.44112892004804832 0.55263484860913603 1
		 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 -16.739388044636868 3.2787877742634919e-05
		 2.0879998706880691 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0060950687791223217 0.7070805053877377 0.0060950686689412474 0.70708051816969197 1
		 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 0 0 16.739387965494924 -1.1549157888733989e-14
		 -2.0880045822324509 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0060950687240264347 0.70708051177871456 0.0060950687240264277 0.70708051177871534 1
		 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.3875679753237371 -7.1054273576010019e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.4411289200480486 -0.5526348486091357 0.44112892004804838 0.55263484860913592 1
		 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.387500137346386 2.6594532442913987e-05
		 3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44112892004804866 -0.55263484860913559 0.44112892004804832 0.55263484860913603 1
		 1 1 yes;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 0 0 0 0 -16.739388044636868 3.2787877742634919e-05
		 2.0879998706880691 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0060950687791223217 0.7070805053877377 0.0060950686689412474 0.70708051816969197 1
		 1 1 yes;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 0 0 0 16.739387965494924 -1.1549157888733989e-14
		 -2.0880045822324509 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0060950687240264347 0.70708051177871456 0.0060950687240264277 0.70708051177871534 1
		 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.3875679753237371 -7.1054273576010019e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.4411289200480486 -0.5526348486091357 0.44112892004804838 0.55263484860913592 1
		 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.387500137346386 2.6594532442913987e-05
		 3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44112892004804866 -0.55263484860913559 0.44112892004804832 0.55263484860913603 1
		 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 0 0 0 -16.739388044636868 3.2787877749740346e-05
		 2.0879998706880674 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0060950687791223217 0.7070805053877377 0.0060950686689412474 0.70708051816969197 1
		 1 1 yes;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0 0 0 0 16.73938796549492 -1.4210854715202004e-14
		 -2.088004582232454 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0060950687240264347 0.70708051177871456 0.0060950687240264277 0.70708051177871534 1
		 1 1 yes;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.3875679753237371 -7.1054273576010019e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.4411289200480486 -0.5526348486091357 0.44112892004804838 0.55263484860913592 1
		 1 1 yes;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.387500137346386 2.6594532442913987e-05
		 3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44112892004804866 -0.55263484860913559 0.44112892004804832 0.55263484860913603 1
		 1 1 yes;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.3875679753237407 -1.4210854715202004e-14
		 3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.4411289200480486 -0.5526348486091357 0.44112892004804838 0.55263484860913592 1
		 1 1 yes;
	setAttr ".xm[56]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.3875001373463931 2.6594532442913987e-05
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44112892004804866 -0.55263484860913559 0.44112892004804832 0.55263484860913603 1
		 1 1 yes;
	setAttr -s 35 ".m";
	setAttr -s 35 ".p";
	setAttr -s 50 ".g[7:56]" yes no no no yes no no no no no no no no no 
		no no no no yes yes yes no no no yes yes yes no no no no no no no no no no no no 
		no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "C1498C14-44BD-BB69-42EE-3A9D276F5FDC";
	setAttr -s 146 ".wl";
	setAttr ".wl[0].w[14]"  1;
	setAttr ".wl[1].w[14]"  1;
	setAttr ".wl[2].w[14]"  1;
	setAttr ".wl[3].w[14]"  1;
	setAttr ".wl[4].w[14]"  1;
	setAttr ".wl[5].w[14]"  1;
	setAttr ".wl[6].w[14]"  1;
	setAttr ".wl[7].w[14]"  1;
	setAttr ".wl[8].w[14]"  1;
	setAttr ".wl[9].w[14]"  1;
	setAttr ".wl[10].w[14]"  1;
	setAttr ".wl[11].w[14]"  1;
	setAttr ".wl[12].w[14]"  1;
	setAttr ".wl[13].w[14]"  1;
	setAttr ".wl[14].w[14]"  1;
	setAttr ".wl[15].w[14]"  1;
	setAttr ".wl[16].w[14]"  1;
	setAttr ".wl[17].w[14]"  1;
	setAttr ".wl[18].w[14]"  1;
	setAttr ".wl[19].w[14]"  1;
	setAttr ".wl[20].w[14]"  1;
	setAttr ".wl[21].w[14]"  1;
	setAttr ".wl[22].w[14]"  1;
	setAttr ".wl[23].w[14]"  1;
	setAttr ".wl[24].w[14]"  1;
	setAttr ".wl[25].w[14]"  1;
	setAttr ".wl[26].w[14]"  1;
	setAttr ".wl[27].w[14]"  1;
	setAttr ".wl[28].w[14]"  1;
	setAttr ".wl[29].w[14]"  1;
	setAttr ".wl[30].w[14]"  1;
	setAttr ".wl[31].w[14]"  1;
	setAttr ".wl[32].w[14]"  1;
	setAttr ".wl[33].w[14]"  1;
	setAttr ".wl[34].w[14]"  1;
	setAttr ".wl[35].w[14]"  1;
	setAttr ".wl[36].w[14]"  1;
	setAttr ".wl[37].w[14]"  1;
	setAttr ".wl[38].w[14]"  1;
	setAttr ".wl[39].w[14]"  1;
	setAttr ".wl[40].w[14]"  1;
	setAttr ".wl[41].w[14]"  1;
	setAttr ".wl[42].w[14]"  1;
	setAttr ".wl[43].w[14]"  1;
	setAttr ".wl[44].w[14]"  1;
	setAttr ".wl[45].w[14]"  1;
	setAttr ".wl[46].w[14]"  1;
	setAttr ".wl[47].w[14]"  1;
	setAttr ".wl[48].w[14]"  1;
	setAttr ".wl[49].w[14]"  1;
	setAttr ".wl[50].w[14]"  1;
	setAttr ".wl[51].w[14]"  1;
	setAttr ".wl[52].w[14]"  1;
	setAttr ".wl[53].w[14]"  1;
	setAttr ".wl[54].w[14]"  1;
	setAttr ".wl[55].w[14]"  1;
	setAttr ".wl[56].w[14]"  1;
	setAttr ".wl[57].w[14]"  1;
	setAttr ".wl[58].w[14]"  1;
	setAttr ".wl[59].w[14]"  1;
	setAttr ".wl[60].w[14]"  1;
	setAttr ".wl[61].w[14]"  1;
	setAttr ".wl[62].w[14]"  1;
	setAttr ".wl[63].w[14]"  1;
	setAttr ".wl[64].w[14]"  1;
	setAttr ".wl[65].w[14]"  1;
	setAttr ".wl[66].w[14]"  1;
	setAttr ".wl[67].w[14]"  1;
	setAttr ".wl[68].w[14]"  1;
	setAttr ".wl[69].w[14]"  1;
	setAttr ".wl[70].w[14]"  1;
	setAttr ".wl[71].w[14]"  1;
	setAttr ".wl[72].w[14]"  1;
	setAttr ".wl[73].w[14]"  1;
	setAttr ".wl[74].w[14]"  1;
	setAttr ".wl[75].w[14]"  1;
	setAttr ".wl[76].w[14]"  1;
	setAttr ".wl[77].w[14]"  1;
	setAttr ".wl[78].w[14]"  1;
	setAttr ".wl[79].w[14]"  1;
	setAttr ".wl[80].w[14]"  1;
	setAttr ".wl[81].w[14]"  1;
	setAttr ".wl[82].w[14]"  1;
	setAttr ".wl[83].w[14]"  1;
	setAttr ".wl[84].w[14]"  1;
	setAttr ".wl[85].w[14]"  1;
	setAttr ".wl[86].w[14]"  1;
	setAttr ".wl[87].w[14]"  1;
	setAttr ".wl[88].w[14]"  1;
	setAttr ".wl[89].w[14]"  1;
	setAttr ".wl[90].w[14]"  1;
	setAttr ".wl[91].w[14]"  1;
	setAttr ".wl[92].w[14]"  1;
	setAttr ".wl[93].w[14]"  1;
	setAttr ".wl[94].w[14]"  1;
	setAttr ".wl[95].w[14]"  1;
	setAttr ".wl[96].w[14]"  1;
	setAttr ".wl[97].w[14]"  1;
	setAttr ".wl[98].w[14]"  1;
	setAttr ".wl[99].w[14]"  1;
	setAttr ".wl[100].w[14]"  1;
	setAttr ".wl[101].w[14]"  1;
	setAttr ".wl[102].w[14]"  1;
	setAttr ".wl[103].w[14]"  1;
	setAttr ".wl[104].w[14]"  1;
	setAttr ".wl[105].w[14]"  1;
	setAttr ".wl[106].w[14]"  1;
	setAttr ".wl[107].w[14]"  1;
	setAttr ".wl[108].w[14]"  1;
	setAttr ".wl[109].w[14]"  1;
	setAttr ".wl[110].w[14]"  1;
	setAttr ".wl[111].w[14]"  1;
	setAttr ".wl[112].w[14]"  1;
	setAttr ".wl[113].w[14]"  1;
	setAttr ".wl[114].w[14]"  1;
	setAttr ".wl[115].w[14]"  1;
	setAttr ".wl[116].w[14]"  1;
	setAttr ".wl[117].w[14]"  1;
	setAttr ".wl[118].w[14]"  1;
	setAttr ".wl[119].w[14]"  1;
	setAttr ".wl[120].w[14]"  1;
	setAttr ".wl[121].w[14]"  1;
	setAttr ".wl[122].w[14]"  1;
	setAttr ".wl[123].w[14]"  1;
	setAttr ".wl[124].w[14]"  1;
	setAttr ".wl[125].w[14]"  1;
	setAttr ".wl[126].w[14]"  1;
	setAttr ".wl[127].w[14]"  1;
	setAttr ".wl[128].w[14]"  1;
	setAttr ".wl[129].w[14]"  1;
	setAttr ".wl[130].w[14]"  1;
	setAttr ".wl[131].w[14]"  1;
	setAttr ".wl[132].w[14]"  1;
	setAttr ".wl[133].w[14]"  1;
	setAttr ".wl[134].w[14]"  1;
	setAttr ".wl[135].w[14]"  1;
	setAttr ".wl[136].w[14]"  1;
	setAttr ".wl[137].w[14]"  1;
	setAttr ".wl[138].w[14]"  1;
	setAttr ".wl[139].w[14]"  1;
	setAttr ".wl[140].w[14]"  1;
	setAttr ".wl[141].w[14]"  1;
	setAttr ".wl[142].w[14]"  1;
	setAttr ".wl[143].w[14]"  1;
	setAttr ".wl[144].w[14]"  1;
	setAttr ".wl[145].w[14]"  1;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.3935626233273428 28.545776100389716 1;
	setAttr ".pm[1]" -type "matrix" 2.9171120138216851e-16 -2.0309007691163655e-16 0.99999999999999978 0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-16 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-16 0
		 5.141099383762306 27.116763673658916 6.384860464405965e-15 1;
	setAttr ".pm[2]" -type "matrix" 1.9255976590806024e-16 4.2123171441692991e-16 -0.99999999999999978 0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-16 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-16 0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-14 1;
	setAttr ".pm[3]" -type "matrix" -2.2254253739202254e-16 4.0618990599018242e-16 -0.99999999999999978 0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-16 0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-16 0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-14 1;
	setAttr ".pm[4]" -type "matrix" -3.9263286525203279e-16 2.4567224874041425e-16 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-16 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-16 0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-14 1;
	setAttr ".pm[5]" -type "matrix" -4.3236892918211134e-16 -1.660497809547105e-16 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-16 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-16 0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[6]" -type "matrix" -4.2008944836864555e-16 -1.9503916541689796e-16 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-16 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-16 0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[7]" -type "matrix" -2.3367847652631728e-16 5.2235190187304229e-16 0.99999999999999978 0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-16 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-16 0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[8]" -type "matrix" 0.99999999999999978 7.889801871316359e-16 -4.1328562659829196e-16 0
		 -7.1325529571241588e-16 0.99999999999999978 7.4940054162198017e-16 0 5.2724101640594644e-16 -9.1593399531575296e-16 0.99999999999999933 0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[9]" -type "matrix" 4.3236892918211144e-16 1.6604978095471038e-16 -0.99999999999999978 0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-16 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-16 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[10]" -type "matrix" 4.200894483686456e-16 1.9503916541689791e-16 -1 0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-16 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-16 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[11]" -type "matrix" 2.3367847652631718e-16 1.6666666780649064e-16 0.99999999999999978 0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-16 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-16 0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[12]" -type "matrix" 0.99999999999999978 5.5459731209901231e-16 1.2054718195384451e-17 0
		 6.0517993594966963e-16 -1 -6.3837823915946462e-16 0 7.7400975786026954e-17 7.2164496600635165e-16 -0.99999999999999978 0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[13]" -type "matrix" -4.0112524636791838e-16 2.3154687949413117e-16 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-16 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-16 0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-14 1;
	setAttr ".pm[14]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -6.2314369504761027e-15 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[15]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -1.3912601358543541e-14 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[16]" -type "matrix" 5.0813779435729561e-16 1.296078129378641e-15 0.99999999999999978 0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-16 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-15 0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[17]" -type "matrix" -1.0103368778348008e-15 -4.0484730914130193e-16 -0.99999999999999978 0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-16 0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-15 0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[18]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-16 -1.5416536010143854e-15 0
		 5.3246366272141857e-16 0.99999999999999978 -5.6898930012039322e-16 0 1.611115502654318e-15 6.5919492087118591e-16 0.99999999999999978 0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[19]" -type "matrix" 5.0211778276518463e-16 -8.7774694673919145e-16 0.99999999999999978 0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-16 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-15 0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[20]" -type "matrix" 7.131658175178445e-16 -5.6945907845917879e-16 -0.99999999999999978 0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-16 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-16 0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[21]" -type "matrix" 1 -5.6270869122286394e-16 7.6910344414326529e-17 0
		 -2.7393525345077987e-16 -0.99999999999999956 -4.8919202022545929e-15 0 2.3587309789062293e-16 4.7045700668490977e-15 -0.99999999999999978 0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".pm[22]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[23]" -type "matrix" 6.693613450145993e-16 1.7889765444095194e-15 -1 0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-15 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-15 0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[24]" -type "matrix" -3.1806489720151775e-16 7.1110600523609952e-16 1 0
		 0.23651468939617115 -0.97162791319508335 7.5749132939959172e-16 0 0.97162791319508313 0.23651468939617099 1.3112890213765296e-16 0
		 15.753396610245158 -24.192069798095329 14.952100000000017 1;
	setAttr ".pm[25]" -type "matrix" -7.7862017067354629e-16 2.5809568655261894e-08 0.99999999999999978 0
		 0.97741416543986748 -0.21133279252753714 5.4544089702159377e-09 0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-08 0
		 38.494799132532364 23.920859481432771 12.09489938261296 1;
	setAttr ".pm[26]" -type "matrix" -1.3805402767519449e-08 1.3615198156657945e-08 -0.99999999999999978 0
		 0.93887631588660825 -0.3442546491584228 -1.7648660945676001e-08 0 -0.34425464915842274 -0.93887631588660825 -8.0304129894412106e-09 0
		 24.344687153438446 -43.723300868428026 -12.094900931389603 1;
	setAttr ".pm[27]" -type "matrix" 7.7249776432890225e-09 -1.6343368966662313e-08 -1 0
		 0.017238817250843728 -0.99985140054899735 1.6474109837531978e-08 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-09 0
		 -30.350163356585991 -42.766656220525725 -12.094899535503078 1;
	setAttr ".pm[28]" -type "matrix" 1 -1.6162482267249325e-08 -1.0632309108148316e-08 0
		 -1.6162482276970348e-08 -0.99999999999999956 -1.5307677505295637e-14 0 -1.0632309067137227e-08 1.5240265432259012e-14 -0.99999999999999956 0
		 14.182899160148009 -42.525700229230644 -14.346000150797618 1;
	setAttr ".pm[29]" -type "matrix" 3.6929243270364759e-16 4.7854520619298905e-17 -1 0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-16 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-16 0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[30]" -type "matrix" 2.8232439365995012e-16 -2.4058376823856014e-16 1 0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-16 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-16 0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[31]" -type "matrix" 3.3969043598553431e-16 1.4899000132653635e-16 1 0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-16 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-16 0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[32]" -type "matrix" 2.0731684078555344e-16 2.5897082728895037e-16 -1 0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-17 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-16 0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[33]" -type "matrix" 3.1628320018632648e-16 -1.0005548030928621e-16 -1 0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-17 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-16 0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[34]" -type "matrix" 1 -8.8267921761093423e-17 -6.84540878947466e-16 0
		 5.982944840221322e-17 1.0000000000000002 -3.4000580129145434e-16 0 7.1046403083575275e-16 3.4347524824340795e-16 1 0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
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
	rename -uid "D09A7372-4C09-D94E-AE87-1AB783C40EAF";
createNode objectSet -n "skinCluster2Set";
	rename -uid "4E0CF99D-4B93-B0A2-29EB-2D9CAA31844E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	rename -uid "E744DE81-4D68-8555-04D8-8F8B525C2399";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	rename -uid "BCC7959D-44DE-0AB1-A53E-5EB8DCEB3C61";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "CE5A5CCE-4058-AF0B-53B0-A0943685B198";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "BC6F7E79-4991-70A9-BB31-1C967C4B1D5C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "E787F619-4652-C388-7824-92B61526B94C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster3";
	rename -uid "0A71B560-4610-E84D-8A7E-53B2C6AB538C";
	setAttr -s 332 ".wl";
	setAttr ".wl[0].w[15]"  1;
	setAttr ".wl[1].w[15]"  1;
	setAttr ".wl[2].w[15]"  1;
	setAttr ".wl[3].w[15]"  1;
	setAttr ".wl[4].w[15]"  1;
	setAttr ".wl[5].w[15]"  1;
	setAttr ".wl[6].w[15]"  1;
	setAttr ".wl[7].w[15]"  1;
	setAttr ".wl[8].w[15]"  1;
	setAttr ".wl[9].w[15]"  1;
	setAttr ".wl[10].w[15]"  1;
	setAttr ".wl[11].w[15]"  1;
	setAttr ".wl[12].w[15]"  1;
	setAttr ".wl[13].w[15]"  1;
	setAttr ".wl[14].w[15]"  1;
	setAttr ".wl[15].w[15]"  1;
	setAttr ".wl[16].w[15]"  1;
	setAttr ".wl[17].w[15]"  1;
	setAttr ".wl[18].w[15]"  1;
	setAttr ".wl[19].w[15]"  1;
	setAttr ".wl[20].w[15]"  1;
	setAttr ".wl[21].w[15]"  1;
	setAttr ".wl[22].w[15]"  1;
	setAttr ".wl[23].w[15]"  1;
	setAttr ".wl[24].w[15]"  1;
	setAttr ".wl[25].w[15]"  1;
	setAttr ".wl[26].w[15]"  1;
	setAttr ".wl[27].w[15]"  1;
	setAttr ".wl[28].w[15]"  1;
	setAttr ".wl[29].w[15]"  1;
	setAttr ".wl[30].w[15]"  1;
	setAttr ".wl[31].w[15]"  1;
	setAttr ".wl[32].w[15]"  1;
	setAttr ".wl[33].w[15]"  1;
	setAttr ".wl[34].w[15]"  1;
	setAttr ".wl[35].w[15]"  1;
	setAttr ".wl[36].w[15]"  1;
	setAttr ".wl[37].w[15]"  1;
	setAttr ".wl[38].w[15]"  1;
	setAttr ".wl[39].w[15]"  1;
	setAttr ".wl[40].w[15]"  1;
	setAttr ".wl[41].w[15]"  1;
	setAttr ".wl[42].w[15]"  1;
	setAttr ".wl[43].w[15]"  1;
	setAttr ".wl[44].w[15]"  1;
	setAttr ".wl[45].w[15]"  1;
	setAttr ".wl[46].w[15]"  1;
	setAttr ".wl[47].w[15]"  1;
	setAttr ".wl[48].w[15]"  1;
	setAttr ".wl[49].w[15]"  1;
	setAttr ".wl[50].w[15]"  1;
	setAttr ".wl[51].w[15]"  1;
	setAttr ".wl[52].w[15]"  1;
	setAttr ".wl[53].w[15]"  1;
	setAttr ".wl[54].w[15]"  1;
	setAttr ".wl[55].w[15]"  1;
	setAttr ".wl[56].w[15]"  1;
	setAttr ".wl[57].w[15]"  1;
	setAttr ".wl[58].w[15]"  1;
	setAttr ".wl[59].w[15]"  1;
	setAttr ".wl[60].w[15]"  1;
	setAttr ".wl[61].w[15]"  1;
	setAttr ".wl[62].w[15]"  1;
	setAttr ".wl[63].w[15]"  1;
	setAttr ".wl[64].w[15]"  1;
	setAttr ".wl[65].w[15]"  1;
	setAttr ".wl[66].w[15]"  1;
	setAttr ".wl[67].w[15]"  1;
	setAttr ".wl[68].w[15]"  1;
	setAttr ".wl[69].w[15]"  1;
	setAttr ".wl[70].w[15]"  1;
	setAttr ".wl[71].w[15]"  1;
	setAttr ".wl[72].w[15]"  1;
	setAttr ".wl[73].w[15]"  1;
	setAttr ".wl[74].w[15]"  1;
	setAttr ".wl[75].w[15]"  1;
	setAttr ".wl[76].w[15]"  1;
	setAttr ".wl[77].w[15]"  1;
	setAttr ".wl[78].w[15]"  1;
	setAttr ".wl[79].w[15]"  1;
	setAttr ".wl[80].w[15]"  1;
	setAttr ".wl[81].w[15]"  1;
	setAttr ".wl[82].w[15]"  1;
	setAttr ".wl[83].w[15]"  1;
	setAttr ".wl[84].w[15]"  1;
	setAttr ".wl[85].w[15]"  1;
	setAttr ".wl[86].w[15]"  1;
	setAttr ".wl[87].w[15]"  1;
	setAttr ".wl[88].w[15]"  1;
	setAttr ".wl[89].w[15]"  1;
	setAttr ".wl[90].w[15]"  1;
	setAttr ".wl[91].w[15]"  1;
	setAttr ".wl[92].w[15]"  1;
	setAttr ".wl[93].w[15]"  1;
	setAttr ".wl[94].w[15]"  1;
	setAttr ".wl[95].w[15]"  1;
	setAttr ".wl[96].w[15]"  1;
	setAttr ".wl[97].w[15]"  1;
	setAttr ".wl[98].w[15]"  1;
	setAttr ".wl[99].w[15]"  1;
	setAttr ".wl[100].w[15]"  1;
	setAttr ".wl[101].w[15]"  1;
	setAttr ".wl[102].w[15]"  1;
	setAttr ".wl[103].w[15]"  1;
	setAttr ".wl[104].w[15]"  1;
	setAttr ".wl[105].w[15]"  1;
	setAttr ".wl[106].w[15]"  1;
	setAttr ".wl[107].w[15]"  1;
	setAttr ".wl[108].w[15]"  1;
	setAttr ".wl[109].w[15]"  1;
	setAttr ".wl[110].w[15]"  1;
	setAttr ".wl[111].w[15]"  1;
	setAttr ".wl[112].w[15]"  1;
	setAttr ".wl[113].w[15]"  1;
	setAttr ".wl[114].w[15]"  1;
	setAttr ".wl[115].w[15]"  1;
	setAttr ".wl[116].w[15]"  1;
	setAttr ".wl[117].w[15]"  1;
	setAttr ".wl[118].w[15]"  1;
	setAttr ".wl[119].w[15]"  1;
	setAttr ".wl[120].w[15]"  1;
	setAttr ".wl[121].w[15]"  1;
	setAttr ".wl[122].w[15]"  1;
	setAttr ".wl[123].w[15]"  1;
	setAttr ".wl[124].w[15]"  1;
	setAttr ".wl[125].w[15]"  1;
	setAttr ".wl[126].w[15]"  1;
	setAttr ".wl[127].w[15]"  1;
	setAttr ".wl[128].w[15]"  1;
	setAttr ".wl[129].w[15]"  1;
	setAttr ".wl[130].w[15]"  1;
	setAttr ".wl[131].w[15]"  1;
	setAttr ".wl[132].w[15]"  1;
	setAttr ".wl[133].w[15]"  1;
	setAttr ".wl[134].w[15]"  1;
	setAttr ".wl[135].w[15]"  1;
	setAttr ".wl[136].w[15]"  1;
	setAttr ".wl[137].w[15]"  1;
	setAttr ".wl[138].w[15]"  1;
	setAttr ".wl[139].w[15]"  1;
	setAttr ".wl[140].w[15]"  1;
	setAttr ".wl[141].w[15]"  1;
	setAttr ".wl[142].w[15]"  1;
	setAttr ".wl[143].w[15]"  1;
	setAttr ".wl[144].w[15]"  1;
	setAttr ".wl[145].w[15]"  1;
	setAttr ".wl[146].w[15]"  1;
	setAttr ".wl[147].w[15]"  1;
	setAttr ".wl[148].w[15]"  1;
	setAttr ".wl[149].w[15]"  1;
	setAttr ".wl[150].w[15]"  1;
	setAttr ".wl[151].w[15]"  1;
	setAttr ".wl[152].w[15]"  1;
	setAttr ".wl[153].w[15]"  1;
	setAttr ".wl[154].w[15]"  1;
	setAttr ".wl[155].w[15]"  1;
	setAttr ".wl[156].w[15]"  1;
	setAttr ".wl[157].w[15]"  1;
	setAttr ".wl[158].w[15]"  1;
	setAttr ".wl[159].w[15]"  1;
	setAttr ".wl[160].w[15]"  1;
	setAttr ".wl[161].w[15]"  1;
	setAttr ".wl[162].w[15]"  1;
	setAttr ".wl[163].w[15]"  1;
	setAttr ".wl[164].w[15]"  1;
	setAttr ".wl[165].w[15]"  1;
	setAttr ".wl[166].w[15]"  1;
	setAttr ".wl[167].w[15]"  1;
	setAttr ".wl[168].w[15]"  1;
	setAttr ".wl[169].w[15]"  1;
	setAttr ".wl[170].w[15]"  1;
	setAttr ".wl[171].w[15]"  1;
	setAttr ".wl[172].w[15]"  1;
	setAttr ".wl[173].w[15]"  1;
	setAttr ".wl[174].w[15]"  1;
	setAttr ".wl[175].w[15]"  1;
	setAttr ".wl[176].w[15]"  1;
	setAttr ".wl[177].w[15]"  1;
	setAttr ".wl[178].w[15]"  1;
	setAttr ".wl[179].w[15]"  1;
	setAttr ".wl[180].w[15]"  1;
	setAttr ".wl[181].w[15]"  1;
	setAttr ".wl[182].w[15]"  1;
	setAttr ".wl[183].w[15]"  1;
	setAttr ".wl[184].w[15]"  1;
	setAttr ".wl[185].w[15]"  1;
	setAttr ".wl[186].w[15]"  1;
	setAttr ".wl[187].w[15]"  1;
	setAttr ".wl[188].w[15]"  1;
	setAttr ".wl[189].w[15]"  1;
	setAttr ".wl[190].w[15]"  1;
	setAttr ".wl[191].w[15]"  1;
	setAttr ".wl[192].w[15]"  1;
	setAttr ".wl[193].w[15]"  1;
	setAttr ".wl[194].w[15]"  1;
	setAttr ".wl[195].w[15]"  1;
	setAttr ".wl[196].w[15]"  1;
	setAttr ".wl[197].w[15]"  1;
	setAttr ".wl[198].w[15]"  1;
	setAttr ".wl[199].w[15]"  1;
	setAttr ".wl[200].w[15]"  1;
	setAttr ".wl[201].w[15]"  1;
	setAttr ".wl[202].w[15]"  1;
	setAttr ".wl[203].w[15]"  1;
	setAttr ".wl[204].w[15]"  1;
	setAttr ".wl[205].w[15]"  1;
	setAttr ".wl[206].w[15]"  1;
	setAttr ".wl[207].w[15]"  1;
	setAttr ".wl[208].w[15]"  1;
	setAttr ".wl[209].w[15]"  1;
	setAttr ".wl[210].w[15]"  1;
	setAttr ".wl[211].w[15]"  1;
	setAttr ".wl[212].w[15]"  1;
	setAttr ".wl[213].w[15]"  1;
	setAttr ".wl[214].w[15]"  1;
	setAttr ".wl[215].w[15]"  1;
	setAttr ".wl[216].w[15]"  1;
	setAttr ".wl[217].w[15]"  1;
	setAttr ".wl[218].w[15]"  1;
	setAttr ".wl[219].w[15]"  1;
	setAttr ".wl[220].w[15]"  1;
	setAttr ".wl[221].w[15]"  1;
	setAttr ".wl[222].w[15]"  1;
	setAttr ".wl[223].w[15]"  1;
	setAttr ".wl[224].w[15]"  1;
	setAttr ".wl[225].w[15]"  1;
	setAttr ".wl[226].w[15]"  1;
	setAttr ".wl[227].w[15]"  1;
	setAttr ".wl[228].w[15]"  1;
	setAttr ".wl[229].w[15]"  1;
	setAttr ".wl[230].w[15]"  1;
	setAttr ".wl[231].w[15]"  1;
	setAttr ".wl[232].w[15]"  1;
	setAttr ".wl[233].w[15]"  1;
	setAttr ".wl[234].w[15]"  1;
	setAttr ".wl[235].w[15]"  1;
	setAttr ".wl[236].w[15]"  1;
	setAttr ".wl[237].w[15]"  1;
	setAttr ".wl[238].w[15]"  1;
	setAttr ".wl[239].w[15]"  1;
	setAttr ".wl[240].w[15]"  1;
	setAttr ".wl[241].w[15]"  1;
	setAttr ".wl[242].w[15]"  1;
	setAttr ".wl[243].w[15]"  1;
	setAttr ".wl[244].w[15]"  1;
	setAttr ".wl[245].w[15]"  1;
	setAttr ".wl[246].w[15]"  1;
	setAttr ".wl[247].w[15]"  1;
	setAttr ".wl[248].w[15]"  1;
	setAttr ".wl[249].w[15]"  1;
	setAttr ".wl[250].w[15]"  1;
	setAttr ".wl[251].w[15]"  1;
	setAttr ".wl[252].w[15]"  1;
	setAttr ".wl[253].w[15]"  1;
	setAttr ".wl[254].w[15]"  1;
	setAttr ".wl[255].w[15]"  1;
	setAttr ".wl[256].w[15]"  1;
	setAttr ".wl[257].w[15]"  1;
	setAttr ".wl[258].w[15]"  1;
	setAttr ".wl[259].w[15]"  1;
	setAttr ".wl[260].w[15]"  1;
	setAttr ".wl[261].w[15]"  1;
	setAttr ".wl[262].w[15]"  1;
	setAttr ".wl[263].w[15]"  1;
	setAttr ".wl[264].w[15]"  1;
	setAttr ".wl[265].w[15]"  1;
	setAttr ".wl[266].w[15]"  1;
	setAttr ".wl[267].w[15]"  1;
	setAttr ".wl[268].w[15]"  1;
	setAttr ".wl[269].w[15]"  1;
	setAttr ".wl[270].w[15]"  1;
	setAttr ".wl[271].w[15]"  1;
	setAttr ".wl[272].w[15]"  1;
	setAttr ".wl[273].w[15]"  1;
	setAttr ".wl[274].w[15]"  1;
	setAttr ".wl[275].w[15]"  1;
	setAttr ".wl[276].w[15]"  1;
	setAttr ".wl[277].w[15]"  1;
	setAttr ".wl[278].w[15]"  1;
	setAttr ".wl[279].w[15]"  1;
	setAttr ".wl[280].w[15]"  1;
	setAttr ".wl[281].w[15]"  1;
	setAttr ".wl[282].w[15]"  1;
	setAttr ".wl[283].w[15]"  1;
	setAttr ".wl[284].w[15]"  1;
	setAttr ".wl[285].w[15]"  1;
	setAttr ".wl[286].w[15]"  1;
	setAttr ".wl[287].w[15]"  1;
	setAttr ".wl[288].w[15]"  1;
	setAttr ".wl[289].w[15]"  1;
	setAttr ".wl[290].w[15]"  1;
	setAttr ".wl[291].w[15]"  1;
	setAttr ".wl[292].w[15]"  1;
	setAttr ".wl[293].w[15]"  1;
	setAttr ".wl[294].w[15]"  1;
	setAttr ".wl[295].w[15]"  1;
	setAttr ".wl[296].w[15]"  1;
	setAttr ".wl[297].w[15]"  1;
	setAttr ".wl[298].w[15]"  1;
	setAttr ".wl[299].w[15]"  1;
	setAttr ".wl[300].w[15]"  1;
	setAttr ".wl[301].w[15]"  1;
	setAttr ".wl[302].w[15]"  1;
	setAttr ".wl[303].w[15]"  1;
	setAttr ".wl[304].w[15]"  1;
	setAttr ".wl[305].w[15]"  1;
	setAttr ".wl[306].w[15]"  1;
	setAttr ".wl[307].w[15]"  1;
	setAttr ".wl[308].w[15]"  1;
	setAttr ".wl[309].w[15]"  1;
	setAttr ".wl[310].w[15]"  1;
	setAttr ".wl[311].w[15]"  1;
	setAttr ".wl[312].w[15]"  1;
	setAttr ".wl[313].w[15]"  1;
	setAttr ".wl[314].w[15]"  1;
	setAttr ".wl[315].w[15]"  1;
	setAttr ".wl[316].w[15]"  1;
	setAttr ".wl[317].w[15]"  1;
	setAttr ".wl[318].w[15]"  1;
	setAttr ".wl[319].w[15]"  1;
	setAttr ".wl[320].w[15]"  1;
	setAttr ".wl[321].w[15]"  1;
	setAttr ".wl[322].w[15]"  1;
	setAttr ".wl[323].w[15]"  1;
	setAttr ".wl[324].w[15]"  1;
	setAttr ".wl[325].w[15]"  1;
	setAttr ".wl[326].w[15]"  1;
	setAttr ".wl[327].w[15]"  1;
	setAttr ".wl[328].w[15]"  1;
	setAttr ".wl[329].w[15]"  1;
	setAttr ".wl[330].w[15]"  1;
	setAttr ".wl[331].w[15]"  1;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.3935626233273428 28.545776100389716 1;
	setAttr ".pm[1]" -type "matrix" 2.9171120138216851e-16 -2.0309007691163655e-16 0.99999999999999978 0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-16 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-16 0
		 5.141099383762306 27.116763673658916 6.384860464405965e-15 1;
	setAttr ".pm[2]" -type "matrix" 1.9255976590806024e-16 4.2123171441692991e-16 -0.99999999999999978 0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-16 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-16 0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-14 1;
	setAttr ".pm[3]" -type "matrix" -2.2254253739202254e-16 4.0618990599018242e-16 -0.99999999999999978 0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-16 0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-16 0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-14 1;
	setAttr ".pm[4]" -type "matrix" -3.9263286525203279e-16 2.4567224874041425e-16 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-16 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-16 0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-14 1;
	setAttr ".pm[5]" -type "matrix" -4.3236892918211134e-16 -1.660497809547105e-16 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-16 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-16 0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[6]" -type "matrix" -4.2008944836864555e-16 -1.9503916541689796e-16 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-16 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-16 0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[7]" -type "matrix" -2.3367847652631728e-16 5.2235190187304229e-16 0.99999999999999978 0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-16 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-16 0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[8]" -type "matrix" 0.99999999999999978 7.889801871316359e-16 -4.1328562659829196e-16 0
		 -7.1325529571241588e-16 0.99999999999999978 7.4940054162198017e-16 0 5.2724101640594644e-16 -9.1593399531575296e-16 0.99999999999999933 0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[9]" -type "matrix" 4.3236892918211144e-16 1.6604978095471038e-16 -0.99999999999999978 0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-16 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-16 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[10]" -type "matrix" 4.200894483686456e-16 1.9503916541689791e-16 -1 0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-16 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-16 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[11]" -type "matrix" 2.3367847652631718e-16 1.6666666780649064e-16 0.99999999999999978 0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-16 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-16 0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[12]" -type "matrix" 0.99999999999999978 5.5459731209901231e-16 1.2054718195384451e-17 0
		 6.0517993594966963e-16 -1 -6.3837823915946462e-16 0 7.7400975786026954e-17 7.2164496600635165e-16 -0.99999999999999978 0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[13]" -type "matrix" -4.0112524636791838e-16 2.3154687949413117e-16 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-16 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-16 0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-14 1;
	setAttr ".pm[14]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -6.2314369504761027e-15 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[15]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -1.3912601358543541e-14 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[16]" -type "matrix" 5.0813779435729561e-16 1.296078129378641e-15 0.99999999999999978 0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-16 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-15 0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[17]" -type "matrix" -1.0103368778348008e-15 -4.0484730914130193e-16 -0.99999999999999978 0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-16 0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-15 0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[18]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-16 -1.5416536010143854e-15 0
		 5.3246366272141857e-16 0.99999999999999978 -5.6898930012039322e-16 0 1.611115502654318e-15 6.5919492087118591e-16 0.99999999999999978 0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[19]" -type "matrix" 5.0211778276518463e-16 -8.7774694673919145e-16 0.99999999999999978 0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-16 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-15 0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[20]" -type "matrix" 7.131658175178445e-16 -5.6945907845917879e-16 -0.99999999999999978 0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-16 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-16 0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[21]" -type "matrix" 1 -5.6270869122286394e-16 7.6910344414326529e-17 0
		 -2.7393525345077987e-16 -0.99999999999999956 -4.8919202022545929e-15 0 2.3587309789062293e-16 4.7045700668490977e-15 -0.99999999999999978 0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".pm[22]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[23]" -type "matrix" 6.693613450145993e-16 1.7889765444095194e-15 -1 0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-15 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-15 0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[24]" -type "matrix" -3.1806489720151775e-16 7.1110600523609952e-16 1 0
		 0.23651468939617115 -0.97162791319508335 7.5749132939959172e-16 0 0.97162791319508313 0.23651468939617099 1.3112890213765296e-16 0
		 15.753396610245158 -24.192069798095329 14.952100000000017 1;
	setAttr ".pm[25]" -type "matrix" -7.7862017067354629e-16 2.5809568655261894e-08 0.99999999999999978 0
		 0.97741416543986748 -0.21133279252753714 5.4544089702159377e-09 0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-08 0
		 38.494799132532364 23.920859481432771 12.09489938261296 1;
	setAttr ".pm[26]" -type "matrix" -1.3805402767519449e-08 1.3615198156657945e-08 -0.99999999999999978 0
		 0.93887631588660825 -0.3442546491584228 -1.7648660945676001e-08 0 -0.34425464915842274 -0.93887631588660825 -8.0304129894412106e-09 0
		 24.344687153438446 -43.723300868428026 -12.094900931389603 1;
	setAttr ".pm[27]" -type "matrix" 7.7249776432890225e-09 -1.6343368966662313e-08 -1 0
		 0.017238817250843728 -0.99985140054899735 1.6474109837531978e-08 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-09 0
		 -30.350163356585991 -42.766656220525725 -12.094899535503078 1;
	setAttr ".pm[28]" -type "matrix" 1 -1.6162482267249325e-08 -1.0632309108148316e-08 0
		 -1.6162482276970348e-08 -0.99999999999999956 -1.5307677505295637e-14 0 -1.0632309067137227e-08 1.5240265432259012e-14 -0.99999999999999956 0
		 14.182899160148009 -42.525700229230644 -14.346000150797618 1;
	setAttr ".pm[29]" -type "matrix" 3.6929243270364759e-16 4.7854520619298905e-17 -1 0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-16 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-16 0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[30]" -type "matrix" 2.8232439365995012e-16 -2.4058376823856014e-16 1 0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-16 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-16 0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[31]" -type "matrix" 3.3969043598553431e-16 1.4899000132653635e-16 1 0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-16 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-16 0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[32]" -type "matrix" 2.0731684078555344e-16 2.5897082728895037e-16 -1 0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-17 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-16 0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[33]" -type "matrix" 3.1628320018632648e-16 -1.0005548030928621e-16 -1 0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-17 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-16 0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[34]" -type "matrix" 1 -8.8267921761093423e-17 -6.84540878947466e-16 0
		 5.982944840221322e-17 1.0000000000000002 -3.4000580129145434e-16 0 7.1046403083575275e-16 3.4347524824340795e-16 1 0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
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
	rename -uid "3C397261-4351-3BCB-5996-3BACB59E36B0";
createNode objectSet -n "skinCluster3Set";
	rename -uid "169F7BA6-41E6-01D7-35E2-FEA4780BAF65";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	rename -uid "65513DA9-4A02-1469-81AE-A38DB20083DC";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	rename -uid "5478C335-4939-9C72-AE14-71BAEF67DA32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet3";
	rename -uid "AB7ED3FF-49AF-E8BD-481F-F59BBA70810F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	rename -uid "B9054EE4-4431-9B33-5AF8-C189FF652B8B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "E9694B99-4A26-BFFC-9F2B-498BACF4132C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster4";
	rename -uid "72A3E131-4371-8BE3-A5F2-CC8FDC1190A9";
	setAttr -s 188 ".wl";
	setAttr ".wl[0].w[5]"  1;
	setAttr ".wl[1].w[5]"  1;
	setAttr ".wl[2].w[5]"  1;
	setAttr ".wl[3].w[5]"  1;
	setAttr ".wl[4].w[5]"  1;
	setAttr ".wl[5].w[5]"  1;
	setAttr ".wl[6].w[5]"  1;
	setAttr ".wl[7].w[5]"  1;
	setAttr ".wl[8].w[5]"  1;
	setAttr ".wl[9].w[5]"  1;
	setAttr ".wl[10].w[5]"  1;
	setAttr ".wl[11].w[5]"  1;
	setAttr ".wl[12].w[5]"  1;
	setAttr ".wl[13].w[5]"  1;
	setAttr ".wl[14].w[5]"  1;
	setAttr ".wl[15].w[5]"  1;
	setAttr ".wl[16].w[5]"  1;
	setAttr ".wl[17].w[5]"  1;
	setAttr ".wl[18].w[5]"  1;
	setAttr ".wl[19].w[5]"  1;
	setAttr ".wl[20].w[5]"  1;
	setAttr ".wl[21].w[5]"  1;
	setAttr ".wl[22].w[5]"  1;
	setAttr ".wl[23].w[5]"  1;
	setAttr ".wl[24].w[5]"  1;
	setAttr ".wl[25].w[5]"  1;
	setAttr ".wl[26].w[5]"  1;
	setAttr ".wl[27].w[5]"  1;
	setAttr ".wl[28].w[5]"  1;
	setAttr ".wl[29].w[5]"  1;
	setAttr ".wl[30].w[5]"  1;
	setAttr ".wl[31].w[5]"  1;
	setAttr ".wl[32].w[5]"  1;
	setAttr ".wl[33].w[5]"  1;
	setAttr ".wl[34].w[5]"  1;
	setAttr ".wl[35].w[5]"  1;
	setAttr ".wl[36].w[5]"  1;
	setAttr ".wl[37].w[5]"  1;
	setAttr ".wl[38].w[5]"  1;
	setAttr ".wl[39].w[5]"  1;
	setAttr ".wl[40].w[5]"  1;
	setAttr ".wl[41].w[5]"  1;
	setAttr ".wl[42].w[5]"  1;
	setAttr ".wl[43].w[5]"  1;
	setAttr ".wl[44].w[5]"  1;
	setAttr ".wl[45].w[5]"  1;
	setAttr ".wl[46].w[5]"  1;
	setAttr ".wl[47].w[5]"  1;
	setAttr ".wl[48].w[5]"  1;
	setAttr ".wl[49].w[5]"  1;
	setAttr ".wl[50].w[5]"  1;
	setAttr ".wl[51].w[5]"  1;
	setAttr ".wl[52].w[5]"  1;
	setAttr ".wl[53].w[5]"  1;
	setAttr ".wl[54].w[5]"  1;
	setAttr ".wl[55].w[5]"  1;
	setAttr ".wl[56].w[5]"  1;
	setAttr ".wl[57].w[5]"  1;
	setAttr ".wl[58].w[5]"  1;
	setAttr ".wl[59].w[5]"  1;
	setAttr ".wl[60].w[5]"  1;
	setAttr ".wl[61].w[5]"  1;
	setAttr ".wl[62].w[5]"  1;
	setAttr ".wl[63].w[5]"  1;
	setAttr ".wl[64].w[5]"  1;
	setAttr ".wl[65].w[5]"  1;
	setAttr ".wl[66].w[5]"  1;
	setAttr ".wl[67].w[5]"  1;
	setAttr ".wl[68].w[5]"  1;
	setAttr ".wl[69].w[5]"  1;
	setAttr ".wl[70].w[5]"  1;
	setAttr ".wl[71].w[5]"  1;
	setAttr ".wl[72].w[5]"  1;
	setAttr ".wl[73].w[5]"  1;
	setAttr ".wl[74].w[5]"  1;
	setAttr ".wl[75].w[5]"  1;
	setAttr ".wl[76].w[5]"  1;
	setAttr ".wl[77].w[5]"  1;
	setAttr ".wl[78].w[5]"  1;
	setAttr ".wl[79].w[5]"  1;
	setAttr ".wl[80].w[5]"  1;
	setAttr ".wl[81].w[5]"  1;
	setAttr ".wl[82].w[5]"  1;
	setAttr ".wl[83].w[5]"  1;
	setAttr ".wl[84].w[5]"  1;
	setAttr ".wl[85].w[5]"  1;
	setAttr ".wl[86].w[5]"  1;
	setAttr ".wl[87].w[5]"  1;
	setAttr ".wl[88].w[5]"  1;
	setAttr ".wl[89].w[5]"  1;
	setAttr ".wl[90].w[5]"  1;
	setAttr ".wl[91].w[5]"  1;
	setAttr ".wl[92].w[5]"  1;
	setAttr ".wl[93].w[5]"  1;
	setAttr ".wl[94].w[9]"  1;
	setAttr ".wl[95].w[9]"  1;
	setAttr ".wl[96].w[9]"  1;
	setAttr ".wl[97].w[9]"  1;
	setAttr ".wl[98].w[9]"  1;
	setAttr ".wl[99].w[9]"  1;
	setAttr ".wl[100].w[9]"  1;
	setAttr ".wl[101].w[9]"  1;
	setAttr ".wl[102].w[9]"  1;
	setAttr ".wl[103].w[9]"  1;
	setAttr ".wl[104].w[9]"  1;
	setAttr ".wl[105].w[9]"  1;
	setAttr ".wl[106].w[9]"  1;
	setAttr ".wl[107].w[9]"  1;
	setAttr ".wl[108].w[9]"  1;
	setAttr ".wl[109].w[9]"  1;
	setAttr ".wl[110].w[9]"  1;
	setAttr ".wl[111].w[9]"  1;
	setAttr ".wl[112].w[9]"  1;
	setAttr ".wl[113].w[9]"  1;
	setAttr ".wl[114].w[9]"  1;
	setAttr ".wl[115].w[9]"  1;
	setAttr ".wl[116].w[9]"  1;
	setAttr ".wl[117].w[9]"  1;
	setAttr ".wl[118].w[9]"  1;
	setAttr ".wl[119].w[9]"  1;
	setAttr ".wl[120].w[9]"  1;
	setAttr ".wl[121].w[9]"  1;
	setAttr ".wl[122].w[9]"  1;
	setAttr ".wl[123].w[9]"  1;
	setAttr ".wl[124].w[9]"  1;
	setAttr ".wl[125].w[9]"  1;
	setAttr ".wl[126].w[9]"  1;
	setAttr ".wl[127].w[9]"  1;
	setAttr ".wl[128].w[9]"  1;
	setAttr ".wl[129].w[9]"  1;
	setAttr ".wl[130].w[9]"  1;
	setAttr ".wl[131].w[9]"  1;
	setAttr ".wl[132].w[9]"  1;
	setAttr ".wl[133].w[9]"  1;
	setAttr ".wl[134].w[9]"  1;
	setAttr ".wl[135].w[9]"  1;
	setAttr ".wl[136].w[9]"  1;
	setAttr ".wl[137].w[9]"  1;
	setAttr ".wl[138].w[9]"  1;
	setAttr ".wl[139].w[9]"  1;
	setAttr ".wl[140].w[9]"  1;
	setAttr ".wl[141].w[9]"  1;
	setAttr ".wl[142].w[9]"  1;
	setAttr ".wl[143].w[9]"  1;
	setAttr ".wl[144].w[9]"  1;
	setAttr ".wl[145].w[9]"  1;
	setAttr ".wl[146].w[9]"  1;
	setAttr ".wl[147].w[9]"  1;
	setAttr ".wl[148].w[9]"  1;
	setAttr ".wl[149].w[9]"  1;
	setAttr ".wl[150].w[9]"  1;
	setAttr ".wl[151].w[9]"  1;
	setAttr ".wl[152].w[9]"  1;
	setAttr ".wl[153].w[9]"  1;
	setAttr ".wl[154].w[9]"  1;
	setAttr ".wl[155].w[9]"  1;
	setAttr ".wl[156].w[9]"  1;
	setAttr ".wl[157].w[9]"  1;
	setAttr ".wl[158].w[9]"  1;
	setAttr ".wl[159].w[9]"  1;
	setAttr ".wl[160].w[9]"  1;
	setAttr ".wl[161].w[9]"  1;
	setAttr ".wl[162].w[9]"  1;
	setAttr ".wl[163].w[9]"  1;
	setAttr ".wl[164].w[9]"  1;
	setAttr ".wl[165].w[9]"  1;
	setAttr ".wl[166].w[9]"  1;
	setAttr ".wl[167].w[9]"  1;
	setAttr ".wl[168].w[9]"  1;
	setAttr ".wl[169].w[9]"  1;
	setAttr ".wl[170].w[9]"  1;
	setAttr ".wl[171].w[9]"  1;
	setAttr ".wl[172].w[9]"  1;
	setAttr ".wl[173].w[9]"  1;
	setAttr ".wl[174].w[9]"  1;
	setAttr ".wl[175].w[9]"  1;
	setAttr ".wl[176].w[9]"  1;
	setAttr ".wl[177].w[9]"  1;
	setAttr ".wl[178].w[9]"  1;
	setAttr ".wl[179].w[9]"  1;
	setAttr ".wl[180].w[9]"  1;
	setAttr ".wl[181].w[9]"  1;
	setAttr ".wl[182].w[9]"  1;
	setAttr ".wl[183].w[9]"  1;
	setAttr ".wl[184].w[9]"  1;
	setAttr ".wl[185].w[9]"  1;
	setAttr ".wl[186].w[9]"  1;
	setAttr ".wl[187].w[9]"  1;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.3935626233273428 28.545776100389716 1;
	setAttr ".pm[1]" -type "matrix" 2.9171120138216851e-16 -2.0309007691163655e-16 0.99999999999999978 0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-16 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-16 0
		 5.141099383762306 27.116763673658916 6.384860464405965e-15 1;
	setAttr ".pm[2]" -type "matrix" 1.9255976590806024e-16 4.2123171441692991e-16 -0.99999999999999978 0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-16 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-16 0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-14 1;
	setAttr ".pm[3]" -type "matrix" -2.2254253739202254e-16 4.0618990599018242e-16 -0.99999999999999978 0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-16 0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-16 0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-14 1;
	setAttr ".pm[4]" -type "matrix" -3.9263286525203279e-16 2.4567224874041425e-16 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-16 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-16 0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-14 1;
	setAttr ".pm[5]" -type "matrix" -4.3236892918211134e-16 -1.660497809547105e-16 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-16 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-16 0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[6]" -type "matrix" -4.2008944836864555e-16 -1.9503916541689796e-16 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-16 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-16 0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[7]" -type "matrix" -2.3367847652631728e-16 5.2235190187304229e-16 0.99999999999999978 0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-16 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-16 0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[8]" -type "matrix" 0.99999999999999978 7.889801871316359e-16 -4.1328562659829196e-16 0
		 -7.1325529571241588e-16 0.99999999999999978 7.4940054162198017e-16 0 5.2724101640594644e-16 -9.1593399531575296e-16 0.99999999999999933 0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[9]" -type "matrix" 4.3236892918211144e-16 1.6604978095471038e-16 -0.99999999999999978 0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-16 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-16 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[10]" -type "matrix" 4.200894483686456e-16 1.9503916541689791e-16 -1 0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-16 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-16 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[11]" -type "matrix" 2.3367847652631718e-16 1.6666666780649064e-16 0.99999999999999978 0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-16 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-16 0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[12]" -type "matrix" 0.99999999999999978 5.5459731209901231e-16 1.2054718195384451e-17 0
		 6.0517993594966963e-16 -1 -6.3837823915946462e-16 0 7.7400975786026954e-17 7.2164496600635165e-16 -0.99999999999999978 0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[13]" -type "matrix" -4.0112524636791838e-16 2.3154687949413117e-16 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-16 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-16 0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-14 1;
	setAttr ".pm[14]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -6.2314369504761027e-15 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[15]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -1.3912601358543541e-14 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[16]" -type "matrix" 5.0813779435729561e-16 1.296078129378641e-15 0.99999999999999978 0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-16 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-15 0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[17]" -type "matrix" -1.0103368778348008e-15 -4.0484730914130193e-16 -0.99999999999999978 0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-16 0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-15 0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[18]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-16 -1.5416536010143854e-15 0
		 5.3246366272141857e-16 0.99999999999999978 -5.6898930012039322e-16 0 1.611115502654318e-15 6.5919492087118591e-16 0.99999999999999978 0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[19]" -type "matrix" 5.0211778276518463e-16 -8.7774694673919145e-16 0.99999999999999978 0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-16 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-15 0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[20]" -type "matrix" 7.131658175178445e-16 -5.6945907845917879e-16 -0.99999999999999978 0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-16 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-16 0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[21]" -type "matrix" 1 -5.6270869122286394e-16 7.6910344414326529e-17 0
		 -2.7393525345077987e-16 -0.99999999999999956 -4.8919202022545929e-15 0 2.3587309789062293e-16 4.7045700668490977e-15 -0.99999999999999978 0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".pm[22]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[23]" -type "matrix" 6.693613450145993e-16 1.7889765444095194e-15 -1 0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-15 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-15 0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[24]" -type "matrix" -3.1806489720151775e-16 7.1110600523609952e-16 1 0
		 0.23651468939617115 -0.97162791319508335 7.5749132939959172e-16 0 0.97162791319508313 0.23651468939617099 1.3112890213765296e-16 0
		 15.753396610245158 -24.192069798095329 14.952100000000017 1;
	setAttr ".pm[25]" -type "matrix" -7.7862017067354629e-16 2.5809568655261894e-08 0.99999999999999978 0
		 0.97741416543986748 -0.21133279252753714 5.4544089702159377e-09 0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-08 0
		 38.494799132532364 23.920859481432771 12.09489938261296 1;
	setAttr ".pm[26]" -type "matrix" -1.3805402767519449e-08 1.3615198156657945e-08 -0.99999999999999978 0
		 0.93887631588660825 -0.3442546491584228 -1.7648660945676001e-08 0 -0.34425464915842274 -0.93887631588660825 -8.0304129894412106e-09 0
		 24.344687153438446 -43.723300868428026 -12.094900931389603 1;
	setAttr ".pm[27]" -type "matrix" 7.7249776432890225e-09 -1.6343368966662313e-08 -1 0
		 0.017238817250843728 -0.99985140054899735 1.6474109837531978e-08 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-09 0
		 -30.350163356585991 -42.766656220525725 -12.094899535503078 1;
	setAttr ".pm[28]" -type "matrix" 1 -1.6162482267249325e-08 -1.0632309108148316e-08 0
		 -1.6162482276970348e-08 -0.99999999999999956 -1.5307677505295637e-14 0 -1.0632309067137227e-08 1.5240265432259012e-14 -0.99999999999999956 0
		 14.182899160148009 -42.525700229230644 -14.346000150797618 1;
	setAttr ".pm[29]" -type "matrix" 3.6929243270364759e-16 4.7854520619298905e-17 -1 0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-16 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-16 0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[30]" -type "matrix" 2.8232439365995012e-16 -2.4058376823856014e-16 1 0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-16 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-16 0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[31]" -type "matrix" 3.3969043598553431e-16 1.4899000132653635e-16 1 0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-16 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-16 0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[32]" -type "matrix" 2.0731684078555344e-16 2.5897082728895037e-16 -1 0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-17 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-16 0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[33]" -type "matrix" 3.1628320018632648e-16 -1.0005548030928621e-16 -1 0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-17 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-16 0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[34]" -type "matrix" 1 -8.8267921761093423e-17 -6.84540878947466e-16 0
		 5.982944840221322e-17 1.0000000000000002 -3.4000580129145434e-16 0 7.1046403083575275e-16 3.4347524824340795e-16 1 0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
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
	rename -uid "00B1C654-4E9E-E26F-D507-DC980F463ED4";
createNode objectSet -n "skinCluster4Set";
	rename -uid "16B8CD65-4371-F811-96E7-D794DC63A769";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster4GroupId";
	rename -uid "5442B295-444D-5E9F-E4A0-66B0F3544BF9";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster4GroupParts";
	rename -uid "90EFED61-4858-630D-5298-91B27E11BF13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet4";
	rename -uid "813DB05B-4FC2-129C-77D7-EC805320F838";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8";
	rename -uid "BB579C9E-4CB5-AF3B-9113-538D3185DECA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "8E0C61DC-4F45-6508-FAAC-9682C62ADD87";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster5";
	rename -uid "E8C53F8E-459C-8080-0795-BB91CC34A8EE";
	setAttr -s 104 ".wl";
	setAttr ".wl[0].w[30]"  1;
	setAttr ".wl[1].w[30]"  1;
	setAttr ".wl[2].w[30]"  1;
	setAttr ".wl[3].w[30]"  1;
	setAttr ".wl[4].w[29]"  1;
	setAttr ".wl[5].w[29]"  1;
	setAttr ".wl[6].w[29]"  1;
	setAttr ".wl[7].w[29]"  1;
	setAttr ".wl[8].w[29]"  1;
	setAttr ".wl[9].w[29]"  1;
	setAttr ".wl[10].w[29]"  1;
	setAttr ".wl[11].w[29]"  1;
	setAttr ".wl[12].w[29]"  1;
	setAttr ".wl[13].w[29]"  1;
	setAttr ".wl[14].w[29]"  1;
	setAttr ".wl[15].w[29]"  1;
	setAttr ".wl[16].w[29]"  1;
	setAttr ".wl[17].w[29]"  1;
	setAttr ".wl[18].w[29]"  1;
	setAttr ".wl[19].w[29]"  1;
	setAttr ".wl[20].w[30]"  1;
	setAttr ".wl[21].w[30]"  1;
	setAttr ".wl[22].w[30]"  1;
	setAttr ".wl[23].w[30]"  1;
	setAttr ".wl[24].w[29]"  1;
	setAttr ".wl[25].w[29]"  1;
	setAttr ".wl[26].w[29]"  1;
	setAttr ".wl[27].w[29]"  1;
	setAttr ".wl[28].w[29]"  1;
	setAttr ".wl[29].w[30]"  1;
	setAttr ".wl[30].w[30]"  1;
	setAttr ".wl[31].w[29]"  1;
	setAttr ".wl[32].w[29]"  1;
	setAttr ".wl[33].w[29]"  1;
	setAttr ".wl[34].w[29]"  1;
	setAttr ".wl[35].w[29]"  1;
	setAttr ".wl[36].w[29]"  1;
	setAttr ".wl[37].w[29]"  1;
	setAttr ".wl[38].w[29]"  1;
	setAttr ".wl[39].w[30]"  1;
	setAttr ".wl[40].w[30]"  1;
	setAttr ".wl[41].w[29]"  1;
	setAttr ".wl[42].w[29]"  1;
	setAttr ".wl[43].w[29]"  1;
	setAttr ".wl[44].w[30]"  1;
	setAttr ".wl[45].w[30]"  1;
	setAttr ".wl[46].w[30]"  1;
	setAttr ".wl[47].w[30]"  1;
	setAttr ".wl[48].w[30]"  1;
	setAttr ".wl[49].w[30]"  1;
	setAttr ".wl[50].w[30]"  1;
	setAttr ".wl[51].w[30]"  1;
	setAttr ".wl[52].w[24]"  1;
	setAttr ".wl[53].w[24]"  1;
	setAttr ".wl[54].w[24]"  1;
	setAttr ".wl[55].w[24]"  1;
	setAttr ".wl[56].w[23]"  1;
	setAttr ".wl[57].w[23]"  1;
	setAttr ".wl[58].w[23]"  1;
	setAttr ".wl[59].w[23]"  1;
	setAttr ".wl[60].w[23]"  1;
	setAttr ".wl[61].w[23]"  1;
	setAttr ".wl[62].w[23]"  1;
	setAttr ".wl[63].w[23]"  1;
	setAttr ".wl[64].w[23]"  1;
	setAttr ".wl[65].w[23]"  1;
	setAttr ".wl[66].w[23]"  1;
	setAttr ".wl[67].w[23]"  1;
	setAttr ".wl[68].w[23]"  1;
	setAttr ".wl[69].w[23]"  1;
	setAttr -s 5 ".wl[70].w";
	setAttr ".wl[70].w[0]" 0.022129995939526258;
	setAttr ".wl[70].w[1]" 0.022129995939526258;
	setAttr ".wl[70].w[22]" 0.027744467659855901;
	setAttr ".wl[70].w[23]" 0.84206673763338236;
	setAttr ".wl[70].w[24]" 0.08592880282770915;
	setAttr ".wl[71].w[23]"  1;
	setAttr ".wl[72].w[23]"  1;
	setAttr ".wl[73].w[23]"  1;
	setAttr ".wl[74].w[23]"  1;
	setAttr -s 5 ".wl[75].w";
	setAttr ".wl[75].w[23]" 0.30913858462597343;
	setAttr ".wl[75].w[24]" 0.66315772807237716;
	setAttr ".wl[75].w[25]" 0.0096243262537589885;
	setAttr ".wl[75].w[27]" 0.0094401687245743542;
	setAttr ".wl[75].w[28]" 0.0086391923233160965;
	setAttr ".wl[76].w[23]"  1;
	setAttr ".wl[77].w[23]"  1;
	setAttr ".wl[78].w[23]"  1;
	setAttr ".wl[79].w[23]"  1;
	setAttr ".wl[80].w[24]"  1;
	setAttr ".wl[81].w[24]"  1;
	setAttr ".wl[82].w[24]"  1;
	setAttr ".wl[83].w[24]"  1;
	setAttr ".wl[84].w[24]"  1;
	setAttr ".wl[85].w[24]"  1;
	setAttr ".wl[86].w[24]"  1;
	setAttr ".wl[87].w[24]"  1;
	setAttr ".wl[88].w[24]"  1;
	setAttr ".wl[89].w[24]"  1;
	setAttr ".wl[90].w[23]"  1;
	setAttr ".wl[91].w[23]"  1;
	setAttr ".wl[92].w[23]"  1;
	setAttr ".wl[93].w[23]"  1;
	setAttr -s 5 ".wl[94].w";
	setAttr ".wl[94].w[23]" 0.4963005082001154;
	setAttr ".wl[94].w[24]" 0.47361135983324476;
	setAttr ".wl[94].w[25]" 0.0078444385112742092;
	setAttr ".wl[94].w[27]" 0.011150614379605251;
	setAttr ".wl[94].w[28]" 0.011093079075760338;
	setAttr ".wl[95].w[24]"  1;
	setAttr ".wl[96].w[24]"  1;
	setAttr ".wl[97].w[23]"  1;
	setAttr ".wl[98].w[23]"  1;
	setAttr ".wl[99].w[23]"  1;
	setAttr ".wl[100].w[24]"  1;
	setAttr ".wl[101].w[24]"  1;
	setAttr ".wl[102].w[24]"  1;
	setAttr ".wl[103].w[24]"  1;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.3935626233273428 28.545776100389716 1;
	setAttr ".pm[1]" -type "matrix" 2.9171120138216851e-16 -2.0309007691163655e-16 0.99999999999999978 0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-16 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-16 0
		 5.141099383762306 27.116763673658916 6.384860464405965e-15 1;
	setAttr ".pm[2]" -type "matrix" 1.9255976590806024e-16 4.2123171441692991e-16 -0.99999999999999978 0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-16 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-16 0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-14 1;
	setAttr ".pm[3]" -type "matrix" -2.2254253739202254e-16 4.0618990599018242e-16 -0.99999999999999978 0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-16 0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-16 0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-14 1;
	setAttr ".pm[4]" -type "matrix" -3.9263286525203279e-16 2.4567224874041425e-16 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-16 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-16 0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-14 1;
	setAttr ".pm[5]" -type "matrix" -4.3236892918211134e-16 -1.660497809547105e-16 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-16 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-16 0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[6]" -type "matrix" -4.2008944836864555e-16 -1.9503916541689796e-16 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-16 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-16 0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[7]" -type "matrix" -2.3367847652631728e-16 5.2235190187304229e-16 0.99999999999999978 0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-16 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-16 0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[8]" -type "matrix" 0.99999999999999978 7.889801871316359e-16 -4.1328562659829196e-16 0
		 -7.1325529571241588e-16 0.99999999999999978 7.4940054162198017e-16 0 5.2724101640594644e-16 -9.1593399531575296e-16 0.99999999999999933 0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[9]" -type "matrix" 4.3236892918211144e-16 1.6604978095471038e-16 -0.99999999999999978 0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-16 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-16 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[10]" -type "matrix" 4.200894483686456e-16 1.9503916541689791e-16 -1 0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-16 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-16 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[11]" -type "matrix" 2.3367847652631718e-16 1.6666666780649064e-16 0.99999999999999978 0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-16 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-16 0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[12]" -type "matrix" 0.99999999999999978 5.5459731209901231e-16 1.2054718195384451e-17 0
		 6.0517993594966963e-16 -1 -6.3837823915946462e-16 0 7.7400975786026954e-17 7.2164496600635165e-16 -0.99999999999999978 0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[13]" -type "matrix" -4.0112524636791838e-16 2.3154687949413117e-16 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-16 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-16 0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-14 1;
	setAttr ".pm[14]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -6.2314369504761027e-15 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[15]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -1.3912601358543541e-14 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[16]" -type "matrix" 5.0813779435729561e-16 1.296078129378641e-15 0.99999999999999978 0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-16 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-15 0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[17]" -type "matrix" -1.0103368778348008e-15 -4.0484730914130193e-16 -0.99999999999999978 0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-16 0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-15 0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[18]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-16 -1.5416536010143854e-15 0
		 5.3246366272141857e-16 0.99999999999999978 -5.6898930012039322e-16 0 1.611115502654318e-15 6.5919492087118591e-16 0.99999999999999978 0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[19]" -type "matrix" 5.0211778276518463e-16 -8.7774694673919145e-16 0.99999999999999978 0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-16 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-15 0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[20]" -type "matrix" 7.131658175178445e-16 -5.6945907845917879e-16 -0.99999999999999978 0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-16 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-16 0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[21]" -type "matrix" 1 -5.6270869122286394e-16 7.6910344414326529e-17 0
		 -2.7393525345077987e-16 -0.99999999999999956 -4.8919202022545929e-15 0 2.3587309789062293e-16 4.7045700668490977e-15 -0.99999999999999978 0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".pm[22]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[23]" -type "matrix" 6.693613450145993e-16 1.7889765444095194e-15 -1 0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-15 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-15 0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[24]" -type "matrix" -3.1806489720151775e-16 7.1110600523609952e-16 1 0
		 0.23651468939617115 -0.97162791319508335 7.5749132939959172e-16 0 0.97162791319508313 0.23651468939617099 1.3112890213765296e-16 0
		 15.753396610245158 -24.192069798095329 14.952100000000017 1;
	setAttr ".pm[25]" -type "matrix" -7.7862017067354629e-16 2.5809568655261894e-08 0.99999999999999978 0
		 0.97741416543986748 -0.21133279252753714 5.4544089702159377e-09 0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-08 0
		 38.494799132532364 23.920859481432771 12.09489938261296 1;
	setAttr ".pm[26]" -type "matrix" -1.3805402767519449e-08 1.3615198156657945e-08 -0.99999999999999978 0
		 0.93887631588660825 -0.3442546491584228 -1.7648660945676001e-08 0 -0.34425464915842274 -0.93887631588660825 -8.0304129894412106e-09 0
		 24.344687153438446 -43.723300868428026 -12.094900931389603 1;
	setAttr ".pm[27]" -type "matrix" 7.7249776432890225e-09 -1.6343368966662313e-08 -1 0
		 0.017238817250843728 -0.99985140054899735 1.6474109837531978e-08 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-09 0
		 -30.350163356585991 -42.766656220525725 -12.094899535503078 1;
	setAttr ".pm[28]" -type "matrix" 1 -1.6162482267249325e-08 -1.0632309108148316e-08 0
		 -1.6162482276970348e-08 -0.99999999999999956 -1.5307677505295637e-14 0 -1.0632309067137227e-08 1.5240265432259012e-14 -0.99999999999999956 0
		 14.182899160148009 -42.525700229230644 -14.346000150797618 1;
	setAttr ".pm[29]" -type "matrix" 3.6929243270364759e-16 4.7854520619298905e-17 -1 0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-16 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-16 0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[30]" -type "matrix" 2.8232439365995012e-16 -2.4058376823856014e-16 1 0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-16 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-16 0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[31]" -type "matrix" 3.3969043598553431e-16 1.4899000132653635e-16 1 0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-16 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-16 0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[32]" -type "matrix" 2.0731684078555344e-16 2.5897082728895037e-16 -1 0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-17 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-16 0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[33]" -type "matrix" 3.1628320018632648e-16 -1.0005548030928621e-16 -1 0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-17 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-16 0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[34]" -type "matrix" 1 -8.8267921761093423e-17 -6.84540878947466e-16 0
		 5.982944840221322e-17 1.0000000000000002 -3.4000580129145434e-16 0 7.1046403083575275e-16 3.4347524824340795e-16 1 0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
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
	rename -uid "94D1B672-4AD9-BF57-6260-F6BBA2D8A589";
createNode objectSet -n "skinCluster5Set";
	rename -uid "D9282F59-4DA5-8603-551A-4AA0804EF2AB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster5GroupId";
	rename -uid "C1226E97-417B-787B-927F-A1876A68E57B";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster5GroupParts";
	rename -uid "6B7396AD-439C-27B7-630E-71AF37C865FE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet5";
	rename -uid "765DEC90-4429-6F0C-8C0D-8D84EB416FC9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId10";
	rename -uid "49443F9F-47BC-8EC9-E8AD-8A90CA8A0916";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "CE59B74B-4674-91E1-3031-F49578618E6C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster9";
	rename -uid "924EDCC1-4D4F-0918-0973-57ABA452BAEB";
	setAttr -s 56 ".wl";
	setAttr ".wl[0].w[3]"  1;
	setAttr ".wl[1].w[3]"  1;
	setAttr ".wl[2].w[3]"  1;
	setAttr ".wl[3].w[3]"  1;
	setAttr ".wl[4].w[3]"  1;
	setAttr ".wl[5].w[3]"  1;
	setAttr ".wl[6].w[3]"  1;
	setAttr ".wl[7].w[3]"  1;
	setAttr ".wl[8].w[3]"  1;
	setAttr ".wl[9].w[3]"  1;
	setAttr ".wl[10].w[3]"  1;
	setAttr ".wl[11].w[3]"  1;
	setAttr ".wl[12].w[3]"  1;
	setAttr ".wl[13].w[3]"  1;
	setAttr ".wl[14].w[3]"  1;
	setAttr ".wl[15].w[3]"  1;
	setAttr ".wl[16].w[3]"  1;
	setAttr ".wl[17].w[3]"  1;
	setAttr ".wl[18].w[3]"  1;
	setAttr ".wl[19].w[3]"  1;
	setAttr ".wl[20].w[3]"  1;
	setAttr ".wl[21].w[3]"  1;
	setAttr ".wl[22].w[3]"  1;
	setAttr ".wl[23].w[3]"  1;
	setAttr ".wl[24].w[3]"  1;
	setAttr ".wl[25].w[3]"  1;
	setAttr ".wl[26].w[3]"  1;
	setAttr ".wl[27].w[3]"  1;
	setAttr ".wl[28].w[3]"  1;
	setAttr ".wl[29].w[3]"  1;
	setAttr ".wl[30].w[3]"  1;
	setAttr ".wl[31].w[3]"  1;
	setAttr ".wl[32].w[3]"  1;
	setAttr ".wl[33].w[3]"  1;
	setAttr ".wl[34].w[3]"  1;
	setAttr ".wl[35].w[3]"  1;
	setAttr ".wl[36].w[3]"  1;
	setAttr ".wl[37].w[3]"  1;
	setAttr ".wl[38].w[3]"  1;
	setAttr ".wl[39].w[3]"  1;
	setAttr ".wl[40].w[3]"  1;
	setAttr ".wl[41].w[3]"  1;
	setAttr ".wl[42].w[3]"  1;
	setAttr ".wl[43].w[3]"  1;
	setAttr ".wl[44].w[3]"  1;
	setAttr ".wl[45].w[3]"  1;
	setAttr ".wl[46].w[3]"  1;
	setAttr ".wl[47].w[3]"  1;
	setAttr ".wl[48].w[3]"  1;
	setAttr ".wl[49].w[3]"  1;
	setAttr ".wl[50].w[3]"  1;
	setAttr ".wl[51].w[3]"  1;
	setAttr ".wl[52].w[3]"  1;
	setAttr ".wl[53].w[3]"  1;
	setAttr ".wl[54].w[3]"  1;
	setAttr ".wl[55].w[3]"  1;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.3935626233273428 28.545776100389716 1;
	setAttr ".pm[1]" -type "matrix" 2.9171120138216851e-16 -2.0309007691163655e-16 0.99999999999999978 0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-16 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-16 0
		 5.141099383762306 27.116763673658916 6.384860464405965e-15 1;
	setAttr ".pm[2]" -type "matrix" 1.9255976590806024e-16 4.2123171441692991e-16 -0.99999999999999978 0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-16 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-16 0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-14 1;
	setAttr ".pm[3]" -type "matrix" -2.2254253739202254e-16 4.0618990599018242e-16 -0.99999999999999978 0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-16 0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-16 0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-14 1;
	setAttr ".pm[4]" -type "matrix" -3.9263286525203279e-16 2.4567224874041425e-16 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-16 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-16 0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-14 1;
	setAttr ".pm[5]" -type "matrix" -4.3236892918211134e-16 -1.660497809547105e-16 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-16 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-16 0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[6]" -type "matrix" -4.2008944836864555e-16 -1.9503916541689796e-16 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-16 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-16 0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[7]" -type "matrix" -2.3367847652631728e-16 5.2235190187304229e-16 0.99999999999999978 0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-16 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-16 0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[8]" -type "matrix" 0.99999999999999978 7.889801871316359e-16 -4.1328562659829196e-16 0
		 -7.1325529571241588e-16 0.99999999999999978 7.4940054162198017e-16 0 5.2724101640594644e-16 -9.1593399531575296e-16 0.99999999999999933 0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[9]" -type "matrix" 4.3236892918211144e-16 1.6604978095471038e-16 -0.99999999999999978 0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-16 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-16 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[10]" -type "matrix" 4.200894483686456e-16 1.9503916541689791e-16 -1 0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-16 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-16 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[11]" -type "matrix" 2.3367847652631718e-16 1.6666666780649064e-16 0.99999999999999978 0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-16 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-16 0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[12]" -type "matrix" 0.99999999999999978 5.5459731209901231e-16 1.2054718195384451e-17 0
		 6.0517993594966963e-16 -1 -6.3837823915946462e-16 0 7.7400975786026954e-17 7.2164496600635165e-16 -0.99999999999999978 0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[13]" -type "matrix" -4.0112524636791838e-16 2.3154687949413117e-16 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-16 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-16 0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-14 1;
	setAttr ".pm[14]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -6.2314369504761027e-15 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[15]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -1.3912601358543541e-14 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[16]" -type "matrix" 5.0813779435729561e-16 1.296078129378641e-15 0.99999999999999978 0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-16 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-15 0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[17]" -type "matrix" -1.0103368778348008e-15 -4.0484730914130193e-16 -0.99999999999999978 0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-16 0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-15 0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[18]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-16 -1.5416536010143854e-15 0
		 5.3246366272141857e-16 0.99999999999999978 -5.6898930012039322e-16 0 1.611115502654318e-15 6.5919492087118591e-16 0.99999999999999978 0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[19]" -type "matrix" 5.0211778276518463e-16 -8.7774694673919145e-16 0.99999999999999978 0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-16 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-15 0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[20]" -type "matrix" 7.131658175178445e-16 -5.6945907845917879e-16 -0.99999999999999978 0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-16 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-16 0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[21]" -type "matrix" 1 -5.6270869122286394e-16 7.6910344414326529e-17 0
		 -2.7393525345077987e-16 -0.99999999999999956 -4.8919202022545929e-15 0 2.3587309789062293e-16 4.7045700668490977e-15 -0.99999999999999978 0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".pm[22]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[23]" -type "matrix" 6.693613450145993e-16 1.7889765444095194e-15 -1 0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-15 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-15 0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[24]" -type "matrix" -3.1806489720151775e-16 7.1110600523609952e-16 1 0
		 0.23651468939617115 -0.97162791319508335 7.5749132939959172e-16 0 0.97162791319508313 0.23651468939617099 1.3112890213765296e-16 0
		 15.753396610245158 -24.192069798095329 14.952100000000017 1;
	setAttr ".pm[25]" -type "matrix" -7.7862017067354629e-16 2.5809568655261894e-08 0.99999999999999978 0
		 0.97741416543986748 -0.21133279252753714 5.4544089702159377e-09 0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-08 0
		 38.494799132532364 23.920859481432771 12.09489938261296 1;
	setAttr ".pm[26]" -type "matrix" -1.3805402767519449e-08 1.3615198156657945e-08 -0.99999999999999978 0
		 0.93887631588660825 -0.3442546491584228 -1.7648660945676001e-08 0 -0.34425464915842274 -0.93887631588660825 -8.0304129894412106e-09 0
		 24.344687153438446 -43.723300868428026 -12.094900931389603 1;
	setAttr ".pm[27]" -type "matrix" 7.7249776432890225e-09 -1.6343368966662313e-08 -1 0
		 0.017238817250843728 -0.99985140054899735 1.6474109837531978e-08 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-09 0
		 -30.350163356585991 -42.766656220525725 -12.094899535503078 1;
	setAttr ".pm[28]" -type "matrix" 1 -1.6162482267249325e-08 -1.0632309108148316e-08 0
		 -1.6162482276970348e-08 -0.99999999999999956 -1.5307677505295637e-14 0 -1.0632309067137227e-08 1.5240265432259012e-14 -0.99999999999999956 0
		 14.182899160148009 -42.525700229230644 -14.346000150797618 1;
	setAttr ".pm[29]" -type "matrix" 3.6929243270364759e-16 4.7854520619298905e-17 -1 0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-16 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-16 0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[30]" -type "matrix" 2.8232439365995012e-16 -2.4058376823856014e-16 1 0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-16 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-16 0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[31]" -type "matrix" 3.3969043598553431e-16 1.4899000132653635e-16 1 0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-16 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-16 0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[32]" -type "matrix" 2.0731684078555344e-16 2.5897082728895037e-16 -1 0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-17 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-16 0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[33]" -type "matrix" 3.1628320018632648e-16 -1.0005548030928621e-16 -1 0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-17 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-16 0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[34]" -type "matrix" 1 -8.8267921761093423e-17 -6.84540878947466e-16 0
		 5.982944840221322e-17 1.0000000000000002 -3.4000580129145434e-16 0 7.1046403083575275e-16 3.4347524824340795e-16 1 0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
	setAttr ".gm" -type "matrix" -9.0318488004362736e-14 -2.5016349089018304 -5.9521400268778697 0
		 -1.5828685267905686e-13 -5.9205069538444581 2.4883397916131105 0 -9.4866461210122228 2.6699362628297402e-13 3.2650108145057969e-14 0
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
	rename -uid "56A1151E-420B-357F-DE99-ADA463A1E3DA";
createNode objectSet -n "skinCluster9Set";
	rename -uid "50B33B54-4B24-62B9-8CAD-21BCC524B09F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster9GroupId";
	rename -uid "968DEABF-488A-9D6F-35AD-06A35AE48972";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster9GroupParts";
	rename -uid "BDF78BB8-4315-ADE6-474F-EE8EB8BF4C40";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet9";
	rename -uid "9D02864F-443D-FC2F-B50D-AA9F58B56308";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId18";
	rename -uid "C5FFC424-483C-38BC-BB3F-1A9A88CBA160";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "7DC8A677-45CA-0A89-0A8E-66969BA2084B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster10";
	rename -uid "39ADE725-49B6-F795-65E9-26B5A9811FFA";
	setAttr -s 56 ".wl";
	setAttr ".wl[0].w[3]"  1;
	setAttr ".wl[1].w[3]"  1;
	setAttr ".wl[2].w[3]"  1;
	setAttr ".wl[3].w[3]"  1;
	setAttr ".wl[4].w[3]"  1;
	setAttr ".wl[5].w[3]"  1;
	setAttr ".wl[6].w[3]"  1;
	setAttr ".wl[7].w[3]"  1;
	setAttr ".wl[8].w[3]"  1;
	setAttr ".wl[9].w[3]"  1;
	setAttr ".wl[10].w[3]"  1;
	setAttr ".wl[11].w[3]"  1;
	setAttr ".wl[12].w[3]"  1;
	setAttr ".wl[13].w[3]"  1;
	setAttr ".wl[14].w[3]"  1;
	setAttr ".wl[15].w[3]"  1;
	setAttr ".wl[16].w[3]"  1;
	setAttr ".wl[17].w[3]"  1;
	setAttr ".wl[18].w[3]"  1;
	setAttr ".wl[19].w[3]"  1;
	setAttr ".wl[20].w[3]"  1;
	setAttr ".wl[21].w[3]"  1;
	setAttr ".wl[22].w[3]"  1;
	setAttr ".wl[23].w[3]"  1;
	setAttr ".wl[24].w[3]"  1;
	setAttr ".wl[25].w[3]"  1;
	setAttr ".wl[26].w[3]"  1;
	setAttr ".wl[27].w[3]"  1;
	setAttr ".wl[28].w[3]"  1;
	setAttr ".wl[29].w[3]"  1;
	setAttr ".wl[30].w[3]"  1;
	setAttr ".wl[31].w[3]"  1;
	setAttr ".wl[32].w[3]"  1;
	setAttr ".wl[33].w[3]"  1;
	setAttr ".wl[34].w[3]"  1;
	setAttr ".wl[35].w[3]"  1;
	setAttr ".wl[36].w[3]"  1;
	setAttr ".wl[37].w[3]"  1;
	setAttr ".wl[38].w[3]"  1;
	setAttr ".wl[39].w[3]"  1;
	setAttr ".wl[40].w[3]"  1;
	setAttr ".wl[41].w[3]"  1;
	setAttr ".wl[42].w[3]"  1;
	setAttr ".wl[43].w[3]"  1;
	setAttr ".wl[44].w[3]"  1;
	setAttr ".wl[45].w[3]"  1;
	setAttr ".wl[46].w[3]"  1;
	setAttr ".wl[47].w[3]"  1;
	setAttr ".wl[48].w[3]"  1;
	setAttr ".wl[49].w[3]"  1;
	setAttr ".wl[50].w[3]"  1;
	setAttr ".wl[51].w[3]"  1;
	setAttr ".wl[52].w[3]"  1;
	setAttr ".wl[53].w[3]"  1;
	setAttr ".wl[54].w[3]"  1;
	setAttr ".wl[55].w[3]"  1;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.3935626233273428 28.545776100389716 1;
	setAttr ".pm[1]" -type "matrix" 2.9171120138216851e-16 -2.0309007691163655e-16 0.99999999999999978 0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-16 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-16 0
		 5.141099383762306 27.116763673658916 6.384860464405965e-15 1;
	setAttr ".pm[2]" -type "matrix" 1.9255976590806024e-16 4.2123171441692991e-16 -0.99999999999999978 0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-16 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-16 0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-14 1;
	setAttr ".pm[3]" -type "matrix" -2.2254253739202254e-16 4.0618990599018242e-16 -0.99999999999999978 0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-16 0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-16 0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-14 1;
	setAttr ".pm[4]" -type "matrix" -3.9263286525203279e-16 2.4567224874041425e-16 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-16 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-16 0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-14 1;
	setAttr ".pm[5]" -type "matrix" -4.3236892918211134e-16 -1.660497809547105e-16 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-16 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-16 0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[6]" -type "matrix" -4.2008944836864555e-16 -1.9503916541689796e-16 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-16 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-16 0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[7]" -type "matrix" -2.3367847652631728e-16 5.2235190187304229e-16 0.99999999999999978 0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-16 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-16 0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[8]" -type "matrix" 0.99999999999999978 7.889801871316359e-16 -4.1328562659829196e-16 0
		 -7.1325529571241588e-16 0.99999999999999978 7.4940054162198017e-16 0 5.2724101640594644e-16 -9.1593399531575296e-16 0.99999999999999933 0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[9]" -type "matrix" 4.3236892918211144e-16 1.6604978095471038e-16 -0.99999999999999978 0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-16 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-16 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[10]" -type "matrix" 4.200894483686456e-16 1.9503916541689791e-16 -1 0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-16 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-16 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[11]" -type "matrix" 2.3367847652631718e-16 1.6666666780649064e-16 0.99999999999999978 0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-16 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-16 0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[12]" -type "matrix" 0.99999999999999978 5.5459731209901231e-16 1.2054718195384451e-17 0
		 6.0517993594966963e-16 -1 -6.3837823915946462e-16 0 7.7400975786026954e-17 7.2164496600635165e-16 -0.99999999999999978 0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[13]" -type "matrix" -4.0112524636791838e-16 2.3154687949413117e-16 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-16 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-16 0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-14 1;
	setAttr ".pm[14]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -6.2314369504761027e-15 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[15]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -1.3912601358543541e-14 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[16]" -type "matrix" 5.0813779435729561e-16 1.296078129378641e-15 0.99999999999999978 0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-16 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-15 0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[17]" -type "matrix" -1.0103368778348008e-15 -4.0484730914130193e-16 -0.99999999999999978 0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-16 0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-15 0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[18]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-16 -1.5416536010143854e-15 0
		 5.3246366272141857e-16 0.99999999999999978 -5.6898930012039322e-16 0 1.611115502654318e-15 6.5919492087118591e-16 0.99999999999999978 0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[19]" -type "matrix" 5.0211778276518463e-16 -8.7774694673919145e-16 0.99999999999999978 0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-16 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-15 0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[20]" -type "matrix" 7.131658175178445e-16 -5.6945907845917879e-16 -0.99999999999999978 0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-16 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-16 0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[21]" -type "matrix" 1 -5.6270869122286394e-16 7.6910344414326529e-17 0
		 -2.7393525345077987e-16 -0.99999999999999956 -4.8919202022545929e-15 0 2.3587309789062293e-16 4.7045700668490977e-15 -0.99999999999999978 0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".pm[22]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[23]" -type "matrix" 6.693613450145993e-16 1.7889765444095194e-15 -1 0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-15 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-15 0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[24]" -type "matrix" -3.1806489720151775e-16 7.1110600523609952e-16 1 0
		 0.23651468939617115 -0.97162791319508335 7.5749132939959172e-16 0 0.97162791319508313 0.23651468939617099 1.3112890213765296e-16 0
		 15.753396610245158 -24.192069798095329 14.952100000000017 1;
	setAttr ".pm[25]" -type "matrix" -7.7862017067354629e-16 2.5809568655261894e-08 0.99999999999999978 0
		 0.97741416543986748 -0.21133279252753714 5.4544089702159377e-09 0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-08 0
		 38.494799132532364 23.920859481432771 12.09489938261296 1;
	setAttr ".pm[26]" -type "matrix" -1.3805402767519449e-08 1.3615198156657945e-08 -0.99999999999999978 0
		 0.93887631588660825 -0.3442546491584228 -1.7648660945676001e-08 0 -0.34425464915842274 -0.93887631588660825 -8.0304129894412106e-09 0
		 24.344687153438446 -43.723300868428026 -12.094900931389603 1;
	setAttr ".pm[27]" -type "matrix" 7.7249776432890225e-09 -1.6343368966662313e-08 -1 0
		 0.017238817250843728 -0.99985140054899735 1.6474109837531978e-08 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-09 0
		 -30.350163356585991 -42.766656220525725 -12.094899535503078 1;
	setAttr ".pm[28]" -type "matrix" 1 -1.6162482267249325e-08 -1.0632309108148316e-08 0
		 -1.6162482276970348e-08 -0.99999999999999956 -1.5307677505295637e-14 0 -1.0632309067137227e-08 1.5240265432259012e-14 -0.99999999999999956 0
		 14.182899160148009 -42.525700229230644 -14.346000150797618 1;
	setAttr ".pm[29]" -type "matrix" 3.6929243270364759e-16 4.7854520619298905e-17 -1 0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-16 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-16 0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[30]" -type "matrix" 2.8232439365995012e-16 -2.4058376823856014e-16 1 0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-16 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-16 0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[31]" -type "matrix" 3.3969043598553431e-16 1.4899000132653635e-16 1 0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-16 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-16 0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[32]" -type "matrix" 2.0731684078555344e-16 2.5897082728895037e-16 -1 0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-17 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-16 0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[33]" -type "matrix" 3.1628320018632648e-16 -1.0005548030928621e-16 -1 0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-17 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-16 0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[34]" -type "matrix" 1 -8.8267921761093423e-17 -6.84540878947466e-16 0
		 5.982944840221322e-17 1.0000000000000002 -3.4000580129145434e-16 0 7.1046403083575275e-16 3.4347524824340795e-16 1 0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
	setAttr ".gm" -type "matrix" -1.5053081334060456e-13 -4.0025470519649948 -5.0661390835432343 0
		 -3.5650192044832624e-16 -5.039214725765448 3.9812752299576606 0 -9.4866461210122228 1.3744642299774401e-13 1.7272960438030667e-13 0
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
	rename -uid "895C0996-496C-56D4-F65A-1781BE7D20F9";
createNode objectSet -n "skinCluster10Set";
	rename -uid "96F12A4C-4796-37A3-8E77-05AECCB3A0C8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster10GroupId";
	rename -uid "E3ACE095-45AA-6633-BFB1-80B21F86B576";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster10GroupParts";
	rename -uid "7DCF9B59-4927-E131-81BA-98BCEA6E50CE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet10";
	rename -uid "6A58FFAA-4995-5DD8-AEAC-5BB6E7E152DF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId20";
	rename -uid "83DD9C65-4DBD-3F92-EFFC-E5B6C5DF77AB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "3A5B2D61-4453-B77E-5B08-9B9602609431";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster11";
	rename -uid "71499BDB-48A7-F695-9D4E-768909830D00";
	setAttr -s 25 ".wl";
	setAttr ".wl[0].w[3]"  1;
	setAttr ".wl[1].w[3]"  1;
	setAttr ".wl[2].w[3]"  1;
	setAttr ".wl[3].w[3]"  1;
	setAttr ".wl[4].w[3]"  1;
	setAttr ".wl[5].w[3]"  1;
	setAttr ".wl[6].w[3]"  1;
	setAttr ".wl[7].w[3]"  1;
	setAttr ".wl[8].w[3]"  1;
	setAttr ".wl[9].w[3]"  1;
	setAttr ".wl[10].w[3]"  1;
	setAttr ".wl[11].w[3]"  1;
	setAttr ".wl[12].w[3]"  1;
	setAttr ".wl[13].w[3]"  1;
	setAttr ".wl[14].w[3]"  1;
	setAttr ".wl[15].w[3]"  1;
	setAttr ".wl[16].w[3]"  1;
	setAttr ".wl[17].w[3]"  1;
	setAttr ".wl[18].w[3]"  1;
	setAttr ".wl[19].w[3]"  1;
	setAttr ".wl[20].w[3]"  1;
	setAttr ".wl[21].w[3]"  1;
	setAttr ".wl[22].w[3]"  1;
	setAttr ".wl[23].w[3]"  1;
	setAttr ".wl[24].w[3]"  1;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.3935626233273428 28.545776100389716 1;
	setAttr ".pm[1]" -type "matrix" 2.9171120138216851e-16 -2.0309007691163655e-16 0.99999999999999978 0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-16 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-16 0
		 5.141099383762306 27.116763673658916 6.384860464405965e-15 1;
	setAttr ".pm[2]" -type "matrix" 1.9255976590806024e-16 4.2123171441692991e-16 -0.99999999999999978 0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-16 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-16 0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-14 1;
	setAttr ".pm[3]" -type "matrix" -2.2254253739202254e-16 4.0618990599018242e-16 -0.99999999999999978 0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-16 0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-16 0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-14 1;
	setAttr ".pm[4]" -type "matrix" -3.9263286525203279e-16 2.4567224874041425e-16 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-16 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-16 0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-14 1;
	setAttr ".pm[5]" -type "matrix" -4.3236892918211134e-16 -1.660497809547105e-16 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-16 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-16 0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[6]" -type "matrix" -4.2008944836864555e-16 -1.9503916541689796e-16 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-16 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-16 0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[7]" -type "matrix" -2.3367847652631728e-16 5.2235190187304229e-16 0.99999999999999978 0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-16 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-16 0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[8]" -type "matrix" 0.99999999999999978 7.889801871316359e-16 -4.1328562659829196e-16 0
		 -7.1325529571241588e-16 0.99999999999999978 7.4940054162198017e-16 0 5.2724101640594644e-16 -9.1593399531575296e-16 0.99999999999999933 0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[9]" -type "matrix" 4.3236892918211144e-16 1.6604978095471038e-16 -0.99999999999999978 0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-16 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-16 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[10]" -type "matrix" 4.200894483686456e-16 1.9503916541689791e-16 -1 0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-16 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-16 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[11]" -type "matrix" 2.3367847652631718e-16 1.6666666780649064e-16 0.99999999999999978 0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-16 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-16 0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[12]" -type "matrix" 0.99999999999999978 5.5459731209901231e-16 1.2054718195384451e-17 0
		 6.0517993594966963e-16 -1 -6.3837823915946462e-16 0 7.7400975786026954e-17 7.2164496600635165e-16 -0.99999999999999978 0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[13]" -type "matrix" -4.0112524636791838e-16 2.3154687949413117e-16 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-16 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-16 0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-14 1;
	setAttr ".pm[14]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -6.2314369504761027e-15 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[15]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -1.3912601358543541e-14 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[16]" -type "matrix" 5.0813779435729561e-16 1.296078129378641e-15 0.99999999999999978 0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-16 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-15 0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[17]" -type "matrix" -1.0103368778348008e-15 -4.0484730914130193e-16 -0.99999999999999978 0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-16 0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-15 0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[18]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-16 -1.5416536010143854e-15 0
		 5.3246366272141857e-16 0.99999999999999978 -5.6898930012039322e-16 0 1.611115502654318e-15 6.5919492087118591e-16 0.99999999999999978 0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[19]" -type "matrix" 5.0211778276518463e-16 -8.7774694673919145e-16 0.99999999999999978 0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-16 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-15 0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[20]" -type "matrix" 7.131658175178445e-16 -5.6945907845917879e-16 -0.99999999999999978 0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-16 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-16 0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[21]" -type "matrix" 1 -5.6270869122286394e-16 7.6910344414326529e-17 0
		 -2.7393525345077987e-16 -0.99999999999999956 -4.8919202022545929e-15 0 2.3587309789062293e-16 4.7045700668490977e-15 -0.99999999999999978 0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".pm[22]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[23]" -type "matrix" 6.693613450145993e-16 1.7889765444095194e-15 -1 0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-15 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-15 0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[24]" -type "matrix" -3.1806489720151775e-16 7.1110600523609952e-16 1 0
		 0.23651468939617115 -0.97162791319508335 7.5749132939959172e-16 0 0.97162791319508313 0.23651468939617099 1.3112890213765296e-16 0
		 15.753396610245158 -24.192069798095329 14.952100000000017 1;
	setAttr ".pm[25]" -type "matrix" -7.7862017067354629e-16 2.5809568655261894e-08 0.99999999999999978 0
		 0.97741416543986748 -0.21133279252753714 5.4544089702159377e-09 0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-08 0
		 38.494799132532364 23.920859481432771 12.09489938261296 1;
	setAttr ".pm[26]" -type "matrix" -1.3805402767519449e-08 1.3615198156657945e-08 -0.99999999999999978 0
		 0.93887631588660825 -0.3442546491584228 -1.7648660945676001e-08 0 -0.34425464915842274 -0.93887631588660825 -8.0304129894412106e-09 0
		 24.344687153438446 -43.723300868428026 -12.094900931389603 1;
	setAttr ".pm[27]" -type "matrix" 7.7249776432890225e-09 -1.6343368966662313e-08 -1 0
		 0.017238817250843728 -0.99985140054899735 1.6474109837531978e-08 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-09 0
		 -30.350163356585991 -42.766656220525725 -12.094899535503078 1;
	setAttr ".pm[28]" -type "matrix" 1 -1.6162482267249325e-08 -1.0632309108148316e-08 0
		 -1.6162482276970348e-08 -0.99999999999999956 -1.5307677505295637e-14 0 -1.0632309067137227e-08 1.5240265432259012e-14 -0.99999999999999956 0
		 14.182899160148009 -42.525700229230644 -14.346000150797618 1;
	setAttr ".pm[29]" -type "matrix" 3.6929243270364759e-16 4.7854520619298905e-17 -1 0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-16 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-16 0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[30]" -type "matrix" 2.8232439365995012e-16 -2.4058376823856014e-16 1 0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-16 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-16 0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[31]" -type "matrix" 3.3969043598553431e-16 1.4899000132653635e-16 1 0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-16 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-16 0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[32]" -type "matrix" 2.0731684078555344e-16 2.5897082728895037e-16 -1 0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-17 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-16 0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[33]" -type "matrix" 3.1628320018632648e-16 -1.0005548030928621e-16 -1 0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-17 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-16 0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[34]" -type "matrix" 1 -8.8267921761093423e-17 -6.84540878947466e-16 0
		 5.982944840221322e-17 1.0000000000000002 -3.4000580129145434e-16 0 7.1046403083575275e-16 3.4347524824340795e-16 1 0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
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
	rename -uid "B887C18D-49FD-8C24-A36F-7BA607F76E10";
createNode objectSet -n "skinCluster11Set";
	rename -uid "53484831-48AD-300C-B805-8D8626AFB61E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster11GroupId";
	rename -uid "930D8042-4287-3B8F-7D6F-CB90291CD50E";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster11GroupParts";
	rename -uid "B058F2EC-4499-91B9-D51D-7F9CA3B67BE0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet11";
	rename -uid "D10AA435-4A30-190B-8C3C-1EA151C8786B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId22";
	rename -uid "EC30B34A-4A88-62B4-FCF7-76A36D427839";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "9D6E7306-49CA-3689-4BBA-83AF8AF075D2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode polyPlane -n "polyPlane1";
	rename -uid "D2DCF344-4F99-16F4-9C1C-0AA5BA05A959";
	setAttr ".cuv" 2;
createNode animCurveTL -n "Joint_Base_translateX";
	rename -uid "BA4C6CFF-194A-930A-0AD1-2DAA7AE4FADE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  24 0 30 0 38 0 46 0 70 0 86 0;
createNode animCurveTL -n "Spine_Base_translateX";
	rename -uid "4A0E34CD-3F41-D1AD-EB9C-659D6A4335B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "Spine_1_translateX";
	rename -uid "65C0EFFA-DB4E-C1DE-FB72-F9AF6C549841";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 9.3368776692261424;
createNode animCurveTL -n "Spine_2_translateX";
	rename -uid "5FB21802-3241-0435-0D93-C2AF211D522F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 18.23274650489121;
createNode animCurveTL -n "Chest_translateX";
	rename -uid "2FA78941-9C41-522A-325F-71BBD29B8C19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 21.899120996169305;
createNode animCurveTL -n "Joint_Base_translateY";
	rename -uid "3FD0A48E-CC42-685C-5E4E-B59263C54B39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  24 -8.3935626233273428 30 -11.372614055959311
		 38 -8.3935626233273428 46 -11.372614055959311 60 -8.394 65 -11.373 70 -8.394 78 -11.373
		 86 -8.394;
createNode animCurveTL -n "Spine_Base_translateY";
	rename -uid "5BADD486-744A-92DA-AF1B-7FAD13E48DCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 1.4600696749647604;
createNode animCurveTL -n "Spine_1_translateY";
	rename -uid "317BC9C8-7145-7271-F8C2-6D908222C344";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 1.7763568394002505e-15;
createNode animCurveTL -n "Spine_2_translateY";
	rename -uid "1588FEF6-E941-A360-14FC-DEA10BD8AB10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -3.5527136788005009e-15;
createNode animCurveTL -n "Chest_translateY";
	rename -uid "D4AB125E-714F-0AC3-0FF7-9E80637D12E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 7.1054273576010019e-15;
createNode animCurveTL -n "Joint_Base_translateZ";
	rename -uid "5FC6AE8E-5240-DBF0-71A9-159331C779E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  24 -28.545776100389716 30 -28.545776100389716
		 38 -28.545776100389716 46 -28.545776100389716 70 -28.545776100389716 86 -28.545776100389716;
createNode animCurveTL -n "Spine_Base_translateZ";
	rename -uid "DE4E93FE-1F48-1A7E-24BB-4380B121E554";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 1.8310526217198415;
createNode animCurveTL -n "Spine_1_translateZ";
	rename -uid "98B1F1D8-0A42-8343-E0F9-1E811ED649F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -3.1098049699449983e-15;
createNode animCurveTL -n "Spine_2_translateZ";
	rename -uid "F1CD259D-EE4F-BCA3-B3AB-FEB65C72E4E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 4.8466478636802526e-15;
createNode animCurveTL -n "Chest_translateZ";
	rename -uid "E6648A18-F74B-A52D-364D-D7853298426A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -2.6956353773824071e-15;
createNode animCurveTA -n "Joint_Base_rotateX";
	rename -uid "A00D3281-E14E-03D0-C2B0-FAB6867E863A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  24 0 38 0;
createNode animCurveTA -n "Spine_Base_rotateX";
	rename -uid "36C3044C-F047-D691-6F81-36A2C5FD1B37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -9.5416640443905503e-15;
createNode animCurveTA -n "Spine_1_rotateX";
	rename -uid "FDE43EEE-4141-CF13-7CC9-BB8A339D485C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "Spine_2_rotateX";
	rename -uid "3D733365-854C-8926-5EFF-E199C251CABE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -8.1815880927216451e-15;
createNode animCurveTA -n "Chest_rotateX";
	rename -uid "5A4A8259-BA49-0653-A8E0-04A1787F3553";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -4.9280814663183033e-16;
createNode animCurveTA -n "Joint_Base_rotateY";
	rename -uid "CE1C8A99-404A-9CC2-9234-3BBE18F5ED3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  24 0 38 0;
createNode animCurveTA -n "Spine_Base_rotateY";
	rename -uid "BC7DC706-D843-95F0-77E2-CAA1136A886F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -1.2722218725854067e-14;
createNode animCurveTA -n "Spine_1_rotateY";
	rename -uid "19A374E0-AF41-FF1A-6081-D9BBF4FD4D1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "Spine_2_rotateY";
	rename -uid "4E14F5FE-5142-8C87-FE65-7C9743A05A94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 2.1225829450466829e-15;
createNode animCurveTA -n "Chest_rotateY";
	rename -uid "DB0C126F-D74D-2130-5A34-D4A530DD4E74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -1.070876461225078e-14;
createNode animCurveTA -n "Joint_Base_rotateZ";
	rename -uid "4A8DC38F-EC44-300D-25F4-66B939776863";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  24 0 38 0;
createNode animCurveTA -n "Spine_Base_rotateZ";
	rename -uid "73DDB338-B049-5091-E9B0-70A03915AE1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 1.0593375115320381e-30;
createNode animCurveTA -n "Spine_1_rotateZ";
	rename -uid "0B1685A4-3246-705B-1882-72BF526B7535";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "Spine_2_rotateZ";
	rename -uid "C016C1A0-AB48-6EE1-FA68-A1A3EBCC0B3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 6.3611093629270335e-15;
createNode animCurveTA -n "Chest_rotateZ";
	rename -uid "4D1503CF-CA40-5D5A-15B3-948739C09FBB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 6.3611093629270335e-15;
createNode animCurveTL -n "Waist_translateZ";
	rename -uid "A2F4459B-0F4F-9E89-C567-D984968A1602";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -1.42522004998089;
createNode animCurveTL -n "Waist_translateY";
	rename -uid "47829D98-594D-07C5-FC08-0A80FD70A3E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -1.6796048095476461;
createNode animCurveTL -n "Waist_translateX";
	rename -uid "2F192E2E-4C43-D9CE-C6BB-429A0F6BAA9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "Waist_rotateZ";
	rename -uid "D154F868-2646-9071-C80E-528435B1A827";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "Waist_rotateY";
	rename -uid "3F942F33-9B4E-4776-45EF-BDAD3F4FB3A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "Waist_rotateX";
	rename -uid "3BA3D5CB-0B4E-40B5-5F90-049479B5035D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode skinCluster -n "skinCluster12";
	rename -uid "C7AA5D91-4025-5540-748C-6BB81F7A50EF";
	setAttr -s 312 ".wl";
	setAttr ".wl[0].w[7]"  1;
	setAttr ".wl[1].w[7]"  1;
	setAttr ".wl[2].w[7]"  1;
	setAttr ".wl[3].w[7]"  1;
	setAttr ".wl[4].w[7]"  1;
	setAttr ".wl[5].w[7]"  1;
	setAttr ".wl[6].w[7]"  1;
	setAttr ".wl[7].w[7]"  1;
	setAttr ".wl[8].w[7]"  1;
	setAttr ".wl[9].w[7]"  1;
	setAttr ".wl[10].w[7]"  1;
	setAttr ".wl[11].w[7]"  1;
	setAttr ".wl[12].w[7]"  1;
	setAttr ".wl[13].w[7]"  1;
	setAttr ".wl[14].w[7]"  1;
	setAttr ".wl[15].w[7]"  1;
	setAttr ".wl[16].w[7]"  1;
	setAttr ".wl[17].w[7]"  1;
	setAttr ".wl[18].w[7]"  1;
	setAttr ".wl[19].w[7]"  1;
	setAttr ".wl[20].w[7]"  1;
	setAttr ".wl[21].w[7]"  1;
	setAttr ".wl[22].w[7]"  1;
	setAttr ".wl[23].w[7]"  1;
	setAttr ".wl[24].w[7]"  1;
	setAttr ".wl[25].w[7]"  1;
	setAttr ".wl[26].w[7]"  1;
	setAttr ".wl[27].w[7]"  1;
	setAttr ".wl[28].w[7]"  1;
	setAttr ".wl[29].w[7]"  1;
	setAttr ".wl[30].w[7]"  1;
	setAttr ".wl[31].w[7]"  1;
	setAttr ".wl[32].w[7]"  1;
	setAttr ".wl[33].w[7]"  1;
	setAttr ".wl[34].w[7]"  1;
	setAttr ".wl[35].w[7]"  1;
	setAttr ".wl[36].w[7]"  1;
	setAttr ".wl[37].w[7]"  1;
	setAttr ".wl[38].w[7]"  1;
	setAttr ".wl[39].w[7]"  1;
	setAttr ".wl[40].w[7]"  1;
	setAttr ".wl[41].w[7]"  1;
	setAttr ".wl[42].w[7]"  1;
	setAttr ".wl[43].w[7]"  1;
	setAttr ".wl[44].w[7]"  1;
	setAttr ".wl[45].w[7]"  1;
	setAttr ".wl[46].w[7]"  1;
	setAttr ".wl[47].w[7]"  1;
	setAttr ".wl[48].w[7]"  1;
	setAttr ".wl[49].w[7]"  1;
	setAttr ".wl[50].w[7]"  1;
	setAttr ".wl[51].w[7]"  1;
	setAttr ".wl[52].w[7]"  1;
	setAttr ".wl[53].w[7]"  1;
	setAttr ".wl[54].w[7]"  1;
	setAttr ".wl[55].w[7]"  1;
	setAttr ".wl[56].w[7]"  1;
	setAttr ".wl[57].w[7]"  1;
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
	setAttr ".wl[116].w[7]"  1;
	setAttr ".wl[117].w[7]"  1;
	setAttr ".wl[118].w[7]"  1;
	setAttr ".wl[119].w[7]"  1;
	setAttr ".wl[120].w[7]"  1;
	setAttr ".wl[121].w[7]"  1;
	setAttr ".wl[122].w[7]"  1;
	setAttr ".wl[123].w[7]"  1;
	setAttr ".wl[124].w[7]"  1;
	setAttr ".wl[125].w[7]"  1;
	setAttr ".wl[126].w[7]"  1;
	setAttr ".wl[127].w[7]"  1;
	setAttr ".wl[128].w[7]"  1;
	setAttr ".wl[129].w[7]"  1;
	setAttr ".wl[130].w[7]"  1;
	setAttr ".wl[131].w[7]"  1;
	setAttr ".wl[132].w[7]"  1;
	setAttr ".wl[133].w[7]"  1;
	setAttr ".wl[134].w[7]"  1;
	setAttr ".wl[135].w[7]"  1;
	setAttr ".wl[136].w[7]"  1;
	setAttr ".wl[137].w[7]"  1;
	setAttr ".wl[138].w[7]"  1;
	setAttr ".wl[139].w[7]"  1;
	setAttr ".wl[140].w[7]"  1;
	setAttr ".wl[141].w[7]"  1;
	setAttr ".wl[142].w[7]"  1;
	setAttr ".wl[143].w[7]"  1;
	setAttr ".wl[144].w[7]"  1;
	setAttr ".wl[145].w[7]"  1;
	setAttr ".wl[146].w[7]"  1;
	setAttr ".wl[147].w[7]"  1;
	setAttr ".wl[148].w[7]"  1;
	setAttr ".wl[149].w[7]"  1;
	setAttr ".wl[150].w[7]"  1;
	setAttr ".wl[151].w[7]"  1;
	setAttr ".wl[152].w[7]"  1;
	setAttr ".wl[153].w[7]"  1;
	setAttr ".wl[154].w[7]"  1;
	setAttr ".wl[155].w[7]"  1;
	setAttr ".wl[156].w[11]"  1;
	setAttr ".wl[157].w[11]"  1;
	setAttr ".wl[158].w[11]"  1;
	setAttr ".wl[159].w[11]"  1;
	setAttr ".wl[160].w[11]"  1;
	setAttr ".wl[161].w[11]"  1;
	setAttr ".wl[162].w[11]"  1;
	setAttr ".wl[163].w[11]"  1;
	setAttr ".wl[164].w[11]"  1;
	setAttr ".wl[165].w[11]"  1;
	setAttr ".wl[166].w[11]"  1;
	setAttr ".wl[167].w[11]"  1;
	setAttr ".wl[168].w[11]"  1;
	setAttr ".wl[169].w[11]"  1;
	setAttr ".wl[170].w[11]"  1;
	setAttr ".wl[171].w[11]"  1;
	setAttr ".wl[172].w[11]"  1;
	setAttr ".wl[173].w[11]"  1;
	setAttr ".wl[174].w[11]"  1;
	setAttr ".wl[175].w[11]"  1;
	setAttr ".wl[176].w[11]"  1;
	setAttr ".wl[177].w[11]"  1;
	setAttr ".wl[178].w[11]"  1;
	setAttr ".wl[179].w[11]"  1;
	setAttr ".wl[180].w[11]"  1;
	setAttr ".wl[181].w[11]"  1;
	setAttr ".wl[182].w[11]"  1;
	setAttr ".wl[183].w[11]"  1;
	setAttr ".wl[184].w[11]"  1;
	setAttr ".wl[185].w[11]"  1;
	setAttr ".wl[186].w[11]"  1;
	setAttr ".wl[187].w[11]"  1;
	setAttr ".wl[188].w[11]"  1;
	setAttr ".wl[189].w[11]"  1;
	setAttr ".wl[190].w[11]"  1;
	setAttr ".wl[191].w[11]"  1;
	setAttr ".wl[192].w[11]"  1;
	setAttr ".wl[193].w[11]"  1;
	setAttr ".wl[194].w[11]"  1;
	setAttr ".wl[195].w[11]"  1;
	setAttr ".wl[196].w[11]"  1;
	setAttr ".wl[197].w[11]"  1;
	setAttr ".wl[198].w[11]"  1;
	setAttr ".wl[199].w[11]"  1;
	setAttr ".wl[200].w[11]"  1;
	setAttr ".wl[201].w[11]"  1;
	setAttr ".wl[202].w[11]"  1;
	setAttr ".wl[203].w[11]"  1;
	setAttr ".wl[204].w[11]"  1;
	setAttr ".wl[205].w[11]"  1;
	setAttr ".wl[206].w[11]"  1;
	setAttr ".wl[207].w[11]"  1;
	setAttr ".wl[208].w[11]"  1;
	setAttr ".wl[209].w[11]"  1;
	setAttr ".wl[210].w[11]"  1;
	setAttr ".wl[211].w[11]"  1;
	setAttr ".wl[212].w[11]"  1;
	setAttr ".wl[213].w[11]"  1;
	setAttr ".wl[214].w[11]"  1;
	setAttr ".wl[215].w[11]"  1;
	setAttr ".wl[216].w[11]"  1;
	setAttr ".wl[217].w[11]"  1;
	setAttr ".wl[218].w[11]"  1;
	setAttr ".wl[219].w[11]"  1;
	setAttr ".wl[220].w[11]"  1;
	setAttr ".wl[221].w[11]"  1;
	setAttr ".wl[222].w[11]"  1;
	setAttr ".wl[223].w[11]"  1;
	setAttr ".wl[224].w[11]"  1;
	setAttr ".wl[225].w[11]"  1;
	setAttr ".wl[226].w[11]"  1;
	setAttr ".wl[227].w[11]"  1;
	setAttr ".wl[228].w[11]"  1;
	setAttr ".wl[229].w[11]"  1;
	setAttr ".wl[230].w[11]"  1;
	setAttr ".wl[231].w[11]"  1;
	setAttr ".wl[232].w[11]"  1;
	setAttr ".wl[233].w[11]"  1;
	setAttr ".wl[234].w[11]"  1;
	setAttr ".wl[235].w[11]"  1;
	setAttr ".wl[236].w[11]"  1;
	setAttr ".wl[237].w[11]"  1;
	setAttr ".wl[238].w[11]"  1;
	setAttr ".wl[239].w[11]"  1;
	setAttr ".wl[240].w[11]"  1;
	setAttr ".wl[241].w[11]"  1;
	setAttr ".wl[242].w[11]"  1;
	setAttr ".wl[243].w[11]"  1;
	setAttr ".wl[244].w[11]"  1;
	setAttr ".wl[245].w[11]"  1;
	setAttr ".wl[246].w[11]"  1;
	setAttr ".wl[247].w[11]"  1;
	setAttr ".wl[248].w[11]"  1;
	setAttr ".wl[249].w[11]"  1;
	setAttr ".wl[250].w[11]"  1;
	setAttr ".wl[251].w[11]"  1;
	setAttr ".wl[252].w[11]"  1;
	setAttr ".wl[253].w[11]"  1;
	setAttr ".wl[254].w[11]"  1;
	setAttr ".wl[255].w[11]"  1;
	setAttr ".wl[256].w[11]"  1;
	setAttr ".wl[257].w[11]"  1;
	setAttr ".wl[258].w[11]"  1;
	setAttr ".wl[259].w[11]"  1;
	setAttr ".wl[260].w[11]"  1;
	setAttr ".wl[261].w[11]"  1;
	setAttr ".wl[262].w[11]"  1;
	setAttr ".wl[263].w[11]"  1;
	setAttr ".wl[264].w[11]"  1;
	setAttr ".wl[265].w[11]"  1;
	setAttr ".wl[266].w[11]"  1;
	setAttr ".wl[267].w[11]"  1;
	setAttr ".wl[268].w[11]"  1;
	setAttr ".wl[269].w[11]"  1;
	setAttr ".wl[270].w[11]"  1;
	setAttr ".wl[271].w[11]"  1;
	setAttr ".wl[272].w[11]"  1;
	setAttr ".wl[273].w[11]"  1;
	setAttr ".wl[274].w[11]"  1;
	setAttr ".wl[275].w[11]"  1;
	setAttr ".wl[276].w[11]"  1;
	setAttr ".wl[277].w[11]"  1;
	setAttr ".wl[278].w[11]"  1;
	setAttr ".wl[279].w[11]"  1;
	setAttr ".wl[280].w[11]"  1;
	setAttr ".wl[281].w[11]"  1;
	setAttr ".wl[282].w[11]"  1;
	setAttr -s 5 ".wl[283].w";
	setAttr ".wl[283].w[9]" 3.6142533333896504e-05;
	setAttr ".wl[283].w[10]" 0.0031213783326865621;
	setAttr ".wl[283].w[11]" 0.99527823925018311;
	setAttr ".wl[283].w[12]" 0.0015481783448185143;
	setAttr ".wl[283].w[23]" 1.60615389779218e-05;
	setAttr ".wl[284].w[11]"  1;
	setAttr ".wl[285].w[11]"  1;
	setAttr ".wl[286].w[11]"  1;
	setAttr ".wl[287].w[11]"  1;
	setAttr ".wl[288].w[11]"  1;
	setAttr ".wl[289].w[11]"  1;
	setAttr ".wl[290].w[11]"  1;
	setAttr ".wl[291].w[11]"  1;
	setAttr ".wl[292].w[11]"  1;
	setAttr ".wl[293].w[11]"  1;
	setAttr ".wl[294].w[11]"  1;
	setAttr ".wl[295].w[11]"  1;
	setAttr ".wl[296].w[11]"  1;
	setAttr ".wl[297].w[11]"  1;
	setAttr ".wl[298].w[11]"  1;
	setAttr ".wl[299].w[11]"  1;
	setAttr ".wl[300].w[11]"  1;
	setAttr ".wl[301].w[11]"  1;
	setAttr ".wl[302].w[11]"  1;
	setAttr ".wl[303].w[11]"  1;
	setAttr ".wl[304].w[11]"  1;
	setAttr ".wl[305].w[11]"  1;
	setAttr ".wl[306].w[11]"  1;
	setAttr ".wl[307].w[11]"  1;
	setAttr ".wl[308].w[11]"  1;
	setAttr ".wl[309].w[11]"  1;
	setAttr ".wl[310].w[11]"  1;
	setAttr ".wl[311].w[11]"  1;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.3935626233273428 28.545776100389716 1;
	setAttr ".pm[1]" -type "matrix" 2.9171120138216851e-16 -2.0309007691163655e-16 0.99999999999999978 0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-16 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-16 0
		 5.141099383762306 27.116763673658916 6.384860464405965e-15 1;
	setAttr ".pm[2]" -type "matrix" 1.9255976590806024e-16 4.2123171441692991e-16 -0.99999999999999978 0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-16 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-16 0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-14 1;
	setAttr ".pm[3]" -type "matrix" -2.2254253739202254e-16 4.0618990599018242e-16 -0.99999999999999978 0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-16 0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-16 0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-14 1;
	setAttr ".pm[4]" -type "matrix" -3.9263286525203279e-16 2.4567224874041425e-16 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-16 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-16 0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-14 1;
	setAttr ".pm[5]" -type "matrix" -4.3236892918211134e-16 -1.660497809547105e-16 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-16 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-16 0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[6]" -type "matrix" -4.2008944836864555e-16 -1.9503916541689796e-16 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-16 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-16 0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[7]" -type "matrix" -2.3367847652631728e-16 5.2235190187304229e-16 0.99999999999999978 0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-16 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-16 0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[8]" -type "matrix" 0.99999999999999978 7.889801871316359e-16 -4.1328562659829196e-16 0
		 -7.1325529571241588e-16 0.99999999999999978 7.4940054162198017e-16 0 5.2724101640594644e-16 -9.1593399531575296e-16 0.99999999999999933 0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[9]" -type "matrix" 4.3236892918211144e-16 1.6604978095471038e-16 -0.99999999999999978 0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-16 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-16 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[10]" -type "matrix" 4.200894483686456e-16 1.9503916541689791e-16 -1 0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-16 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-16 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[11]" -type "matrix" 2.3367847652631718e-16 1.6666666780649064e-16 0.99999999999999978 0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-16 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-16 0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[12]" -type "matrix" 0.99999999999999978 5.5459731209901231e-16 1.2054718195384451e-17 0
		 6.0517993594966963e-16 -1 -6.3837823915946462e-16 0 7.7400975786026954e-17 7.2164496600635165e-16 -0.99999999999999978 0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[13]" -type "matrix" -4.0112524636791838e-16 2.3154687949413117e-16 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-16 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-16 0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-14 1;
	setAttr ".pm[14]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -6.2314369504761027e-15 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[15]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -1.3912601358543541e-14 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[16]" -type "matrix" 5.0813779435729561e-16 1.296078129378641e-15 0.99999999999999978 0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-16 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-15 0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[17]" -type "matrix" -1.0103368778348008e-15 -4.0484730914130193e-16 -0.99999999999999978 0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-16 0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-15 0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[18]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-16 -1.5416536010143854e-15 0
		 5.3246366272141857e-16 0.99999999999999978 -5.6898930012039322e-16 0 1.611115502654318e-15 6.5919492087118591e-16 0.99999999999999978 0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[19]" -type "matrix" 5.0211778276518463e-16 -8.7774694673919145e-16 0.99999999999999978 0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-16 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-15 0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[20]" -type "matrix" 7.131658175178445e-16 -5.6945907845917879e-16 -0.99999999999999978 0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-16 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-16 0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[21]" -type "matrix" 1 -5.6270869122286394e-16 7.6910344414326529e-17 0
		 -2.7393525345077987e-16 -0.99999999999999956 -4.8919202022545929e-15 0 2.3587309789062293e-16 4.7045700668490977e-15 -0.99999999999999978 0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".pm[22]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[23]" -type "matrix" 6.693613450145993e-16 1.7889765444095194e-15 -1 0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-15 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-15 0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[24]" -type "matrix" -3.1806489720151775e-16 7.1110600523609952e-16 1 0
		 0.23651468939617115 -0.97162791319508335 7.5749132939959172e-16 0 0.97162791319508313 0.23651468939617099 1.3112890213765296e-16 0
		 15.753396610245158 -24.192069798095329 14.952100000000017 1;
	setAttr ".pm[25]" -type "matrix" -7.7862017067354629e-16 2.5809568655261894e-08 0.99999999999999978 0
		 0.97741416543986748 -0.21133279252753714 5.4544089702159377e-09 0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-08 0
		 38.494799132532364 23.920859481432771 12.09489938261296 1;
	setAttr ".pm[26]" -type "matrix" -1.3805402767519449e-08 1.3615198156657945e-08 -0.99999999999999978 0
		 0.93887631588660825 -0.3442546491584228 -1.7648660945676001e-08 0 -0.34425464915842274 -0.93887631588660825 -8.0304129894412106e-09 0
		 24.344687153438446 -43.723300868428026 -12.094900931389603 1;
	setAttr ".pm[27]" -type "matrix" 7.7249776432890225e-09 -1.6343368966662313e-08 -1 0
		 0.017238817250843728 -0.99985140054899735 1.6474109837531978e-08 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-09 0
		 -30.350163356585991 -42.766656220525725 -12.094899535503078 1;
	setAttr ".pm[28]" -type "matrix" 1 -1.6162482267249325e-08 -1.0632309108148316e-08 0
		 -1.6162482276970348e-08 -0.99999999999999956 -1.5307677505295637e-14 0 -1.0632309067137227e-08 1.5240265432259012e-14 -0.99999999999999956 0
		 14.182899160148009 -42.525700229230644 -14.346000150797618 1;
	setAttr ".pm[29]" -type "matrix" 3.6929243270364759e-16 4.7854520619298905e-17 -1 0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-16 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-16 0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[30]" -type "matrix" 2.8232439365995012e-16 -2.4058376823856014e-16 1 0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-16 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-16 0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[31]" -type "matrix" 3.3969043598553431e-16 1.4899000132653635e-16 1 0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-16 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-16 0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[32]" -type "matrix" 2.0731684078555344e-16 2.5897082728895037e-16 -1 0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-17 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-16 0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[33]" -type "matrix" 3.1628320018632648e-16 -1.0005548030928621e-16 -1 0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-17 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-16 0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[34]" -type "matrix" 1 -8.8267921761093423e-17 -6.84540878947466e-16 0
		 5.982944840221322e-17 1.0000000000000002 -3.4000580129145434e-16 0 7.1046403083575275e-16 3.4347524824340795e-16 1 0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
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
createNode objectSet -n "skinCluster12Set";
	rename -uid "B694BFD9-4FDE-4D6B-9112-DD9A6A06BD29";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster12GroupId";
	rename -uid "074BA8F3-4E09-EAEE-4BBA-D98A3213369F";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster12GroupParts";
	rename -uid "C0B90CA4-4E50-5528-FAB5-77916427A77B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak12";
	rename -uid "F6A7A057-450E-8FEF-D3E7-3EB350796743";
createNode objectSet -n "tweakSet12";
	rename -uid "99DD27F8-470F-5B2F-E0B0-15A9670EEE24";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId24";
	rename -uid "4566112F-485C-4C68-87FA-5AAE0C3CD536";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "FFCBF37B-4AB9-62C5-EFEC-A5A076B0D43F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster8";
	rename -uid "EE87C6AE-4B13-48F1-61C8-C69854590FC1";
	setAttr -s 400 ".wl";
	setAttr ".wl[0].w[6]"  1;
	setAttr ".wl[1].w[6]"  1;
	setAttr ".wl[2].w[6]"  1;
	setAttr ".wl[3].w[6]"  1;
	setAttr ".wl[4].w[6]"  1;
	setAttr ".wl[5].w[6]"  1;
	setAttr ".wl[6].w[6]"  1;
	setAttr ".wl[7].w[6]"  1;
	setAttr ".wl[8].w[6]"  1;
	setAttr ".wl[9].w[6]"  1;
	setAttr ".wl[10].w[6]"  1;
	setAttr ".wl[11].w[6]"  1;
	setAttr ".wl[12].w[6]"  1;
	setAttr ".wl[13].w[6]"  1;
	setAttr ".wl[14].w[6]"  1;
	setAttr ".wl[15].w[6]"  1;
	setAttr ".wl[16].w[6]"  1;
	setAttr ".wl[17].w[6]"  1;
	setAttr ".wl[18].w[6]"  1;
	setAttr ".wl[19].w[6]"  1;
	setAttr ".wl[20].w[6]"  1;
	setAttr ".wl[21].w[6]"  1;
	setAttr ".wl[22].w[6]"  1;
	setAttr ".wl[23].w[6]"  1;
	setAttr ".wl[24].w[6]"  1;
	setAttr ".wl[25].w[6]"  1;
	setAttr ".wl[26].w[6]"  1;
	setAttr ".wl[27].w[6]"  1;
	setAttr ".wl[28].w[6]"  1;
	setAttr ".wl[29].w[6]"  1;
	setAttr ".wl[30].w[6]"  1;
	setAttr ".wl[31].w[6]"  1;
	setAttr ".wl[32].w[6]"  1;
	setAttr ".wl[33].w[6]"  1;
	setAttr ".wl[34].w[6]"  1;
	setAttr ".wl[35].w[6]"  1;
	setAttr ".wl[36].w[6]"  1;
	setAttr ".wl[37].w[6]"  1;
	setAttr ".wl[38].w[6]"  1;
	setAttr ".wl[39].w[6]"  1;
	setAttr ".wl[40].w[6]"  1;
	setAttr ".wl[41].w[6]"  1;
	setAttr ".wl[42].w[6]"  1;
	setAttr ".wl[43].w[6]"  1;
	setAttr ".wl[44].w[6]"  1;
	setAttr ".wl[45].w[6]"  1;
	setAttr ".wl[46].w[6]"  1;
	setAttr ".wl[47].w[6]"  1;
	setAttr ".wl[48].w[6]"  1;
	setAttr ".wl[49].w[6]"  1;
	setAttr ".wl[50].w[6]"  1;
	setAttr ".wl[51].w[6]"  1;
	setAttr ".wl[52].w[6]"  1;
	setAttr ".wl[53].w[6]"  1;
	setAttr ".wl[54].w[6]"  1;
	setAttr ".wl[55].w[6]"  1;
	setAttr ".wl[56].w[6]"  1;
	setAttr ".wl[57].w[6]"  1;
	setAttr ".wl[58].w[6]"  1;
	setAttr ".wl[59].w[6]"  1;
	setAttr ".wl[60].w[6]"  1;
	setAttr ".wl[61].w[6]"  1;
	setAttr ".wl[62].w[6]"  1;
	setAttr ".wl[63].w[6]"  1;
	setAttr ".wl[64].w[6]"  1;
	setAttr ".wl[65].w[6]"  1;
	setAttr ".wl[66].w[6]"  1;
	setAttr ".wl[67].w[6]"  1;
	setAttr ".wl[68].w[6]"  1;
	setAttr ".wl[69].w[6]"  1;
	setAttr ".wl[70].w[6]"  1;
	setAttr ".wl[71].w[6]"  1;
	setAttr ".wl[72].w[6]"  1;
	setAttr ".wl[73].w[6]"  1;
	setAttr ".wl[74].w[6]"  1;
	setAttr ".wl[75].w[6]"  1;
	setAttr ".wl[76].w[6]"  1;
	setAttr ".wl[77].w[6]"  1;
	setAttr ".wl[78].w[6]"  1;
	setAttr ".wl[79].w[6]"  1;
	setAttr ".wl[80].w[6]"  1;
	setAttr ".wl[81].w[6]"  1;
	setAttr ".wl[82].w[6]"  1;
	setAttr ".wl[83].w[6]"  1;
	setAttr ".wl[84].w[6]"  1;
	setAttr ".wl[85].w[6]"  1;
	setAttr ".wl[86].w[6]"  1;
	setAttr ".wl[87].w[6]"  1;
	setAttr ".wl[88].w[6]"  1;
	setAttr ".wl[89].w[6]"  1;
	setAttr ".wl[90].w[6]"  1;
	setAttr ".wl[91].w[6]"  1;
	setAttr ".wl[92].w[6]"  1;
	setAttr ".wl[93].w[6]"  1;
	setAttr ".wl[94].w[6]"  1;
	setAttr ".wl[95].w[6]"  1;
	setAttr ".wl[96].w[6]"  1;
	setAttr ".wl[97].w[6]"  1;
	setAttr ".wl[98].w[6]"  1;
	setAttr ".wl[99].w[6]"  1;
	setAttr ".wl[100].w[6]"  1;
	setAttr ".wl[101].w[6]"  1;
	setAttr ".wl[102].w[6]"  1;
	setAttr ".wl[103].w[6]"  1;
	setAttr ".wl[104].w[6]"  1;
	setAttr ".wl[105].w[6]"  1;
	setAttr ".wl[106].w[6]"  1;
	setAttr ".wl[107].w[6]"  1;
	setAttr ".wl[108].w[6]"  1;
	setAttr ".wl[109].w[6]"  1;
	setAttr ".wl[110].w[6]"  1;
	setAttr ".wl[111].w[6]"  1;
	setAttr ".wl[112].w[6]"  1;
	setAttr ".wl[113].w[6]"  1;
	setAttr ".wl[114].w[6]"  1;
	setAttr ".wl[115].w[6]"  1;
	setAttr ".wl[116].w[6]"  1;
	setAttr ".wl[117].w[6]"  1;
	setAttr ".wl[118].w[6]"  1;
	setAttr ".wl[119].w[6]"  1;
	setAttr ".wl[120].w[6]"  1;
	setAttr ".wl[121].w[6]"  1;
	setAttr ".wl[122].w[6]"  1;
	setAttr ".wl[123].w[6]"  1;
	setAttr ".wl[124].w[6]"  1;
	setAttr ".wl[125].w[6]"  1;
	setAttr ".wl[126].w[6]"  1;
	setAttr ".wl[127].w[6]"  1;
	setAttr ".wl[128].w[6]"  1;
	setAttr ".wl[129].w[6]"  1;
	setAttr ".wl[130].w[6]"  1;
	setAttr ".wl[131].w[6]"  1;
	setAttr ".wl[132].w[6]"  1;
	setAttr ".wl[133].w[6]"  1;
	setAttr ".wl[134].w[6]"  1;
	setAttr ".wl[135].w[6]"  1;
	setAttr ".wl[136].w[6]"  1;
	setAttr ".wl[137].w[6]"  1;
	setAttr ".wl[138].w[6]"  1;
	setAttr ".wl[139].w[6]"  1;
	setAttr ".wl[140].w[6]"  1;
	setAttr ".wl[141].w[6]"  1;
	setAttr ".wl[142].w[6]"  1;
	setAttr ".wl[143].w[6]"  1;
	setAttr ".wl[144].w[6]"  1;
	setAttr ".wl[145].w[6]"  1;
	setAttr ".wl[146].w[6]"  1;
	setAttr ".wl[147].w[6]"  1;
	setAttr ".wl[148].w[6]"  1;
	setAttr ".wl[149].w[6]"  1;
	setAttr ".wl[150].w[6]"  1;
	setAttr ".wl[151].w[6]"  1;
	setAttr ".wl[152].w[6]"  1;
	setAttr ".wl[153].w[6]"  1;
	setAttr ".wl[154].w[6]"  1;
	setAttr ".wl[155].w[6]"  1;
	setAttr ".wl[156].w[6]"  1;
	setAttr ".wl[157].w[6]"  1;
	setAttr ".wl[158].w[6]"  1;
	setAttr ".wl[159].w[6]"  1;
	setAttr ".wl[160].w[6]"  1;
	setAttr ".wl[161].w[6]"  1;
	setAttr ".wl[162].w[6]"  1;
	setAttr ".wl[163].w[6]"  1;
	setAttr ".wl[164].w[6]"  1;
	setAttr ".wl[165].w[6]"  1;
	setAttr ".wl[166].w[6]"  1;
	setAttr ".wl[167].w[6]"  1;
	setAttr ".wl[168].w[6]"  1;
	setAttr ".wl[169].w[6]"  1;
	setAttr ".wl[170].w[6]"  1;
	setAttr ".wl[171].w[6]"  1;
	setAttr ".wl[172].w[6]"  1;
	setAttr ".wl[173].w[6]"  1;
	setAttr ".wl[174].w[6]"  1;
	setAttr ".wl[175].w[6]"  1;
	setAttr ".wl[176].w[6]"  1;
	setAttr ".wl[177].w[6]"  1;
	setAttr ".wl[178].w[6]"  1;
	setAttr ".wl[179].w[6]"  1;
	setAttr ".wl[180].w[6]"  1;
	setAttr ".wl[181].w[6]"  1;
	setAttr ".wl[182].w[6]"  1;
	setAttr ".wl[183].w[6]"  1;
	setAttr ".wl[184].w[6]"  1;
	setAttr ".wl[185].w[6]"  1;
	setAttr ".wl[186].w[6]"  1;
	setAttr ".wl[187].w[6]"  1;
	setAttr ".wl[188].w[6]"  1;
	setAttr ".wl[189].w[6]"  1;
	setAttr ".wl[190].w[6]"  1;
	setAttr ".wl[191].w[6]"  1;
	setAttr ".wl[192].w[6]"  1;
	setAttr ".wl[193].w[6]"  1;
	setAttr ".wl[194].w[6]"  1;
	setAttr ".wl[195].w[6]"  1;
	setAttr ".wl[196].w[6]"  1;
	setAttr ".wl[197].w[6]"  1;
	setAttr ".wl[198].w[6]"  1;
	setAttr ".wl[199].w[6]"  1;
	setAttr ".wl[200].w[10]"  1;
	setAttr ".wl[201].w[10]"  1;
	setAttr ".wl[202].w[10]"  1;
	setAttr ".wl[203].w[10]"  1;
	setAttr ".wl[204].w[10]"  1;
	setAttr ".wl[205].w[10]"  1;
	setAttr ".wl[206].w[10]"  1;
	setAttr ".wl[207].w[10]"  1;
	setAttr ".wl[208].w[10]"  1;
	setAttr ".wl[209].w[10]"  1;
	setAttr ".wl[210].w[10]"  1;
	setAttr ".wl[211].w[10]"  1;
	setAttr ".wl[212].w[10]"  1;
	setAttr ".wl[213].w[10]"  1;
	setAttr ".wl[214].w[10]"  1;
	setAttr ".wl[215].w[10]"  1;
	setAttr ".wl[216].w[10]"  1;
	setAttr ".wl[217].w[10]"  1;
	setAttr ".wl[218].w[10]"  1;
	setAttr ".wl[219].w[10]"  1;
	setAttr ".wl[220].w[10]"  1;
	setAttr ".wl[221].w[10]"  1;
	setAttr ".wl[222].w[10]"  1;
	setAttr ".wl[223].w[10]"  1;
	setAttr ".wl[224].w[10]"  1;
	setAttr ".wl[225].w[10]"  1;
	setAttr ".wl[226].w[10]"  1;
	setAttr ".wl[227].w[10]"  1;
	setAttr ".wl[228].w[10]"  1;
	setAttr ".wl[229].w[10]"  1;
	setAttr ".wl[230].w[10]"  1;
	setAttr ".wl[231].w[10]"  1;
	setAttr ".wl[232].w[10]"  1;
	setAttr ".wl[233].w[10]"  1;
	setAttr ".wl[234].w[10]"  1;
	setAttr ".wl[235].w[10]"  1;
	setAttr ".wl[236].w[10]"  1;
	setAttr ".wl[237].w[10]"  1;
	setAttr ".wl[238].w[10]"  1;
	setAttr ".wl[239].w[10]"  1;
	setAttr ".wl[240].w[10]"  1;
	setAttr ".wl[241].w[10]"  1;
	setAttr ".wl[242].w[10]"  1;
	setAttr ".wl[243].w[10]"  1;
	setAttr ".wl[244].w[10]"  1;
	setAttr ".wl[245].w[10]"  1;
	setAttr ".wl[246].w[10]"  1;
	setAttr ".wl[247].w[10]"  1;
	setAttr ".wl[248].w[10]"  1;
	setAttr ".wl[249].w[10]"  1;
	setAttr ".wl[250].w[10]"  1;
	setAttr ".wl[251].w[10]"  1;
	setAttr ".wl[252].w[10]"  1;
	setAttr ".wl[253].w[10]"  1;
	setAttr ".wl[254].w[10]"  1;
	setAttr ".wl[255].w[10]"  1;
	setAttr ".wl[256].w[10]"  1;
	setAttr ".wl[257].w[10]"  1;
	setAttr ".wl[258].w[10]"  1;
	setAttr ".wl[259].w[10]"  1;
	setAttr ".wl[260].w[10]"  1;
	setAttr ".wl[261].w[10]"  1;
	setAttr ".wl[262].w[10]"  1;
	setAttr ".wl[263].w[10]"  1;
	setAttr ".wl[264].w[10]"  1;
	setAttr ".wl[265].w[10]"  1;
	setAttr ".wl[266].w[10]"  1;
	setAttr ".wl[267].w[10]"  1;
	setAttr ".wl[268].w[10]"  1;
	setAttr ".wl[269].w[10]"  1;
	setAttr ".wl[270].w[10]"  1;
	setAttr ".wl[271].w[10]"  1;
	setAttr ".wl[272].w[10]"  1;
	setAttr ".wl[273].w[10]"  1;
	setAttr ".wl[274].w[10]"  1;
	setAttr ".wl[275].w[10]"  1;
	setAttr ".wl[276].w[10]"  1;
	setAttr ".wl[277].w[10]"  1;
	setAttr ".wl[278].w[10]"  1;
	setAttr ".wl[279].w[10]"  1;
	setAttr ".wl[280].w[10]"  1;
	setAttr ".wl[281].w[10]"  1;
	setAttr ".wl[282].w[10]"  1;
	setAttr ".wl[283].w[10]"  1;
	setAttr ".wl[284].w[10]"  1;
	setAttr ".wl[285].w[10]"  1;
	setAttr ".wl[286].w[10]"  1;
	setAttr ".wl[287].w[10]"  1;
	setAttr ".wl[288].w[10]"  1;
	setAttr ".wl[289].w[10]"  1;
	setAttr ".wl[290].w[10]"  1;
	setAttr ".wl[291].w[10]"  1;
	setAttr ".wl[292].w[10]"  1;
	setAttr ".wl[293].w[10]"  1;
	setAttr ".wl[294].w[10]"  1;
	setAttr ".wl[295].w[10]"  1;
	setAttr ".wl[296].w[10]"  1;
	setAttr ".wl[297].w[10]"  1;
	setAttr ".wl[298].w[10]"  1;
	setAttr ".wl[299].w[10]"  1;
	setAttr ".wl[300].w[10]"  1;
	setAttr ".wl[301].w[10]"  1;
	setAttr ".wl[302].w[10]"  1;
	setAttr ".wl[303].w[10]"  1;
	setAttr ".wl[304].w[10]"  1;
	setAttr ".wl[305].w[10]"  1;
	setAttr ".wl[306].w[10]"  1;
	setAttr ".wl[307].w[10]"  1;
	setAttr ".wl[308].w[10]"  1;
	setAttr ".wl[309].w[10]"  1;
	setAttr ".wl[310].w[10]"  1;
	setAttr ".wl[311].w[10]"  1;
	setAttr ".wl[312].w[10]"  1;
	setAttr ".wl[313].w[10]"  1;
	setAttr ".wl[314].w[10]"  1;
	setAttr ".wl[315].w[10]"  1;
	setAttr ".wl[316].w[10]"  1;
	setAttr ".wl[317].w[10]"  1;
	setAttr ".wl[318].w[10]"  1;
	setAttr ".wl[319].w[10]"  1;
	setAttr ".wl[320].w[10]"  1;
	setAttr ".wl[321].w[10]"  1;
	setAttr ".wl[322].w[10]"  1;
	setAttr ".wl[323].w[10]"  1;
	setAttr ".wl[324].w[10]"  1;
	setAttr ".wl[325].w[10]"  1;
	setAttr ".wl[326].w[10]"  1;
	setAttr ".wl[327].w[10]"  1;
	setAttr ".wl[328].w[10]"  1;
	setAttr ".wl[329].w[10]"  1;
	setAttr ".wl[330].w[10]"  1;
	setAttr ".wl[331].w[10]"  1;
	setAttr ".wl[332].w[10]"  1;
	setAttr ".wl[333].w[10]"  1;
	setAttr ".wl[334].w[10]"  1;
	setAttr ".wl[335].w[10]"  1;
	setAttr ".wl[336].w[10]"  1;
	setAttr ".wl[337].w[10]"  1;
	setAttr ".wl[338].w[10]"  1;
	setAttr ".wl[339].w[10]"  1;
	setAttr ".wl[340].w[10]"  1;
	setAttr ".wl[341].w[10]"  1;
	setAttr ".wl[342].w[10]"  1;
	setAttr ".wl[343].w[10]"  1;
	setAttr ".wl[344].w[10]"  1;
	setAttr ".wl[345].w[10]"  1;
	setAttr ".wl[346].w[10]"  1;
	setAttr ".wl[347].w[10]"  1;
	setAttr ".wl[348].w[10]"  1;
	setAttr ".wl[349].w[10]"  1;
	setAttr ".wl[350].w[10]"  1;
	setAttr ".wl[351].w[10]"  1;
	setAttr ".wl[352].w[10]"  1;
	setAttr ".wl[353].w[10]"  1;
	setAttr ".wl[354].w[10]"  1;
	setAttr ".wl[355].w[10]"  1;
	setAttr ".wl[356].w[10]"  1;
	setAttr ".wl[357].w[10]"  1;
	setAttr ".wl[358].w[10]"  1;
	setAttr ".wl[359].w[10]"  1;
	setAttr ".wl[360].w[10]"  1;
	setAttr ".wl[361].w[10]"  1;
	setAttr ".wl[362].w[10]"  1;
	setAttr ".wl[363].w[10]"  1;
	setAttr ".wl[364].w[10]"  1;
	setAttr ".wl[365].w[10]"  1;
	setAttr ".wl[366].w[10]"  1;
	setAttr ".wl[367].w[10]"  1;
	setAttr ".wl[368].w[10]"  1;
	setAttr ".wl[369].w[10]"  1;
	setAttr ".wl[370].w[10]"  1;
	setAttr ".wl[371].w[10]"  1;
	setAttr ".wl[372].w[10]"  1;
	setAttr ".wl[373].w[10]"  1;
	setAttr ".wl[374].w[10]"  1;
	setAttr ".wl[375].w[10]"  1;
	setAttr ".wl[376].w[10]"  1;
	setAttr ".wl[377].w[10]"  1;
	setAttr ".wl[378].w[10]"  1;
	setAttr ".wl[379].w[10]"  1;
	setAttr ".wl[380].w[10]"  1;
	setAttr ".wl[381].w[10]"  1;
	setAttr ".wl[382].w[10]"  1;
	setAttr ".wl[383].w[10]"  1;
	setAttr ".wl[384].w[10]"  1;
	setAttr ".wl[385].w[10]"  1;
	setAttr ".wl[386].w[10]"  1;
	setAttr ".wl[387].w[10]"  1;
	setAttr ".wl[388].w[10]"  1;
	setAttr ".wl[389].w[10]"  1;
	setAttr ".wl[390].w[10]"  1;
	setAttr ".wl[391].w[10]"  1;
	setAttr ".wl[392].w[10]"  1;
	setAttr ".wl[393].w[10]"  1;
	setAttr ".wl[394].w[10]"  1;
	setAttr ".wl[395].w[10]"  1;
	setAttr ".wl[396].w[10]"  1;
	setAttr ".wl[397].w[10]"  1;
	setAttr ".wl[398].w[10]"  1;
	setAttr ".wl[399].w[10]"  1;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.3935626233273428 28.545776100389716 1;
	setAttr ".pm[1]" -type "matrix" 2.9171120138216851e-16 -2.0309007691163655e-16 0.99999999999999978 0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-16 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-16 0
		 5.141099383762306 27.116763673658916 6.384860464405965e-15 1;
	setAttr ".pm[2]" -type "matrix" 1.9255976590806024e-16 4.2123171441692991e-16 -0.99999999999999978 0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-16 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-16 0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-14 1;
	setAttr ".pm[3]" -type "matrix" -2.2254253739202254e-16 4.0618990599018242e-16 -0.99999999999999978 0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-16 0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-16 0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-14 1;
	setAttr ".pm[4]" -type "matrix" -3.9263286525203279e-16 2.4567224874041425e-16 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-16 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-16 0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-14 1;
	setAttr ".pm[5]" -type "matrix" -4.3236892918211134e-16 -1.660497809547105e-16 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-16 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-16 0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[6]" -type "matrix" -4.2008944836864555e-16 -1.9503916541689796e-16 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-16 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-16 0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[7]" -type "matrix" -2.3367847652631728e-16 5.2235190187304229e-16 0.99999999999999978 0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-16 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-16 0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[8]" -type "matrix" 0.99999999999999978 7.889801871316359e-16 -4.1328562659829196e-16 0
		 -7.1325529571241588e-16 0.99999999999999978 7.4940054162198017e-16 0 5.2724101640594644e-16 -9.1593399531575296e-16 0.99999999999999933 0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[9]" -type "matrix" 4.3236892918211144e-16 1.6604978095471038e-16 -0.99999999999999978 0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-16 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-16 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[10]" -type "matrix" 4.200894483686456e-16 1.9503916541689791e-16 -1 0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-16 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-16 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[11]" -type "matrix" 2.3367847652631718e-16 1.6666666780649064e-16 0.99999999999999978 0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-16 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-16 0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[12]" -type "matrix" 0.99999999999999978 5.5459731209901231e-16 1.2054718195384451e-17 0
		 6.0517993594966963e-16 -1 -6.3837823915946462e-16 0 7.7400975786026954e-17 7.2164496600635165e-16 -0.99999999999999978 0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[13]" -type "matrix" -4.0112524636791838e-16 2.3154687949413117e-16 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-16 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-16 0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-14 1;
	setAttr ".pm[14]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -6.2314369504761027e-15 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[15]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -1.3912601358543541e-14 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[16]" -type "matrix" 5.0813779435729561e-16 1.296078129378641e-15 0.99999999999999978 0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-16 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-15 0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[17]" -type "matrix" -1.0103368778348008e-15 -4.0484730914130193e-16 -0.99999999999999978 0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-16 0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-15 0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[18]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-16 -1.5416536010143854e-15 0
		 5.3246366272141857e-16 0.99999999999999978 -5.6898930012039322e-16 0 1.611115502654318e-15 6.5919492087118591e-16 0.99999999999999978 0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[19]" -type "matrix" 5.0211778276518463e-16 -8.7774694673919145e-16 0.99999999999999978 0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-16 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-15 0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[20]" -type "matrix" 7.131658175178445e-16 -5.6945907845917879e-16 -0.99999999999999978 0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-16 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-16 0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[21]" -type "matrix" 1 -5.6270869122286394e-16 7.6910344414326529e-17 0
		 -2.7393525345077987e-16 -0.99999999999999956 -4.8919202022545929e-15 0 2.3587309789062293e-16 4.7045700668490977e-15 -0.99999999999999978 0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".pm[22]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[23]" -type "matrix" 6.693613450145993e-16 1.7889765444095194e-15 -1 0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-15 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-15 0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[24]" -type "matrix" -3.1806489720151775e-16 7.1110600523609952e-16 1 0
		 0.23651468939617115 -0.97162791319508335 7.5749132939959172e-16 0 0.97162791319508313 0.23651468939617099 1.3112890213765296e-16 0
		 15.753396610245158 -24.192069798095329 14.952100000000017 1;
	setAttr ".pm[25]" -type "matrix" -7.7862017067354629e-16 2.5809568655261894e-08 0.99999999999999978 0
		 0.97741416543986748 -0.21133279252753714 5.4544089702159377e-09 0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-08 0
		 38.494799132532364 23.920859481432771 12.09489938261296 1;
	setAttr ".pm[26]" -type "matrix" -1.3805402767519449e-08 1.3615198156657945e-08 -0.99999999999999978 0
		 0.93887631588660825 -0.3442546491584228 -1.7648660945676001e-08 0 -0.34425464915842274 -0.93887631588660825 -8.0304129894412106e-09 0
		 24.344687153438446 -43.723300868428026 -12.094900931389603 1;
	setAttr ".pm[27]" -type "matrix" 7.7249776432890225e-09 -1.6343368966662313e-08 -1 0
		 0.017238817250843728 -0.99985140054899735 1.6474109837531978e-08 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-09 0
		 -30.350163356585991 -42.766656220525725 -12.094899535503078 1;
	setAttr ".pm[28]" -type "matrix" 1 -1.6162482267249325e-08 -1.0632309108148316e-08 0
		 -1.6162482276970348e-08 -0.99999999999999956 -1.5307677505295637e-14 0 -1.0632309067137227e-08 1.5240265432259012e-14 -0.99999999999999956 0
		 14.182899160148009 -42.525700229230644 -14.346000150797618 1;
	setAttr ".pm[29]" -type "matrix" 3.6929243270364759e-16 4.7854520619298905e-17 -1 0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-16 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-16 0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[30]" -type "matrix" 2.8232439365995012e-16 -2.4058376823856014e-16 1 0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-16 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-16 0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[31]" -type "matrix" 3.3969043598553431e-16 1.4899000132653635e-16 1 0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-16 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-16 0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[32]" -type "matrix" 2.0731684078555344e-16 2.5897082728895037e-16 -1 0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-17 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-16 0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[33]" -type "matrix" 3.1628320018632648e-16 -1.0005548030928621e-16 -1 0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-17 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-16 0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[34]" -type "matrix" 1 -8.8267921761093423e-17 -6.84540878947466e-16 0
		 5.982944840221322e-17 1.0000000000000002 -3.4000580129145434e-16 0 7.1046403083575275e-16 3.4347524824340795e-16 1 0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
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
createNode objectSet -n "skinCluster8Set";
	rename -uid "6AF52B31-4E41-5D14-AA9B-F1B2AC0DBAB0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster8GroupId";
	rename -uid "EF3F0D78-4B06-26A6-A9C4-61AD53423AFF";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster8GroupParts";
	rename -uid "F0334363-43CA-DB5B-8A41-8B905EC726ED";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak8";
	rename -uid "7A692095-4AFE-EC20-157D-E49C2F0A5EA7";
createNode objectSet -n "tweakSet8";
	rename -uid "28854FD0-493B-7D58-03B3-659CEA0EB483";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId16";
	rename -uid "A24A493A-4353-6ED6-8421-C293CE9D8301";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "0353145B-4D75-2D0E-B873-D48E843355ED";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster6";
	rename -uid "58477939-41AC-BA43-E844-F79FE9BFF646";
	setAttr -s 116 ".wl";
	setAttr ".wl[0].w[31]"  1;
	setAttr ".wl[1].w[31]"  1;
	setAttr ".wl[2].w[31]"  1;
	setAttr ".wl[3].w[31]"  1;
	setAttr ".wl[4].w[31]"  1;
	setAttr ".wl[5].w[31]"  1;
	setAttr ".wl[6].w[31]"  1;
	setAttr ".wl[7].w[31]"  1;
	setAttr ".wl[8].w[31]"  1;
	setAttr ".wl[9].w[31]"  1;
	setAttr ".wl[10].w[31]"  1;
	setAttr ".wl[11].w[31]"  1;
	setAttr ".wl[12].w[31]"  1;
	setAttr ".wl[13].w[31]"  1;
	setAttr ".wl[14].w[31]"  1;
	setAttr ".wl[15].w[31]"  1;
	setAttr ".wl[16].w[31]"  1;
	setAttr ".wl[17].w[31]"  1;
	setAttr ".wl[18].w[31]"  1;
	setAttr ".wl[19].w[31]"  1;
	setAttr ".wl[20].w[31]"  1;
	setAttr ".wl[21].w[31]"  1;
	setAttr ".wl[22].w[31]"  1;
	setAttr ".wl[23].w[31]"  1;
	setAttr ".wl[24].w[31]"  1;
	setAttr ".wl[25].w[31]"  1;
	setAttr ".wl[26].w[31]"  1;
	setAttr ".wl[27].w[31]"  1;
	setAttr ".wl[28].w[31]"  1;
	setAttr ".wl[29].w[31]"  1;
	setAttr ".wl[30].w[31]"  1;
	setAttr ".wl[31].w[31]"  1;
	setAttr ".wl[32].w[31]"  1;
	setAttr ".wl[33].w[31]"  1;
	setAttr ".wl[34].w[31]"  1;
	setAttr ".wl[35].w[31]"  1;
	setAttr ".wl[36].w[31]"  1;
	setAttr ".wl[37].w[31]"  1;
	setAttr ".wl[38].w[31]"  1;
	setAttr ".wl[39].w[31]"  1;
	setAttr ".wl[40].w[31]"  1;
	setAttr ".wl[41].w[31]"  1;
	setAttr ".wl[42].w[31]"  1;
	setAttr ".wl[43].w[31]"  1;
	setAttr ".wl[44].w[31]"  1;
	setAttr ".wl[45].w[31]"  1;
	setAttr ".wl[46].w[31]"  1;
	setAttr ".wl[47].w[31]"  1;
	setAttr ".wl[48].w[31]"  1;
	setAttr ".wl[49].w[31]"  1;
	setAttr ".wl[50].w[31]"  1;
	setAttr ".wl[51].w[31]"  1;
	setAttr ".wl[52].w[31]"  1;
	setAttr ".wl[53].w[31]"  1;
	setAttr ".wl[54].w[31]"  1;
	setAttr ".wl[55].w[31]"  1;
	setAttr ".wl[56].w[31]"  1;
	setAttr ".wl[57].w[31]"  1;
	setAttr ".wl[58].w[25]"  1;
	setAttr ".wl[59].w[25]"  1;
	setAttr ".wl[60].w[25]"  1;
	setAttr ".wl[61].w[25]"  1;
	setAttr ".wl[62].w[25]"  1;
	setAttr ".wl[63].w[25]"  1;
	setAttr ".wl[64].w[25]"  1;
	setAttr ".wl[65].w[25]"  1;
	setAttr ".wl[66].w[25]"  1;
	setAttr ".wl[67].w[25]"  1;
	setAttr ".wl[68].w[25]"  1;
	setAttr ".wl[69].w[25]"  1;
	setAttr ".wl[70].w[25]"  1;
	setAttr ".wl[71].w[25]"  1;
	setAttr ".wl[72].w[25]"  1;
	setAttr ".wl[73].w[25]"  1;
	setAttr ".wl[74].w[25]"  1;
	setAttr ".wl[75].w[25]"  1;
	setAttr ".wl[76].w[25]"  1;
	setAttr ".wl[77].w[25]"  1;
	setAttr ".wl[78].w[25]"  1;
	setAttr ".wl[79].w[25]"  1;
	setAttr ".wl[80].w[25]"  1;
	setAttr ".wl[81].w[25]"  1;
	setAttr ".wl[82].w[25]"  1;
	setAttr ".wl[83].w[25]"  1;
	setAttr ".wl[84].w[25]"  1;
	setAttr ".wl[85].w[25]"  1;
	setAttr ".wl[86].w[25]"  1;
	setAttr ".wl[87].w[25]"  1;
	setAttr ".wl[88].w[25]"  1;
	setAttr ".wl[89].w[25]"  1;
	setAttr ".wl[90].w[25]"  1;
	setAttr ".wl[91].w[25]"  1;
	setAttr ".wl[92].w[25]"  1;
	setAttr ".wl[93].w[25]"  1;
	setAttr ".wl[94].w[25]"  1;
	setAttr ".wl[95].w[25]"  1;
	setAttr ".wl[96].w[25]"  1;
	setAttr ".wl[97].w[25]"  1;
	setAttr ".wl[98].w[25]"  1;
	setAttr ".wl[99].w[25]"  1;
	setAttr ".wl[100].w[25]"  1;
	setAttr ".wl[101].w[25]"  1;
	setAttr ".wl[102].w[25]"  1;
	setAttr ".wl[103].w[25]"  1;
	setAttr ".wl[104].w[25]"  1;
	setAttr ".wl[105].w[25]"  1;
	setAttr ".wl[106].w[25]"  1;
	setAttr ".wl[107].w[25]"  1;
	setAttr ".wl[108].w[25]"  1;
	setAttr ".wl[109].w[25]"  1;
	setAttr ".wl[110].w[25]"  1;
	setAttr ".wl[111].w[25]"  1;
	setAttr ".wl[112].w[25]"  1;
	setAttr ".wl[113].w[25]"  1;
	setAttr ".wl[114].w[25]"  1;
	setAttr ".wl[115].w[25]"  1;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.3935626233273428 28.545776100389716 1;
	setAttr ".pm[1]" -type "matrix" 2.9171120138216851e-16 -2.0309007691163655e-16 0.99999999999999978 0
		 0.99778515785660882 0.066519010523773486 -2.0309007691163655e-16 0 -0.066519010523773389 0.99778515785660882 2.9171120138216851e-16 0
		 5.141099383762306 27.116763673658916 6.384860464405965e-15 1;
	setAttr ".pm[2]" -type "matrix" 1.9255976590806024e-16 4.2123171441692991e-16 -0.99999999999999978 0
		 0.94811403619211143 0.31793045525004887 2.4202532834897991e-16 0 0.31793045525004893 -0.9481140361921111 -4.0782168334710318e-16 0
		 6.4318083365779852 -26.674993328497067 -1.2761409954053059e-14 1;
	setAttr ".pm[3]" -type "matrix" -2.2254253739202254e-16 4.0618990599018242e-16 -0.99999999999999978 0
		 0.31197044413417085 0.95009180713588304 2.4202532834897991e-16 0 0.95009180713588282 -0.31197044413417063 -4.0782168334710318e-16 0
		 14.327802332964081 -25.407311763254764 -1.7608057817733312e-14 1;
	setAttr ".pm[4]" -type "matrix" -3.9263286525203279e-16 2.4567224874041425e-16 -0.99999999999999978 0
		 -0.19201160638565618 0.98139265486002047 2.4202532834897991e-16 0 0.98139265486002025 0.19201160638565623 -4.0782168334710318e-16 0
		 5.8078039181788474 -25.867465492061847 -1.4912422440350903e-14 1;
	setAttr ".pm[5]" -type "matrix" -4.3236892918211134e-16 -1.660497809547105e-16 -0.99999999999999978 0
		 -0.89966239045464003 0.43658628379902448 2.4202532834897996e-16 0 0.43658628379902437 0.89966239045463992 -4.0782168334710313e-16 0
		 22.143475368043415 -10.745739428369205 17.87721672342547 1;
	setAttr ".pm[6]" -type "matrix" -4.2008944836864555e-16 -1.9503916541689796e-16 -0.99999999999999978 0
		 -0.92724344988449114 0.37445905603457746 2.4202532834897996e-16 0 0.37445905603457735 0.92724344988449092 -4.0782168334710323e-16 0
		 -9.1019999383151546 -11.390398891292108 23.906602239388455 1;
	setAttr ".pm[7]" -type "matrix" -2.3367847652631728e-16 5.2235190187304229e-16 0.99999999999999978 0
		 -0.97513285579145936 0.22162110358896894 -2.6916608586235341e-16 0 -0.22162110358896883 -0.97513285579145892 5.2724101640594595e-16 0
		 -28.663244099008171 33.788348897827923 -23.906602239388477 1;
	setAttr ".pm[8]" -type "matrix" 0.99999999999999978 7.889801871316359e-16 -4.1328562659829196e-16 0
		 -7.1325529571241588e-16 0.99999999999999978 7.4940054162198017e-16 0 5.2724101640594644e-16 -9.1593399531575296e-16 0.99999999999999933 0
		 -23.906602239388498 42.64254250283026 -24.958508396025167 1;
	setAttr ".pm[9]" -type "matrix" 4.3236892918211144e-16 1.6604978095471038e-16 -0.99999999999999978 0
		 0.89966239045464003 -0.43658628379902481 2.4202532834897991e-16 0 -0.43658628379902459 -0.89966239045463992 -4.0782168334710308e-16 0
		 -22.143480382499082 10.745741861773785 -17.877200000000006 1;
	setAttr ".pm[10]" -type "matrix" 4.200894483686456e-16 1.9503916541689791e-16 -1 0
		 0.92724344988449126 -0.37445905603457785 2.4202532834897991e-16 0 -0.37445905603457763 -0.92724344988449103 -4.0782168334710318e-16 0
		 9.1019986116493943 11.390400431698326 -23.906600000000008 1;
	setAttr ".pm[11]" -type "matrix" 2.3367847652631718e-16 1.6666666780649064e-16 0.99999999999999978 0
		 0.97513285579145959 -0.22162110358896908 -1.1646503005668227e-16 0 0.22162110358896914 0.97513285579145936 -1.4464362913900379e-16 0
		 28.663272351815653 -33.788304696531327 23.906600000000012 1;
	setAttr ".pm[12]" -type "matrix" 0.99999999999999978 5.5459731209901231e-16 1.2054718195384451e-17 0
		 6.0517993594966963e-16 -1 -6.3837823915946462e-16 0 7.7400975786026954e-17 7.2164496600635165e-16 -0.99999999999999978 0
		 23.906600000000022 -42.642500000000005 24.958499999999987 1;
	setAttr ".pm[13]" -type "matrix" -4.0112524636791838e-16 2.3154687949413117e-16 -0.99999999999999956 0
		 -0.22680783547492955 0.9739395288041125 2.4202532834897991e-16 0 0.97393952880411228 0.22680783547492961 -4.0782168334710318e-16 0
		 -6.4913822212363153 -29.10557306634928 -1.1647282311652401e-14 1;
	setAttr ".pm[14]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -6.2314369504761027e-15 -24.421950141735536 -23.456290395302126 1;
	setAttr ".pm[15]" -type "matrix" 0.99999999999999978 5.7996289069587238e-16 -1.5307217763218292e-15 0
		 -4.7794772108182622e-16 0.99999999999999978 -5.5511151231257738e-16 0 1.5180447079722593e-15 6.3837823915946521e-16 0.99999999999999978 0
		 -1.3912601358543541e-14 -22.084860947465057 -23.722938791652233 1;
	setAttr ".pm[16]" -type "matrix" 5.0813779435729561e-16 1.296078129378641e-15 0.99999999999999978 0
		 -0.99967143090948096 0.025632600792551915 5.2519338014542517e-16 0 -0.025632600792551998 -0.99967143090948096 1.3771780852467316e-15 0
		 21.390774301895476 22.193863309390341 -11.234015250213901 1;
	setAttr ".pm[17]" -type "matrix" -1.0103368778348008e-15 -4.0484730914130193e-16 -0.99999999999999978 0
		 0.052905933795233763 0.99859950038504119 -5.0817753405774357e-16 0 0.99859950038504119 -0.05290593379523368 -1.0560039903417397e-15 0
		 -23.990342927607369 -9.350442373300794 12.43912287527154 1;
	setAttr ".pm[18]" -type "matrix" 0.99999999999999978 -4.9056641752255911e-16 -1.5416536010143854e-15 0
		 5.3246366272141857e-16 0.99999999999999978 -5.6898930012039322e-16 0 1.611115502654318e-15 6.5919492087118591e-16 0.99999999999999978 0
		 -13.817678419107892 -9.2960938722985986 -43.822894942597408 1;
	setAttr ".pm[19]" -type "matrix" 5.0211778276518463e-16 -8.7774694673919145e-16 0.99999999999999978 0
		 0.99967143090948074 -0.025632600792551578 -2.4317001653927767e-16 0 0.025632600792551766 0.99967143090948074 1.0243000808433853e-15 0
		 -21.390815482996338 -22.193889992347099 11.233999999999996 1;
	setAttr ".pm[20]" -type "matrix" 7.131658175178445e-16 -5.6945907845917879e-16 -0.99999999999999978 0
		 -0.052905933795234728 -0.99859950038504075 2.4964912478710117e-16 0 -0.99859950038504075 0.052905933795234547 -9.0200691266571641e-16 0
		 23.990393415376417 9.3504611514867957 -12.439099999999994 1;
	setAttr ".pm[21]" -type "matrix" 1 -5.6270869122286394e-16 7.6910344414326529e-17 0
		 -2.7393525345077987e-16 -0.99999999999999956 -4.8919202022545929e-15 0 2.3587309789062293e-16 4.7045700668490977e-15 -0.99999999999999978 0
		 13.817700000000032 9.2960899999997739 43.82290000000004 1;
	setAttr ".pm[22]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 10.073167432874989 29.970996150370606 1;
	setAttr ".pm[23]" -type "matrix" 6.693613450145993e-16 1.7889765444095194e-15 -1 0
		 0.55844812393947385 -0.82953944624019038 -1.1015568897272628e-15 0 -0.82953944624019038 -0.55844812393947385 -1.5445874202405203e-15 0
		 -19.355075149528179 -27.942258214505763 -11.21570000000006 1;
	setAttr ".pm[24]" -type "matrix" -3.1806489720151775e-16 7.1110600523609952e-16 1 0
		 0.23651468939617115 -0.97162791319508335 7.5749132939959172e-16 0 0.97162791319508313 0.23651468939617099 1.3112890213765296e-16 0
		 15.753396610245158 -24.192069798095329 14.952100000000017 1;
	setAttr ".pm[25]" -type "matrix" -7.7862017067354629e-16 2.5809568655261894e-08 0.99999999999999978 0
		 0.97741416543986748 -0.21133279252753714 5.4544089702159377e-09 0 0.21133279252753726 0.97741416543986681 -2.5226637852722605e-08 0
		 38.494799132532364 23.920859481432771 12.09489938261296 1;
	setAttr ".pm[26]" -type "matrix" -1.3805402767519449e-08 1.3615198156657945e-08 -0.99999999999999978 0
		 0.93887631588660825 -0.3442546491584228 -1.7648660945676001e-08 0 -0.34425464915842274 -0.93887631588660825 -8.0304129894412106e-09 0
		 24.344687153438446 -43.723300868428026 -12.094900931389603 1;
	setAttr ".pm[27]" -type "matrix" 7.7249776432890225e-09 -1.6343368966662313e-08 -1 0
		 0.017238817250843728 -0.99985140054899735 1.6474109837531978e-08 0 -0.99985140054899724 -0.017238817250844092 -7.442089355248002e-09 0
		 -30.350163356585991 -42.766656220525725 -12.094899535503078 1;
	setAttr ".pm[28]" -type "matrix" 1 -1.6162482267249325e-08 -1.0632309108148316e-08 0
		 -1.6162482276970348e-08 -0.99999999999999956 -1.5307677505295637e-14 0 -1.0632309067137227e-08 1.5240265432259012e-14 -0.99999999999999956 0
		 14.182899160148009 -42.525700229230644 -14.346000150797618 1;
	setAttr ".pm[29]" -type "matrix" 3.6929243270364759e-16 4.7854520619298905e-17 -1 0
		 -0.55844812393947407 0.82953944624019038 -1.3995189992436509e-16 0 0.82953944624019038 0.55844812393947407 3.0729223617801487e-16 0
		 19.355051676791103 27.942211355430459 11.215709518339853 1;
	setAttr ".pm[30]" -type "matrix" 2.8232439365995012e-16 -2.4058376823856014e-16 1 0
		 -0.23651468939617132 0.97162791319508346 2.7395021718827896e-16 0 -0.97162791319508346 -0.23651468939617132 2.4318733744671314e-16 0
		 -15.753393421109266 24.192057826004294 -14.952138770755797 1;
	setAttr ".pm[31]" -type "matrix" 3.3969043598553431e-16 1.4899000132653635e-16 1 0
		 -0.97741416543986748 0.21133279252753767 2.7395021718827891e-16 0 -0.21133279252753767 -0.97741416543986748 2.4318733744671319e-16 0
		 -38.494775099160783 -23.920834424488547 -12.094869342437693 1;
	setAttr ".pm[32]" -type "matrix" 2.0731684078555344e-16 2.5897082728895037e-16 -1 0
		 -0.93887631588660903 0.34425464915842319 -7.8911406637958443e-17 0 0.34425464915842319 0.93887631588660903 2.8873669132688824e-16 0
		 -24.344650981001443 43.723330030705846 12.09486934243772 1;
	setAttr ".pm[33]" -type "matrix" 3.1628320018632648e-16 -1.0005548030928621e-16 -1 0
		 -0.017238817250844533 0.99985140054899768 -7.8911406637958431e-17 0 0.99985140054899768 0.017238817250844533 2.8873669132688819e-16 0
		 30.350183572310435 42.766640982272726 12.094869342437716 1;
	setAttr ".pm[34]" -type "matrix" 1 -8.8267921761093423e-17 -6.84540878947466e-16 0
		 5.982944840221322e-17 1.0000000000000002 -3.4000580129145434e-16 0 7.1046403083575275e-16 3.4347524824340795e-16 1 0
		 -14.182873924670156 42.525651864797076 14.34601935838651 1;
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
createNode objectSet -n "skinCluster6Set";
	rename -uid "84131B98-4D18-B323-92DF-C6AA397D970B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster6GroupId";
	rename -uid "B0FCF18C-4C8E-3B37-1155-C291E4084D7A";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster6GroupParts";
	rename -uid "2124C308-4085-861A-60CC-59AE86D61301";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak6";
	rename -uid "B3DA25F5-4E71-DADD-E3CA-C6A973AF7B51";
createNode objectSet -n "tweakSet6";
	rename -uid "A9D48F26-4DDC-9653-523C-049C78609664";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId12";
	rename -uid "E0571E26-4690-750F-B9B7-B8847C6D5211";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "9A35D6F8-4D3C-0CCC-9B52-E495CDDDC330";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode animCurveTL -n "R_Leg_translateZ";
	rename -uid "EFAC54E5-914B-DDF3-32CF-F6A350EF63D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -1.6891038496293902;
createNode animCurveTL -n "R_Leg_translateY";
	rename -uid "A94D53AB-3A4B-2BA6-ECD7-08BFB55F3EB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -2.2972325671250093;
createNode animCurveTL -n "R_Leg_translateX";
	rename -uid "A2F41B10-1A48-3211-CB93-2FAF1E5EF908";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -11.2157;
createNode animCurveTA -n "R_Leg_rotateZ";
	rename -uid "1B9CEEA6-2C44-A9DC-D0B0-929E6E701AFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "R_Leg_rotateY";
	rename -uid "768A0FB7-6C4E-6FD7-4D0B-B1BFAA34CE5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "R_Leg_rotateX";
	rename -uid "A207430E-FE46-9B9F-2E75-6391A496C0CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "R_Knee_translateZ";
	rename -uid "68B5B1BE-7D45-01D9-E7AE-DCB43F567D1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 3.7363999999999784;
createNode animCurveTL -n "R_Knee_translateY";
	rename -uid "EC79D972-AD4A-706B-8976-219719457EE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -3.6434673699403675e-05;
createNode animCurveTL -n "R_Knee_translateX";
	rename -uid "299ACA44-5247-73A9-F605-FE84A79DC417";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -26.611657532597864;
createNode animCurveTA -n "R_Knee_rotateZ";
	rename -uid "220CCC1F-2244-9713-55FB-F289FD8CF216";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "R_Knee_rotateY";
	rename -uid "3BB5C5A0-5D49-18CF-DD09-78B9362307D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "R_Knee_rotateX";
	rename -uid "A5F6D9E9-AE40-F48C-133A-76BEBB206BC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "R_Ankle1_translateZ";
	rename -uid "5B874BF5-184B-AF69-F740-789DE86F832B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 2.8571999999999989;
createNode animCurveTL -n "R_Ankle1_translateY";
	rename -uid "BAF65153-E34A-EC4E-E952-5B80903FA888";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -1.1506120003446085e-06;
createNode animCurveTL -n "R_Ankle1_translateX";
	rename -uid "287606AF-4344-1964-30A2-E5870E1DC7E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -22.571541461530675;
createNode animCurveTA -n "R_Ankle1_rotateZ";
	rename -uid "75A32DC2-DF47-3F15-92F8-F5B8136F0EF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "R_Ankle1_rotateY";
	rename -uid "CC6AA993-7946-4E14-5F74-D3B663759511";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "R_Ankle1_rotateX";
	rename -uid "8AF54C16-2044-ECC6-66D6-BE88A5BA8B87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "R_Ankle2_translateZ";
	rename -uid "99DB4B1E-4949-40BD-F983-E38A29388C94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -1.7710277688820497e-12;
createNode animCurveTL -n "R_Ankle2_translateY";
	rename -uid "70D032CD-324B-41F1-A9B5-C1BF4A77B509";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 6.8683157564919384e-05;
createNode animCurveTL -n "R_Ankle2_translateX";
	rename -uid "BD7FBF18-A14D-1ACA-D4AD-749EED57A79E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -5.4618458313360279;
createNode animCurveTA -n "R_Ankle2_rotateZ";
	rename -uid "EF3B3C80-AE4C-A3F8-4D00-07B21DE7FDCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "R_Ankle2_rotateY";
	rename -uid "D93A12F0-5B4A-4570-CA66-D791C8083197";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "R_Ankle2_rotateX";
	rename -uid "DD6FFF00-E64A-A7A5-EDD6-78816404E6F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "R_Heel_translateZ";
	rename -uid "2B55D1D7-5648-20CC-376A-B2B537107747";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 6.3647158654589475e-08;
createNode animCurveTL -n "R_Heel_translateY";
	rename -uid "160F8331-484F-7FCE-C0AC-D79EE101B543";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 1.5647938596430322e-05;
createNode animCurveTL -n "R_Heel_translateX";
	rename -uid "376E14DB-B34D-BB57-C62F-14817981A970";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -4.6102926869945087;
createNode animCurveTA -n "R_Heel_rotateZ";
	rename -uid "FDAA3A5E-7944-DB29-E5B2-14B0E963A8E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "R_Heel_rotateY";
	rename -uid "9D7ACEEE-F84B-4A2D-A1B5-CEA60EC8EADC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "R_Heel_rotateX";
	rename -uid "D2E10ED3-1343-7D9B-5C14-59B465022C85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "R_Foot_translateZ";
	rename -uid "038F1110-C942-8CBC-EF6A-C7A45C3CF288";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 2.0879998706880691;
createNode animCurveTL -n "R_Foot_translateY";
	rename -uid "4EFBD2E9-774B-69BB-2198-AE881172C948";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 3.2787877742634919e-05;
createNode animCurveTL -n "R_Foot_translateX";
	rename -uid "EB645EF9-664B-2E2E-34B8-D6A195788DB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -16.739388044636868;
createNode animCurveTA -n "R_Foot_rotateZ";
	rename -uid "7B5B545B-1C4F-999B-4613-DF917AA67A3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "R_Foot_rotateY";
	rename -uid "1F1BE65E-C44B-A060-D93B-29AC8CD0FB8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "R_Foot_rotateX";
	rename -uid "F8DD2F69-9941-DF0D-08E8-E2A2B15B479A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "L_Leg_translateZ";
	rename -uid "939980CE-C34E-D3BA-8AEE-38ABC68B5B73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -1.6890582097053688;
createNode animCurveTL -n "L_Leg_translateY";
	rename -uid "C71EACE6-F14F-A97C-C17E-9C8E19F19408";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -2.2972068039795897;
createNode animCurveTL -n "L_Leg_translateX";
	rename -uid "38A4B067-FC4E-0434-3312-41A6469022C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 11.215709518339846;
createNode animCurveTA -n "L_Leg_rotateZ";
	rename -uid "C041309E-1246-6827-7226-E49BB5B4D729";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  24 0 30 8.0510892411343651 34 38.368334475547037
		 39 48.420763195258807 44 2.4633035540752863 49 -88.903606640565016 51 -75.293471276086152
		 55 13.253765073894868 58 39.76140190171413 63 -5.5035298585023025 68 -83.445771721389946
		 77 18.716126712630171;
createNode animCurveTA -n "L_Leg_rotateY";
	rename -uid "F6685440-9349-1B14-2F4A-5A9C9DBFF33C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  24 0 30 0 34 0 39 0 44 0 49 0 51 0 55 0
		 58 0 63 0 68 0 77 0;
createNode animCurveTA -n "L_Leg_rotateX";
	rename -uid "5F3FD4E7-BA45-CBBA-232C-108352C434B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  24 0 30 0 34 0 39 0 44 0 49 0 51 0 55 0
		 58 0 63 0 68 0 77 0;
createNode animCurveTL -n "L_Knee_translateZ";
	rename -uid "F670847E-BB43-FBDE-91F5-A49367F719C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -3.7364292524159506;
createNode animCurveTL -n "L_Knee_translateY";
	rename -uid "3F2D6402-B249-693A-40D4-26902CDCD0C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -8.3405345847105873e-15;
createNode animCurveTL -n "L_Knee_translateX";
	rename -uid "06069678-2042-D2C6-EB7A-15AEACADF4E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 26.611627364085823;
createNode animCurveTA -n "L_Knee_rotateZ";
	rename -uid "89234DCE-6544-BDD9-9766-B8BCD678AA79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  24 0 30 7.8465070316587058 34 15.345436408231413
		 39 -30.024759348594536 44 4.5545785144368827 49 -23.637972961651514 51 1.1506244043235003
		 58 -2.1077356830504739 63 22.688568635141792 68 -44.15062544267662 71 9.5104578948680221
		 79 7.8469999999999995;
createNode animCurveTA -n "L_Knee_rotateY";
	rename -uid "21B53622-6B4F-5806-1544-69A708D184C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  24 0 30 0 34 -1.8213706620161345 39 0 44 0
		 49 0 51 0 58 0 63 0 68 0 71 0 79 0;
createNode animCurveTA -n "L_Knee_rotateX";
	rename -uid "D06C64B6-FD47-96BA-73AA-8E89E18A4372";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  24 0 30 0 34 0.51297299447265698 39 0 44 0
		 49 0 51 0 58 0 63 0 68 0 71 0 79 0;
createNode animCurveTL -n "L_Ankle1_translateZ";
	rename -uid "2FA4DFA7-F44C-EA98-BA74-84A5E8EC55EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -2.857269428318101;
createNode animCurveTL -n "L_Ankle1_translateY";
	rename -uid "3A847427-8F46-8246-E2CC-9EA5A54B6999";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -1.3597639380188169e-14;
createNode animCurveTL -n "L_Ankle1_translateX";
	rename -uid "58F4C0B1-F341-A0AC-F259-3A8F29A4D7F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 22.571511896999858;
createNode animCurveTA -n "L_Ankle1_rotateZ";
	rename -uid "598C3239-3E42-7868-5B39-8B8108503369";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  24 0 30 0 34 7.8796131344362177 39 82.169042237878543
		 44 1.0162057541794445 49 -0.82896607902537478 55 10.668863089191142 58 43.237517803272965
		 63 5.2591350283888669 68 -4.6103586704711672 79 10.382976488266177;
createNode animCurveTA -n "L_Ankle1_rotateY";
	rename -uid "B06F49BB-D448-7E2B-EB60-88A3EECE5C44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  24 0 30 0 34 0 39 0 44 0 49 0 55 0 58 0
		 63 0 68 0 79 0;
createNode animCurveTA -n "L_Ankle1_rotateX";
	rename -uid "60E1AA81-EE41-C93E-3C0B-F5BAC8D844BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  24 0 30 0 34 0 39 0 44 0 49 0 55 0 58 0
		 63 0 68 0 79 0;
createNode animCurveTL -n "L_Ankle2_translateZ";
	rename -uid "4DFE3AA6-9341-67CE-6F25-AAA610708AB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -2.1925502999990325e-15;
createNode animCurveTL -n "L_Ankle2_translateY";
	rename -uid "ADA50711-574C-FE36-6728-21BB6F7299C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -6.4392935428259079e-15;
createNode animCurveTL -n "L_Ankle2_translateX";
	rename -uid "05B9E585-7043-5A82-05EA-F888EC81D6AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 5.4618546715234304;
createNode animCurveTA -n "L_Ankle2_rotateZ";
	rename -uid "7F38594A-BD48-54A6-05A9-FD85604E5602";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "L_Ankle2_rotateY";
	rename -uid "4C781FAA-0443-E0F0-9C66-1E9F9339759D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "L_Ankle2_rotateX";
	rename -uid "91118EEA-DF49-6DC9-E2D3-92BFCF07C6F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "L_Heel_translateZ";
	rename -uid "F2D36992-B147-3A63-1557-0C81DD6B187A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 1.6289044042996127e-15;
createNode animCurveTL -n "L_Heel_translateY";
	rename -uid "40DC77B6-A643-E284-5219-99A0B3D0E74D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -5.1070259132757201e-15;
createNode animCurveTL -n "L_Heel_translateX";
	rename -uid "608E705C-3042-E55F-A310-B9AD6130E9D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 4.6103077446733041;
createNode animCurveTA -n "L_Heel_rotateZ";
	rename -uid "B8B7D6FB-0C4E-DF66-60D5-6FB0E12DA250";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "L_Heel_rotateY";
	rename -uid "D9B92F5E-FB43-357B-FC81-E6B58BACFA7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "L_Heel_rotateX";
	rename -uid "76E36565-3041-4E44-2C86-768A9D961D8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "L_Foot_rotateX";
	rename -uid "7F684BA3-C740-4593-1AA6-E0A6F179A2EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "L_Foot_translateZ";
	rename -uid "DF76520A-A04E-D039-F47E-C79D9A8D3DBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -2.0880045822324509;
createNode animCurveTL -n "L_Foot_translateY";
	rename -uid "93A2F22C-554C-5D0C-5455-7B9885FEFA8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -1.1549157888733989e-14;
createNode animCurveTL -n "L_Foot_translateX";
	rename -uid "F1E1CF47-2447-CC3B-C6D9-6C8705229E2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 16.739387965494924;
createNode animCurveTA -n "L_Foot_rotateZ";
	rename -uid "50D3DD36-984A-6447-7F87-BAB0F2AB3164";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "L_Foot_rotateY";
	rename -uid "3D8FFBD6-7A47-5895-71F0-7FB38CB429FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "Neck_translateZ";
	rename -uid "CEBC202F-694F-1BA8-47D9-979384816140";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -3.2651401286985034e-15;
createNode animCurveTL -n "Neck_translateY";
	rename -uid "5A16900B-D541-AAB8-B9B3-50823797D22A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 2.9887165849079089;
createNode animCurveTL -n "Neck_translateX";
	rename -uid "3CE64307-5540-731C-0E19-468FE15ABE01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 13.330647968373498;
createNode animCurveTA -n "Neck_rotateZ";
	rename -uid "9A9D9EF8-344C-DCC8-3DE2-BB9C142E0168";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 1.590277340731758e-15;
createNode animCurveTA -n "Neck_rotateY";
	rename -uid "0136A44B-744E-33AD-0A07-DB92FE310CBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -5.7500378030343837e-15;
createNode animCurveTA -n "Neck_rotateX";
	rename -uid "D4F3B577-1247-90BD-3A0D-A08279B3B712";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 6.4644416438879975e-15;
createNode animCurveTL -n "Head_translateZ";
	rename -uid "4195FEB9-104F-7215-5950-1AA1EB7AB6B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 2.4013094943893267e-15;
createNode animCurveTL -n "Head_translateY";
	rename -uid "579F0A08-C54D-73DF-490C-3DBA8EC3F917";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 1.0658141036401503e-14;
createNode animCurveTL -n "Head_translateX";
	rename -uid "24267ED5-6A44-08C4-7716-D7AD5E02FD30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 10.814536544133002;
createNode animCurveTA -n "Head_rotateZ";
	rename -uid "10B0C346-BD4D-7546-1C27-1C845AC337FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  24 7.9513867036587856e-15 39 0 43 0 46 0
		 51 0 55 0 61 0 65 0 75 0;
createNode animCurveTA -n "Head_rotateY";
	rename -uid "FE43CA5E-3645-6448-FE7E-FB9004398EEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  24 3.7769086842379274e-14 39 0 43 0 46 0
		 51 0 55 0 61 0 65 0 75 0;
createNode animCurveTA -n "Head_rotateX";
	rename -uid "90173CE2-F84E-D07A-7102-6EB536985A0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  24 -2.3854160110976377e-14 39 -6.4060062981934491
		 43 0 46 9.1445876003365676 51 0.95659282991543104 55 -5.6161729733491601 61 -2.8345273567353182
		 65 4.6311607598348559 75 -3.4877279177173452;
createNode animCurveTL -n "Jaw_Control_translateZ";
	rename -uid "73FC715D-9D44-3069-E606-28AAC8CC3CCC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0.26664839635010296;
createNode animCurveTL -n "Jaw_Control_translateY";
	rename -uid "98E4CEF9-5540-10E7-9F25-259A4966D2B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -2.3370891942704759;
createNode animCurveTL -n "Jaw_Control_translateX";
	rename -uid "18AF1CED-A948-5FAE-00DB-D4A0BBDF4495";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 7.6811644080674363e-15;
createNode animCurveTA -n "Jaw_Control_rotateZ";
	rename -uid "791C530B-504E-CFB5-A192-68924428FA20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  24 0 30 0 35 0 38 0 43 0 48 0 54 0 59 0
		 67 0 76 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  1;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[9]"  1;
	setAttr -s 10 ".koy[9]"  0;
createNode animCurveTA -n "Jaw_Control_rotateY";
	rename -uid "9014F956-E841-3937-1654-36BD31321EB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  24 0 30 0 35 0 38 0 43 0 48 0 54 0 59 0
		 67 0 76 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  1;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[9]"  1;
	setAttr -s 10 ".koy[9]"  0;
createNode animCurveTA -n "Jaw_Control_rotateX";
	rename -uid "B606656B-4B4D-6993-2CF7-E2B27B3ED993";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  24 0 30 0 35 0 38 3.0000000000000004 43 0
		 48 16.974123306057127 54 7.7738685557989387 59 0 67 13.233187806310402 76 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[9]"  1;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[9]"  1;
	setAttr -s 10 ".koy[9]"  0;
createNode animCurveTL -n "L_Jaw_translateZ";
	rename -uid "C788271E-2347-D0C2-5B95-DD9FB4BD5E8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -0.98806652142050666;
createNode animCurveTL -n "L_Jaw_translateY";
	rename -uid "5611E9B7-5043-D54C-5D20-A59084C46295";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -1.2700014310814893;
createNode animCurveTL -n "L_Jaw_translateX";
	rename -uid "D75784A6-0B4A-DE1C-2906-E395905EC614";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 11.234015250213869;
createNode animCurveTA -n "L_Jaw_rotateZ";
	rename -uid "F1053B16-424D-7CF3-1DAA-008323CE664F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "L_Jaw_rotateY";
	rename -uid "4C2CDA4C-F84A-96D6-11CD-DABD53FDF5CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "L_Jaw_rotateX";
	rename -uid "E1164516-1B4D-1936-381C-9EA4AD5D1BE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "joint2_translateZ";
	rename -uid "693B60AF-C245-1924-5D29-20B87DFE2979";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 1.2051076250576465;
createNode animCurveTL -n "joint2_translateY";
	rename -uid "0E9DCC77-8348-859E-7E51-DFA0DD2AAC73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -0.98860416796724704;
createNode animCurveTL -n "joint2_translateX";
	rename -uid "57ED4365-6049-D090-5F75-19BD3ECBB2E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 10.186287342561851;
createNode animCurveTA -n "joint2_rotateZ";
	rename -uid "F6AEEA58-244E-6624-AF31-8D950237B5DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "joint2_rotateY";
	rename -uid "C00FDD70-0E4F-F763-55C6-65AC4242A2C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "joint2_rotateX";
	rename -uid "E42FEB5A-8E4A-DC15-15E0-709C3589C6D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "joint3_translateZ";
	rename -uid "17F0BE0F-984F-B247-82D9-0687A9CD8E74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -1.3785555438363257;
createNode animCurveTL -n "joint3_translateY";
	rename -uid "24D20E82-7D40-50B1-E66D-0AB92B0D087C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -2.385858855439539;
createNode animCurveTL -n "joint3_translateX";
	rename -uid "6131F591-CF45-C768-3971-BA9004C80540";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 20.262996594458691;
createNode animCurveTA -n "joint3_rotateZ";
	rename -uid "B850CA12-DC46-3D08-BCAB-7780729875FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  24 0 76 5.8801220571625175;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "joint3_rotateY";
	rename -uid "ADE35F6E-3246-4386-5A25-C8806471C583";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  24 0 76 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "joint3_rotateX";
	rename -uid "64A0BA07-F543-7DED-4EEC-7C9BC7B09C0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  24 0 76 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "R_Jaw_translateZ";
	rename -uid "E9EA4DD1-D64E-9B9F-0996-0FA30FC35E18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -0.98803879165221531;
createNode animCurveTL -n "R_Jaw_translateY";
	rename -uid "BD25D5C9-3442-C73C-1714-3BA0F0E61192";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -1.2699609474650444;
createNode animCurveTL -n "R_Jaw_translateX";
	rename -uid "EAEA60B2-BC48-DBBF-78CD-21860019557F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -11.234000000000007;
createNode animCurveTA -n "R_Jaw_rotateZ";
	rename -uid "F7A507B1-1E4D-6A40-F3EB-7C878E809C1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "R_Jaw_rotateY";
	rename -uid "0502121D-2D47-F03C-4741-78A20D6A763F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "R_Jaw_rotateX";
	rename -uid "E6B5DCFA-EC46-B694-0C96-7D81CEC8D9C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "joint2_translateZ1";
	rename -uid "60AD635A-1E44-6178-238E-3986A1221B01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -1.2050999999999945;
createNode animCurveTL -n "joint2_translateY1";
	rename -uid "19C0FC56-374F-1772-31E2-22A888119941";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0.98862634322797049;
createNode animCurveTL -n "joint2_translateX1";
	rename -uid "74275565-6540-E9A6-31E6-FB97C9DC8C19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -10.186305840856917;
createNode animCurveTA -n "joint2_rotateZ1";
	rename -uid "27DE01ED-7146-CA48-B063-F297C1AF8617";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "joint2_rotateY1";
	rename -uid "B1335CC9-A446-99EE-9DCD-8A893C6513A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "joint2_rotateX1";
	rename -uid "53B770B5-0146-7572-599F-969201E59F44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "joint3_translateZ1";
	rename -uid "3EAA5416-6245-9814-DB97-2FB8446B4CD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 1.3786000000000058;
createNode animCurveTL -n "joint3_translateY1";
	rename -uid "673CF209-4F43-A29A-89C9-1E9F825F2D35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 2.3858817680676259;
createNode animCurveTL -n "joint3_translateX1";
	rename -uid "950B5BF0-9A4B-CF3B-7E92-458F4D22F28E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -20.26295095214175;
createNode animCurveTA -n "joint3_rotateZ1";
	rename -uid "FA84A058-564A-4136-706E-4CAD9F40CDAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "joint3_rotateY1";
	rename -uid "DE882EEE-C34D-0B60-AF5F-4AAFA8802BC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "joint3_rotateX1";
	rename -uid "929050D5-B24D-ED74-A9F5-8684FD8BDA69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "R_Arm_translateZ";
	rename -uid "80FDB832-8044-4FEB-0517-F58213DB1DD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 17.877199999999995;
createNode animCurveTL -n "R_Arm_translateY";
	rename -uid "AF742CD5-5443-14DF-5241-DDB0372DB71A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -1.7123499387266818;
createNode animCurveTL -n "R_Arm_translateX";
	rename -uid "2EE32576-E949-F081-EB85-A2A8A1346B1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 1.0818030490480721;
createNode animCurveTA -n "R_Arm_rotateZ";
	rename -uid "77BE5492-D545-CA08-1741-4082727081EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  24 -1.6788481393857797e-31 38 0.895 43 -39.87
		 49 -72.086 53 -20.292 57 0.895;
createNode animCurveTA -n "R_Arm_rotateY";
	rename -uid "D973F647-5343-85A6-F286-2E8FF29DF1A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  24 1.2091497573354971e-14 38 1.2091497573354971e-14
		 43 1.2091497573354971e-14 49 1.2091497573354971e-14 53 1.2091497573354971e-14 57 1.2091497573354971e-14;
createNode animCurveTA -n "R_Arm_rotateX";
	rename -uid "A8574361-1046-F33B-B0DB-52BD392D7570";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  24 -1.5910504426211696e-15 38 -1.5910504426211696e-15
		 43 -1.5910504426211696e-15 49 -1.5910504426211696e-15 53 -1.5910504426211696e-15
		 57 -1.5910504426211696e-15;
createNode animCurveTL -n "R_Elbow_translateZ";
	rename -uid "B8B69D26-954A-2DB2-01CC-7E8D1E305B62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 6.0293999999999954;
createNode animCurveTL -n "R_Elbow_translateY";
	rename -uid "86B2DCA1-8D42-F1F9-BF72-3FBA5A09AD9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 8.0643000011093591e-07;
createNode animCurveTL -n "R_Elbow_translateX";
	rename -uid "733FFAD7-AA48-80BF-E66F-7E80562AFA6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -31.998258405996104;
createNode animCurveTA -n "R_Elbow_rotateY";
	rename -uid "794DA353-C149-4138-31B9-9A9271452906";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  24 -5.9250423165516422e-15 38 -5.9250423165516422e-15
		 41 -5.9250423165516422e-15 43 -5.9250423165516422e-15 51 -5.9250423165516422e-15
		 55 -5.9250423165516422e-15 57 -5.9250423165516422e-15;
createNode animCurveTA -n "R_Elbow_rotateX";
	rename -uid "9AE60EC0-BB41-A59E-F82A-2B966F4D6325";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  24 1.293106473507353e-14 38 1.293106473507353e-14
		 41 1.293106473507353e-14 43 1.293106473507353e-14 51 1.293106473507353e-14 55 1.293106473507353e-14
		 57 1.293106473507353e-14;
createNode animCurveTL -n "R_Wrist_translateZ";
	rename -uid "D14DACE2-DE49-B127-4AFA-4BA696C04BFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -1.7763568394002505e-14;
createNode animCurveTL -n "R_Wrist_translateY";
	rename -uid "7A556C89-3B48-5C6E-C0D4-7C88911E1B18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 5.3960697945498737e-05;
createNode animCurveTL -n "R_Wrist_translateX";
	rename -uid "448DE6D1-724A-E3B5-9653-DD81647D2EB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -33.717304552350953;
createNode animCurveTA -n "R_Wrist_rotateZ";
	rename -uid "CA22F0D5-8846-1CDC-4EB3-36AF63F68831";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 1.2722218725854067e-14;
createNode animCurveTA -n "R_Wrist_rotateY";
	rename -uid "C30A9633-C14E-C5D0-B149-6EB5E1AB5680";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -4.0470974511572586e-16;
createNode animCurveTA -n "R_Wrist_rotateX";
	rename -uid "8BB6AB19-B347-CC6A-3162-02B26A390978";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 7.4235262762638108e-16;
createNode animCurveTL -n "R_Hand_translateZ";
	rename -uid "5431E62F-A748-DB44-7437-3999015D01C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 3.5527136788005009e-15;
createNode animCurveTL -n "R_Hand_translateY";
	rename -uid "8689F7CC-8944-24FF-DB86-E08D3EB3AF3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 2.6594532442913987e-05;
createNode animCurveTL -n "R_Hand_translateX";
	rename -uid "BDF3DF3F-DD43-DDE6-3E95-96A4E2530CE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -7.387500137346386;
createNode animCurveTA -n "R_Hand_rotateZ";
	rename -uid "C937710E-FB4D-660B-85C7-3D9C951F3804";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "R_Hand_rotateY";
	rename -uid "B6E21765-2544-0AC5-73DF-D0833B74CBF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "R_Hand_rotateX";
	rename -uid "01FB1CA7-A04C-956B-2F15-0DB8962C7871";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "L_Arm_translateZ";
	rename -uid "3EC1539B-A74A-48BC-18EF-1F843BC26E96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -17.877216723425484;
createNode animCurveTL -n "L_Arm_translateY";
	rename -uid "46B4583D-6249-1EDE-4297-08854E4A2C71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -1.7123554087230026;
createNode animCurveTL -n "L_Arm_translateX";
	rename -uid "F3D10A3E-7940-D801-02F2-2199A5F6CE04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 1.0818041192647314;
createNode animCurveTA -n "L_Arm_rotateZ";
	rename -uid "96F095A8-4D40-A1CA-FA5A-DA997930DD81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  24 6.3611093629270335e-15 30 -7.9234859087063123
		 38 -56.130108916564225 42 -20.292081224639361 46 0.89453584078746551 51 -39.870419471101798
		 57 -72.086272776064206 61 -20.292081224639361 65 0.89453584078746551 70 -39.87 76 -58.009236346385812;
	setAttr -s 11 ".kit[6:10]"  1 1 1 18 18;
	setAttr -s 11 ".kot[6:10]"  1 1 1 18 18;
	setAttr -s 11 ".kix[6:10]"  1 0.31757992506027222 1 0.4071885347366333 
		1;
	setAttr -s 11 ".kiy[6:10]"  0 0.94823145866394043 0 -0.91334408521652222 
		0;
	setAttr -s 11 ".kox[6:10]"  1 0.31757992506027222 1 0.40718856453895569 
		1;
	setAttr -s 11 ".koy[6:10]"  0 0.94823145866394043 0 -0.91334414482116699 
		0;
createNode animCurveTA -n "L_Arm_rotateY";
	rename -uid "7FCB80D3-B746-C717-2EA5-DF8E53B49BF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  24 -7.8267549441931636e-15 30 0 38 0 42 0
		 46 0 51 0 57 0 61 0 65 0 70 0 76 0;
	setAttr -s 11 ".kit[6:10]"  1 1 1 18 18;
	setAttr -s 11 ".kot[6:10]"  1 1 1 18 18;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
	setAttr -s 11 ".kox[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".koy[6:10]"  0 0 0 0 0;
createNode animCurveTA -n "L_Arm_rotateX";
	rename -uid "6F9EDE71-B149-052C-C963-25BF58B2C078";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  24 4.7946449920320174e-15 30 0 38 0 42 0
		 46 0 51 0 57 0 61 0 65 0 70 0 76 0;
	setAttr -s 11 ".kit[6:10]"  1 1 1 18 18;
	setAttr -s 11 ".kot[6:10]"  1 1 1 18 18;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
	setAttr -s 11 ".kox[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".koy[6:10]"  0 0 0 0 0;
createNode animCurveTL -n "L_Elbow_translateZ";
	rename -uid "69D19D8D-8D4B-A197-6782-3FAB41D9C634";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -6.0293855159629857;
createNode animCurveTL -n "L_Elbow_translateY";
	rename -uid "8C51EA05-7B41-F2E4-631F-BA9CADAD233F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 3.5527136788005009e-15;
createNode animCurveTL -n "L_Elbow_translateX";
	rename -uid "C21E9EE9-5749-0771-F002-8D9CE48AAEA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 31.998254610493703;
createNode animCurveTA -n "L_Elbow_rotateZ";
	rename -uid "65FDB0A6-4943-722E-721C-5DA46B748327";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  24 -1.9083328088781101e-14 30 19.005775767152329
		 40 57.304391162903855 44 20.845500752144627 46 17.329323057486061 49 31.100155129090606
		 51 4.4582192214093235 59 57.304 63 20.846 65 17.32 68 31.099999999999998 70 4.3110671880901856
		 76 -2.697;
createNode animCurveTA -n "L_Elbow_rotateY";
	rename -uid "4DF779C4-344E-48CC-59EA-3BA96EB6FBF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  24 -6.1412383369456882e-15 30 0 40 0 44 0
		 46 0 49 0 51 0 59 0 63 0 65 0 68 0 70 0 76 0;
createNode animCurveTA -n "L_Elbow_rotateX";
	rename -uid "02381B4A-ED49-7498-4222-7F91F0365199";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  24 6.5736303777337906e-15 30 0 40 0 44 0
		 46 0 49 0 51 0 59 0 63 0 65 0 68 0 70 0 76 0;
createNode animCurveTL -n "L_Wrist_translateZ";
	rename -uid "DBF10774-894C-9DAA-32CD-B8AD5F913A6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -1.7763568394002505e-14;
createNode animCurveTL -n "L_Wrist_translateY";
	rename -uid "1DF4D915-6743-6F11-3134-178EFED79D77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -3.730349362740526e-14;
createNode animCurveTL -n "L_Wrist_translateX";
	rename -uid "6B37D4E3-E147-72C5-D98D-4BA0C17A3088";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 33.717305247756336;
createNode animCurveTA -n "L_Wrist_rotateZ";
	rename -uid "261949BC-C042-E444-F609-D08D27F0EA5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  24 -1.7007842991747102e-31 30 13.500650395897839
		 35 1.0917286838567239 41 -10.095752405953435 46 12.796917469772961 51 12.952062362701138
		 62 9.8335598757646938;
createNode animCurveTA -n "L_Wrist_rotateY";
	rename -uid "C4C4BDF3-4944-A072-EB14-9DB725600020";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  24 -3.8039484618262541e-15 30 0 35 0 41 0
		 46 0 51 0 62 0;
createNode animCurveTA -n "L_Wrist_rotateX";
	rename -uid "ED538FD5-9041-7B37-A2DA-D687A647CA61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  24 5.1235059140650036e-15 30 0 35 0 41 0
		 46 0 51 0 62 0;
createNode animCurveTL -n "L_Hand_translateZ";
	rename -uid "4834013A-FE4B-5A66-13B2-9C9FD198D761";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "L_Hand_translateY";
	rename -uid "B4709DB3-C74E-244A-0ED8-83A2F5075FD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -7.1054273576010019e-15;
createNode animCurveTL -n "L_Hand_translateX";
	rename -uid "1FCBB62E-014C-3B86-14C7-868895279266";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 7.3875679753237371;
createNode animCurveTA -n "L_Hand_rotateZ";
	rename -uid "83C6148B-8943-A9BF-F37C-A29F9EE37A0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "L_Hand_rotateY";
	rename -uid "0F74AF46-6541-EDEE-CBC7-09ACA414DBC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "L_Hand_rotateX";
	rename -uid "91B6C09F-1C48-85B5-B0BC-A68ACAB6C453";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "R_Elbow_rotateZ";
	rename -uid "138F6D99-F94B-0554-6EAF-F9BF87C3A2BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  24 3.1805546814635164e-15 38 17.329 41 31.099999999999998
		 43 4.458 51 41.712 55 20.846 57 17.329;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 44;
	setAttr -av ".unw" 44;
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
connectAttr "skinCluster6GroupId.id" "FootShape.iog.og[0].gid";
connectAttr "skinCluster6Set.mwc" "FootShape.iog.og[0].gco";
connectAttr "groupId12.id" "FootShape.iog.og[1].gid";
connectAttr "tweakSet6.mwc" "FootShape.iog.og[1].gco";
connectAttr "skinCluster6.og[0]" "FootShape.i";
connectAttr "tweak6.vl[0].vt[0]" "FootShape.twl";
connectAttr "polyTriangulate6.out" "FootShapeOrig.i";
connectAttr "skinCluster12GroupId.id" "HandShape.iog.og[2].gid";
connectAttr "skinCluster12Set.mwc" "HandShape.iog.og[2].gco";
connectAttr "groupId24.id" "HandShape.iog.og[3].gid";
connectAttr "tweakSet12.mwc" "HandShape.iog.og[3].gco";
connectAttr "skinCluster12.og[0]" "HandShape.i";
connectAttr "tweak12.vl[0].vt[0]" "HandShape.twl";
connectAttr "polyTriangulate7.out" "HandShapeOrig.i";
connectAttr "skinCluster8GroupId.id" "ForeArmShape.iog.og[0].gid";
connectAttr "skinCluster8Set.mwc" "ForeArmShape.iog.og[0].gco";
connectAttr "groupId16.id" "ForeArmShape.iog.og[1].gid";
connectAttr "tweakSet8.mwc" "ForeArmShape.iog.og[1].gco";
connectAttr "skinCluster8.og[0]" "ForeArmShape.i";
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
connectAttr "Joint_Base_translateX.o" "Joint_Base.tx";
connectAttr "Joint_Base_translateY.o" "Joint_Base.ty";
connectAttr "Joint_Base_translateZ.o" "Joint_Base.tz";
connectAttr "Joint_Base_rotateX.o" "Joint_Base.rx";
connectAttr "Joint_Base_rotateY.o" "Joint_Base.ry";
connectAttr "Joint_Base_rotateZ.o" "Joint_Base.rz";
connectAttr "Spine_Base_rotateZ.o" "Spine_Base.rz";
connectAttr "Spine_Base_rotateX.o" "Spine_Base.rx";
connectAttr "Spine_Base_rotateY.o" "Spine_Base.ry";
connectAttr "Joint_Base.s" "Spine_Base.is";
connectAttr "Spine_Base_translateX.o" "Spine_Base.tx";
connectAttr "Spine_Base_translateY.o" "Spine_Base.ty";
connectAttr "Spine_Base_translateZ.o" "Spine_Base.tz";
connectAttr "Spine_Base.s" "Spine_1.is";
connectAttr "Spine_1_translateX.o" "Spine_1.tx";
connectAttr "Spine_1_translateY.o" "Spine_1.ty";
connectAttr "Spine_1_translateZ.o" "Spine_1.tz";
connectAttr "Spine_1_rotateX.o" "Spine_1.rx";
connectAttr "Spine_1_rotateY.o" "Spine_1.ry";
connectAttr "Spine_1_rotateZ.o" "Spine_1.rz";
connectAttr "Spine_1.s" "Spine_2.is";
connectAttr "Spine_2_translateX.o" "Spine_2.tx";
connectAttr "Spine_2_translateY.o" "Spine_2.ty";
connectAttr "Spine_2_translateZ.o" "Spine_2.tz";
connectAttr "Spine_2_rotateX.o" "Spine_2.rx";
connectAttr "Spine_2_rotateY.o" "Spine_2.ry";
connectAttr "Spine_2_rotateZ.o" "Spine_2.rz";
connectAttr "Spine_2.s" "Chest.is";
connectAttr "Chest_translateX.o" "Chest.tx";
connectAttr "Chest_translateY.o" "Chest.ty";
connectAttr "Chest_translateZ.o" "Chest.tz";
connectAttr "Chest_rotateX.o" "Chest.rx";
connectAttr "Chest_rotateY.o" "Chest.ry";
connectAttr "Chest_rotateZ.o" "Chest.rz";
connectAttr "Chest.s" "L_Arm.is";
connectAttr "L_Arm_translateX.o" "L_Arm.tx";
connectAttr "L_Arm_translateY.o" "L_Arm.ty";
connectAttr "L_Arm_translateZ.o" "L_Arm.tz";
connectAttr "L_Arm_rotateX.o" "L_Arm.rx";
connectAttr "L_Arm_rotateY.o" "L_Arm.ry";
connectAttr "L_Arm_rotateZ.o" "L_Arm.rz";
connectAttr "L_Arm.s" "L_Elbow.is";
connectAttr "L_Elbow_translateX.o" "L_Elbow.tx";
connectAttr "L_Elbow_translateY.o" "L_Elbow.ty";
connectAttr "L_Elbow_translateZ.o" "L_Elbow.tz";
connectAttr "L_Elbow_rotateX.o" "L_Elbow.rx";
connectAttr "L_Elbow_rotateY.o" "L_Elbow.ry";
connectAttr "L_Elbow_rotateZ.o" "L_Elbow.rz";
connectAttr "L_Elbow.s" "L_Wrist.is";
connectAttr "L_Wrist_translateX.o" "L_Wrist.tx";
connectAttr "L_Wrist_translateY.o" "L_Wrist.ty";
connectAttr "L_Wrist_translateZ.o" "L_Wrist.tz";
connectAttr "L_Wrist_rotateX.o" "L_Wrist.rx";
connectAttr "L_Wrist_rotateY.o" "L_Wrist.ry";
connectAttr "L_Wrist_rotateZ.o" "L_Wrist.rz";
connectAttr "L_Wrist.s" "L_Hand.is";
connectAttr "L_Hand_translateX.o" "L_Hand.tx";
connectAttr "L_Hand_translateY.o" "L_Hand.ty";
connectAttr "L_Hand_translateZ.o" "L_Hand.tz";
connectAttr "L_Hand_rotateX.o" "L_Hand.rx";
connectAttr "L_Hand_rotateY.o" "L_Hand.ry";
connectAttr "L_Hand_rotateZ.o" "L_Hand.rz";
connectAttr "Chest.s" "R_Arm.is";
connectAttr "R_Arm_translateX.o" "R_Arm.tx";
connectAttr "R_Arm_translateY.o" "R_Arm.ty";
connectAttr "R_Arm_translateZ.o" "R_Arm.tz";
connectAttr "R_Arm_rotateX.o" "R_Arm.rx";
connectAttr "R_Arm_rotateY.o" "R_Arm.ry";
connectAttr "R_Arm_rotateZ.o" "R_Arm.rz";
connectAttr "R_Arm.s" "R_Elbow.is";
connectAttr "R_Elbow_translateX.o" "R_Elbow.tx";
connectAttr "R_Elbow_translateY.o" "R_Elbow.ty";
connectAttr "R_Elbow_translateZ.o" "R_Elbow.tz";
connectAttr "R_Elbow_rotateX.o" "R_Elbow.rx";
connectAttr "R_Elbow_rotateY.o" "R_Elbow.ry";
connectAttr "R_Elbow_rotateZ.o" "R_Elbow.rz";
connectAttr "R_Elbow.s" "R_Wrist.is";
connectAttr "R_Wrist_translateX.o" "R_Wrist.tx";
connectAttr "R_Wrist_translateY.o" "R_Wrist.ty";
connectAttr "R_Wrist_translateZ.o" "R_Wrist.tz";
connectAttr "R_Wrist_rotateX.o" "R_Wrist.rx";
connectAttr "R_Wrist_rotateY.o" "R_Wrist.ry";
connectAttr "R_Wrist_rotateZ.o" "R_Wrist.rz";
connectAttr "R_Wrist.s" "R_Hand.is";
connectAttr "R_Hand_translateX.o" "R_Hand.tx";
connectAttr "R_Hand_translateY.o" "R_Hand.ty";
connectAttr "R_Hand_translateZ.o" "R_Hand.tz";
connectAttr "R_Hand_rotateX.o" "R_Hand.rx";
connectAttr "R_Hand_rotateY.o" "R_Hand.ry";
connectAttr "R_Hand_rotateZ.o" "R_Hand.rz";
connectAttr "Chest.s" "Neck.is";
connectAttr "Neck_translateX.o" "Neck.tx";
connectAttr "Neck_translateY.o" "Neck.ty";
connectAttr "Neck_translateZ.o" "Neck.tz";
connectAttr "Neck_rotateX.o" "Neck.rx";
connectAttr "Neck_rotateY.o" "Neck.ry";
connectAttr "Neck_rotateZ.o" "Neck.rz";
connectAttr "Neck.s" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.is"
		;
connectAttr "Head_translateX.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.tx"
		;
connectAttr "Head_translateY.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.ty"
		;
connectAttr "Head_translateZ.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.tz"
		;
connectAttr "Head_rotateX.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.rx"
		;
connectAttr "Head_rotateY.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.ry"
		;
connectAttr "Head_rotateZ.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.rz"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.s" "Jaw_Control.is"
		;
connectAttr "Jaw_Control_translateX.o" "Jaw_Control.tx";
connectAttr "Jaw_Control_translateY.o" "Jaw_Control.ty";
connectAttr "Jaw_Control_translateZ.o" "Jaw_Control.tz";
connectAttr "Jaw_Control_rotateX.o" "Jaw_Control.rx";
connectAttr "Jaw_Control_rotateY.o" "Jaw_Control.ry";
connectAttr "Jaw_Control_rotateZ.o" "Jaw_Control.rz";
connectAttr "Jaw_Control.s" "L_Jaw.is";
connectAttr "L_Jaw_translateX.o" "L_Jaw.tx";
connectAttr "L_Jaw_translateY.o" "L_Jaw.ty";
connectAttr "L_Jaw_translateZ.o" "L_Jaw.tz";
connectAttr "L_Jaw_rotateX.o" "L_Jaw.rx";
connectAttr "L_Jaw_rotateY.o" "L_Jaw.ry";
connectAttr "L_Jaw_rotateZ.o" "L_Jaw.rz";
connectAttr "L_Jaw.s" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.is"
		;
connectAttr "joint2_translateX.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.tx"
		;
connectAttr "joint2_translateY.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.ty"
		;
connectAttr "joint2_translateZ.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.tz"
		;
connectAttr "joint2_rotateX.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.rx"
		;
connectAttr "joint2_rotateY.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.ry"
		;
connectAttr "joint2_rotateZ.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.rz"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.s" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.is"
		;
connectAttr "joint3_translateX.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.tx"
		;
connectAttr "joint3_translateY.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.ty"
		;
connectAttr "joint3_translateZ.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.tz"
		;
connectAttr "joint3_rotateX.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.rx"
		;
connectAttr "joint3_rotateY.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.ry"
		;
connectAttr "joint3_rotateZ.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.rz"
		;
connectAttr "Jaw_Control.s" "R_Jaw.is";
connectAttr "R_Jaw_translateX.o" "R_Jaw.tx";
connectAttr "R_Jaw_translateY.o" "R_Jaw.ty";
connectAttr "R_Jaw_translateZ.o" "R_Jaw.tz";
connectAttr "R_Jaw_rotateX.o" "R_Jaw.rx";
connectAttr "R_Jaw_rotateY.o" "R_Jaw.ry";
connectAttr "R_Jaw_rotateZ.o" "R_Jaw.rz";
connectAttr "R_Jaw.s" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.is"
		;
connectAttr "joint2_translateX1.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.tx"
		;
connectAttr "joint2_translateY1.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.ty"
		;
connectAttr "joint2_translateZ1.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.tz"
		;
connectAttr "joint2_rotateX1.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.rx"
		;
connectAttr "joint2_rotateY1.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.ry"
		;
connectAttr "joint2_rotateZ1.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.rz"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.s" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.is"
		;
connectAttr "joint3_translateX1.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.tx"
		;
connectAttr "joint3_translateY1.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.ty"
		;
connectAttr "joint3_translateZ1.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.tz"
		;
connectAttr "joint3_rotateX1.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.rx"
		;
connectAttr "joint3_rotateY1.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.ry"
		;
connectAttr "joint3_rotateZ1.o" "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.rz"
		;
connectAttr "Joint_Base.s" "Waist.is";
connectAttr "Waist_translateX.o" "Waist.tx";
connectAttr "Waist_translateY.o" "Waist.ty";
connectAttr "Waist_translateZ.o" "Waist.tz";
connectAttr "Waist_rotateX.o" "Waist.rx";
connectAttr "Waist_rotateY.o" "Waist.ry";
connectAttr "Waist_rotateZ.o" "Waist.rz";
connectAttr "Waist.s" "R_Leg.is";
connectAttr "R_Leg_translateX.o" "R_Leg.tx";
connectAttr "R_Leg_translateY.o" "R_Leg.ty";
connectAttr "R_Leg_translateZ.o" "R_Leg.tz";
connectAttr "R_Leg_rotateX.o" "R_Leg.rx";
connectAttr "R_Leg_rotateY.o" "R_Leg.ry";
connectAttr "R_Leg_rotateZ.o" "R_Leg.rz";
connectAttr "R_Leg.s" "R_Knee.is";
connectAttr "R_Knee_translateX.o" "R_Knee.tx";
connectAttr "R_Knee_translateY.o" "R_Knee.ty";
connectAttr "R_Knee_translateZ.o" "R_Knee.tz";
connectAttr "R_Knee_rotateX.o" "R_Knee.rx";
connectAttr "R_Knee_rotateY.o" "R_Knee.ry";
connectAttr "R_Knee_rotateZ.o" "R_Knee.rz";
connectAttr "R_Knee.s" "R_Ankle1.is";
connectAttr "R_Ankle1_translateX.o" "R_Ankle1.tx";
connectAttr "R_Ankle1_translateY.o" "R_Ankle1.ty";
connectAttr "R_Ankle1_translateZ.o" "R_Ankle1.tz";
connectAttr "R_Ankle1_rotateX.o" "R_Ankle1.rx";
connectAttr "R_Ankle1_rotateY.o" "R_Ankle1.ry";
connectAttr "R_Ankle1_rotateZ.o" "R_Ankle1.rz";
connectAttr "R_Ankle1.s" "R_Ankle2.is";
connectAttr "R_Ankle2_translateX.o" "R_Ankle2.tx";
connectAttr "R_Ankle2_translateY.o" "R_Ankle2.ty";
connectAttr "R_Ankle2_translateZ.o" "R_Ankle2.tz";
connectAttr "R_Ankle2_rotateX.o" "R_Ankle2.rx";
connectAttr "R_Ankle2_rotateY.o" "R_Ankle2.ry";
connectAttr "R_Ankle2_rotateZ.o" "R_Ankle2.rz";
connectAttr "R_Ankle2.s" "R_Heel.is";
connectAttr "R_Heel_translateX.o" "R_Heel.tx";
connectAttr "R_Heel_translateY.o" "R_Heel.ty";
connectAttr "R_Heel_translateZ.o" "R_Heel.tz";
connectAttr "R_Heel_rotateX.o" "R_Heel.rx";
connectAttr "R_Heel_rotateY.o" "R_Heel.ry";
connectAttr "R_Heel_rotateZ.o" "R_Heel.rz";
connectAttr "R_Heel.s" "R_Foot.is";
connectAttr "R_Foot_translateX.o" "R_Foot.tx";
connectAttr "R_Foot_translateY.o" "R_Foot.ty";
connectAttr "R_Foot_translateZ.o" "R_Foot.tz";
connectAttr "R_Foot_rotateX.o" "R_Foot.rx";
connectAttr "R_Foot_rotateY.o" "R_Foot.ry";
connectAttr "R_Foot_rotateZ.o" "R_Foot.rz";
connectAttr "Waist.s" "L_Leg.is";
connectAttr "L_Leg_translateX.o" "L_Leg.tx";
connectAttr "L_Leg_translateY.o" "L_Leg.ty";
connectAttr "L_Leg_translateZ.o" "L_Leg.tz";
connectAttr "L_Leg_rotateX.o" "L_Leg.rx";
connectAttr "L_Leg_rotateY.o" "L_Leg.ry";
connectAttr "L_Leg_rotateZ.o" "L_Leg.rz";
connectAttr "L_Leg.s" "L_Knee.is";
connectAttr "L_Knee_translateX.o" "L_Knee.tx";
connectAttr "L_Knee_translateY.o" "L_Knee.ty";
connectAttr "L_Knee_translateZ.o" "L_Knee.tz";
connectAttr "L_Knee_rotateX.o" "L_Knee.rx";
connectAttr "L_Knee_rotateY.o" "L_Knee.ry";
connectAttr "L_Knee_rotateZ.o" "L_Knee.rz";
connectAttr "L_Knee.s" "L_Ankle1.is";
connectAttr "L_Ankle1_translateX.o" "L_Ankle1.tx";
connectAttr "L_Ankle1_translateY.o" "L_Ankle1.ty";
connectAttr "L_Ankle1_translateZ.o" "L_Ankle1.tz";
connectAttr "L_Ankle1_rotateX.o" "L_Ankle1.rx";
connectAttr "L_Ankle1_rotateY.o" "L_Ankle1.ry";
connectAttr "L_Ankle1_rotateZ.o" "L_Ankle1.rz";
connectAttr "L_Ankle1.s" "L_Ankle2.is";
connectAttr "L_Ankle2_translateX.o" "L_Ankle2.tx";
connectAttr "L_Ankle2_translateY.o" "L_Ankle2.ty";
connectAttr "L_Ankle2_translateZ.o" "L_Ankle2.tz";
connectAttr "L_Ankle2_rotateX.o" "L_Ankle2.rx";
connectAttr "L_Ankle2_rotateY.o" "L_Ankle2.ry";
connectAttr "L_Ankle2_rotateZ.o" "L_Ankle2.rz";
connectAttr "L_Ankle2.s" "L_Heel.is";
connectAttr "L_Heel_translateX.o" "L_Heel.tx";
connectAttr "L_Heel_translateY.o" "L_Heel.ty";
connectAttr "L_Heel_translateZ.o" "L_Heel.tz";
connectAttr "L_Heel_rotateX.o" "L_Heel.rx";
connectAttr "L_Heel_rotateY.o" "L_Heel.ry";
connectAttr "L_Heel_rotateZ.o" "L_Heel.rz";
connectAttr "L_Heel.s" "L_Foot.is";
connectAttr "L_Foot_translateX.o" "L_Foot.tx";
connectAttr "L_Foot_translateY.o" "L_Foot.ty";
connectAttr "L_Foot_translateZ.o" "L_Foot.tz";
connectAttr "L_Foot_rotateX.o" "L_Foot.rx";
connectAttr "L_Foot_rotateY.o" "L_Foot.ry";
connectAttr "L_Foot_rotateZ.o" "L_Foot.rz";
connectAttr "polyPlane1.out" "FloorPlaneShape.i";
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
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape5.ws";
connectAttr ":sideShape.msg" "imagePlaneShape5.ltc";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape6.ws";
connectAttr ":sideShape.msg" "imagePlaneShape6.ltc";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape7.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape7.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape7.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape7.ws";
connectAttr ":sideShape.msg" "imagePlaneShape7.ltc";
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
connectAttr "Joint_Base.wm" "skinCluster1.ma[0]";
connectAttr "Spine_Base.wm" "skinCluster1.ma[1]";
connectAttr "Spine_1.wm" "skinCluster1.ma[2]";
connectAttr "Spine_2.wm" "skinCluster1.ma[3]";
connectAttr "Chest.wm" "skinCluster1.ma[4]";
connectAttr "L_Arm.wm" "skinCluster1.ma[5]";
connectAttr "L_Elbow.wm" "skinCluster1.ma[6]";
connectAttr "R_Arm.wm" "skinCluster1.ma[9]";
connectAttr "R_Elbow.wm" "skinCluster1.ma[10]";
connectAttr "Neck.wm" "skinCluster1.ma[13]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.wm" "skinCluster1.ma[14]"
		;
connectAttr "Jaw_Control.wm" "skinCluster1.ma[15]";
connectAttr "L_Jaw.wm" "skinCluster1.ma[16]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.wm" "skinCluster1.ma[17]"
		;
connectAttr "R_Jaw.wm" "skinCluster1.ma[19]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.wm" "skinCluster1.ma[20]"
		;
connectAttr "Waist.wm" "skinCluster1.ma[22]";
connectAttr "R_Leg.wm" "skinCluster1.ma[23]";
connectAttr "R_Knee.wm" "skinCluster1.ma[24]";
connectAttr "L_Leg.wm" "skinCluster1.ma[29]";
connectAttr "L_Knee.wm" "skinCluster1.ma[30]";
connectAttr "Joint_Base.liw" "skinCluster1.lw[0]";
connectAttr "Spine_Base.liw" "skinCluster1.lw[1]";
connectAttr "Spine_1.liw" "skinCluster1.lw[2]";
connectAttr "Spine_2.liw" "skinCluster1.lw[3]";
connectAttr "Chest.liw" "skinCluster1.lw[4]";
connectAttr "L_Arm.liw" "skinCluster1.lw[5]";
connectAttr "L_Elbow.liw" "skinCluster1.lw[6]";
connectAttr "R_Arm.liw" "skinCluster1.lw[9]";
connectAttr "R_Elbow.liw" "skinCluster1.lw[10]";
connectAttr "Neck.liw" "skinCluster1.lw[13]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.liw" "skinCluster1.lw[14]"
		;
connectAttr "Jaw_Control.liw" "skinCluster1.lw[15]";
connectAttr "L_Jaw.liw" "skinCluster1.lw[16]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.liw" "skinCluster1.lw[17]"
		;
connectAttr "R_Jaw.liw" "skinCluster1.lw[19]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.liw" "skinCluster1.lw[20]"
		;
connectAttr "Waist.liw" "skinCluster1.lw[22]";
connectAttr "R_Leg.liw" "skinCluster1.lw[23]";
connectAttr "R_Knee.liw" "skinCluster1.lw[24]";
connectAttr "L_Leg.liw" "skinCluster1.lw[29]";
connectAttr "L_Knee.liw" "skinCluster1.lw[30]";
connectAttr "Joint_Base.obcc" "skinCluster1.ifcl[0]";
connectAttr "Spine_Base.obcc" "skinCluster1.ifcl[1]";
connectAttr "Spine_1.obcc" "skinCluster1.ifcl[2]";
connectAttr "Spine_2.obcc" "skinCluster1.ifcl[3]";
connectAttr "Chest.obcc" "skinCluster1.ifcl[4]";
connectAttr "L_Arm.obcc" "skinCluster1.ifcl[5]";
connectAttr "L_Elbow.obcc" "skinCluster1.ifcl[6]";
connectAttr "R_Arm.obcc" "skinCluster1.ifcl[9]";
connectAttr "R_Elbow.obcc" "skinCluster1.ifcl[10]";
connectAttr "Neck.obcc" "skinCluster1.ifcl[13]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.obcc" "skinCluster1.ifcl[14]"
		;
connectAttr "Jaw_Control.obcc" "skinCluster1.ifcl[15]";
connectAttr "L_Jaw.obcc" "skinCluster1.ifcl[16]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.obcc" "skinCluster1.ifcl[17]"
		;
connectAttr "R_Jaw.obcc" "skinCluster1.ifcl[19]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.obcc" "skinCluster1.ifcl[20]"
		;
connectAttr "Waist.obcc" "skinCluster1.ifcl[22]";
connectAttr "R_Leg.obcc" "skinCluster1.ifcl[23]";
connectAttr "R_Knee.obcc" "skinCluster1.ifcl[24]";
connectAttr "L_Leg.obcc" "skinCluster1.ifcl[29]";
connectAttr "L_Knee.obcc" "skinCluster1.ifcl[30]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.msg" "skinCluster1.ptt"
		;
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
connectAttr "Joint_Base.msg" "bindPose1.m[0]";
connectAttr "Spine_Base.msg" "bindPose1.m[1]";
connectAttr "Spine_1.msg" "bindPose1.m[2]";
connectAttr "Spine_2.msg" "bindPose1.m[3]";
connectAttr "Chest.msg" "bindPose1.m[4]";
connectAttr "L_Arm.msg" "bindPose1.m[5]";
connectAttr "L_Elbow.msg" "bindPose1.m[6]";
connectAttr "L_Wrist.msg" "bindPose1.m[7]";
connectAttr "R_Arm.msg" "bindPose1.m[9]";
connectAttr "R_Elbow.msg" "bindPose1.m[10]";
connectAttr "R_Wrist.msg" "bindPose1.m[11]";
connectAttr "Neck.msg" "bindPose1.m[13]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.msg" "bindPose1.m[14]"
		;
connectAttr "Jaw_Control.msg" "bindPose1.m[15]";
connectAttr "L_Jaw.msg" "bindPose1.m[16]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.msg" "bindPose1.m[17]"
		;
connectAttr "R_Jaw.msg" "bindPose1.m[19]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.msg" "bindPose1.m[20]"
		;
connectAttr "Waist.msg" "bindPose1.m[22]";
connectAttr "R_Leg.msg" "bindPose1.m[23]";
connectAttr "R_Knee.msg" "bindPose1.m[24]";
connectAttr "R_Ankle1.msg" "bindPose1.m[25]";
connectAttr "R_Ankle2.msg" "bindPose1.m[26]";
connectAttr "R_Heel.msg" "bindPose1.m[27]";
connectAttr "L_Leg.msg" "bindPose1.m[29]";
connectAttr "L_Knee.msg" "bindPose1.m[30]";
connectAttr "L_Ankle1.msg" "bindPose1.m[31]";
connectAttr "L_Ankle2.msg" "bindPose1.m[32]";
connectAttr "L_Heel.msg" "bindPose1.m[33]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.msg" "bindPose1.m[37]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.msg" "bindPose1.m[38]"
		;
connectAttr "R_Foot.msg" "bindPose1.m[51]";
connectAttr "L_Foot.msg" "bindPose1.m[52]";
connectAttr "L_Hand.msg" "bindPose1.m[55]";
connectAttr "R_Hand.msg" "bindPose1.m[56]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[4]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[4]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[15]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[0]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[24]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[22]" "bindPose1.p[29]";
connectAttr "bindPose1.m[29]" "bindPose1.p[30]";
connectAttr "bindPose1.m[30]" "bindPose1.p[31]";
connectAttr "bindPose1.m[31]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[17]" "bindPose1.p[37]";
connectAttr "bindPose1.m[20]" "bindPose1.p[38]";
connectAttr "bindPose1.m[27]" "bindPose1.p[51]";
connectAttr "bindPose1.m[33]" "bindPose1.p[52]";
connectAttr "bindPose1.m[7]" "bindPose1.p[55]";
connectAttr "bindPose1.m[11]" "bindPose1.p[56]";
connectAttr "Joint_Base.bps" "bindPose1.wm[0]";
connectAttr "Spine_Base.bps" "bindPose1.wm[1]";
connectAttr "Spine_1.bps" "bindPose1.wm[2]";
connectAttr "Spine_2.bps" "bindPose1.wm[3]";
connectAttr "Chest.bps" "bindPose1.wm[4]";
connectAttr "L_Arm.bps" "bindPose1.wm[5]";
connectAttr "L_Elbow.bps" "bindPose1.wm[6]";
connectAttr "L_Wrist.bps" "bindPose1.wm[7]";
connectAttr "R_Arm.bps" "bindPose1.wm[9]";
connectAttr "R_Elbow.bps" "bindPose1.wm[10]";
connectAttr "R_Wrist.bps" "bindPose1.wm[11]";
connectAttr "Neck.bps" "bindPose1.wm[13]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.bps" "bindPose1.wm[14]"
		;
connectAttr "Jaw_Control.bps" "bindPose1.wm[15]";
connectAttr "L_Jaw.bps" "bindPose1.wm[16]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.bps" "bindPose1.wm[17]"
		;
connectAttr "R_Jaw.bps" "bindPose1.wm[19]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.bps" "bindPose1.wm[20]"
		;
connectAttr "Waist.bps" "bindPose1.wm[22]";
connectAttr "R_Leg.bps" "bindPose1.wm[23]";
connectAttr "R_Knee.bps" "bindPose1.wm[24]";
connectAttr "R_Ankle1.bps" "bindPose1.wm[25]";
connectAttr "R_Ankle2.bps" "bindPose1.wm[26]";
connectAttr "R_Heel.bps" "bindPose1.wm[27]";
connectAttr "L_Leg.bps" "bindPose1.wm[29]";
connectAttr "L_Knee.bps" "bindPose1.wm[30]";
connectAttr "L_Ankle1.bps" "bindPose1.wm[31]";
connectAttr "L_Ankle2.bps" "bindPose1.wm[32]";
connectAttr "L_Heel.bps" "bindPose1.wm[33]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.bps" "bindPose1.wm[37]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.bps" "bindPose1.wm[38]"
		;
connectAttr "R_Foot.bps" "bindPose1.wm[51]";
connectAttr "L_Foot.bps" "bindPose1.wm[52]";
connectAttr "L_Hand.bps" "bindPose1.wm[55]";
connectAttr "R_Hand.bps" "bindPose1.wm[56]";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "Spine_2.wm" "skinCluster2.ma[3]";
connectAttr "Chest.wm" "skinCluster2.ma[4]";
connectAttr "Neck.wm" "skinCluster2.ma[13]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.wm" "skinCluster2.ma[14]"
		;
connectAttr "Jaw_Control.wm" "skinCluster2.ma[15]";
connectAttr "L_Jaw.wm" "skinCluster2.ma[16]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.wm" "skinCluster2.ma[17]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.wm" "skinCluster2.ma[18]"
		;
connectAttr "R_Jaw.wm" "skinCluster2.ma[19]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.wm" "skinCluster2.ma[20]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.wm" "skinCluster2.ma[21]"
		;
connectAttr "Spine_2.liw" "skinCluster2.lw[3]";
connectAttr "Chest.liw" "skinCluster2.lw[4]";
connectAttr "Neck.liw" "skinCluster2.lw[13]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.liw" "skinCluster2.lw[14]"
		;
connectAttr "Jaw_Control.liw" "skinCluster2.lw[15]";
connectAttr "L_Jaw.liw" "skinCluster2.lw[16]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.liw" "skinCluster2.lw[17]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.liw" "skinCluster2.lw[18]"
		;
connectAttr "R_Jaw.liw" "skinCluster2.lw[19]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.liw" "skinCluster2.lw[20]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.liw" "skinCluster2.lw[21]"
		;
connectAttr "Spine_2.obcc" "skinCluster2.ifcl[3]";
connectAttr "Chest.obcc" "skinCluster2.ifcl[4]";
connectAttr "Neck.obcc" "skinCluster2.ifcl[13]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.obcc" "skinCluster2.ifcl[14]"
		;
connectAttr "Jaw_Control.obcc" "skinCluster2.ifcl[15]";
connectAttr "L_Jaw.obcc" "skinCluster2.ifcl[16]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.obcc" "skinCluster2.ifcl[17]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.obcc" "skinCluster2.ifcl[18]"
		;
connectAttr "R_Jaw.obcc" "skinCluster2.ifcl[19]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.obcc" "skinCluster2.ifcl[20]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.obcc" "skinCluster2.ifcl[21]"
		;
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "Jaw_Control.msg" "skinCluster2.ptt";
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
connectAttr "Chest.wm" "skinCluster3.ma[4]";
connectAttr "L_Arm.wm" "skinCluster3.ma[5]";
connectAttr "L_Elbow.wm" "skinCluster3.ma[6]";
connectAttr "R_Arm.wm" "skinCluster3.ma[9]";
connectAttr "R_Elbow.wm" "skinCluster3.ma[10]";
connectAttr "Neck.wm" "skinCluster3.ma[13]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.wm" "skinCluster3.ma[14]"
		;
connectAttr "Jaw_Control.wm" "skinCluster3.ma[15]";
connectAttr "L_Jaw.wm" "skinCluster3.ma[16]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.wm" "skinCluster3.ma[17]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.wm" "skinCluster3.ma[18]"
		;
connectAttr "R_Jaw.wm" "skinCluster3.ma[19]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.wm" "skinCluster3.ma[20]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.wm" "skinCluster3.ma[21]"
		;
connectAttr "Chest.liw" "skinCluster3.lw[4]";
connectAttr "L_Arm.liw" "skinCluster3.lw[5]";
connectAttr "L_Elbow.liw" "skinCluster3.lw[6]";
connectAttr "R_Arm.liw" "skinCluster3.lw[9]";
connectAttr "R_Elbow.liw" "skinCluster3.lw[10]";
connectAttr "Neck.liw" "skinCluster3.lw[13]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.liw" "skinCluster3.lw[14]"
		;
connectAttr "Jaw_Control.liw" "skinCluster3.lw[15]";
connectAttr "L_Jaw.liw" "skinCluster3.lw[16]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.liw" "skinCluster3.lw[17]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.liw" "skinCluster3.lw[18]"
		;
connectAttr "R_Jaw.liw" "skinCluster3.lw[19]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.liw" "skinCluster3.lw[20]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.liw" "skinCluster3.lw[21]"
		;
connectAttr "Chest.obcc" "skinCluster3.ifcl[4]";
connectAttr "L_Arm.obcc" "skinCluster3.ifcl[5]";
connectAttr "L_Elbow.obcc" "skinCluster3.ifcl[6]";
connectAttr "R_Arm.obcc" "skinCluster3.ifcl[9]";
connectAttr "R_Elbow.obcc" "skinCluster3.ifcl[10]";
connectAttr "Neck.obcc" "skinCluster3.ifcl[13]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.obcc" "skinCluster3.ifcl[14]"
		;
connectAttr "Jaw_Control.obcc" "skinCluster3.ifcl[15]";
connectAttr "L_Jaw.obcc" "skinCluster3.ifcl[16]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.obcc" "skinCluster3.ifcl[17]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.obcc" "skinCluster3.ifcl[18]"
		;
connectAttr "R_Jaw.obcc" "skinCluster3.ifcl[19]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.obcc" "skinCluster3.ifcl[20]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.obcc" "skinCluster3.ifcl[21]"
		;
connectAttr "bindPose1.msg" "skinCluster3.bp";
connectAttr "Jaw_Control.msg" "skinCluster3.ptt";
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
connectAttr "Spine_1.wm" "skinCluster4.ma[2]";
connectAttr "Spine_2.wm" "skinCluster4.ma[3]";
connectAttr "Chest.wm" "skinCluster4.ma[4]";
connectAttr "L_Arm.wm" "skinCluster4.ma[5]";
connectAttr "L_Elbow.wm" "skinCluster4.ma[6]";
connectAttr "L_Wrist.wm" "skinCluster4.ma[7]";
connectAttr "R_Arm.wm" "skinCluster4.ma[9]";
connectAttr "R_Elbow.wm" "skinCluster4.ma[10]";
connectAttr "R_Wrist.wm" "skinCluster4.ma[11]";
connectAttr "Neck.wm" "skinCluster4.ma[13]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.wm" "skinCluster4.ma[14]"
		;
connectAttr "Jaw_Control.wm" "skinCluster4.ma[15]";
connectAttr "L_Jaw.wm" "skinCluster4.ma[16]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.wm" "skinCluster4.ma[17]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.wm" "skinCluster4.ma[18]"
		;
connectAttr "R_Jaw.wm" "skinCluster4.ma[19]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.wm" "skinCluster4.ma[20]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.wm" "skinCluster4.ma[21]"
		;
connectAttr "R_Leg.wm" "skinCluster4.ma[23]";
connectAttr "R_Knee.wm" "skinCluster4.ma[24]";
connectAttr "L_Leg.wm" "skinCluster4.ma[29]";
connectAttr "L_Knee.wm" "skinCluster4.ma[30]";
connectAttr "Spine_1.liw" "skinCluster4.lw[2]";
connectAttr "Spine_2.liw" "skinCluster4.lw[3]";
connectAttr "Chest.liw" "skinCluster4.lw[4]";
connectAttr "L_Arm.liw" "skinCluster4.lw[5]";
connectAttr "L_Elbow.liw" "skinCluster4.lw[6]";
connectAttr "L_Wrist.liw" "skinCluster4.lw[7]";
connectAttr "R_Arm.liw" "skinCluster4.lw[9]";
connectAttr "R_Elbow.liw" "skinCluster4.lw[10]";
connectAttr "R_Wrist.liw" "skinCluster4.lw[11]";
connectAttr "Neck.liw" "skinCluster4.lw[13]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.liw" "skinCluster4.lw[14]"
		;
connectAttr "Jaw_Control.liw" "skinCluster4.lw[15]";
connectAttr "L_Jaw.liw" "skinCluster4.lw[16]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.liw" "skinCluster4.lw[17]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.liw" "skinCluster4.lw[18]"
		;
connectAttr "R_Jaw.liw" "skinCluster4.lw[19]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.liw" "skinCluster4.lw[20]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.liw" "skinCluster4.lw[21]"
		;
connectAttr "R_Leg.liw" "skinCluster4.lw[23]";
connectAttr "R_Knee.liw" "skinCluster4.lw[24]";
connectAttr "L_Leg.liw" "skinCluster4.lw[29]";
connectAttr "L_Knee.liw" "skinCluster4.lw[30]";
connectAttr "Spine_1.obcc" "skinCluster4.ifcl[2]";
connectAttr "Spine_2.obcc" "skinCluster4.ifcl[3]";
connectAttr "Chest.obcc" "skinCluster4.ifcl[4]";
connectAttr "L_Arm.obcc" "skinCluster4.ifcl[5]";
connectAttr "L_Elbow.obcc" "skinCluster4.ifcl[6]";
connectAttr "L_Wrist.obcc" "skinCluster4.ifcl[7]";
connectAttr "R_Arm.obcc" "skinCluster4.ifcl[9]";
connectAttr "R_Elbow.obcc" "skinCluster4.ifcl[10]";
connectAttr "R_Wrist.obcc" "skinCluster4.ifcl[11]";
connectAttr "Neck.obcc" "skinCluster4.ifcl[13]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.obcc" "skinCluster4.ifcl[14]"
		;
connectAttr "Jaw_Control.obcc" "skinCluster4.ifcl[15]";
connectAttr "L_Jaw.obcc" "skinCluster4.ifcl[16]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.obcc" "skinCluster4.ifcl[17]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.obcc" "skinCluster4.ifcl[18]"
		;
connectAttr "R_Jaw.obcc" "skinCluster4.ifcl[19]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.obcc" "skinCluster4.ifcl[20]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.obcc" "skinCluster4.ifcl[21]"
		;
connectAttr "R_Leg.obcc" "skinCluster4.ifcl[23]";
connectAttr "R_Knee.obcc" "skinCluster4.ifcl[24]";
connectAttr "L_Leg.obcc" "skinCluster4.ifcl[29]";
connectAttr "L_Knee.obcc" "skinCluster4.ifcl[30]";
connectAttr "bindPose1.msg" "skinCluster4.bp";
connectAttr "L_Jaw.msg" "skinCluster4.ptt";
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
connectAttr "Joint_Base.wm" "skinCluster5.ma[0]";
connectAttr "Spine_Base.wm" "skinCluster5.ma[1]";
connectAttr "Spine_1.wm" "skinCluster5.ma[2]";
connectAttr "L_Elbow.wm" "skinCluster5.ma[6]";
connectAttr "R_Elbow.wm" "skinCluster5.ma[10]";
connectAttr "Waist.wm" "skinCluster5.ma[22]";
connectAttr "R_Leg.wm" "skinCluster5.ma[23]";
connectAttr "R_Knee.wm" "skinCluster5.ma[24]";
connectAttr "R_Ankle1.wm" "skinCluster5.ma[25]";
connectAttr "R_Ankle2.wm" "skinCluster5.ma[26]";
connectAttr "R_Heel.wm" "skinCluster5.ma[27]";
connectAttr "R_Foot.wm" "skinCluster5.ma[28]";
connectAttr "L_Leg.wm" "skinCluster5.ma[29]";
connectAttr "L_Knee.wm" "skinCluster5.ma[30]";
connectAttr "L_Ankle1.wm" "skinCluster5.ma[31]";
connectAttr "L_Ankle2.wm" "skinCluster5.ma[32]";
connectAttr "L_Heel.wm" "skinCluster5.ma[33]";
connectAttr "L_Foot.wm" "skinCluster5.ma[34]";
connectAttr "Joint_Base.liw" "skinCluster5.lw[0]";
connectAttr "Spine_Base.liw" "skinCluster5.lw[1]";
connectAttr "Spine_1.liw" "skinCluster5.lw[2]";
connectAttr "L_Elbow.liw" "skinCluster5.lw[6]";
connectAttr "R_Elbow.liw" "skinCluster5.lw[10]";
connectAttr "Waist.liw" "skinCluster5.lw[22]";
connectAttr "R_Leg.liw" "skinCluster5.lw[23]";
connectAttr "R_Knee.liw" "skinCluster5.lw[24]";
connectAttr "R_Ankle1.liw" "skinCluster5.lw[25]";
connectAttr "R_Ankle2.liw" "skinCluster5.lw[26]";
connectAttr "R_Heel.liw" "skinCluster5.lw[27]";
connectAttr "R_Foot.liw" "skinCluster5.lw[28]";
connectAttr "L_Leg.liw" "skinCluster5.lw[29]";
connectAttr "L_Knee.liw" "skinCluster5.lw[30]";
connectAttr "L_Ankle1.liw" "skinCluster5.lw[31]";
connectAttr "L_Ankle2.liw" "skinCluster5.lw[32]";
connectAttr "L_Heel.liw" "skinCluster5.lw[33]";
connectAttr "L_Foot.liw" "skinCluster5.lw[34]";
connectAttr "Joint_Base.obcc" "skinCluster5.ifcl[0]";
connectAttr "Spine_Base.obcc" "skinCluster5.ifcl[1]";
connectAttr "Spine_1.obcc" "skinCluster5.ifcl[2]";
connectAttr "L_Elbow.obcc" "skinCluster5.ifcl[6]";
connectAttr "R_Elbow.obcc" "skinCluster5.ifcl[10]";
connectAttr "Waist.obcc" "skinCluster5.ifcl[22]";
connectAttr "R_Leg.obcc" "skinCluster5.ifcl[23]";
connectAttr "R_Knee.obcc" "skinCluster5.ifcl[24]";
connectAttr "R_Ankle1.obcc" "skinCluster5.ifcl[25]";
connectAttr "R_Ankle2.obcc" "skinCluster5.ifcl[26]";
connectAttr "R_Heel.obcc" "skinCluster5.ifcl[27]";
connectAttr "R_Foot.obcc" "skinCluster5.ifcl[28]";
connectAttr "L_Leg.obcc" "skinCluster5.ifcl[29]";
connectAttr "L_Knee.obcc" "skinCluster5.ifcl[30]";
connectAttr "L_Ankle1.obcc" "skinCluster5.ifcl[31]";
connectAttr "L_Ankle2.obcc" "skinCluster5.ifcl[32]";
connectAttr "L_Heel.obcc" "skinCluster5.ifcl[33]";
connectAttr "L_Foot.obcc" "skinCluster5.ifcl[34]";
connectAttr "bindPose1.msg" "skinCluster5.bp";
connectAttr "L_Ankle1.msg" "skinCluster5.ptt";
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
connectAttr "skinCluster9GroupParts.og" "skinCluster9.ip[0].ig";
connectAttr "skinCluster9GroupId.id" "skinCluster9.ip[0].gi";
connectAttr "Spine_1.wm" "skinCluster9.ma[2]";
connectAttr "Spine_2.wm" "skinCluster9.ma[3]";
connectAttr "Chest.wm" "skinCluster9.ma[4]";
connectAttr "L_Arm.wm" "skinCluster9.ma[5]";
connectAttr "R_Arm.wm" "skinCluster9.ma[9]";
connectAttr "Neck.wm" "skinCluster9.ma[13]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.wm" "skinCluster9.ma[14]"
		;
connectAttr "Spine_1.liw" "skinCluster9.lw[2]";
connectAttr "Spine_2.liw" "skinCluster9.lw[3]";
connectAttr "Chest.liw" "skinCluster9.lw[4]";
connectAttr "L_Arm.liw" "skinCluster9.lw[5]";
connectAttr "R_Arm.liw" "skinCluster9.lw[9]";
connectAttr "Neck.liw" "skinCluster9.lw[13]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.liw" "skinCluster9.lw[14]"
		;
connectAttr "Spine_1.obcc" "skinCluster9.ifcl[2]";
connectAttr "Spine_2.obcc" "skinCluster9.ifcl[3]";
connectAttr "Chest.obcc" "skinCluster9.ifcl[4]";
connectAttr "L_Arm.obcc" "skinCluster9.ifcl[5]";
connectAttr "R_Arm.obcc" "skinCluster9.ifcl[9]";
connectAttr "Neck.obcc" "skinCluster9.ifcl[13]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head.obcc" "skinCluster9.ifcl[14]"
		;
connectAttr "bindPose1.msg" "skinCluster9.bp";
connectAttr "Spine_2.msg" "skinCluster9.ptt";
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
connectAttr "Joint_Base.wm" "skinCluster10.ma[0]";
connectAttr "Spine_Base.wm" "skinCluster10.ma[1]";
connectAttr "Spine_1.wm" "skinCluster10.ma[2]";
connectAttr "Spine_2.wm" "skinCluster10.ma[3]";
connectAttr "Chest.wm" "skinCluster10.ma[4]";
connectAttr "L_Arm.wm" "skinCluster10.ma[5]";
connectAttr "R_Arm.wm" "skinCluster10.ma[9]";
connectAttr "Joint_Base.liw" "skinCluster10.lw[0]";
connectAttr "Spine_Base.liw" "skinCluster10.lw[1]";
connectAttr "Spine_1.liw" "skinCluster10.lw[2]";
connectAttr "Spine_2.liw" "skinCluster10.lw[3]";
connectAttr "Chest.liw" "skinCluster10.lw[4]";
connectAttr "L_Arm.liw" "skinCluster10.lw[5]";
connectAttr "R_Arm.liw" "skinCluster10.lw[9]";
connectAttr "Joint_Base.obcc" "skinCluster10.ifcl[0]";
connectAttr "Spine_Base.obcc" "skinCluster10.ifcl[1]";
connectAttr "Spine_1.obcc" "skinCluster10.ifcl[2]";
connectAttr "Spine_2.obcc" "skinCluster10.ifcl[3]";
connectAttr "Chest.obcc" "skinCluster10.ifcl[4]";
connectAttr "L_Arm.obcc" "skinCluster10.ifcl[5]";
connectAttr "R_Arm.obcc" "skinCluster10.ifcl[9]";
connectAttr "bindPose1.msg" "skinCluster10.bp";
connectAttr "Spine_2.msg" "skinCluster10.ptt";
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
connectAttr "Joint_Base.wm" "skinCluster11.ma[0]";
connectAttr "Spine_Base.wm" "skinCluster11.ma[1]";
connectAttr "Spine_1.wm" "skinCluster11.ma[2]";
connectAttr "Spine_2.wm" "skinCluster11.ma[3]";
connectAttr "Waist.wm" "skinCluster11.ma[22]";
connectAttr "Joint_Base.liw" "skinCluster11.lw[0]";
connectAttr "Spine_Base.liw" "skinCluster11.lw[1]";
connectAttr "Spine_1.liw" "skinCluster11.lw[2]";
connectAttr "Spine_2.liw" "skinCluster11.lw[3]";
connectAttr "Waist.liw" "skinCluster11.lw[22]";
connectAttr "Joint_Base.obcc" "skinCluster11.ifcl[0]";
connectAttr "Spine_Base.obcc" "skinCluster11.ifcl[1]";
connectAttr "Spine_1.obcc" "skinCluster11.ifcl[2]";
connectAttr "Spine_2.obcc" "skinCluster11.ifcl[3]";
connectAttr "Waist.obcc" "skinCluster11.ifcl[22]";
connectAttr "bindPose1.msg" "skinCluster11.bp";
connectAttr "Joint_Base.msg" "skinCluster11.ptt";
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
connectAttr "skinCluster12GroupParts.og" "skinCluster12.ip[0].ig";
connectAttr "skinCluster12GroupId.id" "skinCluster12.ip[0].gi";
connectAttr "L_Arm.wm" "skinCluster12.ma[5]";
connectAttr "L_Elbow.wm" "skinCluster12.ma[6]";
connectAttr "L_Wrist.wm" "skinCluster12.ma[7]";
connectAttr "L_Hand.wm" "skinCluster12.ma[8]";
connectAttr "R_Arm.wm" "skinCluster12.ma[9]";
connectAttr "R_Elbow.wm" "skinCluster12.ma[10]";
connectAttr "R_Wrist.wm" "skinCluster12.ma[11]";
connectAttr "R_Hand.wm" "skinCluster12.ma[12]";
connectAttr "R_Leg.wm" "skinCluster12.ma[23]";
connectAttr "R_Knee.wm" "skinCluster12.ma[24]";
connectAttr "R_Heel.wm" "skinCluster12.ma[27]";
connectAttr "R_Foot.wm" "skinCluster12.ma[28]";
connectAttr "L_Leg.wm" "skinCluster12.ma[29]";
connectAttr "L_Knee.wm" "skinCluster12.ma[30]";
connectAttr "L_Heel.wm" "skinCluster12.ma[33]";
connectAttr "L_Foot.wm" "skinCluster12.ma[34]";
connectAttr "L_Arm.liw" "skinCluster12.lw[5]";
connectAttr "L_Elbow.liw" "skinCluster12.lw[6]";
connectAttr "L_Wrist.liw" "skinCluster12.lw[7]";
connectAttr "L_Hand.liw" "skinCluster12.lw[8]";
connectAttr "R_Arm.liw" "skinCluster12.lw[9]";
connectAttr "R_Elbow.liw" "skinCluster12.lw[10]";
connectAttr "R_Wrist.liw" "skinCluster12.lw[11]";
connectAttr "R_Hand.liw" "skinCluster12.lw[12]";
connectAttr "R_Leg.liw" "skinCluster12.lw[23]";
connectAttr "R_Knee.liw" "skinCluster12.lw[24]";
connectAttr "R_Heel.liw" "skinCluster12.lw[27]";
connectAttr "R_Foot.liw" "skinCluster12.lw[28]";
connectAttr "L_Leg.liw" "skinCluster12.lw[29]";
connectAttr "L_Knee.liw" "skinCluster12.lw[30]";
connectAttr "L_Heel.liw" "skinCluster12.lw[33]";
connectAttr "L_Foot.liw" "skinCluster12.lw[34]";
connectAttr "L_Arm.obcc" "skinCluster12.ifcl[5]";
connectAttr "L_Elbow.obcc" "skinCluster12.ifcl[6]";
connectAttr "L_Wrist.obcc" "skinCluster12.ifcl[7]";
connectAttr "L_Hand.obcc" "skinCluster12.ifcl[8]";
connectAttr "R_Arm.obcc" "skinCluster12.ifcl[9]";
connectAttr "R_Elbow.obcc" "skinCluster12.ifcl[10]";
connectAttr "R_Wrist.obcc" "skinCluster12.ifcl[11]";
connectAttr "R_Hand.obcc" "skinCluster12.ifcl[12]";
connectAttr "R_Leg.obcc" "skinCluster12.ifcl[23]";
connectAttr "R_Knee.obcc" "skinCluster12.ifcl[24]";
connectAttr "R_Heel.obcc" "skinCluster12.ifcl[27]";
connectAttr "R_Foot.obcc" "skinCluster12.ifcl[28]";
connectAttr "L_Leg.obcc" "skinCluster12.ifcl[29]";
connectAttr "L_Knee.obcc" "skinCluster12.ifcl[30]";
connectAttr "L_Heel.obcc" "skinCluster12.ifcl[33]";
connectAttr "L_Foot.obcc" "skinCluster12.ifcl[34]";
connectAttr "bindPose1.msg" "skinCluster12.bp";
connectAttr "L_Wrist.msg" "skinCluster12.ptt";
connectAttr "skinCluster12GroupId.msg" "skinCluster12Set.gn" -na;
connectAttr "HandShape.iog.og[2]" "skinCluster12Set.dsm" -na;
connectAttr "skinCluster12.msg" "skinCluster12Set.ub[0]";
connectAttr "tweak12.og[0]" "skinCluster12GroupParts.ig";
connectAttr "skinCluster12GroupId.id" "skinCluster12GroupParts.gi";
connectAttr "groupParts24.og" "tweak12.ip[0].ig";
connectAttr "groupId24.id" "tweak12.ip[0].gi";
connectAttr "groupId24.msg" "tweakSet12.gn" -na;
connectAttr "HandShape.iog.og[3]" "tweakSet12.dsm" -na;
connectAttr "tweak12.msg" "tweakSet12.ub[0]";
connectAttr "HandShapeOrig.w" "groupParts24.ig";
connectAttr "groupId24.id" "groupParts24.gi";
connectAttr "skinCluster8GroupParts.og" "skinCluster8.ip[0].ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8.ip[0].gi";
connectAttr "L_Arm.wm" "skinCluster8.ma[5]";
connectAttr "L_Elbow.wm" "skinCluster8.ma[6]";
connectAttr "L_Wrist.wm" "skinCluster8.ma[7]";
connectAttr "L_Hand.wm" "skinCluster8.ma[8]";
connectAttr "R_Arm.wm" "skinCluster8.ma[9]";
connectAttr "R_Elbow.wm" "skinCluster8.ma[10]";
connectAttr "R_Wrist.wm" "skinCluster8.ma[11]";
connectAttr "R_Hand.wm" "skinCluster8.ma[12]";
connectAttr "Jaw_Control.wm" "skinCluster8.ma[15]";
connectAttr "L_Jaw.wm" "skinCluster8.ma[16]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.wm" "skinCluster8.ma[17]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.wm" "skinCluster8.ma[18]"
		;
connectAttr "R_Jaw.wm" "skinCluster8.ma[19]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.wm" "skinCluster8.ma[20]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.wm" "skinCluster8.ma[21]"
		;
connectAttr "R_Leg.wm" "skinCluster8.ma[23]";
connectAttr "R_Knee.wm" "skinCluster8.ma[24]";
connectAttr "L_Leg.wm" "skinCluster8.ma[29]";
connectAttr "L_Knee.wm" "skinCluster8.ma[30]";
connectAttr "L_Arm.liw" "skinCluster8.lw[5]";
connectAttr "L_Elbow.liw" "skinCluster8.lw[6]";
connectAttr "L_Wrist.liw" "skinCluster8.lw[7]";
connectAttr "L_Hand.liw" "skinCluster8.lw[8]";
connectAttr "R_Arm.liw" "skinCluster8.lw[9]";
connectAttr "R_Elbow.liw" "skinCluster8.lw[10]";
connectAttr "R_Wrist.liw" "skinCluster8.lw[11]";
connectAttr "R_Hand.liw" "skinCluster8.lw[12]";
connectAttr "Jaw_Control.liw" "skinCluster8.lw[15]";
connectAttr "L_Jaw.liw" "skinCluster8.lw[16]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.liw" "skinCluster8.lw[17]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.liw" "skinCluster8.lw[18]"
		;
connectAttr "R_Jaw.liw" "skinCluster8.lw[19]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.liw" "skinCluster8.lw[20]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.liw" "skinCluster8.lw[21]"
		;
connectAttr "R_Leg.liw" "skinCluster8.lw[23]";
connectAttr "R_Knee.liw" "skinCluster8.lw[24]";
connectAttr "L_Leg.liw" "skinCluster8.lw[29]";
connectAttr "L_Knee.liw" "skinCluster8.lw[30]";
connectAttr "L_Arm.obcc" "skinCluster8.ifcl[5]";
connectAttr "L_Elbow.obcc" "skinCluster8.ifcl[6]";
connectAttr "L_Wrist.obcc" "skinCluster8.ifcl[7]";
connectAttr "L_Hand.obcc" "skinCluster8.ifcl[8]";
connectAttr "R_Arm.obcc" "skinCluster8.ifcl[9]";
connectAttr "R_Elbow.obcc" "skinCluster8.ifcl[10]";
connectAttr "R_Wrist.obcc" "skinCluster8.ifcl[11]";
connectAttr "R_Hand.obcc" "skinCluster8.ifcl[12]";
connectAttr "Jaw_Control.obcc" "skinCluster8.ifcl[15]";
connectAttr "L_Jaw.obcc" "skinCluster8.ifcl[16]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2.obcc" "skinCluster8.ifcl[17]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|L_Jaw|joint2|joint3.obcc" "skinCluster8.ifcl[18]"
		;
connectAttr "R_Jaw.obcc" "skinCluster8.ifcl[19]";
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2.obcc" "skinCluster8.ifcl[20]"
		;
connectAttr "|Joint_Base|Spine_Base|Spine_1|Spine_2|Chest|Neck|Head|Jaw_Control|R_Jaw|joint2|joint3.obcc" "skinCluster8.ifcl[21]"
		;
connectAttr "R_Leg.obcc" "skinCluster8.ifcl[23]";
connectAttr "R_Knee.obcc" "skinCluster8.ifcl[24]";
connectAttr "L_Leg.obcc" "skinCluster8.ifcl[29]";
connectAttr "L_Knee.obcc" "skinCluster8.ifcl[30]";
connectAttr "bindPose1.msg" "skinCluster8.bp";
connectAttr "L_Elbow.msg" "skinCluster8.ptt";
connectAttr "skinCluster8GroupId.msg" "skinCluster8Set.gn" -na;
connectAttr "ForeArmShape.iog.og[0]" "skinCluster8Set.dsm" -na;
connectAttr "skinCluster8.msg" "skinCluster8Set.ub[0]";
connectAttr "tweak8.og[0]" "skinCluster8GroupParts.ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8GroupParts.gi";
connectAttr "groupParts16.og" "tweak8.ip[0].ig";
connectAttr "groupId16.id" "tweak8.ip[0].gi";
connectAttr "groupId16.msg" "tweakSet8.gn" -na;
connectAttr "ForeArmShape.iog.og[1]" "tweakSet8.dsm" -na;
connectAttr "tweak8.msg" "tweakSet8.ub[0]";
connectAttr "ForeArmShapeOrig.w" "groupParts16.ig";
connectAttr "groupId16.id" "groupParts16.gi";
connectAttr "skinCluster6GroupParts.og" "skinCluster6.ip[0].ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6.ip[0].gi";
connectAttr "L_Wrist.wm" "skinCluster6.ma[7]";
connectAttr "R_Wrist.wm" "skinCluster6.ma[11]";
connectAttr "R_Leg.wm" "skinCluster6.ma[23]";
connectAttr "R_Knee.wm" "skinCluster6.ma[24]";
connectAttr "R_Ankle1.wm" "skinCluster6.ma[25]";
connectAttr "R_Ankle2.wm" "skinCluster6.ma[26]";
connectAttr "R_Heel.wm" "skinCluster6.ma[27]";
connectAttr "R_Foot.wm" "skinCluster6.ma[28]";
connectAttr "L_Leg.wm" "skinCluster6.ma[29]";
connectAttr "L_Knee.wm" "skinCluster6.ma[30]";
connectAttr "L_Ankle1.wm" "skinCluster6.ma[31]";
connectAttr "L_Ankle2.wm" "skinCluster6.ma[32]";
connectAttr "L_Heel.wm" "skinCluster6.ma[33]";
connectAttr "L_Foot.wm" "skinCluster6.ma[34]";
connectAttr "L_Wrist.liw" "skinCluster6.lw[7]";
connectAttr "R_Wrist.liw" "skinCluster6.lw[11]";
connectAttr "R_Leg.liw" "skinCluster6.lw[23]";
connectAttr "R_Knee.liw" "skinCluster6.lw[24]";
connectAttr "R_Ankle1.liw" "skinCluster6.lw[25]";
connectAttr "R_Ankle2.liw" "skinCluster6.lw[26]";
connectAttr "R_Heel.liw" "skinCluster6.lw[27]";
connectAttr "R_Foot.liw" "skinCluster6.lw[28]";
connectAttr "L_Leg.liw" "skinCluster6.lw[29]";
connectAttr "L_Knee.liw" "skinCluster6.lw[30]";
connectAttr "L_Ankle1.liw" "skinCluster6.lw[31]";
connectAttr "L_Ankle2.liw" "skinCluster6.lw[32]";
connectAttr "L_Heel.liw" "skinCluster6.lw[33]";
connectAttr "L_Foot.liw" "skinCluster6.lw[34]";
connectAttr "L_Wrist.obcc" "skinCluster6.ifcl[7]";
connectAttr "R_Wrist.obcc" "skinCluster6.ifcl[11]";
connectAttr "R_Leg.obcc" "skinCluster6.ifcl[23]";
connectAttr "R_Knee.obcc" "skinCluster6.ifcl[24]";
connectAttr "R_Ankle1.obcc" "skinCluster6.ifcl[25]";
connectAttr "R_Ankle2.obcc" "skinCluster6.ifcl[26]";
connectAttr "R_Heel.obcc" "skinCluster6.ifcl[27]";
connectAttr "R_Foot.obcc" "skinCluster6.ifcl[28]";
connectAttr "L_Leg.obcc" "skinCluster6.ifcl[29]";
connectAttr "L_Knee.obcc" "skinCluster6.ifcl[30]";
connectAttr "L_Ankle1.obcc" "skinCluster6.ifcl[31]";
connectAttr "L_Ankle2.obcc" "skinCluster6.ifcl[32]";
connectAttr "L_Heel.obcc" "skinCluster6.ifcl[33]";
connectAttr "L_Foot.obcc" "skinCluster6.ifcl[34]";
connectAttr "bindPose1.msg" "skinCluster6.bp";
connectAttr "R_Leg.msg" "skinCluster6.ptt";
connectAttr "skinCluster6GroupId.msg" "skinCluster6Set.gn" -na;
connectAttr "FootShape.iog.og[0]" "skinCluster6Set.dsm" -na;
connectAttr "skinCluster6.msg" "skinCluster6Set.ub[0]";
connectAttr "tweak6.og[0]" "skinCluster6GroupParts.ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6GroupParts.gi";
connectAttr "groupParts12.og" "tweak6.ip[0].ig";
connectAttr "groupId12.id" "tweak6.ip[0].gi";
connectAttr "groupId12.msg" "tweakSet6.gn" -na;
connectAttr "FootShape.iog.og[1]" "tweakSet6.dsm" -na;
connectAttr "tweak6.msg" "tweakSet6.ub[0]";
connectAttr "FootShapeOrig.w" "groupParts12.ig";
connectAttr "groupId12.id" "groupParts12.gi";
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
connectAttr "FloorPlaneShape.iog" ":initialShadingGroup.dsm" -na;
// End of Planet2_Boss_Charge.ma
