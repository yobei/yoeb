LJD@G:\vs工程文件\vs2015\Projects\ABCD_POE-TW\x64\台服\脚本\gameObj.luaK   !  9    BK  SetDataself  name  className   (   =  K  	nameself  name   2   	=  K  classNameself  className   !   
9  L 	nameself   &   
9  L classNameself   g   	$  9   B  9  BK  SetClassNameSetNameself  
name  
className  
 � 
 &V+ 
  X"�  X �+  	  X�  9 B X�  9 B   X�  X�6 9 	 B  X�+ X�+ X� X�+ X�+ L 	findstringGetNameGetClassName		

self  'name  'mohu  'nType  'ret %checkName  �    Y)6   B X�  9  	 
 D X� X�6  BX
�  9
 	   B
 
 X�+
 L
 ER�+ L ipairs
tableIsEqualstring	typeself  !name  !mohu  !nType  !strType   k 
v  
 ;   9=  = K  maxValvalself  val  maxVal       
=9  L valself   #   
@9  L maxValself   1   C9  9 #L maxValvalself       	HK  self   (   K=  K  
hpValself  val   "   
N9  L 
hpValself   1   Q6 =  K  val
mpValself  Val   "   
T9  L 
mpValself   1   W6 =  K  val
hdValself  Val   "   
Z9  L 
hdValself   � 0^
 X�)  =  4 G ?   )   X�=   9 B  9 B  X�  9 BK  	ReadIsHaveDataReadParamparams	addr��罊
self  addr  params      	iK  self       	kK  self   ;  m9  	  X�+ X�+ L 	addr self   !   
p9  L 	addrself   D   s6    X�9 L )  L 	addrg_myPrintself       
y'  L Objself   | 
  |6  '   9 B6 	  9 B A  C GetPrintObjUINT64GetObjName%s addr:%pStrFormatself   B   6    9 B A K  tostringMYTRACE1self   N   �  9   X�)  BK  SetIndexself  addr  index   +   �=  K  
indexself  index   #   
�9  L 
indexself   '   
�'  L MapElemntself       	�K  self   � 
 '���9  6 96 6  B6 6	 B B B= 9 6 6 6 B B6	  9
 B= 9  9B= 9  9B= 6 6 6 B  B6 6 6	 B B= = 9 = 9 = 6 6 6 B B6 6 6	 B  B= = 6 6 6 B B6 6 6	 B  B= = 6 6 6 B ) B= 6 B6 B= = 9 9 != 6 9 9 B= 6! 9"'# 9 9 B=  +  =$ )  =% 4  =& K  mapAddGroundlastReadCanMoveTimecanMoveMapData
%s %sformatstringkeyGetHash	hashelementSizeelementEndelementStartOFFSET_NowMapTerrainSizeptSizedataEnd1dataStart1OFFSET_NowMapTerrainDatadataEnddataStartheight
widthOFFSET_NowMapHeightheight1width1GetClassNamemapClassNameGetNamemapNameNewWorldArea1worldAreaOFFSET_NowMapDataWorldAreaOFFSET_NowMapData1GETBASEDATAReadIntMyCallMydataAddr	addr.0��			


self  �addr �dataAddr rworldAreaAddr l $   
�9  L heightself   #   
�9  L 
widthself   x    �)   X	�)   X�9   X�9   X�+ X�+ L height
widthself  x  y   �  =|�)  9  9 
  9   B  X	2�9 " 	  	  X	�6	 ' 6  B A	6	 ' 6  B A	6	 ' 6  B A	6	  ) B		 6		 9	
	 ) B			 X	�6		 9		 ) B		 X	�6		 9	
	 ) B		 L rshift	bandbitReadIntaddr:%pUINT64dataStart:%pMYTRACEptSizeIsInRangedataEnddataStart




self  >x  >y  >ts  >show  >ret <dataStart :dataEnd  :addr - �  #O�6  9' 9 9 "B)  9  ) M�)  9  ) M�9
 "

 
	
8

	
 X
	�9
 "

 
	
  9 	  B<
O�O�L GetPtData1height
widthchar[?]newffi self  $mapData   y   x  %   
�'  L GameMapself   �   +E�'    9 B  X$�6 ' 6 9 B9  9B6 9	 B6 9
	 B6	 9
 B	6
 9 B
9 B	4 6 9  B>>6 9 ' B L  concat
tabletostringObjkeydataStartptSizeheight
widthGetNameworldAreadataAddrUINT64KdataAddr:%p name:%s width:%d height:%d ptsize:%llx startAddr:%p key:%sStrFormatIsHaveDataself  ,ret *str arr  �   .�	6  9B)   X�6 6 6 B B)   X�  9  D 6 ' BK  璇诲彇鍦板浘鏁版嵁澶辫触
errorNewOFFSET_NowMapDataGETBASEDATAReadIntGetMeRoleDataAddr	call	self  addr0 addr 	     	�K  self   �	  V �� �6   B 7  6  3 = 6  3 = 6  3 = 6  3	 = 6  3 =
 6  3 = 6  3 = 6  3 = 6   B 7  6  3 = 6  3 = 6  3 = 6  3 = 6   B 7  6  3 = 6  3 = 6  3 = 6  3! =  6  3# =" 6  3% =$ 6  3' =& 6   B 7 ( 6 ( 3) = 6 ( 3+ =* 6 ( 3- =, 6 ( 3/ =. 6 ( 31 =0 6 ( 33 =2 6 ( 35 =4 6 ( 37 =6 6 ( 39 =8 6   6( B 7 : 6 : 3; = 6 : 3= =< 6 : 3? => 6   6( B 7 @ 6 @ 3A =4 6 @ 3B =* 6   B 7 C 6   6( B 7 D 6 D 3E =* 6 D 3G =F 6 D 3I =H 6 D 3K =J 6 D 3M =L 6 D 3O =N 6 D 3P =4 6 D 3Q =6 6 D 3S =R 6 D 3U =T K   GetLastData GetData   GetMapData GetPtData1 IsInRange GetWidth GetHeight GameMapMapMgr  MapElemnt GetIndex SetIndex 
IdObj 	Show tostring GetObjName GetPrintObj GetObj IsHaveData ReadParams 	Read Obj GetHdVal SetHdVal GetMpVal SetMpVal GetHpVal SetHpVal LifeData GetValF GetMaxVal GetVal ValData IsOneData IsEqual SetData GetClassName GetName SetClassName SetName 	InitNameDataLuaClass		()6)8889<9=?=@B@CECGGGHJHKMKNPNQSQTVTWYWZ\Z]]]^h^ijiklkmomprpsxsy{y|~|�倐倐儏儐垎墜墝寣實弽悞悡摀晻晻柆柇安俺党度渡丈重仲豳沆沩镯�  