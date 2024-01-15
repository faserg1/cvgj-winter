//Maya ASCII 2016 scene
//Name: Skel_Knight.ma
//Last modified: Sun, Nov 12, 2023 12:32:28 AM
//Codeset: 1252
requires maya "2016";
requires -nodeType "gameFbxExporter" "gameFbxExporter" "1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201603180400-990260";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "10B08D55-423A-633D-A45C-A095D43C3DC1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 101.01749502791243 103.28848825469852 311.21015279324814 ;
	setAttr ".r" -type "double3" -3.9383527381582977 -342.2000000000707 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "1A111FD8-4960-2D3A-EB1E-EDA0874E864B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 340.32895931584619;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 11.897718796761763 48.063054420938983 -3.7880640253271682 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "0D5B3B2E-4FF2-CC0A-7F90-0EA156F28E87";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "07A499EA-4B2C-3C46-6585-3BA357C8D030";
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
	rename -uid "83A00CB9-41C5-0253-8784-C5B1842CCA63";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.2052343979628235 33.798545589136445 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D15F50DC-4A63-9740-D781-C8AB423D8F56";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 120.07900316740346;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "6F1A305D-4FC6-206E-CC19-A7B88DFAFA22";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.10000000000001 26.183004138722509 0.45770973714772467 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "047A5FE6-4643-740C-AF38-368B659E6B41";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 42.153506653882516;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "Bip001_Root";
	rename -uid "1BF09268-44A7-6AE7-37B1-6AAD5AF28FEE";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode joint -n "Bip001_Pelvis" -p "Bip001_Root";
	rename -uid "04F67DE6-46D8-B4D1-12AB-279BB6F0B2A5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 31.210498550295696 0.79921919858328039 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 0 31.210498550295696 0.79921919858328039 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Pelvis";
	setAttr ".radi" 0.68750660925177232;
createNode joint -n "Bip001_Spine" -p "Bip001_Pelvis";
	rename -uid "4D9C04C6-4824-CA07-7696-75B2A345C86E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.6251277788675935 1.0269846703864424e-015 -1.1102230246251565e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -1.9721522630525295e-031 35.83562632916329 0.79921919858328028 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Spine";
	setAttr ".radi" 0.73770919250187195;
createNode joint -n "Bip001_Clavicle_R" -p "Bip001_Spine";
	rename -uid "BC6A48C3-49C4-65AF-9DBF-21B8AC994BE2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 13.406673670836703 2.8379300000000027 -4.587279198583281 ;
	setAttr ".r" -type "double3" -1.4033418597069755e-014 1.4124500153760508e-030 -1.7297523902859107e-046 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 0 -89.999999999999986 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 -1.2325951644078309e-032 0 2.2204460492503136e-016 -1.0000000000000004 -1.2246467991473535e-016 0
		 -9.7852334632971127e-033 1.2246467991473537e-016 -1 0 -2.8379300000000001 49.2423 -3.7880600000000006 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Clavicle";
	setAttr ".radi" 1.1916037896122917;
createNode joint -n "Bip001_UpperArm_R" -p "Bip001_Clavicle_R";
	rename -uid "47945557-4B9C-05F8-0AE4-9B8155418FF3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -6.1776600000000013 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 -1.2325951644078309e-032 0 2.2204460492503136e-016 -1.0000000000000004 -1.2246467991473535e-016 0
		 -9.7852334632971127e-033 1.2246467991473537e-016 -1 0 -9.0155900000000031 49.2423 -3.7880600000000006 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "UpperArm";
	setAttr ".radi" 1.1916037896122917;
createNode joint -n "Bip001_Forearm_R" -p "Bip001_UpperArm_R";
	rename -uid "8D77971F-4258-E1D8-9395-2FBC0E90BDE2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -14.371010000000004 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 -1.2325951644078309e-032 0 2.2204460492503136e-016 -1.0000000000000004 -1.2246467991473535e-016 0
		 -9.7852334632971127e-033 1.2246467991473537e-016 -1 0 -23.386600000000016 49.2423 -3.7880600000000006 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Forearm";
	setAttr ".radi" 0.86605871185609118;
createNode joint -n "Bip001_Forearm1_R" -p "Bip001_Forearm_R";
	rename -uid "582BBD8E-416F-25D4-C182-899883CDB4D7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.7456999999999958 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 -1.2325951644078309e-032 0 2.2204460492503136e-016 -1.0000000000000004 -1.2246467991473535e-016 0
		 -9.7852334632971127e-033 1.2246467991473537e-016 -1 0 -28.132300000000015 49.2423 -3.7880600000000006 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Forearm1";
	setAttr ".radi" 0.86605871185609118;
createNode joint -n "Bip001_Hand_R" -p "Bip001_Forearm1_R";
	rename -uid "E239BB17-473F-62DC-DAC7-15BFDDF24ACD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.1639999999999944 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 -1.2325951644078309e-032 0 2.2204460492503136e-016 -1.0000000000000004 -1.2246467991473535e-016 0
		 -9.7852334632971127e-033 1.2246467991473537e-016 -1 0 -32.296300000000009 49.2423 -3.7880600000000006 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Hand";
	setAttr ".radi" 1.0179797481423174;
createNode joint -n "Bip001_Middle_R" -p "Bip001_Hand_R";
	rename -uid "E51D163D-42FC-DD70-2AA7-8BB930E41867";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -10.541399999999996 0 0.63792999999999989 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 -1.2325951644078309e-032 0 2.2204460492503136e-016 -1.0000000000000004 -1.2246467991473535e-016 0
		 -9.7852334632971127e-033 1.2246467991473537e-016 -1 0 -42.837700000000012 49.2423 -4.4259900000000005 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Middle";
	setAttr ".radi" 0.93659347870326892;
createNode joint -n "Bip001_Index_R" -p "Bip001_Hand_R";
	rename -uid "5F1A0D9D-4328-D559-9723-1689BBBB1154";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -10.098399999999998 0 -4.4461400000000006 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 -1.2325951644078309e-032 0 2.2204460492503136e-016 -1.0000000000000004 -1.2246467991473535e-016 0
		 -9.7852334632971127e-033 1.2246467991473537e-016 -1 0 -42.394700000000014 49.2423 0.65808 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Index";
	setAttr ".radi" 0.93659347870326892;
createNode joint -n "Bip001_Pinky_R" -p "Bip001_Hand_R";
	rename -uid "EFA7BF9A-4F00-D703-5913-269AAE006571";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -10.098399999999998 0 6.3617399999999975 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 -1.2325951644078309e-032 0 2.2204460492503136e-016 -1.0000000000000004 -1.2246467991473535e-016 0
		 -9.7852334632971127e-033 1.2246467991473537e-016 -1 0 -42.394700000000014 49.2423 -10.149799999999999 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Pinky";
	setAttr ".radi" 0.93659347870326892;
createNode joint -n "Bip001_Thumb_R" -p "Bip001_Hand_R";
	rename -uid "C5314573-496E-1EE9-BEF3-39AD81804E12";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.0274000000000072 4.2272000000000034 -4.3875920000000006 ;
	setAttr ".r" -type "double3" 7.9513867036587903e-015 2.544443745170814e-014 -1.2722218725854067e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 112.12777143462328 -9.8132454112549929 -32.837841330303263 ;
	setAttr ".bps" -type "matrix" 0.82791515305101127 0.53432913736254251 -0.17043729730878238 0
		 -0.33691154171288912 0.2308695152870166 -0.91279235315146123 0 -0.44838277443403812 0.81313691336486482 0.37116202353459526 0
		 -35.323700000000017 45.015099999999997 0.59953199999999907 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Thumb";
	setAttr ".radi" 0.93659347870326892;
createNode joint -n "Bip001_HandAnchor_L" -p "Bip001_Hand_R";
	rename -uid "2B53389C-4347-AD70-C2EA-988E90A68C0B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -10.860662319596955 3.4455427155182932 1.2810540786809597 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.000000000000057 7.0622500768802538e-031 -8.6487619514295516e-047 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 -1.2325951644078309e-032 0 -2.3673379941826913e-031 9.8775834471042159e-016 1 0
		 2.2204460492503136e-016 -1.0000000000000004 9.877583447104212e-016 0 -43.156962319596971 45.796757284481707 -5.0691140786809612 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "HandAnchor";
createNode joint -n "Bip001_Clavicle_L" -p "Bip001_Spine";
	rename -uid "CF3A7428-4E1C-8DC1-30FC-7BABDAADD437";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 13.406705572407525 -2.8379316444520555 -4.5872834399925821 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0 0 0 1 0
		 2.837931644452059 49.242331901570822 -3.7880642414093018 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Clavicle";
	setAttr ".radi" 1.1916037896122917;
createNode joint -n "Bip001_UpperArm_L" -p "Bip001_Clavicle_L";
	rename -uid "E950499C-4A0A-6A25-6510-DC8A6E616C3B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 6.1776579939948899 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0 0 0 1 0
		 9.0155896384469507 49.242331901570822 -3.7880642414093018 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "UpperArm";
	setAttr ".radi" 1.1916037896122917;
createNode joint -n "Bip001_Forearm_L" -p "Bip001_UpperArm_L";
	rename -uid "C58A0C17-42A4-47E8-247E-29A24BAE7316";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 14.371006599170974 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0 0 0 1 0
		 23.38659623761793 49.242331901570822 -3.7880642414093018 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Forearm";
	setAttr ".radi" 0.86605871185609118;
createNode joint -n "Bip001_Forearm1_L" -p "Bip001_Forearm_L";
	rename -uid "052697FF-43ED-DE92-C2AF-12975E0128B9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.7457447846044438 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0 0 0 1 0
		 28.132341022222377 49.242331901570822 -3.7880642414093018 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Forearm1";
	setAttr ".radi" 0.86605871185609118;
createNode joint -n "Bip001_Hand_L" -p "Bip001_Forearm1_L";
	rename -uid "0D1523EB-48E4-5830-8538-E18829D83E8C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.1639771155965484 -1.4210854715202004e-014 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0 0 0 1 0
		 32.296318137818929 49.242331901570807 -3.7880642414093018 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Hand";
	setAttr ".radi" 1.0179797481423174;
createNode joint -n "Bip001_Middle_L" -p "Bip001_Hand_L";
	rename -uid "AA03E749-4A23-ACF2-8090-B6AC3020997D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 10.541352514341391 7.1054273576010019e-015 -0.63792707612132205 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0 0 0 1 0
		 42.837670652160327 49.242331901570815 -4.4259913175306238 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Middle";
	setAttr ".radi" 0.93659347870326892;
createNode joint -n "Bip001_Index_L" -p "Bip001_Hand_L";
	rename -uid "25197259-4485-0110-CC4C-C4A54B62A472";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 10.098429646003247 7.1054273576010019e-015 4.4461438978547427 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0 0 0 1 0
		 42.394747783822183 49.242331901570815 0.65807965644544097 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Index";
	setAttr ".radi" 0.93659347870326892;
createNode joint -n "Bip001_Pinky_L" -p "Bip001_Hand_L";
	rename -uid "4A50E6AF-4095-CD47-91CA-E19867D90D85";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 10.098429646003247 7.1054273576010019e-015 -6.3617650968165123 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0 0 0 1 0
		 42.394747783822183 49.242331901570815 -10.149829338225814 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Pinky";
	setAttr ".radi" 0.93659347870326892;
createNode joint -n "Bip001_Thumb_L" -p "Bip001_Hand_L";
	rename -uid "AAD0E601-40A7-0071-6EB3-448C9AE6F9E8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.0273699830630392 -4.2272755726003197 4.3875960341519864 ;
	setAttr ".r" -type "double3" -1.8288189418415221e-014 1.2722218725854067e-014 3.1805546814635148e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 112.12777143462328 -9.8132454112549823 -32.83784133030327 ;
	setAttr ".bps" -type "matrix" 0.82791515305101127 -0.53432913736254262 0.17043729730878218 0
		 -0.33691154171288906 -0.23086951528701671 0.91279235315146123 0 -0.44838277443403807 -0.8131369133648646 -0.37116202353459538 0
		 35.323688120881968 45.015056328970488 0.59953179274268464 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Thumb";
	setAttr ".radi" 0.93659347870326892;
createNode joint -n "Bip001_Neck" -p "Bip001_Spine";
	rename -uid "19B8457F-43B6-09E9-7B95-EF8C3996138D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 17.962871777164487 3.9885587670794852e-015 -3.4969057897688387 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -6.3611093629270304e-015 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -2.5637979419682884e-030 53.798498106327784 -2.6976865911855583 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Neck";
	setAttr ".radi" 0.74373377633660442;
createNode joint -n "Bip001_Head" -p "Bip001_Neck";
	rename -uid "880207B3-4844-DAE3-288D-909803274236";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 5.7121863425076782 1.2683601596802738e-015 -4.4408920985006262e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 3.9443045261050599e-031 59.510684448835462 -2.6976865911855588 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Head";
	setAttr ".radi" 2;
createNode joint -n "Bip001_Ponytail" -p "Bip001_Head";
	rename -uid "1E894B2E-4107-4A4B-4605-638DB32A295D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 47.698817248843966 1.059126503141083e-014 -30.177529034148051 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" -1.1102230246251553e-016 4.4408920985006271e-016 -1 0
		 -2.2204460492503141e-016 1.0000000000000002 3.3306690738754681e-016 0 1.0000000000000002 1.1102230246251556e-016 0 0
		 -4.3387349787155649e-030 107.20950169767943 -32.87521562533361 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Ponytail";
	setAttr ".radi" 2;
createNode joint -n "Bip001_Ponytail1" -p "Bip001_Ponytail";
	rename -uid "39BC319A-41EC-F3D0-B9B5-ED8F1C8CEF18";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 25.346515559024198 -4.2632564145606011e-014 -6.3108872417680944e-030 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -6.3611093629270304e-015 0 ;
	setAttr ".bps" -type "matrix" -1.1102230246251553e-016 4.4408920985006271e-016 -1 0
		 -2.2204460492503141e-016 1.0000000000000002 3.3306690738754681e-016 0 1.0000000000000002 1.1102230246251556e-016 0 0
		 -2.8140285167648416e-015 107.2095016976794 -58.221731184357807 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Ponytail1";
	setAttr ".radi" 2;
createNode joint -n "Bip001_Hair_L" -p "Bip001_Head";
	rename -uid "8E01796D-44CC-8B1F-754E-67BBBB14773B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 17.658422712651088 -23.733919261540599 3.8003977101128288 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 180 ;
	setAttr ".bps" -type "matrix" -3.4450928483976665e-016 -1.0000000000000002 0 0 1.0000000000000002 -3.4450928483976665e-016 0 0
		 0 0 1 0 23.733919261540606 77.169107161486551 1.10271111892727 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Hair";
	setAttr ".radi" 1.4404363650660583;
createNode joint -n "Bip001_Ear_L" -p "Bip001_Head";
	rename -uid "20CBD2DE-45F6-E4D0-21AD-03AA674EF65B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 13.334208728490353 -18.30093246092839 -3.4367277334659132 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0 0 0 1 0
		 18.300932460928397 72.844893177325815 -6.1344143246514715 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Ear";
	setAttr ".radi" 1.5436669376322296;
createNode joint -n "Bip001_Ear_R" -p "Bip001_Head";
	rename -uid "7753F06B-4C1B-939E-D1E0-AB8B2F4681E6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 13.334215551164533 18.3009 -3.4367234088144425 ;
	setAttr ".r" -type "double3" -1.4033418597069755e-014 1.4124500153760508e-030 -1.7297523902859107e-046 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 -1.4124500153760501e-030 -89.999999999999986 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 -1.2325951644078309e-032 0 2.2204460492503136e-016 -1.0000000000000004 -1.2246467991473535e-016 0
		 -9.7852334632971127e-033 1.2246467991473537e-016 -1 0 -18.300899999999999 72.844899999999996 -6.1344100000000008 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Ear";
	setAttr ".radi" 1.5436669376322296;
createNode joint -n "Bip001_Hair_R" -p "Bip001_Head";
	rename -uid "A8B0FAF9-4B2B-3E91-0987-7980608D0D60";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 17.658415551164552 23.7339 3.8003965911855579 ;
	setAttr ".r" -type "double3" -1.4033418597069752e-014 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 -3.9753439464337593e-030 6.4922293500485998e-014 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 1.0000000000000002 -2.2204460492503131e-016 -1.2246467991473532e-016 0
		 -1.2246467991473535e-016 2.7192621468937821e-032 -1 0 -23.733899999999998 77.169100000000014 1.1027099999999992 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Hair";
	setAttr ".radi" 1.4404363650660583;
createNode joint -n "Bip001_Thigh_L" -p "Bip001_Pelvis";
	rename -uid "E00DA1A2-4DFE-938A-2401-8A8BDDE8D303";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.4515865118637237 -4.2843923568725417 -0.85427581428765831 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999972 -0.26282283323650729 -179.99999999999997 ;
	setAttr ".bps" -type "matrix" 3.4477862694479319e-016 -0.9999894791661188 0.0045871077025966267 0
		 4.4510775236763433e-016 0.0045871077025966276 0.99998947916611836 0 -1.0000000000000002 -3.421742056364253e-016 4.4408920985006262e-016 0
		 4.2843923568725417 26.758912038431973 -0.05505661570437792 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Thigh";
	setAttr ".radi" 1.1813983596318618;
createNode joint -n "Bip001_Calf_L" -p "Bip001_Thigh_L";
	rename -uid "ED243E02-4013-D337-9600-2A977D8DBC37";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 14.173701619549332 -9.7144514654701197e-017 3.1471939764381087e-015 ;
	setAttr ".r" -type "double3" -8.3504484401815826e-028 1.6576152578554638e-027 -4.0336547599836194e-012 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -1.1861338689927008e-014 -3.0386262820197047 ;
	setAttr ".bps" -type "matrix" 3.2069908162737615e-016 -0.99882667799582259 -0.048427960145253142 0
		 -5.8522305299842314e-016 0.048427960145253163 -0.99882667799582192 0 1.0000000000000002 3.4810492027453728e-016 -5.6641019926111938e-016 0
		 4.2843923568725435 12.585359538042862 0.0099596801689630088 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Calf";
	setAttr ".radi" 1.0038081364709925;
createNode joint -n "Bip001_Foot_L" -p "Bip001_Calf_L";
	rename -uid "81A911E5-4525-27A4-8972-B79A20872938";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 10.740290638439189 -1.3988810110276972e-014 -2.2234486723701631e-015 ;
	setAttr ".r" -type "double3" -6.6641786814585345e-014 3.9216793963036236e-014 3.1805546814635142e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999914622632 2.5623805857376408e-014 -90 ;
	setAttr ".bps" -type "matrix" 5.8522305299842314e-016 -0.048427960145253274 0.99882667799582192 0
		 1.4901161439702467e-008 0.99882667799582248 0.048427960145253357 0 -1.0000000000000002 1.4883677551315338e-008 7.2163343426089708e-010 0
		 4.2843923568725444 1.857670718941014 -0.51017068681779154 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Foot";
	setAttr ".radi" 0.73467672554761432;
createNode joint -n "Bip001_ToeNub_L" -p "Bip001_Foot_L";
	rename -uid "013E1211-472E-4E21-D351-4DB2FC4CFE4D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 5.5370833605872116 -1.9984014443252818e-015 2.4762931649141973e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -15.668160421752477 89.999999146226358 0 ;
	setAttr ".bps" -type "matrix" 1 -1.5605310397105569e-008 1.4162044010162252e-008 0
		 1.83717520755584e-008 0.97479096618790761 -0.22312008479391993 0 -1.0323174398240185e-008 0.2231200847939204 0.97479096618790695 0
		 4.2843923568725453 1.5895210666335493 5.0204158920234745 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ToeNub";
	setAttr ".radi" 0.73467672554761432;
createNode joint -n "Bip001_Thigh_R" -p "Bip001_Pelvis";
	rename -uid "6CB6ACF8-4ED2-2363-77A7-A9A902882292";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.4515985502956958 4.2843899999999984 -0.85427579858328051 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.000000000000028 0.26282283323650418 -1.272221872585407e-014 ;
	setAttr ".bps" -type "matrix" 2.2204226883062858e-016 0.99998947916611869 -0.0045871077025965729 0
		 4.430706673324911e-016 -0.0045871077025965729 -0.99998947916611836 0 -1.0000000000000002 2.198762005800603e-016 -4.4408920985006262e-016 0
		 -4.2843900000000001 26.758900000000001 -0.055056600000000122 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Thigh";
	setAttr ".radi" 1.1813983596318618;
createNode joint -n "Bip001_Calf_R" -p "Bip001_Thigh_R";
	rename -uid "F46FFA11-4540-DB7C-6CF3-BA906593C021";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -14.173649119639768 -2.2495176599246491e-007 -7.1054273576010019e-015 ;
	setAttr ".r" -type "double3" -5.3370550822182088e-028 5.0058629036383195e-027 -1.613465978635911e-012 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 -1.1692740106432262e-014 -3.0386262820197549 ;
	setAttr ".bps" -type "matrix" 1.982432719347337e-016 0.99882667799582237 0.048427960145254079 0
		 -3.3175331899165246e-016 -0.048427960145254093 0.99882667799582192 0 1.0000000000000002 -2.1394548594194819e-016 3.2176822043900585e-016 0
		 -4.2843899999999966 12.585399999999991 0.0099596799999999014 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Calf";
	setAttr ".radi" 1.0038081364709925;
createNode joint -n "Bip001_Foot_R" -p "Bip001_Calf_R";
	rename -uid "3D65B39D-4D27-ECBC-C63F-72B2ACEAE9DF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -10.740331786177483 1.6816609381686831e-006 3.5527136788005009e-015 ;
	setAttr ".r" -type "double3" 5.2442538142040332e-013 3.1345322978314721e-014 1.2722218725854211e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 5.6974731480077555e-015 -90 ;
	setAttr ".bps" -type "matrix" 3.3175331899165251e-016 0.048427960145254315 -0.99882667799582192 0
		 -7.5778592019998282e-017 -0.99882667799582237 -0.048427960145254301 0 -1.0000000000000002 9.1624496530891405e-017 -3.2769893507711798e-016 0
		 -4.2843899999999948 1.8576699999999899 -0.51017100000000037 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Foot";
	setAttr ".radi" 0.73467672554761432;
createNode joint -n "Bip001_ToeNub_R" -p "Bip001_Foot_R";
	rename -uid "03BB9789-46ED-2030-B526-8094D6CCE72C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -5.5370877933965428 1.3317687574954107e-007 -4.4408920985006262e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -15.668160421752505 89.999998792581707 0 ;
	setAttr ".bps" -type "matrix" 1 1.0205428731359803e-009 -2.1048698320484883e-008 0
		 5.6912033459042845e-009 -0.97479096618790773 0.22312008479391945 0 -2.029037741237973e-008 -0.22312008479391962 -0.97479096618790717 0
		 -4.2843899999999921 1.5895199999999916 5.0204199999999997 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ToeNub";
	setAttr ".radi" 0.73467672554761432;
createNode joint -n "Bip001_SkirtFrt" -p "Bip001_Pelvis";
	rename -uid "68D9192E-449D-478B-9BF6-7290BDAAD2E8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.5009265346470606 -3.3327263940720289e-016 4.9207910424151207 ;
	setAttr ".r" -type "double3" -1.9083328088781101e-014 -2.5444437451708134e-014 3.1805546814635211e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -19.879074353857845 -179.99999999999997 ;
	setAttr ".bps" -type "matrix" 3.4629801732844296e-016 -0.9404123782004834 0.34003611415158697 0
		 7.5503184627031975e-017 0.34003611415158702 0.94041237820048329 0 -1 -2.7755575615628923e-016 3.3306690738754696e-016 0
		 9.8607613152626476e-032 29.709572015648636 5.7200102409984011 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "SkirtFrt";
	setAttr ".radi" 0.98471500984714755;
createNode joint -n "Bip001_SkirtBck" -p "Bip001_Pelvis";
	rename -uid "8A3546B2-4ABF-0B12-1DD7-CF82D3ECE597";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.2254134192622104 -2.7209643854990925e-016 -6.5405545575947706 ;
	setAttr ".r" -type "double3" -6.9972202992197388e-014 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 151.59810439286102 0 ;
	setAttr ".bps" -type "matrix" -1.9531772567198209e-016 -0.87963283655519153 -0.47565331161873381 0
		 -2.2745065572788251e-016 0.47565331161873392 -0.87963283655519131 0 1.0000000000000002 -8.3266726846886716e-017 -2.2204460492503131e-016 0
		 4.9303806576313238e-032 29.985085131033486 -5.7413353590114902 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "SkirtBck";
	setAttr ".radi" 0.88569509009614389;
createNode joint -n "Bip001_SkirtFrt_L" -p "Bip001_Pelvis";
	rename -uid "7658751D-4BE5-0991-8875-91A4C73327F7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.5009265346470642 -5.9245693960015915 2.0785176965580421 ;
	setAttr ".r" -type "double3" 3.1805546814635168e-014 -4.7708320221952775e-015 7.5538173684758504e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 30.113983364529208 -13.626975845946818 -157.89289767794446 ;
	setAttr ".bps" -type "matrix" 0.36574523492651712 -0.90040168981644919 0.23559970310726164 0
		 0.75694842391241968 0.43505953267993452 0.48759848908791875 0 -0.54153440026008615 5.0855852919992292e-017 0.84067859098168363 0
		 5.9245693960015924 29.709572015648632 2.8777368951413225 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "SkirtFrt";
	setAttr ".radi" 0.98471500984714755;
createNode joint -n "Bip001_SkirtBck_L" -p "Bip001_Pelvis";
	rename -uid "62969D1D-4933-4FFE-43AD-959EDAB9A715";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.1807290715328875 -5.5466382970932058 -3.9080937749902658 ;
	setAttr ".r" -type "double3" -3.1805546814635164e-015 7.9513867036588008e-016 3.0612838809086348e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -26.379087874388851 11.613324537304106 -160.92763086788878 ;
	setAttr ".bps" -type "matrix" 0.32007283540509607 -0.92575881631771828 -0.20130572283410206 0
		 0.81747022742352249 0.37726974379085909 -0.43521255461683922 0 0.47884841788595062 -0.025261718666742938 0.87753406672226952 0
		 5.5466382970932067 30.029769478762809 -3.1088745764069854 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "SkirtBck";
	setAttr ".radi" 0.98471500984714755;
createNode joint -n "Bip001_SkirtFrt_R" -p "Bip001_Pelvis";
	rename -uid "77782161-45CA-1EBD-DC22-4EBAD07E259F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.5008985502956982 5.9245699999999974 2.0785208014167198 ;
	setAttr ".r" -type "double3" -5.9635400277440939e-016 -3.1805546814635168e-015 1.6552148617688095e-032 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -149.88601663547084 13.626975845946818 -22.107102322055479 ;
	setAttr ".bps" -type "matrix" 0.36574523492651662 0.90040168981644952 -0.23559970310726167 0
		 0.75694842391242034 -0.43505953267993419 -0.48759848908791814 0 -0.54153440026008559 -6.8466690089417424e-016 -0.84067859098168407 0
		 -5.9245699999999983 29.709599999999998 2.8777400000000002 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "SkirtFrt";
	setAttr ".radi" 0.98471500984714755;
createNode joint -n "Bip001_SkirtBck_R" -p "Bip001_Pelvis";
	rename -uid "6FE600DC-43E1-B3B0-FB44-2EB60F4FA8CB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.1806985502956948 5.5466399999999991 -3.9080891985832804 ;
	setAttr ".r" -type "double3" -1.9878466759146891e-016 1.5902773407317584e-014 6.3611093629270335e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 153.62091212561117 -11.613324537304113 -19.072369132111216 ;
	setAttr ".bps" -type "matrix" 0.32007283540509623 0.92575881631771795 0.2013057228341022 0
		 0.81747022742352227 -0.37726974379085926 0.43521255461683878 0 0.47884841788595028 0.025261718666743097 -0.87753406672226975 0
		 -5.54664 30.029800000000002 -3.10887 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "SkirtBck";
	setAttr ".radi" 0.98471500984714755;
createNode joint -n "Bip001_SwordAnchor" -p "Bip001_Root";
	rename -uid "6C9BF077-40E1-FB4D-62FD-76B570F657FD";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".radi" 2;
createNode joint -n "Bn_SwordRoot" -p "Bip001_SwordAnchor";
	rename -uid "1A70D353-4ACF-57F0-5ADB-79904ABCE8E7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Bn_SwordRoot";
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "Bn_Sword" -p "Bn_SwordRoot";
	rename -uid "38EAD52B-4C12-3A7F-F5A6-B0A06B1DC78C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 16.983928119530255 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 0 16.983928119530255 0 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Bn_Sword";
	setAttr ".radi" 1.0164323040396179;
createNode joint -n "Bn_Sword1" -p "Bn_Sword";
	rename -uid "34B444A1-47A9-2747-7197-B09ED38E3E43";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 10.984357878099271 2.4390174053977078e-015 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -3.9443045261050599e-031 27.968285997629529 0 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Bn_Sword1";
	setAttr ".radi" 1.2230346465743998;
createNode joint -n "Bn_Sword2" -p "Bn_Sword1";
	rename -uid "97919780-46E2-3CA3-4C06-98BFC2295AEA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 14.978669833771736 3.3259328255423272e-015 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 1.1832913578315177e-030 42.946955831401269 0 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Bn_Sword2";
	setAttr ".radi" 1.1842967073491293;
createNode joint -n "Bn_Sword3" -p "Bn_Sword2";
	rename -uid "2E5D471B-46AE-679C-04A4-A99A1A859BED";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 14.229736342083172 3.1041250330339586e-015 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 5.5511151231259799e-017 57.17669217348444 0 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Bn_Sword3";
	setAttr ".radi" 1.4038116962923346;
createNode joint -n "Bn_Sword4" -p "Bn_Sword3";
	rename -uid "C4C9F80C-44AB-F732-CA92-6B983E260942";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 18.473692794985141 4.1574949694001292e-015 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0 0 0 1 0
		 2.7610131682735413e-030 75.650384968469581 0 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Bn_Sword4";
	setAttr ".radi" 1.4038116962923346;
createNode joint -n "Bn_Sword3_L" -p "Bn_Sword3";
	rename -uid "190EE478-4890-384C-EDB7-1D872CF13107";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 5.3268570921418501 -10.021141488790853 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -6.3611093629270304e-015 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 10.021141488790857 62.50354926562629 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Bn_Sword3";
	setAttr ".radi" 1.4038116962923346;
createNode joint -n "Bn_Sword3_R" -p "Bn_Sword3";
	rename -uid "ABDC65D2-4B9B-392F-2CF1-3C9EE2120EC8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 5.3268570921418501 10.021 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -6.3611093629270304e-015 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -10.021000000000001 62.50354926562629 0 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Bn_Sword3";
	setAttr ".radi" 1.4038116962923346;
createNode joint -n "Bn_Sword2_L" -p "Bn_Sword2";
	rename -uid "2CFC45A8-4B62-1E9C-192C-F4864A1995C2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 10.006387807170526 -15.556100258121347 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -6.3611093629270304e-015 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 15.556100258121353 52.953343638571795 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Bn_Sword2";
	setAttr ".radi" 1.1842967073491293;
	setAttr ".liw" yes;
createNode joint -n "Bn_Sword2_R" -p "Bn_Sword2";
	rename -uid "9738F364-4D00-9DD5-5D62-CA93CE0256C0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 10.00638780717054 15.556000000000003 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -6.3611093629270304e-015 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -15.556000000000004 52.953343638571816 0 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Bn_Sword2";
	setAttr ".radi" 1.1842967073491293;
	setAttr ".liw" yes;
createNode joint -n "Bn_Sword1_L" -p "Bn_Sword1";
	rename -uid "1F4E1CE2-4C7C-5297-F3EB-5688A13CD66C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.6515227959964243 -11.67596428517756 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -6.3611093629270304e-015 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 11.675964285177562 30.61980879362595 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Bn_Sword1";
	setAttr ".radi" 1.2230346465743998;
createNode joint -n "Bn_Sword1_R" -p "Bn_Sword1";
	rename -uid "E1F703A9-4CDE-664A-BB45-4FA06AAA2CA0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.6515227959964172 11.676000000000004 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -6.3611093629270304e-015 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -11.676000000000005 30.61980879362595 0 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Bn_Sword1";
	setAttr ".radi" 1.2230346465743998;
createNode joint -n "Bn_Sword_L" -p "Bn_Sword";
	rename -uid "9A340905-4088-2EE5-DCE6-EE999AC3EB5C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 -8.2704776490755183 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -6.3611093629270304e-015 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 8.2704776490755201 16.983928119530255 0 1;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Bn_Sword";
	setAttr ".radi" 1.0164323040396179;
createNode joint -n "Bn_Sword_R" -p "Bn_Sword";
	rename -uid "62F45C0E-4F9B-93B6-E5A7-8BB07669F759";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 8.2699999999999978 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -6.3611093629270304e-015 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -8.2699999999999996 16.983928119530255 0 1;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Bn_Sword";
	setAttr ".radi" 1.0164323040396179;
createNode transform -n "Mesh_Knight";
	rename -uid "94904C61-4E40-FC86-D2FF-A6A61B7912A2";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "Mesh_KnightShape" -p "Mesh_Knight";
	rename -uid "5D0300B0-47C5-49E6-5623-02B8FE261FED";
	setAttr -k off ".v";
	setAttr -s 10 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "Mesh_KnightShapeOrig" -p "Mesh_Knight";
	rename -uid "347F0697-4081-71F7-65C4-95B3B27958CF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 2451 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" -0.39401448 0.73519242 -0.38643581
		 0.75889152 -0.34159952 0.75248307 -0.35183018 0.70914131 -0.38756657 0.78485572 -0.34126163
		 0.79882956 -0.39645576 0.80887222 -0.34972829 0.84426308 -0.41128689 0.827757 -0.36706573
		 0.88468939 -0.43195629 0.83847052 -0.39579886 0.91700637 0.56804371 0.83847052 0.58871311
		 0.827757 0.63293427 0.88468939 0.60420114 0.91700637 0.60354424 0.80887222 0.65027171
		 0.84426308 0.61243343 0.78485572 0.65873837 0.79882956 0.61356419 0.75889152 0.65840048
		 0.75248307 0.60598552 0.73519242 0.64816982 0.70914131 0.58913857 0.71821129 0.62532502
		 0.6715976 -0.41086143 0.71821129 -0.37467498 0.6715976 -0.29857588 0.75142503 -0.30737543
		 0.69590175 -0.29674828 0.80810267 -0.30097419 0.86417055 -0.3116492 0.91793591 -0.33128864
		 0.97034544 0.6883508 0.91793591 0.66871136 0.97034544 0.69902581 0.86417055 0.70325172
		 0.80810267 0.70142412 0.75142503 0.69262457 0.69590175 0.67561358 0.64116073 -0.32438642
		 0.64116073 -0.26082844 0.75230908 -0.26338339 0.69255292 -0.26002514 0.81042725 -0.26043648
		 0.86758757 -0.26089722 0.92487657 -0.25994444 0.98522985 0.73910278 0.92487657 0.74005556
		 0.98522985 0.73956352 0.86758757 0.73997486 0.81042725 0.73917156 0.75230908 0.73661661
		 0.69255292 0.73332733 0.6302073 -0.26667267 0.6302073 -0.21859252 0.74899626 -0.21406972
		 0.69336486 -0.21952516 0.8041001 -0.21646309 0.85862726 -0.20691657 0.91215205 -0.1862973
		 0.96454728 0.79308343 0.91215205 0.8137027 0.96454728 0.78353691 0.85862726 0.78047484
		 0.8041001 0.78140748 0.74899626 0.78593028 0.69336486 0.79638535 0.63661277 -0.20361465
		 0.63661277 -0.17412138 0.7446897 -0.16766751 0.70043325 -0.1731959 0.78979707 -0.16530293
		 0.83388817 -0.14905381 0.87454551 -0.12077224 0.90794253 0.85094619 0.87454551 0.87922776
		 0.90794253 0.83469707 0.83388817 0.8268041 0.78979707 0.82587862 0.7446897 0.83233249
		 0.70043325 0.84880507 0.65880078 -0.15119493 0.65880078 -0.12671202 0.73925298 -0.12160707
		 0.71233106 -0.12548792 0.76898283 -0.11839205 0.79831469 -0.1053046 0.82346457 -0.085709095
		 0.83956861 0.8946954 0.82346457 0.91429114 0.83956861 0.88160795 0.79831469 0.87451208
		 0.76898283 0.87328798 0.73925298 0.87839293 0.71233106 0.8909288 0.69072837 -0.1090712
		 0.69072837 -0.43209183 0.77614689 0.56790817 0.77614689 -0.092336237 0.74332678 -0.089165926
		 0.72993994 -0.091756105 0.75897467 -0.087441087 0.7744329 -0.079856694 0.78689098
		 -0.069753885 0.79407233 0.92014307 0.78689098 0.93024611 0.79407233 0.91255891 0.7744329
		 0.90824366 0.75897467 0.90766376 0.74332678 0.91083407 0.72993994 0.91796815 0.72047794
		 -0.082031846 0.72047794 -0.056914866 0.75956875 0.94308513 0.75956875 -0.45731348
		 0.31869787 -0.44356221 0.32141274 -0.44657242 0.35839063 -0.46789372 0.35767901 -0.42934692
		 0.32101619 -0.42428499 0.35777068 -0.41576719 0.31754267 -0.40303719 0.35587567 -0.40750533
		 0.31431925 -0.38835865 0.35337234 -0.40183419 0.31144291 -0.37910432 0.35033619 -0.32423055
		 0.32568252 -0.30571419 0.32805008 -0.31460929 0.36452955 -0.34237528 0.36040711 -0.29165006
		 0.32944202 -0.29007941 0.36695677 -0.27302873 0.33075017 -0.26204383 0.36835808 -0.47156721
		 0.31338346 -0.46574318 0.31593996 -0.48268914 0.35599631 -0.49209762 0.35347897 -0.44704431
		 0.40175349 -0.47136092 0.40000504 -0.42140609 0.40104109 -0.39722252 0.39794379 -0.38016707
		 0.39464349 -0.36916983 0.39257139 -0.31985569 0.39786077 -0.35111547 0.3952595 -0.29146886
		 0.40066963 -0.26030564 0.40424573 -0.48857403 0.39765775 -0.49967009 0.39620078 -0.44549477
		 0.43699932 -0.46886086 0.43729484 -0.42099619 0.43631828 -0.39764899 0.4353143 -0.38129658
		 0.43507367 -0.37111753 0.43654633 -0.32167011 0.43589503 -0.34959102 0.4330368 -0.29714322
		 0.43832225 -0.26920253 0.44099164 -0.48520088 0.43796253 -0.49528188 0.43999946 -0.44178152
		 0.49045664 -0.46074474 0.49115181 -0.42173302 0.48989862 -0.4027589 0.48953968 -0.39084536
		 0.48901141 -0.38366336 0.4895044 -0.32129455 0.48603559 -0.33979154 0.48409355 -0.30733645
		 0.48741657 -0.28881836 0.48913687 -0.47266746 0.49128658 -0.47981197 0.4921785 -0.43746805
		 0.28486282 -0.29566026 0.29820812 -0.10180444 0.33187568 -0.08290875 0.33386081 -0.086035609
		 0.37031043 -0.10987538 0.3692736 -0.065086722 0.33424717 -0.063243508 0.37057221
		 -0.047655165 0.33270174 -0.041243255 0.36996174 -0.035669386 0.33031052 -0.025338411
		 0.36870694 -0.027957439 0.32766002 -0.015001714 0.3670572 -0.22836614 0.34651554
		 -0.20645058 0.34773654 -0.20939428 0.38313985 -0.23662108 0.38198465 -0.18832695
		 0.34787059 -0.18538797 0.38336712 -0.16505545 0.34706414 -0.156241 0.38265246 -0.12227768
		 0.32681358 -0.11426407 0.32938111 -0.12595099 0.36769676 -0.13631821 0.36563319 -0.089080572
		 0.40581417 -0.11241835 0.40431172 -0.064885378 0.40598494 -0.041285694 0.40490657
		 -0.023695052 0.40372467 -0.012192905 0.40332425 -0.20884639 0.4122985 -0.23838758
		 0.41243875 -0.18218017 0.41254377 -0.15265781 0.41313237 -0.12971908 0.40273333 -0.14105594
		 0.40184844 -0.08853817 0.44137818 -0.11058134 0.44166577 -0.0658831 0.44156075 -0.043829441
		 0.44224727 -0.027846217 0.44354987 -0.017787755 0.44589633 -0.20736438 0.45032501
		 -0.23380274 0.44997704 -0.18428999 0.45051932 -0.15784615 0.4506048 -0.12656635 0.44261092
		 -0.13666946 0.44469804 -0.086758256 0.49500704 -0.10428017 0.49554622 -0.068655014
		 0.49516147 -0.051165342 0.49601883 -0.039890587 0.4965024 -0.03294915 0.49760044
		 -0.20280463 0.50022179 -0.22025996 0.4999522 -0.1896742 0.50033152 -0.17221582 0.50035113
		 -0.11558473 0.49579078 -0.12255496 0.49673206 -0.08177948 0.30184472 -0.092337847
		 0.2993964 -0.084052861 0.27073699 -0.071181893 0.30218256 -0.06080842 0.29996538
		 -0.054343402 0.29750675 -0.049882412 0.29525518 -0.19895333 0.3154195 -0.21245414
		 0.31482774 -0.18440664 0.28782207 -0.18873978 0.31546265 -0.17522681 0.31513584;
	setAttr ".uvst[0].uvsp[250:499]" -0.099272788 0.29707658 -0.10404903 0.2950381
		 -0.45731348 0.31869787 -0.44356221 0.32141274 -0.44657242 0.35839063 -0.46789372
		 0.35767901 -0.42934692 0.32101619 -0.42428499 0.35777068 -0.41576719 0.31754267 -0.40303719
		 0.35587567 -0.40750533 0.31431925 -0.38835865 0.35337234 -0.40183419 0.31144291 -0.37910432
		 0.35033619 -0.32423055 0.32568252 -0.30571419 0.32805008 -0.31460929 0.36452955 -0.34237528
		 0.36040711 -0.29165006 0.32944202 -0.29007941 0.36695677 -0.27302873 0.33075017 -0.26204383
		 0.36835808 -0.47156721 0.31338346 -0.46574318 0.31593996 -0.48268914 0.35599631 -0.49209762
		 0.35347897 -0.44704431 0.40175349 -0.47136092 0.40000504 -0.42140609 0.40104109 -0.39722252
		 0.39794379 -0.38016707 0.39464349 -0.36916983 0.39257139 -0.31985569 0.39786077 -0.35111547
		 0.3952595 -0.29146886 0.40066963 -0.26030564 0.40424573 -0.48857403 0.39765775 -0.49967009
		 0.39620078 -0.44549477 0.43699932 -0.46886086 0.43729484 -0.42099619 0.43631828 -0.39764899
		 0.4353143 -0.38129658 0.43507367 -0.37111753 0.43654633 -0.32167011 0.43589503 -0.34959102
		 0.4330368 -0.29714322 0.43832225 -0.26920253 0.44099164 -0.48520088 0.43796253 -0.49528188
		 0.43999946 -0.44178152 0.49045664 -0.46074474 0.49115181 -0.42173302 0.48989862 -0.4027589
		 0.48953968 -0.39084536 0.48901141 -0.38366336 0.4895044 -0.32129455 0.48603559 -0.33979154
		 0.48409355 -0.30733645 0.48741657 -0.28881836 0.48913687 -0.47266746 0.49128658 -0.47981197
		 0.4921785 -0.43746805 0.28486282 -0.29566026 0.29820812 0.53419113 0.77303791 0.50204158
		 0.77650356 0.49297714 0.74799621 0.53419113 0.74140036 0.47567725 0.78367543 0.45949006
		 0.76559561 0.4387095 0.74118006 0.48003161 0.71575987 0.53419113 0.70421249 0.19528669
		 0.63871849 0.26964656 0.64774382 0.24820077 0.69221807 0.19528669 0.68429309 0.33304057
		 0.69314563 0.29593077 0.71920514 0.66714567 0.1470158 0.82834071 0.22126244 0.78403038
		 0.26379466 0.64364827 0.23481272 0.50110883 0.11498068 0.50110883 0.23136209 0.6465438
		 0.3376677 0.50110883 0.34296012 0.78566736 0.33736086 0.65417784 0.40107703 0.8161543
		 0.39820528 0.81973153 0.54631782 0.66148019 0.54568076 0.50110883 0.38940644 0.50110883
		 0.544945 0.65936661 0.71349692 0.50110883 0.72489643 0.80012065 0.70309258 0.77800745
		 0.81180167 0.65946496 0.85416269 0.50110883 0.87665224 0.19528669 0.90172762 0.23487572
		 0.89610523 0.24427727 0.93721038 0.19528669 0.94552714 0.26451135 0.88551497 0.28800628
		 0.9124347 0.32134536 0.94851464 0.26290372 0.98347241 0.19528669 0.98876584 0.53419113
		 0.98447603 0.47800469 0.97163856 0.49366677 0.93876976 0.53419113 0.94517201 0.43555582
		 0.94166243 0.46000326 0.91831446 0.47846723 0.9003914 0.5038712 0.90711033 0.53419113
		 0.90979606 0.50443363 0.87441081 0.53419113 0.8756389 0.47235787 0.874439 0.4696486
		 0.84123397 0.50290155 0.84086716 0.53419113 0.84033585 0.50351357 0.80891776 0.53419113
		 0.80671781 0.47077179 0.80941701 0.43802679 0.80198729 0.44714069 0.78216201 0.43555033
		 0.84188759 0.39695418 0.84278882 0.40552115 0.79076821 0.41882324 0.76443493 0.4408561
		 0.88320816 0.40730405 0.89682859 0.37475607 0.82279915 0.35977322 0.89118427 0.31220365
		 0.86859423 0.31818897 0.81836057 0.96877664 0.74411869 0.87198716 0.91948056 0.89129573
		 0.71264958 0.99271792 0.54318404 0.91269296 0.54480648 0.3098993 0.74749374 0.35171902
		 0.72173804 0.36495212 0.74891144 0.31581625 0.77256632 0.98322707 0.36000705 0.90092117
		 0.38295507 0.87883025 0.30458999 0.71276516 0.038614016 0.90368515 0.14656232 0.50110883
		 0.0069141216 0.95955926 0.25971675 -0.46580893 0.77303791 -0.46580893 0.74140036
		 -0.50702286 0.74799621 -0.49795842 0.77650356 -0.54050994 0.76559561 -0.52432281
		 0.78367543 -0.51996839 0.71575987 -0.5612905 0.74118006 -0.46580893 0.70421249 0.19528669
		 0.63871849 0.19528669 0.68429309 0.14237261 0.69221807 0.12092707 0.64774382 0.094642736
		 0.71920514 0.057533056 0.69314563 0.33507308 0.1470158 0.35857043 0.23481272 0.21818766
		 0.26379466 0.17387792 0.22126244 0.35567483 0.3376677 0.21655127 0.33736086 0.34803984
		 0.40107703 0.34073839 0.54568076 0.18248615 0.54631782 0.18606326 0.39820528 0.34285149
		 0.71349692 0.20209798 0.70309258 0.34275374 0.85416269 0.22421011 0.81180167 0.19528669
		 0.90172762 0.19528669 0.94552714 0.14629625 0.93721038 0.15569791 0.89610523 0.10256722
		 0.9124347 0.12606202 0.88551497 0.12766978 0.98347241 0.069228135 0.94851464 0.19528669
		 0.98876584 -0.46580893 0.98447603 -0.46580893 0.94517201 -0.50633323 0.93876976 -0.52199531
		 0.97163856 -0.53999674 0.91831446 -0.56444418 0.94166243 -0.49612886 0.90711033 -0.52153277
		 0.9003914 -0.46580893 0.90979606 -0.46580893 0.8756389 -0.49556637 0.87441081 -0.52764213
		 0.874439 -0.49709851 0.84086716 -0.53035146 0.84123397 -0.46580893 0.84033585 -0.46580893
		 0.80671781 -0.49648637 0.80891776 -0.52922815 0.80941701 -0.55285937 0.78216201 -0.56197321
		 0.80198729 -0.56444967 0.84188759 -0.59447891 0.79076821 -0.60304582 0.84278882 -0.5811767
		 0.76443493 -0.5591439 0.88320816 -0.59269601 0.89682859 0.015817432 0.82279915 0.071829997
		 0.81980324 0.078247011 0.86856961 0.030800397 0.89118427 0.032950129 0.74402022 0.1109229
		 0.71264958 0.13023099 0.91948056 0.0072821048 0.54895473 0.08952567 0.54480648 0.079795197
		 0.74849868 0.074325666 0.77436042 0.025621256 0.74891144 0.038854588 0.72173804 0.01726469
		 0.36718345 0.10129747 0.38295507 0.12338838 0.30458999 0.28945252 0.038614016 0.098533005
		 0.14656232 0.50110883 0.0069141216 0.039142933 0.26373649 0.97408044 0.20917821 0.97645068
		 0.21818626 0.97161192 0.21820825 0.97021925 0.21186864 0.97421998 0.22759098 0.9703148
		 0.22360492 0.94536823 0.90340739 0.94451255 0.93963605 0.91370952 0.94649756 0.91118836
		 0.9202913 0.9370572 0.20894223;
	setAttr ".uvst[0].uvsp[500:749]" 0.90711731 0.19506705 0.90837044 0.17973977
		 0.9368968 0.19446045 0.90571201 0.16112465 0.90993541 0.14671898 0.9431749 0.1701265
		 0.93695068 0.17988473 0.94230217 0.96725458 0.91149789 0.96489877 0.93965828 0.23954833
		 0.90950692 0.24756432 0.90935248 0.23104566 0.9379099 0.2266717 0.90666896 0.20508164
		 0.87524492 0.9573037 0.87599486 0.95148206 0.87628806 0.96229911 0.9801712 0.93458652
		 0.97774088 0.96713471 0.87493181 0.25555605 0.87620634 0.23593611 0.87232202 0.20296943
		 0.87270457 0.18851602 0.87498522 0.17156857 0.86295098 0.14609277 0.86548162 0.12799257
		 0.99126554 0.89321816 0.9369095 0.88969135 0.98233443 0.87694484 0.90370673 0.9107706
		 0.87120396 0.9480353 0.86968499 0.95720649 0.8713755 0.96669817 0.90640765 0.97718686
		 0.93610299 0.98369813 0.97070539 0.98568481 0.90619707 0.1990642 0.87205416 0.19467759
		 -0.025919557 0.20917821 -0.029780746 0.21186864 -0.028388083 0.21820825 -0.023549318
		 0.21818626 -0.029685199 0.22360492 -0.025780022 0.22759098 -0.05463177 0.90340739
		 -0.088811636 0.9202913 -0.086290479 0.94649756 -0.055487454 0.93963605 -0.062942803
		 0.20894223 -0.063103199 0.19446045 -0.091629565 0.17973977 -0.092882693 0.19506705
		 -0.094287992 0.16112465 -0.063049316 0.17988473 -0.056825101 0.1701265 -0.090064585
		 0.14671898 -0.088502109 0.96489877 -0.057697833 0.96725458 -0.060341716 0.23954833
		 -0.062090099 0.2266717 -0.090647519 0.23104566 -0.090493083 0.24756432 -0.093331039
		 0.20508164 -0.12400514 0.95148206 -0.12475508 0.9573037 -0.12371194 0.96229911 -0.019828796
		 0.93458652 -0.022259116 0.96713471 -0.12379366 0.23593611 -0.12506819 0.25555605
		 -0.12767798 0.20296943 -0.12501478 0.17156857 -0.12729543 0.18851602 -0.13704902
		 0.14609277 -0.13451838 0.12799257 -0.0087344646 0.89321816 -0.063090503 0.88969135
		 -0.017665565 0.87694484 -0.096293271 0.9107706 -0.12879604 0.9480353 -0.13031501
		 0.95720649 -0.1286245 0.96669817 -0.093592346 0.97718686 -0.063897014 0.98369813
		 -0.02929461 0.98568481 -0.093802929 0.1990642 -0.12794584 0.19467759 -0.45731348
		 0.31869787 -0.44356221 0.32141274 -0.44657242 0.35839063 -0.46789372 0.35767901 -0.42934692
		 0.32101619 -0.42428499 0.35777068 -0.41576719 0.31754267 -0.40303719 0.35587567 -0.40750533
		 0.31431925 -0.38835865 0.35337234 -0.40183419 0.31144291 -0.37910432 0.35033619 -0.32423055
		 0.32568252 -0.30571419 0.32805008 -0.31460929 0.36452955 -0.34237528 0.36040711 -0.29165006
		 0.32944202 -0.29007941 0.36695677 -0.27302873 0.33075017 -0.26204383 0.36835808 -0.47156721
		 0.31338346 -0.46574318 0.31593996 -0.48268914 0.35599631 -0.49209762 0.35347897 -0.44704431
		 0.40175349 -0.47136092 0.40000504 -0.42140609 0.40104109 -0.39722252 0.39794379 -0.38016707
		 0.39464349 -0.36916983 0.39257139 -0.31985569 0.39786077 -0.35111547 0.3952595 -0.29146886
		 0.40066963 -0.26030564 0.40424573 -0.48857403 0.39765775 -0.49967009 0.39620078 -0.44549477
		 0.43699932 -0.46886086 0.43729484 -0.42099619 0.43631828 -0.39764899 0.4353143 -0.38129658
		 0.43507367 -0.37111753 0.43654633 -0.32167011 0.43589503 -0.34959102 0.4330368 -0.29714322
		 0.43832225 -0.26920253 0.44099164 -0.48520088 0.43796253 -0.49528188 0.43999946 -0.44178152
		 0.49045664 -0.46074474 0.49115181 -0.42173302 0.48989862 -0.4027589 0.48953968 -0.39084536
		 0.48901141 -0.38366336 0.4895044 -0.32129455 0.48603559 -0.33979154 0.48409355 -0.30733645
		 0.48741657 -0.28881836 0.48913687 -0.47266746 0.49128658 -0.47981197 0.4921785 -0.43746805
		 0.28486282 -0.29566026 0.29820812 0.54268652 0.31869787 0.55643779 0.32141274 0.55342758
		 0.35839063 0.53210628 0.35767901 0.57065308 0.32101619 0.57571501 0.35777068 0.58423281
		 0.31754267 0.59696281 0.35587567 0.59249467 0.31431925 0.61164135 0.35337234 0.59816581
		 0.31144291 0.62089568 0.35033619 0.67576945 0.32568252 0.69428581 0.32805008 0.68539071
		 0.36452955 0.65762472 0.36040711 0.70834994 0.32944202 0.70992059 0.36695677 0.72697127
		 0.33075017 0.73795617 0.36835808 0.52843279 0.31338346 0.53425682 0.31593996 0.51731086
		 0.35599631 0.50790238 0.35347897 0.55295569 0.40175349 0.52863908 0.40000504 0.57859391
		 0.40104109 0.60277748 0.39794379 0.61983293 0.39464349 0.63083017 0.39257139 0.68014431
		 0.39786077 0.64888453 0.3952595 0.70853114 0.40066963 0.73969436 0.40424573 0.51142597
		 0.39765775 0.50032991 0.39620078 0.55450523 0.43699932 0.53113914 0.43729484 0.57900381
		 0.43631828 0.60235101 0.4353143 0.61870342 0.43507367 0.62888247 0.43654633 0.67832989
		 0.43589503 0.65040898 0.4330368 0.70285678 0.43832225 0.73079747 0.44099164 0.51479912
		 0.43796253 0.50471812 0.43999946 0.55821848 0.49045664 0.53925526 0.49115181 0.57826698
		 0.48989862 0.5972411 0.48953968 0.60915464 0.48901141 0.61633664 0.4895044 0.67870545
		 0.48603559 0.66020846 0.48409355 0.69266355 0.48741657 0.71118164 0.48913687 0.52733254
		 0.49128658 0.52018803 0.4921785 0.56253195 0.28486282 0.70433974 0.29820812 0.89819556
		 0.33187568 0.91709125 0.33386081 0.91396439 0.37031043 0.89012462 0.3692736 0.93491328
		 0.33424717 0.93675649 0.37057221 0.95234483 0.33270174 0.95875674 0.36996174 0.96433061
		 0.33031052 0.97466159 0.36870694 0.97204256 0.32766002 0.98499829 0.3670572 0.77163386
		 0.34651554 0.79354942 0.34773654 0.79060572 0.38313985 0.76337892 0.38198465 0.81167305
		 0.34787059 0.81461203 0.38336712 0.83494455 0.34706414 0.843759 0.38265246 0.87772232
		 0.32681358 0.88573593 0.32938111 0.87404901 0.36769676 0.86368179 0.36563319 0.91091943
		 0.40581417 0.88758165 0.40431172 0.93511462 0.40598494 0.95871431 0.40490657 0.97630495
		 0.40372467 0.9878071 0.40332425 0.79115361 0.4122985 0.76161242 0.41243875 0.81781983
		 0.41254377 0.84734219 0.41313237 0.87028092 0.40273333 0.85894406 0.40184844 0.91146183
		 0.44137818 0.88941866 0.44166577 0.9341169 0.44156075;
	setAttr ".uvst[0].uvsp[750:999]" 0.95617056 0.44224727 0.97215378 0.44354987
		 0.98221225 0.44589633 0.79263562 0.45032501 0.76619726 0.44997704 0.81571001 0.45051932
		 0.84215385 0.4506048 0.87343365 0.44261092 0.86333054 0.44469804 0.91324174 0.49500704
		 0.89571983 0.49554622 0.93134499 0.49516147 0.94883466 0.49601883 0.96010941 0.4965024
		 0.96705085 0.49760044 0.79719537 0.50022179 0.77974004 0.4999522 0.8103258 0.50033152
		 0.82778418 0.50035113 0.88441527 0.49579078 0.87744504 0.49673206 0.91822052 0.30184472
		 0.90766215 0.2993964 0.91594714 0.27073699 0.92881811 0.30218256 0.93919158 0.29996538
		 0.9456566 0.29750675 0.95011759 0.29525518 0.80104667 0.3154195 0.78754586 0.31482774
		 0.81559336 0.28782207 0.81126022 0.31546265 0.82477319 0.31513584 0.90072721 0.29707658
		 0.89595097 0.2950381 -0.93024421 0.093039989 -0.95711911 0.092047036 -0.9570148 0.10521841
		 -0.93024421 0.10625607 -0.95607746 0.11822003 -0.93024421 0.11956549 -0.9514268 0.13058412
		 -0.93024421 0.13290125 -0.93024421 0.027204871 -0.95226854 0.030227005 -0.95726639
		 0.042657137 -0.93024421 0.040441334 -0.95728284 0.055137932 -0.93024421 0.053597331
		 -0.95705867 0.067443967 -0.93024421 0.066731513 -0.95698816 0.07963872 -0.93024421
		 0.079871595 -0.8095488 0.029123366 -0.80954832 0.044514239 -0.79866427 0.033631384
		 -0.82043236 0.033632219 -0.8249405 0.044515848 -0.82043141 0.055397928 -0.8095488
		 0.059905946 -0.79866624 0.055399477 -0.79415661 0.044516563 -0.85018015 0.09370333
		 -0.85848612 0.09346205 -0.85841787 0.10607189 -0.85005552 0.10589713 -0.85818744
		 0.11857551 -0.84978044 0.11803383 -0.8573246 0.13090038 -0.84890425 0.12989748 -0.84914798
		 0.029898345 -0.85430175 0.031181276 -0.85171783 0.042440176 -0.84652251 0.041380167
		 -0.85040271 0.053163409 -0.8451494 0.053145051 -0.8517319 0.063902974 -0.84651464
		 0.06483835 -0.85399842 0.075239837 -0.84880233 0.076135516 -0.84983766 0.082026839
		 -0.85831994 0.080650091 -0.87636054 0.093273878 -0.89704472 0.093464017 -0.89704472
		 0.10714185 -0.87636054 0.10656941 -0.89704472 0.12095368 -0.87636054 0.11985648 -0.89704472
		 0.13495922 -0.87636054 0.13316339 -0.87636054 0.026138902 -0.89704472 0.024698138
		 -0.89704472 0.038704097 -0.87636054 0.039492011 -0.89704472 0.052523434 -0.87636054
		 0.052944958 -0.89704472 0.066213667 -0.87636054 0.066444993 -0.89704472 0.079842329
		 -0.87636054 0.079902887 -0.90328711 0.093492329 -0.90801299 0.093446136 -0.90801299
		 0.10710061 -0.90328711 0.10720587 -0.90801299 0.1209234 -0.90328711 0.12108576 -0.90801299
		 0.1349746 -0.90328711 0.1352551 -0.90328711 0.024456799 -0.90801299 0.024799407 -0.90801299
		 0.038836658 -0.90328711 0.038624167 -0.90801299 0.052640617 -0.90328711 0.052502096
		 -0.90801299 0.066285133 -0.90328711 0.066213667 -0.90801299 0.079864144 -0.90328711
		 0.079853237 -0.85776192 0.06718725 -0.85756052 0.053170323 -0.85786462 0.039264143
		 -0.85890931 0.026280403 -0.8249405 0.050955713 -0.82043087 0.061837792 -0.85094738
		 0.023720026 -0.80954933 0.066345751 -0.79866672 0.061839402 -0.79415715 0.050957322
		 -0.96256286 0.10445881 -0.97052628 0.10386598 -0.97157884 0.11488956 -0.96423215
		 0.11568099 -0.96653634 0.045348644 -0.96734118 0.056443214 -0.96711004 0.067192256
		 -0.96702695 0.079268396 -0.96740156 0.091112137 -0.95975077 0.12436759 -0.95267528
		 0.13239187 -0.97220343 0.12164384 -0.96555042 0.12226993 -0.95359385 0.028509676
		 -0.96094996 0.036476851 -0.96793449 0.038568079 -0.98231119 0.11413741 -0.98231119
		 0.12106842 -0.98231119 0.10401297 -0.98231119 0.091171741 -0.98231119 0.07903105
		 -0.98231119 0.066808462 -0.98231119 0.057254493 -0.98231119 0.0465253 -0.98231119
		 0.039555609 0.069755763 0.093039989 0.069755763 0.10625607 0.042985186 0.10521841
		 0.042880923 0.092047036 0.069755763 0.11956549 0.043922529 0.11822003 0.069755763
		 0.13290125 0.048573188 0.13058412 0.069755763 0.027204871 0.069755763 0.040441334
		 0.042733591 0.042657137 0.047731448 0.030227005 0.069755763 0.053597331 0.042717144
		 0.055137932 0.069755763 0.066731513 0.04294131 0.067443967 0.069755763 0.079871595
		 0.043011844 0.07963872 0.19045119 0.029123366 0.20133574 0.033631384 0.19045168 0.044514239
		 0.17956762 0.033632219 0.17505948 0.044515848 0.1795686 0.055397928 0.19045119 0.059905946
		 0.20133376 0.055399477 0.20584337 0.044516563 0.14981987 0.09370333 0.14994448 0.10589713
		 0.1415821 0.10607189 0.14151388 0.09346205 0.15021957 0.11803383 0.14181253 0.11857551
		 0.15109578 0.12989748 0.1426754 0.13090038 0.15085204 0.029898345 0.1534775 0.041380167
		 0.1482822 0.042440176 0.14569825 0.031181276 0.15485062 0.053145051 0.14959729 0.053163409
		 0.15348536 0.06483835 0.14826809 0.063902974 0.15119766 0.076135516 0.14600155 0.075239837
		 0.15016235 0.082026839 0.14168006 0.080650091 0.12363943 0.093273878 0.12363943 0.10656941
		 0.10295527 0.10714185 0.10295527 0.093464017 0.12363943 0.11985648 0.10295527 0.12095368
		 0.12363943 0.13316339 0.10295527 0.13495922 0.12363943 0.026138902 0.12363943 0.039492011
		 0.10295527 0.038704097 0.10295527 0.024698138 0.12363943 0.052944958 0.10295527 0.052523434
		 0.12363943 0.066444993 0.10295527 0.066213667 0.12363943 0.079902887 0.10295527 0.079842329
		 0.096712902 0.093492329 0.096712902 0.10720587 0.091986991 0.10710061 0.091986991
		 0.093446136 0.096712902 0.12108576 0.091986991 0.1209234 0.096712902 0.1352551 0.091986991
		 0.1349746 0.096712902 0.024456799 0.096712902 0.038624167 0.091986991 0.038836658
		 0.091986991 0.024799407 0.096712902 0.052502096 0.091986991 0.052640617 0.096712902
		 0.066213667 0.091986991 0.066285133 0.096712902 0.079853237 0.091986991 0.079864144
		 0.14223808 0.06718725 0.14243947 0.053170323 0.14213541 0.039264143 0.14109069 0.026280403
		 0.17956911 0.061837792 0.17505948 0.050955713 0.14905261 0.023720026 0.19045068 0.066345751
		 0.20133325 0.061839402 0.20584288 0.050957322 0.037437156 0.10445881 0.035767831
		 0.11568099 0.028421167 0.11488956 0.029473696 0.10386598;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.032658808 0.056443214 0.033463679 0.045348644
		 0.032889985 0.067192256 0.032973055 0.079268396 0.032598421 0.091112137 0.047324698
		 0.13239187 0.040249214 0.12436759 0.034449585 0.12226993 0.027796552 0.12164384 0.039050065
		 0.036476851 0.046406161 0.028509676 0.0320655 0.038568079 0.017688783 0.11413741
		 0.017688783 0.12106842 0.017688783 0.10401297 0.017688783 0.091171741 0.017688783
		 0.07903105 0.017688783 0.066808462 0.017688783 0.057254493 0.017688783 0.0465253
		 0.017688783 0.039555609 0.43303937 0.06166774 0.43303937 0.0796206 0.40615439 0.0796206
		 0.40615439 0.06166774 0.44884884 0.06166774 0.44884884 0.0796206 0.44328642 0.0796206
		 0.44328642 0.06166774 0.43303937 0.0852862 0.40615439 0.0852862 0.39994431 0.0796206
		 0.39994431 0.06166774 0.40615439 0.056407392 0.43303937 0.056407392 0.44328642 0.0852862
		 0.44328642 0.056407392 -0.56696063 0.06166774 -0.59384561 0.06166774 -0.59384561
		 0.0796206 -0.56696063 0.0796206 -0.55115116 0.06166774 -0.55671358 0.06166774 -0.55671358
		 0.0796206 -0.55115116 0.0796206 -0.56696063 0.0852862 -0.59384561 0.0852862 -0.60005569
		 0.0796206 -0.60005569 0.06166774 -0.59384561 0.056407392 -0.56696063 0.056407392
		 -0.55671358 0.0852862 -0.55671358 0.056407392 0.1697427 0.18126285 0.18196034 0.16376376
		 0.19726019 0.20062089 0.19971311 0.16637039 0.21590415 0.17262924 0.22797459 0.18971688
		 0.014454667 0.19484639 0.045816973 0.19817489 0.044806864 0.20273614 0.012658365
		 0.20728338 0.060548093 0.22418135 0.028382218 0.2393716 0.074279033 0.24659914 0.045868859
		 0.25974768 0.18378726 0.26283884 0.18378726 0.24547219 0.21277635 0.24547219 0.21277635
		 0.26283884 0.11602817 0.222588 0.12834685 0.22629499 0.11265898 0.24921519 0.10685699
		 0.24161297 0.12145307 0.17693979 0.12768228 0.20275033 0.10892438 0.20338506 0.1039925
		 0.1808098 0.078388982 0.18311322 0.078331634 0.20322913 0.075344749 0.22069532 0.09826275
		 0.2207588 0.083246395 0.23286819 0.06313853 0.22015381 0.0782023 0.24099469 0.098944433
		 0.15824473 0.11220519 0.15872985 0.097349457 0.16436481 0.077465758 0.16679597 0.075572886
		 0.16048145 0.054185074 0.17431033 0.055053186 0.16698253 0.027959952 0.16745508 0.032945212
		 0.16197211 0.08072447 0.23651093 0.076318868 0.26002359 0.053519029 0.26598459 0.11055238
		 0.26136768 0.13683385 0.25815827 0.1304331 0.26611704 0.16433278 0.22332954 0.18378726
		 0.22332954 0.16433278 0.24547219 0.21277635 0.22332954 0.22858584 0.22332954 0.22858584
		 0.24547219 0.12430193 0.15267789 0.11918734 0.14670664 0.1368259 0.17208457 0.14666659
		 0.20126277 0.14772213 0.22958595 0.072124511 0.22039276 0.11332031 0.22243047 0.10820199
		 0.20614928 0.10469925 0.23850471 0.080711067 0.20622921 -0.8302573 0.18126285 -0.8027398
		 0.20062089 -0.81803966 0.16376376 -0.80028689 0.16637039 -0.78409588 0.17262924 -0.77202541
		 0.18971688 -0.98554534 0.19484639 -0.98734164 0.20728338 -0.95519316 0.20273614 -0.95418304
		 0.19817489 -0.97161776 0.2393716 -0.93945193 0.22418135 -0.95413113 0.25974768 -0.92572099
		 0.24659914 -0.81621277 0.26283884 -0.78722364 0.26283884 -0.78722364 0.24547219 -0.81621277
		 0.24547219 -0.88397181 0.222588 -0.893143 0.24161297 -0.88734102 0.24921519 -0.87165314
		 0.22629499 -0.87854695 0.17693979 -0.89600748 0.1808098 -0.89107561 0.20338506 -0.87231773
		 0.20275033 -0.92161101 0.18311322 -0.92166835 0.20322913 -0.92465526 0.22069532 -0.91675359
		 0.23286819 -0.90173727 0.2207588 -0.92179769 0.24099469 -0.93686146 0.22015381 -0.90105557
		 0.15824473 -0.90265054 0.16436481 -0.88779479 0.15872985 -0.92442709 0.16048145 -0.92253423
		 0.16679597 -0.94494683 0.16698253 -0.94581491 0.17431033 -0.96705478 0.16197211 -0.97204006
		 0.16745508 -0.91927552 0.23651093 -0.94648099 0.26598459 -0.92368114 0.26002359 -0.88944763
		 0.26136768 -0.86956692 0.26611704 -0.86316615 0.25815827 -0.83566725 0.22332954 -0.83566725
		 0.24547219 -0.81621277 0.22332954 -0.78722364 0.22332954 -0.77141416 0.24547219 -0.77141416
		 0.22332954 -0.87569809 0.15267789 -0.88081264 0.14670664 -0.86317408 0.17208457 -0.85333341
		 0.20126277 -0.85227787 0.22958595 -0.92787552 0.22039276 -0.89179802 0.20614928 -0.88667971
		 0.22243047 -0.89530075 0.23850471 -0.91928893 0.20622921 0.45540437 0.17990315 0.44306484
		 0.17990315 0.44306484 0.1367119 0.45540437 0.1367119 0.4307248 0.17990315 0.4307248
		 0.1367119 0.41838604 0.17990315 0.41838604 0.1367119 0.40604702 0.17990315 0.40604702
		 0.1367119 0.39370698 0.17990315 0.39370698 0.1367119 0.38136744 0.17990315 0.38136744
		 0.1367119 0.36902744 0.17990315 0.36902744 0.1367119 0.46774438 0.17990315 0.46774438
		 0.1367119 0.45540437 0.18924046 0.44306484 0.18924046 0.4307248 0.18924046 0.41838604
		 0.18924046 0.40604702 0.18924046 0.39370698 0.18924046 0.38136744 0.18924046 0.36902744
		 0.18924046 0.46774438 0.18924046 0.45715755 0.19835754 0.44306475 0.19835751 0.4307248
		 0.19835758 0.41838604 0.19835758 0.40604702 0.19835758 0.39370698 0.19835758 0.38136744
		 0.19835758 0.36902744 0.19835758 0.46774438 0.19835758 0.45540437 0.13176495 0.44306484
		 0.13176495 0.44306484 0.12681806 0.45540437 0.12681806 0.4307248 0.13176495 0.4307248
		 0.12681806 0.41838604 0.13176495 0.41838604 0.12681806 0.40604702 0.13176495 0.40604702
		 0.12681806 0.39370698 0.13176495 0.39370698 0.12681806 0.38136744 0.13176495 0.38136744
		 0.12681806 0.36902744 0.13176495 0.36902744 0.12681806 0.46774438 0.13176495 0.46774438
		 0.12681806 0.44306484 0.11047494 0.45540437 0.11047494 0.4307248 0.11047494 0.41838604
		 0.11047494 0.40604702 0.11047494 0.39370698 0.11047494 0.38136744 0.11047494 0.36902744
		 0.11047494 0.46774438 0.11047494 0.4997831 0.12994462 0.51968586 0.12994462 0.51968586
		 0.13681114 0.4997831 0.13681114 0.53958863 0.12994462 0.53958863 0.13681114;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.55949068 0.12994462 0.55949068 0.13681114
		 0.57939339 0.12994462 0.57939339 0.13681114 0.59929621 0.12994462 0.59929621 0.13681114
		 0.61919898 0.12994462 0.61919898 0.13681114 0.63910097 0.12994462 0.63910097 0.13681114
		 0.47988033 0.12994462 0.47988033 0.13681114 0.58290911 0.18751913 0.61531156 0.18751913
		 0.61531156 0.20201218 0.58290911 0.20201218 0.64771485 0.18751913 0.64771485 0.20201218
		 0.68011731 0.18751913 0.68011731 0.20201218 0.71251976 0.18751913 0.71251976 0.20201218
		 0.74492294 0.18751913 0.74492294 0.20201218 0.77732629 0.18751913 0.77732629 0.20201218
		 0.80972874 0.18751913 0.80972874 0.20201218 0.55050588 0.18751913 0.55050588 0.20201218
		 0.61531156 0.22069907 0.58290911 0.22069907 0.64771485 0.22069907 0.68011731 0.22069907
		 0.71251976 0.22069907 0.74492294 0.22069907 0.77732629 0.22069907 0.80972874 0.22069907
		 0.55050588 0.22069907 0.61531156 0.22484773 0.58290911 0.22484773 0.64771485 0.22484773
		 0.68011731 0.22484773 0.71251976 0.22484773 0.74492294 0.22484773 0.77732629 0.22484773
		 0.80972874 0.22484773 0.55050588 0.22484773 0.61531156 0.2474336 0.58290911 0.2474336
		 0.64771485 0.2474336 0.68011731 0.2474336 0.71251976 0.2474336 0.74492294 0.2474336
		 0.77732629 0.2474336 0.80972874 0.2474336 0.55050588 0.2474336 0.61531156 0.26075792
		 0.58290911 0.26075792 0.64771479 0.26075792 0.68011731 0.26075792 0.71251976 0.26075792
		 0.74492294 0.26075792 0.77732629 0.26075792 0.80972874 0.26075792 0.55050588 0.26075792
		 0.61531156 0.26871663 0.58290911 0.26871663 0.64771479 0.26871663 0.68011731 0.26871663
		 0.71251976 0.26871663 0.74492294 0.26871663 0.77732629 0.26871663 0.80972874 0.26871663
		 0.55050588 0.26871663 0.69302148 0.11678076 0.71670109 0.11768591 0.71636742 0.13575637
		 0.69237006 0.13078988 0.74068254 0.11720943 0.73688239 0.13505101 0.76492417 0.11606753
		 0.76417249 0.13315207 0.78871053 0.11698061 0.79064041 0.13371557 0.8119716 0.11725253
		 0.80296528 0.13364577 0.83449692 0.11388642 0.843539 0.12296283 0.83009797 0.12648642
		 0.64561999 0.11495304 0.66909659 0.11619455 0.65898752 0.1247285 0.64302933 0.12723881
		 0.66220129 0.1480006 0.53250235 0.066223145 0.52465039 0.073760986 0.51459497 0.072311103
		 0.51462227 0.06251061 0.21042587 0.082178235 0.20059237 0.095667779 0.19873476 0.084879756
		 0.20838429 0.11763257 0.19368619 0.1124748 0.21210003 0.098284662 0.18417592 0.10629821
		 0.19010203 0.092973292 0.26154155 0.098939896 0.24449801 0.10697782 0.23801981 0.095084667
		 0.24952845 0.089631557 0.22723752 0.11801034 0.22618049 0.10011309 0.73704821 0.16105199
		 0.71810961 0.16173774 0.75176668 0.16040695 0.70296067 0.16070324 0.80310231 0.15980899
		 0.79151422 0.15970635 0.68982208 0.16236627 0.77131504 0.15986776 0.77783865 0.045614839
		 0.77803177 0.055198252 0.76441699 0.057060421 0.76038301 0.052801669 0.81413782 0.13787168
		 0.83536327 0.14046502 0.83337235 0.15904641 0.81584722 0.15946335 0.2204098 0.08725369
		 0.2047192 0.13332903 0.19201054 0.12653649 0.17564026 0.12202692 0.27140135 0.11484092
		 0.24767953 0.12176353 0.22674699 0.13209552 0.75977832 0.042881966 0.77278489 0.038274467
		 0.52784431 0.055657685 0.51779485 0.054246187 0.64295536 0.046116352 0.63980514 0.057734311
		 0.62363046 0.055870593 0.62261164 0.044736147 0.64008713 0.036537588 0.62381417 0.036641061
		 0.66414058 0.16681159 0.5445497 0.1063931 0.52559072 0.10814553 0.52556986 0.078875661
		 0.54186517 0.07739681 0.51045024 0.10824984 0.51104254 0.076513469 0.49206942 0.10611331
		 0.49603763 0.074694514 0.55972642 0.10500276 0.55737454 0.079568446 0.48111361 0.1047951
		 0.48457316 0.077086389 0.5730021 0.10389459 0.57042581 0.076047182 0.79975474 0.089864135
		 0.78202307 0.091781914 0.78138804 0.059319079 0.79550624 0.057667017 0.7613095 0.092655003
		 0.7624082 0.062406182 0.74941903 0.091837585 0.75323308 0.06197989 0.73664534 0.090156436
		 0.74049461 0.064053595 0.71908146 0.08735466 0.72369438 0.059020579 0.8094939 0.088958204
		 0.80656159 0.060476661 0.65972334 0.09450376 0.64105928 0.094594598 0.64267236 0.062659264
		 0.65957439 0.062642097 0.62104273 0.094612658 0.62046582 0.060296297 0.60313135 0.094017029
		 0.60459006 0.059793949 0.67075783 0.094713032 0.67172253 0.066221297 0.59313107 0.093838334
		 0.59442788 0.063192189 0.69677639 0.092438579 0.69259495 0.062051892 0.78176093 0.043015182
		 0.77320737 0.032569647 0.75530243 0.039158463 0.75533819 0.053834617 0.64809847 0.044936836
		 0.64356256 0.031459808 0.6211167 0.031214476 0.61770535 0.042880356 0.53691071 0.065944135
		 0.53006709 0.050900459 0.51622987 0.048876166 0.51111656 0.060344398 0.6927613 0.10649586
		 0.71667725 0.10649586 0.74077392 0.10649586 0.76466054 0.10649586 0.78818822 0.10649586
		 0.81117177 0.10649586 0.83351135 0.10649586 0.64729071 0.10649586 0.66961092 0.10649586
		 0.57939339 0.17273468 0.55949068 0.17273468 0.53958863 0.17273468 0.51968586 0.17273468
		 0.4997831 0.17273468 0.47988033 0.17273468 0.63910097 0.17273468 0.61919898 0.17273468
		 0.59929621 0.17273468 -0.5445956 0.17990315 -0.5445956 0.1367119 -0.55693519 0.1367119
		 -0.55693519 0.17990315 -0.5692752 0.1367119 -0.5692752 0.17990315 -0.58161396 0.1367119
		 -0.58161396 0.17990315 -0.59395301 0.1367119 -0.59395301 0.17990315 -0.60629302 0.1367119
		 -0.60629302 0.17990315 -0.61863256 0.1367119 -0.61863256 0.17990315 -0.63097256 0.1367119
		 -0.63097256 0.17990315 -0.53225565 0.17990315 -0.53225565 0.1367119 -0.55693519 0.18924046
		 -0.5445956 0.18924046 -0.5692752 0.18924046 -0.58161396 0.18924046 -0.59395301 0.18924046
		 -0.60629302 0.18924046 -0.61863256 0.18924046 -0.63097256 0.18924046 -0.53225565
		 0.18924046 -0.55693525 0.19835751 -0.54284245 0.19835754 -0.5692752 0.19835758 -0.58161396
		 0.19835758;
	setAttr ".uvst[0].uvsp[1500:1749]" -0.59395301 0.19835758 -0.60629302 0.19835758
		 -0.61863256 0.19835758 -0.63097256 0.19835758 -0.53225565 0.19835758 -0.5445956 0.13176495
		 -0.5445956 0.12681806 -0.55693519 0.12681806 -0.55693519 0.13176495 -0.5692752 0.12681806
		 -0.5692752 0.13176495 -0.58161396 0.12681806 -0.58161396 0.13176495 -0.59395301 0.12681806
		 -0.59395301 0.13176495 -0.60629302 0.12681806 -0.60629302 0.13176495 -0.61863256
		 0.12681806 -0.61863256 0.13176495 -0.63097256 0.12681806 -0.63097256 0.13176495 -0.53225565
		 0.13176495 -0.53225565 0.12681806 -0.5445956 0.11047494 -0.55693519 0.11047494 -0.5692752
		 0.11047494 -0.58161396 0.11047494 -0.59395301 0.11047494 -0.60629302 0.11047494 -0.61863256
		 0.11047494 -0.63097256 0.11047494 -0.53225565 0.11047494 -0.5002169 0.12994462 -0.5002169
		 0.13681114 -0.48031414 0.13681114 -0.48031414 0.12994462 -0.46041137 0.13681114 -0.46041137
		 0.12994462 -0.44050932 0.13681114 -0.44050932 0.12994462 -0.42060661 0.13681114 -0.42060661
		 0.12994462 -0.40070379 0.13681114 -0.40070379 0.12994462 -0.38080102 0.13681114 -0.38080102
		 0.12994462 -0.36089903 0.13681114 -0.36089903 0.12994462 -0.52011967 0.12994462 -0.52011967
		 0.13681114 -0.41709089 0.18751913 -0.41709089 0.20201218 -0.38468844 0.20201218 -0.38468844
		 0.18751913 -0.35228515 0.20201218 -0.35228515 0.18751913 -0.31988269 0.20201218 -0.31988269
		 0.18751913 -0.28748024 0.20201218 -0.28748024 0.18751913 -0.25507706 0.20201218 -0.25507706
		 0.18751913 -0.22267371 0.20201218 -0.22267371 0.18751913 -0.19027126 0.20201218 -0.19027126
		 0.18751913 -0.44949412 0.18751913 -0.44949412 0.20201218 -0.41709089 0.22069907 -0.38468844
		 0.22069907 -0.35228515 0.22069907 -0.31988269 0.22069907 -0.28748024 0.22069907 -0.25507706
		 0.22069907 -0.22267371 0.22069907 -0.19027126 0.22069907 -0.44949412 0.22069907 -0.41709089
		 0.22484773 -0.38468844 0.22484773 -0.35228515 0.22484773 -0.31988269 0.22484773 -0.28748024
		 0.22484773 -0.25507706 0.22484773 -0.22267371 0.22484773 -0.19027126 0.22484773 -0.44949412
		 0.22484773 -0.41709089 0.2474336 -0.38468844 0.2474336 -0.35228515 0.2474336 -0.31988269
		 0.2474336 -0.28748024 0.2474336 -0.25507706 0.2474336 -0.22267371 0.2474336 -0.19027126
		 0.2474336 -0.44949412 0.2474336 -0.41709089 0.26075792 -0.38468844 0.26075792 -0.35228521
		 0.26075792 -0.31988269 0.26075792 -0.28748024 0.26075792 -0.25507706 0.26075792 -0.22267371
		 0.26075792 -0.19027126 0.26075792 -0.44949412 0.26075792 -0.41709089 0.26871663 -0.38468844
		 0.26871663 -0.35228521 0.26871663 -0.31988269 0.26871663 -0.28748024 0.26871663 -0.25507706
		 0.26871663 -0.22267371 0.26871663 -0.19027126 0.26871663 -0.44949412 0.26871663 -0.30697852
		 0.11678076 -0.30762994 0.13078988 -0.28363258 0.13575637 -0.28329891 0.11768591 -0.26311761
		 0.13505101 -0.25931746 0.11720943 -0.23507583 0.11606753 -0.23582751 0.13315207 -0.20935959
		 0.13371557 -0.21128947 0.11698061 -0.1880284 0.11725253 -0.19703472 0.13364577 -0.16990203
		 0.12648642 -0.156461 0.12296283 -0.16550308 0.11388642 -0.35438001 0.11495304 -0.35697067
		 0.12723881 -0.34101248 0.1247285 -0.33090341 0.11619455 -0.33779871 0.1480006 -0.46749765
		 0.066223145 -0.48537773 0.06251061 -0.48540503 0.072311103 -0.47534961 0.073760986
		 -0.78957415 0.082178235 -0.80126524 0.084879756 -0.7994076 0.095667779 -0.79161572
		 0.11763257 -0.78789997 0.098284662 -0.80631381 0.1124748 -0.80989796 0.092973292
		 -0.81582409 0.10629821 -0.73845845 0.098939896 -0.75047153 0.089631557 -0.76198018
		 0.095084667 -0.75550199 0.10697782 -0.77276248 0.11801034 -0.77381951 0.10011309
		 -0.28189039 0.16173774 -0.26295179 0.16105199 -0.24823332 0.16040695 -0.29703933
		 0.16070324 -0.20848578 0.15970635 -0.19689769 0.15980899 -0.31017792 0.16236627 -0.22868496
		 0.15986776 -0.22216135 0.045614839 -0.23961699 0.052801669 -0.23558301 0.057060421
		 -0.22196823 0.055198252 -0.18586218 0.13787168 -0.18415278 0.15946335 -0.16662765
		 0.15904641 -0.16463673 0.14046502 -0.77959019 0.08725369 -0.79528081 0.13332903 -0.80798948
		 0.12653649 -0.82435977 0.12202692 -0.72859865 0.11484092 -0.75232047 0.12176353 -0.77325302
		 0.13209552 -0.22721511 0.038274467 -0.24022168 0.042881966 -0.47215569 0.055657685
		 -0.48220515 0.054246187 -0.35704464 0.046116352 -0.37738836 0.044736147 -0.37636954
		 0.055870593 -0.36019486 0.057734311 -0.35991287 0.036537588 -0.37618583 0.036641061
		 -0.33585942 0.16681159 -0.4554503 0.1063931 -0.45813483 0.07739681 -0.47443014 0.078875661
		 -0.47440928 0.10814553 -0.48895746 0.076513469 -0.48954976 0.10824984 -0.5039624
		 0.074694514 -0.50793058 0.10611331 -0.44027358 0.10500276 -0.44262546 0.079568446
		 -0.51542687 0.077086389 -0.51888639 0.1047951 -0.4269979 0.10389459 -0.42957419 0.076047182
		 -0.20024526 0.089864135 -0.20449376 0.057667017 -0.21861196 0.059319079 -0.21797693
		 0.091781914 -0.2375918 0.062406182 -0.2386905 0.092655003 -0.24676692 0.06197989
		 -0.25058097 0.091837585 -0.25950539 0.064053595 -0.26335466 0.090156436 -0.27630562
		 0.059020579 -0.28091854 0.08735466 -0.1905061 0.088958204 -0.19343841 0.060476661
		 -0.34027666 0.09450376 -0.34042561 0.062642097 -0.35732764 0.062659264 -0.35894072
		 0.094594598 -0.37953418 0.060296297 -0.37895727 0.094612658 -0.39540994 0.059793949
		 -0.39686865 0.094017029 -0.32924217 0.094713032 -0.32827747 0.066221297 -0.40557212
		 0.063192189 -0.40686893 0.093838334 -0.30322361 0.092438579 -0.30740505 0.062051892
		 -0.21823907 0.043015182 -0.22679263 0.032569647 -0.24469757 0.039158463 -0.24466181
		 0.053834617 -0.35190153 0.044936836 -0.35643744 0.031459808 -0.3788833 0.031214476
		 -0.38229465 0.042880356 -0.46308929 0.065944135 -0.46993291 0.050900459 -0.48377013
		 0.048876166 -0.48888344 0.060344398 -0.3072387 0.10649586 -0.28332275 0.10649586
		 -0.25922608 0.10649586 -0.23533946 0.10649586 -0.21181178 0.10649586 -0.18882823
		 0.10649586 -0.16648865 0.10649586 -0.35270929 0.10649586 -0.33038908 0.10649586 -0.44050932
		 0.17273468 -0.42060661 0.17273468;
	setAttr ".uvst[0].uvsp[1750:1999]" -0.46041137 0.17273468 -0.48031414 0.17273468
		 -0.5002169 0.17273468 -0.52011967 0.17273468 -0.38080102 0.17273468 -0.36089903 0.17273468
		 -0.40070379 0.17273468 -0.65074909 0.05555141 -0.65074909 0.042066514 -0.69427645
		 0.042066514 -0.69427645 0.05555141 -0.74261224 0.14679617 -0.7631948 0.16708058 -0.74261224
		 0.16726243 -0.77307892 0.042066514 -0.77307892 0.05555141 -0.73780429 0.05555141
		 -0.73780429 0.042066514 -0.61547399 0.05555141 -0.61547399 0.042066514 -0.72203076
		 0.16708058 -0.74261224 0.19320613 -0.74261224 0.2063002 -0.71277237 0.16566986 -0.74261224
		 0.13743824 -0.77245319 0.16566986 0.34925088 0.05555141 0.30572358 0.05555141 0.30572358
		 0.042066514 0.34925088 0.042066514 0.25738773 0.14679617 0.25738773 0.16726243 0.2368052
		 0.16708058 0.2269211 0.042066514 0.26219574 0.042066514 0.26219574 0.05555141 0.2269211
		 0.05555141 0.38452604 0.05555141 0.38452604 0.042066514 0.27796924 0.16708058 0.25738773
		 0.19320613 0.2872276 0.16566986 0.25738779 0.2063002 0.22754684 0.16566986 0.25738779
		 0.13743824 0.4204303 0.24165398 0.43809244 0.24134445 0.44312537 0.26572233 0.42587331
		 0.26572233 0.39471531 0.25431514 0.41316119 0.2436462 0.40965322 0.26572233 0.50310338
		 0.24998033 0.51776379 0.25938821 0.50615829 0.26572233 0.49005663 0.26572233 0.47732711
		 0.24305218 0.49378726 0.24604756 0.47258562 0.26572233 0.4610298 0.2404024 0.45679301
		 0.26572233 0.45432645 0.24003327 0.44340515 0.28245723 0.42988446 0.28245723 0.42879021
		 0.27432996 0.44382221 0.27432996 0.41581643 0.28245723 0.41320884 0.27432996 0.4970333
		 0.28245723 0.48291907 0.28245723 0.48523596 0.27432996 0.50069445 0.27432996 0.4692229
		 0.28245723 0.47030672 0.27432996 0.45627096 0.28245723 0.45651373 0.27432996 0.46447098
		 0.22356635 0.48128363 0.22607428 0.49700055 0.2316246 0.5111773 0.2376225 0.5275588
		 0.24788231 0.3834368 0.23913515 0.40407094 0.22683764 0.41563222 0.22241187 0.43411505
		 0.21961242 0.45170274 0.22174489 0.4153924 0.24273163 0.40626195 0.22556794 0.41282257
		 0.22187191 0.41794983 0.24176294 0.46291152 0.22158587 0.45879686 0.23983651 0.45670116
		 0.23970646 0.45578885 0.22054738 0.49644399 0.24589086 0.5010494 0.23110896 0.50888878
		 0.23440683 0.50096852 0.24858761 0.45703354 0.25441152 0.42239118 0.25745547 0.49356085
		 0.2584697 0.415521 0.21863276 0.43279266 0.21437085 0.38202775 0.23432928 0.40157285
		 0.22502404 0.5141781 0.23587006 0.52886236 0.24257487 0.48369658 0.22099102 0.49815166
		 0.22813624 0.46701202 0.21986711 0.45194876 0.21851444 0.40365762 0.22130454 0.41133609
		 0.21787643 0.46423614 0.2164399 0.45398462 0.21705198 0.50167006 0.22816288 0.51217902
		 0.23275244 0.33312491 0.19734913 0.34647802 0.20545608 0.3351635 0.22103733 0.32496086
		 0.21477765 0.35852239 0.2185216 0.36758161 0.23597914 0.3508012 0.24466753 0.34396479
		 0.23058707 0.25061318 0.23545009 0.25893089 0.22339326 0.27134511 0.23503947 0.26484257
		 0.244807 0.27136648 0.20961136 0.28263557 0.2008391 0.2887769 0.21783662 0.28029436
		 0.22455311 0.29591048 0.192541 0.29860094 0.21119142 0.31712028 0.1924932 0.31291029
		 0.21101111 0.35476992 0.21598935 0.34107023 0.22916299 0.34961832 0.20863956 0.33716732
		 0.22348338 0.30168265 0.19401592 0.30220845 0.21289128 0.31349641 0.19169295 0.31087816
		 0.21079874 0.26851189 0.21215141 0.27867132 0.22642779 0.26109657 0.22162515 0.27309823
		 0.23395556 0.30401343 0.26481014 0.42737073 0.27277583 0.41221288 0.27277583 0.44282153
		 0.27277583 0.4563643 0.27277583 0.4711726 0.27277583 0.48688355 0.27277583 0.50214863
		 0.27277583 0.43100506 0.2839573 0.44411388 0.2839573 0.4438597 0.2938503 0.43151146
		 0.29394668 0.417503 0.2839573 0.41889119 0.29436439 0.48168629 0.2839573 0.49514467
		 0.2839573 0.49301371 0.29440129 0.48023206 0.29394984 0.46864274 0.2839573 0.46757454
		 0.29384476 0.45639011 0.2839573 0.45564637 0.29382604 0.49306983 0.31103748 0.47996619
		 0.31103748 0.46774682 0.31103748 0.45642537 0.31103748 0.4450227 0.31103748 0.43262112
		 0.31103748 0.41941696 0.31103748 -0.5795697 0.24165398 -0.57412672 0.26572233 -0.55687463
		 0.26572233 -0.56190753 0.24134445 -0.60528469 0.25431514 -0.59034681 0.26572233 -0.58683884
		 0.2436462 -0.49689662 0.24998033 -0.50994337 0.26572233 -0.49384171 0.26572233 -0.48223621
		 0.25938821 -0.52267289 0.24305218 -0.52741438 0.26572233 -0.50621271 0.24604756 -0.53897023
		 0.2404024 -0.54320699 0.26572233 -0.54567355 0.24003327 -0.55659485 0.28245723 -0.55617779
		 0.27432996 -0.57120979 0.27432996 -0.57011557 0.28245723 -0.58679116 0.27432996 -0.58418357
		 0.28245723 -0.5029667 0.28245723 -0.49930555 0.27432996 -0.51476407 0.27432996 -0.5170809
		 0.28245723 -0.52969325 0.27432996 -0.5307771 0.28245723 -0.54348624 0.27432996 -0.54372907
		 0.28245723 -0.51871634 0.22607428 -0.53552902 0.22356635 -0.50299942 0.2316246 -0.4724412
		 0.24788231 -0.4888227 0.2376225 -0.59592903 0.22683764 -0.6165632 0.23913515 -0.56588495
		 0.21961242 -0.58436775 0.22241187 -0.54829729 0.22174489 -0.5846076 0.24273163 -0.5820502
		 0.24176294 -0.5871774 0.22187191 -0.59373808 0.22556794 -0.53708851 0.22158587 -0.54421115
		 0.22054738 -0.54329884 0.23970646 -0.54120314 0.23983651 -0.50355601 0.24589086 -0.49903148
		 0.24858761 -0.49111122 0.23440683 -0.4989506 0.23110896 -0.54296649 0.25441152 -0.57760882
		 0.25745547 -0.50643915 0.2584697 -0.56720734 0.21437085 -0.58447897 0.21863276 -0.59842718
		 0.22502404 -0.61797225 0.23432928 -0.47113764 0.24257487 -0.4858219 0.23587006 -0.50184834
		 0.22813624 -0.51630342 0.22099102 -0.53298795 0.21986711 -0.54805124 0.21851444 -0.59634238
		 0.22130454 -0.58866394 0.21787643 -0.53576386 0.2164399 -0.54601538 0.21705198 -0.49832994
		 0.22816288 -0.48782098 0.23275244;
	setAttr ".uvst[0].uvsp[2000:2249]" -0.66687512 0.19734913 -0.67503917 0.21477765
		 -0.66483653 0.22103733 -0.65352201 0.20545608 -0.64147758 0.2185216 -0.65603518 0.23058707
		 -0.64919877 0.24466753 -0.63241839 0.23597914 -0.74938679 0.23545009 -0.73515743
		 0.244807 -0.72865486 0.23503947 -0.74106908 0.22339326 -0.72863352 0.20961136 -0.71970564
		 0.22455311 -0.71122313 0.21783662 -0.71736443 0.2008391 -0.70139909 0.21119142 -0.70408952
		 0.192541 -0.68287969 0.1924932 -0.68708968 0.21101111 -0.64523005 0.21598935 -0.65892977
		 0.22916299 -0.66283268 0.22348338 -0.65038168 0.20863956 -0.69779158 0.21289128 -0.69831735
		 0.19401592 -0.68650359 0.19169295 -0.68912184 0.21079874 -0.73148811 0.21215141 -0.72132868
		 0.22642779 -0.72690177 0.23395556 -0.7389034 0.22162515 -0.69598657 0.26481014 -0.57262927
		 0.27277583 -0.58778715 0.27277583 -0.5571785 0.27277583 -0.54363573 0.27277583 -0.52882743
		 0.27277583 -0.51311648 0.27277583 -0.49785137 0.27277583 -0.56899494 0.2839573 -0.56848854
		 0.29394668 -0.5561403 0.2938503 -0.55588615 0.2839573 -0.582497 0.2839573 -0.58110881
		 0.29436439 -0.51831371 0.2839573 -0.51976794 0.29394984 -0.50698626 0.29440129 -0.50485533
		 0.2839573 -0.53135729 0.2839573 -0.53242546 0.29384476 -0.54360986 0.2839573 -0.5443536
		 0.29382604 -0.52003384 0.31103748 -0.50693017 0.31103748 -0.53225315 0.31103748 -0.54357463
		 0.31103748 -0.5549773 0.31103748 -0.56737888 0.31103748 -0.58058304 0.31103748 0.38645676
		 0.51785588 0.39164346 0.56283867 0.35153615 0.57490349 0.34169331 0.51785588 0.40085623
		 0.59793645 0.38685334 0.62107766 0.3689898 0.64031506 0.31889936 0.58598697 0.3039521
		 0.51785588 0.85684168 0.51785588 0.8408764 0.5676893 0.79640925 0.56678247 0.8035953
		 0.51785588 0.81197572 0.59643012 0.78789568 0.60198051 0.74805719 0.61478734 0.74989814
		 0.59971315 0.78888392 0.6123265 0.75555354 0.56230968 0.75444144 0.51785588 0.70372713
		 0.56103617 0.70500076 0.51785588 0.70318401 0.59508061 0.70422399 0.62419993 0.62841094
		 0.63299417 0.65623873 0.57753062 0.6596024 0.51785588 0.6040628 0.56769395 0.60792971
		 0.51785588 0.58695793 0.61338216 0.55839735 0.59211099 0.56298363 0.55850631 0.56579727
		 0.51785588 0.5212298 0.55901575 0.52299941 0.51785588 0.52498227 0.60176432 0.48114762
		 0.60591877 0.47780579 0.56141859 0.47726026 0.51785588 0.43590218 0.56098443 0.43288016
		 0.51785588 0.43856138 0.60490227 0.43488494 0.63707966 0.48544633 0.65078551 0.4862403
		 0.68727672 0.42087969 0.67998266 0.54234576 0.64268106 0.55514795 0.66613328 0.4494451
		 0.40445554 0.45417106 0.4552812 0.41293356 0.45454443 0.41551369 0.40742594 0.4512594
		 0.50638175 0.39287165 0.5026505 0.36392474 0.48918521 0.35976702 0.45204675 0.38878614
		 0.40503478 0.43973386 0.37403989 0.41464832 0.3759318 0.39793622 0.37509006 0.41074851
		 0.3341701 0.16590734 0.58178735 0.14824046 0.62491906 0.15308547 0.5789777 0.17111987
		 0.54276472 0.15807073 0.5390836 0.17444821 0.50614274 0.18448786 0.51027995 0.21693575
		 0.47643 0.89653921 0.52738917 0.86371821 0.58057058 0.85708386 0.57553124 0.89333612
		 0.51785588 0.81940693 0.61089623 0.81681126 0.60525489 0.7879858 0.61846066 0.27285209
		 0.45529103 0.25522134 0.42669201 0.26726174 0.42026389 0.23352619 0.38613963 0.190262
		 0.45902944 0.19726774 0.42734021 0.22624068 0.42582518 0.23196645 0.45330662 0.38408065
		 0.37294662 0.36854634 0.40050012 0.35096723 0.39508301 0.37227374 0.36755532 0.28775313
		 0.44485104 0.14175193 0.35886997 0.10331637 0.33046132 0.11715775 0.32357872 0.15748528
		 0.33582127 0.068894997 0.28282404 0.091859043 0.28282404 0.073275656 0.610524 0.069715947
		 0.65556407 0.030718483 0.66070604 0.042377319 0.6023646 0.073912032 0.53907692 0.075594023
		 0.57296693 0.05015422 0.56842053 0.059349474 0.53639507 0.071674474 0.50089061 0.32600245
		 0.4268232 0.34791702 0.43382192 0.34146848 0.44392961 0.29950592 0.48191512 0.2612161
		 0.47908586 0.45689046 0.37065965 0.47006026 0.40226662 0.47234398 0.45324969 0.34942648
		 0.4581002 0.15501574 0.36128068 0.16640569 0.37004274 0.31576544 0.43979156 0.3089436
		 0.49536544 0.46151528 0.36511558 0.47940084 0.39874536 0.47803861 0.45532817 0.196511
		 0.50997585 0.19204606 0.541789 0.24096802 0.50480402 0.21954952 0.50740057 0.24908426
		 0.53672922 0.2230041 0.53894955 0.18361703 0.58036256 0.17460671 0.59496188 0.22529194
		 0.57377994 0.25309852 0.57237554 0.24386144 0.62575215 0.2151325 0.61902857 0.047090504
		 0.52946138 0.033864371 0.56067181 0.023654791 0.59676254 0.015133153 0.65135777 0.14958921
		 0.5069505 0.11729103 0.46183598 0.14305218 0.46117842 0.10761505 0.50067675 0.13180952
		 0.42270446 0.11216389 0.42578685 0.092071049 0.53854167 0.10042164 0.5498054 0.14823876
		 0.41969568 0.091279767 0.45898867 0.077859253 0.42389333 0.095453262 0.42541146 0.067428805
		 0.48539847 0.041472413 0.46489143 0.041909076 0.45926428 0.059671395 0.46444309 0.12289615
		 0.40370923 0.1341614 0.3982591 0.11031024 0.40602899 0.087275691 0.4016825 0.0998374
		 0.40464109 0.043621346 0.44136077 0.10814021 0.38028044 0.11010296 0.53484714 0.13407265
		 0.56141239 0.010022973 0.48151666 0.022900445 0.46245092 0.37249172 0.33672339 0.32860997
		 0.38114268 0.31779766 0.36529571 0.35502711 0.32780927 0.38249362 0.28282404 0.3631826
		 0.28282404 0.27987382 0.39150429 0.2678389 0.38065994 0.15727133 0.28282404 0.22056055
		 0.36422437 0.24267812 0.28282404 0.19041441 0.36580598 0.18071343 0.38068432 0.1907381
		 0.28282404 -0.61354327 0.51785588 -0.65830672 0.51785588 -0.64846385 0.57490349 -0.60835654
		 0.56283867 -0.61314666 0.62107766 -0.59914374 0.59793645 -0.68110061 0.58598697 -0.63101017
		 0.64031506 -0.6960479 0.51785588 -0.14315832 0.51785588 -0.1964047 0.51785588 -0.20359075
		 0.56678247;
	setAttr ".uvst[0].uvsp[2250:2450]" -0.1591236 0.5676893 -0.21210432 0.60198051
		 -0.18802428 0.59643012 -0.25194281 0.61478734 -0.21111608 0.6123265 -0.25010186 0.59971315
		 -0.24555856 0.51785588 -0.24444646 0.56230968 -0.29499924 0.51785588 -0.29627287
		 0.56103617 -0.29681599 0.59508061 -0.34376127 0.57753062 -0.37158906 0.63299417 -0.29577601
		 0.62419993 -0.3403976 0.51785588 -0.39207029 0.51785588 -0.3959372 0.56769395 -0.41304207
		 0.61338216 -0.43701637 0.55850631 -0.44160265 0.59211099 -0.43420273 0.51785588 -0.47700059
		 0.51785588 -0.4787702 0.55901575 -0.47501773 0.60176432 -0.52219421 0.56141859 -0.51885235
		 0.60591877 -0.52273977 0.51785588 -0.56711984 0.51785588 -0.56409782 0.56098443 -0.56143862
		 0.60490227 -0.56511509 0.63707966 -0.51455367 0.65078551 -0.57912028 0.67998266 -0.51375973
		 0.68727672 -0.45765424 0.64268106 -0.44485205 0.66613328 -0.55055487 0.40445554 -0.58448631
		 0.40742594 -0.58706641 0.45454443 -0.54582894 0.4552812 -0.60712838 0.5026505 -0.54874063
		 0.50638175 -0.64023298 0.45204675 -0.63607526 0.48918521 -0.61121386 0.40503478 -0.56026614
		 0.37403989 -0.58535171 0.3759318 -0.60206378 0.37509006 -0.58925152 0.3341701 -0.83409268
		 0.58178735 -0.84691453 0.5789777 -0.85175955 0.62491906 -0.82888013 0.54276472 -0.81551212
		 0.51027995 -0.82555181 0.50614274 -0.84192926 0.5390836 -0.78306425 0.47643 -0.10346079
		 0.52738917 -0.10666388 0.51785588 -0.14291614 0.57553124 -0.13628179 0.58057058 -0.18318874
		 0.60525489 -0.18059307 0.61089623 -0.2120142 0.61846066 -0.72714794 0.45529103 -0.73273826
		 0.42026389 -0.74477863 0.42669201 -0.76647383 0.38613963 -0.80973798 0.45902944 -0.76803356
		 0.45330662 -0.77375931 0.42582518 -0.80273223 0.42734021 -0.61591935 0.37294662 -0.62772626
		 0.36755532 -0.64903277 0.39508301 -0.63145363 0.40050012 -0.71224689 0.44485104 -0.85824805
		 0.35886997 -0.84251475 0.33582127 -0.88284224 0.32357872 -0.89668363 0.33046132 -0.90814096
		 0.28282404 -0.93110502 0.28282404 -0.92672431 0.610524 -0.95762271 0.6023646 -0.96928149
		 0.66070604 -0.93028402 0.65556407 -0.92608798 0.53907692 -0.94065052 0.53639507 -0.94984579
		 0.56842053 -0.92440599 0.57296693 -0.92832553 0.50089061 -0.67399752 0.4268232 -0.65853155
		 0.44392961 -0.65208298 0.43382192 -0.70049405 0.48191512 -0.7387839 0.47908586 -0.54310954
		 0.37065965 -0.52993977 0.40226662 -0.52765602 0.45324969 -0.65057349 0.4581002 -0.84498429
		 0.36128068 -0.83359432 0.37004274 -0.68423456 0.43979156 -0.69105637 0.49536544 -0.53848469
		 0.36511558 -0.52059913 0.39874536 -0.52196139 0.45532817 -0.80348897 0.50997585 -0.80795395
		 0.541789 -0.78045046 0.50740057 -0.75903201 0.50480402 -0.7769959 0.53894955 -0.75091577
		 0.53672922 -0.82539332 0.59496188 -0.816383 0.58036256 -0.77470803 0.57377994 -0.78486753
		 0.61902857 -0.75613856 0.62575215 -0.74690151 0.57237554 -0.95290947 0.52946138 -0.96613562
		 0.56067181 -0.97634518 0.59676254 -0.98486686 0.65135777 -0.85041082 0.5069505 -0.85694784
		 0.46117842 -0.88270897 0.46183598 -0.89238495 0.50067675 -0.86819047 0.42270446 -0.8878361
		 0.42578685 -0.90792894 0.53854167 -0.89957833 0.5498054 -0.85176122 0.41969568 -0.90872025
		 0.45898867 -0.90454674 0.42541146 -0.92214072 0.42389333 -0.93257117 0.48539847 -0.9403286
		 0.46444309 -0.9580909 0.45926428 -0.95852757 0.46489143 -0.86583859 0.3982591 -0.87710387
		 0.40370923 -0.88968974 0.40602899 -0.90016258 0.40464109 -0.91272432 0.4016825 -0.95637864
		 0.44136077 -0.89185977 0.38028044 -0.88989705 0.53484714 -0.86592734 0.56141239 -0.97709954
		 0.46245092 -0.989977 0.48151666 -0.62750828 0.33672339 -0.64497292 0.32780927 -0.68220234
		 0.36529571 -0.67139006 0.38114268 -0.61750638 0.28282404 -0.6368174 0.28282404 -0.7321611
		 0.38065994 -0.72012615 0.39150429 -0.84272867 0.28282404 -0.75732189 0.28282404 -0.77943945
		 0.36422437 -0.81928658 0.38068432 -0.80958557 0.36580598 -0.80926192 0.28282404 0.9031474
		 0.033529341 0.90314746 0.042672455 0.89289373 0.042672455 0.89289373 0.033529341
		 0.9031474 0.051815599 0.89289385 0.051815569 0.9031474 0.060958862 0.89289385 0.060958862
		 0.9031474 0.070102125 0.89289385 0.070102096 0.9031474 0.079245254 0.89289385 0.07924521
		 0.9031474 0.088388517 0.89289385 0.088388503 0.9031474 0.097531646 0.89289385 0.097531617
		 0.9031474 0.10667489 0.89289385 0.10667491 0.85855746 0.039574098 0.86866701 0.043761663
		 0.85855746 0.053871371 0.84844756 0.043761663 0.8442601 0.053871371 0.84844756 0.063981041
		 0.85855746 0.068168581 0.86866701 0.063981041 0.87285471 0.053871371 0.87400532 0.098439872
		 0.86389565 0.10262734 0.86389565 0.088330209 0.85378587 0.098439872 0.84959847 0.088330209
		 0.85378587 0.078220487 0.86389565 0.074032903 0.87400532 0.078220487 0.87819296 0.088330209;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1812 ".vt";
	setAttr ".vt[0:165]"  -5.69089842 98.43566132 -26.85682297 -9.85692501 102.39602661 -25.56405258
		 -11.38179684 107.80599213 -23.7980957 -9.85692501 113.21595764 -22.032138824 -5.69089842 117.17633057 -20.73936844
		 -2.4682959e-014 118.62592316 -20.26618195 5.69089842 117.17633057 -20.73936844 9.85692501 113.21595764 -22.032138824
		 11.38179684 107.80599213 -23.7980957 9.85692501 102.39602661 -25.56405258 5.69089842 98.43566132 -26.85682297
		 -2.8169007e-014 96.9860611 -27.33000946 -10.51540852 91.73992157 -33.77536011 -18.2132206 99.87110901 -32.78573608
		 -21.030817032 110.97851563 -31.4338932 -18.2132206 122.085922241 -30.082050323 -10.51540852 130.21711731 -29.092430115
		 -5.2701187e-015 133.19332886 -28.73020554 10.51540852 130.21711731 -29.092430115
		 18.2132206 122.085922241 -30.082050323 21.030817032 110.97851563 -31.4338932 18.2132206 99.87110901 -32.78573608
		 10.51540852 91.73992157 -33.77536011 -1.3408999e-014 88.76370239 -34.13758087 -13.73904324 88.69898987 -42.95263672
		 -23.7967205 99.17923737 -42.53473282 -27.47808647 113.49551392 -41.96386337 -23.7967205 127.81179047 -41.39299393
		 -13.73904324 138.29202271 -40.97509003 7.9331158e-016 142.12806702 -40.82212448 13.73904324 138.29202271 -40.97509003
		 23.7967205 127.81179047 -41.39299393 27.47808647 113.49551392 -41.96386337 23.7967205 99.17923737 -42.53473282
		 13.73904324 88.69898987 -42.95263672 -1.0902377e-014 84.86296082 -43.10560226 -14.87103367 88.4932251 -52.59056091
		 -25.75738525 99.37957764 -52.59056091 -29.74206734 114.25061035 -52.59056091 -25.75738525 129.12164307 -52.59056091
		 -14.87103367 140.0079956055 -52.59056091 6.6040656e-015 143.99267578 -52.59056091
		 14.87103367 140.0079956055 -52.59056091 25.75738525 129.12164307 -52.59056091 29.74206734 114.25061035 -52.59056091
		 25.75738525 99.37957764 -52.59056091 14.87103367 88.4932251 -52.59056091 -6.6040652e-015 84.50854492 -52.59056091
		 -13.73904324 88.83408356 -63.43174744 -23.7967205 98.88777161 -63.71496582 -27.47808647 112.62136841 -64.10184479
		 -23.7967205 126.35496521 -64.48873138 -13.73904324 136.40866089 -64.77194977 1.1328513e-014 140.088562012 -64.87561035
		 13.73904324 136.40866089 -64.77194977 23.7967205 126.35496521 -64.48873138 27.47808647 112.62136841 -64.10184479
		 23.7967205 98.88777161 -63.71496582 13.73904324 88.83408356 -63.43174744 -1.2178301e-015 85.15418243 -63.32807922
		 -10.51540852 90.94023132 -72.98555756 -18.2132206 98.5898819 -73.84531403 -21.030817032 109.039497375 -75.019767761
		 -18.2132206 119.48911285 -76.19421387 -10.51540852 127.13876343 -77.053977966 1.4534016e-014 129.9387207 -77.3686676
		 10.51540852 127.13876343 -77.053977966 18.2132206 119.48911285 -76.19421387 21.030817032 109.039497375 -75.019767761
		 18.2132206 98.5898819 -73.84531403 10.51540852 90.94023132 -72.98555756 4.1513356e-015 88.14026642 -72.67086029
		 -5.69089842 93.95371246 -81.83598328 -9.85692501 98.32328033 -82.30128479 -11.38179684 104.29222107 -82.93688965
		 -9.85692501 110.2611618 -83.57250214 -5.69089842 114.63072205 -84.037796021 1.5006415e-014 116.23010254 -84.20811462
		 5.69089842 114.63072205 -84.037796021 9.85692501 110.2611618 -83.57250214 11.38179684 104.29222107 -82.93688965
		 9.85692501 98.32328033 -82.30128479 5.69089842 93.95371246 -81.83598328 9.3873485e-015 92.3543396 -81.66567993
		 -2.7406578e-014 107.10345459 -21.64587593 2.7409986e-014 103.27023315 -95.88393402
		 -2.66940999 97.3229599 -88.60544586 -4.63525629 99.36670685 -88.80757904 -5.37090921 102.17529297 -89.085342407
		 -4.66753674 105.0034332275 -89.3650589 -2.70169044 107.086296082 -89.57104492 1.8659092e-014 107.85134125 -89.64672852
		 2.70169044 107.086296082 -89.57104492 4.66753674 105.0034332275 -89.3650589 5.37090921 102.17529297 -89.085342407
		 4.63525629 99.36670685 -88.80757904 2.66940999 97.3229599 -88.60544586 1.6107043e-014 96.57746887 -88.53172302
		 1.73119736 133.17085266 -25.22678375 -1.031908512 134.425354 -25.19032288 -3.57659841 134.66236877 -26.75760078
		 -4.93088722 133.79135132 -29.32997513 -5.01765871 132.80911255 -31.10976601 -4.91645813 132.050537109 -32.3533783
		 -1.31270838 131.24676514 -30.94985199 1.23198128 131.009765625 -29.38257217 4.17436218 131.2038269 -26.75432587
		 3.21712875 132.042129517 -26.037944794 0.39770222 128.079940796 -18.33610153 -4.18898821 129.9523468 -18.64173126
		 -8.59652042 130.36286926 -21.3563385 -11.141366 129.15467834 -25.44303513 -11.29166031 127.45339966 -28.52572632
		 -10.26838875 126.11855316 -30.056295395 -4.78216028 124.60803223 -28.41973495 -0.37462902 124.1975174 -25.70512772
		 3.69941521 124.81760406 -21.45349884 2.97141171 126.12495422 -19.74107361 -1.83378363 120.30602264 -13.87711716
		 -7.33019733 121.70777893 -14.020018578 -12.41957664 122.18180084 -17.15457726 -15.15795135 121.54702759 -22.083499908
		 -15.033332825 120.44020081 -25.99748993 -13.48544598 119.52845764 -27.84101868 -7.1930151 118.32250977 -26.22422028
		 -2.10363626 117.84848785 -23.089662552 2.26745701 118.061248779 -18.13877487 1.43624163 118.90624237 -15.8538475
		 -4.22011089 112.58119202 -13.18224144 -9.024358749 113.82779694 -13.22927284 -13.43189144 114.23831177 -15.94388008
		 -15.75917912 113.65592957 -20.28917694 -15.65125656 112.69739532 -23.67879295 -14.44138813 111.89929199 -25.43115997
		 -8.80469131 110.82158661 -23.97345352 -4.39715958 110.41107178 -21.25884628 -0.47358418 110.5983429 -16.82836342
		 -1.3881855 111.36894226 -14.89414024 -7.3578701 101.63198853 -15.23888779 -10.27108574 102.45471191 -15.023999214
		 -12.81577492 102.69171906 -16.59127808 -14.019954681 102.25248718 -19.34207916 -13.95764542 101.69908142 -21.29907417
		 -13.74366951 101.26489258 -22.67673874 -10.069450378 100.66383362 -21.35697174 -7.52476072 100.42682648 -19.78969193
		 -4.6528492 100.41818237 -17.077684402 -5.72285748 100.93209839 -16.22725296 2.039749146 136.70779419 -32.69979858
		 -43.9650116 91.89980316 -50.90816116 -44.79008484 94.14020538 -50.089241028 -44.60134125 96.51722717 -50.56315994
		 -43.47086716 98.1229248 -52.14889145 -42.44145966 98.54228973 -53.48941803 -41.67511749 98.70367432 -54.47242355
		 -41.45886993 95.49729156 -54.42728424 -41.64761734 93.12026978 -53.95336151 -42.34940338 90.21185303 -52.77936935
		 -43.052253723 90.85009003 -51.95578766 -32.88185883 89.49917603 -37.82832718 -34.17119598 95.10129547 -36.35782242
		 -33.72823334 100.67980957 -37.47003937 -31.68531799 104.56813049 -40.83269501 -29.53328133 105.54188538 -44.13611603
		 -28.10659027 104.75437927 -46.20261383 -27.41505432 98.33498383 -46.71662903;
	setAttr ".vt[166:331]" -27.85801315 92.7564621 -45.60441589 -29.53708458 86.73904419 -42.61081314
		 -31.0035839081 87.025215149 -40.44436264 -25.82258987 89.059181213 -32.89163971 -26.7097168 94.74951172 -30.91091156
		 -26.21946907 100.92359161 -32.14186478 -24.53910446 105.22312927 -36.11432266 -22.80755424 106.2751236 -40.15834808
		 -21.73470497 105.24057007 -42.63930511 -21.35400391 98.28800964 -43.42331314 -21.84425163 92.11393738 -42.19235992
		 -23.25214386 86.13024902 -38.82919312 -24.39402962 86.29538727 -36.17489624 -17.042457581 89.96020508 -30.55654907
		 -17.85189056 94.91046906 -28.74575233 -17.42732239 100.25737762 -29.81179047 -15.93092537 103.95859528 -33.34747314
		 -14.43135834 104.86965179 -36.84970474 -13.45673275 104.15490723 -39.10681534 -13.1198101 97.92404175 -39.79952621
		 -13.54437733 92.57713318 -38.73348999 -14.80221844 87.21014404 -35.7284584 -15.80528641 87.56668854 -33.39993286
		 -4.22568321 92.044136047 -30.52050018 -4.822855 94.97251129 -29.17396736 -4.57773018 98.059547424 -29.78944397
		 -3.58394051 100.12611389 -32.13183975 -2.71816444 100.65210724 -34.15385437 -2.079298019 100.84761047 -35.64310837
		 -2.021144867 96.67467499 -35.71734238 -2.26626968 93.58763123 -35.10186768 -2.9549942 89.81926727 -33.44433594
		 -3.51140213 90.66223907 -32.16212845 -47.32497025 91.89164734 -57.18132401 -39.29425812 90.78626251 -44.39125061
		 -40.55289459 95.024978638 -43.22344971 -40.2180481 99.24195099 -44.06420517 -38.39202118 102.14881134 -46.65665436
		 -36.5657959 102.89278412 -49.034835815 -35.28602219 102.65187073 -50.6258049 -34.73939514 97.46377563 -50.80101013
		 -35.074241638 93.24679565 -49.96025085 -36.42221069 88.34294891 -47.77296829 -37.67498016 88.9240036 -46.24981308
		 -34.2911911 124.80618286 -39.66249084 -36.89065552 122.65647888 -39.11082458 -38.35439301 119.84011078 -40.2626915
		 -38.12330627 117.43281555 -42.67812347 -37.17005157 116.4345932 -44.50744629 -36.35296631 115.86412048 -45.81577301
		 -33.8058548 119.42617035 -45.030651093 -32.34211731 122.24254608 -43.87878418 -31.12380981 125.92552185 -41.70075989
		 -32.4332962 125.54856873 -40.7799263 -29.70856285 122.86721039 -31.25997925 -33.81084442 119.10740662 -30.7238884
		 -36.3461113 114.22930908 -32.7189827 -36.34598541 110.096168518 -36.48320007 -34.6948967 108.36719513 -39.65168762
		 -32.85066986 108.3704834 -41.42903137 -28.68241882 113.53187561 -40.75237274 -26.14715004 118.40997314 -38.75727844
		 -24.8162117 123.82956696 -35.10643005 -26.49059296 124.15306854 -33.19543076 -22.82819366 118.16526794 -25.034986496
		 -26.88444138 113.32422638 -24.059366226 -29.81191635 107.69148254 -26.36310196 -30.49242783 103.41854095 -31.066244125
		 -29.31960678 102.027542114 -35.27289581 -27.65752029 102.66915894 -37.55996323 -23.41480064 108.76805115 -37.12451172
		 -20.48732376 114.40079498 -34.82077789 -18.59624863 120.10392761 -30.42932701 -19.84609604 120.25549316 -27.81785583
		 -16.086862564 112.37191772 -22.90825653 -19.65379143 108.17034149 -21.97230911 -22.18906021 103.29223633 -23.96740341
		 -22.72428322 99.60087585 -28.13147926 -21.70859146 98.3962326 -31.77454758 -20.32353592 98.77842712 -33.89484787
		 -16.5255394 104.2453537 -33.49473953 -13.99027252 109.12345123 -31.49964523 -12.28907394 114.23751068 -27.57224655
		 -13.50428963 114.18210602 -25.31829262 -6.42690849 103.62715149 -23.2872982 -8.65699482 101.17264557 -22.45973778
		 -10.12073326 98.35626984 -23.6116066 -10.25902462 96.25378418 -26.30292511 -9.67261505 95.55828857 -28.40625381
		 -9.13304043 95.21681213 -29.9218483 -6.75933456 98.92195892 -29.2662487 -5.29559708 101.73833466 -28.11437988
		 -3.90388298 105.2782135 -25.8068409 -4.93585968 104.6722641 -24.67873192 -37.78090668 124.85436249 -48.30252075
		 13.99379063 66.30106354 -14.21549988 13.99378967 93.27018738 13.45402145 13.99379063 93.19108582 -15.48279572
		 20.99068642 70.77238464 -9.82328129 21.44948196 69.85520172 7.67740774 8.96874714 70.22854614 18.84010315
		 8.96874714 88.24514771 18.44458771 20.99068451 88.16604614 7.72353792 8.96874714 100.18798828 7.4797411
		 8.96874714 100.18798828 -10.45775223 3.9443045e-031 56.31245422 -1.48900497 3.9443045e-031 78.72267914 19.93202782
		 3.9443045e-031 103.336586 -1.48900521 3.9443045e-031 79.19729614 -25.62829208 24.13928795 79.19729614 -1.48900497
		 3.9443045e-031 58.48949814 -10.49116707 8.30086231 63.83624649 -16.68031502 16.45860672 63.64850616 -9.15539646
		 9.63663292 57.9344635 -1.48900509 3.9443045e-031 56.68001556 8.14762783 17.58519173 61.75003052 6.63683319
		 3.9443045e-031 69.56066895 20.36669731 16.94635201 70.61516571 14.40113926 9.030470848 78.72267914 18.31002045
		 3.9443045e-031 88.91303253 19.97118187 15.87536049 87.57727051 14.56754398 8.30086231 95.73500824 15.91883755
		 3.9443045e-031 101.71457672 8.14762783 16.45860672 95.65590668 6.81185722 9.63663292 101.71457672 -1.48900509
		 3.9443045e-031 101.71457672 -11.12563801 16.45860672 95.65590668 -9.78986835 8.30086231 95.65590668 -17.94760895
		 3.9443045e-031 88.83393097 -24.0062847137 16.45860672 87.49816895 -17.94760895 9.63663292 79.19729614 -24.0062847137
		 3.9443045e-031 70.10449982 -23.37181091 16.45860672 71.44026947 -17.31313896 22.51728058 79.19729614 -11.12563801
		 22.51728058 69.88500977 -1.48900509 22.51728058 88.83393097 -1.48900509 22.51727867 78.95998383 7.6794982
		 3.9443045e-031 62.61974335 -17.89682007 17.67511177 62.25777054 -1.48900497 8.96874714 70.77238464 -21.84521675
		 8.96874714 60.016094208 -9.82328129 8.96874714 58.20661163 7.4797411 17.09186554 78.88088226 14.59750271
		 3.9443045e-031 96.9515152 17.13534355 17.67511177 96.87241364 -1.48900521 20.99068642 88.16604614 -10.45775223
		 3.9443045e-031 96.87241364 -19.16411591 8.96874714 88.16604614 -22.47969055 17.67511177 79.19729614 -19.16411591
		 16.95320511 61.7653656 12.055796623 8.5956049 58.20218277 14.015676498 16.41569328 63.027603149 15.55960178
		 8.67123318 61.075218201 18.50648117 3.9443045e-031 56.9929657 14.54470921 3.9443045e-031 60.11162567 20.3743763
		 3.9443045e-031 66.38930511 22.50739479 9.20026493 66.91833496 20.39388084 16.72826195 67.2412262 16.48827171
		 19.26611328 66.1942749 11.37436295 19.22910881 87.87165833 10.63024426 20.60065842 78.92043304 10.62320518
		 19.9940052 70.23518372 10.52397823 20.29262352 65.72570801 7.53801584 20.46989632 66.095275879 -1.48900509
		 19.09834671 66.86030579 -9.48933887 -13.99379063 66.30106354 -14.21549988;
	setAttr ".vt[332:497]" -13.99378967 93.27018738 13.45402145 -13.99379063 93.19108582 -15.48279572
		 -20.99068642 70.77238464 -9.82328129 -21.44948196 69.85520172 7.67740774 -8.96874714 70.22854614 18.84010315
		 -8.96874714 88.24514771 18.44458771 -20.99068451 88.16604614 7.72353792 -8.96874714 100.18798828 7.4797411
		 -8.96874714 100.18798828 -10.45775223 -24.13928795 79.19729614 -1.48900497 -8.30086231 63.83624649 -16.68031502
		 -16.45860672 63.64850616 -9.15539646 -9.63663292 57.9344635 -1.48900509 -17.58519173 61.75003052 6.63683319
		 -16.94635201 70.61516571 14.40113926 -9.030470848 78.72267914 18.31002045 -15.87536049 87.57727051 14.56754398
		 -8.30086231 95.73500824 15.91883755 -16.45860672 95.65590668 6.81185722 -9.63663292 101.71457672 -1.48900509
		 -16.45860672 95.65590668 -9.78986835 -8.30086231 95.65590668 -17.94760895 -16.45860672 87.49816895 -17.94760895
		 -9.63663292 79.19729614 -24.0062847137 -16.45860672 71.44026947 -17.31313896 -22.51728058 79.19729614 -11.12563801
		 -22.51728058 69.88500977 -1.48900509 -22.51728058 88.83393097 -1.48900509 -22.51727867 78.95998383 7.6794982
		 -17.67511177 62.25777054 -1.48900497 -8.96874714 70.77238464 -21.84521675 -8.96874714 60.016094208 -9.82328129
		 -8.96874714 58.20661163 7.4797411 -17.09186554 78.88088226 14.59750271 -17.67511177 96.87241364 -1.48900521
		 -20.99068642 88.16604614 -10.45775223 -8.96874714 88.16604614 -22.47969055 -17.67511177 79.19729614 -19.16411591
		 -16.95320511 61.7653656 12.055796623 -8.5956049 58.20218277 14.015676498 -16.41569328 63.027603149 15.55960178
		 -8.67123318 61.075218201 18.50648117 -9.20026493 66.91833496 20.39388084 -16.72826195 67.2412262 16.48827171
		 -19.26611328 66.1942749 11.37436295 -19.22910881 87.87165833 10.63024426 -20.60065842 78.92043304 10.62320518
		 -19.9940052 70.23518372 10.52397823 -20.29262352 65.72570801 7.53801584 -20.46989632 66.095275879 -1.48900509
		 -19.09834671 66.86030579 -9.48933887 12.81036949 64.20349884 -10.43240166 20.66477203 73.67331696 -4.57369947
		 15.070386887 73.27017975 -14.32322693 17.29166412 63.31612778 -3.24152851 20.72364235 81.3455658 -4.59694862
		 16.0092887878 80.67767334 -12.37793922 30.69259644 76.14058685 -17.4047718 31.53001785 70.20044708 -15.20971298
		 34.5835495 76.54371643 -10.47847366 34.49922943 69.61248779 -10.44517326 31.375597 80.24791718 -15.60071278
		 34.49922943 80.69044495 -10.44517326 39.91591263 79.020568848 -17.19157791 39.70243454 77.71969604 -16.7897644
		 41.060634613 79.020568848 -15.29434204 40.71855927 77.51848602 -15.15924358 39.64958954 80.18643951 -16.92357254
		 40.71855927 80.33787537 -15.15924358 23.46035576 74.41851807 -15.65845299 24.30585289 80.62145233 -13.76471233
		 28.43959427 81.20708466 -6.94201279 28.43298912 74.82165527 -6.93940401 27.51295853 65.4878006 -6.57604885
		 23.58357811 66.26589203 -12.88131046 15.051017761 63.15034485 -6.83696556 25.54826927 65.26737976 -9.72867966
		 33.014621735 69.2970047 -12.82744217 40.82652664 77.0096206665 -16.21779823 41.10430527 79.020568848 -16.48625374
		 40.80010605 81.12993622 -16.2847023 32.93741226 81.33695984 -13.022942543 26.37272263 81.78204346 -10.35336208
		 18.36646652 81.87939453 -8.48744392 19.92604828 72.048126221 -6.46891832 20.69420624 68.77359772 -4.58532476
		 27.76423836 73.41569519 -8.63459682 28.43629074 70.014663696 -6.94070864 34.54138947 73.078109741 -10.46182346
		 28.18816948 73.3440094 -7.56037426 20.39143753 72.086532593 -5.28240728 -12.81036949 64.20349884 -10.43240166
		 -20.66477203 73.67331696 -4.57369947 -15.070386887 73.27017975 -14.32322693 -17.29166412 63.31612778 -3.24152851
		 -20.72364235 81.3455658 -4.59694862 -16.0092887878 80.67767334 -12.37793922 -30.69259644 76.14058685 -17.4047718
		 -31.53001785 70.20044708 -15.20971298 -34.5835495 76.54371643 -10.47847366 -34.49922943 69.61248779 -10.44517326
		 -31.375597 80.24791718 -15.60071278 -34.49922943 80.69044495 -10.44517326 -39.91591263 79.020568848 -17.19157791
		 -39.70243454 77.71969604 -16.7897644 -41.060634613 79.020568848 -15.29434204 -40.71855927 77.51848602 -15.15924358
		 -39.64958954 80.18643951 -16.92357254 -40.71855927 80.33787537 -15.15924358 -23.46035576 74.41851807 -15.65845299
		 -24.30585289 80.62145233 -13.76471233 -28.43959427 81.20708466 -6.94201279 -28.43298912 74.82165527 -6.93940401
		 -27.51295853 65.4878006 -6.57604885 -23.58357811 66.26589203 -12.88131046 -15.051017761 63.15034485 -6.83696556
		 -25.54826927 65.26737976 -9.72867966 -33.014621735 69.2970047 -12.82744217 -40.82652664 77.0096206665 -16.21779823
		 -41.10430527 79.020568848 -16.48625374 -40.80010605 81.12993622 -16.2847023 -32.93741226 81.33695984 -13.022942543
		 -26.37272263 81.78204346 -10.35336208 -18.36646652 81.87939453 -8.48744392 -19.92604828 72.048126221 -6.46891832
		 -20.69420624 68.77359772 -4.58532476 -27.76423836 73.41569519 -8.63459682 -28.43629074 70.014663696 -6.94070864
		 -34.54138947 73.078109741 -10.46182346 -28.18816948 73.3440094 -7.56037426 -20.39143753 72.086532593 -5.28240728
		 13.20736313 133.24214172 -30.1732769 11.51255894 134.34107971 -28.25230789 8.86567307 134.58259583 -27.53216553
		 6.27772427 133.87443542 -28.28792191 5.016280651 133.051696777 -29.39457321 4.23556852 132.41349792 -30.27894592
		 7.43043947 131.67868042 -31.83351135 10.077325821 131.43717957 -32.55365372 13.6914835 131.55070496 -32.85163116
		 13.58178329 132.27015686 -31.72500229 16.85838509 128.2394104 -25.16652107 13.79664421 129.88737488 -22.2176857
		 9.21210194 130.30567932 -20.97036362 4.85589838 129.33454895 -21.90098953 2.67101288 127.9095459 -23.8177681
		 2.26944971 126.77235413 -25.52324104 6.79392099 125.4129715 -28.21756935 11.37846279 124.99466705 -29.46489143
		 16.79821014 125.44670105 -29.47609901 17.50690079 126.55587769 -27.85418701 18.26688576 120.86842346 -21.21091461
		 14.72988892 122.060890198 -17.57352829 9.43611622 122.54390717 -16.13324738 4.40760851 122.13298798 -17.44020462
		 1.85385418 121.29550934 -20.037927628 1.58328724 120.56996155 -22.27184868 6.60966063 119.50544739 -25.50291824
		 11.90343285 119.02243042 -26.94320107 17.96883774 119.074890137 -26.7298851 18.98485947 119.73242188 -24.69878197
		 17.068414688 113.70843506 -19.52137566 14.029194832 114.7668457 -16.29204369 9.44465256 115.18515015 -15.044721603
		 5.065927505 114.80358124 -16.25584412 2.85431051 114.078300476 -18.50553894;
	setAttr ".vt[498:663]" 2.43343019 113.44676208 -20.45159149 6.94232368 112.49513245 -23.33991814
		 11.52686596 112.076820374 -24.58723831 16.96219254 112.12110901 -24.40444946 17.69019699 112.72463226 -22.54195595
		 13.49577045 103.70064545 -19.20603943 11.81650734 104.39280701 -17.091537476 9.16962051 104.63431549 -16.37139511
		 6.56613207 104.33292389 -17.32068634 5.28925514 103.91418457 -18.61954689 4.49686813 103.58158875 -19.6493206
		 7.68444347 103.037734985 -21.29474068 10.3313303 102.79623413 -22.014881134 13.95278263 102.71880341 -22.22200394
		 13.85475731 103.13264465 -20.94997406 8.48968887 136.82704163 -34.93170166 38.12304306 117.43276978 -42.6781311
		 38.35415649 119.84004211 -40.26268387 36.89044952 122.65641785 -39.11079025 34.29100037 124.80614471 -39.66242981
		 32.43310547 125.5485611 -40.77985382 31.12361908 125.92552948 -41.70067978 32.34188843 122.24255371 -43.87873459
		 33.80559921 119.42617798 -45.030632019 36.35267639 115.86411285 -45.81578827 37.16976929 116.43457031 -44.50746155
		 36.34568024 110.096092224 -36.48326111 36.34585953 114.22920227 -32.7190094 33.81063843 119.10730743 -30.72386742
		 29.70838928 122.86714172 -31.25991249 26.4904232 124.15304565 -33.19534302 24.81602859 123.82957458 -35.1063385
		 26.14690781 118.41000366 -38.75723648 28.68212891 113.53189087 -40.75237656 32.85033417 108.37047577 -41.42909241
		 34.69456482 108.36715698 -39.65175629 30.49208832 103.41847229 -31.066329956 29.81163406 107.69137573 -26.36315155
		 26.88421249 113.32413483 -24.059364319 22.82800293 118.16521454 -25.034931183 19.84591293 120.25549316 -27.81777
		 18.59605408 120.1039505 -30.42923737 20.48706436 114.40084076 -34.82074356 23.41448402 108.76808167 -37.12453079
		 27.65715027 102.66916656 -37.56004333 29.31924057 102.027511597 -35.27299118 22.72392654 99.60084534 -28.13156509
		 22.18875122 103.29218292 -23.96745682 19.65353012 108.17029572 -21.97231674 16.086633682 112.37190247 -22.90821838
		 13.50406647 114.18213654 -25.31822968 12.28884125 114.23756409 -27.57217789 13.98998165 109.12352753 -31.49962425
		 16.5252018 104.24541473 -33.49476242 20.32314682 98.77846527 -33.89492798 21.70820999 98.39624023 -31.77463913
		 10.25864506 96.25385284 -26.30298805 10.12038231 98.35631561 -23.61165047 8.65667248 101.17269135 -22.45975494
		 6.42660332 103.62722778 -23.28728867 4.93555641 104.67236328 -24.67870712 3.90358353 105.27832794 -25.80680847
		 5.29525566 101.7384491 -28.11437988 6.75896645 98.92207336 -29.26627541 9.13263798 95.21691132 -29.92191505
		 9.67222118 95.5583725 -28.40631866 37.7806778 124.85436249 -48.30247116 43.96510315 91.89849854 -50.90792847
		 44.79013062 94.13964081 -50.089149475 44.60131836 96.51760101 -50.56324387 43.47078705 98.12406158 -52.14912033
		 42.44136047 98.54372406 -53.48970032 41.67500687 98.70527649 -54.47274017 41.45884323 95.49769592 -54.42736816
		 41.64765549 93.11973572 -53.95327759 42.34952927 90.21011353 -52.77905655 43.052368164 90.84849548 -51.95550156
		 32.88207245 89.49629974 -37.82778931 34.17127228 95.10035706 -36.35765457 33.72815704 100.68107605 -37.47027969
		 31.685112 104.57118225 -40.83327103 29.53302383 105.54563141 -44.13682556 28.10633659 104.75804138 -46.20330429
		 27.41496468 98.33630371 -46.7168808 27.85807991 92.75559235 -45.60425186 29.53733444 86.73562622 -42.61017227
		 31.0038414001 87.02167511 -40.4437027 25.8228302 89.055984497 -32.89103699 26.70981979 94.7482605 -30.91067696
		 26.21940041 100.92476654 -32.14208984 24.53889465 105.22629547 -36.11491776 22.80728531 106.27906036 -40.15908813
		 21.73444557 105.24434662 -42.64001465 21.3539238 98.28926086 -43.42354584 21.84434319 92.11274719 -42.19213486
		 23.25241852 86.12650299 -38.82849121 24.39431763 86.29145813 -36.17416 17.042667389 89.95745087 -30.55602646
		 17.85198212 94.90940094 -28.74554825 17.42726517 100.25841522 -29.8119812 15.93074512 103.96134949 -33.34798431
		 14.43112755 104.87307739 -36.8503418 13.45650482 104.15827179 -39.10744095 13.11974144 97.92514038 -39.79972839
		 13.54445839 92.5761261 -38.73329163 14.80246258 87.20684052 -35.72783279 15.80553818 87.56330872 -33.39929199
		 4.22580719 92.04258728 -30.52019501 4.82291031 94.97193146 -29.1738472 4.57769966 98.060188293 -29.78955269
		 3.58383751 100.12773895 -32.13213348 2.71803474 100.6541214 -34.15422058 2.079151154 100.84983826 -35.64351273
		 2.021108627 96.67533875 -35.71745682 2.26631927 93.58708954 -35.10174942 2.95515633 89.81715393 -33.44392395
		 3.5115509 90.6603241 -32.16175461 47.3250351 91.89072418 -57.18116379 39.29441071 90.78417206 -44.39086914
		 40.552948 95.024345398 -43.2233429 40.21798706 99.24298096 -44.064411163 38.39185715 102.15119934 -46.65711212
		 36.56559753 102.89569855 -49.035388947 35.28581619 102.65486145 -50.62637329 34.73931885 97.46485138 -50.80121613
		 35.0742836 93.24621582 -49.96014786 36.42240524 88.34030151 -47.77248001 37.67516708 88.92141724 -46.24933624
		 -6.87092113 2.006588e-016 -3.082020521 -4.28439236 1.9322464e-016 -4.15339565 -1.69786358 2.006588e-016 -3.082020521
		 -0.62648875 2.1860645e-016 -0.49549195 -1.69786358 2.3655409e-016 2.091036797 -4.28439236 2.4398824e-016 3.16241193
		 -6.87092113 2.3655409e-016 2.091037035 -7.9422965 2.1860645e-016 -0.49549195 -6.87092113 25.32364464 -3.082020521
		 -4.28439236 25.32364464 -4.15339565 -1.69786358 25.32364464 -3.082020521 -0.62648875 24.18565559 -0.49549195
		 -1.69786358 25.32364464 2.091036797 -4.28439236 25.32364464 3.16241193 -6.87092113 25.32364464 2.091037035
		 -7.9422965 25.32364464 -0.49549195 -4.28439236 2.1860645e-016 -0.49549195 -7.2107501 6.33091164 -3.42184949
		 -4.28439236 6.33091164 -4.63398647 -1.35803461 6.33091164 -3.42184949 -0.14589763 6.33091164 -0.49549198
		 -1.35803461 6.33091164 2.43086576 -4.28439236 6.33091164 3.64300299 -7.21075058 6.33091164 2.43086624
		 -8.4228878 6.33091164 -0.49549198 -7.43502855 12.66181564 -3.64612842 -4.28439236 12.66181564 -4.95116377
		 -1.1337558 12.66181564 -3.64612842 0.17127967 12.66181564 -0.49549198 -1.1337558 12.66181564 2.65514445
		 -4.28439236 12.66181564 3.96018076 -7.43502855 12.66181564 2.65514469 -8.74006462 12.66181564 -0.49549198
		 -7.2107501 18.99272919 -3.42184949 -4.28439236 18.99272919 -4.63398647 -1.35803461 18.99272919 -3.42184949
		 -0.1458981 18.99272919 -0.49549198 -1.35803461 18.99272919 2.43086576;
	setAttr ".vt[664:829]" -4.28439236 18.99272919 3.64300299 -7.21075058 18.99272919 2.43086624
		 -8.42288685 18.99272919 -0.49549198 -8.09365654 1.99389458 -0.49549195 -6.97794867 1.99389458 2.1980648
		 -4.28439236 1.99389458 3.3137722 -1.59083557 1.99389458 2.19806457 -0.47512859 1.99389458 -0.49549195
		 -1.59083557 1.99389458 -3.18904829 -4.28439236 1.99389458 -4.30475569 -6.97794867 1.99389458 -3.18904829
		 -0.62648875 2.2922657e-016 1.035029054 -1.69786358 2.4717422e-016 3.62155795 -1.59083557 1.24752617 3.72858524
		 -0.47512859 1.24752617 1.035029054 -4.28439236 2.5460836e-016 4.69293308 -4.28439236 1.24752617 4.84429312
		 -6.87092113 2.4717422e-016 3.62155795 -6.97794867 1.24752617 3.72858596 -7.9422965 2.2922657e-016 1.035029054
		 -8.09365654 1.24752617 1.035029054 -6.25270367 30.93594551 -3.082020521 -1.69786358 30.93594551 3.53554916
		 -4.2845149 30.93594551 3.16241193 -6.25270367 30.93594551 2.091037035 -7.32407904 30.93594551 -0.49549195
		 4.5445508e-013 25.32364464 -3.082020521 -3.404376e-016 24.18565559 -0.49549195 4.5447934e-013 25.32364464 2.091036797
		 4.5474735e-013 30.93594551 3.53554916 -4.44425535 26.22632027 -5.096287251 -4.024718285 30.93594551 -5.096287251
		 -1.63969445 26.22632027 -5.036072731 -1.63969445 30.93594551 -5.036072731 4.544715e-013 26.22632027 -4.8299408
		 4.5474735e-013 30.93594551 -4.8299408 4.5465964e-013 28.12779999 -5.08107233 -1.63969445 28.12779999 -5.28720427
		 -4.38502169 28.12779999 -5.34741879 -6.61300659 27.60227585 -3.082020521 -7.68438196 27.60227585 -0.49549198
		 -6.61300659 27.60227585 2.091037035 -4.35796309 27.60227585 3.16241193 -1.69786358 27.2051487 3.13389206
		 4.5465915e-013 27.2051487 3.13389206 -8.68611145 13.73873615 -0.49549201 -7.39687729 13.73873615 2.6169939
		 -4.28439236 13.73873615 3.90622735 -1.17190683 13.73873615 2.61699367 0.11732615 13.73873615 -0.49549201
		 -1.17190683 13.73873615 -3.60797739 -4.28439236 13.73873615 -4.8972106 -7.39687729 13.73873615 -3.60797739
		 -8.66788387 11.22107887 -0.49549198 -7.38398886 11.22107887 2.60410523 -4.28439236 11.22107887 3.88800001
		 -1.18479538 11.22107887 2.604105 0.099098995 11.22107887 -0.49549198 -1.18479538 11.22107887 -3.59508896
		 -4.28439236 11.22107887 -4.87898302 -7.38398886 11.22107887 -3.59508896 6.87092113 2.103278e-016 -3.082020521
		 4.28439236 2.0625479e-016 -4.15339565 1.69786358 2.103278e-016 -3.082020521 0.62648875 2.2016091e-016 -0.49549195
		 1.69786358 2.2999404e-016 2.091036797 4.28439236 2.3406705e-016 3.16241193 6.87092113 2.2999404e-016 2.091037035
		 7.9422965 2.2016091e-016 -0.49549195 6.87092113 25.32364464 -3.082020521 4.28439236 25.32364464 -4.15339565
		 1.69786358 25.32364464 -3.082020521 0.62648875 24.18565559 -0.49549195 1.69786358 25.32364464 2.091036797
		 4.28439236 25.32364464 3.16241193 6.87092113 25.32364464 2.091037035 7.9422965 25.32364464 -0.49549195
		 4.28439236 2.2016091e-016 -0.49549195 7.2107501 6.33091164 -3.42184949 4.28439236 6.33091164 -4.63398647
		 1.35803461 6.33091164 -3.42184949 0.14589763 6.33091164 -0.49549198 1.35803461 6.33091164 2.43086576
		 4.28439236 6.33091164 3.64300299 7.21075058 6.33091164 2.43086624 8.4228878 6.33091164 -0.49549198
		 7.43502855 12.66181564 -3.64612842 4.28439236 12.66181564 -4.95116377 1.1337558 12.66181564 -3.64612842
		 -0.17127967 12.66181564 -0.49549198 1.1337558 12.66181564 2.65514445 4.28439236 12.66181564 3.96018076
		 7.43502855 12.66181564 2.65514469 8.74006462 12.66181564 -0.49549198 7.2107501 18.99272919 -3.42184949
		 4.28439236 18.99272919 -4.63398647 1.35803461 18.99272919 -3.42184949 0.1458981 18.99272919 -0.49549198
		 1.35803461 18.99272919 2.43086576 4.28439236 18.99272919 3.64300299 7.21075058 18.99272919 2.43086624
		 8.42288685 18.99272919 -0.49549198 8.09365654 1.99389458 -0.49549195 6.97794867 1.99389458 2.1980648
		 4.28439236 1.99389458 3.3137722 1.59083557 1.99389458 2.19806457 0.47512859 1.99389458 -0.49549195
		 1.59083557 1.99389458 -3.18904829 4.28439236 1.99389458 -4.30475569 6.97794867 1.99389458 -3.18904829
		 0.62648875 2.2597944e-016 1.035029054 1.69786358 2.3581257e-016 3.62155795 1.59083557 1.24752617 3.72858524
		 0.47512859 1.24752617 1.035029054 4.28439236 2.3988555e-016 4.69293308 4.28439236 1.24752617 4.84429312
		 6.87092113 2.3581257e-016 3.62155795 6.97794867 1.24752617 3.72858596 7.9422965 2.2597944e-016 1.035029054
		 8.09365654 1.24752617 1.035029054 6.25270367 30.93594551 -3.082020521 1.69786358 30.93594551 3.53554916
		 4.2845149 30.93594551 3.16241193 6.25270367 30.93594551 2.091037035 7.32407904 30.93594551 -0.49549195
		 4.44425535 26.22632027 -5.096287251 4.024718285 30.93594551 -5.096287251 1.63969445 26.22632027 -5.036072731
		 1.63969445 30.93594551 -5.036072731 1.63969445 28.12779999 -5.28720427 4.38502169 28.12779999 -5.34741879
		 6.61300659 27.60227585 -3.082020521 7.68438196 27.60227585 -0.49549198 6.61300659 27.60227585 2.091037035
		 4.35796309 27.60227585 3.16241193 1.69786358 27.2051487 3.13389206 8.68611145 13.73873615 -0.49549201
		 7.39687824 13.73873615 2.6169939 4.28439236 13.73873615 3.90622735 1.17190683 13.73873615 2.61699367
		 -0.11732615 13.73873615 -0.49549201 1.17190683 13.73873615 -3.60797739 4.28439236 13.73873615 -4.8972106
		 7.39687824 13.73873615 -3.60797739 8.66788387 11.22107887 -0.49549198 7.38398886 11.22107887 2.60410523
		 4.28439236 11.22107887 3.88800001 1.18479538 11.22107887 2.604105 -0.099098995 11.22107887 -0.49549198
		 1.18479538 11.22107887 -3.59508896 4.28439236 11.22107887 -4.87898302 7.38398886 11.22107887 -3.59508896
		 7.055784225 37.29327011 -3.93143606 7.46241331 38.87710953 1.94826245 9.19894791 43.29270935 1.42747474
		 8.42235565 41.44206238 -5.45223761 9.44441509 40.96797562 -5.45223761 8.077843666 37.60235977 -3.93143606
		 10.51268768 42.75358963 0.89920002 8.77615356 39.12116623 1.41998768 6.69089079 41.33099365 -6.88972378
		 5.32431984 37.18219757 -5.36892271 7.79023886 40.68341446 -7.46063709 6.42366743 37.31779861 -5.93983555
		 -7.054970741 37.29327011 -3.93143606 -7.46159983 38.87710953 1.94826245;
	setAttr ".vt[830:995]" -9.19813347 43.29270935 1.42747474 -8.42154121 41.44206238 -5.45223761
		 -9.44360065 40.96797562 -5.45223761 -8.077029228 37.60235977 -3.93143606 -10.51187325 42.75358963 0.89920002
		 -8.77533913 39.12116623 1.41998768 -6.6900773 41.33099365 -6.88972378 -5.32350636 37.18219757 -5.36892271
		 -7.78942537 40.68341446 -7.46063709 -6.42285395 37.31779861 -5.93983555 6.72754192 35.35360718 -2.91962194
		 5.87984991 39.089881897 6.21357679 8.48905754 49.88454437 4.48463297 6.39648724 55.22303772 -8.075345039
		 6.97151184 36.78296661 1.41998768 0.00040682149 38.92843246 8.46627617 7.10804272 45.65966034 8.73665333
		 0.00040682149 51.33272171 7.31198215 7.47509384 54.58939362 0.43700007 0.00040682149 55.59147644 -9.081974983
		 8.7905674 44.87239838 -6.6313591 0.00040682149 35.30104446 -4.4742136 0.00040682149 46.051811218 12.053513527
		 0.00040682149 54.56671143 3.31953764 0.00040682149 44.84248352 -9.55574608 10.091576576 45.38923264 0.37841216
		 0.00040682149 35.63280487 -2.9424634 5.050740242 35.4203949 -2.52818108 5.3211875 36.7891922 1.50122011
		 0.00040682149 42.88375854 0.42854407 4.65738773 38.48021698 5.2048769 0.00040682149 38.67935944 6.93452835
		 9.48169804 54.083938599 -7.16667318 10.48225212 53.45029831 -0.59036988 0.00040682149 44.55112839 11.46467876
		 7.29288912 44.49105453 8.40338802 8.97867393 54.019844055 -0.1005792 9.1798315 49.39174271 3.78908253
		 8.88786602 49.24946213 -8.36427307 0.00040682149 49.92869949 -10.49016666 4.11528921 53.67443085 -0.55725306
		 0.00040682149 54.53594971 1.46157622 3.60363722 54.11820984 -6.51900387 0.00040682149 55.25365448 -7.22401333
		 4.11528921 59.65818024 -0.55725306 0.00040682149 59.65818787 1.46157622 3.60363722 59.65818024 -6.51900387
		 0.00040682149 59.6581955 -7.22401333 8.70804691 40.41539001 0.89920002 7.89328098 39.10801697 -5.086849689
		 0.00040682149 39.037010193 -7.53829432 3.13680458 35.2826004 -4.20282459 3.85394812 39.027454376 -6.79249191
		 4.46519375 44.84248352 -8.25964355 5.073841572 49.7655983 -9.72480583 10.4281168 49.41976547 1.21186054
		 9.050739288 49.29459 -7.37278223 8.83633327 45.82771683 -6.413064 9.39752579 53.098705292 -6.37168789
		 10.18474102 52.60017014 -1.19758832 10.26257706 49.42902756 0.22036956 10.058008194 46.25788879 -0.43536985
		 3.81784201 49.35152817 -3.64951515 -6.72672844 35.35360718 -2.91962194 -5.87903643 39.089881897 6.21357679
		 -8.4882431 49.88454437 4.48463297 -6.39567375 55.22303772 -8.075345039 -6.97069836 36.78296661 1.41998768
		 -7.10722923 45.65966034 8.73665333 -7.47428036 54.58939362 0.43700007 -8.78975296 44.87239838 -6.6313591
		 -10.090762138 45.38923264 0.37841216 -5.049926758 35.4203949 -2.52818108 -5.32037401 36.7891922 1.50122011
		 -4.65657425 38.48021698 5.2048769 -9.4808836 54.083938599 -7.16667318 -10.48143768 53.45029831 -0.59036988
		 -7.29207563 44.49105453 8.40338802 -8.9778595 54.019844055 -0.1005792 -9.17901707 49.39174271 3.78908253
		 -8.88705158 49.24946213 -8.36427307 -4.11447573 53.67443085 -0.55725306 -3.60282373 54.11820984 -6.51900387
		 -4.11447573 59.65818024 -0.55725306 -3.60282373 59.65818024 -6.51900387 -8.70723248 40.41539001 0.89920002
		 -7.8924675 39.10801697 -5.086849689 -3.1359911 35.2826004 -4.20282459 -3.85313463 39.027454376 -6.79249191
		 -4.46438026 44.84248352 -8.25964355 -5.073028088 49.7655983 -9.72480583 -10.42730236 49.41976547 1.21186054
		 -9.04992485 49.29459 -7.37278223 -8.83551884 45.82771683 -6.413064 -9.39671135 53.098705292 -6.37168789
		 -10.18392658 52.60017014 -1.19758832 -10.26176262 49.42902756 0.22036956 -10.057193756 46.25788879 -0.43536985
		 -3.81702852 49.35152817 -3.64951515 11.89771843 46.91099548 -6.276474 11.89771843 49.39940262 -7.30720711
		 11.89771843 51.88781357 -6.276474 11.89771843 52.91854858 -3.78806424 11.89771843 51.88781357 -1.29965425
		 11.89771843 49.39940262 -0.26892114 11.89771843 46.91099548 -1.29965401 11.89771843 45.88026047 -3.78806424
		 22.16287422 46.91099548 -6.276474 22.16287422 49.39940262 -7.30720711 22.16287422 51.88781357 -6.276474
		 22.16287422 52.91854858 -3.78806424 22.16287422 51.88781357 -1.29965425 22.16287422 49.39940262 -0.26892114
		 22.16287422 46.91099548 -1.29965401 22.16287422 45.88026047 -3.78806424 9.69637489 46.71285629 -6.47461033
		 9.69637489 49.39940262 -7.58741379 9.69637489 52.085948944 -6.47461033 9.69637489 53.19875336 -3.78806424
		 9.69637489 52.085948944 -1.10151815 9.69637489 49.39940262 0.011285782 9.69637489 46.71285629 -1.10151792
		 9.69637489 45.60005188 -3.78806424 7.95682144 45.24422455 -6.55492544 7.95682144 48.6290741 -7.95697641
		 7.95682144 52.01392746 -7.17291451 7.95682144 53.41597748 -3.78806424 7.95682144 52.01392746 -0.40321422
		 7.95682144 48.6290741 0.99883723 7.95682144 45.24422455 -0.40321374 7.95682144 43.84217453 -3.78806424
		 24.51440048 46.91099548 -6.276474 24.51440048 49.39940262 -7.30720711 24.51440048 51.88781357 -6.276474
		 24.51440048 52.91854858 -3.78806424 24.51440048 51.88781357 -1.29965425 24.51440048 49.39940262 -0.26892114
		 24.51440048 46.91099548 -1.29965401 24.51440048 45.88026047 -3.78806424 23.33863831 46.91099548 -6.276474
		 23.33863831 49.39940262 -7.30720711 23.33863831 51.88781357 -6.276474 23.33863831 52.91854858 -3.78806424
		 23.33863831 51.88781357 -1.29965425 23.33863831 49.39940262 -0.26892114 23.33863831 46.91099548 -1.29965401
		 23.33863831 45.88026047 -3.78806424 28.34532547 46.45816422 -6.72930431 28.34532547 49.39940262 -7.94760513
		 28.34532547 52.34064102 -6.72930431 28.34532547 53.55894852 -3.78806424 28.34532547 52.34064102 -0.84682441
		 28.34532547 49.39940262 0.37147689 28.34532547 46.45816422 -0.84682417 28.34532547 45.23986435 -3.78806424
		 20.35952377 41.13645554 -10.80528831 20.35952377 48.15367508 -13.71191883 20.35952377 55.17089081 -10.80528831
		 20.35952377 58.077541351 -3.78806424 20.35952377 55.17089081 3.22915912 20.35952377 48.15367508 6.13579082
		 20.35952377 41.13645554 3.22916007 20.35952377 38.22982407 -3.78806424 20.77993774 38.71907806 -13.22266674
		 20.77993774 48.15367126 -17.13060951 20.77993774 57.58826065 -13.22266674;
	setAttr ".vt[996:1161]" 20.77993774 61.49623108 -3.78806424 20.77993774 57.58826065 5.64653683
		 20.77993774 48.15367126 9.55448055 20.77993774 38.71907806 5.64653873 20.77993774 34.81113434 -3.78806424
		 24.8789711 39.92776489 -12.013978004 24.8789711 48.15367126 -15.42126465 24.8789711 56.37957382 -12.013978004
		 24.8789711 59.78688812 -3.78806424 24.8789711 56.37957382 4.43784809 24.8789711 48.15367126 7.84513569
		 24.8789711 39.92776489 4.43785 24.8789711 36.52047729 -3.78806424 25.29938507 40.55838394 -11.383358
		 25.29938507 48.15367126 -14.52943325 25.29938507 55.74895477 -11.383358 25.29938507 58.89505768 -3.78806424
		 25.29938507 55.74895477 3.80722785 25.29938507 48.15367126 6.95330429 25.29938507 40.55838394 3.80722976
		 25.29938507 37.41230774 -3.78806424 30.65965652 40.76395035 -11.1777935 30.65965652 48.15367126 -14.23872089
		 30.65965652 55.54338837 -11.1777935 30.65965652 58.60434341 -3.78806424 30.65965652 55.54338837 3.60166335
		 30.65965652 48.15367126 6.66259098 30.65965652 40.76395035 3.6016643 30.65965652 37.703022 -3.78806424
		 31.81579208 42.84850311 -9.093244553 31.81579208 48.15367126 -11.29071903 31.81579208 53.45884705 -9.093244553
		 31.81579208 55.65634155 -3.78806424 31.81579208 53.45884705 1.5171144 31.81579208 48.15367126 3.71458983
		 31.81579208 42.84850311 1.51711488 31.81579208 40.65102386 -3.78806424 30.044677734 43.31805038 -8.62369919
		 30.044677734 48.15367126 -10.62668133 30.044677734 52.98930359 -8.62369919 30.044677734 54.99230194 -3.78806424
		 30.044677734 52.98930359 1.04756856 30.044677734 48.15367126 3.050551653 30.044677734 43.31805038 1.047569036
		 30.044677734 41.31506348 -3.78806424 32.3650589 43.23764801 -8.99018288 32.3650589 48.19356155 -11.13313198
		 36.2385025 48.19356155 -12.94815636 35.62000275 43.030723572 -9.41768837 32.3650589 53.14948273 -8.99018288
		 36.2385025 53.14948273 -10.8052063 32.3650589 55.20230865 -3.81663513 36.2385025 54.44976425 -4.18067074
		 32.3650589 53.14948273 1.35690975 36.2385025 53.33133316 2.21770811 32.3650589 48.19356155 3.49986053
		 36.18300629 50.42342758 3.31683922 32.3650589 43.23764801 1.35691023 34.11416626 40.91610718 2.56471586
		 34.28790283 43.92678452 4.23960114 32.3650589 41.18483353 -3.81663513 34.39537811 40.85543823 -1.47788417
		 38.069190979 45.11608124 -1.7694037 50.20885468 49.020587921 -12.35861778 50.20885468 51.13760376 -10.7257309
		 50.68819427 51.17157364 -8.26530552 50.68819046 48.75453949 -7.96453953 42.97478104 41.27898026 0.90930325
		 41.25288391 38.55728531 3.22488236 41.5281601 38.83385086 0.6547417 37.82975006 42.77897263 3.9599719
		 37.19001007 39.61228943 2.24777317 41.97900391 40.90759659 4.60893345 38.17471313 39.29282379 -0.22519884
		 41.10312653 42.8692894 -1.48492992 40.34228897 46.40932083 2.40986896 43.3265686 43.21431351 2.70314693
		 42.42089462 52.80474854 -10.91653252 42.42089462 48.84804153 -13.10167408 42.42089462 52.85020828 -7.32164955
		 42.42089462 45.97020721 -10.91653252 42.36540604 50.42342758 3.47035742 42.42089462 53.016521454 2.34958553
		 42.39314651 45.86658096 -7.75574875 42.42089462 52.92559814 -2.57019448 51.33794022 51.52552032 -2.064113855
		 51.3379364 48.99897385 -2.15141654 50.82023621 51.59895325 1.36757398 50.77541733 50.31781387 2.27275085
		 37.12181854 47.7208786 2.53093553 42.36540604 46.41743851 -1.57623506 42.30991364 47.515522 2.50046253
		 49.8787117 47.96928406 2.031135798 50.44123459 47.082431793 -1.15893698 49.35696793 46.87007141 -10.7257309
		 49.81557846 46.79264069 -8.36377907 51.22571945 51.72032547 -7.10737991 51.22571945 48.70249176 -7.48784065
		 51.73963165 51.7567749 -3.055688858 51.73962402 48.94176483 -2.54949808 50.3515892 46.59764099 -6.41573477
		 50.84325409 47.039272308 -2.5584085 49.34337997 52.0521698 -10.91653252 49.34337997 48.84804153 -13.10167408
		 49.91954422 52.097629547 -7.59319973 42.42089081 48.49201584 -8.098528862 49.91954422 48.49201202 -7.31075001
		 48.49149323 45.97020721 -10.91653252 49.039913177 45.86658096 -7.75574875 42.42089081 48.79047012 -1.56512082
		 50.094944 52.17301941 -2.57019448 50.094936371 48.79047012 -2.51541233 49.54772186 52.26394653 1.67885327
		 49.49223709 50.42342758 2.79962492 48.58485413 47.515522 2.50046253 49.18757248 46.41743851 -1.46797764
		 50.00052261353 52.44236755 -7.5837121 50.00052261353 48.49201584 -8.098528862 50.55617523 52.48783112 -2.57019448
		 50.55617523 48.79047012 -1.8890481 49.12089157 45.86658478 -6.89369392 49.6487999 46.41743851 -1.90016198
		 26.76471329 52.30465698 -0.63624215 26.76471329 53.61019135 -3.788064 26.76471329 52.30465698 -6.93988609
		 26.76471329 49.15283585 -8.24541378 26.76471329 46.0010185242 -6.93988609 26.76471329 44.69549179 -3.788064
		 26.76471329 46.0010185242 -0.63624179 26.76471329 49.15283585 0.66928601 -11.89771843 46.91099548 -6.276474
		 -11.89771843 49.39940262 -7.30720711 -11.89771843 51.88781357 -6.276474 -11.89771843 52.91854858 -3.78806424
		 -11.89771843 51.88781357 -1.29965425 -11.89771843 49.39940262 -0.26892114 -11.89771843 46.91099548 -1.29965401
		 -11.89771843 45.88026047 -3.78806424 -22.16287422 46.91099548 -6.276474 -22.16287422 49.39940262 -7.30720711
		 -22.16287422 51.88781357 -6.276474 -22.16287422 52.91854858 -3.78806424 -22.16287422 51.88781357 -1.29965425
		 -22.16287422 49.39940262 -0.26892114 -22.16287422 46.91099548 -1.29965401 -22.16287422 45.88026047 -3.78806424
		 -9.69637489 46.71285629 -6.47461033 -9.69637489 49.39940262 -7.58741379 -9.69637489 52.085948944 -6.47461033
		 -9.69637489 53.19875336 -3.78806424 -9.69637489 52.085948944 -1.10151815 -9.69637489 49.39940262 0.011285782
		 -9.69637489 46.71285629 -1.10151792 -9.69637489 45.60005188 -3.78806424 -7.95682144 45.24422455 -6.55492544
		 -7.95682144 48.6290741 -7.95697641 -7.95682144 52.01392746 -7.17291451 -7.95682144 53.41597748 -3.78806424
		 -7.95682144 52.01392746 -0.40321422 -7.95682144 48.6290741 0.99883723 -7.95682144 45.24422455 -0.40321374
		 -7.95682144 43.84217453 -3.78806424 -24.51440048 46.91099548 -6.276474 -24.51440048 49.39940262 -7.30720711
		 -24.51440048 51.88781357 -6.276474 -24.51440048 52.91854858 -3.78806424;
	setAttr ".vt[1162:1327]" -24.51440048 51.88781357 -1.29965425 -24.51440048 49.39940262 -0.26892114
		 -24.51440048 46.91099548 -1.29965401 -24.51440048 45.88026047 -3.78806424 -23.33863831 46.91099548 -6.276474
		 -23.33863831 49.39940262 -7.30720711 -23.33863831 51.88781357 -6.276474 -23.33863831 52.91854858 -3.78806424
		 -23.33863831 51.88781357 -1.29965425 -23.33863831 49.39940262 -0.26892114 -23.33863831 46.91099548 -1.29965401
		 -23.33863831 45.88026047 -3.78806424 -28.34532547 46.45816422 -6.72930431 -28.34532547 49.39940262 -7.94760513
		 -28.34532547 52.34064102 -6.72930431 -28.34532547 53.55894852 -3.78806424 -28.34532547 52.34064102 -0.84682441
		 -28.34532547 49.39940262 0.37147689 -28.34532547 46.45816422 -0.84682417 -28.34532547 45.23986435 -3.78806424
		 -20.35952377 41.13645554 -10.80528831 -20.35952377 48.15367508 -13.71191883 -20.35952377 55.17089081 -10.80528831
		 -20.35952377 58.077541351 -3.78806424 -20.35952377 55.17089081 3.22915912 -20.35952377 48.15367508 6.13579082
		 -20.35952377 41.13645554 3.22916007 -20.35952377 38.22982407 -3.78806424 -20.77993774 38.71907806 -13.22266674
		 -20.77993774 48.15367126 -17.13060951 -20.77993774 57.58826065 -13.22266674 -20.77993774 61.49623108 -3.78806424
		 -20.77993774 57.58826065 5.64653683 -20.77993774 48.15367126 9.55448055 -20.77993774 38.71907806 5.64653873
		 -20.77993774 34.81113434 -3.78806424 -24.8789711 39.92776489 -12.013978004 -24.8789711 48.15367126 -15.42126465
		 -24.8789711 56.37957382 -12.013978004 -24.8789711 59.78688812 -3.78806424 -24.8789711 56.37957382 4.43784809
		 -24.8789711 48.15367126 7.84513569 -24.8789711 39.92776489 4.43785 -24.8789711 36.52047729 -3.78806424
		 -25.29938507 40.55838394 -11.383358 -25.29938507 48.15367126 -14.52943325 -25.29938507 55.74895477 -11.383358
		 -25.29938507 58.89505768 -3.78806424 -25.29938507 55.74895477 3.80722785 -25.29938507 48.15367126 6.95330429
		 -25.29938507 40.55838394 3.80722976 -25.29938507 37.41230774 -3.78806424 -30.65965652 40.76395035 -11.1777935
		 -30.65965652 48.15367126 -14.23872089 -30.65965652 55.54338837 -11.1777935 -30.65965652 58.60434341 -3.78806424
		 -30.65965652 55.54338837 3.60166335 -30.65965652 48.15367126 6.66259098 -30.65965652 40.76395035 3.6016643
		 -30.65965652 37.703022 -3.78806424 -31.81579208 42.84850311 -9.093244553 -31.81579208 48.15367126 -11.29071903
		 -31.81579208 53.45884705 -9.093244553 -31.81579208 55.65634155 -3.78806424 -31.81579208 53.45884705 1.5171144
		 -31.81579208 48.15367126 3.71458983 -31.81579208 42.84850311 1.51711488 -31.81579208 40.65102386 -3.78806424
		 -30.044677734 43.31805038 -8.62369919 -30.044677734 48.15367126 -10.62668133 -30.044677734 52.98930359 -8.62369919
		 -30.044677734 54.99230194 -3.78806424 -30.044677734 52.98930359 1.04756856 -30.044677734 48.15367126 3.050551653
		 -30.044677734 43.31805038 1.047569036 -30.044677734 41.31506348 -3.78806424 -32.3650589 43.23764801 -8.99018288
		 -32.3650589 48.19356155 -11.13313198 -36.2385025 48.19356155 -12.94815636 -35.62000275 43.030723572 -9.41768837
		 -32.3650589 53.14948273 -8.99018288 -36.2385025 53.14948273 -10.8052063 -32.3650589 55.20230865 -3.81663513
		 -36.2385025 54.44976425 -4.18067074 -32.3650589 53.14948273 1.35690975 -36.2385025 53.33133316 2.21770811
		 -32.3650589 48.19356155 3.49986053 -36.18300629 50.42342758 3.31683922 -32.3650589 43.23764801 1.35691023
		 -34.11416626 40.91610718 2.56471586 -34.28790283 43.92678452 4.23960114 -32.3650589 41.18483353 -3.81663513
		 -34.39537811 40.85543823 -1.47788417 -38.069190979 45.11608124 -1.7694037 -50.20885468 49.020587921 -12.35861778
		 -50.20885468 51.13760376 -10.7257309 -50.68819427 51.17157364 -8.26530552 -50.68819046 48.75453949 -7.96453953
		 -42.97478104 41.27898026 0.90930325 -41.25288391 38.55728531 3.22488236 -41.5281601 38.83385086 0.6547417
		 -37.82975006 42.77897263 3.9599719 -37.19001007 39.61228943 2.24777317 -41.97900391 40.90759659 4.60893345
		 -38.17471313 39.29282379 -0.22519884 -41.10312653 42.8692894 -1.48492992 -40.34228897 46.40932083 2.40986896
		 -43.3265686 43.21431351 2.70314693 -42.42089462 52.80474854 -10.91653252 -42.42089462 48.84804153 -13.10167408
		 -42.42089462 52.85020828 -7.32164955 -42.42089462 45.97020721 -10.91653252 -42.36540604 50.42342758 3.47035742
		 -42.42089462 53.016521454 2.34958553 -42.39314651 45.86658096 -7.75574875 -42.42089462 52.92559814 -2.57019448
		 -51.33794022 51.52552032 -2.064113855 -51.3379364 48.99897385 -2.15141654 -50.82023621 51.59895325 1.36757398
		 -50.77541733 50.31781387 2.27275085 -37.12181854 47.7208786 2.53093553 -42.36540604 46.41743851 -1.57623506
		 -42.30991364 47.515522 2.50046253 -49.8787117 47.96928406 2.031135798 -50.44123459 47.082431793 -1.15893698
		 -49.35696793 46.87007141 -10.7257309 -49.81557846 46.79264069 -8.36377907 -51.22571945 51.72032547 -7.10737991
		 -51.22571945 48.70249176 -7.48784065 -51.73963165 51.7567749 -3.055688858 -51.73962402 48.94176483 -2.54949808
		 -50.3515892 46.59764099 -6.41573477 -50.84325409 47.039272308 -2.5584085 -49.34337997 52.0521698 -10.91653252
		 -49.34337997 48.84804153 -13.10167408 -49.91954422 52.097629547 -7.59319973 -42.42089081 48.49201584 -8.098528862
		 -49.91954422 48.49201202 -7.31075001 -48.49149323 45.97020721 -10.91653252 -49.039913177 45.86658096 -7.75574875
		 -42.42089081 48.79047012 -1.56512082 -50.094944 52.17301941 -2.57019448 -50.094936371 48.79047012 -2.51541233
		 -49.54772186 52.26394653 1.67885327 -49.49223709 50.42342758 2.79962492 -48.58485413 47.515522 2.50046253
		 -49.18757248 46.41743851 -1.46797764 -50.00052261353 52.44236755 -7.5837121 -50.00052261353 48.49201584 -8.098528862
		 -50.55617523 52.48783112 -2.57019448 -50.55617523 48.79047012 -1.8890481 -49.12089157 45.86658478 -6.89369392
		 -49.6487999 46.41743851 -1.90016198 -26.76471329 52.30465698 -0.63624215 -26.76471329 53.61019135 -3.788064
		 -26.76471329 52.30465698 -6.93988609 -26.76471329 49.15283585 -8.24541378 -26.76471329 46.0010185242 -6.93988609
		 -26.76471329 44.69549179 -3.788064 -26.76471329 46.0010185242 -0.63624179 -26.76471329 49.15283585 0.66928601
		 -33.40024567 55.29595947 0.80501145 -39.53860092 55.29595947 -3.9293108 -28.66592216 55.29595947 -3.9293108
		 -33.40024567 55.29595947 -8.66363335 -33.40024567 57.63932419 -3.9293108;
	setAttr ".vt[1328:1493]" -33.26023865 51.71157455 2.12394428 -41.64936829 51.71157455 -3.9293108
		 -41.64936829 54.91649246 -3.9293108 -33.26023865 54.91649246 2.12394428 -27.46012306 54.91649246 -3.9293108
		 -33.26023865 54.91649246 -9.98256588 -33.26023865 51.71157455 -9.98256588 -27.46012306 51.71157455 -3.9293108
		 33.40024567 55.29595947 0.80501145 39.53860092 55.29595947 -3.9293108 28.66592216 55.29595947 -3.9293108
		 33.40024567 55.29595947 -8.66363335 33.40024567 57.63932419 -3.9293108 33.26023865 51.71157455 2.12394428
		 41.64936829 51.71157455 -3.9293108 41.64936829 54.91649246 -3.9293108 33.26023865 54.91649246 2.12394428
		 27.46012306 54.91649246 -3.9293108 33.26023865 54.91649246 -9.98256588 33.26023865 51.71157455 -9.98256588
		 27.46012306 51.71157455 -3.9293108 5.27090263 33.53475952 3.042009592 3.043328285 33.53475952 4.86116982
		 0.00040672719 33.53475952 5.52702761 0.00040672719 33.53475952 -4.41304445 3.043328285 33.53475952 -3.74718666
		 5.27090263 33.53475952 -1.92802644 6.086249828 33.53475952 0.55699158 10.99781132 20.72622299 4.94114113
		 5.9554038 20.51328278 8.7928381 0.00040672719 20.69699478 10.061096191 0.00040672719 23.38667297 -10.18087673
		 6.16441965 22.91640091 -8.54478359 10.13988113 22.34713364 -5.72005367 12.38809109 21.63289261 -1.14603603
		 8.27824211 30.10894012 0.2899147 7.1190052 30.10877228 -3.25139427 3.95636797 30.10508537 -5.86269188
		 0.00040672719 30.097553253 -6.79085302 0.00040672719 29.97969818 6.76058626 3.96217346 29.99416733 5.82575178
		 7.12322426 30.013908386 3.21262646 10.63671303 25.44345856 -0.49875796 8.94950485 25.85642815 -4.66245365
		 5.34309244 26.202631 -7.42476702 0.00040672719 26.62231445 -8.80274296 0.00040672719 24.88484764 8.78608704
		 5.15696764 24.83302879 7.56030416 9.24386215 25.32020569 4.14027452 5.80230093 24.79984283 7.18666601
		 6.99509573 20.31519699 8.22578526 10.76844311 25.44345856 0.015125811 12.69911766 21.45618439 -0.085473776
		 4.27080631 26.31808472 -7.79910278 4.74389982 23.025724411 -8.92380524 4.68194389 24.61455917 7.13220978
		 5.15881348 20.39563942 8.527071 6.9643116 20.016550064 7.36361599 5.64484882 24.5650425 6.57470226
		 3.65126801 29.74904251 5.31053877 10.026741982 25.14995193 -0.54481339 11.36713696 21.50090599 -1.93576479
		 10.25165176 25.14995193 0.3325704 11.68127918 21.024190903 0.753654 7.72248983 29.80391693 0.43237606
		 5.46572161 25.90367317 -6.7541995 6.27956772 22.45812988 -7.39127922 3.74570584 22.45660782 -8.19755173
		 3.73455667 26.090068817 -7.35855007 3.73733807 29.8122654 -5.32559299 9.88892841 20.37517929 4.43688011
		 7.3335495 20.0055961609 6.94198227 4.61957979 20.18370819 8.66092396 0.00040672719 20.34889603 9.040583611
		 0.00040672719 22.76737213 -9.16036415 3.34405541 22.44281769 -8.31330872 6.74260569 22.34451675 -7.32922173
		 9.11750507 21.83264923 -5.14933157 11.41132641 21.19042587 -2.47325373 11.68181896 21.031536102 1.12517738
		 4.63868427 20.077926636 7.66123629 6.42778969 19.73706245 6.68545055 10.38818836 21.071748734 -1.7301023
		 11.14265633 20.64310074 0.84254527 6.072775364 22.079727173 -6.98503113 3.38578677 22.2865181 -7.7019701
		 7.98683786 24.4597435 3.57191181 5.92299414 24.16124153 5.59514809 3.7310667 24.30509949 6.98344469
		 0.00040672719 24.43851471 7.29007578 0.00040672719 26.39177895 -7.40985632 2.7008934 26.12965965 -6.72573566
		 5.44572115 26.050262451 -5.93094063 7.36380053 25.63685608 -4.17036057 9.21639633 25.11816788 -2.0090346336
		 9.43485928 24.98983765 0.89722556 3.7464962 24.21965599 6.17605209 5.19146013 23.94436073 5.38796139
		 8.39006519 25.022317886 -1.40883148 8.99940777 24.67612076 0.66895854 4.90473509 25.83641243 -5.65295744
		 2.73459721 26.0034255981 -6.23198986 0.00040672719 33.90037537 -0.18555796 0.00040672719 31.45503426 6.096711636
		 3.46767092 31.4617157 5.30663586 6.12634468 31.47083282 3.12080336 7.09855938 31.51472092 0.43364912
		 6.12439632 31.51464272 -2.539186 3.46498966 31.51293945 -4.72417259 0.00040672719 31.50946045 -5.51116753
		 5.27090263 39.96718597 3.042009592 3.043328285 39.96718597 4.86116982 0.00040672719 39.96718597 5.52702761
		 0.00040672719 39.96718597 -4.41304445 3.043328285 39.96718597 -3.74718666 5.27090263 39.96718597 -1.92802644
		 6.086249828 39.96718597 0.55699158 0.00040672719 35.92689514 -3.86469746 2.84911489 35.92689514 -3.24133778
		 4.934515 35.92689514 -1.53828478 5.69782305 35.92689514 0.78812772 4.934515 35.92689514 3.11454034
		 2.84911489 35.92689514 4.8175931 0.00040672719 35.92689514 5.44095278 5.60083342 33.42014313 3.27576542
		 3.22639227 33.38857651 5.23825836 3.6507349 31.58122063 5.6837244 6.45627546 31.62190247 3.35455942
		 0.00040672719 33.38193512 5.9493022 0.00040672719 31.5678997 6.51898623 0.00040672719 33.47634125 -4.79976702
		 3.21296453 33.47331238 -4.09500885 3.63462591 31.71718025 -5.071994781 0.00040672719 31.71673203 -5.89789009
		 5.58779049 33.46894073 -2.14490533 6.44128418 31.71450806 -2.75606489 6.47064257 33.45633316 0.56237847
		 7.48295259 31.70197868 0.43903604 -5.27008915 33.53475952 3.042009592 -3.042514801 33.53475952 4.86116982
		 -3.042514801 33.53475952 -3.74718666 -5.27008915 33.53475952 -1.92802644 -6.085436344 33.53475952 0.55699158
		 -10.99699688 20.72622299 4.94114113 -5.95459032 20.51328278 8.7928381 -6.16360617 22.91640091 -8.54478359
		 -10.1390667 22.34713364 -5.72005367 -12.38727665 21.63289261 -1.14603603 -8.27742767 30.10894012 0.2899147
		 -7.11819172 30.10877228 -3.25139427 -3.95555449 30.10508537 -5.86269188 -3.96135998 29.99416733 5.82575178
		 -7.12241077 30.013908386 3.21262646 -10.63589859 25.44345856 -0.49875796 -8.94869041 25.85642815 -4.66245365
		 -5.34227896 26.202631 -7.42476702 -5.15615416 24.83302879 7.56030416 -9.24304771 25.32020569 4.14027452
		 -5.80148745 24.79984283 7.18666601 -6.99428225 20.31519699 8.22578526 -10.76762867 25.44345856 0.015125811
		 -12.69830322 21.45618439 -0.085473776 -4.26999283 26.31808472 -7.79910278 -4.74308634 23.025724411 -8.92380524
		 -4.68113041 24.61455917 7.13220978 -5.15799999 20.39563942 8.527071;
	setAttr ".vt[1494:1659]" -6.96349812 20.016550064 7.36361599 -5.64403534 24.5650425 6.57470226
		 -3.65045452 29.74904251 5.31053877 -10.025927544 25.14995193 -0.54481339 -11.36632252 21.50090599 -1.93576479
		 -10.25083733 25.14995193 0.3325704 -11.68046474 21.024190903 0.753654 -7.72167635 29.80391693 0.43237606
		 -5.46490812 25.90367317 -6.7541995 -6.27875423 22.45812988 -7.39127922 -3.74489236 22.45660782 -8.19755173
		 -3.73374319 26.090068817 -7.35855007 -3.73652458 29.8122654 -5.32559299 -9.88811398 20.37517929 4.43688011
		 -7.33273602 20.0055961609 6.94198227 -4.61876631 20.18370819 8.66092396 -3.34324193 22.44281769 -8.31330872
		 -6.7417922 22.34451675 -7.32922173 -9.11669064 21.83264923 -5.14933157 -11.41051197 21.19042587 -2.47325373
		 -11.68100452 21.031536102 1.12517738 -4.63787079 20.077926636 7.66123629 -6.4269762 19.73706245 6.68545055
		 -10.38737392 21.071748734 -1.7301023 -11.14184189 20.64310074 0.84254527 -6.07196188 22.079727173 -6.98503113
		 -3.38497329 22.2865181 -7.7019701 -7.98602438 24.4597435 3.57191181 -5.92218065 24.16124153 5.59514809
		 -3.73025322 24.30509949 6.98344469 -2.70007992 26.12965965 -6.72573566 -5.44490767 26.050262451 -5.93094063
		 -7.36298704 25.63685608 -4.17036057 -9.21558189 25.11816788 -2.0090346336 -9.43404484 24.98983765 0.89722556
		 -3.74568272 24.21965599 6.17605209 -5.19064665 23.94436073 5.38796139 -8.38925076 25.022317886 -1.40883148
		 -8.99859333 24.67612076 0.66895854 -4.9039216 25.83641243 -5.65295744 -2.73378372 26.0034255981 -6.23198986
		 -3.46685743 31.4617157 5.30663586 -6.1255312 31.47083282 3.12080336 -7.097745895 31.51472092 0.43364912
		 -6.12358284 31.51464272 -2.539186 -3.46417618 31.51293945 -4.72417259 -5.27008915 39.96718597 3.042009592
		 -3.042514801 39.96718597 4.86116982 -3.042514801 39.96718597 -3.74718666 -5.27008915 39.96718597 -1.92802644
		 -6.085436344 39.96718597 0.55699158 -2.84830141 35.92689514 -3.24133778 -4.93370152 35.92689514 -1.53828478
		 -5.69700956 35.92689514 0.78812772 -4.93370152 35.92689514 3.11454034 -2.84830141 35.92689514 4.8175931
		 -5.60001993 33.42014313 3.27576542 -3.22557878 33.38857651 5.23825836 -3.64992142 31.58122063 5.6837244
		 -6.45546198 31.62190247 3.35455942 -3.21215105 33.47331238 -4.09500885 -3.63381243 31.71718025 -5.071994781
		 -5.58697701 33.46894073 -2.14490533 -6.4404707 31.71450806 -2.75606489 -6.46982908 33.45633316 0.56237847
		 -7.48213911 31.70197868 0.43903604 18.63267708 72.33355713 -24.030992508 20.36620331 108.99464417 11.28700542
		 18.1972599 108.85697937 -24.81269073 27.29588699 79.81645966 -20.48622513 11.66278744 102.42538452 21.19291306
		 29.97382736 103.22962952 1.973297 16.92065811 117.38294983 5.96649742 11.66278744 117.95561981 -18.27821922
		 3.9443045e-031 56.63195801 -10.90680885 3.9443045e-031 79.86994934 21.94573212 3.9443045e-031 122.049995422 -4.72835112
		 3.9443045e-031 90.65974426 -38.0057449341 29.36748695 90.53742218 -9.72143364 3.9443045e-031 61.37265778 -19.01830864
		 10.79428387 69.89816284 -26.83553696 21.40246391 71.0020599365 -17.84297752 12.53129196 58.74119568 -10.90680885
		 11.29100513 87.68865967 19.085418701 3.9443045e-031 102.50088501 26.35007477 19.86356354 101.40950012 12.74268818
		 10.79428387 112.16503906 17.9084816 3.9443045e-031 119.94076538 7.80294418 21.40246391 112.062179565 5.087364197
		 12.53129196 119.94076538 -4.72835112 3.9443045e-031 119.94076538 -19.14672661 21.40246391 112.062179565 -17.40971565
		 10.79428387 112.062179565 -28.017883301 3.9443045e-031 103.19102478 -35.896492 21.40246391 101.45401764 -28.017883301
		 12.53129196 90.65974426 -35.896492 3.9443045e-031 78.83563232 -35.071418762 21.40246391 80.57263184 -27.19282913
		 29.2810421 90.65974426 -19.14672661 25.92667007 80.042564392 -8.89773178 27.87263107 102.45167542 -11.50990009
		 32.8854866 91.92544556 1.31428874 3.9443045e-031 68.31624603 -28.41745758 22.98437881 68.96889496 -11.69315624
		 11.66278744 79.70412445 -33.086261749 11.66278744 63.3578186 -18.14980125 18.032604218 95.39299011 14.10992527
		 3.9443045e-031 113.74698639 19.4903965 23.049133301 113.4271698 -7.72747612 27.29588699 102.32250977 -18.27821922
		 3.9443045e-031 113.644104 -29.59981155 11.66278744 102.32250977 -33.91133499 22.98437881 90.65974426 -29.59981155
		 32.5424881 84.075630188 1.11266124 29.9657402 82.98053741 -7.9878273 25.15171623 82.074317932 7.39067364
		 30.72657585 73.94983673 1.49197018 23.16350365 93.65034485 7.093424797 23.5164814 79.65298462 10.34804249
		 23.14947319 63.31816483 -3.81483412 21.19717026 63.31816483 7.64191628 18.49014473 55.96187592 3.18441105
		 3.9443045e-031 88.60076904 26.80533409 11.72660828 91.67954254 22.90590668 18.88913727 102.21703339 16.06006813
		 17.53994179 97.074211121 17.45073318 20.7313652 101.23156738 14.16277981 18.72146034 95.5644989 15.59068584
		 12.70112896 87.46513367 20.9942627 3.9443045e-031 79.78681946 23.45909882 26.84890747 89.0057449341 -0.082956791
		 27.95003319 82.57732391 -1.46827459 28.030490875 83.10751343 6.73903084 12.60873127 97.75215912 11.033246994
		 9.65539169 90.37142944 17.15119171 3.9443045e-031 84.69782257 19.42053032 27.9170208 79.28624725 4.03683567
		 23.51173973 63.36234283 4.88130951 25.42020988 89.23165131 9.83152103 21.20259285 87.82196045 10.51313686
		 19.653759 88.45863342 6.52600479 33.36991119 83.77035522 -4.80574751 34.22315598 91.47370148 -7.026578426
		 31.45539665 103.90089417 -8.044548988 22.54961395 100.5256424 12.12284088 29.24896049 90.72564697 6.7907896
		 18.46983719 98.28016663 12.78797626 14.95333862 94.63265991 10.97283649 18.56760025 110.42124939 13.57548809
		 9.44327068 119.0087890625 6.97694588 31.8384037 83.1581955 -8.71221733 31.39242744 90.78830719 -11.4955616
		 29.54453468 102.66576385 -12.092655182 18.29399109 63.31816483 2.75427866 18.21534157 79.18455505 2.58368635
		 19.24692154 89.62348938 -0.84623832 25.083496094 70.80029297 -7.22201729 26.21109581 70.8867569 5.0008149147
		 22.51081276 71.074455261 9.84142208 17.97714043 70.86696625 2.72274923 17.80522728 63.31816483 7.87849522
		 18.30362129 70.97070313 8.96248722 18.92555618 79.41876984 9.14626598 19.55704689 91.83171082 5.80399418
		 28.82603073 79.74179077 -7.80090904 28.30901337 70.34519958 -6.97425413;
	setAttr ".vt[1660:1811]" 25.72818184 63.17994308 -3.28344822 20.65472984 63.31816483 -2.27843952
		 21.23312187 70.82775879 -3.96501112 22.714571 79.78785706 -6.28076458 23.31595802 82.85650635 -8.86293411
		 20.095140457 96.21626282 12.2386713 24.25239754 82.31295776 4.30055094 32.015590668 70.95201874 -5.2514472
		 30.09979248 71.54289246 3.40002108 29.54521942 65.8359375 -4.14321995 28.19695282 66.10957336 3.81907988
		 32.31239319 66.28897095 -2.85704947 31.1000843 66.59941864 2.62399673 30.7963829 60.84841156 0.63778722
		 29.20204353 79.9756012 -1.86053681 31.77067757 71.74529266 -0.37347043 32.45144272 66.92762756 0.29067194
		 25.8368721 62.69918823 1.14712822 27.4654007 65.27324677 -0.30785191 28.1182003 64.10367584 -0.12161875
		 30.42259979 83.73632813 4.48997211 19.47337532 71.35088348 -9.80300522 10.61706066 62.68552399 -9.13677692
		 3.9443045e-031 60.89849854 -9.13677692 3.9443045e-031 97.75215912 11.033246994 3.9443045e-031 89.66298676 -7.85306644
		 3.9443045e-031 93.37880707 4.37743473 -18.63267708 72.33355713 -24.030992508 -20.36620331 108.99464417 11.28700542
		 -18.1972599 108.85697937 -24.81269073 -27.29588699 79.81645966 -20.48622513 -11.66278744 102.42538452 21.19291306
		 -29.97382736 103.22962952 1.973297 -16.92065811 117.38294983 5.96649742 -11.66278744 117.95561981 -18.27821922
		 -29.36748695 90.53742218 -9.72143364 -10.79428387 69.89816284 -26.83553696 -21.40246391 71.0020599365 -17.84297752
		 -12.53129196 58.74119568 -10.90680885 -11.29100513 87.68865967 19.085418701 -19.86356354 101.40950012 12.74268818
		 -10.79428387 112.16503906 17.9084816 -21.40246391 112.062179565 5.087364197 -12.53129196 119.94076538 -4.72835112
		 -21.40246391 112.062179565 -17.40971565 -10.79428387 112.062179565 -28.017883301
		 -21.40246391 101.45401764 -28.017883301 -12.53129196 90.65974426 -35.896492 -21.40246391 80.57263184 -27.19282913
		 -29.2810421 90.65974426 -19.14672661 -25.92667007 80.042564392 -8.89773178 -27.87263107 102.45167542 -11.50990009
		 -32.8854866 91.92544556 1.31428874 -22.98437881 68.96889496 -11.69315624 -11.66278744 79.70412445 -33.086261749
		 -11.66278744 63.3578186 -18.14980125 -18.032604218 95.39299011 14.10992527 -23.049133301 113.4271698 -7.72747612
		 -27.29588699 102.32250977 -18.27821922 -11.66278744 102.32250977 -33.91133499 -22.98437881 90.65974426 -29.59981155
		 -32.5424881 84.075630188 1.11266124 -29.9657402 82.98053741 -7.9878273 -25.15171623 82.074317932 7.39067364
		 -30.72657585 73.94983673 1.49197018 -23.16350365 93.65034485 7.093424797 -23.5164814 79.65298462 10.34804249
		 -23.14947319 63.31816483 -3.81483412 -21.19717026 63.31816483 7.64191628 -18.49014473 55.96187592 3.18441105
		 -11.72660828 91.67954254 22.90590668 -18.88913727 102.21703339 16.06006813 -17.53994179 97.074211121 17.45073318
		 -20.7313652 101.23156738 14.16277981 -18.72146034 95.5644989 15.59068584 -12.70112896 87.46513367 20.9942627
		 -26.84890747 89.0057449341 -0.082956791 -27.95003319 82.57732391 -1.46827459 -28.030490875 83.10751343 6.73903084
		 -12.60873127 97.75215912 11.033246994 -9.65539169 90.37142944 17.15119171 -27.9170208 79.28624725 4.03683567
		 -23.51173973 63.36234283 4.88130951 -25.42020988 89.23165131 9.83152103 -21.20259285 87.82196045 10.51313686
		 -19.653759 88.45863342 6.52600479 -33.36991119 83.77035522 -4.80574751 -34.22315598 91.47370148 -7.026578426
		 -31.45539665 103.90089417 -8.044548988 -22.54961395 100.5256424 12.12284088 -29.24896049 90.72564697 6.7907896
		 -18.46983719 98.28016663 12.78797626 -14.95333862 94.63265991 10.97283649 -18.56760025 110.42124939 13.57548809
		 -9.44327068 119.0087890625 6.97694588 -31.8384037 83.1581955 -8.71221733 -31.39242744 90.78830719 -11.4955616
		 -29.54453468 102.66576385 -12.092655182 -18.29399109 63.31816483 2.75427866 -18.21534157 79.18455505 2.58368635
		 -19.24692154 89.62348938 -0.84623832 -25.083496094 70.80029297 -7.22201729 -26.21109581 70.8867569 5.0008149147
		 -22.51081276 71.074455261 9.84142208 -17.97714043 70.86696625 2.72274923 -17.80522728 63.31816483 7.87849522
		 -18.30362129 70.97070313 8.96248722 -18.92555618 79.41876984 9.14626598 -19.55704689 91.83171082 5.80399418
		 -28.82603073 79.74179077 -7.80090904 -28.30901337 70.34519958 -6.97425413 -25.72818184 63.17994308 -3.28344822
		 -20.65472984 63.31816483 -2.27843952 -21.23312187 70.82775879 -3.96501112 -22.714571 79.78785706 -6.28076458
		 -23.31595802 82.85650635 -8.86293411 -20.095140457 96.21626282 12.2386713 -24.25239754 82.31295776 4.30055094
		 -32.015590668 70.95201874 -5.2514472 -30.09979248 71.54289246 3.40002108 -29.54521942 65.8359375 -4.14321995
		 -28.19695282 66.10957336 3.81907988 -32.31239319 66.28897095 -2.85704947 -31.1000843 66.59941864 2.62399673
		 -30.7963829 60.84841156 0.63778722 -29.20204353 79.9756012 -1.86053681 -31.77067757 71.74529266 -0.37347043
		 -32.45144272 66.92762756 0.29067194 -25.8368721 62.69918823 1.14712822 -27.4654007 65.27324677 -0.30785191
		 -28.1182003 64.10367584 -0.12161875 -30.42259979 83.73632813 4.48997211 -19.47337532 71.35088348 -9.80300522
		 -10.61706066 62.68552399 -9.13677692 1.99167454 34.055294037 4.86366606 0 34.87744522 4.79542637
		 -1.99167454 34.055294037 4.86366606 -2.81665325 32.070446014 5.028411865 -1.99167454 30.085594177 5.19315767
		 0 29.26344299 5.26139736 1.99167478 30.085594177 5.19315767 2.81665349 32.070446014 5.028411865
		 1.74891019 33.94421768 6.46028614 1.4530372e-008 34.66615677 6.40036392 -1.74891019 33.94421768 6.46028614
		 -2.47333264 32.20129776 6.6049509 -1.74891019 30.45838356 6.74961615 1.4530372e-008 29.73644257 6.80953789
		 1.74891043 30.45838165 6.74961615 2.47333288 32.20129776 6.6049509 0 32.070446014 5.028411865
		 1.4530372e-008 32.20129776 6.6049509;
	setAttr -s 3696 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 0 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 12 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 24 1 36 37 1 37 38 1 38 39 1 39 40 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 36 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 48 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 60 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1 83 72 1 0 12 1 1 13 1
		 2 14 1 3 15 1 4 16 1 5 17 1 6 18 1 7 19 1 8 20 1 9 21 1 10 22 1 11 23 1 12 24 1 13 25 1
		 14 26 1 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1 24 36 1
		 25 37 1 26 38 1 27 39 1 28 40 1 29 41 1 30 42 1 31 43 1 32 44 1 33 45 1 34 46 1 35 47 1
		 36 48 1 37 49 1 38 50 1 39 51 1 40 52 1 41 53 1 42 54 1 43 55 1 44 56 1 45 57 1 46 58 1
		 47 59 1 48 60 1 49 61 1 50 62 1 51 63 1 52 64 1 53 65 1 54 66 1 55 67 1 56 68 1 57 69 1
		 58 70 1 59 71 1 60 72 1 61 73 1 62 74 1 63 75 1 64 76 1 65 77 1 66 78 1 67 79 1 68 80 1
		 69 81 1 70 82 1 71 83 1 84 0 1 84 1 1 84 2 1 84 3 1 84 4 1 84 5 1 84 6 1 84 7 1 84 8 1
		 84 9 1;
	setAttr ".ed[166:331]" 84 10 1 84 11 1 72 86 1 73 87 1 74 88 1 75 89 1 76 90 1
		 77 91 1 78 92 1 79 93 1 80 94 1 81 95 1 82 96 1 83 97 1 86 85 1 87 85 1 88 85 1 89 85 1
		 90 85 1 91 85 1 92 85 1 93 85 1 94 85 1 95 85 1 96 85 1 97 85 1 87 86 1 88 87 1 89 88 1
		 90 89 1 91 90 1 92 91 1 93 92 1 94 93 1 95 94 1 96 95 1 97 96 1 86 97 1 98 99 1 99 100 1
		 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1 106 107 1 107 98 1 108 109 1
		 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1 115 116 1 116 117 1 117 108 1
		 118 119 1 119 120 1 120 121 1 121 122 1 122 123 1 123 124 1 124 125 1 125 126 1 126 127 1
		 127 118 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1 133 134 1 134 135 1 135 136 1
		 136 137 1 137 128 1 138 139 0 139 140 0 140 141 0 141 142 0 142 143 0 143 144 0 144 145 0
		 145 146 0 146 147 0 147 138 0 98 108 1 99 109 1 100 110 1 101 111 1 102 112 1 103 113 1
		 104 114 1 105 115 1 106 116 1 107 117 1 108 118 1 109 119 1 110 120 1 111 121 1 112 122 1
		 113 123 1 114 124 1 115 125 1 116 126 1 117 127 1 118 128 1 119 129 1 120 130 1 121 131 1
		 122 132 1 123 133 1 124 134 1 125 135 1 126 136 1 127 137 1 128 138 1 129 139 1 130 140 1
		 131 141 1 132 142 1 133 143 1 134 144 1 135 145 1 136 146 1 137 147 1 148 98 1 148 99 1
		 148 100 1 148 101 1 148 102 1 148 103 1 148 104 1 148 105 1 148 106 1 148 107 1 149 150 1
		 150 151 1 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 149 1
		 159 160 1 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1 166 167 1 167 168 1
		 168 159 1 169 170 1 170 171 1 171 172 1 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1;
	setAttr ".ed[332:497]" 177 178 1 178 169 1 179 180 1 180 181 1 181 182 1 182 183 1
		 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 179 1 189 190 0 190 191 0 191 192 0
		 192 193 0 193 194 0 194 195 0 195 196 0 196 197 0 197 198 0 198 189 0 149 200 1 150 201 1
		 151 202 1 152 203 1 153 204 1 154 205 1 155 206 1 156 207 1 157 208 1 158 209 1 159 169 1
		 160 170 1 161 171 1 162 172 1 163 173 1 164 174 1 165 175 1 166 176 1 167 177 1 168 178 1
		 169 179 1 170 180 1 171 181 1 172 182 1 173 183 1 174 184 1 175 185 1 176 186 1 177 187 1
		 178 188 1 179 189 1 180 190 1 181 191 1 182 192 1 183 193 1 184 194 1 185 195 1 186 196 1
		 187 197 1 188 198 1 199 149 1 199 150 1 199 151 1 199 152 1 199 153 1 199 154 1 199 155 1
		 199 156 1 199 157 1 199 158 1 200 159 1 201 160 1 202 161 1 203 162 1 204 163 1 205 164 1
		 206 165 1 207 166 1 208 167 1 209 168 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1
		 205 206 1 206 207 1 207 208 1 208 209 1 209 200 1 210 211 1 211 212 1 212 213 1 213 214 1
		 214 215 1 215 216 1 216 217 1 217 218 1 218 219 1 219 210 1 220 221 1 221 222 1 222 223 1
		 223 224 1 224 225 1 225 226 1 226 227 1 227 228 1 228 229 1 229 220 1 230 231 1 231 232 1
		 232 233 1 233 234 1 234 235 1 235 236 1 236 237 1 237 238 1 238 239 1 239 230 1 240 241 1
		 241 242 1 242 243 1 243 244 1 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 240 1
		 250 251 0 251 252 0 252 253 0 253 254 0 254 255 0 255 256 0 256 257 0 257 258 0 258 259 0
		 259 250 0 210 220 1 211 221 1 212 222 1 213 223 1 214 224 1 215 225 1 216 226 1 217 227 1
		 218 228 1 219 229 1 220 230 1 221 231 1 222 232 1 223 233 1 224 234 1 225 235 1 226 236 1
		 227 237 1 228 238 1 229 239 1 230 240 1 231 241 1 232 242 1 233 243 1;
	setAttr ".ed[498:663]" 234 244 1 235 245 1 236 246 1 237 247 1 238 248 1 239 249 1
		 240 250 1 241 251 1 242 252 1 243 253 1 244 254 1 245 255 1 246 256 1 247 257 1 248 258 1
		 249 259 1 260 210 1 260 211 1 260 212 1 260 213 1 260 214 1 260 215 1 260 216 1 260 217 1
		 260 218 1 260 219 1 303 277 1 277 261 1 309 287 1 287 262 1 312 293 1 293 263 1 261 278 1
		 278 304 1 304 281 1 283 308 1 308 286 1 286 262 1 262 289 1 289 310 1 310 292 1 292 263 1
		 263 295 1 295 314 1 314 298 1 298 261 1 303 276 1 276 271 1 277 306 1 306 276 1 278 306 1
		 304 279 1 279 306 1 279 271 1 279 307 1 307 280 1 280 271 1 281 307 1 282 272 1 266 282 1
		 283 266 1 308 284 1 284 266 1 284 272 1 284 267 1 267 285 1 285 272 1 286 267 1 287 267 1
		 309 285 1 309 288 1 288 273 1 287 269 1 269 288 1 289 269 1 310 290 1 290 269 1 290 273 1
		 290 270 1 270 291 1 291 273 1 292 270 1 293 270 1 312 291 1 312 294 1 294 274 1 293 313 1
		 313 294 1 295 313 1 314 296 1 296 313 1 296 274 1 296 305 1 305 297 1 297 274 1 298 305 1
		 277 305 1 303 297 1 298 264 1 264 330 1 314 299 1 299 264 1 299 275 1 275 300 1 300 264 1
		 300 329 1 295 311 1 311 299 1 292 311 1 310 301 1 301 311 1 301 275 1 301 268 1 268 302 1
		 302 275 1 289 268 1 286 325 1 308 326 1 300 265 1 265 328 1 302 265 1 283 327 1 281 315 1
		 307 316 1 315 316 1 315 317 1 318 317 1 318 316 1 280 319 1 316 319 1 320 318 1 320 319 1
		 282 321 1 320 321 1 266 322 1 318 322 1 322 321 1 283 323 1 317 323 1 323 322 1 324 315 1
		 323 324 1 324 317 1 325 268 1 326 302 1 327 265 1 262 325 1 325 326 1 326 327 1 327 324 1
		 328 281 1 329 304 1 330 278 1 324 328 1 328 329 1 329 330 1 330 261 1 323 327 1 303 342 1
		 342 331 1 309 349 1 349 332 1 312 353 1 353 333 1 331 343 1 343 361 1;
	setAttr ".ed[664:829]" 361 345 1 346 365 1 365 348 1 348 332 1 332 350 1 350 366 1
		 366 352 1 352 333 1 333 354 1 354 369 1 369 356 1 356 331 1 342 363 1 363 276 1 343 363 1
		 361 344 1 344 363 1 344 271 1 344 364 1 364 280 1 345 364 1 336 282 1 346 336 1 365 347 1
		 347 336 1 347 272 1 347 337 1 337 285 1 348 337 1 349 337 1 349 339 1 339 288 1 350 339 1
		 366 351 1 351 339 1 351 273 1 351 340 1 340 291 1 352 340 1 353 340 1 353 368 1 368 294 1
		 354 368 1 369 355 1 355 368 1 355 274 1 355 362 1 362 297 1 356 362 1 342 362 1 356 334 1
		 334 382 1 369 357 1 357 334 1 357 341 1 341 358 1 358 334 1 358 381 1 354 367 1 367 357 1
		 352 367 1 366 359 1 359 367 1 359 341 1 359 338 1 338 360 1 360 341 1 350 338 1 348 377 1
		 365 378 1 358 335 1 335 380 1 360 335 1 346 379 1 345 370 1 364 371 1 370 371 1 370 372 1
		 373 372 1 373 371 1 371 319 1 320 373 1 336 374 1 373 374 1 374 321 1 346 375 1 372 375 1
		 375 374 1 376 370 1 375 376 1 376 372 1 377 338 1 378 360 1 379 335 1 332 377 1 377 378 1
		 378 379 1 379 376 1 380 345 1 381 361 1 382 343 1 376 380 1 380 381 1 381 382 1 382 331 1
		 375 379 1 385 383 0 384 422 0 386 407 0 388 385 0 387 415 0 387 384 0 385 401 1 383 406 1
		 389 390 1 384 404 1 386 405 1 392 409 1 388 402 1 393 389 1 387 403 1 394 413 1 394 391 1
		 389 395 1 390 396 1 395 396 1 391 397 1 395 411 1 392 398 1 397 398 1 398 410 1 393 399 1
		 399 395 1 394 400 1 400 412 1 400 397 1 401 389 1 402 393 1 403 394 1 404 391 1 405 392 1
		 406 390 1 401 402 1 402 414 1 403 404 1 404 421 1 405 408 1 406 401 1 407 383 0 408 406 1
		 409 390 1 410 396 1 411 397 1 412 399 1 413 393 1 414 403 1 415 388 0 407 408 1 408 409 1
		 409 410 1 410 411 1 411 412 1 412 413 1 413 414 1 414 415 1 416 417 0;
	setAttr ".ed[830:995]" 417 386 0 418 419 1 419 405 1 391 420 1 420 392 1 417 419 1
		 419 420 1 420 397 1 391 418 1 418 416 1 421 418 1 422 416 0 391 421 1 421 422 1 425 423 0
		 424 462 0 426 447 0 428 425 0 427 455 0 427 424 0 425 441 1 423 446 1 429 430 1 424 444 1
		 426 445 1 432 449 1 428 442 1 433 429 1 427 443 1 434 453 1 434 431 1 429 435 1 430 436 1
		 435 436 1 431 437 1 435 451 1 432 438 1 437 438 1 438 450 1 433 439 1 439 435 1 434 440 1
		 440 452 1 440 437 1 441 429 1 442 433 1 443 434 1 444 431 1 445 432 1 446 430 1 441 442 1
		 442 454 1 443 444 1 444 461 1 445 448 1 446 441 1 447 423 0 448 446 1 449 430 1 450 436 1
		 451 437 1 452 439 1 453 433 1 454 443 1 455 428 0 447 448 1 448 449 1 449 450 1 450 451 1
		 451 452 1 452 453 1 453 454 1 454 455 1 456 457 0 457 426 0 458 459 1 459 445 1 431 460 1
		 460 432 1 457 459 1 459 460 1 460 437 1 431 458 1 458 456 1 461 458 1 462 456 0 431 461 1
		 461 462 1 463 464 1 464 465 1 465 466 1 466 467 1 467 468 1 468 469 1 469 470 1 470 471 1
		 471 472 1 472 463 1 473 474 1 474 475 1 475 476 1 476 477 1 477 478 1 478 479 1 479 480 1
		 480 481 1 481 482 1 482 473 1 483 484 1 484 485 1 485 486 1 486 487 1 487 488 1 488 489 1
		 489 490 1 490 491 1 491 492 1 492 483 1 493 494 1 494 495 1 495 496 1 496 497 1 497 498 1
		 498 499 1 499 500 1 500 501 1 501 502 1 502 493 1 503 504 0 504 505 0 505 506 0 506 507 0
		 507 508 0 508 509 0 509 510 0 510 511 0 511 512 0 512 503 0 463 473 1 464 474 1 465 475 1
		 466 476 1 467 477 1 468 478 1 469 479 1 470 480 1 471 481 1 472 482 1 473 483 1 474 484 1
		 475 485 1 476 486 1 477 487 1 478 488 1 479 489 1 480 490 1 481 491 1 482 492 1 483 493 1
		 484 494 1 485 495 1 486 496 1 487 497 1 488 498 1 489 499 1 490 500 1;
	setAttr ".ed[996:1161]" 491 501 1 492 502 1 493 503 1 494 504 1 495 505 1 496 506 1
		 497 507 1 498 508 1 499 509 1 500 510 1 501 511 1 502 512 1 513 463 1 513 464 1 513 465 1
		 513 466 1 513 467 1 513 468 1 513 469 1 513 470 1 513 471 1 513 472 1 514 515 1 515 516 1
		 516 517 1 517 518 1 518 519 1 519 520 1 520 521 1 521 522 1 522 523 1 523 514 1 524 525 1
		 525 526 1 526 527 1 527 528 1 528 529 1 529 530 1 530 531 1 531 532 1 532 533 1 533 524 1
		 534 535 1 535 536 1 536 537 1 537 538 1 538 539 1 539 540 1 540 541 1 541 542 1 542 543 1
		 543 534 1 544 545 1 545 546 1 546 547 1 547 548 1 548 549 1 549 550 1 550 551 1 551 552 1
		 552 553 1 553 544 1 554 555 0 555 556 0 556 557 0 557 558 0 558 559 0 559 560 0 560 561 0
		 561 562 0 562 563 0 563 554 0 514 524 1 515 525 1 516 526 1 517 527 1 518 528 1 519 529 1
		 520 530 1 521 531 1 522 532 1 523 533 1 524 534 1 525 535 1 526 536 1 527 537 1 528 538 1
		 529 539 1 530 540 1 531 541 1 532 542 1 533 543 1 534 544 1 535 545 1 536 546 1 537 547 1
		 538 548 1 539 549 1 540 550 1 541 551 1 542 552 1 543 553 1 544 554 1 545 555 1 546 556 1
		 547 557 1 548 558 1 549 559 1 550 560 1 551 561 1 552 562 1 553 563 1 564 514 1 564 515 1
		 564 516 1 564 517 1 564 518 1 564 519 1 564 520 1 564 521 1 564 522 1 564 523 1 565 566 1
		 566 567 1 567 568 1 568 569 1 569 570 1 570 571 1 571 572 1 572 573 1 573 574 1 574 565 1
		 575 576 1 576 577 1 577 578 1 578 579 1 579 580 1 580 581 1 581 582 1 582 583 1 583 584 1
		 584 575 1 585 586 1 586 587 1 587 588 1 588 589 1 589 590 1 590 591 1 591 592 1 592 593 1
		 593 594 1 594 585 1 595 596 1 596 597 1 597 598 1 598 599 1 599 600 1 600 601 1 601 602 1
		 602 603 1 603 604 1 604 595 1 605 606 0 606 607 0 607 608 0 608 609 0;
	setAttr ".ed[1162:1327]" 609 610 0 610 611 0 611 612 0 612 613 0 613 614 0 614 605 0
		 565 616 1 566 617 1 567 618 1 568 619 1 569 620 1 570 621 1 571 622 1 572 623 1 573 624 1
		 574 625 1 575 585 1 576 586 1 577 587 1 578 588 1 579 589 1 580 590 1 581 591 1 582 592 1
		 583 593 1 584 594 1 585 595 1 586 596 1 587 597 1 588 598 1 589 599 1 590 600 1 591 601 1
		 592 602 1 593 603 1 594 604 1 595 605 1 596 606 1 597 607 1 598 608 1 599 609 1 600 610 1
		 601 611 1 602 612 1 603 613 1 604 614 1 615 565 1 615 566 1 615 567 1 615 568 1 615 569 1
		 615 570 1 615 571 1 615 572 1 615 573 1 615 574 1 616 575 1 617 576 1 618 577 1 619 578 1
		 620 579 1 621 580 1 622 581 1 623 582 1 624 583 1 625 584 1 616 617 1 617 618 1 618 619 1
		 619 620 1 620 621 1 621 622 1 622 623 1 623 624 1 624 625 1 625 616 1 626 627 1 627 628 1
		 628 629 1 629 630 1 630 631 1 631 632 1 632 633 1 633 626 1 634 635 1 635 636 1 636 637 1
		 637 638 1 638 639 1 639 640 1 640 641 1 641 634 1 626 674 1 627 673 1 628 672 1 629 671 1
		 633 667 1 642 626 1 642 627 1 642 628 1 642 629 1 642 630 1 642 631 1 642 632 1 642 633 1
		 643 724 1 644 723 1 645 722 1 646 721 1 647 720 1 648 719 1 649 718 1 650 717 1 643 644 1
		 644 645 1 645 646 1 646 647 1 647 648 1 648 649 1 649 650 1 650 643 1 651 716 1 652 715 1
		 653 714 1 654 713 1 655 712 1 656 711 1 657 710 1 658 709 1 651 652 1 652 653 1 653 654 1
		 654 655 1 655 656 1 656 657 1 657 658 1 658 651 1 659 634 1 660 635 1 661 636 1 662 637 1
		 663 638 1 664 639 1 665 640 1 666 641 1 659 660 1 660 661 1 661 662 1 662 663 1 663 664 1
		 664 665 1 665 666 1 666 659 1 667 650 1 668 649 1 667 668 1 669 648 1 668 669 1 670 647 1
		 669 670 1 671 646 1 670 671 1 672 645 1 671 672 1 673 644 1 672 673 1;
	setAttr ".ed[1328:1493]" 674 643 1 673 674 1 674 667 1 629 675 1 630 676 1 675 676 1
		 670 677 1 676 677 1 671 678 1 677 678 1 675 678 1 631 679 1 676 679 1 669 680 1 679 680 1
		 680 677 1 632 681 1 679 681 1 668 682 1 681 682 1 682 680 1 633 683 1 681 683 1 667 684 1
		 683 684 1 684 682 1 634 703 1 638 707 1 639 706 1 686 687 0 640 705 1 687 688 0 641 704 1
		 688 689 0 689 685 0 636 690 1 637 691 1 690 691 1 638 692 1 691 692 1 686 693 0 692 708 1
		 635 694 1 634 694 1 694 702 1 685 695 0 636 696 1 694 696 1 696 701 1 695 697 0 690 698 1
		 696 698 1 698 700 1 697 699 0 700 699 1 701 697 1 700 701 1 702 695 1 701 702 1 703 685 1
		 702 703 1 704 689 1 703 704 1 705 688 1 704 705 1 706 687 1 705 706 1 707 686 1 706 707 1
		 708 693 1 707 708 1 709 666 1 710 665 1 709 710 1 711 664 1 710 711 1 712 663 1 711 712 1
		 713 662 1 712 713 1 714 661 1 713 714 1 715 660 1 714 715 1 716 659 1 715 716 1 716 709 1
		 717 658 1 718 657 1 717 718 1 719 656 1 718 719 1 720 655 1 719 720 1 721 654 1 720 721 1
		 722 653 1 721 722 1 723 652 1 722 723 1 724 651 1 723 724 1 724 717 1 725 726 1 726 727 1
		 727 728 1 728 729 1 729 730 1 730 731 1 731 732 1 732 725 1 733 734 1 734 735 1 735 736 1
		 736 737 1 737 738 1 738 739 1 739 740 1 740 733 1 725 773 1 726 772 1 727 771 1 728 770 1
		 732 766 1 741 725 1 741 726 1 741 727 1 741 728 1 741 729 1 741 730 1 741 731 1 741 732 1
		 742 815 1 743 814 1 744 813 1 745 812 1 746 811 1 747 810 1 748 809 1 749 808 1 742 743 1
		 743 744 1 744 745 1 745 746 1 746 747 1 747 748 1 748 749 1 749 742 1 750 807 1 751 806 1
		 752 805 1 753 804 1 754 803 1 755 802 1 756 801 1 757 800 1 750 751 1 751 752 1 752 753 1
		 753 754 1 754 755 1 755 756 1 756 757 1 757 750 1 758 733 1 759 734 1;
	setAttr ".ed[1494:1659]" 760 735 1 761 736 1 762 737 1 763 738 1 764 739 1 765 740 1
		 758 759 1 759 760 1 760 761 1 761 762 1 762 763 1 763 764 1 764 765 1 765 758 1 766 749 1
		 767 748 1 766 767 1 768 747 1 767 768 1 769 746 1 768 769 1 770 745 1 769 770 1 771 744 1
		 770 771 1 772 743 1 771 772 1 773 742 1 772 773 1 773 766 1 728 774 1 729 775 1 774 775 1
		 769 776 1 775 776 1 770 777 1 776 777 1 774 777 1 730 778 1 775 778 1 768 779 1 778 779 1
		 779 776 1 731 780 1 778 780 1 767 781 1 780 781 1 781 779 1 732 782 1 780 782 1 766 783 1
		 782 783 1 783 781 1 733 795 1 737 799 1 738 798 1 785 786 0 739 797 1 786 787 0 740 796 1
		 787 788 0 788 784 0 735 690 1 736 691 1 737 692 1 785 693 0 734 789 1 733 789 1 789 794 1
		 784 790 0 735 791 1 789 791 1 791 793 1 790 792 0 791 698 1 792 699 0 793 792 1 700 793 1
		 794 790 1 793 794 1 795 784 1 794 795 1 796 788 1 795 796 1 797 787 1 796 797 1 798 786 1
		 797 798 1 799 785 1 798 799 1 799 708 1 800 765 1 801 764 1 800 801 1 802 763 1 801 802 1
		 803 762 1 802 803 1 804 761 1 803 804 1 805 760 1 804 805 1 806 759 1 805 806 1 807 758 1
		 806 807 1 807 800 1 808 757 1 809 756 1 808 809 1 810 755 1 809 810 1 811 754 1 810 811 1
		 812 753 1 811 812 1 813 752 1 812 813 1 814 751 1 813 814 1 815 750 1 814 815 1 815 808 1
		 816 817 0 818 817 0 818 819 0 819 820 1 816 821 1 820 821 1 818 822 1 822 820 1 817 823 1
		 822 823 1 821 823 1 819 824 0 816 825 0 824 825 0 820 826 1 824 826 1 821 827 1 826 827 1
		 825 827 1 828 829 0 830 829 0 830 831 0 831 832 1 828 833 1 832 833 1 830 834 1 834 832 1
		 829 835 1 834 835 1 833 835 1 831 836 0 828 837 0 836 837 0 832 838 1 836 838 1 833 839 1
		 838 839 1 837 839 1 851 881 1 845 841 1 847 842 1 849 843 1 840 844 1;
	setAttr ".ed[1660:1825]" 844 841 1 841 865 1 846 842 1 842 848 1 848 843 1 850 879 1
		 845 864 1 846 852 1 847 852 1 847 853 1 848 853 1 849 869 1 850 883 1 851 880 1 850 855 1
		 855 878 1 848 866 1 851 856 1 840 857 1 856 857 1 844 858 1 857 858 1 858 859 1 856 859 1
		 841 860 1 858 860 1 845 861 1 861 860 1 861 859 1 843 862 1 862 868 1 863 862 1 863 885 1
		 864 852 1 865 846 1 865 855 1 866 863 1 864 865 1 865 867 1 866 843 1 867 866 1 842 867 1
		 867 855 1 857 859 1 860 859 1 868 850 1 869 854 1 868 884 1 848 870 1 853 871 1 870 871 1
		 843 872 1 870 872 1 849 873 1 873 872 1 870 874 1 871 875 1 874 875 1 872 876 1 874 876 1
		 873 877 1 877 876 1 877 875 1 878 844 1 879 840 1 880 854 1 865 878 1 878 879 1 879 882 1
		 881 840 1 882 880 1 883 854 1 884 869 1 857 881 1 881 882 1 882 883 1 883 884 1 884 843 1
		 881 856 1 885 855 1 867 885 1 867 863 1 868 886 1 850 887 1 886 887 1 862 888 1 888 886 1
		 863 889 1 889 888 1 885 890 1 889 890 1 855 891 1 890 891 1 887 891 1 887 892 1 892 889 1
		 886 892 1 888 892 1 890 892 1 891 892 1 851 917 1 845 894 1 847 895 1 849 896 1 893 897 1
		 897 894 1 894 907 1 898 895 1 895 899 1 899 896 1 900 916 1 898 852 1 899 853 1 900 919 1
		 900 901 1 901 915 1 899 908 1 893 902 1 856 902 1 897 903 1 902 903 1 903 859 1 894 904 1
		 903 904 1 861 904 1 896 905 1 905 910 1 906 905 1 906 921 1 907 898 1 907 901 1 908 906 1
		 864 907 1 907 909 1 908 896 1 909 908 1 895 909 1 909 901 1 902 859 1 904 859 1 910 900 1
		 910 920 1 899 911 1 911 871 1 896 912 1 911 912 1 873 912 1 911 913 1 913 875 1 912 914 1
		 913 914 1 877 914 1 915 897 1 916 893 1 907 915 1 915 916 1 916 918 1 917 893 1 918 880 1
		 919 854 1 920 869 1 902 917 1 917 918 1 918 919 1 919 920 1 920 896 1;
	setAttr ".ed[1826:1991]" 917 856 1 921 901 1 909 921 1 909 906 1 910 922 1 900 923 1
		 922 923 1 905 924 1 924 922 1 906 925 1 925 924 1 921 926 1 925 926 1 901 927 1 926 927 1
		 923 927 1 923 928 1 928 925 1 922 928 1 924 928 1 926 928 1 927 928 1 929 930 1 930 931 1
		 931 932 1 932 933 1 933 934 1 934 935 1 935 936 1 936 929 1 937 938 1 938 939 1 939 940 1
		 940 941 1 941 942 1 942 943 1 943 944 1 944 937 1 929 937 1 930 938 1 931 939 1 932 940 1
		 933 941 1 934 942 1 935 943 1 936 944 1 929 945 1 930 946 1 945 946 1 931 947 1 946 947 1
		 932 948 1 947 948 1 933 949 1 948 949 1 934 950 1 949 950 1 935 951 1 950 951 1 936 952 1
		 951 952 1 952 945 1 945 953 1 946 954 1 953 954 0 947 955 1 954 955 0 948 956 1 955 956 0
		 949 957 1 956 957 0 950 958 1 957 958 0 951 959 1 958 959 0 952 960 1 959 960 0 960 953 0
		 937 969 1 938 970 1 961 962 1 939 971 1 962 963 1 940 972 1 963 964 1 941 973 1 964 965 1
		 942 974 1 965 966 1 943 975 1 966 967 1 944 976 1 967 968 1 968 961 1 969 961 1 970 962 1
		 971 963 1 972 964 1 973 965 1 974 966 1 975 967 1 976 968 1 969 970 1 970 971 1 971 972 1
		 972 973 1 973 974 1 974 975 1 975 976 1 976 969 1 961 977 1 962 978 1 977 978 1 963 979 1
		 978 979 1 964 980 1 979 980 1 965 981 1 980 981 1 966 982 1 981 982 1 967 983 1 982 983 1
		 968 984 1 983 984 1 984 977 1 977 1122 1 978 1121 1 985 986 1 979 1120 1 986 987 1
		 980 1119 1 987 988 1 981 1118 1 988 989 1 982 1125 1 989 990 1 983 1124 1 990 991 1
		 984 1123 1 991 992 1 992 985 1 985 993 1 986 994 1 993 994 1 987 995 1 994 995 1
		 988 996 1 995 996 1 989 997 1 996 997 1 990 998 1 997 998 1 991 999 1 998 999 1 992 1000 1
		 999 1000 1 1000 993 1 993 1001 1 994 1002 1 1001 1002 1 995 1003 1 1002 1003 1 996 1004 1
		 1003 1004 1 997 1005 1;
	setAttr ".ed[1992:2157]" 1004 1005 1 998 1006 1 1005 1006 1 999 1007 1 1006 1007 1
		 1000 1008 1 1007 1008 1 1008 1001 1 1001 1009 1 1002 1010 1 1009 1010 1 1003 1011 1
		 1010 1011 1 1004 1012 1 1011 1012 1 1005 1013 1 1012 1013 1 1006 1014 1 1013 1014 1
		 1007 1015 1 1014 1015 1 1008 1016 1 1015 1016 1 1016 1009 1 1009 1017 1 1010 1018 1
		 1017 1018 1 1011 1019 1 1018 1019 1 1012 1020 1 1019 1020 1 1013 1021 1 1020 1021 1
		 1014 1022 1 1021 1022 1 1015 1023 1 1022 1023 1 1016 1024 1 1023 1024 1 1024 1017 1
		 1017 1025 1 1018 1026 1 1025 1026 1 1019 1027 1 1026 1027 1 1020 1028 1 1027 1028 1
		 1021 1029 1 1028 1029 1 1022 1030 1 1029 1030 1 1023 1031 1 1030 1031 1 1024 1032 1
		 1031 1032 1 1032 1025 1 1025 1033 1 1026 1034 1 1033 1034 1 1027 1035 1 1034 1035 1
		 1028 1036 1 1035 1036 1 1029 1037 1 1036 1037 1 1030 1038 1 1037 1038 1 1031 1039 1
		 1038 1039 1 1032 1040 1 1039 1040 1 1040 1033 1 1033 1041 1 1034 1042 1 1041 1042 1
		 1042 1043 1 1044 1043 1 1041 1044 1 1035 1045 1 1042 1045 1 1045 1046 1 1043 1046 1
		 1036 1047 1 1045 1047 1 1047 1046 1 1047 1048 1 1046 1048 1 1037 1049 1 1047 1049 1
		 1049 1050 1 1047 1050 1 1038 1051 1 1051 1052 1 1050 1052 1 1049 1051 1 1039 1053 1
		 1051 1053 1 1053 1054 1 1055 1054 1 1051 1055 1 1040 1056 1 1053 1056 1 1056 1057 1
		 1054 1057 1 1056 1041 1 1057 1044 1 1044 1058 1 1058 1057 1 1059 1060 1 1060 1061 1
		 1061 1062 1 1062 1059 1 1063 1064 1 1064 1065 1 1063 1065 1 1066 1067 1 1067 1064 1
		 1068 1064 1 1066 1068 1 1067 1069 1 1069 1065 1 1069 1070 1 1070 1063 1 1071 1066 1
		 1072 1068 1 1071 1072 1 1046 1073 1 1074 1073 1 1043 1074 1 1048 1075 1 1073 1075 1
		 1076 1074 1 1044 1076 1 1052 1077 1 1078 1077 1 1050 1078 1 1079 1044 1 1076 1079 1
		 1048 1050 1 1048 1080 1 1080 1078 1 1081 1082 1 1081 1083 1 1083 1084 1 1084 1082 1
		 1058 1085 1 1086 1058 1 1086 1087 1 1085 1087 1 1051 1085 1 1085 1055 1 1070 1071 1
		 1072 1063 1 1063 1068 1 1054 1067 1 1055 1066 1 1057 1069 1 1058 1070 1 1085 1071 1
		 1052 1085 1 1077 1087 1 1084 1088 1 1089 1088 1 1082 1089 1 1090 1059 1 1062 1091 1;
	setAttr ".ed[2158:2323]" 1090 1091 1 1075 1080 1 1092 1093 1 1092 1094 1 1094 1095 1
		 1095 1093 1 1093 1096 1 1095 1097 1 1096 1097 1 1079 1086 1 1073 1098 1 1098 1099 1
		 1074 1099 1 1075 1100 1 1100 1098 1 1075 1101 1 1101 1102 1 1102 1100 1 1099 1103 1
		 1076 1103 1 1101 1079 1 1079 1104 1 1104 1102 1 1103 1104 1 1080 1105 1 1080 1106 1
		 1106 1107 1 1105 1107 1 1078 1108 1 1108 1106 1 1077 1109 1 1109 1108 1 1087 1110 1
		 1110 1109 1 1086 1111 1 1111 1110 1 1105 1086 1 1107 1111 1 1075 1112 1 1112 1113 1
		 1101 1113 1 1080 1114 1 1114 1112 1 1105 1115 1 1115 1114 1 1113 1116 1 1079 1116 1
		 1086 1117 1 1117 1115 1 1116 1117 1 1108 1083 1 1106 1081 1 1107 1082 1 1111 1089 1
		 1110 1088 1 1109 1084 1 1112 1092 1 1113 1093 1 1116 1096 1 1117 1097 1 1115 1095 1
		 1114 1094 1 1098 1060 1 1099 1059 1 1103 1090 1 1104 1091 1 1102 1062 1 1100 1061 1
		 1118 989 1 1119 988 1 1118 1119 1 1120 987 1 1119 1120 1 1121 986 1 1120 1121 1 1122 985 1
		 1121 1122 1 1123 992 1 1122 1123 1 1124 991 1 1123 1124 1 1125 990 1 1124 1125 1
		 1125 1118 1 1126 1127 1 1127 1128 1 1128 1129 1 1129 1130 1 1130 1131 1 1131 1132 1
		 1132 1133 1 1133 1126 1 1134 1135 1 1135 1136 1 1136 1137 1 1137 1138 1 1138 1139 1
		 1139 1140 1 1140 1141 1 1141 1134 1 1126 1134 1 1127 1135 1 1128 1136 1 1129 1137 1
		 1130 1138 1 1131 1139 1 1132 1140 1 1133 1141 1 1126 1142 1 1127 1143 1 1142 1143 1
		 1128 1144 1 1143 1144 1 1129 1145 1 1144 1145 1 1130 1146 1 1145 1146 1 1131 1147 1
		 1146 1147 1 1132 1148 1 1147 1148 1 1133 1149 1 1148 1149 1 1149 1142 1 1142 1150 1
		 1143 1151 1 1150 1151 0 1144 1152 1 1151 1152 0 1145 1153 1 1152 1153 0 1146 1154 1
		 1153 1154 0 1147 1155 1 1154 1155 0 1148 1156 1 1155 1156 0 1149 1157 1 1156 1157 0
		 1157 1150 0 1134 1166 1 1135 1167 1 1158 1159 1 1136 1168 1 1159 1160 1 1137 1169 1
		 1160 1161 1 1138 1170 1 1161 1162 1 1139 1171 1 1162 1163 1 1140 1172 1 1163 1164 1
		 1141 1173 1 1164 1165 1 1165 1158 1 1166 1158 1 1167 1159 1 1168 1160 1 1169 1161 1
		 1170 1162 1 1171 1163 1 1172 1164 1 1173 1165 1 1166 1167 1 1167 1168 1;
	setAttr ".ed[2324:2489]" 1168 1169 1 1169 1170 1 1170 1171 1 1171 1172 1 1172 1173 1
		 1173 1166 1 1158 1174 1 1159 1175 1 1174 1175 1 1160 1176 1 1175 1176 1 1161 1177 1
		 1176 1177 1 1162 1178 1 1177 1178 1 1163 1179 1 1178 1179 1 1164 1180 1 1179 1180 1
		 1165 1181 1 1180 1181 1 1181 1174 1 1174 1319 1 1175 1318 1 1182 1183 1 1176 1317 1
		 1183 1184 1 1177 1316 1 1184 1185 1 1178 1315 1 1185 1186 1 1179 1322 1 1186 1187 1
		 1180 1321 1 1187 1188 1 1181 1320 1 1188 1189 1 1189 1182 1 1182 1190 1 1183 1191 1
		 1190 1191 1 1184 1192 1 1191 1192 1 1185 1193 1 1192 1193 1 1186 1194 1 1193 1194 1
		 1187 1195 1 1194 1195 1 1188 1196 1 1195 1196 1 1189 1197 1 1196 1197 1 1197 1190 1
		 1190 1198 1 1191 1199 1 1198 1199 1 1192 1200 1 1199 1200 1 1193 1201 1 1200 1201 1
		 1194 1202 1 1201 1202 1 1195 1203 1 1202 1203 1 1196 1204 1 1203 1204 1 1197 1205 1
		 1204 1205 1 1205 1198 1 1198 1206 1 1199 1207 1 1206 1207 1 1200 1208 1 1207 1208 1
		 1201 1209 1 1208 1209 1 1202 1210 1 1209 1210 1 1203 1211 1 1210 1211 1 1204 1212 1
		 1211 1212 1 1205 1213 1 1212 1213 1 1213 1206 1 1206 1214 1 1207 1215 1 1214 1215 1
		 1208 1216 1 1215 1216 1 1209 1217 1 1216 1217 1 1210 1218 1 1217 1218 1 1211 1219 1
		 1218 1219 1 1212 1220 1 1219 1220 1 1213 1221 1 1220 1221 1 1221 1214 1 1214 1222 1
		 1215 1223 1 1222 1223 1 1216 1224 1 1223 1224 1 1217 1225 1 1224 1225 1 1218 1226 1
		 1225 1226 1 1219 1227 1 1226 1227 1 1220 1228 1 1227 1228 1 1221 1229 1 1228 1229 1
		 1229 1222 1 1222 1230 1 1223 1231 1 1230 1231 1 1224 1232 1 1231 1232 1 1225 1233 1
		 1232 1233 1 1226 1234 1 1233 1234 1 1227 1235 1 1234 1235 1 1228 1236 1 1235 1236 1
		 1229 1237 1 1236 1237 1 1237 1230 1 1230 1238 1 1231 1239 1 1238 1239 1 1239 1240 1
		 1241 1240 1 1238 1241 1 1232 1242 1 1239 1242 1 1242 1243 1 1240 1243 1 1233 1244 1
		 1242 1244 1 1244 1243 1 1244 1245 1 1243 1245 1 1234 1246 1 1244 1246 1 1246 1247 1
		 1244 1247 1 1235 1248 1 1248 1249 1 1247 1249 1 1246 1248 1 1236 1250 1 1248 1250 1
		 1250 1251 1 1252 1251 1 1248 1252 1 1237 1253 1 1250 1253 1 1253 1254 1 1251 1254 1;
	setAttr ".ed[2490:2655]" 1253 1238 1 1254 1241 1 1241 1255 1 1255 1254 1 1256 1257 1
		 1257 1258 1 1258 1259 1 1259 1256 1 1260 1261 1 1261 1262 1 1260 1262 1 1263 1264 1
		 1264 1261 1 1265 1261 1 1263 1265 1 1264 1266 1 1266 1262 1 1266 1267 1 1267 1260 1
		 1268 1263 1 1269 1265 1 1268 1269 1 1243 1270 1 1271 1270 1 1240 1271 1 1245 1272 1
		 1270 1272 1 1273 1271 1 1241 1273 1 1249 1274 1 1275 1274 1 1247 1275 1 1276 1241 1
		 1273 1276 1 1245 1247 1 1245 1277 1 1277 1275 1 1278 1279 1 1278 1280 1 1280 1281 1
		 1281 1279 1 1255 1282 1 1283 1255 1 1283 1284 1 1282 1284 1 1248 1282 1 1282 1252 1
		 1267 1268 1 1269 1260 1 1260 1265 1 1251 1264 1 1252 1263 1 1254 1266 1 1255 1267 1
		 1282 1268 1 1249 1282 1 1274 1284 1 1281 1285 1 1286 1285 1 1279 1286 1 1287 1256 1
		 1259 1288 1 1287 1288 1 1272 1277 1 1289 1290 1 1289 1291 1 1291 1292 1 1292 1290 1
		 1290 1293 1 1292 1294 1 1293 1294 1 1276 1283 1 1270 1295 1 1295 1296 1 1271 1296 1
		 1272 1297 1 1297 1295 1 1272 1298 1 1298 1299 1 1299 1297 1 1296 1300 1 1273 1300 1
		 1298 1276 1 1276 1301 1 1301 1299 1 1300 1301 1 1277 1302 1 1277 1303 1 1303 1304 1
		 1302 1304 1 1275 1305 1 1305 1303 1 1274 1306 1 1306 1305 1 1284 1307 1 1307 1306 1
		 1283 1308 1 1308 1307 1 1302 1283 1 1304 1308 1 1272 1309 1 1309 1310 1 1298 1310 1
		 1277 1311 1 1311 1309 1 1302 1312 1 1312 1311 1 1310 1313 1 1276 1313 1 1283 1314 1
		 1314 1312 1 1313 1314 1 1305 1280 1 1303 1278 1 1304 1279 1 1308 1286 1 1307 1285 1
		 1306 1281 1 1309 1289 1 1310 1290 1 1313 1293 1 1314 1294 1 1312 1292 1 1311 1291 1
		 1295 1257 1 1296 1256 1 1300 1287 1 1301 1288 1 1299 1259 1 1297 1258 1 1315 1186 1
		 1316 1185 1 1315 1316 1 1317 1184 1 1316 1317 1 1318 1183 1 1317 1318 1 1319 1182 1
		 1318 1319 1 1320 1189 1 1319 1320 1 1321 1188 1 1320 1321 1 1322 1187 1 1321 1322 1
		 1322 1315 1 1323 1324 1 1325 1326 1 1323 1325 1 1324 1326 1 1323 1327 1 1327 1326 1
		 1324 1327 1 1325 1327 1 1328 1329 0 1324 1330 1 1329 1330 1 1323 1331 1 1331 1330 1
		 1328 1331 1 1325 1332 1 1326 1333 1 1332 1333 1 1333 1334 1 1335 1334 0 1332 1335 1;
	setAttr ".ed[2656:2821]" 1334 1329 0 1330 1333 1 1335 1328 0 1331 1332 1 1336 1337 1
		 1338 1339 1 1336 1338 1 1337 1339 1 1336 1340 1 1340 1339 1 1337 1340 1 1338 1340 1
		 1341 1342 0 1337 1343 1 1342 1343 1 1336 1344 1 1344 1343 1 1341 1344 1 1338 1345 1
		 1339 1346 1 1345 1346 1 1346 1347 1 1348 1347 0 1345 1348 1 1347 1342 0 1343 1346 1
		 1348 1341 0 1344 1345 1 1349 1350 1 1350 1351 1 1352 1353 1 1353 1354 1 1354 1355 1
		 1355 1349 1 1356 1378 1 1357 1358 1 1359 1382 1 1360 1361 1 1361 1362 1 1380 1356 1
		 1363 1370 1 1364 1371 1 1363 1364 1 1365 1372 1 1364 1365 1 1366 1373 1 1365 1366 1
		 1367 1374 1 1368 1375 1 1367 1368 1 1369 1376 1 1368 1369 1 1369 1363 1 1370 1362 1
		 1371 1361 1 1370 1371 1 1372 1360 1 1371 1372 1 1373 1359 1 1381 1373 1 1374 1358 1
		 1375 1357 1 1374 1375 1 1376 1356 1 1377 1376 1 1376 1379 1 1368 1377 1 1377 1378 1
		 1379 1380 1 1363 1379 1 1381 1382 1 1365 1381 1 1375 1383 1 1357 1384 1 1383 1384 1
		 1378 1385 1 1384 1385 1 1377 1386 1 1386 1385 1 1383 1386 1 1368 1387 1 1387 1386 1
		 1387 1383 1 1370 1388 1 1362 1389 1 1388 1389 1 1379 1390 1 1388 1390 1 1380 1391 1
		 1390 1391 1 1389 1391 1 1363 1392 1 1392 1388 1 1392 1390 1 1372 1393 1 1360 1394 1
		 1393 1394 1 1382 1395 1 1394 1395 1 1381 1396 1 1396 1395 1 1393 1396 1 1365 1397 1
		 1397 1396 1 1397 1393 1 1356 1398 1 1378 1399 1 1398 1399 1 1357 1400 1 1358 1401 1
		 1400 1401 1 1359 1402 1 1382 1403 1 1402 1403 1 1360 1404 1 1361 1405 1 1404 1405 1
		 1362 1406 1 1405 1406 1 1380 1407 1 1407 1398 1 1384 1408 1 1400 1408 1 1385 1409 1
		 1399 1409 1 1408 1409 1 1389 1410 1 1406 1410 1 1391 1411 1 1407 1411 1 1410 1411 1
		 1394 1412 1 1404 1412 1 1395 1413 1 1403 1413 1 1412 1413 1 1400 1384 1 1385 1399 1
		 1389 1406 1 1407 1391 1 1404 1394 1 1395 1403 1 1398 1414 1 1399 1415 1 1414 1415 1
		 1400 1416 1 1401 1417 1 1416 1417 1 1402 1418 1 1403 1419 1 1418 1419 1 1404 1420 1
		 1405 1421 1 1420 1421 1 1406 1422 1 1421 1422 1 1407 1423 1 1423 1414 1 1408 1424 1
		 1416 1424 1 1409 1425 1 1415 1425 1 1424 1425 1 1410 1426 1 1422 1426 1 1411 1427 1;
	setAttr ".ed[2822:2987]" 1423 1427 1 1426 1427 1 1412 1428 1 1420 1428 1 1413 1429 1
		 1419 1429 1 1428 1429 1 1414 1430 1 1415 1430 1 1416 1430 1 1417 1430 1 1418 1430 1
		 1419 1430 1 1420 1430 1 1421 1430 1 1422 1430 1 1423 1430 1 1424 1430 1 1425 1430 1
		 1426 1430 1 1427 1430 1 1428 1430 1 1429 1430 1 1431 1367 1 1432 1368 1 1431 1432 1
		 1433 1369 1 1432 1433 1 1434 1363 1 1433 1434 1 1435 1364 1 1434 1435 1 1436 1365 1
		 1435 1436 1 1437 1366 1 1436 1437 1 1349 1449 1 1350 1450 1 1438 1439 0 1351 1451 1
		 1439 1440 0 1352 1445 1 1353 1446 1 1441 1442 0 1354 1447 1 1442 1443 0 1355 1448 1
		 1443 1444 0 1444 1438 0 1445 1441 1 1446 1442 1 1445 1446 1 1447 1443 1 1446 1447 1
		 1448 1444 1 1447 1448 1 1449 1438 1 1448 1449 1 1450 1439 1 1449 1450 1 1451 1440 1
		 1450 1451 1 1349 1452 1 1350 1453 1 1452 1453 1 1432 1454 1 1453 1454 1 1433 1455 1
		 1454 1455 1 1452 1455 1 1351 1456 1 1453 1456 1 1431 1457 1 1456 1457 1 1457 1454 1
		 1352 1458 1 1353 1459 1 1458 1459 1 1436 1460 1 1459 1460 1 1437 1461 1 1460 1461 1
		 1458 1461 1 1354 1462 1 1459 1462 1 1435 1463 1 1462 1463 1 1463 1460 1 1355 1464 1
		 1462 1464 1 1434 1465 1 1464 1465 1 1465 1463 1 1464 1452 1 1455 1465 1 1466 1467 1
		 1467 1351 1 1352 1468 1 1468 1469 1 1469 1470 1 1470 1466 1 1471 1487 1 1472 1358 1
		 1359 1491 1 1473 1474 1 1474 1475 1 1489 1471 1 1476 1481 1 1477 1482 1 1476 1477 1
		 1478 1483 1 1477 1478 1 1478 1366 1 1479 1484 1 1367 1479 1 1480 1485 1 1479 1480 1
		 1480 1476 1 1481 1475 1 1482 1474 1 1481 1482 1 1483 1473 1 1482 1483 1 1490 1373 1
		 1484 1472 1 1374 1484 1 1485 1471 1 1486 1485 1 1485 1488 1 1479 1486 1 1486 1487 1
		 1488 1489 1 1476 1488 1 1490 1491 1 1478 1490 1 1484 1492 1 1472 1493 1 1492 1493 1
		 1487 1494 1 1493 1494 1 1486 1495 1 1495 1494 1 1492 1495 1 1479 1496 1 1496 1495 1
		 1496 1492 1 1481 1497 1 1475 1498 1 1497 1498 1 1488 1499 1 1497 1499 1 1489 1500 1
		 1499 1500 1 1498 1500 1 1476 1501 1 1501 1497 1 1501 1499 1 1483 1502 1 1473 1503 1
		 1502 1503 1 1491 1504 1 1503 1504 1 1490 1505 1 1505 1504 1 1502 1505 1 1478 1506 1;
	setAttr ".ed[2988:3153]" 1506 1505 1 1506 1502 1 1471 1507 1 1487 1508 1 1507 1508 1
		 1472 1509 1 1509 1401 1 1491 1510 1 1402 1510 1 1473 1511 1 1474 1512 1 1511 1512 1
		 1475 1513 1 1512 1513 1 1489 1514 1 1514 1507 1 1493 1515 1 1509 1515 1 1494 1516 1
		 1508 1516 1 1515 1516 1 1498 1517 1 1513 1517 1 1500 1518 1 1514 1518 1 1517 1518 1
		 1503 1519 1 1511 1519 1 1504 1520 1 1510 1520 1 1519 1520 1 1509 1493 1 1494 1508 1
		 1498 1513 1 1514 1500 1 1511 1503 1 1504 1510 1 1507 1521 1 1508 1522 1 1521 1522 1
		 1509 1523 1 1523 1417 1 1510 1524 1 1418 1524 1 1511 1525 1 1512 1526 1 1525 1526 1
		 1513 1527 1 1526 1527 1 1514 1528 1 1528 1521 1 1515 1529 1 1523 1529 1 1516 1530 1
		 1522 1530 1 1529 1530 1 1517 1531 1 1527 1531 1 1518 1532 1 1528 1532 1 1531 1532 1
		 1519 1533 1 1525 1533 1 1520 1534 1 1524 1534 1 1533 1534 1 1521 1430 1 1522 1430 1
		 1523 1430 1 1524 1430 1 1525 1430 1 1526 1430 1 1527 1430 1 1528 1430 1 1529 1430 1
		 1530 1430 1 1531 1430 1 1532 1430 1 1533 1430 1 1534 1430 1 1535 1479 1 1431 1535 1
		 1536 1480 1 1535 1536 1 1537 1476 1 1536 1537 1 1538 1477 1 1537 1538 1 1539 1478 1
		 1538 1539 1 1539 1437 1 1466 1548 1 1467 1549 1 1540 1541 0 1541 1440 0 1468 1545 1
		 1441 1542 0 1469 1546 1 1542 1543 0 1470 1547 1 1543 1544 0 1544 1540 0 1545 1542 1
		 1445 1545 1 1546 1543 1 1545 1546 1 1547 1544 1 1546 1547 1 1548 1540 1 1547 1548 1
		 1549 1541 1 1548 1549 1 1549 1451 1 1466 1550 1 1467 1551 1 1550 1551 1 1535 1552 1
		 1551 1552 1 1536 1553 1 1552 1553 1 1550 1553 1 1551 1456 1 1457 1552 1 1468 1554 1
		 1458 1554 1 1539 1555 1 1554 1555 1 1555 1461 1 1469 1556 1 1554 1556 1 1538 1557 1
		 1556 1557 1 1557 1555 1 1470 1558 1 1556 1558 1 1537 1559 1 1558 1559 1 1559 1557 1
		 1558 1550 1 1553 1559 1 1596 1574 1 1574 1560 1 1601 1580 1 1580 1642 1 1604 1586 1
		 1586 1562 1 1560 1575 1 1575 1597 1 1600 1579 1 1579 1561 1 1561 1582 1 1582 1602 1
		 1602 1585 1 1585 1562 1 1562 1588 1 1588 1606 1 1606 1591 1 1591 1560 1 1596 1573 1
		 1573 1568 1 1574 1599 1 1599 1573 1 1575 1599 1 1597 1576 1 1576 1599 1 1576 1568 1;
	setAttr ".ed[3154:3319]" 1600 1577 1 1577 1569 1 1577 1622 1 1564 1578 1 1578 1616 1
		 1579 1620 1 1580 1564 1 1601 1578 1 1601 1581 1 1581 1570 1 1566 1643 1 1582 1566 1
		 1602 1583 1 1583 1566 1 1583 1570 1 1583 1567 1 1567 1584 1 1584 1570 1 1585 1567 1
		 1586 1567 1 1604 1584 1 1604 1587 1 1587 1571 1 1586 1605 1 1605 1587 1 1588 1605 1
		 1606 1589 1 1589 1605 1 1589 1571 1 1589 1598 1 1598 1590 1 1590 1571 1 1591 1598 1
		 1574 1598 1 1596 1590 1 1591 1563 1 1606 1592 1 1592 1563 1 1592 1572 1 1572 1593 1
		 1593 1563 1 1588 1603 1 1603 1592 1 1585 1603 1 1602 1594 1 1594 1603 1 1594 1572 1
		 1594 1646 1 1565 1595 1 1595 1636 1 1582 1565 1 1579 1638 1 1600 1640 1 1593 1597 1
		 1563 1575 1 1595 1607 1 1572 1608 1 1607 1635 1 1640 1627 1 1609 1626 1 1607 1610 1
		 1608 1610 1 1609 1610 1 1593 1658 1 1611 1612 1 1593 1650 1 1612 1652 1 1613 1660 1
		 1613 1615 1 1614 1615 1 1616 1623 1 1617 1564 1 1618 1564 1 1616 1617 1 1617 1619 1
		 1619 1618 1 1600 1621 1 1620 1618 1 1621 1619 1 1620 1621 1 1622 1617 1 1621 1622 1
		 1623 1569 1 1622 1623 1 1608 1625 1 1572 1624 1 1624 1611 1 1625 1666 1 1624 1625 1
		 1625 1610 1 1626 1680 1 1626 1610 1 1627 1600 1 1609 1634 1 1577 1628 1 1627 1628 1
		 1569 1629 1 1628 1629 1 1611 1627 1 1630 1612 1 1631 1614 1 1624 1630 1 1630 1651 1
		 1631 1615 1 1632 1626 1 1633 1609 1 1634 1641 1 1634 1611 1 1632 1633 1 1633 1634 1
		 1634 1624 1 1635 1644 1 1636 1645 1 1637 1565 1 1610 1635 1 1635 1636 1 1636 1637 1
		 1637 1602 1 1638 1565 1 1639 1595 1 1639 1632 1 1620 1561 1 1561 1638 1 1638 1639 1
		 1639 1626 1 1579 1640 1 1640 1665 1 1641 1633 1 1638 1640 1 1640 1641 1 1641 1611 1
		 1627 1641 1 1642 1561 1 1561 1566 1 1566 1642 1 1642 1618 1 1643 1581 1 1580 1643 1
		 1643 1583 1 1644 1608 1 1645 1572 1 1646 1637 1 1610 1644 1 1644 1645 1 1645 1646 1
		 1646 1602 1 1613 1661 1 1593 1663 1 1647 1654 1 1648 1656 1 1615 1647 1 1647 1653 1
		 1648 1649 1 1593 1664 1 1649 1657 1 1650 1613 1 1651 1631 1 1652 1614 1 1653 1648 1
		 1650 1659 1 1651 1652 1 1652 1655 1 1653 1662 1 1654 1614 1 1655 1653 1 1656 1612 1;
	setAttr ".ed[3320:3485]" 1657 1611 1 1615 1654 1 1654 1655 1 1655 1656 1 1656 1657 1
		 1658 1674 1 1659 1678 1 1660 1677 1 1572 1658 1 1658 1659 1 1659 1660 1 1660 1615 1
		 1661 1647 1 1662 1650 1 1663 1648 1 1664 1649 1 1615 1661 1 1661 1662 1 1662 1663 1
		 1663 1664 1 1665 1632 1 1665 1639 1 1641 1665 1 1665 1638 1 1666 1609 1 1634 1666 1
		 1666 1610 1 1659 1667 1 1658 1667 1 1651 1668 1 1630 1668 1 1667 1675 1 1659 1669 1
		 1651 1670 1 1669 1679 1 1667 1671 1 1669 1671 1 1668 1672 1 1671 1676 1 1670 1672 1
		 1669 1673 1 1670 1673 1 1671 1673 1 1672 1673 1 1674 1630 1 1675 1668 1 1676 1672 1
		 1624 1674 1 1674 1675 1 1675 1676 1 1676 1673 1 1572 1674 1 1677 1631 1 1678 1651 1
		 1679 1670 1 1615 1677 1 1677 1678 1 1678 1679 1 1679 1673 1 1680 1607 1 1639 1680 1
		 1680 1610 1 1597 1681 1 1576 1682 1 1681 1682 1 1568 1683 1 1682 1683 1 1664 1681 1
		 1627 1684 1 1684 1629 1 1628 1684 1 1664 1685 1 1649 1685 1 1681 1685 1 1682 1685 1
		 1683 1685 1 1657 1627 1 1627 1686 1 1649 1686 1 1657 1686 1 1684 1686 1 1685 1686 1
		 1596 1696 1 1696 1687 1 1601 1701 1 1701 1753 1 1604 1705 1 1705 1689 1 1687 1697 1
		 1697 1713 1 1716 1700 1 1700 1688 1 1688 1702 1 1702 1717 1 1717 1704 1 1704 1689 1
		 1689 1706 1 1706 1720 1 1720 1708 1 1708 1687 1 1696 1715 1 1715 1573 1 1697 1715 1
		 1713 1698 1 1698 1715 1 1698 1568 1 1716 1699 1 1699 1569 1 1699 1735 1 1691 1578 1
		 1700 1733 1 1701 1691 1 1693 1754 1 1702 1693 1 1717 1703 1 1703 1693 1 1703 1570 1
		 1703 1694 1 1694 1584 1 1704 1694 1 1705 1694 1 1705 1719 1 1719 1587 1 1706 1719 1
		 1720 1707 1 1707 1719 1 1707 1571 1 1707 1714 1 1714 1590 1 1708 1714 1 1696 1714 1
		 1708 1690 1 1720 1709 1 1709 1690 1 1709 1695 1 1695 1710 1 1710 1690 1 1706 1718 1
		 1718 1709 1 1704 1718 1 1717 1711 1 1711 1718 1 1711 1695 1 1711 1757 1 1692 1712 1
		 1712 1747 1 1702 1692 1 1700 1749 1 1716 1751 1 1710 1713 1 1690 1697 1 1712 1721 1
		 1695 1722 1 1721 1746 1 1751 1739 1 1723 1738 1 1721 1724 1 1722 1724 1 1723 1724 1
		 1710 1769 1 1725 1726 1 1710 1761 1 1726 1763 1 1727 1771 1 1727 1729 1 1728 1729 1;
	setAttr ".ed[3486:3651]" 1730 1691 1 1731 1691 1 1616 1730 1 1730 1732 1 1732 1731 1
		 1716 1734 1 1733 1731 1 1734 1732 1 1733 1734 1 1735 1730 1 1734 1735 1 1735 1623 1
		 1722 1737 1 1695 1736 1 1736 1725 1 1737 1777 1 1736 1737 1 1737 1724 1 1738 1791 1
		 1738 1724 1 1739 1716 1 1723 1745 1 1699 1740 1 1739 1740 1 1740 1629 1 1725 1739 1
		 1741 1726 1 1742 1728 1 1736 1741 1 1741 1762 1 1742 1729 1 1743 1738 1 1744 1723 1
		 1745 1752 1 1745 1725 1 1743 1744 1 1744 1745 1 1745 1736 1 1746 1755 1 1747 1756 1
		 1748 1692 1 1724 1746 1 1746 1747 1 1747 1748 1 1748 1717 1 1749 1692 1 1750 1712 1
		 1750 1743 1 1733 1688 1 1688 1749 1 1749 1750 1 1750 1738 1 1700 1751 1 1751 1776 1
		 1752 1744 1 1749 1751 1 1751 1752 1 1752 1725 1 1739 1752 1 1753 1688 1 1688 1693 1
		 1693 1753 1 1753 1731 1 1754 1581 1 1701 1754 1 1754 1703 1 1755 1722 1 1756 1695 1
		 1757 1748 1 1724 1755 1 1755 1756 1 1756 1757 1 1757 1717 1 1727 1772 1 1710 1774 1
		 1758 1765 1 1759 1767 1 1729 1758 1 1758 1764 1 1759 1760 1 1710 1775 1 1760 1768 1
		 1761 1727 1 1762 1742 1 1763 1728 1 1764 1759 1 1761 1770 1 1762 1763 1 1763 1766 1
		 1764 1773 1 1765 1728 1 1766 1764 1 1767 1726 1 1768 1725 1 1729 1765 1 1765 1766 1
		 1766 1767 1 1767 1768 1 1769 1785 1 1770 1789 1 1771 1788 1 1695 1769 1 1769 1770 1
		 1770 1771 1 1771 1729 1 1772 1758 1 1773 1761 1 1774 1759 1 1775 1760 1 1729 1772 1
		 1772 1773 1 1773 1774 1 1774 1775 1 1776 1743 1 1776 1750 1 1752 1776 1 1776 1749 1
		 1777 1723 1 1745 1777 1 1777 1724 1 1770 1778 1 1769 1778 1 1762 1779 1 1741 1779 1
		 1778 1786 1 1770 1780 1 1762 1781 1 1780 1790 1 1778 1782 1 1780 1782 1 1779 1783 1
		 1782 1787 1 1781 1783 1 1780 1784 1 1781 1784 1 1782 1784 1 1783 1784 1 1785 1741 1
		 1786 1779 1 1787 1783 1 1736 1785 1 1785 1786 1 1786 1787 1 1787 1784 1 1695 1785 1
		 1788 1742 1 1789 1762 1 1790 1781 1 1729 1788 1 1788 1789 1 1789 1790 1 1790 1784 1
		 1791 1721 1 1750 1791 1 1791 1724 1 1713 1792 1 1698 1793 1 1792 1793 1 1793 1683 1
		 1775 1792 1 1739 1684 1 1740 1684 1 1775 1685 1 1760 1685 1 1792 1685 1 1793 1685 1;
	setAttr ".ed[3652:3695]" 1768 1739 1 1739 1686 1 1760 1686 1 1768 1686 1 1794 1795 0
		 1795 1796 0 1796 1797 0 1797 1798 0 1798 1799 0 1799 1800 0 1800 1801 0 1801 1794 0
		 1802 1803 0 1803 1804 0 1804 1805 0 1805 1806 0 1806 1807 0 1807 1808 0 1808 1809 0
		 1809 1802 0 1794 1802 1 1795 1803 1 1796 1804 1 1797 1805 1 1798 1806 1 1799 1807 1
		 1800 1808 1 1801 1809 1 1810 1794 1 1810 1795 1 1810 1796 1 1810 1797 1 1810 1798 1
		 1810 1799 1 1810 1800 1 1810 1801 1 1802 1811 1 1803 1811 1 1804 1811 1 1805 1811 1
		 1806 1811 1 1807 1811 1 1808 1811 1 1809 1811 1;
	setAttr -s 1910 -ch 7246 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 2 3
		f 4 1 86 -14 -86
		mu 0 4 1 4 5 2
		f 4 2 87 -15 -87
		mu 0 4 4 6 7 5
		f 4 3 88 -16 -88
		mu 0 4 6 8 9 7
		f 4 4 89 -17 -89
		mu 0 4 8 10 11 9
		f 4 5 90 -18 -90
		mu 0 4 12 13 14 15
		f 4 6 91 -19 -91
		mu 0 4 13 16 17 14
		f 4 7 92 -20 -92
		mu 0 4 16 18 19 17
		f 4 8 93 -21 -93
		mu 0 4 18 20 21 19
		f 4 9 94 -22 -94
		mu 0 4 20 22 23 21
		f 4 10 95 -23 -95
		mu 0 4 22 24 25 23
		f 4 11 84 -24 -96
		mu 0 4 26 0 3 27
		f 4 12 97 -25 -97
		mu 0 4 3 2 28 29
		f 4 13 98 -26 -98
		mu 0 4 2 5 30 28
		f 4 14 99 -27 -99
		mu 0 4 5 7 31 30
		f 4 15 100 -28 -100
		mu 0 4 7 9 32 31
		f 4 16 101 -29 -101
		mu 0 4 9 11 33 32
		f 4 17 102 -30 -102
		mu 0 4 15 14 34 35
		f 4 18 103 -31 -103
		mu 0 4 14 17 36 34
		f 4 19 104 -32 -104
		mu 0 4 17 19 37 36
		f 4 20 105 -33 -105
		mu 0 4 19 21 38 37
		f 4 21 106 -34 -106
		mu 0 4 21 23 39 38
		f 4 22 107 -35 -107
		mu 0 4 23 25 40 39
		f 4 23 96 -36 -108
		mu 0 4 27 3 29 41
		f 4 24 109 -37 -109
		mu 0 4 29 28 42 43
		f 4 25 110 -38 -110
		mu 0 4 28 30 44 42
		f 4 26 111 -39 -111
		mu 0 4 30 31 45 44
		f 4 27 112 -40 -112
		mu 0 4 31 32 46 45
		f 4 28 113 -41 -113
		mu 0 4 32 33 47 46
		f 4 29 114 -42 -114
		mu 0 4 35 34 48 49
		f 4 30 115 -43 -115
		mu 0 4 34 36 50 48
		f 4 31 116 -44 -116
		mu 0 4 36 37 51 50
		f 4 32 117 -45 -117
		mu 0 4 37 38 52 51
		f 4 33 118 -46 -118
		mu 0 4 38 39 53 52
		f 4 34 119 -47 -119
		mu 0 4 39 40 54 53
		f 4 35 108 -48 -120
		mu 0 4 41 29 43 55
		f 4 36 121 -49 -121
		mu 0 4 43 42 56 57
		f 4 37 122 -50 -122
		mu 0 4 42 44 58 56
		f 4 38 123 -51 -123
		mu 0 4 44 45 59 58
		f 4 39 124 -52 -124
		mu 0 4 45 46 60 59
		f 4 40 125 -53 -125
		mu 0 4 46 47 61 60
		f 4 41 126 -54 -126
		mu 0 4 49 48 62 63
		f 4 42 127 -55 -127
		mu 0 4 48 50 64 62
		f 4 43 128 -56 -128
		mu 0 4 50 51 65 64
		f 4 44 129 -57 -129
		mu 0 4 51 52 66 65
		f 4 45 130 -58 -130
		mu 0 4 52 53 67 66
		f 4 46 131 -59 -131
		mu 0 4 53 54 68 67
		f 4 47 120 -60 -132
		mu 0 4 55 43 57 69
		f 4 48 133 -61 -133
		mu 0 4 57 56 70 71
		f 4 49 134 -62 -134
		mu 0 4 56 58 72 70
		f 4 50 135 -63 -135
		mu 0 4 58 59 73 72
		f 4 51 136 -64 -136
		mu 0 4 59 60 74 73
		f 4 52 137 -65 -137
		mu 0 4 60 61 75 74
		f 4 53 138 -66 -138
		mu 0 4 63 62 76 77
		f 4 54 139 -67 -139
		mu 0 4 62 64 78 76
		f 4 55 140 -68 -140
		mu 0 4 64 65 79 78
		f 4 56 141 -69 -141
		mu 0 4 65 66 80 79
		f 4 57 142 -70 -142
		mu 0 4 66 67 81 80
		f 4 58 143 -71 -143
		mu 0 4 67 68 82 81
		f 4 59 132 -72 -144
		mu 0 4 69 57 71 83
		f 4 60 145 -73 -145
		mu 0 4 71 70 84 85
		f 4 61 146 -74 -146
		mu 0 4 70 72 86 84
		f 4 62 147 -75 -147
		mu 0 4 72 73 87 86
		f 4 63 148 -76 -148
		mu 0 4 73 74 88 87
		f 4 64 149 -77 -149
		mu 0 4 74 75 89 88
		f 4 65 150 -78 -150
		mu 0 4 77 76 90 91
		f 4 66 151 -79 -151
		mu 0 4 76 78 92 90
		f 4 67 152 -80 -152
		mu 0 4 78 79 93 92
		f 4 68 153 -81 -153
		mu 0 4 79 80 94 93
		f 4 69 154 -82 -154
		mu 0 4 80 81 95 94
		f 4 70 155 -83 -155
		mu 0 4 81 82 96 95
		f 4 71 144 -84 -156
		mu 0 4 83 71 85 97
		f 3 -1 -157 157
		mu 0 3 1 0 98
		f 3 -2 -158 158
		mu 0 3 4 1 98
		f 3 -3 -159 159
		mu 0 3 6 4 98
		f 3 -4 -160 160
		mu 0 3 8 6 98
		f 3 -5 -161 161
		mu 0 3 10 8 98
		f 3 -6 -162 162
		mu 0 3 13 12 99
		f 3 -7 -163 163
		mu 0 3 16 13 99
		f 3 -8 -164 164
		mu 0 3 18 16 99
		f 3 -9 -165 165
		mu 0 3 20 18 99
		f 3 -10 -166 166
		mu 0 3 22 20 99
		f 3 -11 -167 167
		mu 0 3 24 22 99
		f 3 -12 -168 156
		mu 0 3 0 26 98
		f 4 72 169 192 -169
		mu 0 4 85 84 100 101
		f 4 73 170 193 -170
		mu 0 4 84 86 102 100
		f 4 74 171 194 -171
		mu 0 4 86 87 103 102
		f 4 75 172 195 -172
		mu 0 4 87 88 104 103
		f 4 76 173 196 -173
		mu 0 4 88 89 105 104
		f 4 77 174 197 -174
		mu 0 4 91 90 106 107
		f 4 78 175 198 -175
		mu 0 4 90 92 108 106
		f 4 79 176 199 -176
		mu 0 4 92 93 109 108
		f 4 80 177 200 -177
		mu 0 4 93 94 110 109
		f 4 81 178 201 -178
		mu 0 4 94 95 111 110
		f 4 82 179 202 -179
		mu 0 4 95 96 112 111
		f 4 83 168 203 -180
		mu 0 4 97 85 101 113
		f 3 -193 181 -181
		mu 0 3 101 100 114
		f 3 -194 182 -182
		mu 0 3 100 102 114
		f 3 -195 183 -183
		mu 0 3 102 103 114
		f 3 -196 184 -184
		mu 0 3 103 104 114
		f 3 -197 185 -185
		mu 0 3 104 105 114
		f 3 -198 186 -186
		mu 0 3 107 106 115
		f 3 -199 187 -187
		mu 0 3 106 108 115
		f 3 -200 188 -188
		mu 0 3 108 109 115
		f 3 -201 189 -189
		mu 0 3 109 110 115
		f 3 -202 190 -190
		mu 0 3 110 111 115
		f 3 -203 191 -191
		mu 0 3 111 112 115
		f 3 -204 180 -192
		mu 0 3 113 101 114
		f 4 204 255 -215 -255
		mu 0 4 116 117 118 119
		f 4 205 256 -216 -256
		mu 0 4 117 120 121 118
		f 4 206 257 -217 -257
		mu 0 4 120 122 123 121
		f 4 207 258 -218 -258
		mu 0 4 122 124 125 123
		f 4 208 259 -219 -259
		mu 0 4 124 126 127 125
		f 4 209 260 -220 -260
		mu 0 4 128 129 130 131
		f 4 210 261 -221 -261
		mu 0 4 129 132 133 130
		f 4 211 262 -222 -262
		mu 0 4 132 134 135 133
		f 4 212 263 -223 -263
		mu 0 4 136 137 138 139
		f 4 213 254 -224 -264
		mu 0 4 137 116 119 138
		f 4 214 265 -225 -265
		mu 0 4 119 118 140 141
		f 4 215 266 -226 -266
		mu 0 4 118 121 142 140
		f 4 216 267 -227 -267
		mu 0 4 121 123 143 142
		f 4 217 268 -228 -268
		mu 0 4 123 125 144 143
		f 4 218 269 -229 -269
		mu 0 4 125 127 145 144
		f 4 219 270 -230 -270
		mu 0 4 131 130 146 147
		f 4 220 271 -231 -271
		mu 0 4 130 133 148 146
		f 4 221 272 -232 -272
		mu 0 4 133 135 149 148
		f 4 222 273 -233 -273
		mu 0 4 139 138 150 151
		f 4 223 264 -234 -274
		mu 0 4 138 119 141 150
		f 4 224 275 -235 -275
		mu 0 4 141 140 152 153
		f 4 225 276 -236 -276
		mu 0 4 140 142 154 152
		f 4 226 277 -237 -277
		mu 0 4 142 143 155 154
		f 4 227 278 -238 -278
		mu 0 4 143 144 156 155
		f 4 228 279 -239 -279
		mu 0 4 144 145 157 156
		f 4 229 280 -240 -280
		mu 0 4 147 146 158 159
		f 4 230 281 -241 -281
		mu 0 4 146 148 160 158
		f 4 231 282 -242 -282
		mu 0 4 148 149 161 160
		f 4 232 283 -243 -283
		mu 0 4 151 150 162 163
		f 4 233 274 -244 -284
		mu 0 4 150 141 153 162
		f 4 234 285 -245 -285
		mu 0 4 153 152 164 165
		f 4 235 286 -246 -286
		mu 0 4 152 154 166 164
		f 4 236 287 -247 -287
		mu 0 4 154 155 167 166
		f 4 237 288 -248 -288
		mu 0 4 155 156 168 167
		f 4 238 289 -249 -289
		mu 0 4 156 157 169 168
		f 4 239 290 -250 -290
		mu 0 4 159 158 170 171
		f 4 240 291 -251 -291
		mu 0 4 158 160 172 170
		f 4 241 292 -252 -292
		mu 0 4 160 161 173 172
		f 4 242 293 -253 -293
		mu 0 4 163 162 174 175
		f 4 243 284 -254 -294
		mu 0 4 162 153 165 174
		f 3 -205 -295 295
		mu 0 3 117 116 176
		f 3 -206 -296 296
		mu 0 3 120 117 176
		f 3 -207 -297 297
		mu 0 3 122 120 176
		f 3 -208 -298 298
		mu 0 3 124 122 176
		f 3 -209 -299 299
		mu 0 3 126 124 176
		f 3 -210 -300 300
		mu 0 3 129 128 177
		f 3 -211 -301 301
		mu 0 3 132 129 177
		f 3 -212 -302 302
		mu 0 3 134 132 177
		f 3 -213 -303 303
		mu 0 3 137 136 176
		f 3 -214 -304 294
		mu 0 3 116 137 176
		f 4 404 314 -406 -415
		mu 0 4 178 181 180 179
		f 4 405 315 -407 -416
		mu 0 4 179 180 183 182
		f 4 406 316 -408 -417
		mu 0 4 182 183 185 184
		f 4 407 317 -409 -418
		mu 0 4 184 185 187 186
		f 4 408 318 -410 -419
		mu 0 4 186 187 189 188
		f 4 409 319 -411 -420
		mu 0 4 190 193 192 191
		f 4 410 320 -412 -421
		mu 0 4 191 192 195 194
		f 4 411 321 -413 -422
		mu 0 4 194 195 197 196
		f 4 412 322 -414 -423
		mu 0 4 198 201 200 199
		f 4 413 323 -405 -424
		mu 0 4 199 200 181 178
		f 4 364 324 -366 -315
		mu 0 4 181 203 202 180
		f 4 365 325 -367 -316
		mu 0 4 180 202 204 183
		f 4 366 326 -368 -317
		mu 0 4 183 204 205 185
		f 4 367 327 -369 -318
		mu 0 4 185 205 206 187
		f 4 368 328 -370 -319
		mu 0 4 187 206 207 189
		f 4 369 329 -371 -320
		mu 0 4 193 209 208 192
		f 4 370 330 -372 -321
		mu 0 4 192 208 210 195
		f 4 371 331 -373 -322
		mu 0 4 195 210 211 197
		f 4 372 332 -374 -323
		mu 0 4 201 213 212 200
		f 4 373 333 -365 -324
		mu 0 4 200 212 203 181
		f 4 374 334 -376 -325
		mu 0 4 203 215 214 202
		f 4 375 335 -377 -326
		mu 0 4 202 214 216 204
		f 4 376 336 -378 -327
		mu 0 4 204 216 217 205
		f 4 377 337 -379 -328
		mu 0 4 205 217 218 206
		f 4 378 338 -380 -329
		mu 0 4 206 218 219 207
		f 4 379 339 -381 -330
		mu 0 4 209 221 220 208
		f 4 380 340 -382 -331
		mu 0 4 208 220 222 210
		f 4 381 341 -383 -332
		mu 0 4 210 222 223 211
		f 4 382 342 -384 -333
		mu 0 4 213 225 224 212
		f 4 383 343 -375 -334
		mu 0 4 212 224 215 203
		f 4 384 344 -386 -335
		mu 0 4 215 227 226 214
		f 4 385 345 -387 -336
		mu 0 4 214 226 228 216
		f 4 386 346 -388 -337
		mu 0 4 216 228 229 217
		f 4 387 347 -389 -338
		mu 0 4 217 229 230 218
		f 4 388 348 -390 -339
		mu 0 4 218 230 231 219
		f 4 389 349 -391 -340
		mu 0 4 221 233 232 220
		f 4 390 350 -392 -341
		mu 0 4 220 232 234 222
		f 4 391 351 -393 -342
		mu 0 4 222 234 235 223
		f 4 392 352 -394 -343
		mu 0 4 225 237 236 224
		f 4 393 353 -385 -344
		mu 0 4 224 236 227 215
		f 3 -396 394 304
		mu 0 3 238 240 239
		f 3 -397 395 305
		mu 0 3 241 240 238
		f 3 -398 396 306
		mu 0 3 242 240 241
		f 3 -399 397 307
		mu 0 3 243 240 242
		f 3 -400 398 308
		mu 0 3 244 240 243
		f 3 -401 399 309
		mu 0 3 245 247 246
		f 3 -402 400 310
		mu 0 3 248 247 245
		f 3 -403 401 311
		mu 0 3 249 247 248
		f 3 -404 402 312
		mu 0 3 250 240 251
		f 3 -395 403 313
		mu 0 3 239 240 250
		f 4 354 414 -356 -305
		mu 0 4 239 178 179 238
		f 4 355 415 -357 -306
		mu 0 4 238 179 182 241
		f 4 356 416 -358 -307
		mu 0 4 241 182 184 242
		f 4 357 417 -359 -308
		mu 0 4 242 184 186 243
		f 4 358 418 -360 -309
		mu 0 4 243 186 188 244
		f 4 359 419 -361 -310
		mu 0 4 246 190 191 245
		f 4 360 420 -362 -311
		mu 0 4 245 191 194 248
		f 4 361 421 -363 -312
		mu 0 4 248 194 196 249
		f 4 362 422 -364 -313
		mu 0 4 251 198 199 250
		f 4 363 423 -355 -314
		mu 0 4 250 199 178 239
		f 4 424 475 -435 -475
		mu 0 4 252 253 254 255
		f 4 425 476 -436 -476
		mu 0 4 253 256 257 254
		f 4 426 477 -437 -477
		mu 0 4 256 258 259 257
		f 4 427 478 -438 -478
		mu 0 4 258 260 261 259
		f 4 428 479 -439 -479
		mu 0 4 260 262 263 261
		f 4 429 480 -440 -480
		mu 0 4 264 265 266 267
		f 4 430 481 -441 -481
		mu 0 4 265 268 269 266
		f 4 431 482 -442 -482
		mu 0 4 268 270 271 269
		f 4 432 483 -443 -483
		mu 0 4 272 273 274 275
		f 4 433 474 -444 -484
		mu 0 4 273 252 255 274
		f 4 434 485 -445 -485
		mu 0 4 255 254 276 277
		f 4 435 486 -446 -486
		mu 0 4 254 257 278 276
		f 4 436 487 -447 -487
		mu 0 4 257 259 279 278
		f 4 437 488 -448 -488
		mu 0 4 259 261 280 279
		f 4 438 489 -449 -489
		mu 0 4 261 263 281 280
		f 4 439 490 -450 -490
		mu 0 4 267 266 282 283
		f 4 440 491 -451 -491
		mu 0 4 266 269 284 282
		f 4 441 492 -452 -492
		mu 0 4 269 271 285 284
		f 4 442 493 -453 -493
		mu 0 4 275 274 286 287
		f 4 443 484 -454 -494
		mu 0 4 274 255 277 286
		f 4 444 495 -455 -495
		mu 0 4 277 276 288 289
		f 4 445 496 -456 -496
		mu 0 4 276 278 290 288
		f 4 446 497 -457 -497
		mu 0 4 278 279 291 290
		f 4 447 498 -458 -498
		mu 0 4 279 280 292 291
		f 4 448 499 -459 -499
		mu 0 4 280 281 293 292
		f 4 449 500 -460 -500
		mu 0 4 283 282 294 295
		f 4 450 501 -461 -501
		mu 0 4 282 284 296 294
		f 4 451 502 -462 -502
		mu 0 4 284 285 297 296
		f 4 452 503 -463 -503
		mu 0 4 287 286 298 299
		f 4 453 494 -464 -504
		mu 0 4 286 277 289 298
		f 4 454 505 -465 -505
		mu 0 4 289 288 300 301
		f 4 455 506 -466 -506
		mu 0 4 288 290 302 300
		f 4 456 507 -467 -507
		mu 0 4 290 291 303 302
		f 4 457 508 -468 -508
		mu 0 4 291 292 304 303
		f 4 458 509 -469 -509
		mu 0 4 292 293 305 304
		f 4 459 510 -470 -510
		mu 0 4 295 294 306 307
		f 4 460 511 -471 -511
		mu 0 4 294 296 308 306
		f 4 461 512 -472 -512
		mu 0 4 296 297 309 308
		f 4 462 513 -473 -513
		mu 0 4 299 298 310 311
		f 4 463 504 -474 -514
		mu 0 4 298 289 301 310
		f 3 -425 -515 515
		mu 0 3 253 252 312
		f 3 -426 -516 516
		mu 0 3 256 253 312
		f 3 -427 -517 517
		mu 0 3 258 256 312
		f 3 -428 -518 518
		mu 0 3 260 258 312
		f 3 -429 -519 519
		mu 0 3 262 260 312
		f 3 -430 -520 520
		mu 0 3 265 264 313
		f 3 -431 -521 521
		mu 0 3 268 265 313
		f 3 -432 -522 522
		mu 0 3 270 268 313
		f 3 -433 -523 523
		mu 0 3 273 272 312
		f 3 -434 -524 514
		mu 0 3 252 273 312
		f 4 524 546 547 -545
		mu 0 4 314 315 316 317
		f 4 525 530 548 -547
		mu 0 4 315 318 319 316
		f 4 -549 531 549 550
		mu 0 4 316 319 320 321
		f 4 -548 -551 551 -546
		mu 0 4 317 316 321 322
		f 4 -552 552 553 554
		mu 0 4 323 324 325 326
		f 4 -550 532 555 -553
		mu 0 4 324 327 328 325
		f 4 -623 623 -625 625
		mu 0 4 329 330 331 332
		f 4 -628 -626 -629 629
		mu 0 4 333 329 332 334
		f 4 628 633 634 -632
		mu 0 4 334 332 335 336
		f 4 624 636 637 -634
		mu 0 4 332 331 337 335
		f 4 -559 533 559 560
		mu 0 4 338 339 340 341
		f 4 -558 -561 561 -557
		mu 0 4 342 338 341 343
		f 4 -562 562 563 564
		mu 0 4 343 341 344 345
		f 4 -560 534 565 -563
		mu 0 4 341 340 346 344
		f 4 -566 535 -528 566
		mu 0 4 344 346 347 348
		f 4 -564 -567 -527 567
		mu 0 4 345 344 348 349
		f 4 526 570 571 -569
		mu 0 4 350 351 352 353
		f 4 527 536 572 -571
		mu 0 4 351 354 355 352
		f 4 -573 537 573 574
		mu 0 4 352 355 356 357
		f 4 -572 -575 575 -570
		mu 0 4 353 352 357 358
		f 4 -576 576 577 578
		mu 0 4 359 360 361 362
		f 4 -574 538 579 -577
		mu 0 4 360 363 364 361
		f 4 -580 539 -530 580
		mu 0 4 361 364 365 366
		f 4 -578 -581 -529 581
		mu 0 4 362 361 366 367
		f 4 528 584 585 -583
		mu 0 4 367 366 368 369
		f 4 529 540 586 -585
		mu 0 4 366 365 370 368
		f 4 -587 541 587 588
		mu 0 4 368 370 371 372
		f 4 -586 -589 589 -584
		mu 0 4 369 368 372 373
		f 4 -590 590 591 592
		mu 0 4 373 372 374 375
		f 4 -588 542 593 -591
		mu 0 4 372 371 376 374
		f 4 -594 543 -526 594
		mu 0 4 374 376 318 315
		f 4 -592 -595 -525 595
		mu 0 4 375 374 315 314
		f 4 -544 596 597 654
		mu 0 4 318 376 377 378
		f 4 -543 598 599 -597
		mu 0 4 376 371 379 377
		f 4 -600 600 601 602
		mu 0 4 377 379 380 381
		f 4 653 -598 -603 603
		mu 0 4 382 378 377 381
		f 4 -542 604 605 -599
		mu 0 4 371 370 383 379
		f 4 -541 -540 606 -605
		mu 0 4 370 365 364 383
		f 4 -607 -539 607 608
		mu 0 4 383 364 363 384
		f 4 -606 -609 609 -601
		mu 0 4 379 383 384 380
		f 4 -610 610 611 612
		mu 0 4 385 386 387 388
		f 4 -608 -538 613 -611
		mu 0 4 386 356 355 387
		f 4 -614 -537 644 641
		mu 0 4 389 390 347 391
		f 4 -612 -642 645 642
		mu 0 4 392 389 391 393
		f 4 652 -604 616 617
		mu 0 4 394 395 396 397
		f 4 -602 -613 618 -617
		mu 0 4 396 385 388 397
		f 4 -619 -643 646 643
		mu 0 4 398 392 393 399
		f 3 -639 640 -624
		mu 0 3 330 400 331
		f 3 -641 -640 -637
		mu 0 3 331 400 337
		f 4 -556 620 622 -622
		mu 0 4 401 402 330 329
		f 4 -554 621 627 -627
		mu 0 4 403 401 329 333
		f 4 557 630 -635 -633
		mu 0 4 338 342 336 335
		f 4 558 632 -638 -636
		mu 0 4 339 338 335 337
		f 4 651 -618 -644 647
		mu 0 4 400 404 398 399
		f 3 -645 -536 614
		mu 0 3 391 347 346
		f 4 -646 -615 -535 615
		mu 0 4 393 391 346 340
		f 4 -647 -616 -534 619
		mu 0 4 399 393 340 339
		f 3 655 -620 635
		mu 0 3 337 399 339
		f 4 -649 -652 638 -621
		mu 0 4 402 404 400 330
		f 4 -650 -653 648 -533
		mu 0 4 327 395 394 328
		f 4 -651 -654 649 -532
		mu 0 4 319 378 382 320
		f 3 -655 650 -531
		mu 0 3 318 378 319
		f 3 639 -648 -656
		mu 0 3 337 400 399
		f 4 544 -678 -677 -657
		mu 0 4 405 406 407 408
		f 4 676 -679 -663 -658
		mu 0 4 408 407 409 410
		f 4 -681 -680 -664 678
		mu 0 4 407 411 412 409
		f 4 545 -682 680 677
		mu 0 4 406 413 411 407
		f 4 -555 -684 -683 681
		mu 0 4 414 415 416 417
		f 4 682 -685 -665 679
		mu 0 4 417 416 418 419
		f 4 -744 742 -742 740
		mu 0 4 420 421 422 423
		f 4 -630 745 743 744
		mu 0 4 333 334 421 420
		f 4 631 -749 -748 -746
		mu 0 4 334 336 424 421
		f 4 747 -752 -751 -743
		mu 0 4 421 424 425 422
		f 4 -689 -688 -666 686
		mu 0 4 426 427 428 429
		f 4 556 -690 688 685
		mu 0 4 342 343 427 426
		f 4 -565 -692 -691 689
		mu 0 4 343 345 430 427
		f 4 690 -693 -667 687
		mu 0 4 427 430 431 428
		f 4 -694 659 -668 692
		mu 0 4 430 432 433 431
		f 4 -568 658 693 691
		mu 0 4 345 349 432 430
		f 4 568 -696 -695 -659
		mu 0 4 434 435 436 437
		f 4 694 -697 -669 -660
		mu 0 4 437 436 438 439
		f 4 -699 -698 -670 696
		mu 0 4 436 440 441 438
		f 4 569 -700 698 695
		mu 0 4 435 442 440 436
		f 4 -579 -702 -701 699
		mu 0 4 443 444 445 446
		f 4 700 -703 -671 697
		mu 0 4 446 445 447 448
		f 4 -704 661 -672 702
		mu 0 4 445 449 450 447
		f 4 -582 660 703 701
		mu 0 4 444 451 449 445
		f 4 582 -706 -705 -661
		mu 0 4 451 452 453 449
		f 4 704 -707 -673 -662
		mu 0 4 449 453 454 450
		f 4 -709 -708 -674 706
		mu 0 4 453 455 456 454
		f 4 583 -710 708 705
		mu 0 4 452 457 455 453
		f 4 -593 -712 -711 709
		mu 0 4 457 458 459 455
		f 4 710 -713 -675 707
		mu 0 4 455 459 460 456
		f 4 -714 657 -676 712
		mu 0 4 459 408 410 460
		f 4 -596 656 713 711
		mu 0 4 458 405 408 459
		f 4 -769 -716 -715 675
		mu 0 4 410 461 462 460
		f 4 714 -718 -717 674
		mu 0 4 460 462 463 456
		f 4 -721 -720 -719 717
		mu 0 4 462 464 465 463
		f 4 -722 720 715 -768
		mu 0 4 466 464 462 461
		f 4 716 -724 -723 673
		mu 0 4 456 463 467 454
		f 4 722 -725 671 672
		mu 0 4 454 467 447 450
		f 4 -727 -726 670 724
		mu 0 4 467 468 448 447
		f 4 718 -728 726 723
		mu 0 4 463 465 468 467
		f 4 -731 -730 -729 727
		mu 0 4 469 470 471 472
		f 4 728 -732 669 725
		mu 0 4 472 471 438 441
		f 4 -756 -759 668 731
		mu 0 4 473 474 433 475
		f 4 -757 -760 755 729
		mu 0 4 476 477 474 473
		f 4 -736 -735 721 -767
		mu 0 4 478 479 480 481
		f 4 734 -737 730 719
		mu 0 4 480 479 470 469
		f 4 -758 -761 756 736
		mu 0 4 482 483 477 476
		f 3 741 -755 752
		mu 0 3 423 422 484
		f 3 750 753 754
		mu 0 3 422 425 484
		f 4 739 -741 -739 684
		mu 0 4 485 420 423 486
		f 4 626 -745 -740 683
		mu 0 4 487 333 420 485
		f 4 746 748 -631 -686
		mu 0 4 426 424 336 342
		f 4 749 751 -747 -687
		mu 0 4 429 425 424 426
		f 4 -762 757 735 -766
		mu 0 4 484 483 482 488
		f 3 -733 667 758
		mu 0 3 474 431 433
		f 4 -734 666 732 759
		mu 0 4 477 428 431 474
		f 4 -738 665 733 760
		mu 0 4 483 429 428 477
		f 3 -750 737 -770
		mu 0 3 425 429 483
		f 4 738 -753 765 762
		mu 0 4 486 423 484 488
		f 4 664 -763 766 763
		mu 0 4 419 418 478 481
		f 4 663 -764 767 764
		mu 0 4 409 412 466 461
		f 3 662 -765 768
		mu 0 3 410 409 461
		f 3 769 761 -754
		mu 0 3 425 483 484
		f 4 824 816 793 794
		mu 0 4 489 490 491 492
		f 4 825 -799 799 -817
		mu 0 4 490 493 494 491
		f 4 811 800 778 -806
		mu 0 4 495 496 497 498
		f 4 838 831 836 -834
		mu 0 4 499 500 501 502
		f 4 810 822 -782 -805
		mu 0 4 503 504 505 506
		f 4 806 801 783 -801
		mu 0 4 496 507 508 497
		f 4 827 819 802 785
		mu 0 4 509 510 511 512
		f 4 808 803 -787 -803
		mu 0 4 511 513 499 512
		f 4 -779 787 789 -789
		mu 0 4 498 497 514 515
		f 3 -791 833 837
		mu 0 3 491 499 502
		f 4 781 823 -795 -793
		mu 0 4 506 505 489 492
		f 4 -784 795 796 -788
		mu 0 4 497 508 516 514
		f 4 826 -786 797 798
		mu 0 4 493 509 512 494
		f 4 786 790 -800 -798
		mu 0 4 512 499 491 494
		f 4 -774 782 -807 -777
		mu 0 4 517 518 507 496
		f 4 828 -775 784 -820
		mu 0 4 510 519 520 511
		f 4 775 779 -809 -785
		mu 0 4 520 521 513 511
		f 4 839 829 835 -832
		mu 0 4 500 522 523 501
		f 4 772 821 -811 -781
		mu 0 4 524 525 504 503
		f 4 -771 776 -812 -778
		mu 0 4 526 517 496 495
		f 4 -822 812 777 -814
		mu 0 4 527 528 526 495
		f 4 -823 813 805 -815
		mu 0 4 529 527 495 498
		f 4 -824 814 788 -816
		mu 0 4 530 529 498 515
		f 4 -790 791 -825 815
		mu 0 4 515 514 531 530
		f 4 -797 -818 -826 -792
		mu 0 4 514 516 532 531
		f 4 -819 -827 817 -796
		mu 0 4 508 533 532 516
		f 4 807 -828 818 -802
		mu 0 4 507 534 533 508
		f 4 -821 -829 -808 -783
		mu 0 4 518 535 534 507
		f 4 -836 830 780 -833
		mu 0 4 501 523 524 503
		f 4 -837 832 804 -835
		mu 0 4 502 501 503 506
		f 4 -838 834 792 -794
		mu 0 4 491 502 506 492
		f 3 842 840 -839
		mu 0 3 499 536 500
		f 4 843 841 -840 -841
		mu 0 4 536 537 522 500
		f 3 809 -843 -804
		mu 0 3 513 536 499
		f 4 771 -844 -810 -780
		mu 0 4 521 537 536 513
		f 4 -869 -868 -891 -899
		mu 0 4 538 539 540 541
		f 4 890 -874 872 -900
		mu 0 4 541 540 542 543
		f 4 879 -853 -875 -886
		mu 0 4 544 545 546 547
		f 4 907 -911 -906 -913
		mu 0 4 548 549 550 551
		f 4 878 855 -897 -885
		mu 0 4 552 553 554 555
		f 4 874 -858 -876 -881
		mu 0 4 547 546 556 557
		f 4 -860 -877 -894 -902
		mu 0 4 558 559 560 561
		f 4 876 860 -878 -883
		mu 0 4 560 559 548 562
		f 4 862 -864 -862 852
		mu 0 4 545 563 564 546
		f 3 -912 -908 864
		mu 0 3 540 549 548
		f 4 866 868 -898 -856
		mu 0 4 553 539 538 554
		f 4 861 -871 -870 857
		mu 0 4 546 564 565 556
		f 4 -873 -872 859 -901
		mu 0 4 543 542 559 558
		f 4 871 873 -865 -861
		mu 0 4 559 542 540 548
		f 4 850 880 -857 847
		mu 0 4 566 547 557 567
		f 4 893 -859 848 -903
		mu 0 4 561 560 568 569
		f 4 858 882 -854 -850
		mu 0 4 568 560 562 570
		f 4 905 -910 -904 -914
		mu 0 4 551 550 571 572
		f 4 854 884 -896 -847
		mu 0 4 573 552 555 574
		f 4 851 885 -851 844
		mu 0 4 575 544 547 566
		f 4 887 -852 -887 895
		mu 0 4 576 544 575 577
		f 4 888 -880 -888 896
		mu 0 4 578 545 544 576
		f 4 889 -863 -889 897
		mu 0 4 579 563 545 578
		f 4 -890 898 -866 863
		mu 0 4 563 579 580 564
		f 4 865 899 891 870
		mu 0 4 564 580 581 565
		f 4 869 -892 900 892
		mu 0 4 556 565 581 582
		f 4 875 -893 901 -882
		mu 0 4 557 556 582 583
		f 4 856 881 902 894
		mu 0 4 567 557 583 584
		f 4 906 -855 -905 909
		mu 0 4 550 552 573 571
		f 4 908 -879 -907 910
		mu 0 4 549 553 552 550
		f 4 867 -867 -909 911
		mu 0 4 540 539 553 549
		f 3 912 -915 -917
		mu 0 3 548 551 585
		f 4 914 913 -916 -918
		mu 0 4 585 551 572 586
		f 3 877 916 -884
		mu 0 3 562 548 585
		f 4 853 883 917 -846
		mu 0 4 570 562 585 586
		f 4 918 969 -929 -969
		mu 0 4 587 588 589 590
		f 4 919 970 -930 -970
		mu 0 4 588 591 592 589
		f 4 920 971 -931 -971
		mu 0 4 591 593 594 592
		f 4 921 972 -932 -972
		mu 0 4 593 595 596 594
		f 4 922 973 -933 -973
		mu 0 4 595 597 598 596
		f 4 923 974 -934 -974
		mu 0 4 599 600 601 602
		f 4 924 975 -935 -975
		mu 0 4 600 603 604 601
		f 4 925 976 -936 -976
		mu 0 4 603 605 606 604
		f 4 926 977 -937 -977
		mu 0 4 607 608 609 610
		f 4 927 968 -938 -978
		mu 0 4 608 587 590 609
		f 4 928 979 -939 -979
		mu 0 4 590 589 611 612
		f 4 929 980 -940 -980
		mu 0 4 589 592 613 611
		f 4 930 981 -941 -981
		mu 0 4 592 594 614 613
		f 4 931 982 -942 -982
		mu 0 4 594 596 615 614
		f 4 932 983 -943 -983
		mu 0 4 596 598 616 615
		f 4 933 984 -944 -984
		mu 0 4 602 601 617 618
		f 4 934 985 -945 -985
		mu 0 4 601 604 619 617
		f 4 935 986 -946 -986
		mu 0 4 604 606 620 619
		f 4 936 987 -947 -987
		mu 0 4 610 609 621 622
		f 4 937 978 -948 -988
		mu 0 4 609 590 612 621
		f 4 938 989 -949 -989
		mu 0 4 612 611 623 624
		f 4 939 990 -950 -990
		mu 0 4 611 613 625 623
		f 4 940 991 -951 -991
		mu 0 4 613 614 626 625
		f 4 941 992 -952 -992
		mu 0 4 614 615 627 626
		f 4 942 993 -953 -993
		mu 0 4 615 616 628 627
		f 4 943 994 -954 -994
		mu 0 4 618 617 629 630
		f 4 944 995 -955 -995
		mu 0 4 617 619 631 629
		f 4 945 996 -956 -996
		mu 0 4 619 620 632 631
		f 4 946 997 -957 -997
		mu 0 4 622 621 633 634
		f 4 947 988 -958 -998
		mu 0 4 621 612 624 633
		f 4 948 999 -959 -999
		mu 0 4 624 623 635 636
		f 4 949 1000 -960 -1000
		mu 0 4 623 625 637 635
		f 4 950 1001 -961 -1001
		mu 0 4 625 626 638 637
		f 4 951 1002 -962 -1002
		mu 0 4 626 627 639 638
		f 4 952 1003 -963 -1003
		mu 0 4 627 628 640 639
		f 4 953 1004 -964 -1004
		mu 0 4 630 629 641 642;
	setAttr ".fc[500:999]"
		f 4 954 1005 -965 -1005
		mu 0 4 629 631 643 641
		f 4 955 1006 -966 -1006
		mu 0 4 631 632 644 643
		f 4 956 1007 -967 -1007
		mu 0 4 634 633 645 646
		f 4 957 998 -968 -1008
		mu 0 4 633 624 636 645
		f 3 -919 -1009 1009
		mu 0 3 588 587 647
		f 3 -920 -1010 1010
		mu 0 3 591 588 647
		f 3 -921 -1011 1011
		mu 0 3 593 591 647
		f 3 -922 -1012 1012
		mu 0 3 595 593 647
		f 3 -923 -1013 1013
		mu 0 3 597 595 647
		f 3 -924 -1014 1014
		mu 0 3 600 599 648
		f 3 -925 -1015 1015
		mu 0 3 603 600 648
		f 3 -926 -1016 1016
		mu 0 3 605 603 648
		f 3 -927 -1017 1017
		mu 0 3 608 607 647
		f 3 -928 -1018 1008
		mu 0 3 587 608 647
		f 4 1018 1069 -1029 -1069
		mu 0 4 649 650 651 652
		f 4 1019 1070 -1030 -1070
		mu 0 4 650 653 654 651
		f 4 1020 1071 -1031 -1071
		mu 0 4 653 655 656 654
		f 4 1021 1072 -1032 -1072
		mu 0 4 655 657 658 656
		f 4 1022 1073 -1033 -1073
		mu 0 4 657 659 660 658
		f 4 1023 1074 -1034 -1074
		mu 0 4 661 662 663 664
		f 4 1024 1075 -1035 -1075
		mu 0 4 662 665 666 663
		f 4 1025 1076 -1036 -1076
		mu 0 4 665 667 668 666
		f 4 1026 1077 -1037 -1077
		mu 0 4 669 670 671 672
		f 4 1027 1068 -1038 -1078
		mu 0 4 670 649 652 671
		f 4 1028 1079 -1039 -1079
		mu 0 4 652 651 673 674
		f 4 1029 1080 -1040 -1080
		mu 0 4 651 654 675 673
		f 4 1030 1081 -1041 -1081
		mu 0 4 654 656 676 675
		f 4 1031 1082 -1042 -1082
		mu 0 4 656 658 677 676
		f 4 1032 1083 -1043 -1083
		mu 0 4 658 660 678 677
		f 4 1033 1084 -1044 -1084
		mu 0 4 664 663 679 680
		f 4 1034 1085 -1045 -1085
		mu 0 4 663 666 681 679
		f 4 1035 1086 -1046 -1086
		mu 0 4 666 668 682 681
		f 4 1036 1087 -1047 -1087
		mu 0 4 672 671 683 684
		f 4 1037 1078 -1048 -1088
		mu 0 4 671 652 674 683
		f 4 1038 1089 -1049 -1089
		mu 0 4 674 673 685 686
		f 4 1039 1090 -1050 -1090
		mu 0 4 673 675 687 685
		f 4 1040 1091 -1051 -1091
		mu 0 4 675 676 688 687
		f 4 1041 1092 -1052 -1092
		mu 0 4 676 677 689 688
		f 4 1042 1093 -1053 -1093
		mu 0 4 677 678 690 689
		f 4 1043 1094 -1054 -1094
		mu 0 4 680 679 691 692
		f 4 1044 1095 -1055 -1095
		mu 0 4 679 681 693 691
		f 4 1045 1096 -1056 -1096
		mu 0 4 681 682 694 693
		f 4 1046 1097 -1057 -1097
		mu 0 4 684 683 695 696
		f 4 1047 1088 -1058 -1098
		mu 0 4 683 674 686 695
		f 4 1048 1099 -1059 -1099
		mu 0 4 686 685 697 698
		f 4 1049 1100 -1060 -1100
		mu 0 4 685 687 699 697
		f 4 1050 1101 -1061 -1101
		mu 0 4 687 688 700 699
		f 4 1051 1102 -1062 -1102
		mu 0 4 688 689 701 700
		f 4 1052 1103 -1063 -1103
		mu 0 4 689 690 702 701
		f 4 1053 1104 -1064 -1104
		mu 0 4 692 691 703 704
		f 4 1054 1105 -1065 -1105
		mu 0 4 691 693 705 703
		f 4 1055 1106 -1066 -1106
		mu 0 4 693 694 706 705
		f 4 1056 1107 -1067 -1107
		mu 0 4 696 695 707 708
		f 4 1057 1098 -1068 -1108
		mu 0 4 695 686 698 707
		f 3 -1019 -1109 1109
		mu 0 3 650 649 709
		f 3 -1020 -1110 1110
		mu 0 3 653 650 709
		f 3 -1021 -1111 1111
		mu 0 3 655 653 709
		f 3 -1022 -1112 1112
		mu 0 3 657 655 709
		f 3 -1023 -1113 1113
		mu 0 3 659 657 709
		f 3 -1024 -1114 1114
		mu 0 3 662 661 710
		f 3 -1025 -1115 1115
		mu 0 3 665 662 710
		f 3 -1026 -1116 1116
		mu 0 3 667 665 710
		f 3 -1027 -1117 1117
		mu 0 3 670 669 709
		f 3 -1028 -1118 1108
		mu 0 3 649 670 709
		f 4 1228 1219 -1129 -1219
		mu 0 4 711 712 713 714
		f 4 1229 1220 -1130 -1220
		mu 0 4 712 715 716 713
		f 4 1230 1221 -1131 -1221
		mu 0 4 715 717 718 716
		f 4 1231 1222 -1132 -1222
		mu 0 4 717 719 720 718
		f 4 1232 1223 -1133 -1223
		mu 0 4 719 721 722 720
		f 4 1233 1224 -1134 -1224
		mu 0 4 723 724 725 726
		f 4 1234 1225 -1135 -1225
		mu 0 4 724 727 728 725
		f 4 1235 1226 -1136 -1226
		mu 0 4 727 729 730 728
		f 4 1236 1227 -1137 -1227
		mu 0 4 731 732 733 734
		f 4 1237 1218 -1138 -1228
		mu 0 4 732 711 714 733
		f 4 1128 1179 -1139 -1179
		mu 0 4 714 713 735 736
		f 4 1129 1180 -1140 -1180
		mu 0 4 713 716 737 735
		f 4 1130 1181 -1141 -1181
		mu 0 4 716 718 738 737
		f 4 1131 1182 -1142 -1182
		mu 0 4 718 720 739 738
		f 4 1132 1183 -1143 -1183
		mu 0 4 720 722 740 739
		f 4 1133 1184 -1144 -1184
		mu 0 4 726 725 741 742
		f 4 1134 1185 -1145 -1185
		mu 0 4 725 728 743 741
		f 4 1135 1186 -1146 -1186
		mu 0 4 728 730 744 743
		f 4 1136 1187 -1147 -1187
		mu 0 4 734 733 745 746
		f 4 1137 1178 -1148 -1188
		mu 0 4 733 714 736 745
		f 4 1138 1189 -1149 -1189
		mu 0 4 736 735 747 748
		f 4 1139 1190 -1150 -1190
		mu 0 4 735 737 749 747
		f 4 1140 1191 -1151 -1191
		mu 0 4 737 738 750 749
		f 4 1141 1192 -1152 -1192
		mu 0 4 738 739 751 750
		f 4 1142 1193 -1153 -1193
		mu 0 4 739 740 752 751
		f 4 1143 1194 -1154 -1194
		mu 0 4 742 741 753 754
		f 4 1144 1195 -1155 -1195
		mu 0 4 741 743 755 753
		f 4 1145 1196 -1156 -1196
		mu 0 4 743 744 756 755
		f 4 1146 1197 -1157 -1197
		mu 0 4 746 745 757 758
		f 4 1147 1188 -1158 -1198
		mu 0 4 745 736 748 757
		f 4 1148 1199 -1159 -1199
		mu 0 4 748 747 759 760
		f 4 1149 1200 -1160 -1200
		mu 0 4 747 749 761 759
		f 4 1150 1201 -1161 -1201
		mu 0 4 749 750 762 761
		f 4 1151 1202 -1162 -1202
		mu 0 4 750 751 763 762
		f 4 1152 1203 -1163 -1203
		mu 0 4 751 752 764 763
		f 4 1153 1204 -1164 -1204
		mu 0 4 754 753 765 766
		f 4 1154 1205 -1165 -1205
		mu 0 4 753 755 767 765
		f 4 1155 1206 -1166 -1206
		mu 0 4 755 756 768 767
		f 4 1156 1207 -1167 -1207
		mu 0 4 758 757 769 770
		f 4 1157 1198 -1168 -1208
		mu 0 4 757 748 760 769
		f 3 -1119 -1209 1209
		mu 0 3 771 772 773
		f 3 -1120 -1210 1210
		mu 0 3 774 771 773
		f 3 -1121 -1211 1211
		mu 0 3 775 774 773
		f 3 -1122 -1212 1212
		mu 0 3 776 775 773
		f 3 -1123 -1213 1213
		mu 0 3 777 776 773
		f 3 -1124 -1214 1214
		mu 0 3 778 779 780
		f 3 -1125 -1215 1215
		mu 0 3 781 778 780
		f 3 -1126 -1216 1216
		mu 0 3 782 781 780
		f 3 -1127 -1217 1217
		mu 0 3 783 784 773
		f 3 -1128 -1218 1208
		mu 0 3 772 783 773
		f 4 1118 1169 -1229 -1169
		mu 0 4 772 771 712 711
		f 4 1119 1170 -1230 -1170
		mu 0 4 771 774 715 712
		f 4 1120 1171 -1231 -1171
		mu 0 4 774 775 717 715
		f 4 1121 1172 -1232 -1172
		mu 0 4 775 776 719 717
		f 4 1122 1173 -1233 -1173
		mu 0 4 776 777 721 719
		f 4 1123 1174 -1234 -1174
		mu 0 4 779 778 724 723
		f 4 1124 1175 -1235 -1175
		mu 0 4 778 781 727 724
		f 4 1125 1176 -1236 -1176
		mu 0 4 781 782 729 727
		f 4 1126 1177 -1237 -1177
		mu 0 4 784 783 732 731
		f 4 1127 1168 -1238 -1178
		mu 0 4 783 772 711 732
		f 4 1299 1246 -1301 -1308
		mu 0 4 785 786 787 788
		f 4 1300 1247 -1302 -1309
		mu 0 4 788 787 789 790
		f 4 1301 1248 -1303 -1310
		mu 0 4 790 789 791 792
		f 4 1302 1249 -1304 -1311
		mu 0 4 793 794 795 796
		f 4 1303 1250 -1305 -1312
		mu 0 4 796 795 797 798
		f 4 1304 1251 -1306 -1313
		mu 0 4 798 797 799 800
		f 4 1305 1252 -1307 -1314
		mu 0 4 800 799 801 802
		f 4 1306 1253 -1300 -1315
		mu 0 4 802 801 786 785
		f 3 -1261 1259 1238
		mu 0 3 803 804 805
		f 3 -1262 1260 1239
		mu 0 3 806 804 803
		f 3 -1263 1261 1240
		mu 0 3 807 804 806
		f 3 -1264 1262 1241
		mu 0 3 808 804 807
		f 3 -1265 1263 1242
		mu 0 3 809 804 808
		f 3 -1266 1264 1243
		mu 0 3 810 804 809
		f 3 -1267 1265 1244
		mu 0 3 811 804 810
		f 3 -1260 1266 1245
		mu 0 3 805 804 811
		f 4 1254 -1330 -1256 -1239
		mu 0 4 812 813 814 815
		f 4 1255 -1328 -1257 -1240
		mu 0 4 815 814 816 817
		f 4 1256 -1326 -1258 -1241
		mu 0 4 817 816 818 819
		f 4 1338 -1338 -1336 -1334
		mu 0 4 820 821 822 823
		f 4 1335 -1344 -1343 -1341
		mu 0 4 823 822 824 825
		f 4 1342 -1349 -1348 -1346
		mu 0 4 825 824 826 827
		f 4 1347 -1354 -1353 -1351
		mu 0 4 827 826 828 829
		f 4 1258 -1331 -1255 -1246
		mu 0 4 830 831 813 812
		f 4 1267 -1430 -1269 -1276
		mu 0 4 832 833 834 835
		f 4 1268 -1428 -1270 -1277
		mu 0 4 835 834 836 837
		f 4 1269 -1426 -1271 -1278
		mu 0 4 837 836 838 839
		f 4 1270 -1424 -1272 -1279
		mu 0 4 840 841 842 843
		f 4 1271 -1422 -1273 -1280
		mu 0 4 843 842 844 845
		f 4 1272 -1420 -1274 -1281
		mu 0 4 845 844 846 847
		f 4 1273 -1418 -1275 -1282
		mu 0 4 847 846 848 849
		f 4 1274 -1431 -1268 -1283
		mu 0 4 849 848 833 832
		f 4 1283 -1414 -1285 -1292
		mu 0 4 850 851 852 853
		f 4 1284 -1412 -1286 -1293
		mu 0 4 853 852 854 855
		f 4 1285 -1410 -1287 -1294
		mu 0 4 855 854 856 857
		f 4 1286 -1408 -1288 -1295
		mu 0 4 858 859 860 861
		f 4 1287 -1406 -1289 -1296
		mu 0 4 861 860 862 863
		f 4 1288 -1404 -1290 -1297
		mu 0 4 863 862 864 865
		f 4 1289 -1402 -1291 -1298
		mu 0 4 865 864 866 867
		f 4 1290 -1415 -1284 -1299
		mu 0 4 867 866 851 850
		f 4 1316 1281 -1316 1317
		mu 0 4 868 847 849 831
		f 4 1318 1280 -1317 1319
		mu 0 4 869 845 847 868
		f 4 1320 1279 -1319 1321
		mu 0 4 870 843 845 869
		f 4 1322 1278 -1321 1323
		mu 0 4 871 840 843 870
		f 4 1324 1277 -1323 1325
		mu 0 4 816 837 839 818
		f 4 1326 1276 -1325 1327
		mu 0 4 814 835 837 816
		f 4 1328 1275 -1327 1329
		mu 0 4 813 832 835 814
		f 4 1315 1282 -1329 1330
		mu 0 4 831 849 832 813
		f 4 1331 1333 -1333 -1242
		mu 0 4 807 872 873 808
		f 4 1334 1337 -1337 -1324
		mu 0 4 870 822 821 871
		f 4 1336 -1339 -1332 1257
		mu 0 4 871 821 820 874
		f 4 1332 1340 -1340 -1243
		mu 0 4 808 873 875 809
		f 4 1341 1343 -1335 -1322
		mu 0 4 869 824 822 870
		f 4 1339 1345 -1345 -1244
		mu 0 4 809 875 876 810
		f 4 1346 1348 -1342 -1320
		mu 0 4 868 826 824 869
		f 4 1344 1350 -1350 -1245
		mu 0 4 810 876 877 811
		f 4 1349 1352 -1352 -1259
		mu 0 4 830 829 828 831
		f 4 1351 1353 -1347 -1318
		mu 0 4 831 828 826 868
		f 4 1372 -1387 -1377 -1376
		mu 0 4 878 879 880 881
		f 4 1355 -1397 -1357 -1251
		mu 0 4 795 882 883 797
		f 4 1356 -1395 -1359 -1252
		mu 0 4 797 883 884 799
		f 4 1358 -1393 -1361 -1253
		mu 0 4 799 884 885 801
		f 4 1360 -1391 -1355 -1254
		mu 0 4 801 885 886 786
		f 4 1363 1365 -1365 -1249
		mu 0 4 789 887 888 791
		f 4 -1385 -1381 -1380 1376
		mu 0 4 880 889 890 881
		f 4 1364 1367 -1367 -1250
		mu 0 4 794 891 892 795
		f 4 1366 1369 -1399 -1356
		mu 0 4 795 892 893 882
		f 3 1371 -1371 -1247
		mu 0 3 786 878 787
		f 4 -1373 -1372 1354 -1389
		mu 0 4 879 878 786 886
		f 4 1370 1375 -1375 -1248
		mu 0 4 787 878 881 789
		f 4 1374 1379 -1379 -1364
		mu 0 4 789 881 890 887
		f 4 1381 -1383 1384 1383
		mu 0 4 894 895 889 880
		f 4 1385 1377 -1384 1386
		mu 0 4 879 896 894 880
		f 4 -1386 1388 1387 1373
		mu 0 4 896 879 886 897
		f 4 1389 1362 -1388 1390
		mu 0 4 885 898 897 886
		f 4 1391 1361 -1390 1392
		mu 0 4 884 899 898 885
		f 4 1393 1359 -1392 1394
		mu 0 4 883 900 899 884
		f 4 1395 1357 -1394 1396
		mu 0 4 882 901 900 883
		f 4 1397 -1369 -1396 1398
		mu 0 4 893 902 901 882
		f 4 1400 1313 -1400 1401
		mu 0 4 864 800 802 866
		f 4 1402 1312 -1401 1403
		mu 0 4 862 798 800 864
		f 4 1404 1311 -1403 1405
		mu 0 4 860 796 798 862
		f 4 1406 1310 -1405 1407
		mu 0 4 859 793 796 860
		f 4 1408 1309 -1407 1409
		mu 0 4 854 790 792 856
		f 4 1410 1308 -1409 1411
		mu 0 4 852 788 790 854
		f 4 1412 1307 -1411 1413
		mu 0 4 851 785 788 852
		f 4 1399 1314 -1413 1414
		mu 0 4 866 802 785 851
		f 4 1416 1297 -1416 1417
		mu 0 4 846 865 867 848
		f 4 1418 1296 -1417 1419
		mu 0 4 844 863 865 846
		f 4 1420 1295 -1419 1421
		mu 0 4 842 861 863 844
		f 4 1422 1294 -1421 1423
		mu 0 4 841 858 861 842
		f 4 1424 1293 -1423 1425
		mu 0 4 836 855 857 838
		f 4 1426 1292 -1425 1427
		mu 0 4 834 853 855 836
		f 4 1428 1291 -1427 1429
		mu 0 4 833 850 853 834
		f 4 1415 1298 -1429 1430
		mu 0 4 848 867 850 833
		f 4 1500 1493 -1440 -1493
		mu 0 4 903 904 905 906
		f 4 1501 1494 -1441 -1494
		mu 0 4 904 907 908 905
		f 4 1502 1495 -1442 -1495
		mu 0 4 907 909 910 908
		f 4 1503 1496 -1443 -1496
		mu 0 4 911 912 913 914
		f 4 1504 1497 -1444 -1497
		mu 0 4 912 915 916 913
		f 4 1505 1498 -1445 -1498
		mu 0 4 915 917 918 916
		f 4 1506 1499 -1446 -1499
		mu 0 4 917 919 920 918
		f 4 1507 1492 -1447 -1500
		mu 0 4 919 903 906 920
		f 3 -1432 -1453 1453
		mu 0 3 921 922 923
		f 3 -1433 -1454 1454
		mu 0 3 924 921 923
		f 3 -1434 -1455 1455
		mu 0 3 925 924 923
		f 3 -1435 -1456 1456
		mu 0 3 926 925 923
		f 3 -1436 -1457 1457
		mu 0 3 927 926 923
		f 3 -1437 -1458 1458
		mu 0 3 928 927 923
		f 3 -1438 -1459 1459
		mu 0 3 929 928 923
		f 3 -1439 -1460 1452
		mu 0 3 922 929 923
		f 4 1431 1448 1522 -1448
		mu 0 4 930 931 932 933
		f 4 1432 1449 1520 -1449
		mu 0 4 931 934 935 932
		f 4 1433 1450 1518 -1450
		mu 0 4 934 936 937 935
		f 4 1526 1528 1530 -1532
		mu 0 4 938 939 940 941
		f 4 1533 1535 1536 -1529
		mu 0 4 939 942 943 940
		f 4 1538 1540 1541 -1536
		mu 0 4 942 944 945 943
		f 4 1543 1545 1546 -1541
		mu 0 4 944 946 947 945
		f 4 1438 1447 1523 -1452
		mu 0 4 948 930 933 949
		f 4 1468 1461 1615 -1461
		mu 0 4 950 951 952 953
		f 4 1469 1462 1613 -1462
		mu 0 4 951 954 955 952
		f 4 1470 1463 1611 -1463
		mu 0 4 954 956 957 955
		f 4 1471 1464 1609 -1464
		mu 0 4 958 959 960 961
		f 4 1472 1465 1607 -1465
		mu 0 4 959 962 963 960
		f 4 1473 1466 1605 -1466
		mu 0 4 962 964 965 963
		f 4 1474 1467 1603 -1467
		mu 0 4 964 966 967 965
		f 4 1475 1460 1616 -1468
		mu 0 4 966 950 953 967
		f 4 1484 1477 1599 -1477
		mu 0 4 968 969 970 971
		f 4 1485 1478 1597 -1478
		mu 0 4 969 972 973 970
		f 4 1486 1479 1595 -1479
		mu 0 4 972 974 975 973
		f 4 1487 1480 1593 -1480
		mu 0 4 976 977 978 979
		f 4 1488 1481 1591 -1481
		mu 0 4 977 980 981 978
		f 4 1489 1482 1589 -1482
		mu 0 4 980 982 983 981
		f 4 1490 1483 1587 -1483
		mu 0 4 982 984 985 983
		f 4 1491 1476 1600 -1484
		mu 0 4 984 968 971 985
		f 4 -1511 1508 -1475 -1510
		mu 0 4 986 949 966 964
		f 4 -1513 1509 -1474 -1512
		mu 0 4 987 986 964 962
		f 4 -1515 1511 -1473 -1514
		mu 0 4 988 987 962 959
		f 4 -1517 1513 -1472 -1516
		mu 0 4 989 988 959 958
		f 4 -1519 1515 -1471 -1518
		mu 0 4 935 937 956 954
		f 4 -1521 1517 -1470 -1520
		mu 0 4 932 935 954 951
		f 4 -1523 1519 -1469 -1522
		mu 0 4 933 932 951 950
		f 4 -1524 1521 -1476 -1509
		mu 0 4 949 933 950 966
		f 4 1434 1525 -1527 -1525
		mu 0 4 925 926 990 991
		f 4 1516 1529 -1531 -1528
		mu 0 4 988 989 941 940
		f 4 -1451 1524 1531 -1530
		mu 0 4 989 992 938 941
		f 4 1435 1532 -1534 -1526
		mu 0 4 926 927 993 990
		f 4 1514 1527 -1537 -1535
		mu 0 4 987 988 940 943
		f 4 1436 1537 -1539 -1533
		mu 0 4 927 928 994 993
		f 4 1512 1534 -1542 -1540
		mu 0 4 986 987 943 945
		f 4 1437 1542 -1544 -1538
		mu 0 4 928 929 995 994
		f 4 1451 1544 -1546 -1543
		mu 0 4 948 949 947 946
		f 4 1510 1539 -1547 -1545
		mu 0 4 949 986 945 947
		f 4 1565 1566 1573 -1563
		mu 0 4 996 997 998 999
		f 4 1443 1549 1583 -1549
		mu 0 4 913 916 1000 1001
		f 4 1444 1551 1581 -1550
		mu 0 4 916 918 1002 1000
		f 4 1445 1553 1579 -1552
		mu 0 4 918 920 1003 1002
		f 4 1446 1547 1577 -1554
		mu 0 4 920 906 1004 1003
		f 4 1441 1557 -1366 -1557
		mu 0 4 908 910 1005 1006
		f 4 -1567 1568 1380 1571
		mu 0 4 998 997 1007 1008
		f 4 1442 1558 -1368 -1558
		mu 0 4 914 913 1009 1010
		f 4 1548 1584 -1370 -1559
		mu 0 4 913 1001 1011 1009
		f 3 1439 1560 -1562
		mu 0 3 906 905 996
		f 4 1575 -1548 1561 1562
		mu 0 4 999 1004 906 996
		f 4 1440 1564 -1566 -1561
		mu 0 4 905 908 997 996
		f 4 1556 1378 -1569 -1565
		mu 0 4 908 1006 1007 997
		f 4 -1571 -1572 1382 -1570
		mu 0 4 1012 998 1008 1013
		f 4 -1574 1570 -1568 -1573
		mu 0 4 999 998 1012 1014
		f 4 -1564 -1575 -1576 1572
		mu 0 4 1014 1015 1004 999
		f 4 -1578 1574 -1556 -1577
		mu 0 4 1003 1004 1015 1016
		f 4 -1580 1576 -1555 -1579
		mu 0 4 1002 1003 1016 1017
		f 4 -1582 1578 -1553 -1581
		mu 0 4 1000 1002 1017 1018
		f 4 -1584 1580 -1551 -1583
		mu 0 4 1001 1000 1018 1019
		f 4 -1585 1582 1559 -1398
		mu 0 4 1011 1001 1019 1020
		f 4 -1588 1585 -1507 -1587
		mu 0 4 983 985 919 917
		f 4 -1590 1586 -1506 -1589
		mu 0 4 981 983 917 915
		f 4 -1592 1588 -1505 -1591
		mu 0 4 978 981 915 912
		f 4 -1594 1590 -1504 -1593
		mu 0 4 979 978 912 911
		f 4 -1596 1592 -1503 -1595
		mu 0 4 973 975 909 907
		f 4 -1598 1594 -1502 -1597
		mu 0 4 970 973 907 904
		f 4 -1600 1596 -1501 -1599
		mu 0 4 971 970 904 903
		f 4 -1601 1598 -1508 -1586
		mu 0 4 985 971 903 919
		f 4 -1604 1601 -1491 -1603
		mu 0 4 965 967 984 982
		f 4 -1606 1602 -1490 -1605
		mu 0 4 963 965 982 980
		f 4 -1608 1604 -1489 -1607
		mu 0 4 960 963 980 977
		f 4 -1610 1606 -1488 -1609
		mu 0 4 961 960 977 976
		f 4 -1612 1608 -1487 -1611
		mu 0 4 955 957 974 972
		f 4 -1614 1610 -1486 -1613
		mu 0 4 952 955 972 969
		f 4 -1616 1612 -1485 -1615
		mu 0 4 953 952 969 968
		f 4 -1617 1614 -1492 -1602
		mu 0 4 967 953 968 984
		f 4 -1623 -1625 1626 -1628
		mu 0 4 1021 1022 1023 1024
		f 4 -1631 1632 1634 -1636
		mu 0 4 1025 1026 1027 1028
		f 4 -1620 1623 1624 -1621
		mu 0 4 1029 1030 1023 1022
		f 4 1618 1625 -1627 -1624
		mu 0 4 1031 1032 1024 1023
		f 4 -1618 1621 1627 -1626
		mu 0 4 1033 1034 1021 1024
		f 4 1620 1631 -1633 -1629
		mu 0 4 1029 1022 1027 1035
		f 4 1622 1633 -1635 -1632
		mu 0 4 1022 1021 1028 1027
		f 4 -1622 1629 1635 -1634
		mu 0 4 1021 1034 1036 1028
		f 4 1646 -1646 1643 1641
		mu 0 4 1037 1038 1039 1040
		f 4 1654 -1654 -1652 1649
		mu 0 4 1041 1042 1043 1044
		f 4 1639 -1644 -1643 1638
		mu 0 4 1045 1040 1039 1046
		f 4 1642 1645 -1645 -1638
		mu 0 4 1047 1039 1038 1048
		f 4 1644 -1647 -1641 1636
		mu 0 4 1049 1038 1037 1050
		f 4 1647 1651 -1651 -1640
		mu 0 4 1045 1051 1043 1040
		f 4 1650 1653 -1653 -1642
		mu 0 4 1040 1043 1042 1037
		f 4 1652 -1655 -1649 1640
		mu 0 4 1037 1042 1052 1050
		f 3 1679 1703 -1684
		mu 0 3 1053 1054 1055
		f 3 -1704 1681 1682
		mu 0 3 1055 1054 1056
		f 3 1685 1704 -1683
		mu 0 3 1056 1057 1055
		f 3 -1705 -1688 1688
		mu 0 3 1055 1057 1058
		f 4 1697 1694 1667 -1694
		mu 0 4 1059 1060 1061 1062
		f 4 -1668 1662 -1658 1668
		mu 0 4 1062 1061 1063 1064
		f 4 1657 1663 1670 -1670
		mu 0 4 1064 1063 1065 1066
		f 4 -1718 1719 -1722 1722
		mu 0 4 1067 1068 1069 1070
		f 4 1707 1737 1689 1690
		mu 0 4 1071 1072 1073 1074
		f 4 1735 -1673 1665 1728
		mu 0 4 1075 1076 1077 1078
		f 4 1727 -1666 1674 1675
		mu 0 4 1079 1078 1077 1080
		f 3 1758 1755 1750
		mu 0 3 1081 1082 1083
		f 4 1701 1700 -1677 -1664
		mu 0 4 1063 1084 1085 1065
		f 3 1733 1729 1678
		mu 0 3 1086 1087 1088
		f 4 1659 1680 -1682 -1679
		mu 0 4 1088 1089 1090 1086
		f 4 1660 1684 -1686 -1681
		mu 0 4 1089 1091 1092 1090
		f 4 -1657 1686 1687 -1685
		mu 0 4 1091 1093 1094 1092
		f 3 -1665 1676 1699
		mu 0 3 1073 1065 1085
		f 4 1656 1661 -1698 -1667
		mu 0 4 1093 1091 1060 1059
		f 3 1726 -1676 -1696
		mu 0 3 1060 1079 1080
		f 3 -1701 1741 -1697
		mu 0 3 1085 1084 1095
		f 4 -1700 1696 1691 -1690
		mu 0 4 1073 1085 1095 1074
		f 4 1698 -1702 -1663 -1695
		mu 0 4 1060 1084 1063 1061
		f 3 -1703 -1699 1695
		mu 0 3 1080 1084 1060
		f 4 1672 1736 -1708 1705
		mu 0 4 1077 1076 1072 1071
		f 4 -1671 1708 1710 -1710
		mu 0 4 1066 1065 1096 1097
		f 4 1664 1711 -1713 -1709
		mu 0 4 1065 1073 1098 1096
		f 4 -1659 1713 1714 -1712
		mu 0 4 1073 1099 1100 1098
		f 4 -1711 1715 1717 -1717
		mu 0 4 1101 1102 1068 1103
		f 4 1712 1718 -1720 -1716
		mu 0 4 1102 1104 1069 1068
		f 4 -1715 1720 1721 -1719
		mu 0 4 1104 1105 1106 1069
		f 4 -1724 -1727 -1662 -1661
		mu 0 4 1089 1079 1060 1091
		f 4 -1725 -1728 1723 -1660
		mu 0 4 1088 1078 1079 1089
		f 4 1734 -1729 1724 -1730
		mu 0 4 1087 1075 1078 1088
		f 3 1655 1738 -1678
		mu 0 3 1107 1087 1108
		f 3 -1739 -1734 -1680
		mu 0 3 1108 1087 1086
		f 4 -1731 -1735 -1656 1673
		mu 0 4 1109 1075 1087 1107
		f 4 -1732 -1736 1730 1725
		mu 0 4 1110 1076 1075 1109
		f 4 -1733 -1737 1731 -1707
		mu 0 4 1111 1072 1076 1110
		f 4 1658 -1738 1732 -1672
		mu 0 4 1099 1073 1072 1111
		f 3 -1741 1702 -1740
		mu 0 3 1112 1084 1080
		f 3 -1742 1740 -1693
		mu 0 3 1095 1084 1112
		f 4 -1706 1742 1744 -1744
		mu 0 4 1077 1071 1113 1114
		f 4 -1691 1745 1746 -1743
		mu 0 4 1071 1074 1115 1113
		f 4 -1692 1747 1748 -1746
		mu 0 4 1074 1095 1083 1115
		f 4 1692 1749 -1751 -1748
		mu 0 4 1095 1112 1081 1083
		f 4 1739 1751 -1753 -1750
		mu 0 4 1112 1080 1116 1081
		f 4 -1675 1743 1753 -1752
		mu 0 4 1080 1077 1114 1116
		f 3 -1745 1756 -1755
		mu 0 3 1114 1113 1082
		f 3 -1757 -1747 1757
		mu 0 3 1082 1113 1115
		f 3 -1758 -1749 -1756
		mu 0 3 1082 1115 1083
		f 3 1759 -1759 1752
		mu 0 3 1116 1082 1081
		f 3 1754 -1760 -1754
		mu 0 3 1114 1082 1116
		f 3 1683 -1799 -1779
		mu 0 3 1117 1118 1119
		f 3 -1782 -1781 1798
		mu 0 3 1118 1120 1119
		f 3 1781 -1800 -1784
		mu 0 3 1120 1118 1121
		f 3 -1689 1784 1799
		mu 0 3 1118 1122 1121
		f 4 1693 -1772 -1790 -1793
		mu 0 4 1123 1124 1125 1126
		f 4 -1669 1762 -1768 1771
		mu 0 4 1124 1127 1128 1125
		f 4 1669 -1773 -1769 -1763
		mu 0 4 1127 1129 1130 1128
		f 4 -1723 1811 -1811 1808
		mu 0 4 1131 1132 1133 1134
		f 4 -1787 -1786 -1826 -1802
		mu 0 4 1135 1136 1137 1138
		f 4 -1817 -1771 1773 -1824
		mu 0 4 1139 1140 1141 1142
		f 4 -1776 -1775 1770 -1816
		mu 0 4 1143 1144 1141 1140
		f 3 -1839 -1844 -1847
		mu 0 3 1145 1146 1147
		f 4 1768 1776 -1796 -1797
		mu 0 4 1128 1130 1148 1149
		f 3 -1778 -1818 -1822
		mu 0 3 1150 1151 1152
		f 4 1777 1780 -1780 -1765
		mu 0 4 1151 1150 1153 1154
		f 4 1779 1783 -1783 -1766
		mu 0 4 1154 1153 1155 1156
		f 4 1782 -1785 -1687 1761
		mu 0 4 1156 1155 1157 1158
		f 3 -1795 -1777 1769
		mu 0 3 1137 1148 1130
		f 4 1666 1792 -1767 -1762
		mu 0 4 1158 1123 1126 1156
		f 3 1790 1775 -1815
		mu 0 3 1126 1144 1143
		f 3 1791 -1830 1795
		mu 0 3 1148 1159 1149
		f 4 1785 -1788 -1792 1794
		mu 0 4 1137 1136 1159 1148
		f 4 1789 1767 1796 -1794
		mu 0 4 1126 1125 1128 1149
		f 3 -1791 1793 1797
		mu 0 3 1144 1126 1149
		f 4 -1801 1801 -1825 -1774
		mu 0 4 1141 1135 1138 1142
		f 4 1709 -1804 -1803 1772
		mu 0 4 1129 1160 1161 1130
		f 4 1802 1805 -1805 -1770
		mu 0 4 1130 1161 1162 1137
		f 4 1804 -1807 -1714 1763
		mu 0 4 1137 1162 1163 1164
		f 4 1716 -1809 -1808 1803
		mu 0 4 1165 1166 1134 1167
		f 4 1807 1810 -1810 -1806
		mu 0 4 1167 1134 1133 1168
		f 4 1809 -1812 -1721 1806
		mu 0 4 1168 1133 1169 1170
		f 4 1765 1766 1814 1812
		mu 0 4 1154 1156 1126 1143
		f 4 1764 -1813 1815 1813
		mu 0 4 1151 1154 1143 1140
		f 4 1817 -1814 1816 -1823
		mu 0 4 1152 1151 1140 1139
		f 3 1677 -1827 -1761
		mu 0 3 1171 1172 1152
		f 3 1778 1821 1826
		mu 0 3 1172 1150 1152
		f 4 -1674 1760 1822 1818
		mu 0 4 1173 1171 1152 1139
		f 4 -1726 -1819 1823 1819
		mu 0 4 1174 1173 1139 1142
		f 4 1706 -1820 1824 1820
		mu 0 4 1175 1174 1142 1138
		f 4 1671 -1821 1825 -1764
		mu 0 4 1164 1175 1138 1137
		f 3 1827 -1798 1828
		mu 0 3 1176 1144 1149
		f 3 1788 -1829 1829
		mu 0 3 1159 1176 1149
		f 4 1831 -1833 -1831 1800
		mu 0 4 1141 1177 1178 1135
		f 4 1830 -1835 -1834 1786
		mu 0 4 1135 1178 1179 1136
		f 4 1833 -1837 -1836 1787
		mu 0 4 1136 1179 1146 1159
		f 4 1835 1838 -1838 -1789
		mu 0 4 1159 1146 1145 1176
		f 4 1837 1840 -1840 -1828
		mu 0 4 1176 1145 1180 1144
		f 4 1839 -1842 -1832 1774
		mu 0 4 1144 1180 1177 1141
		f 3 1842 -1845 1832
		mu 0 3 1177 1147 1178
		f 3 -1846 1834 1844
		mu 0 3 1147 1179 1178
		f 3 1843 1836 1845
		mu 0 3 1147 1146 1179
		f 3 -1841 1846 -1848
		mu 0 3 1180 1145 1147
		f 3 1841 1847 -1843
		mu 0 3 1177 1180 1147
		f 4 1848 1865 -1857 -1865
		mu 0 4 1181 1182 1183 1184
		f 4 1849 1866 -1858 -1866
		mu 0 4 1182 1185 1186 1183
		f 4 1850 1867 -1859 -1867
		mu 0 4 1185 1187 1188 1186
		f 4 1851 1868 -1860 -1868
		mu 0 4 1187 1189 1190 1188
		f 4 1852 1869 -1861 -1869
		mu 0 4 1189 1191 1192 1190
		f 4 1853 1870 -1862 -1870
		mu 0 4 1191 1193 1194 1192
		f 4 1854 1871 -1863 -1871
		mu 0 4 1193 1195 1196 1194
		f 4 1855 1864 -1864 -1872
		mu 0 4 1197 1181 1184 1198
		f 4 -1849 1872 1874 -1874
		mu 0 4 1182 1181 1199 1200
		f 4 -1850 1873 1876 -1876
		mu 0 4 1185 1182 1200 1201
		f 4 -1851 1875 1878 -1878
		mu 0 4 1187 1185 1201 1202
		f 4 -1852 1877 1880 -1880
		mu 0 4 1189 1187 1202 1203
		f 4 -1853 1879 1882 -1882
		mu 0 4 1191 1189 1203 1204
		f 4 -1854 1881 1884 -1884
		mu 0 4 1193 1191 1204 1205
		f 4 -1855 1883 1886 -1886
		mu 0 4 1195 1193 1205 1206
		f 4 -1856 1885 1887 -1873
		mu 0 4 1181 1197 1207 1199
		f 4 -1875 1888 1890 -1890
		mu 0 4 1200 1199 1208 1209
		f 4 -1877 1889 1892 -1892
		mu 0 4 1201 1200 1209 1210
		f 4 -1879 1891 1894 -1894
		mu 0 4 1202 1201 1210 1211
		f 4 -1881 1893 1896 -1896
		mu 0 4 1203 1202 1211 1212
		f 4 -1883 1895 1898 -1898
		mu 0 4 1204 1203 1212 1213
		f 4 -1885 1897 1900 -1900
		mu 0 4 1205 1204 1213 1214
		f 4 -1887 1899 1902 -1902
		mu 0 4 1206 1205 1214 1215
		f 4 -1888 1901 1903 -1889
		mu 0 4 1199 1207 1216 1208
		f 4 1928 1921 -1907 -1921
		mu 0 4 1217 1218 1219 1220
		f 4 1929 1922 -1909 -1922
		mu 0 4 1218 1221 1222 1219
		f 4 1930 1923 -1911 -1923
		mu 0 4 1221 1223 1224 1222
		f 4 1931 1924 -1913 -1924
		mu 0 4 1223 1225 1226 1224
		f 4 1932 1925 -1915 -1925
		mu 0 4 1225 1227 1228 1226
		f 4 1933 1926 -1917 -1926
		mu 0 4 1227 1229 1230 1228
		f 4 1934 1927 -1919 -1927
		mu 0 4 1229 1231 1232 1230
		f 4 1935 1920 -1920 -1928
		mu 0 4 1233 1217 1220 1234
		f 4 1856 1905 -1929 -1905
		mu 0 4 1184 1183 1218 1217
		f 4 1857 1907 -1930 -1906
		mu 0 4 1183 1186 1221 1218
		f 4 1858 1909 -1931 -1908
		mu 0 4 1186 1188 1223 1221
		f 4 1859 1911 -1932 -1910
		mu 0 4 1188 1190 1225 1223
		f 4 1860 1913 -1933 -1912
		mu 0 4 1190 1192 1227 1225
		f 4 1861 1915 -1934 -1914
		mu 0 4 1192 1194 1229 1227
		f 4 1862 1917 -1935 -1916
		mu 0 4 1194 1196 1231 1229
		f 4 1863 1904 -1936 -1918
		mu 0 4 1198 1184 1217 1233
		f 4 1906 1937 -1939 -1937
		mu 0 4 1220 1219 1235 1236
		f 4 1908 1939 -1941 -1938
		mu 0 4 1219 1222 1237 1235
		f 4 1910 1941 -1943 -1940
		mu 0 4 1222 1224 1238 1237
		f 4 1912 1943 -1945 -1942
		mu 0 4 1224 1226 1239 1238
		f 4 1914 1945 -1947 -1944
		mu 0 4 1226 1228 1240 1239
		f 4 1916 1947 -1949 -1946
		mu 0 4 1228 1230 1241 1240
		f 4 1918 1949 -1951 -1948
		mu 0 4 1230 1232 1242 1241
		f 4 1919 1936 -1952 -1950
		mu 0 4 1234 1220 1236 1243
		f 4 1938 1953 2234 -1953
		mu 0 4 1244 1245 1246 1247
		f 4 1940 1955 2232 -1954
		mu 0 4 1245 1248 1249 1246
		f 4 1942 1957 2230 -1956
		mu 0 4 1248 1250 1251 1249
		f 4 1944 1959 2228 -1958
		mu 0 4 1250 1252 1253 1251
		f 4 1946 1961 2241 -1960
		mu 0 4 1252 1254 1255 1253
		f 4 1948 1963 2240 -1962
		mu 0 4 1254 1256 1257 1255
		f 4 1950 1965 2238 -1964
		mu 0 4 1256 1258 1259 1257
		f 4 1951 1952 2236 -1966
		mu 0 4 1260 1244 1247 1261
		f 4 1954 1969 -1971 -1969
		mu 0 4 1262 1263 1264 1265
		f 4 1956 1971 -1973 -1970
		mu 0 4 1263 1266 1267 1264
		f 4 1958 1973 -1975 -1972
		mu 0 4 1266 1268 1269 1267
		f 4 1960 1975 -1977 -1974
		mu 0 4 1268 1270 1271 1269
		f 4 1962 1977 -1979 -1976
		mu 0 4 1270 1272 1273 1271
		f 4 1964 1979 -1981 -1978
		mu 0 4 1272 1274 1275 1273
		f 4 1966 1981 -1983 -1980
		mu 0 4 1274 1276 1277 1275
		f 4 1967 1968 -1984 -1982
		mu 0 4 1278 1262 1265 1279;
	setAttr ".fc[1000:1499]"
		f 4 1970 1985 -1987 -1985
		mu 0 4 1265 1264 1280 1281
		f 4 1972 1987 -1989 -1986
		mu 0 4 1264 1267 1282 1280
		f 4 1974 1989 -1991 -1988
		mu 0 4 1267 1269 1283 1282
		f 4 1976 1991 -1993 -1990
		mu 0 4 1269 1271 1284 1283
		f 4 1978 1993 -1995 -1992
		mu 0 4 1271 1273 1285 1284
		f 4 1980 1995 -1997 -1994
		mu 0 4 1273 1275 1286 1285
		f 4 1982 1997 -1999 -1996
		mu 0 4 1275 1277 1287 1286
		f 4 1983 1984 -2000 -1998
		mu 0 4 1279 1265 1281 1288
		f 4 1986 2001 -2003 -2001
		mu 0 4 1281 1280 1289 1290
		f 4 1988 2003 -2005 -2002
		mu 0 4 1280 1282 1291 1289
		f 4 1990 2005 -2007 -2004
		mu 0 4 1282 1283 1292 1291
		f 4 1992 2007 -2009 -2006
		mu 0 4 1283 1284 1293 1292
		f 4 1994 2009 -2011 -2008
		mu 0 4 1284 1285 1294 1293
		f 4 1996 2011 -2013 -2010
		mu 0 4 1285 1286 1295 1294
		f 4 1998 2013 -2015 -2012
		mu 0 4 1286 1287 1296 1295
		f 4 1999 2000 -2016 -2014
		mu 0 4 1288 1281 1290 1297
		f 4 2002 2017 -2019 -2017
		mu 0 4 1290 1289 1298 1299
		f 4 2004 2019 -2021 -2018
		mu 0 4 1289 1291 1300 1298
		f 4 2006 2021 -2023 -2020
		mu 0 4 1291 1292 1301 1300
		f 4 2008 2023 -2025 -2022
		mu 0 4 1292 1293 1302 1301
		f 4 2010 2025 -2027 -2024
		mu 0 4 1293 1294 1303 1302
		f 4 2012 2027 -2029 -2026
		mu 0 4 1294 1295 1304 1303
		f 4 2014 2029 -2031 -2028
		mu 0 4 1295 1296 1305 1304
		f 4 2015 2016 -2032 -2030
		mu 0 4 1297 1290 1299 1306
		f 4 2018 2033 -2035 -2033
		mu 0 4 1299 1298 1307 1308
		f 4 2020 2035 -2037 -2034
		mu 0 4 1298 1300 1309 1307
		f 4 2022 2037 -2039 -2036
		mu 0 4 1300 1301 1310 1309
		f 4 2024 2039 -2041 -2038
		mu 0 4 1301 1302 1311 1310
		f 4 2026 2041 -2043 -2040
		mu 0 4 1302 1303 1312 1311
		f 4 2028 2043 -2045 -2042
		mu 0 4 1303 1304 1313 1312
		f 4 2030 2045 -2047 -2044
		mu 0 4 1304 1305 1314 1313
		f 4 2031 2032 -2048 -2046
		mu 0 4 1306 1299 1308 1315
		f 4 2034 2049 -2051 -2049
		mu 0 4 1308 1307 1316 1317
		f 4 2036 2051 -2053 -2050
		mu 0 4 1307 1309 1318 1316
		f 4 2038 2053 -2055 -2052
		mu 0 4 1309 1310 1319 1318
		f 4 2040 2055 -2057 -2054
		mu 0 4 1310 1311 1320 1319
		f 4 2042 2057 -2059 -2056
		mu 0 4 1311 1312 1321 1320
		f 4 2044 2059 -2061 -2058
		mu 0 4 1312 1313 1322 1321
		f 4 2046 2061 -2063 -2060
		mu 0 4 1313 1314 1323 1322
		f 4 2047 2048 -2064 -2062
		mu 0 4 1315 1308 1317 1324
		f 4 2066 2067 -2069 -2070
		mu 0 4 1325 1326 1327 1328
		f 4 2071 2072 -2074 -2068
		mu 0 4 1326 1329 1330 1327
		f 3 2075 2076 -2073
		mu 0 3 1329 1331 1330
		f 3 -2077 2077 -2079
		mu 0 3 1330 1331 1332
		f 3 2080 2081 -2083
		mu 0 3 1331 1333 1334
		f 4 2084 -2086 -2082 2086
		mu 0 4 1335 1336 1334 1333
		f 4 2088 2089 -2091 -2092
		mu 0 4 1335 1337 1338 1339
		f 4 2093 2094 -2096 -2090
		mu 0 4 1340 1341 1342 1343
		f 4 2096 2069 -2098 -2095
		mu 0 4 1341 1325 1328 1342
		f 3 2098 2099 2097
		mu 0 3 1328 1344 1342
		f 4 2100 2101 2102 2103
		mu 0 4 1345 1346 1347 1348
		f 3 2104 2105 -2107
		mu 0 3 1349 1350 1351
		f 4 2107 2108 -2110 -2111
		mu 0 4 1352 1353 1350 1354
		f 4 2111 2112 -2106 -2109
		mu 0 4 1353 1355 1356 1350
		f 4 2113 2114 2106 -2113
		mu 0 4 1357 1358 1359 1360
		f 4 2115 2110 -2117 -2118
		mu 0 4 1361 1352 1354 1362
		f 4 2073 2118 -2120 -2121
		mu 0 4 1327 1330 1363 1364
		f 4 2078 2121 -2123 -2119
		mu 0 4 1330 1332 1365 1363
		f 4 2068 2120 -2124 -2125
		mu 0 4 1328 1327 1364 1366
		f 4 2085 2125 -2127 -2128
		mu 0 4 1334 1336 1367 1368
		f 3 2128 2124 2129
		mu 0 3 1369 1328 1366
		f 3 -2078 2082 -2131
		mu 0 3 1332 1331 1334
		f 4 -2132 2130 2127 -2133
		mu 0 4 1370 1332 1334 1368
		f 4 -2134 2134 2135 2136
		mu 0 4 1371 1372 1373 1374
		f 4 -2138 -2139 2139 -2141
		mu 0 4 1375 1376 1377 1378
		f 3 -2142 2091 -2143
		mu 0 3 1375 1335 1339
		f 4 -2115 2143 2117 2144
		mu 0 4 1359 1358 1361 1362
		f 3 -2146 -2145 2116
		mu 0 3 1354 1349 1379
		f 3 2109 -2105 2145
		mu 0 3 1354 1350 1349
		f 4 2090 2146 -2108 -2148
		mu 0 4 1380 1381 1353 1352
		f 4 2095 2148 -2112 -2147
		mu 0 4 1381 1382 1355 1353
		f 4 -2100 2149 -2114 -2149
		mu 0 4 1383 1384 1358 1357
		f 4 -2144 -2150 2137 2150
		mu 0 4 1361 1358 1384 1385
		f 4 2142 2147 -2116 -2151
		mu 0 4 1385 1380 1352 1361
		f 3 -2152 -2085 2141
		mu 0 3 1375 1336 1335
		f 4 -2126 2151 2140 -2153
		mu 0 4 1367 1336 1375 1378
		f 4 -2137 2153 -2155 -2156
		mu 0 4 1371 1374 1386 1387
		f 4 2156 -2104 2157 -2159
		mu 0 4 1388 1345 1348 1389
		f 3 -2122 2131 -2160
		mu 0 3 1365 1332 1370
		f 4 -2161 2161 2162 2163
		mu 0 4 1390 1391 1392 1393
		f 4 -2165 -2164 2165 -2167
		mu 0 4 1394 1390 1393 1395
		f 4 2138 -2099 -2129 2167
		mu 0 4 1396 1344 1328 1369
		f 4 2119 2168 2169 -2171
		mu 0 4 1397 1398 1399 1400
		f 4 2122 2171 2172 -2169
		mu 0 4 1398 1401 1402 1399
		f 4 2173 2174 2175 -2172
		mu 0 4 1401 1403 1404 1402
		f 4 2123 2170 2176 -2178
		mu 0 4 1405 1397 1400 1406
		f 4 2178 2179 2180 -2175
		mu 0 4 1403 1407 1408 1404
		f 4 -2130 2177 2181 -2180
		mu 0 4 1409 1405 1406 1410
		f 4 -2183 2183 2184 -2186
		mu 0 4 1411 1412 1413 1414
		f 4 2132 2186 2187 -2184
		mu 0 4 1412 1415 1416 1413
		f 4 2126 2188 2189 -2187
		mu 0 4 1415 1417 1418 1416
		f 4 2152 2190 2191 -2189
		mu 0 4 1417 1419 1420 1418
		f 4 -2140 2192 2193 -2191
		mu 0 4 1419 1421 1422 1420
		f 4 -2195 2185 2195 -2193
		mu 0 4 1423 1411 1414 1424
		f 4 -2174 2196 2197 -2199
		mu 0 4 1425 1426 1427 1428
		f 4 2159 2199 2200 -2197
		mu 0 4 1426 1429 1430 1427
		f 4 2182 2201 2202 -2200
		mu 0 4 1429 1431 1432 1430
		f 4 -2179 2198 2203 -2205
		mu 0 4 1433 1425 1428 1434
		f 4 2194 2205 2206 -2202
		mu 0 4 1431 1435 1436 1432
		f 4 -2168 2204 2207 -2206
		mu 0 4 1437 1433 1434 1438
		f 4 -2188 2208 -2135 -2210
		mu 0 4 1413 1416 1373 1372
		f 4 -2185 2209 2133 -2211
		mu 0 4 1439 1413 1372 1371
		f 4 -2196 2210 2155 -2212
		mu 0 4 1440 1439 1371 1387
		f 4 -2194 2211 2154 -2213
		mu 0 4 1441 1440 1387 1386
		f 4 -2192 2212 -2154 -2214
		mu 0 4 1442 1441 1386 1374
		f 4 -2190 2213 -2136 -2209
		mu 0 4 1416 1442 1374 1373
		f 4 -2198 2214 2160 -2216
		mu 0 4 1443 1427 1391 1390
		f 4 -2204 2215 2164 -2217
		mu 0 4 1444 1443 1390 1394
		f 4 -2208 2216 2166 -2218
		mu 0 4 1445 1444 1394 1395
		f 4 -2207 2217 -2166 -2219
		mu 0 4 1446 1445 1395 1393
		f 4 -2203 2218 -2163 -2220
		mu 0 4 1430 1446 1393 1392
		f 4 -2201 2219 -2162 -2215
		mu 0 4 1427 1430 1392 1391
		f 4 -2170 2220 -2101 -2222
		mu 0 4 1447 1399 1346 1345
		f 4 -2177 2221 -2157 -2223
		mu 0 4 1448 1447 1345 1388
		f 4 -2182 2222 2158 -2224
		mu 0 4 1449 1448 1388 1389
		f 4 -2181 2223 -2158 -2225
		mu 0 4 1450 1449 1389 1348
		f 4 -2176 2224 -2103 -2226
		mu 0 4 1402 1450 1348 1347
		f 4 -2173 2225 -2102 -2221
		mu 0 4 1399 1402 1347 1346
		f 4 2050 2065 -2067 -2065
		mu 0 4 1451 1452 1326 1325
		f 4 2052 2070 -2072 -2066
		mu 0 4 1452 1453 1329 1326
		f 4 2054 2074 -2076 -2071
		mu 0 4 1453 1454 1331 1329
		f 4 2056 2079 -2081 -2075
		mu 0 4 1454 1455 1333 1331
		f 4 2058 2083 -2087 -2080
		mu 0 4 1455 1456 1335 1333
		f 4 2060 2087 -2089 -2084
		mu 0 4 1456 1457 1337 1335
		f 4 2062 2092 -2094 -2088
		mu 0 4 1458 1459 1341 1340
		f 4 2063 2064 -2097 -2093
		mu 0 4 1459 1451 1325 1341
		f 4 -2229 2226 -1961 -2228
		mu 0 4 1251 1253 1460 1461
		f 4 -2231 2227 -1959 -2230
		mu 0 4 1249 1251 1461 1462
		f 4 -2233 2229 -1957 -2232
		mu 0 4 1246 1249 1462 1463
		f 4 -2235 2231 -1955 -2234
		mu 0 4 1247 1246 1463 1464
		f 4 -2237 2233 -1968 -2236
		mu 0 4 1261 1247 1464 1465
		f 4 -2239 2235 -1967 -2238
		mu 0 4 1257 1259 1466 1467
		f 4 -2241 2237 -1965 -2240
		mu 0 4 1255 1257 1467 1468
		f 4 -2242 2239 -1963 -2227
		mu 0 4 1253 1255 1468 1460
		f 4 2258 2250 -2260 -2243
		mu 0 4 1469 1470 1471 1472
		f 4 2259 2251 -2261 -2244
		mu 0 4 1472 1471 1473 1474
		f 4 2260 2252 -2262 -2245
		mu 0 4 1474 1473 1475 1476
		f 4 2261 2253 -2263 -2246
		mu 0 4 1476 1475 1477 1478
		f 4 2262 2254 -2264 -2247
		mu 0 4 1478 1477 1479 1480
		f 4 2263 2255 -2265 -2248
		mu 0 4 1480 1479 1481 1482
		f 4 2264 2256 -2266 -2249
		mu 0 4 1482 1481 1483 1484
		f 4 2265 2257 -2259 -2250
		mu 0 4 1485 1486 1470 1469
		f 4 2267 -2269 -2267 2242
		mu 0 4 1472 1487 1488 1469
		f 4 2269 -2271 -2268 2243
		mu 0 4 1474 1489 1487 1472
		f 4 2271 -2273 -2270 2244
		mu 0 4 1476 1490 1489 1474
		f 4 2273 -2275 -2272 2245
		mu 0 4 1478 1491 1490 1476
		f 4 2275 -2277 -2274 2246
		mu 0 4 1480 1492 1491 1478
		f 4 2277 -2279 -2276 2247
		mu 0 4 1482 1493 1492 1480
		f 4 2279 -2281 -2278 2248
		mu 0 4 1484 1494 1493 1482
		f 4 2266 -2282 -2280 2249
		mu 0 4 1469 1488 1495 1485
		f 4 2283 -2285 -2283 2268
		mu 0 4 1487 1496 1497 1488
		f 4 2285 -2287 -2284 2270
		mu 0 4 1489 1498 1496 1487
		f 4 2287 -2289 -2286 2272
		mu 0 4 1490 1499 1498 1489
		f 4 2289 -2291 -2288 2274
		mu 0 4 1491 1500 1499 1490
		f 4 2291 -2293 -2290 2276
		mu 0 4 1492 1501 1500 1491
		f 4 2293 -2295 -2292 2278
		mu 0 4 1493 1502 1501 1492
		f 4 2295 -2297 -2294 2280
		mu 0 4 1494 1503 1502 1493
		f 4 2282 -2298 -2296 2281
		mu 0 4 1488 1497 1504 1495
		f 4 2314 2300 -2316 -2323
		mu 0 4 1505 1506 1507 1508
		f 4 2315 2302 -2317 -2324
		mu 0 4 1508 1507 1509 1510
		f 4 2316 2304 -2318 -2325
		mu 0 4 1510 1509 1511 1512
		f 4 2317 2306 -2319 -2326
		mu 0 4 1512 1511 1513 1514
		f 4 2318 2308 -2320 -2327
		mu 0 4 1514 1513 1515 1516
		f 4 2319 2310 -2321 -2328
		mu 0 4 1516 1515 1517 1518
		f 4 2320 2312 -2322 -2329
		mu 0 4 1518 1517 1519 1520
		f 4 2321 2313 -2315 -2330
		mu 0 4 1521 1522 1506 1505
		f 4 2298 2322 -2300 -2251
		mu 0 4 1470 1505 1508 1471
		f 4 2299 2323 -2302 -2252
		mu 0 4 1471 1508 1510 1473
		f 4 2301 2324 -2304 -2253
		mu 0 4 1473 1510 1512 1475
		f 4 2303 2325 -2306 -2254
		mu 0 4 1475 1512 1514 1477
		f 4 2305 2326 -2308 -2255
		mu 0 4 1477 1514 1516 1479
		f 4 2307 2327 -2310 -2256
		mu 0 4 1479 1516 1518 1481
		f 4 2309 2328 -2312 -2257
		mu 0 4 1481 1518 1520 1483
		f 4 2311 2329 -2299 -2258
		mu 0 4 1486 1521 1505 1470
		f 4 2330 2332 -2332 -2301
		mu 0 4 1506 1523 1524 1507
		f 4 2331 2334 -2334 -2303
		mu 0 4 1507 1524 1525 1509
		f 4 2333 2336 -2336 -2305
		mu 0 4 1509 1525 1526 1511
		f 4 2335 2338 -2338 -2307
		mu 0 4 1511 1526 1527 1513
		f 4 2337 2340 -2340 -2309
		mu 0 4 1513 1527 1528 1515
		f 4 2339 2342 -2342 -2311
		mu 0 4 1515 1528 1529 1517
		f 4 2341 2344 -2344 -2313
		mu 0 4 1517 1529 1530 1519
		f 4 2343 2345 -2331 -2314
		mu 0 4 1522 1531 1523 1506
		f 4 2346 -2629 -2348 -2333
		mu 0 4 1532 1533 1534 1535
		f 4 2347 -2627 -2350 -2335
		mu 0 4 1535 1534 1536 1537
		f 4 2349 -2625 -2352 -2337
		mu 0 4 1537 1536 1538 1539
		f 4 2351 -2623 -2354 -2339
		mu 0 4 1539 1538 1540 1541
		f 4 2353 -2636 -2356 -2341
		mu 0 4 1541 1540 1542 1543
		f 4 2355 -2635 -2358 -2343
		mu 0 4 1543 1542 1544 1545
		f 4 2357 -2633 -2360 -2345
		mu 0 4 1545 1544 1546 1547
		f 4 2359 -2631 -2347 -2346
		mu 0 4 1548 1549 1533 1532
		f 4 2362 2364 -2364 -2349
		mu 0 4 1550 1551 1552 1553
		f 4 2363 2366 -2366 -2351
		mu 0 4 1553 1552 1554 1555
		f 4 2365 2368 -2368 -2353
		mu 0 4 1555 1554 1556 1557
		f 4 2367 2370 -2370 -2355
		mu 0 4 1557 1556 1558 1559
		f 4 2369 2372 -2372 -2357
		mu 0 4 1559 1558 1560 1561
		f 4 2371 2374 -2374 -2359
		mu 0 4 1561 1560 1562 1563
		f 4 2373 2376 -2376 -2361
		mu 0 4 1563 1562 1564 1565
		f 4 2375 2377 -2363 -2362
		mu 0 4 1566 1567 1551 1550
		f 4 2378 2380 -2380 -2365
		mu 0 4 1551 1568 1569 1552
		f 4 2379 2382 -2382 -2367
		mu 0 4 1552 1569 1570 1554
		f 4 2381 2384 -2384 -2369
		mu 0 4 1554 1570 1571 1556
		f 4 2383 2386 -2386 -2371
		mu 0 4 1556 1571 1572 1558
		f 4 2385 2388 -2388 -2373
		mu 0 4 1558 1572 1573 1560
		f 4 2387 2390 -2390 -2375
		mu 0 4 1560 1573 1574 1562
		f 4 2389 2392 -2392 -2377
		mu 0 4 1562 1574 1575 1564
		f 4 2391 2393 -2379 -2378
		mu 0 4 1567 1576 1568 1551
		f 4 2394 2396 -2396 -2381
		mu 0 4 1568 1577 1578 1569
		f 4 2395 2398 -2398 -2383
		mu 0 4 1569 1578 1579 1570
		f 4 2397 2400 -2400 -2385
		mu 0 4 1570 1579 1580 1571
		f 4 2399 2402 -2402 -2387
		mu 0 4 1571 1580 1581 1572
		f 4 2401 2404 -2404 -2389
		mu 0 4 1572 1581 1582 1573
		f 4 2403 2406 -2406 -2391
		mu 0 4 1573 1582 1583 1574
		f 4 2405 2408 -2408 -2393
		mu 0 4 1574 1583 1584 1575
		f 4 2407 2409 -2395 -2394
		mu 0 4 1576 1585 1577 1568
		f 4 2410 2412 -2412 -2397
		mu 0 4 1577 1586 1587 1578
		f 4 2411 2414 -2414 -2399
		mu 0 4 1578 1587 1588 1579
		f 4 2413 2416 -2416 -2401
		mu 0 4 1579 1588 1589 1580
		f 4 2415 2418 -2418 -2403
		mu 0 4 1580 1589 1590 1581
		f 4 2417 2420 -2420 -2405
		mu 0 4 1581 1590 1591 1582
		f 4 2419 2422 -2422 -2407
		mu 0 4 1582 1591 1592 1583
		f 4 2421 2424 -2424 -2409
		mu 0 4 1583 1592 1593 1584
		f 4 2423 2425 -2411 -2410
		mu 0 4 1585 1594 1586 1577
		f 4 2426 2428 -2428 -2413
		mu 0 4 1586 1595 1596 1587
		f 4 2427 2430 -2430 -2415
		mu 0 4 1587 1596 1597 1588
		f 4 2429 2432 -2432 -2417
		mu 0 4 1588 1597 1598 1589
		f 4 2431 2434 -2434 -2419
		mu 0 4 1589 1598 1599 1590
		f 4 2433 2436 -2436 -2421
		mu 0 4 1590 1599 1600 1591
		f 4 2435 2438 -2438 -2423
		mu 0 4 1591 1600 1601 1592
		f 4 2437 2440 -2440 -2425
		mu 0 4 1592 1601 1602 1593
		f 4 2439 2441 -2427 -2426
		mu 0 4 1594 1603 1595 1586
		f 4 2442 2444 -2444 -2429
		mu 0 4 1595 1604 1605 1596
		f 4 2443 2446 -2446 -2431
		mu 0 4 1596 1605 1606 1597
		f 4 2445 2448 -2448 -2433
		mu 0 4 1597 1606 1607 1598
		f 4 2447 2450 -2450 -2435
		mu 0 4 1598 1607 1608 1599
		f 4 2449 2452 -2452 -2437
		mu 0 4 1599 1608 1609 1600
		f 4 2451 2454 -2454 -2439
		mu 0 4 1600 1609 1610 1601
		f 4 2453 2456 -2456 -2441
		mu 0 4 1601 1610 1611 1602
		f 4 2455 2457 -2443 -2442
		mu 0 4 1603 1612 1604 1595
		f 4 2463 2462 -2462 -2461
		mu 0 4 1613 1614 1615 1616
		f 4 2461 2467 -2467 -2466
		mu 0 4 1616 1615 1617 1618
		f 3 2466 -2471 -2470
		mu 0 3 1618 1617 1619
		f 3 2472 -2472 2470
		mu 0 3 1617 1620 1619
		f 3 2476 -2476 -2475
		mu 0 3 1619 1621 1622
		f 4 -2481 2475 2479 -2479
		mu 0 4 1623 1622 1621 1624
		f 4 2485 2484 -2484 -2483
		mu 0 4 1623 1625 1626 1627
		f 4 2483 2489 -2489 -2488
		mu 0 4 1628 1629 1630 1631
		f 4 2488 2491 -2464 -2491
		mu 0 4 1631 1630 1614 1613
		f 3 -2492 -2494 -2493
		mu 0 3 1614 1630 1632
		f 4 -2498 -2497 -2496 -2495
		mu 0 4 1633 1634 1635 1636
		f 3 2500 -2500 -2499
		mu 0 3 1637 1638 1639
		f 4 2504 2503 -2503 -2502
		mu 0 4 1640 1641 1639 1642
		f 4 2502 2499 -2507 -2506
		mu 0 4 1642 1639 1643 1644
		f 4 2506 -2501 -2509 -2508
		mu 0 4 1645 1646 1647 1648
		f 4 2511 2510 -2505 -2510
		mu 0 4 1649 1650 1641 1640
		f 4 2514 2513 -2513 -2468
		mu 0 4 1615 1651 1652 1617
		f 4 2512 2516 -2516 -2473
		mu 0 4 1617 1652 1653 1620
		f 4 2518 2517 -2515 -2463
		mu 0 4 1614 1654 1651 1615
		f 4 2521 2520 -2520 -2480
		mu 0 4 1621 1655 1656 1624
		f 3 -2524 -2519 -2523
		mu 0 3 1657 1654 1614
		f 3 2524 -2477 2471
		mu 0 3 1620 1621 1619
		f 4 2526 -2522 -2525 2525
		mu 0 4 1658 1655 1621 1620
		f 4 -2531 -2530 -2529 2527
		mu 0 4 1659 1660 1661 1662
		f 4 2534 -2534 2532 2531
		mu 0 4 1663 1664 1665 1666
		f 3 2536 -2486 2535
		mu 0 3 1663 1625 1623
		f 4 -2539 -2512 -2538 2508
		mu 0 4 1647 1650 1649 1648
		f 3 -2511 2538 2539
		mu 0 3 1641 1667 1637
		f 3 -2540 2498 -2504
		mu 0 3 1641 1637 1639
		f 4 2541 2501 -2541 -2485
		mu 0 4 1668 1640 1642 1669
		f 4 2540 2505 -2543 -2490
		mu 0 4 1669 1642 1644 1670
		f 4 2542 2507 -2544 2493
		mu 0 4 1671 1645 1648 1672
		f 4 -2545 -2532 2543 2537
		mu 0 4 1649 1673 1672 1648
		f 4 2544 2509 -2542 -2537
		mu 0 4 1673 1649 1640 1668
		f 3 -2536 2478 2545
		mu 0 3 1663 1623 1624
		f 4 2546 -2535 -2546 2519
		mu 0 4 1656 1664 1663 1624
		f 4 2549 2548 -2548 2530
		mu 0 4 1659 1674 1675 1660
		f 4 2552 -2552 2497 -2551
		mu 0 4 1676 1677 1634 1633
		f 3 2553 -2526 2515
		mu 0 3 1653 1658 1620
		f 4 -2558 -2557 -2556 2554
		mu 0 4 1678 1679 1680 1681
		f 4 2560 -2560 2557 2558
		mu 0 4 1682 1683 1679 1678
		f 4 -2562 2522 2492 -2533
		mu 0 4 1684 1657 1614 1632
		f 4 2564 -2564 -2563 -2514
		mu 0 4 1685 1686 1687 1688
		f 4 2562 -2567 -2566 -2517
		mu 0 4 1688 1687 1689 1690
		f 4 2565 -2570 -2569 -2568
		mu 0 4 1690 1689 1691 1692
		f 4 2571 -2571 -2565 -2518
		mu 0 4 1693 1694 1686 1685
		f 4 2568 -2575 -2574 -2573
		mu 0 4 1692 1691 1695 1696
		f 4 2573 -2576 -2572 2523
		mu 0 4 1697 1698 1694 1693
		f 4 2579 -2579 -2578 2576
		mu 0 4 1699 1700 1701 1702
		f 4 2577 -2582 -2581 -2527
		mu 0 4 1702 1701 1703 1704
		f 4 2580 -2584 -2583 -2521
		mu 0 4 1704 1703 1705 1706
		f 4 2582 -2586 -2585 -2547
		mu 0 4 1706 1705 1707 1708
		f 4 2584 -2588 -2587 2533
		mu 0 4 1708 1707 1709 1710
		f 4 2586 -2590 -2580 2588
		mu 0 4 1711 1712 1700 1699
		f 4 2592 -2592 -2591 2567
		mu 0 4 1713 1714 1715 1716
		f 4 2590 -2595 -2594 -2554
		mu 0 4 1716 1715 1717 1718
		f 4 2593 -2597 -2596 -2577
		mu 0 4 1718 1717 1719 1720
		f 4 2598 -2598 -2593 2572
		mu 0 4 1721 1722 1714 1713
		f 4 2595 -2601 -2600 -2589
		mu 0 4 1720 1719 1723 1724
		f 4 2599 -2602 -2599 2561
		mu 0 4 1725 1726 1722 1721
		f 4 2603 2528 -2603 2581
		mu 0 4 1701 1662 1661 1703
		f 4 2604 -2528 -2604 2578
		mu 0 4 1727 1659 1662 1701
		f 4 2605 -2550 -2605 2589
		mu 0 4 1728 1674 1659 1727
		f 4 2606 -2549 -2606 2587
		mu 0 4 1729 1675 1674 1728
		f 4 2607 2547 -2607 2585
		mu 0 4 1730 1660 1675 1729
		f 4 2602 2529 -2608 2583
		mu 0 4 1703 1661 1660 1730
		f 4 2609 -2555 -2609 2591
		mu 0 4 1731 1678 1681 1715
		f 4 2610 -2559 -2610 2597
		mu 0 4 1732 1682 1678 1731
		f 4 2611 -2561 -2611 2601
		mu 0 4 1733 1683 1682 1732
		f 4 2612 2559 -2612 2600
		mu 0 4 1734 1679 1683 1733
		f 4 2613 2556 -2613 2596
		mu 0 4 1717 1680 1679 1734
		f 4 2608 2555 -2614 2594
		mu 0 4 1715 1681 1680 1717
		f 4 2615 2494 -2615 2563
		mu 0 4 1735 1633 1636 1687
		f 4 2616 2550 -2616 2570
		mu 0 4 1736 1676 1633 1735
		f 4 2617 -2553 -2617 2575
		mu 0 4 1737 1677 1676 1736
		f 4 2618 2551 -2618 2574
		mu 0 4 1738 1634 1677 1737
		f 4 2619 2496 -2619 2569
		mu 0 4 1689 1635 1634 1738
		f 4 2614 2495 -2620 2566
		mu 0 4 1687 1636 1635 1689
		f 4 2458 2460 -2460 -2445
		mu 0 4 1739 1613 1616 1740
		f 4 2459 2465 -2465 -2447
		mu 0 4 1740 1616 1618 1741
		f 4 2464 2469 -2469 -2449
		mu 0 4 1741 1618 1619 1742
		f 4 2468 2474 -2474 -2451
		mu 0 4 1742 1619 1622 1743
		f 4 2473 2480 -2478 -2453
		mu 0 4 1743 1622 1623 1744
		f 4 2477 2482 -2482 -2455
		mu 0 4 1744 1623 1627 1745
		f 4 2481 2487 -2487 -2457
		mu 0 4 1746 1628 1631 1747
		f 4 2486 2490 -2459 -2458
		mu 0 4 1747 1631 1613 1739
		f 4 2621 2354 -2621 2622
		mu 0 4 1538 1748 1749 1540
		f 4 2623 2352 -2622 2624
		mu 0 4 1536 1750 1748 1538
		f 4 2625 2350 -2624 2626
		mu 0 4 1534 1751 1750 1536
		f 4 2627 2348 -2626 2628
		mu 0 4 1533 1752 1751 1534
		f 4 2629 2361 -2628 2630
		mu 0 4 1549 1753 1752 1533
		f 4 2631 2360 -2630 2632
		mu 0 4 1544 1754 1755 1546
		f 4 2633 2358 -2632 2634
		mu 0 4 1542 1756 1754 1544
		f 4 2620 2356 -2634 2635
		mu 0 4 1540 1749 1756 1542
		f 4 2649 2648 -2647 -2645
		mu 0 4 1757 1758 1759 1760
		f 3 2637 -2642 -2644
		mu 0 3 1761 1762 1763
		f 4 2655 2654 -2654 -2653
		mu 0 4 1764 1765 1766 1767
		f 4 2646 2657 2653 2656
		mu 0 4 1760 1759 1767 1766
		f 4 -2656 -2660 -2650 -2659
		mu 0 4 1768 1769 1758 1757
		f 3 2640 -2643 -2637
		mu 0 3 1770 1763 1771
		f 3 2641 -2640 2642
		mu 0 3 1763 1762 1771
		f 3 2638 2643 -2641
		mu 0 3 1770 1761 1763
		f 4 2645 -2649 -2648 2636
		mu 0 4 1771 1772 1773 1770
		f 4 2650 2652 -2652 -2638
		mu 0 4 1761 1774 1775 1762
		f 4 2651 -2658 -2646 2639
		mu 0 4 1762 1775 1772 1771
		f 4 2647 2659 -2651 -2639
		mu 0 4 1770 1773 1774 1761
		f 4 2668 2670 -2673 -2674
		mu 0 4 1776 1777 1778 1779
		f 3 2667 2665 -2662
		mu 0 3 1780 1781 1782
		f 4 2676 2677 -2679 -2680
		mu 0 4 1783 1784 1785 1786
		f 4 -2681 -2678 -2682 -2671
		mu 0 4 1777 1785 1784 1778
		f 4 2682 2673 2683 2679
		mu 0 4 1787 1776 1779 1788
		f 3 2660 2666 -2665
		mu 0 3 1789 1790 1781
		f 3 -2667 2663 -2666
		mu 0 3 1781 1790 1782
		f 3 2664 -2668 -2663
		mu 0 3 1789 1781 1780
		f 4 -2661 2671 2672 -2670
		mu 0 4 1790 1789 1791 1792
		f 4 2661 2675 -2677 -2675
		mu 0 4 1780 1782 1793 1794
		f 4 -2664 2669 2681 -2676
		mu 0 4 1782 1790 1792 1793
		f 4 2662 2674 -2684 -2672
		mu 0 4 1789 1780 1794 1791
		f 4 2720 -2707 -2708 2722
		mu 0 4 1795 1796 1797 1798
		f 4 2718 -2705 -2706 2703
		mu 0 4 1799 1800 1798 1801
		f 4 2715 -2702 -2703 2727
		mu 0 4 1802 1803 1804 1805
		f 4 2713 -2700 -2701 2697
		mu 0 4 1806 1807 1805 1808
		f 4 2711 -2698 -2699 2696
		mu 0 4 1809 1806 1808 1810
		f 4 2721 -2726 -2709 2706
		mu 0 4 1796 1811 1810 1797
		f 4 2886 2888 2890 -2892
		mu 0 4 1812 1813 1814 1815
		f 4 2893 2895 2896 -2889
		mu 0 4 1813 1816 1817 1814
		f 4 2899 2901 2903 -2905
		mu 0 4 1818 1819 1820 1821
		f 4 2906 2908 2909 -2902
		mu 0 4 1819 1822 1823 1820
		f 4 2911 2913 2914 -2909
		mu 0 4 1822 1824 1825 1823
		f 4 2915 2891 2916 -2914
		mu 0 4 1824 1812 1815 1825
		f 4 -2712 2709 -2695 -2711
		mu 0 4 1806 1809 1826 1827
		f 4 -2714 2710 -2694 -2713
		mu 0 4 1807 1806 1827 1828
		f 4 -2716 2726 -2693 -2715
		mu 0 4 1803 1802 1829 1830
		f 4 -2719 2716 -2692 -2718
		mu 0 4 1800 1799 1831 1832
		f 4 -2721 2723 -2691 -2720
		mu 0 4 1796 1795 1833 1834
		f 4 -2722 2719 -2696 -2725
		mu 0 4 1811 1796 1834 1835
		f 4 2730 2732 -2735 -2736
		mu 0 4 1836 1837 1838 1839
		f 4 -2742 2743 2745 -2747
		mu 0 4 1840 1841 1842 1843
		f 4 2752 2754 -2757 -2758
		mu 0 4 1844 1845 1846 1847
		f 3 -2749 2749 -2744
		mu 0 3 1841 1848 1842
		f 3 -2738 2738 2735
		mu 0 3 1839 1849 1836
		f 3 -2760 2760 2757
		mu 0 3 1847 1850 1844
		f 4 2717 2729 -2731 -2729
		mu 0 4 1800 1832 1837 1836
		f 4 -2724 2733 2734 -2732
		mu 0 4 1833 1795 1839 1838
		f 4 -2723 2736 2737 -2734
		mu 0 4 1795 1798 1849 1839
		f 4 2704 2728 -2739 -2737
		mu 0 4 1798 1800 1836 1849
		f 4 -2710 2739 2741 -2741
		mu 0 4 1826 1809 1841 1840
		f 4 2724 2744 -2746 -2743
		mu 0 4 1811 1835 1843 1842
		f 4 -2697 2747 2748 -2740
		mu 0 4 1809 1810 1848 1841
		f 4 2725 2742 -2750 -2748
		mu 0 4 1810 1811 1842 1848
		f 4 2712 2751 -2753 -2751
		mu 0 4 1807 1828 1845 1844
		f 4 -2727 2755 2756 -2754
		mu 0 4 1829 1802 1847 1846
		f 4 -2728 2758 2759 -2756
		mu 0 4 1802 1805 1850 1847
		f 4 2699 2750 -2761 -2759
		mu 0 4 1805 1807 1844 1850
		f 4 2690 2762 -2764 -2762
		mu 0 4 1834 1833 1851 1852
		f 4 2691 2765 -2767 -2765
		mu 0 4 1832 1831 1853 1854
		f 4 2692 2768 -2770 -2768
		mu 0 4 1830 1829 1855 1856
		f 4 2693 2771 -2773 -2771
		mu 0 4 1828 1827 1857 1858
		f 4 2694 2773 -2775 -2772
		mu 0 4 1827 1826 1859 1857
		f 4 2695 2761 -2777 -2776
		mu 0 4 1835 1834 1852 1860
		f 3 2764 2792 -2730
		mu 0 3 1832 1854 1837
		f 3 -2793 2778 -2778
		mu 0 3 1837 1854 1861
		f 3 2731 2793 -2763
		mu 0 3 1833 1838 1851
		f 3 -2794 2779 -2781
		mu 0 3 1851 1838 1862
		f 4 -2733 2777 2781 -2780
		mu 0 4 1838 1837 1861 1862
		f 3 2740 2794 -2774
		mu 0 3 1826 1840 1859
		f 3 -2795 2782 -2784
		mu 0 3 1859 1840 1863
		f 3 2775 2795 -2745
		mu 0 3 1835 1860 1843
		f 3 -2796 2785 -2785
		mu 0 3 1843 1860 1864
		f 4 2746 2784 -2787 -2783
		mu 0 4 1840 1843 1864 1863
		f 3 2770 2796 -2752
		mu 0 3 1828 1858 1845
		f 3 -2797 2788 -2788
		mu 0 3 1845 1858 1865
		f 3 2753 2797 -2769
		mu 0 3 1829 1846 1855
		f 3 -2798 2789 -2791
		mu 0 3 1855 1846 1866
		f 4 -2755 2787 2791 -2790
		mu 0 4 1846 1845 1865 1866
		f 4 2763 2799 -2801 -2799
		mu 0 4 1867 1868 1869 1870
		f 4 2766 2802 -2804 -2802
		mu 0 4 1871 1872 1873 1874
		f 4 2769 2805 -2807 -2805
		mu 0 4 1875 1876 1877 1878
		f 4 2772 2808 -2810 -2808
		mu 0 4 1879 1880 1881 1882
		f 4 2774 2810 -2812 -2809
		mu 0 4 1880 1883 1884 1881
		f 4 2776 2798 -2814 -2813
		mu 0 4 1885 1867 1870 1886
		f 4 -2779 2801 2815 -2815
		mu 0 4 1887 1871 1874 1888
		f 4 2780 2816 -2818 -2800
		mu 0 4 1868 1889 1890 1869
		f 4 -2782 2814 2818 -2817
		mu 0 4 1889 1887 1888 1890
		f 4 2783 2819 -2821 -2811
		mu 0 4 1883 1891 1892 1884
		f 4 -2786 2812 2822 -2822
		mu 0 4 1893 1885 1886 1894
		f 4 2786 2821 -2824 -2820
		mu 0 4 1891 1893 1894 1892
		f 4 -2789 2807 2825 -2825
		mu 0 4 1895 1879 1882 1896
		f 4 2790 2826 -2828 -2806
		mu 0 4 1876 1897 1898 1877
		f 4 -2792 2824 2828 -2827
		mu 0 4 1897 1895 1896 1898
		f 3 2800 2830 -2830
		mu 0 3 1870 1869 1899
		f 3 2803 2832 -2832
		mu 0 3 1874 1873 1899
		f 3 2806 2834 -2834
		mu 0 3 1878 1877 1899
		f 3 2809 2836 -2836
		mu 0 3 1882 1881 1899
		f 3 2811 2837 -2837
		mu 0 3 1881 1884 1899
		f 3 2813 2829 -2839
		mu 0 3 1886 1870 1899
		f 3 -2816 2831 -2840
		mu 0 3 1888 1874 1899
		f 3 2817 2840 -2831
		mu 0 3 1869 1890 1899
		f 3 -2819 2839 -2841
		mu 0 3 1890 1888 1899
		f 3 2820 2841 -2838
		mu 0 3 1884 1892 1899
		f 3 -2823 2838 -2843
		mu 0 3 1894 1886 1899
		f 3 2823 2842 -2842
		mu 0 3 1892 1894 1899
		f 3 -2826 2835 -2844
		mu 0 3 1896 1882 1899
		f 3 2827 2844 -2835
		mu 0 3 1877 1898 1899
		f 3 -2829 2843 -2845
		mu 0 3 1898 1896 1899
		f 4 -2848 2845 2705 -2847
		mu 0 4 1900 1901 1801 1798
		f 4 -2850 2846 2707 -2849
		mu 0 4 1902 1900 1798 1797
		f 4 -2852 2848 2708 -2851
		mu 0 4 1903 1902 1797 1810
		f 4 -2854 2850 2698 -2853
		mu 0 4 1904 1903 1810 1808
		f 4 -2856 2852 2700 -2855
		mu 0 4 1905 1904 1808 1805
		f 4 -2858 2854 2702 -2857
		mu 0 4 1906 1905 1805 1804
		f 4 -2685 2858 2881 -2860
		mu 0 4 1907 1908 1909 1910
		f 4 -2686 2859 2883 -2862
		mu 0 4 1911 1907 1910 1912
		f 4 -2687 2863 2873 -2865
		mu 0 4 1913 1914 1915 1916
		f 4 -2688 2864 2875 -2867
		mu 0 4 1917 1913 1916 1918
		f 4 -2689 2866 2877 -2869
		mu 0 4 1919 1917 1918 1920
		f 4 -2690 2868 2879 -2859
		mu 0 4 1908 1919 1920 1909
		f 4 -2874 2871 2865 -2873
		mu 0 4 1916 1915 1921 1922
		f 4 -2876 2872 2867 -2875
		mu 0 4 1918 1916 1922 1923
		f 4 -2878 2874 2869 -2877
		mu 0 4 1920 1918 1923 1924
		f 4 -2880 2876 2870 -2879
		mu 0 4 1909 1920 1924 1925
		f 4 -2882 2878 2860 -2881
		mu 0 4 1910 1909 1925 1926
		f 4 -2884 2880 2862 -2883
		mu 0 4 1912 1910 1926 1927
		f 4 2684 2885 -2887 -2885
		mu 0 4 1908 1907 1813 1812
		f 4 2849 2889 -2891 -2888
		mu 0 4 1900 1902 1815 1814
		f 4 2685 2892 -2894 -2886
		mu 0 4 1907 1911 1816 1813
		f 4 2847 2887 -2897 -2895
		mu 0 4 1901 1900 1814 1817
		f 4 2686 2898 -2900 -2898
		mu 0 4 1914 1913 1819 1818
		f 4 2857 2902 -2904 -2901
		mu 0 4 1905 1906 1821 1820
		f 4 2687 2905 -2907 -2899
		mu 0 4 1913 1917 1822 1819
		f 4 2855 2900 -2910 -2908
		mu 0 4 1904 1905 1820 1823
		f 4 2688 2910 -2912 -2906
		mu 0 4 1917 1919 1824 1822
		f 4 2853 2907 -2915 -2913
		mu 0 4 1903 1904 1823 1825
		f 4 2689 2884 -2916 -2911
		mu 0 4 1919 1908 1812 1824
		f 4 2851 2912 -2917 -2890
		mu 0 4 1902 1903 1825 1815
		f 4 -2952 2938 2937 -2950
		mu 0 4 1928 1929 1930 1931
		f 4 -2704 2936 2935 -2948
		mu 0 4 1932 1933 1929 1934
		f 4 -2957 2934 2701 -2946
		mu 0 4 1935 1936 1937 1938
		f 4 -2931 2933 2932 -2945
		mu 0 4 1939 1940 1936 1941
		f 4 -2930 2931 2930 -2943
		mu 0 4 1942 1943 1940 1939
		f 4 -2938 2939 2954 -2951
		mu 0 4 1931 1930 1943 1944
		f 4 3108 -3108 -3106 -3104
		mu 0 4 1945 1946 1947 1948
		f 4 3105 -3111 -2896 -3110
		mu 0 4 1948 1947 1949 1950
		f 4 2904 -3116 -3115 -3113
		mu 0 4 1951 1952 1953 1954
		f 4 3114 -3121 -3120 -3118
		mu 0 4 1954 1953 1955 1956
		f 4 3119 -3126 -3125 -3123
		mu 0 4 1956 1955 1957 1958
		f 4 3124 -3128 -3109 -3127
		mu 0 4 1958 1957 1946 1945
		f 4 2941 2927 -2941 2942
		mu 0 4 1939 1959 1960 1942
		f 4 2943 2926 -2942 2944
		mu 0 4 1941 1961 1959 1939
		f 4 2714 2925 -2956 2945
		mu 0 4 1938 1962 1963 1935
		f 4 2946 2924 -2717 2947
		mu 0 4 1934 1964 1965 1932
		f 4 2948 2923 -2953 2949
		mu 0 4 1931 1966 1967 1928
		f 4 2953 2928 -2949 2950
		mu 0 4 1944 1968 1966 1931
		f 4 2964 2963 -2962 -2960
		mu 0 4 1969 1970 1971 1972
		f 4 2975 -2975 -2973 2970
		mu 0 4 1973 1974 1975 1976
		f 4 2986 2985 -2984 -2982
		mu 0 4 1977 1978 1979 1980
		f 3 2972 -2979 2977
		mu 0 3 1976 1975 1981
		f 3 -2965 -2968 2966
		mu 0 3 1970 1969 1982
		f 3 -2987 -2990 2988
		mu 0 3 1978 1977 1983
		f 4 2957 2959 -2959 -2947
		mu 0 4 1934 1969 1972 1964
		f 4 2960 -2964 -2963 2952
		mu 0 4 1967 1971 1970 1928
		f 4 2962 -2967 -2966 2951
		mu 0 4 1928 1970 1982 1929;
	setAttr ".fc[1500:1909]"
		f 4 2965 2967 -2958 -2936
		mu 0 4 1929 1982 1969 1934
		f 4 2969 -2971 -2969 2940
		mu 0 4 1960 1973 1976 1942
		f 4 2971 2974 -2974 -2954
		mu 0 4 1944 1975 1974 1968
		f 4 2968 -2978 -2977 2929
		mu 0 4 1942 1976 1981 1943
		f 4 2976 2978 -2972 -2955
		mu 0 4 1943 1981 1975 1944
		f 4 2979 2981 -2981 -2944
		mu 0 4 1941 1977 1980 1961
		f 4 2982 -2986 -2985 2955
		mu 0 4 1963 1979 1978 1935
		f 4 2984 -2989 -2988 2956
		mu 0 4 1935 1978 1983 1936
		f 4 2987 2989 -2980 -2933
		mu 0 4 1936 1983 1977 1941
		f 4 2990 2992 -2992 -2924
		mu 0 4 1966 1984 1985 1967
		f 4 2993 2994 -2766 -2925
		mu 0 4 1964 1986 1987 1965
		f 4 2767 2996 -2996 -2926
		mu 0 4 1962 1988 1989 1963
		f 4 2997 2999 -2999 -2927
		mu 0 4 1961 1990 1991 1959
		f 4 2998 3001 -3001 -2928
		mu 0 4 1959 1991 1992 1960
		f 4 3002 3003 -2991 -2929
		mu 0 4 1968 1993 1984 1966
		f 3 2958 -3020 -2994
		mu 0 3 1964 1972 1986
		f 3 3004 -3006 3019
		mu 0 3 1972 1994 1986
		f 3 2991 -3021 -2961
		mu 0 3 1967 1985 1971
		f 3 3007 -3007 3020
		mu 0 3 1985 1995 1971
		f 4 3006 -3009 -3005 2961
		mu 0 4 1971 1995 1994 1972
		f 3 3000 -3022 -2970
		mu 0 3 1960 1992 1973
		f 3 3010 -3010 3021
		mu 0 3 1992 1996 1973
		f 3 2973 -3023 -3003
		mu 0 3 1968 1974 1993
		f 3 3011 -3013 3022
		mu 0 3 1974 1997 1993
		f 4 3009 3013 -3012 -2976
		mu 0 4 1973 1996 1997 1974
		f 3 2980 -3024 -2998
		mu 0 3 1961 1980 1990
		f 3 3014 -3016 3023
		mu 0 3 1980 1998 1990
		f 3 2995 -3025 -2983
		mu 0 3 1963 1989 1979
		f 3 3017 -3017 3024
		mu 0 3 1989 1999 1979
		f 4 3016 -3019 -3015 2983
		mu 0 4 1979 1999 1998 1980
		f 4 3025 3027 -3027 -2993
		mu 0 4 2000 2001 2002 2003
		f 4 3028 3029 -2803 -2995
		mu 0 4 2004 2005 2006 2007
		f 4 2804 3031 -3031 -2997
		mu 0 4 2008 2009 2010 2011
		f 4 3032 3034 -3034 -3000
		mu 0 4 2012 2013 2014 2015
		f 4 3033 3036 -3036 -3002
		mu 0 4 2015 2014 2016 2017
		f 4 3037 3038 -3026 -3004
		mu 0 4 2018 2019 2001 2000
		f 4 3039 -3041 -3029 3005
		mu 0 4 2020 2021 2005 2004
		f 4 3026 3042 -3042 -3008
		mu 0 4 2003 2002 2022 2023
		f 4 3041 -3044 -3040 3008
		mu 0 4 2023 2022 2021 2020
		f 4 3035 3045 -3045 -3011
		mu 0 4 2017 2016 2024 2025
		f 4 3046 -3048 -3038 3012
		mu 0 4 2026 2027 2019 2018
		f 4 3044 3048 -3047 -3014
		mu 0 4 2025 2024 2027 2026
		f 4 3049 -3051 -3033 3015
		mu 0 4 2028 2029 2013 2012
		f 4 3030 3052 -3052 -3018
		mu 0 4 2011 2010 2030 2031
		f 4 3051 -3054 -3050 3018
		mu 0 4 2031 2030 2029 2028
		f 3 3054 -3056 -3028
		mu 0 3 2001 2032 2002
		f 3 3056 -2833 -3030
		mu 0 3 2005 2032 2006
		f 3 2833 -3058 -3032
		mu 0 3 2009 2032 2010
		f 3 3058 -3060 -3035
		mu 0 3 2013 2032 2014
		f 3 3059 -3061 -3037
		mu 0 3 2014 2032 2016
		f 3 3061 -3055 -3039
		mu 0 3 2019 2032 2001
		f 3 3062 -3057 3040
		mu 0 3 2021 2032 2005
		f 3 3055 -3064 -3043
		mu 0 3 2002 2032 2022
		f 3 3063 -3063 3043
		mu 0 3 2022 2032 2021
		f 3 3060 -3065 -3046
		mu 0 3 2016 2032 2024
		f 3 3065 -3062 3047
		mu 0 3 2027 2032 2019
		f 3 3064 -3066 -3049
		mu 0 3 2024 2032 2027
		f 3 3066 -3059 3050
		mu 0 3 2029 2032 2013
		f 3 3057 -3068 -3053
		mu 0 3 2010 2032 2030
		f 3 3067 -3067 3053
		mu 0 3 2030 2032 2029
		f 4 3068 -2937 -2846 3069
		mu 0 4 2033 1929 1933 2034
		f 4 3070 -2939 -3069 3071
		mu 0 4 2035 1930 1929 2033
		f 4 3072 -2940 -3071 3073
		mu 0 4 2036 1943 1930 2035
		f 4 3074 -2932 -3073 3075
		mu 0 4 2037 1940 1943 2036
		f 4 3076 -2934 -3075 3077
		mu 0 4 2038 1936 1940 2037
		f 4 2856 -2935 -3077 3078
		mu 0 4 2039 1937 1936 2038
		f 4 3080 -3100 -3080 2917
		mu 0 4 2040 2041 2042 2043
		f 4 2861 -3101 -3081 2918
		mu 0 4 2044 2045 2041 2040
		f 4 3083 -3092 -2864 2919
		mu 0 4 2046 2047 2048 2049
		f 4 3085 -3094 -3084 2920
		mu 0 4 2050 2051 2047 2046
		f 4 3087 -3096 -3086 2921
		mu 0 4 2052 2053 2051 2050
		f 4 3079 -3098 -3088 2922
		mu 0 4 2043 2042 2053 2052
		f 4 3090 -3085 -2872 3091
		mu 0 4 2047 2054 2055 2048
		f 4 3092 -3087 -3091 3093
		mu 0 4 2051 2056 2054 2047
		f 4 3094 -3089 -3093 3095
		mu 0 4 2053 2057 2056 2051
		f 4 3096 -3090 -3095 3097
		mu 0 4 2042 2058 2057 2053
		f 4 3098 -3082 -3097 3099
		mu 0 4 2041 2059 2058 2042
		f 4 2882 -3083 -3099 3100
		mu 0 4 2045 2060 2059 2041
		f 4 3101 3103 -3103 -2918
		mu 0 4 2043 1945 1948 2040
		f 4 3104 3107 -3107 -3072
		mu 0 4 2033 1947 1946 2035
		f 4 3102 3109 -2893 -2919
		mu 0 4 2040 1948 1950 2044
		f 4 2894 3110 -3105 -3070
		mu 0 4 2034 1949 1947 2033
		f 4 2897 3112 -3112 -2920
		mu 0 4 2049 1951 1954 2046
		f 4 3113 3115 -2903 -3079
		mu 0 4 2038 1953 1952 2039
		f 4 3111 3117 -3117 -2921
		mu 0 4 2046 1954 1956 2050
		f 4 3118 3120 -3114 -3078
		mu 0 4 2037 1955 1953 2038
		f 4 3116 3122 -3122 -2922
		mu 0 4 2050 1956 1958 2052
		f 4 3123 3125 -3119 -3076
		mu 0 4 2036 1957 1955 2037
		f 4 3121 3126 -3102 -2923
		mu 0 4 2052 1958 1945 2043
		f 4 3106 3127 -3124 -3074
		mu 0 4 2035 1946 1957 2036
		f 4 3128 3148 3149 -3147
		mu 0 4 2061 2062 2063 2064
		f 4 3129 3134 3150 -3149
		mu 0 4 2062 2065 2066 2063
		f 4 -3151 3135 3151 3152
		mu 0 4 2063 2066 2067 2068
		f 4 -3150 -3153 3153 -3148
		mu 0 4 2064 2063 2068 2069
		f 4 3227 3225 3157 3158
		mu 0 4 2070 2071 2072 2073
		f 4 3228 3229 3226 -3226
		mu 0 4 2071 2074 2075 2072
		f 4 -3287 3289 -3232 3275
		mu 0 4 2076 2077 2075 2078
		f 4 -3158 -3161 -3131 3161
		mu 0 4 2073 2072 2079 2080
		f 4 3130 3291 3290 -3163
		mu 0 4 2080 2079 2081 2082
		f 3 3288 3286 3287
		mu 0 3 2083 2077 2076
		f 4 -3166 3139 3166 3167
		mu 0 4 2083 2084 2085 2086
		f 4 -3291 3292 3168 -3164
		mu 0 4 2082 2081 2086 2087
		f 4 -3169 3169 3170 3171
		mu 0 4 2087 2086 2088 2089
		f 4 -3167 3140 3172 -3170
		mu 0 4 2086 2085 2090 2088
		f 4 -3173 3141 -3134 3173
		mu 0 4 2088 2090 2091 2092
		f 4 -3171 -3174 -3133 3174
		mu 0 4 2089 2088 2092 2093
		f 4 3132 3177 3178 -3176
		mu 0 4 2093 2092 2094 2095
		f 4 3133 3142 3179 -3178
		mu 0 4 2092 2091 2096 2094
		f 4 -3180 3143 3180 3181
		mu 0 4 2094 2096 2097 2098
		f 4 -3179 -3182 3182 -3177
		mu 0 4 2095 2094 2098 2099
		f 4 -3183 3183 3184 3185
		mu 0 4 2099 2098 2100 2101
		f 4 -3181 3144 3186 -3184
		mu 0 4 2098 2097 2102 2100
		f 4 -3187 3145 -3130 3187
		mu 0 4 2100 2102 2065 2062
		f 4 -3185 -3188 -3129 3188
		mu 0 4 2101 2100 2062 2061
		f 4 -3146 3189 3208 -3135
		mu 0 4 2065 2102 2103 2066
		f 4 -3145 3190 3191 -3190
		mu 0 4 2102 2097 2104 2103
		f 4 -3192 3192 3193 3194
		mu 0 4 2103 2104 2105 2106
		f 4 -3195 3207 -3136 -3209
		mu 0 4 2103 2106 2067 2066
		f 4 -3144 3195 3196 -3191
		mu 0 4 2097 2096 2107 2104
		f 4 -3143 -3142 3197 -3196
		mu 0 4 2096 2091 2090 2107
		f 4 -3198 -3141 3198 3199
		mu 0 4 2107 2090 2085 2108
		f 4 -3197 -3200 3200 -3193
		mu 0 4 2104 2107 2108 2105
		f 4 3270 3267 3202 3203
		mu 0 4 2109 2110 2111 2112
		f 4 3271 -3140 3204 -3268
		mu 0 4 2110 2113 2114 2111
		f 4 -3205 -3139 3276 3272
		mu 0 4 2111 2114 2115 2116
		f 4 3277 3273 -3203 -3273
		mu 0 4 2116 2117 2112 2111
		f 4 3269 -3204 3209 3211
		mu 0 4 2118 2109 2112 2119
		f 4 -3274 3380 3379 -3210
		mu 0 4 2112 2117 2120 2119
		f 3 3268 -3212 3214
		mu 0 3 2121 2118 2119
		f 3 -3380 3381 -3215
		mu 0 3 2119 2120 2121
		f 3 -3194 3328 -3218
		mu 0 3 2122 2123 2124
		f 4 3313 3330 -3222 -3310
		mu 0 4 2125 2126 2127 2128
		f 3 3221 3331 -3223
		mu 0 3 2128 2127 2129
		f 4 -3156 3156 3237 3236
		mu 0 4 2130 2131 2132 2133
		f 4 -3155 3230 3235 -3157
		mu 0 4 2131 2134 2135 2132
		f 4 -3231 3136 3159 3233
		mu 0 4 2135 2134 2136 2078
		f 4 -3233 -3234 3231 -3230
		mu 0 4 2074 2135 2078 2075
		f 4 -3236 3232 -3229 -3235
		mu 0 4 2132 2135 2074 2071
		f 4 -3238 3234 -3228 3224
		mu 0 4 2133 2132 2071 2070
		f 3 3345 3344 3247
		mu 0 3 2137 2138 2139
		f 3 -3217 -3345 3346
		mu 0 3 2140 2139 2138
		f 4 3210 3238 -3243 -3240
		mu 0 4 2141 2142 2143 2144
		f 3 -3244 -3239 3215
		mu 0 3 2140 2143 2142
		f 4 -3259 3262 3259 3213
		mu 0 4 2145 2146 2147 2148
		f 3 -3246 -3214 3216
		mu 0 3 2121 2145 2148
		f 3 3263 -3248 -3260
		mu 0 3 2149 2137 2139
		f 4 3154 3248 -3250 3246
		mu 0 4 2150 2151 2152 2153
		f 4 3155 3250 -3252 -3249
		mu 0 4 2151 2154 2155 2152
		f 4 -3256 3240 3218 -3254
		mu 0 4 2156 2157 2158 2159
		f 4 -3311 3314 3311 -3255
		mu 0 4 2160 2161 2162 2163
		f 3 -3258 3254 3223
		mu 0 3 2164 2160 2163
		f 3 3342 -3281 3283
		mu 0 3 2165 2166 2167
		f 3 -3261 -3264 -3282
		mu 0 3 2168 2137 2149
		f 3 -3262 3260 3284
		mu 0 3 2169 2137 2168
		f 3 -3265 3261 -3241
		mu 0 3 2144 2137 2169
		f 3 3296 -3266 -3269
		mu 0 3 2121 2170 2118
		f 4 3297 -3267 -3270 3265
		mu 0 4 2170 2171 2109 2118
		f 4 3298 3295 -3271 3266
		mu 0 4 2171 2172 2110 2109
		f 3 3299 -3272 -3296
		mu 0 3 2172 2113 2110
		f 3 -3276 -3160 3137
		mu 0 3 2076 2078 2136
		f 3 -3277 -3138 3205
		mu 0 3 2116 2115 2173
		f 3 3279 -3283 -3206
		mu 0 3 2173 2167 2116
		f 3 -3279 3274 3258
		mu 0 3 2145 2117 2146
		f 3 3282 3280 3343
		mu 0 3 2116 2167 2166
		f 3 -3280 -3137 3206
		mu 0 3 2174 2175 2150
		f 3 3212 3285 -3284
		mu 0 3 2167 2176 2165
		f 3 -3213 -3207 -3247
		mu 0 3 2153 2174 2150
		f 3 -3285 -3286 -3253
		mu 0 3 2169 2168 2177
		f 3 -3288 3138 3165
		mu 0 3 2083 2076 2084
		f 4 -3227 -3290 -3132 3160
		mu 0 4 2072 2075 2077 2079
		f 4 3164 -3292 3131 -3289
		mu 0 4 2083 2081 2079 2077
		f 3 -3293 -3165 -3168
		mu 0 3 2086 2081 2083
		f 3 -3294 -3297 -3216
		mu 0 3 2178 2170 2121
		f 4 -3295 -3298 3293 -3211
		mu 0 4 2179 2171 2170 2178
		f 4 -3201 3201 -3299 3294
		mu 0 4 2179 2180 2172 2171
		f 3 -3199 -3300 -3202
		mu 0 3 2180 2113 2172
		f 4 3337 3333 3309 3300
		mu 0 4 2181 2182 2125 2128
		f 3 3336 -3301 3222
		mu 0 3 2129 2181 2128
		f 3 3321 -3303 -3305
		mu 0 3 2129 2183 2184
		f 4 3322 3318 -3306 3302
		mu 0 4 2183 2185 2186 2184
		f 3 3301 3339 -3308
		mu 0 3 2122 2187 2188
		f 4 3303 3324 -3309 -3307
		mu 0 4 2189 2190 2191 2192
		f 4 3217 3329 -3314 -3220
		mu 0 4 2122 2124 2126 2125
		f 4 -3315 -3257 3253 3220
		mu 0 4 2162 2161 2156 2159
		f 4 -3313 -3319 3323 -3304
		mu 0 4 2189 2186 2185 2190
		f 4 3219 -3334 3338 -3302
		mu 0 4 2122 2125 2182 2187
		f 3 -3224 -3318 -3322
		mu 0 3 2164 2163 2193
		f 4 3315 -3323 3317 -3312
		mu 0 4 2162 2194 2193 2163
		f 4 -3324 -3316 -3221 -3320
		mu 0 4 2195 2194 2162 2159
		f 4 -3325 3319 -3219 -3321
		mu 0 4 2196 2195 2159 2158
		f 3 3371 -3326 -3329
		mu 0 3 2197 2198 2199
		f 3 -3372 3239 3367
		mu 0 3 2198 2197 2200
		f 4 -3349 3325 3368 -3352
		mu 0 4 2201 2199 2198 2202
		f 4 3376 3373 3310 -3373
		mu 0 4 2203 2204 2161 2160
		f 3 3375 3372 3257
		mu 0 3 2164 2203 2160
		f 3 3304 -3333 -3337
		mu 0 3 2129 2184 2181
		f 4 3316 -3338 3332 3305
		mu 0 4 2186 2182 2181 2184
		f 4 -3339 -3317 3312 -3335
		mu 0 4 2187 2182 2186 2189
		f 4 -3340 3334 3306 -3336
		mu 0 4 2188 2187 2189 2192
		f 4 -3263 -3341 -3343 3281
		mu 0 4 2147 2146 2166 2165
		f 3 -3342 3340 -3275
		mu 0 3 2117 2166 2146
		f 3 -3344 3341 -3278
		mu 0 3 2116 2166 2117
		f 4 3242 3241 -3346 3264
		mu 0 4 2144 2143 2138 2137
		f 3 -3347 -3242 3243
		mu 0 3 2140 2138 2143
		f 3 -3330 3348 -3348
		mu 0 3 2205 2199 2201
		f 3 3256 3349 -3351
		mu 0 3 2206 2207 2208
		f 4 -3374 3377 3374 -3354
		mu 0 4 2209 2210 2211 2212
		f 4 3347 3355 -3357 -3353
		mu 0 4 2205 2201 2213 2214
		f 4 3351 3369 -3359 -3356
		mu 0 4 2201 2202 2215 2213
		f 4 -3350 3353 3359 -3358
		mu 0 4 2208 2207 2216 2217
		f 3 -3375 3378 -3362
		mu 0 3 2212 2211 2218
		f 3 3356 3362 -3361
		mu 0 3 2214 2213 2219
		f 3 3358 3370 -3363
		mu 0 3 2213 2215 2219
		f 3 -3360 3361 -3364
		mu 0 3 2217 2216 2219
		f 3 -3368 3255 -3365
		mu 0 3 2198 2200 2206
		f 4 -3369 3364 3350 -3366
		mu 0 4 2202 2198 2206 2208
		f 4 -3370 3365 3357 -3367
		mu 0 4 2215 2202 2208 2217
		f 3 -3371 3366 3363
		mu 0 3 2219 2215 2217
		f 3 -3332 3327 -3376
		mu 0 3 2164 2220 2203
		f 4 -3331 3326 -3377 -3328
		mu 0 4 2220 2221 2204 2203
		f 4 -3378 -3327 3352 3354
		mu 0 4 2211 2210 2222 2223
		f 3 -3379 -3355 3360
		mu 0 3 2218 2211 2223
		f 3 -3381 3278 3244
		mu 0 3 2120 2117 2145
		f 3 -3382 -3245 3245
		mu 0 3 2121 2120 2145
		f 4 -3152 3382 3384 -3384
		mu 0 4 2224 2225 2226 2227
		f 4 -3154 3383 3386 -3386
		mu 0 4 2228 2224 2227 2229
		f 4 -3208 3307 3387 -3383
		mu 0 4 2225 2230 2231 2226
		f 3 3249 3390 -3389
		mu 0 3 2153 2152 2232
		f 3 -3391 3251 -3390
		mu 0 3 2232 2152 2155
		f 3 3335 3392 -3392
		mu 0 3 2231 2233 2234
		f 3 -3385 3393 -3395
		mu 0 3 2227 2226 2234
		f 3 -3387 3394 -3396
		mu 0 3 2229 2227 2234
		f 3 -3388 3391 -3394
		mu 0 3 2226 2231 2234
		f 3 -3397 3320 3252
		mu 0 3 2153 2235 2236
		f 3 3308 3399 -3399
		mu 0 3 2233 2235 2237
		f 3 3396 3397 -3400
		mu 0 3 2235 2153 2237
		f 3 3388 3400 -3398
		mu 0 3 2153 2232 2237
		f 3 -3393 3398 -3402
		mu 0 3 2234 2233 2237
		f 4 3146 -3422 -3421 -3403
		mu 0 4 2238 2239 2240 2241
		f 4 3420 -3423 -3409 -3404
		mu 0 4 2241 2240 2242 2243
		f 4 -3425 -3424 -3410 3422
		mu 0 4 2240 2244 2245 2242
		f 4 3147 -3426 3424 3421
		mu 0 4 2239 2246 2244 2240
		f 4 -3159 -3430 -3487 -3489
		mu 0 4 2247 2248 2249 2250
		f 4 3486 -3488 -3491 -3490
		mu 0 4 2250 2249 2251 2252
		f 4 -3535 3492 -3549 3545
		mu 0 4 2253 2254 2251 2255
		f 4 -3162 3404 3431 3429
		mu 0 4 2248 2256 2257 2249
		f 4 3162 -3550 -3551 -3405
		mu 0 4 2256 2258 2259 2257
		f 3 -3547 -3546 -3548
		mu 0 3 2260 2253 2255
		f 4 -3436 -3435 -3414 3433
		mu 0 4 2260 2261 2262 2263
		f 4 3163 -3437 -3552 3549
		mu 0 4 2258 2264 2261 2259
		f 4 -3172 -3439 -3438 3436
		mu 0 4 2264 2265 2266 2261
		f 4 3437 -3440 -3415 3434
		mu 0 4 2261 2266 2267 2262
		f 4 -3441 3407 -3416 3439
		mu 0 4 2266 2268 2269 2267
		f 4 -3175 3406 3440 3438
		mu 0 4 2265 2270 2268 2266
		f 4 3175 -3443 -3442 -3407
		mu 0 4 2270 2271 2272 2268
		f 4 3441 -3444 -3417 -3408
		mu 0 4 2268 2272 2273 2269
		f 4 -3446 -3445 -3418 3443
		mu 0 4 2272 2274 2275 2273
		f 4 3176 -3447 3445 3442
		mu 0 4 2271 2276 2274 2272
		f 4 -3186 -3449 -3448 3446
		mu 0 4 2276 2277 2278 2274
		f 4 3447 -3450 -3419 3444
		mu 0 4 2274 2278 2279 2275
		f 4 -3451 3403 -3420 3449
		mu 0 4 2278 2241 2243 2279
		f 4 -3189 3402 3450 3448
		mu 0 4 2277 2238 2241 2278
		f 4 3408 -3471 -3452 3419
		mu 0 4 2243 2242 2280 2279
		f 4 3451 -3454 -3453 3418
		mu 0 4 2279 2280 2281 2275
		f 4 -3457 -3456 -3455 3453
		mu 0 4 2280 2282 2283 2281
		f 4 3470 3409 -3470 3456
		mu 0 4 2280 2242 2245 2282
		f 4 3452 -3459 -3458 3417
		mu 0 4 2275 2281 2284 2273
		f 4 3457 -3460 3415 3416
		mu 0 4 2273 2284 2267 2269
		f 4 -3462 -3461 3414 3459
		mu 0 4 2284 2285 2262 2267
		f 4 3454 -3463 3461 3458
		mu 0 4 2281 2283 2285 2284
		f 4 -3466 -3465 -3527 -3530
		mu 0 4 2286 2287 2288 2289
		f 4 3526 -3467 3413 -3531
		mu 0 4 2289 2288 2290 2291
		f 4 -3532 -3536 3412 3466
		mu 0 4 2288 2292 2293 2290
		f 4 3531 3464 -3533 -3537
		mu 0 4 2292 2288 2287 2294
		f 4 -3474 -3472 3465 -3529
		mu 0 4 2295 2296 2287 2286
		f 4 3471 -3639 -3640 3532
		mu 0 4 2287 2296 2297 2294
		f 3 -3477 3473 -3528
		mu 0 3 2298 2296 2295
		f 3 3476 -3641 3638
		mu 0 3 2296 2298 2297
		f 3 3479 -3588 3455
		mu 0 3 2299 2300 2301
		f 4 3568 3483 -3590 -3573
		mu 0 4 2302 2303 2304 2305
		f 3 3484 -3591 -3484
		mu 0 3 2303 2306 2304
		f 4 -3237 -3498 -3429 3427
		mu 0 4 2307 2308 2309 2310
		f 4 3428 -3497 -3492 3426
		mu 0 4 2310 2309 2311 2312
		f 4 -3495 -3431 -3411 3491
		mu 0 4 2311 2254 2313 2312
		f 4 3490 -3493 3494 3493
		mu 0 4 2252 2251 2254 2311
		f 4 3495 3489 -3494 3496
		mu 0 4 2309 2250 2252 2311
		f 4 -3225 3488 -3496 3497
		mu 0 4 2308 2247 2250 2309
		f 3 -3508 -3604 -3605
		mu 0 3 2314 2315 2316
		f 3 -3606 3603 3478
		mu 0 3 2317 2316 2315
		f 4 3499 3502 -3499 -3473
		mu 0 4 2318 2319 2320 2321
		f 3 -3478 3498 3503
		mu 0 3 2317 2321 2320
		f 4 -3476 -3519 -3522 3517
		mu 0 4 2322 2323 2324 2325
		f 3 -3479 3475 3505
		mu 0 3 2298 2323 2322
		f 3 3518 3507 -3523
		mu 0 3 2326 2315 2314
		f 4 -3507 3509 -3509 -3427
		mu 0 4 2327 2328 2329 2330
		f 4 3508 3510 -3251 -3428
		mu 0 4 2330 2329 2331 2332
		f 4 3512 -3481 -3501 3514
		mu 0 4 2333 2334 2335 2336
		f 4 3513 -3571 -3574 3569
		mu 0 4 2337 2338 2339 2340
		f 3 -3486 -3514 3516
		mu 0 3 2341 2338 2337
		f 3 -3543 3539 -3602
		mu 0 3 2342 2343 2344
		f 3 3540 3522 3519
		mu 0 3 2345 2326 2314
		f 3 -3544 -3520 3520
		mu 0 3 2346 2345 2314
		f 3 3500 -3521 3523
		mu 0 3 2319 2346 2314
		f 3 3527 3524 -3556
		mu 0 3 2298 2295 2347
		f 4 -3525 3528 3525 -3557
		mu 0 4 2347 2295 2286 2348
		f 4 -3526 3529 -3555 -3558
		mu 0 4 2348 2286 2289 2349
		f 3 3554 3530 -3559
		mu 0 3 2349 2289 2291
		f 3 -3412 3430 3534
		mu 0 3 2253 2313 2254
		f 3 -3468 3411 3535
		mu 0 3 2292 2350 2293
		f 3 3467 3541 -3539
		mu 0 3 2350 2292 2343
		f 3 -3518 -3534 3537
		mu 0 3 2322 2325 2294
		f 3 -3603 -3540 -3542
		mu 0 3 2292 2344 2343
		f 3 -3469 3410 3538
		mu 0 3 2351 2327 2352
		f 3 3542 -3545 -3475
		mu 0 3 2343 2342 2353
		f 3 3506 3468 3474
		mu 0 3 2328 2327 2351
		f 3 3511 3544 3543
		mu 0 3 2346 2354 2345
		f 3 -3434 -3413 3546
		mu 0 3 2260 2263 2253
		f 4 -3432 3405 3548 3487
		mu 0 4 2249 2257 2255 2251
		f 4 3547 -3406 3550 -3433
		mu 0 4 2260 2255 2257 2259
		f 3 3435 3432 3551
		mu 0 3 2261 2260 2259
		f 3 3477 3555 3552
		mu 0 3 2355 2298 2347
		f 4 3472 -3553 3556 3553
		mu 0 4 2356 2355 2347 2348
		f 4 -3554 3557 -3464 3462
		mu 0 4 2356 2348 2349 2357
		f 3 3463 3558 3460
		mu 0 3 2357 2349 2291
		f 4 -3560 -3569 -3593 -3597
		mu 0 4 2358 2303 2302 2359
		f 3 -3485 3559 -3596
		mu 0 3 2306 2303 2358
		f 3 3563 3561 -3581
		mu 0 3 2306 2360 2361
		f 4 -3562 3564 -3578 -3582
		mu 0 4 2361 2360 2362 2363
		f 3 3566 -3599 -3561
		mu 0 3 2299 2364 2365
		f 4 3565 3567 -3584 -3563
		mu 0 4 2366 2367 2368 2369
		f 4 3481 3572 -3589 -3480
		mu 0 4 2299 2302 2305 2300
		f 4 -3483 -3513 3515 3573
		mu 0 4 2339 2334 2333 2340
		f 4 3562 -3583 3577 3571
		mu 0 4 2366 2369 2363 2362
		f 4 3560 -3598 3592 -3482
		mu 0 4 2299 2365 2359 2302
		f 3 3580 3576 3485
		mu 0 3 2341 2370 2338
		f 4 3570 -3577 3581 -3575
		mu 0 4 2339 2338 2370 2371
		f 4 3578 3482 3574 3582
		mu 0 4 2372 2334 2339 2371
		f 4 3579 3480 -3579 3583
		mu 0 4 2373 2335 2334 2372
		f 3 3587 3584 -3631
		mu 0 3 2374 2375 2376
		f 3 -3627 -3500 3630
		mu 0 3 2376 2377 2374
		f 4 3610 -3628 -3585 3607
		mu 0 4 2378 2379 2376 2375
		f 4 3631 -3570 -3633 -3636
		mu 0 4 2380 2337 2340 2381
		f 3 -3517 -3632 -3635
		mu 0 3 2341 2337 2380
		f 3 3595 3591 -3564
		mu 0 3 2306 2358 2360
		f 4 -3565 -3592 3596 -3576
		mu 0 4 2362 2360 2358 2359
		f 4 3593 -3572 3575 3597
		mu 0 4 2365 2366 2362 2359
		f 4 3594 -3566 -3594 3598
		mu 0 4 2364 2367 2366 2365
		f 4 -3541 3601 3599 3521
		mu 0 4 2324 2342 2344 2325
		f 3 3533 -3600 3600
		mu 0 3 2294 2325 2344
		f 3 3536 -3601 3602
		mu 0 3 2292 2294 2344
		f 4 -3524 3604 -3502 -3503
		mu 0 4 2319 2314 2316 2320
		f 3 -3504 3501 3605
		mu 0 3 2317 2320 2316
		f 3 3606 -3608 3588
		mu 0 3 2382 2378 2375
		f 3 3609 -3609 -3516
		mu 0 3 2383 2384 2385
		f 4 3612 -3634 -3637 3632
		mu 0 4 2386 2387 2388 2389
		f 4 3611 3615 -3615 -3607
		mu 0 4 2382 2390 2391 2378
		f 4 3614 3617 -3629 -3611
		mu 0 4 2378 2391 2392 2379
		f 4 3616 -3619 -3613 3608
		mu 0 4 2384 2393 2394 2385
		f 3 3620 -3638 3633
		mu 0 3 2387 2395 2388
		f 3 3619 -3622 -3616
		mu 0 3 2390 2396 2391
		f 3 3621 -3630 -3618
		mu 0 3 2391 2396 2392
		f 3 3622 -3621 3618
		mu 0 3 2393 2396 2394
		f 3 3623 -3515 3626
		mu 0 3 2376 2383 2377
		f 4 3624 -3610 -3624 3627
		mu 0 4 2379 2384 2383 2376
		f 4 3625 -3617 -3625 3628
		mu 0 4 2392 2393 2384 2379
		f 3 -3623 -3626 3629
		mu 0 3 2396 2393 2392
		f 3 3634 -3587 3590
		mu 0 3 2341 2380 2397
		f 4 3586 3635 -3586 3589
		mu 0 4 2397 2380 2381 2398
		f 4 -3614 -3612 3585 3636
		mu 0 4 2388 2399 2400 2389
		f 3 -3620 3613 3637
		mu 0 3 2395 2399 2388
		f 3 -3505 -3538 3639
		mu 0 3 2297 2322 2294
		f 3 -3506 3504 3640
		mu 0 3 2298 2322 2297
		f 4 3642 -3644 -3642 3423
		mu 0 4 2401 2402 2403 2404
		f 4 3385 -3645 -3643 3425
		mu 0 4 2405 2406 2402 2401
		f 4 3641 -3646 -3567 3469
		mu 0 4 2404 2403 2407 2408
		f 3 3646 -3648 -3510
		mu 0 3 2328 2409 2329
		f 3 3389 -3511 3647
		mu 0 3 2409 2331 2329
		f 3 3648 -3650 -3595
		mu 0 3 2407 2410 2411
		f 3 3651 -3651 3643
		mu 0 3 2402 2410 2403
		f 3 3395 -3652 3644
		mu 0 3 2406 2410 2402
		f 3 3650 -3649 3645
		mu 0 3 2403 2410 2407
		f 3 -3512 -3580 3652
		mu 0 3 2328 2412 2413
		f 3 3654 -3656 -3568
		mu 0 3 2411 2414 2413
		f 3 3655 -3654 -3653
		mu 0 3 2413 2414 2328
		f 3 3653 -3401 -3647
		mu 0 3 2328 2414 2409
		f 3 3401 -3655 3649
		mu 0 3 2410 2414 2411
		f 4 3656 3673 -3665 -3673
		mu 0 4 2415 2416 2417 2418
		f 4 3657 3674 -3666 -3674
		mu 0 4 2416 2419 2420 2417
		f 4 3658 3675 -3667 -3675
		mu 0 4 2419 2421 2422 2420
		f 4 3659 3676 -3668 -3676
		mu 0 4 2421 2423 2424 2422
		f 4 3660 3677 -3669 -3677
		mu 0 4 2423 2425 2426 2424
		f 4 3661 3678 -3670 -3678
		mu 0 4 2425 2427 2428 2426
		f 4 3662 3679 -3671 -3679
		mu 0 4 2427 2429 2430 2428
		f 4 3663 3672 -3672 -3680
		mu 0 4 2429 2431 2432 2430
		f 3 -3657 -3681 3681
		mu 0 3 2433 2434 2435
		f 3 -3658 -3682 3682
		mu 0 3 2436 2433 2435
		f 3 -3659 -3683 3683
		mu 0 3 2437 2436 2435
		f 3 -3660 -3684 3684
		mu 0 3 2438 2437 2435
		f 3 -3661 -3685 3685
		mu 0 3 2439 2438 2435
		f 3 -3662 -3686 3686
		mu 0 3 2440 2439 2435
		f 3 -3663 -3687 3687
		mu 0 3 2441 2440 2435
		f 3 -3664 -3688 3680
		mu 0 3 2434 2441 2435
		f 3 3664 3689 -3689
		mu 0 3 2442 2443 2444
		f 3 3665 3690 -3690
		mu 0 3 2443 2445 2444
		f 3 3666 3691 -3691
		mu 0 3 2445 2446 2444
		f 3 3667 3692 -3692
		mu 0 3 2446 2447 2444
		f 3 3668 3693 -3693
		mu 0 3 2447 2448 2444
		f 3 3669 3694 -3694
		mu 0 3 2448 2449 2444
		f 3 3670 3695 -3695
		mu 0 3 2449 2450 2444
		f 3 3671 3688 -3696
		mu 0 3 2450 2442 2444;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode transform -n "Mesh_Sword";
	rename -uid "A9CA567A-4658-C997-B929-8E8450A44A8F";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 3.1805546814635168e-015 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "Mesh_SwordShape" -p "Mesh_Sword";
	rename -uid "0675234F-4705-265A-7AC3-3BA118FCD523";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.39973104000091553 0.52682599425315857 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "Mesh_SwordShapeOrig" -p "Mesh_Sword";
	rename -uid "CCDDD74A-4864-C91F-7677-CEAA94140A62";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 353 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.48525 0.5069319 0.49637818
		 0.50880128 0.46460319 0.64252406 0.45322585 0.64091682 0.76316524 0.64252484 0.73138976
		 0.50880224 0.74251771 0.50693274 0.77454329 0.6409176 0.49958825 0.81505692 0.44629002
		 0.73058701 0.45679331 0.72672862 0.50828695 0.80699807 0.7709744 0.72673023 0.78147793
		 0.7305885 0.7281785 0.81505692 0.71948004 0.80699807 0.7705965 0.71273607 0.78219509
		 0.71419281 0.44557214 0.7141912 0.4571712 0.71273541 0.63183928 0.93448859 0.62701845
		 0.92243212 0.59592867 0.93448859 0.60074854 0.92243212 0.1805172 0.6841771 0.18554688
		 0.68278021 0.18554688 0.79273623 0.17910814 0.79254019 0.19057751 0.6841771 0.1919868
		 0.79254019 0.18554688 0.67213011 0.19067717 0.67214406 0.1804173 0.67214406 0.18554688
		 0.96856517 0.17908025 0.9684636 0.19201565 0.9684636 0.62242532 0.94249314 0.61388421
		 0.94330412 0.61388421 0.93077999 0.62037086 0.93067753 0.60534263 0.94249314 0.60739613
		 0.93067753 0.61388421 0.75493401 0.62033629 0.75473839 0.60743189 0.75473839 0.61388421
		 0.6449514 0.61891961 0.64635062 0.60884857 0.64635062 0.61388421 0.6342718 0.61902428
		 0.63428807 0.60874391 0.63428807 0.61388421 0.57995164 0.61980081 0.57803732 0.60796785
		 0.57803732 0.60688233 0.47735536 0.61388421 0.47815317 0.62088633 0.47735536 0.17855644
		 0.51526254 0.18554688 0.51606035 0.18554688 0.61783653 0.17964292 0.61592203 0.19253969
		 0.51526338 0.19145203 0.61592203 0.068067312 0.54672009 0.036296129 0.6804257 0.079981565
		 0.84481126 0.028478384 0.7645815 0.34261775 0.76458079 0.29111457 0.84481126 0.30303192
		 0.54671615 0.33480072 0.68042427 0.028865099 0.75061476 0.34223199 0.75061303 0.1724484
		 0.96021897 0.19864821 0.96021897 0.024921894 0.67881775 0.05694437 0.54485154 0.017267227
		 0.75206733 0.017975569 0.76843917 0.071288347 0.85287112 0.16762757 0.97227293 0.1770215
		 0.98027217 0.18554688 0.98108226 0.19407463 0.98027217 0.20346999 0.97227293 0.29980731
		 0.85287029 0.35312033 0.76843834 0.35382938 0.75206643 0.34617376 0.67881638 0.31415534
		 0.54484856 0.17752838 0.41398463 0.10076332 0.41378918 0.18554688 0.41376501 0.19356179
		 0.41398621 0.27032328 0.41378763 0.28124666 0.41200575 0.52908683 0.37586638 0.51815796
		 0.37408313 0.6058588 0.37606898 0.61388421 0.37585011 0.62190986 0.37606898 0.69868279
		 0.37586728 0.70961142 0.37408394 0.089838266 0.41200668 0.45808992 0.27103794 0.74889696
		 0.27103794 0.74250066 0.28715134 0.46448734 0.28715134 0.72770762 0.33290949 0.47928306
		 0.33290949 0.7204603 0.34695864 0.48653033 0.34695864 0.69401371 0.1873422 0.44558871
		 0.1873422 0.43079484 0.14158337 0.70880771 0.14158337 0.86176789 0.37743613 0.80692101
		 0.4186289 0.8066833 0.40327066 0.84697676 0.37521753 0.40007749 0.41863671 0.34522894
		 0.37744766 0.36001924 0.3752276 0.40031412 0.40327841 0.34984338 0.20951626 0.38339841
		 0.24574572 0.36661279 0.25770414 0.32631946 0.22965088 0.78088069 0.40300137 0.78989899
		 0.3913129 0.82345402 0.35508212 0.83627701 0.34575963 0.75620508 0.24574572 0.78976011
		 0.20951548 0.81328285 0.22965023 0.77298951 0.25770336 0.37071657 0.34576973 0.38354099
		 0.35509115 0.41709784 0.39131913 0.42611691 0.40300685 0.39241576 0.25743419 0.36637557
		 0.27306247 0.68676627 0.20139205 0.45283604 0.20139205 0.77322698 0.27306169 0.7471869
		 0.25743419 0.82807386 0.23186961 0.80258393 0.20019317 0.42439783 0.12546997 0.7152046
		 0.12546997 0.31152952 0.23187035 0.33701944 0.20019388 0.93905056 0.031248212 0.93905056
		 0.10381705 0.91164303 0.10381705 0.91164303 0.031248212 0.9394713 0.53178149 0.93947124
		 0.7577374 0.87424338 0.7577374 0.87424368 0.53178149 0.18976855 0.10381705 0.16236085
		 0.10381705 0.16236085 0.031248212 0.18976855 0.031248212 0.25448966 0.031248212 0.25448966
		 0.10381705 0.29236013 0.031248212 0.29236013 0.10381705 0.4059729 0.031248212 0.69543862
		 0.031248212 0.69543862 0.10381705 0.4059729 0.10381705 0.84692192 0.10381705 0.80905068
		 0.10381705 0.80905068 0.031248212 0.84692192 0.031248212 0.93947136 0.83272821 0.87424338
		 0.83272821 0.87424356 0.45679083 0.9394713 0.45679083 0.96261156 0.53178149 0.96261144
		 0.7577374 0.85110343 0.7577374 0.85110348 0.53178161 0.96261156 0.83272821 0.93947124
		 0.8573066 0.87424338 0.8573066 0.85110331 0.83272821 0.8742435 0.43221244 0.93947124
		 0.43221244 0.9626115 0.45679083 0.85110348 0.45679083 0.026196241 0.29501295 0.12828469
		 0.29501295 0.12828469 0.39430332 0.026196241 0.39430332 0.22975397 0.39430332 0.22975397
		 0.29501295 0.33184171 0.29501313 0.33184195 0.39430356 0.98125839 0.16021612 0.98907685
		 0.1623237 0.95603681 0.26020813 0.94822741 0.25770777 0.98511219 0.15312628 0.94529796
		 0.14394134 0.94782805 0.13583654 0.44335508 0.43704396 0.44335508 0.44585901 0.34406447
		 0.4458591 0.34406471 0.43704405 0.90513968 0.13744053 0.90514064 0.12895484 0.49111199
		 0.94709384 0.48329425 0.9492023 0.45026207 0.85171139 0.45807076 0.84921026 0.48714828
		 0.95629126 0.44986582 0.97358191 0.4473362 0.96547788 0.40718007 0.98046684 0.40718007
		 0.97198164 0.13746619 0.29501313 0.13746643 0.39430356 0.44949079 0.84364855 0.43139935
		 0.85382748 0.4309411 0.84529352 0.40718007 0.85467565 0.40718007 0.84617466 0.94745708
		 0.26577061 0.92890382 0.26412648 0.92936325 0.25559229 0.90514064 0.2632463 0.90514064
		 0.25474429 0.82902384 0.16021612 0.8251698 0.15312628 0.86245394 0.13583742 0.86498404
		 0.14394134 0.82120514 0.1623237 0.86205292 0.25770867 0.85424352 0.26020885 0.44335508
		 0.61152291 0.44335508 0.62033749 0.34406471 0.62033749 0.34406447 0.61152291 0.32721305
		 0.9562906 0.33106709 0.94920141 0.36702442 0.96547788 0.36449504 0.97358191 0.32324886
		 0.94709319;
	setAttr ".uvst[0].uvsp[250:352]" 0.35628963 0.84921026 0.36409879 0.85171056
		 0.36486959 0.84364855 0.38341951 0.84529376 0.38296103 0.85382748 0.22057176 0.29501313
		 0.22057223 0.39430356 0.86282444 0.26577169 0.88091707 0.25559229 0.88137627 0.26412696
		 0.34406447 0.52869099 0.44335508 0.52869099 0.44335508 0.57136494 0.34406471 0.571365
		 0.17901921 0.39430356 0.17901921 0.29501313 0.2026608 0.29501295 0.2026608 0.39430332
		 0.15537763 0.39430356 0.15537763 0.29501313 0.34406471 0.48601663 0.44335508 0.48601657
		 0.24193668 0.12797588 0.27347898 0.12797585 0.27347851 0.25998828 0.24193668 0.25998825
		 0.02114439 0.12797588 0.052686691 0.12797585 0.052686214 0.25998828 0.02114439 0.25998831
		 0.084228039 0.12797585 0.084228039 0.25998834 0.11576986 0.12797588 0.11576986 0.25998831
		 0.14731169 0.12797588 0.14731169 0.25998828 0.17885303 0.12797588 0.17885303 0.25998825
		 0.21039534 0.12797588 0.21039534 0.25998819 0.076881886 0.95546675 0.05672884 0.96381527
		 0.056727886 0.93531358 0.036574364 0.95546758 0.028225899 0.93531358 0.036574364
		 0.91515946 0.056727886 0.90681171 0.076881409 0.91515946 0.085229874 0.93531358 0.80456066
		 0.98691088 0.77131581 0.986911 0.77147675 0.9576534 0.80475259 0.9576534 0.83764172
		 0.986911 0.83764076 0.9576534 0.87072134 0.98691088 0.87053013 0.9576534 0.90396214
		 0.98691112 0.90380168 0.95765346 0.93694234 0.98691094 0.93808556 0.95765352 0.96737957
		 0.98691094 0.97479367 0.95765346 0.73833227 0.986911 0.70789623 0.986911 0.70048141
		 0.95765346 0.73719025 0.9576534 0.77248907 0.95031583 0.80528355 0.95031583 0.83764076
		 0.95031583 0.86999559 0.95031589 0.9027884 0.95031583 0.93674684 0.95031595 0.97277808
		 0.95031589 0.70249653 0.95031583 0.73852921 0.95031595 0.7533052 0.89331335 0.78048134
		 0.89331335 0.80881929 0.89331335 0.83764029 0.89331335 0.86645985 0.89331335 0.89479494
		 0.89331335 0.92196822 0.89331335 0.94717574 0.89331347 0.72809672 0.89331335 0.27347898
		 0.26416779 0.24193668 0.26416779 0.21039534 0.26416782 0.17885303 0.26416779 0.14731169
		 0.26416779 0.11576986 0.26416779 0.084228039 0.26416788 0.052686691 0.26416779 0.02114439
		 0.26416782 0.73100758 0.88816839 0.75458169 0.88816845 0.78110933 0.88816839 0.80908084
		 0.88816845 0.83763933 0.88816839 0.86619782 0.88816828 0.89416647 0.88816839 0.92069173
		 0.88816839 0.94426489 0.88816839;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 248 ".vt";
	setAttr ".vt[0:165]"  -8.29218197 16.85332108 -1.1255784 8.29218197 16.85332108 -1.1255784
		 -8.29218197 16.85332108 1.1255784 8.29218197 16.85332108 1.1255784 -16.005979538 53.22406006 1.1255784
		 16.005979538 53.22406006 1.1255784 -16.005979538 53.22406006 -1.1255784 16.005979538 53.22406006 -1.1255784
		 -1.36479092 73.84067535 1.1255784 1.36479092 73.84067535 1.1255784 1.36479092 73.84067535 -1.1255784
		 -1.36479092 73.84067535 -1.1255784 -14.95772552 44.60933685 1.1255784 -14.95772552 44.60933685 -1.1255784
		 14.95772552 44.60933685 -1.1255784 14.95772552 44.60933685 1.1255784 -10.71558857 61.5982132 1.1255784
		 -10.71558857 61.5982132 -1.1255784 10.71558857 61.5982132 -1.1255784 10.71558857 61.5982132 1.1255784
		 -15.83646011 51.83092499 1.1255784 -15.83646011 51.83092499 -1.1255784 15.83646011 51.83092499 -1.1255784
		 15.83646011 51.83092499 1.1255784 -1.4901161e-008 45.13552094 6.49206352 -0.63485587 45.29114532 6.39346695
		 0.63485587 45.29114532 6.39346695 1.8626451e-009 56.54364014 4.46111774 -0.66436327 56.52998352 4.38668156
		 0.66436332 56.52998352 4.38668156 1.8626451e-009 74.65749359 1.05457449 0.66770804 74.65749359 0.98509216
		 -0.66770798 74.65749359 0.98509216 1.8626451e-009 74.65749359 -1.05457449 -0.66770798 74.65749359 -0.98509216
		 0.66770804 74.65749359 -0.98509216 1.8626451e-009 56.54364014 -4.46111822 -0.66436327 56.52998352 -4.38668156
		 0.66436332 56.52998352 -4.38668156 1.8626451e-009 45.13552094 -6.49206352 0.63485593 45.29114532 -6.39346695
		 -0.63485587 45.29114532 -6.39346695 1.8626451e-009 43.90964127 -6.37408781 -0.63554609 43.92173004 -6.25557518
		 0.63554615 43.92173004 -6.25557518 1.8626451e-009 16.85332108 -3.31564069 0.6471743 16.85332108 -3.21028876
		 -0.64717424 16.85332108 -3.21028876 1.8626451e-009 16.85332108 3.3156395 -0.64717424 16.85332108 3.21028805
		 0.6471743 16.85332108 3.21028805 1.8626451e-009 38.15021515 5.79085064 -0.64633971 37.93875885 5.67532921
		 0.64633977 37.93875885 5.67532921 1.8626451e-009 43.90964127 6.37408733 -0.63554615 43.92173004 6.25557518
		 0.63554621 43.92173004 6.25557518 -1.4901161e-008 38.15021515 -5.79085064 0.64633977 37.93875885 -5.67532921
		 -0.64633977 37.93875885 -5.67532921 -8.53474808 16.85331154 0 -15.39527512 44.54178619 0
		 -16.29971504 51.97462082 0 -16.47419357 53.4085083 0 -11.029045105 62.027626038 0
		 -1.40471435 74.62821198 0 -0.68724 75.46891785 0 1.8626451e-009 75.46891785 0 0.68724006 75.46891785 0
		 1.40471435 74.62821198 0 11.029045105 62.027626038 0 16.47419357 53.4085083 0 16.29971504 51.97462082 0
		 15.39527512 44.54178619 0 8.53474808 16.85331154 0 -11.62495422 30.73132896 1.1255784
		 -0.64675701 27.39603996 4.44280863 1.8626451e-009 27.50176811 4.55324507 0.64675701 27.39603996 4.44280863
		 11.62495422 30.73132896 1.1255784 11.9650116 30.69754791 0 11.62495422 30.73132896 -1.1255784
		 0.64675701 27.39603996 -4.4428091 -6.519258e-009 27.50176811 -4.55324554 -0.64675701 27.39603996 -4.4428091
		 -11.62495422 30.73132896 -1.1255784 -11.9650116 30.69754791 0 -14.63725567 10.68564606 -5.21763563
		 14.63725567 10.68564606 -5.21763563 -14.63725567 10.68564606 5.21763563 14.63725567 10.68564606 5.21763563
		 -12.80932426 15.3234148 5.21763563 12.80932426 15.3234148 5.21763563 -12.80932426 15.3234148 -5.21763563
		 12.80932426 15.3234148 -5.21763563 19.7251358 23.95020103 -5.21763563 24.46226692 21.42974091 -5.21763563
		 19.7251358 23.95020103 5.21763563 24.46226692 21.42974091 5.21763563 -19.7251358 23.95020103 -5.21763563
		 -24.46226692 21.42974091 -5.21763563 -24.46226692 21.42974091 5.21763563 -19.7251358 23.95020103 5.21763563
		 19.47023773 24.88219643 -3.79188895 12.31336689 15.93610573 -3.79188895 -12.31336689 15.93610573 -3.79188895
		 -19.47023773 24.88219643 -3.79188895 -25.4343071 21.6923542 -3.79188895 -15.12499619 9.67901802 -3.79188895
		 15.12499619 9.67901802 -3.79188895 25.4343071 21.6923542 -3.79188895 19.47023773 24.88219643 3.79188943
		 12.31336689 15.93610573 3.79188943 -12.31336689 15.93610573 3.79188943 -19.47023773 24.88219643 3.79188943
		 -25.4343071 21.6923542 3.79188943 -15.12499619 9.67901802 3.79188943 15.12499619 9.67901802 3.79188943
		 25.4343071 21.6923542 3.79188943 18.17697716 22.28356171 -5.21763563 17.68101883 22.64567375 -3.79188895
		 17.68101883 22.64567375 3.79188919 18.17697716 22.28356171 5.21763563 22.12599754 18.99629021 5.21763563
		 22.85697746 18.68901634 3.79188919 22.85697746 18.68901634 -3.79188871 22.12599754 18.99629021 -5.21763563
		 -18.17697716 22.28356171 -5.21763563 -22.12599754 18.99629021 -5.21763563 -22.85697746 18.68902016 -3.79188895
		 -22.85697746 18.68902016 3.79188919 -22.12599754 18.99629021 5.21763563 -18.17697716 22.28356171 5.21763563
		 -17.68101883 22.64566994 3.79188919 -17.68101883 22.64566994 -3.79188871 11.29971409 17.88157272 3.21646166
		 -11.29971409 17.88157272 3.21646166 11.29971409 17.88157272 -3.21646118 -11.29971409 17.88157272 -3.21646118
		 15.39252663 23.65995026 3.21646142 15.39252663 23.65995026 -3.21646118 -15.39252663 23.65994644 3.21646142
		 -15.39252663 23.65994644 -3.21646094 -8.59847164 9.71998405 -5.18807316 -8.025842667 9.46667671 -5.81189346
		 -8.23122787 8.87516594 -5.18807316 -4.2193265 7.7642808 -5.81189346 -4.4003458 7.16187286 -5.18807316
		 -8.025842667 9.46667671 5.81189346 -8.59847164 9.71998405 5.18807316 -8.23122787 8.87516594 5.18807316
		 -4.2193265 7.7642808 5.81189346 -4.4003458 7.16187286 5.18807316 -4.32073832 20.31170464 5.18807316
		 -5.14013624 19.81236458 5.18807316 -4.51582861 19.70987129 5.81189346 -2.46895814 20.039289474 5.18807316
		 -2.52617455 19.41717148 5.81189346 -4.51582861 19.70987129 -5.81189346 -5.14013624 19.81236458 -5.18807316
		 -4.32073832 20.31170464 -5.18807316 -2.52617455 19.41717148 -5.81189346 -2.46895814 20.039289474 -5.18807316
		 8.23122787 8.87516594 -5.18807316 8.025842667 9.46667671 -5.81189346 8.59847164 9.71998405 -5.18807316;
	setAttr ".vt[166:247]" 8.025842667 9.46667671 5.81189346 8.23122787 8.87516594 5.18807316
		 8.59847164 9.71998405 5.18807316 4.32073832 20.31170464 5.18807316 4.51582861 19.70987129 5.81189346
		 5.14013624 19.81236458 5.18807316 4.51582861 19.70987129 -5.81189346 4.32073832 20.31170464 -5.18807316
		 5.14013624 19.81236458 -5.18807316 0 7.069211006 -5.81189346 0 6.43698263 -5.18807316
		 4.4003458 7.16187286 -5.18807316 4.2193265 7.7642808 -5.81189346 0 19.9470005 -5.18807316
		 0 19.32274437 -5.81189346 2.46895814 20.039289474 -5.18807316 2.52617455 19.41717148 -5.81189346
		 0 19.32274437 5.81189346 0 19.9470005 5.18807316 2.52617455 19.41717148 5.81189346
		 2.46895814 20.039289474 5.18807316 0 6.43698263 5.18807316 0 7.069211006 5.81189346
		 4.4003458 7.16187286 5.18807316 4.2193265 7.7642808 5.81189346 3.4186368 8.58179379 3.4186368
		 1.5777218e-030 8.58179379 4.83468246 -3.4186368 8.58179379 3.4186368 -4.83468246 8.58179379 3.2152058e-015
		 -3.4186368 8.58179379 -3.4186368 1.5777218e-030 8.58179379 -4.83468246 3.41863704 8.58179379 -3.41863704
		 4.83468294 8.58179379 3.2152058e-015 2.090298176 -15.065587044 2.090297699 9.2639468e-008 -15.065587044 2.95612764
		 -2.090297699 -15.065587044 2.090297699 -2.95612764 -15.065587044 1.1631189e-014 -2.090297699 -15.065587044 -2.090297699
		 9.2639468e-008 -15.065587044 -2.95612764 2.090298176 -15.065587044 -2.090297937 2.95612812 -15.065587044 1.1631189e-014
		 1.5777218e-030 -15.48149109 1.3356475e-014 3.867769 -5.46145105 9.3444463e-015 2.73492575 -5.46145105 -2.73492551
		 4.7682605e-008 -5.46145105 -3.86776853 -2.73492527 -5.46145105 -2.73492527 -3.86776853 -5.46145105 9.3444463e-015
		 -2.73492527 -5.46145105 2.73492527 4.7682605e-008 -5.46145105 3.86776853 2.73492527 -5.46145105 2.73492527
		 5.26442194 -8.19629765 1.0821779e-014 3.72250891 -8.19629765 -3.72250891 1.5777218e-030 -8.19629765 -5.26442194
		 -3.72250867 -8.19629765 -3.72250867 -5.26442194 -8.19629765 1.0821779e-014 -3.72250867 -8.19629765 3.72250867
		 1.5777218e-030 -8.19629765 5.26442194 3.72250867 -8.19629765 3.72250867 3.66940403 -8.86405468 3.66940379
		 5.18932056 -8.86405468 1.0935609e-014 3.66940451 -8.86405468 -3.66940451 7.9133766e-009 -8.86405468 -5.18932056
		 -3.66940379 -8.86405468 -3.66940379 -5.18932056 -8.86405468 1.0935609e-014 -3.66940379 -8.86405468 3.66940379
		 7.9133766e-009 -8.86405468 5.18932056 4.0477783e-008 -5.20008469 4.21768236 2.98235154 -5.20008469 2.98235154
		 4.21768284 -5.20008469 9.291937e-015 2.98235226 -5.20008469 -2.98235178 4.0477783e-008 -5.20008469 -4.21768236
		 -2.98235154 -5.20008469 -2.98235154 -4.21768236 -5.20008469 9.291937e-015 -2.98235154 -5.20008469 2.98235154
		 7.4755363e-008 -14.65690613 3.35272932 2.37073803 -14.65690613 2.37073755 3.3527298 -14.65690613 1.1664603e-014
		 2.37073803 -14.65690613 -2.37073779 7.4755363e-008 -14.65690613 -3.35272932 -2.37073755 -14.65690613 -2.37073755
		 -3.35272932 -14.65690613 1.1664603e-014 -2.37073755 -14.65690613 2.37073755;
	setAttr -s 482 ".ed";
	setAttr ".ed[0:165]"  0 60 0 1 74 0 2 75 1 3 79 1 4 63 1 5 71 1 6 21 1 7 22 1
		 4 16 1 5 19 1 7 18 1 9 69 1 6 17 1 8 65 1 12 20 1 13 85 1 12 61 1 14 81 1 15 23 1
		 14 73 1 16 8 1 17 11 1 16 64 1 18 10 1 19 9 1 18 70 1 20 4 1 21 13 1 20 62 1 22 14 1
		 23 5 1 22 72 1 25 24 1 24 27 1 27 28 1 28 25 1 24 26 1 26 29 1 29 27 1 24 54 1 54 56 1
		 56 26 1 25 55 1 55 54 1 27 30 1 30 32 1 32 28 1 29 31 1 31 30 1 30 67 1 33 34 1 34 66 1
		 31 68 1 35 33 1 33 36 1 36 37 1 37 34 1 35 38 1 38 36 1 36 39 1 39 41 1 41 37 1 38 40 1
		 40 39 1 39 42 1 42 43 1 43 41 1 40 44 1 44 42 1 42 57 1 57 59 1 59 43 1 44 58 1 58 57 1
		 46 45 0 45 83 1 58 82 1 45 47 0 47 84 1 48 49 0 50 48 0 48 77 1 51 52 1 52 76 1 50 78 1
		 53 51 1 51 54 1 55 52 1 53 56 1 0 47 0 49 2 0 52 12 1 34 11 1 8 32 1 13 59 1 28 16 1
		 4 25 1 41 6 1 17 37 1 26 5 1 19 29 1 10 35 1 31 9 1 7 40 1 38 18 1 1 46 0 58 14 1
		 3 50 0 15 53 1 55 20 1 21 43 1 44 22 1 23 56 1 60 2 0 61 13 1 62 21 1 63 6 1 64 17 1
		 65 11 1 66 32 1 67 33 1 68 35 1 69 10 1 70 19 1 71 7 1 72 23 1 73 15 1 74 3 0 60 86 1
		 61 62 1 62 63 1 63 64 1 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1
		 72 73 1 73 80 1 75 12 1 76 49 1 77 51 1 78 53 1 79 15 1 80 74 1 81 1 1 82 46 1 83 57 1
		 84 59 1 85 0 1 86 61 1 75 76 1 76 77 1 77 78 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1
		 83 84 1 84 85 1 85 86 1 86 75 1;
	setAttr ".ed[166:331]" 87 88 1 89 90 1 91 92 1 93 94 1 87 108 1 88 109 1 89 91 1
		 90 92 1 91 113 1 92 112 1 93 87 1 94 88 1 88 126 1 95 96 1 92 122 1 97 111 1 90 123 1
		 98 97 1 96 110 1 87 128 1 99 100 1 89 131 1 100 107 1 91 132 1 101 102 1 102 114 1
		 103 95 1 104 94 1 103 120 1 105 93 1 104 105 0 106 99 1 105 134 0 107 115 1 106 107 1
		 108 116 1 107 129 1 109 117 1 108 109 1 110 118 1 109 125 1 110 103 1 111 103 1 111 121 1
		 112 113 0 114 106 1 113 133 0 115 101 1 114 115 1 116 89 1 115 130 1 117 90 1 116 117 1
		 118 98 1 117 124 1 118 111 1 94 119 1 119 95 1 120 104 0 121 112 0 122 97 1 123 98 1
		 124 118 1 125 110 1 126 96 1 119 120 1 120 121 0 121 122 1 122 123 1 123 124 1 124 125 1
		 125 126 1 126 119 1 93 127 1 127 99 1 128 100 1 129 108 1 130 116 1 131 101 1 132 102 1
		 133 114 1 134 106 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1 133 134 0
		 134 127 1 112 135 1 113 136 1 135 136 1 104 137 1 135 137 1 105 138 1 137 138 1 136 138 1
		 121 139 1 139 135 1 120 140 1 140 139 1 140 137 1 133 141 1 134 142 1 141 142 1 136 141 1
		 138 142 1 144 158 1 150 145 1 149 154 1 154 159 1 159 143 1 143 149 1 155 148 1 160 153 1
		 172 164 1 174 171 1 171 168 1 168 165 1 165 174 1 163 167 1 166 170 1 169 173 1 144 143 1
		 159 158 1 145 144 1 144 146 1 146 147 1 147 145 1 143 145 1 150 149 1 146 175 1 175 176 1
		 176 147 1 149 148 1 155 154 1 148 150 1 150 152 1 152 151 1 151 148 1 152 187 1 187 188 1
		 188 151 1 154 153 1 160 159 1 153 155 1 155 157 1 157 156 1 156 153 1 157 183 1 183 184 1
		 184 156 1 158 160 1 160 162 1 162 161 1 161 158 1 162 179 1 179 180 1 180 161 1 164 163 1
		 163 177 1 177 178 1 178 164 1 165 164 1 172 174 1;
	setAttr ".ed[332:481]" 163 165 1 168 167 1 167 166 1 166 190 1 190 189 1 189 167 1
		 166 168 1 171 170 1 170 169 1 169 186 1 186 185 1 185 170 1 169 171 1 174 173 1 173 172 1
		 172 182 1 182 181 1 181 173 1 175 178 1 177 176 1 179 181 1 182 180 1 183 185 1 186 184 1
		 187 189 1 190 188 1 187 176 1 177 189 1 183 188 1 190 185 1 179 184 1 186 181 1 175 180 1
		 182 178 1 146 161 1 162 156 1 157 151 1 152 147 1 191 192 0 192 193 0 193 194 0 194 195 0
		 195 196 0 196 197 0 197 198 0 198 191 0 199 200 1 200 201 1 201 202 1 202 203 1 203 204 1
		 204 205 1 205 206 1 206 199 1 191 233 1 192 232 1 193 239 1 194 238 1 195 237 1 196 236 1
		 197 235 1 198 234 1 199 207 1 200 207 1 201 207 1 202 207 1 203 207 1 204 207 1 205 207 1
		 206 207 1 208 216 1 209 217 1 208 209 1 210 218 1 209 210 1 211 219 1 210 211 1 212 220 1
		 211 212 1 213 221 1 212 213 1 214 222 1 213 214 1 215 223 1 214 215 1 215 208 1 216 225 1
		 217 226 1 216 217 1 218 227 1 217 218 1 219 228 1 218 219 1 220 229 1 219 220 1 221 230 1
		 220 221 1 222 231 1 221 222 1 223 224 1 222 223 1 223 216 1 224 241 1 225 242 1 224 225 1
		 226 243 1 225 226 1 227 244 1 226 227 1 228 245 1 227 228 1 229 246 1 228 229 1 230 247 1
		 229 230 1 231 240 1 230 231 1 231 224 1 232 214 1 233 215 1 232 233 1 234 208 1 233 234 1
		 235 209 1 234 235 1 236 210 1 235 236 1 237 211 1 236 237 1 238 212 1 237 238 1 239 213 1
		 238 239 1 239 232 1 240 200 1 241 199 1 240 241 1 242 206 1 241 242 1 243 205 1 242 243 1
		 244 204 1 243 244 1 245 203 1 244 245 1 246 202 1 245 246 1 247 201 1 246 247 1 247 240 1;
	setAttr -s 240 -ch 944 ".fc[0:239]" -type "polyFaces" 
		f 4 159 -18 19 141
		mu 0 4 0 1 2 3
		f 4 15 164 153 114
		mu 0 4 4 5 6 7
		f 4 138 124 10 25
		mu 0 4 8 9 10 11
		f 4 -117 131 117 -13
		mu 0 4 12 13 14 15
		f 4 27 -115 129 115
		mu 0 4 16 4 7 17
		f 4 140 -20 -30 31
		mu 0 4 18 3 2 19
		f 4 -118 132 118 -22
		mu 0 4 15 14 20 21
		f 4 137 -26 23 -123
		mu 0 4 22 8 11 23
		f 4 6 -116 130 116
		mu 0 4 12 16 17 13
		f 4 139 -32 -8 -125
		mu 0 4 9 18 19 10
		f 4 32 33 34 35
		mu 0 4 24 25 26 27
		f 4 36 37 38 -34
		mu 0 4 25 28 29 26
		f 4 -37 39 40 41
		mu 0 4 28 25 30 31
		f 4 -33 42 43 -40
		mu 0 4 25 24 32 30
		f 4 -35 44 45 46
		mu 0 4 27 26 33 34
		f 4 -39 47 48 -45
		mu 0 4 26 29 35 33
		f 4 134 120 50 51
		mu 0 4 36 37 38 39
		f 4 135 121 53 -121
		mu 0 4 37 40 41 38
		f 4 -51 54 55 56
		mu 0 4 39 38 42 43
		f 4 -54 57 58 -55
		mu 0 4 38 41 44 42
		f 4 -56 59 60 61
		mu 0 4 43 42 45 46
		f 4 -59 62 63 -60
		mu 0 4 42 44 47 45
		f 4 -61 64 65 66
		mu 0 4 46 45 48 49
		f 4 -64 67 68 -65
		mu 0 4 45 47 50 48
		f 4 -66 69 70 71
		mu 0 4 49 48 51 52
		f 4 -69 72 73 -70
		mu 0 4 48 50 53 51
		f 4 161 150 -74 76
		mu 0 4 54 55 51 53
		f 4 162 151 -71 -151
		mu 0 4 55 56 52 51
		f 4 155 144 82 83
		mu 0 4 57 58 59 60
		f 4 156 145 85 -145
		mu 0 4 58 61 62 59
		f 4 -83 86 -44 87
		mu 0 4 60 59 30 32
		f 4 -86 88 -41 -87
		mu 0 4 59 62 31 30
		f 4 154 -84 91 -143
		mu 0 4 63 57 60 64
		f 4 133 -52 92 -119
		mu 0 4 20 36 39 21
		f 4 -152 163 -16 94
		mu 0 4 52 56 5 4
		f 4 -36 95 -9 96
		mu 0 4 24 27 65 66
		f 4 -62 97 12 98
		mu 0 4 43 46 12 15
		f 4 99 9 100 -38
		mu 0 4 28 67 68 29
		f 4 136 122 101 -122
		mu 0 4 40 22 23 41
		f 4 -11 103 -63 104
		mu 0 4 11 10 47 44
		f 4 17 160 -77 106
		mu 0 4 2 1 54 53
		f 4 157 146 108 -146
		mu 0 4 61 69 70 62
		f 4 -88 109 -15 -92
		mu 0 4 60 32 71 64
		f 4 -72 -95 -28 110
		mu 0 4 49 52 4 16
		f 4 29 -107 -73 111
		mu 0 4 19 2 53 50
		f 4 -109 18 112 -89
		mu 0 4 62 70 72 31
		f 4 -47 -94 -21 -96
		mu 0 4 27 34 73 65
		f 4 -57 -99 21 -93
		mu 0 4 39 43 15 21
		f 4 -24 -105 -58 -102
		mu 0 4 23 11 44 41
		f 4 -101 24 -103 -48
		mu 0 4 29 68 74 35
		f 4 -43 -97 -27 -110
		mu 0 4 32 24 66 71
		f 4 -67 -111 -7 -98
		mu 0 4 46 49 16 12
		f 4 7 -112 -68 -104
		mu 0 4 10 19 50 47
		f 4 -113 30 -100 -42
		mu 0 4 31 72 67 28
		f 4 -154 165 142 16
		mu 0 4 75 76 63 64
		f 4 -130 -17 14 28
		mu 0 4 77 75 64 71
		f 4 -131 -29 26 4
		mu 0 4 78 77 71 66
		f 4 -132 -5 8 22
		mu 0 4 79 78 66 65
		f 4 -133 -23 20 13
		mu 0 4 80 79 65 73
		f 4 -120 -134 -14 93
		mu 0 4 34 81 80 73
		f 4 -46 49 -135 119
		mu 0 4 34 33 82 81
		f 4 -49 52 -136 -50
		mu 0 4 33 35 83 82
		f 4 11 -137 -53 102
		mu 0 4 74 84 83 35
		f 4 -124 -138 -12 -25
		mu 0 4 68 85 84 74
		f 4 5 -139 123 -10
		mu 0 4 67 86 85 68
		f 4 -126 -140 -6 -31
		mu 0 4 72 87 86 67
		f 4 -127 -141 125 -19
		mu 0 4 70 88 87 72
		f 4 158 -142 126 -147
		mu 0 4 69 89 88 70
		f 4 -144 -155 -3 -91
		mu 0 4 90 57 63 91
		f 4 -80 81 -156 143
		mu 0 4 90 92 58 57
		f 4 -81 84 -157 -82
		mu 0 4 92 93 61 58
		f 4 3 -158 -85 -108
		mu 0 4 94 69 61 93
		f 4 -148 -159 -4 -128
		mu 0 4 95 89 69 94
		f 4 -149 -160 147 -2
		mu 0 4 96 1 0 97
		f 4 -161 148 105 -150
		mu 0 4 54 1 96 98
		f 4 74 75 -162 149
		mu 0 4 98 99 55 54
		f 4 77 78 -163 -76
		mu 0 4 99 100 56 55
		f 4 -164 -79 -90 -153
		mu 0 4 5 56 100 101
		f 4 -165 152 0 128
		mu 0 4 6 5 101 102
		f 4 -166 -129 113 2
		mu 0 4 63 76 103 91
		f 4 218 217 -168 -216
		mu 0 4 104 105 106 107
		f 4 167 173 -169 -173
		mu 0 4 107 106 108 109
		f 4 168 175 210 -175
		mu 0 4 109 108 110 111
		f 4 169 177 -167 -177
		mu 0 4 112 113 114 115
		f 4 221 -182 -184 -220
		mu 0 4 116 117 118 119
		f 4 214 213 190 191
		mu 0 4 120 121 122 123
		f 4 238 223 179 -231
		mu 0 4 124 125 126 127
		f 4 233 226 181 209
		mu 0 4 128 129 118 117
		f 4 234 227 183 -227
		mu 0 4 129 130 119 118
		f 4 235 228 219 -228
		mu 0 4 130 131 116 119
		f 4 248 241 -187 -241
		mu 0 4 132 133 134 135
		f 4 251 244 -214 216
		mu 0 4 136 137 122 121
		f 4 252 245 -191 -245
		mu 0 4 137 138 123 122
		f 4 253 246 -192 -246
		mu 0 4 138 139 120 123
		f 4 231 -195 192 -224
		mu 0 4 125 140 141 126
		f 4 -197 193 -170 -196
		mu 0 4 142 143 113 112
		f 4 -248 255 240 -198
		mu 0 4 144 145 132 135
		f 4 186 188 -201 197
		mu 0 4 135 134 146 144
		f 4 249 -203 -189 -242
		mu 0 4 133 147 146 134
		f 4 166 171 -205 -171
		mu 0 4 115 114 148 149
		f 4 -230 237 230 184
		mu 0 4 150 151 124 127
		f 4 -180 -193 -208 -185
		mu 0 4 127 126 141 150
		f 4 232 -210 208 194
		mu 0 4 152 153 154 155
		f 4 -259 260 262 -264
		mu 0 4 156 157 158 159
		f 4 -247 254 247 -212
		mu 0 4 160 161 162 163
		f 4 200 199 -215 211
		mu 0 4 163 164 165 160
		f 4 250 -217 -200 202
		mu 0 4 166 167 165 164
		f 4 204 203 -219 -202
		mu 0 4 168 169 170 171
		f 4 -229 236 229 205
		mu 0 4 172 173 174 175
		f 4 207 -209 -222 -206
		mu 0 4 175 155 154 172
		f 4 -225 -232 -223 -194
		mu 0 4 143 140 125 113
		f 4 -266 -268 268 -261
		mu 0 4 157 176 177 158
		f 4 -234 225 -176 180
		mu 0 4 129 128 110 108
		f 4 -235 -181 -174 182
		mu 0 4 130 129 108 106
		f 4 -236 -183 -218 220
		mu 0 4 131 130 106 105
		f 4 -237 -221 -204 206
		mu 0 4 174 173 170 169
		f 4 -238 -207 -172 178
		mu 0 4 124 151 148 114
		f 4 222 -239 -179 -178
		mu 0 4 113 125 124 114
		f 4 -249 -240 176 185
		mu 0 4 133 132 112 115
		f 4 -243 -250 -186 170
		mu 0 4 149 147 133 115
		f 4 -244 -251 242 201
		mu 0 4 171 167 166 168
		f 4 -252 243 215 187
		mu 0 4 137 136 104 107
		f 4 -253 -188 172 189
		mu 0 4 138 137 107 109
		f 4 -254 -190 174 212
		mu 0 4 139 138 109 111
		f 4 -272 -273 263 273
		mu 0 4 178 179 156 159
		f 4 239 -256 -199 195
		mu 0 4 112 132 145 142
		f 4 -211 256 258 -258
		mu 0 4 180 181 157 156
		f 4 196 261 -263 -260
		mu 0 4 182 183 159 158
		f 4 -226 264 265 -257
		mu 0 4 181 184 176 157
		f 4 -233 266 267 -265
		mu 0 4 185 186 177 176
		f 4 224 259 -269 -267
		mu 0 4 187 182 158 177
		f 4 -255 269 271 -271
		mu 0 4 188 189 179 178
		f 4 -213 257 272 -270
		mu 0 4 190 180 156 179
		f 4 198 270 -274 -262
		mu 0 4 183 191 178 159
		f 4 276 277 278 279
		mu 0 4 192 193 194 195
		f 4 283 284 285 286
		mu 0 4 196 197 198 199
		f 4 290 -279 291 -275
		mu 0 4 200 201 202 203
		f 4 292 293 294 295
		mu 0 4 204 200 205 206
		f 4 296 -276 297 -280
		mu 0 4 207 208 209 210
		f 4 -295 298 299 300
		mu 0 4 206 205 211 212
		f 4 301 -281 302 -277
		mu 0 4 213 214 215 216
		f 4 303 304 305 306
		mu 0 4 214 217 218 219
		f 4 -306 307 308 309
		mu 0 4 219 218 220 221
		f 4 310 -282 311 -278
		mu 0 4 193 222 223 194
		f 4 312 313 314 315
		mu 0 4 224 215 225 226
		f 4 -315 316 317 318
		mu 0 4 226 225 227 228
		f 4 319 320 321 322
		mu 0 4 203 229 230 231
		f 4 -322 323 324 325
		mu 0 4 231 230 232 233
		f 4 326 327 328 329
		mu 0 4 234 235 236 237
		f 4 330 -283 331 -287
		mu 0 4 238 234 239 240
		f 4 332 -286 333 -288
		mu 0 4 241 242 243 244
		f 4 334 335 336 337
		mu 0 4 245 246 247 248
		f 4 338 -285 339 -289
		mu 0 4 246 249 250 251
		f 4 340 341 342 343
		mu 0 4 251 252 253 254
		f 4 344 -284 345 -290
		mu 0 4 255 197 196 256
		f 4 346 347 348 349
		mu 0 4 257 239 258 259
		f 4 -300 350 -329 351
		mu 0 4 212 211 237 236
		f 4 -325 352 -349 353
		mu 0 4 233 232 259 258
		f 4 -318 354 -343 355
		mu 0 4 228 227 254 253
		f 4 -309 356 -337 357
		mu 0 4 221 220 248 247
		f 4 358 -352 359 -357
		mu 0 4 260 261 262 263
		f 4 360 -358 361 -355
		mu 0 4 227 221 247 254
		f 4 362 -356 363 -353
		mu 0 4 264 265 266 267
		f 4 364 -354 365 -351
		mu 0 4 211 233 258 237
		f 4 366 -326 -365 -299
		mu 0 4 205 231 233 211
		f 4 367 -319 -363 -324
		mu 0 4 268 269 265 264
		f 4 368 -310 -361 -317
		mu 0 4 225 219 221 227
		f 4 369 -301 -359 -308
		mu 0 4 270 271 261 260
		f 4 -294 274 -323 -367
		mu 0 4 205 200 203 231
		f 4 -305 275 -296 -370
		mu 0 4 270 209 208 271
		f 4 -314 280 -307 -369
		mu 0 4 225 215 214 219
		f 4 -321 281 -316 -368
		mu 0 4 268 223 222 269
		f 4 -348 282 -330 -366
		mu 0 4 258 239 234 237
		f 4 -328 287 -338 -360
		mu 0 4 262 241 244 263
		f 4 -336 288 -344 -362
		mu 0 4 247 246 251 254
		f 4 -342 289 -350 -364
		mu 0 4 266 255 256 267
		f 3 -291 -293 -297
		mu 0 3 201 200 204
		f 3 -302 -298 -304
		mu 0 3 214 213 217
		f 3 -311 -303 -313
		mu 0 3 224 216 215
		f 3 -292 -312 -320
		mu 0 3 203 202 229
		f 3 -327 -331 -333
		mu 0 3 235 234 238
		f 3 -335 -334 -339
		mu 0 3 246 245 249
		f 3 -341 -340 -345
		mu 0 3 252 251 250
		f 3 -347 -346 -332
		mu 0 3 239 257 240
		f 4 370 387 452 -387
		mu 0 4 272 273 274 275
		f 4 371 388 465 -388
		mu 0 4 276 277 278 279
		f 4 372 389 464 -389
		mu 0 4 277 280 281 278
		f 4 373 390 462 -390
		mu 0 4 280 282 283 281
		f 4 374 391 460 -391
		mu 0 4 282 284 285 283
		f 4 375 392 458 -392
		mu 0 4 284 286 287 285
		f 4 376 393 456 -393
		mu 0 4 286 288 289 287
		f 4 377 386 454 -394
		mu 0 4 288 272 275 289
		f 3 378 395 -395
		mu 0 3 290 291 292
		f 3 379 396 -396
		mu 0 3 291 293 292
		f 3 380 397 -397
		mu 0 3 293 294 292
		f 3 381 398 -398
		mu 0 3 294 295 292
		f 3 382 399 -399
		mu 0 3 295 296 292
		f 3 383 400 -400
		mu 0 3 296 297 292
		f 3 384 401 -401
		mu 0 3 297 298 292
		f 3 385 394 -402
		mu 0 3 298 290 292
		f 4 -405 402 420 -404
		mu 0 4 299 300 301 302
		f 4 -407 403 422 -406
		mu 0 4 303 299 302 304
		f 4 -409 405 424 -408
		mu 0 4 305 303 304 306
		f 4 -411 407 426 -410
		mu 0 4 307 305 306 308
		f 4 -413 409 428 -412
		mu 0 4 309 307 308 310
		f 4 -415 411 430 -414
		mu 0 4 311 309 310 312
		f 4 -417 413 432 -416
		mu 0 4 313 314 315 316
		f 4 -418 415 433 -403
		mu 0 4 300 313 316 301
		f 4 -421 418 438 -420
		mu 0 4 302 301 317 318
		f 4 -423 419 440 -422
		mu 0 4 304 302 318 319
		f 4 -425 421 442 -424
		mu 0 4 306 304 319 320
		f 4 -427 423 444 -426
		mu 0 4 308 306 320 321
		f 4 -429 425 446 -428
		mu 0 4 310 308 321 322
		f 4 -431 427 448 -430
		mu 0 4 312 310 322 323
		f 4 -433 429 449 -432
		mu 0 4 316 315 324 325
		f 4 -434 431 436 -419
		mu 0 4 301 316 325 317
		f 4 -437 434 470 -436
		mu 0 4 317 325 326 327
		f 4 -439 435 472 -438
		mu 0 4 318 317 327 328
		f 4 -441 437 474 -440
		mu 0 4 319 318 328 329
		f 4 -443 439 476 -442
		mu 0 4 320 319 329 330
		f 4 -445 441 478 -444
		mu 0 4 321 320 330 331
		f 4 -447 443 480 -446
		mu 0 4 322 321 331 332
		f 4 -449 445 481 -448
		mu 0 4 323 322 332 333
		f 4 -450 447 468 -435
		mu 0 4 325 324 334 326
		f 4 -453 450 416 -452
		mu 0 4 275 274 335 336
		f 4 -455 451 417 -454
		mu 0 4 289 275 336 337
		f 4 -457 453 404 -456
		mu 0 4 287 289 337 338
		f 4 -459 455 406 -458
		mu 0 4 285 287 338 339
		f 4 -461 457 408 -460
		mu 0 4 283 285 339 340
		f 4 -463 459 410 -462
		mu 0 4 281 283 340 341
		f 4 -465 461 412 -464
		mu 0 4 278 281 341 342
		f 4 -466 463 414 -451
		mu 0 4 279 278 342 343
		f 4 -469 466 -379 -468
		mu 0 4 326 334 344 345
		f 4 -471 467 -386 -470
		mu 0 4 327 326 345 346
		f 4 -473 469 -385 -472
		mu 0 4 328 327 346 347
		f 4 -475 471 -384 -474
		mu 0 4 329 328 347 348
		f 4 -477 473 -383 -476
		mu 0 4 330 329 348 349
		f 4 -479 475 -382 -478
		mu 0 4 331 330 349 350
		f 4 -481 477 -381 -480
		mu 0 4 332 331 350 351
		f 4 -482 479 -380 -467
		mu 0 4 333 332 351 352;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "23D93FCD-488F-1AFF-4D59-488BD2547497";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "307CF920-426C-D3D3-C253-0BA78BA86BCB";
	setAttr ".cdl" 3;
	setAttr -s 6 ".dli[1:5]"  1 2 3 4 5;
	setAttr -s 5 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "0BC18EF3-4F9B-14E9-F3C2-84A4ADF9D179";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "EFB65BA3-49E6-C541-4E31-D4986AC383AB";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D9C64B04-4E94-42C5-FB34-1B9FF6DC83CA";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "CB18850F-4F22-F6C8-3F58-D4907B1C27FA";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"flat\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 999\n                -height 730\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"flat\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 999\n            -height 730\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
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
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n"
		+ "                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n"
		+ "                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n"
		+ "                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n"
		+ "                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 33 100 -ps 2 67 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"flat\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 999\\n    -height 730\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"flat\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 999\\n    -height 730\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "2CADA0AD-44F3-A1EF-0119-6D8803758419";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode lambert -n "M_Knight";
	rename -uid "43EDE748-4F61-C355-6698-28AA7B7B16F2";
createNode shadingEngine -n "lambert2SG";
	rename -uid "32528D30-4C8B-58E2-21CB-ADA9A8CDA923";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "6413AA9F-4294-BEA9-4C76-6786AF12E871";
createNode file -n "file1";
	rename -uid "7CB1AF91-47A9-C3B6-6EB0-CA89225C17EF";
	setAttr ".ftn" -type "string" "E:/GameJams/ChillVibesJam/2023/KnightCharacterPack//Textures/T_Knight_D.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "C19C4978-4605-DEB9-96B5-27AA2C0592F8";
createNode lambert -n "M_Knight_Eyes";
	rename -uid "A55891ED-44DD-8BA4-F1A4-A1B7CCC7270A";
createNode shadingEngine -n "lambert3SG";
	rename -uid "5F78D35D-4580-58C8-74D9-5595E3C29605";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "663C40BF-4B27-DE27-D350-1488A07E3B9E";
createNode file -n "file2";
	rename -uid "42B9D248-4526-3F97-AAFA-03B68CE47382";
	setAttr ".ftn" -type "string" "E:/GameJams/ChillVibesJam/2023/KnightCharacterPack//Textures/T_Knight_Face_Base_D.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "2375A07F-46F2-3931-4260-B2B2813BCCB4";
createNode lambert -n "M_Knight_Mouth";
	rename -uid "283017A9-4C8E-81E5-BAED-7CB9187AF77D";
createNode shadingEngine -n "lambert4SG";
	rename -uid "93F2FAFD-4A56-54E9-903F-2DA29584E396";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "E178CD3C-474D-F58E-3E45-BAB48FA8406F";
createNode file -n "file3";
	rename -uid "A2B9F3E2-47D1-DC49-5054-D0BF553A80AA";
	setAttr ".ftn" -type "string" "E:/GameJams/ChillVibesJam/2023/KnightCharacterPack//Textures/T_Knight_Face_Base_D.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "316DC975-4942-F1E1-4F58-F58085909BCE";
createNode lambert -n "M_FacePreview";
	rename -uid "3FEAE811-457D-2A4B-1F29-2F9437B7D4C4";
createNode shadingEngine -n "lambert5SG";
	rename -uid "91F92F55-4CDB-5487-2514-12A4EF416D66";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "FF7F4C55-41E4-9A21-A938-D3821792FE7F";
createNode file -n "file4";
	rename -uid "3673A38B-4B36-F39E-1822-98BEC0FC3C70";
	setAttr ".ftn" -type "string" "E:/GameJams/ChillVibesJam/2023/KnightCharacterPack//Textures/T_Knight_Face_Happy_D.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "51668323-449A-4432-06D0-7CBD7771DD8F";
createNode lambert -n "M_Sword";
	rename -uid "CAAD5D31-42A4-431C-631A-879F714BE7C5";
createNode shadingEngine -n "lambert6SG";
	rename -uid "D3E73567-45EC-1BC3-FB5A-30909FB5E4BF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "30F8E95F-4B73-9FAF-308A-B58F986EABA5";
createNode file -n "file5";
	rename -uid "9A9AFEAE-47AD-97E2-39B1-F29A11D20B3B";
	setAttr ".ftn" -type "string" "E:/GameJams/ChillVibesJam/2023/KnightCharacterPack//Textures/T_Sword_D.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "1AD88211-4A59-28F3-1FCD-90840BBE9221";
createNode displayLayer -n "Bip001_controls_layer";
	rename -uid "A4FDA035-4EAA-9A4A-1860-5FB892C7C140";
	setAttr ".do" 1;
createNode displayLayer -n "Bip001_skel_layer";
	rename -uid "2DFD5244-4785-B3D3-1244-6DA2D4BA6F65";
	setAttr ".v" no;
	setAttr ".do" 2;
createNode displayLayer -n "Bip001_iks_layer";
	rename -uid "31714A32-4758-6F6E-6908-7FB0F9A369E3";
	setAttr ".v" no;
	setAttr ".do" 3;
createNode displayLayer -n "Bip001_mesh_layer";
	rename -uid "D8EE2924-4FED-7825-64BB-37BAE9B659F6";
	setAttr ".dt" 2;
	setAttr ".do" 4;
createNode skinCluster -n "skinCluster18";
	rename -uid "995B8F35-4123-9114-41B3-F4A306D5E2E9";
	setAttr -s 248 ".wl";
	setAttr ".wl[0].w[12]"  1;
	setAttr ".wl[1].w[11]"  1;
	setAttr ".wl[2].w[12]"  1;
	setAttr ".wl[3].w[11]"  1;
	setAttr -s 3 ".wl[4].w";
	setAttr ".wl[4].w[3]" 0.00015674493796591512;
	setAttr ".wl[4].w[6]" 0.00015674493796591512;
	setAttr ".wl[4].w[8]" 0.99968651012406817;
	setAttr -s 3 ".wl[5].w";
	setAttr ".wl[5].w[3]" 0.00015674493796591512;
	setAttr ".wl[5].w[5]" 0.00015674493796591512;
	setAttr ".wl[5].w[7]" 0.99968651012406817;
	setAttr -s 3 ".wl[6].w";
	setAttr ".wl[6].w[3]" 0.00015674493796591512;
	setAttr ".wl[6].w[6]" 0.00015674493796591512;
	setAttr ".wl[6].w[8]" 0.99968651012406817;
	setAttr -s 3 ".wl[7].w";
	setAttr ".wl[7].w[3]" 0.00015674493796591512;
	setAttr ".wl[7].w[5]" 0.00015674493796591512;
	setAttr ".wl[7].w[7]" 0.99968651012406817;
	setAttr -s 4 ".wl[8].w[3:6]"  0.80700369576369035 0.19269029399002205 
		0.00011743444623211361 0.00018857580005547;
	setAttr -s 4 ".wl[9].w[3:6]"  0.80700369576369035 0.19269029399002205 
		0.00018857580005547 0.00011743444623211361;
	setAttr -s 4 ".wl[10].w[3:6]"  0.80700369576369035 0.19269029399002205 
		0.00018857580005547 0.00011743444623211361;
	setAttr -s 4 ".wl[11].w[3:6]"  0.80700369576369035 0.19269029399002205 
		0.00011743444623211361 0.00018857580005547;
	setAttr -s 2 ".wl[12].w";
	setAttr ".wl[12].w[8]" 0.4;
	setAttr ".wl[12].w[10]" 0.6;
	setAttr -s 2 ".wl[13].w";
	setAttr ".wl[13].w[8]" 0.4;
	setAttr ".wl[13].w[10]" 0.6;
	setAttr -s 2 ".wl[14].w";
	setAttr ".wl[14].w[7]" 0.4;
	setAttr ".wl[14].w[9]" 0.6;
	setAttr -s 2 ".wl[15].w";
	setAttr ".wl[15].w[7]" 0.4;
	setAttr ".wl[15].w[9]" 0.6;
	setAttr -s 3 ".wl[16].w";
	setAttr ".wl[16].w[3]" 0.49983319249109448;
	setAttr ".wl[16].w[6]" 0.49983319249109437;
	setAttr ".wl[16].w[8]" 0.00033361501781117668;
	setAttr -s 3 ".wl[17].w";
	setAttr ".wl[17].w[3]" 0.49983319249109448;
	setAttr ".wl[17].w[6]" 0.49983319249109437;
	setAttr ".wl[17].w[8]" 0.00033361501781117668;
	setAttr -s 3 ".wl[18].w";
	setAttr ".wl[18].w[3]" 0.49983319249109448;
	setAttr ".wl[18].w[5]" 0.49983319249109437;
	setAttr ".wl[18].w[7]" 0.00033361501781117668;
	setAttr -s 3 ".wl[19].w";
	setAttr ".wl[19].w[3]" 0.49983319249109448;
	setAttr ".wl[19].w[5]" 0.49983319249109437;
	setAttr ".wl[19].w[7]" 0.00033361501781117668;
	setAttr -s 3 ".wl[20].w";
	setAttr ".wl[20].w[3]" 0.00030560075313014256;
	setAttr ".wl[20].w[6]" 0.00030560075313014256;
	setAttr ".wl[20].w[8]" 0.99938879849373974;
	setAttr -s 3 ".wl[21].w";
	setAttr ".wl[21].w[3]" 0.00030560075313014256;
	setAttr ".wl[21].w[6]" 0.00030560075313014256;
	setAttr ".wl[21].w[8]" 0.99938879849373974;
	setAttr -s 3 ".wl[22].w";
	setAttr ".wl[22].w[3]" 0.00030560075313014256;
	setAttr ".wl[22].w[5]" 0.00030560075313014256;
	setAttr ".wl[22].w[7]" 0.99938879849373974;
	setAttr -s 3 ".wl[23].w";
	setAttr ".wl[23].w[3]" 0.00030560075313014256;
	setAttr ".wl[23].w[5]" 0.00030560075313014256;
	setAttr ".wl[23].w[7]" 0.99938879849373974;
	setAttr ".wl[24].w[2]"  1;
	setAttr -s 2 ".wl[25].w";
	setAttr ".wl[25].w[2]" 0.99111174962091142;
	setAttr ".wl[25].w[8]" 0.0088882503790885751;
	setAttr -s 2 ".wl[26].w";
	setAttr ".wl[26].w[2]" 0.99111174962091142;
	setAttr ".wl[26].w[7]" 0.0088882503790885751;
	setAttr -s 4 ".wl[27].w";
	setAttr ".wl[27].w[2]" 0.50162363315513248;
	setAttr ".wl[27].w[3]" 0.48201563035401113;
	setAttr ".wl[27].w[5]" 0.0081802193992669154;
	setAttr ".wl[27].w[6]" 0.0081805170915894999;
	setAttr -s 4 ".wl[28].w";
	setAttr ".wl[28].w[2]" 0.50021217675460716;
	setAttr ".wl[28].w[3]" 0.48346192981756486;
	setAttr ".wl[28].w[5]" 0.0067778449999370749;
	setAttr ".wl[28].w[6]" 0.0095480484278909136;
	setAttr -s 4 ".wl[29].w";
	setAttr ".wl[29].w[2]" 0.50021217675460716;
	setAttr ".wl[29].w[3]" 0.48346192981756486;
	setAttr ".wl[29].w[5]" 0.0095480484278909136;
	setAttr ".wl[29].w[6]" 0.0067778449999370749;
	setAttr -s 4 ".wl[30].w[3:6]"  0.78061268647229409 0.21935623244584379 
		1.5540364131324767e-005 1.5540717730783552e-005;
	setAttr -s 4 ".wl[31].w[3:6]"  0.7420146705295334 0.25793712061738033 
		2.6681911074087468e-005 2.152694201196304e-005;
	setAttr -s 4 ".wl[32].w[3:6]"  0.7420146705295334 0.25793712061738033 
		2.152694201196304e-005 2.6681911074087468e-005;
	setAttr -s 4 ".wl[33].w[3:6]"  0.78061268647229409 0.21935623244584379 
		1.5540364131324767e-005 1.5540717730783552e-005;
	setAttr -s 4 ".wl[34].w[3:6]"  0.7420146705295334 0.25793712061738033 
		2.152694201196304e-005 2.6681911074087468e-005;
	setAttr -s 4 ".wl[35].w[3:6]"  0.7420146705295334 0.25793712061738033 
		2.6681911074087468e-005 2.152694201196304e-005;
	setAttr -s 4 ".wl[36].w";
	setAttr ".wl[36].w[2]" 0.50162362805374927;
	setAttr ".wl[36].w[3]" 0.48201562952003163;
	setAttr ".wl[36].w[5]" 0.008180222366898332;
	setAttr ".wl[36].w[6]" 0.0081805200593207967;
	setAttr -s 4 ".wl[37].w";
	setAttr ".wl[37].w[2]" 0.50021217675460716;
	setAttr ".wl[37].w[3]" 0.48346192981756486;
	setAttr ".wl[37].w[5]" 0.0067778449999370749;
	setAttr ".wl[37].w[6]" 0.0095480484278909136;
	setAttr -s 4 ".wl[38].w";
	setAttr ".wl[38].w[2]" 0.50021217675460716;
	setAttr ".wl[38].w[3]" 0.48346192981756486;
	setAttr ".wl[38].w[5]" 0.0095480484278909136;
	setAttr ".wl[38].w[6]" 0.0067778449999370749;
	setAttr ".wl[39].w[2]"  1;
	setAttr -s 2 ".wl[40].w";
	setAttr ".wl[40].w[2]" 0.99111174949366709;
	setAttr ".wl[40].w[7]" 0.0088882505063329047;
	setAttr -s 2 ".wl[41].w";
	setAttr ".wl[41].w[2]" 0.99111174949366709;
	setAttr ".wl[41].w[8]" 0.0088882505063329047;
	setAttr ".wl[42].w[2]"  1;
	setAttr ".wl[43].w[2]"  1;
	setAttr ".wl[44].w[2]"  1;
	setAttr -s 4 ".wl[45].w";
	setAttr ".wl[45].w[0]" 0.95680005516108713;
	setAttr ".wl[45].w[1]" 0.006408571786958004;
	setAttr ".wl[45].w[11]" 0.018393856283104359;
	setAttr ".wl[45].w[12]" 0.01839751676885059;
	setAttr -s 4 ".wl[46].w";
	setAttr ".wl[46].w[0]" 0.95981581203479216;
	setAttr ".wl[46].w[1]" 0.0056736258650923891;
	setAttr ".wl[46].w[11]" 0.021837812162933637;
	setAttr ".wl[46].w[12]" 0.012672749937181907;
	setAttr -s 4 ".wl[47].w";
	setAttr ".wl[47].w[0]" 0.95981579825923435;
	setAttr ".wl[47].w[1]" 0.0056736404536263593;
	setAttr ".wl[47].w[11]" 0.012672750077138322;
	setAttr ".wl[47].w[12]" 0.021837811210001067;
	setAttr -s 4 ".wl[48].w";
	setAttr ".wl[48].w[0]" 0.95680010678345428;
	setAttr ".wl[48].w[1]" 0.0064085636836618345;
	setAttr ".wl[48].w[11]" 0.018393834525551562;
	setAttr ".wl[48].w[12]" 0.01839749500733236;
	setAttr -s 4 ".wl[49].w";
	setAttr ".wl[49].w[0]" 0.95981584192218172;
	setAttr ".wl[49].w[1]" 0.0056736213818697999;
	setAttr ".wl[49].w[11]" 0.012672740352052269;
	setAttr ".wl[49].w[12]" 0.021837796343896255;
	setAttr -s 4 ".wl[50].w";
	setAttr ".wl[50].w[0]" 0.95981584192218172;
	setAttr ".wl[50].w[1]" 0.0056736213818697999;
	setAttr ".wl[50].w[11]" 0.021837796343896255;
	setAttr ".wl[50].w[12]" 0.012672740352052269;
	setAttr -s 3 ".wl[51].w";
	setAttr ".wl[51].w[1]" 0.72799159711874073;
	setAttr ".wl[51].w[2]" 0.25606083674418906;
	setAttr ".wl[51].w[9]" 0.015947566137070178;
	setAttr -s 3 ".wl[52].w";
	setAttr ".wl[52].w[1]" 0.74383392444139362;
	setAttr ".wl[52].w[2]" 0.2377628312120656;
	setAttr ".wl[52].w[10]" 0.018403244346540885;
	setAttr -s 3 ".wl[53].w";
	setAttr ".wl[53].w[1]" 0.74383392444139362;
	setAttr ".wl[53].w[2]" 0.2377628312120656;
	setAttr ".wl[53].w[9]" 0.018403244346540885;
	setAttr ".wl[54].w[2]"  1;
	setAttr ".wl[55].w[2]"  1;
	setAttr ".wl[56].w[2]"  1;
	setAttr -s 3 ".wl[57].w";
	setAttr ".wl[57].w[1]" 0.72799159715885942;
	setAttr ".wl[57].w[2]" 0.25606083675830021;
	setAttr ".wl[57].w[9]" 0.015947566082840467;
	setAttr -s 3 ".wl[58].w";
	setAttr ".wl[58].w[1]" 0.74383392444139362;
	setAttr ".wl[58].w[2]" 0.2377628312120656;
	setAttr ".wl[58].w[9]" 0.018403244346540885;
	setAttr -s 3 ".wl[59].w";
	setAttr ".wl[59].w[1]" 0.74383392444139362;
	setAttr ".wl[59].w[2]" 0.2377628312120656;
	setAttr ".wl[59].w[10]" 0.018403244346540885;
	setAttr ".wl[60].w[12]"  1;
	setAttr -s 2 ".wl[61].w";
	setAttr ".wl[61].w[8]" 0.4;
	setAttr ".wl[61].w[10]" 0.6;
	setAttr -s 3 ".wl[62].w";
	setAttr ".wl[62].w[3]" 0.00010105687347266215;
	setAttr ".wl[62].w[6]" 0.00010105687347266215;
	setAttr ".wl[62].w[8]" 0.99979788625305466;
	setAttr -s 3 ".wl[63].w";
	setAttr ".wl[63].w[3]" 7.1285596584830859e-005;
	setAttr ".wl[63].w[6]" 7.1285596584830859e-005;
	setAttr ".wl[63].w[8]" 0.99985742880683037;
	setAttr -s 3 ".wl[64].w";
	setAttr ".wl[64].w[3]" 0.49996351497043273;
	setAttr ".wl[64].w[6]" 0.49996351497043262;
	setAttr ".wl[64].w[8]" 7.2970059134609496e-005;
	setAttr -s 4 ".wl[65].w[3:6]"  0.70048078246032297 0.29942809746042703 
		3.5403979569856456e-005 5.5716099680020382e-005;
	setAttr -s 4 ".wl[66].w[3:6]"  0.53364737775589099 0.46634930599472729 
		1.4887789972667938e-006 1.8274703844394318e-006;
	setAttr ".wl[67].w[3]"  1;
	setAttr -s 4 ".wl[68].w[3:6]"  0.53364737775589099 0.46634930599472729 
		1.8274703844394318e-006 1.4887789972667938e-006;
	setAttr -s 4 ".wl[69].w[3:6]"  0.70048078246032297 0.29942809746042703 
		5.5716099680020382e-005 3.5403979569856456e-005;
	setAttr -s 3 ".wl[70].w";
	setAttr ".wl[70].w[3]" 0.49996351497043273;
	setAttr ".wl[70].w[5]" 0.49996351497043262;
	setAttr ".wl[70].w[7]" 7.2970059134609496e-005;
	setAttr -s 3 ".wl[71].w";
	setAttr ".wl[71].w[3]" 7.1285596584830859e-005;
	setAttr ".wl[71].w[5]" 7.1285596584830859e-005;
	setAttr ".wl[71].w[7]" 0.99985742880683037;
	setAttr -s 3 ".wl[72].w";
	setAttr ".wl[72].w[3]" 0.00010105687347266215;
	setAttr ".wl[72].w[5]" 0.00010105687347266215;
	setAttr ".wl[72].w[7]" 0.99979788625305466;
	setAttr -s 2 ".wl[73].w";
	setAttr ".wl[73].w[7]" 0.4;
	setAttr ".wl[73].w[9]" 0.6;
	setAttr ".wl[74].w[11]"  1;
	setAttr ".wl[75].w[10]"  1;
	setAttr -s 2 ".wl[76].w[0:1]"  0.50181931657330647 0.49818068342669353;
	setAttr -s 2 ".wl[77].w[0:1]"  0.50522130571402524 0.49477869428597476;
	setAttr -s 2 ".wl[78].w[0:1]"  0.50181931657330647 0.49818068342669353;
	setAttr ".wl[79].w[9]"  1;
	setAttr ".wl[80].w[9]"  1;
	setAttr ".wl[81].w[9]"  1;
	setAttr -s 2 ".wl[82].w[0:1]"  0.50181931619158238 0.49818068380841773;
	setAttr -s 2 ".wl[83].w[0:1]"  0.50522130462619597 0.49477869537380409;
	setAttr -s 2 ".wl[84].w[0:1]"  0.50181931619158238 0.49818068380841773;
	setAttr ".wl[85].w[10]"  1;
	setAttr ".wl[86].w[10]"  1;
	setAttr ".wl[87].w[13]"  1;
	setAttr ".wl[88].w[13]"  1;
	setAttr ".wl[89].w[13]"  1;
	setAttr ".wl[90].w[13]"  1;
	setAttr ".wl[91].w[13]"  1;
	setAttr ".wl[92].w[13]"  1;
	setAttr ".wl[93].w[13]"  1;
	setAttr ".wl[94].w[13]"  1;
	setAttr ".wl[95].w[13]"  1;
	setAttr ".wl[96].w[13]"  1;
	setAttr ".wl[97].w[13]"  1;
	setAttr ".wl[98].w[13]"  1;
	setAttr ".wl[99].w[13]"  1;
	setAttr ".wl[100].w[13]"  1;
	setAttr ".wl[101].w[13]"  1;
	setAttr ".wl[102].w[13]"  1;
	setAttr ".wl[103].w[13]"  1;
	setAttr ".wl[104].w[13]"  1;
	setAttr ".wl[105].w[13]"  1;
	setAttr ".wl[106].w[13]"  1;
	setAttr ".wl[107].w[13]"  1;
	setAttr ".wl[108].w[13]"  1;
	setAttr ".wl[109].w[13]"  1;
	setAttr ".wl[110].w[13]"  1;
	setAttr ".wl[111].w[13]"  1;
	setAttr ".wl[112].w[13]"  1;
	setAttr ".wl[113].w[13]"  1;
	setAttr ".wl[114].w[13]"  1;
	setAttr ".wl[115].w[13]"  1;
	setAttr ".wl[116].w[13]"  1;
	setAttr ".wl[117].w[13]"  1;
	setAttr ".wl[118].w[13]"  1;
	setAttr ".wl[119].w[13]"  1;
	setAttr ".wl[120].w[13]"  1;
	setAttr ".wl[121].w[13]"  1;
	setAttr ".wl[122].w[13]"  1;
	setAttr ".wl[123].w[13]"  1;
	setAttr ".wl[124].w[13]"  1;
	setAttr ".wl[125].w[13]"  1;
	setAttr ".wl[126].w[13]"  1;
	setAttr ".wl[127].w[13]"  1;
	setAttr ".wl[128].w[13]"  1;
	setAttr ".wl[129].w[13]"  1;
	setAttr ".wl[130].w[13]"  1;
	setAttr ".wl[131].w[13]"  1;
	setAttr ".wl[132].w[13]"  1;
	setAttr ".wl[133].w[13]"  1;
	setAttr ".wl[134].w[13]"  1;
	setAttr ".wl[135].w[13]"  1;
	setAttr ".wl[136].w[13]"  1;
	setAttr ".wl[137].w[13]"  1;
	setAttr ".wl[138].w[13]"  1;
	setAttr ".wl[139].w[13]"  1;
	setAttr ".wl[140].w[13]"  1;
	setAttr ".wl[141].w[13]"  1;
	setAttr ".wl[142].w[13]"  1;
	setAttr ".wl[143].w[13]"  1;
	setAttr ".wl[144].w[13]"  1;
	setAttr ".wl[145].w[13]"  1;
	setAttr ".wl[146].w[13]"  1;
	setAttr ".wl[147].w[13]"  1;
	setAttr ".wl[148].w[13]"  1;
	setAttr ".wl[149].w[13]"  1;
	setAttr ".wl[150].w[13]"  1;
	setAttr ".wl[151].w[13]"  1;
	setAttr ".wl[152].w[13]"  1;
	setAttr ".wl[153].w[13]"  1;
	setAttr ".wl[154].w[13]"  1;
	setAttr ".wl[155].w[13]"  1;
	setAttr ".wl[156].w[13]"  1;
	setAttr ".wl[157].w[13]"  1;
	setAttr ".wl[158].w[13]"  1;
	setAttr ".wl[159].w[13]"  1;
	setAttr ".wl[160].w[13]"  1;
	setAttr ".wl[161].w[13]"  1;
	setAttr ".wl[162].w[13]"  1;
	setAttr ".wl[163].w[13]"  1;
	setAttr ".wl[164].w[13]"  1;
	setAttr ".wl[165].w[13]"  1;
	setAttr ".wl[166].w[13]"  1;
	setAttr ".wl[167].w[13]"  1;
	setAttr ".wl[168].w[13]"  1;
	setAttr ".wl[169].w[13]"  1;
	setAttr ".wl[170].w[13]"  1;
	setAttr ".wl[171].w[13]"  1;
	setAttr ".wl[172].w[13]"  1;
	setAttr ".wl[173].w[13]"  1;
	setAttr ".wl[174].w[13]"  1;
	setAttr ".wl[175].w[13]"  1;
	setAttr ".wl[176].w[13]"  1;
	setAttr ".wl[177].w[13]"  1;
	setAttr ".wl[178].w[13]"  1;
	setAttr ".wl[179].w[13]"  1;
	setAttr ".wl[180].w[13]"  1;
	setAttr ".wl[181].w[13]"  1;
	setAttr ".wl[182].w[13]"  1;
	setAttr ".wl[183].w[13]"  1;
	setAttr ".wl[184].w[13]"  1;
	setAttr ".wl[185].w[13]"  1;
	setAttr ".wl[186].w[13]"  1;
	setAttr ".wl[187].w[13]"  1;
	setAttr ".wl[188].w[13]"  1;
	setAttr ".wl[189].w[13]"  1;
	setAttr ".wl[190].w[13]"  1;
	setAttr ".wl[191].w[13]"  1;
	setAttr ".wl[192].w[13]"  1;
	setAttr ".wl[193].w[13]"  1;
	setAttr ".wl[194].w[13]"  1;
	setAttr ".wl[195].w[13]"  1;
	setAttr ".wl[196].w[13]"  1;
	setAttr ".wl[197].w[13]"  1;
	setAttr ".wl[198].w[13]"  1;
	setAttr ".wl[199].w[13]"  1;
	setAttr ".wl[200].w[13]"  1;
	setAttr ".wl[201].w[13]"  1;
	setAttr ".wl[202].w[13]"  1;
	setAttr ".wl[203].w[13]"  1;
	setAttr ".wl[204].w[13]"  1;
	setAttr ".wl[205].w[13]"  1;
	setAttr ".wl[206].w[13]"  1;
	setAttr ".wl[207].w[13]"  1;
	setAttr ".wl[208].w[13]"  1;
	setAttr ".wl[209].w[13]"  1;
	setAttr ".wl[210].w[13]"  1;
	setAttr ".wl[211].w[13]"  1;
	setAttr ".wl[212].w[13]"  1;
	setAttr ".wl[213].w[13]"  1;
	setAttr ".wl[214].w[13]"  1;
	setAttr ".wl[215].w[13]"  1;
	setAttr ".wl[216].w[13]"  1;
	setAttr ".wl[217].w[13]"  1;
	setAttr ".wl[218].w[13]"  1;
	setAttr ".wl[219].w[13]"  1;
	setAttr ".wl[220].w[13]"  1;
	setAttr ".wl[221].w[13]"  1;
	setAttr ".wl[222].w[13]"  1;
	setAttr ".wl[223].w[13]"  1;
	setAttr ".wl[224].w[13]"  1;
	setAttr ".wl[225].w[13]"  1;
	setAttr ".wl[226].w[13]"  1;
	setAttr ".wl[227].w[13]"  1;
	setAttr ".wl[228].w[13]"  1;
	setAttr ".wl[229].w[13]"  1;
	setAttr ".wl[230].w[13]"  1;
	setAttr ".wl[231].w[13]"  1;
	setAttr ".wl[232].w[13]"  1;
	setAttr ".wl[233].w[13]"  1;
	setAttr ".wl[234].w[13]"  1;
	setAttr ".wl[235].w[13]"  1;
	setAttr ".wl[236].w[13]"  1;
	setAttr ".wl[237].w[13]"  1;
	setAttr ".wl[238].w[13]"  1;
	setAttr ".wl[239].w[13]"  1;
	setAttr ".wl[240].w[13]"  1;
	setAttr ".wl[241].w[13]"  1;
	setAttr ".wl[242].w[13]"  1;
	setAttr ".wl[243].w[13]"  1;
	setAttr ".wl[244].w[13]"  1;
	setAttr ".wl[245].w[13]"  1;
	setAttr ".wl[246].w[13]"  1;
	setAttr ".wl[247].w[13]"  1;
	setAttr -s 14 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 0
		 0.99999999999999978 2.2204460492503121e-016 0 0 0 0 1 0 -16.983928119530251 -3.7711896093762237e-015 0 1;
	setAttr ".pm[1]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 0
		 0.99999999999999978 2.2204460492503121e-016 0 0 0 0 1 0 -27.968285997629525 -6.2102070147739323e-015 0 1;
	setAttr ".pm[2]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 0
		 0.99999999999999978 2.2204460492503121e-016 0 0 0 0 1 0 -42.946955831401254 -9.5361398403162579e-015 0 1;
	setAttr ".pm[3]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 0
		 0.99999999999999978 2.2204460492503121e-016 0 0 0 0 1 0 -57.176692173484426 -1.2640264873350216e-014 0 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999956 0 0 0 0 0.99999999999999956 0 0
		 0 0 1 0 -2.7610131682735403e-030 -75.650384968469538 0 1;
	setAttr ".pm[5]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 0
		 0.99999999999999978 2.2204460492503121e-016 0 0 0 0 1 0 -62.503549265626276 10.021141488790839 0 1;
	setAttr ".pm[6]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 0
		 0.99999999999999978 2.2204460492503121e-016 0 0 0 0 1 0 -62.503549265626276 -10.021000000000011 0 1;
	setAttr ".pm[7]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 0
		 0.99999999999999978 2.2204460492503121e-016 0 0 0 0 1 0 -52.953343638571788 15.556100258121337 0 1;
	setAttr ".pm[8]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 0
		 0.99999999999999978 2.2204460492503121e-016 0 0 0 0 1 0 -52.953343638571809 -15.556000000000013 0 1;
	setAttr ".pm[9]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 0
		 0.99999999999999978 2.2204460492503121e-016 0 0 0 0 1 0 -30.619808793625946 11.675964285177551 0 1;
	setAttr ".pm[10]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 0
		 0.99999999999999978 2.2204460492503121e-016 0 0 0 0 1 0 -30.619808793625939 -11.676000000000009 0 1;
	setAttr ".pm[11]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 0
		 0.99999999999999978 2.2204460492503121e-016 0 0 0 0 1 0 -16.983928119530255 8.2704776490755147 0 1;
	setAttr ".pm[12]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 0
		 0.99999999999999978 2.2204460492503121e-016 0 0 0 0 1 0 -16.983928119530248 -8.2700000000000014 0 1;
	setAttr ".pm[13]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 14 ".ma";
	setAttr -s 14 ".dpf[0:13]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 14 ".lw";
	setAttr -s 14 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".ucm" yes;
	setAttr -s 14 ".ifcl";
	setAttr -s 14 ".ifcl";
createNode groupId -n "groupId46";
	rename -uid "9A5BBFF3-4C1C-4A02-8B65-0DABEC47959D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	rename -uid "81065252-40C8-67AA-EB4A-2987F31E082F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:239]";
createNode tweak -n "tweak18";
	rename -uid "087B25DA-4EC5-F1CD-71FE-DD8542F38935";
createNode objectSet -n "skinCluster18Set";
	rename -uid "8AC7189A-4DEE-B719-FBF5-70AE53A49B83";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster18GroupId";
	rename -uid "3AEE0A5C-4956-F6D3-4D3D-0A93A7BCF656";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster18GroupParts";
	rename -uid "C095E849-4476-7B22-1685-5CA9E3630E34";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet18";
	rename -uid "73582F8A-4ED0-577A-AC23-6D8CD21029F5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId48";
	rename -uid "AEC61667-4257-D292-6984-78963D92278C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	rename -uid "102CE228-49AD-7946-19F2-46B99984F0D3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode gameFbxExporter -n "gameExporterPreset1";
	rename -uid "3AA7B35D-4A73-F958-B3FD-A695C5054A56";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ils" yes;
	setAttr ".ilu" yes;
	setAttr ".esi" 2;
	setAttr ".inc" yes;
	setAttr ".fv" -type "string" "FBX201600";
	setAttr ".exp" -type "string" "E:/GameJams/ChillVibesJam/2023/KnightCharacterPack//_Exports/CombinedWithSword";
	setAttr ".exf" -type "string" "Chr_Knight";
createNode gameFbxExporter -n "gameExporterPreset2";
	rename -uid "BD42BEFF-4C8C-2E43-987A-95A57FC79DB0";
	setAttr ".pn" -type "string" "Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 2;
	setAttr ".spt" 2;
	setAttr ".ic" no;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201600";
createNode skinCluster -n "skinCluster20";
	rename -uid "662E5A3F-4067-B50E-F804-1AA839A8BBB7";
	setAttr -s 1812 ".wl";
	setAttr -s 2 ".wl[0].w[23:24]"  0.98257094268171219 0.0174290573182878;
	setAttr -s 2 ".wl[1].w[23:24]"  0.97901052985236192 0.020989470147638096;
	setAttr -s 2 ".wl[2].w[23:24]"  0.97459454408693935 0.025405455913060704;
	setAttr -s 2 ".wl[3].w[23:24]"  0.97067270048808074 0.029327299511919341;
	setAttr -s 2 ".wl[4].w[23:24]"  0.96808606196483582 0.031913938035164222;
	setAttr -s 2 ".wl[5].w[23:24]"  0.96719434916743297 0.032805650832567021;
	setAttr -s 2 ".wl[6].w[23:24]"  0.96808606196483582 0.031913938035164194;
	setAttr -s 2 ".wl[7].w[23:24]"  0.97067270048808074 0.029327299511919307;
	setAttr -s 2 ".wl[8].w[23:24]"  0.97459454408693935 0.025405455913060655;
	setAttr -s 2 ".wl[9].w[23:24]"  0.97901052985236192 0.020989470147638085;
	setAttr -s 2 ".wl[10].w[23:24]"  0.98257094268171219 0.017429057318287772;
	setAttr -s 2 ".wl[11].w[23:24]"  0.98394104356854017 0.016058956431459888;
	setAttr -s 2 ".wl[12].w[23:24]"  0.88000506477509899 0.11999493522490112;
	setAttr -s 2 ".wl[13].w[23:24]"  0.87762127109912047 0.12237872890087956;
	setAttr -s 2 ".wl[14].w[23:24]"  0.86763802316376615 0.13236197683623385;
	setAttr -s 2 ".wl[15].w[23:24]"  0.85186033725422394 0.14813966274577603;
	setAttr -s 2 ".wl[16].w[23:24]"  0.83808377251636779 0.16191622748363227;
	setAttr -s 2 ".wl[17].w[23:24]"  0.83275580495455515 0.16724419504544485;
	setAttr -s 2 ".wl[18].w[23:24]"  0.8380837725163679 0.16191622748363216;
	setAttr -s 2 ".wl[19].w[23:24]"  0.85186033725422416 0.14813966274577586;
	setAttr -s 2 ".wl[20].w[23:24]"  0.86763802316376637 0.1323619768362336;
	setAttr -s 2 ".wl[21].w[23:24]"  0.87762127109912069 0.12237872890087934;
	setAttr -s 2 ".wl[22].w[23:24]"  0.88000506477509921 0.11999493522490087;
	setAttr -s 2 ".wl[23].w[23:24]"  0.87974732904135988 0.12025267095864008;
	setAttr -s 2 ".wl[24].w[23:24]"  0.67426346646819946 0.3257365335318006;
	setAttr -s 2 ".wl[25].w[23:24]"  0.6589895526877303 0.3410104473122697;
	setAttr -s 2 ".wl[26].w[23:24]"  0.63976729665695165 0.36023270334304835;
	setAttr -s 2 ".wl[27].w[23:24]"  0.62312792601092326 0.37687207398907674;
	setAttr -s 2 ".wl[28].w[23:24]"  0.61262011645986547 0.38737988354013453;
	setAttr -s 2 ".wl[29].w[23:24]"  0.6091059030103132 0.3908940969896868;
	setAttr -s 2 ".wl[30].w[23:24]"  0.6126201164598658 0.38737988354013414;
	setAttr -s 2 ".wl[31].w[23:24]"  0.62312792601092348 0.37687207398907652;
	setAttr -s 2 ".wl[32].w[23:24]"  0.6397672966569522 0.3602327033430478;
	setAttr -s 2 ".wl[33].w[23:24]"  0.65898955268773074 0.34101044731226926;
	setAttr -s 2 ".wl[34].w[23:24]"  0.67426346646819968 0.32573653353180027;
	setAttr -s 2 ".wl[35].w[23:24]"  0.679950830027366 0.320049169972634;
	setAttr -s 2 ".wl[36].w[23:24]"  0.52697676014499895 0.47302323985500105;
	setAttr -s 2 ".wl[37].w[23:24]"  0.52139840441610996 0.47860159558388998;
	setAttr -s 2 ".wl[38].w[23:24]"  0.51668446905736809 0.48331553094263191;
	setAttr -s 2 ".wl[39].w[23:24]"  0.51367218469962683 0.48632781530037317;
	setAttr -s 2 ".wl[40].w[23:24]"  0.51207602467556812 0.48792397532443182;
	setAttr -s 2 ".wl[41].w[23:24]"  0.51158113217748236 0.4884188678225177;
	setAttr -s 2 ".wl[42].w[23:24]"  0.51207602467556812 0.48792397532443182;
	setAttr -s 2 ".wl[43].w[23:24]"  0.51367218469962683 0.48632781530037317;
	setAttr -s 2 ".wl[44].w[23:24]"  0.5166844690573682 0.4833155309426318;
	setAttr -s 2 ".wl[45].w[23:24]"  0.52139840441611018 0.47860159558388976;
	setAttr -s 2 ".wl[46].w[23:24]"  0.52697676014499906 0.47302323985500094;
	setAttr -s 2 ".wl[47].w[23:24]"  0.5298216774424126 0.47017832255758735;
	setAttr -s 2 ".wl[48].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[49].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[50].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[51].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[52].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[53].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[54].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[55].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[56].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[57].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[58].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[59].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[60].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[61].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[62].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[63].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[64].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[65].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[66].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[67].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[68].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[69].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[70].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[71].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[72].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[73].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[74].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[75].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[76].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[77].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[78].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[79].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[80].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[81].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[82].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[83].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[84].w[23:24]"  0.99119220900447746 0.0088077909955225318;
	setAttr -s 2 ".wl[85].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[86].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[87].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[88].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[89].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[90].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[91].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[92].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[93].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[94].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[95].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[96].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[97].w[23:24]"  0.5 0.5;
	setAttr ".wl[98].w[23]"  1;
	setAttr ".wl[99].w[23]"  1;
	setAttr ".wl[100].w[23]"  1;
	setAttr ".wl[101].w[23]"  1;
	setAttr ".wl[102].w[23]"  1;
	setAttr ".wl[103].w[23]"  1;
	setAttr ".wl[104].w[23]"  1;
	setAttr ".wl[105].w[23]"  1;
	setAttr ".wl[106].w[23]"  1;
	setAttr ".wl[107].w[23]"  1;
	setAttr ".wl[108].w[23]"  1;
	setAttr ".wl[109].w[23]"  1;
	setAttr ".wl[110].w[23]"  1;
	setAttr ".wl[111].w[23]"  1;
	setAttr ".wl[112].w[23]"  1;
	setAttr ".wl[113].w[23]"  1;
	setAttr ".wl[114].w[23]"  1;
	setAttr ".wl[115].w[23]"  1;
	setAttr ".wl[116].w[23]"  1;
	setAttr ".wl[117].w[23]"  1;
	setAttr ".wl[118].w[23]"  1;
	setAttr ".wl[119].w[23]"  1;
	setAttr ".wl[120].w[23]"  1;
	setAttr ".wl[121].w[23]"  1;
	setAttr ".wl[122].w[23]"  1;
	setAttr ".wl[123].w[23]"  1;
	setAttr ".wl[124].w[23]"  1;
	setAttr ".wl[125].w[23]"  1;
	setAttr ".wl[126].w[23]"  1;
	setAttr ".wl[127].w[23]"  1;
	setAttr ".wl[128].w[23]"  1;
	setAttr ".wl[129].w[23]"  1;
	setAttr ".wl[130].w[23]"  1;
	setAttr ".wl[131].w[23]"  1;
	setAttr ".wl[132].w[23]"  1;
	setAttr ".wl[133].w[23]"  1;
	setAttr ".wl[134].w[23]"  1;
	setAttr ".wl[135].w[23]"  1;
	setAttr ".wl[136].w[23]"  1;
	setAttr ".wl[137].w[23]"  1;
	setAttr ".wl[138].w[22]"  1;
	setAttr ".wl[139].w[22]"  1;
	setAttr ".wl[140].w[22]"  1;
	setAttr ".wl[141].w[22]"  1;
	setAttr ".wl[142].w[22]"  1;
	setAttr ".wl[143].w[22]"  1;
	setAttr ".wl[144].w[22]"  1;
	setAttr ".wl[145].w[22]"  1;
	setAttr ".wl[146].w[22]"  1;
	setAttr ".wl[147].w[22]"  1;
	setAttr ".wl[148].w[23]"  1;
	setAttr ".wl[149].w[23]"  1;
	setAttr ".wl[150].w[23]"  1;
	setAttr ".wl[151].w[23]"  1;
	setAttr ".wl[152].w[23]"  1;
	setAttr ".wl[153].w[23]"  1;
	setAttr ".wl[154].w[23]"  1;
	setAttr ".wl[155].w[23]"  1;
	setAttr ".wl[156].w[23]"  1;
	setAttr ".wl[157].w[23]"  1;
	setAttr ".wl[158].w[23]"  1;
	setAttr ".wl[159].w[23]"  1;
	setAttr ".wl[160].w[23]"  1;
	setAttr ".wl[161].w[23]"  1;
	setAttr ".wl[162].w[23]"  1;
	setAttr ".wl[163].w[23]"  1;
	setAttr ".wl[164].w[23]"  1;
	setAttr ".wl[165].w[23]"  1;
	setAttr ".wl[166].w[23]"  1;
	setAttr ".wl[167].w[23]"  1;
	setAttr ".wl[168].w[23]"  1;
	setAttr ".wl[169].w[23]"  1;
	setAttr ".wl[170].w[23]"  1;
	setAttr ".wl[171].w[23]"  1;
	setAttr ".wl[172].w[23]"  1;
	setAttr ".wl[173].w[23]"  1;
	setAttr ".wl[174].w[23]"  1;
	setAttr ".wl[175].w[23]"  1;
	setAttr ".wl[176].w[23]"  1;
	setAttr ".wl[177].w[23]"  1;
	setAttr ".wl[178].w[23]"  1;
	setAttr ".wl[179].w[23]"  1;
	setAttr ".wl[180].w[23]"  1;
	setAttr ".wl[181].w[23]"  1;
	setAttr ".wl[182].w[23]"  1;
	setAttr ".wl[183].w[23]"  1;
	setAttr ".wl[184].w[23]"  1;
	setAttr ".wl[185].w[23]"  1;
	setAttr ".wl[186].w[23]"  1;
	setAttr ".wl[187].w[23]"  1;
	setAttr ".wl[188].w[23]"  1;
	setAttr ".wl[189].w[22]"  1;
	setAttr ".wl[190].w[22]"  1;
	setAttr ".wl[191].w[22]"  1;
	setAttr ".wl[192].w[22]"  1;
	setAttr ".wl[193].w[22]"  1;
	setAttr ".wl[194].w[22]"  1;
	setAttr ".wl[195].w[22]"  1;
	setAttr ".wl[196].w[22]"  1;
	setAttr ".wl[197].w[22]"  1;
	setAttr ".wl[198].w[22]"  1;
	setAttr ".wl[199].w[23]"  1;
	setAttr ".wl[200].w[23]"  1;
	setAttr ".wl[201].w[23]"  1;
	setAttr ".wl[202].w[23]"  1;
	setAttr ".wl[203].w[23]"  1;
	setAttr ".wl[204].w[23]"  1;
	setAttr ".wl[205].w[23]"  1;
	setAttr ".wl[206].w[23]"  1;
	setAttr ".wl[207].w[23]"  1;
	setAttr ".wl[208].w[23]"  1;
	setAttr ".wl[209].w[23]"  1;
	setAttr ".wl[210].w[23]"  1;
	setAttr ".wl[211].w[23]"  1;
	setAttr ".wl[212].w[23]"  1;
	setAttr ".wl[213].w[23]"  1;
	setAttr ".wl[214].w[23]"  1;
	setAttr ".wl[215].w[23]"  1;
	setAttr ".wl[216].w[23]"  1;
	setAttr ".wl[217].w[23]"  1;
	setAttr ".wl[218].w[23]"  1;
	setAttr ".wl[219].w[23]"  1;
	setAttr ".wl[220].w[23]"  1;
	setAttr ".wl[221].w[23]"  1;
	setAttr ".wl[222].w[23]"  1;
	setAttr ".wl[223].w[23]"  1;
	setAttr ".wl[224].w[23]"  1;
	setAttr ".wl[225].w[23]"  1;
	setAttr ".wl[226].w[23]"  1;
	setAttr ".wl[227].w[23]"  1;
	setAttr ".wl[228].w[23]"  1;
	setAttr ".wl[229].w[23]"  1;
	setAttr ".wl[230].w[23]"  1;
	setAttr ".wl[231].w[23]"  1;
	setAttr ".wl[232].w[23]"  1;
	setAttr ".wl[233].w[23]"  1;
	setAttr ".wl[234].w[23]"  1;
	setAttr ".wl[235].w[23]"  1;
	setAttr ".wl[236].w[23]"  1;
	setAttr ".wl[237].w[23]"  1;
	setAttr ".wl[238].w[23]"  1;
	setAttr ".wl[239].w[23]"  1;
	setAttr ".wl[240].w[23]"  1;
	setAttr ".wl[241].w[23]"  1;
	setAttr ".wl[242].w[23]"  1;
	setAttr ".wl[243].w[23]"  1;
	setAttr ".wl[244].w[23]"  1;
	setAttr ".wl[245].w[23]"  1;
	setAttr ".wl[246].w[23]"  1;
	setAttr ".wl[247].w[23]"  1;
	setAttr ".wl[248].w[23]"  1;
	setAttr ".wl[249].w[23]"  1;
	setAttr ".wl[250].w[22]"  1;
	setAttr ".wl[251].w[22]"  1;
	setAttr ".wl[252].w[22]"  1;
	setAttr ".wl[253].w[22]"  1;
	setAttr ".wl[254].w[22]"  1;
	setAttr ".wl[255].w[22]"  1;
	setAttr ".wl[256].w[22]"  1;
	setAttr ".wl[257].w[22]"  1;
	setAttr ".wl[258].w[22]"  1;
	setAttr ".wl[259].w[22]"  1;
	setAttr ".wl[260].w[23]"  1;
	setAttr ".wl[261].w[22]"  1;
	setAttr ".wl[262].w[22]"  1;
	setAttr ".wl[263].w[22]"  1;
	setAttr ".wl[264].w[22]"  1;
	setAttr ".wl[265].w[22]"  1;
	setAttr ".wl[266].w[22]"  1;
	setAttr ".wl[267].w[22]"  1;
	setAttr ".wl[268].w[22]"  1;
	setAttr ".wl[269].w[22]"  1;
	setAttr ".wl[270].w[22]"  1;
	setAttr ".wl[271].w[22]"  1;
	setAttr ".wl[272].w[22]"  1;
	setAttr ".wl[273].w[22]"  1;
	setAttr ".wl[274].w[22]"  1;
	setAttr ".wl[275].w[22]"  1;
	setAttr ".wl[276].w[22]"  1;
	setAttr ".wl[277].w[22]"  1;
	setAttr ".wl[278].w[22]"  1;
	setAttr ".wl[279].w[22]"  1;
	setAttr ".wl[280].w[22]"  1;
	setAttr ".wl[281].w[22]"  1;
	setAttr ".wl[282].w[22]"  1;
	setAttr ".wl[283].w[22]"  1;
	setAttr ".wl[284].w[22]"  1;
	setAttr ".wl[285].w[22]"  1;
	setAttr ".wl[286].w[22]"  1;
	setAttr ".wl[287].w[22]"  1;
	setAttr ".wl[288].w[22]"  1;
	setAttr ".wl[289].w[22]"  1;
	setAttr ".wl[290].w[22]"  1;
	setAttr ".wl[291].w[22]"  1;
	setAttr ".wl[292].w[22]"  1;
	setAttr ".wl[293].w[22]"  1;
	setAttr ".wl[294].w[22]"  1;
	setAttr ".wl[295].w[22]"  1;
	setAttr ".wl[296].w[22]"  1;
	setAttr ".wl[297].w[22]"  1;
	setAttr ".wl[298].w[22]"  1;
	setAttr ".wl[299].w[22]"  1;
	setAttr ".wl[300].w[22]"  1;
	setAttr ".wl[301].w[22]"  1;
	setAttr ".wl[302].w[22]"  1;
	setAttr ".wl[303].w[22]"  1;
	setAttr ".wl[304].w[22]"  1;
	setAttr ".wl[305].w[22]"  1;
	setAttr ".wl[306].w[22]"  1;
	setAttr ".wl[307].w[22]"  1;
	setAttr ".wl[308].w[22]"  1;
	setAttr ".wl[309].w[22]"  1;
	setAttr ".wl[310].w[22]"  1;
	setAttr ".wl[311].w[22]"  1;
	setAttr ".wl[312].w[22]"  1;
	setAttr ".wl[313].w[22]"  1;
	setAttr ".wl[314].w[22]"  1;
	setAttr ".wl[315].w[22]"  1;
	setAttr ".wl[316].w[22]"  1;
	setAttr ".wl[317].w[22]"  1;
	setAttr ".wl[318].w[22]"  1;
	setAttr ".wl[319].w[22]"  1;
	setAttr ".wl[320].w[22]"  1;
	setAttr ".wl[321].w[22]"  1;
	setAttr ".wl[322].w[22]"  1;
	setAttr ".wl[323].w[22]"  1;
	setAttr ".wl[324].w[22]"  1;
	setAttr ".wl[325].w[22]"  1;
	setAttr ".wl[326].w[22]"  1;
	setAttr ".wl[327].w[22]"  1;
	setAttr ".wl[328].w[22]"  1;
	setAttr ".wl[329].w[22]"  1;
	setAttr ".wl[330].w[22]"  1;
	setAttr ".wl[331].w[22]"  1;
	setAttr ".wl[332].w[22]"  1;
	setAttr ".wl[333].w[22]"  1;
	setAttr ".wl[334].w[22]"  1;
	setAttr ".wl[335].w[22]"  1;
	setAttr ".wl[336].w[22]"  1;
	setAttr ".wl[337].w[22]"  1;
	setAttr ".wl[338].w[22]"  1;
	setAttr ".wl[339].w[22]"  1;
	setAttr ".wl[340].w[22]"  1;
	setAttr ".wl[341].w[22]"  1;
	setAttr ".wl[342].w[22]"  1;
	setAttr ".wl[343].w[22]"  1;
	setAttr ".wl[344].w[22]"  1;
	setAttr ".wl[345].w[22]"  1;
	setAttr ".wl[346].w[22]"  1;
	setAttr ".wl[347].w[22]"  1;
	setAttr ".wl[348].w[22]"  1;
	setAttr ".wl[349].w[22]"  1;
	setAttr ".wl[350].w[22]"  1;
	setAttr ".wl[351].w[22]"  1;
	setAttr ".wl[352].w[22]"  1;
	setAttr ".wl[353].w[22]"  1;
	setAttr ".wl[354].w[22]"  1;
	setAttr ".wl[355].w[22]"  1;
	setAttr ".wl[356].w[22]"  1;
	setAttr ".wl[357].w[22]"  1;
	setAttr ".wl[358].w[22]"  1;
	setAttr ".wl[359].w[22]"  1;
	setAttr ".wl[360].w[22]"  1;
	setAttr ".wl[361].w[22]"  1;
	setAttr ".wl[362].w[22]"  1;
	setAttr ".wl[363].w[22]"  1;
	setAttr ".wl[364].w[22]"  1;
	setAttr ".wl[365].w[22]"  1;
	setAttr ".wl[366].w[22]"  1;
	setAttr ".wl[367].w[22]"  1;
	setAttr ".wl[368].w[22]"  1;
	setAttr ".wl[369].w[22]"  1;
	setAttr ".wl[370].w[22]"  1;
	setAttr ".wl[371].w[22]"  1;
	setAttr ".wl[372].w[22]"  1;
	setAttr ".wl[373].w[22]"  1;
	setAttr ".wl[374].w[22]"  1;
	setAttr ".wl[375].w[22]"  1;
	setAttr ".wl[376].w[22]"  1;
	setAttr ".wl[377].w[22]"  1;
	setAttr ".wl[378].w[22]"  1;
	setAttr ".wl[379].w[22]"  1;
	setAttr ".wl[380].w[22]"  1;
	setAttr ".wl[381].w[22]"  1;
	setAttr ".wl[382].w[22]"  1;
	setAttr ".wl[383].w[22]"  1;
	setAttr ".wl[384].w[22]"  1;
	setAttr ".wl[385].w[22]"  1;
	setAttr ".wl[386].w[22]"  1;
	setAttr ".wl[387].w[22]"  1;
	setAttr ".wl[388].w[22]"  1;
	setAttr -s 2 ".wl[389].w";
	setAttr ".wl[389].w[22]" 0.19999999999999996;
	setAttr ".wl[389].w[26]" 0.8;
	setAttr -s 2 ".wl[390].w";
	setAttr ".wl[390].w[22]" 0.19999999999999996;
	setAttr ".wl[390].w[26]" 0.8;
	setAttr -s 2 ".wl[391].w";
	setAttr ".wl[391].w[22]" 0.19999999999999996;
	setAttr ".wl[391].w[26]" 0.8;
	setAttr -s 2 ".wl[392].w";
	setAttr ".wl[392].w[22]" 0.19999999999999996;
	setAttr ".wl[392].w[26]" 0.8;
	setAttr -s 2 ".wl[393].w";
	setAttr ".wl[393].w[22]" 0.19999999999999996;
	setAttr ".wl[393].w[26]" 0.8;
	setAttr -s 2 ".wl[394].w";
	setAttr ".wl[394].w[22]" 0.19999999999999996;
	setAttr ".wl[394].w[26]" 0.8;
	setAttr ".wl[395].w[26]"  1;
	setAttr ".wl[396].w[26]"  1;
	setAttr ".wl[397].w[26]"  1;
	setAttr ".wl[398].w[26]"  1;
	setAttr ".wl[399].w[26]"  1;
	setAttr ".wl[400].w[26]"  1;
	setAttr -s 2 ".wl[401].w";
	setAttr ".wl[401].w[22]" 0.5;
	setAttr ".wl[401].w[26]" 0.5;
	setAttr -s 2 ".wl[402].w";
	setAttr ".wl[402].w[22]" 0.49999999999999994;
	setAttr ".wl[402].w[26]" 0.50000000000000011;
	setAttr -s 2 ".wl[403].w";
	setAttr ".wl[403].w[22]" 0.5;
	setAttr ".wl[403].w[26]" 0.5;
	setAttr -s 2 ".wl[404].w";
	setAttr ".wl[404].w[22]" 0.5;
	setAttr ".wl[404].w[26]" 0.5;
	setAttr -s 2 ".wl[405].w";
	setAttr ".wl[405].w[22]" 0.5;
	setAttr ".wl[405].w[26]" 0.5;
	setAttr -s 2 ".wl[406].w";
	setAttr ".wl[406].w[22]" 0.5;
	setAttr ".wl[406].w[26]" 0.5;
	setAttr ".wl[407].w[22]"  1;
	setAttr -s 2 ".wl[408].w";
	setAttr ".wl[408].w[22]" 0.5;
	setAttr ".wl[408].w[26]" 0.5;
	setAttr -s 2 ".wl[409].w";
	setAttr ".wl[409].w[22]" 0.19999999999999996;
	setAttr ".wl[409].w[26]" 0.8;
	setAttr ".wl[410].w[26]"  1;
	setAttr ".wl[411].w[26]"  1;
	setAttr ".wl[412].w[26]"  1;
	setAttr -s 2 ".wl[413].w";
	setAttr ".wl[413].w[22]" 0.19999999999999996;
	setAttr ".wl[413].w[26]" 0.8;
	setAttr -s 2 ".wl[414].w";
	setAttr ".wl[414].w[22]" 0.49999999999999994;
	setAttr ".wl[414].w[26]" 0.50000000000000011;
	setAttr ".wl[415].w[22]"  1;
	setAttr ".wl[416].w[22]"  1;
	setAttr ".wl[417].w[22]"  1;
	setAttr -s 2 ".wl[418].w";
	setAttr ".wl[418].w[22]" 0.5;
	setAttr ".wl[418].w[26]" 0.5;
	setAttr -s 2 ".wl[419].w";
	setAttr ".wl[419].w[22]" 0.5;
	setAttr ".wl[419].w[26]" 0.5;
	setAttr -s 2 ".wl[420].w";
	setAttr ".wl[420].w[22]" 0.19999999999999996;
	setAttr ".wl[420].w[26]" 0.8;
	setAttr -s 2 ".wl[421].w";
	setAttr ".wl[421].w[22]" 0.5;
	setAttr ".wl[421].w[26]" 0.5;
	setAttr ".wl[422].w[22]"  1;
	setAttr ".wl[423].w[22]"  1;
	setAttr ".wl[424].w[22]"  1;
	setAttr ".wl[425].w[22]"  1;
	setAttr ".wl[426].w[22]"  1;
	setAttr ".wl[427].w[22]"  1;
	setAttr ".wl[428].w[22]"  1;
	setAttr -s 2 ".wl[429].w";
	setAttr ".wl[429].w[22]" 0.19999999999999996;
	setAttr ".wl[429].w[27]" 0.8;
	setAttr -s 2 ".wl[430].w";
	setAttr ".wl[430].w[22]" 0.19999999999999996;
	setAttr ".wl[430].w[27]" 0.8;
	setAttr -s 2 ".wl[431].w";
	setAttr ".wl[431].w[22]" 0.19999999999999996;
	setAttr ".wl[431].w[27]" 0.8;
	setAttr -s 2 ".wl[432].w";
	setAttr ".wl[432].w[22]" 0.19999999999999996;
	setAttr ".wl[432].w[27]" 0.8;
	setAttr -s 2 ".wl[433].w";
	setAttr ".wl[433].w[22]" 0.19999999999999996;
	setAttr ".wl[433].w[27]" 0.8;
	setAttr -s 2 ".wl[434].w";
	setAttr ".wl[434].w[22]" 0.19999999999999996;
	setAttr ".wl[434].w[27]" 0.8;
	setAttr ".wl[435].w[27]"  1;
	setAttr ".wl[436].w[27]"  1;
	setAttr ".wl[437].w[27]"  1;
	setAttr ".wl[438].w[27]"  1;
	setAttr ".wl[439].w[27]"  1;
	setAttr ".wl[440].w[27]"  1;
	setAttr -s 2 ".wl[441].w";
	setAttr ".wl[441].w[22]" 0.5;
	setAttr ".wl[441].w[27]" 0.5;
	setAttr -s 2 ".wl[442].w";
	setAttr ".wl[442].w[22]" 0.49999999999999994;
	setAttr ".wl[442].w[27]" 0.50000000000000011;
	setAttr -s 2 ".wl[443].w";
	setAttr ".wl[443].w[22]" 0.5;
	setAttr ".wl[443].w[27]" 0.5;
	setAttr -s 2 ".wl[444].w";
	setAttr ".wl[444].w[22]" 0.5;
	setAttr ".wl[444].w[27]" 0.5;
	setAttr -s 2 ".wl[445].w";
	setAttr ".wl[445].w[22]" 0.5;
	setAttr ".wl[445].w[27]" 0.5;
	setAttr -s 2 ".wl[446].w";
	setAttr ".wl[446].w[22]" 0.5;
	setAttr ".wl[446].w[27]" 0.5;
	setAttr ".wl[447].w[22]"  1;
	setAttr -s 2 ".wl[448].w";
	setAttr ".wl[448].w[22]" 0.5;
	setAttr ".wl[448].w[27]" 0.5;
	setAttr -s 2 ".wl[449].w";
	setAttr ".wl[449].w[22]" 0.19999999999999996;
	setAttr ".wl[449].w[27]" 0.8;
	setAttr ".wl[450].w[27]"  1;
	setAttr ".wl[451].w[27]"  1;
	setAttr ".wl[452].w[27]"  1;
	setAttr -s 2 ".wl[453].w";
	setAttr ".wl[453].w[22]" 0.19999999999999996;
	setAttr ".wl[453].w[27]" 0.8;
	setAttr -s 2 ".wl[454].w";
	setAttr ".wl[454].w[22]" 0.49999999999999994;
	setAttr ".wl[454].w[27]" 0.50000000000000011;
	setAttr ".wl[455].w[22]"  1;
	setAttr ".wl[456].w[22]"  1;
	setAttr ".wl[457].w[22]"  1;
	setAttr -s 2 ".wl[458].w";
	setAttr ".wl[458].w[22]" 0.5;
	setAttr ".wl[458].w[27]" 0.5;
	setAttr -s 2 ".wl[459].w";
	setAttr ".wl[459].w[22]" 0.5;
	setAttr ".wl[459].w[27]" 0.5;
	setAttr -s 2 ".wl[460].w";
	setAttr ".wl[460].w[22]" 0.19999999999999996;
	setAttr ".wl[460].w[27]" 0.8;
	setAttr -s 2 ".wl[461].w";
	setAttr ".wl[461].w[22]" 0.5;
	setAttr ".wl[461].w[27]" 0.5;
	setAttr ".wl[462].w[22]"  1;
	setAttr ".wl[463].w[23]"  1;
	setAttr ".wl[464].w[23]"  1;
	setAttr ".wl[465].w[23]"  1;
	setAttr ".wl[466].w[23]"  1;
	setAttr ".wl[467].w[23]"  1;
	setAttr ".wl[468].w[23]"  1;
	setAttr ".wl[469].w[23]"  1;
	setAttr ".wl[470].w[23]"  1;
	setAttr ".wl[471].w[23]"  1;
	setAttr ".wl[472].w[23]"  1;
	setAttr ".wl[473].w[23]"  1;
	setAttr ".wl[474].w[23]"  1;
	setAttr ".wl[475].w[23]"  1;
	setAttr ".wl[476].w[23]"  1;
	setAttr ".wl[477].w[23]"  1;
	setAttr ".wl[478].w[23]"  1;
	setAttr ".wl[479].w[23]"  1;
	setAttr ".wl[480].w[23]"  1;
	setAttr ".wl[481].w[23]"  1;
	setAttr ".wl[482].w[23]"  1;
	setAttr ".wl[483].w[23]"  1;
	setAttr ".wl[484].w[23]"  1;
	setAttr ".wl[485].w[23]"  1;
	setAttr ".wl[486].w[23]"  1;
	setAttr ".wl[487].w[23]"  1;
	setAttr ".wl[488].w[23]"  1;
	setAttr ".wl[489].w[23]"  1;
	setAttr ".wl[490].w[23]"  1;
	setAttr ".wl[491].w[23]"  1;
	setAttr ".wl[492].w[23]"  1;
	setAttr ".wl[493].w[23]"  1;
	setAttr ".wl[494].w[23]"  1;
	setAttr ".wl[495].w[23]"  1;
	setAttr ".wl[496].w[23]"  1;
	setAttr ".wl[497].w[23]"  1;
	setAttr ".wl[498].w[23]"  1;
	setAttr ".wl[499].w[23]"  1;
	setAttr ".wl[500].w[23]"  1;
	setAttr ".wl[501].w[23]"  1;
	setAttr ".wl[502].w[23]"  1;
	setAttr ".wl[503].w[22]"  1;
	setAttr ".wl[504].w[22]"  1;
	setAttr ".wl[505].w[22]"  1;
	setAttr ".wl[506].w[22]"  1;
	setAttr ".wl[507].w[22]"  1;
	setAttr ".wl[508].w[22]"  1;
	setAttr ".wl[509].w[22]"  1;
	setAttr ".wl[510].w[22]"  1;
	setAttr ".wl[511].w[22]"  1;
	setAttr ".wl[512].w[22]"  1;
	setAttr ".wl[513].w[23]"  1;
	setAttr ".wl[514].w[23]"  1;
	setAttr ".wl[515].w[23]"  1;
	setAttr ".wl[516].w[23]"  1;
	setAttr ".wl[517].w[23]"  1;
	setAttr ".wl[518].w[23]"  1;
	setAttr ".wl[519].w[23]"  1;
	setAttr ".wl[520].w[23]"  1;
	setAttr ".wl[521].w[23]"  1;
	setAttr ".wl[522].w[23]"  1;
	setAttr ".wl[523].w[23]"  1;
	setAttr ".wl[524].w[23]"  1;
	setAttr ".wl[525].w[23]"  1;
	setAttr ".wl[526].w[23]"  1;
	setAttr ".wl[527].w[23]"  1;
	setAttr ".wl[528].w[23]"  1;
	setAttr ".wl[529].w[23]"  1;
	setAttr ".wl[530].w[23]"  1;
	setAttr ".wl[531].w[23]"  1;
	setAttr ".wl[532].w[23]"  1;
	setAttr ".wl[533].w[23]"  1;
	setAttr ".wl[534].w[23]"  1;
	setAttr ".wl[535].w[23]"  1;
	setAttr ".wl[536].w[23]"  1;
	setAttr ".wl[537].w[23]"  1;
	setAttr ".wl[538].w[23]"  1;
	setAttr ".wl[539].w[23]"  1;
	setAttr ".wl[540].w[23]"  1;
	setAttr ".wl[541].w[23]"  1;
	setAttr ".wl[542].w[23]"  1;
	setAttr ".wl[543].w[23]"  1;
	setAttr ".wl[544].w[23]"  1;
	setAttr ".wl[545].w[23]"  1;
	setAttr ".wl[546].w[23]"  1;
	setAttr ".wl[547].w[23]"  1;
	setAttr ".wl[548].w[23]"  1;
	setAttr ".wl[549].w[23]"  1;
	setAttr ".wl[550].w[23]"  1;
	setAttr ".wl[551].w[23]"  1;
	setAttr ".wl[552].w[23]"  1;
	setAttr ".wl[553].w[23]"  1;
	setAttr ".wl[554].w[22]"  1;
	setAttr ".wl[555].w[22]"  1;
	setAttr ".wl[556].w[22]"  1;
	setAttr ".wl[557].w[22]"  1;
	setAttr ".wl[558].w[22]"  1;
	setAttr ".wl[559].w[22]"  1;
	setAttr ".wl[560].w[22]"  1;
	setAttr ".wl[561].w[22]"  1;
	setAttr ".wl[562].w[22]"  1;
	setAttr ".wl[563].w[22]"  1;
	setAttr ".wl[564].w[23]"  1;
	setAttr ".wl[565].w[23]"  1;
	setAttr ".wl[566].w[23]"  1;
	setAttr ".wl[567].w[23]"  1;
	setAttr ".wl[568].w[23]"  1;
	setAttr ".wl[569].w[23]"  1;
	setAttr ".wl[570].w[23]"  1;
	setAttr ".wl[571].w[23]"  1;
	setAttr ".wl[572].w[23]"  1;
	setAttr ".wl[573].w[23]"  1;
	setAttr ".wl[574].w[23]"  1;
	setAttr ".wl[575].w[23]"  1;
	setAttr ".wl[576].w[23]"  1;
	setAttr ".wl[577].w[23]"  1;
	setAttr ".wl[578].w[23]"  1;
	setAttr ".wl[579].w[23]"  1;
	setAttr ".wl[580].w[23]"  1;
	setAttr ".wl[581].w[23]"  1;
	setAttr ".wl[582].w[23]"  1;
	setAttr ".wl[583].w[23]"  1;
	setAttr ".wl[584].w[23]"  1;
	setAttr ".wl[585].w[23]"  1;
	setAttr ".wl[586].w[23]"  1;
	setAttr ".wl[587].w[23]"  1;
	setAttr ".wl[588].w[23]"  1;
	setAttr ".wl[589].w[23]"  1;
	setAttr ".wl[590].w[23]"  1;
	setAttr ".wl[591].w[23]"  1;
	setAttr ".wl[592].w[23]"  1;
	setAttr ".wl[593].w[23]"  1;
	setAttr ".wl[594].w[23]"  1;
	setAttr ".wl[595].w[23]"  1;
	setAttr ".wl[596].w[23]"  1;
	setAttr ".wl[597].w[23]"  1;
	setAttr ".wl[598].w[23]"  1;
	setAttr ".wl[599].w[23]"  1;
	setAttr ".wl[600].w[23]"  1;
	setAttr ".wl[601].w[23]"  1;
	setAttr ".wl[602].w[23]"  1;
	setAttr ".wl[603].w[23]"  1;
	setAttr ".wl[604].w[23]"  1;
	setAttr ".wl[605].w[22]"  1;
	setAttr ".wl[606].w[22]"  1;
	setAttr ".wl[607].w[22]"  1;
	setAttr ".wl[608].w[22]"  1;
	setAttr ".wl[609].w[22]"  1;
	setAttr ".wl[610].w[22]"  1;
	setAttr ".wl[611].w[22]"  1;
	setAttr ".wl[612].w[22]"  1;
	setAttr ".wl[613].w[22]"  1;
	setAttr ".wl[614].w[22]"  1;
	setAttr ".wl[615].w[23]"  1;
	setAttr ".wl[616].w[23]"  1;
	setAttr ".wl[617].w[23]"  1;
	setAttr ".wl[618].w[23]"  1;
	setAttr ".wl[619].w[23]"  1;
	setAttr ".wl[620].w[23]"  1;
	setAttr ".wl[621].w[23]"  1;
	setAttr ".wl[622].w[23]"  1;
	setAttr ".wl[623].w[23]"  1;
	setAttr ".wl[624].w[23]"  1;
	setAttr ".wl[625].w[23]"  1;
	setAttr ".wl[626].w[35]"  1;
	setAttr ".wl[627].w[35]"  1;
	setAttr ".wl[628].w[35]"  1;
	setAttr ".wl[629].w[35]"  1;
	setAttr ".wl[630].w[35]"  1;
	setAttr ".wl[631].w[35]"  1;
	setAttr ".wl[632].w[35]"  1;
	setAttr ".wl[633].w[35]"  1;
	setAttr -s 4 ".wl[634].w";
	setAttr ".wl[634].w[0]" 0.1;
	setAttr ".wl[634].w[29]" 0.01245219353573152;
	setAttr ".wl[634].w[33]" 0.88056880834737106;
	setAttr ".wl[634].w[34]" 0.0069789981168973392;
	setAttr -s 4 ".wl[635].w";
	setAttr ".wl[635].w[0]" 0.1;
	setAttr ".wl[635].w[29]" 0.030044609315852403;
	setAttr ".wl[635].w[33]" 0.86236450716775759;
	setAttr ".wl[635].w[34]" 0.0075908835163900545;
	setAttr -s 4 ".wl[636].w";
	setAttr ".wl[636].w[0]" 0.1;
	setAttr ".wl[636].w[29]" 0.099146425152983733;
	setAttr ".wl[636].w[33]" 0.79455627395791451;
	setAttr ".wl[636].w[34]" 0.0062973008891017259;
	setAttr -s 4 ".wl[637].w";
	setAttr ".wl[637].w[0]" 0.30198805856644251;
	setAttr ".wl[637].w[29]" 0.05;
	setAttr ".wl[637].w[33]" 0.64261257977802244;
	setAttr ".wl[637].w[34]" 0.0053993616555350551;
	setAttr -s 4 ".wl[638].w";
	setAttr ".wl[638].w[0]" 0.4383240461377047;
	setAttr ".wl[638].w[29]" 0.04044380191979622;
	setAttr ".wl[638].w[33]" 0.51903765365145393;
	setAttr ".wl[638].w[34]" 0.0021944982910451004;
	setAttr -s 4 ".wl[639].w";
	setAttr ".wl[639].w[0]" 0.1;
	setAttr ".wl[639].w[29]" 0.013392408904483556;
	setAttr ".wl[639].w[33]" 0.88344106924911925;
	setAttr ".wl[639].w[34]" 0.0031665218463972334;
	setAttr -s 4 ".wl[640].w";
	setAttr ".wl[640].w[0]" 0.1;
	setAttr ".wl[640].w[29]" 0.0067838946644929654;
	setAttr ".wl[640].w[33]" 0.88945547479786968;
	setAttr ".wl[640].w[34]" 0.0037606305376374645;
	setAttr -s 4 ".wl[641].w";
	setAttr ".wl[641].w[0]" 0.1;
	setAttr ".wl[641].w[29]" 0.0073035253165378436;
	setAttr ".wl[641].w[33]" 0.88740717792179902;
	setAttr ".wl[641].w[34]" 0.0052892967616631073;
	setAttr ".wl[642].w[35]"  1;
	setAttr ".wl[643].w[34]"  1;
	setAttr ".wl[644].w[34]"  1;
	setAttr ".wl[645].w[34]"  1;
	setAttr ".wl[646].w[34]"  1;
	setAttr ".wl[647].w[34]"  1;
	setAttr ".wl[648].w[34]"  1;
	setAttr ".wl[649].w[34]"  1;
	setAttr ".wl[650].w[34]"  1;
	setAttr -s 2 ".wl[651].w[33:34]"  0.49996859129824645 0.50003140870175355;
	setAttr -s 2 ".wl[652].w[33:34]"  0.49965370162249756 0.50034629837750244;
	setAttr -s 2 ".wl[653].w[33:34]"  0.49996859126122867 0.50003140873877139;
	setAttr -s 2 ".wl[654].w[33:34]"  0.50015411674420385 0.49984588325579615;
	setAttr -s 2 ".wl[655].w[33:34]"  0.50012205314012415 0.49987794685987585;
	setAttr -s 2 ".wl[656].w[33:34]"  0.50010886040149005 0.49989113959850989;
	setAttr -s 2 ".wl[657].w[33:34]"  0.50012205292895595 0.49987794707104405;
	setAttr -s 2 ".wl[658].w[33:34]"  0.50015411640602314 0.49984588359397686;
	setAttr ".wl[659].w[33]"  1;
	setAttr ".wl[660].w[33]"  1;
	setAttr ".wl[661].w[33]"  1;
	setAttr -s 2 ".wl[662].w[33:34]"  0.91895731180253737 0.081042688197462742;
	setAttr ".wl[663].w[33]"  1;
	setAttr ".wl[664].w[33]"  1;
	setAttr ".wl[665].w[33]"  1;
	setAttr ".wl[666].w[33]"  1;
	setAttr ".wl[667].w[35]"  1;
	setAttr ".wl[668].w[35]"  1;
	setAttr ".wl[669].w[35]"  1;
	setAttr ".wl[670].w[35]"  1;
	setAttr ".wl[671].w[35]"  1;
	setAttr ".wl[672].w[35]"  1;
	setAttr ".wl[673].w[35]"  1;
	setAttr ".wl[674].w[35]"  1;
	setAttr ".wl[675].w[35]"  1;
	setAttr ".wl[676].w[35]"  1;
	setAttr ".wl[677].w[35]"  1;
	setAttr ".wl[678].w[35]"  1;
	setAttr ".wl[679].w[35]"  1;
	setAttr ".wl[680].w[35]"  1;
	setAttr ".wl[681].w[35]"  1;
	setAttr ".wl[682].w[35]"  1;
	setAttr ".wl[683].w[35]"  1;
	setAttr ".wl[684].w[35]"  1;
	setAttr ".wl[685].w[0]"  1;
	setAttr ".wl[686].w[0]"  1;
	setAttr ".wl[687].w[0]"  1;
	setAttr ".wl[688].w[0]"  1;
	setAttr ".wl[689].w[0]"  1;
	setAttr -s 4 ".wl[690].w";
	setAttr ".wl[690].w[0]" 0.33493249348981841;
	setAttr ".wl[690].w[29]" 0.32907852505098301;
	setAttr ".wl[690].w[33]" 0.329079009826441;
	setAttr ".wl[690].w[34]" 0.0069099716327576024;
	setAttr -s 4 ".wl[691].w";
	setAttr ".wl[691].w[0]" 0.2277741351225987;
	setAttr ".wl[691].w[29]" 0.38329867915275062;
	setAttr ".wl[691].w[33]" 0.38329951323268197;
	setAttr ".wl[691].w[34]" 0.0056276724919686804;
	setAttr -s 4 ".wl[692].w";
	setAttr ".wl[692].w[0]" 0.39182097998148518;
	setAttr ".wl[692].w[29]" 0.30176931288827308;
	setAttr ".wl[692].w[33]" 0.30176984250691502;
	setAttr ".wl[692].w[34]" 0.0046398646233266755;
	setAttr ".wl[693].w[0]"  1;
	setAttr -s 4 ".wl[694].w";
	setAttr ".wl[694].w[0]" 0.4763596413272162;
	setAttr ".wl[694].w[29]" 0.030518573413841597;
	setAttr ".wl[694].w[33]" 0.48612019683657154;
	setAttr ".wl[694].w[34]" 0.0070015884223706588;
	setAttr ".wl[695].w[0]"  1;
	setAttr -s 4 ".wl[696].w";
	setAttr ".wl[696].w[0]" 0.43896403418319041;
	setAttr ".wl[696].w[29]" 0.12142672878350588;
	setAttr ".wl[696].w[33]" 0.43047741784662552;
	setAttr ".wl[696].w[34]" 0.0091318191866782486;
	setAttr ".wl[697].w[0]"  1;
	setAttr -s 4 ".wl[698].w";
	setAttr ".wl[698].w[0]" 0.36867899182997077;
	setAttr ".wl[698].w[29]" 0.31058839207273797;
	setAttr ".wl[698].w[33]" 0.31058870125023674;
	setAttr ".wl[698].w[34]" 0.010143914847054521;
	setAttr ".wl[699].w[0]"  1;
	setAttr -s 4 ".wl[700].w";
	setAttr ".wl[700].w[0]" 0.8;
	setAttr ".wl[700].w[29]" 0.098749476160034183;
	setAttr ".wl[700].w[33]" 0.098749420063174095;
	setAttr ".wl[700].w[34]" 0.0025011037767916876;
	setAttr -s 4 ".wl[701].w";
	setAttr ".wl[701].w[0]" 0.8;
	setAttr ".wl[701].w[29]" 0.047552671423885425;
	setAttr ".wl[701].w[33]" 0.14987445419629064;
	setAttr ".wl[701].w[34]" 0.0025728743798238999;
	setAttr -s 4 ".wl[702].w";
	setAttr ".wl[702].w[0]" 0.8;
	setAttr ".wl[702].w[29]" 0.014816319572532004;
	setAttr ".wl[702].w[33]" 0.18294579007589082;
	setAttr ".wl[702].w[34]" 0.0022378903515771183;
	setAttr -s 4 ".wl[703].w";
	setAttr ".wl[703].w[0]" 0.8;
	setAttr ".wl[703].w[29]" 0.0027778310818398081;
	setAttr ".wl[703].w[33]" 0.1964275217279754;
	setAttr ".wl[703].w[34]" 0.00079464719018473851;
	setAttr -s 4 ".wl[704].w";
	setAttr ".wl[704].w[0]" 0.8;
	setAttr ".wl[704].w[29]" 0.0014802461835171777;
	setAttr ".wl[704].w[33]" 0.19797358904292459;
	setAttr ".wl[704].w[34]" 0.00054616477355819994;
	setAttr -s 4 ".wl[705].w";
	setAttr ".wl[705].w[0]" 0.8;
	setAttr ".wl[705].w[29]" 0.0014842858155959488;
	setAttr ".wl[705].w[33]" 0.19810290189506843;
	setAttr ".wl[705].w[34]" 0.00041281228933556563;
	setAttr -s 4 ".wl[706].w";
	setAttr ".wl[706].w[0]" 0.8;
	setAttr ".wl[706].w[29]" 0.0032704315575478112;
	setAttr ".wl[706].w[33]" 0.19629574929089436;
	setAttr ".wl[706].w[34]" 0.00043381915155779133;
	setAttr -s 4 ".wl[707].w";
	setAttr ".wl[707].w[0]" 0.8;
	setAttr ".wl[707].w[29]" 0.023920263048553946;
	setAttr ".wl[707].w[33]" 0.17511799755661264;
	setAttr ".wl[707].w[34]" 0.00096173939483337897;
	setAttr -s 4 ".wl[708].w";
	setAttr ".wl[708].w[0]" 0.8;
	setAttr ".wl[708].w[29]" 0.099299602260924422;
	setAttr ".wl[708].w[33]" 0.099299668299670615;
	setAttr ".wl[708].w[34]" 0.0014007294394049092;
	setAttr ".wl[709].w[33]"  1;
	setAttr ".wl[710].w[33]"  1;
	setAttr ".wl[711].w[33]"  1;
	setAttr ".wl[712].w[33]"  1;
	setAttr ".wl[713].w[33]"  1;
	setAttr ".wl[714].w[33]"  1;
	setAttr ".wl[715].w[33]"  1;
	setAttr ".wl[716].w[33]"  1;
	setAttr ".wl[717].w[34]"  1;
	setAttr ".wl[718].w[34]"  1;
	setAttr ".wl[719].w[34]"  1;
	setAttr ".wl[720].w[34]"  1;
	setAttr ".wl[721].w[34]"  1;
	setAttr ".wl[722].w[34]"  1;
	setAttr ".wl[723].w[34]"  1;
	setAttr ".wl[724].w[34]"  1;
	setAttr ".wl[725].w[31]"  1;
	setAttr ".wl[726].w[31]"  1;
	setAttr ".wl[727].w[31]"  1;
	setAttr ".wl[728].w[31]"  1;
	setAttr ".wl[729].w[31]"  1;
	setAttr ".wl[730].w[31]"  1;
	setAttr ".wl[731].w[31]"  1;
	setAttr ".wl[732].w[31]"  1;
	setAttr -s 4 ".wl[733].w";
	setAttr ".wl[733].w[0]" 0.1;
	setAttr ".wl[733].w[29]" 0.88056880834737106;
	setAttr ".wl[733].w[30]" 0.0069789981168973392;
	setAttr ".wl[733].w[33]" 0.01245219353573152;
	setAttr -s 4 ".wl[734].w";
	setAttr ".wl[734].w[0]" 0.1;
	setAttr ".wl[734].w[29]" 0.86236450716775759;
	setAttr ".wl[734].w[30]" 0.0075908835163900545;
	setAttr ".wl[734].w[33]" 0.030044609315852403;
	setAttr -s 4 ".wl[735].w";
	setAttr ".wl[735].w[0]" 0.1;
	setAttr ".wl[735].w[29]" 0.79455627395791451;
	setAttr ".wl[735].w[30]" 0.0062973008891017259;
	setAttr ".wl[735].w[33]" 0.099146425152983733;
	setAttr -s 4 ".wl[736].w";
	setAttr ".wl[736].w[0]" 0.30198805856644251;
	setAttr ".wl[736].w[29]" 0.64261257977802244;
	setAttr ".wl[736].w[30]" 0.0053993616555350551;
	setAttr ".wl[736].w[33]" 0.05;
	setAttr -s 4 ".wl[737].w";
	setAttr ".wl[737].w[0]" 0.4383240461377047;
	setAttr ".wl[737].w[29]" 0.51903765365145393;
	setAttr ".wl[737].w[30]" 0.0021944982910451004;
	setAttr ".wl[737].w[33]" 0.04044380191979622;
	setAttr -s 4 ".wl[738].w";
	setAttr ".wl[738].w[0]" 0.1;
	setAttr ".wl[738].w[29]" 0.88344106924911925;
	setAttr ".wl[738].w[30]" 0.0031665218463972334;
	setAttr ".wl[738].w[33]" 0.013392408904483556;
	setAttr -s 4 ".wl[739].w";
	setAttr ".wl[739].w[0]" 0.1;
	setAttr ".wl[739].w[29]" 0.88945547479786968;
	setAttr ".wl[739].w[30]" 0.0037606305376374645;
	setAttr ".wl[739].w[33]" 0.0067838946644929654;
	setAttr -s 4 ".wl[740].w";
	setAttr ".wl[740].w[0]" 0.1;
	setAttr ".wl[740].w[29]" 0.88740717792179902;
	setAttr ".wl[740].w[30]" 0.0052892967616631073;
	setAttr ".wl[740].w[33]" 0.0073035253165378436;
	setAttr ".wl[741].w[31]"  1;
	setAttr ".wl[742].w[30]"  1;
	setAttr ".wl[743].w[30]"  1;
	setAttr ".wl[744].w[30]"  1;
	setAttr ".wl[745].w[30]"  1;
	setAttr ".wl[746].w[30]"  1;
	setAttr ".wl[747].w[30]"  1;
	setAttr ".wl[748].w[30]"  1;
	setAttr ".wl[749].w[30]"  1;
	setAttr -s 2 ".wl[750].w[29:30]"  0.49996892526677372 0.50003107473322628;
	setAttr -s 2 ".wl[751].w[29:30]"  0.49965412868148001 0.50034587131852004;
	setAttr -s 2 ".wl[752].w[29:30]"  0.49996892526978048 0.50003107473021946;
	setAttr -s 2 ".wl[753].w[29:30]"  0.50015427497225884 0.49984572502774127;
	setAttr -s 2 ".wl[754].w[29:30]"  0.50012220686699194 0.49987779313300801;
	setAttr -s 2 ".wl[755].w[29:30]"  0.50010901177856193 0.49989098822143807;
	setAttr -s 2 ".wl[756].w[29:30]"  0.50012220686999886 0.49987779313000119;
	setAttr -s 2 ".wl[757].w[29:30]"  0.50015427495596076 0.49984572504403924;
	setAttr ".wl[758].w[29]"  1;
	setAttr ".wl[759].w[29]"  1;
	setAttr ".wl[760].w[29]"  1;
	setAttr ".wl[761].w[29]"  1;
	setAttr ".wl[762].w[29]"  1;
	setAttr ".wl[763].w[29]"  1;
	setAttr ".wl[764].w[29]"  1;
	setAttr ".wl[765].w[29]"  1;
	setAttr ".wl[766].w[31]"  1;
	setAttr ".wl[767].w[31]"  1;
	setAttr ".wl[768].w[31]"  1;
	setAttr ".wl[769].w[31]"  1;
	setAttr ".wl[770].w[31]"  1;
	setAttr ".wl[771].w[31]"  1;
	setAttr ".wl[772].w[31]"  1;
	setAttr ".wl[773].w[31]"  1;
	setAttr ".wl[774].w[31]"  1;
	setAttr ".wl[775].w[31]"  1;
	setAttr ".wl[776].w[31]"  1;
	setAttr ".wl[777].w[31]"  1;
	setAttr ".wl[778].w[31]"  1;
	setAttr ".wl[779].w[31]"  1;
	setAttr ".wl[780].w[31]"  1;
	setAttr ".wl[781].w[31]"  1;
	setAttr ".wl[782].w[31]"  1;
	setAttr ".wl[783].w[31]"  1;
	setAttr ".wl[784].w[0]"  1;
	setAttr ".wl[785].w[0]"  1;
	setAttr ".wl[786].w[0]"  1;
	setAttr ".wl[787].w[0]"  1;
	setAttr ".wl[788].w[0]"  1;
	setAttr -s 4 ".wl[789].w";
	setAttr ".wl[789].w[0]" 0.4763596413272162;
	setAttr ".wl[789].w[29]" 0.48612019683657154;
	setAttr ".wl[789].w[30]" 0.0070015884223706588;
	setAttr ".wl[789].w[33]" 0.030518573413841597;
	setAttr ".wl[790].w[0]"  1;
	setAttr -s 4 ".wl[791].w";
	setAttr ".wl[791].w[0]" 0.43896403418319041;
	setAttr ".wl[791].w[29]" 0.43047741784662552;
	setAttr ".wl[791].w[30]" 0.0091318191866782486;
	setAttr ".wl[791].w[33]" 0.12142672878350588;
	setAttr ".wl[792].w[0]"  1;
	setAttr -s 4 ".wl[793].w";
	setAttr ".wl[793].w[0]" 0.8;
	setAttr ".wl[793].w[29]" 0.14987445419629064;
	setAttr ".wl[793].w[30]" 0.0025728743798238999;
	setAttr ".wl[793].w[33]" 0.047552671423885425;
	setAttr -s 4 ".wl[794].w";
	setAttr ".wl[794].w[0]" 0.8;
	setAttr ".wl[794].w[29]" 0.18294579007589082;
	setAttr ".wl[794].w[30]" 0.0022378903515771183;
	setAttr ".wl[794].w[33]" 0.014816319572532004;
	setAttr -s 4 ".wl[795].w";
	setAttr ".wl[795].w[0]" 0.8;
	setAttr ".wl[795].w[29]" 0.1964275217279754;
	setAttr ".wl[795].w[30]" 0.00079464719018473851;
	setAttr ".wl[795].w[33]" 0.0027778310818398081;
	setAttr -s 4 ".wl[796].w";
	setAttr ".wl[796].w[0]" 0.8;
	setAttr ".wl[796].w[29]" 0.19797358904292459;
	setAttr ".wl[796].w[30]" 0.00054616477355819994;
	setAttr ".wl[796].w[33]" 0.0014802461835171777;
	setAttr -s 4 ".wl[797].w";
	setAttr ".wl[797].w[0]" 0.8;
	setAttr ".wl[797].w[29]" 0.19810290189506843;
	setAttr ".wl[797].w[30]" 0.00041281228933556563;
	setAttr ".wl[797].w[33]" 0.0014842858155959488;
	setAttr -s 4 ".wl[798].w";
	setAttr ".wl[798].w[0]" 0.8;
	setAttr ".wl[798].w[29]" 0.19629574929089436;
	setAttr ".wl[798].w[30]" 0.00043381915155779133;
	setAttr ".wl[798].w[33]" 0.0032704315575478112;
	setAttr -s 4 ".wl[799].w";
	setAttr ".wl[799].w[0]" 0.8;
	setAttr ".wl[799].w[29]" 0.17511799755661264;
	setAttr ".wl[799].w[30]" 0.00096173939483337897;
	setAttr ".wl[799].w[33]" 0.023920263048553946;
	setAttr ".wl[800].w[29]"  1;
	setAttr ".wl[801].w[29]"  1;
	setAttr ".wl[802].w[29]"  1;
	setAttr ".wl[803].w[29]"  1;
	setAttr ".wl[804].w[29]"  1;
	setAttr ".wl[805].w[29]"  1;
	setAttr ".wl[806].w[29]"  1;
	setAttr ".wl[807].w[29]"  1;
	setAttr ".wl[808].w[30]"  1;
	setAttr ".wl[809].w[30]"  1;
	setAttr ".wl[810].w[30]"  1;
	setAttr ".wl[811].w[30]"  1;
	setAttr ".wl[812].w[30]"  1;
	setAttr ".wl[813].w[30]"  1;
	setAttr ".wl[814].w[30]"  1;
	setAttr ".wl[815].w[30]"  1;
	setAttr ".wl[816].w[1]"  1;
	setAttr ".wl[817].w[1]"  1;
	setAttr ".wl[818].w[1]"  1;
	setAttr ".wl[819].w[1]"  1;
	setAttr ".wl[820].w[1]"  1;
	setAttr ".wl[821].w[1]"  1;
	setAttr ".wl[822].w[1]"  1;
	setAttr ".wl[823].w[1]"  1;
	setAttr ".wl[824].w[1]"  1;
	setAttr ".wl[825].w[1]"  1;
	setAttr ".wl[826].w[1]"  1;
	setAttr ".wl[827].w[1]"  1;
	setAttr ".wl[828].w[1]"  1;
	setAttr ".wl[829].w[1]"  1;
	setAttr ".wl[830].w[1]"  1;
	setAttr ".wl[831].w[1]"  1;
	setAttr ".wl[832].w[1]"  1;
	setAttr ".wl[833].w[1]"  1;
	setAttr ".wl[834].w[1]"  1;
	setAttr ".wl[835].w[1]"  1;
	setAttr ".wl[836].w[1]"  1;
	setAttr ".wl[837].w[1]"  1;
	setAttr ".wl[838].w[1]"  1;
	setAttr ".wl[839].w[1]"  1;
	setAttr ".wl[840].w[1]"  1;
	setAttr ".wl[841].w[1]"  1;
	setAttr ".wl[842].w[1]"  1;
	setAttr ".wl[843].w[1]"  1;
	setAttr ".wl[844].w[1]"  1;
	setAttr ".wl[845].w[1]"  1;
	setAttr ".wl[846].w[1]"  1;
	setAttr ".wl[847].w[1]"  1;
	setAttr ".wl[848].w[1]"  1;
	setAttr ".wl[849].w[1]"  1;
	setAttr ".wl[850].w[1]"  1;
	setAttr ".wl[851].w[1]"  1;
	setAttr ".wl[852].w[1]"  1;
	setAttr ".wl[853].w[1]"  1;
	setAttr ".wl[854].w[1]"  1;
	setAttr ".wl[855].w[1]"  1;
	setAttr ".wl[856].w[1]"  1;
	setAttr ".wl[857].w[1]"  1;
	setAttr ".wl[858].w[1]"  1;
	setAttr ".wl[859].w[1]"  1;
	setAttr ".wl[860].w[1]"  1;
	setAttr ".wl[861].w[1]"  1;
	setAttr ".wl[862].w[1]"  1;
	setAttr ".wl[863].w[1]"  1;
	setAttr ".wl[864].w[1]"  1;
	setAttr ".wl[865].w[1]"  1;
	setAttr ".wl[866].w[1]"  1;
	setAttr ".wl[867].w[1]"  1;
	setAttr ".wl[868].w[1]"  1;
	setAttr ".wl[869].w[1]"  1;
	setAttr ".wl[870].w[21]"  1;
	setAttr ".wl[871].w[21]"  1;
	setAttr ".wl[872].w[21]"  1;
	setAttr ".wl[873].w[21]"  1;
	setAttr ".wl[874].w[21]"  1;
	setAttr ".wl[875].w[21]"  1;
	setAttr ".wl[876].w[21]"  1;
	setAttr ".wl[877].w[21]"  1;
	setAttr ".wl[878].w[1]"  1;
	setAttr ".wl[879].w[1]"  1;
	setAttr ".wl[880].w[1]"  1;
	setAttr ".wl[881].w[1]"  1;
	setAttr ".wl[882].w[1]"  1;
	setAttr ".wl[883].w[1]"  1;
	setAttr ".wl[884].w[1]"  1;
	setAttr ".wl[885].w[1]"  1;
	setAttr ".wl[886].w[1]"  1;
	setAttr ".wl[887].w[1]"  1;
	setAttr ".wl[888].w[1]"  1;
	setAttr ".wl[889].w[1]"  1;
	setAttr ".wl[890].w[1]"  1;
	setAttr ".wl[891].w[1]"  1;
	setAttr ".wl[892].w[1]"  1;
	setAttr ".wl[893].w[1]"  1;
	setAttr ".wl[894].w[1]"  1;
	setAttr ".wl[895].w[1]"  1;
	setAttr ".wl[896].w[1]"  1;
	setAttr ".wl[897].w[1]"  1;
	setAttr ".wl[898].w[1]"  1;
	setAttr ".wl[899].w[1]"  1;
	setAttr ".wl[900].w[1]"  1;
	setAttr ".wl[901].w[1]"  1;
	setAttr ".wl[902].w[1]"  1;
	setAttr ".wl[903].w[1]"  1;
	setAttr ".wl[904].w[1]"  1;
	setAttr ".wl[905].w[1]"  1;
	setAttr ".wl[906].w[1]"  1;
	setAttr ".wl[907].w[1]"  1;
	setAttr ".wl[908].w[1]"  1;
	setAttr ".wl[909].w[1]"  1;
	setAttr ".wl[910].w[1]"  1;
	setAttr ".wl[911].w[21]"  1;
	setAttr ".wl[912].w[21]"  1;
	setAttr ".wl[913].w[21]"  1;
	setAttr ".wl[914].w[21]"  1;
	setAttr ".wl[915].w[1]"  1;
	setAttr ".wl[916].w[1]"  1;
	setAttr ".wl[917].w[1]"  1;
	setAttr ".wl[918].w[1]"  1;
	setAttr ".wl[919].w[1]"  1;
	setAttr ".wl[920].w[1]"  1;
	setAttr ".wl[921].w[1]"  1;
	setAttr ".wl[922].w[1]"  1;
	setAttr ".wl[923].w[1]"  1;
	setAttr ".wl[924].w[1]"  1;
	setAttr ".wl[925].w[1]"  1;
	setAttr ".wl[926].w[1]"  1;
	setAttr ".wl[927].w[1]"  1;
	setAttr ".wl[928].w[1]"  1;
	setAttr ".wl[929].w[13]"  1;
	setAttr ".wl[930].w[13]"  1;
	setAttr ".wl[931].w[13]"  1;
	setAttr ".wl[932].w[13]"  1;
	setAttr ".wl[933].w[13]"  1;
	setAttr ".wl[934].w[13]"  1;
	setAttr ".wl[935].w[13]"  1;
	setAttr ".wl[936].w[13]"  1;
	setAttr ".wl[937].w[13]"  1;
	setAttr ".wl[938].w[13]"  1;
	setAttr ".wl[939].w[13]"  1;
	setAttr ".wl[940].w[13]"  1;
	setAttr ".wl[941].w[13]"  1;
	setAttr ".wl[942].w[13]"  1;
	setAttr ".wl[943].w[13]"  1;
	setAttr ".wl[944].w[13]"  1;
	setAttr -s 4 ".wl[945].w";
	setAttr ".wl[945].w[2]" 0.003268190221247645;
	setAttr ".wl[945].w[12]" 0.48055151969491422;
	setAttr ".wl[945].w[13]" 0.51382338188420307;
	setAttr ".wl[945].w[14]" 0.0023569081996350819;
	setAttr -s 4 ".wl[946].w";
	setAttr ".wl[946].w[2]" 0.0036405656503587193;
	setAttr ".wl[946].w[12]" 0.48119443756354324;
	setAttr ".wl[946].w[13]" 0.51253563946061864;
	setAttr ".wl[946].w[14]" 0.0026293573254794035;
	setAttr -s 4 ".wl[947].w";
	setAttr ".wl[947].w[2]" 0.0040286736765088038;
	setAttr ".wl[947].w[12]" 0.48171903218679057;
	setAttr ".wl[947].w[13]" 0.51133834276604018;
	setAttr ".wl[947].w[14]" 0.0029139513706604352;
	setAttr -s 4 ".wl[948].w";
	setAttr ".wl[948].w[2]" 0.0041939027775476029;
	setAttr ".wl[948].w[12]" 0.48190570036036845;
	setAttr ".wl[948].w[13]" 0.51086509661645463;
	setAttr ".wl[948].w[14]" 0.0030353002456293809;
	setAttr -s 4 ".wl[949].w";
	setAttr ".wl[949].w[2]" 0.0040286757979662953;
	setAttr ".wl[949].w[12]" 0.48171903116071041;
	setAttr ".wl[949].w[13]" 0.51133834167686965;
	setAttr ".wl[949].w[14]" 0.0029139513644536063;
	setAttr -s 4 ".wl[950].w";
	setAttr ".wl[950].w[2]" 0.0036405700088726987;
	setAttr ".wl[950].w[12]" 0.48119443874023826;
	setAttr ".wl[950].w[13]" 0.51253563273654978;
	setAttr ".wl[950].w[14]" 0.0026293585143391633;
	setAttr -s 4 ".wl[951].w";
	setAttr ".wl[951].w[2]" 0.0032681925135905777;
	setAttr ".wl[951].w[12]" 0.48055151993191525;
	setAttr ".wl[951].w[13]" 0.51382337895483221;
	setAttr ".wl[951].w[14]" 0.0023569085996619429;
	setAttr -s 4 ".wl[952].w";
	setAttr ".wl[952].w[2]" 0.0031186984497947605;
	setAttr ".wl[952].w[12]" 0.48024583573467067;
	setAttr ".wl[952].w[13]" 0.51438775949924176;
	setAttr ".wl[952].w[14]" 0.0022477063162927627;
	setAttr ".wl[953].w[12]"  1;
	setAttr ".wl[954].w[12]"  1;
	setAttr ".wl[955].w[12]"  1;
	setAttr ".wl[956].w[12]"  1;
	setAttr ".wl[957].w[12]"  1;
	setAttr ".wl[958].w[12]"  1;
	setAttr ".wl[959].w[12]"  1;
	setAttr ".wl[960].w[12]"  1;
	setAttr ".wl[961].w[14]"  1;
	setAttr ".wl[962].w[14]"  1;
	setAttr ".wl[963].w[14]"  1;
	setAttr ".wl[964].w[14]"  1;
	setAttr ".wl[965].w[14]"  1;
	setAttr ".wl[966].w[14]"  1;
	setAttr ".wl[967].w[14]"  1;
	setAttr ".wl[968].w[14]"  1;
	setAttr -s 2 ".wl[969].w[13:14]"  0.50009889369275573 0.49990110630724427;
	setAttr -s 2 ".wl[970].w[13:14]"  0.50009266432033139 0.49990733567966866;
	setAttr -s 2 ".wl[971].w[13:14]"  0.50008717326967533 0.49991282673032461;
	setAttr -s 2 ".wl[972].w[13:14]"  0.50008508475233271 0.49991491524766729;
	setAttr -s 2 ".wl[973].w[13:14]"  0.50008717326183449 0.49991282673816551;
	setAttr -s 2 ".wl[974].w[13:14]"  0.50009266430780164 0.49990733569219836;
	setAttr -s 2 ".wl[975].w[13:14]"  0.50009889367257343 0.49990110632742663;
	setAttr -s 2 ".wl[976].w[13:14]"  0.50010172620416016 0.49989827379583984;
	setAttr ".wl[977].w[14]"  1;
	setAttr ".wl[978].w[14]"  1;
	setAttr ".wl[979].w[14]"  1;
	setAttr ".wl[980].w[14]"  1;
	setAttr ".wl[981].w[14]"  1;
	setAttr ".wl[982].w[14]"  1;
	setAttr ".wl[983].w[14]"  1;
	setAttr ".wl[984].w[14]"  1;
	setAttr ".wl[985].w[14]"  1;
	setAttr ".wl[986].w[14]"  1;
	setAttr ".wl[987].w[14]"  1;
	setAttr ".wl[988].w[14]"  1;
	setAttr ".wl[989].w[14]"  1;
	setAttr ".wl[990].w[14]"  1;
	setAttr ".wl[991].w[14]"  1;
	setAttr ".wl[992].w[14]"  1;
	setAttr ".wl[993].w[14]"  1;
	setAttr ".wl[994].w[14]"  1;
	setAttr ".wl[995].w[14]"  1;
	setAttr ".wl[996].w[14]"  1;
	setAttr ".wl[997].w[14]"  1;
	setAttr ".wl[998].w[14]"  1;
	setAttr ".wl[999].w[14]"  1;
	setAttr ".wl[1000].w[14]"  1;
	setAttr ".wl[1001].w[14]"  1;
	setAttr ".wl[1002].w[14]"  1;
	setAttr ".wl[1003].w[14]"  1;
	setAttr ".wl[1004].w[14]"  1;
	setAttr ".wl[1005].w[14]"  1;
	setAttr ".wl[1006].w[14]"  1;
	setAttr ".wl[1007].w[14]"  1;
	setAttr ".wl[1008].w[14]"  1;
	setAttr ".wl[1009].w[14]"  1;
	setAttr ".wl[1010].w[14]"  1;
	setAttr ".wl[1011].w[14]"  1;
	setAttr ".wl[1012].w[14]"  1;
	setAttr ".wl[1013].w[14]"  1;
	setAttr ".wl[1014].w[14]"  1;
	setAttr ".wl[1015].w[14]"  1;
	setAttr ".wl[1016].w[14]"  1;
	setAttr ".wl[1017].w[15]"  1;
	setAttr ".wl[1018].w[15]"  1;
	setAttr ".wl[1019].w[15]"  1;
	setAttr ".wl[1020].w[15]"  1;
	setAttr ".wl[1021].w[15]"  1;
	setAttr ".wl[1022].w[15]"  1;
	setAttr ".wl[1023].w[15]"  1;
	setAttr ".wl[1024].w[15]"  1;
	setAttr ".wl[1025].w[15]"  1;
	setAttr ".wl[1026].w[15]"  1;
	setAttr ".wl[1027].w[15]"  1;
	setAttr ".wl[1028].w[15]"  1;
	setAttr ".wl[1029].w[15]"  1;
	setAttr ".wl[1030].w[15]"  1;
	setAttr ".wl[1031].w[15]"  1;
	setAttr ".wl[1032].w[15]"  1;
	setAttr ".wl[1033].w[15]"  1;
	setAttr ".wl[1034].w[15]"  1;
	setAttr ".wl[1035].w[15]"  1;
	setAttr ".wl[1036].w[15]"  1;
	setAttr ".wl[1037].w[15]"  1;
	setAttr ".wl[1038].w[15]"  1;
	setAttr ".wl[1039].w[15]"  1;
	setAttr ".wl[1040].w[15]"  1;
	setAttr ".wl[1041].w[16]"  1;
	setAttr ".wl[1042].w[16]"  1;
	setAttr ".wl[1043].w[16]"  1;
	setAttr ".wl[1044].w[16]"  1;
	setAttr ".wl[1045].w[16]"  1;
	setAttr ".wl[1046].w[16]"  1;
	setAttr ".wl[1047].w[16]"  1;
	setAttr ".wl[1048].w[16]"  1;
	setAttr ".wl[1049].w[16]"  1;
	setAttr ".wl[1050].w[16]"  1;
	setAttr ".wl[1051].w[16]"  1;
	setAttr ".wl[1052].w[16]"  1;
	setAttr ".wl[1053].w[16]"  1;
	setAttr -s 4 ".wl[1054].w";
	setAttr ".wl[1054].w[15]" 0.0185906212919155;
	setAttr ".wl[1054].w[16]" 0.48478036422721515;
	setAttr ".wl[1054].w[18]" 0.011848650253654272;
	setAttr ".wl[1054].w[20]" 0.48478036422721515;
	setAttr -s 4 ".wl[1055].w";
	setAttr ".wl[1055].w[15]" 0.01257348163163134;
	setAttr ".wl[1055].w[16]" 0.48856341947136339;
	setAttr ".wl[1055].w[18]" 0.010299679425641873;
	setAttr ".wl[1055].w[20]" 0.48856341947136339;
	setAttr ".wl[1056].w[16]"  1;
	setAttr ".wl[1057].w[16]"  1;
	setAttr ".wl[1058].w[16]"  1;
	setAttr ".wl[1059].w[19]"  1;
	setAttr ".wl[1060].w[19]"  1;
	setAttr ".wl[1061].w[19]"  1;
	setAttr ".wl[1062].w[19]"  1;
	setAttr ".wl[1063].w[20]"  1;
	setAttr ".wl[1064].w[20]"  1;
	setAttr ".wl[1065].w[20]"  1;
	setAttr ".wl[1066].w[20]"  1;
	setAttr ".wl[1067].w[20]"  1;
	setAttr ".wl[1068].w[20]"  1;
	setAttr ".wl[1069].w[20]"  1;
	setAttr ".wl[1070].w[20]"  1;
	setAttr ".wl[1071].w[20]"  1;
	setAttr ".wl[1072].w[20]"  1;
	setAttr -s 4 ".wl[1073].w[16:19]"  0.8 0.010935130209446678 0.0015373590929103724 
		0.1875275106976429;
	setAttr -s 4 ".wl[1074].w";
	setAttr ".wl[1074].w[15]" 0.00043168709575647365;
	setAttr ".wl[1074].w[16]" 0.8;
	setAttr ".wl[1074].w[17]" 0.0027098848568831088;
	setAttr ".wl[1074].w[19]" 0.19685842804736037;
	setAttr -s 4 ".wl[1075].w[16:19]"  0.8 0.093761579762295044 0.0074203012980637844 
		0.098818118939641125;
	setAttr -s 4 ".wl[1076].w[16:19]"  0.8 0.0086365459766557535 0.001159324565538158 
		0.19020412945780604;
	setAttr -s 4 ".wl[1077].w";
	setAttr ".wl[1077].w[16]" 0.8;
	setAttr ".wl[1077].w[17]" 0.0040978948667376013;
	setAttr ".wl[1077].w[18]" 0.19369052750433136;
	setAttr ".wl[1077].w[20]" 0.0022115776289310086;
	setAttr -s 4 ".wl[1078].w";
	setAttr ".wl[1078].w[16]" 0.8;
	setAttr ".wl[1078].w[17]" 0.014598108320511274;
	setAttr ".wl[1078].w[18]" 0.18155100176523237;
	setAttr ".wl[1078].w[20]" 0.0038508899142563092;
	setAttr -s 4 ".wl[1079].w[16:19]"  0.8 0.070677633756622005 0.0053823426700233224 
		0.12394002357335461;
	setAttr -s 4 ".wl[1080].w[16:19]"  0.8 0.12725172356528688 0.065297832733585373 
		0.0074504437011277151;
	setAttr ".wl[1081].w[18]"  1;
	setAttr ".wl[1082].w[18]"  1;
	setAttr ".wl[1083].w[18]"  1;
	setAttr ".wl[1084].w[18]"  1;
	setAttr ".wl[1085].w[16]"  1;
	setAttr -s 4 ".wl[1086].w";
	setAttr ".wl[1086].w[16]" 0.8;
	setAttr ".wl[1086].w[17]" 0.074977528506600805;
	setAttr ".wl[1086].w[18]" 0.11871600907209703;
	setAttr ".wl[1086].w[20]" 0.0063064624213021144;
	setAttr -s 4 ".wl[1087].w";
	setAttr ".wl[1087].w[16]" 0.8;
	setAttr ".wl[1087].w[17]" 0.0030217926247935248;
	setAttr ".wl[1087].w[18]" 0.19467391222541094;
	setAttr ".wl[1087].w[20]" 0.0023042951497954816;
	setAttr ".wl[1088].w[18]"  1;
	setAttr ".wl[1089].w[18]"  1;
	setAttr ".wl[1090].w[19]"  1;
	setAttr ".wl[1091].w[19]"  1;
	setAttr ".wl[1092].w[17]"  1;
	setAttr ".wl[1093].w[17]"  1;
	setAttr ".wl[1094].w[17]"  1;
	setAttr ".wl[1095].w[17]"  1;
	setAttr ".wl[1096].w[17]"  1;
	setAttr ".wl[1097].w[17]"  1;
	setAttr ".wl[1098].w[19]"  1;
	setAttr ".wl[1099].w[19]"  1;
	setAttr ".wl[1100].w[19]"  1;
	setAttr -s 4 ".wl[1101].w[16:19]"  0.60830082034742816 0.03948274867446628 
		0.0013389317884472092 0.35087749918965827;
	setAttr ".wl[1102].w[19]"  1;
	setAttr ".wl[1103].w[19]"  1;
	setAttr ".wl[1104].w[19]"  1;
	setAttr -s 4 ".wl[1105].w";
	setAttr ".wl[1105].w[16]" 0.50176419550206519;
	setAttr ".wl[1105].w[17]" 0.13172990079318456;
	setAttr ".wl[1105].w[18]" 0.36449545409188377;
	setAttr ".wl[1105].w[20]" 0.0020104496128664816;
	setAttr ".wl[1106].w[18]"  1;
	setAttr ".wl[1107].w[18]"  1;
	setAttr ".wl[1108].w[18]"  1;
	setAttr ".wl[1109].w[18]"  1;
	setAttr ".wl[1110].w[18]"  1;
	setAttr ".wl[1111].w[18]"  1;
	setAttr ".wl[1112].w[17]"  1;
	setAttr ".wl[1113].w[17]"  1;
	setAttr ".wl[1114].w[17]"  1;
	setAttr ".wl[1115].w[17]"  1;
	setAttr ".wl[1116].w[17]"  1;
	setAttr ".wl[1117].w[17]"  1;
	setAttr ".wl[1118].w[14]"  1;
	setAttr ".wl[1119].w[14]"  1;
	setAttr ".wl[1120].w[14]"  1;
	setAttr ".wl[1121].w[14]"  1;
	setAttr ".wl[1122].w[14]"  1;
	setAttr ".wl[1123].w[14]"  1;
	setAttr ".wl[1124].w[14]"  1;
	setAttr ".wl[1125].w[14]"  1;
	setAttr ".wl[1126].w[3]"  1;
	setAttr ".wl[1127].w[3]"  1;
	setAttr ".wl[1128].w[3]"  1;
	setAttr ".wl[1129].w[3]"  1;
	setAttr ".wl[1130].w[3]"  1;
	setAttr ".wl[1131].w[3]"  1;
	setAttr ".wl[1132].w[3]"  1;
	setAttr ".wl[1133].w[3]"  1;
	setAttr ".wl[1134].w[3]"  1;
	setAttr ".wl[1135].w[3]"  1;
	setAttr ".wl[1136].w[3]"  1;
	setAttr ".wl[1137].w[3]"  1;
	setAttr ".wl[1138].w[3]"  1;
	setAttr ".wl[1139].w[3]"  1;
	setAttr ".wl[1140].w[3]"  1;
	setAttr ".wl[1141].w[3]"  1;
	setAttr -s 4 ".wl[1142].w";
	setAttr ".wl[1142].w[2]" 0.48055151969491422;
	setAttr ".wl[1142].w[3]" 0.51382338188420307;
	setAttr ".wl[1142].w[4]" 0.0023569081996350819;
	setAttr ".wl[1142].w[12]" 0.003268190221247645;
	setAttr -s 4 ".wl[1143].w";
	setAttr ".wl[1143].w[2]" 0.48119443756354324;
	setAttr ".wl[1143].w[3]" 0.51253563946061864;
	setAttr ".wl[1143].w[4]" 0.0026293573254794035;
	setAttr ".wl[1143].w[12]" 0.0036405656503587193;
	setAttr -s 4 ".wl[1144].w";
	setAttr ".wl[1144].w[2]" 0.48171903218679057;
	setAttr ".wl[1144].w[3]" 0.51133834276604018;
	setAttr ".wl[1144].w[4]" 0.0029139513706604352;
	setAttr ".wl[1144].w[12]" 0.0040286736765088038;
	setAttr -s 4 ".wl[1145].w";
	setAttr ".wl[1145].w[2]" 0.48190570036036845;
	setAttr ".wl[1145].w[3]" 0.51086509661645463;
	setAttr ".wl[1145].w[4]" 0.0030353002456293809;
	setAttr ".wl[1145].w[12]" 0.0041939027775476029;
	setAttr -s 4 ".wl[1146].w";
	setAttr ".wl[1146].w[2]" 0.48171903116071041;
	setAttr ".wl[1146].w[3]" 0.51133834167686965;
	setAttr ".wl[1146].w[4]" 0.0029139513644536063;
	setAttr ".wl[1146].w[12]" 0.0040286757979662953;
	setAttr -s 4 ".wl[1147].w";
	setAttr ".wl[1147].w[2]" 0.48119443874023826;
	setAttr ".wl[1147].w[3]" 0.51253563273654978;
	setAttr ".wl[1147].w[4]" 0.0026293585143391633;
	setAttr ".wl[1147].w[12]" 0.0036405700088726987;
	setAttr -s 4 ".wl[1148].w";
	setAttr ".wl[1148].w[2]" 0.48055151993191525;
	setAttr ".wl[1148].w[3]" 0.51382337895483221;
	setAttr ".wl[1148].w[4]" 0.0023569085996619429;
	setAttr ".wl[1148].w[12]" 0.0032681925135905777;
	setAttr -s 4 ".wl[1149].w";
	setAttr ".wl[1149].w[2]" 0.48024583573467067;
	setAttr ".wl[1149].w[3]" 0.51438775949924176;
	setAttr ".wl[1149].w[4]" 0.0022477063162927627;
	setAttr ".wl[1149].w[12]" 0.0031186984497947605;
	setAttr ".wl[1150].w[2]"  1;
	setAttr ".wl[1151].w[2]"  1;
	setAttr ".wl[1152].w[2]"  1;
	setAttr ".wl[1153].w[2]"  1;
	setAttr ".wl[1154].w[2]"  1;
	setAttr ".wl[1155].w[2]"  1;
	setAttr ".wl[1156].w[2]"  1;
	setAttr ".wl[1157].w[2]"  1;
	setAttr ".wl[1158].w[4]"  1;
	setAttr ".wl[1159].w[4]"  1;
	setAttr ".wl[1160].w[4]"  1;
	setAttr ".wl[1161].w[4]"  1;
	setAttr ".wl[1162].w[4]"  1;
	setAttr ".wl[1163].w[4]"  1;
	setAttr ".wl[1164].w[4]"  1;
	setAttr ".wl[1165].w[4]"  1;
	setAttr -s 2 ".wl[1166].w[3:4]"  0.50009889369275573 0.49990110630724427;
	setAttr -s 2 ".wl[1167].w[3:4]"  0.50009266432033139 0.49990733567966866;
	setAttr -s 2 ".wl[1168].w[3:4]"  0.50008717326967533 0.49991282673032461;
	setAttr -s 2 ".wl[1169].w[3:4]"  0.50008508475233271 0.49991491524766729;
	setAttr -s 2 ".wl[1170].w[3:4]"  0.50008717326183449 0.49991282673816551;
	setAttr -s 2 ".wl[1171].w[3:4]"  0.50009266430780164 0.49990733569219836;
	setAttr -s 2 ".wl[1172].w[3:4]"  0.50009889367257343 0.49990110632742663;
	setAttr -s 2 ".wl[1173].w[3:4]"  0.50010172620416016 0.49989827379583984;
	setAttr ".wl[1174].w[4]"  1;
	setAttr ".wl[1175].w[4]"  1;
	setAttr ".wl[1176].w[4]"  1;
	setAttr ".wl[1177].w[4]"  1;
	setAttr ".wl[1178].w[4]"  1;
	setAttr ".wl[1179].w[4]"  1;
	setAttr ".wl[1180].w[4]"  1;
	setAttr ".wl[1181].w[4]"  1;
	setAttr ".wl[1182].w[4]"  1;
	setAttr ".wl[1183].w[4]"  1;
	setAttr ".wl[1184].w[4]"  1;
	setAttr ".wl[1185].w[4]"  1;
	setAttr ".wl[1186].w[4]"  1;
	setAttr ".wl[1187].w[4]"  1;
	setAttr ".wl[1188].w[4]"  1;
	setAttr ".wl[1189].w[4]"  1;
	setAttr ".wl[1190].w[4]"  1;
	setAttr ".wl[1191].w[4]"  1;
	setAttr ".wl[1192].w[4]"  1;
	setAttr ".wl[1193].w[4]"  1;
	setAttr ".wl[1194].w[4]"  1;
	setAttr ".wl[1195].w[4]"  1;
	setAttr ".wl[1196].w[4]"  1;
	setAttr ".wl[1197].w[4]"  1;
	setAttr ".wl[1198].w[4]"  1;
	setAttr ".wl[1199].w[4]"  1;
	setAttr ".wl[1200].w[4]"  1;
	setAttr ".wl[1201].w[4]"  1;
	setAttr ".wl[1202].w[4]"  1;
	setAttr ".wl[1203].w[4]"  1;
	setAttr ".wl[1204].w[4]"  1;
	setAttr ".wl[1205].w[4]"  1;
	setAttr ".wl[1206].w[4]"  1;
	setAttr ".wl[1207].w[4]"  1;
	setAttr ".wl[1208].w[4]"  1;
	setAttr ".wl[1209].w[4]"  1;
	setAttr ".wl[1210].w[4]"  1;
	setAttr ".wl[1211].w[4]"  1;
	setAttr ".wl[1212].w[4]"  1;
	setAttr ".wl[1213].w[4]"  1;
	setAttr ".wl[1214].w[5]"  1;
	setAttr ".wl[1215].w[5]"  1;
	setAttr ".wl[1216].w[5]"  1;
	setAttr ".wl[1217].w[5]"  1;
	setAttr ".wl[1218].w[5]"  1;
	setAttr ".wl[1219].w[5]"  1;
	setAttr ".wl[1220].w[5]"  1;
	setAttr ".wl[1221].w[5]"  1;
	setAttr ".wl[1222].w[5]"  1;
	setAttr ".wl[1223].w[5]"  1;
	setAttr ".wl[1224].w[5]"  1;
	setAttr ".wl[1225].w[5]"  1;
	setAttr ".wl[1226].w[5]"  1;
	setAttr ".wl[1227].w[5]"  1;
	setAttr ".wl[1228].w[5]"  1;
	setAttr ".wl[1229].w[5]"  1;
	setAttr ".wl[1230].w[5]"  1;
	setAttr ".wl[1231].w[5]"  1;
	setAttr ".wl[1232].w[5]"  1;
	setAttr ".wl[1233].w[5]"  1;
	setAttr ".wl[1234].w[5]"  1;
	setAttr ".wl[1235].w[5]"  1;
	setAttr ".wl[1236].w[5]"  1;
	setAttr ".wl[1237].w[5]"  1;
	setAttr ".wl[1238].w[6]"  1;
	setAttr ".wl[1239].w[6]"  1;
	setAttr ".wl[1240].w[6]"  1;
	setAttr ".wl[1241].w[6]"  1;
	setAttr ".wl[1242].w[6]"  1;
	setAttr ".wl[1243].w[6]"  1;
	setAttr ".wl[1244].w[6]"  1;
	setAttr ".wl[1245].w[6]"  1;
	setAttr ".wl[1246].w[6]"  1;
	setAttr ".wl[1247].w[6]"  1;
	setAttr ".wl[1248].w[6]"  1;
	setAttr ".wl[1249].w[6]"  1;
	setAttr ".wl[1250].w[6]"  1;
	setAttr -s 4 ".wl[1251].w";
	setAttr ".wl[1251].w[5]" 0.0185906212919155;
	setAttr ".wl[1251].w[6]" 0.48478036422721515;
	setAttr ".wl[1251].w[8]" 0.011848650253654272;
	setAttr ".wl[1251].w[10]" 0.48478036422721515;
	setAttr -s 4 ".wl[1252].w";
	setAttr ".wl[1252].w[5]" 0.01257348163163134;
	setAttr ".wl[1252].w[6]" 0.48856341947136339;
	setAttr ".wl[1252].w[8]" 0.010299679425641873;
	setAttr ".wl[1252].w[10]" 0.48856341947136339;
	setAttr ".wl[1253].w[6]"  1;
	setAttr ".wl[1254].w[6]"  1;
	setAttr ".wl[1255].w[6]"  1;
	setAttr ".wl[1256].w[9]"  1;
	setAttr ".wl[1257].w[9]"  1;
	setAttr ".wl[1258].w[9]"  1;
	setAttr ".wl[1259].w[9]"  1;
	setAttr ".wl[1260].w[10]"  1;
	setAttr ".wl[1261].w[10]"  1;
	setAttr ".wl[1262].w[10]"  1;
	setAttr ".wl[1263].w[10]"  1;
	setAttr ".wl[1264].w[10]"  1;
	setAttr ".wl[1265].w[10]"  1;
	setAttr ".wl[1266].w[10]"  1;
	setAttr ".wl[1267].w[10]"  1;
	setAttr ".wl[1268].w[10]"  1;
	setAttr ".wl[1269].w[10]"  1;
	setAttr -s 4 ".wl[1270].w[6:9]"  0.8 0.010935130209446678 0.0015373590929103724 
		0.1875275106976429;
	setAttr -s 4 ".wl[1271].w";
	setAttr ".wl[1271].w[5]" 0.00043168709575647365;
	setAttr ".wl[1271].w[6]" 0.8;
	setAttr ".wl[1271].w[7]" 0.0027098848568831088;
	setAttr ".wl[1271].w[9]" 0.19685842804736037;
	setAttr -s 4 ".wl[1272].w[6:9]"  0.8 0.093761579762295044 0.0074203012980637844 
		0.098818118939641125;
	setAttr -s 4 ".wl[1273].w[6:9]"  0.8 0.0086365459766557535 0.001159324565538158 
		0.19020412945780604;
	setAttr -s 4 ".wl[1274].w";
	setAttr ".wl[1274].w[6]" 0.8;
	setAttr ".wl[1274].w[7]" 0.0040978948667376013;
	setAttr ".wl[1274].w[8]" 0.19369052750433136;
	setAttr ".wl[1274].w[10]" 0.0022115776289310086;
	setAttr -s 4 ".wl[1275].w";
	setAttr ".wl[1275].w[6]" 0.8;
	setAttr ".wl[1275].w[7]" 0.014598108320511274;
	setAttr ".wl[1275].w[8]" 0.18155100176523237;
	setAttr ".wl[1275].w[10]" 0.0038508899142563092;
	setAttr -s 4 ".wl[1276].w[6:9]"  0.8 0.070677633756622005 0.0053823426700233224 
		0.12394002357335461;
	setAttr -s 4 ".wl[1277].w[6:9]"  0.8 0.12725172356528688 0.065297832733585373 
		0.0074504437011277151;
	setAttr ".wl[1278].w[8]"  1;
	setAttr ".wl[1279].w[8]"  1;
	setAttr ".wl[1280].w[8]"  1;
	setAttr ".wl[1281].w[8]"  1;
	setAttr ".wl[1282].w[6]"  1;
	setAttr -s 4 ".wl[1283].w";
	setAttr ".wl[1283].w[6]" 0.8;
	setAttr ".wl[1283].w[7]" 0.074977528506600805;
	setAttr ".wl[1283].w[8]" 0.11871600907209703;
	setAttr ".wl[1283].w[10]" 0.0063064624213021144;
	setAttr -s 4 ".wl[1284].w";
	setAttr ".wl[1284].w[6]" 0.8;
	setAttr ".wl[1284].w[7]" 0.0030217926247935248;
	setAttr ".wl[1284].w[8]" 0.19467391222541094;
	setAttr ".wl[1284].w[10]" 0.0023042951497954816;
	setAttr ".wl[1285].w[8]"  1;
	setAttr ".wl[1286].w[8]"  1;
	setAttr ".wl[1287].w[9]"  1;
	setAttr ".wl[1288].w[9]"  1;
	setAttr ".wl[1289].w[7]"  1;
	setAttr ".wl[1290].w[7]"  1;
	setAttr ".wl[1291].w[7]"  1;
	setAttr ".wl[1292].w[7]"  1;
	setAttr ".wl[1293].w[7]"  1;
	setAttr ".wl[1294].w[7]"  1;
	setAttr ".wl[1295].w[9]"  1;
	setAttr ".wl[1296].w[9]"  1;
	setAttr ".wl[1297].w[9]"  1;
	setAttr -s 4 ".wl[1298].w[6:9]"  0.60830082034742816 0.03948274867446628 
		0.0013389317884472092 0.35087749918965827;
	setAttr ".wl[1299].w[9]"  1;
	setAttr ".wl[1300].w[9]"  1;
	setAttr ".wl[1301].w[9]"  1;
	setAttr -s 4 ".wl[1302].w";
	setAttr ".wl[1302].w[6]" 0.50176419550206519;
	setAttr ".wl[1302].w[7]" 0.13172990079318456;
	setAttr ".wl[1302].w[8]" 0.36449545409188377;
	setAttr ".wl[1302].w[10]" 0.0020104496128664816;
	setAttr ".wl[1303].w[8]"  1;
	setAttr ".wl[1304].w[8]"  1;
	setAttr ".wl[1305].w[8]"  1;
	setAttr ".wl[1306].w[8]"  1;
	setAttr ".wl[1307].w[8]"  1;
	setAttr ".wl[1308].w[8]"  1;
	setAttr ".wl[1309].w[7]"  1;
	setAttr ".wl[1310].w[7]"  1;
	setAttr ".wl[1311].w[7]"  1;
	setAttr ".wl[1312].w[7]"  1;
	setAttr ".wl[1313].w[7]"  1;
	setAttr ".wl[1314].w[7]"  1;
	setAttr ".wl[1315].w[4]"  1;
	setAttr ".wl[1316].w[4]"  1;
	setAttr ".wl[1317].w[4]"  1;
	setAttr ".wl[1318].w[4]"  1;
	setAttr ".wl[1319].w[4]"  1;
	setAttr ".wl[1320].w[4]"  1;
	setAttr ".wl[1321].w[4]"  1;
	setAttr ".wl[1322].w[4]"  1;
	setAttr -s 2 ".wl[1323].w";
	setAttr ".wl[1323].w[6]" 0.99986524728302084;
	setAttr ".wl[1323].w[16]" 0.00013475271697916446;
	setAttr -s 2 ".wl[1324].w";
	setAttr ".wl[1324].w[6]" 0.99995003811206107;
	setAttr ".wl[1324].w[16]" 4.9961887938877575e-005;
	setAttr -s 2 ".wl[1325].w";
	setAttr ".wl[1325].w[6]" 0.99982363211138825;
	setAttr ".wl[1325].w[16]" 0.00017636788861176477;
	setAttr -s 2 ".wl[1326].w";
	setAttr ".wl[1326].w[6]" 0.99987386121558952;
	setAttr ".wl[1326].w[16]" 0.00012613878441048498;
	setAttr -s 2 ".wl[1327].w";
	setAttr ".wl[1327].w[6]" 0.99974165045463348;
	setAttr ".wl[1327].w[16]" 0.00025834954536655693;
	setAttr -s 2 ".wl[1328].w";
	setAttr ".wl[1328].w[6]" 0.99994788785116817;
	setAttr ".wl[1328].w[16]" 5.2112148831938837e-005;
	setAttr -s 2 ".wl[1329].w";
	setAttr ".wl[1329].w[6]" 0.99999868509983347;
	setAttr ".wl[1329].w[16]" 1.314900166505583e-006;
	setAttr -s 2 ".wl[1330].w";
	setAttr ".wl[1330].w[6]" 0.99996535157191901;
	setAttr ".wl[1330].w[16]" 3.4648428080987451e-005;
	setAttr -s 2 ".wl[1331].w";
	setAttr ".wl[1331].w[6]" 0.99982696691536643;
	setAttr ".wl[1331].w[16]" 0.00017303308463361466;
	setAttr -s 2 ".wl[1332].w";
	setAttr ".wl[1332].w[6]" 0.99976188629317064;
	setAttr ".wl[1332].w[16]" 0.00023811370682943597;
	setAttr -s 2 ".wl[1333].w";
	setAttr ".wl[1333].w[6]" 0.99984410792540102;
	setAttr ".wl[1333].w[16]" 0.00015589207459901452;
	setAttr -s 2 ".wl[1334].w";
	setAttr ".wl[1334].w[6]" 0.9999570859163891;
	setAttr ".wl[1334].w[16]" 4.2914083610859606e-005;
	setAttr -s 2 ".wl[1335].w";
	setAttr ".wl[1335].w[6]" 0.99993196037862575;
	setAttr ".wl[1335].w[16]" 6.803962137428089e-005;
	setAttr -s 2 ".wl[1336].w";
	setAttr ".wl[1336].w[6]" 0.00013475132575427524;
	setAttr ".wl[1336].w[16]" 0.99986524867424575;
	setAttr -s 2 ".wl[1337].w";
	setAttr ".wl[1337].w[6]" 4.9960885020798349e-005;
	setAttr ".wl[1337].w[16]" 0.99995003911497915;
	setAttr -s 2 ".wl[1338].w";
	setAttr ".wl[1338].w[6]" 0.00017636625056615337;
	setAttr ".wl[1338].w[16]" 0.99982363374943384;
	setAttr -s 2 ".wl[1339].w";
	setAttr ".wl[1339].w[6]" 0.00012613707740611387;
	setAttr ".wl[1339].w[16]" 0.99987386292259395;
	setAttr -s 2 ".wl[1340].w";
	setAttr ".wl[1340].w[6]" 0.00025834583467369322;
	setAttr ".wl[1340].w[16]" 0.99974165416532634;
	setAttr -s 2 ".wl[1341].w";
	setAttr ".wl[1341].w[6]" 5.2112136026922411e-005;
	setAttr ".wl[1341].w[16]" 0.99994788786397304;
	setAttr -s 2 ".wl[1342].w";
	setAttr ".wl[1342].w[6]" 1.3148364743196898e-006;
	setAttr ".wl[1342].w[16]" 0.99999868516352564;
	setAttr -s 2 ".wl[1343].w";
	setAttr ".wl[1343].w[6]" 3.4647688068909773e-005;
	setAttr ".wl[1343].w[16]" 0.99996535231193107;
	setAttr -s 2 ".wl[1344].w";
	setAttr ".wl[1344].w[6]" 0.00017303189427758848;
	setAttr ".wl[1344].w[16]" 0.99982696810572236;
	setAttr -s 2 ".wl[1345].w";
	setAttr ".wl[1345].w[6]" 0.00023811233731557116;
	setAttr ".wl[1345].w[16]" 0.99976188766268448;
	setAttr -s 2 ".wl[1346].w";
	setAttr ".wl[1346].w[6]" 0.00015589037286627404;
	setAttr ".wl[1346].w[16]" 0.99984410962713377;
	setAttr -s 2 ".wl[1347].w";
	setAttr ".wl[1347].w[6]" 4.2913771077616654e-005;
	setAttr ".wl[1347].w[16]" 0.99995708622892243;
	setAttr -s 2 ".wl[1348].w";
	setAttr ".wl[1348].w[6]" 6.8039774769820284e-005;
	setAttr ".wl[1348].w[16]" 0.99993196022523023;
	setAttr ".wl[1349].w[0]"  1;
	setAttr ".wl[1350].w[0]"  1;
	setAttr ".wl[1351].w[0]"  1;
	setAttr ".wl[1352].w[0]"  1;
	setAttr ".wl[1353].w[0]"  1;
	setAttr ".wl[1354].w[0]"  1;
	setAttr ".wl[1355].w[0]"  1;
	setAttr ".wl[1356].w[39]"  1;
	setAttr ".wl[1357].w[37]"  1;
	setAttr ".wl[1358].w[37]"  1;
	setAttr ".wl[1359].w[38]"  1;
	setAttr ".wl[1360].w[40]"  1;
	setAttr ".wl[1361].w[40]"  1;
	setAttr ".wl[1362].w[40]"  1;
	setAttr -s 2 ".wl[1363].w[39:40]"  0.5 0.5;
	setAttr ".wl[1364].w[40]"  1;
	setAttr -s 2 ".wl[1365].w";
	setAttr ".wl[1365].w[38]" 0.5;
	setAttr ".wl[1365].w[40]" 0.5;
	setAttr ".wl[1366].w[38]"  1;
	setAttr ".wl[1367].w[37]"  1;
	setAttr -s 2 ".wl[1368].w";
	setAttr ".wl[1368].w[37]" 0.5;
	setAttr ".wl[1368].w[39]" 0.5;
	setAttr ".wl[1369].w[39]"  1;
	setAttr ".wl[1370].w[40]"  1;
	setAttr ".wl[1371].w[40]"  1;
	setAttr ".wl[1372].w[40]"  1;
	setAttr ".wl[1373].w[38]"  1;
	setAttr ".wl[1374].w[37]"  1;
	setAttr ".wl[1375].w[37]"  1;
	setAttr ".wl[1376].w[39]"  1;
	setAttr ".wl[1377].w[39]"  1;
	setAttr ".wl[1378].w[39]"  1;
	setAttr ".wl[1379].w[39]"  1;
	setAttr ".wl[1380].w[39]"  1;
	setAttr ".wl[1381].w[38]"  1;
	setAttr ".wl[1382].w[38]"  1;
	setAttr ".wl[1383].w[37]"  1;
	setAttr ".wl[1384].w[37]"  1;
	setAttr ".wl[1385].w[39]"  1;
	setAttr ".wl[1386].w[39]"  1;
	setAttr -s 2 ".wl[1387].w";
	setAttr ".wl[1387].w[37]" 0.5;
	setAttr ".wl[1387].w[39]" 0.5;
	setAttr ".wl[1388].w[40]"  1;
	setAttr ".wl[1389].w[40]"  1;
	setAttr ".wl[1390].w[39]"  1;
	setAttr ".wl[1391].w[39]"  1;
	setAttr -s 2 ".wl[1392].w[39:40]"  0.5 0.5;
	setAttr ".wl[1393].w[40]"  1;
	setAttr ".wl[1394].w[40]"  1;
	setAttr ".wl[1395].w[38]"  1;
	setAttr ".wl[1396].w[38]"  1;
	setAttr -s 2 ".wl[1397].w";
	setAttr ".wl[1397].w[38]" 0.5;
	setAttr ".wl[1397].w[40]" 0.5;
	setAttr ".wl[1398].w[39]"  1;
	setAttr ".wl[1399].w[39]"  1;
	setAttr ".wl[1400].w[37]"  1;
	setAttr ".wl[1401].w[37]"  1;
	setAttr ".wl[1402].w[38]"  1;
	setAttr ".wl[1403].w[38]"  1;
	setAttr ".wl[1404].w[40]"  1;
	setAttr ".wl[1405].w[40]"  1;
	setAttr ".wl[1406].w[40]"  1;
	setAttr ".wl[1407].w[39]"  1;
	setAttr ".wl[1408].w[37]"  1;
	setAttr ".wl[1409].w[39]"  1;
	setAttr ".wl[1410].w[40]"  1;
	setAttr ".wl[1411].w[39]"  1;
	setAttr ".wl[1412].w[40]"  1;
	setAttr ".wl[1413].w[38]"  1;
	setAttr ".wl[1414].w[39]"  1;
	setAttr ".wl[1415].w[39]"  1;
	setAttr ".wl[1416].w[37]"  1;
	setAttr ".wl[1417].w[37]"  1;
	setAttr ".wl[1418].w[38]"  1;
	setAttr ".wl[1419].w[38]"  1;
	setAttr ".wl[1420].w[40]"  1;
	setAttr ".wl[1421].w[40]"  1;
	setAttr ".wl[1422].w[40]"  1;
	setAttr ".wl[1423].w[39]"  1;
	setAttr ".wl[1424].w[37]"  1;
	setAttr ".wl[1425].w[39]"  1;
	setAttr ".wl[1426].w[40]"  1;
	setAttr ".wl[1427].w[39]"  1;
	setAttr ".wl[1428].w[40]"  1;
	setAttr ".wl[1429].w[38]"  1;
	setAttr ".wl[1430].w[0]"  1;
	setAttr ".wl[1431].w[0]"  1;
	setAttr ".wl[1432].w[0]"  1;
	setAttr ".wl[1433].w[0]"  1;
	setAttr ".wl[1434].w[0]"  1;
	setAttr ".wl[1435].w[0]"  1;
	setAttr ".wl[1436].w[0]"  1;
	setAttr ".wl[1437].w[0]"  1;
	setAttr ".wl[1438].w[1]"  1;
	setAttr ".wl[1439].w[1]"  1;
	setAttr ".wl[1440].w[1]"  1;
	setAttr ".wl[1441].w[1]"  1;
	setAttr ".wl[1442].w[1]"  1;
	setAttr ".wl[1443].w[1]"  1;
	setAttr ".wl[1444].w[1]"  1;
	setAttr -s 2 ".wl[1445].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[1446].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[1447].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[1448].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[1449].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[1450].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[1451].w[0:1]"  0.5 0.5;
	setAttr ".wl[1452].w[0]"  1;
	setAttr ".wl[1453].w[0]"  1;
	setAttr ".wl[1454].w[0]"  1;
	setAttr ".wl[1455].w[0]"  1;
	setAttr ".wl[1456].w[0]"  1;
	setAttr ".wl[1457].w[0]"  1;
	setAttr ".wl[1458].w[0]"  1;
	setAttr ".wl[1459].w[0]"  1;
	setAttr ".wl[1460].w[0]"  1;
	setAttr ".wl[1461].w[0]"  1;
	setAttr ".wl[1462].w[0]"  1;
	setAttr ".wl[1463].w[0]"  1;
	setAttr ".wl[1464].w[0]"  1;
	setAttr ".wl[1465].w[0]"  1;
	setAttr -s 2 ".wl[1466].w[0:1]"  0.99999298939383152 7.010600711510051e-006;
	setAttr ".wl[1467].w[0]"  1;
	setAttr -s 2 ".wl[1468].w[0:1]"  0.99999224946444243 7.7505355576028925e-006;
	setAttr -s 2 ".wl[1469].w[0:1]"  0.99997788509797536 2.2114902024638521e-005;
	setAttr -s 2 ".wl[1470].w[0:1]"  0.99997118718567246 2.8812814327623685e-005;
	setAttr ".wl[1471].w[41]"  0.99999999999272404;
	setAttr ".wl[1472].w[37]"  1.000000000007276;
	setAttr ".wl[1473].w[42]"  1;
	setAttr ".wl[1474].w[42]"  1;
	setAttr ".wl[1475].w[42]"  1.000000000003638;
	setAttr -s 2 ".wl[1476].w[41:42]"  0.5 0.5;
	setAttr -s 2 ".wl[1477].w";
	setAttr ".wl[1477].w[0]" 0.00018094577787509638;
	setAttr ".wl[1477].w[42]" 0.99981905422212491;
	setAttr -s 3 ".wl[1478].w";
	setAttr ".wl[1478].w[0]" 6.589157959652893e-005;
	setAttr ".wl[1478].w[38]" 0.50003396042205872;
	setAttr ".wl[1478].w[42]" 0.49990014799834476;
	setAttr -s 3 ".wl[1479].w";
	setAttr ".wl[1479].w[0]" 4.7147274389191043e-005;
	setAttr ".wl[1479].w[37]" 0.50007161103769338;
	setAttr ".wl[1479].w[41]" 0.49988124168791737;
	setAttr -s 3 ".wl[1480].w";
	setAttr ".wl[1480].w[0]" 0.00014072656537064254;
	setAttr ".wl[1480].w[37]" 6.4376370142017454e-005;
	setAttr ".wl[1480].w[41]" 0.99979489706448732;
	setAttr -s 2 ".wl[1481].w[41:42]"  3.3727694244589657e-005 0.99996627234941116;
	setAttr ".wl[1482].w[42]"  1;
	setAttr -s 2 ".wl[1483].w";
	setAttr ".wl[1483].w[38]" 3.2633543014526367e-005;
	setAttr ".wl[1483].w[42]" 0.99996736645698547;
	setAttr -s 2 ".wl[1484].w";
	setAttr ".wl[1484].w[37]" 0.99999458169304489;
	setAttr ".wl[1484].w[41]" 5.4183005886443425e-006;
	setAttr ".wl[1485].w[41]"  0.99999999999636202;
	setAttr -s 2 ".wl[1486].w";
	setAttr ".wl[1486].w[37]" 2.5583713068044744e-005;
	setAttr ".wl[1486].w[41]" 0.99997441629784589;
	setAttr ".wl[1487].w[41]"  1;
	setAttr -s 2 ".wl[1488].w[41:42]"  0.99996281982651158 3.7180173488348849e-005;
	setAttr ".wl[1489].w[41]"  0.99999999999999989;
	setAttr ".wl[1490].w[38]"  1;
	setAttr ".wl[1491].w[38]"  1;
	setAttr -s 2 ".wl[1492].w";
	setAttr ".wl[1492].w[37]" 0.99998635053634644;
	setAttr ".wl[1492].w[41]" 1.3649463653564453e-005;
	setAttr ".wl[1493].w[37]"  1;
	setAttr -s 2 ".wl[1494].w";
	setAttr ".wl[1494].w[37]" 0.00030097036506049335;
	setAttr ".wl[1494].w[41]" 0.99969902960583568;
	setAttr -s 2 ".wl[1495].w";
	setAttr ".wl[1495].w[37]" 0.00061594121598318452;
	setAttr ".wl[1495].w[41]" 0.9993840587858358;
	setAttr -s 2 ".wl[1496].w";
	setAttr ".wl[1496].w[37]" 0.5;
	setAttr ".wl[1496].w[41]" 0.5;
	setAttr -s 2 ".wl[1497].w[41:42]"  3.3617019653320313e-005 0.99996638298034668;
	setAttr ".wl[1498].w[42]"  1;
	setAttr -s 2 ".wl[1499].w[41:42]"  0.99978283188404715 0.00021716811595283843;
	setAttr -s 2 ".wl[1500].w[41:42]"  0.99991856247795485 8.1437522045212587e-005;
	setAttr -s 2 ".wl[1501].w[41:42]"  0.5 0.5;
	setAttr -s 2 ".wl[1502].w";
	setAttr ".wl[1502].w[38]" 0.00041036434214790005;
	setAttr ".wl[1502].w[42]" 0.99958963565785197;
	setAttr -s 2 ".wl[1503].w";
	setAttr ".wl[1503].w[38]" 0.00028259929968044162;
	setAttr ".wl[1503].w[42]" 0.99971740070031956;
	setAttr ".wl[1504].w[38]"  1;
	setAttr ".wl[1505].w[38]"  1;
	setAttr -s 2 ".wl[1506].w";
	setAttr ".wl[1506].w[38]" 0.5;
	setAttr ".wl[1506].w[42]" 0.5;
	setAttr ".wl[1507].w[41]"  0.99999999999999989;
	setAttr ".wl[1508].w[41]"  1;
	setAttr ".wl[1509].w[37]"  1;
	setAttr ".wl[1510].w[38]"  1.000000000005457;
	setAttr ".wl[1511].w[42]"  1;
	setAttr ".wl[1512].w[42]"  0.99999999999272404;
	setAttr ".wl[1513].w[42]"  1;
	setAttr ".wl[1514].w[41]"  1;
	setAttr ".wl[1515].w[37]"  1;
	setAttr -s 2 ".wl[1516].w";
	setAttr ".wl[1516].w[37]" 0.00033537286799401045;
	setAttr ".wl[1516].w[41]" 0.99966462713200599;
	setAttr ".wl[1517].w[42]"  1;
	setAttr -s 2 ".wl[1518].w[41:42]"  0.99995549540471984 4.4504595280159265e-005;
	setAttr -s 2 ".wl[1519].w";
	setAttr ".wl[1519].w[38]" 0.00027830083854496479;
	setAttr ".wl[1519].w[42]" 0.99972169915099585;
	setAttr ".wl[1520].w[38]"  1;
	setAttr -s 2 ".wl[1521].w";
	setAttr ".wl[1521].w[0]" 3.2563548302277923e-005;
	setAttr ".wl[1521].w[41]" 0.99996743645169772;
	setAttr -s 2 ".wl[1522].w";
	setAttr ".wl[1522].w[0]" 1.0800198651850224e-005;
	setAttr ".wl[1522].w[41]" 0.99998919980134815;
	setAttr -s 2 ".wl[1523].w";
	setAttr ".wl[1523].w[0]" 1.5291443560272455e-006;
	setAttr ".wl[1523].w[37]" 0.99999847085564397;
	setAttr -s 2 ".wl[1524].w";
	setAttr ".wl[1524].w[0]" 7.7486039646787497e-006;
	setAttr ".wl[1524].w[38]" 0.99999225139603543;
	setAttr -s 2 ".wl[1525].w";
	setAttr ".wl[1525].w[0]" 1.3351440605324786e-005;
	setAttr ".wl[1525].w[42]" 0.99998664855939468;
	setAttr -s 2 ".wl[1526].w";
	setAttr ".wl[1526].w[0]" 2.9623508405950474e-005;
	setAttr ".wl[1526].w[42]" 0.99997037649159404;
	setAttr -s 2 ".wl[1527].w";
	setAttr ".wl[1527].w[0]" 2.3185042664408684e-005;
	setAttr ".wl[1527].w[42]" 0.99997681495733559;
	setAttr -s 2 ".wl[1528].w";
	setAttr ".wl[1528].w[0]" 3.7312506886613708e-005;
	setAttr ".wl[1528].w[41]" 0.99996268749311346;
	setAttr -s 2 ".wl[1529].w";
	setAttr ".wl[1529].w[0]" 2.5857138098217547e-005;
	setAttr ".wl[1529].w[37]" 0.99997414286190178;
	setAttr -s 3 ".wl[1530].w";
	setAttr ".wl[1530].w[0]" 1.2104050256311893e-005;
	setAttr ".wl[1530].w[37]" 0.00039666460361331701;
	setAttr ".wl[1530].w[41]" 0.99959123134613037;
	setAttr -s 2 ".wl[1531].w";
	setAttr ".wl[1531].w[0]" 4.5359134674072266e-005;
	setAttr ".wl[1531].w[42]" 0.99995464086532593;
	setAttr -s 3 ".wl[1532].w";
	setAttr ".wl[1532].w[0]" 4.3392180940743034e-005;
	setAttr ".wl[1532].w[41]" 0.99994777582888039;
	setAttr ".wl[1532].w[42]" 8.8319901788128637e-006;
	setAttr -s 3 ".wl[1533].w";
	setAttr ".wl[1533].w[0]" 8.8810919340251443e-006;
	setAttr ".wl[1533].w[38]" 0.00033249018664690725;
	setAttr ".wl[1533].w[42]" 0.99965862872141908;
	setAttr -s 2 ".wl[1534].w";
	setAttr ".wl[1534].w[0]" 2.6166439127981583e-005;
	setAttr ".wl[1534].w[38]" 0.99997383356087199;
	setAttr ".wl[1535].w[0]"  1;
	setAttr ".wl[1536].w[0]"  1;
	setAttr ".wl[1537].w[0]"  1;
	setAttr ".wl[1538].w[0]"  1;
	setAttr ".wl[1539].w[0]"  1;
	setAttr -s 2 ".wl[1540].w[0:1]"  2.4643791675141863e-006 0.9999975356208326;
	setAttr -s 2 ".wl[1541].w[0:1]"  4.47665512983025e-007 0.99999955233448701;
	setAttr -s 2 ".wl[1542].w[0:1]"  2.8038866730639711e-006 0.999997196102413;
	setAttr -s 2 ".wl[1543].w[0:1]"  7.9816218203632161e-006 0.99999201837454166;
	setAttr -s 2 ".wl[1544].w[0:1]"  1.0320684850739781e-005 0.99998967931696825;
	setAttr -s 2 ".wl[1545].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[1546].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[1547].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[1548].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[1549].w[0:1]"  0.5 0.5;
	setAttr ".wl[1550].w[0]"  1;
	setAttr ".wl[1551].w[0]"  1;
	setAttr ".wl[1552].w[0]"  1;
	setAttr ".wl[1553].w[0]"  1;
	setAttr ".wl[1554].w[0]"  1;
	setAttr ".wl[1555].w[0]"  1;
	setAttr ".wl[1556].w[0]"  1;
	setAttr ".wl[1557].w[0]"  1;
	setAttr ".wl[1558].w[0]"  1;
	setAttr ".wl[1559].w[0]"  1;
	setAttr ".wl[1560].w[22]"  1;
	setAttr ".wl[1561].w[22]"  1;
	setAttr ".wl[1562].w[22]"  1;
	setAttr ".wl[1563].w[22]"  1;
	setAttr ".wl[1564].w[22]"  1;
	setAttr ".wl[1565].w[22]"  1;
	setAttr ".wl[1566].w[22]"  1;
	setAttr ".wl[1567].w[22]"  1;
	setAttr ".wl[1568].w[22]"  1;
	setAttr ".wl[1569].w[22]"  1;
	setAttr ".wl[1570].w[22]"  1;
	setAttr ".wl[1571].w[22]"  1;
	setAttr ".wl[1572].w[22]"  1;
	setAttr ".wl[1573].w[22]"  1;
	setAttr ".wl[1574].w[22]"  1;
	setAttr ".wl[1575].w[22]"  1;
	setAttr ".wl[1576].w[22]"  1;
	setAttr ".wl[1577].w[22]"  1;
	setAttr ".wl[1578].w[22]"  1;
	setAttr ".wl[1579].w[22]"  1;
	setAttr ".wl[1580].w[22]"  1;
	setAttr ".wl[1581].w[22]"  1;
	setAttr ".wl[1582].w[22]"  1;
	setAttr ".wl[1583].w[22]"  1;
	setAttr ".wl[1584].w[22]"  1;
	setAttr ".wl[1585].w[22]"  1;
	setAttr ".wl[1586].w[22]"  1;
	setAttr ".wl[1587].w[22]"  1;
	setAttr ".wl[1588].w[22]"  1;
	setAttr ".wl[1589].w[22]"  1;
	setAttr ".wl[1590].w[22]"  1;
	setAttr ".wl[1591].w[22]"  1;
	setAttr ".wl[1592].w[22]"  1;
	setAttr -s 2 ".wl[1593].w";
	setAttr ".wl[1593].w[22]" 0.5;
	setAttr ".wl[1593].w[25]" 0.5;
	setAttr ".wl[1594].w[22]"  1;
	setAttr ".wl[1595].w[22]"  1;
	setAttr ".wl[1596].w[22]"  1;
	setAttr ".wl[1597].w[22]"  1;
	setAttr ".wl[1598].w[22]"  1;
	setAttr ".wl[1599].w[22]"  1;
	setAttr ".wl[1600].w[22]"  1;
	setAttr ".wl[1601].w[22]"  1;
	setAttr ".wl[1602].w[22]"  1;
	setAttr ".wl[1603].w[22]"  1;
	setAttr ".wl[1604].w[22]"  1;
	setAttr ".wl[1605].w[22]"  1;
	setAttr ".wl[1606].w[22]"  1;
	setAttr ".wl[1607].w[22]"  1;
	setAttr ".wl[1608].w[22]"  1;
	setAttr ".wl[1609].w[22]"  1;
	setAttr ".wl[1610].w[22]"  1;
	setAttr ".wl[1611].w[22]"  1;
	setAttr -s 2 ".wl[1612].w";
	setAttr ".wl[1612].w[22]" 0.5;
	setAttr ".wl[1612].w[25]" 0.5;
	setAttr ".wl[1613].w[25]"  1;
	setAttr ".wl[1614].w[25]"  1;
	setAttr ".wl[1615].w[25]"  1;
	setAttr ".wl[1616].w[22]"  1;
	setAttr ".wl[1617].w[22]"  1;
	setAttr ".wl[1618].w[22]"  1;
	setAttr ".wl[1619].w[22]"  1;
	setAttr ".wl[1620].w[22]"  1;
	setAttr ".wl[1621].w[22]"  1;
	setAttr ".wl[1622].w[22]"  1;
	setAttr ".wl[1623].w[22]"  1;
	setAttr ".wl[1624].w[22]"  1;
	setAttr ".wl[1625].w[22]"  1;
	setAttr ".wl[1626].w[22]"  1;
	setAttr ".wl[1627].w[22]"  1;
	setAttr ".wl[1628].w[22]"  1;
	setAttr ".wl[1629].w[22]"  1;
	setAttr -s 2 ".wl[1630].w";
	setAttr ".wl[1630].w[22]" 0.5;
	setAttr ".wl[1630].w[25]" 0.5;
	setAttr ".wl[1631].w[25]"  1;
	setAttr ".wl[1632].w[22]"  1;
	setAttr ".wl[1633].w[22]"  1;
	setAttr ".wl[1634].w[22]"  1;
	setAttr ".wl[1635].w[22]"  1;
	setAttr ".wl[1636].w[22]"  1;
	setAttr ".wl[1637].w[22]"  1;
	setAttr ".wl[1638].w[22]"  1;
	setAttr ".wl[1639].w[22]"  1;
	setAttr ".wl[1640].w[22]"  1;
	setAttr ".wl[1641].w[22]"  1;
	setAttr ".wl[1642].w[22]"  1;
	setAttr ".wl[1643].w[22]"  1;
	setAttr ".wl[1644].w[22]"  1;
	setAttr ".wl[1645].w[22]"  1;
	setAttr ".wl[1646].w[22]"  1;
	setAttr ".wl[1647].w[25]"  1;
	setAttr -s 2 ".wl[1648].w";
	setAttr ".wl[1648].w[22]" 0.5;
	setAttr ".wl[1648].w[25]" 0.5;
	setAttr ".wl[1649].w[22]"  1;
	setAttr ".wl[1650].w[25]"  1;
	setAttr ".wl[1651].w[25]"  1;
	setAttr ".wl[1652].w[25]"  1;
	setAttr ".wl[1653].w[25]"  1;
	setAttr ".wl[1654].w[25]"  1;
	setAttr ".wl[1655].w[25]"  1;
	setAttr -s 2 ".wl[1656].w";
	setAttr ".wl[1656].w[22]" 0.5;
	setAttr ".wl[1656].w[25]" 0.5;
	setAttr ".wl[1657].w[22]"  1;
	setAttr -s 2 ".wl[1658].w";
	setAttr ".wl[1658].w[22]" 0.5;
	setAttr ".wl[1658].w[25]" 0.5;
	setAttr ".wl[1659].w[25]"  1;
	setAttr ".wl[1660].w[25]"  1;
	setAttr ".wl[1661].w[25]"  1;
	setAttr ".wl[1662].w[25]"  1;
	setAttr -s 2 ".wl[1663].w";
	setAttr ".wl[1663].w[22]" 0.5;
	setAttr ".wl[1663].w[25]" 0.5;
	setAttr ".wl[1664].w[22]"  1;
	setAttr ".wl[1665].w[22]"  1;
	setAttr ".wl[1666].w[22]"  1;
	setAttr ".wl[1667].w[25]"  1;
	setAttr ".wl[1668].w[25]"  1;
	setAttr ".wl[1669].w[25]"  1;
	setAttr ".wl[1670].w[25]"  1;
	setAttr ".wl[1671].w[25]"  1;
	setAttr ".wl[1672].w[25]"  1;
	setAttr ".wl[1673].w[25]"  1;
	setAttr -s 2 ".wl[1674].w";
	setAttr ".wl[1674].w[22]" 0.5;
	setAttr ".wl[1674].w[25]" 0.5;
	setAttr ".wl[1675].w[25]"  1;
	setAttr ".wl[1676].w[25]"  1;
	setAttr ".wl[1677].w[25]"  1;
	setAttr ".wl[1678].w[25]"  1;
	setAttr ".wl[1679].w[25]"  1;
	setAttr ".wl[1680].w[22]"  1;
	setAttr ".wl[1681].w[22]"  1;
	setAttr ".wl[1682].w[22]"  1;
	setAttr ".wl[1683].w[22]"  1;
	setAttr ".wl[1684].w[22]"  1;
	setAttr ".wl[1685].w[22]"  1;
	setAttr ".wl[1686].w[22]"  1;
	setAttr ".wl[1687].w[22]"  1;
	setAttr ".wl[1688].w[22]"  1;
	setAttr ".wl[1689].w[22]"  1;
	setAttr ".wl[1690].w[22]"  1;
	setAttr ".wl[1691].w[22]"  1;
	setAttr ".wl[1692].w[22]"  1;
	setAttr ".wl[1693].w[22]"  1;
	setAttr ".wl[1694].w[22]"  1;
	setAttr ".wl[1695].w[22]"  1;
	setAttr ".wl[1696].w[22]"  1;
	setAttr ".wl[1697].w[22]"  1;
	setAttr ".wl[1698].w[22]"  1;
	setAttr ".wl[1699].w[22]"  1;
	setAttr ".wl[1700].w[22]"  1;
	setAttr ".wl[1701].w[22]"  1;
	setAttr ".wl[1702].w[22]"  1;
	setAttr ".wl[1703].w[22]"  1;
	setAttr ".wl[1704].w[22]"  1;
	setAttr ".wl[1705].w[22]"  1;
	setAttr ".wl[1706].w[22]"  1;
	setAttr ".wl[1707].w[22]"  1;
	setAttr ".wl[1708].w[22]"  1;
	setAttr ".wl[1709].w[22]"  1;
	setAttr -s 2 ".wl[1710].w";
	setAttr ".wl[1710].w[22]" 0.5;
	setAttr ".wl[1710].w[28]" 0.5;
	setAttr ".wl[1711].w[22]"  1;
	setAttr ".wl[1712].w[22]"  1;
	setAttr ".wl[1713].w[22]"  1;
	setAttr ".wl[1714].w[22]"  1;
	setAttr ".wl[1715].w[22]"  1;
	setAttr ".wl[1716].w[22]"  1;
	setAttr ".wl[1717].w[22]"  1;
	setAttr ".wl[1718].w[22]"  1;
	setAttr ".wl[1719].w[22]"  1;
	setAttr ".wl[1720].w[22]"  1;
	setAttr ".wl[1721].w[22]"  1;
	setAttr ".wl[1722].w[22]"  1;
	setAttr ".wl[1723].w[22]"  1;
	setAttr ".wl[1724].w[22]"  1;
	setAttr ".wl[1725].w[22]"  1;
	setAttr -s 2 ".wl[1726].w";
	setAttr ".wl[1726].w[22]" 0.5;
	setAttr ".wl[1726].w[28]" 0.5;
	setAttr ".wl[1727].w[28]"  1;
	setAttr ".wl[1728].w[28]"  1;
	setAttr ".wl[1729].w[28]"  1;
	setAttr ".wl[1730].w[22]"  1;
	setAttr ".wl[1731].w[22]"  1;
	setAttr ".wl[1732].w[22]"  1;
	setAttr ".wl[1733].w[22]"  1;
	setAttr ".wl[1734].w[22]"  1;
	setAttr ".wl[1735].w[22]"  1;
	setAttr ".wl[1736].w[22]"  1;
	setAttr ".wl[1737].w[22]"  1;
	setAttr ".wl[1738].w[22]"  1;
	setAttr ".wl[1739].w[22]"  1;
	setAttr ".wl[1740].w[22]"  1;
	setAttr -s 2 ".wl[1741].w";
	setAttr ".wl[1741].w[22]" 0.5;
	setAttr ".wl[1741].w[28]" 0.5;
	setAttr ".wl[1742].w[28]"  1;
	setAttr ".wl[1743].w[22]"  1;
	setAttr ".wl[1744].w[22]"  1;
	setAttr ".wl[1745].w[22]"  1;
	setAttr ".wl[1746].w[22]"  1;
	setAttr ".wl[1747].w[22]"  1;
	setAttr ".wl[1748].w[22]"  1;
	setAttr ".wl[1749].w[22]"  1;
	setAttr ".wl[1750].w[22]"  1;
	setAttr ".wl[1751].w[22]"  1;
	setAttr ".wl[1752].w[22]"  1;
	setAttr ".wl[1753].w[22]"  1;
	setAttr ".wl[1754].w[22]"  1;
	setAttr ".wl[1755].w[22]"  1;
	setAttr ".wl[1756].w[22]"  1;
	setAttr ".wl[1757].w[22]"  1;
	setAttr ".wl[1758].w[28]"  1;
	setAttr -s 2 ".wl[1759].w";
	setAttr ".wl[1759].w[22]" 0.5;
	setAttr ".wl[1759].w[28]" 0.5;
	setAttr ".wl[1760].w[22]"  1;
	setAttr ".wl[1761].w[28]"  1;
	setAttr ".wl[1762].w[28]"  1;
	setAttr ".wl[1763].w[28]"  1;
	setAttr ".wl[1764].w[28]"  1;
	setAttr ".wl[1765].w[28]"  1;
	setAttr ".wl[1766].w[28]"  1;
	setAttr -s 2 ".wl[1767].w";
	setAttr ".wl[1767].w[22]" 0.5;
	setAttr ".wl[1767].w[28]" 0.5;
	setAttr ".wl[1768].w[22]"  1;
	setAttr -s 2 ".wl[1769].w";
	setAttr ".wl[1769].w[22]" 0.5;
	setAttr ".wl[1769].w[28]" 0.5;
	setAttr ".wl[1770].w[28]"  1;
	setAttr ".wl[1771].w[28]"  1;
	setAttr ".wl[1772].w[28]"  1;
	setAttr ".wl[1773].w[28]"  1;
	setAttr -s 2 ".wl[1774].w";
	setAttr ".wl[1774].w[22]" 0.5;
	setAttr ".wl[1774].w[28]" 0.5;
	setAttr ".wl[1775].w[22]"  1;
	setAttr ".wl[1776].w[22]"  1;
	setAttr ".wl[1777].w[22]"  1;
	setAttr ".wl[1778].w[28]"  1;
	setAttr ".wl[1779].w[28]"  1;
	setAttr ".wl[1780].w[28]"  1;
	setAttr ".wl[1781].w[28]"  1;
	setAttr ".wl[1782].w[28]"  1;
	setAttr ".wl[1783].w[28]"  1;
	setAttr ".wl[1784].w[28]"  1;
	setAttr -s 2 ".wl[1785].w";
	setAttr ".wl[1785].w[22]" 0.5;
	setAttr ".wl[1785].w[28]" 0.5;
	setAttr ".wl[1786].w[28]"  1;
	setAttr ".wl[1787].w[28]"  1;
	setAttr ".wl[1788].w[28]"  1;
	setAttr ".wl[1789].w[28]"  1;
	setAttr ".wl[1790].w[28]"  1;
	setAttr ".wl[1791].w[22]"  1;
	setAttr ".wl[1792].w[22]"  1;
	setAttr ".wl[1793].w[22]"  1;
	setAttr ".wl[1794].w[0]"  1;
	setAttr ".wl[1795].w[0]"  1;
	setAttr ".wl[1796].w[0]"  1;
	setAttr ".wl[1797].w[0]"  1;
	setAttr ".wl[1798].w[0]"  1;
	setAttr ".wl[1799].w[0]"  1;
	setAttr ".wl[1800].w[0]"  1;
	setAttr ".wl[1801].w[0]"  1;
	setAttr ".wl[1802].w[0]"  1;
	setAttr ".wl[1803].w[0]"  1;
	setAttr ".wl[1804].w[0]"  1;
	setAttr ".wl[1805].w[0]"  1;
	setAttr ".wl[1806].w[0]"  1;
	setAttr ".wl[1807].w[0]"  1;
	setAttr ".wl[1808].w[0]"  1;
	setAttr ".wl[1809].w[0]"  1;
	setAttr ".wl[1810].w[0]"  1;
	setAttr ".wl[1811].w[0]"  1;
	setAttr -s 43 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 0
		 0.99999999999999978 2.2204460492503121e-016 0 0 0 0 1 0 -31.210498550295689 -6.9301228201136671e-015 -0.7992191985832805 1;
	setAttr ".pm[1]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 0
		 0.99999999999999978 2.2204460492503121e-016 0 0 0 0 1 0 -35.835626329163283 -7.9571074905001095e-015 -0.79921919858328039 1;
	setAttr ".pm[2]" -type "matrix" 0.99999999999999956 -1.5094937227365551e-048 -1.2325951644078304e-032 0
		 2.2204460492503116e-016 -0.99999999999999956 1.224646799147353e-016 0 1.7407388005640703e-032 -1.2246467991473532e-016 -1 0
		 2.8379299999999876 49.242299999999979 -3.7880600000000069 1;
	setAttr ".pm[3]" -type "matrix" 0.99999999999999956 -1.5094937227365551e-048 -1.2325951644078304e-032 0
		 2.2204460492503116e-016 -0.99999999999999956 1.224646799147353e-016 0 1.7407388005640703e-032 -1.2246467991473532e-016 -1 0
		 9.0155899999999871 49.242299999999979 -3.7880600000000069 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999956 -1.5094937227365551e-048 -1.2325951644078304e-032 0
		 2.2204460492503116e-016 -0.99999999999999956 1.224646799147353e-016 0 1.7407388005640703e-032 -1.2246467991473532e-016 -1 0
		 23.386599999999994 49.242299999999979 -3.7880600000000069 1;
	setAttr ".pm[5]" -type "matrix" 0.99999999999999956 -1.5094937227365551e-048 -1.2325951644078304e-032 0
		 2.2204460492503116e-016 -0.99999999999999956 1.224646799147353e-016 0 1.7407388005640703e-032 -1.2246467991473532e-016 -1 0
		 28.132299999999994 49.242299999999979 -3.7880600000000069 1;
	setAttr ".pm[6]" -type "matrix" 0.99999999999999956 -1.5094937227365551e-048 -1.2325951644078304e-032 0
		 2.2204460492503116e-016 -0.99999999999999956 1.224646799147353e-016 0 1.7407388005640703e-032 -1.2246467991473532e-016 -1 0
		 32.296299999999981 49.242299999999979 -3.7880600000000069 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999999999956 -1.5094937227365551e-048 -1.2325951644078304e-032 0
		 2.2204460492503116e-016 -0.99999999999999956 1.224646799147353e-016 0 1.7407388005640703e-032 -1.2246467991473532e-016 -1 0
		 42.837699999999984 49.242299999999979 -4.4259900000000068 1;
	setAttr ".pm[8]" -type "matrix" 0.99999999999999956 -1.5094937227365551e-048 -1.2325951644078304e-032 0
		 2.2204460492503116e-016 -0.99999999999999956 1.224646799147353e-016 0 1.7407388005640703e-032 -1.2246467991473532e-016 -1 0
		 42.394699999999986 49.242299999999979 0.65807999999999411 1;
	setAttr ".pm[9]" -type "matrix" 0.99999999999999956 -1.5094937227365551e-048 -1.2325951644078304e-032 0
		 2.2204460492503116e-016 -0.99999999999999956 1.224646799147353e-016 0 1.7407388005640703e-032 -1.2246467991473532e-016 -1 0
		 42.394699999999986 49.242299999999979 -10.149800000000006 1;
	setAttr ".pm[10]" -type "matrix" 0.82791515305101082 -0.3369115417128889 -0.44838277443403757 0
		 0.53432913736254239 0.23086951528701649 0.81313691336486438 0 -0.17043729730878238 -0.91279235315146157 0.37116202353459526 0
		 5.2943295542695497 -21.746328318530555 -52.664501588380062 1;
	setAttr ".pm[11]" -type "matrix" 0.99999999999999956 1.2325951644078304e-032 1.2175061592935481e-047 0
		 2.2204460492503116e-016 9.877583447104208e-016 -0.99999999999999956 0 1.7407388005640708e-032 1 9.877583447104212e-016 0
		 43.15696231959695 5.0691140786809168 45.796757284481693 1;
	setAttr ".pm[12]" -type "matrix" 0.99999999999999956 0 0 0 0 0.99999999999999956 0 0
		 0 0 1 0 -2.8379316444520577 -49.2423319015708 3.7880642414093018 1;
	setAttr ".pm[13]" -type "matrix" 0.99999999999999956 0 0 0 0 0.99999999999999956 0 0
		 0 0 1 0 -9.0155896384469454 -49.2423319015708 3.7880642414093018 1;
	setAttr ".pm[14]" -type "matrix" 0.99999999999999956 0 0 0 0 0.99999999999999956 0 0
		 0 0 1 0 -23.386596237617919 -49.2423319015708 3.7880642414093018 1;
	setAttr ".pm[15]" -type "matrix" 0.99999999999999956 0 0 0 0 0.99999999999999956 0 0
		 0 0 1 0 -28.132341022222366 -49.2423319015708 3.7880642414093018 1;
	setAttr ".pm[16]" -type "matrix" 0.99999999999999956 0 0 0 0 0.99999999999999956 0 0
		 0 0 1 0 -32.296318137818915 -49.242331901570786 3.7880642414093018 1;
	setAttr ".pm[17]" -type "matrix" 0.99999999999999956 0 0 0 0 0.99999999999999956 0 0
		 0 0 1 0 -42.837670652160313 -49.242331901570793 4.4259913175306238 1;
	setAttr ".pm[18]" -type "matrix" 0.99999999999999956 0 0 0 0 0.99999999999999956 0 0
		 0 0 1 0 -42.394747783822169 -49.242331901570793 -0.65807965644544109 1;
	setAttr ".pm[19]" -type "matrix" 0.99999999999999956 0 0 0 0 0.99999999999999956 0 0
		 0 0 1 0 -42.394747783822169 -49.242331901570793 10.149829338225816 1;
	setAttr ".pm[20]" -type "matrix" 0.82791515305101071 -0.3369115417128889 -0.44838277443403785 0
		 -0.53432913736254251 -0.23086951528701677 -0.81313691336486438 0 0.17043729730878229 0.91279235315146168 -0.37116202353459543 0
		 -5.2943430187468588 21.746314423192068 52.664460674535981 1;
	setAttr ".pm[21]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 0
		 0.99999999999999978 2.2204460492503121e-016 0 0 0 0 1 0 -53.798498106327777 -1.1945666257579596e-014 2.6976865911855579 1;
	setAttr ".pm[22]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 0
		 0.99999999999999978 2.2204460492503121e-016 0 0 0 0 1 0 -59.510684448835448 -1.3214026417259868e-014 2.6976865911855583 1;
	setAttr ".pm[23]" -type "matrix" -3.6977854932234863e-032 -1.1102230246251551e-016 0.99999999999999978 0
		 3.3306690738754672e-016 0.99999999999999978 2.2204460492503136e-016 0 -1 4.4408920985006262e-016 -1.1102230246251541e-016 0
		 -32.875215625333645 -107.2095016976794 -2.7455173581346903e-014 1;
	setAttr ".pm[24]" -type "matrix" -3.6977854932234863e-032 -1.1102230246251551e-016 0.99999999999999978 0
		 3.3306690738754672e-016 0.99999999999999978 2.2204460492503136e-016 0 -1 4.4408920985006262e-016 -1.1102230246251541e-016 0
		 -58.221731184357843 -107.20950169767936 -2.7455173581346893e-014 1;
	setAttr ".pm[25]" -type "matrix" -3.4450928483976651e-016 0.99999999999999978 0 0
		 -0.99999999999999978 -3.4450928483976651e-016 0 0 0 0 1 0 77.169107161486551 -23.733919261540574 -1.10271111892727 1;
	setAttr ".pm[26]" -type "matrix" 0.99999999999999956 0 0 0 0 0.99999999999999956 0 0
		 0 0 1 0 -18.300932460928387 -72.844893177325773 6.1344143246514715 1;
	setAttr ".pm[27]" -type "matrix" 0.99999999999999956 -1.5094937227365551e-048 -1.2325951644078304e-032 0
		 2.2204460492503116e-016 -0.99999999999999956 1.224646799147353e-016 0 1.7407388005640703e-032 -1.2246467991473532e-016 -1 0
		 18.30089999999997 72.844899999999953 -6.1344100000000097 1;
	setAttr ".pm[28]" -type "matrix" 2.2204460492503121e-016 0.99999999999999978 -1.224646799147353e-016 0
		 0.99999999999999978 -2.2204460492503121e-016 2.719262146893781e-032 0 0 -1.2246467991473532e-016 -1 0
		 -77.1691 23.733900000000009 1.1027099999999963 1;
	setAttr ".pm[29]" -type "matrix" 3.4420769071359233e-016 4.4251494772695244e-016 -0.99999999999999978 0
		 -0.99998947916611813 0.0045871077025966258 -3.4273324238676198e-016 0 0.0045871077025966267 0.99998947916611858 4.4668460615826144e-016 0
		 26.758883062989536 -0.06768997506172876 4.2843923568725506 1;
	setAttr ".pm[30]" -type "matrix" 3.2026639055613401e-016 -5.8260362891635723e-016 0.99999999999999978 0
		 -0.9988266779958217 0.048427960145253135 3.4866395702487392e-016 0 -0.048427960145253156 -0.99882667799582237 -5.6900559556931801e-016 0
		 12.571075185760662 -0.59953529586495247 -4.284392356872547 1;
	setAttr ".pm[31]" -type "matrix" 5.8260362738759105e-016 1.4901161440135148e-008 -0.99999999999999956 0
		 -0.04842796014525335 0.99882667799582148 1.4883677550756285e-008 0 0.99882667799582225 0.048427960145253253 7.216334368562934e-010 0
		 0.59953529586493881 -1.8307846111638961 4.2843923295917268 1;
	setAttr ".pm[32]" -type "matrix" 0.99999999999999956 1.8371752060059355e-008 -1.0323174384824091e-008 0
		 -1.5605310409220476e-008 0.97479096618790662 0.22312008479392006 0 1.4162044026698289e-008 -0.22312008479392012 0.9747909661879075 0
		 -4.2843924031669243 -0.4292952355025218 -5.2485100889911589 1;
	setAttr ".pm[33]" -type "matrix" 2.2191097233422262e-016 4.4307594184795862e-016 -0.99999999999999978 0
		 0.99998947916611813 -0.0045871077025965721 2.2000751988988794e-016 0 -0.0045871077025965721 -0.99998947916611847 -4.4408453766125715e-016 0
		 -26.75887102461218 0.067689935544355873 -4.2843900000000055 1;
	setAttr ".pm[34]" -type "matrix" 1.9811188044016837e-016 -3.3175162617217332e-016 0.99999999999999978 0
		 0.99882667799582192 -0.048427960145254079 -2.1407680525177586e-016 0 0.048427960145254093 0.99882667799582237 3.2176354825020049e-016 0
		 -12.571115600234707 0.59953725552377746 4.2843899999999984 1;
	setAttr ".pm[35]" -type "matrix" 3.3175162617217327e-016 -7.5647200525432989e-017 -0.99999999999999978 0
		 0.048427960145254294 -0.9988266779958217 9.175581584071913e-017 0 -0.99882667799582214 -0.048427960145254308 -3.2769426288831252e-016 0
		 -0.59953557386283962 1.830783814057223 -4.284389999999993 1;
	setAttr ".pm[36]" -type "matrix" 0.99999999999999956 5.6912033274086219e-009 -2.0290377360433307e-008 0
		 1.0205428795750942e-009 -0.97479096618790717 -0.22312008479391945 0 -2.1048698375248528e-008 0.22312008479391948 -0.97479096618790728 0
		 4.2843901040511234 0.42929322485723931 5.2485138127188318 1;
	setAttr ".pm[37]" -type "matrix" 3.7427164567071736e-016 2.1884126169241316e-016 -1 0
		 -0.94041237820048329 0.34003611415158697 -2.9998913253530742e-016 0 0.34003611415158702 0.9404123782004834 1.8875796156758002e-016 0
		 25.994239219298279 -15.48149585537632 7.8328512637331383e-015 1;
	setAttr ".pm[38]" -type "matrix" -1.7886039878665771e-016 -1.5571163129960784e-016 0.99999999999999978 0
		 -0.87963283655519098 0.47565331161873359 -6.3620227435534442e-017 0 -0.4756533116187337 -0.8796328365551912 -2.9297658850797309e-016 0
		 23.644980311532318 -19.312772149207618 2.2558108874682628e-016 1;
	setAttr ".pm[39]" -type "matrix" 0.36574523492651695 0.75694842391241912 -0.54153440026008592 0
		 -0.90040168981644897 0.43505953267993441 5.5511151231257802e-017 0 0.23559970310726161 0.4875984890879187 0.84067859098168363 0
		 23.90567186291835 -18.813206145975577 0.78910633643956773 1;
	setAttr ".pm[40]" -type "matrix" 0.32007283540509573 0.81747022742352116 0.47884841788595017 0
		 -0.92575881631771739 0.37726974379085854 -0.025261718666743004 0 -0.20130572283410195 -0.43521255461683894 0.8775340667222693 0
		 25.399161356432085 -17.216556353893612 0.83074796501484305 1;
	setAttr ".pm[41]" -type "matrix" 0.36574523492651645 0.75694842391241968 -0.54153440026008537 0
		 0.90040168981644919 -0.43505953267993391 -6.9388939039072234e-016 0 -0.23559970310726164 -0.48759848908791797 -0.84067859098168396 0
		 -23.905696107662287 18.81322029195443 -0.78910405333723899 1;
	setAttr ".pm[42]" -type "matrix" 0.32007283540509618 0.8174702274235216 0.47884841788594995 0
		 0.9257588163177175 -0.37726974379085892 0.025261718666743132 0 0.20130572283410214 0.43521255461683866 -0.87753406672226963 0
		 -25.399189987939216 17.216567268998791 -0.83074390464650072 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 43 ".ma";
	setAttr -s 43 ".dpf[0:42]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 43 ".lw";
	setAttr -s 43 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".ucm" yes;
	setAttr -s 43 ".ifcl";
	setAttr -s 43 ".ifcl";
createNode groupId -n "groupId51";
	rename -uid "959B8CBB-4217-721D-9458-9BB40BD2FA8C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	rename -uid "2B0AEF6C-4BE7-8BC7-4C2F-FDB3C5B4E6A5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 9 "f[0:273]" "f[284:309]" "f[312:313]" "f[327:329]" "f[331:336]" "f[347:372]" "f[375:376]" "f[390:392]" "f[394:1909]";
createNode groupId -n "groupId52";
	rename -uid "D30A2C40-48D4-EF51-DF11-A698D0944A05";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	rename -uid "8B148BCD-498E-97AA-9356-68BBF398496E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 10 "f[274]" "f[277:283]" "f[310:311]" "f[314:326]" "f[330]" "f[337]" "f[340:346]" "f[373:374]" "f[377:389]" "f[393]";
createNode groupId -n "groupId53";
	rename -uid "B875A20C-44B0-D44A-54EC-A59C95843FA6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	rename -uid "CE1168EB-4815-5F1B-73D7-AA9377A865F1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[275:276]" "f[338:339]";
createNode tweak -n "tweak20";
	rename -uid "B81EBBE0-4197-B99E-5EBA-D3AC54C5B25B";
createNode objectSet -n "skinCluster20Set";
	rename -uid "63ABF944-43F9-9532-D86C-31BB4B360B3F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster20GroupId";
	rename -uid "5066BEDF-4AA3-2430-8680-36BD3E2CFBAC";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster20GroupParts";
	rename -uid "F91FB0C3-4185-0DC1-8C56-DA845E79AE76";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet20";
	rename -uid "1627B7AB-455D-EFA2-8225-E7983C0E4C29";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId55";
	rename -uid "3680BABB-48FC-55E4-4DAD-818033EACF32";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	rename -uid "5409B28D-49A4-917D-F5AD-81BD742795FC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose_Knight";
	rename -uid "08D5A1BF-4C86-0BA8-B4AF-4F85392048CE";
	setAttr -s 292 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[3]" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 114.25061241648876 -52.590560491179225 1;
	setAttr ".wm[4]" -type "matrix" 0.86701379868095207 -0.080752937538624961 0.53399545088094413 0
		 -0.47852732400444792 0.3533446949428255 0.83038800107102817 0 -0.25036728752734844 -0.95499298176503844 0.2620872597085816 0
		 -6.1238096233138375 119.17499457352785 -22.096536585621902 1;
	setAttr ".wm[5]" -type "matrix" -0.0892820194624587 -1.1243991860299434 0.22417669695110029 0
		 -0.44546662224930128 0.24130476873822371 1.032893824675152 0 1.0569390275951134 0.0066472951482709226 0.45428389958216775 0
		 -22.975000000000001 95.915698432329066 -39.617184135723605 1;
	setAttr ".wm[6]" -type "matrix" 0.498717548486106 0.95958080705996884 0.39245845329183637 0
		 -0.58569967595819405 -0.098567138200822205 0.98528095731899734 0 0.8554383977941068 -0.62691893414947353 0.44579810855409968 0
		 -23.757000000000001 111.28049989053791 -32.934647172336582 1;
	setAttr ".wm[7]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[9]" -type "matrix" 0.90183372994439592 -0.082286202289164681 -0.24536302180271014 0
		 0.25878147986163202 0.27819170682409777 0.85785758022860148 0 -0.0024854045856337022 -0.8922535868170407 0.29009561802433997 0
		 10.054469213350941 120.12170991154657 -23.57795584624456 1;
	setAttr ".wm[10]" -type "matrix" 0.4987078254330809 -0.95958201527098175 -0.39246785451341398 0
		 0.58570278871203973 -0.098579712673558778 0.98527784890872883 0 -0.85544193499782362 -0.62691510766909508 0.44579670212945649 0
		 23.756721675208095 111.28049989053791 -32.934647172336582 1;
	setAttr ".wm[11]" -type "matrix" 0.089313376505818901 -1.1248416942801929 0.22425975919024843 0
		 0.44546778375523938 0.24129880138532495 1.0328947178160388 0 -1.0569388489498333 0.0066488544083780467 0.45428429240039869 0
		 22.975010354501588 95.915698432329066 -39.617184135723605 1;
	setAttr ".wm[12]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[13]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[14]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[15]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[16]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[17]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[18]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[19]" -type "matrix" 1 0 0 0 0 0.99657305928490281 -0.082717214094344085 0
		 0 0.082717214094344085 0.99657305928490281 0 0 32.135873718117722 5.8166813066966068 1;
	setAttr ".wm[20]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[21]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[22]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[23]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[24]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[25]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[26]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[27]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[28]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[29]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[30]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[31]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[32]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[33]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[43]" -type "matrix" 1.0000000000000004 0 -1.2325951644078309e-032 0
		 2.2204460492503136e-016 -1.0000000000000004 -1.2246467991473535e-016 0 -9.7852334632971127e-033 1.2246467991473537e-016 -1 0
		 -42.837700000000012 49.2423 -4.4259900000000005 1;
	setAttr ".wm[45]" -type "matrix" 1.0000000000000004 0 -1.2325951644078309e-032 0
		 2.2204460492503136e-016 -1.0000000000000004 -1.2246467991473535e-016 0 -9.7852334632971127e-033 1.2246467991473537e-016 -1 0
		 -42.394700000000014 49.2423 0.65808 1;
	setAttr ".wm[47]" -type "matrix" 1.0000000000000004 0 -1.2325951644078309e-032 0
		 2.2204460492503136e-016 -1.0000000000000004 -1.2246467991473535e-016 0 -9.7852334632971127e-033 1.2246467991473537e-016 -1 0
		 -42.394700000000014 49.2423 -10.149799999999999 1;
	setAttr ".wm[49]" -type "matrix" 0.82791515305101127 0.53432913736254251 -0.17043729730878238 0
		 -0.33691154171288912 0.2308695152870166 -0.91279235315146123 0 -0.44838277443403812 0.81313691336486482 0.37116202353459526 0
		 -35.323700000000017 45.015099999999997 0.59953199999999907 1;
	setAttr ".wm[50]" -type "matrix" 1.0000000000000004 0 -1.2325951644078309e-032 0
		 2.2204460492503136e-016 -1.0000000000000004 -1.2246467991473535e-016 0 -9.7852334632971127e-033 1.2246467991473537e-016 -1 0
		 -32.296300000000009 49.2423 -3.7880600000000006 1;
	setAttr ".wm[52]" -type "matrix" 1.0000000000000004 0 -1.2325951644078309e-032 0
		 2.2204460492503136e-016 -1.0000000000000004 -1.2246467991473535e-016 0 -9.7852334632971127e-033 1.2246467991473537e-016 -1 0
		 -28.132300000000015 49.2423 -3.7880600000000006 1;
	setAttr ".wm[53]" -type "matrix" 1.0000000000000004 0 -1.2325951644078309e-032 0
		 2.2204460492503136e-016 -1.0000000000000004 -1.2246467991473535e-016 0 -9.7852334632971127e-033 1.2246467991473537e-016 -1 0
		 -23.386600000000016 49.2423 -3.7880600000000006 1;
	setAttr ".wm[54]" -type "matrix" 1.0000000000000004 0 -1.2325951644078309e-032 0
		 2.2204460492503136e-016 -1.0000000000000004 -1.2246467991473535e-016 0 -9.7852334632971127e-033 1.2246467991473537e-016 -1 0
		 -9.0155900000000031 49.2423 -3.7880600000000006 1;
	setAttr ".wm[55]" -type "matrix" 1.0000000000000004 0 -1.2325951644078309e-032 0
		 2.2204460492503136e-016 -1.0000000000000004 -1.2246467991473535e-016 0 -9.7852334632971127e-033 1.2246467991473537e-016 -1 0
		 -2.8379300000000001 49.2423 -3.7880600000000006 1;
	setAttr ".wm[62]" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0
		 0 0 1 0 42.837670652160327 49.242331901570815 -4.4259913175306238 1;
	setAttr ".wm[64]" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0
		 0 0 1 0 42.394747783822183 49.242331901570815 0.65807965644544097 1;
	setAttr ".wm[66]" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0
		 0 0 1 0 42.394747783822183 49.242331901570815 -10.149829338225814 1;
	setAttr ".wm[68]" -type "matrix" 0.82791515305101127 -0.53432913736254262 0.17043729730878218 0
		 -0.33691154171288906 -0.23086951528701671 0.91279235315146123 0 -0.44838277443403807 -0.8131369133648646 -0.37116202353459538 0
		 35.323688120881968 45.015056328970488 0.59953179274268464 1;
	setAttr ".wm[69]" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0
		 0 0 1 0 32.296318137818929 49.242331901570807 -3.7880642414093018 1;
	setAttr ".wm[70]" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0
		 0 0 1 0 28.132341022222377 49.242331901570822 -3.7880642414093018 1;
	setAttr ".wm[71]" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0
		 0 0 1 0 23.38659623761793 49.242331901570822 -3.7880642414093018 1;
	setAttr ".wm[72]" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0
		 0 0 1 0 9.0155896384469507 49.242331901570822 -3.7880642414093018 1;
	setAttr ".wm[73]" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0
		 0 0 1 0 2.837931644452059 49.242331901570822 -3.7880642414093018 1;
	setAttr ".wm[78]" -type "matrix" -1.1102230246251553e-016 4.4408920985006271e-016 -1 0
		 -2.2204460492503141e-016 1.0000000000000002 3.3306690738754681e-016 0 1.0000000000000002 1.1102230246251556e-016 0 0
		 -2.8140285167648416e-015 107.2095016976794 -58.221731184357807 1;
	setAttr ".wm[79]" -type "matrix" -1.1102230246251553e-016 4.4408920985006271e-016 -1 0
		 -2.2204460492503141e-016 1.0000000000000002 3.3306690738754681e-016 0 1.0000000000000002 1.1102230246251556e-016 0 0
		 -4.3387349787155649e-030 107.20950169767943 -32.87521562533361 1;
	setAttr ".wm[81]" -type "matrix" -3.4450928483976665e-016 -1.0000000000000002 0 0
		 1.0000000000000002 -3.4450928483976665e-016 0 0 0 0 1 0 23.733919261540606 77.169107161486551 1.10271111892727 1;
	setAttr ".wm[83]" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0
		 0 0 1 0 18.300932460928397 72.844893177325815 -6.1344143246514715 1;
	setAttr ".wm[85]" -type "matrix" 1.0000000000000004 0 -1.2325951644078309e-032 0
		 2.2204460492503136e-016 -1.0000000000000004 -1.2246467991473535e-016 0 -9.7852334632971127e-033 1.2246467991473537e-016 -1 0
		 -18.300899999999999 72.844899999999996 -6.1344100000000008 1;
	setAttr ".wm[87]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 1.0000000000000002 -2.2204460492503131e-016 -1.2246467991473532e-016 0
		 -1.2246467991473535e-016 2.7192621468937821e-032 -1 0 -23.733899999999998 77.169100000000014 1.1027099999999992 1;
	setAttr ".wm[88]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 3.9443045261050599e-031 59.510684448835462 -2.6976865911855588 1;
	setAttr ".wm[89]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -2.5637979419682884e-030 53.798498106327784 -2.6976865911855583 1;
	setAttr ".wm[90]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -1.9721522630525295e-031 35.83562632916329 0.79921919858328028 1;
	setAttr ".wm[95]" -type "matrix" 5.8522305299842314e-016 -0.048427960145253274 0.99882667799582192 0
		 1.4901161439702467e-008 0.99882667799582248 0.048427960145253357 0 -1.0000000000000002 1.4883677551315338e-008 7.2163343426089708e-010 0
		 4.2843923568725444 1.857670718941014 -0.51017068681779154 1;
	setAttr ".wm[96]" -type "matrix" 3.2069908162737615e-016 -0.99882667799582259 -0.048427960145253142 0
		 -5.8522305299842314e-016 0.048427960145253163 -0.99882667799582192 0 1.0000000000000002 3.4810492027453728e-016 -5.6641019926111938e-016 0
		 4.2843923568725444 1.857670718941014 -0.51017068681779154 1;
	setAttr ".wm[101]" -type "matrix" 3.3175331899165251e-016 0.048427960145254315 -0.99882667799582192 0
		 -7.5778592019998282e-017 -0.99882667799582237 -0.048427960145254301 0 -1.0000000000000002 9.1624496530891405e-017 -3.2769893507711798e-016 0
		 -4.2843899999999948 1.8576699999999899 -0.51017100000000037 1;
	setAttr ".wm[102]" -type "matrix" 1.982432719347337e-016 0.99882667799582237 0.048427960145254079 0
		 -3.3175331899165246e-016 -0.048427960145254093 0.99882667799582192 0 1.0000000000000002 -2.1394548594194819e-016 3.2176822043900585e-016 0
		 -4.2843899999999948 1.8576699999999899 -0.51017100000000037 1;
	setAttr ".wm[104]" -type "matrix" 3.4629801732844296e-016 -0.9404123782004834 0.34003611415158697 0
		 7.5503184627031975e-017 0.34003611415158702 0.94041237820048329 0 -1 -2.7755575615628923e-016 3.3306690738754696e-016 0
		 9.8607613152626476e-032 29.709572015648636 5.7200102409984011 1;
	setAttr ".wm[106]" -type "matrix" -1.9531772567198209e-016 -0.87963283655519153 -0.47565331161873381 0
		 -2.2745065572788251e-016 0.47565331161873392 -0.87963283655519131 0 1.0000000000000002 -8.3266726846886716e-017 -2.2204460492503131e-016 0
		 4.9303806576313238e-032 29.985085131033486 -5.7413353590114902 1;
	setAttr ".wm[108]" -type "matrix" 0.36574523492651712 -0.90040168981644919 0.23559970310726164 0
		 0.75694842391241968 0.43505953267993452 0.48759848908791875 0 -0.54153440026008615 5.0855852919992292e-017 0.84067859098168363 0
		 5.9245693960015924 29.709572015648632 2.8777368951413225 1;
	setAttr ".wm[110]" -type "matrix" 0.32007283540509607 -0.92575881631771828 -0.20130572283410206 0
		 0.81747022742352249 0.37726974379085909 -0.43521255461683922 0 0.47884841788595062 -0.025261718666742938 0.87753406672226952 0
		 5.5466382970932067 30.029769478762809 -3.1088745764069854 1;
	setAttr ".wm[112]" -type "matrix" 0.36574523492651662 0.90040168981644952 -0.23559970310726167 0
		 0.75694842391242034 -0.43505953267993419 -0.48759848908791814 0 -0.54153440026008559 -6.8466690089417424e-016 -0.84067859098168407 0
		 -5.9245699999999983 29.709599999999998 2.8777400000000002 1;
	setAttr ".wm[114]" -type "matrix" 0.32007283540509623 0.92575881631771795 0.2013057228341022 0
		 0.81747022742352227 -0.37726974379085926 0.43521255461683878 0 0.47884841788595028 0.025261718666743097 -0.87753406672226975 0
		 -5.54664 30.029800000000002 -3.10887 1;
	setAttr ".wm[115]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 0 31.210498550295696 0.79921919858328039 1;
	setAttr ".wm[123]" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0
		 0 0 1 0 2.7610131682735413e-030 75.650384968469581 0 1;
	setAttr ".wm[125]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 10.021141488790857 62.50354926562629 0 1;
	setAttr ".wm[127]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 -10.021000000000001 62.50354926562629 0 1;
	setAttr ".wm[128]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 5.5511151231259799e-017 57.17669217348444 0 1;
	setAttr ".wm[130]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 15.556100258121353 52.953343638571795 0 1;
	setAttr ".wm[132]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 -15.556000000000004 52.953343638571816 0 1;
	setAttr ".wm[133]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 1.1832913578315177e-030 42.946955831401269 0 1;
	setAttr ".wm[135]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 11.675964285177562 30.61980879362595 0 1;
	setAttr ".wm[137]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 -11.676000000000005 30.61980879362595 0 1;
	setAttr ".wm[138]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 -3.9443045261050599e-031 27.968285997629529 0 1;
	setAttr ".wm[140]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 8.2704776490755201 16.983928119530255 0 1;
	setAttr ".wm[142]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 -8.2699999999999996 16.983928119530255 0 1;
	setAttr ".wm[143]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 0 16.983928119530255 0 1;
	setAttr ".wm[144]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[145]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[146]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[147]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.2843923568725444 1.857670718941014 -0.51017068681779154 1;
	setAttr ".wm[148]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.2843923568725444 1.857670718941014 -0.51017068681779154 1;
	setAttr ".wm[149]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.2843923568725444 1.857670718941014 -0.51017068681779154 1;
	setAttr ".wm[150]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.2843899999999948 1.8576699999999899 -0.51017100000000037 1;
	setAttr ".wm[151]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.2843899999999948 1.8576699999999899 -0.51017100000000037 1;
	setAttr ".wm[152]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.2843899999999948 1.8576699999999899 -0.51017100000000037 1;
	setAttr ".wm[153]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[154]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 31.210498550295696 0.79921919858328039 1;
	setAttr ".wm[155]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 31.210498550295696 0.79921919858328039 1;
	setAttr ".wm[156]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 31.210498550295696 0.79921919858328039 1;
	setAttr ".wm[157]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 31.210498550295696 0.79921919858328039 1;
	setAttr ".wm[158]" -type "matrix" 2.2204460492503136e-016 1.0000000000000004 0 0
		 -1.0000000000000004 2.2204460492503136e-016 0 0 0 0 1 0 0 35.83562632916329 0.79921919858328039 1;
	setAttr ".wm[159]" -type "matrix" 2.2204460492503136e-016 1.0000000000000004 0 0
		 -1.0000000000000004 2.2204460492503136e-016 0 0 0 0 1 0 0 31.210498550295696 0.79921919858328039 1;
	setAttr ".wm[160]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 31.210498550295696 0.79921919858328039 1;
	setAttr ".wm[161]" -type "matrix" 1.1102230246251565e-016 -0.9404123782004834 0.34003611415158702 0
		 2.7755575615628914e-016 0.34003611415158685 0.9404123782004834 0 -1 -1.1102230246251565e-016 2.2204460492503131e-016 0
		 9.8607613152626476e-032 29.709572015648636 5.7200102409984011 1;
	setAttr ".wm[162]" -type "matrix" 1.1102230246251565e-016 -0.9404123782004834 0.34003611415158702 0
		 2.7755575615628914e-016 0.34003611415158685 0.9404123782004834 0 -1 -1.1102230246251565e-016 2.2204460492503131e-016 0
		 9.8607613152626476e-032 29.709572015648636 5.7200102409984011 1;
	setAttr ".wm[163]" -type "matrix" 0.36574523492651695 -0.90040168981644897 0.23559970310726169 0
		 0.75694842391241968 0.43505953267993464 0.48759848908791931 0 -0.54153440026008626 0 0.84067859098168329 0
		 5.9245693960015915 29.709572015648632 2.8777368951413225 1;
	setAttr ".wm[164]" -type "matrix" 0.36574523492651695 -0.90040168981644897 0.23559970310726169 0
		 0.75694842391241968 0.43505953267993464 0.48759848908791931 0 -0.54153440026008626 0 0.84067859098168329 0
		 5.9245693960015915 29.709572015648632 2.8777368951413225 1;
	setAttr ".wm[165]" -type "matrix" 0.32007283540509623 -0.92575881631771773 -0.20130572283410217 0
		 0.81747022742352171 0.37726974379085909 -0.435212554616839 0 0.47884841788595034 -0.025261718666742983 0.87753406672226952 0
		 5.5466382970932067 30.029769478762809 -3.1088745764069854 1;
	setAttr ".wm[166]" -type "matrix" 0.32007283540509623 -0.92575881631771773 -0.20130572283410217 0
		 0.81747022742352171 0.37726974379085909 -0.435212554616839 0 0.47884841788595034 -0.025261718666742983 0.87753406672226952 0
		 5.5466382970932067 30.029769478762809 -3.1088745764069854 1;
	setAttr ".wm[167]" -type "matrix" -1.1102230246251567e-015 -0.87963283655519175 -0.47565331161873359 0
		 -5.5511151231257827e-016 0.47565331161873337 -0.87963283655519153 0 1 -5.5511151231257827e-016 -1.1102230246251565e-015 0
		 4.9303806576313238e-032 29.985085131033486 -5.7413353590114902 1;
	setAttr ".wm[168]" -type "matrix" -1.1102230246251567e-015 -0.87963283655519175 -0.47565331161873359 0
		 -5.5511151231257827e-016 0.47565331161873337 -0.87963283655519153 0 1 -5.5511151231257827e-016 -1.1102230246251565e-015 0
		 4.9303806576313238e-032 29.985085131033486 -5.7413353590114902 1;
	setAttr ".wm[169]" -type "matrix" 0.32007283540509618 0.92575881631771761 0.20130572283410239 0
		 0.81747022742352193 -0.37726974379085942 0.43521255461683872 0 0.47884841788595045 0.025261718666743271 -0.87753406672227019 0
		 -5.54664 30.029800000000002 -3.10887 1;
	setAttr ".wm[170]" -type "matrix" 0.32007283540509618 0.92575881631771761 0.20130572283410239 0
		 0.81747022742352193 -0.37726974379085942 0.43521255461683872 0 0.47884841788595045 0.025261718666743271 -0.87753406672227019 0
		 -5.54664 30.029800000000002 -3.10887 1;
	setAttr ".wm[171]" -type "matrix" 0.3657452349265165 0.90040168981644919 -0.23559970310726161 0
		 0.75694842391242012 -0.43505953267993397 -0.48759848908791803 0 -0.54153440026008559 -6.6613381477509442e-016 -0.84067859098168463 0
		 -5.9245699999999992 29.709599999999998 2.8777400000000002 1;
	setAttr ".wm[172]" -type "matrix" 0.3657452349265165 0.90040168981644919 -0.23559970310726161 0
		 0.75694842391242012 -0.43505953267993397 -0.48759848908791803 0 -0.54153440026008559 -6.6613381477509442e-016 -0.84067859098168463 0
		 -5.9245699999999992 29.709599999999998 2.8777400000000002 1;
	setAttr ".wm[173]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 35.83562632916329 0.79921919858328039 1;
	setAttr ".wm[174]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 35.83562632916329 0.79921919858328039 1;
	setAttr ".wm[175]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 35.83562632916329 0.79921919858328039 1;
	setAttr ".wm[176]" -type "matrix" 2.2204460492503136e-016 1.0000000000000004 0 0
		 -1.0000000000000004 2.2204460492503136e-016 0 0 0 0 1 0 0 35.83562632916329 0.79921919858328039 1;
	setAttr ".wm[177]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -9.8607613152626476e-031 53.798498106327784 -2.6976865911855583 1;
	setAttr ".wm[178]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -9.8607613152626476e-031 53.798498106327784 -2.6976865911855583 1;
	setAttr ".wm[179]" -type "matrix" 2.2204460492503136e-016 1.0000000000000004 0 0
		 -1.0000000000000004 2.2204460492503136e-016 0 0 0 0 1 0 -9.8607613152626476e-031 53.798498106327784 -2.6976865911855583 1;
	setAttr ".wm[180]" -type "matrix" 2.2204460492503136e-016 1.0000000000000004 0 0
		 -1.0000000000000004 2.2204460492503136e-016 0 0 0 0 1 0 -9.8607613152626476e-031 53.798498106327784 -2.6976865911855583 1;
	setAttr ".wm[181]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.8886090522101181e-031 59.51068444883547 -2.6976865911855583 1;
	setAttr ".wm[182]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.8886090522101181e-031 59.51068444883547 -2.6976865911855583 1;
	setAttr ".wm[183]" -type "matrix" 2.2204460492503136e-016 1.0000000000000004 0 0
		 -1.0000000000000004 2.2204460492503136e-016 0 0 0 0 1 0 -7.8886090522101181e-031 59.51068444883547 -2.6976865911855583 1;
	setAttr ".wm[184]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.8886090522101181e-031 59.51068444883547 -2.6976865911855583 1;
	setAttr ".wm[185]" -type "matrix" 2.2204460492503141e-016 0 -1.0000000000000007 0
		 0 1 0 0 1.0000000000000007 0 2.2204460492503141e-016 0 -2.3665827156630354e-030 107.20950169767944 -32.87521562533361 1;
	setAttr ".wm[186]" -type "matrix" 2.2204460492503141e-016 0 -1.0000000000000007 0
		 0 1 0 0 1.0000000000000007 0 2.2204460492503141e-016 0 -2.3665827156630354e-030 107.20950169767944 -32.87521562533361 1;
	setAttr ".wm[187]" -type "matrix" 2.2204460492503136e-016 0 -1.0000000000000004 0
		 0 1 0 0 1.0000000000000004 0 2.2204460492503136e-016 0 -2.8140285167648467e-015 107.20950169767941 -58.221731184357807 1;
	setAttr ".wm[188]" -type "matrix" 2.2204460492503136e-016 0 -1.0000000000000004 0
		 0 1 0 0 1.0000000000000004 0 2.2204460492503136e-016 0 -2.8140285167648467e-015 107.20950169767941 -58.221731184357807 1;
	setAttr ".wm[189]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 18.300932460928397 72.844893177325815 -6.1344143246514715 1;
	setAttr ".wm[190]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 18.300932460928397 72.844893177325815 -6.1344143246514715 1;
	setAttr ".wm[191]" -type "matrix" -4.4408920985006262e-016 -1 0 0 1 -4.4408920985006262e-016 0 0
		 0 0 1 0 23.733919261540606 77.169107161486551 1.1027111189272705 1;
	setAttr ".wm[192]" -type "matrix" -4.4408920985006262e-016 -1 0 0 1 -4.4408920985006262e-016 0 0
		 0 0 1 0 23.733919261540606 77.169107161486551 1.1027111189272705 1;
	setAttr ".wm[193]" -type "matrix" 2.2204460492503141e-016 1.0000000000000007 -1.2325951644078315e-032 0
		 1.0000000000000007 -4.4408920985006281e-016 1.2246467991473539e-016 0 1.2246467991473535e-016 -3.6977854932234928e-032 -1 0
		 -23.733899999999998 77.169100000000014 1.1027099999999996 1;
	setAttr ".wm[194]" -type "matrix" 2.2204460492503141e-016 1.0000000000000007 -1.2325951644078315e-032 0
		 1.0000000000000007 -4.4408920985006281e-016 1.2246467991473539e-016 0 1.2246467991473535e-016 -3.6977854932234928e-032 -1 0
		 -23.733899999999998 77.169100000000014 1.1027099999999996 1;
	setAttr ".wm[195]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -18.300899999999999 72.844899999999996 -6.1344100000000008 1;
	setAttr ".wm[196]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -18.300899999999999 72.844899999999996 -6.1344100000000008 1;
	setAttr ".wm[197]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -9.8607613152626476e-031 53.798498106327784 -2.6976865911855583 1;
	setAttr ".wm[198]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.837931644452059 49.242331901570822 -3.7880642414093018 1;
	setAttr ".wm[199]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.837931644452059 49.242331901570822 -3.7880642414093018 1;
	setAttr ".wm[200]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.0155896384469507 49.242331901570822 -3.7880642414093018 1;
	setAttr ".wm[201]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.0155896384469507 49.242331901570822 -3.7880642414093018 1;
	setAttr ".wm[202]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 23.38659623761793 49.242331901570822 -3.7880642414093018 1;
	setAttr ".wm[203]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 23.38659623761793 49.242331901570822 -3.7880642414093018 1;
	setAttr ".wm[204]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 28.132341022222377 49.242331901570822 -3.7880642414093018 1;
	setAttr ".wm[205]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 28.132341022222377 49.242331901570822 -3.7880642414093018 1;
	setAttr ".wm[206]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 32.296318137818929 49.242331901570807 -3.7880642414093018 1;
	setAttr ".wm[207]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 32.296318137818929 49.242331901570807 -3.7880642414093018 1;
	setAttr ".wm[208]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 42.837670652160327 49.242331901570815 -4.4259913175306238 1;
	setAttr ".wm[209]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 42.837670652160327 49.242331901570815 -4.4259913175306238 1;
	setAttr ".wm[210]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 42.394747783822183 49.242331901570815 0.65807965644544097 1;
	setAttr ".wm[211]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 42.394747783822183 49.242331901570815 0.65807965644544097 1;
	setAttr ".wm[212]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 42.394747783822183 49.242331901570815 -10.149829338225814 1;
	setAttr ".wm[213]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 42.394747783822183 49.242331901570815 -10.149829338225814 1;
	setAttr ".wm[214]" -type "matrix" 0.82791515305101104 -0.53432913736254239 0.17043729730878224 0
		 -0.33691154171288884 -0.23086951528701644 0.91279235315146157 0 -0.44838277443403801 -0.8131369133648646 -0.37116202353459521 0
		 35.323688120881968 45.015056328970488 0.59953179274268464 1;
	setAttr ".wm[215]" -type "matrix" 0.82791515305101104 -0.53432913736254239 0.17043729730878224 0
		 -0.33691154171288884 -0.23086951528701644 0.91279235315146157 0 -0.44838277443403801 -0.8131369133648646 -0.37116202353459521 0
		 35.323688120881968 45.015056328970488 0.59953179274268464 1;
	setAttr ".wm[216]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.0155896384469507 49.242331901570822 -3.7880642414093018 1;
	setAttr ".wm[217]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.0155896384469507 49.242331901570822 -3.7880642414093018 1;
	setAttr ".wm[218]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -2.8379300000000001 49.2423 -3.7880600000000006 1;
	setAttr ".wm[219]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -2.8379300000000001 49.2423 -3.7880600000000006 1;
	setAttr ".wm[220]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -9.0155900000000031 49.2423 -3.7880600000000006 1;
	setAttr ".wm[221]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -9.0155900000000031 49.2423 -3.7880600000000006 1;
	setAttr ".wm[222]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -23.386600000000012 49.2423 -3.7880600000000006 1;
	setAttr ".wm[223]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -23.386600000000012 49.2423 -3.7880600000000006 1;
	setAttr ".wm[224]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -28.132300000000015 49.2423 -3.7880600000000006 1;
	setAttr ".wm[225]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -28.132300000000015 49.2423 -3.7880600000000006 1;
	setAttr ".wm[226]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -32.296300000000016 49.2423 -3.7880600000000006 1;
	setAttr ".wm[227]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -32.296300000000016 49.2423 -3.7880600000000006 1;
	setAttr ".wm[228]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -42.837700000000012 49.2423 -4.4259900000000005 1;
	setAttr ".wm[229]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -42.837700000000012 49.2423 -4.4259900000000005 1;
	setAttr ".wm[230]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -42.394700000000014 49.2423 0.65808 1;
	setAttr ".wm[231]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -42.394700000000014 49.2423 0.65808 1;
	setAttr ".wm[232]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -42.394700000000014 49.2423 -10.149799999999999 1;
	setAttr ".wm[233]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -42.394700000000014 49.2423 -10.149799999999999 1;
	setAttr ".wm[234]" -type "matrix" 0.82791515305101104 0.53432913736254195 -0.17043729730878229 0
		 -0.33691154171288862 0.23086951528701644 -0.91279235315146123 0 -0.44838277443403757 0.81313691336486449 0.37116202353459499 0
		 -35.323700000000009 45.015099999999997 0.59953199999999907 1;
	setAttr ".wm[235]" -type "matrix" 0.82791515305101104 0.53432913736254195 -0.17043729730878229 0
		 -0.33691154171288862 0.23086951528701644 -0.91279235315146123 0 -0.44838277443403757 0.81313691336486449 0.37116202353459499 0
		 -35.323700000000009 45.015099999999997 0.59953199999999907 1;
	setAttr ".wm[236]" -type "matrix" 1 0 0 0 0 5.6655388976479767e-016 0.99999999999999956 0
		 0 -1.0000000000000004 5.6655388976479816e-016 0 -43.156962319596971 45.796757284481707 -5.0691140786809612 1;
	setAttr ".wm[237]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -9.0155900000000031 49.2423 -3.7880600000000006 1;
	setAttr ".wm[238]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -9.0155900000000031 49.2423 -3.7880600000000006 1;
	setAttr ".wm[239]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -9.8607613152626476e-031 53.798498106327784 -2.6976865911855583 1;
	setAttr ".wm[240]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 35.83562632916329 0.79921919858328039 1;
	setAttr ".wm[241]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.2843923568725444 1.857670718941014 -0.51017068681779154 1;
	setAttr ".wm[242]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.2843923568725444 1.857670718941014 -0.51017068681779154 1;
	setAttr ".wm[243]" -type "matrix" 6.6613381477509373e-016 -0.048427960145252906 0.99882667799582192 0
		 1.4901161971003773e-008 0.99882667799582203 0.048427960145252913 0 -0.99999999999999967 1.488367808166746e-008 7.2163353070919801e-010 0
		 4.2843923568725444 1.857670718941014 -0.51017068681779154 1;
	setAttr ".wm[244]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.2843899999999948 1.857670718941014 -0.51017068681779154 1;
	setAttr ".wm[245]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.2843899999999948 1.857670718941014 -0.51017068681779154 1;
	setAttr ".wm[246]" -type "matrix" 5.5511151231257827e-016 0.048427960145254106 -0.99882667799582214 0
		 -9.4126095806501553e-015 -0.9988266779958217 -0.048427960145254093 0 -1 9.4264873684579713e-015 0 0
		 -4.2843899999999948 1.8576699999999899 -0.51017100000000037 1;
	setAttr ".wm[247]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.2843923568725435 12.585359538042862 13.492448067299771 1;
	setAttr ".wm[248]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.2843923568725435 12.585359538042862 13.492448067299771 1;
	setAttr ".wm[249]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.2843899999999966 12.585359538042862 13.492448067299771 1;
	setAttr ".wm[250]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.2843899999999966 12.585359538042862 13.492448067299771 1;
	setAttr ".wm[251]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[252]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[253]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 0 16.983928119530255 0 1;
	setAttr ".wm[254]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 0 16.983928119530255 0 1;
	setAttr ".wm[255]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 -8.2699999999999996 16.983928119530255 0 1;
	setAttr ".wm[256]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 -8.2699999999999996 16.983928119530255 0 1;
	setAttr ".wm[257]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 8.2704776490755201 16.983928119530255 0 1;
	setAttr ".wm[258]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 8.2704776490755201 16.983928119530255 0 1;
	setAttr ".wm[259]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 -3.9443045261050599e-031 27.968285997629529 0 1;
	setAttr ".wm[260]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 -3.9443045261050599e-031 27.968285997629529 0 1;
	setAttr ".wm[261]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 -11.676000000000004 30.619808793625953 0 1;
	setAttr ".wm[262]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 -11.676000000000004 30.619808793625953 0 1;
	setAttr ".wm[263]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 11.675964285177564 30.619808793625953 0 1;
	setAttr ".wm[264]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 11.675964285177564 30.619808793625953 0 1;
	setAttr ".wm[265]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 -3.9443045261050599e-031 42.946955831401269 0 1;
	setAttr ".wm[266]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 -3.9443045261050599e-031 42.946955831401269 0 1;
	setAttr ".wm[267]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 -15.556000000000003 52.953343638571809 0 1;
	setAttr ".wm[268]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 -15.556000000000003 52.953343638571809 0 1;
	setAttr ".wm[269]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 15.556100258121354 52.953343638571795 0 1;
	setAttr ".wm[270]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 15.556100258121354 52.953343638571795 0 1;
	setAttr ".wm[271]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 5.5511151231259799e-017 57.17669217348444 0 1;
	setAttr ".wm[272]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 5.5511151231259799e-017 57.17669217348444 0 1;
	setAttr ".wm[273]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 -10.021000000000001 62.50354926562629 0 1;
	setAttr ".wm[274]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 -10.021000000000001 62.50354926562629 0 1;
	setAttr ".wm[275]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 10.021141488790857 62.50354926562629 0 1;
	setAttr ".wm[276]" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0
		 -1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1 0 10.021141488790857 62.50354926562629 0 1;
	setAttr ".wm[277]" -type "matrix" 1.0000000000000002 0 0 0 0 1.0000000000000002 0 0
		 0 0 1 0 2.7610131682735413e-030 75.650384968469581 0 1;
	setAttr ".wm[278]" -type "matrix" 1.0000000000000002 0 0 0 0 1.0000000000000002 0 0
		 0 0 1 0 2.7610131682735413e-030 75.650384968469581 0 1;
	setAttr ".wm[279]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[280]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 167.0279958629398 0 1;
	setAttr ".wm[281]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 167.0279958629398 0 1;
	setAttr ".wm[282]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[283]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.0155896384469507 49.242331901570822 -3.7880642414093018 1;
	setAttr ".wm[284]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.0155896384469507 49.242331901570822 -3.7880642414093018 1;
	setAttr ".wm[285]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -9.0155900000000031 49.2423 -3.7880600000000006 1;
	setAttr ".wm[286]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 -9.0155900000000031 49.2423 -3.7880600000000006 1;
	setAttr ".wm[287]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -9.8607613152626476e-031 53.798498106327784 -2.6976865911855583 1;
	setAttr ".wm[288]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -9.8607613152626476e-031 53.798498106327784 -2.6976865911855583 1;
	setAttr ".wm[289]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[290]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[291]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 292 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
		 0 0 0 1 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 1.5707963267948966 0 0 0 114.25061241648876
		 -52.590560491179225 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1.0214622389427004 1.0214622389427004 1.0214622389427004 1.2650713509526974
		 -0.55010356497055468 -0.092871229503300984 0 -6.1238096233138375 119.17499457352785
		 -22.096536585621902 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" -1.1499999999999999 1.1504512836300689 1.1504512836300689 1.1564430752952506
		 0.19619246121668257 1.4915583787543538 0 -22.975000000000001 95.915698432329066
		 -39.617184135723605 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1.1504512836300689 1.1504512836300689 1.1504512836300689 1.1459003274700381
		 -0.34812337260278897 1.0914940076122137 0 -23.757000000000001 111.28049989053791
		 -32.934647172336582 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 0.93823137232814391 0.93823137232814391 0.93823137232814391 1.244705466804586
		 0.26459308883674237 -0.090991255287439121 0 10.054469213350941 120.12170991154657
		 -23.57795584624456 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1.1504512836300689 1.1504512836300689 1.1504512836300689 1.1459003274700381
		 0.34813206585270401 -1.0915025005742787 0 23.756721675208095 111.28049989053791
		 -32.934647172336582 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1.1504512836300689 1.1504512836300689 1.1504512836300689 1.1564430752952506
		 -0.19618811046875989 -1.491561718147266 0 22.975010354501588 95.915698432329066
		 -39.617184135723605 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 -0.082811832804412136 0 0 0 0
		 32.135873718117722 5.8166813066966068 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 5.5511151231257827e-017 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 31.210498550295696
		 0.79921919858328039 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.6251277788675935 1.0269846703864424e-015
		 -1.1102230246251565e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 -2.4492935982947069e-016 2.4651903288156619e-032
		 -3.0189874454731121e-048 0 13.406673670836703 2.8379300000000027 -4.587279198583281 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70710678118654768 0.70710678118654746 -4.3297802811774658e-017 4.3297802811774677e-017 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.1776600000000013 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 -14.371010000000004 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.7456999999999958 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.1639999999999944 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 -10.541399999999996 0
		 0.63792999999999989 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 0 0 -10.098399999999998 0
		 -4.4461400000000006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 0 0 0 -10.098399999999998 0
		 6.3617399999999975 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 1.3877787807814454e-016 4.4408920985006271e-016
		 -2.2204460492503131e-016 0 -3.0274000000000072 4.2272000000000034 -4.3875920000000006 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.77941431406419248 -0.27945364338140577 -0.089152031246363478 0.55359814266067575 1
		 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 0 0 0 -10.860662319596955 3.4455427155182932
		 1.2810540786809597 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70710678118654791 0 0 0.70710678118654713 1
		 1 1 yes;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[56]" -type "matrix" "xform" 1 1 1 0 0 0 0 13.406705572407525 -2.8379316444520555
		 -4.5872834399925821 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[57]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.1776579939948899 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[58]" -type "matrix" "xform" 1 1 1 0 0 0 0 14.371006599170974 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[59]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.7457447846044438 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[60]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.1639771155965484 -1.4210854715202004e-014
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[61]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.541352514341391 7.1054273576010019e-015
		 -0.63792707612132205 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[62]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[63]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.098429646003247 7.1054273576010019e-015
		 4.4461438978547427 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[64]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[65]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.098429646003247 7.1054273576010019e-015
		 -6.3617650968165123 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[66]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[67]" -type "matrix" "xform" 1 1 1 -3.1918911957973251e-016 2.2204460492503131e-016
		 5.551115123125779e-017 0 3.0273699830630392 -4.2272755726003197 4.3875960341519864 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.77941431406419248 -0.27945364338140577 -0.089152031246363575 0.55359814266067553 1
		 1 1 yes;
	setAttr ".xm[68]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[69]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[70]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[71]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[72]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[73]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[74]" -type "matrix" "xform" 1 1 1 0 0 0 0 17.962871777164487 3.9885587670794852e-015
		 -3.4969057897688387 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[75]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.7121863425076782 1.2683601596802738e-015
		 -4.4408920985006262e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[76]" -type "matrix" "xform" 1 1 1 0 0 0 0 47.698817248843966 1.059126503141083e-014
		 -30.177529034148051 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.50000000000000011 0.50000000000000011 -0.49999999999999989 0.50000000000000022 1
		 1 1 yes;
	setAttr ".xm[77]" -type "matrix" "xform" 1 1 1 0 0 0 0 25.346515559024198 -4.2632564145606011e-014
		 -6.3108872417680944e-030 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[78]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[79]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[80]" -type "matrix" "xform" 1 1 1 0 0 0 0 17.658422712651088 -23.733919261540599
		 3.8003977101128288 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 6.123233995736766e-017 1
		 1 1 yes;
	setAttr ".xm[81]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[82]" -type "matrix" "xform" 1 1 1 0 0 0 0 13.334208728490353 -18.30093246092839
		 -3.4367277334659132 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[83]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[84]" -type "matrix" "xform" 1 1 1 -2.4492935982947069e-016 2.4651903288156619e-032
		 -3.0189874454731121e-048 0 13.334215551164533 18.300899999999999 -3.4367234088144425 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70710678118654768 0.70710678118654746 -4.3297802811774658e-017 4.3297802811774677e-017 1
		 1 1 yes;
	setAttr ".xm[85]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[86]" -type "matrix" "xform" 1 1 1 -2.4492935982947064e-016 0 0 0 17.658415551164552
		 23.733899999999998 3.8003965911855579 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1 0 0 6.123233995736766e-017 1
		 1 1 yes;
	setAttr ".xm[87]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[88]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[89]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[90]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[91]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.4515865118637237 -4.2843923568725417
		 -0.85427581428765831 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0016217917469253595 -0.70710492134585612 -0.70710492134585645 0.0016217917469257593 1
		 1 1 yes;
	setAttr ".xm[92]" -type "matrix" "xform" 1 1 1 -1.4574281929919339e-029 2.8930843980872641e-029
		 -7.0400556450455767e-014 0 14.173701619549332 -9.7144514654701197e-017 3.1471939764381087e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99964844451368584 -0.026513909205706343 -1.6235087020825907e-018 6.1210813392315799e-017 1
		 1 1 yes;
	setAttr ".xm[93]" -type "matrix" "xform" 1 1 1 -1.1631185993266582e-015 6.8446217673121766e-016
		 5.5511151231257788e-016 0 10.740290638439189 -1.3988810110276972e-014 -2.2234486723701631e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654757 -0.70710678118654746 -5.2683562641688014e-009 5.2683562641688022e-009 1
		 1 1 yes;
	setAttr ".xm[94]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.5370833605872116 -1.9984014443252818e-015
		 2.4762931649141973e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.096382089401893009 0.70050730593534405 0.096382087965687951 0.70050731637371655 1
		 1 1 yes;
	setAttr ".xm[95]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[96]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.740290638439189 -1.3988810110276972e-014
		 -2.2234486723701631e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[97]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.4515985502956958 4.2843899999999984
		 -0.85427579858328051 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70710492134585645 0.0016217917469255399 0.0016217917469255408 0.70710492134585612 1
		 1 1 yes;
	setAttr ".xm[98]" -type "matrix" "xform" 1 1 1 -9.3149183545004418e-030 8.7368789571932306e-029
		 -2.8160293696109134e-014 0 -14.173649119639768 -2.2495176599246491e-007 -7.1054273576010019e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.99964844451368584 0.026513909205706784 -1.6235087020826177e-018 6.1210813392315799e-017 1
		 1 1 yes;
	setAttr ".xm[99]" -type "matrix" "xform" 1 1 1 9.1529495868131343e-015 5.4707909107262697e-016
		 2.2204460492503382e-016 0 -10.740331786177483 1.6816609381686831e-006 3.5527136788005009e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654757 -0.70710678118654746 -4.3297802811774658e-017 4.3297802811774664e-017 1
		 1 1 yes;
	setAttr ".xm[100]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.5370877933965428
		 1.3317687574954107e-007 -4.4408920985006262e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.096382089699340992 0.70050730377348625 0.096382087668240315 0.70050731853557424 1
		 1 1 yes;
	setAttr ".xm[101]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[102]" -type "matrix" "xform" 1 1 1 0 0 0 0 -10.740331786177483
		 1.6816609381686831e-006 3.5527136788005009e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[103]" -type "matrix" "xform" 1 1 1 -3.3306690738754696e-016 -4.4408920985006262e-016
		 5.5511151231257901e-017 0 -1.5009265346470606 -3.3327263940720289e-016 4.9207910424151207 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.12205287972792415 -0.69649342749958576 -0.69649342749958587 0.12205287972792453 1
		 1 1 yes;
	setAttr ".xm[104]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[105]" -type "matrix" "xform" 1 1 1 -1.2212453270876726e-015 0 0 0 -1.2254134192622104
		 -2.7209643854990925e-016 -6.5405545575947706 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.17346985577097304 0.68549851140523854 -0.68549851140523832 0.1734698557709731 1
		 1 1 yes;
	setAttr ".xm[106]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[107]" -type "matrix" "xform" 1 1 1 5.5511151231257827e-016 -8.3266726846886778e-017
		 1.3183898417423731e-016 0 -1.5009265346470642 -5.9245693960015915 2.0785176965580421 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.062984409011847237 -0.27512482390832443 -0.93515088417732795 0.21408437428547611 1
		 1 1 yes;
	setAttr ".xm[108]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[109]" -type "matrix" "xform" 1 1 1 -5.5511151231257821e-017 1.3877787807814472e-017
		 5.3429483060085659e-016 0 -1.1807290715328875 -5.5466382970932058 -3.9080937749902658 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.059534327038135111 0.24018457598892903 -0.95141514472698885 0.18323824858707172 1
		 1 1 yes;
	setAttr ".xm[110]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[111]" -type "matrix" "xform" 1 1 1 -1.0408340855860843e-017 -5.5511151231257827e-017
		 2.8888949165808538e-034 0 -1.5008985502956982 5.9245699999999974 2.0785208014167198 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.93515088417732806 0.21408437428547561 0.062984409011847459 0.27512482390832405 1
		 1 1 yes;
	setAttr ".xm[112]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[113]" -type "matrix" "xform" 1 1 1 -3.4694469519535988e-018 2.7755575615628914e-016
		 1.1102230246251565e-016 0 -1.1806985502956948 5.5466399999999991 -3.9080891985832804 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.95141514472698885 -0.18323824858707161 0.059534327038135243 0.24018457598892884 1
		 1 1 yes;
	setAttr ".xm[114]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[115]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[116]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[117]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[118]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 16.983928119530255
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[119]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.984357878099271 2.4390174053977078e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[120]" -type "matrix" "xform" 1 1 1 0 0 0 0 14.978669833771736 3.3259328255423272e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[121]" -type "matrix" "xform" 1 1 1 0 0 0 0 14.229736342083172 3.1041250330339586e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[122]" -type "matrix" "xform" 1 1 1 0 0 0 0 18.473692794985141 4.1574949694001292e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[123]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[124]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.3268570921418501 -10.021141488790853
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[125]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[126]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.3268570921418501 10.021000000000001
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[127]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[128]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[129]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.006387807170526 -15.556100258121347
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[130]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[131]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.00638780717054 15.556000000000003
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[132]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[133]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[134]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.6515227959964243 -11.67596428517756
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[135]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[136]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.6515227959964172 11.676000000000004
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[137]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[138]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[139]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.5527136788005009e-015
		 -8.2704776490755183 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[140]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[141]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.5527136788005009e-015
		 8.2699999999999978 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[142]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[143]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[144]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[145]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[146]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[147]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.2843923568725444 1.857670718941014
		 -0.51017068681779154 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[148]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[149]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[150]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.2843899999999948
		 1.8576699999999899 -0.51017100000000037 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[151]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[152]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[153]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[154]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 31.210498550295696
		 0.79921919858328039 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[155]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[156]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[157]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[158]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 0
		 0 1.5707963267948963 0 0 4.6251277788675935 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[159]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 0
		 0 1.5707963267948963 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[160]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[161]" -type "matrix" "xform" 1 1 1 1.5707963267948963 -0.34695529972358374
		 -1.5707963267948966 0 9.8607613152626476e-032 -1.5009265346470606 4.9207910424151207 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[162]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[163]" -type "matrix" "xform" 0.99999999999999989 1.0000000000000004
		 0.99999999999999989 0.52558816060183478 -0.23783559560151157 -1.184954603199744 0 5.9245693960015915
		 -1.5009265346470642 2.0785176965580421 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[164]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[165]" -type "matrix" "xform" 1 1 1 -0.4604019370809978 0.20269075027860378
		 -1.2379206892838224 0 5.5466382970932067 -1.1807290715328875 -3.9080937749902658 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[166]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[167]" -type "matrix" "xform" 1.0000000000000002 1 1 -1.5707963267948977
		 0.49570659215228896 -1.5707963267948977 0 4.9303806576313238e-032 -1.2254134192622104
		 -6.5405545575947706 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[168]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[169]" -type "matrix" "xform" 0.99999999999999989 1 1.0000000000000004 2.6811907165087958
		 -0.20269075027860406 1.2379206892838222 0 -5.54664 -1.1806985502956948 -3.9080891985832804 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[170]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[171]" -type "matrix" "xform" 0.99999999999999989 0.99999999999999989
		 1.0000000000000004 -2.6160044929879596 0.23783559560151157 1.1849546031997444 0 -5.9245699999999992
		 -1.5008985502956982 2.0785208014167198 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[172]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[173]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 4.6251277788675935
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[174]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[175]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[176]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 0
		 0 1.5707963267948963 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[177]" -type "matrix" "xform" 1 1 1 0 0 0 0 -9.8607613152626476e-031
		 17.962871777164494 -3.4969057897688387 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[178]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[179]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 0
		 0 1.5707963267948963 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[180]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 0
		 0 1.5707963267948963 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[181]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.9721522630525295e-031
		 5.7121863425076853 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[182]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[183]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 0
		 0 1.5707963267948963 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[184]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[185]" -type "matrix" "xform" 1.0000000000000004 1 1.0000000000000004 0
		 1.5707963267948963 0 0 -1.5777218104420236e-030 47.698817248843973 -30.177529034148051 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[186]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[187]" -type "matrix" "xform" 0.99999999999999978 1 0.99999999999999978 0
		 -2.2204460492503136e-016 0 0 25.346515559024184 -2.8421709430404007e-014 -8.4420855502945243e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[188]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[189]" -type "matrix" "xform" 1 1 1 0 0 0 0 18.300932460928397 13.334208728490346
		 -3.4367277334659132 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[190]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[191]" -type "matrix" "xform" 1 1 1 0 0 -1.570796326794897 0 23.733919261540606
		 17.658422712651081 3.8003977101128288 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[192]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[193]" -type "matrix" "xform" 1.0000000000000004 1.0000000000000004 1 3.1415926535897931
		 1.2325951644078308e-032 1.5707963267948963 0 -23.733899999999998 17.658415551164545
		 3.8003965911855579 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[194]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[195]" -type "matrix" "xform" 1 1 1 3.1415926535897931 0 0 0 -18.300899999999999
		 13.334215551164526 -3.4367234088144425 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[196]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[197]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[198]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.837931644452059 13.406705572407532
		 -4.5872834399925821 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[199]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[200]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.1776579939948917 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[201]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[202]" -type "matrix" "xform" 1 1 1 0 0 0 0 14.371006599170979 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[203]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[204]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.7457447846044474 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[205]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[206]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.1639771155965519 -1.4210854715202004e-014
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[207]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[208]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.541352514341398 7.1054273576010019e-015
		 -0.63792707612132205 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[209]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[210]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.098429646003254 7.1054273576010019e-015
		 4.4461438978547427 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[211]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[212]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.098429646003254 7.1054273576010019e-015
		 -6.3617650968165123 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[213]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[214]" -type "matrix" "xform" 1 1.0000000000000002 1.0000000000000002 1.9569987944578218
		 -0.17127344273262443 -0.5731284504612667 0 3.0273699830630392 -4.2272755726003197
		 4.3875960341519864 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[215]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[216]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[217]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.1776579939948917 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[218]" -type "matrix" "xform" 1 1 1 3.1415926535897931 0 0 0 -2.8379300000000001
		 13.40667367083671 -4.587279198583281 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[219]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[220]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.177660000000003 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[221]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[222]" -type "matrix" "xform" 1 1 1 0 0 0 0 -14.371010000000009
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[223]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[224]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.7457000000000029
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[225]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[226]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.1640000000000015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[227]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[228]" -type "matrix" "xform" 1 1 1 0 0 0 0 -10.541399999999996
		 0 0.63792999999999989 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[229]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[230]" -type "matrix" "xform" 1 1 1 0 0 0 0 -10.098399999999998
		 0 -4.4461400000000006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[231]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[232]" -type "matrix" "xform" 1 1 1 0 0 0 0 -10.098399999999998
		 0 6.3617399999999993 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[233]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[234]" -type "matrix" "xform" 0.99999999999999989 0.99999999999999978
		 0.99999999999999978 1.9569987944578218 -0.17127344273262446 -0.57312845046126637 0 -3.027399999999993
		 4.2272000000000034 -4.3875919999999988 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[235]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[236]" -type "matrix" "xform" 1 0.99999999999999956 1.0000000000000004 -1.570796326794897
		 -1.2325951644078304e-032 -1.5094937227365551e-048 0 -10.860662319596955 3.4455427155182932
		 1.2810540786809614 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[237]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[238]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.177660000000003 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[239]" -type "matrix" "xform" 1 1 1 0 0 0 0 -9.8607613152626476e-031
		 17.962871777164494 -3.4969057897688387 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[240]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[241]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.2843923568725444 1.857670718941014
		 -0.51017068681779154 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[242]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[243]" -type "matrix" "xform" 0.99999999999999978 1 0.99999999999999989 1.5707963118937212
		 -1.5223494172254162 -1.5707963267948828 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[244]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.2843899999999948
		 1.857670718941014 -0.51017068681779154 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[245]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[246]" -type "matrix" "xform" 1 0.99999999999999978 1 -1.5707963267948966
		 1.5223494172254151 1.5707963267948875 0 0 -7.1894102404712612e-007 -3.1318220883314041e-007 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[247]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.2843923568725435 12.585359538042862
		 13.492448067299771 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[248]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[249]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.2843899999999966
		 12.585359538042862 13.492448067299771 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[250]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[251]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[252]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[253]" -type "matrix" "xform" 1 1 1 0 0 1.5707963267948963 0 0 16.983928119530255
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[254]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[255]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.5527136788005009e-015
		 8.2699999999999978 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[256]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[257]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.5527136788005009e-015
		 -8.2704776490755183 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[258]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[259]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.984357878099274 2.4390174053977086e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[260]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[261]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.6515227959964207 11.676000000000002
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[262]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[263]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.6515227959964278 -11.675964285177562
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[264]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[265]" -type "matrix" "xform" 1 1 1 0 0 0 0 14.978669833771733 3.3259328255423279e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[266]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[267]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.006387807170533 15.556000000000001
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[268]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[269]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.006387807170526 -15.556100258121349
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[270]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[271]" -type "matrix" "xform" 1 1 1 0 0 0 0 14.229736342083172 3.104125033033957e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[272]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[273]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.3268570921418501 10.021000000000001
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[274]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[275]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.3268570921418501 -10.021141488790853
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[276]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[277]" -type "matrix" "xform" 0.99999999999999978 0.99999999999999978
		 1 0 0 -1.5707963267948963 0 18.473692794985141 4.1574949694001292e-015 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[278]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[279]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[280]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 167.0279958629398
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[281]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[282]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[283]" -type "matrix" "xform" 1 1 1 0 0 0 0 9.0155896384469507 49.242331901570822
		 -3.7880642414093018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[284]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[285]" -type "matrix" "xform" 1 1 1 3.1415926535897931 0 0 0 -9.0155900000000031
		 49.2423 -3.7880600000000006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[286]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[287]" -type "matrix" "xform" 1 1 1 0 0 0 0 -9.8607613152626476e-031
		 53.798498106327784 -2.6976865911855583 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[288]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[289]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[290]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[291]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 160 ".m";
	setAttr -s 292 ".p";
	setAttr ".bp" yes;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr -av ".unw" 1;
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -k on ".mbsof";
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 7 ".st";
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
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".tx";
select -ne :initialShadingGroup;
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
	setAttr -k on ".ro" yes;
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
	setAttr -k on ".ro" yes;
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -k off -cb on ".fbfm";
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
	setAttr -k off -cb on ".enpt";
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
select -ne :ikSystem;
connectAttr "Bip001_Root.s" "Bip001_Pelvis.is";
connectAttr "Bip001_Pelvis.s" "Bip001_Spine.is";
connectAttr "Bip001_Spine.s" "Bip001_Clavicle_R.is";
connectAttr "Bip001_Clavicle_R.s" "Bip001_UpperArm_R.is";
connectAttr "Bip001_UpperArm_R.s" "Bip001_Forearm_R.is";
connectAttr "Bip001_Forearm_R.s" "Bip001_Forearm1_R.is";
connectAttr "Bip001_Forearm1_R.s" "Bip001_Hand_R.is";
connectAttr "Bip001_Hand_R.s" "Bip001_Middle_R.is";
connectAttr "Bip001_Hand_R.s" "Bip001_Index_R.is";
connectAttr "Bip001_Hand_R.s" "Bip001_Pinky_R.is";
connectAttr "Bip001_Hand_R.s" "Bip001_Thumb_R.is";
connectAttr "Bip001_Hand_R.s" "Bip001_HandAnchor_L.is";
connectAttr "Bip001_Spine.s" "Bip001_Clavicle_L.is";
connectAttr "Bip001_Clavicle_L.s" "Bip001_UpperArm_L.is";
connectAttr "Bip001_UpperArm_L.s" "Bip001_Forearm_L.is";
connectAttr "Bip001_Forearm_L.s" "Bip001_Forearm1_L.is";
connectAttr "Bip001_Forearm1_L.s" "Bip001_Hand_L.is";
connectAttr "Bip001_Hand_L.s" "Bip001_Middle_L.is";
connectAttr "Bip001_Hand_L.s" "Bip001_Index_L.is";
connectAttr "Bip001_Hand_L.s" "Bip001_Pinky_L.is";
connectAttr "Bip001_Hand_L.s" "Bip001_Thumb_L.is";
connectAttr "Bip001_Spine.s" "Bip001_Neck.is";
connectAttr "Bip001_Neck.s" "Bip001_Head.is";
connectAttr "Bip001_Head.s" "Bip001_Ponytail.is";
connectAttr "Bip001_Ponytail.s" "Bip001_Ponytail1.is";
connectAttr "Bip001_Head.s" "Bip001_Hair_L.is";
connectAttr "Bip001_Head.s" "Bip001_Ear_L.is";
connectAttr "Bip001_Head.s" "Bip001_Ear_R.is";
connectAttr "Bip001_Head.s" "Bip001_Hair_R.is";
connectAttr "Bip001_Pelvis.s" "Bip001_Thigh_L.is";
connectAttr "Bip001_Thigh_L.s" "Bip001_Calf_L.is";
connectAttr "Bip001_Calf_L.s" "Bip001_Foot_L.is";
connectAttr "Bip001_Foot_L.s" "Bip001_ToeNub_L.is";
connectAttr "Bip001_Pelvis.s" "Bip001_Thigh_R.is";
connectAttr "Bip001_Thigh_R.s" "Bip001_Calf_R.is";
connectAttr "Bip001_Calf_R.s" "Bip001_Foot_R.is";
connectAttr "Bip001_Foot_R.s" "Bip001_ToeNub_R.is";
connectAttr "Bip001_Pelvis.s" "Bip001_SkirtFrt.is";
connectAttr "Bip001_Pelvis.s" "Bip001_SkirtBck.is";
connectAttr "Bip001_Pelvis.s" "Bip001_SkirtFrt_L.is";
connectAttr "Bip001_Pelvis.s" "Bip001_SkirtBck_L.is";
connectAttr "Bip001_Pelvis.s" "Bip001_SkirtFrt_R.is";
connectAttr "Bip001_Pelvis.s" "Bip001_SkirtBck_R.is";
connectAttr "Bip001_Root.s" "Bip001_SwordAnchor.is";
connectAttr "Bip001_SwordAnchor.s" "Bn_SwordRoot.is";
connectAttr "Bn_SwordRoot.s" "Bn_Sword.is";
connectAttr "Bn_Sword.s" "Bn_Sword1.is";
connectAttr "Bn_Sword1.s" "Bn_Sword2.is";
connectAttr "Bn_Sword2.s" "Bn_Sword3.is";
connectAttr "Bn_Sword3.s" "Bn_Sword4.is";
connectAttr "Bn_Sword3.s" "Bn_Sword3_L.is";
connectAttr "Bn_Sword3.s" "Bn_Sword3_R.is";
connectAttr "Bn_Sword2.s" "Bn_Sword2_L.is";
connectAttr "Bn_Sword2.s" "Bn_Sword2_R.is";
connectAttr "Bn_Sword1.s" "Bn_Sword1_L.is";
connectAttr "Bn_Sword1.s" "Bn_Sword1_R.is";
connectAttr "Bn_Sword.s" "Bn_Sword_L.is";
connectAttr "Bn_Sword.s" "Bn_Sword_R.is";
connectAttr "skinCluster20.og[0]" "Mesh_KnightShape.i";
connectAttr "groupId51.id" "Mesh_KnightShape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "Mesh_KnightShape.iog.og[0].gco";
connectAttr "groupId52.id" "Mesh_KnightShape.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "Mesh_KnightShape.iog.og[1].gco";
connectAttr "groupId53.id" "Mesh_KnightShape.iog.og[2].gid";
connectAttr "lambert4SG.mwc" "Mesh_KnightShape.iog.og[2].gco";
connectAttr "skinCluster20GroupId.id" "Mesh_KnightShape.iog.og[3].gid";
connectAttr "skinCluster20Set.mwc" "Mesh_KnightShape.iog.og[3].gco";
connectAttr "groupId55.id" "Mesh_KnightShape.iog.og[4].gid";
connectAttr "tweakSet20.mwc" "Mesh_KnightShape.iog.og[4].gco";
connectAttr "tweak20.vl[0].vt[0]" "Mesh_KnightShape.twl";
connectAttr "skinCluster18.og[0]" "Mesh_SwordShape.i";
connectAttr "groupId46.id" "Mesh_SwordShape.iog.og[0].gid";
connectAttr "lambert6SG.mwc" "Mesh_SwordShape.iog.og[0].gco";
connectAttr "skinCluster18GroupId.id" "Mesh_SwordShape.iog.og[1].gid";
connectAttr "skinCluster18Set.mwc" "Mesh_SwordShape.iog.og[1].gco";
connectAttr "groupId48.id" "Mesh_SwordShape.iog.og[2].gid";
connectAttr "tweakSet18.mwc" "Mesh_SwordShape.iog.og[2].gco";
connectAttr "tweak18.vl[0].vt[0]" "Mesh_SwordShape.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file1.oc" "M_Knight.c";
connectAttr "M_Knight.oc" "lambert2SG.ss";
connectAttr "Mesh_KnightShape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "groupId51.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "M_Knight.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "file2.oc" "M_Knight_Eyes.c";
connectAttr "M_Knight_Eyes.oc" "lambert3SG.ss";
connectAttr "groupId52.msg" "lambert3SG.gn" -na;
connectAttr "Mesh_KnightShape.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "M_Knight_Eyes.msg" "materialInfo2.m";
connectAttr "file2.msg" "materialInfo2.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "file3.oc" "M_Knight_Mouth.c";
connectAttr "M_Knight_Mouth.oc" "lambert4SG.ss";
connectAttr "groupId53.msg" "lambert4SG.gn" -na;
connectAttr "Mesh_KnightShape.iog.og[2]" "lambert4SG.dsm" -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "M_Knight_Mouth.msg" "materialInfo3.m";
connectAttr "file3.msg" "materialInfo3.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr "file4.oc" "M_FacePreview.c";
connectAttr "M_FacePreview.oc" "lambert5SG.ss";
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "M_FacePreview.msg" "materialInfo4.m";
connectAttr "file4.msg" "materialInfo4.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "place2dTexture4.c" "file4.c";
connectAttr "place2dTexture4.tf" "file4.tf";
connectAttr "place2dTexture4.rf" "file4.rf";
connectAttr "place2dTexture4.mu" "file4.mu";
connectAttr "place2dTexture4.mv" "file4.mv";
connectAttr "place2dTexture4.s" "file4.s";
connectAttr "place2dTexture4.wu" "file4.wu";
connectAttr "place2dTexture4.wv" "file4.wv";
connectAttr "place2dTexture4.re" "file4.re";
connectAttr "place2dTexture4.of" "file4.of";
connectAttr "place2dTexture4.r" "file4.ro";
connectAttr "place2dTexture4.n" "file4.n";
connectAttr "place2dTexture4.vt1" "file4.vt1";
connectAttr "place2dTexture4.vt2" "file4.vt2";
connectAttr "place2dTexture4.vt3" "file4.vt3";
connectAttr "place2dTexture4.vc1" "file4.vc1";
connectAttr "place2dTexture4.o" "file4.uv";
connectAttr "place2dTexture4.ofs" "file4.fs";
connectAttr "file5.oc" "M_Sword.c";
connectAttr "M_Sword.oc" "lambert6SG.ss";
connectAttr "Mesh_SwordShape.iog.og[0]" "lambert6SG.dsm" -na;
connectAttr "groupId46.msg" "lambert6SG.gn" -na;
connectAttr "lambert6SG.msg" "materialInfo5.sg";
connectAttr "M_Sword.msg" "materialInfo5.m";
connectAttr "file5.msg" "materialInfo5.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file5.ws";
connectAttr "place2dTexture5.c" "file5.c";
connectAttr "place2dTexture5.tf" "file5.tf";
connectAttr "place2dTexture5.rf" "file5.rf";
connectAttr "place2dTexture5.mu" "file5.mu";
connectAttr "place2dTexture5.mv" "file5.mv";
connectAttr "place2dTexture5.s" "file5.s";
connectAttr "place2dTexture5.wu" "file5.wu";
connectAttr "place2dTexture5.wv" "file5.wv";
connectAttr "place2dTexture5.re" "file5.re";
connectAttr "place2dTexture5.of" "file5.of";
connectAttr "place2dTexture5.r" "file5.ro";
connectAttr "place2dTexture5.n" "file5.n";
connectAttr "place2dTexture5.vt1" "file5.vt1";
connectAttr "place2dTexture5.vt2" "file5.vt2";
connectAttr "place2dTexture5.vt3" "file5.vt3";
connectAttr "place2dTexture5.vc1" "file5.vc1";
connectAttr "place2dTexture5.o" "file5.uv";
connectAttr "place2dTexture5.ofs" "file5.fs";
connectAttr "layerManager.dli[2]" "Bip001_controls_layer.id";
connectAttr "layerManager.dli[3]" "Bip001_skel_layer.id";
connectAttr "layerManager.dli[4]" "Bip001_iks_layer.id";
connectAttr "layerManager.dli[5]" "Bip001_mesh_layer.id";
connectAttr "skinCluster18GroupParts.og" "skinCluster18.ip[0].ig";
connectAttr "skinCluster18GroupId.id" "skinCluster18.ip[0].gi";
connectAttr "Bn_Sword.wm" "skinCluster18.ma[0]";
connectAttr "Bn_Sword1.wm" "skinCluster18.ma[1]";
connectAttr "Bn_Sword2.wm" "skinCluster18.ma[2]";
connectAttr "Bn_Sword3.wm" "skinCluster18.ma[3]";
connectAttr "Bn_Sword4.wm" "skinCluster18.ma[4]";
connectAttr "Bn_Sword3_L.wm" "skinCluster18.ma[5]";
connectAttr "Bn_Sword3_R.wm" "skinCluster18.ma[6]";
connectAttr "Bn_Sword2_L.wm" "skinCluster18.ma[7]";
connectAttr "Bn_Sword2_R.wm" "skinCluster18.ma[8]";
connectAttr "Bn_Sword1_L.wm" "skinCluster18.ma[9]";
connectAttr "Bn_Sword1_R.wm" "skinCluster18.ma[10]";
connectAttr "Bn_Sword_L.wm" "skinCluster18.ma[11]";
connectAttr "Bn_Sword_R.wm" "skinCluster18.ma[12]";
connectAttr "Bn_SwordRoot.wm" "skinCluster18.ma[13]";
connectAttr "Bn_Sword.liw" "skinCluster18.lw[0]";
connectAttr "Bn_Sword1.liw" "skinCluster18.lw[1]";
connectAttr "Bn_Sword2.liw" "skinCluster18.lw[2]";
connectAttr "Bn_Sword3.liw" "skinCluster18.lw[3]";
connectAttr "Bn_Sword4.liw" "skinCluster18.lw[4]";
connectAttr "Bn_Sword3_L.liw" "skinCluster18.lw[5]";
connectAttr "Bn_Sword3_R.liw" "skinCluster18.lw[6]";
connectAttr "Bn_Sword2_L.liw" "skinCluster18.lw[7]";
connectAttr "Bn_Sword2_R.liw" "skinCluster18.lw[8]";
connectAttr "Bn_Sword1_L.liw" "skinCluster18.lw[9]";
connectAttr "Bn_Sword1_R.liw" "skinCluster18.lw[10]";
connectAttr "Bn_Sword_L.liw" "skinCluster18.lw[11]";
connectAttr "Bn_Sword_R.liw" "skinCluster18.lw[12]";
connectAttr "Bn_SwordRoot.liw" "skinCluster18.lw[13]";
connectAttr "Bn_Sword.obcc" "skinCluster18.ifcl[0]";
connectAttr "Bn_Sword1.obcc" "skinCluster18.ifcl[1]";
connectAttr "Bn_Sword2.obcc" "skinCluster18.ifcl[2]";
connectAttr "Bn_Sword3.obcc" "skinCluster18.ifcl[3]";
connectAttr "Bn_Sword4.obcc" "skinCluster18.ifcl[4]";
connectAttr "Bn_Sword3_L.obcc" "skinCluster18.ifcl[5]";
connectAttr "Bn_Sword3_R.obcc" "skinCluster18.ifcl[6]";
connectAttr "Bn_Sword2_L.obcc" "skinCluster18.ifcl[7]";
connectAttr "Bn_Sword2_R.obcc" "skinCluster18.ifcl[8]";
connectAttr "Bn_Sword1_L.obcc" "skinCluster18.ifcl[9]";
connectAttr "Bn_Sword1_R.obcc" "skinCluster18.ifcl[10]";
connectAttr "Bn_Sword_L.obcc" "skinCluster18.ifcl[11]";
connectAttr "Bn_Sword_R.obcc" "skinCluster18.ifcl[12]";
connectAttr "Bn_SwordRoot.obcc" "skinCluster18.ifcl[13]";
connectAttr "Bn_Sword1_L.msg" "skinCluster18.ptt";
connectAttr "Mesh_SwordShapeOrig.w" "groupParts39.ig";
connectAttr "groupId46.id" "groupParts39.gi";
connectAttr "groupParts41.og" "tweak18.ip[0].ig";
connectAttr "groupId48.id" "tweak18.ip[0].gi";
connectAttr "skinCluster18GroupId.msg" "skinCluster18Set.gn" -na;
connectAttr "Mesh_SwordShape.iog.og[1]" "skinCluster18Set.dsm" -na;
connectAttr "skinCluster18.msg" "skinCluster18Set.ub[0]";
connectAttr "tweak18.og[0]" "skinCluster18GroupParts.ig";
connectAttr "skinCluster18GroupId.id" "skinCluster18GroupParts.gi";
connectAttr "groupId48.msg" "tweakSet18.gn" -na;
connectAttr "Mesh_SwordShape.iog.og[2]" "tweakSet18.dsm" -na;
connectAttr "tweak18.msg" "tweakSet18.ub[0]";
connectAttr "groupParts39.og" "groupParts41.ig";
connectAttr "groupId48.id" "groupParts41.gi";
connectAttr "skinCluster20GroupParts.og" "skinCluster20.ip[0].ig";
connectAttr "skinCluster20GroupId.id" "skinCluster20.ip[0].gi";
connectAttr "Bip001_Pelvis.wm" "skinCluster20.ma[0]";
connectAttr "Bip001_Spine.wm" "skinCluster20.ma[1]";
connectAttr "Bip001_Clavicle_R.wm" "skinCluster20.ma[2]";
connectAttr "Bip001_UpperArm_R.wm" "skinCluster20.ma[3]";
connectAttr "Bip001_Forearm_R.wm" "skinCluster20.ma[4]";
connectAttr "Bip001_Forearm1_R.wm" "skinCluster20.ma[5]";
connectAttr "Bip001_Hand_R.wm" "skinCluster20.ma[6]";
connectAttr "Bip001_Middle_R.wm" "skinCluster20.ma[7]";
connectAttr "Bip001_Index_R.wm" "skinCluster20.ma[8]";
connectAttr "Bip001_Pinky_R.wm" "skinCluster20.ma[9]";
connectAttr "Bip001_Thumb_R.wm" "skinCluster20.ma[10]";
connectAttr "Bip001_HandAnchor_L.wm" "skinCluster20.ma[11]";
connectAttr "Bip001_Clavicle_L.wm" "skinCluster20.ma[12]";
connectAttr "Bip001_UpperArm_L.wm" "skinCluster20.ma[13]";
connectAttr "Bip001_Forearm_L.wm" "skinCluster20.ma[14]";
connectAttr "Bip001_Forearm1_L.wm" "skinCluster20.ma[15]";
connectAttr "Bip001_Hand_L.wm" "skinCluster20.ma[16]";
connectAttr "Bip001_Middle_L.wm" "skinCluster20.ma[17]";
connectAttr "Bip001_Index_L.wm" "skinCluster20.ma[18]";
connectAttr "Bip001_Pinky_L.wm" "skinCluster20.ma[19]";
connectAttr "Bip001_Thumb_L.wm" "skinCluster20.ma[20]";
connectAttr "Bip001_Neck.wm" "skinCluster20.ma[21]";
connectAttr "Bip001_Head.wm" "skinCluster20.ma[22]";
connectAttr "Bip001_Ponytail.wm" "skinCluster20.ma[23]";
connectAttr "Bip001_Ponytail1.wm" "skinCluster20.ma[24]";
connectAttr "Bip001_Hair_L.wm" "skinCluster20.ma[25]";
connectAttr "Bip001_Ear_L.wm" "skinCluster20.ma[26]";
connectAttr "Bip001_Ear_R.wm" "skinCluster20.ma[27]";
connectAttr "Bip001_Hair_R.wm" "skinCluster20.ma[28]";
connectAttr "Bip001_Thigh_L.wm" "skinCluster20.ma[29]";
connectAttr "Bip001_Calf_L.wm" "skinCluster20.ma[30]";
connectAttr "Bip001_Foot_L.wm" "skinCluster20.ma[31]";
connectAttr "Bip001_ToeNub_L.wm" "skinCluster20.ma[32]";
connectAttr "Bip001_Thigh_R.wm" "skinCluster20.ma[33]";
connectAttr "Bip001_Calf_R.wm" "skinCluster20.ma[34]";
connectAttr "Bip001_Foot_R.wm" "skinCluster20.ma[35]";
connectAttr "Bip001_ToeNub_R.wm" "skinCluster20.ma[36]";
connectAttr "Bip001_SkirtFrt.wm" "skinCluster20.ma[37]";
connectAttr "Bip001_SkirtBck.wm" "skinCluster20.ma[38]";
connectAttr "Bip001_SkirtFrt_L.wm" "skinCluster20.ma[39]";
connectAttr "Bip001_SkirtBck_L.wm" "skinCluster20.ma[40]";
connectAttr "Bip001_SkirtFrt_R.wm" "skinCluster20.ma[41]";
connectAttr "Bip001_SkirtBck_R.wm" "skinCluster20.ma[42]";
connectAttr "Bip001_Pelvis.liw" "skinCluster20.lw[0]";
connectAttr "Bip001_Spine.liw" "skinCluster20.lw[1]";
connectAttr "Bip001_Clavicle_R.liw" "skinCluster20.lw[2]";
connectAttr "Bip001_UpperArm_R.liw" "skinCluster20.lw[3]";
connectAttr "Bip001_Forearm_R.liw" "skinCluster20.lw[4]";
connectAttr "Bip001_Forearm1_R.liw" "skinCluster20.lw[5]";
connectAttr "Bip001_Hand_R.liw" "skinCluster20.lw[6]";
connectAttr "Bip001_Middle_R.liw" "skinCluster20.lw[7]";
connectAttr "Bip001_Index_R.liw" "skinCluster20.lw[8]";
connectAttr "Bip001_Pinky_R.liw" "skinCluster20.lw[9]";
connectAttr "Bip001_Thumb_R.liw" "skinCluster20.lw[10]";
connectAttr "Bip001_HandAnchor_L.liw" "skinCluster20.lw[11]";
connectAttr "Bip001_Clavicle_L.liw" "skinCluster20.lw[12]";
connectAttr "Bip001_UpperArm_L.liw" "skinCluster20.lw[13]";
connectAttr "Bip001_Forearm_L.liw" "skinCluster20.lw[14]";
connectAttr "Bip001_Forearm1_L.liw" "skinCluster20.lw[15]";
connectAttr "Bip001_Hand_L.liw" "skinCluster20.lw[16]";
connectAttr "Bip001_Middle_L.liw" "skinCluster20.lw[17]";
connectAttr "Bip001_Index_L.liw" "skinCluster20.lw[18]";
connectAttr "Bip001_Pinky_L.liw" "skinCluster20.lw[19]";
connectAttr "Bip001_Thumb_L.liw" "skinCluster20.lw[20]";
connectAttr "Bip001_Neck.liw" "skinCluster20.lw[21]";
connectAttr "Bip001_Head.liw" "skinCluster20.lw[22]";
connectAttr "Bip001_Ponytail.liw" "skinCluster20.lw[23]";
connectAttr "Bip001_Ponytail1.liw" "skinCluster20.lw[24]";
connectAttr "Bip001_Hair_L.liw" "skinCluster20.lw[25]";
connectAttr "Bip001_Ear_L.liw" "skinCluster20.lw[26]";
connectAttr "Bip001_Ear_R.liw" "skinCluster20.lw[27]";
connectAttr "Bip001_Hair_R.liw" "skinCluster20.lw[28]";
connectAttr "Bip001_Thigh_L.liw" "skinCluster20.lw[29]";
connectAttr "Bip001_Calf_L.liw" "skinCluster20.lw[30]";
connectAttr "Bip001_Foot_L.liw" "skinCluster20.lw[31]";
connectAttr "Bip001_ToeNub_L.liw" "skinCluster20.lw[32]";
connectAttr "Bip001_Thigh_R.liw" "skinCluster20.lw[33]";
connectAttr "Bip001_Calf_R.liw" "skinCluster20.lw[34]";
connectAttr "Bip001_Foot_R.liw" "skinCluster20.lw[35]";
connectAttr "Bip001_ToeNub_R.liw" "skinCluster20.lw[36]";
connectAttr "Bip001_SkirtFrt.liw" "skinCluster20.lw[37]";
connectAttr "Bip001_SkirtBck.liw" "skinCluster20.lw[38]";
connectAttr "Bip001_SkirtFrt_L.liw" "skinCluster20.lw[39]";
connectAttr "Bip001_SkirtBck_L.liw" "skinCluster20.lw[40]";
connectAttr "Bip001_SkirtFrt_R.liw" "skinCluster20.lw[41]";
connectAttr "Bip001_SkirtBck_R.liw" "skinCluster20.lw[42]";
connectAttr "Bip001_Pelvis.obcc" "skinCluster20.ifcl[0]";
connectAttr "Bip001_Spine.obcc" "skinCluster20.ifcl[1]";
connectAttr "Bip001_Clavicle_R.obcc" "skinCluster20.ifcl[2]";
connectAttr "Bip001_UpperArm_R.obcc" "skinCluster20.ifcl[3]";
connectAttr "Bip001_Forearm_R.obcc" "skinCluster20.ifcl[4]";
connectAttr "Bip001_Forearm1_R.obcc" "skinCluster20.ifcl[5]";
connectAttr "Bip001_Hand_R.obcc" "skinCluster20.ifcl[6]";
connectAttr "Bip001_Middle_R.obcc" "skinCluster20.ifcl[7]";
connectAttr "Bip001_Index_R.obcc" "skinCluster20.ifcl[8]";
connectAttr "Bip001_Pinky_R.obcc" "skinCluster20.ifcl[9]";
connectAttr "Bip001_Thumb_R.obcc" "skinCluster20.ifcl[10]";
connectAttr "Bip001_HandAnchor_L.obcc" "skinCluster20.ifcl[11]";
connectAttr "Bip001_Clavicle_L.obcc" "skinCluster20.ifcl[12]";
connectAttr "Bip001_UpperArm_L.obcc" "skinCluster20.ifcl[13]";
connectAttr "Bip001_Forearm_L.obcc" "skinCluster20.ifcl[14]";
connectAttr "Bip001_Forearm1_L.obcc" "skinCluster20.ifcl[15]";
connectAttr "Bip001_Hand_L.obcc" "skinCluster20.ifcl[16]";
connectAttr "Bip001_Middle_L.obcc" "skinCluster20.ifcl[17]";
connectAttr "Bip001_Index_L.obcc" "skinCluster20.ifcl[18]";
connectAttr "Bip001_Pinky_L.obcc" "skinCluster20.ifcl[19]";
connectAttr "Bip001_Thumb_L.obcc" "skinCluster20.ifcl[20]";
connectAttr "Bip001_Neck.obcc" "skinCluster20.ifcl[21]";
connectAttr "Bip001_Head.obcc" "skinCluster20.ifcl[22]";
connectAttr "Bip001_Ponytail.obcc" "skinCluster20.ifcl[23]";
connectAttr "Bip001_Ponytail1.obcc" "skinCluster20.ifcl[24]";
connectAttr "Bip001_Hair_L.obcc" "skinCluster20.ifcl[25]";
connectAttr "Bip001_Ear_L.obcc" "skinCluster20.ifcl[26]";
connectAttr "Bip001_Ear_R.obcc" "skinCluster20.ifcl[27]";
connectAttr "Bip001_Hair_R.obcc" "skinCluster20.ifcl[28]";
connectAttr "Bip001_Thigh_L.obcc" "skinCluster20.ifcl[29]";
connectAttr "Bip001_Calf_L.obcc" "skinCluster20.ifcl[30]";
connectAttr "Bip001_Foot_L.obcc" "skinCluster20.ifcl[31]";
connectAttr "Bip001_ToeNub_L.obcc" "skinCluster20.ifcl[32]";
connectAttr "Bip001_Thigh_R.obcc" "skinCluster20.ifcl[33]";
connectAttr "Bip001_Calf_R.obcc" "skinCluster20.ifcl[34]";
connectAttr "Bip001_Foot_R.obcc" "skinCluster20.ifcl[35]";
connectAttr "Bip001_ToeNub_R.obcc" "skinCluster20.ifcl[36]";
connectAttr "Bip001_SkirtFrt.obcc" "skinCluster20.ifcl[37]";
connectAttr "Bip001_SkirtBck.obcc" "skinCluster20.ifcl[38]";
connectAttr "Bip001_SkirtFrt_L.obcc" "skinCluster20.ifcl[39]";
connectAttr "Bip001_SkirtBck_L.obcc" "skinCluster20.ifcl[40]";
connectAttr "Bip001_SkirtFrt_R.obcc" "skinCluster20.ifcl[41]";
connectAttr "Bip001_SkirtBck_R.obcc" "skinCluster20.ifcl[42]";
connectAttr "Mesh_KnightShapeOrig.w" "groupParts44.ig";
connectAttr "groupId51.id" "groupParts44.gi";
connectAttr "groupParts44.og" "groupParts45.ig";
connectAttr "groupId52.id" "groupParts45.gi";
connectAttr "groupParts45.og" "groupParts46.ig";
connectAttr "groupId53.id" "groupParts46.gi";
connectAttr "groupParts48.og" "tweak20.ip[0].ig";
connectAttr "groupId55.id" "tweak20.ip[0].gi";
connectAttr "skinCluster20GroupId.msg" "skinCluster20Set.gn" -na;
connectAttr "Mesh_KnightShape.iog.og[3]" "skinCluster20Set.dsm" -na;
connectAttr "skinCluster20.msg" "skinCluster20Set.ub[0]";
connectAttr "tweak20.og[0]" "skinCluster20GroupParts.ig";
connectAttr "skinCluster20GroupId.id" "skinCluster20GroupParts.gi";
connectAttr "groupId55.msg" "tweakSet20.gn" -na;
connectAttr "Mesh_KnightShape.iog.og[4]" "tweakSet20.dsm" -na;
connectAttr "tweak20.msg" "tweakSet20.ub[0]";
connectAttr "groupParts46.og" "groupParts48.ig";
connectAttr "groupId55.id" "groupParts48.gi";
connectAttr "Mesh_Knight.msg" "bindPose_Knight.m[20]";
connectAttr "Mesh_Sword.msg" "bindPose_Knight.m[22]";
connectAttr "Bip001_Root.msg" "bindPose_Knight.m[34]";
connectAttr "Bip001_Pelvis.msg" "bindPose_Knight.m[35]";
connectAttr "Bip001_Spine.msg" "bindPose_Knight.m[36]";
connectAttr "Bip001_Clavicle_R.msg" "bindPose_Knight.m[37]";
connectAttr "Bip001_UpperArm_R.msg" "bindPose_Knight.m[38]";
connectAttr "Bip001_Forearm_R.msg" "bindPose_Knight.m[39]";
connectAttr "Bip001_Forearm1_R.msg" "bindPose_Knight.m[40]";
connectAttr "Bip001_Hand_R.msg" "bindPose_Knight.m[41]";
connectAttr "Bip001_Middle_R.msg" "bindPose_Knight.m[42]";
connectAttr "Bip001_Index_R.msg" "bindPose_Knight.m[44]";
connectAttr "Bip001_Pinky_R.msg" "bindPose_Knight.m[46]";
connectAttr "Bip001_Thumb_R.msg" "bindPose_Knight.m[48]";
connectAttr "Bip001_HandAnchor_L.msg" "bindPose_Knight.m[51]";
connectAttr "Bip001_Clavicle_L.msg" "bindPose_Knight.m[56]";
connectAttr "Bip001_UpperArm_L.msg" "bindPose_Knight.m[57]";
connectAttr "Bip001_Forearm_L.msg" "bindPose_Knight.m[58]";
connectAttr "Bip001_Forearm1_L.msg" "bindPose_Knight.m[59]";
connectAttr "Bip001_Hand_L.msg" "bindPose_Knight.m[60]";
connectAttr "Bip001_Middle_L.msg" "bindPose_Knight.m[61]";
connectAttr "Bip001_Index_L.msg" "bindPose_Knight.m[63]";
connectAttr "Bip001_Pinky_L.msg" "bindPose_Knight.m[65]";
connectAttr "Bip001_Thumb_L.msg" "bindPose_Knight.m[67]";
connectAttr "Bip001_Neck.msg" "bindPose_Knight.m[74]";
connectAttr "Bip001_Head.msg" "bindPose_Knight.m[75]";
connectAttr "Bip001_Ponytail.msg" "bindPose_Knight.m[76]";
connectAttr "Bip001_Ponytail1.msg" "bindPose_Knight.m[77]";
connectAttr "Bip001_Hair_L.msg" "bindPose_Knight.m[80]";
connectAttr "Bip001_Ear_L.msg" "bindPose_Knight.m[82]";
connectAttr "Bip001_Ear_R.msg" "bindPose_Knight.m[84]";
connectAttr "Bip001_Hair_R.msg" "bindPose_Knight.m[86]";
connectAttr "Bip001_Thigh_L.msg" "bindPose_Knight.m[91]";
connectAttr "Bip001_Calf_L.msg" "bindPose_Knight.m[92]";
connectAttr "Bip001_Foot_L.msg" "bindPose_Knight.m[93]";
connectAttr "Bip001_ToeNub_L.msg" "bindPose_Knight.m[94]";
connectAttr "Bip001_Thigh_R.msg" "bindPose_Knight.m[97]";
connectAttr "Bip001_Calf_R.msg" "bindPose_Knight.m[98]";
connectAttr "Bip001_Foot_R.msg" "bindPose_Knight.m[99]";
connectAttr "Bip001_ToeNub_R.msg" "bindPose_Knight.m[100]";
connectAttr "Bip001_SkirtFrt.msg" "bindPose_Knight.m[103]";
connectAttr "Bip001_SkirtBck.msg" "bindPose_Knight.m[105]";
connectAttr "Bip001_SkirtFrt_L.msg" "bindPose_Knight.m[107]";
connectAttr "Bip001_SkirtBck_L.msg" "bindPose_Knight.m[109]";
connectAttr "Bip001_SkirtFrt_R.msg" "bindPose_Knight.m[111]";
connectAttr "Bip001_SkirtBck_R.msg" "bindPose_Knight.m[113]";
connectAttr "Bip001_SwordAnchor.msg" "bindPose_Knight.m[116]";
connectAttr "Bn_SwordRoot.msg" "bindPose_Knight.m[117]";
connectAttr "Bn_Sword.msg" "bindPose_Knight.m[118]";
connectAttr "Bn_Sword1.msg" "bindPose_Knight.m[119]";
connectAttr "Bn_Sword2.msg" "bindPose_Knight.m[120]";
connectAttr "Bn_Sword3.msg" "bindPose_Knight.m[121]";
connectAttr "Bn_Sword4.msg" "bindPose_Knight.m[122]";
connectAttr "Bn_Sword3_L.msg" "bindPose_Knight.m[124]";
connectAttr "Bn_Sword3_R.msg" "bindPose_Knight.m[126]";
connectAttr "Bn_Sword2_L.msg" "bindPose_Knight.m[129]";
connectAttr "Bn_Sword2_R.msg" "bindPose_Knight.m[131]";
connectAttr "Bn_Sword1_L.msg" "bindPose_Knight.m[134]";
connectAttr "Bn_Sword1_R.msg" "bindPose_Knight.m[136]";
connectAttr "Bn_Sword_L.msg" "bindPose_Knight.m[139]";
connectAttr "Bn_Sword_R.msg" "bindPose_Knight.m[141]";
connectAttr "bindPose_Knight.w" "bindPose_Knight.p[0]";
connectAttr "bindPose_Knight.m[0]" "bindPose_Knight.p[1]";
connectAttr "bindPose_Knight.m[1]" "bindPose_Knight.p[2]";
connectAttr "bindPose_Knight.m[2]" "bindPose_Knight.p[3]";
connectAttr "bindPose_Knight.m[2]" "bindPose_Knight.p[4]";
connectAttr "bindPose_Knight.m[2]" "bindPose_Knight.p[5]";
connectAttr "bindPose_Knight.m[2]" "bindPose_Knight.p[6]";
connectAttr "bindPose_Knight.m[2]" "bindPose_Knight.p[7]";
connectAttr "bindPose_Knight.m[2]" "bindPose_Knight.p[8]";
connectAttr "bindPose_Knight.m[2]" "bindPose_Knight.p[9]";
connectAttr "bindPose_Knight.m[2]" "bindPose_Knight.p[10]";
connectAttr "bindPose_Knight.m[2]" "bindPose_Knight.p[11]";
connectAttr "bindPose_Knight.m[2]" "bindPose_Knight.p[12]";
connectAttr "bindPose_Knight.m[2]" "bindPose_Knight.p[13]";
connectAttr "bindPose_Knight.m[2]" "bindPose_Knight.p[14]";
connectAttr "bindPose_Knight.m[2]" "bindPose_Knight.p[15]";
connectAttr "bindPose_Knight.m[2]" "bindPose_Knight.p[16]";
connectAttr "bindPose_Knight.m[2]" "bindPose_Knight.p[17]";
connectAttr "bindPose_Knight.m[2]" "bindPose_Knight.p[18]";
connectAttr "bindPose_Knight.m[2]" "bindPose_Knight.p[19]";
connectAttr "bindPose_Knight.m[1]" "bindPose_Knight.p[20]";
connectAttr "bindPose_Knight.m[1]" "bindPose_Knight.p[21]";
connectAttr "bindPose_Knight.m[1]" "bindPose_Knight.p[22]";
connectAttr "bindPose_Knight.m[0]" "bindPose_Knight.p[23]";
connectAttr "bindPose_Knight.m[23]" "bindPose_Knight.p[24]";
connectAttr "bindPose_Knight.m[0]" "bindPose_Knight.p[25]";
connectAttr "bindPose_Knight.m[25]" "bindPose_Knight.p[26]";
connectAttr "bindPose_Knight.m[26]" "bindPose_Knight.p[27]";
connectAttr "bindPose_Knight.m[27]" "bindPose_Knight.p[28]";
connectAttr "bindPose_Knight.m[28]" "bindPose_Knight.p[29]";
connectAttr "bindPose_Knight.m[0]" "bindPose_Knight.p[30]";
connectAttr "bindPose_Knight.m[30]" "bindPose_Knight.p[31]";
connectAttr "bindPose_Knight.m[31]" "bindPose_Knight.p[32]";
connectAttr "bindPose_Knight.m[32]" "bindPose_Knight.p[33]";
connectAttr "bindPose_Knight.m[31]" "bindPose_Knight.p[34]";
connectAttr "bindPose_Knight.m[34]" "bindPose_Knight.p[35]";
connectAttr "bindPose_Knight.m[35]" "bindPose_Knight.p[36]";
connectAttr "bindPose_Knight.m[36]" "bindPose_Knight.p[37]";
connectAttr "bindPose_Knight.m[37]" "bindPose_Knight.p[38]";
connectAttr "bindPose_Knight.m[38]" "bindPose_Knight.p[39]";
connectAttr "bindPose_Knight.m[39]" "bindPose_Knight.p[40]";
connectAttr "bindPose_Knight.m[40]" "bindPose_Knight.p[41]";
connectAttr "bindPose_Knight.m[41]" "bindPose_Knight.p[42]";
connectAttr "bindPose_Knight.m[42]" "bindPose_Knight.p[43]";
connectAttr "bindPose_Knight.m[41]" "bindPose_Knight.p[44]";
connectAttr "bindPose_Knight.m[44]" "bindPose_Knight.p[45]";
connectAttr "bindPose_Knight.m[41]" "bindPose_Knight.p[46]";
connectAttr "bindPose_Knight.m[46]" "bindPose_Knight.p[47]";
connectAttr "bindPose_Knight.m[41]" "bindPose_Knight.p[48]";
connectAttr "bindPose_Knight.m[48]" "bindPose_Knight.p[49]";
connectAttr "bindPose_Knight.m[41]" "bindPose_Knight.p[50]";
connectAttr "bindPose_Knight.m[41]" "bindPose_Knight.p[51]";
connectAttr "bindPose_Knight.m[40]" "bindPose_Knight.p[52]";
connectAttr "bindPose_Knight.m[39]" "bindPose_Knight.p[53]";
connectAttr "bindPose_Knight.m[38]" "bindPose_Knight.p[54]";
connectAttr "bindPose_Knight.m[37]" "bindPose_Knight.p[55]";
connectAttr "bindPose_Knight.m[36]" "bindPose_Knight.p[56]";
connectAttr "bindPose_Knight.m[56]" "bindPose_Knight.p[57]";
connectAttr "bindPose_Knight.m[57]" "bindPose_Knight.p[58]";
connectAttr "bindPose_Knight.m[58]" "bindPose_Knight.p[59]";
connectAttr "bindPose_Knight.m[59]" "bindPose_Knight.p[60]";
connectAttr "bindPose_Knight.m[60]" "bindPose_Knight.p[61]";
connectAttr "bindPose_Knight.m[61]" "bindPose_Knight.p[62]";
connectAttr "bindPose_Knight.m[60]" "bindPose_Knight.p[63]";
connectAttr "bindPose_Knight.m[63]" "bindPose_Knight.p[64]";
connectAttr "bindPose_Knight.m[60]" "bindPose_Knight.p[65]";
connectAttr "bindPose_Knight.m[65]" "bindPose_Knight.p[66]";
connectAttr "bindPose_Knight.m[60]" "bindPose_Knight.p[67]";
connectAttr "bindPose_Knight.m[67]" "bindPose_Knight.p[68]";
connectAttr "bindPose_Knight.m[60]" "bindPose_Knight.p[69]";
connectAttr "bindPose_Knight.m[59]" "bindPose_Knight.p[70]";
connectAttr "bindPose_Knight.m[58]" "bindPose_Knight.p[71]";
connectAttr "bindPose_Knight.m[57]" "bindPose_Knight.p[72]";
connectAttr "bindPose_Knight.m[56]" "bindPose_Knight.p[73]";
connectAttr "bindPose_Knight.m[36]" "bindPose_Knight.p[74]";
connectAttr "bindPose_Knight.m[74]" "bindPose_Knight.p[75]";
connectAttr "bindPose_Knight.m[75]" "bindPose_Knight.p[76]";
connectAttr "bindPose_Knight.m[76]" "bindPose_Knight.p[77]";
connectAttr "bindPose_Knight.m[77]" "bindPose_Knight.p[78]";
connectAttr "bindPose_Knight.m[76]" "bindPose_Knight.p[79]";
connectAttr "bindPose_Knight.m[75]" "bindPose_Knight.p[80]";
connectAttr "bindPose_Knight.m[80]" "bindPose_Knight.p[81]";
connectAttr "bindPose_Knight.m[75]" "bindPose_Knight.p[82]";
connectAttr "bindPose_Knight.m[82]" "bindPose_Knight.p[83]";
connectAttr "bindPose_Knight.m[75]" "bindPose_Knight.p[84]";
connectAttr "bindPose_Knight.m[84]" "bindPose_Knight.p[85]";
connectAttr "bindPose_Knight.m[75]" "bindPose_Knight.p[86]";
connectAttr "bindPose_Knight.m[86]" "bindPose_Knight.p[87]";
connectAttr "bindPose_Knight.m[75]" "bindPose_Knight.p[88]";
connectAttr "bindPose_Knight.m[74]" "bindPose_Knight.p[89]";
connectAttr "bindPose_Knight.m[36]" "bindPose_Knight.p[90]";
connectAttr "bindPose_Knight.m[35]" "bindPose_Knight.p[91]";
connectAttr "bindPose_Knight.m[91]" "bindPose_Knight.p[92]";
connectAttr "bindPose_Knight.m[92]" "bindPose_Knight.p[93]";
connectAttr "bindPose_Knight.m[93]" "bindPose_Knight.p[94]";
connectAttr "bindPose_Knight.m[93]" "bindPose_Knight.p[95]";
connectAttr "bindPose_Knight.m[92]" "bindPose_Knight.p[96]";
connectAttr "bindPose_Knight.m[35]" "bindPose_Knight.p[97]";
connectAttr "bindPose_Knight.m[97]" "bindPose_Knight.p[98]";
connectAttr "bindPose_Knight.m[98]" "bindPose_Knight.p[99]";
connectAttr "bindPose_Knight.m[99]" "bindPose_Knight.p[100]";
connectAttr "bindPose_Knight.m[99]" "bindPose_Knight.p[101]";
connectAttr "bindPose_Knight.m[98]" "bindPose_Knight.p[102]";
connectAttr "bindPose_Knight.m[35]" "bindPose_Knight.p[103]";
connectAttr "bindPose_Knight.m[103]" "bindPose_Knight.p[104]";
connectAttr "bindPose_Knight.m[35]" "bindPose_Knight.p[105]";
connectAttr "bindPose_Knight.m[105]" "bindPose_Knight.p[106]";
connectAttr "bindPose_Knight.m[35]" "bindPose_Knight.p[107]";
connectAttr "bindPose_Knight.m[107]" "bindPose_Knight.p[108]";
connectAttr "bindPose_Knight.m[35]" "bindPose_Knight.p[109]";
connectAttr "bindPose_Knight.m[109]" "bindPose_Knight.p[110]";
connectAttr "bindPose_Knight.m[35]" "bindPose_Knight.p[111]";
connectAttr "bindPose_Knight.m[111]" "bindPose_Knight.p[112]";
connectAttr "bindPose_Knight.m[35]" "bindPose_Knight.p[113]";
connectAttr "bindPose_Knight.m[113]" "bindPose_Knight.p[114]";
connectAttr "bindPose_Knight.m[35]" "bindPose_Knight.p[115]";
connectAttr "bindPose_Knight.m[34]" "bindPose_Knight.p[116]";
connectAttr "bindPose_Knight.m[116]" "bindPose_Knight.p[117]";
connectAttr "bindPose_Knight.m[117]" "bindPose_Knight.p[118]";
connectAttr "bindPose_Knight.m[118]" "bindPose_Knight.p[119]";
connectAttr "bindPose_Knight.m[119]" "bindPose_Knight.p[120]";
connectAttr "bindPose_Knight.m[120]" "bindPose_Knight.p[121]";
connectAttr "bindPose_Knight.m[121]" "bindPose_Knight.p[122]";
connectAttr "bindPose_Knight.m[122]" "bindPose_Knight.p[123]";
connectAttr "bindPose_Knight.m[121]" "bindPose_Knight.p[124]";
connectAttr "bindPose_Knight.m[124]" "bindPose_Knight.p[125]";
connectAttr "bindPose_Knight.m[121]" "bindPose_Knight.p[126]";
connectAttr "bindPose_Knight.m[126]" "bindPose_Knight.p[127]";
connectAttr "bindPose_Knight.m[121]" "bindPose_Knight.p[128]";
connectAttr "bindPose_Knight.m[120]" "bindPose_Knight.p[129]";
connectAttr "bindPose_Knight.m[129]" "bindPose_Knight.p[130]";
connectAttr "bindPose_Knight.m[120]" "bindPose_Knight.p[131]";
connectAttr "bindPose_Knight.m[131]" "bindPose_Knight.p[132]";
connectAttr "bindPose_Knight.m[120]" "bindPose_Knight.p[133]";
connectAttr "bindPose_Knight.m[119]" "bindPose_Knight.p[134]";
connectAttr "bindPose_Knight.m[134]" "bindPose_Knight.p[135]";
connectAttr "bindPose_Knight.m[119]" "bindPose_Knight.p[136]";
connectAttr "bindPose_Knight.m[136]" "bindPose_Knight.p[137]";
connectAttr "bindPose_Knight.m[119]" "bindPose_Knight.p[138]";
connectAttr "bindPose_Knight.m[118]" "bindPose_Knight.p[139]";
connectAttr "bindPose_Knight.m[139]" "bindPose_Knight.p[140]";
connectAttr "bindPose_Knight.m[118]" "bindPose_Knight.p[141]";
connectAttr "bindPose_Knight.m[141]" "bindPose_Knight.p[142]";
connectAttr "bindPose_Knight.m[118]" "bindPose_Knight.p[143]";
connectAttr "bindPose_Knight.m[117]" "bindPose_Knight.p[144]";
connectAttr "bindPose_Knight.m[30]" "bindPose_Knight.p[145]";
connectAttr "bindPose_Knight.m[145]" "bindPose_Knight.p[146]";
connectAttr "bindPose_Knight.m[146]" "bindPose_Knight.p[147]";
connectAttr "bindPose_Knight.m[147]" "bindPose_Knight.p[148]";
connectAttr "bindPose_Knight.m[147]" "bindPose_Knight.p[149]";
connectAttr "bindPose_Knight.m[146]" "bindPose_Knight.p[150]";
connectAttr "bindPose_Knight.m[150]" "bindPose_Knight.p[151]";
connectAttr "bindPose_Knight.m[150]" "bindPose_Knight.p[152]";
connectAttr "bindPose_Knight.m[145]" "bindPose_Knight.p[153]";
connectAttr "bindPose_Knight.m[153]" "bindPose_Knight.p[154]";
connectAttr "bindPose_Knight.m[154]" "bindPose_Knight.p[155]";
connectAttr "bindPose_Knight.m[155]" "bindPose_Knight.p[156]";
connectAttr "bindPose_Knight.m[156]" "bindPose_Knight.p[157]";
connectAttr "bindPose_Knight.m[157]" "bindPose_Knight.p[158]";
connectAttr "bindPose_Knight.m[157]" "bindPose_Knight.p[159]";
connectAttr "bindPose_Knight.m[157]" "bindPose_Knight.p[160]";
connectAttr "bindPose_Knight.m[160]" "bindPose_Knight.p[161]";
connectAttr "bindPose_Knight.m[161]" "bindPose_Knight.p[162]";
connectAttr "bindPose_Knight.m[160]" "bindPose_Knight.p[163]";
connectAttr "bindPose_Knight.m[163]" "bindPose_Knight.p[164]";
connectAttr "bindPose_Knight.m[160]" "bindPose_Knight.p[165]";
connectAttr "bindPose_Knight.m[165]" "bindPose_Knight.p[166]";
connectAttr "bindPose_Knight.m[160]" "bindPose_Knight.p[167]";
connectAttr "bindPose_Knight.m[167]" "bindPose_Knight.p[168]";
connectAttr "bindPose_Knight.m[160]" "bindPose_Knight.p[169]";
connectAttr "bindPose_Knight.m[169]" "bindPose_Knight.p[170]";
connectAttr "bindPose_Knight.m[160]" "bindPose_Knight.p[171]";
connectAttr "bindPose_Knight.m[171]" "bindPose_Knight.p[172]";
connectAttr "bindPose_Knight.m[155]" "bindPose_Knight.p[173]";
connectAttr "bindPose_Knight.m[173]" "bindPose_Knight.p[174]";
connectAttr "bindPose_Knight.m[174]" "bindPose_Knight.p[175]";
connectAttr "bindPose_Knight.m[175]" "bindPose_Knight.p[176]";
connectAttr "bindPose_Knight.m[175]" "bindPose_Knight.p[177]";
connectAttr "bindPose_Knight.m[177]" "bindPose_Knight.p[178]";
connectAttr "bindPose_Knight.m[178]" "bindPose_Knight.p[179]";
connectAttr "bindPose_Knight.m[178]" "bindPose_Knight.p[180]";
connectAttr "bindPose_Knight.m[178]" "bindPose_Knight.p[181]";
connectAttr "bindPose_Knight.m[181]" "bindPose_Knight.p[182]";
connectAttr "bindPose_Knight.m[182]" "bindPose_Knight.p[183]";
connectAttr "bindPose_Knight.m[182]" "bindPose_Knight.p[184]";
connectAttr "bindPose_Knight.m[184]" "bindPose_Knight.p[185]";
connectAttr "bindPose_Knight.m[185]" "bindPose_Knight.p[186]";
connectAttr "bindPose_Knight.m[186]" "bindPose_Knight.p[187]";
connectAttr "bindPose_Knight.m[187]" "bindPose_Knight.p[188]";
connectAttr "bindPose_Knight.m[184]" "bindPose_Knight.p[189]";
connectAttr "bindPose_Knight.m[189]" "bindPose_Knight.p[190]";
connectAttr "bindPose_Knight.m[184]" "bindPose_Knight.p[191]";
connectAttr "bindPose_Knight.m[191]" "bindPose_Knight.p[192]";
connectAttr "bindPose_Knight.m[184]" "bindPose_Knight.p[193]";
connectAttr "bindPose_Knight.m[193]" "bindPose_Knight.p[194]";
connectAttr "bindPose_Knight.m[184]" "bindPose_Knight.p[195]";
connectAttr "bindPose_Knight.m[195]" "bindPose_Knight.p[196]";
connectAttr "bindPose_Knight.m[177]" "bindPose_Knight.p[197]";
connectAttr "bindPose_Knight.m[175]" "bindPose_Knight.p[198]";
connectAttr "bindPose_Knight.m[198]" "bindPose_Knight.p[199]";
connectAttr "bindPose_Knight.m[199]" "bindPose_Knight.p[200]";
connectAttr "bindPose_Knight.m[200]" "bindPose_Knight.p[201]";
connectAttr "bindPose_Knight.m[201]" "bindPose_Knight.p[202]";
connectAttr "bindPose_Knight.m[202]" "bindPose_Knight.p[203]";
connectAttr "bindPose_Knight.m[203]" "bindPose_Knight.p[204]";
connectAttr "bindPose_Knight.m[204]" "bindPose_Knight.p[205]";
connectAttr "bindPose_Knight.m[205]" "bindPose_Knight.p[206]";
connectAttr "bindPose_Knight.m[206]" "bindPose_Knight.p[207]";
connectAttr "bindPose_Knight.m[207]" "bindPose_Knight.p[208]";
connectAttr "bindPose_Knight.m[208]" "bindPose_Knight.p[209]";
connectAttr "bindPose_Knight.m[207]" "bindPose_Knight.p[210]";
connectAttr "bindPose_Knight.m[210]" "bindPose_Knight.p[211]";
connectAttr "bindPose_Knight.m[207]" "bindPose_Knight.p[212]";
connectAttr "bindPose_Knight.m[212]" "bindPose_Knight.p[213]";
connectAttr "bindPose_Knight.m[207]" "bindPose_Knight.p[214]";
connectAttr "bindPose_Knight.m[214]" "bindPose_Knight.p[215]";
connectAttr "bindPose_Knight.m[200]" "bindPose_Knight.p[216]";
connectAttr "bindPose_Knight.m[199]" "bindPose_Knight.p[217]";
connectAttr "bindPose_Knight.m[175]" "bindPose_Knight.p[218]";
connectAttr "bindPose_Knight.m[218]" "bindPose_Knight.p[219]";
connectAttr "bindPose_Knight.m[219]" "bindPose_Knight.p[220]";
connectAttr "bindPose_Knight.m[220]" "bindPose_Knight.p[221]";
connectAttr "bindPose_Knight.m[221]" "bindPose_Knight.p[222]";
connectAttr "bindPose_Knight.m[222]" "bindPose_Knight.p[223]";
connectAttr "bindPose_Knight.m[223]" "bindPose_Knight.p[224]";
connectAttr "bindPose_Knight.m[224]" "bindPose_Knight.p[225]";
connectAttr "bindPose_Knight.m[225]" "bindPose_Knight.p[226]";
connectAttr "bindPose_Knight.m[226]" "bindPose_Knight.p[227]";
connectAttr "bindPose_Knight.m[227]" "bindPose_Knight.p[228]";
connectAttr "bindPose_Knight.m[228]" "bindPose_Knight.p[229]";
connectAttr "bindPose_Knight.m[227]" "bindPose_Knight.p[230]";
connectAttr "bindPose_Knight.m[230]" "bindPose_Knight.p[231]";
connectAttr "bindPose_Knight.m[227]" "bindPose_Knight.p[232]";
connectAttr "bindPose_Knight.m[232]" "bindPose_Knight.p[233]";
connectAttr "bindPose_Knight.m[227]" "bindPose_Knight.p[234]";
connectAttr "bindPose_Knight.m[234]" "bindPose_Knight.p[235]";
connectAttr "bindPose_Knight.m[227]" "bindPose_Knight.p[236]";
connectAttr "bindPose_Knight.m[220]" "bindPose_Knight.p[237]";
connectAttr "bindPose_Knight.m[219]" "bindPose_Knight.p[238]";
connectAttr "bindPose_Knight.m[175]" "bindPose_Knight.p[239]";
connectAttr "bindPose_Knight.m[174]" "bindPose_Knight.p[240]";
connectAttr "bindPose_Knight.m[153]" "bindPose_Knight.p[241]";
connectAttr "bindPose_Knight.m[241]" "bindPose_Knight.p[242]";
connectAttr "bindPose_Knight.m[242]" "bindPose_Knight.p[243]";
connectAttr "bindPose_Knight.m[153]" "bindPose_Knight.p[244]";
connectAttr "bindPose_Knight.m[244]" "bindPose_Knight.p[245]";
connectAttr "bindPose_Knight.m[245]" "bindPose_Knight.p[246]";
connectAttr "bindPose_Knight.m[153]" "bindPose_Knight.p[247]";
connectAttr "bindPose_Knight.m[247]" "bindPose_Knight.p[248]";
connectAttr "bindPose_Knight.m[153]" "bindPose_Knight.p[249]";
connectAttr "bindPose_Knight.m[249]" "bindPose_Knight.p[250]";
connectAttr "bindPose_Knight.m[153]" "bindPose_Knight.p[251]";
connectAttr "bindPose_Knight.m[251]" "bindPose_Knight.p[252]";
connectAttr "bindPose_Knight.m[252]" "bindPose_Knight.p[253]";
connectAttr "bindPose_Knight.m[253]" "bindPose_Knight.p[254]";
connectAttr "bindPose_Knight.m[254]" "bindPose_Knight.p[255]";
connectAttr "bindPose_Knight.m[255]" "bindPose_Knight.p[256]";
connectAttr "bindPose_Knight.m[254]" "bindPose_Knight.p[257]";
connectAttr "bindPose_Knight.m[257]" "bindPose_Knight.p[258]";
connectAttr "bindPose_Knight.m[254]" "bindPose_Knight.p[259]";
connectAttr "bindPose_Knight.m[259]" "bindPose_Knight.p[260]";
connectAttr "bindPose_Knight.m[260]" "bindPose_Knight.p[261]";
connectAttr "bindPose_Knight.m[261]" "bindPose_Knight.p[262]";
connectAttr "bindPose_Knight.m[260]" "bindPose_Knight.p[263]";
connectAttr "bindPose_Knight.m[263]" "bindPose_Knight.p[264]";
connectAttr "bindPose_Knight.m[260]" "bindPose_Knight.p[265]";
connectAttr "bindPose_Knight.m[265]" "bindPose_Knight.p[266]";
connectAttr "bindPose_Knight.m[266]" "bindPose_Knight.p[267]";
connectAttr "bindPose_Knight.m[267]" "bindPose_Knight.p[268]";
connectAttr "bindPose_Knight.m[266]" "bindPose_Knight.p[269]";
connectAttr "bindPose_Knight.m[269]" "bindPose_Knight.p[270]";
connectAttr "bindPose_Knight.m[266]" "bindPose_Knight.p[271]";
connectAttr "bindPose_Knight.m[271]" "bindPose_Knight.p[272]";
connectAttr "bindPose_Knight.m[272]" "bindPose_Knight.p[273]";
connectAttr "bindPose_Knight.m[273]" "bindPose_Knight.p[274]";
connectAttr "bindPose_Knight.m[272]" "bindPose_Knight.p[275]";
connectAttr "bindPose_Knight.m[275]" "bindPose_Knight.p[276]";
connectAttr "bindPose_Knight.m[272]" "bindPose_Knight.p[277]";
connectAttr "bindPose_Knight.m[277]" "bindPose_Knight.p[278]";
connectAttr "bindPose_Knight.m[251]" "bindPose_Knight.p[279]";
connectAttr "bindPose_Knight.m[153]" "bindPose_Knight.p[280]";
connectAttr "bindPose_Knight.m[280]" "bindPose_Knight.p[281]";
connectAttr "bindPose_Knight.m[153]" "bindPose_Knight.p[282]";
connectAttr "bindPose_Knight.m[153]" "bindPose_Knight.p[283]";
connectAttr "bindPose_Knight.m[283]" "bindPose_Knight.p[284]";
connectAttr "bindPose_Knight.m[153]" "bindPose_Knight.p[285]";
connectAttr "bindPose_Knight.m[285]" "bindPose_Knight.p[286]";
connectAttr "bindPose_Knight.m[153]" "bindPose_Knight.p[287]";
connectAttr "bindPose_Knight.m[287]" "bindPose_Knight.p[288]";
connectAttr "bindPose_Knight.m[145]" "bindPose_Knight.p[289]";
connectAttr "bindPose_Knight.m[30]" "bindPose_Knight.p[290]";
connectAttr "bindPose_Knight.m[30]" "bindPose_Knight.p[291]";
connectAttr "Bip001_Root.bps" "bindPose_Knight.wm[34]";
connectAttr "Bip001_Pelvis.bps" "bindPose_Knight.wm[35]";
connectAttr "Bip001_Spine.bps" "bindPose_Knight.wm[36]";
connectAttr "Bip001_Clavicle_R.bps" "bindPose_Knight.wm[37]";
connectAttr "Bip001_UpperArm_R.bps" "bindPose_Knight.wm[38]";
connectAttr "Bip001_Forearm_R.bps" "bindPose_Knight.wm[39]";
connectAttr "Bip001_Forearm1_R.bps" "bindPose_Knight.wm[40]";
connectAttr "Bip001_Hand_R.bps" "bindPose_Knight.wm[41]";
connectAttr "Bip001_Middle_R.bps" "bindPose_Knight.wm[42]";
connectAttr "Bip001_Index_R.bps" "bindPose_Knight.wm[44]";
connectAttr "Bip001_Pinky_R.bps" "bindPose_Knight.wm[46]";
connectAttr "Bip001_Thumb_R.bps" "bindPose_Knight.wm[48]";
connectAttr "Bip001_HandAnchor_L.bps" "bindPose_Knight.wm[51]";
connectAttr "Bip001_Clavicle_L.bps" "bindPose_Knight.wm[56]";
connectAttr "Bip001_UpperArm_L.bps" "bindPose_Knight.wm[57]";
connectAttr "Bip001_Forearm_L.bps" "bindPose_Knight.wm[58]";
connectAttr "Bip001_Forearm1_L.bps" "bindPose_Knight.wm[59]";
connectAttr "Bip001_Hand_L.bps" "bindPose_Knight.wm[60]";
connectAttr "Bip001_Middle_L.bps" "bindPose_Knight.wm[61]";
connectAttr "Bip001_Index_L.bps" "bindPose_Knight.wm[63]";
connectAttr "Bip001_Pinky_L.bps" "bindPose_Knight.wm[65]";
connectAttr "Bip001_Thumb_L.bps" "bindPose_Knight.wm[67]";
connectAttr "Bip001_Neck.bps" "bindPose_Knight.wm[74]";
connectAttr "Bip001_Head.bps" "bindPose_Knight.wm[75]";
connectAttr "Bip001_Ponytail.bps" "bindPose_Knight.wm[76]";
connectAttr "Bip001_Ponytail1.bps" "bindPose_Knight.wm[77]";
connectAttr "Bip001_Hair_L.bps" "bindPose_Knight.wm[80]";
connectAttr "Bip001_Ear_L.bps" "bindPose_Knight.wm[82]";
connectAttr "Bip001_Ear_R.bps" "bindPose_Knight.wm[84]";
connectAttr "Bip001_Hair_R.bps" "bindPose_Knight.wm[86]";
connectAttr "Bip001_Thigh_L.bps" "bindPose_Knight.wm[91]";
connectAttr "Bip001_Calf_L.bps" "bindPose_Knight.wm[92]";
connectAttr "Bip001_Foot_L.bps" "bindPose_Knight.wm[93]";
connectAttr "Bip001_ToeNub_L.bps" "bindPose_Knight.wm[94]";
connectAttr "Bip001_Thigh_R.bps" "bindPose_Knight.wm[97]";
connectAttr "Bip001_Calf_R.bps" "bindPose_Knight.wm[98]";
connectAttr "Bip001_Foot_R.bps" "bindPose_Knight.wm[99]";
connectAttr "Bip001_ToeNub_R.bps" "bindPose_Knight.wm[100]";
connectAttr "Bip001_SkirtFrt.bps" "bindPose_Knight.wm[103]";
connectAttr "Bip001_SkirtBck.bps" "bindPose_Knight.wm[105]";
connectAttr "Bip001_SkirtFrt_L.bps" "bindPose_Knight.wm[107]";
connectAttr "Bip001_SkirtBck_L.bps" "bindPose_Knight.wm[109]";
connectAttr "Bip001_SkirtFrt_R.bps" "bindPose_Knight.wm[111]";
connectAttr "Bip001_SkirtBck_R.bps" "bindPose_Knight.wm[113]";
connectAttr "Bip001_SwordAnchor.bps" "bindPose_Knight.wm[116]";
connectAttr "Bn_SwordRoot.bps" "bindPose_Knight.wm[117]";
connectAttr "Bn_Sword.bps" "bindPose_Knight.wm[118]";
connectAttr "Bn_Sword1.bps" "bindPose_Knight.wm[119]";
connectAttr "Bn_Sword2.bps" "bindPose_Knight.wm[120]";
connectAttr "Bn_Sword3.bps" "bindPose_Knight.wm[121]";
connectAttr "Bn_Sword4.bps" "bindPose_Knight.wm[122]";
connectAttr "Bn_Sword3_L.bps" "bindPose_Knight.wm[124]";
connectAttr "Bn_Sword3_R.bps" "bindPose_Knight.wm[126]";
connectAttr "Bn_Sword2_L.bps" "bindPose_Knight.wm[129]";
connectAttr "Bn_Sword2_R.bps" "bindPose_Knight.wm[131]";
connectAttr "Bn_Sword1_L.bps" "bindPose_Knight.wm[134]";
connectAttr "Bn_Sword1_R.bps" "bindPose_Knight.wm[136]";
connectAttr "Bn_Sword_L.bps" "bindPose_Knight.wm[139]";
connectAttr "Bn_Sword_R.bps" "bindPose_Knight.wm[141]";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "M_Knight.msg" ":defaultShaderList1.s" -na;
connectAttr "M_Knight_Eyes.msg" ":defaultShaderList1.s" -na;
connectAttr "M_Knight_Mouth.msg" ":defaultShaderList1.s" -na;
connectAttr "M_FacePreview.msg" ":defaultShaderList1.s" -na;
connectAttr "M_Sword.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
// End of Skel_Knight.ma
