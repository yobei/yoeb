package.path = GetPackagePath();
local loadArr={"�Զ�����"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end
g_changeHunDunLv=70         --���ټ�ǰ����C
g_zhuaShenLv=70             --���ټ�ǰ��ץ����
g_yuyanCnt=99				--����������ȥԤ��
g_needSuDiLv=99             --���ڵ��ڶ��ټ����޵�
g_needLieXiLv=99			--��춵��ڶ��ټ����ѷ�
g_needTaFangLv=99			--���ڵ��ڶ��ټ�������
g_needMengYanLv=99          --���ڵ��ڶ��ټ�������
g_needChuanYueLv=99      	--���ڵ��ڶ��ټ���Խ
g_yongHengShiBeiLv=99		--���ڵ��ڶ��ټ�������
g_attackFreezeMonsterLv=75	--���ڵ��ڶ��ټ�����
g_needZhuangYuanLv=75       --���ڵ��ڶ��ټ���ׯ԰
g_needLianMoLv=75			--���ڵ��ڶ��ټ�����ħ
g_needZaFenLv=75		    --���ڵ��ڶ��ټ���ը��
g_needMiWuLv=75				--���ڵ��ڶ��ټ�������
--SetJiaoYiGoods(goodsType,name,className,wordName,wordClassName,color,chufaCnt,bossJiaoYiCnt,giveFaZhuang,baoliuCnt,lineSocketCnt,shuXingLimit,funcCheck)-- ����Ҫ���׵���Ʒ
--goodsType �ַ����� ��������Ʒ���ͺ����������� nil ֧���������� ����������|�ֿ� --saveType ���� ֧���������� ����������|�ֿ� ����ҩ��|ħ��ҩ��|����ҩ��|ͨ��|����|��ָ|צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|�������ܱ�ʯ|�������ܱ�ʯ|����|����|����|Ь��|�·�|ͷ��|��|С��ʥ��|����ʥ��|����ʥ��|�ɶѵ�ͨ��|������Ʒ|����|����ҩ��|����ҩ��|����ͼ||���|��ͼ��Ƭ|����װ��|�̳���Ʒ|�鱦|���˿�|�Թ���Ʒ|�Թ���Ʒ|����Թ���Ʒ|��϶֮ʯ|����ʯ|����֮��|����װ����Ƭ|��Ԩ�鱦|��Խͨ��|����̽��������Ƕ��ͨ��|����ʯ|��Ƭ|����֮��|����ذ��|ս��|����̽���ɶѵ��ɲ���ͨ��|
--name �ַ����� ��Ʒ������
--className �ַ����� ��Ʒ������
--wordName �ַ����� ��Ʒ�Ĵ�׺��
--wordClassName �ַ����� ��Ʒ�Ĵ�׺����
--color �ַ����� ��ɫ 0�� 1�� 2�� 3�� �����|���� nilΪ����
--chufaCnt ������ �������׵����� 0��nil Ϊ������
--bossJiaoYiCnt ������ ����ʱ�ֿ�Ž��׸��һ��ŵ�����
--giveFaZhuang �߼��� �Ƿ���Լ�����װ�� trueΪ���Ը���װ�� false ��nil Ϊ����Ҫ
--baoliuCnt ������ �һ��Ž���ʱ����������
--lineSocketCnt ������ �������� ��������nil
--shuXingLimit �ַ����� �������� �Լ���Ҫ������ ��ʽΪ "��������1,������Сֵ1,�ǹ̶������������(0Ϊ���� ��������Ϊ1 �������Ϊ2),��ʼ��Χ(�ڼ������� ��1��ʼ),������Χ(-1 Ϊ���Χ)" ��֧�ֶ�������ʱ���붼�����˲��� �м���|���� ��������nil
--funcCheck ���˺�����������Ԥ���Ľӿڣ�������Ҫ�����������nil
--SetNotUseMapLv(mapLv,roleLv)--���ȼ����ò�ʹ�á�������ٽ׼����ϵĵ�ͼ ����ʹ���������õĵ�ͼ�ȼ� ���û���ý�ʹ��g_noUseMapLv���õ�
-- SetNotUseMapLv(0,5)--0�����ϴ�5�׼����µ�ͼ
-- SetNotUseMapLv(80,15)--80����15�׼������µ�ͼ
--roleLv ������ ����ȼ� �����ټ���ʹ�������õĵ�ͼ�ȼ�
--mapLv ������ ��ͼ�ȼ�

--SetMapGongYi(name)
--name �ַ����� ��ͼ���յ����� ��ͼʱ��ѡ������ĵ�ͼ����

g_useMoveSkillType=nil		--ʹ��λ�Ƽ��ܸ�·���� nilΪһֱ��ʹ�� 0Ϊ����ʱʹ�� 1Ϊ�������ʹ�� 2Ϊ�Ӳ�ʹ��
g_shengJiBaoShi=true		--�Զ�������ʯ trueΪ���� nil��falseΪ������
g_notShuaBaiPao=true        --�Ƿ�ˢ���� trueΪ��ˢ nil��falseΪˢ
g_duobiHpVal=0.7            --���ʱHP���ڶ��ٶ��
g_yiJieLv=70				--���˶��ټ���ȥˢ���
--SetTaskShengJiData(taskClassName,taskIndex,shengjiMapClassName,needLv)--������ͼʱ���� taskClassName=�������� taskIndex=�������� nilΪ���ԣ�ֻƥ���������� shengjiMapClassName=Ҫˢ�ĵ�ͼ���� needLv=���������ټ�Ϊֹ
SetTaskShengJiData("a5q7",nil,"1_5_5",40)--�� �������������� ��ʱ��ˢ����ʥ�ص�45���ٽ�����һ����
SetTaskShengJiData("a9q3",nil,"2_9_1",60)--�BѪˮ��

--SetTaskMiGongData(taskClassName,taskIndex,migongIndex)--������ͼʱ�Թ� taskClassName=�������� taskIndex=�������� nilΪ���ԣ�ֻƥ���������� migongIndexΪ�Թ������� 1=��һ���Թ� 2=�ڶ����Թ�
SetTaskMiGongData("a5q2",nil,1)--�ڸ���������������ʱ ���Թ�1
SetTaskMiGongData("a9q1",nil,2)--�ڸ���������������ʱ ���Թ�2
--SetTaskMiGongDataByLv(lv,mgIndex)--���õ��ȼ�ʱ���Թ� lv ������ Ϊ���ڵ��ڶ��ټ��� mgIndex=�Թ����� �����ͣ�ֻ֧�� 1 2 3 ��Ӧ3���Թ�
SetTaskMiGongDataByLv(75,3)

--ָ��ְҵ  Ұ���ˡ�Ů�ס����塢�����������ߡ���Ӱ��ʥ����ɮ��
g_newRoleJob="ʥ����ɮ"
--����ְҵ ��ʿ����ͽ�����������͡����ۡ�׷���ߡ������ҡ�Ԫ��ʹ���ٻ�ʦ�������ߡ���ʿ���ھ����й١�ʥ�ڡ��ػ��ߡ���Ӱ��ʦ����թʦ���ƻ��ߡ�����ʹͽ��
g_shengHuaJob="�ػ���"
--SetUseWeapon(str)--����ʹ�õ����� ֧��(��}����}צ}ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�) �����Ҫ�������м���|�ֿ�
SetUseWeapon("����|��")

--SetUseZhuangBeiTypeData(typeStr,pos)--�����Լ��õ�װ������ 
--typeStr=����("StrDex"Ϊ������װ+�������� "Str"ΪҰ����װ+���� "DexInt"Ϊ��Ӱװ+���ܻ��� "Int"ΪŮ��װ+���� "Dex"Ϊ����װ+���� "StrInt"Ϊʥ����ɮװ+��������)
--pos=��λ֧�ֲ�λ ֧��(��ָ|����|����|Ь��|����|�·�|ͷ��|��|����|צ}ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�) �����nilΪ��������
SetUseZhuangBeiTypeData("Str|StrInt","��")
SetUseZhuangBeiTypeData("Int|StrInt","�·�")
SetUseZhuangBeiTypeData("Int|StrInt","ͷ��")
SetUseZhuangBeiTypeData("Int|StrInt","����")
SetUseZhuangBeiTypeData("Int|StrInt","Ь��")

--SetNeedSkillLineData(val,str,invalidLv)--���û����ܱ�ʯ���� 
--val=ÿ�鱦ʯ�ı���ֵ
--str="��ʯ1,��ʯ1����|��ʯ2,��ʯ2����|��ʯ3,��ʯ3����" ��������֮����,���� ��ʯ֮����|����
--invalidLv=ʧЧ�ȼ� ��������ȼ��Ͳ�����Ҫ����
--SetNeedSkillLineData(val,str,invalidLv,pos)--���û����ܱ�ʯ���� 
--val=ÿ�鱦ʯ�ı���ֵ
--str="��ʯ1,��ʯ1����|��ʯ2,��ʯ2����|��ʯ3,��ʯ3����" ��������֮����,���� ��ʯ֮����|����
--invalidLv=ʧЧ�ȼ� ��������ȼ��Ͳ�����Ҫ����
--pos=ָ��λ�� nilΪ�Զ�ѡ�� 2Ϊ�·� 3Ϊ������ 4Ϊ������ 5Ϊͷ�� 6Ϊ���� 7Ϊ���ָ 8Ϊ�ҽ�ָ 9Ϊ���� 10ΪЬ�� 11Ϊ����
--nType ��Ч���� nilΪ���ۺ�ʱ����Ч 0Ϊû��ˢ������Ч 1Ϊֻ��ˢ������Ч

--��������
SetNeedSkillLineData(10,"��˪֮�N,Metadata/Items/Gems/SkillGemGlacialHammer",5,nil,0)
SetNeedSkillLineData(77,"�Q������,Metadata/Items/Gems/SkillGemSanctify|ȼ���o��,Metadata/Items/Gems/SupportGemChanceToIgnite|���ܲ����o��,Metadata/Items/Gems/SupportGemArcaneSurge",20,nil,0)
SetNeedSkillLineData(89,"����,Metadata/Items/Gems/SkillGemAbsolution,1|ʩ��ޒ��o��,Metadata/Items/Gems/SupportGemMulticast|�ن�������o��,Metadata/Items/Gems/SupportGemMinionDamage|���^�o��,Metadata/Items/Gems/SupportGemOnslaughtOnSlayingShockedEnemy|�ن���Ӱ�o��,Metadata/Items/Gems/SupportGemSummonGhostOnKill",nil,nil,0)
SetNeedSkillLineData(85,"�ٻ�����,Metadata/Items/Gems/SkillGemRaiseSpectre,1|Ԫ��܊��o��,Metadata/Items/Gems/SupportGemSummonElementalResistance|���B����o��,Metadata/Items/Gems/SupportGemFeedingFrenzy",nil,nil,0)
SetNeedSkillLineData(87,"���Əͮd,Metadata/Items/Gems/SkillGemRaiseZombie,1|�ن���ʯħ��,Metadata/Items/Gems/SkillGemSummonRockGolem|����o��,Metadata/Items/Gems/SupportGemMeatShield",nil,nil,0)
SetNeedSkillLineData(83,"Ԫ�؜Q��,Metadata/Items/Gems/SkillGemPurity|����֮��,Metadata/Items/Gems/SkillGemDefianceBanner|�ٻ�ʥ��,Metadata/Items/Gems/SkillGemSummonRelic",nil,nil,0)
SetNeedSkillLineData(81,"������,Metadata/Items/Gems/SkillGemFlameDash|̖��,Metadata/Items/Gems/SkillGemConvocation|����,Metadata/Items/Gems/SkillGemDesecrate",nil,nil,0)
SetNeedSkillLineData(79,"���}�����D�v,Metadata/Items/Gems/SkillGemFlameTotem|����֮��,Metadata/Items/Gems/SkillGemSteelskin",nil,nil,0)

--���������������
SetNeedSkillLineData(100,"����,Metadata/Items/Gems/SkillGemAbsolution,1|ʩ��ޒ��o��,Metadata/Items/Gems/SupportGemMulticast|�ن�������o��,Metadata/Items/Gems/SupportGemMinionDamage|�����D�W��o��,Metadata/Items/Gems/SupportGemPhysicalToLightning|���ӱ������o��,Metadata/Items/Gems/SupportGemIncreasedCriticalStrikes|���ӱ�������o��,Metadata/Items/Gems/SupportGemIncreasedCriticalDamage",nil,2,1)
SetNeedSkillLineData(96,"�ٻ�����,Metadata/Items/Gems/SkillGemRaiseSpectre,1|ʩ��ޒ��o��,Metadata/Items/Gems/SupportGemMulticast|Ԫ�ؼ����o��,Metadata/Items/Gems/SupportGemElementalFocus|Ԫ��܊��o��,Metadata/Items/Gems/SupportGemSummonElementalResistance",nil,10,1)--Ь��
SetNeedSkillLineData(94,"���Əͮd,Metadata/Items/Gems/SkillGemRaiseZombie,1|�ن���ʯħ��,Metadata/Items/Gems/SkillGemSummonRockGolem|���B����o��,Metadata/Items/Gems/SupportGemFeedingFrenzy|����o��,Metadata/Items/Gems/SupportGemMeatShield",nil,9,1)--����
SetNeedSkillLineData(98,"�ن�̽�y�C�F,Metadata/Items/Gems/SkillGemSummonSkitterbots|����֮��,Metadata/Items/Gems/SkillGemTempestShield|����֮��,Metadata/Items/Gems/SkillGemDefianceBanner|�ٻ�ʥ��,Metadata/Items/Gems/SkillGemSummonRelic",nil,5,1,nil,nil,nil,nil,nil,nil,nil,nil,true,nil)
SetNeedSkillLineData(92,"���,Metadata/Items/Gems/SkillGemSpellDamageAura|����,Metadata/Items/Gems/SkillGemPrecisionRoyale|�ض��n�h,Metadata/Items/Gems/SkillGemShieldChargeRoyale",nil,4,1)--����
SetNeedSkillLineData(90,"Ѫ���I,Metadata/Items/Gems/SkillGemFleshOffering|̖��,Metadata/Items/Gems/SkillGemConvocation|����,Metadata/Items/Gems/SkillGemDesecrate",nil,3,1)--����

--SetSkillLimitMaxLv(name,className,maxLv)--���ü��ܱ�ʯ���ȼ� name=���ܱ�ʯ��Ʒ�� className=���ܱ�ʯ��Ʒ���� maxLv=���Ƶ����ȼ�
--SetSkillLimitMaxLv("����ʱʩ��(��)","Metadata/Items/Gems/SupportGemCastOnDamageTaken",1)
--SetSkillLimitMaxLv("̓�o��","Metadata/Items/Gems/SkillGemVoidSphere",1)
SetSkillLimitMaxLv("����","Metadata/Items/Gems/SkillGemDesecrate",1)
SetSkillLimitMaxLv("����","Metadata/Items/Gems/SkillGemPrecisionRoyale",1)

SetSkillUseWaEr("����","Metadata/Items/Gems/SkillGemAbsolution","�ߠ�������","Metadata/Items/Gems/SkillGemVaalAbsolution",1)
-- SetSkillUseWaEr("�����o��","Metadata/Items/Gems/SkillGemMoltenShell","�ߠ��������o��","Metadata/Items/Gems/SkillGemVaalMoltenShell",1)

--AddAttackSkillData(name,className,noLine)--��ӹ������� name=������ className=�������� noLine=����ֱ�߾��ܹ��� ��ѡ�������ܻ���ϵ���Ѱ�ң�Ҫ�������ļ��ܼ���ǰ��
--AddAttackSkillData("�绡","arc")
AddAttackSkillData("����","absolution")
AddAttackSkillData("�Q������","purifying_flame")
AddAttackSkillData("��˪֮�N","glacial_hammer")
AddAttackSkillData("��ͨ����","melee")

--SetNeedZhaoHuanMonster(name,className,val)--������Ҫ�ٻ���������Զ�ѡ����ش���ٻ� name=������ className=�������� val=����
--SetNeedZhaoHuanMonster("˪���Ԅ�Ѳ��","Metadata/Monsters/LeagueHeist/Robot/RobotClockworkGolemCold",99999)
SetNeedZhaoHuanMonster("��Ѫ����","Metadata/Monsters/BloodChieftain/MonkeyChiefBloodEnrage",1)
SetNeedZhaoHuanMonster("�������Ȯ","Metadata/Monsters/Hellion/Hellion3",2)
SetNeedZhaoHuanMonster("������","Metadata/Monsters/TemplarSlaveDriver/TemplarSlaveDriver",8)
SetNeedZhaoHuanMonster("̫������","Metadata/Monsters/HolyFireElemental/HolyFireElementalSolarisBeam",7)
SetNeedZhaoHuanMonster("���ڴ�","Metadata/Monsters/Guardians/GuardianFire_Blue",6)
SetNeedZhaoHuanMonster("�����ڴ�","Metadata/Monsters/Guardians/GuardianFire",5)
SetNeedZhaoHuanMonster("��������","Metadata/Monsters/WickerMan/WickerMan",4)
SetNeedZhaoHuanMonster("��ħū��","Metadata/Monster/CageSpider/CageSpider2",3)

--bossName �ַ����� ����ֿ�ŵ�����
--minLv ������ �����ټ��Ż�ȥ�ֿ�ż��ٻ� nilΪ���Եȼ�����ȥ
--SetNeedZhaoHuanMonster("Flayed Lookout","Metadata/Monsters/LeagueBetrayal/BetrayalSkeletonRangedSpectre",7)
--SetHaveLingTiBossName("��ؔ������",70)--��������ֿ�� �������ŵ���������ϵĸ��ã����ͻ�ȥ���������λ���ٻ�����
--SetNeedZhaoHuanMonster("ǿ����߶�����","Metadata/Monsters/Skeletons/SkeletonMeleeKnightElementalSwordIncursionChampion",99)
--SetNeedZhaoHuanMonster("˪���Ԅ�Ѳ��","Metadata/Monsters/LeagueHeist/Robot/RobotClockworkGolemCold",99999)

--SetYiJieZhaoHuanLingTiData(mapClassName,name,className)--�������ʱ�ٻ����������� mapClassName=����ͼ���� name=������ className=��������
--SetYiJieZhaoHuanLingTiData("2_10_2","��������","Metadata/Monsters/WickerMan/WickerMan")
SetYiJieZhaoHuanLingTiData("1_5_2","������","Metadata/Monsters/TemplarSlaveDriver/TemplarSlaveDriver")
--SetYiJieZhaoHuanLingTiData("2_7_7","��Ѫ����","Metadata/Monsters/BloodChieftain/MonkeyChiefBloodEnrage")

--RemoveUseBuffSkill(name,className)--���ò�ʹ�õ�buff name=������ className=��������
--RemoveUseBuffSkill("�ن���ʯħ��","summon_rock_golem")

---------------------------------------��װ����
--SetAtuoChangeEquipData(job,pos,name,val,yijie) ���㷽ʽ���� �����������ֵ���Ա���ֵ  ����װ���߾ͻ�������
--job ְҵ ֧��(��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ) ���������м���|����
--pos ��λ ֧��(��ָ|����|����|Ь��|����|�·�|ͷ��|��|����|צ}ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�) ���������м���|����
--name ������ ֧����Ϸ�ڵ�װ�������� �����������Զ�����(�����˺������ס����ܡ����ܡ��������ܶ�)
--val ����ֵ ֧��С��
--nType ��װ���� 0��nil����Ϊһֱ��Ч 1Ϊ��ͼʱ����Ч 2Ϊ���ʱ����Ч
-- SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|��","fire_and_cold_damage_resistance_%",0.2)--�������˪�˺����� %
-- SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|��","fire_and_lightning_damage_resistance_%",0.2)--�����������˺����� %
-- SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|��","cold_and_lightning_damage_resistance_%",0.2)--��˪�������˺����� %
-- SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|��","base_resist_all_elements_%",0.3)--ȫԪ�ؿ��� %
-- SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|��","base_fire_damage_resistance_%",0.1)--���������˺����� %
-- SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|��","base_cold_damage_resistance_%",0.1)--������˪�˺����� %
-- SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|��","base_lightning_damage_resistance_%",0.1)--���������˺����� %
-- SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|��","cold_damage_resistance_%",0.1)--��˪���� %
-- SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|��","fire_damage_resistance_%",0.1)--���濹�� %
-- SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|��","lightning_damage_resistance_%",0.1)--���翹�� %
-- SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����","base_chaos_damage_resistance_%",0.15)--���������˺����� %
-- SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����","chaos_damage_resistance_%",0.15)--���翹�� %
-- SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","Ь��","base_movement_velocity_+%",10)--�����ƶ��ٶ� +%
-- SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","Ь��","movement_velocity_+%",10)--�ƶ��ٶ� +%
-- SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","����|�·�|ͷ��","����",100)--ÿ��һ�߼�xx�����
-- SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","צ|��|Ь��","�ܶ�",100,1)--ÿ��һ�߼�xx�����
-- SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","����|��ָ|����","base_maximum_life",0.4,1)--�ӻ��A�������
-- SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","����","����",0.5,0)--ÿ�������˺���xx�����
-- SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��","����",0.6)--�ӻ��A�������
-- SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","צ","�����˺�",200,1)--ÿ�������˺���xx�����

SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","����","sacrifice_%_maximum_life_to_gain_as_es_on_spell_cast",-99999)--���� ��ħ�첹��
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","ͷ��","you_cannot_have_non_spectre_minions",-99999)--���� �����з��Ļ���ن���
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","����","you_have_no_armour_or_energy_shield",-99999)--���� ��]���o�׺������o��
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","����","FireResistance",-99999)--���� ���ǵϰ��ĳ���
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","����","life_reserved_by_stat_%",-99999)--���� ڤԼ
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","�·�","local_has_no_sockets",-99999)--���� ��ķ

--������Ч
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��","����",5,1)                                                   --����
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��","base_maximum_life",10,1)                                     --�ӻ��A�������
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","����","minion_damage_+%",10,1)                                    --�ٻ��˺�����
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","����","minion_attack_and_cast_speed_+%",5,1)                      --��׺ʩ���ٶ�
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","����","base_maximum_life",10,1)                                   --�ӻ��A�������                 
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","����","base_resist_all_elements_%",5,1)                           --ȫԪ�ؿ��� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ","base_resist_all_elements_%",10,1)                          --ȫԪ�ؿ��� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ","fire_and_cold_damage_resistance_%",5,1)                    --�������˪�˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ","fire_and_lightning_damage_resistance_%",5,1)               --�����������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ","cold_and_lightning_damage_resistance_%",4,1)               --��˪�������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","base_maximum_life",10,1)                 --�ӻ��A�������
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","cold_damage_resistance_%",3,1)           --��˪���� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","fire_damage_resistance_%",3,1)           --���濹�� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","lightning_damage_resistance_%",3,1)      --���翹�� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","Ь��|����|ͷ��|�·�|��|����","�ܶ�",30,1)                        --ÿ��1�׼�50�����
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","Ь��|����|ͷ��|�·�|��|����","����",30,1)                        --ÿ�B1�׼�40�����

--�����Ч
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��","����",20,2)                                                 --����
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��","base_maximum_life",30,2)                                    --�ӻ��A�������
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","Ь��","movement_velocity_+%",20,2)                               --�ƶ��ٶ� +%
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","Ь��","base_movement_velocity_+%",30,2)                          --�����ƶ��ٶ� +%
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","����","minion_attack_and_cast_speed_+%",777,2)                   --�ٻ�������ʩ���ٶ�
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","����","minion_critical_strike_multiplier_+",888,2)               --�ٻ������ӳ�
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","����","minion_critical_strike_chance_+%",999,2)                  --�ٻ�����
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","����","minion_damage_+%",7777,2)                                 --�ٻ��˺�
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","����","spell_skill_gem_level_+%",8888,2)                         --ȫ�������ȼ�+1
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","����","minion_skill_gem_leve_+%",9999,2)                         --�ٻ���ȼ�+1
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ","minion_damage_+%",7777,2)                                 --�ٻ��˺�
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ","minion_attack_and_cast_speed_+%",999,2)                   --�ٻ�������ʩ���ٶ�
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ","minion_movement_speed_+%",888,2)                          --�ن��Ƅ��ٶ�
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ","minion_elemental_resistance_%",777,2)                     --�ٻ����Ի���
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","����","base_maximum_life",10,2)                                  --�ӻ��A�������
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","����","additional_strength",5,2)                                 --����
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","base_maximum_life",10,2)    --�ӻ��A�������
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","base_resist_all_elements_%",4,2)--ȫԪ�ؿ��� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","fire_and_cold_damage_resistance_%",3,2)--�������˪�˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","fire_and_lightning_damage_resistance_%",3,2)--�����������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","cold_and_lightning_damage_resistance_%",3,2)--��˪�������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","base_fire_damage_resistance_%",2,2)--���������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","base_cold_damage_resistance_%",2,2)--������˪�˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","base_lightning_damage_resistance_%",2,2)--���������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","cold_damage_resistance_%",2,2)--��˪���� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","fire_damage_resistance_%",2,2)--���濹�� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","lightning_damage_resistance_%",2,2)--���翹�� %

SetNeedFlaskData(1,"����ҩ��","���v��,FlaskFullInstantRecovery1",60,"��������ˎ��","Metadata/Items/Flasks/FlaskLife11")
SetNeedFlaskData(2,"����ҩ��","���@��,FlaskInstantRecoveryOnLowLife2",60,"��������ˎ��","Metadata/Items/Flasks/FlaskLife11")
SetNeedFlaskData(3,"ˮ��ҩ��","ˮ��֮,FlaskBuffResistancesWhileHealing",1,"ˮ��ҩ��","Metadata/Items/Flasks/FlaskUtility6")
SetNeedFlaskData(4,"����ҩ��","�U�~֮,FlaskBuffArmourWhileHealing1",1,"����ˎ��","Metadata/Items/Flasks/FlaskUtility5")
SetNeedFlaskData(5,"ħ��ҩ��","�ܷ�֮,FlaskBleedCorruptingBloodImmunity1",65,"���aħ��ˎ��","Metadata/Items/Flasks/FlaskMana12")

--SetZhengTiColorVarData(�·�,�����,�̿���,������,����0/���1/����nil),��ֵ,����true/����false/����nil)
--�·�---
SetZhengTiColorVarData(2,1,0,5,nil,100000,true)
SetZhengTiColorVarData(2,1,0,4,nil,10000,true)
SetZhengTiColorVarData(2,1,0,3,nil,5000,true)
SetZhengTiColorVarData(2,0,0,4,nil,1000,true)
SetZhengTiColorVarData(2,1,0,2,nil,500,true)
SetZhengTiColorVarData(2,0,0,3,nil,400,true)
SetZhengTiColorVarData(2,2,0,2,nil,300,true)
SetZhengTiColorVarData(2,0,0,2,nil,200,true)
SetZhengTiColorVarData(2,1,0,1,nil,100,true)

--����---������
SetZhengTiColorVarData(3,1,1,1,1,500,true)--����
SetZhengTiColorVarData(3,0,1,2,0,400,nil)
SetZhengTiColorVarData(3,1,0,2,0,300,nil)
SetZhengTiColorVarData(3,0,0,2,0,200,nil)
SetZhengTiColorVarData(3,1,1,1,0,100,nil)

--����---����
SetZhengTiColorVarData(4,1,1,1,1,500,true)--����
SetZhengTiColorVarData(4,2,1,0,0,400,nil)
SetZhengTiColorVarData(4,2,0,1,0,300,nil)
SetZhengTiColorVarData(4,2,0,0,0,200,nil)
SetZhengTiColorVarData(4,1,1,1,0,100,nil)

--ͷ��---�������--����
SetZhengTiColorVarData(5,1,0,3,1,500,true)
SetZhengTiColorVarData(5,1,0,3,0,400,true)
SetZhengTiColorVarData(5,0,0,4,0,300,true)
SetZhengTiColorVarData(5,0,0,3,0,200,true)
SetZhengTiColorVarData(5,2,0,2,0,100,true)

--����---�������-��
SetZhengTiColorVarData(9,1,0,3,1,500,true)
SetZhengTiColorVarData(9,1,0,3,0,400,true)
SetZhengTiColorVarData(9,0,0,4,0,300,true)
SetZhengTiColorVarData(9,0,0,3,0,200,true)
SetZhengTiColorVarData(9,2,0,2,0,100,true)

--Ь��---��������-��
SetZhengTiColorVarData(10,0,0,4,1,500,true)
SetZhengTiColorVarData(10,1,0,3,0,400,true)
SetZhengTiColorVarData(10,0,0,4,0,300,true)
SetZhengTiColorVarData(10,0,0,3,0,200,true)
SetZhengTiColorVarData(10,2,0,2,0,100,true)

--ʥ����ɮ--����
AddShengJiZhuangBeiGoodsData("���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare",0,40,0)--������Ч ����50�����õ����ɫװ��
AddShengJiZhuangBeiGoodsData("����ʯ","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",1,40,0)--������Ч ����50�����ø�������ɫװ��

---------------------------------------�߼���װ
--SetGaoJiHuanZhuangData(job,name,className,wordName,wordClassName,lineSocketCnt,goodsLv,flaskPos,zbPos,color,nType,yxName,yxClassName,yxWordName,yxWordClassName,wxName,wxClassName,wxWordName,wxWordClassName,val) �߼���װ���� ���û�ָ����װ��
--1ְҵ��2��Ʒ����3��Ʒ������4ָ����׺��5ָ����׺������6������7��ȣ�8ҩ��λ��12345��9��λ���ƣ�10��ɫ����0��1��2��3�ȣ�11��Ч����nill����0�����1��磬nil��nil��nil��nil��nil��nil��nil��nil��20װ������
--��λ���� ���������λҪ�����װ����һ�� ��������װ�����������������λ �ͱ���Ҫ��д 
--���򣬿�����nil���� nilΪ�Զ�ѡ�� 2Ϊ�·� 3Ϊ������ 4Ϊ������ 5Ϊͷ�� 6Ϊ���� 7Ϊ���ָ 8Ϊ�ҽ�ָ 9Ϊ���� 10ΪЬ�� 11Ϊ����

--�߼���װ����
--SetGaoJiHuanZhuangData(job,name,className,wordName,wordClassName,lineSocketCnt,goodsLv,flaskPos,zbPos,color,nType,yxName,yxClassName,yxWordName,yxWordClassName,wxName,wxClassName,wxWordName,wxWordClassName,val,tianFuZhuBaoPos,minLv,maxLv)-- �߼���װ���� ���û�ָ����װ��
--1job ְҵ ֧��(��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ) ���������м���|����
--2name ��Ʒ��
--3className ��Ʒ����
--4wordName ָ����׺
--5wordClassName ָ����׺����
--6lineSocketCnt ��Ҫ���Ķ����� ��������4 ���ͻ��4��Ϊֹ nilΪ����
--7goodsLv ĳЩҪ����Ҫ��Ʒ�ȼ����˲��ܴ���ô�ප����������˴����� ��Ҫ������ 2��Ҫ���ڵ���1�� 3��Ҫ���ڵ���15�� 4��Ҫ���ڵ���28�� 5��Ҫ���ڵ���35�� 6��Ҫ���ڵ���50��
--8flaskPos ҩ����λ װ���Ļ����Ժ��ԣ�ҩ����ʱ�����Ҫ�� nilΪ���� 1 2 3 4 5 ��Ӧ5��ҩ����λ
--9zbPos ��λ���� ���������λҪ�����װ����һ�� ��������װ�����������������λ �ͱ���Ҫ��д ���򣬿�����nil���� nilΪ�Զ�ѡ�� 2Ϊ�·� 3Ϊ������ 4Ϊ������ 5Ϊͷ�� 6Ϊ���� 7Ϊ���ָ 8Ϊ�ҽ�ָ 9Ϊ���� 10ΪЬ�� 11Ϊ����
--10color ��ɫ���� nilΪ���� ���û����������ɺ��� 0Ϊ�� 1Ϊ�� 2Ϊ�� 3Ϊ��
--11nType ��Ч���� nilΪ���ۺ�ʱ����Ч 0Ϊû��ˢ������Ч 1Ϊֻ��ˢ������Ч
--12yxName ���ϻ򱳰���ָ��װ��ʱ����Ч ��Ϊָ��װ�������� �������Ҫ�˹�������nil 
--13yxClassName ���ϻ򱳰���ָ��װ��ʱ����Ч ��Ϊָ��װ�������� �������Ҫ�˹�������nil
--14yxWordName ���ϻ򱳰���ָ��װ��ʱ����Ч ��Ϊָ��װ���Ĵ�׺���� �������Ҫ�˹�������nil
--15yxWordClassName ���ϻ򱳰���ָ��װ��ʱ����Ч ��Ϊָ��װ���Ĵ�׺���� �������Ҫ�˹�������nil
--16wxName ���ϸ���������û��ָ��װ��ʱ����Ч ��Ϊָ��װ�������� �������Ҫ�˹�������nil 
--17wxClassName ���ϸ���������û��ָ��װ��ʱ����Ч ��Ϊָ��װ�������� �������Ҫ�˹�������nil
--18wxWordName ���ϸ���������û��ָ��װ��ʱ����Ч ��Ϊָ��װ���Ĵ�׺���� �������Ҫ�˹�������nil
--19wxWordClassName ���ϸ���������û��ָ��װ��ʱ����Ч ��Ϊָ��װ���Ĵ�׺���� �������Ҫ�˹�������nil
--20val ���� �Լ��������װ���������֣���nilĬ��Ϊ9999��
--21tianFuZhuBaoPos �츳�鱦��λ
--22faZhuangLv ������ ��װ�ȼ� �����ټ�����װ��Ҫװ�� ������ˣ��ͻᰴ�����õĵȼ���װ��Ҫ �����nil�Ļ� ���۴�1����ʼҪ������װ���ӽ���翪ʼҪ
--23minLv ������ �����ټ���Ч
--24maxLv ������ �����ټ�ʧЧ
SetGaoJiHuanZhuangData("ʥ����ɮ","����֮��","Metadata/Items/Armours/BodyArmours/BodyInt1","�޾�֮��","Tabula Rasa",nil,nil,nil,2,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)
SetGaoJiHuanZhuangData("ʥ����ɮ","��������","Metadata/Items/Armours/Shields/ShieldStr17","�{�۵Ęsҫ֮��","Lioneye's Remorse",3,15,nil,4,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)--����
SetGaoJiHuanZhuangData("ʥ����ɮ","�����ָ","Metadata/Items/Rings/Ring8","�`��","Thief's Torment",nil,nil,nil,7,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)--�ҽ�ָ
SetGaoJiHuanZhuangData("ʥ����ɮ","�����","Metadata/Items/Belts/Belt5","���m��˹֮ӡ","Perandus Blazon",nil,nil,nil,11,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)--����
SetGaoJiHuanZhuangData("ʥ����ɮ","�S���o���","Metadata/Items/Amulets/Amulet10","�����o��","The Jinxed Juju",nil,nil,nil,6,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)--����
SetGaoJiHuanZhuangData("ʥ����ɮ","�����޿�","Metadata/Items/Armours/Helmets/HelmetStrInt7","�����ƵĘs��","Geofri's Crest",4,28,nil,5,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)--ͷ��
SetGaoJiHuanZhuangData("ʥ����ɮ","܊�F����","Metadata/Items/Armours/Gloves/GlovesStrInt7","̓��","Null and Void",4,28,nil,9,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)--����
SetGaoJiHuanZhuangData("ʥ����ɮ","܊�F�Lѥ","Metadata/Items/Armours/Boots/BootsStrInt7","܊�y��܊","March of the Legion",4,28,nil,10,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)--Ь��
--SetGaoJiHuanZhuangData("ʥ����ɮ","ˮ��ҩ��","Metadata/Items/Flasks/FlaskUtility6","��θ��","Rotgut",nil,nil,3,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)--ҩˮ
SetGaoJiHuanZhuangData("ʥ����ɮ","����ˎ��","Metadata/Items/Flasks/FlaskUtility5","���׵��`ˎ","Rumi's Concoction",nil,nil,4,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)--ҩˮ
SetGaoJiHuanZhuangData("ʥ����ɮ","���͸���ҩ��","Metadata/Items/Flasks/FlaskHybrid3","���Ӿ���","Divination Distillate",nil,nil,5,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)--ҩˮ

--SetNeedAddTianFu(tfStr)--�����츳�ӵ� tfStr=config.ini�����úõ��츳 ��"Ů��=name1-className1|name2-className2|
SetNeedAddTianFu("ʥ����ɮ=elemental_damage_mana_regen1893-������ħ��|intelligence889-�ǻ�|intelligence940-�ǻ�|intelligence885-�ǻ�|spellcaster_notable1873-�Ʋ�|dexterity869-����|intelligence882-�ǻ�|strength828-����|minion_duration2624_-�ن�������ͳ��m�r�g|minion_duration2625-�ن�������ͳ��m�r�g|minion_duration_notable2626-�־ú���|mastery_minionoffence186-�ن������Ԍ���-11723|intelligence918-�ǻ�|savant901-�W�g��֮�y��|minion_damage285-�ن������|lord_of_the_dead1122-���`֮��|life_mana1639-ħ��������|life_mana_notable1638-���c�`|stun_ignore1680-ʩ�ŕr����ɔ_��Ԫ�ؿ���|stun_ignore_str_dex1678-��̓�錍|intelligence101-�ǻ�|mana_spell_block2610-ħ���ͷ��g���|mana_spell_block_notable2611-��ñډ�|mastery_mana162-ħ������-64875|intelligence902-�ǻ�|mana399-ħ��|deep_thoughts383-���o˼�S|life1219-����|divine_toughness1167-���̜ʂ�|mastery_life137-��������-47642|mana388-ħ���؏ͺ�����|mana397-ħ���؏ͺ�����|life_mana_notable1730-���ٻ؏�|minion_damage1152-�ن�������|minion_life1124-�ن�������|additional_minions1150-�I��|mastery_miniondefence180-�ن�����R����-43400|minion_damage769-�ن��﹥����ʩ���ٶ�|player_and_minion_notable2237-����̖��|life1407-����|discipline_and_training1194-����Ӗ��|physical_and_elemental_damage_2219-Ԫ�؂���|elementalist939-�}��|life1405-����|melee_notable1874-�}��֮��|strength786-����|dexterity973-����|strength998-����|strength1002-����|agility876-��Ⱥ��|strength827-����|strength814-����|shield_block32-�ֶ�Ԫ�ؿ���|shield_defences1063-���Ƹ���ͳֶ�Ԫ�ؿ���|shield_mastery34-���o�}��|mastery_shield212-���ƌ���-30612|life_reduced_mana_cost1934-�����c�p������|life_reduced_mana_cost1936-�����c�p������|life_reduced_mana_cost1935-�����c�p������|life_reduced_mana_notable1937-���|damage_and_minion_damage2226-�ن��﹥����ʩ���ٶ�|intelligence904-�ǻ�|shield_damage_elemental2554-���g���|shield_damage_elemental2558-���g���|shield_damage_elemental_notable2557-���o|life187-�����������o��|life182-�����������o��|life1161-�����������o��|fitness1212-���w֮����|intelligence912-�ǻ�|intelligence919-�ǻ�|intelligence921-�ǻ�|intelligence955-�ǻ�|minion_life1125-�ن��������͂���|minion_damage1128-�ن������|minion_damage1129-�ن������|additional_spectre278-���`�C��|aura_area_of_effect1205-��hЧ������|reduced_mana_reservation1198-����Ч��|reduced_mana_reservation1197-����Ч��|aura_effect_reservation_cost_notable1559-����|intelligence917-�ǻ�|damage_and_minion_damage2228-�ن������������|damage_and_minion_damage2227-�ن������������|player_and_minion_notable2236-���x܊�F|speed_and_minion_speed2231-�ن�������͹�����ʩ���ٶ�|speed_and_minion_speed2230-�ن�������͹�����ʩ���ٶ�|player_and_minion_notable2238-���H|life_regeneration1573-�����؏�|armour170-�o�׺�����|life_regen_armour_notable1732-���Y����|mastery_armour5_-�o�׌���-48720|intelligence945-�ǻ�|strength809-����|strong_arm118-������|life599-����|heart_of_the_gladiator825-��ʿ֮��|minion_damage1126-�ن������������|minion_damage1127-�ن������������|minion_damage284-�ن������������|additional_minions1123-���`֮�s|minion_area_of_effect2628-�ن��ﱩ����|minion_area_of_effect2629-�ن��ﱩ����|minion_area_of_effect_notable2630-�ֲ�֮��|strength811-����|strength824-����|life1209-����|fitness1186-��I|mastery_life136-��������-34242|life700-ħ��������|deep_wisdom900-���o�ǻ�|accuracy_minion_accuracy_and_resists2235-�ن������|accuracy_minion_accuracy_and_resists2234-�ن������|life1409-����|life1210-����|life600-����|")
SetNeedAddTianFu("ʥ����ɮ����=AscendancyGuardian15-���׺��������ܣ��ٻ������˺�|AscendancyGuardian14-��âʥս��|AscendancyGuardian13-���׺��������ܣ��ٻ������˺�|AscendancyGuardian16-����ʥս��|AscendancyGuardian1-�o�׺������o�ܡ�����֏�|AscendancyGuardian4-ϣ���ډ�|")

-- ��ˢը�����;�������
SetNeedAddTianFu([[����ͼ�츳=atlas_path_8-�����؈D����C��|atlas_essence_1_2-����ϡ�ЙC��|atlas_essence_1_4-����ϡ�ЙC��|atlas_essence_1_3-�������A|atlas_alva_1_2-��Խ��Ʒ����|atlas_alva_1_3_-��������|atlas_alva_1_1-��Խ��Ʒ����|atlas_path_6-�����؈D����C��|atlas_path_18-�����؈D����C��|atlas_path_15-�����؈D����C��|atlas_path_2-�����؈D����C��|atlas_ritual_1_1-����C��|atlas_ritual_1_2-����C��|atlas_ritual_1_3-����C��|atlas_ritual_1_4-�}��|atlas_path_17-�����؈D����C��|atlas_map_drops_1-�����}�u�؈D|atlas_wormhole_2_1-���ش��T|atlas_wormhole_2_2__-���ش��T|atlas_map_drops_20-�����}�u�؈D|atlas_map_drops_3-�����}�u�؈D|atlas_keystone_nofragments_1-���R��|atlas_path_28-�����؈D����C��|atlas_harbinger_1_1-�~�����I��Ƭ|atlas_harbinger_1_2_-�~�����I��Ƭ|atlas_harbinger_1_4-�~�����I��Ƭ|atlas_harbinger_1_3-���鵽��|atlas_map_drops_2-�����}�u�؈D|atlas_map_drops_4-�����}�u�؈D|atlas_harbinger_3_1-�~�����I�C��|atlas_harbinger_3_5-�~�����I��Ƭ|atlas_harbinger_3_3-�~�����I��Ƭ|atlas_harbinger_3_4-���������ַ�|atlas_map_drops_10-�����}�u�؈D|atlas_map_drops_11-�����}�u�؈D|atlas_path_88-�����}�u�؈D|atlas_essence_4_3-���d�����~�⾫��C��|atlas_essence_4_2-���d�����~�⾫��C��|atlas_essence_4_1-���d�����~�⾫��C��|atlas_essence_4_4-ˮ����|atlas_map_drops_16-�����}�u�؈D|atlas_map_drops_15-�����}�u�؈D|atlas_essence_3_1-����C��|atlas_essence_3_2-���d�����~�⾫��C��|atlas_essence_3_3-���d�����~�⾫��C��|atlas_essence_3_5-ˮ������|atlas_alva_2_2-��Խ����Ⱥ��С|atlas_alva_2_7-��Խ����Ⱥ��С|atlas_alva_2_1-��Խ����Ⱥ��С|atlas_path_32-��Ʒ����|atlas_essence_2_3-����C��|atlas_essence_2_5-����C��|atlas_essence_2_2-����C��|atlas_essence_2_4-��������|atlas_path_40-��Ʒ����|atlas_path_33-��Ʒ����|atlas_path_81-�����}�u�؈D|atlas_map_drops_6_-�����}�u�؈D|atlas_mod_effect_2-�؈D�~�YЧ��|atlas_keystone_quantity_converted_to_rarity-��ā�a����|atlas_mod_effect_3-�؈D�~�YЧ��|atlas_ritual_2_6-����C��|atlas_ritual_2_2_-�������⪄��C��|atlas_ritual_2_1-�������⪄��C��|atlas_ritual_2_5-���ط�I|atlas_path_82-�����}�u�؈D|atlas_map_drops_14-�����}�u�؈D|atlas_ritual_3_1-����C��|atlas_ritual_3_2-���������M����C��|atlas_ritual_3_5-���������M����C��|atlas_ritual_3_4-؝ؔ��ͽ|atlas_ritual_3_3-������������|atlas_ritual_3_6-������������|atlas_ritual_4253-�`��̗l|atlas_path_85-�����}�u�؈D|atlas_mod_effect_1-�؈D�~�YЧ��|atlas_ritual_4267-����C��|atlas_ritual_4268-���Ӽ������t�r�g|atlas_ritual_4269-���Ӽ������t�r�g|atlas_ritual_4254_-�Ѵ����V|atlas_map_drops_12_-�����}�u�؈D|atlas_ritual_4_1-����C��|atlas_ritual_4263-���Ӽ��돊��|atlas_ritual_4_2-���Ӽ��돊��|atlas_ritual_4_5-���Ӽ�����Ƭ|atlas_ritual_4_4-���Ӽ�����Ƭ|atlas_expedition_3_2-̽�U��������ͨ؛�C��|atlas_expedition_3_4-̽�U��������ͨ؛�C��|atlas_expedition_3_5-����|atlas_keystone_expedition_single_explosive-�O�޿��ŌW|atlas_expedition_3_3_-̽�U�C��|atlas_expedition_4_1-̽�U�C��|atlas_expedition_1_4-�ܳ��Ĳ��w����|atlas_ritual_4264-���Ӽ����������ĺ����������M����C��|atlas_harbinger_3_6-�~�����I�C��|atlas_harbinger_3_2-�~�����I�C��|]])
