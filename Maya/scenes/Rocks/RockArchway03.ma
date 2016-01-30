//Maya ASCII 2016 scene
//Name: RockArchway03.ma
//Last modified: Thu, Jan 28, 2016 06:23:07 PM
//Codeset: UTF-8
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201507301600-967122";
fileInfo "osv" "Mac OS X 10.9.5";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "218D27B5-DD4D-243D-FCBD-F082B7EE9443";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -10.145696654186663 6.3104191730338437 25.983705963249406 ;
	setAttr ".r" -type "double3" -5.7383527294062224 346.9999999996611 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C130B337-E846-D6B5-3B60-54A19BF18200";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 26.810952514088136;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.88032089225826504 3.5457615308080754 -0.87542426586151123 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "743188D6-CC42-9EDE-9CF8-649C9A1D2B44";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.88032089225826504 100.10798136281171 -0.8754242658614898 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "2CB813BE-674F-2843-3910-A0BB9D4711AC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 1.0526315789473684;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "457D8A68-DE4C-A32C-91E0-07B5FDF0E293";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.8214549056382885 3.7626313895877255 100.16607065269874 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "A5315E74-4244-973B-1226-FA827087AF3D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 24.19600573781479;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "FF59499E-C744-9D98-16F7-2FB59EB9B7B4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.16719572837077 3.5457615308080754 -0.87542426586148914 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "55AC9F7C-3A4B-E846-7E80-0D96DD132C14";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 1.0526315789473684;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder4";
	rename -uid "30638194-D249-27A1-35F4-BABCD9A0EACA";
	setAttr ".rp" -type "double3" -3.8393957614898682 3.7146952748298645 0.24942731857299805 ;
	setAttr ".sp" -type "double3" -3.8393957614898682 3.7146952748298645 0.24942731857299805 ;
createNode mesh -n "pCylinder4Shape" -p "pCylinder4";
	rename -uid "44CE72FC-1340-6BA0-1B52-AE848187214B";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:269]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.56823858618736267 0.93876421451568604 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 189 ".uvst[0].uvsp[0:188]" -type "float2" 0.62640893 0.064408526
		 0.54828387 0.0076473951 0.45171607 0.00764741 0.37359107 0.064408556 0.34375 0.15625001
		 0.37359107 0.24809146 0.4517161 0.3048526 0.54828393 0.3048526 0.62640893 0.24809144
		 0.65625 0.15625 0.375 0.40648496 0.40000001 0.3125 0.42500001 0.3125 0.45000002 0.3125
		 0.47500002 0.3125 0.5 0.3125 0.52499998 0.3125 0.54999995 0.40648496 0.57499993 0.40648496
		 0.5999999 0.40648496 0.62499988 0.40648496 0.375 0.40648496 0.40000001 0.40648496
		 0.42500001 0.40648496 0.45000002 0.40648496 0.47500002 0.40648496 0.5 0.40648496
		 0.52499998 0.40648496 0.57499993 0.40648496 0.5999999 0.40648496 0.62499988 0.40648496
		 0.375 0.50046992 0.45000002 0.50046992 0.5 0.50046992 0.62499988 0.50046992 0.375
		 0.59445488 0.42500001 0.59445488 0.47500002 0.59445488 0.375 0.68843985 0.40000001
		 0.68843985 0.42500001 0.68843985 0.45000002 0.68843985 0.47500002 0.68843985 0.5999999
		 0.68843985 0.62499988 0.68843985 0.34375 0.84375 0.37359107 0.93559146 0.4517161
		 0.9923526 0.54828393 0.9923526 0.62640893 0.93559146 0.65625 0.84375 0.5 0.15000001
		 0.5 0.83749998 0.62640893 0.93559146 0.54828393 0.9923526 0.4517161 0.9923526 0.37359107
		 0.93559146 0.34375 0.84375 0.65625 0.84375 0.5999999 0.3125 0.62499988 0.3125 0.62499988
		 0.40648496 0.5999999 0.40648496 0.5999999 0.40648496 0.5999999 0.40648496 0.62499988
		 0.40648496 0.37359107 0.75190854 0.37359107 0.75190854 0.5 0.68843985 0.57499993
		 0.50046992 0.54828387 0.6951474 0.45171607 0.6951474 0.62640893 0.75190854 0.62640893
		 0.75190854 0.54999995 0.53326023 0.52499998 0.68843985 0.57499993 0.68843985 0.5999999
		 0.59445488 0.54972827 0.68843985 0.375 0.3125 0.40625 0.3125 0.375 0.68843985 0.40625
		 0.68843985 0.40625 0.3125 0.46875 0.3125 0.40625 0.68843985 0.46875 0.3125 0.46875
		 0.68843985 0.53125 0.3125 0.46875 0.68843985 0.53125 0.3125 0.53125 0.68843985 0.53125
		 0.3125 0.625 0.3125 0.53125 0.68843985 0.625 0.3125 0.625 0.68843985 0.5 0.3125 0.34375
		 0.15625 0.5 1.4901161e-08 0.61048543 0.04576458 0.34375 0.84375 0.5 0.6875 0.5 1
		 0.61048543 0.95423543 0.46875 0.68843985 0.46875 0.3125 0.46875 0.68843985 0.46875
		 0.3125 0.38965756 1 0.875 0.17406788 0.73560083 0.21640742 0.625 0.24477711 0.875
		 0.2164074 0.125 0.17406784 0.125 0.17406784 0.12500001 0.0656325 0.125 0.065632507
		 0.625 0 0.875 0 0.875 0.065632507 0.875 0.065632507 0.37562087 0.99820113 0.875 0.25
		 0.875 0.25 0.77778524 0.25 0.62500006 0.25 0.50496417 6.3400566e-06 0.50821292 4.2466044e-09
		 0.51147717 1 0.50716376 0.193721 0.625 0.25 0.38988137 0.25 0.50610065 0.49999997
		 0.51112747 0.25 0.50496113 1 0.51357806 0.75 0.50705898 0.75 0.625 0.75 0.51155162
		 0.68544245 0.50492507 0.68436754 0.375 0.57593215 0.51098818 0.62529212 0.375 0.68436754
		 0.51100719 0.68436754 0.50680369 0.1484345 0.38965759 8.5575049e-09 0.50231963 0.032219116
		 0.50897306 0.030460538 0.37499997 0.0656325 0.51316279 0.089886725 0.51279682 0.49999997
		 0.38988137 0.5 0.51084095 0.56374365 0.375 0.11985017 0.49893254 0.17406222 0.50586051
		 0.37332615 0.49731028 0.21124017 0.50435722 0.25002116 0.375 0.17406785 0.51245022
		 0.38032663 0.50467253 0.37205663 0.38988137 0.25 0.51247793 0.87752843 0.625 1 0.5059756
		 0.87663299 0.38965756 0.75 0.51112133 0.7201035 0.50444508 0.71835071 0.375 0.68436754
		 0.51736343 0.65349191 0.52100742 0.57593215 0.625 0.57593215 0.625 0.68436754 0.517874
		 0.076885834 0.51147461 4.1280042e-09 0.50889254 0.065632507 0.625 0.065632507 0.50535703
		 0.5372932 0.51335073 0.14964381 0.625 0.17406785 0.50258011 0.17406785 0.625 0.17406785
		 0.375 0.57593215 0.5113349 0.37913367 0.62499994 0.49999997 0.51147717 1 0.5059756
		 0.87663299 0.51247793 0.87752843;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[83]" -type "float3" -0.29420018 -0.047157638 -0.29175237 ;
	setAttr ".pt[115]" -type "float3" 0.40516338 0.0090230647 -0.43705854 ;
	setAttr ".pt[116]" -type "float3" -0.048153341 -0.28988782 -1.2491914 ;
	setAttr ".pt[117]" -type "float3" -0.26275775 -0.23377141 0.16887592 ;
	setAttr ".pt[138]" -type "float3" 0 0 -0.12952211 ;
	setAttr ".pt[139]" -type "float3" -0.31111801 0 -0.76064539 ;
	setAttr ".pt[140]" -type "float3" 0 0 -0.12952211 ;
	setAttr -s 141 ".vt[0:140]"  -7.9862957 1.37416124 -0.54104203 -8.54054832 1.0026974678 -1.10493445
		 -8.75856209 0.96567321 -1.17123151 -9.44172668 0.96567321 -0.93133175 -9.85340786 0.96567321 -0.33569485
		 -9.83635902 0.96567321 0.38816607 -8.97929192 2.37212038 0.55830389 -7.9862957 1.37416124 0.54104185
		 -7.86374044 1.37416124 -4.7400341e-09 -8.47541904 2.098027945 -0.54104203 -9.47565651 2.022732973 -0.39478567
		 -9.36297131 2.50409412 0.46987405 -8.16127396 2.059635639 0.48326519 -8.93916321 2.8758347 -0.7860738
		 -9.4981699 2.98707724 -0.001579089 -7.90806484 3.3320446 -0.48642361 -8.31256676 3.41254091 -0.78607392
		 -8.81255817 3.51203918 -0.7860738 -9.21706009 3.59253502 -0.48642346 -9.54536438 3.52722645 0.10816955
		 -7.75355864 3.3012979 -0.0015791385 -7.62559319 0.060193777 -0.38816607 -8.078296661 0.082625747 -0.55774999
		 -8.75856209 0.044355154 -1.17123151 -9.44172668 0.044355154 -0.93133175 -10.31499577 0.044355154 -0.33569485
		 -10.29794693 0.044355154 0.38816607 -9.39709091 0.044355154 0.96376073 -8.70339012 0.96567321 1.17123151
		 -8.020226479 0.96567321 0.93133169 -7.60854435 0.060193777 0.33569491 -8.7309761 0.044355154 2.7306472e-08
		 -8.16481209 3.97626734 -0.41134244 -8.51472092 3.97626734 -0.66556615 -8.7309761 3.97626734 7.2341457e-08
		 -8.94723129 3.97626734 -0.66556627 -9.29714108 3.97626734 -0.41134256 -9.43079376 3.97626734 5.2397152e-08
		 -9.29714108 3.97626734 0.41134268 -8.67733288 3.87848425 0.59485549 -8.16481209 3.97626734 0.41134256
		 -8.031158447 3.97626734 1.0684758e-08 -6.76457071 0.044355154 0.32205731 -6.78161955 0.044355154 -0.40180367
		 -7.046562672 0.96567321 -0.40180367 -7.029513836 0.96567321 0.32205731 -7.28378296 2.60126925 -4.7400341e-09
		 -7.086109161 2.5513401 0.33569491 -6.88709831 2.4308269 -0.40180367 -9.27636909 3.37670064 0.51268935
		 -8.50524712 2.46877146 0.74820185 -8.033204079 2.69174957 0.11248822 -8.27623749 3.6404562 0.75566769
		 -8.053736687 3.18256497 0.46928945 1.26718903 0.04346168 -0.80500382 0.1995821 -0.0014183521 0
		 1.19958162 -0.0014183521 0.99999994 2.59319401 0.024419785 -0.70710671 1.19958162 4.8935051 -0.72825134
		 0.1995821 4.8935051 0 1.19958162 4.8935051 0.99999994 1.93919516 4.83309078 -0.31875744
		 0.77879381 0.017396331 -1.75036657 -0.45499897 -0.040459991 -1.061245799 0.36003399 3.41757536 -1.40979552
		 -0.28358936 -0.017628908 0.48317149 0.71641016 -0.0026938915 1.48317146 -0.28358936 3.40504742 0.48317149
		 -0.59464359 -0.012912393 -0.45005229 -0.59464359 3.25257921 -0.45005229 -1.077815056 -0.016500354 0.033119202
		 -1.077815056 2.25069451 0.033119202 1.1755904 0.36514163 0.75022256 2.30702996 0.38611901 -0.63573509
		 1.1755904 4.3392086 0.75022256 2.21059418 7.22233534 1.77624166 1.85004163 7.3058033 -1.17575538
		 2.56928992 5.42548037 -1.6902343 -10.83822823 4.6855917 -1.6902343 1.80394936 5.41217518 2.68878722
		 2.57364106 6.40646458 -1.84679413 2.38216496 6.14301109 2.4207499 2.41741896 4.83781672 -1.8800838
		 2.41741896 4.83781672 2.35852957 -10.15808678 4.31702852 -1.85541296 -9.6855793 3.89289689 -1.71427536
		 -10.16397953 4.45117569 1.68960392 -9.6855793 3.89289689 1.71427536 3.6153903 5.74461412 -1.55012286
		 -10.6189127 5.26137114 1.53482997 -11.29418182 5.36972094 -2.12239814 -9.42669678 6.61175251 1.53482997
		 -10.10817242 6.014411449 -1.53482997 -9.47820473 6.76928806 -1.93742764 -9.48602962 6.09280014 1.78227413
		 1.74933958 6.50509262 1.64951944 2.94883466 6.93875027 0.11860475 3.3955102 6.71882915 -1.66327131
		 2.83818269 6.774786 -1.16347635 3.29324245 6.60625315 1.57494867 3.40403795 6.66071177 0.047316246
		 3.39370966 6.87505054 1.63805068 -9.0376091 7.23706198 0.41150153 -2.31569386 6.49090528 1.74483705
		 -6.42804718 6.074106693 1.64197087 -6.46969366 6.49756098 1.77944839 -6.43314934 6.81552315 1.24251604
		 -2.27999496 7.0058064461 1.249475 -6.29709053 7.18173933 -1.27072942 -2.15065551 6.92269516 -1.27057946
		 -2.17627501 7.14385605 -0.066630118 -6.31181717 7.46985054 0.019105501 -6.35210419 7.084816933 0.17243347
		 -2.20684743 7.23656034 0.085612208 -6.72681379 3.97498727 1.71430123 -2.51512694 4.33909225 2.32200909
		 -2.46354365 4.33761168 0.032724801 -6.67440414 3.97450066 0.022395704 -2.40683222 4.33593655 -1.80158901
		 -6.6184926 3.9738729 -1.79682469 -1.86560249 4.69038439 -1.20497966 -6.58911943 4.24157572 -1.86827898
		 -2.1639154 5.15338564 -1.76830089 -6.56483746 4.58713913 -1.77079487 -2.094251871 5.50359631 -1.81348717
		 -5.4029932 5.1545043 -1.3989861 -0.76359439 6.26943922 -2.18993258 -3.60531855 6.23571682 -1.78991926
		 -5.78086758 5.59659481 -1.93278658 -6.55993652 5.60678291 1.57247269 -2.38125539 5.59931278 2.091795921
		 -2.42768764 5.094270229 2.14596891 -6.59380484 5.21808529 1.7187711 -6.69071341 4.60125208 1.42309213
		 -2.48735619 4.78376055 2.068000793 -6.64340687 4.87647057 1.23595595 -6.35158968 6.60388947 -1.18708122
		 -2.42021656 5.97069502 1.24033821 -6.43092442 4.069462776 0.12067907 -2.62717462 4.40289021 2.2237258
		 -2.58000064 4.40153599 0.13012524;
	setAttr -s 405 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 0 0
		 9 10 0 10 11 0 12 9 0 51 13 0 13 14 0 15 16 0 16 17 0 17 18 0 18 19 0 19 49 0 53 20 0
		 20 15 0 0 9 0 2 10 0 4 11 0 9 13 0 10 14 0 51 15 0 13 17 0 14 19 0 21 22 0 22 1 0
		 0 21 0 21 1 0 22 23 0 23 2 0 23 24 0 24 3 0 24 25 0 25 4 0 25 26 0 26 5 0 26 27 0
		 27 6 0 27 28 0 7 28 0 28 29 0 29 30 0 8 30 0 30 21 0 31 21 0 31 22 0 31 23 0 31 24 0
		 31 25 0 31 26 0 31 27 0 31 28 0 31 29 0 31 30 0 15 32 0 16 33 0 32 33 0 33 34 0 32 34 0
		 17 35 0 33 35 0 35 34 0 18 36 0 35 36 0 36 34 0 19 37 0 36 37 0 37 34 0 37 38 0 38 34 0
		 39 34 0 39 40 0 40 34 0 20 41 0 40 41 0 41 34 0 41 32 0 30 42 0 21 44 0 45 44 0 42 45 0
		 8 46 0 21 46 0 45 47 0 44 48 0 47 48 0 46 48 0 23 1 0 24 2 0 25 3 0 26 4 0 27 5 0
		 28 6 0 43 45 0 1 9 0 10 1 0 3 10 0 4 10 0 5 11 0 6 11 0 7 12 0 8 12 0 0 12 0 10 13 0
		 11 14 0 9 51 0 13 15 0 13 16 0 14 17 0 14 18 0 11 19 0 51 20 0 7 29 0 7 30 0 16 32 0
		 17 33 0 18 35 0 19 36 0 49 37 0 53 40 0 20 40 0 15 41 0 21 42 0 21 43 0 47 46 0 30 45 0
		 47 8 0 0 46 0 47 30 0 44 47 0 21 48 0 43 42 0 44 43 0 12 50 0 50 6 0 49 38 0 49 39 0
		 6 49 0 51 53 0 52 40 0 53 52 0 39 50 0 7 50 0 49 11 0 50 52 0 39 38 0 52 39 0 12 51 0
		 53 50 0 39 6 0 12 53 0 54 55 0 55 56 0 56 57 0 61 58 0 59 60 0 60 61 0 57 61 0 54 58 0
		 55 59 0 56 60 0;
	setAttr ".ed[166:331]" 54 56 0 54 57 0 59 58 0 60 58 0 54 61 0 55 58 0 56 59 0
		 57 60 0 54 62 0 55 63 0 62 63 0 58 64 0 63 64 0 62 64 0 55 65 0 56 66 0 65 66 0 59 67 0
		 66 67 0 65 67 0 55 68 0 59 69 0 68 69 0 65 70 0 68 70 0 67 71 0 70 71 0 69 71 0 63 54 0
		 64 55 0 54 64 0 56 65 0 67 56 0 68 71 0 55 69 0 65 68 0 71 65 0 69 67 0 56 72 0 57 73 0
		 72 73 0 60 74 0 73 74 0 72 74 0 73 56 0 74 57 0 56 74 0 75 76 0 76 80 0 79 81 0 79 77 0
		 80 77 0 82 83 0 77 82 0 78 84 0 83 79 0 85 84 0 86 89 0 87 86 0 84 86 0 87 85 0 81 80 0
		 76 98 0 75 101 0 77 88 0 79 88 0 78 90 0 91 94 0 92 90 0 94 92 0 93 91 0 89 94 0
		 81 95 0 95 75 0 80 100 0 82 79 0 88 81 0 85 86 0 75 96 0 81 99 0 80 88 0 91 92 0
		 75 81 0 93 92 0 89 92 0 86 78 0 90 89 0 78 89 0 97 80 0 96 98 0 98 97 0 99 101 0
		 100 99 0 97 100 0 101 96 0 97 96 0 101 100 0 91 102 0 93 102 0 103 104 0 137 103 0
		 105 104 0 103 107 0 107 106 0 106 105 0 107 113 0 113 112 0 112 106 0 108 109 0 109 127 0
		 136 108 0 108 111 0 111 110 0 110 109 0 111 112 0 113 110 0 114 115 0 115 134 0 134 133 0
		 133 114 0 114 117 0 117 116 0 116 115 0 117 119 0 119 118 0 118 116 0 119 121 0 121 120 0
		 120 118 0 121 123 0 123 122 0 122 120 0 123 125 0 125 124 0 124 122 0 125 128 0 126 127 0
		 126 124 0 128 127 0 129 130 0 130 137 0 104 129 0 129 132 0 132 131 0 131 130 0 132 135 0
		 135 131 0 134 131 0 135 133 0 127 136 0 75 103 0 103 95 0 75 107 0 102 111 0 108 93 0
		 76 113 0 85 117 0 114 87 0 83 116 0 118 82 0 84 121 0 119 85 0 82 120 0 122 77 0
		 78 125 0 123 84 0;
	setAttr ".ed[332:404]" 90 127 0 128 78 0 89 132 0 129 89 0 133 86 0 134 83 0
		 86 135 0 80 127 0 109 76 0 93 136 0 104 94 0 80 126 0 91 112 0 105 94 0 106 91 0
		 110 76 0 83 115 0 124 77 0 80 124 0 131 79 0 81 130 0 81 137 0 100 81 0 98 80 0 96 76 0
		 99 75 0 96 100 0 104 137 0 103 105 0 103 106 0 107 112 0 127 108 0 108 110 0 111 113 0
		 115 133 0 117 115 0 119 116 0 121 118 0 123 120 0 125 122 0 128 124 0 124 127 0 130 104 0
		 129 131 0 134 135 0 111 93 0 113 75 0 117 87 0 116 82 0 121 85 0 120 77 0 125 84 0
		 127 78 0 133 87 0 79 134 0 132 86 0 127 76 0 127 93 0 129 94 0 111 91 0 91 105 0
		 79 130 0 137 95 0 127 92 0 117 138 0 115 139 0 138 139 0 116 140 0 138 140 0 140 139 0
		 138 115 1 116 138 1 115 140 1;
	setAttr -s 270 -ch 810 ".fc[0:269]" -type "polyFaces" 
		f 3 29 30 -33
		mu 0 3 10 11 22
		f 3 33 92 -31
		mu 0 3 11 12 22
		f 3 -93 34 -2
		mu 0 3 22 12 23
		f 3 35 93 -35
		mu 0 3 12 13 23
		f 3 -94 36 -3
		mu 0 3 23 13 24
		f 3 37 94 -37
		mu 0 3 13 14 24
		f 3 -95 38 -4
		mu 0 3 24 14 25
		f 3 39 95 -39
		mu 0 3 14 15 25
		f 3 -96 40 -5
		mu 0 3 25 15 26
		f 3 41 96 -41
		mu 0 3 15 16 26
		f 3 -97 42 -6
		mu 0 3 26 16 27
		f 3 43 97 -43
		mu 0 3 16 17 27
		f 3 -137 98 -86
		mu 0 3 59 60 62
		f 3 -99 -138 -85
		mu 0 3 62 60 61
		f 3 0 99 -22
		mu 0 3 21 22 31
		f 3 22 100 1
		mu 0 3 23 32 22
		f 3 -101 -10 -100
		mu 0 3 22 32 31
		f 3 2 101 -23
		mu 0 3 23 24 32
		f 3 3 102 -102
		mu 0 3 24 25 32
		f 3 -103 23 -11
		mu 0 3 32 25 33
		f 3 4 103 -24
		mu 0 3 25 26 33
		f 3 5 104 -104
		mu 0 3 26 27 33
		f 3 6 147 139
		mu 0 3 27 28 74
		f 3 105 138 -148
		mu 0 3 28 69 74
		f 3 7 106 -106
		mu 0 3 28 29 69
		f 3 8 107 -107
		mu 0 3 29 30 69
		f 3 -108 21 -12
		mu 0 3 69 30 34
		f 3 -111 24 -13
		mu 0 3 35 31 36
		f 3 9 108 -25
		mu 0 3 31 32 36
		f 3 -109 25 -14
		mu 0 3 36 32 37
		f 3 10 109 -26
		mu 0 3 32 33 37
		f 3 11 110 -153
		mu 0 3 69 34 77
		f 3 12 111 -27
		mu 0 3 35 36 38
		f 3 -112 112 -15
		mu 0 3 38 36 39
		f 3 -113 27 -16
		mu 0 3 39 36 40
		f 3 13 113 -28
		mu 0 3 36 37 40
		f 3 -114 114 -17
		mu 0 3 40 37 41
		f 3 -115 28 -18
		mu 0 3 41 37 42
		f 3 -110 115 -29
		mu 0 3 37 33 42
		f 3 -116 -149 -19
		mu 0 3 42 33 68
		f 3 146 149 151
		mu 0 3 75 74 78
		f 3 -144 116 -20
		mu 0 3 76 77 43
		f 3 -117 26 -21
		mu 0 3 43 77 44
		f 3 -30 -50 50
		mu 0 3 1 0 51
		f 3 -34 -51 51
		mu 0 3 2 1 51
		f 3 -36 -52 52
		mu 0 3 3 2 51
		f 3 -38 -53 53
		mu 0 3 4 3 51
		f 3 -40 -54 54
		mu 0 3 5 4 51
		f 3 -42 -55 55
		mu 0 3 6 5 51
		f 3 -44 -56 56
		mu 0 3 7 6 51
		f 3 -46 -57 57
		mu 0 3 8 7 51
		f 3 -47 -58 58
		mu 0 3 9 8 51
		f 3 -49 -59 49
		mu 0 3 0 9 51
		f 3 61 62 -64
		mu 0 3 53 54 52
		f 3 65 66 -63
		mu 0 3 54 55 52
		f 3 68 69 -67
		mu 0 3 55 56 52
		f 3 71 72 -70
		mu 0 3 56 57 52
		f 3 73 74 -73
		mu 0 3 57 67 52
		f 3 -151 75 -75
		mu 0 3 67 71 52
		f 3 76 77 -76
		mu 0 3 71 73 52
		f 3 79 80 -78
		mu 0 3 73 58 52
		f 3 81 63 -81
		mu 0 3 58 53 52
		f 3 -1 31 32
		mu 0 3 22 21 10
		f 3 -7 -98 -45
		mu 0 3 28 27 17
		f 3 -118 44 45
		mu 0 3 18 28 17
		f 3 -8 118 -48
		mu 0 3 29 28 19
		f 3 -119 117 46
		mu 0 3 19 28 18
		f 3 14 119 -60
		mu 0 3 49 48 53
		f 3 -120 60 -62
		mu 0 3 53 48 54
		f 3 15 120 -61
		mu 0 3 48 47 54
		f 3 -121 64 -66
		mu 0 3 54 47 55
		f 3 16 121 -65
		mu 0 3 47 46 55
		f 3 -122 67 -69
		mu 0 3 55 46 56
		f 3 17 122 -68
		mu 0 3 46 45 56
		f 3 -123 70 -72
		mu 0 3 56 45 57
		f 3 18 123 -71
		mu 0 3 45 66 57
		f 3 -124 140 -74
		mu 0 3 57 66 67
		f 3 141 150 -141
		mu 0 3 66 71 67
		f 3 -152 144 -77
		mu 0 3 71 70 73
		f 3 19 125 -125
		mu 0 3 72 50 73
		f 3 -126 78 -80
		mu 0 3 73 50 58
		f 3 20 126 -79
		mu 0 3 50 49 58
		f 3 -127 59 -82
		mu 0 3 58 49 53
		f 3 48 127 -83
		mu 0 3 19 20 59
		f 3 -128 128 136
		mu 0 3 59 20 60
		f 3 -129 83 137
		mu 0 3 60 20 61
		f 3 -130 90 -92
		mu 0 3 63 64 65
		f 3 -131 82 85
		mu 0 3 62 19 59
		f 3 86 -133 -9
		mu 0 3 29 63 30
		f 3 -134 131 47
		mu 0 3 19 64 29
		f 3 -132 129 -87
		mu 0 3 29 64 63
		f 3 -32 132 -88
		mu 0 3 20 30 63
		f 3 88 133 130
		mu 0 3 62 64 19
		f 3 84 134 -89
		mu 0 3 62 61 64
		f 3 -135 89 -91
		mu 0 3 64 61 65
		f 3 -84 135 -90
		mu 0 3 61 20 65
		f 3 -136 87 91
		mu 0 3 65 20 63
		f 3 -146 124 -145
		mu 0 3 70 72 73
		f 3 -147 154 -140
		mu 0 3 74 75 27
		f 3 -154 145 -150
		mu 0 3 74 76 78
		f 3 -105 142 148
		mu 0 3 33 27 68
		f 3 -143 -155 -142
		mu 0 3 68 27 75
		f 3 -139 155 153
		mu 0 3 74 69 76
		f 3 152 143 -156
		mu 0 3 69 77 76
		f 3 -168 170 -163
		mu 0 3 79 80 81
		f 3 -171 163 -160
		mu 0 3 81 80 82
		f 3 176 178 -180
		mu 0 3 83 84 85
		f 3 -172 164 168
		mu 0 3 82 86 87
		f 3 182 184 -186
		mu 0 3 84 88 89
		f 3 -173 165 -161
		mu 0 3 87 90 91
		f 3 206 208 -210
		mu 0 3 92 93 94
		f 3 -174 162 -162
		mu 0 3 91 95 96
		f 3 -158 -157 166
		mu 0 3 97 98 99
		f 3 -159 -167 167
		mu 0 3 100 97 99
		f 3 160 169 -169
		mu 0 3 101 102 103
		f 3 161 159 -170
		mu 0 3 102 104 103
		f 3 175 194 156
		mu 0 3 86 84 80
		f 3 -195 -177 -175
		mu 0 3 80 84 83
		f 3 177 195 171
		mu 0 3 82 85 86
		f 3 -196 -179 -176
		mu 0 3 86 85 84
		f 3 -164 196 -178
		mu 0 3 82 80 85
		f 3 -197 174 179
		mu 0 3 85 80 83
		f 3 157 197 -181
		mu 0 3 86 90 84
		f 3 -198 181 -183
		mu 0 3 84 90 88
		f 3 183 198 172
		mu 0 3 87 89 90
		f 3 -199 -185 -182
		mu 0 3 90 89 88
		f 3 -189 199 -194
		mu 0 3 105 106 107
		f 3 -200 190 192
		mu 0 3 107 106 108
		f 3 -165 200 -188
		mu 0 3 87 86 105
		f 3 -201 186 188
		mu 0 3 105 86 106
		f 3 180 201 -187
		mu 0 3 86 84 106
		f 3 -202 189 -191
		mu 0 3 106 84 108
		f 3 191 202 185
		mu 0 3 89 107 84
		f 3 -203 -193 -190
		mu 0 3 84 107 108
		f 3 187 203 -184
		mu 0 3 87 105 89
		f 3 -204 193 -192
		mu 0 3 89 105 107
		f 3 205 210 158
		mu 0 3 95 93 90
		f 3 -211 -207 -205
		mu 0 3 90 93 92
		f 3 207 211 173
		mu 0 3 91 94 95
		f 3 -212 -209 -206
		mu 0 3 95 94 93
		f 3 -166 212 -208
		mu 0 3 91 90 94
		f 3 -213 204 209
		mu 0 3 94 90 92
		f 3 240 354 227
		mu 0 3 110 111 180
		f 3 -355 258 -246
		mu 0 3 180 111 112
		f 3 259 -241 -255
		mu 0 3 113 111 110
		f 3 252 250 234
		mu 0 3 114 154 115
		f 3 -251 237 235
		mu 0 3 115 154 159
		f 3 225 251 220
		mu 0 3 116 149 117
		f 3 -252 223 -254
		mu 0 3 117 149 154
		f 3 -219 241 -222
		mu 0 3 118 119 177
		f 3 -242 -220 -217
		mu 0 3 177 119 120
		f 3 231 242 -216
		mu 0 3 177 121 180
		f 3 -243 -247 -228
		mu 0 3 180 121 110
		f 3 -223 243 -226
		mu 0 3 169 166 122
		f 3 -244 -227 224
		mu 0 3 122 166 109
		f 3 228 355 -215
		mu 0 3 123 124 110
		f 3 -356 256 254
		mu 0 3 110 124 113
		f 3 244 356 -214
		mu 0 3 131 125 123
		f 3 -357 255 -229
		mu 0 3 123 125 124
		f 3 260 -245 229
		mu 0 3 126 125 131
		f 3 245 357 248
		mu 0 3 180 112 131
		f 3 -358 257 -230
		mu 0 3 131 112 126
		f 3 216 230 -232
		mu 0 3 177 120 121
		f 3 -218 246 -231
		mu 0 3 120 110 121
		f 3 -233 253 -253
		mu 0 3 114 117 154
		f 3 -234 247 -236
		mu 0 3 159 162 183
		f 3 -248 -237 249
		mu 0 3 183 162 152
		f 3 -249 -240 -239
		mu 0 3 180 131 182
		f 3 261 358 -260
		mu 0 3 113 125 111
		f 3 -359 -261 262
		mu 0 3 111 125 126
		f 3 -262 -257 -256
		mu 0 3 125 113 124
		f 3 -259 -263 -258
		mu 0 3 112 111 126
		f 3 236 263 -265
		mu 0 3 152 162 132
		f 3 265 359 266
		mu 0 3 130 155 181
		f 3 -266 360 267
		mu 0 3 155 130 157
		f 3 -361 361 270
		mu 0 3 157 130 158
		f 3 -362 268 269
		mu 0 3 158 130 134
		f 3 -270 362 273
		mu 0 3 158 134 161
		f 3 -363 271 272
		mu 0 3 161 134 184
		f 3 275 363 274
		mu 0 3 151 153 133
		f 3 -364 315 276
		mu 0 3 133 153 178
		f 3 -275 364 279
		mu 0 3 151 133 160
		f 3 -365 277 278
		mu 0 3 160 133 156
		f 3 -279 365 281
		mu 0 3 160 156 184
		f 3 -366 280 -273
		mu 0 3 184 156 161
		f 3 282 366 285
		mu 0 3 127 128 147
		f 3 -367 283 284
		mu 0 3 147 128 148
		f 3 286 367 -283
		mu 0 3 135 165 129
		f 3 -399 400 401
		mu 0 3 186 187 188
		f 3 289 368 -288
		mu 0 3 165 137 163
		f 3 -369 290 291
		mu 0 3 163 137 136
		f 3 292 369 -291
		mu 0 3 137 168 136
		f 3 -370 293 294
		mu 0 3 136 168 167
		f 3 295 370 -294
		mu 0 3 168 140 167
		f 3 -371 296 297
		mu 0 3 167 140 139
		f 3 298 371 -297
		mu 0 3 140 144 139
		f 3 -372 299 300
		mu 0 3 139 144 170
		f 3 301 372 -300
		mu 0 3 144 142 170
		f 3 303 373 -303
		mu 0 3 171 170 153
		f 3 -374 -373 304
		mu 0 3 153 170 142
		f 3 305 374 307
		mu 0 3 145 179 155
		f 3 -375 306 -360
		mu 0 3 155 179 181
		f 3 -306 375 310
		mu 0 3 179 145 174
		f 3 -376 308 309
		mu 0 3 174 145 150
		f 3 -310 311 312
		mu 0 3 174 150 176
		f 3 -285 376 314
		mu 0 3 147 148 176
		f 3 -377 313 -313
		mu 0 3 176 148 174
		f 3 316 317 239
		mu 0 3 131 130 182
		f 3 318 -269 -317
		mu 0 3 131 134 130
		f 3 319 377 264
		mu 0 3 132 156 152
		f 3 -378 -278 320
		mu 0 3 152 156 133
		f 3 321 378 213
		mu 0 3 185 184 131
		f 3 -379 -272 -319
		mu 0 3 131 184 134
		f 3 322 379 226
		mu 0 3 166 165 109
		f 3 -380 -287 323
		mu 0 3 109 165 135
		f 3 324 380 218
		mu 0 3 164 163 138
		f 3 -381 -292 325
		mu 0 3 138 163 136
		f 3 326 381 222
		mu 0 3 169 168 166
		f 3 -382 -293 327
		mu 0 3 166 168 137
		f 3 328 382 219
		mu 0 3 138 167 173
		f 3 -383 -298 329
		mu 0 3 173 167 139
		f 3 330 383 -221
		mu 0 3 143 144 169
		f 3 -384 -299 331
		mu 0 3 169 144 140
		f 3 332 384 232
		mu 0 3 141 153 143
		f 3 -385 -305 333
		mu 0 3 143 153 142
		f 3 -334 -302 -331
		mu 0 3 143 142 144
		f 3 334 -309 335
		mu 0 3 154 150 145
		f 3 -286 385 -324
		mu 0 3 127 147 146
		f 3 -386 336 -225
		mu 0 3 146 147 149
		f 3 221 386 337
		mu 0 3 118 177 148
		f 3 -387 -352 -314
		mu 0 3 148 177 174
		f 3 -312 387 338
		mu 0 3 176 150 149
		f 3 -388 -335 -224
		mu 0 3 149 150 154
		f 3 339 388 214
		mu 0 3 172 153 185
		f 3 -389 -276 340
		mu 0 3 185 153 151
		f 3 -316 389 341
		mu 0 3 178 153 152
		f 3 -390 395 -250
		mu 0 3 152 153 183
		f 3 -336 390 -238
		mu 0 3 154 145 159
		f 3 -391 -308 342
		mu 0 3 159 145 155
		f 3 343 302 -340
		mu 0 3 172 171 153
		f 3 -281 391 344
		mu 0 3 161 156 162
		f 3 -392 -320 -264
		mu 0 3 162 156 132
		f 3 -268 345 -343
		mu 0 3 155 157 159
		f 3 346 392 -271
		mu 0 3 158 162 157
		f 3 -393 233 -346
		mu 0 3 157 162 159
		f 3 -280 347 -341
		mu 0 3 151 160 185
		f 3 -274 -345 -347
		mu 0 3 158 161 162
		f 3 -289 -325 348
		mu 0 3 129 163 164
		f 3 -290 -323 -328
		mu 0 3 137 165 166
		f 3 -295 -329 -326
		mu 0 3 136 167 138
		f 3 -296 -327 -332
		mu 0 3 140 168 169
		f 3 -301 349 -330
		mu 0 3 139 170 173
		f 3 -304 -344 350
		mu 0 3 170 171 172
		f 3 -350 -351 217
		mu 0 3 173 170 172
		f 3 351 393 -311
		mu 0 3 174 177 179
		f 3 -394 215 352
		mu 0 3 179 177 180
		f 3 -284 -349 -338
		mu 0 3 148 175 118
		f 3 -315 -339 -337
		mu 0 3 147 176 149
		f 3 -277 -342 -321
		mu 0 3 133 178 152
		f 3 -307 -353 353
		mu 0 3 181 179 180
		f 3 -267 394 -318
		mu 0 3 130 181 182
		f 3 -395 -354 238
		mu 0 3 182 181 180
		f 3 -396 -333 -235
		mu 0 3 183 153 141
		f 3 -282 -322 -348
		mu 0 3 160 184 185
		f 3 396 402 -368
		mu 0 3 165 187 129
		f 3 -403 398 -398
		mu 0 3 129 187 186
		f 3 287 403 -397
		mu 0 3 165 163 187
		f 3 -404 399 -401
		mu 0 3 187 163 188
		f 3 288 404 -400
		mu 0 3 163 129 188
		f 3 -405 397 -402
		mu 0 3 188 129 186;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D5DA3E0F-2F48-8085-8991-9888CF808EED";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "2C5218CF-3B48-6759-45C1-2EAE431AF1DB";
createNode displayLayer -n "defaultLayer";
	rename -uid "FFF41189-B24F-95E9-89BE-8984FFBC26CC";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "47532252-144E-CBC7-8829-A4BB3743D650";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "ED303440-CE46-F60D-1579-FFB0DDB926ED";
	setAttr ".g" yes;
createNode lambert -n "lambert2";
	rename -uid "EE3C4E84-7E4F-81B3-7493-0D8DF5CF3994";
createNode shadingEngine -n "lambert2SG";
	rename -uid "0B9168C7-DB41-95B3-678E-49A01CFF0627";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "93B20023-414B-8EC1-D2BB-52A1A5DC9CA4";
createNode lambert -n "lambert3";
	rename -uid "0D560C12-8045-58DE-7882-D2B88251564F";
	setAttr ".c" -type "float3" 0.28400001 0.19917341 0.082360007 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "563C9676-8844-CC4D-0F29-53BC88D75D77";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "EEF51985-FB46-45BE-4718-E69C8FA9AAE4";
createNode lambert -n "lambert4";
	rename -uid "C2ADE3FB-F94C-D8EA-FEC0-1BB802D302D2";
createNode shadingEngine -n "lambert4SG";
	rename -uid "4BA8C176-904B-A42B-5D23-01A470EE86C2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "61428D5A-6340-A4B5-C492-F8BF0708FDA1";
createNode groupId -n "groupId2";
	rename -uid "EA4E7FFC-0F45-4EEB-FACF-3899DB49C31C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "0EA7DC81-E841-78B9-6A8C-628D57CDBAD5";
	setAttr ".ihi" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9B714672-C34F-CB32-D840-FCA514A2A6F7";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 617\n                -height 518\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 617\n            -height 518\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 617\n                -height 518\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 617\n            -height 518\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 617\n                -height 518\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 617\n            -height 518\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1253\n                -height 1081\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1253\n            -height 1081\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1253\\n    -height 1081\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1253\\n    -height 1081\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "CB6047E9-D642-EE98-45AD-0BB0C8D4F934";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
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
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
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
connectAttr "groupId3.id" "pCylinder4Shape.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "pCylinder4Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "pCylinder4Shape.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "groupId3.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "lambert4.msg" "materialInfo3.m";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of RockArchway03.ma
