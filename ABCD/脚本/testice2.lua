package.path = GetPackagePath();
local loadArr={"�Զ�����"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end


--ָ��ְҵ  Ұ���ˡ�Ů�ס����塢�����������ߡ���Ӱ��ʥ����ɮ��
g_newRoleJob="����"
--����ְҵ ��ʿ����ͽ�����������͡����ۡ�׷���ߡ������ҡ�Ԫ��ʹ���ٻ�ʦ�������ߡ���ʿ���ھ����й١�ʥ�ڡ��ػ��ߡ���Ӱ��ʦ����թʦ���ƻ��ߡ�����ʹͽ��
g_shengHuaJob="����"
--����ʹ�õ����� ֧��(��}����}צ}ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�) �����Ҫ�������м���|�ֿ�
SetUseWeapon("��|����")
--�����Լ��õ�װ������ 

g_needMinimizeGame=false			--��С���[�򴰿� trueΪ��С�� false��nilΪ����С��
g_imBoss=false					--����ǲֿ��ҪΪtrue �һ���Ϊfalse
g_attackDis=50					--��������
g_yiJieTimeOut=15*60			--����ͼ�ڵĳ�ʱʱ�� ��λΪ�� ���δ���þͻ���g_timeOut *�ǳ˺� ����Ϊ15����60=15����
g_timeOut=25*60					--��һ����ͼ����ʱ�䳬�����õ� �����¿�ͼ���� ��λΪ��
g_addTianFu=true				--�Զ����趨�õ����ü��츳 trueΪ�� nil��falseΪ����
g_shengJiBaoShi=true			--�Զ�������ʯ trueΪ���� nil��falseΪ������
g_sellSkillGem=false				--�Զ�������40Ʒ�ʵļ��ܱ�ʯ
g_notHuanYaoLv=82				--���ڵ��ڶ��ټ�ֻ����ɫ����ҩ 
g_needAutoChangeEquip=false		--�����Զ���װ trueΪ�� nil��falseΪ����
g_needAutoSetBaoShi=false		--�����Զ�����ʯ trueΪ�� nil��falseΪ����
g_bossGiveZhuangBei=false		--����ʱ�ֿ�Ÿ���ȱ�ٵĸ߼���װ�е�װ�� trueΪ�� falseΪ���� �ǶԲֿ�����õ�
g_xiaoHaoGetZhuangBei=false		--�һ�����װ�ֿ��������߼���װ�е�װ�� trueΪ���� falseΪ������ 

SetSaveIndex("ͨ��|�ɶѵ�ͨ��","1")
SetSaveIndex("����ͼ","2")
SetSaveIndex("����|��ָ|צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|����|����|Ь��|ͷ��","3")
SetSaveIndex("�鱦|���˿�|�·�|��|����|��ͼ��Ƭ","2")
SetSaveIndex("����ҩ��|ħ��ҩ��|����ҩ��|����ҩ��","2")
SetSaveIndex(nil,"2","�ħ�۾�","Metadata/Items/Metamorphosis/MetamorphosisEye")
SetSaveIndex(nil,"2","Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy")
SetSaveIndex(nil,"2","朽Yʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks")
SetSaveIndex(nil,"2","����ʯ","Metadata/Items/Currency/CurrencyRerollMagic")


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


g_attackDis=65				--��������
g_duobiHpVal=0.2

g_yiJieLv=70				--���˶��ټ���ȥˢ���
g_checkSellMapCnt=40		--��ͼ������������Ż�����۵�ͼ
g_destroyNoUseMap=false		--�����������ò�ʹ�õĵ�ͼ nil��falseΪ������
g_mapUseFuHaoLv=75			--���ڵ��ڶ��ټ�����ͼʹ�ø���ʯ nilΪ��Զ��ʹ��
g_mapUseZengFuLv=nil			--���ڵ��ڶ��ټ�����ͼʹ������ʯ nilΪ��Զ��ʹ��
g_mapUseDianJingLv=75		--���ڵ��ڶ��ټ��԰�ͼʹ�õ��ʯ nilΪ��Զ��ʹ��
g_mapUseTuiBianLv=60		--���ڵ��ڶ��ټ��԰�ͼʹ���ɱ�ʯ nilΪ��Զ��ʹ��
g_mapUseJiHuiLv=nil			--���ڵ��ڶ��ټ��԰�ͼʹ�û���ʯ nilΪ��Զ��ʹ��
g_mapUseWaErLv=78			--���ڵ��ڶ��ټ��԰ס�����ͼʹ���߶����� nilΪ��Զ��ʹ��
g_mapUseDingZiLv=nil			--���ڵ��ڶ��ټ�ʹ����ͼ�� nilΪ��Զ��ʹ��
g_noUseMapLv=0				--��ʹ�á�������ٽ׼����ϵĵ�ͼ nil��0Ϊ���� �������ȵĵ�ͼ����

SetNoUseMapShuXing("map_monsters_reflect_%_elemental_damage")--���ò���ħ����������
SetNoUseMapShuXing("map_players_no_regeneration_including_es")--�޷��ظ�
SetNoUseMapShuXing("is_blighted_map")--�����ͼ


SetGoodsCaoZuo("ذ��","0|1",nil,nil,nil,nil,nil,nil,"0|1|2",nil,nil,nil,true,nil,function(gd)return not g_setAllSkillGemOk end )--���ܱ�ʯδȫ��װ���Ͼ� ʰȡ ������ɫ ��ɫ ��ɫ����ɫ����װ��


--SetNeedSkillLineData(val,str,invalidLv,pos)--���û����ܱ�ʯ���� 
--val=ÿ�鱦ʯ�ı���ֵ
--str="��ʯ1,��ʯ1����|��ʯ2,��ʯ2����|��ʯ3,��ʯ3����" ��������֮����,���� ��ʯ֮����|����
--invalidLv=ʧЧ�ȼ� ��������ȼ��Ͳ�����Ҫ����
--pos=ָ��λ�� nilΪ�Զ�ѡ�� 2Ϊ�·� 3Ϊ������ 4Ϊ������ 5Ϊͷ�� 6Ϊ���� 7Ϊ���ָ 8Ϊ�ҽ�ָ 9Ϊ���� 10ΪЬ�� 11Ϊ����
--nType ��Ч���� nilΪ���ۺ�ʱ����Ч 0Ϊû��ˢ������Ч 1Ϊֻ��ˢ������Ч


--��ӹ������� name=������ className=�������� noLine=����ֱ�߾��ܹ��� ��ѡ�������ܻ���ϵ���Ѱ�ң�Ҫ�������ļ��ܼ���ǰ��
AddAttackSkillData("�W늼�ʸ","Lightning Arrow")
AddAttackSkillData("��ͨ����","melee")
AddAttackSkillData("�ߠ����W늼�ʸ","Vaal Lightning Arrow",false,50,10)
--SetSkillLimitMaxLv(name,className,maxLv)--���ü��ܱ�ʯ���ȼ� name=���ܱ�ʯ��Ʒ�� className=���ܱ�ʯ��Ʒ���� maxLv=���Ƶ����ȼ�

-- SetYiJieZhaoHuanLingTiData(mapClassName,name,className)--�������ʱ�ٻ����������� mapClassName=����ͼ���� name=������ className=��������

--SetNeedFlaskData(pos,flask,modsData,minLv)--����ҩƿ�ڷ�
SetNeedFlaskData(1,"����ҩ��","nil")
SetNeedFlaskData(2,"����ҩ��","nil")
SetNeedFlaskData(3,"ħ��ҩ��","�;õ�,FlaskEffectNotRemovedOnFullMana1",50)
SetNeedFlaskData(4,"�Ͼ�ҩ��","nil")
SetNeedFlaskData(5,"����ҩ��","nil")


g_addHpVal=0.5--HP���ڶ��ٳԺ�ҩ
g_addMpVal=0.5--MP���ڶ��ٳ���ҩ


--����


--AddShengJiZhuangBeiGoodsData("���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare",0,30,0)--������Ч ����50�����õ����ɫװ��
--AddShengJiZhuangBeiGoodsData("����ʯ","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",1,30,0)--������Ч ����50�����ø�������ɫװ��

--������+ϡ���� ���ʱ����Ч
--SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����|��","base_item_found_rarity_+%",0.5,2)--���A��Ʒ����Ʒ�| +%
--SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����|��","base_item_found_quantity_+%",1.5,2)--��Ʒ���䔵������ %

--�߼���װ����

--SetTaskShengJiData(taskClassName,taskIndex,shengjiMapClassName,needLv)--������ͼʱ���� taskClassName=�������� taskIndex=�������� nilΪ���ԣ�ֻƥ���������� shengjiMapClassName=Ҫˢ�ĵ�ͼ���� needLv=���������ټ�Ϊֹ
SetTaskShengJiData("a5q7",nil,"1_5_5",46,true)--�� �������������� ��ʱ��ˢ����ʥ�ص�50���ٽ�����һ����
SetTaskShengJiData("a9q3",nil,"2_9_1",68,true)--�� ���L���w�� ��ʱ��ˢ�BѪˮ����68���ٽ�����һ����

SetTaskMiGongData("a8q7",nil,1)--���ڵ���a9q1�� ���Թ�1
SetTaskMiGongData("a10q1",nil,2)--���ڵ���a10q1 ���Թ�2
SetTaskMiGongDataByLv(80,3)--���ڵ���80�� ���Թ�3

g_openQlkMaxMapTianFuCnt=90--��ֵ�� �������츳�󲻿�����������nilΪһֱ��
g_useMinLvMapTianFuCnt=90--��ͼ�츳�����ٵ�� �ʹӵͽ׵�ͼ��ʼȡ
SetYiJieShuaTuModeByMapCnt(70,nil,2)--)--���ݲֿ���ĵ�ͼ�����������ˢͼģʽ ����Ӷ�� ���Ǵӵ�ͼ�����ൽ�����жϵ�
SetYiJieShuaTuModeByMapCnt(40,0.7,0)
SetOpenMapMasterData(3)


SetChangeLimitCnt("����|�·�|ͷ��|����|Ь��",0)
SetChangeLimitCnt("����",0)
SetChangeLimitCnt("����|��ָ",0)


--SetNeedAddTianFu(tfStr)--�����츳�ӵ� 
SetNeedAddTianFu("����=attack_speed568-Ͷ�������������|dexterity990-����|dexterity992-����|dexterity995-����|perfect_aim591-�����W|mana1479-ħ����ˎ��Ч��|mana1478-ԭʼ����|stun_recovery544-�����ͱ��╞ѣ|avoid_stun553-��ľ֮��|stun_recovery543-�����ͱ��╞ѣ|finesse993-����|intelligence957-�ǻ�|dexterity848-����|dexterity855-����|dexterity856-����|might770-�oη|dexterity872-����|weapon_elemental_damage1263-����Ԫ�؂���|weapon_elemental_damage1264-����Ԫ�؂���|weapon_ele_notable1700-��Ȼ֮��|dexterity865-����|dexterity866-����|dexterity864-����|dexterity1986-����|jewel_slot1960-���A�錚���|deadly_draw680-�wʸ�ڎ�|projectile_pierce_notable1687-�����ʸ|attack_damage_notable2242-�������|greater_impact638-���`ף��|shield_mastery440-��Ȼ��һ|weapon_elemental_damage_notable2165-̫��֮��|aura_area_of_effect1203-��hЧ������|reduced_mana_reservation1199-����Ч��|aura_effect_reservation_cost_notable1558-����|dexterity860-����|dexterity867-����|intelligence927-�ǻ�|intelligence926-�ǻ�|mana1647-ħ��|mind_drinker302-���`�g|mastery_mana164-ħ������-64875|strength815-����|dexterity981-����|agility965-���C֮�w|life703-����|fitness617-ѪҺ��ȡ|life1220-����|mental_acuity1046-ԎӋ|critical_strike_chance1019-������|assassination1239-�̚�|life1415-����|life_life_leech1629-��Ѫ��|mastery_life135-��������-47642|accuracy587-���кͱ�����|accuracy586-���кͱ�����|deadeye588-�����R|damage_area_projectile_speed_2296-���Еr�@��������ħ��|projectile_damage_projectile_speed1628-�f�I��|mastery_leech127-͵ȡ����-62252|bow_damage506-���Ă���|bow_damage_and_speed499-�������ʺͼӳ�|bow_damage_and_speed502-�������ʺͼӳ�|bow_damage_and_speed496-�������ʺͼӳ�|king_of_the_hill529-����֮��|mastery_bow34-������-56951|evasion1692-�W���cԪ�ؿ���|evasion_resists_notable1691-���e����|mark_generic1224-����ӛ���˵Ă���|mark_generic1225-����ӛ���˵Ă���|mark_generic_notable1226-��ӛ�C��|dexterity862-����|life1216-����|life1412-����|alchemist532-ˎ�݌W|dual_wield_damage2125-�Ƅ��ٶȺͷ��g����|attack_move_speed_notable1792-����|dual_wield_damage726-�Ƅ��ٶȺͷ��g����|claws_of_the_pride489-ֱ�X|intelligence1993-�ǻ�|jewel_slot1961-���A�錚���|dagger_damage264-ذ�ׂ���|dagger_damage_and_critical_strike_chance465-ذ�ױ����ʺͱ����ӳ�|dagger_damage_and_critical_strike_multiplier262-ذ�ױ����ʺͼӳ�|dagger_damage_and_critical_strike_multiplier263-ذ�ױ����ʺͼӳ�|dagger_global_crit_notable2527-����|claw_damage274-צ�Ă���|claw_damage1809-צ�Ă����͹����ٶ�|claw_damage491-צ�Ă����͹����ٶ�|claw_damage1810-צ�Ă����͹����ٶ�|eagle_talons273-�oצ|dexterity861-����|dexterity873-����|bow_critical_strike_chance675-Ͷ���﹥��������|bow_critical_strike_chance674-Ͷ���﹥��������|heartpierce676-�����hâ|mastery_bow33-Ͷ�����-1167|mastery_elemental99-Ԫ�،���-17942|attack_channel_charge2394-���g����|attack_channel_charge2393-���g����|attack_channel_charge2395-���g����|attack_channel_charge_notable2396-����ٹ�|mastery_attack14-���g���֌���-45317|dexterity858-����|projectile_attacks2430-Ͷ�������|projectile_attacks2433-Ͷ����������ٶ�|projectile_attacks_notable2434-�L��|life1167-�����ͱ���Ԫ�خ�����B|life1156-�����ͱ���Ԫ�خ�����B|life1120-�����ͱ���Ԫ�خ�����B|thick_skin1157-����֮�w|")
SetNeedAddTianFu("��������=AscendancyDeadeye3-Ͷ��������������ٶ�|AscendancyDeadeye14-���L|AscendancyDeadeye5-Ͷ���������������|AscendancyDeadeye4-����|AscendancyDeadeye17-Ͷ���������������|AscendancyDeadeye6-�o�ޏ�ˎ|AscendancyDeadeye19-Ͷ��������������ٶ�|AscendancyDeadeye20_-�L֮���l|") 
SetNeedAddTianFu("�����鱦=jewel_slot1960-���A�錚���-4-��t�錚-Metadata/Items/Jewels/JewelStr-ϣ��֮�L-Thread of Hope|jewel_slot1961-���A�錚���-5-��G�錚-Metadata/Items/Jewels/JewelDex-�{�۵��E��-Lioneye's Fall|") 
