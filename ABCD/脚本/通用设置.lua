
--����ͨ������ ��������
--[[
---------------------------------------------������һ��Ҫ�úÿ������˵��
--�������� -- Ϊע�ͷ��� ע�͵�����ص����ý����������� 
���õ����������������¼��� 
1���߼��� ������״̬ trueΪ�� falseΪ��  ��ҿ�������false��true������ ��֪�������߼�����
2����ֵ�� ֧��С�� ���� ֱ����д���־����� �磺-1 100 0.123 ���ֶ�����ֵ�� ����Ҫ������ 
3���ַ����� ��д��ʱ��ǰ����Ҫ�ð�����Ű������� �磺"���ǲֿ��" ע��ֻ���ַ����͵Ĳ���Ҫ���ߴ�����
Ȼ�����������͵����ݶ���ʹ��nil  nil�ǿ�ֵ ��ʾ���� ����ʾʲô��û�� ���߲���Ҫ����

��������Ҫ�õ������� ����������������������Ҫ��Ŀ¼�µĵ�����Ϣ�鿴����Ȼ������Ϸ�а�HOME���������Դ��� 
�����Ҫ�鿴�����ݵİ�ť�����涼���ҵ�����=name ����=className �����Ƽ����Ҫ��дclassName �������úõ������ܹ�̨ �� ���� ����ͨ��
���������ַ�Ϊ���� 
1�������ͣ�������=���� ���ּ򵥴ֱ��Ķ��Ǳ��������� ֱ�Ӹ��Ǹ����ںź�������ݾ�����
2�������ͣ�������(����1,����2) �����ľ��Ǻ����� �ɺ����������ɸ�������� �������������()������
]]
------------------��������
g_needMinimizeGame=false			--��С���[�򴰿� trueΪ��С�� false��nilΪ����С��
g_imBoss=false					--����ǲֿ��ҪΪtrue �һ���Ϊfalse
g_attackDis=50					--��������
g_yiJieTimeOut=15*60			--����ͼ�ڵĳ�ʱʱ�� ��λΪ�� ���δ���þͻ���g_timeOut *�ǳ˺� ����Ϊ15����60=15����
g_timeOut=25*60					--��һ����ͼ����ʱ�䳬�����õ� �����¿�ͼ���� ��λΪ��
g_addTianFu=true				--�Զ����趨�õ����ü��츳 trueΪ�� nil��falseΪ����
g_shengJiBaoShi=true			--�Զ�������ʯ trueΪ���� nil��falseΪ������
g_sellSkillGem=true				--�Զ�������40Ʒ�ʵļ��ܱ�ʯ
g_notHuanYaoLv=82				--���ڵ��ڶ��ټ�ֻ����ɫ����ҩ 
g_needAutoChangeEquip=true		--�����Զ���װ trueΪ�� nil��falseΪ����
g_needAutoSetBaoShi=true		--�����Զ�����ʯ trueΪ�� nil��falseΪ����
g_bossGiveZhuangBei=true		--����ʱ�ֿ�Ÿ���ȱ�ٵĸ߼���װ�е�װ�� trueΪ�� falseΪ���� �ǶԲֿ�����õ�
g_xiaoHaoGetZhuangBei=false		--�һ�����װ�ֿ��������߼���װ�е�װ�� trueΪ���� falseΪ������ 

--SetZhuangBeiBoss(bossName,srvName)--���÷�װ�ֿ�� bossName=��װ������ �ַ����� srvName=���������֣�����������ͬһ�����õĻ����Ϸ��������ֿɵ������� ������ǿɺ��� ����nil 
--SetZhuangBeiBoss("�����������Լ��ķ�װ�ֿ������","������")--��װ���Ĳֿ�� �������Ҫ ��ע�͵� ֻ�йһ��Ÿ��ֿ�Ŷ��� ����˺� ����Ч


--SetNeedAddTianFu(tfStr)--��������츳�ӵ� 
SetNeedAddTianFu("����ͼ�츳=atlas_boss_adjacent_maps_2-�����؈D����C��|atlas_path_11-�����؈D����C��|atlas_path_23_-�����؈D����C��|atlas_boss_adjacent_maps_1-�����؈D����C��|atlas_boss_adjacent_maps_8-�����؈D����C��|atlas_kirac_1_10-�������΄ՙC��|atlas_kirac_1_9-�������΄ՙC��|atlas_zana_1_6-���c�ɲ�|atlas_kirac_1_8_-�������΄ՙC��|atlas_kirac_1_7-�������΄ՙC��|atlas_path_96-�����}�u�؈D|atlas_map_tier_5_1-���A�؈D�C��|atlas_map_tier_5_2-���A�؈D�C��|atlas_map_tier_4_1-���A�؈D�C��|atlas_map_tier_3_1-���A�؈D�C��|atlas_map_tier_3_2-���A�؈D�C��|atlas_path_94-�����}�u�؈D|atlas_map_drops_8-�����}�u�؈D|atlas_path_92-�����}�u�؈D|atlas_path_61-��Ʒ����|atlas_path_44-��Ʒ����|atlas_path_35-��Ʒ����|atlas_path_90-�����}�u�؈D|atlas_keystone_smallnodes_1-����֮·|atlas_path_38-�����؈D����C��|atlas_path_21-�����؈D����C��|atlas_path_27-�����؈D����C��|atlas_map_tier_2_1-���A�؈D�C��|atlas_map_tier_2_2-���A�؈D�C��|atlas_path_37-�����؈D����C��|atlas_path_30-�����؈D����C��|atlas_path_18-�����؈D����C��|atlas_map_tier_1_2_-���A�؈D�C��|atlas_map_tier_1_1-���A�؈D�C��|atlas_path_6-�����؈D����C��|atlas_path_8-�����؈D����C��|atlas_path_5-�����؈D����C��|atlas_path_13-�����؈D����C��|atlas_path_10-�����؈D����C��|atlas_path_19-�����؈D����C��|atlas_path_1-�����؈D����C��|atlas_path_20-�����؈D����C��|atlas_path_9-�����؈D����C��|atlas_path_22-�����؈D����C��|atlas_path_12-�����؈D����C��|atlas_path_24_-�����؈D����C��|atlas_path_16-�����؈D����C��|atlas_path_25_-�����؈D����C��|atlas_map_drops_4-�����}�u�؈D|atlas_path_83-�����}�u�؈D|atlas_map_drops_5-�����}�u�؈D|atlas_path_84-�����}�u�؈D|atlas_path_95-�����}�u�؈D|atlas_map_drops_9-�����}�u�؈D|atlas_map_drops_15-�����}�u�؈D|atlas_path_82-�����}�u�؈D|atlas_map_drops_14-�����}�u�؈D|atlas_map_drops_16-�����}�u�؈D|atlas_map_drops_1-�����}�u�؈D|atlas_map_drops_2-�����}�u�؈D|atlas_map_drops_20-�����}�u�؈D|")

--���������ĳ������ʱ�����ܱ�ʯ
--AddNeedBuySkillTime(city,task)-- city=����������ֵ�� 1-11 task=�������� �ַ����� �������������ڵ��Դ����е�� �������� ��ť�鿴��
----A1
AddNeedBuySkillTime(1,"a1q1")
AddNeedBuySkillTime(1,"a1q5")
AddNeedBuySkillTime(1,"a1q4")
AddNeedBuySkillTime(1,"a1q2")
AddNeedBuySkillTime(1,"a1q3")
AddNeedBuySkillTime(1,"a1q6")
AddNeedBuySkillTime(1,"a1q9")
AddNeedBuySkillTime(1,"a1q7")
----A2
AddNeedBuySkillTime(2,"a2q11")
AddNeedBuySkillTime(1,"a2q11")
AddNeedBuySkillTime(2,"a2q6")
AddNeedBuySkillTime(1,"a2q6")
AddNeedBuySkillTime(2,"a2q7")
AddNeedBuySkillTime(1,"a2q7")
AddNeedBuySkillTime(2,"a2q4")
AddNeedBuySkillTime(1,"a2q4")
AddNeedBuySkillTime(2,"a2q9")
AddNeedBuySkillTime(1,"a2q9")
AddNeedBuySkillTime(2,"a2q2")
AddNeedBuySkillTime(1,"a2q2")
AddNeedBuySkillTime(2,"a2q8")
AddNeedBuySkillTime(1,"a2q8")
-----A3
AddNeedBuySkillTime(2,"a3q1")
AddNeedBuySkillTime(2,"a3q11")
AddNeedBuySkillTime(1,"a3q3")
AddNeedBuySkillTime(1,"a3q4")
AddNeedBuySkillTime(3,"a3q8")
AddNeedBuySkillTime(3,"a3q9")
AddNeedBuySkillTime(3,"a3q12")
AddNeedBuySkillTime(3,"a3q10")
----A4
AddNeedBuySkillTime(3,"a4q2")
AddNeedBuySkillTime(2,"a4q2")
AddNeedBuySkillTime(1,"a4q2")
AddNeedBuySkillTime(3,"a4q6")
AddNeedBuySkillTime(3,"a4q3")
AddNeedBuySkillTime(3,"a4q4")
AddNeedBuySkillTime(4,"a4q5")
AddNeedBuySkillTime(3,"a4q1")
----A5
AddNeedBuySkillTime(3,"a5q3")
AddNeedBuySkillTime(2,"a5q3")
AddNeedBuySkillTime(1,"a5q3")
AddNeedBuySkillTime(4,"a5q5")

AddNeedBuySkillTime(6,"a6q1")	--�ڵ�6�µľ���֮��ʱ ��⹺��һ��
AddNeedBuySkillTime(6,"a6q2")
AddNeedBuySkillTime(6,"a6q3")
AddNeedBuySkillTime(6,"a6q5")
AddNeedBuySkillTime(6,"a7q2")
AddNeedBuySkillTime(6,"a8q2")
AddNeedBuySkillTime(6,"a10q2")	--��10�µ��������������� ��⹺��һ��
AddNeedBuySkillTime(11,"a11q1")	--��ʰȡ��Ƭ �������ʱ��⹺��һ��


--ҩƿ�ڷ�
--SetNeedFlaskData(pos,flask,modsData,minLv)--����ҩƿ�ڷ�
SetNeedFlaskData(1,"����ҩ��","���������,FlaskPartialInstantRecovery3|�ܷ�֮,FlaskBleedCorruptingBloodImmunity1",90)
SetNeedFlaskData(2,"ħ��ҩ��","�;õ�,FlaskEffectNotRemovedOnFullMana1|�W�g��֮FlaskBuffReducedManaCostWhileHealing4",90)
SetNeedFlaskData(3,"����ҩ��","nil")
SetNeedFlaskData(4,"�Ͼ�ҩ��","nil")
SetNeedFlaskData(5,"ˮ��ҩ��","nil")

--AddNotMakeTaskData(taskClassName)--��Ӳ���Ҫ�������� taskClassNameΪ��������
AddNotMakeTaskData("a2q5")--����ʥ��
AddNotMakeTaskData("a2q10")--��ɫ����
AddNotMakeTaskData("a3q13")--�����Ŀ���
--AddNotMakeTaskData("a3q12")--����֮��
AddNotMakeTaskData("a6q5")--��˹�ش���
--AddNotMakeTaskData("a7q8")--��˹�ص�Ĺ��
AddNotMakeTaskData("a7q5")--��ɫ��׹
AddNotMakeTaskData("a8q5")--��˹����֮��
AddNotMakeTaskData("a9q4")--����֮��
AddNotMakeTaskData("a10q4")--�ް��ɻ�
AddNotMakeTaskData("a10q5")--�֮·


--AddUseGoodsData(name,className)--���Ҫʹ�õ���Ʒ������һ����������nil --name=��Ʒ���� className=��Ʒ���� 



--SetZhongShenData(className1,className2)--����Ҫ�ӵ���������� className1=�߽��������� �ַ����� className2=�ͽ��������� �ַ����� 
SetZhongShenData("Lunaris","Gruthkul")--������ӰŮ��֮�������֮ĸ ��³˿��֮��

------------------��ַ���
--SetSaveIndex(saveType,pageName,goodsName,goodsClassName,wordName,wordClassName,pageType)--���ô��ҳ�� 
--saveType ��Ʒ���� �ַ����� ֧���������� ������nil ����������|�ֿ� --saveType ���� ֧���������� ����������|�ֿ� ����ҩ��|ħ��ҩ��|����ҩ��|ͨ��|����|��ָ|צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|�������ܱ�ʯ|�������ܱ�ʯ|����|����|����|Ь��|�·�|ͷ��|��|С��ʥ��|����ʥ��|����ʥ��|�ɶѵ�ͨ��|������Ʒ|����|����ҩ��|����ҩ��|����ͼ||���|��ͼ��Ƭ|����װ��|�̳���Ʒ|�鱦|���˿�|�Թ���Ʒ|�Թ���Ʒ|����Թ���Ʒ|��϶֮ʯ|����ʯ|����֮��|����װ����Ƭ|��Ԩ�鱦|��Խͨ��|����̽��������Ƕ��ͨ��|����ʯ|��Ƭ|����֮��|����ذ��|ս��|����̽���ɶѵ��ɲ���ͨ��|
--pageName �ֿ�ҳ���� �ַ����� ���������м���|����
--goodsName ��Ʒ�� �ַ����� ������nil
--goodsClassName ��Ʒ���� �ַ����� ������nil
--wordName ��׺�� �ַ����� ������nil
--wordClassName ��׺���� �ַ����� ������nil
--pageType �ֿ�ҳ���� ��ֵ�� �����nil��0 Ϊ��ͨ�ֿ� 1Ϊͨ��ҳ 2Ϊ���˿�ҳ  3Ϊ��Ƭҳ

-------ע��Ҫ������ǰ С�� ���������ں������
SetSaveIndex("ͨ��|�ɶѵ�ͨ��","1")
SetSaveIndex("����ͼ","2")
SetSaveIndex("����|��ָ|צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|����|����|Ь��|ͷ��","3|4")
SetSaveIndex("�������ܱ�ʯ|���˿�|�������ܱ�ʯ|�鱦|��ͼ��Ƭ","2")
SetSaveIndex("����ҩ��|ħ��ҩ��|����ҩ��|����ҩ��","2")
SetSaveIndex(nil,"4","�ħ�۾�","Metadata/Items/Metamorphosis/MetamorphosisEye")
SetSaveIndex(nil,"4","Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy")
SetSaveIndex(nil,"4","朽Yʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks")
SetSaveIndex(nil,"4","����ʯ","Metadata/Items/Currency/CurrencyRerollMagic")

------------------�һ����
g_yijieNoWhiteMonster=false		--���ʱ�Ƿ񲻴�׹� trueΪ���� nil��falseΪ��
g_yijieNoWhiteBox=true			--���ʱ�Ƿ񲻿������� trueΪ���� nil��falseΪ��
g_useYiJieWanChengDuLv=90	--ʹ�����������ɶ��Ǹ����õĵȼ������δ������ˢȫͼ
g_yiJieWanChengDu=0.9		--�����ɶ� ��ɶ��پͻ�ȥ Ϊ1��1���µ�С��
g_yongHengShiBeiLv=90		--���ڵ��ڶ��ټ�������ʯ�� 
g_needTaFangLv=90			--���ڵ��ڶ��ټ�������
g_needLianMoLv=90			--���ڵ��ڶ��ټ�����ħ
g_attackFreezeMonsterLv=90	--���ڵ��ڶ��ټ��������
g_needChuanYueLv=90			--���ڵ��ڶ��ټ���Խ��
g_needLieXiLv=90			--��춵��ڶ��ټ���ʱ���ѷ��
g_needMiWuLv=90				--���ڵ��ڶ��ټ�������

g_yuyanCnt=nil				--����������ȥԤ�ԣ�С��10���һ���nil�����ᴥ�� ����趨ȥԤ�ԣ������滹��Ҫ���ý��׸��ֿ�ŵ�Ԥ��

--��ͼ���
--SetNotMapGoMap(className,cnt) �����޵�ͼ��δ���ȼ�ʱҪˢ�ľ����ͼ className�ַ����� ��ͼ���� cnt=����
SetNotMapGoMap("2_9_1",10)	--�޵�ͼʱˢѪɫͨ��

g_yiJieLv=72				--���˶��ټ���ȥˢ���
g_checkSellMapCnt=100		--��ͼ������������Ż�����۵�ͼ
g_destroyNoUseMap=true		--�����������ò�ʹ�õĵ�ͼ nil��falseΪ������
g_mapUseFuHaoLv=78			--���ڵ��ڶ��ټ�����ͼʹ�ø���ʯ nilΪ��Զ��ʹ��
g_mapUseZengFuLv=78			--���ڵ��ڶ��ټ�����ͼʹ������ʯ nilΪ��Զ��ʹ��
g_mapUseDianJingLv=76		--���ڵ��ڶ��ټ��԰�ͼʹ�õ��ʯ nilΪ��Զ��ʹ��
g_mapUseTuiBianLv=72		--���ڵ��ڶ��ټ��԰�ͼʹ���ɱ�ʯ nilΪ��Զ��ʹ��
g_mapUseJiHuiLv=83			--���ڵ��ڶ��ټ��԰�ͼʹ�û���ʯ nilΪ��Զ��ʹ��
g_mapUseWaErLv=83			--���ڵ��ڶ��ټ��԰ס�����ͼʹ���߶����� nilΪ��Զ��ʹ��
g_mapUseDingZiLv=nil			--���ڵ��ڶ��ټ�ʹ����ͼ�� nilΪ��Զ��ʹ��
g_noUseMapLv=0				--��ʹ�á�������ٽ׼����ϵĵ�ͼ nil��0Ϊ���� �������ȵĵ�ͼ����

g_mapUseOrangeMap=false		--trueΪʹ�ó�ͼ nil��falseΪ��ʹ��
--SetYouXianUseMapData(name,className,color)--��������ʹ�õ�����ͼ 
--name �ַ����� ��ͼ�� 
--className �ַ����� ��ͼ���� 
--color �ַ����� ��ɫ 0��1��2��3�� �м���|����


-- SetNoUseMapShuXing(className)--���ò�ʹ�ô���ĳ�����Եĵ�ͼ,���� classNameΪ��������
SetNoUseMapShuXing("map_monsters_reflect_%_physical_damage")--���ò�������������
SetNoUseMapShuXing("map_monsters_reflect_%_elemental_damage")--���ò���ħ����������
SetNoUseMapShuXing("map_players_no_regeneration_including_es")--�޷��ظ�
SetNoUseMapShuXing("is_blighted_map")--�����ͼ


--SetLastEnterSmallMap(mapClassName)--������Ҫ���С���������ͼ
--mapClassName ����ͼ���� �ַ�����

SetLastEnterSmallMap("MapWorldsArachnidTomb")--���ĹѨ
SetLastEnterSmallMap("MapWorldsTropicalIsland")--����ĵ�
SetLastEnterSmallMap("MapWorldsBurialChambers")--�ı�Ĺ��
SetLastEnterSmallMap("MapWorldsResidence")--��������
SetLastEnterSmallMap("MapWorldsCage")--��������
SetLastEnterSmallMap("MapWorldsRamparts")--�I������
SetLastEnterSmallMap("MapWorldsCaldera")--��ɽ�׿�
SetLastEnterSmallMap("MapWorldsVaalPyramid")--�߶�������
SetLastEnterSmallMap("MapWorldsArena")--������
SetLastEnterSmallMap("MapWorldsOvergrownRuin")--�L���z�E
SetLastEnterSmallMap("MapWorldsGorge")--����ɽ��

--SetSellGoodsData(name,className,cnt,color)--������(��)�ĵ�ͼ 
--name=��Ʒ�� className=��Ʒ���� ��ʶ����Ʒ�� ʶ�𲻵���ʶ������ cnt=������ȥ�� color=��ɫ 0�� 1�� 2�� �����|����

SetSellGoodsData("�����ֹ�","Metadata/Items/Maps/MapWorldsJungleValley",3,"0|1|2|")
SetSellGoodsData("��������","Metadata/Items/Maps/MapWorldsWharf",3,"0|1|2|")
SetSellGoodsData("ŭ��֮��","Metadata/Items/Maps/MapWorldsPier",3,"0|1|2|")
SetSellGoodsData("��ɳ���^","Metadata/Items/Maps/MapWorldsBeach",3,"0|1|2|")
SetSellGoodsData("��Ӱ�e��","Metadata/Items/Maps/MapWorldsVilla",3,"0|1|2|")
SetSellGoodsData("���ֹ��@","Metadata/Items/Maps/MapWorldsOrchard",3,"0|1|2|")
SetSellGoodsData("������Ĺ","Metadata/Items/Maps/MapWorldsCursedCrypt",9,"0|1|2|")
SetSellGoodsData("܊е��","Metadata/Items/Maps/MapWorldsArmoury",3,"0|1|2|")
SetSellGoodsData("������","Metadata/Items/Maps/MapWorldsLaboratory",3,"0|1|2|")
SetSellGoodsData("�I������","Metadata/Items/Maps/MapWorldsRamparts",3,"0|1|2|")
SetSellGoodsData("�I����Ѩ","Metadata/Items/Maps/MapWorldsUndergroundSea",9,"0|1|2|")
SetSellGoodsData("��ľ�ֵ�","Metadata/Items/Maps/MapWorldsAshenWood",9,"0|1|2|")
SetSellGoodsData("�o�O��Ĺ","Metadata/Items/Maps/MapWorldsMausoleum",3,"0|1|2|")
SetSellGoodsData("�Ļ�լۡ","Metadata/Items/Maps/MapWorldsHauntedMansion",3,"0|1|2|")
SetSellGoodsData("�o����Ұ","Metadata/Items/Maps/MapWorldsFields",3,"0|1|2|")
SetSellGoodsData("����ɽ��","Metadata/Items/Maps/MapWorldsGorge",3,"0|1|2|")
SetSellGoodsData("�����Ҟ�","Metadata/Items/Maps/MapWorldsStrand",9,"0|1|2|")
SetSellGoodsData("Ǭ���ֵ�","Metadata/Items/Maps/MapWorldsPeninsula",3,"0|1|2|")
SetSellGoodsData("����ħ��","Metadata/Items/Maps/MapWorldsSprings",9,"0|1|2|")
SetSellGoodsData("ؚ�֮��","Metadata/Items/Maps/MapWorldsDesert",3,"0|1|2|")
SetSellGoodsData("Σ����Ū","Metadata/Items/Maps/MapWorldsAlleyways",9,"0|1|2|")
SetSellGoodsData("��ӰĹ��","Metadata/Items/Maps/MapWorldsGraveyard",9,"0|1|2|")
SetSellGoodsData("�ű����S","Metadata/Items/Maps/MapWorldsArsenal",9,"0|1|2|")
SetSellGoodsData("ƽ픻�Į","Metadata/Items/Maps/MapWorldsMesa",3,"0|1|2|")
SetSellGoodsData("���L�{��","Metadata/Items/Maps/MapWorldsCoves",3,"0|1|2|")
SetSellGoodsData("�Κ�����","Metadata/Items/Maps/MapWorldsBog",3,"0|1|2|")
SetSellGoodsData("�ĵ�","Metadata/Items/Maps/MapWorldsWasteland",3,"0|1|2|")
SetSellGoodsData("��犘�","Metadata/Items/Maps/MapWorldsBelfry",3,"0|1|2|")
SetSellGoodsData("�Ų����^","Metadata/Items/Maps/MapWorldsMuseum",3,"0|1|2|")
SetSellGoodsData("������","Metadata/Items/Maps/MapWorldsArena",3,"0|1|2|")
SetSellGoodsData("����Ĺ��","Metadata/Items/Maps/MapWorldsCemetery",3,"0|1|2|")
SetSellGoodsData("ħ������","Metadata/Items/Maps/MapWorldsVault",3,"0|1|2|")
SetSellGoodsData("Σ�Cˮ��","Metadata/Items/Maps/MapWorldsWaterways",3,"0|1|2|")
SetSellGoodsData("�Ⱦ����","Metadata/Items/Maps/MapWorldsMoonTemple",3,"0|1|2|")
SetSellGoodsData("�ߠ�������","Metadata/Items/Maps/MapWorldsVaalPyramid",3,"0|1|2|")
SetSellGoodsData("�L���z�E","Metadata/Items/Maps/MapWorldsOvergrownRuin",3,"0|1|2|")
SetSellGoodsData("�h���м�","Metadata/Items/Maps/MapWorldsBazaar",9,"0|1|2|")
SetSellGoodsData("ĺɫɳ��","Metadata/Items/Maps/MapWorldsDunes",9,"0|1|2|")
SetSellGoodsData("�Z��֮��","Metadata/Items/Maps/MapWorldsTemple",3,"0|1|2|")
SetSellGoodsData("�h��Σ��","Metadata/Items/Maps/MapWorldsAncientCity",3,"0|1|2|")
SetSellGoodsData("������ˮ��","Metadata/Items/Maps/MapWorldsToxicSewer",3,"0|1|2|")
SetSellGoodsData("��ɽ����","Metadata/Items/Maps/MapWorldsVolcano",9,"0|1|2|")
SetSellGoodsData("�ŵ�����","Metadata/Items/Maps/MapWorldsRelicChambers",3,"0|1|2|")
SetSellGoodsData("�����L��","Metadata/Items/Maps/MapWorldsArcade",9,"0|1|2|")
SetSellGoodsData("�b����","Metadata/Items/Maps/MapWorldsCage",3,"0|1|2|")
SetSellGoodsData("�xꎪz��","Metadata/Items/Maps/MapWorldsPen",3,"0|1|2|")
SetSellGoodsData("�Ͼ��Vɽ","Metadata/Items/Maps/MapWorldsCrystalOre",3,"0|1|2|")
SetSellGoodsData("��������","Metadata/Items/Maps/MapWorldsDefiledCathedral",3,"0|1|2|")
SetSellGoodsData("�޿�","Metadata/Items/Maps/MapWorldsPit",3,"0|1|2|")
SetSellGoodsData("����Ĺ�V","Metadata/Items/Maps/MapWorldsArachnidTomb",9,"0|1|2|")
SetSellGoodsData("��������","Metadata/Items/Maps/MapWorldsWastePool",3,"0|1|2|")
SetSellGoodsData("Ԏ�H����","Metadata/Items/Maps/MapWorldsGeode",3,"0|1|2|")
SetSellGoodsData("���E��Ĺ","Metadata/Items/Maps/MapWorldsBoneCrypt",3,"0|1|2|")
SetSellGoodsData("����֮��","Metadata/Items/Maps/MapWorldsLavaChamber",3,"0|1|2|")
SetSellGoodsData("���։VĹ","Metadata/Items/Maps/MapWorldsBarrows",9,"0|1|2|")
SetSellGoodsData("ħ�`�êz","Metadata/Items/Maps/MapWorldsPhantasmagoria",3,"0|1|2|")
SetSellGoodsData("���`�WԺ","Metadata/Items/Maps/MapWorldsAcademy",3,"0|1|2|")
SetSellGoodsData("霪z����","Metadata/Items/Maps/MapWorldsTower",3,"0|1|2|")
SetSellGoodsData("��ɽ�׿�","Metadata/Items/Maps/MapWorldsCaldera",3,"0|1|2|")



--SetCompoundDivinationCard(name,className,nType) --������Ҫ�ϳɵ����˿� name=��Ƭ�� className=��Ƭ���� nType=�ϳɳ��� nil����Ϊ���ۺ�ʱ���ϳ� 0Ϊû��ˢ���ź� 1Ϊֻ��ˢ���ź�
SetCompoundDivinationCard("�ڰ�����","Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�m�������֮��","Metadata/Items/DivinationCards/DivinationCardLantadorsLostLove")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("ޱ���ŵ�����","Metadata/Items/DivinationCards/DivinationCardViniasToken")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�鱦��","Metadata/Items/DivinationCards/DivinationCardTheGemcutter")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��������","Metadata/Items/DivinationCards/DivinationCardChaoticDisposition")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����","Metadata/Items/DivinationCards/DivinationCardEmperorsLuck")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��������","Metadata/Items/DivinationCards/DivinationCardLuckyConnections")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����֮��","Metadata/Items/DivinationCards/DivinationCardRainOfChaos")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�|��֮��","Metadata/Items/DivinationCards/DivinationCardCovetedPossession")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��ؔ����","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("������","Metadata/Items/DivinationCards/DivinationCardTheInventor")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��ϲ��","Metadata/Items/DivinationCards/DivinationCardJackInTheBox")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����","Metadata/Items/DivinationCards/DivinationCardTheUnion")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("Թ��","Metadata/Items/DivinationCards/DivinationCardTheWrath")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�ֱ�","Metadata/Items/DivinationCards/DivinationCardTheCatalyst")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����ר��","Metadata/Items/DivinationCards/DivinationCardTheSurvivalist")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�ҳ�","Metadata/Items/DivinationCards/DivinationCardLoyalty")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��ͼʦ","Metadata/Items/DivinationCards/DivinationCardTheCartographer")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����֮��","Metadata/Items/DivinationCards/DivinationCardTheSephirot")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�}ͽ֮ؔ","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�o��","Metadata/Items/DivinationCards/DivinationCardNoTraces")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��","Metadata/Items/DivinationCards/DivinationCardTheInnocent")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����","Metadata/Items/DivinationCards/DivinationCardTheFool")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��ͽ","Metadata/Items/DivinationCards/DivinationCardTheGambler")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("������ʦ","Metadata/Items/DivinationCards/DivinationCardTheMasterArtisan")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����","Metadata/Items/DivinationCards/DivinationCardTheLover")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����","Metadata/Items/DivinationCards/DivinationCardTheOpulecent")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("ǫѷ","Metadata/Items/DivinationCards/DivinationCardHumility",0)--���úϳ��ҳ����˿�

--SetNeedBuyGoodsData(name,className,cnt,buyName,buyClassName)--���ÿ�ʼˢ���ʱ���⹺��ָ����Ʒ
--name=�Լ��е�ͨ���� className=�Լ��е�ͨ������ cnt=�����ٸ����� 0��nil ���ᴥ�� buyName=��Ҫ�������Ʒ�� buyClassName=��Ҫ�������Ʒ����

g_buyNpcData={
mapClassName="1_1_town"
,className="Metadata/NPC/Act1/NessaTown"
}--������1�� 1_1_town ��NPC�¹��� name:��ɳ

SetNeedBuyGoodsData("֪ʶ����","Metadata/Items/Currency/CurrencyIdentification",nil,"���;���","Metadata/Items/Currency/CurrencyPortal")
SetNeedBuyGoodsData("���;���","Metadata/Items/Currency/CurrencyPortal",nil,"�ɱ�ʯ","Metadata/Items/Currency/CurrencyUpgradeToMagic")
--SetNeedBuyGoodsData("�ɱ�ʯ","Metadata/Items/Currency/CurrencyUpgradeToMagic",200,"����ʯ","Metadata/Items/Currency/CurrencyAddModToMagic")
--SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyAddModToMagic",200,"����ʯ","Metadata/Items/Currency/CurrencyRerollMagic")
--SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyRerollMagic",nil,"����ʯ","Metadata/Items/Currency/CurrencyRerollSocketNumbers")
--SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyRerollSocketNumbers",100,"����ʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks")
--SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks",100,"����ʯ","Metadata/Items/Currency/CurrencyUpgradeRandomly")
--SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyUpgradeRandomly",100,"����ʯ","Metadata/Items/Currency/CurrencyConvertToNormal")
--SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyConvertToNormal",nil,"���ʯ","Metadata/Items/Currency/CurrencyPassiveRefund")
--SetNeedBuyGoodsData("���ʯ","Metadata/Items/Currency/CurrencyPassiveRefund",nil,"���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare")


--SetGoodsCaoZuo(goodsType,czType,name,className,wordName,wordClassName,pingzhi,cnt,color,socketCnt,lineCnt,checkCangKu)-- ����Ҫ��������Ʒ
--goodsType �ַ����� ��������Ʒ���ͺ����������� nil ֧���������� ����������|�ֿ� --saveType ���� ֧���������� ����������|�ֿ� ����ҩ��|ħ��ҩ��|����ҩ��|ͨ��|����|��ָ|צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|�������ܱ�ʯ|�������ܱ�ʯ|����|����|����|Ь��|�·�|ͷ��|��|С��ʥ��|����ʥ��|����ʥ��|�ɶѵ�ͨ��|������Ʒ|����|����ҩ��|����ҩ��|����ͼ||���|��ͼ��Ƭ|����װ��|�̳���Ʒ|�鱦|���˿�|�Թ���Ʒ|�Թ���Ʒ|����Թ���Ʒ|��϶֮ʯ|����ʯ|����֮��|����װ����Ƭ|��Ԩ�鱦|��Խͨ��|����̽��������Ƕ��ͨ��|����ʯ|��Ƭ|����֮��|����ذ��|ս��|����̽���ɶѵ��ɲ���ͨ��|
--czType:�ַ����� 0Ϊʰ 1�� 2�� 3�� 4���� �ɶ���м���|����
--name �ַ����� ��Ʒ������ �������� nil
--className �ַ����� ��Ʒ������ �������� nil
--wordName �ַ����� ��Ʒ�Ĵ�׺�� �������� nil
--wordClassName �ַ����� ��Ʒ�Ĵ�׺���� �������� nil
--pingzhi ������ ��Ʒ��Ʒ�� �������� nil
--cnt ������ �������� �������� nil
--color �ַ����� ��ɫ 0�� 1�� 2�� 3�� �����|���� nilΪ����
--socketCnt ������ �ܶ����� �������� nil
--lineCnt ������ �������� �������� nil
--checkCangKu ���㱣������ʱ�Ƿ����ֿ��ڵ�����Ҳ�����ȥ nil��falseΪ������ֿ� true Ϊ��Ҫ����
SetGoodsCaoZuo("ͨ��|�ɶѵ�ͨ��|����ͼ","0|2")--����������ü��
SetGoodsCaoZuo("�������ܱ�ʯ|�������ܱ�ʯ","0|2",nil,nil,nil,nil,25)--ʰȡƷ�ʳ���5�ļ��ܱ�ʯ
SetSaveIndex("����ͼ","2")
SetSaveIndex("����|��ָ|צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|����|����|Ь��|ͷ��","3")
SetSaveIndex("�鱦|���˿�|�·�|��|����|��ͼ��Ƭ","2")
SetSaveIndex("����ҩ��|ħ��ҩ��|����ҩ��|����ҩ��","2")
SetSaveIndex(nil,"2","�ħ�۾�","Metadata/Items/Metamorphosis/MetamorphosisEye")
SetSaveIndex(nil,"2","Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy")
SetSaveIndex(nil,"2","朽Yʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks")
SetSaveIndex(nil,"2","����ʯ","Metadata/Items/Currency/CurrencyRerollMagic")



SetGoodsCaoZuo(nil,nil,"֪ʶ����","Metadata/Items/Currency/CurrencyIdentification",nil,nil,nil,40)--���˾Ͳ�����
SetGoodsCaoZuo(nil,nil,"���;���","Metadata/Items/Currency/CurrencyPortal",nil,nil,nil,80)--���˾Ͳ�����
SetGoodsCaoZuo(nil,nil,"���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare",nil,nil,nil,40)--���ϱ���40
SetGoodsCaoZuo(nil,"1|3","���긣��","Metadata/Items/MicrotransactionCurrency/MicrotransactionTencentEventCoin")--
SetGoodsCaoZuo(nil,"1|3","��������","Metadata/Items/Currency/CurrencyFlaskQuality")--
SetGoodsCaoZuo(nil,"0","ĥ��ʯ","Metadata/Items/Currency/CurrencyWeaponQuality")--ĥ��ʯ����
SetGoodsCaoZuo(nil,"0","����Ƭ","Metadata/Items/Currency/CurrencyArmourQuality")--����Ƭ����
SetGoodsCaoZuo(nil,"3","������Ƭ","Metadata/Items/Currency/CurrencyIdentificationShard")--������Ƭ��
SetGoodsCaoZuo(nil,"3","Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy")--��Ԥ��
SetGoodsCaoZuo(nil,"0|2","�m�������֮��","Metadata/Items/DivinationCards/DivinationCardLantadorsLostLove")
SetGoodsCaoZuo(nil,"1|3","ף��ʯ","Metadata/Items/Currency/CurrencyRerollImplicit")--
SetGoodsCaoZuo(nil,"1|3","���`ʯ","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSockets")--
SetGoodsCaoZuo(nil,"1|3","����ʯ","Metadata/Items/Currency/CurrencyStrongboxQuality")--


SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisBrain")--�ħ�X�費��
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisEye")--�ħ�۾�����
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisLiver")--�ħ���K����
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisLung")--�ħ���K����
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisHeart")--�ħ���K����

SetGoodsCaoZuo("����ͼ","1|3","ŭ��֮��","Metadata/Items/Maps/MapWorldsPier")
SetGoodsCaoZuo("����ͼ","1|3","���ʴ��","Metadata/Items/Maps/MapWorldsSulphurVents")
SetGoodsCaoZuo("����ͼ","1|3","����Σ��","Metadata/Items/Maps/MapWorldsLookout")
SetGoodsCaoZuo("����ͼ","1|3","�Ÿ��و�","Metadata/Items/Maps/MapWorldsRacecourse")
SetGoodsCaoZuo("����ͼ","1|3","Ѫ���ӝ�","Metadata/Items/Maps/MapWorldsPrimordialPool")
SetGoodsCaoZuo("����ͼ","1|3","ꎻ�����","Metadata/Items/Maps/MapWorldsMudGeyser")
SetGoodsCaoZuo("����ͼ","1|3","ħ������","Metadata/Items/Maps/MapWorldsVault")
SetGoodsCaoZuo("����ͼ","1|3","�ě���Ұ","Metadata/Items/Maps/MapWorldsLeyline")
SetGoodsCaoZuo("����ͼ","1|3","�V��","Metadata/Items/Maps/MapWorldsPlaza")
SetGoodsCaoZuo("����ͼ","1|3","�@��Է","Metadata/Items/Maps/MapWorldsPark")
SetGoodsCaoZuo("����ͼ","1|3","��������","Metadata/Items/Maps/MapWorldsColonnade")
SetGoodsCaoZuo("����ͼ","1|3","�ۻ��Ҟ�","Metadata/Items/Maps/MapWorldsEstuary")
SetGoodsCaoZuo("����ͼ","1|3","ĺ�⺣��","Metadata/Items/Maps/MapWorldsShore")
SetGoodsCaoZuo("����ͼ","1|3","���g֮ͥ","Metadata/Items/Maps/MapWorldsCourtyard")
SetGoodsCaoZuo("����ͼ","1|3","�@�֘䅲","Metadata/Items/Maps/MapWorldsThicket")
SetGoodsCaoZuo("����ͼ","1|3","���ݜط�","Metadata/Items/Maps/MapWorldsConservatory")
SetGoodsCaoZuo("����ͼ","1|3","�}��","Metadata/Items/Maps/MapWorldsBasilica")
SetGoodsCaoZuo("����ͼ","1|3","Σ�C����","Metadata/Items/Maps/MapWorldsReef")
SetGoodsCaoZuo("����ͼ","1|3","�z�E�U��","Metadata/Items/Maps/MapWorldsCastleRuins")
SetGoodsCaoZuo("����ͼ","1|3","��ꖍ{��","Metadata/Items/Maps/MapWorldsCanyon")
SetGoodsCaoZuo("����ͼ","1|3","�ű�","Metadata/Items/Maps/MapWorldsChateau")
SetGoodsCaoZuo("����ͼ","1|3","�ĵ�","Metadata/Items/Maps/MapWorldsWasteland")
SetGoodsCaoZuo("����ͼ","1|3","��犘�","Metadata/Items/Maps/MapWorldsBelfry")
SetGoodsCaoZuo("����ͼ","1|3","ħ������","Metadata/Items/Maps/MapWorldsVault")
SetGoodsCaoZuo("����ͼ","1|3","��ɽ����","Metadata/Items/Maps/MapWorldsVolcano")
SetGoodsCaoZuo("����ͼ","1|3","�ŵ�����","Metadata/Items/Maps/MapWorldsRelicChambers")
SetGoodsCaoZuo("����ͼ","1|3","��������","Metadata/Items/Maps/MapWorldsWastePool")
SetGoodsCaoZuo("����ͼ","1|3","霪z����","Metadata/Items/Maps/MapWorldsTower")
SetGoodsCaoZuo("����ͼ","1|3","��ɽ�׿�","Metadata/Items/Maps/MapWorldsCaldera")

SetGoodsCaoZuo("����ͼ","1|3","�����Ҟ�","Metadata/Items/Maps/MapWorldsCursedCrypt",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","�I��ɽ��","Metadata/Items/Maps/MapWorldsAtoll",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","����Ĺ��","Metadata/Items/Maps/MapWorldsCemetery",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","ĺɫɳ��","Metadata/Items/Maps/MapWorldsDunes",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","���E��Ĺ","Metadata/Items/Maps/MapWorldsBoneCrypt",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","�ߠ�������","Metadata/Items/Maps/MapWorldsVaalPyramid",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","�ܲ����","Metadata/Items/Maps/MapWorldsOvergrownShrine",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","�I����Ѩ","Metadata/Items/Maps/MapWorldsUndergroundSea",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","ħӰĹ��","Metadata/Items/Maps/MapWorldsNecropolis",nil,nil,nil,nil,"3")


--����boss�� �ַ�����
--AddJiaoYiBossName(bossName,computerName,mohu) ��Ӳֿ��
--bossName �ֿ������ 
--computerName ������ ����Ϊĳ̨����ָ����ͬ�Ĳֿ�� ������nil
--mohu trueΪģ��ƥ�� false �� nil ����Ϊ����ƥ��
AddJiaoYiBossName("����������Ҫ�����ջ��Ĳֿ������")
--AddJiaoYiTime(startHour,endHour)--��ӽ���ʱ��δ��ڵ���startHour ����С�ڵ���endHour ʱ���⽻��
--startHour ������ ��ʼ���׵�Сʱ 
--endHour ������ �������׵�Сʱ
AddJiaoYiTime(0,12)--0�㵽12����⽻��

--SetJiaoYiGoods(goodsType,name,className,wordName,wordClassName,color,chufaCnt)-- ����Ҫ���׵���Ʒ
--goodsType �ַ����� ��������Ʒ���ͺ����������� nil ֧���������� ����������|�ֿ� --saveType ���� ֧���������� ����������|�ֿ� ����ҩ��|ħ��ҩ��|����ҩ��|ͨ��|����|��ָ|צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|�������ܱ�ʯ|�������ܱ�ʯ|����|����|����|Ь��|�·�|ͷ��|��|С��ʥ��|����ʥ��|����ʥ��|�ɶѵ�ͨ��|������Ʒ|����|����ҩ��|����ҩ��|����ͼ||���|��ͼ��Ƭ|����װ��|�̳���Ʒ|�鱦|���˿�|�Թ���Ʒ|�Թ���Ʒ|����Թ���Ʒ|��϶֮ʯ|����ʯ|����֮��|����װ����Ƭ|��Ԩ�鱦|��Խͨ��|����̽��������Ƕ��ͨ��|����ʯ|��Ƭ|����֮��|����ذ��|ս��|����̽���ɶѵ��ɲ���ͨ��|
--name �ַ����� ��Ʒ������
--className �ַ����� ��Ʒ������
--wordName �ַ����� ��Ʒ�Ĵ�׺��
--wordClassName �ַ����� ��Ʒ�Ĵ�׺����
--color �ַ����� ��ɫ 0�� 1�� 2�� 3�� �����|���� nilΪ����
--chufaCnt ������ �������׵����� 0��nil Ϊ������
--bossJiaoYiCnt ������ ����ʱ�ֿ�Ž��׸��һ��ŵ�����
