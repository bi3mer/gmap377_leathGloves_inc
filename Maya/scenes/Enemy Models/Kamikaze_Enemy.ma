//Maya ASCII 2016 scene
//Name: Kamikaze_Enemy.ma
//Last modified: Fri, Jan 29, 2016 08:42:58 PM
//Codeset: UTF-8
requires maya "2016";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2016.0 - 3.13.1.8 ";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201507301600-967122";
fileInfo "osv" "Mac OS X 10.9.5";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "35AF4A79-DB4A-B0F9-BDF8-EA848DAB89B1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -35.698135918960809 44.441328831266887 -103.25846176672643 ;
	setAttr ".r" -type "double3" 339.26164726815904 1278.9999999990048 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E294FFB8-EE4E-A4FF-F1A2-9AA3E39C1CFD";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 122.64638389985566;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -6.4502363095186865e-07 -6.4502363184004707e-07 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "95AED4C6-8C4A-611A-96AA-B0ADFC39AAB7";
	setAttr ".t" -type "double3" -2.5792886405458368 107.70067302326865 -0.66860759906689538 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "2FD0494B-BB4B-82F4-29B2-E5A7C7170691";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30.282146791211314;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "EE9A9304-EC48-50BC-CC7D-DA8AE7904C5F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.005346315527527068 0.10832562089067777 100.49815024829881 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D02F0C97-874F-5B38-4F9D-03868703CDEF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 37.126102988521133;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "81FDB452-6346-C122-9E7B-BC91B5651E7A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "B1E7A390-FE44-5331-508F-0F82978DAA4C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Rocket";
	rename -uid "FE537D03-AB45-CBF8-1A33-CBA2411E70FF";
	setAttr ".t" -type "double3" 0 0 3.5615193205413433 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 8.6325872266205987 19.227177197203773 8.6325872266205987 ;
createNode mesh -n "RocketShape" -p "Rocket";
	rename -uid "ED6CB388-0143-7DDF-0A48-BCA0B5612DFB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999994039535522 0.31254187226295471 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt[42:51]" -type "float3"  0.051690325 0 -0.037555214 
		0.063892752 0 6.1234964e-09 0.051690325 0 0.03755521 0.019743951 0 0.060765609 -0.019743936 
		0 0.060765609 -0.05169031 0 0.037555218 -0.063892752 0 9.9318029e-09 -0.051690325 
		0 -0.03755521 -0.01974394 0 -0.060765602 0.019743947 0 -0.060765609;
createNode transform -n "Claw";
	rename -uid "DDB8F4F1-F242-A993-4895-19B10ED6F759";
	setAttr ".t" -type "double3" 0 0.15338582982281235 5.3475037101007539 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 10.988480271159059 15.703995144440201 10.988480271159059 ;
createNode mesh -n "ClawShape" -p "Claw";
	rename -uid "63B0D859-FE47-A499-A5B7-6FA3C64BC2F2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Wings";
	rename -uid "902DF9F1-6049-BF94-4F6E-B78D44EEA86E";
	setAttr ".t" -type "double3" 0 9.7645310281909623 5.9745845094117218 ;
	setAttr ".s" -type "double3" 44.876851924145583 2.3009362963795357 19.030682855938654 ;
createNode mesh -n "WingsShape" -p "Wings";
	rename -uid "78586028-7848-7D2E-26D6-078B02A2ED66";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.63967731595039368 0.1250549852848053 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[77]" -type "float3" -0.029943012 0 0.1367794 ;
	setAttr ".pt[89]" -type "float3" 0.029943004 0 0.1367794 ;
	setAttr ".pt[101]" -type "float3" -0.029015964 0 0.029309811 ;
	setAttr ".pt[113]" -type "float3" 0.029015968 0 0.029309811 ;
createNode transform -n "Ship";
	rename -uid "4439F9BD-074F-03CE-89E7-E1BBD6CE59C3";
	setAttr ".t" -type "double3" 0 11.446737259614963 3.1621309677359539 ;
	setAttr ".s" -type "double3" 19.391696121389913 1.755023538391949 35.822348607405694 ;
createNode mesh -n "ShipShape" -p "Ship";
	rename -uid "F8DC6E3C-E949-92CA-E2A4-018C721D6DB0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50021815299987793 0.92224866151809692 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Cockpit";
	rename -uid "A3F0D72A-D645-2C13-17AD-49AB2C5ED3FB";
	setAttr ".t" -type "double3" 0 11.816481989379902 6.0564293582422692 ;
	setAttr ".r" -type "double3" 88.645906305625232 0 0 ;
	setAttr ".s" -type "double3" 2.948125614829169 11.138871381108839 2.948125614829169 ;
createNode mesh -n "CockpitShape" -p "Cockpit";
	rename -uid "97754D48-DE4D-9A55-D3DF-028C00754780";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.66666662693023682 0.91666656732559204 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "imagePlane1";
	rename -uid "628317B0-6D41-716B-E3CF-CA8304A87433";
	setAttr ".t" -type "double3" 0.20026013794835995 0 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 7.8698765936865511 7.8698765936865511 1 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "8CD5230B-604D-ED06-B3F4-8A919926A91F";
	setAttr -k off ".v";
	setAttr ".fc" 51;
	setAttr ".imn" -type "string" "/Users/wer29/Desktop/KamikazeRef.jpg";
	setAttr ".cov" -type "short2" 1280 720 ;
	setAttr ".dlc" no;
	setAttr ".w" 12.8;
	setAttr ".h" 7.2;
	setAttr ".cs" -type "string" "sRGB";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "255BA6B1-1140-9EBA-2F28-A6A7B6127547";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "705CEC39-0E47-8B18-1E5E-BB9BC8EE2654";
createNode displayLayer -n "defaultLayer";
	rename -uid "34E6DB4B-3C4A-E34D-7024-8A98CDC65942";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2128A757-EE4B-4102-373A-118B88B8818C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "44EA41EC-FE4F-C882-545D-29A8105FBF57";
	setAttr ".g" yes;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	rename -uid "4CE7A873-5049-E9BF-7E50-928C1D82AB6D";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	rename -uid "501230CD-4547-0513-DC64-A0896000032C";
createNode mentalrayOptions -s -n "miDefaultOptions";
	rename -uid "27E82CE8-E141-514C-9FC3-B3ABE1D11210";
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
	rename -uid "7AB30E5B-B146-43A6-4E5A-ADB9629E253B";
createNode polyCylinder -n "polyCylinder1";
	rename -uid "C0001AB4-BE47-6978-B87A-0FB97C3417E1";
	setAttr ".sa" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCube -n "polyCube1";
	rename -uid "3F2543F4-234B-09E6-E79D-FBB1426400A7";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube2";
	rename -uid "F09AF97D-1548-95BD-9EA4-E1B9015C00B0";
	setAttr ".cuv" 4;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "E093C792-BB4C-554D-C3B8-77BE212A6934";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 515\n                -height 703\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 515\n            -height 703\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1102\n                -height 703\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1102\n            -height 703\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n"
		+ "            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n"
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1102\\n    -height 703\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1102\\n    -height 703\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "0090211B-A74C-BC05-E30E-EE8A0F31E271";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "64844011-4748-63DB-724B-B290F9AA9354";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[20:29]";
	setAttr ".ix" -type "matrix" 8.6325872266205987 0 0 0 0 4.2692909645766825e-15 19.227177197203773 0
		 0 -8.6325872266205987 1.9168194202158426e-15 0 0 0 3.5615193205413433 1;
	setAttr ".wt" 0.029044622555375099;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "DC12C515-6740-ED9F-640A-6E99861216EC";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[0]" -type "float3" 2.9802322e-08 -0.060950562 -2.9802322e-08 ;
	setAttr ".tk[1]" -type "float3" 0 -0.060950562 5.9604645e-08 ;
	setAttr ".tk[2]" -type "float3" 1.4901161e-08 -0.060950562 5.9604645e-08 ;
	setAttr ".tk[3]" -type "float3" -2.9802322e-08 -0.060950562 0 ;
	setAttr ".tk[4]" -type "float3" -5.9604645e-08 -0.060950562 7.1054274e-15 ;
	setAttr ".tk[5]" -type "float3" 2.9802322e-08 -0.060950562 2.9802322e-08 ;
	setAttr ".tk[6]" -type "float3" -1.4901161e-08 -0.060950562 -5.9604645e-08 ;
	setAttr ".tk[7]" -type "float3" -1.4901161e-08 -0.060950562 -5.9604645e-08 ;
	setAttr ".tk[8]" -type "float3" -2.9802322e-08 -0.060950562 0 ;
	setAttr ".tk[9]" -type "float3" 5.9604645e-08 -0.060950562 3.5527137e-15 ;
	setAttr ".tk[20]" -type "float3" 3.5527137e-15 -0.060950562 3.5527137e-15 ;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "2CE94C7B-5540-E53B-CCCF-2C8085BF6AE9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[20:29]";
	setAttr ".ix" -type "matrix" 8.6325872266205987 0 0 0 0 4.2692909645766825e-15 19.227177197203773 0
		 0 -8.6325872266205987 1.9168194202158426e-15 0 0 0 3.5615193205413433 1;
	setAttr ".wt" 0.012469221837818623;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "AE9CF712-5F4F-3870-DF5E-4686C7C565E4";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[0]" -type "float3" -0.042139016 -0.45493299 0.03061579 ;
	setAttr ".tk[1]" -type "float3" -0.016095672 -0.45493299 0.049537376 ;
	setAttr ".tk[2]" -type "float3" 0.01609567 -0.45493299 0.049537372 ;
	setAttr ".tk[3]" -type "float3" 0.042139009 -0.45493299 0.030615771 ;
	setAttr ".tk[4]" -type "float3" 0.052086681 -0.45493299 -6.2092167e-09 ;
	setAttr ".tk[5]" -type "float3" 0.042139009 -0.45493299 -0.03061579 ;
	setAttr ".tk[6]" -type "float3" 0.016095662 -0.45493299 -0.049537376 ;
	setAttr ".tk[7]" -type "float3" -0.016095674 -0.45493299 -0.049537383 ;
	setAttr ".tk[8]" -type "float3" -0.042139009 -0.45493299 -0.030615784 ;
	setAttr ".tk[9]" -type "float3" -0.052086681 -0.45493299 -3.1046081e-09 ;
	setAttr ".tk[20]" -type "float3" -6.2092158e-09 -0.57807767 -3.1046081e-09 ;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "F9DDE7BA-F941-12C5-88AF-BDB8CE3D54D5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[20:29]";
	setAttr ".ix" -type "matrix" 8.6325872266205987 0 0 0 0 4.2692909645766825e-15 19.227177197203773 0
		 0 -8.6325872266205987 1.9168194202158426e-15 0 0 0 3.5615193205413433 1;
	setAttr ".wt" 0.3074357807636261;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "036C2100-D344-690B-E842-17B82A68626F";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[0]" -type "float3" -0.6249938 -0.089580789 0.4540846 ;
	setAttr ".tk[1]" -type "float3" -0.23872639 -0.089580789 0.73472416 ;
	setAttr ".tk[2]" -type "float3" 0.23872635 -0.089580789 0.7347241 ;
	setAttr ".tk[3]" -type "float3" 0.62499368 -0.089580789 0.45408446 ;
	setAttr ".tk[4]" -type "float3" 0.77253467 -0.089580789 -9.2093302e-08 ;
	setAttr ".tk[5]" -type "float3" 0.62499356 -0.089580789 -0.4540846 ;
	setAttr ".tk[6]" -type "float3" 0.23872623 -0.089580789 -0.73472416 ;
	setAttr ".tk[7]" -type "float3" -0.23872644 -0.089580789 -0.7347241 ;
	setAttr ".tk[8]" -type "float3" -0.62499368 -0.089580789 -0.45408452 ;
	setAttr ".tk[9]" -type "float3" -0.77253467 -0.089580789 -4.6046654e-08 ;
	setAttr ".tk[32]" -type "float3" -0.0048774425 0.43479353 0.0035436684 ;
	setAttr ".tk[33]" -type "float3" -0.0060288459 0.43479353 -3.59347e-10 ;
	setAttr ".tk[34]" -type "float3" -0.0048774388 0.43479353 -0.0035436675 ;
	setAttr ".tk[35]" -type "float3" -0.0018630163 0.43479353 -0.005733775 ;
	setAttr ".tk[36]" -type "float3" 0.0018630149 0.43479353 -0.005733775 ;
	setAttr ".tk[37]" -type "float3" 0.0048774388 0.43479353 -0.0035436684 ;
	setAttr ".tk[38]" -type "float3" 0.0060288459 0.43479353 -7.1869422e-10 ;
	setAttr ".tk[39]" -type "float3" 0.0048774388 0.43479353 0.0035436666 ;
	setAttr ".tk[40]" -type "float3" 0.0018630153 0.43479353 0.0057337731 ;
	setAttr ".tk[41]" -type "float3" -0.0018630158 0.43479353 0.005733775 ;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "2F110D76-0545-722D-D7B9-B8BA84668DC7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 44.876851924145583 0 0 0 0 19.030682855938654 0 0 0 0 19.030682855938654 0
		 0 0 5.9745845094117218 1;
	setAttr ".wt" 0.50044047832489014;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	rename -uid "54103228-D040-761D-7928-818717A20E28";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  -0.00044044436 0 0 -0.00044044436
		 0 0 -0.00044044436 0 0 -0.00044044436 0 0;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "7B247211-C64E-CDA0-4520-B49C24D0DAE9";
	setAttr ".dc" -type "componentList" 2 "f[0:3]" "f[5]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "67289EF7-F246-5E9D-A598-5F9FB2111328";
	setAttr ".dc" -type "componentList" 0;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "76C0149E-AF4C-A9F2-1DED-599652030990";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[7]" "e[9]";
	setAttr ".ix" -type "matrix" 44.876851924145583 0 0 0 0 19.030682855938654 0 0 0 0 19.030682855938654 0
		 0 0 5.9745845094117218 1;
	setAttr ".wt" 0.63099348545074463;
	setAttr ".dr" no;
	setAttr ".re" 9;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "A7EDE324-6540-CAD0-F2DC-5281904EF92B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 44.876851924145583 0 0 0 0 19.030682855938654 0 0 0 0 19.030682855938654 0
		 0 0 5.9745845094117218 1;
	setAttr ".wt" 0.55019408464431763;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "DD3C14E2-2E44-795C-8373-FC8A9D134F05";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[0]" -type "float3" 0.011112837 0 0.35814229 ;
	setAttr ".tk[1]" -type "float3" 0.011112837 0 0.35814229 ;
	setAttr ".tk[2]" -type "float3" -0.067603096 0 0.38216406 ;
	setAttr ".tk[3]" -type "float3" -0.067603096 0 0.38216406 ;
	setAttr ".tk[9]" -type "float3" -0.03550804 0 0.11219479 ;
	setAttr ".tk[10]" -type "float3" -0.03550804 0 0.11219479 ;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "91667259-FF40-C7F6-C4AE-1DA0F5B6642F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[7]" "e[9]";
	setAttr ".ix" -type "matrix" 44.876851924145583 0 0 0 0 19.030682855938654 0 0 0 0 19.030682855938654 0
		 0 0 5.9745845094117218 1;
	setAttr ".wt" 0.12190850824117661;
	setAttr ".re" 4;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "139CE81D-0247-15A4-A530-05B0295302AC";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[4]" -type "float3" 0 0 -0.24767943 ;
	setAttr ".tk[5]" -type "float3" 0 0 -0.24767943 ;
	setAttr ".tk[12]" -type "float3" -0.0071301302 0 0.064198099 ;
	setAttr ".tk[15]" -type "float3" -0.0071301302 0 0.064198099 ;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "1E8C35E8-4A46-8D20-23A8-C8B16D34D83B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[28:29]" "e[31]" "e[33]";
	setAttr ".ix" -type "matrix" 44.876851924145583 0 0 0 0 19.030682855938654 0 0 0 0 19.030682855938654 0
		 0 0 5.9745845094117218 1;
	setAttr ".wt" 0.11114434897899628;
	setAttr ".re" 28;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyMirror -n "polyMirror1";
	rename -uid "7A436653-1948-B363-BB34-799146AAE8B6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 44.876851924145583 0 0 0 0 3.5364727336191799 0 0 0 0 19.030682855938654 0
		 0 0 5.9745845094117218 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 1.5242050342342669e-06 0 7.025676188713998 ;
	setAttr ".d" 1;
	setAttr ".mm" 1;
createNode polyTweak -n "polyTweak7";
	rename -uid "CC0619F6-0E4F-DF0F-9DA4-849F69F94DD6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[16]" -type "float3" 0 0 -0.022754958 ;
	setAttr ".tk[17]" -type "float3" 0 0 -0.022754958 ;
	setAttr ".tk[20]" -type "float3" 0 0 -0.019720962 ;
	setAttr ".tk[21]" -type "float3" 0 0 -0.019720962 ;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "8592A6DB-6C48-150C-808D-E8B9767F91AF";
	setAttr ".dc" -type "componentList" 0;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "45F1D486-3B43-F537-6654-7C8DBF0B0B37";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[0]" "e[2]" "e[6]" "e[10]" "e[16]" "e[19]" "e[24]" "e[27]" "e[30]" "e[34]" "e[38]" "e[42]" "e[45]" "e[47]" "e[49]" "e[53]" "e[60:61]" "e[66:67]" "e[73]" "e[77]";
	setAttr ".ix" -type "matrix" 44.876851924145583 0 0 0 0 3.5364727336191799 0 0 0 0 19.030682855938654 0
		 0 0 5.9745845094117218 1;
	setAttr ".wt" 0.4997800886631012;
	setAttr ".dr" no;
	setAttr ".re" 45;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "0405BCDA-2B47-C5B9-1776-D19046738E4B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 21 "e[1]" "e[3]" "e[8]" "e[11]" "e[14]" "e[18]" "e[22]" "e[26]" "e[32]" "e[35]" "e[40]" "e[43:44]" "e[46]" "e[51]" "e[55:56]" "e[58]" "e[63:64]" "e[75]" "e[79]" "e[86]" "e[108]";
	setAttr ".ix" -type "matrix" 44.876851924145583 0 0 0 0 3.5364727336191799 0 0 0 0 19.030682855938654 0
		 0 0 5.9745845094117218 1;
	setAttr ".wt" 0.91183274984359741;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak8";
	rename -uid "011C2449-2440-BC6D-F893-C98ECAB08226";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[44]" -type "float3" 0.0084397886 0 -0.080482647 ;
	setAttr ".tk[56]" -type "float3" -0.0084397886 0 -0.080482647 ;
	setAttr ".tk[57]" -type "float3" -0.0071017081 0 -0.080482647 ;
	setAttr ".tk[58]" -type "float3" -0.0054649906 0 -0.080482647 ;
	setAttr ".tk[59]" -type "float3" -0.0011995838 0 -0.080482647 ;
	setAttr ".tk[60]" -type "float3" -0.00066622841 0 -0.080482647 ;
	setAttr ".tk[61]" -type "float3" 5.0046645e-10 0 -0.080482647 ;
	setAttr ".tk[62]" -type "float3" 0.00066622952 0 -0.080482647 ;
	setAttr ".tk[63]" -type "float3" 0.0011995845 0 -0.080482647 ;
	setAttr ".tk[64]" -type "float3" 0.0054649906 0 -0.080482647 ;
	setAttr ".tk[65]" -type "float3" 0.0071017067 0 -0.080482647 ;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "DAEA6BF4-3646-CE53-141A-578E578DFCF0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[1]" "e[11]" "e[14]" "e[22]" "e[35]" "e[43]" "e[46]" "e[55:56]" "e[58]" "e[79]" "e[108]" "e[149]" "e[151]" "e[153]" "e[155]" "e[157]" "e[159]" "e[161]" "e[163]" "e[165]" "e[167]" "e[169]" "e[171]";
	setAttr ".ix" -type "matrix" 44.876851924145583 0 0 0 0 3.5364727336191799 0 0 0 0 19.030682855938654 0
		 0 0 5.9745845094117218 1;
	setAttr ".wt" 0.064386144280433655;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	rename -uid "2EC30C4D-2542-92DA-435F-1388F02A246B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 7.3634942424927932 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".wt" 0.50087249279022217;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	rename -uid "915C0338-0D46-C58F-04E6-84AEBDF1FA1A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 7.3634942424927932 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".wt" 0.38151371479034424;
	setAttr ".re" 17;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak9";
	rename -uid "34E735FB-6443-CBF9-8D37-52AF0AC20AEA";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[0]" -type "float3" -0.4096804 0 0.094382711 ;
	setAttr ".tk[1]" -type "float3" 0.4096804 0 0.094382711 ;
	setAttr ".tk[2]" -type "float3" -0.4096804 0 0.094382711 ;
	setAttr ".tk[3]" -type "float3" 0.4096804 0 0.094382711 ;
	setAttr ".tk[4]" -type "float3" 0.23186046 0 0.1244818 ;
	setAttr ".tk[5]" -type "float3" -0.23186046 0 0.1244818 ;
	setAttr ".tk[6]" -type "float3" 0.23186046 0 0.1244818 ;
	setAttr ".tk[7]" -type "float3" -0.23186046 0 0.1244818 ;
	setAttr ".tk[11]" -type "float3" 0 0 -0.0084292367 ;
createNode polySplitRing -n "polySplitRing14";
	rename -uid "5253AF7F-9B4F-82B7-CC3A-669B4E5DCC6D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 7.3634942424927932 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".wt" 0.60025113821029663;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	rename -uid "C25FAE5E-1147-D491-0A1A-2FB169ED45AB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[6:7]" "e[10:11]" "e[16]" "e[19]" "e[22]" "e[26]" "e[30]" "e[34]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 7.3634942424927932 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".wt" 0.7392723560333252;
	setAttr ".dr" no;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak10";
	rename -uid "76E27412-4F45-A275-D254-DDBC9FE41046";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[12]" -type "float3" -0.054131981 0 0.026888113 ;
	setAttr ".tk[15]" -type "float3" -0.054131981 0 0.026888113 ;
	setAttr ".tk[16]" -type "float3" 0.054131988 0 0.026888113 ;
	setAttr ".tk[19]" -type "float3" 0.054131988 0 0.026888113 ;
createNode polySplitRing -n "polySplitRing16";
	rename -uid "38C2B77D-4542-BE8C-F447-AFAC7A56C9B8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[10:11]" "e[16]" "e[26]" "e[34]" "e[36]" "e[47]" "e[49]" "e[51]" "e[53]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 7.3634942424927932 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".wt" 0.46135634183883667;
	setAttr ".re" 36;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak11";
	rename -uid "62A5D284-D447-EBBB-E97A-D8B2FF5CAC76";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[20:29]" -type "float3"  -0.022602104 0 0.0052127624
		 -0.022602104 0 0.0052127624 -0.0082753301 0 0.0052127624 4.5291359e-05 0 0.0052127624
		 0.0079183737 0 0.0052127624 0.022602104 0 0.0052127624 0.022602104 0 0.0052127624
		 0.0079183737 0 0.0052127624 4.5291359e-05 0 0.0052127624 -0.0082753301 0 0.0052127624;
createNode polySplitRing -n "polySplitRing17";
	rename -uid "5A48F22D-1845-E070-44B5-72BA0D1418F5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[36]" "e[47]" "e[49]" "e[51]" "e[53]" "e[57]" "e[59]" "e[61]" "e[63]" "e[65]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 7.3634942424927932 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".wt" 0.48802348971366882;
	setAttr ".re" 36;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak12";
	rename -uid "CB685EEC-AC4B-A676-6A81-B3AF049EEBD8";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[30:39]" -type "float3"  0.10179672 0 -0.077720538
		 0.10179672 0 -0.077720538 0.038347453 0 -0.077720538 -0.00024648348 0 -0.077720538
		 -0.03679157 0 -0.077720538 -0.10179672 0 -0.077720538 -0.10179672 0 -0.077720538
		 -0.03679157 0 -0.077720538 -0.00024648348 0 -0.077720538 0.038347453 0 -0.077720538;
createNode polySplitRing -n "polySplitRing18";
	rename -uid "D1628C20-CA4B-CA58-34BE-5097302AEAB4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[36]" "e[47]" "e[49]" "e[51]" "e[53]" "e[77]" "e[79]" "e[81]" "e[83]" "e[85]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 7.3634942424927932 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".wt" 0.56965768337249756;
	setAttr ".dr" no;
	setAttr ".re" 36;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak13";
	rename -uid "A7DF0779-BA4A-6E48-B492-F2BCBCA9F813";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[40:49]" -type "float3"  0.051905904 0 0 0.051905904
		 0 0 0.019201195 0 0 -0.00011178222 0 0 -0.018390914 0 0 -0.051905904 0 0 -0.051905904
		 0 0 -0.018390914 0 0 -0.00011178222 0 0 0.019201195 0 0;
createNode polySplitRing -n "polySplitRing19";
	rename -uid "89CE38FF-0040-43B0-6B85-018A968E5A03";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[6:7]" "e[19]" "e[22]" "e[30]" "e[37]" "e[39]" "e[41]" "e[43]" "e[45]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 7.3634942424927932 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".wt" 0.42069116234779358;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak14";
	rename -uid "A7405B3A-4B4F-E6EE-A217-4A8D3642EAA6";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[50:59]" -type "float3"  0.015776414 0 0 0.015776414
		 0 0 0.0058046812 0 0 -3.2736647e-05 0 0 -0.0055568935 0 0 -0.015776414 0 0 -0.015776414
		 0 0 -0.0055568935 0 0 -3.2736647e-05 0 0 0.0058046812 0 0;
createNode polySplitRing -n "polySplitRing20";
	rename -uid "DF2CF649-0A40-18F4-4B4F-4E8D4A95069C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[37]" "e[39]" "e[41]" "e[43]" "e[45]" "e[116:117]" "e[119]" "e[121]" "e[123]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 7.3634942424927932 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".wt" 0.54551661014556885;
	setAttr ".dr" no;
	setAttr ".re" 116;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak15";
	rename -uid "347BD353-B54F-EA5C-DB84-35BD221BF2D1";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[60:69]" -type "float3"  -0.21336423 0 0 -0.070415854
		 0 0 -0.00026432262 0 0 0.073984489 0 0 0.21336423 0 0 0.21336423 0 0 0.073984489
		 0 0 -0.00026432262 0 0 -0.070415854 0 0 -0.21336423 0 0;
createNode polySplitRing -n "polySplitRing21";
	rename -uid "3E21FE38-0942-9EDB-BACD-F4A791F1CF58";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[116:117]" "e[119]" "e[121]" "e[123]" "e[145]" "e[147]" "e[149]" "e[151]" "e[153]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 7.3634942424927932 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".wt" 0.21570323407649994;
	setAttr ".re" 123;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak16";
	rename -uid "B3DF05F1-894B-907C-F8B3-2F8E52578E5B";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[70:79]" -type "float3"  0.030802086 0 0 0.010491198
		 0 0 5.0425522e-05 0 0 -0.010991422 0 0 -0.030802086 0 0 -0.030802086 0 0 -0.010991422
		 0 0 5.0425522e-05 0 0 0.010491198 0 0 0.030802086 0 0;
createNode polySplitRing -n "polySplitRing22";
	rename -uid "CCBEB6C4-7A45-4290-5351-BCA81878EBB1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[37]" "e[39]" "e[41]" "e[43]" "e[45]" "e[136:137]" "e[139]" "e[141]" "e[143]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 7.3634942424927932 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".wt" 0.64956474304199219;
	setAttr ".dr" no;
	setAttr ".re" 143;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak17";
	rename -uid "7C532D69-D147-F4A8-5327-3096E496148B";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[80:89]" -type "float3"  0.0068993252 0 0 0.0068993252
		 0 0 0.0024074721 0 0 -9.1438742e-06 0 0 -0.002292806 0 0 -0.0068993252 0 0 -0.0068993252
		 0 0 -0.002292806 0 0 -9.1438742e-06 0 0 0.0024074723 0 0;
createNode polySplitRing -n "polySplitRing23";
	rename -uid "9BCBD621-C740-A6D1-6166-FCBB91239EE3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[6:7]" "e[19]" "e[22]" "e[30]" "e[125]" "e[127]" "e[129]" "e[131]" "e[133]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 7.3634942424927932 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".wt" 0.8365786075592041;
	setAttr ".dr" no;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak18";
	rename -uid "B36B7E82-5B41-B61D-23BA-AFBD416C0BFD";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[90:99]" -type "float3"  -0.0094023179 0 0 -0.0094023179
		 0 0 -0.0034096674 0 0 1.7545502e-05 0 0 0.0032595978 0 0 0.0094023179 0 0 0.0094023179
		 0 0 0.0032595978 0 0 1.7545502e-05 0 0 -0.0034096674 0 0;
createNode polySplitRing -n "polySplitRing24";
	rename -uid "1DCFEB0F-0842-B0BD-5E7D-CC85AD3847BA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[6:7]" "e[19]" "e[22]" "e[30]" "e[197]" "e[199]" "e[201]" "e[203]" "e[205]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 7.3634942424927932 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".wt" 0.5716392993927002;
	setAttr ".dr" no;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak19";
	rename -uid "5BCC8E54-844E-463F-DD49-AE870FED119A";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[100:109]" -type "float3"  0.039572999 0 0 0.039572999
		 0 0 0.013649173 0 0 -4.614862e-05 0 0 -0.012983797 0 0 -0.039572999 0 0 -0.039572999
		 0 0 -0.012983797 0 0 -4.614862e-05 0 0 0.013649174 0 0;
createNode polySplitRing -n "polySplitRing25";
	rename -uid "20370397-A144-5089-02D9-9EB43E7170DF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[197]" "e[199]" "e[201]" "e[203]" "e[205]" "e[216]" "e[227]" "e[229]" "e[231]" "e[233]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 7.3634942424927932 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".wt" 0.55958008766174316;
	setAttr ".dr" no;
	setAttr ".re" 216;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak20";
	rename -uid "1F8C005C-214D-10BD-5BC0-89973A89775F";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[110:119]" -type "float3"  0.063431047 0 0 0.063431047
		 0 0 0.021691341 0 0 -6.6598703e-05 0 0 -0.020615838 0 0 -0.063431047 0 0 -0.063431047
		 0 0 -0.020615838 0 0 -6.6598703e-05 0 0 0.021691341 0 0;
createNode polySplitRing -n "polySplitRing26";
	rename -uid "E6E19F2C-0F44-AB3C-E212-3AB0EDCF5C08";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[6:7]" "e[19]" "e[22]" "e[30]" "e[217]" "e[219]" "e[221]" "e[223]" "e[225]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 7.3634942424927932 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".wt" 0.49731999635696411;
	setAttr ".dr" no;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing27";
	rename -uid "302A2D8C-BD48-D9B6-0580-CE9B01E7A6DC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 27 "e[20:21]" "e[23]" "e[25]" "e[46]" "e[50]" "e[66]" "e[70]" "e[86]" "e[90]" "e[106]" "e[110]" "e[118]" "e[134]" "e[138]" "e[154]" "e[166]" "e[170]" "e[186]" "e[190]" "e[206]" "e[210]" "e[226]" "e[230]" "e[246]" "e[250]" "e[266]" "e[270]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 7.3634942424927932 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".wt" 0.60352998971939087;
	setAttr ".dr" no;
	setAttr ".re" 190;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak21";
	rename -uid "E8B1B541-2B4C-2CCC-ED6A-2AB0744639E5";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk[110:139]" -type "float3"  -0.0070080133 0 0 -0.0070080133
		 0 0 -0.0023965088 0 0 7.3579781e-06 0 0 0.0022776846 0 0 0.0070080133 0 0 0.0070080133
		 0 0 0.0022776846 0 0 7.3579781e-06 0 0 -0.0023965088 0 0 0.0078320857 0 0 0.0078320857
		 0 0 0.002690251 0 0 -8.6943819e-06 0 0 -0.0025580288 0 0 -0.0078320857 0 0 -0.0078320857
		 0 0 -0.0025580288 0 0 -8.6943819e-06 0 0 0.0026902515 0 0 0.021016698 0 0 0.021016698
		 0 0 0.0071583427 0 0 -2.0934127e-05 0 0 -0.0068006162 0 0 -0.021016698 0 0 -0.021016698
		 0 0 -0.0068006162 0 0 -2.0934127e-05 0 0 0.0071583427 0 0;
createNode polySplitRing -n "polySplitRing28";
	rename -uid "0D8CBED9-7044-995C-CFAF-7BBCF7AAF5E2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[136:137]" "e[139]" "e[141]" "e[143]" "e[177]" "e[179]" "e[181]" "e[183]" "e[185]" "e[278]" "e[310]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 7.3634942424927932 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".wt" 0.59319257736206055;
	setAttr ".re" 141;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak22";
	rename -uid "4F3E4EA8-7D46-D435-ED35-A9B2934317DA";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[140]" -type "float3" 0.0059939502 0 0 ;
	setAttr ".tk[141]" -type "float3" 0.001801359 0 0 ;
	setAttr ".tk[148]" -type "float3" -0.027061846 0 -0.014649378 ;
	setAttr ".tk[149]" -type "float3" -0.027061846 0 -0.014649378 ;
	setAttr ".tk[165]" -type "float3" -0.0079283845 0 -0.0042918688 ;
	setAttr ".tk[166]" -type "float3" -0.015856771 0 0 ;
	setAttr ".tk[167]" -type "float3" -0.019820964 0 0 ;
createNode polyTweak -n "polyTweak23";
	rename -uid "29E0D741-6241-1B24-07D6-1C819C549A25";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk";
	setAttr ".tk[5]" -type "float3" -0.0019980804 -6.4824708e-05 -2.1094237e-15 ;
	setAttr ".tk[7]" -type "float3" -0.070885971 0.43746886 -2.1094237e-15 ;
	setAttr ".tk[8]" -type "float3" 0 -0.83679873 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.056965467 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.44800633 0 ;
	setAttr ".tk[14]" -type "float3" -0.0066022119 0.36008263 0.016283873 ;
	setAttr ".tk[17]" -type "float3" 0 -0.53185439 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.36008263 0 ;
	setAttr ".tk[162]" -type "float3" -0.017862452 0.3924835 0.022188662 ;
	setAttr ".tk[163]" -type "float3" 0 -0.14307038 0 ;
	setAttr ".tk[168]" -type "float3" -0.0013435984 0 0 ;
	setAttr ".tk[169]" -type "float3" -0.0037300298 0 0 ;
	setAttr ".tk[170]" -type "float3" -0.0037300298 0 0 ;
	setAttr ".tk[171]" -type "float3" -0.0013435984 0 0 ;
	setAttr ".tk[172]" -type "float3" 6.6027278e-06 0 0 ;
	setAttr ".tk[173]" -type "float3" 0.0012836269 0 0 ;
	setAttr ".tk[174]" -type "float3" 0.0073521473 0 0 ;
	setAttr ".tk[175]" -type "float3" 0.0037300298 0 0 ;
	setAttr ".tk[176]" -type "float3" 0.0037300298 0 0 ;
	setAttr ".tk[177]" -type "float3" 0.0073843962 0 0 ;
	setAttr ".tk[178]" -type "float3" 0.0012836269 0 0 ;
	setAttr ".tk[179]" -type "float3" 6.6027278e-06 0 0 ;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "2F924F55-C241-0D14-AAC2-67A122B9A9CA";
	setAttr ".dc" -type "componentList" 18 "f[0:3]" "f[5]" "f[14:20]" "f[26:30]" "f[36:40]" "f[46:50]" "f[56:57]" "f[60:64]" "f[70:74]" "f[78:80]" "f[86:90]" "f[96:100]" "f[106:110]" "f[116:120]" "f[126:130]" "f[136:137]" "f[166:169]" "f[177]";
createNode polyBevel3 -n "polyBevel1";
	rename -uid "886C54F6-F247-BB0B-A72E-E38B626FC67B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[9]" "e[12]" "e[41]" "e[154]" "e[156]" "e[158]" "e[160]" "e[162]" "e[164]" "e[166]" "e[168]" "e[199]" "e[202]" "e[204]" "e[206:207]" "e[217]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyMirror -n "polyMirror2";
	rename -uid "6C4579CF-114F-6CF7-44F9-1EA7458A8D5C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 0.0053459994788516074 0.10832556858690051 4.8526360178737775 ;
	setAttr ".d" 1;
	setAttr ".mm" 1;
createNode polyTweak -n "polyTweak24";
	rename -uid "3EB0B840-104A-67AE-2176-E5AD0788D065";
	setAttr ".uopa" yes;
	setAttr -s 61 ".tk";
	setAttr ".tk[0]" -type "float3" -0.10856593 0 0 ;
	setAttr ".tk[3]" -type "float3" 1.4901161e-08 0 0.012337753 ;
	setAttr ".tk[12]" -type "float3" -0.10856593 0 0 ;
	setAttr ".tk[14]" -type "float3" -0.016002214 -0.40732998 -0.022554817 ;
	setAttr ".tk[15]" -type "float3" 0.00076511968 -0.43839741 -0.016973233 ;
	setAttr ".tk[18]" -type "float3" -0.03179742 0 0 ;
	setAttr ".tk[22]" -type "float3" -0.046781898 0 -0.023339501 ;
	setAttr ".tk[24]" -type "float3" -0.010903882 -0.33215231 -0.012138046 ;
	setAttr ".tk[25]" -type "float3" 0.00069005415 -0.40896052 -0.0066868714 ;
	setAttr ".tk[28]" -type "float3" -0.057875156 0 -0.020246902 ;
	setAttr ".tk[30]" -type "float3" -0.012512006 -0.34543595 -0.016619133 ;
	setAttr ".tk[31]" -type "float3" 0.000725816 -0.46313494 -0.011113516 ;
	setAttr ".tk[33]" -type "float3" -0.010155391 -0.13874732 -0.020148449 ;
	setAttr ".tk[34]" -type "float3" 0.008938618 -0.25024229 -0.014999478 ;
	setAttr ".tk[37]" -type "float3" -0.10856593 0 0 ;
	setAttr ".tk[39]" -type "float3" -0.017224465 -0.2433304 -0.04319784 ;
	setAttr ".tk[40]" -type "float3" 0.00097184721 -0.35288399 -0.037229013 ;
	setAttr ".tk[43]" -type "float3" -0.10856593 0 0 ;
	setAttr ".tk[46]" -type "float3" -0.10856593 0 0 ;
	setAttr ".tk[48]" -type "float3" -0.0087918844 -0.16130623 -0.014805577 ;
	setAttr ".tk[49]" -type "float3" 0.01018906 -0.27238244 -0.0097496277 ;
	setAttr ".tk[52]" -type "float3" -0.10856593 0 0 ;
	setAttr ".tk[54]" -type "float3" -0.016774219 -0.29992741 -0.029789852 ;
	setAttr ".tk[55]" -type "float3" 0.00083571859 -0.40843046 -0.024071578 ;
	setAttr ".tk[56]" -type "float3" -0.00034547254 0 -0.047248229 ;
	setAttr ".tk[57]" -type "float3" -0.0081539564 0 -0.047305152 ;
	setAttr ".tk[58]" -type "float3" -0.10856593 0 0 ;
	setAttr ".tk[60]" -type "float3" -0.012253538 -0.10482904 -0.025486223 ;
	setAttr ".tk[61]" -type "float3" 0.0076743006 -0.22791278 -0.020293988 ;
	setAttr ".tk[64]" -type "float3" -0.10856593 0 0 ;
	setAttr ".tk[66]" -type "float3" -0.01851093 -0.011039543 -0.037074864 ;
	setAttr ".tk[67]" -type "float3" 0.0048953383 -0.17894776 -0.03190358 ;
	setAttr ".tk[68]" -type "float3" -0.00029399834 0 -0.047248237 ;
	setAttr ".tk[69]" -type "float3" -0.0085874535 0 -0.047308668 ;
	setAttr ".tk[70]" -type "float3" -0.10856593 0 0 ;
	setAttr ".tk[72]" -type "float3" -0.014633574 -0.076765358 -0.030616485 ;
	setAttr ".tk[73]" -type "float3" 0.0064516496 -0.20634761 -0.025407173 ;
	setAttr ".tk[76]" -type "float3" -0.10856593 0 0 ;
	setAttr ".tk[78]" -type "float3" -0.024142422 0.092521243 -0.044748046 ;
	setAttr ".tk[79]" -type "float3" 0.0030264207 -0.10048679 -0.039691143 ;
	setAttr ".tk[98]" -type "float3" -0.10856593 0 0 ;
	setAttr ".tk[100]" -type "float3" -0.017092727 -0.2769033 -0.035244711 ;
	setAttr ".tk[101]" -type "float3" 0.0008903984 -0.38583368 -0.029424122 ;
	setAttr ".tk[103]" -type "float3" 0.0013041063 -0.070301056 -0.046847537 ;
	setAttr ".tk[104]" -type "float3" -0.031446621 0.12344629 -0.05169078 ;
	setAttr ".tk[106]" -type "float3" -0.07070788 0.0033787191 -0.050326318 ;
	setAttr ".tk[109]" -type "float3" -0.0089593679 -0.29377657 -0.0015770432 ;
	setAttr ".tk[110]" -type "float3" 0.0005925789 -0.31524247 0.0035352539 ;
	setAttr ".tk[112]" -type "float3" -0.047635194 -0.28382999 -0.032583315 ;
	setAttr ".tk[115]" -type "float3" -0.048733588 -0.26144564 -0.037888862 ;
	setAttr ".tk[116]" -type "float3" -0.048441958 -0.2285279 -0.04568553 ;
	setAttr ".tk[119]" -type "float3" -0.040256351 -0.14777279 -0.016024083 ;
	setAttr ".tk[121]" -type "float3" -0.041825023 -0.12541667 -0.021303631 ;
	setAttr ".tk[123]" -type "float3" -0.044704165 -0.10287156 -0.026536763 ;
	setAttr ".tk[125]" -type "float3" -0.04811665 -0.081103705 -0.031545058 ;
	setAttr ".tk[127]" -type "float3" -0.054012597 -0.053458601 -0.037795909 ;
	setAttr ".tk[129]" -type "float3" -0.062869146 -0.020369321 -0.045151375 ;
	setAttr ".tk[131]" -type "float3" -0.0089643849 -0.2713719 0.0035703699 ;
	setAttr ".tk[133]" -type "float3" -0.026699085 -0.35937637 -0.014652998 ;
	setAttr ".tk[135]" -type "float3" -0.025971416 -0.33843249 -0.019620156 ;
	setAttr ".tk[137]" -type "float3" -0.043350335 -0.31358725 -0.025522113 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "571C30FB-E14F-B9C2-149C-C38EC5FA9600";
	setAttr ".ics" -type "componentList" 2 "vtx[35]" "vtx[187]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "BF11F601-0E4B-0B73-DCF5-7FB794EB86FF";
	setAttr ".ics" -type "componentList" 2 "vtx[44]" "vtx[187]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "ED94B24E-2C47-1661-1B04-AEBB301E271C";
	setAttr ".ics" -type "componentList" 2 "vtx[41]" "vtx[199]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "4C2B6029-4440-4099-E5BA-49B20574C65A";
	setAttr ".ics" -type "componentList" 2 "vtx[95]" "vtx[199]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "A2984384-814D-3763-2F04-85BD2A0C9A62";
	setAttr ".ics" -type "componentList" 2 "vtx[50]" "vtx[207]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "BC1516C0-2C45-6E36-BEBF-64954871D3B7";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[157]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "D01A10A5-7B4F-060F-D667-558882A44B80";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[157]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "2A3C1514-0A47-C4B0-097B-E485BE664E95";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[174]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "AC6FFDB5-7443-6E37-2DB3-949E5A0B60B8";
	setAttr ".ics" -type "componentList" 2 "vtx[16]" "vtx[169]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert10";
	rename -uid "A035BBCC-0946-9FFC-014A-56A3D9A0C665";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[145]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert11";
	rename -uid "FA773621-6243-12AF-F6DD-688CEB5D39E3";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[142]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert12";
	rename -uid "942FBD5C-3448-09FF-5600-6FBEB8A8ED54";
	setAttr ".ics" -type "componentList" 2 "vtx[111]" "vtx[240]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert13";
	rename -uid "9CE0C3C8-3E43-9149-8942-CFBA902B07D0";
	setAttr ".ics" -type "componentList" 2 "vtx[110]" "vtx[240]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert14";
	rename -uid "A3B1432C-FB4C-AE5A-3AB6-39BE6911439C";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[174]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert15";
	rename -uid "0E97AC35-654B-C176-D7A4-D18DF1609D44";
	setAttr ".ics" -type "componentList" 2 "vtx[31]" "vtx[162]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert16";
	rename -uid "C9C7ECB1-EC49-1C5C-4E72-F392DB82A324";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[162]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert17";
	rename -uid "545742FA-0444-1C60-47EA-C5945E7CB1EA";
	setAttr ".ics" -type "componentList" 2 "vtx[55]" "vtx[201]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert18";
	rename -uid "AF24136D-144A-B1EE-9F9D-24ADB6A0A1A9";
	setAttr ".ics" -type "componentList" 2 "vtx[101]" "vtx[185]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert19";
	rename -uid "59B9CA8D-F544-ACF5-56CB-7D8BC146D952";
	setAttr ".ics" -type "componentList" 2 "vtx[40]" "vtx[185]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert20";
	rename -uid "03B49350-C749-6F72-009C-DDA211F70E6C";
	setAttr ".ics" -type "componentList" 2 "vtx[49]" "vtx[173]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert21";
	rename -uid "9F2ABAF8-1449-679B-C740-D6AF75D333A2";
	setAttr ".ics" -type "componentList" 2 "vtx[34]" "vtx[173]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert22";
	rename -uid "1E829989-E243-F943-E991-24916F9CD7FD";
	setAttr ".ics" -type "componentList" 2 "vtx[61]" "vtx[202]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert23";
	rename -uid "F7D326BB-FB4F-9479-643A-33A556FC7B66";
	setAttr ".ics" -type "componentList" 2 "vtx[73]" "vtx[213]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert24";
	rename -uid "7137B8D4-4C4A-4762-207D-7795AB83E940";
	setAttr ".ics" -type "componentList" 2 "vtx[67]" "vtx[213]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert25";
	rename -uid "E78BF478-B949-7613-E8C0-3FA1CB95080F";
	setAttr ".ics" -type "componentList" 2 "vtx[79]" "vtx[215]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert26";
	rename -uid "0323FFA0-AB48-71E3-32BC-219F498B1078";
	setAttr ".ics" -type "componentList" 2 "vtx[103]" "vtx[216]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert27";
	rename -uid "D123AF58-DE45-36B7-2656-AF937468F099";
	setAttr ".ics" -type "componentList" 2 "vtx[102]" "vtx[216]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert28";
	rename -uid "90F467CA-A84D-0A24-425A-31AD1EDFFCB1";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[144]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert29";
	rename -uid "0BAC1EFF-FA47-478E-EDDD-BB8A277CEC48";
	setAttr ".ics" -type "componentList" 2 "vtx[74]" "vtx[144]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert30";
	rename -uid "140CFD3D-1640-4C20-F26B-1595A7B01916";
	setAttr ".ics" -type "componentList" 2 "vtx[62]" "vtx[202]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert31";
	rename -uid "7FF12D02-8742-32E3-DE62-A69841D14402";
	setAttr ".ics" -type "componentList" 2 "vtx[68]" "vtx[202]";
	setAttr ".ix" -type "matrix" 19.391696121389913 0 0 0 0 1.755023538391949 0 0 0 0 35.822348607405694 0
		 0 0 3.1621309677359539 1;
	setAttr ".am" yes;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "5827B773-F24D-1109-8286-8D9B6265C7ED";
	setAttr ".dc" -type "componentList" 0;
createNode deleteComponent -n "deleteComponent6";
	rename -uid "F1CA75BF-4041-2828-7114-9D9EE46AD4BA";
	setAttr ".dc" -type "componentList" 0;
createNode polySphere -n "polySphere1";
	rename -uid "C33507F1-5343-644D-EC5C-89871342717E";
	setAttr ".sa" 12;
	setAttr ".sh" 12;
createNode deleteComponent -n "deleteComponent7";
	rename -uid "0ABAE3DC-8B45-D937-AAC9-3C956FE58A13";
	setAttr ".dc" -type "componentList" 11 "f[6:9]" "f[17:22]" "f[29:34]" "f[41:46]" "f[53:58]" "f[65:70]" "f[77:82]" "f[89:94]" "f[102:105]" "f[114:117]" "f[127:128]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "2AD73F81-0444-CD7C-F33B-DD8FBE6672BE";
	setAttr ".dc" -type "componentList" 2 "f[5:6]" "f[71:74]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "43D7FA69-D642-8F3E-E4D1-97BB64EB0F4E";
	setAttr ".dc" -type "componentList" 3 "f[53:54]" "f[61:62]" "f[75:80]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "05502340-8940-112C-1143-599BB03D5F54";
	setAttr ".ics" -type "componentList" 11 "e[71:72]" "e[78:79]" "e[83]" "e[85:86]" "e[92:93]" "e[99:100]" "e[106:107]" "e[113:114]" "e[120:121]" "e[127:128]" "e[134:135]";
	setAttr ".ix" -type "matrix" 2.948125614829169 0 0 0 0 0.26322482371873573 11.135760788426795 0
		 0 -2.947302334117015 0.069667726532887497 0 0 0.36974472976493988 6.0564293582422692 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".sv1" 75;
	setAttr ".sv2" 6;
createNode polyMergeVert -n "polyMergeVert32";
	rename -uid "CF5E8FE8-D44A-D204-D3FB-9A9AE50928B3";
	setAttr ".ics" -type "componentList" 2 "vtx[77]" "vtx[79]";
	setAttr ".ix" -type "matrix" 2.948125614829169 0 0 0 0 0.26322482371873573 11.135760788426795 0
		 0 -2.947302334117015 0.069667726532887497 0 0 0.36974472976493988 6.0564293582422692 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak25";
	rename -uid "32CADCA6-F74E-0124-2BB4-30996E013439";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[79]" -type "float3" 0 -0.033359226 0.00052265538 ;
	setAttr ".tk[89]" -type "float3" 0 0.039211348 0 ;
createNode polyMergeVert -n "polyMergeVert33";
	rename -uid "9DEBA82E-DD45-A574-586F-7E8B161DE2A2";
	setAttr ".ics" -type "componentList" 2 "vtx[78]" "vtx[88]";
	setAttr ".ix" -type "matrix" 2.948125614829169 0 0 0 0 0.26322482371873573 11.135760788426795 0
		 0 -2.947302334117015 0.069667726532887497 0 0 0.36974472976493988 6.0564293582422692 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak26";
	rename -uid "E522A735-E640-5A32-9145-A8BEDDD0952F";
	setAttr ".uopa" yes;
	setAttr ".tk[88]" -type "float3"  0 -0.0053418488 -0.00047708268;
createNode deleteComponent -n "deleteComponent10";
	rename -uid "2BE6E8EE-1A4B-7F6F-2E3D-9696DD3B67D4";
	setAttr ".dc" -type "componentList" 0;
createNode polyPipe -n "polyPipe1";
	rename -uid "939F503F-764B-B200-F6A3-298196333E12";
	setAttr ".t" 0.2;
	setAttr ".sa" 10;
	setAttr ".sc" 0;
createNode deleteComponent -n "deleteComponent11";
	rename -uid "6735FD38-D740-707E-4E11-B187123C2AA6";
	setAttr ".dc" -type "componentList" 4 "f[7]" "f[17]" "f[27]" "f[37]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "EFBCAD25-804D-ACCB-EC0B-14A091638AE9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[43:44]" "e[53:54]" "e[63:64]" "e[73:74]";
	setAttr ".ix" -type "matrix" 10.988480271159059 0 0 0 0 2.9570986235938571e-15 13.317588259315102 0
		 0 -10.988480271159059 2.4399327605360141e-15 0 0 0.15338582982281235 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.1461879e-06 -9.2522144 2.220446e-15 ;
	setAttr ".rs" 1028454979;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.3956288737422171 -10.297282161753188 -6.658794129657549 ;
	setAttr ".cbx" -type "double3" 3.3956265813665958 -8.2071464675517021 6.6587941296575535 ;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	rename -uid "6B6B2B2E-4544-D008-9CD6-4FABC43B7B68";
	setAttr ".ics" -type "componentList" 2 "e[81]" "e[89]";
	setAttr ".ix" -type "matrix" 10.988480271159059 0 0 0 0 2.9570986235938571e-15 13.317588259315102 0
		 0 -10.988480271159059 2.4399327605360141e-15 0 0 0.15338582982281235 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 43;
	setAttr ".sv2" 47;
createNode polyTweak -n "polyTweak27";
	rename -uid "2DECFA78-7147-CA79-2ED0-799734B69D2B";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[40:47]" -type "float3"  0.18160151 0 0 0.18160151
		 0 0 -0.18160149 0 0 -0.18160149 0 0 0.017409628 0 0 -0.017409628 0 0 0.017409628
		 0 0 -0.017409628 0 0;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	rename -uid "9AFC3773-A74C-D2A5-7709-87835C41894B";
	setAttr ".ics" -type "componentList" 2 "e[78]" "e[87]";
	setAttr ".ix" -type "matrix" 10.988480271159059 0 0 0 0 2.9570986235938571e-15 13.317588259315102 0
		 0 -10.988480271159059 2.4399327605360141e-15 0 0 0.15338582982281235 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 40;
	setAttr ".sv2" 44;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 5 ".dsm";
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
connectAttr "polySplitRing3.out" "RocketShape.i";
connectAttr "polyBridgeEdge3.out" "ClawShape.i";
connectAttr "polySplitRing11.out" "WingsShape.i";
connectAttr "deleteComponent6.og" "ShipShape.i";
connectAttr "deleteComponent10.og" "CockpitShape.i";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":topShape.msg" "imagePlaneShape1.ltc";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "RocketShape.wm" "polySplitRing1.mp";
connectAttr "polyCylinder1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polySplitRing2.ip";
connectAttr "RocketShape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polySplitRing3.ip";
connectAttr "RocketShape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing2.out" "polyTweak3.ip";
connectAttr "polyCube1.out" "polySplitRing4.ip";
connectAttr "WingsShape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polySplitRing5.ip";
connectAttr "WingsShape.wm" "polySplitRing5.mp";
connectAttr "polyTweak5.out" "polySplitRing6.ip";
connectAttr "WingsShape.wm" "polySplitRing6.mp";
connectAttr "polySplitRing5.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polySplitRing7.ip";
connectAttr "WingsShape.wm" "polySplitRing7.mp";
connectAttr "polySplitRing6.out" "polyTweak6.ip";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "WingsShape.wm" "polySplitRing8.mp";
connectAttr "polyTweak7.out" "polyMirror1.ip";
connectAttr "WingsShape.wm" "polyMirror1.mp";
connectAttr "polySplitRing8.out" "polyTweak7.ip";
connectAttr "polyMirror1.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polySplitRing9.ip";
connectAttr "WingsShape.wm" "polySplitRing9.mp";
connectAttr "polyTweak8.out" "polySplitRing10.ip";
connectAttr "WingsShape.wm" "polySplitRing10.mp";
connectAttr "polySplitRing9.out" "polyTweak8.ip";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "WingsShape.wm" "polySplitRing11.mp";
connectAttr "polyCube2.out" "polySplitRing12.ip";
connectAttr "ShipShape.wm" "polySplitRing12.mp";
connectAttr "polyTweak9.out" "polySplitRing13.ip";
connectAttr "ShipShape.wm" "polySplitRing13.mp";
connectAttr "polySplitRing12.out" "polyTweak9.ip";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "ShipShape.wm" "polySplitRing14.mp";
connectAttr "polyTweak10.out" "polySplitRing15.ip";
connectAttr "ShipShape.wm" "polySplitRing15.mp";
connectAttr "polySplitRing14.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polySplitRing16.ip";
connectAttr "ShipShape.wm" "polySplitRing16.mp";
connectAttr "polySplitRing15.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polySplitRing17.ip";
connectAttr "ShipShape.wm" "polySplitRing17.mp";
connectAttr "polySplitRing16.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polySplitRing18.ip";
connectAttr "ShipShape.wm" "polySplitRing18.mp";
connectAttr "polySplitRing17.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polySplitRing19.ip";
connectAttr "ShipShape.wm" "polySplitRing19.mp";
connectAttr "polySplitRing18.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polySplitRing20.ip";
connectAttr "ShipShape.wm" "polySplitRing20.mp";
connectAttr "polySplitRing19.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polySplitRing21.ip";
connectAttr "ShipShape.wm" "polySplitRing21.mp";
connectAttr "polySplitRing20.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polySplitRing22.ip";
connectAttr "ShipShape.wm" "polySplitRing22.mp";
connectAttr "polySplitRing21.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polySplitRing23.ip";
connectAttr "ShipShape.wm" "polySplitRing23.mp";
connectAttr "polySplitRing22.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polySplitRing24.ip";
connectAttr "ShipShape.wm" "polySplitRing24.mp";
connectAttr "polySplitRing23.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polySplitRing25.ip";
connectAttr "ShipShape.wm" "polySplitRing25.mp";
connectAttr "polySplitRing24.out" "polyTweak20.ip";
connectAttr "polySplitRing25.out" "polySplitRing26.ip";
connectAttr "ShipShape.wm" "polySplitRing26.mp";
connectAttr "polyTweak21.out" "polySplitRing27.ip";
connectAttr "ShipShape.wm" "polySplitRing27.mp";
connectAttr "polySplitRing26.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polySplitRing28.ip";
connectAttr "ShipShape.wm" "polySplitRing28.mp";
connectAttr "polySplitRing27.out" "polyTweak22.ip";
connectAttr "polySplitRing28.out" "polyTweak23.ip";
connectAttr "polyTweak23.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyBevel1.ip";
connectAttr "ShipShape.wm" "polyBevel1.mp";
connectAttr "polyTweak24.out" "polyMirror2.ip";
connectAttr "ShipShape.wm" "polyMirror2.mp";
connectAttr "polyBevel1.out" "polyTweak24.ip";
connectAttr "polyMirror2.out" "polyMergeVert1.ip";
connectAttr "ShipShape.wm" "polyMergeVert1.mp";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "ShipShape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polyMergeVert3.ip";
connectAttr "ShipShape.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "ShipShape.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert4.out" "polyMergeVert5.ip";
connectAttr "ShipShape.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert5.out" "polyMergeVert6.ip";
connectAttr "ShipShape.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert6.out" "polyMergeVert7.ip";
connectAttr "ShipShape.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert7.out" "polyMergeVert8.ip";
connectAttr "ShipShape.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert8.out" "polyMergeVert9.ip";
connectAttr "ShipShape.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert9.out" "polyMergeVert10.ip";
connectAttr "ShipShape.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert10.out" "polyMergeVert11.ip";
connectAttr "ShipShape.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert11.out" "polyMergeVert12.ip";
connectAttr "ShipShape.wm" "polyMergeVert12.mp";
connectAttr "polyMergeVert12.out" "polyMergeVert13.ip";
connectAttr "ShipShape.wm" "polyMergeVert13.mp";
connectAttr "polyMergeVert13.out" "polyMergeVert14.ip";
connectAttr "ShipShape.wm" "polyMergeVert14.mp";
connectAttr "polyMergeVert14.out" "polyMergeVert15.ip";
connectAttr "ShipShape.wm" "polyMergeVert15.mp";
connectAttr "polyMergeVert15.out" "polyMergeVert16.ip";
connectAttr "ShipShape.wm" "polyMergeVert16.mp";
connectAttr "polyMergeVert16.out" "polyMergeVert17.ip";
connectAttr "ShipShape.wm" "polyMergeVert17.mp";
connectAttr "polyMergeVert17.out" "polyMergeVert18.ip";
connectAttr "ShipShape.wm" "polyMergeVert18.mp";
connectAttr "polyMergeVert18.out" "polyMergeVert19.ip";
connectAttr "ShipShape.wm" "polyMergeVert19.mp";
connectAttr "polyMergeVert19.out" "polyMergeVert20.ip";
connectAttr "ShipShape.wm" "polyMergeVert20.mp";
connectAttr "polyMergeVert20.out" "polyMergeVert21.ip";
connectAttr "ShipShape.wm" "polyMergeVert21.mp";
connectAttr "polyMergeVert21.out" "polyMergeVert22.ip";
connectAttr "ShipShape.wm" "polyMergeVert22.mp";
connectAttr "polyMergeVert22.out" "polyMergeVert23.ip";
connectAttr "ShipShape.wm" "polyMergeVert23.mp";
connectAttr "polyMergeVert23.out" "polyMergeVert24.ip";
connectAttr "ShipShape.wm" "polyMergeVert24.mp";
connectAttr "polyMergeVert24.out" "polyMergeVert25.ip";
connectAttr "ShipShape.wm" "polyMergeVert25.mp";
connectAttr "polyMergeVert25.out" "polyMergeVert26.ip";
connectAttr "ShipShape.wm" "polyMergeVert26.mp";
connectAttr "polyMergeVert26.out" "polyMergeVert27.ip";
connectAttr "ShipShape.wm" "polyMergeVert27.mp";
connectAttr "polyMergeVert27.out" "polyMergeVert28.ip";
connectAttr "ShipShape.wm" "polyMergeVert28.mp";
connectAttr "polyMergeVert28.out" "polyMergeVert29.ip";
connectAttr "ShipShape.wm" "polyMergeVert29.mp";
connectAttr "polyMergeVert29.out" "polyMergeVert30.ip";
connectAttr "ShipShape.wm" "polyMergeVert30.mp";
connectAttr "polyMergeVert30.out" "polyMergeVert31.ip";
connectAttr "ShipShape.wm" "polyMergeVert31.mp";
connectAttr "polyMergeVert31.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "polySphere1.out" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "polyBridgeEdge1.ip";
connectAttr "CockpitShape.wm" "polyBridgeEdge1.mp";
connectAttr "polyTweak25.out" "polyMergeVert32.ip";
connectAttr "CockpitShape.wm" "polyMergeVert32.mp";
connectAttr "polyBridgeEdge1.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polyMergeVert33.ip";
connectAttr "CockpitShape.wm" "polyMergeVert33.mp";
connectAttr "polyMergeVert32.out" "polyTweak26.ip";
connectAttr "polyMergeVert33.out" "deleteComponent10.ig";
connectAttr "polyPipe1.out" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "polyExtrudeEdge1.ip";
connectAttr "ClawShape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak27.out" "polyBridgeEdge2.ip";
connectAttr "ClawShape.wm" "polyBridgeEdge2.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak27.ip";
connectAttr "polyBridgeEdge2.out" "polyBridgeEdge3.ip";
connectAttr "ClawShape.wm" "polyBridgeEdge3.mp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "RocketShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WingsShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ShipShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CockpitShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ClawShape.iog" ":initialShadingGroup.dsm" -na;
// End of Kamikaze_Enemy.ma
