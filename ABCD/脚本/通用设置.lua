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
g_needMinimizeGame=nil			--��С���[�򴰿� trueΪ��С�� false��nilΪ����С��
g_imBoss=false			--����ǲֿ��ҪΪtrue �һ���Ϊfalse
g_attackDis=50					--��������
g_yiJieTimeOut=15*60			--����ͼ�ڵĳ�ʱʱ�� ��λΪ�� ���δ���þͻ���g_timeOut *�ǳ˺� ����Ϊ15����60=15����
g_timeOut=15*60					--��һ����ͼ����ʱ�䳬�����õ� �����¿�ͼ���� ��λΪ��
g_addTianFu=true				--�Զ����趨�õ����ü��츳 trueΪ�� nil��falseΪ����
g_shengJiBaoShi=true			--�Զ�������ʯ trueΪ���� nil��falseΪ������
g_sellSkillGem=true				--�Զ�������40Ʒ�ʵļ��ܱ�ʯ
g_notHuanYaoLv=82				--���ڵ��ڶ��ټ�ֻ����ɫ����ҩ
g_needAutoChangeEquip=true		--�����Զ���װ trueΪ�� nil��falseΪ����
g_needAutoSetBaoShi=true		--�����Զ�����ʯ trueΪ�� nil��falseΪ����
g_bossGiveZhuangBei=true		--����ʱ�ֿ�Ÿ���ȱ�ٵĸ߼���װ�е�װ��
g_xiaoHaoGetZhuangBei=true		--�һ�����ֿ��������߼���װ�е�װ��
g_jiaoYiAddSellGoodsTime=250      --������ ����ʱ�Ѷ����ŵ��������ĵȴ�ʱ�� ��λΪ���� Ĭ��Ϊ250
g_queueTime=300*60--��������Ŷ�ʱ��Ϊ300����

SetGameMode(1)----mode ������ ��Ϸģʽ 0Ϊ�Զ� 1ΪԤ�� 2Ϊͬ�� Ĭ��Ϊͬ��ģʽ

-- SetZhuangBeiBoss(bossName,srvName)--���÷�װ�ֿ�� bossName=��װ������ �ַ����� srvName=���������֣�����������ͬһ�����õĻ����Ϸ��������ֿɵ������� ������ǿɺ��� ����nil 
-- SetZhuangBeiBoss("nil","nil")--��װ���Ĳֿ�� �������Ҫ ��ע�͵�


--����boss�� �ַ�����
--AddJiaoYiBossName(bossName,computerName,mohu) ��Ӳֿ��
--bossName �ֿ������ 
--computerName ������ ����Ϊĳ̨����ָ����ͬ�Ĳֿ�� ������nil
--mohu trueΪģ��ƥ�� false �� nil ����Ϊ����ƥ��
--AddJiaoYiBossName("nil")
--AddJiaoYiTime(startHour,endHour)--��ӽ���ʱ��δ��ڵ���startHour ����С�ڵ���endHour ʱ���⽻��
-- StartHour ������ ��ʼ���׵�Сʱ 
--endHour ������ �������׵�Сʱ
--AddJiaoYiTime(23,8)--����11�㵽8��ǰ���⽻��


--SetAtlasRegionsUseShouWangShiCnt("0|1|2|3|4|5|6|7",2)--�����������ż�������ʯ
--��������츳
SetNeedAddTianFu("����ͼ�츳=atlas_boss_adjacent_maps_2-�����؈D����C��|atlas_path_11-�����؈D����C��|atlas_path_23_-�����؈D����C��|atlas_boss_adjacent_maps_1-�����؈D����C��|atlas_rares_1_2-ϡ�й����}�u�w|atlas_rares_1_1-ϡ�й����}�u�w|atlas_rares_1_4__-ϡ�й����}�u�w|atlas_rares_1_3-����Ʒ|atlas_boss_2_1-�؈D�^Ŀϡ�ж�|atlas_boss_2_2-�؈D�^Ŀϡ�ж�|atlas_boss_2_4-�؈D�^Ŀϡ�ж�|atlas_boss_adjacent_maps_8-�����؈D����C��|atlas_zana_1_11-�����˵؈DƷ�||atlas_zana_1_3-�����˵؈DƷ�||atlas_zana_1_5_-�ڴ��@ϲ|atlas_zana_1_1-�����˵؈DƷ�||atlas_zana_1_2-�����˵؈DƷ�||atlas_path_96-�����}�u�؈D|atlas_map_tier_5_1-���A�؈D�C��|atlas_map_tier_5_2-���A�؈D�C��|atlas_map_tier_4_1-���A�؈D�C��|atlas_map_tier_5_3-���܍{��|atlas_map_tier_3_1-���A�؈D�C��|atlas_map_tier_3_2-���A�؈D�C��|atlas_map_tier_3_3-���ܺ���|atlas_heist_1_5-�ٱI��ӛ�ѯB����|atlas_heist_1_2-�ٱI��ӛ�ѯB����|atlas_heist_1_3-�ٱI�{�D�C��|atlas_heist_1_4-���܂}��|atlas_boss_2_3-�����nͻ|")
-- SetNeedAddTianFu("���ͼ������0=atlas_haewark_hamlet_ritual1-��Ʒ����|atlas_haewark_hamlet_ritual3-��ʥ֮��|atlas_haewark_hamlet_ritual2-��Ʒ����|atlas_haewark_hamlet_ritual4-Ѫ�Ĵ���|atlas_lex_proxima_torment1-��������Ʒ����|atlas_lex_proxima_torment2-����|atlas_haewark_hamlet_essence1-���⾫������|atlas_haewark_hamlet_essence3-�ɿظ���|")
-- SetNeedAddTianFu("���ͼ������1=atlas_valdos_rest_harbinger1_-���������ߵ�����|atlas_valdos_rest_harbinger3-ج����ͷ|atlas_valdos_rest_harbinger2-���������ߵ�����|atlas_valdos_rest_harbinger4-�⽻����|atlas_tirns_end_delirium7-����������|atlas_lex_ejoris_delirium6-��������|atlas_tirns_end_delirium9-����������|atlas_tirns_end_delirium6-����°�|")
-- SetNeedAddTianFu("���ͼ������2=atlas_new_vastir_anarchy1-�ɶ�������ˢ�¼���|atlas_new_vastir_anarchy3-���׻���|atlas_new_vastir_anarchy2-�ɶ�������ˢ�¼���|atlas_new_vastir_anarchy4-��������|atlas_new_vastir_legion1-ս��֮��ʯ������|atlas_glennach_cairns_legion5-ֱ��о�|atlas_new_vastir_legion3-ս��֮��ʯ������|atlas_new_vastir_legion4-���ճ־�|")
-- SetNeedAddTianFu("���ͼ������3=atlas_expedition1-�����زؼ���|atlas_expedition4-����ר��|atlas_expedition3-�����زؼ���|atlas_expedition6-�����ʶ |atlas_lex_proxima_breach1-��϶����|atlas_lex_proxima_breach6-����|atlas_lex_proxima_breach4-��϶����|atlas_lex_proxima_breach8-���ڰ���|")
--strIndex �ַ����� ���ͼ����������� ��֧�ֶ�����м���|���� (��ΧΪ0-3�ֱ�������ֿ˴塢�߶���֮Ϣ�������ɺ�ʯڣ��������ɭ)
--cnt ������ ��Ƕ������ʯ���� ���Ϊ4�� ÿ�ο�ͼ�Ὣ����ʯ��Ƕ���������

--�п���ʾ
-- AddJiLuGoodsData("Metadata/Items/Currency/CurrencyAddModToRare","���")
-- AddJiLuGoodsData("Metadata/Items/Currency/CurrencyRerollRare","����")
-- AddJiLuGoodsData("Metadata/Items/Currency/CurrencyDuplicate","����")

--����
--g_needHpyh=false--�Ƿ�����Ż� trueΪ�Ż� false �� nilΪ���Ż�

--CPU�Ż�
g_needCpuyh=false --�Ƿ�cpu�Ż� trueΪ�Ż� false �� nilΪ���Ż�

--�ͷ��ڴ�
g_maxMemoryUse=nil

SetChatData(1,"1E�Q300C�u��?")
SetChatData(2,"���Խo��C�᣿")
SetChatData(3,"�x�x")

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
AddNeedBuySkillTime(2,"a2q7")
AddNeedBuySkillTime(1,"a2q6")
AddNeedBuySkillTime(2,"a2q9")
AddNeedBuySkillTime(1,"a2q9")
AddNeedBuySkillTime(2,"a2q2")
AddNeedBuySkillTime(1,"a2q8")
AddNeedBuySkillTime(1,"a2q2")
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
--SetNeedFlaskData(pos,flask)--����ҩ  pos=λ�� 1-5  flask=ҩ �ַ����ͣ�֧������ (����ҩ��,ħ��ҩ��,����ҩ��,����ҩ��,����ҩ��,����ҩ��,����ҩ��,����ҩ��,ˮ��ҩ��,�Ͼ�ҩ��,ʯӢҩ��,����ҩ��,ʯ��ҩ��,����ҩ��,����ҩ��,���ҩ��,����ҩ��,����ҩ��)
SetNeedFlaskData(1,"����ҩ��","�ܷ�֮,FlaskBleedCorruptingBloodImmunity1",8)
SetNeedFlaskData(2,"����ҩ��","����֮,LocalFlaskImmuneToMaimAndHinder3",9)
SetNeedFlaskData(3,"ˮ��ҩ��","ˮ��֮,FlaskBuffResistancesWhileHealing")
SetNeedFlaskData(4,"ˮ��ҩ��","¹֮,FlaskFreezeAndChillImmunityDuringEffect")
SetNeedFlaskData(5,"ħ��ҩ��","�ϵK��֮,LocalManaFlaskHinderNearbyEnemies2",48)

--AddNotMakeTaskData(taskClassName)--��Ӳ���Ҫ�������� taskClassNameΪ��������
AddNotMakeTaskData("a2q5")--����ʥ��
AddNotMakeTaskData("a2q10")--��ɫ����
AddNotMakeTaskData("a3q13")--�����Ŀ���
--AddNotMakeTaskData("a3q12")--����֮��
AddNotMakeTaskData("a6q5")--��˹�ش���
AddNotMakeTaskData("a7q5")--��ɫ��׹
--AddNotMakeTaskData("a7q8")--��˹�ص�Ĺ��
AddNotMakeTaskData("a8q5")--��˹����֮��
AddNotMakeTaskData("a9q4")--����֮��
AddNotMakeTaskData("a10q4")--�ް��ɻ�
AddNotMakeTaskData("a10q5")--�֮·

g_addHpVal=0.7--HP���ڶ��ٳԺ�ҩ
g_addMpVal=0.2--MP���ڶ��ٳ���ҩ

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
SetSaveIndex("ͨ��|�ɶѵ�ͨ��|���ͼ��������Ʒ","1|4")
SetSaveIndex("����ͼ","2")
SetSaveIndex("����|��ָ|צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|����|����|Ь��|ͷ��","3|4")
SetSaveIndex("�������ܱ�ʯ|�������ܱ�ʯ|�鱦|���˿�|�·�|��|����|��ͼ��Ƭ","4")
SetSaveIndex("����ҩ��|ħ��ҩ��|����ҩ��|����ҩ��","4")
SetSaveIndex(nil,"4","�ħ�۾�","Metadata/Items/Metamorphosis/MetamorphosisEye")
SetSaveIndex(nil,"4","Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy")
SetSaveIndex(nil,"4","朽Yʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks")
SetSaveIndex(nil,"4","����ʯ","Metadata/Items/Currency/CurrencyRerollMagic")
SetSaveIndex("HarvestSeed","4")--����
SetSaveIndex("HeistBlueprint","4|1")--��ͼ
SetSaveIndex(nil,"4",nil,"Metadata/Items/MapFragments/ClassicVaultKey")--�ŵ��z�
SetSaveIndex(nil,"4",nil,"Metadata/Items/MapFragments/340VaultKey")--�����z�
SetSaveIndex(nil,"4",nil,"Metadata/Items/MapFragments/VaalVaultKey")--�ߠ��z�
SetSaveIndex(nil,"4",nil,"Metadata/Items/MapFragments/RitualFragment")--��Ѫ����
SetSaveIndex("ExpeditionLogbook","4|1")--̽�U���I

------------------�һ����
g_notShuaBaiPao=false    --�Ƿ���Ҫˢ���� trueΪ����Ҫ false��nilΪ��Ҫ
g_yijieNoWhiteMonster=true		--���ʱ�Ƿ񲻴�׹� trueΪ���� nil��falseΪ��
g_yijieNoWhiteBox=true			--���ʱ�Ƿ񲻿������� trueΪ���� nil��falseΪ��
g_useYiJieWanChengDuLv=75	--ʹ�����������ɶ��Ǹ����õĵȼ������δ������ˢȫͼ
g_yiJieWanChengDu=0.8		--�����ɶ� ��ɶ��پͻ�ȥ Ϊ1��1���µ�С��
g_yongHengShiBeiLv=70		--���ڵ��ڶ��ټ�������ʯ�� 
g_needTaFangLv=75			--���ڵ��ڶ��ټ�������
g_needLianMoLv=70			--���ڵ��ڶ��ټ�����ħ
g_attackFreezeMonsterLv=80	--���ڵ��ڶ��ټ��������
g_needChuanYueLv=70      	--���ڵ��ڶ��ټ���Խ��
g_needLieXiLv=70			--��춵��ڶ��ټ���ʱ���ѷ��
g_needMiWuLv=70				--���ڵ��ڶ��ټ�������
g_yuyanCnt=30				--����������ȥԤ�ԣ�С��10���һ���nil�����ᴥ�� ����趨ȥԤ�ԣ������滹��Ҫ���ý��׸��ֿ�ŵ�Ԥ��
g_puTongWanChengDu=0.8		--��ͨ��ͼ��ɶ� �����ò�Ӱ�����ߣ�ֻ������ˢͼ��Ч(�� ˢ���� ����ʱָ������ ������ɺ�����) ���鷶Χ0.5-1 Ĭ��Ϊ1����ˢȫͼ
g_usePuTongWanChengDuLv=75	--ʹ����ͨ��ͼ��ɶ��Ǹ����õĵȼ������δ������ˢȫͼ Ĭ��Ϊnil��ʹ��
g_useCsjzHp=1             --˲����Ѫʹ�ô��;���
g_useCsjzMinHp= 0.1         --Ѫ��̽�����õ�ֵ����ʹ�ô���
g_yiJieLv=100				--���˶��ټ���ȥˢ���
g_checkSellMapCnt=0		--��ͼ������������Ż�����۵�ͼ
g_destroyNoUseMap=true		--�����������ò�ʹ�õĵ�ͼ nil��falseΪ������
g_mapUseFuHaoLv=75			--���ڵ��ڶ��ټ�����ͼʹ�ø���ʯ nilΪ��Զ��ʹ��
g_mapUseZengFuLv=75			--���ڵ��ڶ��ټ�����ͼʹ������ʯ nilΪ��Զ��ʹ��
g_mapUseDianJingLv=75		--���ڵ��ڶ��ټ��԰�ͼʹ�õ��ʯ nilΪ��Զ��ʹ��
g_mapUseTuiBianLv=75		--���ڵ��ڶ��ټ��԰�ͼʹ���ɱ�ʯ nilΪ��Զ��ʹ��
g_mapUseJiHuiLv=75			--���ڵ��ڶ��ټ��԰�ͼʹ�û���ʯ nilΪ��Զ��ʹ��
g_mapUseWaErLv=80			--���ڵ��ڶ��ټ��԰ס�����ͼʹ���߶����� nilΪ��Զ��ʹ��
g_mapUseDingZiLv=80			--���ڵ��ڶ��ټ�ʹ����ͼ�� nilΪ��Զ��ʹ��
g_noUseMapLv=1				--��ʹ�á�������ٽ׼����ϵĵ�ͼ nil��0Ϊ���� �������ȵĵ�ͼ����
g_needZaFenLv=70           --���ö��ټ���ʼ��������ը���淨
g_needMengYanLv=70          --70���Ժ�͵�����
g_needSuDiLv=80             --��75����ǿϮ�޵�����
SetUseArchnemesisGoods("Generic|Currency|Uniques|Gems|Maps|Trinkets|Armour|Weapon|Essences|Fragments|Scarabs|Labyrinth|DivinationCards|Abyss|Harbinger|Breach|Fossils|Legion|Blight|Metamorphosis|Expedition|Heist|Ritual|Delirium","Generic","DivinationCards","Trinkets",nil,75)

------------------�һ����
--��ͼ���
--SetNotMapGoMap(className,cnt) �����޵�ͼ��δ���ȼ�ʱҪˢ�ľ����ͼ className�ַ����� ��ͼ���� cnt=����
SetNotMapGoMap("2_9_1",10)	--�޵�ͼʱˢѪɫͨ��
--SetNotMapGoMap("2_9_3",10)	--�޵�ͼʱˢ9��ɳĮ
--SetNotMapGoMap("2_9_7",10)	--�޵�ͼʱˢ9��ͨ��
--SetNotMapGoMap("2_10_9",10)	--�޵�ͼʱˢ10�²ع���
--SetNotMapGoMap("2_10_5",10)	    --�޵�ͼʱˢ10��

--SetNotOpenChestMap(mapClassName)--���ò������ӵĵ�ͼ 
--mapClassName=��ͼ���� �ַ�����
SetNotOpenChestMap("2_9_1")
SetNotOpenChestMap("2_10_5")


g_mapUseOrangeMap=false		--trueΪʹ�ó�ͼ nil��falseΪ��ʹ��
-- SetYouXianUseMapData(name,className,color)--��������ʹ�õ�����ͼ 
--name �ַ����� ��ͼ�� 
--className �ַ����� ��ͼ���� 
--color �ַ����� ��ɫ 0��1��2��3�� �м���|����
SetYouXianUseMapData("����Ĺ��","Metadata/Items/Maps/MapWorldsCemetery","0|1|2")
SetYouXianUseMapData("Զ���м�","Metadata/Items/Maps/MapWorldsBazaar","0|1|2")
SetYouXianUseMapData("������Ѩ","Metadata/Items/Maps/MapWorldsUndergroundSea","0|1|2")
SetYouXianUseMapData("ƽ����Į","Metadata/Items/Maps/MapWorldsMesa","0|1|2")
SetYouXianUseMapData("����֮��","Metadata/Items/Maps/MapWorldsPalace","0|1|2")
SetYouXianUseMapData("���ֿ��","Metadata/Items/Maps/MapWorldsFloodedMine","0|1|2")
SetYouXianUseMapData("����","Metadata/Items/Maps/MapWorldsColdRiver","0|1|2")
SetYouXianUseMapData("���볲Ѩ","Metadata/Items/Maps/MapWorldsArachnidNest","0|1|2")
SetYouXianUseMapData("�����๵","Metadata/Items/Maps/MapWorldsWastePool","0|1|2")
SetYouXianUseMapData("�����ص�","Metadata/Items/Maps/MapWorldsShrine","0|1|2")
SetYouXianUseMapData("ʥ��","Metadata/Items/Maps/MapWorldsBasilica","0|1|2")
SetYouXianUseMapData("����֮ͥ","Metadata/Items/Maps/MapWorldsCourtyard","0|1|2")
SetYouXianUseMapData("ĺ�⺣̲","Metadata/Items/Maps/MapWorldsShore","0|1|2")
SetYouXianUseMapData("��ɫޒ��","Metadata/Items/Maps/MapWorldsPromenade","0|1|2")
SetYouXianUseMapData("����Ͽ��","Metadata/Items/Maps/MapWorldsCoves","0|1|2")
SetYouXianUseMapData("��ɳ̲ͷ","Metadata/Items/Maps/MapWorldsBeach","0|1|2")
SetYouXianUseMapData("������ˮ��","Metadata/Items/Maps/MapWorldsToxicSewer","0|1|2")
SetYouXianUseMapData("����֮��","Metadata/Items/Maps/MapWorldsLavaChamber","0|1|2")
SetYouXianUseMapData("ʪ�ؿ�ɽ","Metadata/Items/Maps/MapWorldsMineralPools","0|1|2")
SetYouXianUseMapData("濾����","Metadata/Items/Maps/MapWorldsMoonTemple","0|1|2")
SetYouXianUseMapData("�ۻ���̲","Metadata/Items/Maps/MapWorldsEstuary","0|1|2")
SetYouXianUseMapData("�������","Metadata/Items/Maps/MapWorldsColosseum","0|1|2")

-- SetNoUseMapShuXing(className)--���ò�ʹ�ô���ĳ�����Եĵ�ͼ,���� classNameΪ��������
SetNoUseMapShuXing("map_monsters_reflect_%_physical_damage")--���ò�������������
SetNoUseMapShuXing("map_monsters_reflect_%_elemental_damage")--���ò���ħ����������
SetNoUseMapShuXing("map_players_no_regeneration_including_es")--�޷��ظ�
SetNoUseMapShuXing("is_blighted_map")--�����ͼ

-- SetSellGoodsData(name,className,cnt,color)--������(��)�ĵ�ͼ 
--name=��Ʒ�� className=��Ʒ���� ��ʶ����Ʒ�� ʶ�𲻵���ʶ������ cnt=������ȥ�� color=��ɫ 0�� 1�� 2�� �����|����
SetSellGoodsData("����Ĺ��","Metadata/Items/Maps/MapWorldsCemetery",6,"0|1|2|")
SetSellGoodsData("Զ���м�","Metadata/Items/Maps/MapWorldsBazaar",6,"0|1|2|")
SetSellGoodsData("������Ѩ","Metadata/Items/Maps/MapWorldsUndergroundSea",3,"0|1|2|")
SetSellGoodsData("ƽ����Į","Metadata/Items/Maps/MapWorldsMesa",6,"0|1|2|")
SetSellGoodsData("����֮��","Metadata/Items/Maps/MapWorldsPalace",3,"0|1|2|")
SetSellGoodsData("���ֿ��","Metadata/Items/Maps/MapWorldsFloodedMine",3,"0|1|2|")
SetSellGoodsData("���","Metadata/Items/Maps/MapWorldsForkingRiver",3,"0|1|2|")
SetSellGoodsData("����","Metadata/Items/Maps/MapWorldsColdRiver",3,"0|1|2|")
SetSellGoodsData("���볲Ѩ","Metadata/Items/Maps/MapWorldsArachnidNest",3,"0|1|2|")
SetSellGoodsData("�����๵","Metadata/Items/Maps/MapWorldsWastePool",3,"0|1|2|")
SetSellGoodsData("�����ص�","Metadata/Items/Maps/MapWorldsShrine",3,"0|1|2|")
SetSellGoodsData("ʥ��","Metadata/Items/Maps/MapWorldsBasilica",3,"0|1|2|")
SetSellGoodsData("����֮ͥ","Metadata/Items/Maps/MapWorldsCourtyard",3,"0|1|2|")
SetSellGoodsData("ĺ�⺣̲","Metadata/Items/Maps/MapWorldsShore",3,"0|1|2|")
SetSellGoodsData("��ɫޒ��","Metadata/Items/Maps/MapWorldsPromenade",3,"0|1|2|")
SetSellGoodsData("����Ͽ��","Metadata/Items/Maps/MapWorldsCoves",3,"0|1|2|")
SetSellGoodsData("��ɳ̲ͷ","Metadata/Items/Maps/MapWorldsBeach",3,"0|1|2|")
SetSellGoodsData("������ˮ��","Metadata/Items/Maps/MapWorldsToxicSewer",3,"0|1|2|")
SetSellGoodsData("����֮��","Metadata/Items/Maps/MapWorldsLavaChamber",3,"0|1|2|")
SetSellGoodsData("ʪ�ؿ�ɽ","Metadata/Items/Maps/MapWorldsMineralPools",3,"0|1|2|")
SetSellGoodsData("濾����","Metadata/Items/Maps/MapWorldsMoonTemple",3,"0|1|2|")
SetSellGoodsData("�ۻ���̲","Metadata/Items/Maps/MapWorldsEstuary",2,"0|1|2|")
SetSellGoodsData("�������","Metadata/Items/Maps/MapWorldsColosseum",2,"0|1|2|")
SetSellGoodsData("�������","Metadata/Items/Maps/MapWorldsCage",2,"0|1|2|")
SetSellGoodsData("������Ĺ","Metadata/Items/Maps/MapWorldsMausoleum",2,"0|1|2|")
SetSellGoodsData("��������","Metadata/Items/Maps/MapWorldsThicket",2,"0|1|2|")
SetSellGoodsData("ħӰĹ��","Metadata/Items/Maps/MapWorldsNecropolis",2,"0|1|2|")
SetSellGoodsData("�������","Metadata/Items/Maps/MapWorldsTower",2,"0|1|2|")
SetSellGoodsData("���֮��","Metadata/Items/Maps/MapWorldsTemple",2,"0|1|2|")
SetSellGoodsData("��ƶ����","Metadata/Items/Maps/MapWorldsGhetto",2,"0|1|2|")

--SetCompoundDivinationCard(name,className,nType) --������Ҫ�ϳɵ����˿� name=��Ƭ�� className=��Ƭ���� nType=�ϳɳ��� nil����Ϊ���ۺ�ʱ���ϳ� 0Ϊû��ˢ���ź� 1Ϊֻ��ˢ���ź�
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark")--���úϳ��ҳ����˿�-�ڰ�����
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardLantadorsLostLove")--���úϳ��ҳ����˿�-�m�������֮��
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardViniasToken")--���úϳ��ҳ����˿�-ޱ���ŵ�����
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheGemcutter")--���úϳ��ҳ����˿�-�鱦��
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardChaoticDisposition")--���úϳ��ҳ����˿�-��������
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardEmperorsLuck")--���úϳ��ҳ����˿�-����
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardLuckyConnections")--���úϳ��ҳ����˿�-��������
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardRainOfChaos")--���úϳ��ҳ����˿�-����֮��
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardCovetedPossession")--���úϳ��ҳ����˿�-�|��֮��
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardAbandonedWealth")--���úϳ��ҳ����˿�-��ؔ����
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheInventor")--���úϳ��ҳ����˿�-������
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardJackInTheBox")--���úϳ��ҳ����˿�-��ϲ��
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheUnion")--���úϳ��ҳ����˿�-����
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheWrath")--���úϳ��ҳ����˿�-Թ��
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheCatalyst")--���úϳ��ҳ����˿�-�ֱ�
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheSurvivalist")--���úϳ��ҳ����˿�-����ר��
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardLoyalty")--���úϳ��ҳ����˿�-�ҳ�
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheCartographer")--���úϳ��ҳ����˿�-��ͼʦ
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheSephirot")--���úϳ��ҳ����˿�-����֮��
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure")--���úϳ��ҳ����˿�-�}ͽ֮ؔ
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardNoTraces")--���úϳ��ҳ����˿�-�o��
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheInnocent")--���úϳ��ҳ����˿�-��
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheFool")--���úϳ��ҳ����˿�-����
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheGambler")--���úϳ��ҳ����˿�-��ͽ
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheMasterArtisan")--���úϳ��ҳ����˿�-������ʦ
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheLover")--���úϳ��ҳ����˿�-����
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheOpulecent")--���úϳ��ҳ����˿�-����
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardDemigodsWager")--�N�A��ـע	
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheSeeker")--̽����
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardHumility")--���úϳ��ҳ����˿�--ǫѷ
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardThePuzzle")--�i
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheObscured")--�ޝ�
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardLuckyDeck")--���\�ƽM enName:lucky-deck
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardAlluringBounty")--�T��֮�� enName:alluring-bounty
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardBrothersStash")--����ؔ�� enName:brothers-stash
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheHoarder")--���� enName:the-hoarder
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheAwakened")--���� enName:the-hoarder
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardAcclimatisation")--������Ӧ enName:the-hoarder
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardSocietysRemorse")--����֮�� enName:the-hoarder
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheTinkerersTable")--�I��֮��
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardASeaOfBlue")--�{��
--SetNeedBuyGoodsData(name,className,cnt,buyName,buyClassName)--���ÿ�ʼˢ���ʱ���⹺��ָ����Ʒ
--name=�Լ��е�ͨ���� className=�Լ��е�ͨ������ cnt=�����ٸ����� 0��nil ���ᴥ�� buyName=��Ҫ�������Ʒ�� buyClassName=��Ҫ�������Ʒ����

g_buyNpcData={
mapClassName="1_1_town"
,className="Metadata/NPC/Act1/NessaTown"
}--������3�� 1_1_town ��NPC�¹��� name:��ɳ

SetNeedBuyGoodsData("֪ʶ����","Metadata/Items/Currency/CurrencyIdentification",nil,"���;���","Metadata/Items/Currency/CurrencyPortal")
SetNeedBuyGoodsData("���;���","Metadata/Items/Currency/CurrencyPortal",9,"�ɱ�ʯ","Metadata/Items/Currency/CurrencyUpgradeToMagic")
SetNeedBuyGoodsData("�ɱ�ʯ","Metadata/Items/Currency/CurrencyUpgradeToMagic",200,"����ʯ","Metadata/Items/Currency/CurrencyAddModToMagic")
SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyAddModToMagic",200,"����ʯ","Metadata/Items/Currency/CurrencyRerollMagic")
-- SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyRerollMagic",160,"����ʯ","Metadata/Items/Currency/CurrencyRerollSocketNumbers")
-- SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyRerollSocketNumbers",80,"����ʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks")
-- SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks",100,"����ʯ","Metadata/Items/Currency/CurrencyUpgradeRandomly")
-- SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyUpgradeRandomly",100,"����ʯ","Metadata/Items/Currency/CurrencyConvertToNormal")
-- SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyConvertToNormal",40,"���ʯ","Metadata/Items/Currency/CurrencyPassiveRefund")
-- SetNeedBuyGoodsData("���ʯ","Metadata/Items/Currency/CurrencyPassiveRefund",10,"���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare")

--SetGoodsCaoZuo(goodsType,czType,name,className,wordName,wordClassName,pingzhi,cnt,color,socketCnt,lineCnt)-- ����Ҫ��������Ʒ
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
SetGoodsCaoZuo("ͨ��|�ɶѵ�ͨ��","0|2")--����������ü��
SetGoodsCaoZuo("�������ܱ�ʯ|�������ܱ�ʯ","0|2",nil,nil,nil,nil,5)--ʰȡƷ�ʳ���5�ļ��ܱ�ʯ
SetGoodsCaoZuo(nil,"0|1|4",nil,nil,nil,nil,nil,nil,"3")--ʰȡ ���� ���۳�ɫ��Ʒ
SetGoodsCaoZuo(nil,nil,"֪ʶ����","Metadata/Items/Currency/CurrencyIdentification",nil,nil,nil,40)--���˾Ͳ�����
SetGoodsCaoZuo(nil,nil,"���;���","Metadata/Items/Currency/CurrencyPortal",nil,nil,nil,80)--���˾Ͳ�����
SetGoodsCaoZuo(nil,"0|2","���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare",nil,nil,nil,20)
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",6)--6��װ���ü���
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",nil,6)--6����װ���ü���
SetGoodsCaoZuo("צ","0|1|4",nil,nil,nil,nil,5,nil,"2")--���������Ļ�צ��
SetGoodsCaoZuo("�鱦|��Ԩ�鱦|����ذ��|ذ��|����|���ֽ�|ϸ��","0|1|4",nil,nil,nil,nil,nil,nil,"2")--ʰȡ ���� ���ۻ�ɫ��Ʒ�鱦
SetGoodsCaoZuo(nil,"1|3","���긣��","Metadata/Items/MicrotransactionCurrency/MicrotransactionTencentEventCoin")--
SetGoodsCaoZuo(nil,"1|3","��������","Metadata/Items/Currency/CurrencyFlaskQuality")--
SetGoodsCaoZuo(nil,"3","������Ƭ","Metadata/Items/Currency/CurrencyIdentificationShard")--������Ƭ��
SetGoodsCaoZuo(nil,"2|3","Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy")--��Ԥ��
SetGoodsCaoZuo(nil,"0|2","�m�������֮��","Metadata/Items/DivinationCards/DivinationCardLantadorsLostLove")
SetGoodsCaoZuo(nil,"0|2","ף��ʯ","Metadata/Items/Currency/CurrencyRerollImplicit",nil,nil,nil,nil)--ף��ʯ
SetGoodsCaoZuo(nil,"0|2","���`ʯ","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSockets",nil,nil,nil,10)--���`ʯ
SetGoodsCaoZuo(nil,"3","����ʯ","Metadata/Items/Currency/CurrencyStrongboxQuality",nil,nil,nil,0)--����ʯ
SetGoodsCaoZuo(nil,"0","ĥ��ʯ","Metadata/Items/Currency/CurrencyWeaponQuality")--ĥ��ʯ����
SetGoodsCaoZuo(nil,"0","����Ƭ","Metadata/Items/Currency/CurrencyArmourQuality")--����Ƭ����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyWeaponQuality")--ĥ��ʯ
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyArmourQuality")--�o��Ƭ

--�һ�����������⼸����Ҫ�����������Լ���ʯͷ������
SetGoodsCaoZuo(nil,"0|2",nil,"Metadata/Items/Currency/CurrencyRerollSocketColours")--��ɫʯ ֻ���
SetGoodsCaoZuo(nil,"0|2",nil,"Metadata/Items/Currency/CurrencyRerollMagic")--����ʯ ֻ���
SetGoodsCaoZuo(nil,"0|2",nil,"Metadata/Items/Currency/CurrencyRerollSocketNumbers")--����ʯ ֻ���
SetGoodsCaoZuo(nil,"0|2",nil,"Metadata/Items/Currency/CurrencyRerollSocketLinks")--朽Yʯ ֻ���
SetGoodsCaoZuo(nil,"0|2",nil,"Metadata/Items/Currency/CurrencyUpgradeRandomly")--����ʯ ֻ���

--�һ����ӵ��ֿ��ﲻҪ�Ķ���
-- SetGoodsCaoZuo(nil,"3",nil,nil,"Perandus Blazon")--"������˹֮ӡ"
-- SetGoodsCaoZuo(nil,"3",nil,nil,"Geofri's Crest")--"�����ƵĘs��"
-- SetGoodsCaoZuo(nil,"3",nil,nil,"Sadima's Touch")--"�Ա��ߵĻ���"
-- SetGoodsCaoZuo(nil,"3",nil,nil,"Advancing Fortress")--"��Խ�ډ�"
-- SetGoodsCaoZuo(nil,"3",nil,nil,"Daresso's Courage")--"������������֮��"
-- SetGoodsCaoZuo(nil,"3",nil,nil,"Stone of Lazhwar")--"��Ɲ�ߵ��`ʯ"
-- SetGoodsCaoZuo(nil,"3",nil,nil,"Bones of Ullr")--"���ՠ�֮��"
-- SetGoodsCaoZuo(nil,"3",nil,nil,"Dusktoe")--"ӭĺ"
-- SetGoodsCaoZuo(nil,"3",nil,nil,"Heartbreaker",nil,nil,nil,0)--"������"
-- SetGoodsCaoZuo(nil,"3",nil,nil,"Asenath's Mark",nil,nil,nil,0)--"��ِ�Ƚz��Ѹ��֮��"
-- SetGoodsCaoZuo(nil,"3",nil,nil,"Conqueror's Efficiency",nil,nil,nil,0)--"�����ߵ�Ѹ��"
-- SetGoodsCaoZuo(nil,"3",nil,nil,nil,"Eye of Chayula",nil,nil,nil,0)--"�Ğ���֮��"
-- SetGoodsCaoZuo(nil,"3",nil,nil,nil,"Andvarius",nil,nil,nil,0)--"؝�j֮ӛ"
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Armours/Shields/ShieldStr17","ʨ�۵���ҫ֮��","Lioneye's Remorse",nil,0)--ʨ�۵���ҫ֮��
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"KillingKaomWithKaomsSignAddsSpecificMod",nil,0)--Ԥ�ԇ���֮��
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"KillingFidelitasWithStormCloudAddsSpecificMod",nil,0)--Ԥ�ԃW��֮��
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyCorruptMonolith",nil,nil,nil,0)--�z������Ⱦ����
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyPerandusCoin",nil,nil,nil,0)--������˹���
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSocketsShard",nil,nil,nil,0)--���`ʯ��Ƭ enName:binding-shard
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyRerollMapType",nil,nil,nil,0)--��ƽʯ
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyRerollMapTypeShard",nil,nil,nil,0)--��ƽʯ��Ƭ
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyStrongboxQuality",nil,nil,nil,0)--����ʯ
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyStrongboxQualityShard",nil,nil,nil,0)--����ʯ��Ƭ
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyUpgradeToMagic",nil,nil,nil,0)--͑׃ʯ
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyUpgradeToMagicShard",nil,nil,nil,0)--͑׃ʯ��Ƭ
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyWeaponQuality",nil,nil,nil,0)--ĥ��ʯ
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyArmourQuality",nil,nil,nil,0)--�o��Ƭ
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyEnkindlingOrb",nil,nil,nil,0)--�cȼʯ
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyInstillingOrb",nil,nil,nil,0)--��עʯ
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Gems/SupportGemAdditionalLevel",nil,nil,nil,0)--�x���o��
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Gems/SupportGemAdditionalXP",nil,nil,nil,0)--�����o��
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Gems/SupportGemAdditionalQuality",nil,nil,nil,0)--�����o��
 SetGoodsCaoZuo(nil,"3",nil,"HeistBlueprint",nil,nil,nil,0)--��ͼ
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Expedition/ExpeditionLogbook",nil,nil,nil,0)--̽�U���I
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyJewelleryQualityElemental",nil,nil,nil,0)--�����Ĵ߻���
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyJewelleryQualityCaster",nil,nil,nil,0)--���ܵĴ߻���
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyJewelleryQualityAttack",nil,nil,nil,0)--��ĥ�Ĵ߻���
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyJewelleryQualityAttribute",nil,nil,nil,0)--���|�Ĵ߻���
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyJewelleryQualityDefense",nil,nil,nil,0)--ұ倵Ĵ߻���
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabBreach1",nil,nil,nil,0)--�}���x���n�g�Ѻ�
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabBreach2",nil,nil,nil,0)--�}���x���A���Ѻ�
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabBreach3",nil,nil,nil,0)--�}���x��僽��Ѻ�
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabBreach4",nil,nil,nil,0)--�}���x��չ���Ѻ�
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabMaps1",nil,nil,nil,0)--�}���x���n�g�u�D
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabMaps2",nil,nil,nil,0)--�}���x���A���u�D
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabMaps3",nil,nil,nil,0)--�}���x��僽��u�D
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabMaps4",nil,nil,nil,0)--�}���x��չ���u�D
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabUniques1",nil,nil,nil,0)--�}���x���n�g�}��
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabUniques2",nil,nil,nil,0)--�}���x���A���}��
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabUniques3",nil,nil,nil,0)--�}���x��僽��}��
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabUniques4",nil,nil,nil,0)--�}���x��չ���}��
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabBeasts1",nil,nil,nil,0)--�}���x���n�g�F�C
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabBeasts2",nil,nil,nil,0)--�}���x���A���F�C
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabBeasts3",nil,nil,nil,0)--�}���x��僽�F�C
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabBeasts4",nil,nil,nil,0)--�}���x��չ��F�C
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabShaperRares1",nil,nil,nil,0)--�}���x���n�g����
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabShaperRares2",nil,nil,nil,0)--�}���x���A������
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabShaperRares3",nil,nil,nil,0)--�}���x��僽�����
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabShaperRares4",nil,nil,nil,0)--�}���x��չ������
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabElderRares1",nil,nil,nil,0)--�}���x���n�g����
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabElderRares2",nil,nil,nil,0)--�}���x���A������
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabElderRares3",nil,nil,nil,0)--�}���x��僽�����
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabElderRares4",nil,nil,nil,0)--�}���x��չ������
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabDivinationCards1",nil,nil,nil,0)--�}���x���n�g���\
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabDivinationCards2",nil,nil,nil,0)--�}���x���A�����\
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabDivinationCards3",nil,nil,nil,0)--�}���x��僽����\
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabDivinationCards4",nil,nil,nil,0)--�}���x��չ�����\
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabTorment1",nil,nil,nil,0)--�}���x���n�g��ʹ
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabTorment2",nil,nil,nil,0)--�}���x���A����ʹ
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabTorment3",nil,nil,nil,0)--�}���x��僽��ʹ
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabTorment4",nil,nil,nil,0)--�}���x��չ���ʹ
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabStrongbox1",nil,nil,nil,0)--�}���x���n�g����
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabStrongbox2",nil,nil,nil,0)--�}���x���A������
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabStrongbox3",nil,nil,nil,0)--�}���x��僽����
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabStrongbox4",nil,nil,nil,0)--�}���x��չ�����
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabPerandus1",nil,nil,nil,0)--�}���x���n�g���m��˹
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabPerandus2",nil,nil,nil,0)--�}���x���A�����m��˹
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabPerandus3",nil,nil,nil,0)--�}���x��僽����m��˹
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabPerandus4",nil,nil,nil,0)--�}���x��չ�����m��˹
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabMetamorph1",nil,nil,nil,0)--�}���x���n�g�ħ
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabMetamorph2",nil,nil,nil,0)--�}���x���A���ħ
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabMetamorph3",nil,nil,nil,0)--�}���x��僽��ħ
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabMetamorph4",nil,nil,nil,0)--�}���x��չ���ħ
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabAbyss1",nil,nil,nil,0)--�}���x���n�g��Y
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabAbyss2",nil,nil,nil,0)--�}���x���A����Y
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabAbyss3",nil,nil,nil,0)--�}���x��僽���Y
-- SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Scarabs/ScarabAbyss4",nil,nil,nil,0)--�}���x��չ����Y

--�һ���������Ҫ�Ķ���
SetGoodsCaoZuo(nil,"1","��͸��ƿ","Metadata/Items/Currency/Mushrune1")
SetGoodsCaoZuo(nil,"1","�����ƿ","Metadata/Items/Currency/Mushrune2")
SetGoodsCaoZuo(nil,"1","������ƿ","Metadata/Items/Currency/Mushrune3")
SetGoodsCaoZuo(nil,"1","��G��ƿ","Metadata/Items/Currency/Mushrune4")
SetGoodsCaoZuo(nil,"1","��G��ƿ","Metadata/Items/Currency/Mushrune5")
SetGoodsCaoZuo(nil,"1","���{��ƿ","Metadata/Items/Currency/Mushrune6")

--�һ��ż�����������Ҫ�Ķ���
SetGoodsCaoZuo(nil,"1",nil,"Metadata/Monsters/LeagueBestiary/LynxBestiary")--�M���_ɽ؈�ëF
SetGoodsCaoZuo(nil,"1",nil,"Metadata/Monsters/LeagueBestiary/WolfBestiary")--�M���_���ǻëF
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisBrain")--�ħ�X�費��
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisEye")--�ħ�۾�����
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisLiver")--�ħ���K����
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisLung")--�ħ���K����
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisHeart")--�ħ���K����

-- ������ͼ
-- SetGoodsCaoZuo("����ͼ","1|3","ŭ��֮��","Metadata/Items/Maps/MapWorldsPier")
-- SetGoodsCaoZuo("����ͼ","1|3","��Ӱ�e��","Metadata/Items/Maps/MapWorldsVilla")
-- SetGoodsCaoZuo("����ͼ","1|3","����Σ��","Metadata/Items/Maps/MapWorldsLookout")
-- SetGoodsCaoZuo("����ͼ","1|3","�Ÿ��و�","Metadata/Items/Maps/MapWorldsRacecourse")
-- SetGoodsCaoZuo("����ͼ","1|3","Ѫ���ӝ�","Metadata/Items/Maps/MapWorldsPrimordialPool")
-- SetGoodsCaoZuo("����ͼ","1|3","��犘�","Metadata/Items/Maps/MapWorldsBelfry")
-- SetGoodsCaoZuo("����ͼ","1|3","������","Metadata/Items/Maps/MapWorldsArena")
-- SetGoodsCaoZuo("����ͼ","1|3","ħ������","Metadata/Items/Maps/MapWorldsVault")
-- SetGoodsCaoZuo("����ͼ","1|3","ꎻ�����","Metadata/Items/Maps/MapWorldsMudGeyser")
-- SetGoodsCaoZuo("����ͼ","1|3","�ߠ�������","Metadata/Items/Maps/MapWorldsVaalPyramid")
-- SetGoodsCaoZuo("����ͼ","1|3","�V��","Metadata/Items/Maps/MapWorldsPlaza")
-- SetGoodsCaoZuo("����ͼ","1|3","�Ͼ��Vɽ","Metadata/Items/Maps/MapWorldsCrystalOre")
-- SetGoodsCaoZuo("����ͼ","1|3","��������","Metadata/Items/Maps/MapWorldsColonnade")
-- SetGoodsCaoZuo("����ͼ","1|3","�ۻ��Ҟ�","Metadata/Items/Maps/MapWorldsEstuary")
-- SetGoodsCaoZuo("����ͼ","1|3","��������","Metadata/Items/Maps/MapWorldsWastePool")
-- SetGoodsCaoZuo("����ͼ","1|3","���g֮ͥ","Metadata/Items/Maps/MapWorldsCourtyard")
-- SetGoodsCaoZuo("����ͼ","1|3","Ԏ�H����","Metadata/Items/Maps/MapWorldsGeode")
-- SetGoodsCaoZuo("����ͼ","1|3","����֮��","Metadata/Items/Maps/MapWorldsLavaChamber")
-- SetGoodsCaoZuo("����ͼ","1|3","�@�֘䅲","Metadata/Items/Maps/MapWorldsThicket")
-- SetGoodsCaoZuo("����ͼ","1|3","ħ�`�êz","Metadata/Items/Maps/MapWorldsPhantasmagoria")
-- SetGoodsCaoZuo("����ͼ","1|3","���`�WԺ","Metadata/Items/Maps/MapWorldsAcademy")
-- SetGoodsCaoZuo("����ͼ","1|3","�}��","Metadata/Items/Maps/MapWorldsBasilica")
-- SetGoodsCaoZuo("����ͼ","1|3","��ɽ�׿�","Metadata/Items/Maps/MapWorldsCaldera")
-- SetGoodsCaoZuo("����ͼ","1|3","Σ�C����","Metadata/Items/Maps/MapWorldsReef")
-- SetGoodsCaoZuo("����ͼ","1|3","�z�E�U��","Metadata/Items/Maps/MapWorldsCastleRuins")
-- SetGoodsCaoZuo("����ͼ","1|3","��ꖍ{��","Metadata/Items/Maps/MapWorldsCanyon")
-- SetGoodsCaoZuo("����ͼ","1|3","�ű�","Metadata/Items/Maps/MapWorldsChateau")
-- SetGoodsCaoZuo("����ͼ","1|3","��������","Metadata/Items/Maps/MapWorldsResidence")

SetGoodsCaoZuo("����ͼ","1|3","Vault Map","Metadata/Items/Maps/MapWorldsVault",nil,nil,nil,nil,"0|1|2")--���ر���---���ܴ�---15��
SetGoodsCaoZuo("����ͼ","1|3","Summit Map","Metadata/Items/Maps/MapWorldsSummit",nil,nil,nil,nil,"0|1|2")--����֮��--16��
SetGoodsCaoZuo("����ͼ","1|3","Laboratory Map","Metadata/Items/Maps/MapWorldsLaboratory",nil,nil,nil,nil,"0|1|2")--ʵ������---��Ҫ�������Ѵ�---5��
SetGoodsCaoZuo("����ͼ","1|3","Crater Map","Metadata/Items/Maps/MapWorldsTribunal",nil,nil,nil,nil,"0|1|2")--�ɿ�---���θ���---3��
SetGoodsCaoZuo("����ͼ","1|3","Terrace Map","Metadata/Items/Maps/MapWorldsTerrace",nil,nil,nil,nil,"0|1|2")--����̨��---boss�����Ѵ�---4��
SetGoodsCaoZuo("����ͼ","1|3","Pier Map","Metadata/Items/Maps/MapWorldsPier",nil,nil,nil,nil,"0|1|2")--ŭ��֮��---boss�׶ζ�---���ض�---2��

SetGoodsCaoZuo("����ͼ","1|3","�����Ҟ�","Metadata/Items/Maps/MapWorldsCursedCrypt",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","�I��ɽ��","Metadata/Items/Maps/MapWorldsAtoll",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","����Ĺ��","Metadata/Items/Maps/MapWorldsCemetery",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","ĺɫɳ��","Metadata/Items/Maps/MapWorldsDunes",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","���E��Ĺ","Metadata/Items/Maps/MapWorldsBoneCrypt",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","�ߠ�������","Metadata/Items/Maps/MapWorldsVaalPyramid",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","�ܲ����","Metadata/Items/Maps/MapWorldsOvergrownShrine",nil,nil,nil,nil,"0|1|2|3")
SetGoodsCaoZuo("����ͼ","1|3","�I����Ѩ","Metadata/Items/Maps/MapWorldsUndergroundSea",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","ħӰĹ��","Metadata/Items/Maps/MapWorldsNecropolis",nil,nil,nil,nil,"3")

--SetGoodsCaoZuo(nil,"1|3","Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy")
SetGoodsCaoZuo(nil,"1|3","���׻�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingFire")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","���L��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingCold")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","��䓻�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingLightning")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","��X��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingPhysical")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","�خ���ʯ","Metadata/Items/Currency/CurrencyDelveCraftingChaos")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","ԭʼ��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingLife")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","������ʯ","Metadata/Items/Currency/CurrencyDelveCraftingGemLevel")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","Ѫ�n��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingVaal")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","�U�ջ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingAbyss")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","���ѻ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingMirror")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","��y��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingCorruptEssence")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","�Ɂy��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingRandom")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","���ܻ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingDefences")--�ɶѯBͨ؛
-- SetGoodsCaoZuo(nil,"1|3","���g��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingBleedPoison")--�ɶѯBͨ؛
-- SetGoodsCaoZuo(nil,"1|3","���໯ʯ","Metadata/Items/Currency/CurrencyDelveCraftingElemental")--�ɶѯBͨ؛
-- SetGoodsCaoZuo(nil,"1|3","��û�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingCasterMods")--�ɶѯBͨ؛
-- SetGoodsCaoZuo(nil,"1|3","���X��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingAttackMods")--�ɶѯBͨ؛
-- SetGoodsCaoZuo(nil,"1|3","��͸��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingMana")--�ɶѯBͨ؛
-- SetGoodsCaoZuo(nil,"1|3","���ʯ","Metadata/Items/Currency/CurrencyDelveCraftingSpeed")--�ɶѯBͨ؛
-- SetGoodsCaoZuo(nil,"1|3","���ʯ","Metadata/Items/Currency/CurrencyDelveCraftingMinionsAuras")--�ɶѯBͨ؛
-- SetGoodsCaoZuo(nil,"1|3","�o覻�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingQuality")--�ɶѯBͨ؛
-- SetGoodsCaoZuo(nil,"1|3","��ħ��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingEnchant")--�ɶѯBͨ؛
-- SetGoodsCaoZuo(nil,"1|3","��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingSockets")--�ɶѯBͨ؛
-- SetGoodsCaoZuo(nil,"1|3","���}��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingLuckyModRolls")--�ɶѯBͨ؛
-- SetGoodsCaoZuo(nil,"1|3","肽�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingSellPrice")--�ɶѯBͨ؛

--���о������ö���
SetGoodsCaoZuo(nil,"1","����֮���ﾫ��","Metadata/Items/Currency/CurrencyEssenceHatred1")
SetGoodsCaoZuo(nil,"1","����֮��૾���","Metadata/Items/Currency/CurrencyEssenceHatred2")
SetGoodsCaoZuo(nil,"1","����֮��������","Metadata/Items/Currency/CurrencyEssenceHatred3")
SetGoodsCaoZuo(nil,"1","����֮��������","Metadata/Items/Currency/CurrencyEssenceHatred4")
SetGoodsCaoZuo(nil,"1","����֮��������","Metadata/Items/Currency/CurrencyEssenceHatred5")
SetGoodsCaoZuo(nil,"1","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceHatred6")
SetGoodsCaoZuo(nil,"1","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceHatred7")
SetGoodsCaoZuo(nil,"1","��ʹ֮���ﾫ��","Metadata/Items/Currency/CurrencyEssenceWoe1")
SetGoodsCaoZuo(nil,"1","��ʹ֮��૾���","Metadata/Items/Currency/CurrencyEssenceWoe2")
SetGoodsCaoZuo(nil,"1","��ʹ֮��������","Metadata/Items/Currency/CurrencyEssenceWoe3")
SetGoodsCaoZuo(nil,"1","��ʹ֮��������","Metadata/Items/Currency/CurrencyEssenceWoe4")
SetGoodsCaoZuo(nil,"1","��ʹ֮��������","Metadata/Items/Currency/CurrencyEssenceWoe5")
SetGoodsCaoZuo(nil,"1","��ʹ֮��Х����","Metadata/Items/Currency/CurrencyEssenceWoe6")
SetGoodsCaoZuo(nil,"1","��ʹ֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceWoe7")
SetGoodsCaoZuo(nil,"1","̰��֮���ﾫ��","Metadata/Items/Currency/CurrencyEssenceGreed1")
SetGoodsCaoZuo(nil,"1","̰��֮��૾���","Metadata/Items/Currency/CurrencyEssenceGreed2")
SetGoodsCaoZuo(nil,"1","̰��֮��������","Metadata/Items/Currency/CurrencyEssenceGreed3")
SetGoodsCaoZuo(nil,"1","̰��֮��������","Metadata/Items/Currency/CurrencyEssenceGreed4")
SetGoodsCaoZuo(nil,"1","̰��֮��������","Metadata/Items/Currency/CurrencyEssenceGreed5")
SetGoodsCaoZuo(nil,"1","̰��֮��Х����","Metadata/Items/Currency/CurrencyEssenceGreed6")
SetGoodsCaoZuo(nil,"1","̰��֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceGreed7")
SetGoodsCaoZuo(nil,"1","����֮���ﾫ��","Metadata/Items/Currency/CurrencyEssenceContempt1")
SetGoodsCaoZuo(nil,"1","����֮��૾���","Metadata/Items/Currency/CurrencyEssenceContempt2")
SetGoodsCaoZuo(nil,"1","����֮��������","Metadata/Items/Currency/CurrencyEssenceContempt3")
SetGoodsCaoZuo(nil,"1","����֮��������","Metadata/Items/Currency/CurrencyEssenceContempt4")
SetGoodsCaoZuo(nil,"1","����֮��������","Metadata/Items/Currency/CurrencyEssenceContempt5")
SetGoodsCaoZuo(nil,"1","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceContempt6")
SetGoodsCaoZuo(nil,"1","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceContempt7")
SetGoodsCaoZuo(nil,"1","��ϧ֮��૾���","Metadata/Items/Currency/CurrencyEssenceSorrow1")
SetGoodsCaoZuo(nil,"1","��ϧ֮��������","Metadata/Items/Currency/CurrencyEssenceSorrow2")
SetGoodsCaoZuo(nil,"1","��ϧ֮��������","Metadata/Items/Currency/CurrencyEssenceSorrow3")
SetGoodsCaoZuo(nil,"1","��ϧ֮��������","Metadata/Items/Currency/CurrencyEssenceSorrow4")
SetGoodsCaoZuo(nil,"1","��ϧ֮��Х����","Metadata/Items/Currency/CurrencyEssenceSorrow5")
SetGoodsCaoZuo(nil,"1","��ϧ֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceSorrow6")
SetGoodsCaoZuo(nil,"1","��ŭ֮��૾���","Metadata/Items/Currency/CurrencyEssenceAnger1")
SetGoodsCaoZuo(nil,"1","��ŭ֮��������","Metadata/Items/Currency/CurrencyEssenceAnger2")
SetGoodsCaoZuo(nil,"1","��ŭ֮��������","Metadata/Items/Currency/CurrencyEssenceAnger3")
SetGoodsCaoZuo(nil,"1","��ŭ֮��������","Metadata/Items/Currency/CurrencyEssenceAnger4")
SetGoodsCaoZuo(nil,"1","��ŭ֮��Х����","Metadata/Items/Currency/CurrencyEssenceAnger5")
SetGoodsCaoZuo(nil,"1","��ŭ֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceAnger6")
SetGoodsCaoZuo(nil,"1","��ĥ֮��૾���","Metadata/Items/Currency/CurrencyEssenceTorment1")
SetGoodsCaoZuo(nil,"1","��ĥ֮��������","Metadata/Items/Currency/CurrencyEssenceTorment2")
SetGoodsCaoZuo(nil,"1","��ĥ֮��������","Metadata/Items/Currency/CurrencyEssenceTorment3")
SetGoodsCaoZuo(nil,"1","��ĥ֮��������","Metadata/Items/Currency/CurrencyEssenceTorment4")
SetGoodsCaoZuo(nil,"1","��ĥ֮��Х����","Metadata/Items/Currency/CurrencyEssenceTorment5")
SetGoodsCaoZuo(nil,"1","��ĥ֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceTorment6")
SetGoodsCaoZuo(nil,"1","�־�֮��૾���","Metadata/Items/Currency/CurrencyEssenceFear1")
SetGoodsCaoZuo(nil,"1","�־�֮��������","Metadata/Items/Currency/CurrencyEssenceFear2")
SetGoodsCaoZuo(nil,"1","�־�֮��������","Metadata/Items/Currency/CurrencyEssenceFear3")
SetGoodsCaoZuo(nil,"1","�־�֮��������","Metadata/Items/Currency/CurrencyEssenceFear4")
SetGoodsCaoZuo(nil,"1","�־�֮��Х����","Metadata/Items/Currency/CurrencyEssenceFear5")
SetGoodsCaoZuo(nil,"1","�־�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceFear6")
SetGoodsCaoZuo(nil,"1","����֮��������","Metadata/Items/Currency/CurrencyEssenceSuffering1")
SetGoodsCaoZuo(nil,"1","����֮��������","Metadata/Items/Currency/CurrencyEssenceSuffering2")
SetGoodsCaoZuo(nil,"1","����֮��������","Metadata/Items/Currency/CurrencyEssenceSuffering3")
SetGoodsCaoZuo(nil,"1","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceSuffering4")
SetGoodsCaoZuo(nil,"1","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceSuffering5")
SetGoodsCaoZuo(nil,"1","��Ű֮��������","Metadata/Items/Currency/CurrencyEssenceRage1")
SetGoodsCaoZuo(nil,"1","��Ű֮��������","Metadata/Items/Currency/CurrencyEssenceRage2")
SetGoodsCaoZuo(nil,"1","��Ű֮��������","Metadata/Items/Currency/CurrencyEssenceRage3")
SetGoodsCaoZuo(nil,"1","��Ű֮��Х����","Metadata/Items/Currency/CurrencyEssenceRage4")
SetGoodsCaoZuo(nil,"1","��Ű֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceRage5")
SetGoodsCaoZuo(nil,"1","����֮��������","Metadata/Items/Currency/CurrencyEssenceWrath1")
SetGoodsCaoZuo(nil,"1","����֮��������","Metadata/Items/Currency/CurrencyEssenceWrath2")
SetGoodsCaoZuo(nil,"1","����֮��������","Metadata/Items/Currency/CurrencyEssenceWrath3")
SetGoodsCaoZuo(nil,"1","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceWrath4")
SetGoodsCaoZuo(nil,"1","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceWrath5")
SetGoodsCaoZuo(nil,"1","�ɻ�֮��������","Metadata/Items/Currency/CurrencyEssenceDoubt1")
SetGoodsCaoZuo(nil,"1","�ɻ�֮��������","Metadata/Items/Currency/CurrencyEssenceDoubt2")
SetGoodsCaoZuo(nil,"1","�ɻ�֮��������","Metadata/Items/Currency/CurrencyEssenceDoubt3")
SetGoodsCaoZuo(nil,"1","�ɻ�֮��Х����","Metadata/Items/Currency/CurrencyEssenceDoubt4")
SetGoodsCaoZuo(nil,"1","�ɻ�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceDoubt5")
SetGoodsCaoZuo(nil,"1","�尾֮��������","Metadata/Items/Currency/CurrencyEssenceAnguish1")
SetGoodsCaoZuo(nil,"1","�尾֮��������","Metadata/Items/Currency/CurrencyEssenceAnguish2")
SetGoodsCaoZuo(nil,"1","�尾֮��Х����","Metadata/Items/Currency/CurrencyEssenceAnguish3")
SetGoodsCaoZuo(nil,"1","�尾֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceAnguish4")
SetGoodsCaoZuo(nil,"1","���֮��������","Metadata/Items/Currency/CurrencyEssenceLoathing1")
SetGoodsCaoZuo(nil,"1","���֮��������","Metadata/Items/Currency/CurrencyEssenceLoathing2")
SetGoodsCaoZuo(nil,"1","���֮��Х����","Metadata/Items/Currency/CurrencyEssenceLoathing3")
SetGoodsCaoZuo(nil,"1","���֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceLoathing4")
SetGoodsCaoZuo(nil,"1","�̶�֮��������","Metadata/Items/Currency/CurrencyEssenceSpite1")
SetGoodsCaoZuo(nil,"1","�̶�֮�޺𾫻�","Metadata/Items/Currency/CurrencyEssenceSpite2")
SetGoodsCaoZuo(nil,"1","�̶�֮��Х����","Metadata/Items/Currency/CurrencyEssenceSpite3")
SetGoodsCaoZuo(nil,"1","�̶�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceSpite4")
SetGoodsCaoZuo(nil,"1","����֮��������","Metadata/Items/Currency/CurrencyEssenceZeal1")
SetGoodsCaoZuo(nil,"1","����֮�޺𾫻�","Metadata/Items/Currency/CurrencyEssenceZeal2")
SetGoodsCaoZuo(nil,"1","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceZeal3")
SetGoodsCaoZuo(nil,"1","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceZeal4")
SetGoodsCaoZuo(nil,"1","���֮��������","Metadata/Items/Currency/CurrencyEssenceMisery1")
SetGoodsCaoZuo(nil,"1","���֮��Х����","Metadata/Items/Currency/CurrencyEssenceMisery2")
SetGoodsCaoZuo(nil,"1","���֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceMisery3")
SetGoodsCaoZuo(nil,"1","�ɵ�֮��������","Metadata/Items/Currency/CurrencyEssenceDread1")
SetGoodsCaoZuo(nil,"1","�ɵ�֮��Х����","Metadata/Items/Currency/CurrencyEssenceDread2")
SetGoodsCaoZuo(nil,"1","�ɵ�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceDread3")
SetGoodsCaoZuo(nil,"1","����֮��������","Metadata/Items/Currency/CurrencyEssenceScorn1")
SetGoodsCaoZuo(nil,"1","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceScorn2")
SetGoodsCaoZuo(nil,"1","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceScorn3")
SetGoodsCaoZuo(nil,"1","�ɶ�֮��������","Metadata/Items/Currency/CurrencyEssenceEnvy1")
SetGoodsCaoZuo(nil,"1","�ɶ�֮��Х����","Metadata/Items/Currency/CurrencyEssenceEnvy2")
SetGoodsCaoZuo(nil,"1","�ɶ�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceEnvy3")
-- SetGoodsCaoZuo(nil,"1|3","���侫��","Metadata/Items/Currency/CurrencyEssenceHysteria1")
-- SetGoodsCaoZuo(nil,"1|3","���Ҿ���","Metadata/Items/Currency/CurrencyEssenceInsanity1")
-- SetGoodsCaoZuo(nil,"1|3","���־���","Metadata/Items/Currency/CurrencyEssenceHorror1")
-- SetGoodsCaoZuo(nil,"1|3","��������","Metadata/Items/Currency/CurrencyEssenceDelirium1")

--SetJiaoYiGoods(goodsType,name,className,wordName,wordClassName,color,chufaCnt)-- ����Ҫ���׵���Ʒ
--goodsType �ַ����� ��������Ʒ���ͺ����������� nil ֧���������� ����������|�ֿ� --saveType ���� ֧���������� ����������|�ֿ� ����ҩ��|ħ��ҩ��|����ҩ��|ͨ��|����|��ָ|צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|�������ܱ�ʯ|�������ܱ�ʯ|����|����|����|Ь��|�·�|ͷ��|��|С��ʥ��|����ʥ��|����ʥ��|�ɶѵ�ͨ��|������Ʒ|����|����ҩ��|����ҩ��|����ͼ||���|��ͼ��Ƭ|����װ��|�̳���Ʒ|�鱦|���˿�|�Թ���Ʒ|�Թ���Ʒ|����Թ���Ʒ|��϶֮ʯ|����ʯ|����֮��|����װ����Ƭ|��Ԩ�鱦|��Խͨ��|����̽��������Ƕ��ͨ��|����ʯ|��Ƭ|����֮��|����ذ��|ս��|����̽���ɶѵ��ɲ���ͨ��|
--name �ַ����� ��Ʒ������
--className �ַ����� ��Ʒ������
--wordName �ַ����� ��Ʒ�Ĵ�׺��
--wordClassName �ַ����� ��Ʒ�Ĵ�׺����
--color �ַ����� ��ɫ 0�� 1�� 2�� 3�� �����|���� nilΪ����
--chufaCnt ������ �������׵����� 0��nil Ϊ������
--bossJiaoYiCnt ������ ����ʱ�ֿ�Ž��׸��һ��ŵ�����
SetJiaoYiGoods("���ͼ��������Ʒ")
SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyRerollRare",nil,nil,nil,100)
SetJiaoYiGoods(nil,"�����µ�ħ��","Metadata/Items/Currency/CurrencyDuplicate",nil,nil,nil,1)
SetJiaoYiGoods(nil,"���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare",nil,nil,nil,nil,20)
SetJiaoYiGoods(nil,"��ɫʯ","Metadata/Items/Currency/CurrencyRerollSocketColours",nil,nil,nil,200)
SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyRerollMagic",nil,nil,nil,200)
--SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyRerollSocketNumbers",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks",nil,nil,nil,200)
--SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyUpgradeRandomly",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyConvertToNormal",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ʯ","Metadata/Items/Currency/CurrencyPassiveRefund",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ʯ","Metadata/Items/Currency/CurrencyAddModToRare",nil,nil,nil,1)
SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��ʯ�����⾵","Metadata/Items/Currency/CurrencyGemQuality",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��ʥʯ","Metadata/Items/Currency/CurrencyModValues",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��ͼ��","Metadata/Items/Currency/CurrencyMapQuality",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���㱦��","Metadata/Items/Currency/CurrencyImprintOrb","��ʶ�Ŀ","Glorious Vanity",nil,nil)
SetJiaoYiGoods(nil,"���㱦��","Metadata/Items/Currency/CurrencyImprintOrb","��ս������","Militant Faith",nil,nil)
SetJiaoYiGoods(nil,"���㱦��","Metadata/Items/Currency/CurrencyImprintOrb","�п��Լ��","Brutal Restraint",nil,nil)
SetJiaoYiGoods(nil,"���㱦��","Metadata/Items/Currency/CurrencyImprintOrb","�����Ľ���","Lethal Pride",nil,nil)
SetJiaoYiGoods(nil,"���㱦��","Metadata/Items/Currency/CurrencyImprintOrb","���ŵĿ���","Elegant Hubris",nil,nil)
SetJiaoYiGoods(nil,"�߶�����","Metadata/Items/Currency/CurrencyCorrupt",nil,nil,nil,nil)
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyStrongboxQualityInfused",nil,nil,nil,nil)--���ܵĹ���ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardDeck",nil,nil,nil,nil)--�Sԣ�ƽM
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEnkindlingOrb",nil,nil,nil,nil)--�cȼʯ
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyInstillingOrb",nil,nil,nil,nil)--��עʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyRerollRareVeiled",nil,nil,nil,10)--�[�����ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/MapFragments/VaalVaultKey",nil,nil,nil,5)--�ߠ��z�--�D
--SetJiaoYiGoods(nil,"�ɱ�ʯ","Metadata/Items/Currency/CurrencyUpgradeToMagic",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyAddModToMagic",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ף��ʯ","Metadata/Items/Currency/CurrencyRerollImplicit",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"������˹���","Metadata/Items/Currency/CurrencyPerandusCoin",nil,nil,nil,nil)
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyRerollDefences")--�}��
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyHellscapeRerollSocketColours")--���۵Ļ�ɫʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyHellscapeRerollSocketLinks")--���۵�朽Yʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyHellscapeRerollSocketNumbers")--���۵Ĺ���ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyHellscapeRerollRare")--���۵Ļ���ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyHellscapeAddModToRare")--���۵ĳ��ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyHellscapeUpgradeToUnique")--���۵���Ԓʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyHellscapeArmourQuality")--���۵��o��Ƭ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyHellscapeWeaponQuality")--���۵�ĥ��ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyHellscapeUpgradeModTier")--���۵����}�I��
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyLabyrinthEnchantCorrupt")--���۵�ף��

--ֵǮ��Ԥ��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"CompletingLabyrinthRewardsTwoEnchantmentUses",nil,nil)--�ɴθ�ħ
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"ArmourAbleToBecomesFiveLinkedWhenJewellersOrbApplied",nil,nil)--������
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"AsenathsMarkFated",nil,nil)--�z�ˬ�֮��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"GeofrisCrestFated",nil,nil)--�����z־
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"WindscreamFated",nil,nil)--���ɼ�[
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"HyrrisBiteFated",nil,nil)--�ݐu֮��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"TheAmbitiousBandit3",nil,nil)--�I�\��Ұ�� III
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"RollingSixSocketBodyArmourLinksAllSockets",nil,nil)--���\�B�Y
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"AtzirisMirrorFated",nil,nil)--Ů���I��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"ItemAbleToBecomesUniqueWhenChanceOrbApplied",nil,nil)--��ȸ׃�P��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"BriskwrapFated info",nil,nil)--�����Ұ��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"RareSuturedAberrationDropsMaligarosVirtuosity",nil,nil)--����֮��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"KillingKaomWithKaomsSignAddsSpecificMod",nil,nil)--����֮��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"KillingFidelitasWithStormCloudAddsSpecificMod",nil,nil)--�W��֮��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"RareUndyingIncineratorDropsSireOfShards",nil,nil)--����֮��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"MapTempestCorrupt",nil,nil)--�߶��ҷ�
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"KillingNightwaneWithDeathsHarpAddsSpecificMod",nil,nil)--����֮��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"IronHeartFated",nil,nil)--����ս

--ֵǮ�ĵ�ͼ
--SetJiaoYiGoods(nil,nil,nil,nil,"Caer Blaidd, Wolfpack's Den")--"���������׵���Ѩ"
SetJiaoYiGoods(nil,nil,nil,nil,"The Vinktar Square")--"�S�����V��"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Putrid Cloister")--"����ޒ��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Coward's Trial")--"ų�ߵ�ԇ�"
SetJiaoYiGoods(nil,nil,"Metadata/Items/Maps/MapWorldsHarbingerLow")--���I֮��wͽ	
SetJiaoYiGoods(nil,nil,"Metadata/Items/Maps/MapWorldsHarbingerMid")--���I֮�����	
SetJiaoYiGoods(nil,nil,"Metadata/Items/Maps/MapWorldsHarbingerHigh")--���I֮����R	
SetJiaoYiGoods(nil,nil,"Metadata/Items/Maps/MapWorldsHarbingerUber")--���I֮����z
--SetJiaoYiGoods("����ͼ",nil,nil,nil,nil,"3")

--ֵǮ��ҩ��
--SetJiaoYiGoods(nil,nil,nil,nil,"Blood of the Karui")--"����֮Ѫ"
--SetJiaoYiGoods(nil,nil,nil,nil,"Zerphi's Last Breath")--"�ɷ����ĽKϢ"
--SetJiaoYiGoods(nil,nil,nil,nil,"Divination Distillate")--"��ҕ���A"
SetJiaoYiGoods(nil,nil,nil,nil,"Dying Sun")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Taste of Hate")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Vessel of Vinktar")--"�S����Ѫ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Rumi's Concoction")--"���׵��`ˎ"
--SetJiaoYiGoods(nil,nil,nil,nil,"Sin's Rebirth")--"�������"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Sorrow of the Divine")--"���}����"
SetJiaoYiGoods(nil,nil,nil,nil,"Bottled Faith")--"ƿ������"
SetJiaoYiGoods(nil,nil,nil,nil,"Cinderswallow Urn")--"�ɠa�Y"
SetJiaoYiGoods(nil,nil,nil,nil,"Starlight Chalice")--"�ǹ��}��"
SetJiaoYiGoods(nil,nil,nil,nil,"Olroth's Resolve")--"�W���_˹�ěQ��"
--SetJiaoYiGoods("ҩ��",nil,nil,nil,nil,"3")

-- SetJiaoYiGoods(nil,"����","Metadata/Items/Currency/CurrencySilverCoin",nil,nil,nil,nil)

SetJiaoYiGoods(nil,"ū�۔�Ƭ","Metadata/Items/MapFragments/CurrencyElderFragment1",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"������Ƭ","Metadata/Items/MapFragments/CurrencyElderFragment2",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�ɔ_��Ƭ","Metadata/Items/MapFragments/CurrencyElderFragment3",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�Q����Ƭ","Metadata/Items/MapFragments/CurrencyElderFragment4",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�֑֔�Ƭ","Metadata/Items/MapFragments/CurrencyUberElderFragment1",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��̓��Ƭ","Metadata/Items/MapFragments/CurrencyUberElderFragment2",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ܔ�Ƭ","Metadata/Items/MapFragments/CurrencyUberElderFragment3",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�ǻ۔�Ƭ","Metadata/Items/MapFragments/CurrencyUberElderFragment4",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�����Ƭ","Metadata/Items/MapFragments/CurrencyAfflictionShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���񮐽�","Metadata/Items/MapFragments/CurrencyAfflictionFragment",nil,nil,nil,nil)

SetJiaoYiGoods(nil,"�����Ѻ�ʯ","Metadata/Items/MapFragments/BreachFragmentFire")
SetJiaoYiGoods(nil,"�����Ѻ�ʯ","Metadata/Items/MapFragments/BreachFragmentCold")
SetJiaoYiGoods(nil,"���S�Ѻ�ʯ","Metadata/Items/MapFragments/BreachFragmentLightning")
SetJiaoYiGoods(nil,"��������Ѻ�ʯ","Metadata/Items/MapFragments/BreachFragmentPhysical")
SetJiaoYiGoods(nil,"�Ğ����Ѻ�ʯ","Metadata/Items/MapFragments/BreachFragmentChaos")
SetJiaoYiGoods(nil,"���a������ӡ","Metadata/Items/MapFragments/CurrencyLegionFragmentKarui")
SetJiaoYiGoods(nil,"���a�R����˹��ӡ","Metadata/Items/MapFragments/CurrencyLegionFragmentMaraketh")
SetJiaoYiGoods(nil,"���a����ۇ���ӡ","Metadata/Items/MapFragments/CurrencyLegionFragmentEternal")
SetJiaoYiGoods(nil,"���a�}�ڻ�ӡ","Metadata/Items/MapFragments/CurrencyLegionFragmentTemplar")
SetJiaoYiGoods(nil,"���a�ߠ���ӡ","Metadata/Items/MapFragments/CurrencyLegionFragmentVaal")

-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyItemisedProphecy",nil,nil,nil,nil)--Ԥ��
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyItemisedCapturedMonster")--��ӡ�ķ�ħ֮��
--SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/LynxBestiary")--�M���_ɽ؈�ëF
--SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/WolfBestiary")--�M���_���ǻëF
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/TigerBestiary")--�M���_�ͻ��ëF
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/TigerBestiarySpiritBoss")--��ʼ֮���M���_
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/SpiderPlatedBestiarySpiritBoss")--��ʼ֮ҹ�ƶ��z
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/MarakethBirdSpiritBoss")--��ʼ֮��˹����
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/NessaCrabBestiarySpiritBoss")--��ʼ̶֮����ɺ
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/SpiderPlagueBestiary")--�ƶ��z�߲�֩��
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/SpiderPlatedBestiary")--�ƶ��z��Ѫ֩��
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/GemFrogBestiary")--����ɺ����
--SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/ParasiticSquidBestiary")--����ɺ֮ū
--SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/Avians/MarakethBirdBestiary")--˹�����r�B

--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceHatred1")--����֮���Z����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceHatred2")--����֮��૾���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceHatred3")--����֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceHatred4")--����֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceHatred5")--����֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceHatred6")--����֮��[����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceHatred7")--����֮�ƿվ���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceWoe1")--��ʹ֮���Z����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceWoe2")--��ʹ֮��૾���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceWoe3")--��ʹ֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceWoe4")--��ʹ֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceWoe5")--��ʹ֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceWoe6")--��ʹ֮��[����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceWoe7")--��ʹ֮�ƿվ���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceGreed1")--؝��֮���Z����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceGreed2")--؝��֮��૾���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceGreed3")--؝��֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceGreed4")--؝��֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceGreed5")--؝��֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceGreed6")--؝��֮��[����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceGreed7")--؝��֮�ƿվ���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceContempt1")--�pҕ֮���Z����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceContempt2")--�pҕ֮��૾���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceContempt3")--�pҕ֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceContempt4")--�pҕ֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceContempt5")--�pҕ֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceContempt6")--�pҕ֮��[����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceContempt7")--�pҕ֮�ƿվ���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceSorrow1")--��ϧ֮��૾���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceSorrow2")--��ϧ֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceSorrow3")--��ϧ֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceSorrow4")--��ϧ֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceSorrow5")--��ϧ֮��[����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceSorrow6")--��ϧ֮�ƿվ���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceAnger1")--��ŭ֮��૾���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceAnger2")--��ŭ֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceAnger3")--��ŭ֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceAnger4")--��ŭ֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceAnger5")--��ŭ֮��[����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceAnger6")--��ŭ֮�ƿվ���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceTorment1")--��ĥ֮��૾���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceTorment2")--��ĥ֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceTorment3")--��ĥ֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceTorment4")--��ĥ֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceTorment5")--��ĥ֮��[����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceTorment6")--��ĥ֮�ƿվ���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceFear1")--�֑�֮��૾���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceFear2")--�֑�֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceFear3")--�֑�֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceFear4")--�֑�֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceFear5")--�֑�֮��[����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceFear6")--�֑�֮�ƿվ���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceSuffering1")--���y֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceSuffering2")--���y֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceSuffering3")--���y֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceSuffering4")--���y֮��[����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceSuffering5")--���y֮�ƿվ���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceRage1")--��Ű֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceRage2")--��Ű֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceRage3")--��Ű֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceRage4")--��Ű֮��[����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceRage5")--��Ű֮�ƿվ���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceWrath1")--����֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceWrath2")--����֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceWrath3")--����֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceWrath4")--����֮��[����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceWrath5")--����֮�ƿվ���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceDoubt1")--�ɻ�֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceDoubt2")--�ɻ�֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceDoubt3")--�ɻ�֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceDoubt4")--�ɻ�֮��[����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceDoubt5")--�ɻ�֮�ƿվ���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceAnguish1")--�尾֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceAnguish2")--�尾֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceAnguish3")--�尾֮��[����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceAnguish4")--�尾֮�ƿվ���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceLoathing1")--����֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceLoathing2")--����֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceLoathing3")--����֮��[����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceLoathing4")--����֮�ƿվ���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceSpite1")--�̶�֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceSpite2")--�̶�֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceSpite3")--�̶�֮��[����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceSpite4")--�̶�֮�ƿվ���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceZeal1")--����֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceZeal2")--����֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceZeal3")--����֮��[����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceZeal4")--����֮�ƿվ���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceMisery1")--���K֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceMisery2")--���K֮��[����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceMisery3")--���K֮�ƿվ���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceDread1")--�ɑ�֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceDread2")--�ɑ�֮��[����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceDread3")--�ɑ�֮�ƿվ���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceScorn1")--��ҕ֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceScorn2")--��ҕ֮��[����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceScorn3")--��ҕ֮�ƿվ���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceEnvy1")--�ɶ�֮��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceEnvy2")--�ɶ�֮��[����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceEnvy3")--�ɶ�֮�ƿվ���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceHysteria1")--���F����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceInsanity1")--�e�y����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceHorror1")--�O�־���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceDelirium1")--�d������
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/MicrotransactionItemEffects/MicrotransactionEssenceWings")--�������
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/MicrotransactionItemEffects/MicrotransactionEssencePortal")--�r��֮�T������
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/MicrotransactionItemEffects/MicrotransactionEssenceFootprints")--������Ч������
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Hideout/HideoutTotemPole6")--���������ߪ���
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Hideout/HideoutTotemPole6Test")--���������ߪ���
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Leaguestones/EssenceLeaguestone")--������ʯ
-- SetJiaoYiGoods(nil,"�����ĸ�������","Metadata/Items/Currency/CurrencyCorruptMonolith",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"������ͼ������","Metadata/Items/Currency/CurrencyAddAtlasMod",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�м���ͼ������","Metadata/Items/Currency/CurrencyAddAtlasModMid",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��ʦ��ͼ������","Metadata/Items/Currency/CurrencyAddAtlasModHigh",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�������ӡ","Metadata/Items/Currency/CurrencySealMapLow",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�м����ӡ","Metadata/Items/Currency/CurrencySealMapMid",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��ʦ���ӡ","Metadata/Items/Currency/CurrencySealMapHigh",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�ѽ�֮��","Metadata/Items/Currency/CurrencyRespecShapersOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��϶��Ƭ(����)","Metadata/Items/Currency/CurrencyBreachFireShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��϶��Ƭ(����)","Metadata/Items/Currency/CurrencyBreachColdShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��϶��Ƭ(����)","Metadata/Items/Currency/CurrencyBreachLightningShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��϶��Ƭ(�ڶ����)","Metadata/Items/Currency/CurrencyBreachPhysicalShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��϶��Ƭ(������)","Metadata/Items/Currency/CurrencyBreachChaosShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�����Ѻ�ʯ","Metadata/Items/MapFragments/BreachFragmentFire")
SetJiaoYiGoods(nil,"�����Ѻ�ʯ","Metadata/Items/MapFragments/BreachFragmentCold")
SetJiaoYiGoods(nil,"���S�Ѻ�ʯ","Metadata/Items/MapFragments/BreachFragmentLightning")
SetJiaoYiGoods(nil,"��������Ѻ�ʯ","Metadata/Items/MapFragments/BreachFragmentPhysical")
SetJiaoYiGoods(nil,"�Ğ����Ѻ�ʯ","Metadata/Items/MapFragments/BreachFragmentChaos")
SetJiaoYiGoods(nil,"������ף��","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueFire",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ֵ�ף��","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueCold",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�����ף��","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueLightning",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�ڶ�����ף��","Metadata/Items/Currency/CurrencyBreachUpgradeUniquePhysical",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��������ף��","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueChaos",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���㿨³��Ƭ","Metadata/Items/Currency/CurrencyLegionKaruiShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����������˹��Ƭ","Metadata/Items/Currency/CurrencyLegionMarakethShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����۹���Ƭ","Metadata/Items/Currency/CurrencyLegionEternalEmpireShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����ʥ����Ƭ","Metadata/Items/Currency/CurrencyLegionTemplarShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�����߶���Ƭ","Metadata/Items/Currency/CurrencyLegionVaalShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyRemoveMod",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�߽׵��ʯ","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSockets",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ƽʯ","Metadata/Items/Currency/CurrencyRerollMapType",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyUpgradeMapTier",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"������=����ʯ","Metadata/Items/Currency/CurrencyStrongboxQuality",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"Զ��ʯ","Metadata/Items/Currency/CurrencyRerollUnique",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�u�D���փx������","Metadata/Items/Currency/CurrencyAddAtlasMod",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�u�D���փx�����A","Metadata/Items/Currency/CurrencyAddAtlasModMid",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�u�D���փx���X��","Metadata/Items/Currency/CurrencyAddAtlasModHigh",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�}��ʿ�ĳ��ʯ","Metadata/Items/AtlasExiles/AddModToRareCrusader",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���H�ߵĳ��ʯ","Metadata/Items/AtlasExiles/AddModToRareRedeemer",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���C�ߵĳ��ʯ","Metadata/Items/AtlasExiles/AddModToRareHunter",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����܊�ĳ��ʯ","Metadata/Items/AtlasExiles/AddModToRareWarlord",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"������֮��","Metadata/Items/AtlasExiles/ApplyInfluence",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���Nʯ","Metadata/Items/Currency/CurrencyAtlasPassiveRefund",nil,nil,nil,nil)

--SetJiaoYiGoods(nil,nil,nil,nil,"Heartbreaker")--"������"
--tJiaoYiGoods(nil,nil,nil,nil,"Cold Iron Point")--"���֮��"
--SetJiaoYiGoods(nil,nil,nil,nil,"Tremor Rod")--"�֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Scourge")--"�ĺ�"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Poet's Pen")--"�W��֮�P"
SetJiaoYiGoods(nil,nil,nil,nil,"Shade of Solaris")--"��ҫ֮Ӱ"
SetJiaoYiGoods(nil,nil,nil,nil,"Shimmeron")--"�ͷ�΢��"
SetJiaoYiGoods(nil,nil,nil,nil,"Void Battery")--"����ħ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Oni-Goroshi")--"����������"
SetJiaoYiGoods(nil,nil,nil,nil,"Fate of the Vaal")--"�ߠ�֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Paradoxica")--"ì�܌��Q"
SetJiaoYiGoods(nil,nil,nil,nil,"The Rippling Thoughts")--"�i��ڤ��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Saviour")--"������"
--SetJiaoYiGoods(nil,nil,nil,nil,"Midnight Bargain")--"ڤ�s"
SetJiaoYiGoods(nil,nil,nil,nil,"Beltimber Blade")--"���h����"
SetJiaoYiGoods(nil,nil,nil,nil,"Grelwood Shank")--"�ֵ²���"
SetJiaoYiGoods(nil,nil,nil,nil,"Cospri's Malice")--"��˹�����Թ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Soul Taker")--"�_�Ÿ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Nebuloch")--"�y�ӱ���"
SetJiaoYiGoods(nil,nil,nil,nil,"Arakaali's Fang")--"��������֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Vulconus")--"ף���ұ"
--SetJiaoYiGoods(nil,nil,nil,nil,"Darkscorn")--"ҹ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Slivertongue")--"����"
--SetJiaoYiGoods(nil,nil,nil,nil,"Martyr of Innocence")--"��ʿ֮�Q"
SetJiaoYiGoods(nil,nil,nil,nil,"Starforge")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Voidforge")--"��̓"
SetJiaoYiGoods(nil,nil,nil,nil,"Atziri's Disfavour")--"��Ɲ�������"
SetJiaoYiGoods(nil,nil,nil,nil,"Kingmaker")--"����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Marohi Erqi	")--"����ľ��`֮�N"
--SetJiaoYiGoods(nil,nil,nil,nil,"Tidebreaker")--"������"
SetJiaoYiGoods(nil,nil,nil,nil,"Disintegrator")--"�������"
SetJiaoYiGoods(nil,nil,nil,nil,"Pledge of Hands")--"�ļs"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Grey Spire")--"���g�n��"
SetJiaoYiGoods(nil,nil,nil,nil,"Rigwald's Quills")--"���֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Fracturing Spinner")--"�є���z"
SetJiaoYiGoods(nil,nil,nil,nil,"Voidfletcher")--"̓�ۼ�ʸ"
--SetJiaoYiGoods(nil,nil,nil,nil,"Xoph's Inception")--"������ʼԴ"
SetJiaoYiGoods(nil,nil,nil,nil,"Maloney's Mechanism")--"�R����ęC�P"
SetJiaoYiGoods(nil,nil,nil,nil,"Aegis Aurora")--"��â�}��"
SetJiaoYiGoods(nil,nil,nil,nil,"Light of Lunaris")--"��Ӱ֮ҫ"
SetJiaoYiGoods(nil,nil,nil,nil,"The Unshattered Will")--"������־"
SetJiaoYiGoods(nil,nil,nil,nil,"The Surrender")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Prism Guardian")--"Ԫ�صı��o"
SetJiaoYiGoods(nil,nil,nil,nil,"The Anticipation")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Mahuxotl's Machination")--"�����_�����\"
--SetJiaoYiGoods(nil,nil,nil,nil,"Victario's Charity")--"�S����W��ؕ�I"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Supreme Truth")--"�o������"

--SetJiaoYiGoods(nil,nil,nil,nil,"Incandescent Heart")--"����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"oryani's Prototype")--"�����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Abhorrent Interrogation")--"��挏Ӎ"
SetJiaoYiGoods(nil,nil,nil,nil,"Hateforge")--"Թ�����"
SetJiaoYiGoods(nil,nil,nil,nil,"Atziri's Acuity")--"��Ɲ��Ľ�˼"
SetJiaoYiGoods(nil,nil,nil,nil,"Craiceann's Pincers")--"����ɺ���Q"
SetJiaoYiGoods(nil,nil,nil,nil,"Maligaro's Virtuosity")--"�R�׸��}��ѪȾ����"
SetJiaoYiGoods(nil,nil,nil,nil,"Asenath's Gentle Touch")--"��ِ�Ƚz�İ���֮�Z"
--SetJiaoYiGoods(nil,nil,nil,nil,"Grip of the Council")--"�h��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Farrul's Pounce")--"�M���_�hצ"
SetJiaoYiGoods(nil,nil,nil,nil,"Breathstealer")--"͵Ϣ"
SetJiaoYiGoods(nil,nil,nil,nil,"Saqawal's Winds")--"˹����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Command of the Pit")--"霺�̖��"
SetJiaoYiGoods(nil,nil,nil,nil,"Null and Void")--"̓��"
SetJiaoYiGoods(nil,nil,nil,nil,"Offering to the Serpent")--"��Ƥ�I��"
SetJiaoYiGoods(nil,nil,nil,nil,"Shaper's Touch")--"����֮�|"
SetJiaoYiGoods(nil,nil,nil,nil,"Hands of the High Templar")--"�}������"
--SetJiaoYiGoods(nil,nil,nil,nil,"Aukuna's Will")--"�W��{֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Slavedriver's Hand")--"ū��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Fenumus' Weave")--"�ƶ��zҹ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Algor Mortis")--"�����꣮Ī��˹"
SetJiaoYiGoods(nil,nil,nil,nil,"Machina Mitts")--"ԎӋħ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Craiceann's Tracks")--"����ɺ֮�E"
SetJiaoYiGoods(nil,nil,nil,nil,"The Red Trail")--"��tۙ�E"
SetJiaoYiGoods(nil,nil,nil,nil,"Seven-League Step")--"����֮�E"
--SetJiaoYiGoods(nil,nil,nil,nil,"Abberath's Hooves")--"��ؐ��˹֮��"
--SetJiaoYiGoods(nil,nil,nil,nil,"Shadows and Dust")--"ɳ�m֮Ӱ"
SetJiaoYiGoods(nil,nil,nil,nil,"Garukhan's Flight")--"���庲֮Ӱ"
SetJiaoYiGoods(nil,nil,nil,nil,"Farrul's Chase")--"�M���_�Cѥ"
--SetJiaoYiGoods(nil,nil,nil,nil,"Inya's Epiphany")--"���ŵ��D��"
SetJiaoYiGoods(nil,nil,nil,nil,"Skyforth")--"����"
--SetJiaoYiGoods(nil,nil,nil,nil,"Lioneye's Paws")--"�{�۵��Y־"
SetJiaoYiGoods(nil,nil,nil,nil,"Saqawal's Talons")--"˹������צ"
--SetJiaoYiGoods(nil,nil,nil,nil,"March of the Legion")--"܊�y��܊"
SetJiaoYiGoods(nil,nil,nil,nil,"Fenumus' Spinnerets")--"�ƶ��z��ѥ"
SetJiaoYiGoods(nil,nil,nil,nil,"The Stampede")--"����֮ѥ"
SetJiaoYiGoods(nil,nil,nil,nil,"Voidwalker")--"̓������"
SetJiaoYiGoods(nil,nil,nil,nil,"Craiceann's Carapace")--"����ɺӲ��"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Brass Dome")--"���~����"
SetJiaoYiGoods(nil,nil,nil,nil,"Kaom's Heart")--"��ķ�ĉ�־"
SetJiaoYiGoods(nil,nil,nil,nil,"Perfidy")--"�������x"
SetJiaoYiGoods(nil,nil,nil,nil,"Garb of the Ephemeral")--"�o���Y��"
SetJiaoYiGoods(nil,nil,nil,nil,"Saqawal's Nest")--"˹����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Hyrri's Ire")--"����đ���"
SetJiaoYiGoods(nil,nil,nil,nil,"The Perfect Form")--"�����ˑB"
SetJiaoYiGoods(nil,nil,nil,nil,"Tabula Rasa")--"�o�M֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Skin of the Lords")--"����֮�w"
--SetJiaoYiGoods(nil,nil,nil,nil,"Belly of the Beast")--"�F��"
SetJiaoYiGoods(nil,nil,nil,nil,"Shavronne's Wrappings")--"Ѧ�ʵ��o���L��"
SetJiaoYiGoods(nil,nil,nil,nil,"Fenumus' Shroud")--"�ƶ��z�|��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Queen's Hunger")--"Ů���Ŀ���"
SetJiaoYiGoods(nil,nil,nil,nil,"Gruthkul's Pelt")--"����˹����Ƥ"
--SetJiaoYiGoods(nil,nil,nil,nil,"Daresso's Defiance")--"���������l��"
SetJiaoYiGoods(nil,nil,nil,nil,"Farrul's Fur")--"�M���_����"
--SetJiaoYiGoods(nil,nil,nil,nil,"Doedre's Skin")--"����֮�w"
SetJiaoYiGoods(nil,nil,nil,nil,"Crystal Vault")--"ˮ������"
--SetJiaoYiGoods(nil,nil,nil,nil,"Rotting Legion")--"����܊�F"
SetJiaoYiGoods(nil,nil,nil,nil,"Sporeguard")--"�������l"
SetJiaoYiGoods(nil,nil,nil,nil,"The Ivory Tower")--"������"
--SetJiaoYiGoods(nil,nil,nil,nil,"Cloak of Defiance")--"�l��֮��"
--SetJiaoYiGoods(nil,nil,nil,nil,"Carcass Jack")--"����֮�w"
SetJiaoYiGoods(nil,nil,nil,nil,"The Eternity Shroud")--"���a�Ʋ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Inpulsa's Broken Heart")--"ӡ���_������"
SetJiaoYiGoods(nil,nil,nil,nil,"Shroud of the Lightless")--"�ް��ČƲ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Atziri's Splendour")--"��Ɲ�������"
SetJiaoYiGoods(nil,nil,nil,nil,"Shadowstitch")--"�pӰ"
SetJiaoYiGoods(nil,nil,nil,nil,"Saqawal's Flock")--"˹����֮ͽ"
--SetJiaoYiGoods(nil,nil,nil,nil,"Tinkerskin")--"����֮�w"
--SetJiaoYiGoods(nil,nil,nil,nil,"Soul Mantle")--"���`֮�s"
SetJiaoYiGoods(nil,nil,nil,nil,"Cowl of the Cryophile")--"�Ắ����"
--SetJiaoYiGoods(nil,nil,nil,nil,"Fleshcrafter")--"���w����"
SetJiaoYiGoods(nil,nil,nil,nil,"The Devouring Diadem")--"����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Plume of Pursuit")--"׷��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Cowl of the Ceraunophile")--"���׶���"
SetJiaoYiGoods(nil,nil,nil,nil,"Hale Negator")--"�����q�g"
SetJiaoYiGoods(nil,nil,nil,nil,"Indigon")--"��ӡ֮�h"
SetJiaoYiGoods(nil,nil,nil,nil,"Ylfeban's Trickery")--"��ܽ���ԎӋ"
SetJiaoYiGoods(nil,nil,nil,nil,"Lioneye's Vision")--"�{�۵�ҕ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Craiceann's Chitin")--"����ɺ����"
SetJiaoYiGoods(nil,nil,nil,nil,"Mask of the Stitched Demon")--"���p֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Crown of the Tyrant")--"�ûʹ���"
SetJiaoYiGoods(nil,nil,nil,nil,"The Brine Crown")--"��������"
SetJiaoYiGoods(nil,nil,nil,nil,"The Vertex")--"�i��"
SetJiaoYiGoods(nil,nil,nil,nil,"Alpha's Howl")--"�O��֮��"
--SetJiaoYiGoods(nil,nil,nil,nil,"Abyssus")--"��Y֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Crest of Desire")--"�j��֮��"
--SetJiaoYiGoods(nil,nil,nil,nil,"Asenath's Mark")--"��ِ�Ƚz��Ѹ��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Devouring Diadem")--"����������"
SetJiaoYiGoods(nil,nil,nil,nil,"Memory Vault")--"��������"
SetJiaoYiGoods(nil,nil,nil,nil,"Windshriek")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Cadigan's Crown")--"���ϸ��ʹ�"

--SetJiaoYiGoods(nil,nil,nil,nil,"The Primordial Chain")--"�����b�O"
SetJiaoYiGoods(nil,nil,nil,nil,"Zerphi's Heart")--"�ɷ���֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Tavukai")--"���`֮ŭ"
SetJiaoYiGoods(nil,nil,nil,nil,"Xoph's Heart")--"����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Xoph's Blood")--"����֮Ѫ"
SetJiaoYiGoods(nil,nil,nil,nil,"Karui Charge")--"��������"
SetJiaoYiGoods(nil,nil,nil,nil,"The Halcyon")--"̫ƽ"
SetJiaoYiGoods(nil,nil,nil,nil,"The Pandemonius")--"Ⱥħ��"
--SetJiaoYiGoods(nil,nil,nil,nil,"Queen of the Forest")--"ɭ��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Fury Valve")--"��ŭ�]�i"
SetJiaoYiGoods(nil,nil,nil,nil,"The Jinxed Juju")--"�����o��"
SetJiaoYiGoods(nil,nil,nil,nil,"Arborix")--"������˹"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Ascetic")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Bisco's Collar")--"��˹�ܵ��Ȧ"
SetJiaoYiGoods(nil,nil,nil,nil,"Astramentis")--"����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Presence of Chayula")--"�Ğ���֮ӡ"
SetJiaoYiGoods(nil,nil,nil,nil,"Aul's Uprising")--"�W��������"
SetJiaoYiGoods(nil,nil,nil,nil,"Solstice Vigil")--"��ҹ֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Badge of the Brotherhood")--"����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Voll's Devotion")--"���������\֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Eye of Innocence")--"�o��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Eyes of the Greatwolf")--"����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Atziri's Foible")--"��Ɲ���}��"

--SetJiaoYiGoods(nil,nil,nil,nil,"Kikazaru")--"�����_��"
--SetJiaoYiGoods(nil,nil,nil,nil,"Essence Worm")--"ݼ�A���x"
--SetJiaoYiGoods(nil,nil,nil,nil,"Icefang Orbit")--"���L܉�E"
--SetJiaoYiGoods(nil,nil,nil,nil,"Circle of Guilt")--"����֮�h"
SetJiaoYiGoods(nil,nil,nil,nil,"Snakepit")--"�߳�"
--SetJiaoYiGoods(nil,nil,nil,nil,"Ventor's Gamble")--"ـ��Ҷ�"
--SetJiaoYiGoods(nil,nil,nil,nil,"Valako's Sign")--"������֮ӡ"
--SetJiaoYiGoods(nil,nil,nil,nil,"Circle of Regret")--"�z��֮�h"
SetJiaoYiGoods(nil,nil,nil,nil,"Astral Projector")--"�ǿ�֮Ӱ"
--SetJiaoYiGoods(nil,nil,nil,nil,"Circle of Fear")--"�֑�֮�h"
--SetJiaoYiGoods(nil,nil,nil,nil,"Circle of Anguish")--"�尾֮�h"
SetJiaoYiGoods(nil,nil,nil,nil,"Warrior's Legacy")--"��ʿ�z��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Taming")--"Ԫ��֮��"
--SetJiaoYiGoods(nil,nil,nil,nil,"Dream Fragments")--"���Z֮��"
--SetJiaoYiGoods(nil,nil,nil,nil,"Shavronne's Revelation")--"Ѧ�ʵĆ�ʾ֮�h"
--SetJiaoYiGoods(nil,nil,nil,nil,"Circle of Nostalgia")--"���f֮�h"
--SetJiaoYiGoods(nil,nil,nil,nil,"Berek's Grip")--"ؐ�׿˵ı��c��֮��"
--SetJiaoYiGoods(nil,nil,nil,nil,"Berek's Pass")--"ؐ�׿˵ı��c��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Berek's Respite")--"ؐ�׿˵Ļ��c��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Call of the Brotherhood")--"��־��"
--SetJiaoYiGoods(nil,nil,nil,nil,"Rigwald's Crest")--"���֮��"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Pariah")--"����"
--SetJiaoYiGoods(nil,nil,nil,nil,"Mark of the Elder")--"����֮ӡ"
--SetJiaoYiGoods(nil,nil,nil,nil,"Mark of the Shaper")--"����֮ӡ"
SetJiaoYiGoods(nil,nil,nil,nil,"Vivinsect")--"������ħ"

--SetJiaoYiGoods(nil,nil,nil,nil,"Faminebind")--"����֮�Y"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Retch")--"�I��"
SetJiaoYiGoods(nil,nil,nil,nil,"Coward's Chains")--"ų����i�"
SetJiaoYiGoods(nil,nil,nil,nil,"Coward's Legacy")--"ų����z�a"
SetJiaoYiGoods(nil,nil,nil,nil,"Headhunter")--"�C��"
--SetJiaoYiGoods(nil,nil,nil,nil,"Umbilicus Immortalis")--"�����M��"
--SetJiaoYiGoods(nil,nil,nil,nil,"Cyclopean Coil")--"����֮�h"
--SetJiaoYiGoods(nil,nil,nil,nil,"Hyperboreus")--"�O������"
SetJiaoYiGoods(nil,nil,nil,nil,"Mother's Embrace")--"ĸ�H�ē�"
SetJiaoYiGoods(nil,nil,nil,nil,"The Flow Untethered")--"������Ϣ"
SetJiaoYiGoods(nil,nil,nil,nil,"Ryslatha's Coil")--"��˹���_֮�p"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Tactician")--"����܊��"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Nomad")--"����"

--SetJiaoYiGoods(nil,nil,nil,nil,"Efficient Training")--"���Ӗ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Inspired Learning")--"��֪�ğ���"
SetJiaoYiGoods(nil,nil,nil,nil,"Emperor's Might")--"�����İԙ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Emperor's Mastery")--"�����ļ���"
SetJiaoYiGoods(nil,nil,nil,nil,"Emperor's Cunning")--"������ԎӋ"
SetJiaoYiGoods(nil,nil,nil,nil,"Emperor's Wit")--"�������ǻ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Primordial Might")--"��������"
SetJiaoYiGoods(nil,nil,nil,nil,"The Red Dream")--"��Ӱ����"
SetJiaoYiGoods(nil,nil,nil,nil,"Might of the Meek")--"���ӿɽ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Transcendent Flesh")--"����֮�w"
SetJiaoYiGoods(nil,nil,nil,nil,"Thread of Hope")--"ϣ��֮�L"
SetJiaoYiGoods(nil,nil,nil,nil,"Intuitive Leap")--"ֱ�X֮�S"
SetJiaoYiGoods(nil,nil,nil,nil,"Lioneye's Fall")--"�{�۵��E��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Green Dream")--"��Ӱ����"
SetJiaoYiGoods(nil,nil,nil,nil,"The Green Nightmare")--"��Ӱ���|"
SetJiaoYiGoods(nil,nil,nil,nil,"Transcendent Spirit")--"����֮�`"
SetJiaoYiGoods(nil,nil,nil,nil,"Unnatural Instinct")--"���"
--SetJiaoYiGoods(nil,nil,nil,nil,"Clear Mind")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Energy From Within")--"���ܷ��o"
SetJiaoYiGoods(nil,nil,"Metadata/Items/Jewels/JewelDex",nil,"Grand Spectrum")--"�޹��V��G�錚"
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Jewels/JewelInt",nil,"Grand Spectrum")--�޹��V��{�錚
SetJiaoYiGoods(nil,nil,nil,nil,"Unending Hunger")--"�o�M����"
--SetJiaoYiGoods(nil,nil,nil,nil,"Healthy Mind")--"�`�w�D�Q"
SetJiaoYiGoods(nil,nil,nil,nil,"Primordial Harmony")--"������C"
SetJiaoYiGoods(nil,nil,nil,nil,"Fortress Covenant")--"�Ա��ļs"
SetJiaoYiGoods(nil,nil,nil,nil,"The Blue Dream")--"��Ӱ����"
SetJiaoYiGoods(nil,nil,nil,nil,"The Blue Nightmare")--"��Ӱ���|"
SetJiaoYiGoods(nil,nil,nil,nil,"The Anima Stone")--"�ۻ�ʯ"
SetJiaoYiGoods(nil,nil,nil,nil,"Watcher's Eye")--"����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Glorious Vanity")--"�x�͵�̓�s"
SetJiaoYiGoods(nil,nil,nil,nil,"Lethal Pride")--"��������"
SetJiaoYiGoods(nil,nil,nil,nil,"Brutal Restraint")--"����ļo��"
SetJiaoYiGoods(nil,nil,nil,nil,"Militant Faith")--"���M������"
SetJiaoYiGoods(nil,nil,nil,nil,"Elegant Hubris")--"���ŵĸ߰�"
SetJiaoYiGoods(nil,nil,nil,nil,"Watcher's Eye")--"����֮��"
--SetJiaoYiGoods(nil,nil,nil,nil,"Pure Talent")--"����"
--SetJiaoYiGoods(nil,nil,nil,nil,"Conqueror's Potency")--"�����ߵ�����"
SetJiaoYiGoods(nil,nil,nil,nil,"Primordial Eminence")--"����׿Խ"
--SetJiaoYiGoods(nil,nil,nil,nil,"Conqueror's Efficiency")--"�����ߵ�Ѹ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Tempered Flesh")--"ұ�֮�w"
SetJiaoYiGoods(nil,nil,nil,nil,"Tempered Spirit")--"ұ�֮�`"
SetJiaoYiGoods(nil,nil,nil,nil,"Tempered Mind")--"ұ�֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Rain of Splinters")--"�����"
SetJiaoYiGoods(nil,nil,nil,nil,"Dead Reckoning")--"��������"
SetJiaoYiGoods(nil,nil,nil,nil,"Apparitions")--"ӳ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Divide and Conquer")--"���v֮ŭ"

SetJiaoYiGoods(nil,nil,nil,nil,"One With Nothing")--"һ�o����"
SetJiaoYiGoods(nil,nil,nil,nil,"Voices")--"ɤ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Kitava's Teachings")--"�������Ľ̌W"
SetJiaoYiGoods(nil,nil,nil,nil,"The Interrogation")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Calamitous Visions")--"���K��ҕ"
SetJiaoYiGoods(nil,nil,nil,nil,"Natural Affinity")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"The Siege")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Child of Violence")--"����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Front Line")--"ǰ�еľ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Megalomaniac")--"����֢"
SetJiaoYiGoods(nil,nil,nil,nil,"Split Personality")--"�˸����"

SetJiaoYiGoods(nil,nil,nil,nil,"Expedition's End")--"�h��֮�M"
SetJiaoYiGoods(nil,nil,nil,nil,"Soulwrest")--"�TӰ"
SetJiaoYiGoods(nil,nil,nil,nil,"Corpsewalker")--"�Ќ�����"
SetJiaoYiGoods(nil,nil,nil,nil,"Crest of Desire")--"�j��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Fated End")--"���\�K�Y"
SetJiaoYiGoods(nil,nil,nil,nil,"Shattershard")--"����֮м"
SetJiaoYiGoods(nil,nil,nil,nil,"Font of Thunder")--"�����}��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Hidden Blade")--"�[��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Actum")--"Մ��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Iron Mass")--"�F�K"
--SetJiaoYiGoods(nil,nil,nil,nil,"Apex Mode")--"�p��ģʽ"
--SetJiaoYiGoods(nil,nil,nil,nil,"Nadir Mode")--"��Yģʽ"
SetJiaoYiGoods(nil,nil,nil,nil,"The Fulcrum")--"֧�c"
SetJiaoYiGoods(nil,nil,nil,nil,"Atziri's Rule")--"��Ɲ��Ľy��"
SetJiaoYiGoods(nil,nil,nil,nil,"Cane of Kulemak")--"���t�R�˵��`��"
SetJiaoYiGoods(nil,nil,nil,nil,"Glimpse of Chaos")--"����һƳ"
SetJiaoYiGoods(nil,nil,nil,nil,"Hateforge")--"Թ�����"
SetJiaoYiGoods(nil,nil,nil,nil,"Mahuxotl's Machination")--"�����_�����\"
SetJiaoYiGoods(nil,nil,nil,nil,"Relic of the Pact")--"�ŵ�ڤ�s"
--SetJiaoYiGoods(nil,nil,nil,nil,"Steelworm")--"�FĻ�x"
SetJiaoYiGoods(nil,nil,nil,nil,"Temptation Step")--"�T�󲽷�"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Scales of Justice")--"���x���"
SetJiaoYiGoods(nil,nil,nil,nil,"Yaomac's Accord")--"���R��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Ulaman's Gaze")--"��������а��"
SetJiaoYiGoods(nil,nil,nil,nil,"Tecrod's Gaze")--"�ؿ��_�µ�а��"
SetJiaoYiGoods(nil,nil,nil,nil,"Kurgal's Gaze")--"�¸��а��"
SetJiaoYiGoods(nil,nil,nil,nil,"Amanamu's Gaze")--"��ķ��ķ��а��"
SetJiaoYiGoods(nil,nil,nil,nil,"Triumvirate Authority")--"���w����"
SetJiaoYiGoods(nil,nil,nil,nil,"The Squire")--"�����"
SetJiaoYiGoods(nil,nil,nil,nil,"Mageblood")--"ħѪ"
--SetJiaoYiGoods(nil,nil,nil,nil,"Gravebind")--"��Ĺ���`"
SetJiaoYiGoods(nil,nil,nil,nil,"Stasis Prison")--"�oֹ�λ\"
SetJiaoYiGoods(nil,nil,nil,nil,"Stranglegasp")--"��֮Ϣ"
SetJiaoYiGoods(nil,nil,nil,nil,"Uul-Netol's Vow")--"�������֮��"
--SetJiaoYiGoods(nil,nil,nil,nil,"Dyadian Dawn")--"�����ϰ��ĳ���"
--SetJiaoYiGoods(nil,nil,nil,nil,"Death Rush")--"���ߺ�"
--SetJiaoYiGoods(nil,nil,nil,nil,"Skirmish")--"С����"
--SetJiaoYiGoods(nil,nil,nil,nil,"Hrimnor's Resolve")--"��ķ�Z�ĺ���"
--SetJiaoYiGoods(nil,nil,nil,nil,"Alberon's Warpath")--"����ؐ¡����;"
SetJiaoYiGoods(nil,nil,nil,nil,"Quickening Covenant")--"�ͮd�ļs"
--SetJiaoYiGoods(nil,nil,nil,nil,"Anatomical Knowledge")--"��֪��Ҋ"
SetJiaoYiGoods(nil,nil,nil,nil,"Lioneye's Remorse")--"ʨ�۵���ҫ֮��"
--SetJiaoYiGoods(nil,nil,nil,nil,"Snakebite")--"����"
--SetJiaoYiGoods(nil,nil,nil,nil,"Cherrubim's Maleficence")--"Ѧ���e�Đ�����"
--SetJiaoYiGoods(nil,nil,nil,nil,"Maligaro's Cruelty")--"�R�׸��}�Ě���"

SetJiaoYiGoods(nil,nil,nil,nil,"Ashes of the Stars	")--"�ǉm"
SetJiaoYiGoods(nil,nil,nil,nil,"Black Zenith")--"��ژO�"
SetJiaoYiGoods(nil,nil,nil,nil,"Ceaseless Feast")--"�o�Mʢ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Crystallised Omniscience")--"����ȫ֪"
SetJiaoYiGoods(nil,nil,nil,nil,"Dawnbreaker")--"�ƕ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Inextricable Fate")--"�o����Ó֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Polaric Devastation")--"�O�ؚ���"
SetJiaoYiGoods(nil,nil,nil,nil,"Sudden Dawn")--"�����E��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Annihilating Light")--"����׹�"
SetJiaoYiGoods(nil,nil,nil,nil,"The Gluttonous Tide")--"�����˳�"
SetJiaoYiGoods(nil,nil,nil,nil,"Dissolution of the Flesh")--"Ѫ���ܽ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Melding of the Flesh")--"Ѫ���ں�"

SetJiaoYiGoods(nil,nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction1_1")--���A����֮�h����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction1_2")--��ͨ����֮�h����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction1_3")--���A����֮�h����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction1_4")--�ꂥ����֮�h����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction2_1")--���A�ڰ�Ѫ�����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction2_2")--��ͨ�ڰ�Ѫ�����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction2_3")--���A�ڰ�Ѫ�����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction2_4")--�ꂥ�ڰ�Ѫ�����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction3_1")--���A��������
SetJiaoYiGoods(nil,nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction3_2")--��ͨ��������
SetJiaoYiGoods(nil,nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction3_3")--���A��������
SetJiaoYiGoods(nil,nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction3_4")--�ꂥ��������
SetJiaoYiGoods(nil,nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction4_1")--���A�W�����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction4_2")--��ͨ�W�����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction4_3")--���A�W�����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction4_4")--�ꂥ�W�����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyRefreshBarter")--������T
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyRefreshDealer")--�U����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyRefreshGambler")--ˎ��
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyRefreshSaga")--���᪄��
SetJiaoYiGoods(nil,nil,"Metadata/Items/Expedition/ExpeditionLogbook")--̽�U���I
SetJiaoYiGoods(nil,nil,"Metadata/Items/MapFragments/ClassicVaultKey")--�ŵ��z�
SetJiaoYiGoods(nil,nil,"Metadata/Items/MapFragments/340VaultKey")--�����z�
SetJiaoYiGoods(nil,nil,"Metadata/Items/MapFragments/RitualFragment")--��Ѫ����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyRitualStone")--���鷨��
SetJiaoYiGoods(nil,"�����o��","Metadata/Items/Gems/SupportGemAdditionalQuality",nil,nil,nil,nil)--���܌�ʯ
SetJiaoYiGoods(nil,"�����o��","Metadata/Items/Gems/SupportGemAdditionalXP",nil,nil,nil,nil)--���܌�ʯ
SetJiaoYiGoods(nil,"�x���o��","Metadata/Items/Gems/SupportGemAdditionalLevel",nil,nil,nil,nil)--���܌�ʯ
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Jewels/JewelPassiveTreeExpansionMedium")--���������鱦
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Jewels/JewelPassiveTreeExpansionLarge")--���������鱦
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportUnique")--׿Խ�ɲ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportBreachstone")--�����ɲ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportMoreHidden")--ȫ��ɲ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportCorrupted")--�ߠ��ɲ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportDelirium")--�d���ɲ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportJuiced")--�����ɲ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportBlighted")--����ɲ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportGuardian")--�����ɲ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportExplorers")--̽�U�҂ɲ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyExtractOil")--���ʹ��
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchRerollRare")--���ܻ���ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchAddModToRare")--���ܳ��ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchRemoveMod")--���ܟoЧʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/MapFragments/CurrencySirusFragment1")--�W��Ɲ���̼y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencySirusFragment2")--�͂��̼y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencySirusFragment3")--�D����˹�̼y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencySirusFragment4")--�S�_���၆�̼y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencySirusFragmentsComplete")--�������ֿ̼y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchEmber1")--���A���ܻҠa
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchEmber2")--���A���ܻҠa
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchEmber3")--�ꂥ���ܻҠa
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchEmber4")--׿Խ���ܻҠa
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchIchor1")--���A�����`Һ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchIchor2")--���A�����`Һ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchIchor3")--�ꂥ�����`Һ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchIchor4")--׿Խ�����`Һ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyConflictOrb")--�nͻ����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyItemiseSextantModifier")--�{��T���_�P
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyItemisedSextantModifier")--���ܵ��_�P

-- SetJiaoYiGoods(nil,"����ʯ��Ƭ","Metadata/Items/Currency/CurrencyRemoveModShard",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߽׵��ʯ��Ƭ","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSocketsShard",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ƽ��ʯ��Ƭ","Metadata/Items/Currency/CurrencyRerollMapTypeShard",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ʯ��Ƭ","Metadata/Items/Currency/CurrencyUpgradeMapTierShard",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������Ƭ","Metadata/Items/Currency/CurrencyStrongboxQualityShard",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Զ��ʯ��Ƭ","Metadata/Items/Currency/CurrencyRerollUniqueShard",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ʯ��Ƭ","Metadata/Items/Currency/CurrencyRerollRareShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�����µ�ħ����Ƭ","Metadata/Items/Currency/CurrencyDuplicateShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ʯ��Ƭ","Metadata/Items/Currency/CurrencyAddModToRareShard",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ʯ��Ƭ","Metadata/Items/Currency/CurrencyUpgradeMagicToRareShard",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ͳ��ħƿ","Metadata/Items/Currency/CurrencyIncursionVialTrap",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ٻ�ħƿ","Metadata/Items/Currency/CurrencyIncursionVialHealing",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħƿ","Metadata/Items/Currency/CurrencyIncursionVialPoison",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ǽ�ħƿ","Metadata/Items/Currency/CurrencyIncursionVialLightning",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħƿ","Metadata/Items/Currency/CurrencyIncursionVialFire",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħƿ","Metadata/Items/Currency/CurrencyIncursionVialMinion",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ħƿ","Metadata/Items/Currency/CurrencyIncursionVialBossFlask",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Խħƿ","Metadata/Items/Currency/CurrencyIncursionVialBossJewel",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�׼�ħƿ","Metadata/Items/Currency/CurrencyIncursionVialBossAmulet",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���׻�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingFire",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������ʯ","Metadata/Items/Currency/CurrencyDelveCraftingCold",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������ʯ","Metadata/Items/Currency/CurrencyDelveCraftingLightning",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ݻ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingPhysical",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���仯ʯ","Metadata/Items/Currency/CurrencyDelveCraftingChaos",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ԭʼ��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingLife",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ܻ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingDefences",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ʴ��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingBleedPoison",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ʻ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingElemental",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��̫��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingCasterMods",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������ʯ","Metadata/Items/Currency/CurrencyDelveCraftingAttackMods",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"͸�⻯ʯ","Metadata/Items/Currency/CurrencyDelveCraftingMana",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ʯ","Metadata/Items/Currency/CurrencyDelveCraftingSpeed",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�󸿻�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingMinionsAuras",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������ʯ","Metadata/Items/Currency/CurrencyDelveCraftingQuality",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ħ����ʯ","Metadata/Items/Currency/CurrencyDelveCraftingEnchant",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ǻ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingSockets",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���滯ʯ","Metadata/Items/Currency/CurrencyDelveCraftingGemLevel",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ѫ��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingVaal",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�οջ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingAbyss",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ѻ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingMirror",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��̻�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingCorruptEssence",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������ʯ","Metadata/Items/Currency/CurrencyDelveCraftingRandom",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥ�໯ʯ","Metadata/Items/Currency/CurrencyDelveCraftingLuckyModRolls",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ʯ","Metadata/Items/Currency/CurrencyDelveCraftingSellPrice",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ԭʼ��������","Metadata/Items/Delve/DelveSocketableCurrencyUpgrade1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ǿ����������","Metadata/Items/Delve/DelveSocketableCurrencyUpgrade2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������������","Metadata/Items/Delve/DelveSocketableCurrencyUpgrade3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������������","Metadata/Items/Delve/DelveSocketableCurrencyUpgrade4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ԭʼ���ҹ�����","Metadata/Items/Delve/DelveSocketableCurrencyReroll1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ǿ�ܻ��ҹ�����","Metadata/Items/Delve/DelveSocketableCurrencyReroll2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ܻ��ҹ�����","Metadata/Items/Delve/DelveSocketableCurrencyReroll3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ܻ��ҹ�����","Metadata/Items/Delve/DelveSocketableCurrencyReroll4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ԭʼ��������","Metadata/Items/Delve/DelveStackableSocketableCurrencyUpgrade1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ǿ����������","Metadata/Items/Delve/DelveStackableSocketableCurrencyUpgrade2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������������","Metadata/Items/Delve/DelveStackableSocketableCurrencyUpgrade3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������������","Metadata/Items/Delve/DelveStackableSocketableCurrencyUpgrade4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ԭʼ���ҹ�����","Metadata/Items/Delve/DelveStackableSocketableCurrencyReroll1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ǿ�ܻ��ҹ�����","Metadata/Items/Delve/DelveStackableSocketableCurrencyReroll2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ܻ��ҹ�����","Metadata/Items/Delve/DelveStackableSocketableCurrencyReroll3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ܻ��ҹ�����","Metadata/Items/Delve/DelveStackableSocketableCurrencyReroll4",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ľ����","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��Ƿ���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���Ʒ���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand3","ʫ��֮��","The Poet's Pen","3",nil)
--SetJiaoYiGoods(nil,"ʯӢ����","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand4",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���Ʒ���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand5","������","Amplification Rod","3",nil)
--SetJiaoYiGoods(nil,"���߷���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand6","��ҫ֮Ӱ","Shade of Solaris","3",nil)
--SetJiaoYiGoods(nil,"��̷���","Metadata/Items/Weapons/OneHandWeapons/Wands/WandM1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�޽Ƿ���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand7",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���ķ���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand8",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ˮ������","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand9",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���۷���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand10",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���׷���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand11",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ͽ����","Metadata/Items/Weapons/OneHandWeapons/Wands/WandM2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ħ�Ƿ���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand12",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ħ�Է���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand13","����","Moonsorrow","3",nil)
--SetJiaoYiGoods(nil,"��ʯ����","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand14",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��編��","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand15",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���Է���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand16","Ǳ��ħ��","Void Battery","3",nil)
--SetJiaoYiGoods(nil,"���·���","Metadata/Items/Weapons/OneHandWeapons/Wands/WandM3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�ټ�����","Metadata/Items/Weapons/OneHandWeapons/Wands/WandAtlas1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"������Ƭ","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��Ƥ��","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�̹ǵ�","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"������ذ","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger4",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���߶���","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger5",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ͭ�Ͳ���","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger6",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"˫��ذ","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger7",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ħ��֮��","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger8",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��Ҷ�ذ","Metadata/Items/Weapons/OneHandWeapons/Daggers/DaggerM1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��������","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger9",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��������","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger10",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"������","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger11",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���߶�ذ","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger12",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��Ⲩ��","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger13",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�ʼҶ�ذ","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger14",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��Ѫ��ذ","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger15","��������֮��","Arakaali's Fang","3",nil)
--SetJiaoYiGoods(nil,"�����ذ","Metadata/Items/Weapons/OneHandWeapons/Daggers/DaggerM2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���˶̵�","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger16",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger17",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��������","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger18",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"������֮ذ","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger19",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�׽���","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger20",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�۹���ذ","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger21",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ħ���ذ","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger22",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ս��","Metadata/Items/Weapons/OneHandWeapons/Daggers/DaggerM3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ȭ��","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���צ","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�䶤","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"èצ��","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw4",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"Ϯ�۹�","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw5",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"Զ��սצ","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw6",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ѣĿצ��","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw7",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�־�֮צ","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw8",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"˫��צ","Metadata/Items/Weapons/OneHandWeapons/Claws/ClawM1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"˺�Ѽ�צ","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw9",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"������","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw10",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��צ��","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw11",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���๳","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw12",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ʷǰսצ","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw13",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����սצ","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw14",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ӥצ��","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw15",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����צ","Metadata/Items/Weapons/OneHandWeapons/Claws/ClawM2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮צ","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw16",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�̺���","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw17",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ħצ��","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw18",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���۹�","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw19",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�߶�սצ","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw20",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�۹�սצ","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw21",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�־�֮��","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw22",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"˫��սצ","Metadata/Items/Weapons/OneHandWeapons/Claws/ClawM3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�⸫","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�����ָ�","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�и���","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe4",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe5",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"������","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe6",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe7",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�Ļ�֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe8",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ʴ��ս��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxeM1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe9",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ս֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe10",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe11",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�о���","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe12",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��������","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe13",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"Ѫ��֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe14",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe15",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ս��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxeM2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��³�Ÿ�","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe16",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�ƳǸ�","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe17","���Ÿ�","Soul Taker","3",nil)
--SetJiaoYiGoods(nil,"�б�֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe18",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��¾֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe19",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�߶�ս��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe20",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�ʼ�֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe21",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe22",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxeM3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/items/Weapons/OneHandWeapons/OneHandSwords/OneHandSwordC","��߱","Oni-Goroshi","3",nil)
--SetJiaoYiGoods(nil,"�⽣","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ͭ�̽�","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�ɾ���","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword4",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ս֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword5",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"Զ��֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword6",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword7",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ĺɫ֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword8",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��צ��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSwordM1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ͭ�̽�","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword9",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���ó���","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword10",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ⳤ��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword11",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ʿ������","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword12",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���߳���","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword13",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"Ȩ��֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword14",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ĺ�ⳤ��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword15",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��׽��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSwordM2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ʯ֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword16",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��������","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword17",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ʿ����","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword18",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���ų���","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword19",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�߶�����","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword20",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword21",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ҹ�ﳤ��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword22",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSwordM3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��̽�","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"������ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier4",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��״����","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier5",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�Ŵ�ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier6",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier7",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier8",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"С��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/RapierM1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier9",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��â�̽�","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier10",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���״̽�","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier11",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier12",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�ŵ�̽�","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier13",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier14",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier15",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/RapierM2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier16",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ǿ��ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier17",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����̽�","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier18",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier19",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�߶�ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier20","���","Paradoxica","3",nil)
--SetJiaoYiGoods(nil,"����ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier21","��˹����Թ��","Cospri's Malice","3",nil)
--SetJiaoYiGoods(nil,"ħ�ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier22",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�������","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/RapierM3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ľ֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�۶�ľ��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ʯ��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace4",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ս��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace5",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���д�","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace6",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace7",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�ξ�֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace8",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMaceM1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ʯľ��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace9",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���ľ��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace10",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���Ҵ�","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace11",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ǿ��ս��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace12",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace13",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace14",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace15",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMaceM2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace16",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace17",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�ᴸ","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace18","��Ĭ֮��","Mj?lner","3",nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace19",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�����ش�","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace20",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ʥԼ֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace21",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace22",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�͹�ķ��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMaceM3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ľ����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ľ����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ͭ�Ͷ���","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ʯӢ����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre4",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��������","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre5",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ɫ����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre6",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���Ƕ���","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre7",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"Ӱ�����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre8",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���Ƕ���","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/SceptreM1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"Զ��֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre9",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���ܶ���","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre10",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ˮ������","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre11",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"Ǧ������","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre12",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"Ѫɫ����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre13",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�ʼҶ���","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre14",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��Ԩ����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre15",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��¹����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/SceptreM2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��³����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre16",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮ͳ","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre17","��������ߵ�̾Ϣ","Sign of the Sin Eater","3",nil)
--SetJiaoYiGoods(nil,"��ʯ����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre18",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�׽����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre19",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�߶�����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre20",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�������","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre21",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��Ӱ����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre22",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ħ����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/SceptreM3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���ƹ�","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�̹�","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ϳɹ�","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ƹ�","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ʼ��Թ�","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���乭","Metadata/Items/Weapons/TwoHandWeapons/Bows/BowM1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����Թ�","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ֱ��","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���Ϲ�","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ѻ���","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ի�֮��","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ֮��","Metadata/Items/Weapons/TwoHandWeapons/Bows/BowM2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ұ�Թ�","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ս��","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow17",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow18",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ��","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow19",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow20",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�۹�֮��","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow21","�ѷ�","Windripper","3",nil)
-- SetJiaoYiGoods(nil,"������֮��","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow22",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������˹��","Metadata/Items/Weapons/TwoHandWeapons/Bows/BowM3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ֮��","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���Ƴ���","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ͳ���","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ǿ������","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ʼҳ���","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���³���","Metadata/Items/Weapons/TwoHandWeapons/Staves/StaffM1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ����","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ϸ������","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ó���","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���Ƴ���","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���峤��","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���鳤��","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Weapons/TwoHandWeapons/Staves/StaffM2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʷ�䳤��","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�籩����","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff17",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�۹�����","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff18",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���г���","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff19","��Լ","Pledge of Hands","3",nil)
-- SetJiaoYiGoods(nil,"��ʴ����","Metadata/Items/Weapons/TwoHandWeapons/Staves/StaffM3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʯ��","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ս��","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫�о޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���֮��","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ�޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ذ��","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxeM1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ�޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���̾޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫Ӱ�޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Ȩ��޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ԩ�޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����צ��","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxeM2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��³�޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe14","��ķ�İ�ҵ","Kaom's Primacy","3",nil)
-- SetJiaoYiGoods(nil,"�Ѽ׾޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߶��޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe17",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe18","����֮��","Kingmaker","3",nil)
-- SetJiaoYiGoods(nil,"��Ӱ�޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe19",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxeM3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��߾޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ؽ�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫�ֽ�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ļ�޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSwordM1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ѫ�޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʿ���޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ɽ����","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ľ޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ϸ��","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSwordM2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���̾޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�б��޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߶��޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword17",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʨצ�޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword18",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ؽ�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword19","������","Starforge","3",nil)
-- SetJiaoYiGoods(nil,"�����ؽ�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword19","�ѿ���","Voidforge","3",nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSwordM3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ�޴�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���Ǿ޴�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ǧ�ﴸ","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ͭӰ�޴�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�־��ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMaceM1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ͼ�ھ޴�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���;޴�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�״̾޴�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ȩ�޴�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�չⴸ","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMaceM2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��³�ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ɨ����","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"¾���ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace17",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�۹��ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace18",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace19",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMaceM3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������ָ","Metadata/Items/Rings/Ring1","Ӣ�鱦��","Le Heup of All","3",nil)
-- SetJiaoYiGoods(nil,"������ָ","Metadata/Items/Rings/Ring1","���֮��","Circle of Guilt","3",nil)
-- SetJiaoYiGoods(nil,"ɺ����ָ","Metadata/Items/Rings/Ring2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ָ","Metadata/Items/Rings/Ring4","̰��֮��","Andvarius","3",nil)
-- SetJiaoYiGoods(nil,"����ָ","Metadata/Items/Rings/Ring4","����Ҷ�","Ventor's Gamble","3",nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring5","�ں�֮��","Circle of Regret","3",nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring5","������֮ӡ","Valako's Sign","3",nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring5","���ٲ���ɽ��","Putembo's Valley","3",nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring5","���ٲ��Ĳ�ԭ","Putembo's Meadow","3",nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring5","���ٲ��ĸ�ɽ","Putembo's Mountain","3",nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring6","�־�֮��","Circle of Fear","3",nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring6","�ǿ�֮Ӱ","Astral Projector","3",nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring6","�������ĸ�ɽ","Uzaza's Mountain","3",nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring6","�������Ĳ�ԭ","Uzaza's Meadow","3",nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring6","��������ɽ��","Uzaza's Valley","3",nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring7","�������ĸ�ɽ","Ahkeli's Mountain","3",nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring7","�������Ĳ�ԭ","Ahkeli's Meadow","3",nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring7","��������ɽ��","Ahkeli's Valley","3",nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring7","��ʹ֮��","Circle of Anguish","3",nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring8","Ԫ��֮��","The Taming","3",nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring8","����","Thief's Torment","3",nil)
-- SetJiaoYiGoods(nil,"�¹�ʯ��ָ","Metadata/Items/Rings/Ring9","Ѧ�ʵ���ʾ֮��","Shavronne's Revelation","3",nil)
-- SetJiaoYiGoods(nil,"�Ͼ���ָ","Metadata/Items/Rings/Ring10","���֮��","Circle of Nostalgia","3",nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫���ָ","Metadata/Items/Rings/Ring12","���׿˵Ļ�����֮��","Berek's Respite","3",nil)
-- SetJiaoYiGoods(nil,"˫���ָ","Metadata/Items/Rings/Ring13","��־����","Call of the Brotherhood","3",nil)
-- SetJiaoYiGoods(nil,"˫���ָ","Metadata/Items/Rings/Ring14","���֮��","Rigwald's Crest","3",nil)
-- SetJiaoYiGoods(nil,"Ǳ��֮��","Metadata/Items/Rings/Ring15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ؽ�ָ","Metadata/Items/Rings/RingVictor1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ͻ��ָ","Metadata/Items/Rings/RingAtlas1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ʯ��ָ","Metadata/Items/Rings/RingAtlas2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ɰ֮��","Metadata/Items/Rings/RingAtlas3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Rings/RingAtlas4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��϶��ָ","Metadata/Items/Rings/BreachRing",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���黤���","Metadata/Items/Amulets/Amulet1","�����֮��","Zerphi's Heart","3",nil)
-- SetJiaoYiGoods(nil,"ɺ�������","Metadata/Items/Amulets/Amulet2","ԭʼ����","The Primordial Chain","3",nil)
-- SetJiaoYiGoods(nil,"ɺ�������","Metadata/Items/Amulets/Amulet2","ʥ��","Tavukai","3",nil)
-- SetJiaoYiGoods(nil,"���껤���","Metadata/Items/Amulets/Amulet3","����֮��","Xoph's Heart","3",nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Amulets/Amulet4","̫ƽ","The Halcyon","3",nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Amulets/Amulet4","���������","Hyrri's Truth","3",nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Amulets/Amulet5","����֮��","Voice of the Storm","3",nil)
-- SetJiaoYiGoods(nil,"�۽����","Metadata/Items/Amulets/Amulet6","��֮��","Winterheart","3",nil)
-- SetJiaoYiGoods(nil,"�۽����","Metadata/Items/Amulets/Amulet6","����","The Ascetic","3",nil)
 SetJiaoYiGoods(nil,"�۽����","Metadata/Items/Amulets/Amulet6","��˹�˵���Ȧ","Bisco's Collar","3",nil)
 SetJiaoYiGoods(nil,"���׻����","Metadata/Items/Amulets/Amulet7","����֮��","Astramentis","3",nil)
 SetJiaoYiGoods(nil,"���׻����","Metadata/Items/Amulets/Amulet7","�ǳ�","MasterOfGems","3",nil)
-- SetJiaoYiGoods(nil,"���׻����","Metadata/Items/Amulets/Amulet7","���ղ���","Solstice Vigil","3",nil)
-- SetJiaoYiGoods(nil,"���׻����","Metadata/Items/Amulets/Amulet7","�¶�֮��","Aul's Uprising","3",nil)
-- SetJiaoYiGoods(nil,"���׻����","Metadata/Items/Amulets/Amulet7","����","Impresence","3",nil)
-- SetJiaoYiGoods(nil,"���׻����","Metadata/Items/Amulets/Amulet7","�����","Yoke of Suffering","3",nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Amulets/Amulet8","�ֵܻ����","Badge of the Brotherhood","3",nil)
-- SetJiaoYiGoods(nil,"��觻����","Metadata/Items/Amulets/Amulet9","�������ҳ�֮��","Voll's Devotion","3",nil)
-- SetJiaoYiGoods(nil,"�ƾ������","Metadata/Items/Amulets/Amulet10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Ѫɫ�����","Metadata/Items/Amulets/Amulet11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ػ����","Metadata/Items/Amulet/AmuletVictor1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���黤���","Metadata/Items/Amulet/AmuletAtlas1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ʯ�����","Metadata/Items/Amulet/AmuletAtlas2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman1_1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman1_2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ҽ�ħ��","Metadata/Items/Amulets/Talismans/Talisman1_3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�½�ħ��","Metadata/Items/Amulets/Talismans/Talisman1_4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ԩħ��","Metadata/Items/Amulets/Talismans/Talisman1_5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ħ��","Metadata/Items/Amulets/Talismans/Talisman1_6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman1_7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman1_8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman1_9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ħ��","Metadata/Items/Amulets/Talismans/Talisman1_10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӽħ��","Metadata/Items/Amulets/Talismans/Talisman1_11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ħ��","Metadata/Items/Amulets/Talismans/Talisman1_12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��צħ��","Metadata/Items/Amulets/Talismans/Talisman2_1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ʹ�ħ��","Metadata/Items/Amulets/Talismans/Talisman2_2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��צħ��","Metadata/Items/Amulets/Talismans/Talisman2_3","�������","Rigwald's Curse","3",nil)
-- SetJiaoYiGoods(nil,"���ħ��","Metadata/Items/Amulets/Talismans/Talisman2_4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�乿ħ��","Metadata/Items/Amulets/Talismans/Talisman2_5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫��ħ��","Metadata/Items/Amulets/Talismans/Talisman2_6_1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫��ħ��","Metadata/Items/Amulets/Talismans/Talisman2_6_2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫��ħ��","Metadata/Items/Amulets/Talismans/Talisman2_6_3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫��ħ��","Metadata/Items/Amulets/Talismans/Talisman2_6_4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫��ħ��","Metadata/Items/Amulets/Talismans/Talisman2_6_5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫��ħ��","Metadata/Items/Amulets/Talismans/Talisman2_6_6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman2_7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ħ��","Metadata/Items/Amulets/Talismans/Talisman2_8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Ǳ��ħ��","Metadata/Items/Amulets/Talismans/Talisman3_1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman3_2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫��ħ��","Metadata/Items/Amulets/Talismans/Talisman3_3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman3_4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman3_5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman3_6_1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman3_6_2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman3_6_3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman3_7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman4","����֮��","Eyes of the Greatwolf","3",nil)
-- SetJiaoYiGoods(nil,"�ز�����","Metadata/Items/Belts/Belt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Belts/Belt2",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"Ƥ������","Metadata/Items/Belts/Belt3","����","Headhunter","3",nil)
-- SetJiaoYiGoods(nil,"�ظ�����","Metadata/Items/Belts/Belt4","��˹�˵�����","Bisco's Leash","3",nil)
-- SetJiaoYiGoods(nil,"�β�����","Metadata/Items/Belts/Belt5","������˹֮ӡ","Perandus Blazon","3",nil)
-- SetJiaoYiGoods(nil,"�۶�����","Metadata/Items/Belts/Belt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ȷ�����","Metadata/Items/Belts/BeltAtlas1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ˮ������","Metadata/Items/Belts/BeltAtlas2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Belts/BeltDemigods1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ԩ����","Metadata/Items/Belts/BeltAbyss",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ����","Metadata/Items/Armours/Shields/ShieldStr1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߲�����","Metadata/Items/Armours/Shields/ShieldStr2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ƥ����","Metadata/Items/Armours/Shields/ShieldStr3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ����","Metadata/Items/Armours/Shields/ShieldStr4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ͭ������","Metadata/Items/Armours/Shields/ShieldStr5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ǿ������","Metadata/Items/Armours/Shields/ShieldStr6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ʻ�����","Metadata/Items/Armours/Shields/ShieldStr7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"¹Ƥ����","Metadata/Items/Armours/Shields/ShieldStr8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ����","Metadata/Items/Armours/Shields/ShieldStr9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ͭ����","Metadata/Items/Armours/Shields/ShieldStr10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ս����","Metadata/Items/Armours/Shields/ShieldStr11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ٹ�����","Metadata/Items/Armours/Shields/ShieldStr12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ָ�����","Metadata/Items/Armours/Shields/ShieldStr13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ����","Metadata/Items/Armours/Shields/ShieldStr14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����������","Metadata/Items/Armours/Shields/ShieldStr15","����","The Surrender","3",nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Shields/ShieldStr16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Shields/ShieldStr17","ʨ�۵���ҫ֮��","Lioneye's Remorse","3",nil)
-- SetJiaoYiGoods(nil,"��Ƥ���","Metadata/Items/Armours/Shields/ShieldDex1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ���","Metadata/Items/Armours/Shields/ShieldDex2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ʻ����","Metadata/Items/Armours/Shields/ShieldDex3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"í�����","Metadata/Items/Armours/Shields/ShieldDex4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ս�����","Metadata/Items/Armours/Shields/ShieldDex5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Armours/Shields/ShieldDex6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ���","Metadata/Items/Armours/Shields/ShieldDex7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Բ����","Metadata/Items/Armours/Shields/ShieldDex8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Armours/Shields/ShieldDex9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Armours/Shields/ShieldDex10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Armours/Shields/ShieldDex11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ���","Metadata/Items/Armours/Shields/ShieldDex12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/Shields/ShieldDex13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߶����","Metadata/Items/Armours/Shields/ShieldDex14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥս���","Metadata/Items/Armours/Shields/ShieldDex15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�۹����","Metadata/Items/Armours/Shields/ShieldDex16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��֦ħ��","Metadata/Items/Armours/Shields/ShieldInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Armours/Shields/ShieldInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Armours/Shields/ShieldInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Armours/Shields/ShieldInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Armours/Shields/ShieldInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ͭ��ħ��","Metadata/Items/Armours/Shields/ShieldInt6","ɽ�����Ļ�Ӧ","Sentari's Answer","3",nil)
-- SetJiaoYiGoods(nil,"��ľħ��","Metadata/Items/Armours/Shields/ShieldInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Armours/Shields/ShieldInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Զ��ħ��","Metadata/Items/Armours/Shields/ShieldInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Armours/Shields/ShieldInt10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Armours/Shields/ShieldInt11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Armours/Shields/ShieldInt12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʯ��ħ��","Metadata/Items/Armours/Shields/ShieldInt13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߶�ħ��","Metadata/Items/Armours/Shields/ShieldInt14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��гħ��","Metadata/Items/Armours/Shields/ShieldInt15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Armours/Shields/ShieldInt16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľԲ��","Metadata/Items/Armours/Shields/ShieldStrDex1","����֮��","Wheel of the Stormsail","3",nil)
-- SetJiaoYiGoods(nil,"ɼľԲ��","Metadata/Items/Armours/Shields/ShieldStrDex2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"í��Բ��","Metadata/Items/Armours/Shields/ShieldStrDex3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���Բ��","Metadata/Items/Armours/Shields/ShieldStrDex4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���Բ��","Metadata/Items/Armours/Shields/ShieldStrDex5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľԲ��","Metadata/Items/Armours/Shields/ShieldStrDex6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���Բ��","Metadata/Items/Armours/Shields/ShieldStrDex7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"糺�Բ��","Metadata/Items/Armours/Shields/ShieldStrDex8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ŵ�Բ��","Metadata/Items/Armours/Shields/ShieldStrDex9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľԲ��","Metadata/Items/Armours/Shields/ShieldStrDex10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����Բ��","Metadata/Items/Armours/Shields/ShieldStrDex11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����Բ��","Metadata/Items/Armours/Shields/ShieldStrDex12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Ȩ��Բ��","Metadata/Items/Armours/Shields/ShieldStrDex13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ��","Metadata/Items/Armours/Shields/ShieldStrInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ľ��","Metadata/Items/Armours/Shields/ShieldStrInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ǿ����","Metadata/Items/Armours/Shields/ShieldStrInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����","Metadata/Items/Armours/Shields/ShieldStrInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/Shields/ShieldStrInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/Shields/ShieldStrInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����","Metadata/Items/Armours/Shields/ShieldStrInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ϰ���","Metadata/Items/Armours/Shields/ShieldStrInt8","ά����µĹ���","Victario's Charity","3",nil)
-- SetJiaoYiGoods(nil,"��ʹ��","Metadata/Items/Armours/Shields/ShieldStrInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥ����","Metadata/Items/Armours/Shields/ShieldStrInt10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ʿ��","Metadata/Items/Armours/Shields/ShieldStrInt11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��װ��","Metadata/Items/Armours/Shields/ShieldStrInt12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/Shields/ShieldStrInt13","����֮־","The Unshattered Will","3",nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/Shields/ShieldStrInt13","��������","Unyielding Flame","3",nil)
-- SetJiaoYiGoods(nil,"��ľ�̶�","Metadata/Items/Armours/Shields/ShieldDexInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ�̶�","Metadata/Items/Armours/Shields/ShieldDexInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ͻ�̶�","Metadata/Items/Armours/Shields/ShieldDexInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��â�̶�","Metadata/Items/Armours/Shields/ShieldDexInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����̶�","Metadata/Items/Armours/Shields/ShieldDexInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ�̶�","Metadata/Items/Armours/Shields/ShieldDexInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ϴ̶�","Metadata/Items/Armours/Shields/ShieldDexInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Դ̶�","Metadata/Items/Armours/Shields/ShieldDexInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ȩ�̶�","Metadata/Items/Armours/Shields/ShieldDexInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ�̶�","Metadata/Items/Armours/Shields/ShieldDexInt10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������̶�","Metadata/Items/Armours/Shields/ShieldDexInt11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�־��̶�","Metadata/Items/Armours/Shields/ShieldDexInt12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ߴ̶�","Metadata/Items/Armours/Shields/ShieldDexInt13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ƽ�ʥ��","Metadata/Items/Armours/Shields/ShieldDemigods",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/Helmets/HelmetStr1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"׶����","Metadata/Items/Armours/Helmets/HelmetStr2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����","Metadata/Items/Armours/Helmets/HelmetStr3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����","Metadata/Items/Armours/Helmets/HelmetStr4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ƕ���֮��","Metadata/Items/Armours/Helmets/HelmetStr5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ӷ���֮��","Metadata/Items/Armours/Helmets/HelmetStr6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ƴ�֮��","Metadata/Items/Armours/Helmets/HelmetStr7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetStr8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Helmets/HelmetStr9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���Ҽ��","Metadata/Items/Armours/Helmets/HelmetStr10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/Helmets/HelmetStr11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Ƥñ","Metadata/Items/Armours/Helmets/HelmetDex1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ñ","Metadata/Items/Armours/Helmets/HelmetDex2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ﶵ","Metadata/Items/Armours/Helmets/HelmetDex3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����Ƥ��","Metadata/Items/Armours/Helmets/HelmetDex4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetDex5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������ñ","Metadata/Items/Armours/Helmets/HelmetDex6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����Ƥ��","Metadata/Items/Armours/Helmets/HelmetDex7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���֮��","Metadata/Items/Armours/Helmets/HelmetDex8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮ñ","Metadata/Items/Armours/Helmets/HelmetDex9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʨ��Ƥ��","Metadata/Items/Armours/Helmets/HelmetDex10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�̷�ͷ��","Metadata/Items/Armours/Helmets/HelmetInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���֮��","Metadata/Items/Armours/Helmets/HelmetInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ֮��","Metadata/Items/Armours/Helmets/HelmetInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���֮��","Metadata/Items/Armours/Helmets/HelmetInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������֮��","Metadata/Items/Armours/Helmets/HelmetInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ҫ֮��","Metadata/Items/Armours/Helmets/HelmetInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetInt10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetInt11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetStrDex1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Helmets/HelmetStrDex2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ӻ���","Metadata/Items/Armours/Helmets/HelmetStrDex3","����ĳ�˼","The Peregrine","3",nil)
-- SetJiaoYiGoods(nil,"���滤��","Metadata/Items/Armours/Helmets/HelmetStrDex4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetStrDex5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ʿ֮��","Metadata/Items/Armours/Helmets/HelmetStrDex6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���֮��","Metadata/Items/Armours/Helmets/HelmetStrDex7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ȫ��ս��","Metadata/Items/Armours/Helmets/HelmetStrDex8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ͷ��","Metadata/Items/Armours/Helmets/HelmetStrDex9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ս��","Metadata/Items/Armours/Helmets/HelmetStrDex10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Helmets/HelmetStrInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʿ��֮��","Metadata/Items/Armours/Helmets/HelmetStrInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�޿�","Metadata/Items/Armours/Helmets/HelmetStrInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥս֮��","Metadata/Items/Armours/Helmets/HelmetStrInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ս��֮��","Metadata/Items/Armours/Helmets/HelmetStrInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ս֮��","Metadata/Items/Armours/Helmets/HelmetStrInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ǿ���޿�","Metadata/Items/Armours/Helmets/HelmetStrInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������ս��","Metadata/Items/Armours/Helmets/HelmetStrInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ս��","Metadata/Items/Armours/Helmets/HelmetStrInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ս��","Metadata/Items/Armours/Helmets/HelmetStrInt10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ľ�֮��","Metadata/Items/Armours/Helmets/HelmetDexInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetDexInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetDexInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetDexInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ƽ�֮��","Metadata/Items/Armours/Helmets/HelmetDexInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ѻ֮��","Metadata/Items/Armours/Helmets/HelmetDexInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetDexInt7","�籩����","The Tempest's Binding","3",nil)
-- SetJiaoYiGoods(nil,"߱��֮��","Metadata/Items/Armours/Helmets/HelmetDexInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ӥ�֮��","Metadata/Items/Armours/Helmets/HelmetDexInt9","���֮��","Farrul's Bite","3",nil)
-- SetJiaoYiGoods(nil,"���ԑ��","Metadata/Items/Armours/Helmets/HelmetDexInt9","����֮��","Crown of the Inward Eye","3",nil)
-- SetJiaoYiGoods(nil,"�o��֮��","Metadata/Items/Armours/Helmets/HelmetDexInt9","а��","Eye of Malice","3",nil)
-- SetJiaoYiGoods(nil,"�߶�֮��","Metadata/Items/Armours/Helmets/HelmetDexInt10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"߱��֮��","Metadata/Items/Armours/Helmets/HelmetDexInt11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ƻ���","Metadata/Items/Armours/Helmets/HelmetWreath1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ɫ���","Metadata/Items/Armours/Helmets/HelmetDemigods1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ͷ��","Metadata/Items/Armours/Helmets/HelmetAtlas1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���Ʊ���","Metadata/Items/Armours/BodyArmours/BodyStr1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ؼ�","Metadata/Items/Armours/BodyArmours/BodyStr2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ͭ�Ͱ��","Metadata/Items/Armours/BodyArmours/BodyStr3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ս��֮��","Metadata/Items/Armours/BodyArmours/BodyStr4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStr5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/BodyArmours/BodyStr6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStr7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ͭ����","Metadata/Items/Armours/BodyArmours/BodyStr8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ս��","Metadata/Items/Armours/BodyArmours/BodyStr9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�չ�֮��","Metadata/Items/Armours/BodyArmours/BodyStr10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/BodyArmours/BodyStr11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ׯ��֮��","Metadata/Items/Armours/BodyArmours/BodyStr12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ҫ֮��","Metadata/Items/Armours/BodyArmours/BodyStr13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ս����","Metadata/Items/Armours/BodyArmours/BodyStr14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��âս��","Metadata/Items/Armours/BodyArmours/BodyStr15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ƕ�����","Metadata/Items/Armours/BodyArmours/BodyStr16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ҫս��","Metadata/Items/Armours/BodyArmours/BodyStr17",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ķ������","Metadata/Items/Armours/BodyArmours/BodyStrTemp","��ķ��׳־","Kaom's Heart","3",nil)
-- SetJiaoYiGoods(nil,"�ƾ�����","Metadata/Items/Armours/BodyArmours/BodyDex1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ۻ�Ƥ��","Metadata/Items/Armours/BodyArmours/BodyDex2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"¹Ƥ����","Metadata/Items/Armours/BodyArmours/BodyDex3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ұ����Ƥ��","Metadata/Items/Armours/BodyArmours/BodyDex4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����Ƥ��","Metadata/Items/Armours/BodyArmours/BodyDex5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�չ�Ƥ��","Metadata/Items/Armours/BodyArmours/BodyDex6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮װ","Metadata/Items/Armours/BodyArmours/BodyDex7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ƥ֮��","Metadata/Items/Armours/BodyArmours/BodyDex8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����Ƥ��","Metadata/Items/Armours/BodyArmours/BodyDex9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ҫƤ��","Metadata/Items/Armours/BodyArmours/BodyDex10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ҫƤ��","Metadata/Items/Armours/BodyArmours/BodyDex11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮װ","Metadata/Items/Armours/BodyArmours/BodyDex12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ƥ֮��","Metadata/Items/Armours/BodyArmours/BodyDex13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����Ƥ��","Metadata/Items/Armours/BodyArmours/BodyDex14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����Ƥ��","Metadata/Items/Armours/BodyArmours/BodyDex15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ǳ�Ƥ��","Metadata/Items/Armours/BodyArmours/BodyDex16","�����ս��","Hyrri's Ire","3",nil)
-- SetJiaoYiGoods(nil,"��Ӱ֮װ","Metadata/Items/Armours/BodyArmours/BodyDex17",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/BodyArmours/BodyInt1","�޾�֮��","Tabula Rasa","3",nil)
-- SetJiaoYiGoods(nil,"��б���","Metadata/Items/Armours/BodyArmours/BodyInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ѧ��֮��","Metadata/Items/Armours/BodyArmours/BodyInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˿��֮��","Metadata/Items/Armours/BodyArmours/BodyInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ѧ����","Metadata/Items/Armours/BodyArmours/BodyInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˿��֮��","Metadata/Items/Armours/BodyArmours/BodyInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/BodyArmours/BodyInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˿�ޱ���","Metadata/Items/Armours/BodyArmours/BodyInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���߳���","Metadata/Items/Armours/BodyArmours/BodyInt10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��˿֮��","Metadata/Items/Armours/BodyArmours/BodyInt11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyInt12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/BodyArmours/BodyInt13","�޳�����","Garb of the Ephemeral","3",nil)
-- SetJiaoYiGoods(nil,"�����߱���","Metadata/Items/Armours/BodyArmours/BodyInt14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyInt15","Ѧ�ʵĻ�����","Shavronne's Wrappings","3",nil)
-- SetJiaoYiGoods(nil,"����˿֮��","Metadata/Items/Armours/BodyArmours/BodyInt16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߶�����","Metadata/Items/Armours/BodyArmours/BodyInt17",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ϸ�۱���","Metadata/Items/Armours/BodyArmours/BodyStrDex1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/BodyArmours/BodyStrDex2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ۼ�","Metadata/Items/Armours/BodyArmours/BodyStrDex3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStrDex4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ۼ�","Metadata/Items/Armours/BodyArmours/BodyStrDex5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"սʿ����","Metadata/Items/Armours/BodyArmours/BodyStrDex6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Ұս����","Metadata/Items/Armours/BodyArmours/BodyStrDex7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ս��","Metadata/Items/Armours/BodyArmours/BodyStrDex8","��թ���","Gruthkul's Pelt","3",nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStrDex9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������ս��","Metadata/Items/Armours/BodyArmours/BodyStrDex10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ָ��������","Metadata/Items/Armours/BodyArmours/BodyStrDex11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ս�ۼ�","Metadata/Items/Armours/BodyArmours/BodyStrDex12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ۻ���","Metadata/Items/Armours/BodyArmours/BodyStrDex13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ұ����","Metadata/Items/Armours/BodyArmours/BodyStrDex14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����������","Metadata/Items/Armours/BodyArmours/BodyStrDex15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStrDex16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʤ������","Metadata/Items/Armours/BodyArmours/BodyStrDex17","���֮��","Farrul's Fur","3",nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStrInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStrInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStrInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStrInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/BodyArmours/BodyStrInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStrInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥ������","Metadata/Items/Armours/BodyArmours/BodyStrInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ƻ���","Metadata/Items/Armours/BodyArmours/BodyStrInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥս����","Metadata/Items/Armours/BodyArmours/BodyStrInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStrInt10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ӳ���","Metadata/Items/Armours/BodyArmours/BodyStrInt11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/BodyArmours/BodyStrInt12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���廷��","Metadata/Items/Armours/BodyArmours/BodyStrInt13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ս����","Metadata/Items/Armours/BodyArmours/BodyStrInt14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Ȩ�󻷼�","Metadata/Items/Armours/BodyArmours/BodyStrInt15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥ������","Metadata/Items/Armours/BodyArmours/BodyStrInt16","��������","Sporeguard","3",nil)
-- SetJiaoYiGoods(nil,"ʥ������","Metadata/Items/Armours/BodyArmours/BodyStrInt17",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/BodyArmours/BodyDexInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ˮ����","Metadata/Items/Armours/BodyArmours/BodyDexInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ް�","Metadata/Items/Armours/BodyArmours/BodyDexInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ˮ����","Metadata/Items/Armours/BodyArmours/BodyDexInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���֮��","Metadata/Items/Armours/BodyArmours/BodyDexInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyDexInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ս��","Metadata/Items/Armours/BodyArmours/BodyDexInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyDexInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyDexInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"糺�֮��","Metadata/Items/Armours/BodyArmours/BodyDexInt10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Armours/BodyArmours/BodyDexInt11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ѩս��","Metadata/Items/Armours/BodyArmours/BodyDexInt12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ڱ�֮��","Metadata/Items/Armours/BodyArmours/BodyDexInt13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ӳ������","Metadata/Items/Armours/BodyArmours/BodyDexInt14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Ѫɫ֮��","Metadata/Items/Armours/BodyArmours/BodyDexInt15","������Ӱ","The Eternity Shroud","3",nil)
-- SetJiaoYiGoods(nil,"��Ű������","Metadata/Items/Armours/BodyArmours/BodyDexInt16","�ٶ�֮��","Inpulsa's Broken Heart","3",nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/BodyArmours/BodyDexInt17","��������","Shroud of the Lightless","3",nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStrDexInt1","��Ӱ���","Shadowstitch","3",nil)
-- SetJiaoYiGoods(nil,"�ƽ�ս��","Metadata/Items/Armours/BodyArmours/BodyDemigods1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ּ�","Metadata/Items/Armours/Boots/BootsStr1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ּ�","Metadata/Items/Armours/Boots/BootsStr2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ּ�","Metadata/Items/Armours/Boots/BootsStr3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ǿ���ּ�","Metadata/Items/Armours/Boots/BootsStr4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ÿ��ּ�","Metadata/Items/Armours/Boots/BootsStr5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Զ���ּ�","Metadata/Items/Armours/Boots/BootsStr6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ּ�","Metadata/Items/Armours/Boots/BootsStr7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߶��ּ�","Metadata/Items/Armours/Boots/BootsStr8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ּ�","Metadata/Items/Armours/Boots/BootsStr9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ķ�ּ�","Metadata/Items/Armours/Boots/BootsStrTemp",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ƥ��ѥ","Metadata/Items/Armours/Boots/BootsDex1","����֮��","Seven-League Step","3",nil)
-- SetJiaoYiGoods(nil,"��Ƥ��ѥ","Metadata/Items/Armours/Boots/BootsDex2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"¹Ƥ��ѥ","Metadata/Items/Armours/Boots/BootsDex3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ɰӰ��ѥ","Metadata/Items/Armours/Boots/BootsDex4","�����㼣","Goldwyrm","3",nil)
-- SetJiaoYiGoods(nil,"��Ƥ��ѥ","Metadata/Items/Armours/Boots/BootsDex5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ƥ��ѥ","Metadata/Items/Armours/Boots/BootsDex6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ָ��ѥ","Metadata/Items/Armours/Boots/BootsDex7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ٶ�ѥ","Metadata/Items/Armours/Boots/BootsDex8","��¬���ķ���","Garukhan's Flight","3",nil)
-- SetJiaoYiGoods(nil,"���ٶ�ѥ","Metadata/Items/Armours/Boots/BootsDex9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ë֮Ь","Metadata/Items/Armours/Boots/BootsInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˿�ޱ�Ь","Metadata/Items/Armours/Boots/BootsInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˿���Ь","Metadata/Items/Armours/Boots/BootsInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ѧ�߳�ѥ","Metadata/Items/Armours/Boots/BootsInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�в���Ь","Metadata/Items/Armours/Boots/BootsInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�岼��Ь","Metadata/Items/Armours/Boots/BootsInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���߳�ѥ","Metadata/Items/Armours/Boots/BootsInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������Ь","Metadata/Items/Armours/Boots/BootsInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ʿ��ѥ","Metadata/Items/Armours/Boots/BootsInt9","����","Skyforth","3",nil)
-- SetJiaoYiGoods(nil,"����Ƥѥ","Metadata/Items/Armours/Boots/BootsStrDex1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ��ѥ","Metadata/Items/Armours/Boots/BootsStrDex2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ͭӰ��ѥ","Metadata/Items/Armours/Boots/BootsStrDex3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ��ѥ","Metadata/Items/Armours/Boots/BootsStrDex4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���۳�ѥ","Metadata/Items/Armours/Boots/BootsStrDex5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����۳�ѥ","Metadata/Items/Armours/Boots/BootsStrDex6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����۳�ѥ","Metadata/Items/Armours/Boots/BootsStrDex7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���۳�ѥ","Metadata/Items/Armours/Boots/BootsStrDex8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���׳�ѥ","Metadata/Items/Armours/Boots/BootsStrInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����Ͳѥ","Metadata/Items/Armours/Boots/BootsStrInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���۳�ѥ","Metadata/Items/Armours/Boots/BootsStrInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ʽ��ѥ","Metadata/Items/Armours/Boots/BootsStrInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����߳�ѥ","Metadata/Items/Armours/Boots/BootsStrInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"սʿ֮ѥ","Metadata/Items/Armours/Boots/BootsStrInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ų�ѥ","Metadata/Items/Armours/Boots/BootsStrInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥս��ѥ","Metadata/Items/Armours/Boots/BootsStrInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ֺ��Ь","Metadata/Items/Armours/Boots/BootsDexInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ۻ���ѥ","Metadata/Items/Armours/Boots/BootsDexInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������ѥ","Metadata/Items/Armours/Boots/BootsDexInt3","��ҫ","Sundance","3",nil)
-- SetJiaoYiGoods(nil,"���㳤ѥ","Metadata/Items/Armours/Boots/BootsDexInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮ѥ","Metadata/Items/Armours/Boots/BootsDexInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮ѥ","Metadata/Items/Armours/Boots/BootsDexInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮ѥ","Metadata/Items/Armours/Boots/BootsDexInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ֮ѥ","Metadata/Items/Armours/Boots/BootsDexInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ�߳�ѥ","Metadata/Items/Armours/Boots/BootsDexInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ƽ��Ь","Metadata/Items/Armours/Boots/BootsDemigods1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����Ь","Metadata/Items/Armours/Boots/BootsDescent1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ɫЬ(����)","Metadata/Items/Armours/Boots/BootsAtlas1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ɫЬ (���)","Metadata/Items/Armours/Boots/BootsAtlas2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ɫЬ (����)","Metadata/Items/Armours/Boots/BootsAtlas3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ͻ���","Metadata/Items/Armours/Gloves/GlovesStr1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesStr2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ͭ����","Metadata/Items/Armours/Gloves/GlovesStr3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ֻ���","Metadata/Items/Armours/Gloves/GlovesStr4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ÿֻ���","Metadata/Items/Armours/Gloves/GlovesStr5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Զ�Ż���","Metadata/Items/Armours/Gloves/GlovesStr6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���黤��","Metadata/Items/Armours/Gloves/GlovesStr7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߶�����","Metadata/Items/Armours/Gloves/GlovesStr8","������Ľ�˼","Atziri's Acuity","3",nil)
-- SetJiaoYiGoods(nil,"���˻���","Metadata/Items/Armours/Gloves/GlovesStr9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ƥ����","Metadata/Items/Armours/Gloves/GlovesDex1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ƥ����","Metadata/Items/Armours/Gloves/GlovesDex2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"¹Ƥ����","Metadata/Items/Armours/Gloves/GlovesDex3","���׸��޵�õ������","Maligaro's Virtuosity","3",nil)
-- SetJiaoYiGoods(nil,"ɰӰ����","Metadata/Items/Armours/Gloves/GlovesDex4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ƥ����","Metadata/Items/Armours/Gloves/GlovesDex5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ƥ����","Metadata/Items/Armours/Gloves/GlovesDex6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ָ�����","Metadata/Items/Armours/Gloves/GlovesDex7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesDex8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesDex9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ë����","Metadata/Items/Armours/Gloves/GlovesInt1","�Ա��ߵĻ���","Sadima's Touch","3",nil)
-- SetJiaoYiGoods(nil,"˿������","Metadata/Items/Armours/Gloves/GlovesInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˿������","Metadata/Items/Armours/Gloves/GlovesInt3","������˿�İ���֮��","Asenath's Gentle Touch","3",nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�в�����","Metadata/Items/Armours/Gloves/GlovesInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�岼����","Metadata/Items/Armours/Gloves/GlovesInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ʿ����","Metadata/Items/Armours/Gloves/GlovesInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesStrDex1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ����","Metadata/Items/Armours/Gloves/GlovesStrDex2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ͭӰ����","Metadata/Items/Armours/Gloves/GlovesStrDex3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ����","Metadata/Items/Armours/Gloves/GlovesStrDex4","����֮��","Aurseize","3",nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesStrDex5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesStrDex6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����������","Metadata/Items/Armours/Gloves/GlovesStrDex7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesStrDex8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesStrInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesStrInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesStrInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ʽ����","Metadata/Items/Armours/Gloves/GlovesStrInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����������","Metadata/Items/Armours/Gloves/GlovesStrInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"սʿ����","Metadata/Items/Armours/Gloves/GlovesStrInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesStrInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥս����","Metadata/Items/Armours/Gloves/GlovesStrInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ֺ����","Metadata/Items/Armours/Gloves/GlovesDexInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ۻ�����","Metadata/Items/Armours/Gloves/GlovesDexInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesDexInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���˻���","Metadata/Items/Armours/Gloves/GlovesDexInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesDexInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/Gloves/GlovesDexInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ����","Metadata/Items/Armours/Gloves/GlovesDexInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ�߻���","Metadata/Items/Armours/Gloves/GlovesDexInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ƽ�ۼ�","Metadata/Items/Armours/Gloves/GlovesDemigods1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�۶�����","Metadata/Items/Armours/Gloves/GlovesAtlasStr",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesAtlasDex",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"С������ҩ��","Metadata/Items/Flasks/FlaskLife1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������ҩ��","Metadata/Items/Flasks/FlaskLife2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������ҩ��","Metadata/Items/Flasks/FlaskLife3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������ҩ��","Metadata/Items/Flasks/FlaskLife4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������ҩ��","Metadata/Items/Flasks/FlaskLife5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������ҩ��","Metadata/Items/Flasks/FlaskLife6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߽�����ҩ��","Metadata/Items/Flasks/FlaskLife7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥ������ҩ��","Metadata/Items/Flasks/FlaskLife8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ף������ҩ��","Metadata/Items/Flasks/FlaskLife9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥ������ҩ��","Metadata/Items/Flasks/FlaskLife10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������ҩ��","Metadata/Items/Flasks/FlaskLife11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������ҩ��","Metadata/Items/Flasks/FlaskLife12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"С��ħ��ҩ��","Metadata/Items/Flasks/FlaskMana1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��ҩ��","Metadata/Items/Flasks/FlaskMana2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��ҩ��","Metadata/Items/Flasks/FlaskMana3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��ҩ��","Metadata/Items/Flasks/FlaskMana4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��ҩ��","Metadata/Items/Flasks/FlaskMana5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��ҩ��","Metadata/Items/Flasks/FlaskMana6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߽�ħ��ҩ��","Metadata/Items/Flasks/FlaskMana7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥ��ħ��ҩ��","Metadata/Items/Flasks/FlaskMana8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ף��ħ��ҩ��","Metadata/Items/Flasks/FlaskMana9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥ��ħ��ҩ��","Metadata/Items/Flasks/FlaskMana10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��ҩ��","Metadata/Items/Flasks/FlaskMana11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��ҩ��","Metadata/Items/Flasks/FlaskMana12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"С�͸���ҩ��","Metadata/Items/Flasks/FlaskHybrid1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���͸���ҩ��","Metadata/Items/Flasks/FlaskHybrid2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���͸���ҩ��","Metadata/Items/Flasks/FlaskHybrid3","���Ӿ���","Divination Distillate","3",nil)
-- SetJiaoYiGoods(nil,"�߽׸���ҩ��","Metadata/Items/Flasks/FlaskHybrid4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥ�︴��ҩ��","Metadata/Items/Flasks/FlaskHybrid5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ף������ҩ��","Metadata/Items/Flasks/FlaskHybrid6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ҩ��","Metadata/Items/Flasks/FlaskUtility1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ҩ��","Metadata/Items/Flasks/FlaskUtility2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ҩ��","Metadata/Items/Flasks/FlaskUtility3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ҩ��","Metadata/Items/Flasks/FlaskUtility4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ҩ��","Metadata/Items/Flasks/FlaskUtility5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ˮ��ҩ��","Metadata/Items/Flasks/FlaskUtility6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ͼ�ҩ��","Metadata/Items/Flasks/FlaskUtility7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʯӢҩ��","Metadata/Items/Flasks/FlaskUtility8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ҩ��","Metadata/Items/Flasks/FlaskUtility9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʯ��ҩ��","Metadata/Items/Flasks/FlaskUtility10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ҩ��","Metadata/Items/Flasks/FlaskUtility11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ҩ��","Metadata/Items/Flasks/FlaskUtility12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ҩ��","Metadata/Items/Flasks/FlaskUtility13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ҩ��","Metadata/Items/Flasks/FlaskUtility14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ҩ��","Metadata/Items/Flasks/FlaskUtility15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Quivers/Quiver1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Quivers/Quiver2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Quivers/Quiver3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ʸ����","Metadata/Items/Quivers/Quiver4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ɼ���","Metadata/Items/Quivers/Quiver5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ݼ���","Metadata/Items/Quivers/Quiver6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫�����","Metadata/Items/Quivers/Quiver7","���֮��","Rigwald's Quills","3",nil)
-- SetJiaoYiGoods(nil,"��ݼ���","Metadata/Items/Quivers/Quiver8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ʸ����","Metadata/Items/Quivers/Quiver9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Quivers/Quiver10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ʸ����","Metadata/Items/Quivers/Quiver11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Quivers/Quiver12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�̷����","Metadata/Items/Quivers/Quiver13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Quivers/Quiver14","������ļ���","Maloney's Mechanism","3",nil)
-- SetJiaoYiGoods(nil,"��ݼ���","Metadata/Items/Quivers/QuiverDescent",nil,nil,nil,nil)

-- SetJiaoYiGoods("HeistBlueprint",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.useLv>=68 end)--����ʹ�õȼ����ڵ���68���{�D����
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintControlBlocks",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=70 end)--�{�D���ﱤ enName:
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintMines",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=70 end)--�{�D����˽���ϳ� enName:
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintSewers",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=70 end)--�{�D�����µ� enName:
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintCourts",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=70 end)--�{�D���o��� enName:
SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintDungeon",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=70 end)--�{�D������� enName:
SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintReliquary",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=68 end)--�{�D��չ�[�� enName:
SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintLibrary",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=70 end)--�{�D�������^�� enName:
SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintRobotTunnels",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=68 end)--�{�D���ص� enName:
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintMansion",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=70 end)--�{�D����ۡ enName:
SetJiaoYiGoods(nil,nil,"Metadata/Items/Expedition/ExpeditionLogbook",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=68 end)--̽�U���I

SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyJewelleryQualityElemental")--�����Ĵ߻���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyJewelleryQualityCaster")--���ܵĴ߻���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyJewelleryQualityAttack")--��ĥ�Ĵ߻���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyJewelleryQualityDefense")--ұ倵Ĵ߻���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyJewelleryQualityResource")--�����Ĵ߻���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyJewelleryQualityResistance")--�ච�Ĵ߻���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyJewelleryQualityAttribute")--���|�Ĵ߻���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyJewelleryQualityPhysicalChaos")--���Դ߻���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyJewelleryQualitySpeed")--���ٴ߻���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyJewelleryQualityCritical")--��׃�߻���

SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabLegion1")--�}���x���n�g���y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabLegion2")--�}���x���A�����y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabLegion3")--�}���x��僽���y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabLegion4")--�}���x��չ����y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabHarbinger1")--�}���x���n�g���I
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabHarbinger2")--�}���x���A�����I
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabHarbinger3")--�}���x��僽����I
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabHarbinger4")--�}���x��չ�����I
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBlight1")--�}���x���n�g����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBlight2")--�}���x���A������
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBlight3")--�}���x��僽����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBlight4")--�}���x��չ�����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabSulphite1")--�}���x���n�g����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabSulphite2")--�}���x���A������
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabSulphite3")--�}���x��僽�����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabSulphite4")--�}���x��չ������
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBreach1")--�}���x���n�g�Ѻ�
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBreach2")--�}���x���A���Ѻ�
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBreach3")--�}���x��僽��Ѻ�
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBreach4")--�}���x��չ���Ѻ�
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMaps1")--�}���x���n�g�u�D
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMaps2")--�}���x���A���u�D
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMaps3")--�}���x��僽��u�D
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMaps4")--�}���x��չ���u�D
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabUniques1")--�}���x���n�g�}��
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabUniques2")--�}���x���A���}��
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabUniques3")--�}���x��僽��}��
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabUniques4")--�}���x��չ���}��
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBeasts1")--�}���x���n�g�F�C
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBeasts2")--�}���x���A���F�C
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBeasts3")--�}���x��僽�F�C
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBeasts4")--�}���x��չ��F�C
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabShaperRares1")--�}���x���n�g����
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabShaperRares2")--�}���x���A������
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabShaperRares3")--�}���x��僽�����
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabShaperRares4")--�}���x��չ������
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabElderRares1")--�}���x���n�g����
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabElderRares2")--�}���x���A������
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabElderRares3")--�}���x��僽�����
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabElderRares4")--�}���x��չ������
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabDivinationCards1")--�}���x���n�g���\
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabDivinationCards2")--�}���x���A�����\
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabDivinationCards3")--�}���x��僽����\
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabDivinationCards4")--�}���x��չ�����\
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabTorment1")--�}���x���n�g��ʹ
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabTorment2")--�}���x���A����ʹ
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabTorment3")--�}���x��僽��ʹ
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabTorment4")--�}���x��չ���ʹ
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabStrongbox1")--�}���x���n�g����
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabStrongbox2")--�}���x���A������
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabStrongbox3")--�}���x��僽����
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabStrongbox4")--�}���x��չ�����
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus1")--�}���x���n�g���m��˹
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus2")--�}���x���A�����m��˹
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus3")--�}���x��僽����m��˹
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus4")--�}���x��չ�����m��˹
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMetamorph1")--�}���x���n�g�ħ
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMetamorph2")--�}���x���A���ħ
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMetamorph3")--�}���x��僽��ħ
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMetamorph4")--�}���x��չ���ħ
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabAbyss1")--�}���x���n�g��Y
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabAbyss2")--�}���x���A����Y
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabAbyss3")--�}���x��僽���Y
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabAbyss4")--�}���x��չ����Y

-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBeasts4a")--�M���_�T�D
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBeasts4b")--˹�����T�D
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBeasts4c")--�ƶ��z�T�D
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBeasts4d")--����ɺ�T�D

SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbCurrency")--����֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbUniques")--׿Խ֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbGems")--���g֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbWeapons")--�F��֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbArmour")--�o��֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbMaps")--�u�D֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbTrinkets")--�Ʒ֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbAbyss")--��Y֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbPerandus")--����֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbHarbinger")--�A��֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbBreach")--�ޝ�֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbEssences")--���Z֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbFragments")--��Ƭ֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbScarabs")--�w��֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbFossils")--ʯ��֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbProphecies")--�A��֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbDivinationCards")--�}��֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbGeneric")--�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbTalismans")--��ʼ֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbLabyrinth")--����֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbIncubators")--���a֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbBlight")--����֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbMetamorphosis")--׃�B֮�d����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbPerandus")--������֮�d����

--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingDefences")--���ܻ�ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingBleedPoison")--���g��ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingElemental")--���໯ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingCasterMods")--��û�ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingAttackMods")--���X��ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingMana")--��͸��ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingSpeed")--���ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingMinionsAuras")--���ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingQuality")--�o覻�ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingEnchant")--��ħ��ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingSockets")--��ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingLuckyModRolls")--���}��ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingSellPrice")--肽�ʯ
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingEnchant")--��ħ��ʯ
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingSockets")--��ʯ

SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/MushruneCorrupt")--�@Ⱦ��ƿ
-- SetJiaoYiGoods(nil,"�峺ʥ��","Metadata/Items/Currency/Mushrune1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"īɫʥ��","Metadata/Items/Currency/Mushrune2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ʥ��","Metadata/Items/Currency/Mushrune3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ʥ��","Metadata/Items/Currency/Mushrune4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ˮ��ʥ��","Metadata/Items/Currency/Mushrune5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ʥ��","Metadata/Items/Currency/Mushrune6",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��ɫʥ��","Metadata/Items/Currency/Mushrune7",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"糺�ʥ��","Metadata/Items/Currency/Mushrune8",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ʥ��","Metadata/Items/Currency/Mushrune9",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ʥ��","Metadata/Items/Currency/Mushrune10",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����ʥ��","Metadata/Items/Currency/Mushrune11",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��ɫʥ��","Metadata/Items/Currency/Mushrune12",nil,nil,nil,nil)
							
--6��װ��				
--6L����				
SetJiaoYiGoods(nil,nil,nil,"Starforge","Starforge",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Agnerod South","Agnerod South",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Atziri's Disfavour","Atziri's Disfavour",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Cane of Unravelling","Cane of Unravelling",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Hegemony's Era","Hegemony's Era",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Kitava's Feast","Kitava's Feast",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Martyr of Innocence","Martyr of Innocence",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Oni-Goroshi","Oni-Goroshi",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Pledge of Hands","Pledge of Hands",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Quill Rain","Quill Rain",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Replica Iron Commander","Replica Iron Commander",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"The Searing Touch","The Searing Touch",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Tremor Rod","Tremor Rod",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Voidforge","Voidforge",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Voltaxic Rift","Voltaxic Rift",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Windripper","Windripper",nil,1,nil,nil,nil,6)
							
--6L����				
SetJiaoYiGoods(nil,nil,nil,"Replica Farrul's Fur","Replica Farrul's Fur",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Belly of the Beast","Belly of the Beast",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Blunderbore","Blunderbore",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Carcass Jack","Carcass Jack",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Cherrubim's Maleficence","Cherrubim's Maleficence",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Cloak of Defiance","Cloak of Defiance",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Cospri's Will","Cospri's Will",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Craiceann's Carapace","Craiceann's Carapace",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Daresso's Defiance","Daresso's Defiance",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Dendrobate","Dendrobate",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Doryani's Prototype","Doryani's Prototype",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Farrul's Fur","Farrul's Fur",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Geofri's Sanctuary","Geofri's Sanctuary",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Gruthkul's Pelt","Gruthkul's Pelt",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Hyrri's Ire","Hyrri's Ire",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Incandescent Heart","Incandescent Heart",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Inpulsa's Broken Heart","Inpulsa's Broken Heart",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Kintsugi","Kintsugi",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Lioneye's Vision","Lioneye's Vision",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Loreweave","Loreweave",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Queen of the Forest","Queen of the Forest",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Replica Loreweave","Replica Loreweave",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Replica Perfect Form","Replica Perfect Form",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Saqawal's Nest","Saqawal's Nest",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Shavronne's Wrappings","Shavronne's Wrappings",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Soul Mantle","Soul Mantle",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"The Brass Dome","The Brass Dome",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"The Queen's Hunger","The Queen's Hunger",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Victario's Influence","Victario's Influence",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Voll's Protector","Voll's Protector",nil,1,nil,nil,nil,6)
SetJiaoYiGoods(nil,nil,nil,"Yriel's Fostering","Yriel's Fostering",nil,1,nil,nil,nil,6)

-- SetJiaoYiGoods(nil,"�ڰ�����","Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���t","Metadata/Items/DivinationCards/DivinationCardTheDoctor",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�[ʿ","Metadata/Items/DivinationCards/DivinationCardTheHermit",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�m�������֮��","Metadata/Items/DivinationCards/DivinationCardLantadorsLostLove",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�F����ٛ�Y","Metadata/Items/DivinationCards/DivinationCardTheMetalsmithsGift",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardTheBattleBorn",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�Yʿ","Metadata/Items/DivinationCards/DivinationCardTheGladiator",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�W��","Metadata/Items/DivinationCards/DivinationCardTheScholar",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���Ѵ��","Metadata/Items/DivinationCards/DivinationCardTheBrittleEmperor",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"Ԋ��","Metadata/Items/DivinationCards/DivinationCardThePoet",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ʳ����ѻ","Metadata/Items/DivinationCards/DivinationCardTheCarrionCrow",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ϣ��","Metadata/Items/DivinationCards/DivinationCardHope",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ħ��","Metadata/Items/DivinationCards/DivinationCardTheFiend",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardBirthOfTheThree",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ޱ���ŵ�����","Metadata/Items/DivinationCards/DivinationCardViniasToken",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ٻ�ʦ","Metadata/Items/DivinationCards/DivinationCardTheSummoner",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ޱ�","Metadata/Items/DivinationCards/DivinationCardTheCataclysm",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheHunger",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheHoarder",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�������","Metadata/Items/DivinationCards/DivinationCardTheDrunkenAristocrat",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheSun",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardTheWarden",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮ԭ","Metadata/Items/DivinationCards/DivinationCardTheScarredMeadow",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ڰ�����","Metadata/Items/DivinationCards/DivinationCardTheDarkMage",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�鱦��","Metadata/Items/DivinationCards/DivinationCardTheGemcutter",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ͽ","Metadata/Items/DivinationCards/DivinationCardTheGambler",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheLover",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardChaoticDisposition",nil,nil,nil,nil)--��������
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheRoadToPower",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardTheAvenger",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardEmperorsLuck",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ʧ���Ź�","Metadata/Items/DivinationCards/DivinationCardTimeLostRelic",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardLuckyConnections",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ʢ��","Metadata/Items/DivinationCards/DivinationCardTheFeast",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardRainOfChaos",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardTheWatcher",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheIncantation",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮ռ","Metadata/Items/DivinationCards/DivinationCardCovetedPossession",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheKingsHeart",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��","Metadata/Items/DivinationCards/DivinationCardTheWind",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ЭԼ","Metadata/Items/DivinationCards/DivinationCardThePact",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ʯ������ŵ","Metadata/Items/DivinationCards/DivinationCardGemcuttersPromise",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����ִ����","Metadata/Items/DivinationCards/DivinationCardTheCelestialJusticar",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheChainsThatBind",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheArtist",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardTheInventor",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"Ⱥ��֮��","Metadata/Items/DivinationCards/DivinationCardThePackLeader",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ϲ��","Metadata/Items/DivinationCards/DivinationCardJackInTheBox",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheUnion",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Ů��","Metadata/Items/DivinationCards/DivinationCardTheQueen",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ǫѷ","Metadata/Items/DivinationCards/DivinationCardHumility",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"̽�ռ�","Metadata/Items/DivinationCards/DivinationCardTheExplorer",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"���ݻ���","Metadata/Items/DivinationCards/DivinationCardTheSpoiledPrince",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheBetrayal",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ܽ����������","Metadata/Items/DivinationCards/DivinationCardTheFlorasGift",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheSiren",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheOneWithAll",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������֮��","Metadata/Items/DivinationCards/DivinationCardTheLastOneStanding",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardDoedresMadness",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ڰ�����","Metadata/Items/DivinationCards/DivinationCardTheEncroachingDarkness",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"Թ��","Metadata/Items/DivinationCards/DivinationCardTheWrath",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheKingsBlade",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"Զ��","Metadata/Items/DivinationCards/DivinationCardTheTrial",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ʿ֮��","Metadata/Items/DivinationCards/DivinationCardTheGentleman",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardHouseOfMirrors",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Ǯ��Ȩ","Metadata/Items/DivinationCards/DivinationCardWealthAndPower",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ֱ�","Metadata/Items/DivinationCards/DivinationCardTheCatalyst",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ƽ��","Metadata/Items/DivinationCards/DivinationCardTheVast",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ʯ�ʺ������","Metadata/Items/DivinationCards/DivinationCardGiftOfTheGemlingQueen",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��֮��","Metadata/Items/DivinationCards/DivinationCardTheDragonsHeart",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ƺ�","Metadata/Items/DivinationCards/DivinationCardTheFox",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheDoppelganger",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����ר��","Metadata/Items/DivinationCards/DivinationCardTheSurvivalist",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardDeath",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�����ǻ�","Metadata/Items/DivinationCards/DivinationCardGraveKnowledge",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"С��","Metadata/Items/DivinationCards/DivinationCardTheJester",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"Ӷ��","Metadata/Items/DivinationCards/DivinationCardTheMercenary",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ƻ���ľ","Metadata/Items/DivinationCards/DivinationCardTheInoculated",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ҳ�","Metadata/Items/DivinationCards/DivinationCardLoyalty",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���߱ذ�","Metadata/Items/DivinationCards/DivinationCardPrideBeforeTheFall",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ʶ","Metadata/Items/DivinationCards/DivinationCardAudacity",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��Ӱ����","Metadata/Items/DivinationCards/DivinationCardAssassinsFavour",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮Ը","Metadata/Items/DivinationCards/DivinationCardHuntersResolve",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����ѧ��","Metadata/Items/DivinationCards/DivinationCardScholarOfTheSeas",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheConduit",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheTower",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheTwins",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"���Ҵ���","Metadata/Items/DivinationCards/DivinationCardAnarchysPrice",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheLich",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"������ʦ","Metadata/Items/DivinationCards/DivinationCardTheThaumaturgist",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardTheAesthete",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ǻ�����","Metadata/Items/DivinationCards/DivinationCardTheEnlightened",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���˵Ľ���","Metadata/Items/DivinationCards/DivinationCardHuntersReward",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�Ƽ���","Metadata/Items/DivinationCards/DivinationCardTheFletcher",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����Ա","Metadata/Items/DivinationCards/DivinationCardTheSurveyor",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����������","Metadata/Items/DivinationCards/DivinationCardBowyersDream",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"���ҽʦ","Metadata/Items/DivinationCards/DivinationCardTheSurgeon",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"���ȶ�������","Metadata/Items/DivinationCards/DivinationCardVolatilePower",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"���ϣ��","Metadata/Items/DivinationCards/DivinationCardLastHope",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardHubris",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ä;","Metadata/Items/DivinationCards/DivinationCardBlindVenture",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�����е","Metadata/Items/DivinationCards/DivinationCardMercilessArmament",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ͼʦ","Metadata/Items/DivinationCards/DivinationCardTheCartographer",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�����","Metadata/Items/DivinationCards/DivinationCardTheWarlord",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ħ","Metadata/Items/DivinationCards/DivinationCardTheDemoness",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardTheTraitor",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheOffering",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ʧ��۹�","Metadata/Items/DivinationCards/DivinationCardLostWorlds",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheLordInBlack",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ĸ�׵�����","Metadata/Items/DivinationCards/DivinationCardAMothersPartingGift",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"Ѫ��֮��","Metadata/Items/DivinationCards/DivinationCardTheBody",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTurnTheOtherCheek",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ϣ��΢��","Metadata/Items/DivinationCards/DivinationCardGlimmerOfHope",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheEthereal",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ʢ","Metadata/Items/DivinationCards/DivinationCardProsperity",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ħ��","Metadata/Items/DivinationCards/DivinationCardTheSigil",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���²���","Metadata/Items/DivinationCards/DivinationCardTheDapperProdigy",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/DivinationCards/DivinationCardTheRabidRhoa",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���","Metadata/Items/DivinationCards/DivinationCardTheSoul",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ʨ","Metadata/Items/DivinationCards/DivinationCardTheLion",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheDragon",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��","Metadata/Items/DivinationCards/DivinationCardRats",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"Σ��","Metadata/Items/DivinationCards/DivinationCardTheRisk",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTranquillity",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/DivinationCards/DivinationCardHerMask",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ͽ�����","Metadata/Items/DivinationCards/DivinationCardTreasureHunter",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�����ʳ��","Metadata/Items/DivinationCards/DivinationCardEarthDrinker",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ǵ�Ӱ��","Metadata/Items/DivinationCards/DivinationCardTheWolfsShadow",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�������ھ�","Metadata/Items/DivinationCards/DivinationCardTheArenaChampion",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheSephirot",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�����","Metadata/Items/DivinationCards/DivinationCardTheVisionary",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ŭ��֮��","Metadata/Items/DivinationCards/DivinationCardThunderousSkies",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮ŭ","Metadata/Items/DivinationCards/DivinationCardDyingAnguish",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���㲻��","Metadata/Items/DivinationCards/DivinationCardTheImmortal",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheThrone",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�޾�֮��","Metadata/Items/DivinationCards/DivinationCardBoundlessRealms",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheDevastator",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"���������","Metadata/Items/DivinationCards/DivinationCardDestinedToCrumble",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardShardOfFate",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardHeterochromia",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ջ�֮��","Metadata/Items/DivinationCards/DivinationCardRainTempter",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"���","Metadata/Items/DivinationCards/DivinationCardTheVoid",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil," ��Ű֮��","Metadata/Items/DivinationCards/DivinationCardTheTyrant",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheWeb",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ո���","Metadata/Items/DivinationCards/DivinationCardTheHarvester",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ӰŮ��˾","Metadata/Items/DivinationCards/DivinationCardTheLunarisPriestess",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardEmperorOfPurity",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheCursedKing",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�籩ʹ��","Metadata/Items/DivinationCards/DivinationCardTheStormcaller",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ɯ֮Ϣ","Metadata/Items/DivinationCards/DivinationCardLysahsRespite",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ͼ�ߵ�����","Metadata/Items/DivinationCards/DivinationCardCartographersDelight",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardLuckyDeck")--���\�ƽM
-- SetJiaoYiGoods(nil,"������ʵ","Metadata/Items/DivinationCards/DivinationCardLightAndTruth",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�߶��ľ��","Metadata/Items/DivinationCards/DivinationCardLuckOfTheVaal",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�;���","Metadata/Items/DivinationCards/DivinationCardTheEndurance",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�����","Metadata/Items/DivinationCards/DivinationCardThePenitent",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"Ⱥ��֮��","Metadata/Items/DivinationCards/DivinationCardTheWolf",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�������˵ı�ʯ","Metadata/Items/DivinationCards/DivinationCardDiallasSubjugation",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheCalling",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Ů֮����","Metadata/Items/DivinationCards/DivinationCardTheValkyrie",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�޼�֮��","Metadata/Items/DivinationCards/DivinationCardTheFormlessSea",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��֮����","Metadata/Items/DivinationCards/DivinationCardTheOath",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ʰ����","Metadata/Items/DivinationCards/DivinationCardTheScavenger",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��֮����","Metadata/Items/DivinationCards/DivinationCardMawrBlaidd",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���ɸ��","Metadata/Items/DivinationCards/DivinationCardThePorcupine",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�籩��Ϯ","Metadata/Items/DivinationCards/DivinationCardTheComingStorm",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ѧ��","Metadata/Items/DivinationCards/DivinationCardThePolymath",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�����","Metadata/Items/DivinationCards/DivinationCardTheWolverine",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"¶ָ����","Metadata/Items/DivinationCards/DivinationCardMitts",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardTheWretched",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheWolvenKingsBite",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�䵭","Metadata/Items/DivinationCards/DivinationCardTheStandoff",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheForsaken",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ҫ֮��","Metadata/Items/DivinationCards/DivinationCardTheGarishPower",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"���ݼ���","Metadata/Items/DivinationCards/DivinationCardLingeringRemnants",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���������","Metadata/Items/DivinationCards/DivinationCardTheSparkAndTheFlame",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ʥ��֮��","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"Զ���ٻ�","Metadata/Items/DivinationCards/DivinationCardCallToTheFirstOnes",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardTheValleyOfSteelBoxes",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardMightIsRight",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheOpulecent",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardStruckByLightning",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�������������","Metadata/Items/DivinationCards/DivinationCardAtzirisArsenal",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�п�֮��","Metadata/Items/DivinationCards/DivinationCardTheRuthlessCeinture",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�޼���Ѱ","Metadata/Items/DivinationCards/DivinationCardNoTraces",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ҵĽݾ�","Metadata/Items/DivinationCards/DivinationCardTheRealm",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��֮��","Metadata/Items/DivinationCards/DivinationCardTheEyeOfTheDragon",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheBlazingFire",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardLeftToFate",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardRebirth",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardTheInsatiable",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ڰ�����","Metadata/Items/DivinationCards/DivinationCardTheObscured",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����ʫ��","Metadata/Items/DivinationCards/DivinationCardTheIronBard",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardForbiddenPower",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��϶","Metadata/Items/DivinationCards/DivinationCardTheBreach",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"׷����","Metadata/Items/DivinationCards/DivinationCardTheDreamer",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ɽ���","Metadata/Items/DivinationCards/DivinationCardTheWorldEater",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ͽ","Metadata/Items/DivinationCards/DivinationCardTheDeceiver",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardBlessingOfGod",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardThePuzzle",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheWitch",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�������","Metadata/Items/DivinationCards/DivinationCardImmortalResolve",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�鱦���ĸ���","Metadata/Items/DivinationCards/DivinationCardTheJewellersBoon",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/DivinationCards/DivinationCardTheDarkestDream",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheMaster",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�޾���Ԩ","Metadata/Items/DivinationCards/DivinationCardTheFathomlessDepths",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��η��","Metadata/Items/DivinationCards/DivinationCardTheUndaunted",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��Ľ��","Metadata/Items/DivinationCards/DivinationCardTheAdmirer",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ʥ���¾�","Metadata/Items/DivinationCards/DivinationCardTheSwordKingsSalute",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��Ѫ���","Metadata/Items/DivinationCards/DivinationCardTheArmyOfBlood",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮ʯ","Metadata/Items/DivinationCards/DivinationCardTheCelestialStone",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardPerfection",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ξ�","Metadata/Items/DivinationCards/DivinationCardTheDreamland",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��֮��г","Metadata/Items/DivinationCards/DivinationCardHarmonyOfSouls",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ʿ֮��","Metadata/Items/DivinationCards/DivinationCardTheSamuraisEye",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"׳�Ĳ���","Metadata/Items/DivinationCards/DivinationCardTheHaleHeart",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ׯ԰��","Metadata/Items/DivinationCards/DivinationCardTheMayor",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�޿�������","Metadata/Items/DivinationCards/DivinationCardTheUndisputed",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"Ԫ�ؼ���","Metadata/Items/DivinationCards/DivinationCardTheRiteOfElements",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardThreeVoices",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheProfessor",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheBeast",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�޹���","Metadata/Items/DivinationCards/DivinationCardTheInnocent",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ήõ��","Metadata/Items/DivinationCards/DivinationCardTheWiltedRose",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�޾��ڰ�","Metadata/Items/DivinationCards/DivinationCardTheEndlessDarkness",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardBeautyThroughDeath",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�����Ĵ���","Metadata/Items/DivinationCards/DivinationCardThePriceOfProtection",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����͸�","Metadata/Items/DivinationCards/DivinationCardBoonOfTheFirstOnes",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ĺ��֮��","Metadata/Items/DivinationCards/DivinationCardTheTwilightMoon",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��Э֮��","Metadata/Items/DivinationCards/DivinationCardTheCacophony",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheSacrifice",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"īˮ���","Metadata/Items/DivinationCards/DivinationCardADabOfInk",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardTheNurse",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"������ʦ","Metadata/Items/DivinationCards/DivinationCardTheMasterArtisan",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardTheLifeThief",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Ѱ����","Metadata/Items/DivinationCards/DivinationCardTheSeeker",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ʹ","Metadata/Items/DivinationCards/DivinationCardTheMessenger",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheMadKing",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"˾���Ķ���","Metadata/Items/DivinationCards/DivinationCardBoonOfJustice",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ó�","Metadata/Items/DivinationCards/DivinationCardTheJourney",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�߶��İ���","Metadata/Items/DivinationCards/DivinationCardArroganceOfTheVaal",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheLanding",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ɽ��","Metadata/Items/DivinationCards/DivinationCardTheMountain",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�������","Metadata/Items/DivinationCards/DivinationCardSevenYearsBadLuck",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ƽ��Ԫ","Metadata/Items/DivinationCards/DivinationCardTheGoldenEra",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ڰ�����","Metadata/Items/DivinationCards/DivinationCardMonochrome",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ڰ�������","Metadata/Items/DivinationCards/DivinationCardDarkTemptation",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ڰ��ж���","Metadata/Items/DivinationCards/DivinationCardAloneInTheDarkness",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"������������","Metadata/Items/DivinationCards/DivinationCardSambodhisVow",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardTheLordOfCelebration",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardVanity",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�۹����Ų�","Metadata/Items/DivinationCards/DivinationCardImperialLegacy",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ȼ��֮Ѫ","Metadata/Items/DivinationCards/DivinationCardBurningBlood",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��Դ","Metadata/Items/DivinationCards/DivinationCardThePrimordial",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"���Ļ���","Metadata/Items/DivinationCards/DivinationCardEchoesOfLove",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��֪����","Metadata/Items/DivinationCards/DivinationCardThirstForKnowledge",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���˵Ľ���","Metadata/Items/DivinationCards/DivinationCardAlluringBounty",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheFool",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����Ĵ���","Metadata/Items/DivinationCards/DivinationCardPrideOfTheFirstOnes",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��Ԩ֮��","Metadata/Items/DivinationCards/DivinationCardTheDeepOnes",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ʦ������","Metadata/Items/DivinationCards/DivinationCardTheArchmagesRightHand",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ڰ�֮��","Metadata/Items/DivinationCards/DivinationCardDarkDreams",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����ı���","Metadata/Items/DivinationCards/DivinationCardBuriedTreasure",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����Ķľ�","Metadata/Items/DivinationCards/DivinationCardDemigodsWager",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheOldMan",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ŵ��֮��","Metadata/Items/DivinationCards/DivinationCardNooksCrown",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"֧������","Metadata/Items/DivinationCards/DivinationCardTheSideQuest",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ҳϵĴ���","Metadata/Items/DivinationCards/DivinationCardThePriceOfLoyalty",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"Ӣ�´��","Metadata/Items/DivinationCards/DivinationCardTheHeroicShot",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardRemembrance",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֪��","Metadata/Items/DivinationCards/DivinationCardMoreIsNeverEnough",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�񶾵�Ȩ��","Metadata/Items/DivinationCards/DivinationCardVilePower",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheBargain",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�������Ľ���","Metadata/Items/DivinationCards/DivinationCardAzyransReward",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ħ��","Metadata/Items/DivinationCards/DivinationCardTheSkeleton",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ֲ�֮��","Metadata/Items/DivinationCards/DivinationCardTheEyeOfTerror",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ħ","Metadata/Items/DivinationCards/DivinationCardTheDemon",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"������Ԥ��","Metadata/Items/DivinationCards/DivinationCardAkilsProphecy",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheDamned",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Ԫ�����","Metadata/Items/DivinationCards/DivinationCardVoidOfTheElements",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheDeal",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�������Ų�","Metadata/Items/DivinationCards/DivinationCardTheWolfsLegacy",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�T�D֮�ڴ�","Metadata/Items/DivinationCards/DivinationCardBaitedExpectations",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�o����H","Metadata/Items/DivinationCards/DivinationCardSuccorOfTheSinless",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�صׅ���","Metadata/Items/DivinationCards/DivinationCardUndergroundForest",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��Ó��","Metadata/Items/DivinationCards/DivinationCardTheEscape",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����ӛ̖","Metadata/Items/DivinationCards/DivinationCardDeathlyDesigns",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���x֮��","Metadata/Items/DivinationCards/DivinationCardTheChosen",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�����v��֮��","Metadata/Items/DivinationCards/DivinationCardCameriasCut",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardDivineJustice",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�~؜","Metadata/Items/DivinationCards/DivinationCardTheFishmonger",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�R�ǌ�ۙ","Metadata/Items/DivinationCards/DivinationCardTheBones",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���xС��","Metadata/Items/DivinationCards/DivinationCardFriendship",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��Ҫ","Metadata/Items/DivinationCards/DivinationCardTheCraving",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�����Ѫ","Metadata/Items/DivinationCards/DivinationCardEtchedInBlood",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ʧ��ķ��A","Metadata/Items/DivinationCards/DivinationCardSquanderedProsperity",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���Լ�","Metadata/Items/DivinationCards/DivinationCardTheStrategist",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�p�ێ�","Metadata/Items/DivinationCards/DivinationCardTheCheater",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�I��֮��","Metadata/Items/DivinationCards/DivinationCardTheTinkerersTable",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�p�����","Metadata/Items/DivinationCards/DivinationCardTheEasyStroll",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardTheProgenyOfLunaris",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�֮�����","Metadata/Items/DivinationCards/DivinationCardTheEldritchDecay",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"؈���h��","Metadata/Items/DivinationCards/DivinationCardCouncilOfCats",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�L�L��","Metadata/Items/DivinationCards/DivinationCardTheTumbleweed")--�L�L��	
SetJiaoYiGoods(nil,"�䳲֪�R","Metadata/Items/DivinationCards/DivinationCardTheHiveOfKnowledge")--�䳲֪�R	
SetJiaoYiGoods(nil,"��ِ�Ƚzٛ�Y","Metadata/Items/DivinationCards/DivinationCardGiftOfAsenath")--��ِ�Ƚzٛ�Y	
SetJiaoYiGoods(nil,"�S�L�hӛ","Metadata/Items/DivinationCards/DivinationCardANoteInTheWind")--�S�L�hӛ	
SetJiaoYiGoods(nil,"�ۂ��әC","Metadata/Items/DivinationCards/DivinationCardTheGreatestIntentions")--�ۂ��әC	
SetJiaoYiGoods(nil,"���Tʿ","Metadata/Items/DivinationCards/DivinationCardTheWhiteKnight")--���Tʿ	
-- SetJiaoYiGoods(nil,"���_����˹���b�׎�","Metadata/Items/DivinationCards/DivinationCardPrometheusArmoury")--���_����˹���b�׎�	
SetJiaoYiGoods(nil,"ه�Ԟ���","Metadata/Items/DivinationCards/DivinationCardTheSustenance")--ه�Ԟ���	
SetJiaoYiGoods(nil,"ƽ�o�r��","Metadata/Items/DivinationCards/DivinationCardPeacefulMoments")--ƽ�o�r��	
-- SetJiaoYiGoods(nil,"�X��","Metadata/Items/DivinationCards/DivinationCardTheAwakened")--�X��	
-- SetJiaoYiGoods(nil,"�������R","Metadata/Items/DivinationCards/DivinationCardAFamiliarCall")--�������R	
SetJiaoYiGoods(nil,"�L���p�_","Metadata/Items/DivinationCards/DivinationCardTheLongCon")--�L���p�_
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheGulf")--���� enName:the-gulf
SetJiaoYiGoods(nil,"�����`��","Metadata/Items/DivinationCards/DivinationCardTheBitterBlossom")--�����`�� enName:the-bitter-blossom
SetJiaoYiGoods(nil,"�O�Ȱd��","Metadata/Items/DivinationCards/DivinationCardTriskaidekaphobia")--�O�Ȱd�� enName:triskaidekaphobia
SetJiaoYiGoods(nil,"����˼","Metadata/Items/DivinationCards/DivinationCardUnrequitedLove")--����˼ enName:unrequited-love
SetJiaoYiGoods(nil,"�ڷe","Metadata/Items/DivinationCards/DivinationCardTheCache")--�ڷe enName:the-cache
SetJiaoYiGoods(nil,"�W�g��","Metadata/Items/DivinationCards/DivinationCardTheAcademic")--�W�g�� enName:the-academic
SetJiaoYiGoods(nil,"�C�^������","Metadata/Items/DivinationCards/DivinationCardDesecratedVirtue")--�C�^������ enName:desecrated-virtue
SetJiaoYiGoods(nil,"����ؔ��","Metadata/Items/DivinationCards/DivinationCardBrothersStash")--����ؔ�� enName:brothers-stash
-- SetJiaoYiGoods(nil,"δ�B�i","Metadata/Items/DivinationCards/DivinationCardUnchained")--δ�B�i enName:unchained
-- SetJiaoYiGoods(nil,"�w��Mؔ","Metadata/Items/DivinationCards/DivinationCardTheUnexpectedPrize")--�w��Mؔ enName:the-unexpected-prize
-- SetJiaoYiGoods(nil,"�vԒ","Metadata/Items/DivinationCards/DivinationCardCursedWords")--�vԒ enName:cursed-words
-- SetJiaoYiGoods(nil,"ӛ��","Metadata/Items/DivinationCards/DivinationCardTheJournalist")--ӛ�� enName:the-journalist
SetJiaoYiGoods(nil,"��Ӱ�p�@","Metadata/Items/DivinationCards/DivinationCardHauntingShadows")--��Ӱ�p�@
--SetJiaoYiGoods(nil,"�m������","Metadata/Items/DivinationCards/DivinationCardAcclimatisation")--�m������
SetJiaoYiGoods(nil,"�׻�","Metadata/Items/DivinationCards/DivinationCardTheWhiteout")--�׻�
--SetJiaoYiGoods(nil,"����İû�","Metadata/Items/DivinationCards/DivinationCardSocietysRemorse")--����İû�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardDyingLight")--����֮��
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardFatefulMeeting")--���\���
SetJiaoYiGoods(nil,"�����׎�","Metadata/Items/DivinationCards/DivinationCardTheAstromancer")--�����׎�
SetJiaoYiGoods(nil,"���o�ߵĸ���","Metadata/Items/DivinationCards/DivinationCardKeepersCorruption")--���o�ߵĸ���
SetJiaoYiGoods(nil,"��ç��Ұ��","Metadata/Items/DivinationCards/DivinationCardRecklessAmbition")--��ç��Ұ��
SetJiaoYiGoods(nil,"����ۑ�","Metadata/Items/DivinationCards/DivinationCardLoveThroughIce")--����ۑ�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardDrapedInDreams")--����
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardThePatient")--����
--SetJiaoYiGoods(nil,"�����ع�","Metadata/Items/DivinationCards/DivinationCardTheLongWatch")--�����ع�
--SetJiaoYiGoods(nil,"�����Ʊ�","Metadata/Items/DivinationCards/DivinationCardTheBearWoman")--�����Ʊ�
SetJiaoYiGoods(nil,"�����ֵܕ�","Metadata/Items/DivinationCards/DivinationCardBrotherhoodInExile")--�����ֵܕ�
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardWintersEmbrace")--����
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardSambodhisWisdom")--������ǻ�
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheEnthusiasts")--������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardBrokenPromises")--������
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardBrushPaintAndPalette")--���P����Ϻ��{ɫ�P
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardDeadlyJoy")--����ϲ��
--SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheAdventuringSpirit")--ð�U֮�`
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheEternalWar")--���a��
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardPrejudice")--ƫҊ
--SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheShortcut")--�ݏ�
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheCardSharp")--��ǧ
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardAModestRequest")--�t��Ո��
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardLuminousTrove")--�x�͌���
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheHook")--���i
--SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheLastSupper")--��������
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheEmptiness")--��̓
--SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardASeaOfBlue")--�{��
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheOffspring")--����
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardThePriceOfPrescience")--�A֪���r
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheMindsEyes")--���`֮��
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTerribleSecretOfSpace")--�o��֑�֮��
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheBlessingOfMoosh")--��ʲ��ף��
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardCostlyCurio")--���F����
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardLachrymalNecrosis")--�F�����c
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardDementophobia")--�V��֢
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardAmbitiousObsession")--���M����
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardDesperateCrusade")--�^���h��
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardAStonePerfected")--��ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTreasuresOfTheVaal")--�ߠ�����
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheRabbitsFoot")--���_
--SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardChasingRisk")--ð�U���y
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardThePrinceOfDarkness")--�ڰ�����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheCatch")--��̫����~
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardEternalBonds")--���a֮�M
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardDisdain")--��ҕ
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheScout")--ͯ��܊
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardGuardiansChallenge")--���o�ߵ�����
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheForgottenTreasure")--���z���Č���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheFoxInTheBrambles")--�G���еĺ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheAspirant")--�����W
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardJudgingVoices")--����֮
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardBijoux")--�錚
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardSilenceAndFrost")--��Ĭ�c��˪
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardMiseryInDarkness")--�ڰ��еĿ��y
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheTirelessExtractor")--�����W
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheAspirant")--������ȡ��
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardJustifiedAmbition")--���xҰ��
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardParasiticPassengers")--��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardDuality")--�p����
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheOneThatGotAway")--��Ó
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheTransformation")--׃��
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardMagnumOpus")--����
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardImperfectMemories")--�������Ļؑ�

SetSaveIndex("��Լ","1|4")--�趨��Լ������Щ�ֿ�ҳ
SetGoodsCaoZuo("��Լ","0|2",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,function(r)return r.lv>60 end)--����60������Լ�ż��
SetGoodsCaoZuo(nil,"0","�ͽ�����ӡ��","Metadata/Items/Heist/HeistCoin")--ֻ�񲻴�ᱦ��
SetGoodsCaoZuo(nil,"0|2","�ͽ�����ӡ��","Metadata/Items/Heist/HeistCoin",nil,nil,nil,50000)--������1000�͸�Ϊ���
--�����Ҫ�ᱦ�ҽ��׸��ֿ�žͼ�����������
--SetJiaoYiGoods(nil,"�ͽ�����ӡ��","Metadata/Items/Heist/HeistCoin",nil,nil,nil,nil,nil,nil,5000)--����1000���ᱦ�� ������Ľ��׸��ֿ��

SetCheckHeistData(5*60,1000,nil,60,false,65,73,78,65,true,6) --����ȥ�ᱦ 
SetYiJieShuaTuModeByMapCnt(40,nil,2)--�ֿ��е�ͼ������40 ������ˢ ֱͨboss
SetYiJieShuaTuModeByMapCnt(20,0.8,0)--�ֿ��е�ͼ������20 ˢ8�� ��Ҫ����BOSS
SetYiJieShuaTuModeByMapCnt(0,1,nil)--�ֿ��е�ͼ������0 ˢȫͼ

SetOpenMapMasterData(masterData)--������翪ͼʱѡ����¼�
--masterData Ҫѡ�е��¼� �ַ����� ��Χ 1-5 1:ħ���ʦ 2:��Խ��ʦ 3:ħ������ 4:�����ܽ� 5:���� ��ͼ��ʦ �������м���|���� Ĭ��Ϊ"1|2|3|4|5" ����Ļ������ѡ��

SetOpenMapMasterData("1|2|3|4|5")--5���¼�ȫ�ӽ�ȥ

SetQuLingData(nil,75,true,true)--��70���Ϳ����������̳
--������ȹ�������齱����˳��Ϊ���ϵ��� �ѹ��صĶ�����ǰ��
--AddYouXianGongPingBuyGoods(name,className,wordName,wordClassName,needYanShi)--�������ʹ�ù�Ʒ����Ķ��� ���ȶ�Ϊ���ϵ������
--name �ַ����� ���ȹ������Ʒ�� ����nil���ԣ���һ��Ҫ�����������
--className �ַ����� ���ȹ������Ʒ���� ������nil���ԣ���һ��Ҫ�����������
--wordName �ַ����� ��׺�� ������nil
--wordClassName �ַ����� ��׺���� ������nil
--needYanShi �߼��� ����ʱ�Ƿ���ʱ trueΪ��ʱ false��nilΪ����ʱ
AddYouXianGongPingBuyGoods("�����µ�ħ��","Metadata/Items/Currency/CurrencyDuplicate",nil,nil,true)
AddYouXianGongPingBuyGoods(nil,nil,nil,"The Squire")--"�����"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Mageblood")--"ħѪ"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Headhunter",true)--"�C��"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Badge of the Brotherhood",true)--"����֮��"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Bottled Faith",true)--"ƿ������"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Unnatural Instinct",true)--"���"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Void Battery",true)--"����ħ��"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Maloney's Mechanism",true)--"�R����ęC�P"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Asenath's Gentle Touch",true)--"��ِ�Ƚz�İ���֮�Z"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Machina Mitts",true)--"ԎӋħ��"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Farrul's Fur",true)--"�M���_����"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Shroud of the Lightless",true)--"�ް��ČƲ�"
AddYouXianGongPingBuyGoods(nil,nil,nil,"The Halcyon",true)--"̫ƽ"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Arakaali's Fang",true)--"��������֮��"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Unending Hunger",true)--"�o�M����"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Inspired Learning",true)--"��֪�ğ���"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Berek's Respite",true)--"ؐ�׿˵Ļ��c��֮��"
AddYouXianGongPingBuyGoods(nil,nil,nil,"AtzirisMirrorFated",true)--"Ů���I��"
AddYouXianGongPingBuyGoods(nil,nil,nil,"ItemAbleToBecomesUniqueWhenChanceOrbApplied",true)--"��ȸ׃�P��"
AddYouXianGongPingBuyGoods(nil,nil,nil,"RollingSixSocketBodyArmourLinksAllSockets",true)--"���\�B�Y"
AddYouXianGongPingBuyGoods(nil,nil,nil,"RareSuturedAberrationDropsMaligarosVirtuosity",true)--"����֮��"
AddYouXianGongPingBuyGoods("�����µ�ħ����Ƭ","Metadata/Items/Currency/CurrencyDuplicateShard",nil,nil,true)
AddYouXianGongPingBuyGoods("���t","Metadata/Items/DivinationCards/DivinationCardTheDoctor",nil,nil,true)
AddYouXianGongPingBuyGoods("ħ��","Metadata/Items/DivinationCards/DivinationCardTheFiend",nil,nil,true)
AddYouXianGongPingBuyGoods("����˼","Metadata/Items/DivinationCards/DivinationCardUnrequitedLove",nil,nil,true)
AddYouXianGongPingBuyGoods("����","Metadata/Items/DivinationCards/DivinationCardHouseOfMirrors",nil,nil,true)
AddYouXianGongPingBuyGoods("��ħ","Metadata/Items/DivinationCards/DivinationCardTheDemon",nil,nil,true)
AddYouXianGongPingBuyGoods("�o����H","Metadata/Items/DivinationCards/DivinationCardSuccorOfTheSinless",nil,nil,true)
AddYouXianGongPingBuyGoods("�䳲֪�R","Metadata/Items/DivinationCards/DivinationCardTheHiveOfKnowledge",nil,nil,true)
AddYouXianGongPingBuyGoods("��ِ�Ƚzٛ�Y","Metadata/Items/DivinationCards/DivinationCardGiftOfAsenath",nil,nil,true)
AddYouXianGongPingBuyGoods("�ۂ��әC","Metadata/Items/DivinationCards/DivinationCardTheGreatestIntentions",nil,nil,true)
AddYouXianGongPingBuyGoods("�L���p�_","Metadata/Items/DivinationCards/DivinationCardTheLongCon",nil,nil,true)
AddYouXianGongPingBuyGoods("����ؔ��","Metadata/Items/DivinationCards/DivinationCardBrothersStash",nil,nil,true)
AddYouXianGongPingBuyGoods("����ע��","Metadata/Items/DivinationCards/DivinationCardFatefulMeeting",nil,nil,true)
AddYouXianGongPingBuyGoods("����ѧ��","Metadata/Items/DivinationCards/DivinationCardTheAstromancer",nil,nil,true)
AddYouXianGongPingBuyGoods("���֮��","Metadata/Items/DivinationCards/DivinationCardLoveThroughIce",nil,nil,true)
AddYouXianGongPingBuyGoods("����","Metadata/Items/DivinationCards/DivinationCardThePatient",nil,nil,true)
AddYouXianGongPingBuyGoods("������","Metadata/Items/DivinationCards/DivinationCardTheNurse",nil,nil,true)
AddYouXianGongPingBuyGoods("ͯ��܊","Metadata/Items/DivinationCards/DivinationCardTheScout",nil,nil,true)
AddYouXianGongPingBuyGoods("����","Metadata/Items/DivinationCards/DivinationCardTheHoarder",nil,nil,true)
AddYouXianGongPingBuyGoods("��������","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth",nil,nil,true)
AddYouXianGongPingBuyGoods("ʥ��֮��","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure",nil,nil,true)
AddYouXianGongPingBuyGoods("����ʫ��","Metadata/Items/DivinationCards/DivinationCardTheIronBard",nil,nil,true)
AddYouXianGongPingBuyGoods("��ʿ֮��","Metadata/Items/DivinationCards/DivinationCardTheSamuraisEye",nil,nil,true)
AddYouXianGongPingBuyGoods("����֮��","Metadata/Items/DivinationCards/DivinationCardBeautyThroughDeath",nil,nil,true)
AddYouXianGongPingBuyGoods("�������","Metadata/Items/DivinationCards/DivinationCardSevenYearsBadLuck",nil,nil,true)
AddYouXianGongPingBuyGoods("���ʯ","Metadata/Items/Currency/CurrencyAddModToRare",nil,nil,true)
AddYouXianGongPingBuyGoods("Զ��ʯ","Metadata/Items/Currency/CurrencyRerollUnique",nil,nil,true)
AddYouXianGongPingBuyGoods("��ʥʯ","Metadata/Items/Currency/CurrencyModValues",nil,nil,true)
AddYouXianGongPingBuyGoods("���˵Ľ���","Metadata/Items/DivinationCards/DivinationCardAlluringBounty",nil,nil,true)
AddYouXianGongPingBuyGoods("����Ĵ���","Metadata/Items/DivinationCards/DivinationCardPrideOfTheFirstOnes",nil,nil,true)
AddYouXianGongPingBuyGoods("����֮��","Metadata/Items/DivinationCards/DivinationCardTheSephirot",nil,nil,true)
AddYouXianGongPingBuyGoods("��������","Metadata/Items/DivinationCards/DivinationCardTheWretched",nil,nil,true)
AddYouXianGongPingBuyGoods("�ڰ�����","Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark",nil,nil,true)
AddYouXianGongPingBuyGoods("��������","Metadata/Items/DivinationCards/DivinationCardChaoticDisposition",nil,nil,true)
AddYouXianGongPingBuyGoods("Թ��","Metadata/Items/DivinationCards/DivinationCardTheWrath",nil,nil,true)
AddYouXianGongPingBuyGoods("�Sԣ�ƽM","Metadata/Items/DivinationCards/DivinationCardDeck",nil,nil,true)
AddYouXianGongPingBuyGoods("����ʯ","Metadata/Items/Currency/CurrencyRerollRare",nil,nil,true)
AddYouXianGongPingBuyGoods("���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare",nil,nil,true)
AddYouXianGongPingBuyGoods("����ʯ","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",nil,nil,true)
AddYouXianGongPingBuyGoods("��ͼ��","Metadata/Items/Currency/CurrencyMapQuality",nil,nil,true)
AddYouXianGongPingBuyGoods("���ʯ","Metadata/Items/Currency/CurrencyPassiveRefund",nil,nil,true)
AddYouXianGongPingBuyGoods("����ʯ","Metadata/Items/Currency/CurrencyConvertToNormal",nil,nil,true)
AddYouXianGongPingBuyGoods("��ʯ�����⾵","Metadata/Items/Currency/CurrencyGemQuality",nil,nil,true)
AddYouXianGongPingBuyGoods("����ʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks",nil,nil,true)
AddYouXianGongPingBuyGoods("����ʯ","Metadata/Items/Currency/CurrencyRerollMagic",nil,nil,true)

g_needShiLianDaShiLv=75--��75����������ʦ
SetNeedShiLianReward("�����µ�ħ��","Metadata/Items/Currency/CurrencyDuplicate")
SetNeedShiLianReward(nil,nil,nil,"The Squire")--"�����"
SetNeedShiLianReward(nil,nil,nil,"Mageblood")--"ħѪ"
SetNeedShiLianReward(nil,nil,nil,"Headhunter")--"�C��"
SetNeedShiLianReward(nil,nil,nil,"Badge of the Brotherhood")--"����֮��"
SetNeedShiLianReward(nil,nil,nil,"Bottled Faith")--"ƿ������"
SetNeedShiLianReward(nil,nil,nil,"Unnatural Instinct")--"���"
SetNeedShiLianReward(nil,nil,nil,"Void Battery")--"����ħ��"
SetNeedShiLianReward(nil,nil,nil,"Maloney's Mechanism")--"�R����ęC�P"
SetNeedShiLianReward(nil,nil,nil,"Asenath's Gentle Touch")--"��ِ�Ƚz�İ���֮�Z"
SetNeedShiLianReward(nil,nil,nil,"Machina Mitts")--"ԎӋħ��"
SetNeedShiLianReward(nil,nil,nil,"Farrul's Fur")--"�M���_����"
SetNeedShiLianReward(nil,nil,nil,"Shroud of the Lightless")--"�ް��ČƲ�"
SetNeedShiLianReward(nil,nil,nil,"The Halcyon")--"̫ƽ"
SetNeedShiLianReward(nil,nil,nil,"Arakaali's Fang")--"��������֮��"
SetNeedShiLianReward(nil,nil,nil,"Unending Hunger")--"�o�M����"
SetNeedShiLianReward(nil,nil,nil,"Inspired Learning")--"��֪�ğ���"
SetNeedShiLianReward(nil,nil,nil,"Berek's Respite")--"ؐ�׿˵Ļ��c��֮��"
SetNeedShiLianReward(nil,nil,nil,"AtzirisMirrorFated")--"Ů���I��"
SetNeedShiLianReward(nil,nil,nil,"ItemAbleToBecomesUniqueWhenChanceOrbApplied")--"��ȸ׃�P��"
SetNeedShiLianReward(nil,nil,nil,"RollingSixSocketBodyArmourLinksAllSockets")--"���\�B�Y"
SetNeedShiLianReward(nil,nil,nil,"RareSuturedAberrationDropsMaligarosVirtuosity")--"����֮��"
SetNeedShiLianReward("�����µ�ħ����Ƭ","Metadata/Items/Currency/CurrencyDuplicateShard")
SetNeedShiLianReward("���t","Metadata/Items/DivinationCards/DivinationCardTheDoctor")
SetNeedShiLianReward("ħ��","Metadata/Items/DivinationCards/DivinationCardTheFiend")
SetNeedShiLianReward("����˼","Metadata/Items/DivinationCards/DivinationCardUnrequitedLove")
SetNeedShiLianReward("����","Metadata/Items/DivinationCards/DivinationCardHouseOfMirrors")
SetNeedShiLianReward("��ħ","Metadata/Items/DivinationCards/DivinationCardTheDemon")
SetNeedShiLianReward("�o����H","Metadata/Items/DivinationCards/DivinationCardSuccorOfTheSinless")
SetNeedShiLianReward("�䳲֪�R","Metadata/Items/DivinationCards/DivinationCardTheHiveOfKnowledge")
SetNeedShiLianReward("��ِ�Ƚzٛ�Y","Metadata/Items/DivinationCards/DivinationCardGiftOfAsenath")
SetNeedShiLianReward("�ۂ��әC","Metadata/Items/DivinationCards/DivinationCardTheGreatestIntentions")
SetNeedShiLianReward("�L���p�_","Metadata/Items/DivinationCards/DivinationCardTheLongCon")
SetNeedShiLianReward("����ؔ��","Metadata/Items/DivinationCards/DivinationCardBrothersStash")
SetNeedShiLianReward("����ע��","Metadata/Items/DivinationCards/DivinationCardFatefulMeeting")
SetNeedShiLianReward("����ѧ��","Metadata/Items/DivinationCards/DivinationCardTheAstromancer")
SetNeedShiLianReward("���֮��","Metadata/Items/DivinationCards/DivinationCardLoveThroughIce")
SetNeedShiLianReward("����","Metadata/Items/DivinationCards/DivinationCardThePatient")
SetNeedShiLianReward("������","Metadata/Items/DivinationCards/DivinationCardTheNurse")
SetNeedShiLianReward("ͯ��܊","Metadata/Items/DivinationCards/DivinationCardTheScout")
SetNeedShiLianReward("����","Metadata/Items/DivinationCards/DivinationCardTheHoarder")
SetNeedShiLianReward("��������","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth")
SetNeedShiLianReward("ʥ��֮��","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure")
SetNeedShiLianReward("����ʫ��","Metadata/Items/DivinationCards/DivinationCardTheIronBard")
SetNeedShiLianReward("��ʿ֮��","Metadata/Items/DivinationCards/DivinationCardTheSamuraisEye")
SetNeedShiLianReward("����֮��","Metadata/Items/DivinationCards/DivinationCardBeautyThroughDeath")
SetNeedShiLianReward("�������","Metadata/Items/DivinationCards/DivinationCardSevenYearsBadLuck")
SetNeedShiLianReward("���ʯ","Metadata/Items/Currency/CurrencyAddModToRare")
SetNeedShiLianReward("Զ��ʯ","Metadata/Items/Currency/CurrencyRerollUnique")
SetNeedShiLianReward("��ʥʯ","Metadata/Items/Currency/CurrencyModValues")
SetNeedShiLianReward("���˵Ľ���","Metadata/Items/DivinationCards/DivinationCardAlluringBounty")
SetNeedShiLianReward("����Ĵ���","Metadata/Items/DivinationCards/DivinationCardPrideOfTheFirstOnes")
SetNeedShiLianReward("����֮��","Metadata/Items/DivinationCards/DivinationCardTheSephirot")
SetNeedShiLianReward("��������","Metadata/Items/DivinationCards/DivinationCardTheWretched")
SetNeedShiLianReward("�ڰ�����","Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark")
SetNeedShiLianReward("��������","Metadata/Items/DivinationCards/DivinationCardChaoticDisposition")
SetNeedShiLianReward("Թ��","Metadata/Items/DivinationCards/DivinationCardTheWrath")
SetNeedShiLianReward("�Sԣ�ƽM","Metadata/Items/DivinationCards/DivinationCardDeck")
SetNeedShiLianReward("����ʯ","Metadata/Items/Currency/CurrencyRerollRare")
SetNeedShiLianReward("���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare")
SetNeedShiLianReward("����ʯ","Metadata/Items/Currency/CurrencyUpgradeMagicToRare")
SetNeedShiLianReward("��ͼ��","Metadata/Items/Currency/CurrencyMapQuality")
SetNeedShiLianReward("���ʯ","Metadata/Items/Currency/CurrencyPassiveRefund")
SetNeedShiLianReward("����ʯ","Metadata/Items/Currency/CurrencyConvertToNormal")
SetNeedShiLianReward("��ʯ�����⾵","Metadata/Items/Currency/CurrencyGemQuality")
SetNeedShiLianReward("����ʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks")
SetNeedShiLianReward("����ʯ","Metadata/Items/Currency/CurrencyRerollMagic")
