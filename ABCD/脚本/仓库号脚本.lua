package.path = GetPackagePath();
local loadArr={"work","TestFunction"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end
g_imBoss=true
g_needMinimizeGame=false
g_timeOut=1*60*60
g_needBuyGoodsDataArr={}--ȡ���ֿ�����û���Ʒ 
AddTaskWork("�Զ��ջ�",AutoBossJiaoYi)
--RemoveAllSaveIndex()--ɾ�����д�ַ��������
--���������� �Ӵ��ൽС������
SetSaveIndex("ͨ��|�ɶѵ�ͨ��","5|4|3",nil,nil,nil,nil,1)
SetSaveIndex("���˿�","1|2|3|4")
SetSaveIndex("�鱦","3")
SetSaveIndex("צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|����|����|�·�|��|����|Ь��|ͷ��|","1|2|3|4")
SetSaveIndex("����ҩ��|ħ��ҩ��|����ҩ��|����ҩ��","1")
SetSaveIndex("����|��ָ|","2")
SetSaveIndex("����ͼ","1")
SetSaveIndex("�������ܱ�ʯ|�������ܱ�ʯ","4")

--����ָ��װ����������
SetGoodsCaoZuo(nil,"3","�۽����","Metadata/Items/Amulets/Amulet6","��˹�ܵ��Ȧ","Bisco's Collar",nil,50,nil,nil,nil,true)
SetGoodsCaoZuo(nil,"3","�β�����","Metadata/Items/Belts/Belt5","������˹֮ӡ","Perandus Blazon",nil,30,nil,nil,nil,true)
SetGoodsCaoZuo(nil,"3","�����ָ","Metadata/Items/Rings/Ring8","�`��","Thief's Torment",nil,50,nil,nil,nil,true)
SetGoodsCaoZuo(nil,"3","����֮��","Metadata/Items/Armours/BodyArmours/BodyInt1","�޾�֮��","Tabula Rasa",nil,50,nil,nil,nil,true)
SetGoodsCaoZuo(nil,"3","��ë����","Metadata/Items/Armours/Gloves/GlovesInt1","�Ա��ߵĻ���","Sadima's Touch",nil,50,nil,nil,nil,true)
SetGoodsCaoZuo(nil,"3","��������","Metadata/Items/Armours/Shields/ShieldStr17","ʨ�۵���ҫ֮��","Lioneye's Remorse",nil,50,nil,nil,nil,true)
SetGoodsCaoZuo(nil,"3","������ѥ","Metadata/Items/Armours/Boots/BootsDexInt3","��ҫ","Sundance",nil,50,nil,nil,nil,true)
SetGoodsCaoZuo(nil,"3","ʿ��֮��","Metadata/Items/Armours/Boots/HelmetStrInt2","˽�j�Ĺ��x","Honourhome",nil,50,nil,nil,nil,true)
SetGoodsCaoZuo(nil,"3","ħ�Է���","Metadata/Items/Armours/Boots/Wand13","����","Moonsorrow",nil,30,nil,nil,nil,true)
SetGoodsCaoZuo(nil,"3","���͸���ҩ��","Metadata/Items/Flasks/FlaskHybrid3","���Ӿ���","Divination Distillate",nil,50,nil,nil,nil,true)

SetSaveIndex(nil,"1|2|3|4","�g����ƿ","Metadata/Items/Currency/Mushrune7")
SetSaveIndex(nil,"1|2|3|4","�p�t��ƿ","Metadata/Items/Currency/Mushrune8")
SetSaveIndex(nil,"1|2|3|4","�����ƿ","Metadata/Items/Currency/Mushrune9")
SetSaveIndex(nil,"1|2|3|4","�����ƿ","Metadata/Items/Currency/Mushrune10")

SetSaveIndex(nil,"1|2|3|4","������Ƭ","Metadata/Items/Currency/CurrencyBreachFireShard")
SetSaveIndex(nil,"1|2|3|4","������Ƭ","Metadata/Items/Currency/CurrencyBreachColdShard")
SetSaveIndex(nil,"1|2|3|4","���S��Ƭ","Metadata/Items/Currency/CurrencyBreachLightningShard")
SetSaveIndex(nil,"1|2|3|4","���������Ƭ","Metadata/Items/Currency/CurrencyBreachPhysicalShard")
SetSaveIndex(nil,"1|2|3|4","�Ğ�����Ƭ","Metadata/Items/Currency/CurrencyBreachChaosShard")
SetSaveIndex(nil,"1|2|3|4","���a������Ƭ","Metadata/Items/Currency/CurrencyLegionKaruiShard")
SetSaveIndex(nil,"1|2|3|4","���a�R����˹��Ƭ","Metadata/Items/Currency/CurrencyLegionMarakethShard")
SetSaveIndex(nil,"1|2|3|4","���a����ۇ���Ƭ","Metadata/Items/Currency/CurrencyLegionEternalEmpireShard")
SetSaveIndex(nil,"1|2|3|4","���a�}����Ƭ","Metadata/Items/Currency/CurrencyLegionTemplarShard")
SetSaveIndex(nil,"1|2|3|4","���a�ߠ���Ƭ","Metadata/Items/Currency/CurrencyLegionVaalShard")
SetSaveIndex(nil,"1|2|3|4","�z������Ⱦ����","Metadata/Items/Currency/CurrencyCorruptMonolith")

--SetSaveIndex(nil,"1|2|3|4","����ʯ","Metadata/Items/Currency/CurrencyRerollRare")
--SetSaveIndex(nil,"1|2|3|4","����ʯ","Metadata/Items/Currency/CurrencyRerollMagic")
--SetSaveIndex(nil,"1|2|3|4","����ʯ","Metadata/Items/Currency/CurrencyUpgradeRandomly")
-- SetSaveIndex(nil,"1|2|3|4","��ɫʯ","Metadata/Items/Currency/CurrencyRerollSocketColours")
-- SetSaveIndex(nil,"1|2|3|4","����ʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks")
-- SetSaveIndex(nil,"1|2|3|4","����ʯ","Metadata/Items/Currency/CurrencyRerollSocketNumbers")

SetSaveIndex(nil,"1|2|3|4","����ʥ��","Metadata/Items/Currency/Mushrune11")
SetSaveIndex(nil,"1|2|3|4","��ɫʥ��","Metadata/Items/Currency/Mushrune12")

SetSaveIndex(nil,"5","ף��ʯ","Metadata/Items/Currency/CurrencyRerollImplicit")
SetSaveIndex(nil,"5","�ɱ�ʯ","Metadata/Items/Currency/CurrencyUpgradeToMagic")
SetSaveIndex(nil,"5","����ʯ","Metadata/Items/Currency/CurrencyAddModToMagic")
SetSaveIndex(nil,"5","������˹���","Metadata/Items/Currency/CurrencyPerandusCoin")
SetSaveIndex(nil,"5","ƽ��ʯ=��ƽʯ","Metadata/Items/Currency/CurrencyRerollMapType")
SetSaveIndex(nil,"5","������=����ʯ","Metadata/Items/Currency/CurrencyStrongboxQuality")

SetSaveIndex(nil,"1|2|3|4","�ᴸ","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace18","��Ĭ֮��","Mj?lner")
SetSaveIndex(nil,"1|2|3|4","�ƳǸ�","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe17","���Ÿ�","Soul Taker")

SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Heist/HeistBlueprintDungeon")--�{�D������� enName:
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Heist/HeistBlueprintReliquary")--�{�D��չ�[�� enName:
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Heist/HeistBlueprintLibrary")--�{�D�������^�� enName:
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Heist/HeistBlueprintRobotTunnels")--�{�D���ص� enName:
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Expedition/ExpeditionLogbook")--̽�U���I

SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabLegion1")--�}���x���n�g���y
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabLegion2")--�}���x���A�����y
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabLegion3")--�}���x��僽���y
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabLegion4")--�}���x��չ����y
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabHarbinger1")--�}���x���n�g���I
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabHarbinger2")--�}���x���A�����I
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabHarbinger3")--�}���x��僽����I
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabHarbinger4")--�}���x��չ�����I
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabBlight1")--�}���x���n�g����
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabBlight2")--�}���x���A������
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabBlight3")--�}���x��僽����
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabBlight4")--�}���x��չ�����
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabSulphite1")--�}���x���n�g����
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabSulphite2")--�}���x���A������
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabSulphite3")--�}���x��僽�����
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Scarabs/ScarabSulphite4")--�}���x��չ������

SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingBleedPoison")--���g��ʯ
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingElemental")--���໯ʯ
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingCasterMods")--��û�ʯ
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingAttackMods")--���X��ʯ
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingMana")--��͸��ʯ
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingSpeed")--���ʯ
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingMinionsAuras")--���ʯ
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingQuality")--�o覻�ʯ
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingEnchant")--��ħ��ʯ
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingSockets")--��ʯ
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyDelveCraftingLuckyModRolls")--���}��ʯ

SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyBreachFireShard",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyBreachColdShard",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyBreachLightningShard",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyBreachPhysicalShard",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyBreachChaosShard",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/MapFragments/BreachFragmentFire")
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/MapFragments/BreachFragmentCold")
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/MapFragments/BreachFragmentLightning")
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/MapFragments/BreachFragmentPhysical")
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/MapFragments/BreachFragmentChaos")
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyBreachUpgradeUniqueFire",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyBreachUpgradeUniqueCold",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyBreachUpgradeUniqueLightning",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyBreachUpgradeUniquePhysical",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyBreachUpgradeUniqueChaos",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyLegionKaruiShard",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyLegionMarakethShard",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyLegionEternalEmpireShard",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyLegionTemplarShard",nil,nil,nil,nil)
SetSaveIndex(nil,"1|2|3|4",nil,"Metadata/Items/Currency/CurrencyLegionVaalShard",nil,nil,nil,nil)

SetSaveIndex(nil,"1",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportUnique")--׿Խ�ɲ���
SetSaveIndex(nil,"1",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportBreachstone")--�����ɲ���
SetSaveIndex(nil,"1",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportMoreHidden")--ȫ��ɲ���
SetSaveIndex(nil,"1",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportCorrupted")--�ߠ��ɲ���
SetSaveIndex(nil,"1",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportDelirium")--�d���ɲ���
SetSaveIndex(nil,"1",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportJuiced")--�����ɲ���
SetSaveIndex(nil,"1",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportBlighted")--����ɲ���
SetSaveIndex(nil,"1",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportGuardian")--�����ɲ���
SetSaveIndex(nil,"1",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportExplorers")--̽�U�҂ɲ���
SetSaveIndex(nil,"1",nil,"Metadata/Items/Currency/CurrencyExtractOil")--���ʹ��
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchRerollRare")--���ܻ���ʯ
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchAddModToRare")--���ܳ��ʯ
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchRemoveMod")--���ܟoЧʯ
SetSaveIndex(nil,"5",nil,"Metadata/Items/MapFragments/CurrencySirusFragment1")--�W��Ɲ���̼y
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencySirusFragment2")--�͂��̼y
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencySirusFragment3")--�D����˹�̼y
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencySirusFragment4")--�S�_���၆�̼y
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencySirusFragmentsComplete")--�������ֿ̼y
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchEmber1")--���A���ܻҠa
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchEmber2")--���A���ܻҠa
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchEmber3")--�ꂥ���ܻҠa
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchEmber4")--׿Խ���ܻҠa
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchIchor1")--���A�����`Һ
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchIchor2")--���A�����`Һ
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchIchor3")--�ꂥ�����`Һ
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyEldritchIchor4")--׿Խ�����`Һ
SetSaveIndex(nil,"5",nil,"Metadata/Items/Currency/CurrencyConflictOrb")--�nͻ����
SetSaveIndex(nil,nil,"Metadata/Items/Currency/CurrencyItemiseSextantModifier")--�{��T���_�P
SetSaveIndex(nil,nil,"Metadata/Items/Currency/CurrencyItemisedSextantModifier")--���ܵ��_�P

--SetSaveIndex("��ָ","1")
SetCompoundDivinationCard("ǫѷ","Metadata/Items/DivinationCards/DivinationCardHumility",0)--���úϳ��ҳ����˿�



