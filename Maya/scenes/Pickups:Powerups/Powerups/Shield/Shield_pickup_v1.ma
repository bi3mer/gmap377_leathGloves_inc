//Maya ASCII 2016 scene
//Name: Shield_pickup_v1.ma
//Last modified: Mon, Jan 25, 2016 01:38:37 AM
//Codeset: 1252
requires maya "2016";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201511301000-979500";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "AB3197F3-4325-9AF6-94B9-BE83EB716B51";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.5783742023288401 4.7182462511832011 -1.3956735778132874 ;
	setAttr ".r" -type "double3" 352.46164725799071 -971.39999999986549 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D2AB7F38-4583-6C6D-6B30-F5AEA49CD041";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 10.464386860635711;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "CC5222D1-49B5-1259-B906-8B91AD1A68F2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "9C7FE3B2-4D0E-1A31-19D5-3CB89658440F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "4064BE0A-43D3-6D78-66BE-44B526EE0E1D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B9E042E7-47E5-41E9-7C4F-A9B3A37F16F9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "D0DAB75E-429A-87DF-4F5D-59B5EEB4AFF7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "9527CC60-4ECF-BEEE-07C9-DBB2B0ABA768";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 0.86690457462059323;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "back";
	rename -uid "82537F9A-4850-49E1-1275-F9BB078B134B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 -100.1 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode camera -n "backShape" -p "back";
	rename -uid "8FD9AAE4-4ED0-09BE-8CBC-ECB712E42DED";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "back1";
	setAttr ".den" -type "string" "back1_depth";
	setAttr ".man" -type "string" "back1_mask";
	setAttr ".hc" -type "string" "viewSet -b %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	rename -uid "5CB3831B-4BA5-BBCE-F9EC-588277F96827";
	setAttr ".t" -type "double3" 8.7565504265579176e-016 3.9435997238097222 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 3.3990720685653795 3.3990720685653795 3.3990720685653795 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "23F29341-48DC-CF88-559D-9486902CF3DE";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.5740668773651123 0.22060713171958923 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 118 ".pt";
	setAttr ".pt[64]" -type "float3" -0.060285024 7.4868956e-005 0.019587817 ;
	setAttr ".pt[65]" -type "float3" -0.051281523 7.4868956e-005 0.037258178 ;
	setAttr ".pt[66]" -type "float3" -0.037258208 7.4868956e-005 0.051281493 ;
	setAttr ".pt[67]" -type "float3" -0.0195878 7.4868956e-005 0.060285009 ;
	setAttr ".pt[68]" -type "float3" 0.019587772 7.4868956e-005 0.060285009 ;
	setAttr ".pt[69]" -type "float3" 0.037258163 7.4868956e-005 0.051281478 ;
	setAttr ".pt[70]" -type "float3" 0.05128146 7.4868956e-005 0.037258163 ;
	setAttr ".pt[71]" -type "float3" 0.060284968 7.4868956e-005 0.019587761 ;
	setAttr ".pt[72]" -type "float3" 0.060284968 7.4868956e-005 -0.019587791 ;
	setAttr ".pt[73]" -type "float3" 0.05128146 7.4868956e-005 -0.037258193 ;
	setAttr ".pt[74]" -type "float3" 0.037258156 7.4868956e-005 -0.051281493 ;
	setAttr ".pt[75]" -type "float3" 0.019587761 7.4868956e-005 -0.060285009 ;
	setAttr ".pt[76]" -type "float3" -0.019587779 7.4868956e-005 -0.060285009 ;
	setAttr ".pt[77]" -type "float3" -0.037258208 7.4868956e-005 -0.051281493 ;
	setAttr ".pt[78]" -type "float3" -0.051281486 7.4868956e-005 -0.037258178 ;
	setAttr ".pt[79]" -type "float3" -0.060284968 7.4868956e-005 -0.019587791 ;
	setAttr ".pt[221]" -type "float3" -0.048019327 -0.00016519782 0.01560241 ;
	setAttr ".pt[222]" -type "float3" -0.051281523 0.0034184917 0.037258178 ;
	setAttr ".pt[225]" -type "float3" -0.037258208 0.0034184917 0.051281493 ;
	setAttr ".pt[227]" -type "float3" -0.015602431 -0.00016519782 0.048019312 ;
	setAttr ".pt[229]" -type "float3" -1.5112709e-008 -0.00016519782 0.050490484 ;
	setAttr ".pt[231]" -type "float3" 0.015602396 -0.00016519782 0.048019312 ;
	setAttr ".pt[233]" -type "float3" 0.037258163 0.0034184917 0.051281478 ;
	setAttr ".pt[235]" -type "float3" 0.05128146 0.0034184917 0.037258163 ;
	setAttr ".pt[237]" -type "float3" 0.048019271 -0.00016519782 0.015602396 ;
	setAttr ".pt[239]" -type "float3" 0.050490443 -0.00016519782 -1.203786e-008 ;
	setAttr ".pt[241]" -type "float3" 0.048019271 -0.00016519782 -0.015602428 ;
	setAttr ".pt[243]" -type "float3" 0.05128146 0.0034184917 -0.037258193 ;
	setAttr ".pt[245]" -type "float3" 0.037258156 0.0034184917 -0.051281493 ;
	setAttr ".pt[247]" -type "float3" 0.015602392 -0.00016519782 -0.048019312 ;
	setAttr ".pt[249]" -type "float3" -1.5112709e-008 -0.00016519782 -0.050490484 ;
	setAttr ".pt[251]" -type "float3" -0.015602421 -0.00016519782 -0.048019312 ;
	setAttr ".pt[253]" -type "float3" -0.037258208 0.0034184917 -0.051281493 ;
	setAttr ".pt[255]" -type "float3" -0.051281478 0.0034184917 -0.037258178 ;
	setAttr ".pt[257]" -type "float3" -0.048019271 -0.00016519782 -0.015602428 ;
	setAttr ".pt[259]" -type "float3" -0.050490484 -0.00016519782 -1.203786e-008 ;
	setAttr ".pt[395]" -type "float3" -0.06232832 0.0022909259 0.020251643 ;
	setAttr ".pt[396]" -type "float3" -0.065535679 0.0022909259 -1.4145254e-008 ;
	setAttr ".pt[397]" -type "float3" -0.062328186 0.0022909259 -0.020251658 ;
	setAttr ".pt[398]" -type "float3" -0.052945547 0.0034184917 -0.038467191 ;
	setAttr ".pt[399]" -type "float3" -0.038467199 0.0034184917 -0.052945539 ;
	setAttr ".pt[400]" -type "float3" -0.020251658 0.0022909259 -0.062328186 ;
	setAttr ".pt[401]" -type "float3" -1.5112709e-008 0.0022909259 -0.065535709 ;
	setAttr ".pt[402]" -type "float3" 0.020251635 0.0022909259 -0.062328186 ;
	setAttr ".pt[403]" -type "float3" 0.038467161 0.0034184917 -0.052945547 ;
	setAttr ".pt[404]" -type "float3" 0.052945502 0.0034184917 -0.038467199 ;
	setAttr ".pt[405]" -type "float3" 0.062328145 0.0022909259 -0.020251662 ;
	setAttr ".pt[406]" -type "float3" 0.065535679 0.0022909259 -1.4145254e-008 ;
	setAttr ".pt[407]" -type "float3" 0.062328145 0.0022909259 0.020251639 ;
	setAttr ".pt[408]" -type "float3" 0.052945536 0.0034184917 0.038467169 ;
	setAttr ".pt[409]" -type "float3" 0.038467169 0.0034184917 0.052945539 ;
	setAttr ".pt[410]" -type "float3" 0.020251639 0.0022909259 0.062328145 ;
	setAttr ".pt[411]" -type "float3" -1.5112709e-008 0.0022909259 0.065535724 ;
	setAttr ".pt[412]" -type "float3" -0.020251676 0.0022909259 0.062328145 ;
	setAttr ".pt[413]" -type "float3" -0.038467214 0.0034184917 0.052945547 ;
	setAttr ".pt[414]" -type "float3" -0.052945562 0.0034184917 0.038467169 ;
	setAttr ".pt[435]" -type "float3" -0.064005628 0.0025788548 0.020796657 ;
	setAttr ".pt[436]" -type "float3" -0.067299411 0.0025788525 -1.4392302e-008 ;
	setAttr ".pt[437]" -type "float3" -0.064005569 0.0025788548 -0.020796681 ;
	setAttr ".pt[438]" -type "float3" -0.054391325 0.0034184917 -0.039517608 ;
	setAttr ".pt[439]" -type "float3" -0.03951763 0.0034184936 -0.054391295 ;
	setAttr ".pt[440]" -type "float3" -0.020796711 0.0025788525 -0.064005569 ;
	setAttr ".pt[441]" -type "float3" -1.5112709e-008 0.0025788525 -0.067299441 ;
	setAttr ".pt[442]" -type "float3" 0.020796645 0.0025788525 -0.064005569 ;
	setAttr ".pt[443]" -type "float3" 0.039517496 0.0034184917 -0.054391325 ;
	setAttr ".pt[444]" -type "float3" 0.05439128 0.0034184917 -0.039517608 ;
	setAttr ".pt[445]" -type "float3" 0.064005569 0.0025788548 -0.020796711 ;
	setAttr ".pt[446]" -type "float3" 0.067299411 0.0025788525 -1.4392302e-008 ;
	setAttr ".pt[447]" -type "float3" 0.064005569 0.0025788548 0.020796645 ;
	setAttr ".pt[448]" -type "float3" 0.05439128 0.0034184917 0.039517555 ;
	setAttr ".pt[449]" -type "float3" 0.03951757 0.0034184917 0.054391295 ;
	setAttr ".pt[450]" -type "float3" 0.020796649 0.0025788548 0.064005569 ;
	setAttr ".pt[451]" -type "float3" -1.5112709e-008 0.0025788525 0.067299441 ;
	setAttr ".pt[452]" -type "float3" -0.020796688 0.0025788548 0.064005569 ;
	setAttr ".pt[453]" -type "float3" -0.039517641 0.0034184917 0.054391325 ;
	setAttr ".pt[454]" -type "float3" -0.054391339 0.0034184917 0.03951757 ;
	setAttr ".pt[455]" -type "float3" -0.064005628 0.079368897 0.020796657 ;
	setAttr ".pt[456]" -type "float3" -0.067299411 0.079368897 -1.4392302e-008 ;
	setAttr ".pt[457]" -type "float3" 0 0.082787439 0 ;
	setAttr ".pt[458]" -type "float3" 0 0.082787439 0 ;
	setAttr ".pt[459]" -type "float3" -0.064005569 0.079368897 -0.020796681 ;
	setAttr ".pt[460]" -type "float3" 0 0.082787439 0 ;
	setAttr ".pt[461]" -type "float3" -0.054391325 0.080208629 -0.039517608 ;
	setAttr ".pt[462]" -type "float3" 0 0.082787439 0 ;
	setAttr ".pt[463]" -type "float3" -0.03951763 0.080208629 -0.054391295 ;
	setAttr ".pt[464]" -type "float3" 0 0.082787439 0 ;
	setAttr ".pt[465]" -type "float3" -0.020796711 0.079368897 -0.064005569 ;
	setAttr ".pt[466]" -type "float3" 0 0.082787439 0 ;
	setAttr ".pt[467]" -type "float3" -1.5112709e-008 0.079368897 -0.067299441 ;
	setAttr ".pt[468]" -type "float3" 0 0.082787439 0 ;
	setAttr ".pt[469]" -type "float3" 0.020796645 0.079368897 -0.064005569 ;
	setAttr ".pt[470]" -type "float3" 0 0.082787439 0 ;
	setAttr ".pt[471]" -type "float3" 0.039517496 0.080208629 -0.054391325 ;
	setAttr ".pt[472]" -type "float3" 0 0.082787439 0 ;
	setAttr ".pt[473]" -type "float3" 0.05439128 0.080208629 -0.039517608 ;
	setAttr ".pt[474]" -type "float3" 0 0.082787439 0 ;
	setAttr ".pt[475]" -type "float3" 0.064005569 0.079368897 -0.020796711 ;
	setAttr ".pt[476]" -type "float3" 0 0.082787439 0 ;
	setAttr ".pt[477]" -type "float3" 0.067299411 0.079368897 -1.4392302e-008 ;
	setAttr ".pt[478]" -type "float3" 0 0.082787439 0 ;
	setAttr ".pt[479]" -type "float3" 0.064005569 0.079368897 0.020796645 ;
	setAttr ".pt[480]" -type "float3" 0 0.082787439 0 ;
	setAttr ".pt[481]" -type "float3" 0.05439128 0.080208629 0.039517555 ;
	setAttr ".pt[482]" -type "float3" 0 0.082787439 0 ;
	setAttr ".pt[483]" -type "float3" 0.03951757 0.080208629 0.054391295 ;
	setAttr ".pt[484]" -type "float3" 0 0.082787439 0 ;
	setAttr ".pt[485]" -type "float3" 0.020796649 0.079368897 0.064005569 ;
	setAttr ".pt[486]" -type "float3" 0 0.082787439 0 ;
	setAttr ".pt[487]" -type "float3" -1.5112709e-008 0.079368897 0.067299441 ;
	setAttr ".pt[488]" -type "float3" 0 0.082787439 0 ;
	setAttr ".pt[489]" -type "float3" -0.020796688 0.079368897 0.064005569 ;
	setAttr ".pt[490]" -type "float3" 0 0.082787439 0 ;
	setAttr ".pt[491]" -type "float3" -0.039517641 0.080208629 0.054391325 ;
	setAttr ".pt[492]" -type "float3" 0 0.082787439 0 ;
	setAttr ".pt[493]" -type "float3" -0.054391339 0.080208629 0.03951757 ;
	setAttr ".pt[494]" -type "float3" 0 0.082787439 0 ;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "7814DE89-415F-544F-CE54-82BF9F71F819";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "1D5A9B12-4CD7-55BA-D802-F39286C4B118";
createNode displayLayer -n "defaultLayer";
	rename -uid "8DE8D6DC-403A-C67F-662B-F881F6FA4ECF";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "FB4C30B6-4368-AEFB-947D-47BC1A557644";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D40AEAA0-49E5-7DA9-6901-EFB4EC64F61E";
	setAttr ".g" yes;
createNode lambert -n "Fire_mtl";
	rename -uid "0ADA33B0-4D38-E374-FA64-B0A294A5DB42";
	setAttr ".c" -type "float3" 1 0.034000002 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "1698E6BD-4C6A-C5B0-8EEA-45974138D5EB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "1F50A438-4B5D-7AFB-0F1A-CE9E65F361DB";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "4BDA81F2-4591-AA37-0226-5C8DBA5B8A43";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 224\n                -height 329\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 224\n            -height 329\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 224\n                -height 329\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 224\n            -height 329\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 224\n                -height 329\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 224\n            -height 329\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 454\n                -height 703\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 454\n            -height 703\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 454\\n    -height 703\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 454\\n    -height 703\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "438951D5-46D7-6254-6A8C-939964B82623";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 47 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "E003EB51-4CC7-3993-ADFB-0AABCF2A4F1D";
	setAttr ".sh" 6;
	setAttr ".sc" 8;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "6244A005-417C-FCA0-12A0-728B3DDED2CF";
	setAttr ".ics" -type "componentList" 2 "f[0:39]" "f[400:419]";
	setAttr ".ix" -type "matrix" 7.5474561457630861e-016 3.3990720685653795 0 0 -3.3990720685653795 7.5474561457630861e-016 0 0
		 0 0 3.3990720685653795 0 8.7565504265579176e-016 3.9435997238097222 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.83692759 3.9435995 -2.0260049e-007 ;
	setAttr ".rs" 55968;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.83692760371628516 2.6689473941969801 -1.2746526335134669 ;
	setAttr ".cbx" -type "double3" 0.83692760371628583 5.2182517495217393 1.2746522283125006 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "2089290E-48D9-1BF0-8924-638AE07CFA67";
	setAttr ".uopa" yes;
	setAttr -s 422 ".tk";
	setAttr ".tk[0:165]" -type "float3"  -8.3266727e-016 0.75377762 4.1633363e-016
		 -8.3266727e-016 0.75377762 8.3266727e-016 -8.3266727e-016 0.75377762 8.3266727e-016
		 -4.2327253e-016 0.75377762 8.3266727e-016 -1.6737225e-016 0.75377762 1.6653345e-015
		 4.0939474e-016 0.75377762 8.3266727e-016 8.3266727e-016 0.75377762 8.3266727e-016
		 8.3266727e-016 0.75377762 8.3266727e-016 8.3266727e-016 0.75377762 4.1633363e-016
		 1.6653345e-015 0.75377762 0 8.3266727e-016 0.75377762 -4.1633363e-016 8.3266727e-016
		 0.75377762 -8.3266727e-016 8.3266727e-016 0.75377762 -8.3266727e-016 4.0939474e-016
		 0.75377762 -8.3266727e-016 -1.6737224e-016 0.75377762 -1.6653345e-015 -4.2327253e-016
		 0.75377762 -8.3266727e-016 -8.3266727e-016 0.75377762 -8.3266727e-016 -8.3266727e-016
		 0.75377762 -8.3266727e-016 -8.3266727e-016 0.75377762 -4.1633363e-016 -8.3266727e-016
		 0.75377762 0 -1.6653345e-015 0.75377762 8.3266727e-016 -1.6653345e-015 0.75377762
		 1.6653345e-015 -1.6653345e-015 0.75377762 1.6653345e-015 -8.3266727e-016 0.75377762
		 1.6653345e-015 -1.6737225e-016 0.75377762 3.3306691e-015 8.3266727e-016 0.75377762
		 1.6653345e-015 1.6653345e-015 0.75377762 1.6653345e-015 1.6653345e-015 0.75377762
		 1.6653345e-015 1.6653345e-015 0.75377762 8.3266727e-016 3.3306691e-015 0.75377762
		 0 1.6653345e-015 0.75377762 -8.3266727e-016 1.6653345e-015 0.75377762 -1.6653345e-015
		 1.6653345e-015 0.75377762 -1.6653345e-015 8.3266727e-016 0.75377762 -1.6653345e-015
		 -1.6737216e-016 0.75377762 -3.3306691e-015 -8.3266727e-016 0.75377762 -1.6653345e-015
		 -1.6653345e-015 0.75377762 -1.6653345e-015 -1.6653345e-015 0.75377762 -1.6653345e-015
		 -1.6653345e-015 0.75377762 -8.3266727e-016 -1.6653345e-015 0.75377762 0 -3.3306691e-015
		 0.75377762 8.3266727e-016 -3.3306691e-015 0.75377762 1.6653345e-015 -1.6653345e-015
		 0.75377762 3.3306691e-015 -8.3266727e-016 0.75377762 3.3306691e-015 -1.6737225e-016
		 0.75377762 3.3306691e-015 8.3266727e-016 0.75377762 3.3306691e-015 1.6653345e-015
		 0.75377762 3.3306691e-015 3.3306691e-015 0.75377762 1.6653345e-015 3.3306691e-015
		 0.75377762 8.3266727e-016 3.3306691e-015 0.75377762 0 3.3306691e-015 0.75377762 -8.3266727e-016
		 3.3306691e-015 0.75377762 -1.6653345e-015 1.6653345e-015 0.75377762 -3.3306691e-015
		 8.3266727e-016 0.75377762 -3.3306691e-015 -1.6737215e-016 0.75377762 -3.3306691e-015
		 -8.3266727e-016 0.75377762 -3.3306691e-015 -1.6653345e-015 0.75377762 -3.3306691e-015
		 -3.3306691e-015 0.75377762 -1.6653345e-015 -3.3306691e-015 0.75377762 -8.3266727e-016
		 -3.3306691e-015 0.75377762 0 -3.3306691e-015 0.75377762 1.6653345e-015 -3.3306691e-015
		 0.75377762 3.3306691e-015 -3.3306691e-015 0.75377762 3.3306691e-015 -1.6653345e-015
		 0.75377762 3.3306691e-015 -1.6737225e-016 0.75377762 6.6613381e-015 1.6653345e-015
		 0.75377762 3.3306691e-015 3.3306691e-015 0.75377762 3.3306691e-015 3.3306691e-015
		 0.75377762 3.3306691e-015 3.3306691e-015 0.75377762 1.6653345e-015 6.6613381e-015
		 0.75377762 0 3.3306691e-015 0.75377762 -1.6653345e-015 3.3306691e-015 0.75377762
		 -3.3306691e-015 3.3306691e-015 0.75377762 -3.3306691e-015 1.6653345e-015 0.75377762
		 -3.3306691e-015 -1.673721e-016 0.75377762 -6.6613381e-015 -1.6653345e-015 0.75377762
		 -3.3306691e-015 -3.3306691e-015 0.75377762 -3.3306691e-015 -3.3306691e-015 0.75377762
		 -3.3306691e-015 -3.3306691e-015 0.75377762 -1.6653345e-015 -3.3306691e-015 0.75377762
		 0 -6.6613381e-015 0.75377762 1.6653345e-015 -6.6613381e-015 0.75377762 3.3306691e-015
		 -3.3306691e-015 0.75377762 6.6613381e-015 -1.6653345e-015 0.75377762 6.6613381e-015
		 -1.6737225e-016 0.75377762 6.6613381e-015 1.6653345e-015 0.75377762 6.6613381e-015
		 3.3306691e-015 0.75377762 6.6613381e-015 6.6613381e-015 0.75377762 3.3306691e-015
		 6.6613381e-015 0.75377762 1.6653345e-015 6.6613381e-015 0.75377762 0 6.6613381e-015
		 0.75377762 -1.6653345e-015 6.6613381e-015 0.75377762 -3.3306691e-015 3.3306691e-015
		 0.75377762 -6.6613381e-015 1.6653345e-015 0.75377762 -6.6613381e-015 -1.6737196e-016
		 0.75377762 -6.6613381e-015 -1.6653345e-015 0.75377762 -6.6613381e-015 -3.3306691e-015
		 0.75377762 -6.6613381e-015 -6.6613381e-015 0.75377762 -3.3306691e-015 -6.6613381e-015
		 0.75377762 -1.6653345e-015 -6.6613381e-015 0.75377762 0 -6.6613381e-015 0.75377762
		 1.6653345e-015 -6.6613381e-015 0.75377762 3.3306691e-015 -3.3306691e-015 0.75377762
		 6.6613381e-015 -1.6653345e-015 0.75377762 6.6613381e-015 -1.6737225e-016 0.75377762
		 6.6613381e-015 1.6653345e-015 0.75377762 6.6613381e-015 3.3306691e-015 0.75377762
		 6.6613381e-015 6.6613381e-015 0.75377762 3.3306691e-015 6.6613381e-015 0.75377762
		 1.6653345e-015 6.6613381e-015 0.75377762 0 6.6613381e-015 0.75377762 -1.6653345e-015
		 6.6613381e-015 0.75377762 -3.3306691e-015 3.3306691e-015 0.75377762 -6.6613381e-015
		 1.6653345e-015 0.75377762 -6.6613381e-015 -1.6737196e-016 0.75377762 -6.6613381e-015
		 -1.6653345e-015 0.75377762 -6.6613381e-015 -3.3306691e-015 0.75377762 -6.6613381e-015
		 -6.6613381e-015 0.75377762 -3.3306691e-015 -6.6613381e-015 0.75377762 -1.6653345e-015
		 -6.6613381e-015 0.75377762 0 -6.6613381e-015 0.75377762 3.3306691e-015 -6.6613381e-015
		 0.75377762 6.6613381e-015 -6.6613381e-015 0.75377762 6.6613381e-015 -3.3306691e-015
		 0.75377762 6.6613381e-015 -1.6737225e-016 0.75377762 6.6613381e-015 3.3306691e-015
		 0.75377762 6.6613381e-015 6.6613381e-015 0.75377762 6.6613381e-015 6.6613381e-015
		 0.75377762 6.6613381e-015 6.6613381e-015 0.75377762 3.3306691e-015 6.6613381e-015
		 0.75377762 0 6.6613381e-015 0.75377762 -3.3306691e-015 6.6613381e-015 0.75377762
		 -6.6613381e-015 6.6613381e-015 0.75377762 -6.6613381e-015 3.3306691e-015 0.75377762
		 -6.6613381e-015 -1.6737196e-016 0.75377762 -6.6613381e-015 -3.3306691e-015 0.75377762
		 -6.6613381e-015 -6.6613381e-015 0.75377762 -6.6613381e-015 -6.6613381e-015 0.75377762
		 -6.6613381e-015 -6.6613381e-015 0.75377762 -3.3306691e-015 -6.6613381e-015 0.75377762
		 0 -6.6613381e-015 0.75377762 3.3306691e-015 -6.6613381e-015 0.75377762 6.6613381e-015
		 -6.6613381e-015 0.75377762 6.6613381e-015 -3.3306691e-015 0.75377762 6.6613381e-015
		 -1.6737225e-016 0.75377762 1.3322676e-014 3.3306691e-015 0.75377762 6.6613381e-015
		 6.6613381e-015 0.75377762 6.6613381e-015 6.6613381e-015 0.75377762 6.6613381e-015
		 6.6613381e-015 0.75377762 3.3306691e-015 1.3322676e-014 0.75377762 0 6.6613381e-015
		 0.75377762 -3.3306691e-015 6.6613381e-015 0.75377762 -6.6613381e-015 6.6613381e-015
		 0.75377762 -6.6613381e-015 3.3306691e-015 0.75377762 -6.6613381e-015 -1.6737199e-016
		 0.75377762 -1.3322676e-014 -3.3306691e-015 0.75377762 -6.6613381e-015 -6.6613381e-015
		 0.75377762 -6.6613381e-015 -6.6613381e-015 0.75377762 -6.6613381e-015 -6.6613381e-015
		 0.75377762 -3.3306691e-015 -6.6613381e-015 0.75377762 0 -6.6613381e-015 0.5025183
		 3.3306691e-015 -6.6613381e-015 0.5025183 6.6613381e-015 -6.6613381e-015 0.5025183
		 6.6613381e-015 -3.3306691e-015 0.5025183 6.6613381e-015 -1.1158148e-016 0.5025183
		 1.3322676e-014 3.3306691e-015 0.5025183 6.6613381e-015;
	setAttr ".tk[166:331]" 6.6613381e-015 0.5025183 6.6613381e-015 6.6613381e-015
		 0.5025183 6.6613381e-015 6.6613381e-015 0.5025183 3.3306691e-015 1.3322676e-014 0.5025183
		 0 6.6613381e-015 0.5025183 -3.3306691e-015 6.6613381e-015 0.5025183 -6.6613381e-015
		 6.6613381e-015 0.5025183 -6.6613381e-015 3.3306691e-015 0.5025183 -6.6613381e-015
		 -1.115813e-016 0.5025183 -1.3322676e-014 -3.3306691e-015 0.5025183 -6.6613381e-015
		 -6.6613381e-015 0.5025183 -6.6613381e-015 -6.6613381e-015 0.5025183 -6.6613381e-015
		 -6.6613381e-015 0.5025183 -3.3306691e-015 -6.6613381e-015 0.5025183 0 -6.6613381e-015
		 0.25125912 3.3306691e-015 -6.6613381e-015 0.25125912 6.6613381e-015 -6.6613381e-015
		 0.25125912 6.6613381e-015 -3.3306691e-015 0.25125912 6.6613381e-015 -5.5790732e-017
		 0.25125912 1.3322676e-014 3.3306691e-015 0.25125912 6.6613381e-015 6.6613381e-015
		 0.25125912 6.6613381e-015 6.6613381e-015 0.25125912 6.6613381e-015 6.6613381e-015
		 0.25125912 3.3306691e-015 1.3322676e-014 0.25125912 0 6.6613381e-015 0.25125912 -3.3306691e-015
		 6.6613381e-015 0.25125912 -6.6613381e-015 6.6613381e-015 0.25125912 -6.6613381e-015
		 3.3306691e-015 0.25125912 -6.6613381e-015 -5.579056e-017 0.25125912 -1.3322676e-014
		 -3.3306691e-015 0.25125912 -6.6613381e-015 -6.6613381e-015 0.25125912 -6.6613381e-015
		 -6.6613381e-015 0.25125912 -6.6613381e-015 -6.6613381e-015 0.25125912 -3.3306691e-015
		 -6.6613381e-015 0.25125912 0 -6.6613381e-015 -4.4928647e-008 3.3306691e-015 -6.6613381e-015
		 -4.4928647e-008 6.6613381e-015 -6.6613381e-015 -4.4928647e-008 6.6613381e-015 -3.3306691e-015
		 -4.4928647e-008 6.6613381e-015 9.9761638e-024 -4.4928647e-008 1.3322676e-014 3.3306691e-015
		 -4.4928647e-008 6.6613381e-015 6.6613381e-015 -4.4928647e-008 6.6613381e-015 6.6613381e-015
		 -4.4928647e-008 6.6613381e-015 6.6613381e-015 -4.4928647e-008 3.3306691e-015 1.3322676e-014
		 -4.4928647e-008 0 6.6613381e-015 -4.4928647e-008 -3.3306691e-015 6.6613381e-015 -4.4928647e-008
		 -6.6613381e-015 6.6613381e-015 -4.4928647e-008 -6.6613381e-015 3.3306691e-015 -4.4928647e-008
		 -6.6613381e-015 1.9852335e-022 -4.4928647e-008 -1.3322676e-014 -3.3306691e-015 -4.4928647e-008
		 -6.6613381e-015 -6.6613381e-015 -4.4928647e-008 -6.6613381e-015 -6.6613381e-015 -4.4928647e-008
		 -6.6613381e-015 -6.6613381e-015 -4.4928647e-008 -3.3306691e-015 -6.6613381e-015 -4.4928647e-008
		 0 -6.6613381e-015 -0.25125924 3.3306691e-015 -6.6613381e-015 -0.25125924 6.6613381e-015
		 -6.6613381e-015 -0.25125924 6.6613381e-015 -3.3306691e-015 -0.25125924 6.6613381e-015
		 5.5790758e-017 -0.25125924 1.3322676e-014 3.3306691e-015 -0.25125924 6.6613381e-015
		 6.6613381e-015 -0.25125924 6.6613381e-015 6.6613381e-015 -0.25125924 6.6613381e-015
		 6.6613381e-015 -0.25125924 3.3306691e-015 1.3322676e-014 -0.25125924 0 6.6613381e-015
		 -0.25125924 -3.3306691e-015 6.6613381e-015 -0.25125924 -6.6613381e-015 6.6613381e-015
		 -0.25125924 -6.6613381e-015 3.3306691e-015 -0.25125924 -6.6613381e-015 5.5790963e-017
		 -0.25125924 -1.3322676e-014 -3.3306691e-015 -0.25125924 -6.6613381e-015 -6.6613381e-015
		 -0.25125924 -6.6613381e-015 -6.6613381e-015 -0.25125924 -6.6613381e-015 -6.6613381e-015
		 -0.25125924 -3.3306691e-015 -6.6613381e-015 -0.25125924 0 -6.6613381e-015 -0.50251842
		 3.3306691e-015 -6.6613381e-015 -0.50251842 6.6613381e-015 -6.6613381e-015 -0.50251842
		 6.6613381e-015 -3.3306691e-015 -0.50251842 6.6613381e-015 1.115815e-016 -0.50251842
		 1.3322676e-014 3.3306691e-015 -0.50251842 6.6613381e-015 6.6613381e-015 -0.50251842
		 6.6613381e-015 6.6613381e-015 -0.50251842 6.6613381e-015 6.6613381e-015 -0.50251842
		 3.3306691e-015 1.3322676e-014 -0.50251842 0 6.6613381e-015 -0.50251842 -3.3306691e-015
		 6.6613381e-015 -0.50251842 -6.6613381e-015 6.6613381e-015 -0.50251842 -6.6613381e-015
		 3.3306691e-015 -0.50251842 -6.6613381e-015 1.1158166e-016 -0.50251842 -1.3322676e-014
		 -3.3306691e-015 -0.50251842 -6.6613381e-015 -6.6613381e-015 -0.50251842 -6.6613381e-015
		 -6.6613381e-015 -0.50251842 -6.6613381e-015 -6.6613381e-015 -0.50251842 -3.3306691e-015
		 -6.6613381e-015 -0.50251842 0 -6.6613381e-015 -0.75377762 3.3306691e-015 -6.6613381e-015
		 -0.75377762 6.6613381e-015 -6.6613381e-015 -0.75377762 6.6613381e-015 -3.3306691e-015
		 -0.75377762 6.6613381e-015 1.6737225e-016 -0.75377762 1.3322676e-014 3.3306691e-015
		 -0.75377762 6.6613381e-015 6.6613381e-015 -0.75377762 6.6613381e-015 6.6613381e-015
		 -0.75377762 6.6613381e-015 6.6613381e-015 -0.75377762 3.3306691e-015 1.3322676e-014
		 -0.75377762 0 6.6613381e-015 -0.75377762 -3.3306691e-015 6.6613381e-015 -0.75377762
		 -6.6613381e-015 6.6613381e-015 -0.75377762 -6.6613381e-015 3.3306691e-015 -0.75377762
		 -6.6613381e-015 1.6737245e-016 -0.75377762 -1.3322676e-014 -3.3306691e-015 -0.75377762
		 -6.6613381e-015 -6.6613381e-015 -0.75377762 -6.6613381e-015 -6.6613381e-015 -0.75377762
		 -6.6613381e-015 -6.6613381e-015 -0.75377762 -3.3306691e-015 -6.6613381e-015 -0.75377762
		 0 -6.6613381e-015 -0.75377762 3.3306691e-015 -6.6613381e-015 -0.75377762 6.6613381e-015
		 -6.6613381e-015 -0.75377762 6.6613381e-015 -3.3306691e-015 -0.75377762 6.6613381e-015
		 1.6737225e-016 -0.75377762 6.6613381e-015 3.3306691e-015 -0.75377762 6.6613381e-015
		 6.6613381e-015 -0.75377762 6.6613381e-015 6.6613381e-015 -0.75377762 6.6613381e-015
		 6.6613381e-015 -0.75377762 3.3306691e-015 6.6613381e-015 -0.75377762 0 6.6613381e-015
		 -0.75377762 -3.3306691e-015 6.6613381e-015 -0.75377762 -6.6613381e-015 6.6613381e-015
		 -0.75377762 -6.6613381e-015 3.3306691e-015 -0.75377762 -6.6613381e-015 1.6737245e-016
		 -0.75377762 -6.6613381e-015 -3.3306691e-015 -0.75377762 -6.6613381e-015 -6.6613381e-015
		 -0.75377762 -6.6613381e-015 -6.6613381e-015 -0.75377762 -6.6613381e-015 -6.6613381e-015
		 -0.75377762 -3.3306691e-015 -6.6613381e-015 -0.75377762 0 -6.6613381e-015 -0.75377762
		 1.6653345e-015 -6.6613381e-015 -0.75377762 3.3306691e-015 -3.3306691e-015 -0.75377762
		 6.6613381e-015 -1.6653345e-015 -0.75377762 6.6613381e-015 1.6737225e-016 -0.75377762
		 6.6613381e-015 1.6653345e-015 -0.75377762 6.6613381e-015 3.3306691e-015 -0.75377762
		 6.6613381e-015 6.6613381e-015 -0.75377762 3.3306691e-015 6.6613381e-015 -0.75377762
		 1.6653345e-015 6.6613381e-015 -0.75377762 0 6.6613381e-015 -0.75377762 -1.6653345e-015
		 6.6613381e-015 -0.75377762 -3.3306691e-015 3.3306691e-015 -0.75377762 -6.6613381e-015
		 1.6653345e-015 -0.75377762 -6.6613381e-015 1.6737245e-016 -0.75377762 -6.6613381e-015
		 -1.6653345e-015 -0.75377762 -6.6613381e-015 -3.3306691e-015 -0.75377762 -6.6613381e-015
		 -6.6613381e-015 -0.75377762 -3.3306691e-015 -6.6613381e-015 -0.75377762 -1.6653345e-015
		 -6.6613381e-015 -0.75377762 0 -6.6613381e-015 -0.75377762 1.6653345e-015 -6.6613381e-015
		 -0.75377762 3.3306691e-015 -3.3306691e-015 -0.75377762 6.6613381e-015 -1.6653345e-015
		 -0.75377762 6.6613381e-015 1.6737225e-016 -0.75377762 6.6613381e-015 1.6653345e-015
		 -0.75377762 6.6613381e-015 3.3306691e-015 -0.75377762 6.6613381e-015 6.6613381e-015
		 -0.75377762 3.3306691e-015 6.6613381e-015 -0.75377762 1.6653345e-015 6.6613381e-015
		 -0.75377762 0 6.6613381e-015 -0.75377762 -1.6653345e-015 6.6613381e-015 -0.75377762
		 -3.3306691e-015;
	setAttr ".tk[332:421]" 3.3306691e-015 -0.75377762 -6.6613381e-015 1.6653345e-015
		 -0.75377762 -6.6613381e-015 1.6737245e-016 -0.75377762 -6.6613381e-015 -1.6653345e-015
		 -0.75377762 -6.6613381e-015 -3.3306691e-015 -0.75377762 -6.6613381e-015 -6.6613381e-015
		 -0.75377762 -3.3306691e-015 -6.6613381e-015 -0.75377762 -1.6653345e-015 -6.6613381e-015
		 -0.75377762 0 -3.3306691e-015 -0.75377762 1.6653345e-015 -3.3306691e-015 -0.75377762
		 3.3306691e-015 -3.3306691e-015 -0.75377762 3.3306691e-015 -1.6653345e-015 -0.75377762
		 3.3306691e-015 1.6737225e-016 -0.75377762 6.6613381e-015 1.6653345e-015 -0.75377762
		 3.3306691e-015 3.3306691e-015 -0.75377762 3.3306691e-015 3.3306691e-015 -0.75377762
		 3.3306691e-015 3.3306691e-015 -0.75377762 1.6653345e-015 6.6613381e-015 -0.75377762
		 0 3.3306691e-015 -0.75377762 -1.6653345e-015 3.3306691e-015 -0.75377762 -3.3306691e-015
		 3.3306691e-015 -0.75377762 -3.3306691e-015 1.6653345e-015 -0.75377762 -3.3306691e-015
		 1.6737232e-016 -0.75377762 -6.6613381e-015 -1.6653345e-015 -0.75377762 -3.3306691e-015
		 -3.3306691e-015 -0.75377762 -3.3306691e-015 -3.3306691e-015 -0.75377762 -3.3306691e-015
		 -3.3306691e-015 -0.75377762 -1.6653345e-015 -3.3306691e-015 -0.75377762 0 -3.3306691e-015
		 -0.75377762 8.3266727e-016 -3.3306691e-015 -0.75377762 1.6653345e-015 -1.6653345e-015
		 -0.75377762 3.3306691e-015 -8.3266727e-016 -0.75377762 3.3306691e-015 1.6737225e-016
		 -0.75377762 3.3306691e-015 8.3266727e-016 -0.75377762 3.3306691e-015 1.6653345e-015
		 -0.75377762 3.3306691e-015 3.3306691e-015 -0.75377762 1.6653345e-015 3.3306691e-015
		 -0.75377762 8.3266727e-016 3.3306691e-015 -0.75377762 0 3.3306691e-015 -0.75377762
		 -8.3266727e-016 3.3306691e-015 -0.75377762 -1.6653345e-015 1.6653345e-015 -0.75377762
		 -3.3306691e-015 8.3266727e-016 -0.75377762 -3.3306691e-015 1.6737232e-016 -0.75377762
		 -3.3306691e-015 -8.3266727e-016 -0.75377762 -3.3306691e-015 -1.6653345e-015 -0.75377762
		 -3.3306691e-015 -3.3306691e-015 -0.75377762 -1.6653345e-015 -3.3306691e-015 -0.75377762
		 -8.3266727e-016 -3.3306691e-015 -0.75377762 0 -1.6653345e-015 -0.75377762 8.3266727e-016
		 -1.6653345e-015 -0.75377762 1.6653345e-015 -1.6653345e-015 -0.75377762 1.6653345e-015
		 -8.3266727e-016 -0.75377762 1.6653345e-015 1.6737225e-016 -0.75377762 3.3306691e-015
		 8.3266727e-016 -0.75377762 1.6653345e-015 1.6653345e-015 -0.75377762 1.6653345e-015
		 1.6653345e-015 -0.75377762 1.6653345e-015 1.6653345e-015 -0.75377762 8.3266727e-016
		 3.3306691e-015 -0.75377762 0 1.6653345e-015 -0.75377762 -8.3266727e-016 1.6653345e-015
		 -0.75377762 -1.6653345e-015 1.6653345e-015 -0.75377762 -1.6653345e-015 8.3266727e-016
		 -0.75377762 -1.6653345e-015 1.6737229e-016 -0.75377762 -3.3306691e-015 -8.3266727e-016
		 -0.75377762 -1.6653345e-015 -1.6653345e-015 -0.75377762 -1.6653345e-015 -1.6653345e-015
		 -0.75377762 -1.6653345e-015 -1.6653345e-015 -0.75377762 -8.3266727e-016 -1.6653345e-015
		 -0.75377762 0 -8.3266727e-016 -0.75377762 4.1633363e-016 -8.3266727e-016 -0.75377762
		 8.3266727e-016 -8.3266727e-016 -0.75377762 8.3266727e-016 -4.0939474e-016 -0.75377762
		 8.3266727e-016 1.6737225e-016 -0.75377762 1.6653345e-015 4.2327253e-016 -0.75377762
		 8.3266727e-016 8.3266727e-016 -0.75377762 8.3266727e-016 8.3266727e-016 -0.75377762
		 8.3266727e-016 8.3266727e-016 -0.75377762 4.1633363e-016 1.6653345e-015 -0.75377762
		 0 8.3266727e-016 -0.75377762 -4.1633363e-016 8.3266727e-016 -0.75377762 -8.3266727e-016
		 8.3266727e-016 -0.75377762 -8.3266727e-016 4.2327253e-016 -0.75377762 -8.3266727e-016
		 1.6737225e-016 -0.75377762 -1.6653345e-015 -4.0939474e-016 -0.75377762 -8.3266727e-016
		 -8.3266727e-016 -0.75377762 -8.3266727e-016 -8.3266727e-016 -0.75377762 -8.3266727e-016
		 -8.3266727e-016 -0.75377762 -4.1633363e-016 -8.3266727e-016 -0.75377762 0 -1.6737225e-016
		 0.75377762 0 1.6737225e-016 -0.75377762 0;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "ACE74702-415B-798E-F0FE-A3A8011D8CC8";
	setAttr ".ics" -type "componentList" 2 "f[387]" "f[400:419]";
	setAttr ".ix" -type "matrix" 7.5474561457630861e-016 3.3990720685653795 0 0 -3.3990720685653795 7.5474561457630861e-016 0 0
		 0 0 3.3990720685653795 0 8.7565504265579176e-016 3.9435997238097222 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.16737047 3.7519529 -0.037298571 ;
	setAttr ".rs" 51208;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.83692765436640471 3.1354219390632658 -0.49948125323901832 ;
	setAttr ".cbx" -type "double3" 1.1716685792910906 4.368483732380394 0.42488410987091402 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "FBB30A23-4545-45A2-4B48-938CE63DA328";
	setAttr ".uopa" yes;
	setAttr -s 61 ".tk[381:441]" -type "float3"  0 -0.098480105 0 0 -0.098480105
		 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105
		 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105
		 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105
		 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105
		 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105
		 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105
		 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105
		 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105
		 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105
		 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105
		 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105
		 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0 0 -0.098480105 0;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "A30257F2-4E8A-C979-64F7-6091EB8DA428";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 7.5474561457630861e-016 3.3990720685653795 0 0 -3.3990720685653795 7.5474561457630861e-016 0 0
		 0 0 3.3990720685653795 0 8.7565504265579176e-016 3.9435997238097222 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.83692765 3.9435992 -6.0780144e-007 ;
	setAttr ".rs" 42378;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.83692765436640548 0.5445268448424101 -3.3990740945702118 ;
	setAttr ".cbx" -type "double3" 0.83692765436640704 7.3426717923751017 3.3990728789673121 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "39FFF617-4987-0192-0AD6-B98FD9C7D1E6";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk";
	setAttr ".tk[441]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[442]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[443]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[444]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[445]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[446]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[447]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[448]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[449]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[450]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[451]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[452]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[453]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[454]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[455]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[456]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[457]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[458]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[459]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[460]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[461]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[462]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[463]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[464]" -type "float3" 0 0.065705314 0 ;
	setAttr ".tk[465]" -type "float3" 0 0.065705314 0 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "C09EE904-4153-ECE5-C6FE-668001EA3CAE";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk";
	setAttr ".tk[466]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[467]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[468]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[469]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[470]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[471]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[472]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[473]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[474]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[475]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[476]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[477]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[478]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[479]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[480]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[481]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[482]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[483]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[484]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[485]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[486]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[487]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[488]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[489]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[490]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[491]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[492]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[493]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[494]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[495]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[496]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[497]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[498]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[499]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[500]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[501]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[502]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[503]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[504]" -type "float3" -2.220446e-016 -0.046155337 0 ;
	setAttr ".tk[505]" -type "float3" -2.220446e-016 -0.046155337 0 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "0A1DE884-4558-38D0-0E69-5FB936471C8F";
	setAttr ".dc" -type "componentList" 8 "f[58:59]" "f[78:79]" "f[98:99]" "f[118:119]" "f[316]" "f[458:459]" "f[520]" "f[522]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "8AD4405E-4B30-54B2-D603-E0A54AF6A0D2";
	setAttr ".dc" -type "componentList" 7 "f[43:44]" "f[61:62]" "f[79:80]" "f[97:98]" "f[434:435]" "f[479]" "f[481]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "24E42380-4220-3F38-339F-959B2E6CD157";
	setAttr ".dc" -type "componentList" 6 "f[46:47]" "f[62:63]" "f[78:79]" "f[94:95]" "f[477]" "f[479]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "1FC7599D-4CC9-ED6F-C9E8-40AA2051893E";
	setAttr ".dc" -type "componentList" 1 "f[421:422]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "99C2957B-4135-F1DC-994E-5FA34ADC056D";
	setAttr ".dc" -type "componentList" 7 "f[49:50]" "f[63:64]" "f[77:78]" "f[91:92]" "f[424:425]" "f[475]" "f[477]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "C6EE9EB0-4F1B-27F3-8BEF-A48A3DE777B1";
	setAttr ".ics" -type "componentList" 4 "e[784]" "e[787]" "e[934]" "e[939]";
	setAttr ".ix" -type "matrix" 7.5474561457630861e-016 3.3990720685653795 0 0 -3.3990720685653795 7.5474561457630861e-016 0 0
		 0 0 3.3990720685653795 0 8.7565504265579176e-016 3.9435997238097222 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 3;
	setAttr ".sv1" 414;
	setAttr ".sv2" 476;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	rename -uid "4C59FB63-4C57-E64A-E582-E0AD6ED3FD59";
	setAttr ".ics" -type "componentList" 8 "e[351]" "e[367]" "e[383]" "e[399]" "e[965]" "e[970]" "e[975]" "e[980]";
	setAttr ".ix" -type "matrix" 7.5474561457630861e-016 3.3990720685653795 0 0 -3.3990720685653795 7.5474561457630861e-016 0 0
		 0 0 3.3990720685653795 0 8.7565504265579176e-016 3.9435997238097222 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 75;
	setAttr ".sv2" 414;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	rename -uid "D5159F0E-47C9-37F5-ED6E-1CABB7A45127";
	setAttr ".ics" -type "componentList" 6 "e[766]" "e[770:771]" "e[773]" "e[905]" "e[910]" "e[914:915]";
	setAttr ".ix" -type "matrix" 7.5474561457630861e-016 3.3990720685653795 0 0 -3.3990720685653795 7.5474561457630861e-016 0 0
		 0 0 3.3990720685653795 0 8.7565504265579176e-016 3.9435997238097222 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 3;
	setAttr ".sv1" 7;
	setAttr ".sv2" 72;
createNode polyBridgeEdge -n "polyBridgeEdge4";
	rename -uid "FDFC91A9-454F-A78C-A621-D698F20A1B85";
	setAttr ".ics" -type "componentList" 7 "e[746]" "e[794]" "e[798:799]" "e[868]" "e[953]" "e[958]" "e[962]";
	setAttr ".ix" -type "matrix" 7.5474561457630861e-016 3.3990720685653795 0 0 -3.3990720685653795 7.5474561457630861e-016 0 0
		 0 0 3.3990720685653795 0 8.7565504265579176e-016 3.9435997238097222 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 3;
	setAttr ".sv1" 15;
	setAttr ".sv2" 64;
createNode polyBridgeEdge -n "polyBridgeEdge5";
	rename -uid "F927A2E4-4DF5-5691-671B-44B8067BAA48";
	setAttr ".ics" -type "componentList" 8 "e[352]" "e[368]" "e[384]" "e[400]" "e[964]" "e[967]" "e[972]" "e[977]";
	setAttr ".ix" -type "matrix" 7.5474561457630861e-016 3.3990720685653795 0 0 -3.3990720685653795 7.5474561457630861e-016 0 0
		 0 0 3.3990720685653795 0 8.7565504265579176e-016 3.9435997238097222 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 12;
	setAttr ".sv2" 476;
createNode polyBridgeEdge -n "polyBridgeEdge6";
	rename -uid "F679F533-4952-15E1-F247-84AE231D5C2B";
	setAttr ".ics" -type "componentList" 6 "e[752]" "e[756:757]" "e[759]" "e[881]" "e[886]" "e[890:891]";
	setAttr ".ix" -type "matrix" 7.5474561457630861e-016 3.3990720685653795 0 0 -3.3990720685653795 7.5474561457630861e-016 0 0
		 0 0 3.3990720685653795 0 8.7565504265579176e-016 3.9435997238097222 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 3;
	setAttr ".sv1" 3;
	setAttr ".sv2" 68;
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "A2706A38-4CE2-E44C-F115-0EAC7EE87329";
	setAttr ".ics" -type "componentList" 3 "e[236]" "e[256]" "e[580:581]";
createNode polyTweak -n "polyTweak5";
	rename -uid "7078C69B-4F51-5263-225F-7B941AD298E6";
	setAttr ".uopa" yes;
	setAttr -s 55 ".tk";
	setAttr ".tk[16]" -type "float3" 0 0 -1.4901161e-008 ;
	setAttr ".tk[17]" -type "float3" 0 0 -3.7252903e-009 ;
	setAttr ".tk[18]" -type "float3" -7.4505806e-009 0 -2.7939677e-009 ;
	setAttr ".tk[19]" -type "float3" 2.9802322e-008 0 9.3132257e-010 ;
	setAttr ".tk[32]" -type "float3" -7.4505806e-009 0 -1.4901161e-008 ;
	setAttr ".tk[33]" -type "float3" 1.8626451e-009 0 -1.8626451e-009 ;
	setAttr ".tk[34]" -type "float3" -5.5879354e-009 0 -3.7252903e-009 ;
	setAttr ".tk[35]" -type "float3" 1.4901161e-008 0 1.1175871e-008 ;
	setAttr ".tk[48]" -type "float3" -2.9802322e-008 0 -1.4901161e-008 ;
	setAttr ".tk[49]" -type "float3" -7.4505806e-009 0 2.3283064e-010 ;
	setAttr ".tk[50]" -type "float3" 0 0 -7.4505806e-009 ;
	setAttr ".tk[51]" -type "float3" 0 0 1.4901161e-008 ;
	setAttr ".tk[363]" -type "float3" -0.044376504 0 0.032241371 ;
	setAttr ".tk[364]" -type "float3" -0.052167699 0 0.016950291 ;
	setAttr ".tk[366]" -type "float3" -0.032241397 0 0.044376455 ;
	setAttr ".tk[368]" -type "float3" -0.016950315 0 0.052167665 ;
	setAttr ".tk[370]" -type "float3" -1.3077806e-008 0 0.05485234 ;
	setAttr ".tk[372]" -type "float3" 0.016950293 0 0.052167665 ;
	setAttr ".tk[374]" -type "float3" 0.032241363 0 0.044376455 ;
	setAttr ".tk[376]" -type "float3" 0.044376455 0 0.032241363 ;
	setAttr ".tk[378]" -type "float3" 0.052167669 0 0.016950285 ;
	setAttr ".tk[380]" -type "float3" 0.054852296 0 -1.634726e-008 ;
	setAttr ".tk[382]" -type "float3" 0.052167669 0 -0.016950315 ;
	setAttr ".tk[384]" -type "float3" 0.044376448 0 -0.032241404 ;
	setAttr ".tk[386]" -type "float3" 0.032241363 0 -0.04437647 ;
	setAttr ".tk[388]" -type "float3" 0.016950293 0 -0.052167669 ;
	setAttr ".tk[390]" -type "float3" -1.3077806e-008 0 -0.054852355 ;
	setAttr ".tk[392]" -type "float3" -0.016950315 0 -0.052167669 ;
	setAttr ".tk[394]" -type "float3" -0.032241397 0 -0.04437647 ;
	setAttr ".tk[396]" -type "float3" -0.044376448 0 -0.032241404 ;
	setAttr ".tk[398]" -type "float3" -0.052167665 0 -0.016950313 ;
	setAttr ".tk[400]" -type "float3" -0.054852337 0 -1.634726e-008 ;
	setAttr ".tk[401]" -type "float3" -0.066564746 0 0.048362084 ;
	setAttr ".tk[402]" -type "float3" -0.078251541 0 0.025425445 ;
	setAttr ".tk[403]" -type "float3" -0.048362128 0 0.066564694 ;
	setAttr ".tk[404]" -type "float3" -0.025425479 0 0.078251526 ;
	setAttr ".tk[405]" -type "float3" -1.3077806e-008 0 0.082278498 ;
	setAttr ".tk[406]" -type "float3" 0.025425445 0 0.078251481 ;
	setAttr ".tk[407]" -type "float3" 0.048362069 0 0.066564687 ;
	setAttr ".tk[408]" -type "float3" 0.066564687 0 0.048362054 ;
	setAttr ".tk[409]" -type "float3" 0.078251474 0 0.025425442 ;
	setAttr ".tk[410]" -type "float3" 0.082278483 0 -1.634726e-008 ;
	setAttr ".tk[411]" -type "float3" 0.078251474 0 -0.025425464 ;
	setAttr ".tk[412]" -type "float3" 0.066564679 0 -0.048362106 ;
	setAttr ".tk[413]" -type "float3" 0.048362061 0 -0.066564694 ;
	setAttr ".tk[414]" -type "float3" 0.025425412 0 -0.078251526 ;
	setAttr ".tk[415]" -type "float3" -1.3077806e-008 0 -0.082278498 ;
	setAttr ".tk[416]" -type "float3" -0.025425445 0 -0.078251526 ;
	setAttr ".tk[417]" -type "float3" -0.048362106 0 -0.066564687 ;
	setAttr ".tk[418]" -type "float3" -0.066564746 0 -0.048362106 ;
	setAttr ".tk[419]" -type "float3" -0.078251474 0 -0.025425464 ;
	setAttr ".tk[420]" -type "float3" -0.082278483 0 -1.634726e-008 ;
createNode deleteComponent -n "deleteComponent6";
	rename -uid "FE3627DB-4006-AD0F-8F76-539A323E3F9F";
	setAttr ".dc" -type "componentList" 2 "f[354]" "f[419:422]";
createNode polyCloseBorder -n "polyCloseBorder2";
	rename -uid "E37E5594-421D-6422-3EF5-85B2FC576CC1";
	setAttr ".ics" -type "componentList" 3 "e[307]" "e[327]" "e[651:652]";
createNode polyTweak -n "polyTweak6";
	rename -uid "89A1B851-48A8-7ADC-4FC4-0A8D511CCFB2";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk";
	setAttr ".tk[248]" -type "float3" 0.14512797 -0.060115423 0.047154885 ;
	setAttr ".tk[249]" -type "float3" 0.15259659 -0.060115423 -4.2445503e-008 ;
	setAttr ".tk[268]" -type "float3" 0.12093994 -0.060115423 0.039295718 ;
	setAttr ".tk[269]" -type "float3" 0.12716381 -0.060115423 -4.2445503e-008 ;
	setAttr ".tk[288]" -type "float3" 0.096751973 -0.060115423 0.031436592 ;
	setAttr ".tk[289]" -type "float3" 0.10173104 -0.060115423 -4.2445503e-008 ;
	setAttr ".tk[402]" -type "float3" -0.056642849 0.060115423 0.018404329 ;
	setAttr ".tk[404]" -type "float3" -0.018404387 0.060115423 0.056642752 ;
	setAttr ".tk[405]" -type "float3" -2.7657377e-008 0.060115423 0.05955771 ;
	setAttr ".tk[406]" -type "float3" 0.018404339 0.060115423 0.056642745 ;
	setAttr ".tk[409]" -type "float3" 0.056642745 0.060115423 0.018404316 ;
	setAttr ".tk[410]" -type "float3" 0.05955771 0.060115423 -3.9119449e-008 ;
	setAttr ".tk[411]" -type "float3" 0.056642745 0.060115423 -0.018404394 ;
	setAttr ".tk[414]" -type "float3" 0.01840432 0.060115423 -0.056642849 ;
	setAttr ".tk[415]" -type "float3" -2.7657377e-008 0.060115423 -0.059557758 ;
	setAttr ".tk[416]" -type "float3" -0.018404365 0.060115423 -0.056642849 ;
	setAttr ".tk[419]" -type "float3" -0.056642741 0.060115423 -0.018404398 ;
	setAttr ".tk[420]" -type "float3" -0.059557736 0.060115423 -3.9119442e-008 ;
	setAttr ".tk[442]" -type "float3" -0.16931598 0.049469315 0.055014044 ;
	setAttr ".tk[448]" -type "float3" -0.05501416 0.049469315 0.16931595 ;
	setAttr ".tk[450]" -type "float3" -3.0318215e-008 0.049469315 0.17802948 ;
	setAttr ".tk[452]" -type "float3" 0.055014055 0.049469315 0.16931595 ;
	setAttr ".tk[458]" -type "float3" 0.16931593 0.049469315 0.055014044 ;
	setAttr ".tk[460]" -type "float3" 0.17802937 0.049469315 -4.2445503e-008 ;
	setAttr ".tk[462]" -type "float3" 0.16931593 0.049469315 -0.055014152 ;
	setAttr ".tk[468]" -type "float3" 0.055014048 0.049469315 -0.16931595 ;
	setAttr ".tk[470]" -type "float3" -3.0318215e-008 0.049469315 -0.17802948 ;
	setAttr ".tk[472]" -type "float3" -0.055014078 0.049469315 -0.16931595 ;
	setAttr ".tk[478]" -type "float3" -0.16931593 0.049469315 -0.055014119 ;
	setAttr ".tk[480]" -type "float3" -0.17802939 0.049469315 -4.24455e-008 ;
	setAttr ".tk[482]" -type "float3" -0.031436637 0.057453923 -0.096752055 ;
	setAttr ".tk[483]" -type "float3" -3.0318215e-008 0.057453923 -0.10173111 ;
	setAttr ".tk[484]" -type "float3" 0.031436592 0.057453923 -0.096752055 ;
	setAttr ".tk[485]" -type "float3" -0.039295804 0.054792333 -0.12094006 ;
	setAttr ".tk[486]" -type "float3" -6.0636429e-009 0.054792333 -0.12716384 ;
	setAttr ".tk[487]" -type "float3" 0.039295759 0.054792333 -0.12094006 ;
	setAttr ".tk[488]" -type "float3" -0.047154918 0.052130818 -0.14512801 ;
	setAttr ".tk[489]" -type "float3" -3.0318215e-008 0.052130818 -0.15259667 ;
	setAttr ".tk[490]" -type "float3" 0.047154885 0.052130818 -0.14512801 ;
	setAttr ".tk[492]" -type "float3" 0.096751973 0.057453923 -0.031436678 ;
	setAttr ".tk[493]" -type "float3" 0.10173108 0.057453923 -4.2445503e-008 ;
	setAttr ".tk[494]" -type "float3" 0.096751973 0.057453923 0.031436592 ;
	setAttr ".tk[497]" -type "float3" 0.12093994 0.054792333 -0.039295837 ;
	setAttr ".tk[498]" -type "float3" 0.12716381 0.054792333 -4.2445503e-008 ;
	setAttr ".tk[499]" -type "float3" 0.12093994 0.054792333 0.039295718 ;
	setAttr ".tk[502]" -type "float3" 0.14512797 0.052130822 -0.047154985 ;
	setAttr ".tk[503]" -type "float3" 0.15259659 0.052130822 -4.2445503e-008 ;
	setAttr ".tk[504]" -type "float3" 0.14512797 0.052130822 0.047154885 ;
	setAttr ".tk[507]" -type "float3" -0.096752048 0.057453908 0.031436611 ;
	setAttr ".tk[508]" -type "float3" -0.10173111 0.057453908 -4.24455e-008 ;
	setAttr ".tk[509]" -type "float3" -0.09675204 0.057453908 -0.031436682 ;
	setAttr ".tk[512]" -type "float3" -0.12094012 0.054792333 0.039295781 ;
	setAttr ".tk[513]" -type "float3" -0.12716381 0.054792333 -4.24455e-008 ;
	setAttr ".tk[514]" -type "float3" -0.12093993 0.054792333 -0.039295848 ;
	setAttr ".tk[517]" -type "float3" -0.14512803 0.052130822 0.047154915 ;
	setAttr ".tk[518]" -type "float3" -0.15259656 0.052130822 -4.24455e-008 ;
	setAttr ".tk[519]" -type "float3" -0.14512797 0.052130822 -0.047155 ;
	setAttr ".tk[522]" -type "float3" 0.031436607 0.057453856 0.096752003 ;
	setAttr ".tk[523]" -type "float3" -3.0318215e-008 0.057453856 0.1017311 ;
	setAttr ".tk[524]" -type "float3" -0.031436637 0.057453856 0.096752025 ;
	setAttr ".tk[527]" -type "float3" 0.039295774 0.054792333 0.12093994 ;
	setAttr ".tk[528]" -type "float3" -6.0636429e-009 0.054792333 0.12716384 ;
	setAttr ".tk[529]" -type "float3" -0.039295804 0.054792333 0.12093996 ;
	setAttr ".tk[532]" -type "float3" 0.047154911 0.052130822 0.14512801 ;
	setAttr ".tk[533]" -type "float3" -3.0318215e-008 0.052130822 0.15259661 ;
	setAttr ".tk[534]" -type "float3" -0.047154974 0.052130822 0.14512801 ;
createNode deleteComponent -n "deleteComponent7";
	rename -uid "6119A940-4737-8480-3BEF-528FD4B41BF5";
	setAttr ".dc" -type "componentList" 1 "f[168:187]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "C707C157-4DFD-7FCB-6A6C-10BD492A0B6F";
	setAttr ".dc" -type "componentList" 3 "f[168:345]" "f[366:385]" "f[514:515]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "C4C0133F-43A1-5166-F322-3693CFF7F6DE";
	setAttr ".dc" -type "componentList" 1 "f[148:167]";
createNode lambert -n "Blue_Glow";
	rename -uid "2C32D769-4EA9-9B45-723C-4D99E1A01D12";
	setAttr ".c" -type "float3" 0 0.52029997 1 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "F9A7C574-4C9A-61F9-3AE9-EE8736B9F1E3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "F1CB3478-4299-9C5C-2A1A-49950AF4441A";
createNode groupId -n "groupId2";
	rename -uid "377B804E-4ED2-F278-08BB-7F9977D541C2";
	setAttr ".ihi" 0;
createNode lambert -n "Metal_Grey_mtl";
	rename -uid "960B031E-4957-2616-80A8-358B97715747";
	setAttr ".c" -type "float3" 0.18170001 0.1842 0.1865 ;
createNode shadingEngine -n "lambert4SG";
	rename -uid "B4203E56-4121-6927-CB03-D393530D840D";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo3";
	rename -uid "B1622A9C-4FA1-0410-9055-A1B50AE74A01";
createNode groupId -n "groupId3";
	rename -uid "034932BE-4CE6-68C7-2F3B-EF9D407006C6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "11812BE5-43AB-BBCA-EBED-F0A49266D89F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:39]" "f[88:147]" "f[168:295]";
	setAttr ".irc" -type "componentList" 2 "f[40:87]" "f[148:167]";
createNode groupId -n "groupId4";
	rename -uid "61E25293-4432-0F08-FA85-DBB7719C00CC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "A760DC13-4131-9946-48EC-BD8C2F19202F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "64DC8057-4A6F-0ED8-240B-9CB86D4C55AC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[40:87]" "f[148:167]";
createNode polySmoothFace -n "polySmoothFace1";
	rename -uid "6D9B5569-4BD2-54B7-4C03-CD923038DB59";
	setAttr ".ics" -type "componentList" 1 "f[0:19]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "395BABEB-437B-E6F5-B25E-FD8A81BB676B";
	setAttr ".ics" -type "componentList" 40 "e[620]" "e[622]" "e[627]" "e[629]" "e[634]" "e[636]" "e[641]" "e[643]" "e[648]" "e[650]" "e[655]" "e[657]" "e[662]" "e[664]" "e[669]" "e[671]" "e[676]" "e[678]" "e[683]" "e[685]" "e[690]" "e[692]" "e[697]" "e[699]" "e[704]" "e[706]" "e[711]" "e[713]" "e[718]" "e[720]" "e[725]" "e[727]" "e[732]" "e[734]" "e[739]" "e[741]" "e[746]" "e[748]" "e[752]" "e[754]";
	setAttr ".cv" yes;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "062E4E10-41B3-7124-06CA-8581464AD748";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[597:598]" "e[601]" "e[604]" "e[607]" "e[610]" "e[613]" "e[616]" "e[619]" "e[622]" "e[625]" "e[628]" "e[631]" "e[634]" "e[637]" "e[640]" "e[643]" "e[646]" "e[649]" "e[652]";
	setAttr ".ix" -type "matrix" 7.5474561457630861e-016 3.3990720685653795 0 0 -3.3990720685653795 7.5474561457630861e-016 0 0
		 0 0 3.3990720685653795 0 8.7565504265579176e-016 3.9435997238097222 0 1;
	setAttr ".wt" 0.64303600788116455;
	setAttr ".dr" no;
	setAttr ".re" 598;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "A76918BC-4D65-8A27-7D70-EFA91C52B69D";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[315]" -type "float3" -0.011415065 0 0.008293529 ;
	setAttr ".tk[316]" -type "float3" -0.013419215 0 0.0043601641 ;
	setAttr ".tk[317]" -type "float3" -0.00829353 0 0.011415062 ;
	setAttr ".tk[318]" -type "float3" -0.0043601757 0 0.013419213 ;
	setAttr ".tk[319]" -type "float3" -2.0777198e-009 0 0.014109795 ;
	setAttr ".tk[320]" -type "float3" 0.0043601659 0 0.013419213 ;
	setAttr ".tk[321]" -type "float3" 0.008293529 0 0.011415062 ;
	setAttr ".tk[322]" -type "float3" 0.011415062 0 0.0082935253 ;
	setAttr ".tk[323]" -type "float3" 0.013419211 0 0.0043601631 ;
	setAttr ".tk[324]" -type "float3" 0.01410979 0 -2.6179268e-009 ;
	setAttr ".tk[325]" -type "float3" 0.013419211 0 -0.0043601678 ;
	setAttr ".tk[326]" -type "float3" 0.011415061 0 -0.00829353 ;
	setAttr ".tk[327]" -type "float3" 0.008293529 0 -0.011415062 ;
	setAttr ".tk[328]" -type "float3" 0.0043601659 0 -0.013419211 ;
	setAttr ".tk[329]" -type "float3" -8.3108818e-011 0 -0.014109795 ;
	setAttr ".tk[330]" -type "float3" -0.0043601636 0 -0.013419213 ;
	setAttr ".tk[331]" -type "float3" -0.0082935262 0 -0.011415062 ;
	setAttr ".tk[332]" -type "float3" -0.011415061 0 -0.00829353 ;
	setAttr ".tk[333]" -type "float3" -0.013419211 0 -0.0043601673 ;
	setAttr ".tk[334]" -type "float3" -0.01410979 0 -2.2854918e-009 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "80A3C31D-4ECB-593B-1AF1-8B9CF07BBF60";
	setAttr ".ics" -type "componentList" 1 "f[296:315]";
	setAttr ".ix" -type "matrix" 7.5474561457630861e-016 3.3990720685653795 0 0 -3.3990720685653795 7.5474561457630861e-016 0 0
		 0 0 3.3990720685653795 0 8.7565504265579176e-016 3.9435997238097222 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.1716688 3.9435995 -1.7727542e-007 ;
	setAttr ".rs" 64286;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.1716687818915734 3.3423317852041139 -0.60126809055597041 ;
	setAttr ".cbx" -type "double3" 1.1716687818915739 4.5448673078644841 0.60126773600512484 ;
createNode groupParts -n "groupParts3";
	rename -uid "CD2C9B26-476B-8D5B-4229-968D0E8F357F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 28 "f[0:19]" "f[108:147]" "f[180:199]" "f[201]" "f[203]" "f[205:207]" "f[209]" "f[211]" "f[213:215]" "f[217]" "f[219]" "f[221:223]" "f[225]" "f[227]" "f[229:239]" "f[245:246]" "f[249:250]" "f[253:254]" "f[257:258]" "f[261:262]" "f[265:266]" "f[269:270]" "f[273:274]" "f[281:282]" "f[285:286]" "f[289:290]" "f[293:294]" "f[316:375]";
	setAttr ".irc" -type "componentList" 28 "f[20:39]" "f[88:107]" "f[168:179]" "f[200]" "f[202]" "f[204]" "f[208]" "f[210]" "f[212]" "f[216]" "f[218]" "f[220]" "f[224]" "f[226]" "f[228]" "f[240:244]" "f[247:248]" "f[251:252]" "f[255:256]" "f[259:260]" "f[263:264]" "f[267:268]" "f[271:272]" "f[275:280]" "f[283:284]" "f[287:288]" "f[291:292]" "f[295:315]";
createNode groupParts -n "groupParts4";
	rename -uid "65E4BCE7-4C0A-D7E4-AE05-CB9CFF5FF35A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[296:315]";
createNode lambert -n "Black_Metal_mtl";
	rename -uid "05B9F611-4101-A4CB-4C25-8F89334DEB0B";
	setAttr ".c" -type "float3" 0.034699999 0.035500001 0.035999998 ;
createNode shadingEngine -n "lambert5SG";
	rename -uid "DB7BCA3F-41D6-1E30-E04C-AB9506C6C326";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "21B91396-423F-11FA-3AD1-D68BC3B54838";
createNode groupId -n "groupId6";
	rename -uid "3D3E4496-4946-29AA-03FB-CE8613AC0BBA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "2AC3EDE1-4A48-3429-8EAA-F7B87EFE5B1F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 28 "f[20:39]" "f[88:107]" "f[168:179]" "f[200]" "f[202]" "f[204]" "f[208]" "f[210]" "f[212]" "f[216]" "f[218]" "f[220]" "f[224]" "f[226]" "f[228]" "f[240:244]" "f[247:248]" "f[251:252]" "f[255:256]" "f[259:260]" "f[263:264]" "f[267:268]" "f[271:272]" "f[275:280]" "f[283:284]" "f[287:288]" "f[291:292]" "f[295]";
createNode polySplitRing -n "polySplitRing2";
	rename -uid "7E161563-4301-8B08-B484-56BDA66875DB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[384]" "e[387]" "e[391]" "e[396]" "e[400]" "e[405]" "e[410]" "e[415]" "e[420]" "e[424]" "e[429]" "e[434]" "e[439]" "e[444]" "e[448]" "e[453]" "e[458]" "e[463]" "e[468]" "e[472]";
	setAttr ".ix" -type "matrix" 7.5474561457630861e-016 3.3990720685653795 0 0 -3.3990720685653795 7.5474561457630861e-016 0 0
		 0 0 3.3990720685653795 0 8.7565504265579176e-016 3.9435997238097222 0 1;
	setAttr ".wt" 0.68536150455474854;
	setAttr ".dr" no;
	setAttr ".re" 387;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak8";
	rename -uid "2158A86A-4619-C615-879E-959256F49174";
	setAttr ".uopa" yes;
	setAttr -s 114 ".tk";
	setAttr ".tk[140]" -type "float3" -0.034131858 0.009432219 0.011090098 ;
	setAttr ".tk[141]" -type "float3" -0.029034261 0.009432219 0.021094628 ;
	setAttr ".tk[144]" -type "float3" -0.021094644 0.009432219 0.029034263 ;
	setAttr ".tk[146]" -type "float3" -0.011090174 0.009432219 0.034131836 ;
	setAttr ".tk[148]" -type "float3" -6.3750452e-017 0.009432219 0.035888337 ;
	setAttr ".tk[150]" -type "float3" 0.01109011 0.009432219 0.034131836 ;
	setAttr ".tk[152]" -type "float3" 0.021094644 0.009432219 0.029034263 ;
	setAttr ".tk[154]" -type "float3" 0.029034261 0.009432219 0.021094622 ;
	setAttr ".tk[156]" -type "float3" 0.034131818 0.009432219 0.011090095 ;
	setAttr ".tk[158]" -type "float3" 0.035888314 0.009432219 -6.4173333e-009 ;
	setAttr ".tk[160]" -type "float3" 0.034131818 0.009432219 -0.011090111 ;
	setAttr ".tk[162]" -type "float3" 0.029034261 0.009432219 -0.021094641 ;
	setAttr ".tk[164]" -type "float3" 0.021094644 0.009432219 -0.029034263 ;
	setAttr ".tk[166]" -type "float3" 0.01109011 0.009432219 -0.034131829 ;
	setAttr ".tk[168]" -type "float3" -6.3750452e-017 0.009432219 -0.035888337 ;
	setAttr ".tk[170]" -type "float3" -0.011090071 0.009432219 -0.034131829 ;
	setAttr ".tk[172]" -type "float3" -0.021094644 0.009432219 -0.029034263 ;
	setAttr ".tk[174]" -type "float3" -0.029034261 0.009432219 -0.021094641 ;
	setAttr ".tk[176]" -type "float3" -0.034131858 0.009432219 -0.01109011 ;
	setAttr ".tk[178]" -type "float3" -0.035888314 0.009432219 -6.4173333e-009 ;
	setAttr ".tk[200]" -type "float3" -0.034131858 -0.009432219 0.011090098 ;
	setAttr ".tk[201]" -type "float3" -0.029034261 -0.009432219 0.021094628 ;
	setAttr ".tk[203]" -type "float3" -0.021094644 -0.009432219 0.029034263 ;
	setAttr ".tk[204]" -type "float3" -0.011090174 -0.009432219 0.034131836 ;
	setAttr ".tk[205]" -type "float3" -6.3750452e-017 -0.009432219 0.035888337 ;
	setAttr ".tk[206]" -type "float3" 0.01109011 -0.009432219 0.034131836 ;
	setAttr ".tk[207]" -type "float3" 0.021094644 -0.009432219 0.029034263 ;
	setAttr ".tk[208]" -type "float3" 0.029034261 -0.009432219 0.021094622 ;
	setAttr ".tk[209]" -type "float3" 0.034131818 -0.009432219 0.011090095 ;
	setAttr ".tk[210]" -type "float3" 0.035888314 -0.009432219 -6.4173333e-009 ;
	setAttr ".tk[211]" -type "float3" 0.034131818 -0.009432219 -0.011090111 ;
	setAttr ".tk[212]" -type "float3" 0.029034261 -0.009432219 -0.021094641 ;
	setAttr ".tk[213]" -type "float3" 0.021094644 -0.009432219 -0.029034263 ;
	setAttr ".tk[214]" -type "float3" 0.01109011 -0.009432219 -0.034131829 ;
	setAttr ".tk[215]" -type "float3" -6.3750452e-017 -0.009432219 -0.035888337 ;
	setAttr ".tk[216]" -type "float3" -0.011090071 -0.009432219 -0.034131829 ;
	setAttr ".tk[217]" -type "float3" -0.021094644 -0.009432219 -0.029034263 ;
	setAttr ".tk[218]" -type "float3" -0.029034261 -0.009432219 -0.021094641 ;
	setAttr ".tk[219]" -type "float3" -0.034131858 -0.009432219 -0.01109011 ;
	setAttr ".tk[220]" -type "float3" -0.035888314 -0.009432219 -6.4173333e-009 ;
	setAttr ".tk[315]" -type "float3" -0.0097340699 0.00071521336 0.007072214 ;
	setAttr ".tk[316]" -type "float3" -0.011443094 0.00071521336 0.0037180819 ;
	setAttr ".tk[317]" -type "float3" -0.0070722154 0.00071521336 0.0097340699 ;
	setAttr ".tk[318]" -type "float3" -0.0037180921 0.00071521336 0.01144309 ;
	setAttr ".tk[319]" -type "float3" 0 0.00071521336 0.012031976 ;
	setAttr ".tk[320]" -type "float3" 0.0037180816 0.00071521336 0.01144309 ;
	setAttr ".tk[321]" -type "float3" 0.0070722154 0.00071521336 0.0097340699 ;
	setAttr ".tk[322]" -type "float3" 0.0097340699 0.00071521336 0.007072214 ;
	setAttr ".tk[323]" -type "float3" 0.011443094 0.00071521336 0.0037180816 ;
	setAttr ".tk[324]" -type "float3" 0.012031959 0.00071521336 -2.854921e-009 ;
	setAttr ".tk[325]" -type "float3" 0.011443094 0.00071521336 -0.0037180872 ;
	setAttr ".tk[326]" -type "float3" 0.0097340699 0.00071521336 -0.0070722154 ;
	setAttr ".tk[327]" -type "float3" 0.0070722154 0.00071521336 -0.0097340699 ;
	setAttr ".tk[328]" -type "float3" 0.0037180816 0.00071521336 -0.01144309 ;
	setAttr ".tk[329]" -type "float3" 0 0.00071521336 -0.012031976 ;
	setAttr ".tk[330]" -type "float3" -0.0037180816 0.00071521336 -0.01144309 ;
	setAttr ".tk[331]" -type "float3" -0.0070722154 0.00071521336 -0.0097340699 ;
	setAttr ".tk[332]" -type "float3" -0.0097340588 0.00071521336 -0.0070722154 ;
	setAttr ".tk[333]" -type "float3" -0.011443094 0.00071521336 -0.0037180858 ;
	setAttr ".tk[334]" -type "float3" -0.012031959 0.00071521336 -2.5714388e-009 ;
	setAttr ".tk[355]" -type "float3" -0.0097340699 0.016404988 0.007072214 ;
	setAttr ".tk[356]" -type "float3" -2.220446e-016 0.017120212 0 ;
	setAttr ".tk[357]" -type "float3" -2.220446e-016 0.017120212 0 ;
	setAttr ".tk[358]" -type "float3" -0.011443094 0.016404988 0.0037180819 ;
	setAttr ".tk[359]" -type "float3" -0.0070722154 0.016404988 0.0097340699 ;
	setAttr ".tk[360]" -type "float3" -2.220446e-016 0.017120212 0 ;
	setAttr ".tk[361]" -type "float3" -0.0037180921 0.016404988 0.01144309 ;
	setAttr ".tk[362]" -type "float3" -2.220446e-016 0.017120212 0 ;
	setAttr ".tk[363]" -type "float3" -2.0349248e-016 0.016404988 0.012031976 ;
	setAttr ".tk[364]" -type "float3" -2.220446e-016 0.017120212 0 ;
	setAttr ".tk[365]" -type "float3" 0.0037180816 0.016404988 0.01144309 ;
	setAttr ".tk[366]" -type "float3" -2.220446e-016 0.017120212 0 ;
	setAttr ".tk[367]" -type "float3" 0.0070722154 0.016404988 0.0097340699 ;
	setAttr ".tk[368]" -type "float3" -2.220446e-016 0.017120212 0 ;
	setAttr ".tk[369]" -type "float3" 0.0097340699 0.016404988 0.007072214 ;
	setAttr ".tk[370]" -type "float3" -2.220446e-016 0.017120212 0 ;
	setAttr ".tk[371]" -type "float3" 0.011443094 0.016404988 0.0037180816 ;
	setAttr ".tk[372]" -type "float3" -2.220446e-016 0.017120212 0 ;
	setAttr ".tk[373]" -type "float3" 0.012031959 0.016404988 -2.854921e-009 ;
	setAttr ".tk[374]" -type "float3" -2.220446e-016 0.017120212 0 ;
	setAttr ".tk[375]" -type "float3" 0.011443094 0.016404988 -0.0037180872 ;
	setAttr ".tk[376]" -type "float3" -2.220446e-016 0.017120212 0 ;
	setAttr ".tk[377]" -type "float3" 0.0097340699 0.016404988 -0.0070722154 ;
	setAttr ".tk[378]" -type "float3" -2.220446e-016 0.017120212 0 ;
	setAttr ".tk[379]" -type "float3" 0.0070722154 0.016404988 -0.0097340699 ;
	setAttr ".tk[380]" -type "float3" -2.220446e-016 0.017120212 0 ;
	setAttr ".tk[381]" -type "float3" 0.0037180816 0.016404988 -0.01144309 ;
	setAttr ".tk[382]" -type "float3" -2.220446e-016 0.017120212 0 ;
	setAttr ".tk[383]" -type "float3" -2.0349248e-016 0.016404988 -0.012031976 ;
	setAttr ".tk[384]" -type "float3" -2.220446e-016 0.017120212 0 ;
	setAttr ".tk[385]" -type "float3" -0.0037180816 0.016404988 -0.01144309 ;
	setAttr ".tk[386]" -type "float3" -2.220446e-016 0.017120212 0 ;
	setAttr ".tk[387]" -type "float3" -0.0070722154 0.016404988 -0.0097340699 ;
	setAttr ".tk[388]" -type "float3" -2.220446e-016 0.017120212 0 ;
	setAttr ".tk[389]" -type "float3" -0.0097340588 0.016404988 -0.0070722154 ;
	setAttr ".tk[390]" -type "float3" -2.220446e-016 0.017120212 0 ;
	setAttr ".tk[391]" -type "float3" -0.011443094 0.016404988 -0.0037180858 ;
	setAttr ".tk[392]" -type "float3" -2.220446e-016 0.017120212 0 ;
	setAttr ".tk[393]" -type "float3" -0.012031959 0.016404988 -2.5714388e-009 ;
	setAttr ".tk[394]" -type "float3" -2.220446e-016 0.017120212 0 ;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "B4A38A1E-46FB-DD2B-D888-F6BD99899375";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[79]" "e[99]" "e[119]" "e[263]" "e[319]" "e[379]" "e[474:475]" "e[538]" "e[547]" "e[556]" "e[634:635]" "e[638]" "e[774:775]" "e[778]";
	setAttr ".ix" -type "matrix" 7.5474561457630861e-016 3.3990720685653795 0 0 -3.3990720685653795 7.5474561457630861e-016 0 0
		 0 0 3.3990720685653795 0 8.7565504265579176e-016 3.9435997238097222 0 1;
	setAttr ".wt" 0.61676508188247681;
	setAttr ".dr" no;
	setAttr ".re" 99;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "ACAF3CB5-47F2-F28F-71A6-53AE50A56838";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[776:777]" "e[779]" "e[781]" "e[783]" "e[785]" "e[787]" "e[789]" "e[791]" "e[793]" "e[795]" "e[797]" "e[799]" "e[801]" "e[803]" "e[805]" "e[807]" "e[809]" "e[811]" "e[813]";
	setAttr ".ix" -type "matrix" 7.5474561457630861e-016 3.3990720685653795 0 0 -3.3990720685653795 7.5474561457630861e-016 0 0
		 0 0 3.3990720685653795 0 8.7565504265579176e-016 3.9435997238097222 0 1;
	setAttr ".wt" 0.56837838888168335;
	setAttr ".dr" no;
	setAttr ".re" 776;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "B023DF8A-429E-D528-3DA4-228E83CB05F3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[776:777]" "e[779]" "e[781]" "e[783]" "e[785]" "e[787]" "e[789]" "e[791]" "e[793]" "e[795]" "e[797]" "e[799]" "e[801]" "e[803]" "e[805]" "e[807]" "e[809]" "e[811]" "e[813]";
	setAttr ".ix" -type "matrix" 7.5474561457630861e-016 3.3990720685653795 0 0 -3.3990720685653795 7.5474561457630861e-016 0 0
		 0 0 3.3990720685653795 0 8.7565504265579176e-016 3.9435997238097222 0 1;
	setAttr ".wt" 0.44926327466964722;
	setAttr ".re" 776;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "983ECA33-42F2-B38E-5F6F-4295CD6744AB";
	setAttr ".ics" -type "componentList" 1 "f[416:435]";
	setAttr ".ix" -type "matrix" 7.5474561457630861e-016 3.3990720685653795 0 0 -3.3990720685653795 7.5474561457630861e-016 0 0
		 0 0 3.3990720685653795 0 8.7565504265579176e-016 3.9435997238097222 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.97411495 3.9435992 -6.0780144e-007 ;
	setAttr ".rs" 32836;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.95441653563355711 0.68440829646701751 -3.259192642945604 ;
	setAttr ".cbx" -type "double3" 0.99381331389694327 7.2027903407504938 3.2591914273427047 ;
createNode groupParts -n "groupParts6";
	rename -uid "3CACA5B4-43B7-AFC6-F4EF-CABD5AE060A0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 30 "f[20:39]" "f[88:107]" "f[168:179]" "f[200]" "f[202]" "f[204]" "f[208]" "f[210]" "f[212]" "f[216]" "f[218]" "f[220]" "f[224]" "f[226]" "f[228]" "f[240:244]" "f[247:248]" "f[251:252]" "f[255:256]" "f[259:260]" "f[263:264]" "f[267:268]" "f[271:272]" "f[275:280]" "f[283:284]" "f[287:288]" "f[291:292]" "f[295]" "f[376:415]" "f[436:475]";
	setAttr ".irc" -type "componentList" 1 "f[416:435]";
createNode groupParts -n "groupParts7";
	rename -uid "D5F0D794-4E2D-2F3B-410C-A6A111A10E78";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[416:435]";
select -ne :time1;
	setAttr ".o" 48;
	setAttr ".unw" 48;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId3.id" "pCylinderShape1.iog.og[2].gid";
connectAttr "lambert4SG.mwc" "pCylinderShape1.iog.og[2].gco";
connectAttr "groupId5.id" "pCylinderShape1.iog.og[3].gid";
connectAttr "lambert3SG.mwc" "pCylinderShape1.iog.og[3].gco";
connectAttr "groupId6.id" "pCylinderShape1.iog.og[5].gid";
connectAttr "lambert5SG.mwc" "pCylinderShape1.iog.og[5].gco";
connectAttr "groupParts7.og" "pCylinderShape1.i";
connectAttr "groupId4.id" "pCylinderShape1.ciog.cog[1].cgid";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Fire_mtl.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "Fire_mtl.msg" "materialInfo1.m";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyCylinder1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak3.ip";
connectAttr "polyExtrudeFace3.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polyBridgeEdge1.ip";
connectAttr "pCylinderShape1.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "polyBridgeEdge2.ip";
connectAttr "pCylinderShape1.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "polyBridgeEdge3.ip";
connectAttr "pCylinderShape1.wm" "polyBridgeEdge3.mp";
connectAttr "polyBridgeEdge3.out" "polyBridgeEdge4.ip";
connectAttr "pCylinderShape1.wm" "polyBridgeEdge4.mp";
connectAttr "polyBridgeEdge4.out" "polyBridgeEdge5.ip";
connectAttr "pCylinderShape1.wm" "polyBridgeEdge5.mp";
connectAttr "polyBridgeEdge5.out" "polyBridgeEdge6.ip";
connectAttr "pCylinderShape1.wm" "polyBridgeEdge6.mp";
connectAttr "polyTweak5.out" "polyCloseBorder1.ip";
connectAttr "polyBridgeEdge6.out" "polyTweak5.ip";
connectAttr "polyCloseBorder1.out" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polyCloseBorder2.ip";
connectAttr "polyCloseBorder2.out" "polyTweak6.ip";
connectAttr "polyTweak6.out" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "Blue_Glow.oc" "lambert3SG.ss";
connectAttr "groupId5.msg" "lambert3SG.gn" -na;
connectAttr "pCylinderShape1.iog.og[3]" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "Blue_Glow.msg" "materialInfo2.m";
connectAttr "Metal_Grey_mtl.oc" "lambert4SG.ss";
connectAttr "pCylinderShape1.iog.og[2]" "lambert4SG.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[1]" "lambert4SG.dsm" -na;
connectAttr "groupId3.msg" "lambert4SG.gn" -na;
connectAttr "groupId4.msg" "lambert4SG.gn" -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "Metal_Grey_mtl.msg" "materialInfo3.m";
connectAttr "deleteComponent9.og" "groupParts1.ig";
connectAttr "groupId3.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId5.id" "groupParts2.gi";
connectAttr "groupParts2.og" "polySmoothFace1.ip";
connectAttr "polySmoothFace1.out" "polyDelEdge1.ip";
connectAttr "polyTweak7.out" "polySplitRing1.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing1.mp";
connectAttr "polyDelEdge1.out" "polyTweak7.ip";
connectAttr "polySplitRing1.out" "polyExtrudeFace4.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId5.id" "groupParts4.gi";
connectAttr "Black_Metal_mtl.oc" "lambert5SG.ss";
connectAttr "groupId6.msg" "lambert5SG.gn" -na;
connectAttr "pCylinderShape1.iog.og[5]" "lambert5SG.dsm" -na;
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "Black_Metal_mtl.msg" "materialInfo4.m";
connectAttr "groupParts4.og" "groupParts5.ig";
connectAttr "groupId6.id" "groupParts5.gi";
connectAttr "polyTweak8.out" "polySplitRing2.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing2.mp";
connectAttr "groupParts5.og" "polyTweak8.ip";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polyExtrudeFace5.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "groupParts6.og" "groupParts7.ig";
connectAttr "groupId5.id" "groupParts7.gi";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "Fire_mtl.msg" ":defaultShaderList1.s" -na;
connectAttr "Blue_Glow.msg" ":defaultShaderList1.s" -na;
connectAttr "Metal_Grey_mtl.msg" ":defaultShaderList1.s" -na;
connectAttr "Black_Metal_mtl.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Shield_pickup_v1.ma
