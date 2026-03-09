package.path = GetPackagePath();
local loadArr={"自动任务"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end
g_needMengYanLv=90--70级以后就点梦魇
SetTaskShengJiData("a9q1",nil,"2_9_1",60)--水道72等
SetTaskShengJiData("a5q7",nil,"1_5_5",46)--做 到奇塔弗的受难 的时候刷纯净圣地到50级再进行下一任务
--指定职业  野蛮人、女巫、贵族、游侠、决斗者、暗影、圣堂武僧、
g_newRoleJob="女巫"
--升华职业 勇士、暴徒、酋长、侠客、锐眼、追猎者、秘术家、元素使、召唤师、处刑者、卫士、冠军、判官、圣宗、守护者、暗影大师、欺诈师、破坏者、升华使徒、
g_shengHuaJob="秘术家"
--SetUseWeapon(str)--设置使用的武器 支持(盾}箭袋}爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 如果需要用两样中间用|分开
SetUseWeapon("法杖|盾")
SetUseZhuangBeiTypeData("StrInt","手套")
SetUseZhuangBeiTypeData("StrInt","衣服")
SetUseZhuangBeiTypeData("Int","鞋子")
SetUseZhuangBeiTypeData("StrInt","头盔")

g_attackDis=60					--攻击距离




--SetUseZhuangBeiTypeData(typeStr,pos)--设置自己用的装备类型 
--typeStr=类型 支持("StrDex"为决斗者装+护甲闪避 "Str"为野蛮人装+护甲 "DexInt"为暗影装+闪避护盾 "Int"为女巫装+护盾 "Dex"为游侠装+闪避 "StrInt"为圣堂武僧装+力量护盾)
--pos=部位支持部位 支持(戒指|项链|腰带|鞋子|手套|衣服|头盔|盾|箭袋|爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 不填或nil为设置所有
SetUseZhuangBeiTypeData("Int")
--SetNeedSkillLineData(val,str,invalidLv)--设置换技能宝石数据 
--val=每块宝石的比重值
--str="宝石1,宝石1类名|宝石2,宝石2类名|宝石3,宝石3类名" 名与类名之间用,隔开 宝石之间用|隔开
--invalidLv=失效等级 超过这个等级就不会需要他了
--str="宝石1,宝石1类名|宝石2,宝石2类名|宝石3,宝石3类名" 名与类名之间用,隔开 宝石之间用|隔开
--invalidLv=失效等级 超过这个等级就不会需要他了
--SetNeedSkillLineData(val,str,invalidLv,pos)--设置换技能宝石数据 
--val=每块宝石的比重值
--str="宝石1,宝石1类名|宝石2,宝石2类名|宝石3,宝石3类名" 名与类名之间用,隔开 宝石之间用|隔开
--invalidLv=失效等级 超过这个等级就不会需要他了
--pos=指定位置 nil为自动选择 2为衣服 3为主武器 4为副武器 5为头盔 6为项链 7为左戒指 8为右戒指 9为护手 10为鞋子 11为腰带
--nType 有效场景 nil为无论何时都有效 0为没在刷异界才有效 1为只在刷异界才有效





SetNeedSkillLineData(50,"火球,Metadata/Items/Gems/SkillGemFireball",20)
SetNeedSkillLineData(90,"召唤愤怒狂灵,Metadata/Items/Gems/SkillGemSummonRagingSpirit|召唤生物伤害(辅),Metadata/Items/Gems/SupportGemMinionDamage",16)
SetNeedSkillLineData(80,"召唤灵体,Metadata/Items/Gems/SkillGemRaiseSpectre|元素軍隊輔助,Metadata/Items/Gems/SupportGemSummonElementalResistance|肉盾輔助,Metadata/Items/Gems/SupportGemMeatShield|豢養狂熱輔助,Metadata/Items/Gems/SupportGemFeedingFrenzy|召喚幻影輔助,Metadata/Items/Gems/SupportGemSummonGhostOnKill|施放迴響輔助,Metadata/Items/Gems/SupportGemMulticast",nil,nil,0)
SetNeedSkillLineData(95,"魔卫复苏,Metadata/Items/Gems/SkillGemRaiseZombie|多重打擊輔助,Metadata/Items/Gems/SupportGemMultistrike|近戰物理傷害輔助,Metadata/Items/Gems/SupportGemMeleePhysicalDamage|召喚物傷害輔助,Metadata/Items/Gems/SupportGemMeatShield",nil,nil,0)
SetNeedSkillLineData(100,"赦免,Metadata/Items/Gems/SkillGemAbsolution|召喚幻影輔助,Metadata/Items/Gems/SupportGemSummonGhostOnKill|施放迴響輔助,Metadata/Items/Gems/SupportGemMulticast|附加火焰傷害輔助,Metadata/Items/Gems/SupportGemAddedFireDamage",nil,nil,0)
SetNeedSkillLineData(80,"烈焰冲刺,Metadata/Items/Gems/SkillGemFlameDash|元素淨化,Metadata/Items/Gems/SkillGemPurity|快速攻擊輔助,Metadata/Items/Gems/SupportGemFasterAttack",nil,4,0)
SetNeedSkillLineData(80,"神聖火舌圖騰,Metadata/Items/Gems/SkillGemFlameTotemRoyale|暴風之盾,Metadata/Items/MicrotransactionSkillEffects|号召,Metadata/Items/Gems/SkillGemConvocation",nil,nil,0)
SetNeedSkillLineData(75,"召喚食腐魔像,Metadata/Items/Gems/SkillGemSummonCarrionGolem|召喚聖物,Metadata/Items/Gems/SkillGemSummonRelic|肉盾輔助,Metadata/Items/Gems/SupportGemMeatShield",nil,nil,0)

-- SetNeedSkillLineData(100,"熔岩之擊,Metadata/Items/SkillGemMoltenStrike|先祖怒嚎輔助,Metadata/Items/Gems/SupportGemSpiritStrike|殘暴輔助,Metadata/Items/Gems/SupportGemRuthless",16)
SetNeedSkillLineData(100,"召唤灵体,Metadata/Items/Gems/SkillGemRaiseSpectre|肉盾輔助,Metadata/Items/Gems/SupportGemMeatShield|豢養狂熱輔助,Metadata/Items/Gems/SupportGemFeedingFrenzy|召喚幻影輔助,Metadata/Items/Gems/SupportGemSummonGhostOnKil",nil,2,1)
SetNeedSkillLineData(85,"魔卫复苏,Metadata/Items/Gems/SkillGemRaiseZombie|召喚物傷害輔助,Metadata/Items/Gems/SupportGemMinionDamage|召喚物速度輔助,Metadata/Items/Gems/SupportGemMinionSpeed|肉盾輔助,Metadata/Items/Gems/SupportGemMeatShield",nil,5,1)
-- SetNeedSkillLineData(100,"霸氣之擊,Metadata/Items/Gems/SkillGemDominatingBlow|先祖怒嚎輔助,Metadata/Items/Gems/SupportGemSpiritStrike|多重打擊輔助,Metadata/Items/Gems/SupportGemMultistrike|快速攻击(辅),Metadata/Items/Gems/SupportGemFasterAttack|護體輔助,Metadata/Items/Gems/SupportGemFortify|近戰物理傷害輔助,Metadata/Items/Gems/SupportGemMeleePhysicalDamage")
SetNeedSkillLineData(80,"暴風之盾,Metadata/Items/MicrotransactionSkillEffects|褻瀆,Metadata/Items/Gems/SkillGemDesecrateRoyale|号召,Metadata/Items/Gems/SkillGemConvocation|神聖火舌圖騰,Metadata/Items/Gems/SkillGemFlameTotemRoyale",nil,10,1)
SetNeedSkillLineData(80,"元素淨化,Metadata/Items/Gems/SkillGemPurity|烈焰冲刺,Metadata/Items/Gems/SkillGemFlameDash|反抗之旗,Metadata/Items/Gems/SkillGemDefianceBanner",nil,4,1)
SetNeedSkillLineData(95,"赦免,Metadata/Items/Gems/SkillGemAbsolution|召喚幻影輔助,Metadata/Items/Gems/SupportGemSummonGhostOnKill|施放迴響輔助,Metadata/Items/Gems/SupportGemMulticast|附加火焰傷害輔助,Metadata/Items/Gems/SupportGemAddedFireDamage",nil,9,1)
-- SetNeedSkillLineData(95,"赦免,Metadata/Items/Gems/SkillGemAbsolution|咒術降臨輔助,Metadata/Items/Gems/SupportGemCurseOnHit|元素要害,Metadata/Items/Gems/SkillGemElementalWeakness|衰弱,Metadata/Items/Gems/SkillGemEnfeeble",nil,9,1)
SetNeedSkillLineData(75,"召喚食腐魔像,Metadata/Items/Gems/SkillGemSummonCarrionGolem|召喚聖物,Metadata/Items/Gems/SkillGemSummonRelic|召喚物傷害輔助,Metadata/Items/Gems/SupportGemMeatShield",nil,3,1)





--SetSkillLimitMaxLv(name,className,maxLv)--设置技能宝石最大等级 name=技能宝石物品名 className=技能宝石物品类名 maxLv=限制的最大等级
SetSkillLimitMaxLv("受伤时施放(辅)","Metadata/Items/Gems/SupportGemCastOnDamageTaken",10)
SetSkillLimitMaxLv("骸骨奉献","Metadata/Items/Gems/SkillGemBoneOffering",8)
-- SetSkillLimitMaxLv("熔岩护盾","Metadata/Items/Gems/SkillGemMoltenShell",10)
-- SetSkillLimitMaxLv("号召","Metadata/Items/Gems/SkillGemConvocation",7)
SetSkillLimitMaxLv("熔岩护盾","Metadata/Items/Gems/SkillGemMoltenShell",12)
SetSkillLimitMaxLv("時空鎖鏈","Metadata/Items/Gems/SkillGemTemporalChains",11)




--AddAttackSkillData(name,className,noLine)--添加攻击技能 name=技能名 className=技能类名 noLine=不在直线就能攻击 挑选攻击技能会从上到下寻找，要把厉害的技能加在前面

---找地图召唤幽魂
---找地图召唤幽魂
SetYiJieZhaoHuanLingTiData("1_5_2","驱刑者","Metadata/Monsters/TemplarSlaveDriver/TemplarSlaveDriver")

--重擊

AddAttackSkillData("赦罪","absolution")
--AddAttackSkillData("电弧","arc")
AddAttackSkillData("召唤愤怒狂灵","summon_raging_spirit",true)
--AddAttackSkillData("大地震擊","sunder")
AddAttackSkillData("霸氣之擊","conversion_strike")
--AddAttackSkillData("大地震擊","sunder")
--AddAttackSkillData("熔岩之擊","molten_strike")
AddAttackSkillData("靈體投擲","thrown_weapon")
AddAttackSkillData("火球","fireball")
AddAttackSkillData("普通攻击","melee")

--SetNeedZhaoHuanMonster(name,className,val)--设置需要召唤的灵体会自动选择比重大的召唤 name=怪物名 className=怪物类名 val=比重
-- SetNeedZhaoHuanMonster("废墟地狱犬","Metadata/Monsters/Hellion/Hellion3",6)
SetNeedZhaoHuanMonster("驱刑者","Metadata/Monsters/TemplarSlaveDriver/TemplarSlaveDriver",50)
SetNeedZhaoHuanMonster("太阳军卫","Metadata/Monsters/HolyFireElemental/HolyFireElementalSolarisBeam",4)
SetNeedZhaoHuanMonster("冰哨带","Metadata/Monsters/Guardians/GuardianFire_Blue",3)--冰哨带
SetNeedZhaoHuanMonster("火炎哨带","Metadata/Monsters/Guardians/GuardianFire",2)
SetNeedZhaoHuanMonster("诡异行者","Metadata/Monsters/WickerMan/WickerMan",1)
SetNeedZhaoHuanMonster("恶魔奴隶","Metadata/Monster/CageSpider/CageSpider2",1)

--SetSkillLimitMaxLv(name,className,maxLv)--设置技能宝石最大等级 name=技能宝石物品名 className=技能宝石物品类名 maxLv=限制的最大等级
SetSkillLimitMaxLv("受伤时施放(辅)","Metadata/Items/Gems/SupportGemCastOnDamageTaken",10)
--SetSkillLimitMaxLv("暗影迷蹤","Metadata/Items/Gems/SkillGemPhaseRun",1)
SetSkillLimitMaxLv("血肉奉獻","Metadata/Items/Gems/SkillGemFleshOffering",13)
SetSkillLimitMaxLv("鋼筋鐵骨","Metadata/Items/Gems/SkillGemSteelskin",15)

---------------------------------------换装设置
--SetAtuoChangeEquipData(job,pos,name,val,yijie) 计算方式如下 定义过的属性值乘以比重值  哪样装备高就会用哪样
--job 职业 支持(暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧) 可填多个，中间用|隔开
--pos 部位 支持(戒指|项链|腰带|鞋子|手套|衣服|头盔|盾|箭袋|爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 可填多个，中间用|隔开
--name 属性名 支持游戏内的装备属性名 还有其他的自定义名(物理伤害、护甲、护盾、闪避、连洞、总洞)
--val 比重值 支持小数
--nType 换装类型 0或nil或不填为一直有效 1为跑图时才有效 2为异界时才有效
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|贵族|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","fire_and_cold_damage_resistance_%",0.2)--火焰与冰霜伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|贵族|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","fire_and_lightning_damage_resistance_%",0.2)--火焰与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|贵族|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","cold_and_lightning_damage_resistance_%",0.2)--冰霜与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|贵族|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","base_resist_all_elements_%",0.3)--全元素抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|贵族|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","base_fire_damage_resistance_%",0.1)--基础火焰伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|贵族|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","base_cold_damage_resistance_%",0.1)--基础冰霜伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|贵族|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","base_lightning_damage_resistance_%",0.1)--基础闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|贵族|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","cold_damage_resistance_%",0.1)--冰霜抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|贵族|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","fire_damage_resistance_%",0.1)--火焰抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|贵族|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","lightning_damage_resistance_%",0.1)--闪电抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|贵族|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","base_movement_velocity_+%",0.3)--基础移动速度 +%
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|贵族|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","movement_velocity_+%",0.3)--移动速度 +%
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|贵族|圣堂武僧","法杖|短杖|盾|双手斧|鞋子|手套|头盔","连洞",100)--每连一线加xx点比重
--女巫
SetAtuoChangeEquipData("女巫","鞋子|手套|衣服|头盔","护盾",0.1)--每一护盾
SetAtuoChangeEquipData("女巫","盾","护甲",0.1)--盾加护甲用来放受伤施放宝石
SetAtuoChangeEquipData("女巫","盾","base_maximum_life",0.8)--盾加基礎最大生命
SetAtuoChangeEquipData("女巫","手套","base_maximum_life",0.5)--加基礎最大生命
SetAtuoChangeEquipData("女巫","腰带","base_maximum_life",0.5)--加基礎最大生命
SetAtuoChangeEquipData("女巫","法杖","minion_damage_+%",9999,2)--召唤伤害基底
--掉落率+稀有率 异界时才有效
--SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|贵族|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|法杖|盾","base_item_found_rarity_+%",0.5,2)--基礎物品掉落品質 +%
--SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|贵族|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|法杖|盾","base_item_found_quantity_+%",1.5,2)--物品掉落數量增加 %

---------------------------------------高级换装
--SetGaoJiChangeEquipData(job,name,className,wordName,wordClassName,lineSocketCnt) 高级换装设置 设置换指定的带指定词缀的装备
--job 职业 支持(暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧|贵族) 可填多个，中间用|隔开
--name 物品名
--className 物品类名
--wordName 指定词缀
--wordClassName 指定词缀类名
--lineSocketCnt 需要连的洞数量 比如设置4 他就会打到4连为止 nil或0或不填为忽略 首饰不用填
SetGaoJiHuanZhuangData("女巫","帝金护身符","Metadata/Items/Amulets/Amulet6","冬之心","Winterheart")
-- SetGaoJiHuanZhuangData("野蛮人","饰布腰带","Metadata/Items/Belts/Belt5","普兰德斯之印","Perandus Blazon")
-- SetGaoJiHuanZhuangData("贵族","金光戒指","Metadata/Items/Rings/Ring4","贪欲之记","Andvarius")
-- SetGaoJiHuanZhuangData("女巫","简易之袍","Metadata/Items/Armours/BodyArmours/BodyInt1","无尽之衣","Tabula Rasa")
SetGaoJiHuanZhuangData("女巫","精製環甲","Metadata/Items/Armours/BodyArmours/BodyStrInt8","冰息","Icetomb",4,39)
SetGaoJiHuanZhuangData("女巫","羊毛手套","Metadata/Items/Armours/Gloves/GlovesInt1","猎宝者的护手","Sadima's Touch",4,28)
-- SetGaoJiHuanZhuangData("女巫","坚毅塔盾","Metadata/Items/Armours/Shields/ShieldStr17","狮眼的荣耀之盾","Lioneye's Remorse",3,15)
SetGaoJiHuanZhuangData("女巫","环带长靴","Metadata/Items/Armours/Boots/BootsDexInt3","日耀","Sundance",4,28)
SetGaoJiHuanZhuangData("女巫","节庆之面","Metadata/Items/Armours/Helmets/HelmetDexInt4","共鸣之面","Leer Cast",4,28)
SetGaoJiHuanZhuangData("女巫","三相戒指","Metadata/Items/Rings/Ring8","竊罪","Thief's Torment")
--SetGaoJiHuanZhuangData("女巫","強化巨盔","Metadata/Items/Armours/Helmets/HelmetStrInt7","吉爾菲的榮光","Geofri's Crest",4,28)
--SetGaoJiHuanZhuangData("贵族","瓦爾戰斧","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe20","劊子手．傑克","Augyre",3,15)
-- SetGaoJiHuanZhuangData("女巫","大型复合药剂","Metadata/Items/Flasks/FlaskHybrid3","宝视精华","Divination Distillate",nil,nil,2)
-- SetGaoJiHuanZhuangData("女巫","钢影护手","Metadata/Items/Armours/Gloves/GlovesStrDex4","富贵之运","Aurseize",4,28)
-- SetGaoJiHuanZhuangData("女巫","超越壁壘","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw12","裂臟鉤","Advancing Fortress",3,15,nil,3)
-- SetGaoJiHuanZhuangData("女巫","金光戒指","Metadata/Items/Rings/Ring4",nil,nil,nil,nil,nil,7,0,1,"帝金護身符","Metadata/Items/Amulets/Amulet6","苦行","The Ascetic")
-- SetGaoJiHuanZhuangData("女巫","金光戒指","Metadata/Items/Rings/Ring4",nil,nil,nil,nil,nil,8,1,1,"帝金護身符","Metadata/Items/Amulets/Amulet6","苦行","The Ascetic")
--AddWebNeedBuyGoods("帝金護身符","Metadata/Items/Amulets/Amulet6","苦行","The Ascetic",nil,"混沌石","Metadata/Items/Currency/CurrencyRerollRare",1,35,1)
-- SetGaoJiHuanZhuangData("女巫","砂影短靴","Metadata/Items/Armours/Boots/BootsDex4","龍炎足跡","Goldwyrm",4,28)
-- SetGaoJiHuanZhuangData("女巫","帝金護身符","Metadata/Items/Amulets/Amulet6","苦行","The Ascetic")
--AddWebNeedBuyGoods("堅毅塔盾","Metadata/Items/Armours/Shields/ShieldStr17","獅眼的榮耀之盾","Lioneye's Remorse",70,"混沌石","Metadata/Items/Currency/CurrencyRerollRare",1,30,1,false)
--AddWebNeedBuyGoods("超越壁壘","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw12","裂臟鉤","Advancing Fortress",50,"混沌石","Metadata/Items/Currency/CurrencyRerollRare",1,3,1,false)
--AddWebNeedBuyGoods("帝金护身符","Metadata/Items/Amulets/Amulet6","冬之心","Winterheart",40,"混沌石","Metadata/Items/Currency/CurrencyRerollRare",1,2,1,false)
SetGaoJiHuanZhuangData("女巫","烏木塔盾","Metadata/Items/Armours/Shields/ShieldStr14","五芒屏障","Chernobog's Pillar",3,15)
-- SetGaoJiHuanZhuangData("女巫","巨型塔盾","Metadata/Items/Armours/Shields/ShieldStr16","漢恩的遺產","Ahn's Heritage",3,15)

-- AddWebNeedBuyGoods("砂影短靴","Metadata/Items/Armours/Boots/BootsDex4","龍炎足跡","Goldwyrm",28,"混沌石","Metadata/Items/Currency/CurrencyRerollRare",1,20,1,nil,"外延:物品掉落数量提高 #%,8")

-- SetUseBuffSkill("血肉与岩石","blood_sand_armour","血肉","blood_armour")--
SetUseBuffSkill("血肉与岩石","blood_sand_armour","岩石","sand_armour")--

SetGaoJiHuanZhuangData("女巫","皮革腰帶","Metadata/Items/Belts/Belt3",nil,nil,nil,nil,nil,11,1,1)
-- SetGaoJiHuanZhuangData("女巫","帝金護身符","Metadata/Items/Amulets/Amulet6","苦行","The Ascetic")
-- SetGaoJiHuanZhuangData("女巫","金光戒指","Metadata/Items/Rings/Ring4",nil,nil,nil,nil,nil,7,0,1)
-- SetGaoJiHuanZhuangData("女巫","金光戒指","Metadata/Items/Rings/Ring4","贪欲之记","Andvarius",nil,nil,nil,8,nil,1)

SetZhengTiColorVarData(10,1,1,2,0,600,true)--鞋子颜色
SetZhengTiColorVarData(9,1,0,3,0,600,true)--护手颜色
SetZhengTiColorVarData(5,2,0,2,0,600,true)--头盔颜色

--SetNeedSkillLineData(val,str,invalidLv,pos)--设置换技能宝石数据 
--val=每块宝石的比重值
--str="宝石1,宝石1类名|宝石2,宝石2类名|宝石3,宝石3类名" 名与类名之间用,隔开 宝石之间用|隔开
--invalidLv=失效等级 超过这个等级就不会需要他了
--pos=指定位置 nil为自动选择 2为衣服 3为主武器 4为副武器 5为头盔 6为项链 7为左戒指 8为右戒指 9为护手 10为鞋子 11为腰带
--nType 有效场景 nil为无论何时都有效 0为没在刷异界才有效 1为只在刷异界才有效

--SetNeedSkillLineData(30,"熔岩之擊,Metadata/Items/SkillGemMoltenStrikestr",50,nil)




--SetGaoJiHuanZhuangData("女巫","帝金护身符","Metadata/Items/Amulets/Amulet6","苦行","The Ascetic",nil,nil,nil,nil,nil,1)

--SetNeedAddTianFu(tfStr)--设置天赋加点 tfStr=config.ini里设置好的天赋 如"女巫=name1-className1|name2-className2|"
SetNeedAddTianFu("女巫=spell_damage721-法術傷害和魔力|intelligence922-智慧|intelligence920-智慧|intelligence918-智慧|strength828-力量|minion_duration2624_-召喚物傷害和持續時間|minion_duration2625-召喚物傷害和持續時間|minion_duration_notable2626-持久合作|mastery_minionoffence186-召喚物侵略專精-40073|intelligence882-智慧|dexterity869-敏捷|intelligence885-智慧|spellcaster_notable1873-制裁|life1407-生命|discipline_and_training1194-嚴峻訓練|life1405-生命|melee_notable1874-聖潔之力|savant901-奧術師之統御|minion_damage285-召喚物傷害|lord_of_the_dead1122-亡靈之主|strength786-力量|dexterity973-敏捷|minion_damage1126-召喚物傷害和命中|minion_damage1127-召喚物傷害和命中|minion_damage284-召喚物傷害和命中|additional_minions1123-亡靈之約|minion_damage1152-召喚物生命|minion_life1124-召喚物生命|minion_damage769-召喚物攻擊和施放速度|player_and_minion_notable2237-精神號令|additional_minions1150-獻祭|mastery_miniondefence180-召喚物防禦專精-46636|intelligence890-智慧|intelligence886-智慧|agility834-靈敏|intelligence921-智慧|intelligence955-智慧|minion_life1125-召喚物生命和傷害|minion_damage1128-召喚物傷害|minion_damage1129-召喚物傷害|additional_spectre278-亡靈諧曲|strength1000-力量|strength814-力量|shield_block32-持盾元素抗性|shield_block_and_block_recovery29-持盾盾牌法術格擋和元素抗性|shield_mastery34-庇護聖所|shield_defences1063-盾牌格擋和持盾元素抗性|life_mana1639-魔力和生命|life_mana_notable1638-心與靈|intelligence919-智慧|intelligence912-智慧|intelligence917-智慧|speed_and_minion_speed2231-召喚物傷害和攻擊和施放速度|speed_and_minion_speed2230-召喚物傷害和攻擊和施放速度|player_and_minion_notable2238-救贖|accuracy_minion_accuracy_and_resists2235-召喚物傷害|player_and_minion_notable2240-精神救助|accuracy_minion_accuracy_and_resists2234-召喚物傷害|player_and_minion_notable2236-正義軍團|life1161-生命和能量護盾|fitness1212-肉體之純潔|intelligence101-智慧|intelligence902-智慧|life1219-生命|divine_toughness1167-殘忍準備|life1409-生命|strength1001-力量|life1210-生命|fitness1186-奉獻|life1209-生命|mastery_life136-生命專精-47642|strength998-力量|intelligence945-智慧|strength809-力量|strong_arm118-為戰而生|life599-生命|heart_of_the_gladiator825-戰士之心|life600-生命|troll's_blood203-戰士之血|strength829-力量|strength792-力量|strength785-力量|life_and_armour1901-生命與護甲|life_armour_flask_life_notable1903-戰神|mastery_life134-護甲專精-10680|strength818-力量|strength820-力量|armour91-護甲和元素抗性|armour93-護甲和元素抗性|steel_skin1275-堅鋼之靈|life1195-生命|life1221-生命|life1169-生命|bloodless156-無血之體|mastery_armour10-護甲專精-48720|strength1002-力量|agility876-超群身法|savant878-先祖智慧|life204-生命和護甲|life185-生命和護甲|armour87-生命和護甲|life186-生命和護甲|mastery_minionoffence184-召喚物侵略專精-41544|mastery_life131-生命專精-34242|mana388-魔力回復和生命|mana397-魔力回復和生命|life_mana_notable1730-快速回復|life700-魔力和生命|life_and_armour1902-生命與護甲|life182-生命和能量護盾|life187-生命和能量護盾|")
SetNeedAddTianFu("女巫升华=|AscendancyOccultist5-能量護盾、能量護盾回復速率|AscendancyOccultist10-殘劣壁壘|AscendancyOccultist3-能量護盾、冰冷和混沌傷害|AscendancyOccultist11-虛無之塔|AscendancyOccultist13-能量護盾、混沌傷害|AscendancyOccultist15-凋零光環|")


g_yiJieLv=65				    --够了多少级才去刷异界