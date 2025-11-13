package.path = GetPackagePath();
local loadArr={"自动任务"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end
g_changeHunDunLv=84         --多少级前不换C
g_zhuaShenLv=99             --多少级前不抓众神
g_yuyanCnt=99				--够多少银币去预言
g_needSuDiLv=99             --大于等于多少级打宿敌
g_needLieXiLv=99			--大於等于多少级打裂缝
g_needTaFangLv=99			--大于等于多少级打塔防
g_needMengYanLv=99          --大于等于多少级打梦魇
g_needChuanYueLv=99      	--大于等于多少级打穿越
g_yongHengShiBeiLv=99		--大于等于多少级打永恒
g_attackFreezeMonsterLv=80	--大于等于多少级打精髓
g_needZhuangYuanLv=80       --大于等于多少级打庄园
g_needLianMoLv=80			--大于等于多少级打炼魔
g_needZaFenLv=80		    --大于等于多少级打炸坟
g_needMiWuLv=80				--大于等于多少级打迷雾
g_needYongBingLv=70         --满多少级打佣兵玩法

g_addTianFu=true			--自动按设定好的配置加天赋 true为加 nil或false为不加
g_needAutoChangeEquip=true		--开启自动换装 true为换 nil或false为不换
g_youXianMapLv=90                    --取图时人物满多少级就从高阶开始取
--SetMapGongYi("神諭聯盟")                   --每次开图时选择諭工艺
g_needAutoSetBaoShi=true		--开启自动换宝石 true为换 nil或false为不换

--药瓶摆放
--SetNeedFlaskData(pos,flask)--设置药  pos=位置 1-5  flask=药 字符串型，支持以下 (生命药剂,魔力药剂,复合药剂,宝钻药剂,红玉药剂,蓝玉药剂,黄玉药剂,坚岩药剂,水银药剂,紫晶药剂,石英药剂,翠玉药剂,石化药剂,海蓝药剂,迷雾药剂,硫磺药剂,真银药剂,灰岩药剂)
SetNeedFlaskData(1,"生命药剂")
SetNeedFlaskData(2,"生命药剂")
SetNeedFlaskData(3,"水银药剂")
SetNeedFlaskData(4,"水银药剂")
SetNeedFlaskData(5,"魔力药剂")

SetNeedFlaskData(1,"生命药剂","沸腾的,	FlaskFullInstantRecovery1",68,"不朽生命藥劑","Metadata/Items/Flasks/FlaskLife11",true)

--SetJiaoYiGoods(goodsType,name,className,wordName,wordClassName,color,chufaCnt,bossJiaoYiCnt,giveFaZhuang,baoliuCnt,lineSocketCnt,shuXingLimit,funcCheck)-- 设置要交易的物品
--goodsType 字符串型 操作的物品类型忽略类型请填 nil 支持以下种类 多种类型以|分开 --saveType 类型 支持以下种类 多种类型以|分开 生命药剂|魔力药剂|复合药剂|通货|项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|主动技能宝石|辅助技能宝石|箭袋|腰带|手套|鞋子|衣服|头盔|盾|小型圣物|中型圣物|大型圣物|可堆叠通货|任务物品|短杖|功能药剂|暴击药剂|异界地图||鱼竿|地图碎片|藏身处装饰|商城物品|珠宝|命运卡|迷宫物品|迷宫饰品|异界迷宫物品|裂隙之石|赛季石|神灵之魂|传奇装备碎片|深渊珠宝|穿越通货|地心探索：可镶嵌的通货|孕育石|碎片|破碎之心|符文匕首|战杖|地心探索可堆叠可插入通货|
--name 字符串型 物品的名字
--className 字符串型 物品的类名
--wordName 字符串型 物品的词缀名
--wordClassName 字符串型 物品的词缀类名
--color 字符串型 颜色 0白 1蓝 2黄 3橙 多个用|隔开 nil为所有
--chufaCnt 数字型 触发交易的数量 0或nil 为不触发
--bossJiaoYiCnt 数字型 交易时仓库号交易给挂机号的数量
--giveFaZhuang 逻辑型 是否可以集给发装号 true为可以给发装号 false 或nil 为不需要
--baoliuCnt 数字型 挂机号交易时保留的数量
--lineSocketCnt 数字型 连洞数量 忽略请填nil
--shuXingLimit 字符串型 属性限制 自己想要的属性 格式为 "属性类名1,属性最小值1,是固定还是随机属性(0为忽略 基底属性为1 随机属性为2),起始范围(第几个属性 从1开始),结束范围(-1 为最大范围)" 可支持多个，多个时必须都满足了才算 中间用|隔开 忽略请填nil
--funcCheck 过滤函数，给作者预留的接口，不懂不要乱填，忽略请填nil
--SetNotUseMapLv(mapLv,roleLv)--按等级设置不使用、不捡多少阶及以上的地图 优先使用这里设置的地图等级 如果没设置将使用g_noUseMapLv设置的
-- SetNotUseMapLv(0,5)--0级以上打5阶及以下的图
-- SetNotUseMapLv(80,15)--80级打15阶级及以下的图
--roleLv 数字型 人物等级 满多少级将使用这设置的地图等级
--mapLv 数字型 地图等级

--SetMapGongYi(name)
--name 字符串型 地图工艺的名字 开图时会选择相符的地图工艺

g_useMoveSkillType=nil		--使用位移技能赶路场景 nil为一直都使用 0为剧情时使用 1为异界生产使用 2为从不使用
g_shengJiBaoShi=true		--自动升级宝石 true为升级 nil或false为不升级
g_notShuaBaiPao=true        --是否刷白袍 true为不刷 nil或false为刷
g_attackDis=40			    --攻击距离
g_duobiHpVal=0.2            --打怪时HP少于多少躲避
g_yiJieLv=70				--够了多少级才去刷异界
--SetTaskShengJiData(taskClassName,taskIndex,shengjiMapClassName,needLv)--设置跑图时升级 taskClassName=任务类名 taskIndex=任务索引 nil为忽略，只匹配任务类名 shengjiMapClassName=要刷的地图类名 needLv=升级到多少级为止
SetTaskShengJiData("a5q7",nil,"1_5_5",47)--做 到奇塔弗的受难 的时候刷纯净圣地到45级再进行下一任务
SetTaskShengJiData("a9q3",nil,"2_9_1",65)--滲血水道
SetTaskShengJiData("a10q3",nil,"2_9_1",85)--滲血水道

--SetTaskMiGongData(taskClassName,taskIndex,migongIndex)--设置跑图时迷宫 taskClassName=任务类名 taskIndex=任务索引 nil为忽略，只匹配任务类名 migongIndex为迷宫索引填 1=第一次迷宫 2=第二次迷宫
SetTaskMiGongData("a8q7",nil,1)--大于等于a8q7级 做迷宫1
SetTaskMiGongData("a9q1",nil,2)--在复活的梦魇这个任务时 做迷宫2
--SetTaskMiGongDataByLv(lv,mgIndex)--设置到等级时做迷宫 lv 数字型 为大于等于多少级做 mgIndex=迷宫索引 数字型，只支持 1 2 3 对应3个迷宫
SetTaskMiGongDataByLv(80,3)

--指定职业  野蛮人、女巫、贵族、游侠、决斗者、暗影、圣堂武僧、
g_newRoleJob="游侠"
--升华职业 勇士、暴徒、酋长、侠客、锐眼、追猎者、秘术家、元素使、召唤师、处刑者、卫士、冠军、判官、圣宗、守护者、暗影大师、欺诈师、破坏者、升华使徒、
g_shengHuaJob="锐眼"
--SetUseWeapon(str)--设置使用的武器 支持(盾}箭袋}爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 如果需要用两样中间用|分开
SetUseWeapon("弓|箭袋")

--SetUseZhuangBeiTypeData(typeStr,pos)--设置自己用的装备类型 
--typeStr=类型 支持("StrDex"为决斗者装+护甲闪避 "Str"为野蛮人装+护甲 "DexInt"为暗影装+闪避护盾 "Int"为女巫装+护盾 "Dex"为游侠装+闪避 "StrInt"为圣堂武僧装+力量护盾)
--pos=部位支持部位 支持(戒指|项链|腰带|鞋子|手套|衣服|头盔|盾|箭袋|爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 不填或nil为设置所有
SetUseZhuangBeiTypeData("Dex|StrDex","衣服")
SetUseZhuangBeiTypeData("Dex|DexInt","头盔")
SetUseZhuangBeiTypeData("Str|StrInt|Int","手套")
SetUseZhuangBeiTypeData("Str|StrDex|Dex","鞋子")
SetUseZhuangBeiTypeData("StrInt","项链")

--SetNeedSkillLineData(val,str,invalidLv)--设置换技能宝石数据 
--val=每块宝石的比重值
--str="宝石1,宝石1类名|宝石2,宝石2类名|宝石3,宝石3类名" 名与类名之间用,隔开 宝石之间用|隔开
--invalidLv=失效等级 超过这个等级就不会需要他了
--SetNeedSkillLineData(val,str,invalidLv,pos)--设置换技能宝石数据 
--val=每块宝石的比重值
--str="宝石1,宝石1类名|宝石2,宝石2类名|宝石3,宝石3类名" 名与类名之间用,隔开 宝石之间用|隔开
--invalidLv=失效等级 超过这个等级就不会需要他了
--pos=指定位置 nil为自动选择 2为衣服 3为主武器 4为副武器 5为头盔 6为项链 7为左戒指 8为右戒指 9为护手 10为鞋子 11为腰带
--nType 有效场景 nil为无论何时都有效 0为没在刷异界才有效 1为只在刷异界才有效

--剧情主力技能设置
SetNeedSkillLineData(93,"燃燒箭矢,nil|氣勢輔助,nil",2,nil,nil)
SetNeedSkillLineData(94,"火砲砲塔,nil|元素攻擊傷害輔助,nil|快速攻擊輔助,nil|多重圖騰輔助,nil",55,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,30)
SetNeedSkillLineData(94,"火砲砲塔,nil|元素攻擊傷害輔助,nil|快速攻擊輔助,nil|多重圖騰輔助|活栓輔助,nil|活栓輔助,nil|魔改箭矢輔助,nil|龍捲射擊,nil|誘捕箭矢,nil|物品稀有度增幅輔助,nil|幻步,nil|恢復輔助,nil|鮮血狂怒,nil|迅捷,nil,nil",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,55)

SetNeedSkillLineData(95,"魔改箭矢輔助,nil|狂怒,nil|冰霜射擊,nil|暴擊獲得暴擊球輔助,nil",nil,nil,nil)
SetNeedSkillLineData(96,"鋼筋鐵骨,nil|元素淨化,nil|憤怒,nil",nil,nil,nil)
SetNeedSkillLineData(97,"狙擊者印記,nil|召喚寒冰魔像,nil|擊中時印記輔助,nil",nil,nil,nil)
SetNeedSkillLineData(98,"彈片砲塔,nil|快速攻擊輔助,nil|猛毒投射物輔助,nil|齊射輔助,nil",30,nil,nil)
SetNeedSkillLineData(99,"電流箭矢,nil|附加冰冷傷害輔助,nil|元素攻擊傷害輔助,nil|幻影射手輔助,nil|附加火焰傷害輔助,nil",16,nil,nil)
SetNeedSkillLineData(100,"閃電箭矢,nil,1|附加冰冷傷害輔助,nil|元素攻擊傷害輔助,nil|三體輔助,nil|啟發輔助,nil|幻影射手輔助,nil|附加火焰傷害輔助,nil",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,12)

--异界主力技能设置

--SetSkillLimitMaxLv(name,className,maxLv)--设置技能宝石最大等级 name=技能宝石物品名 className=技能宝石物品类名 maxLv=限制的最大等级
--SetSkillLimitMaxLv("亵渎","Metadata/Items/Gems/SkillGemDesecrate",2)
--SetSkillLimitMaxLv("迅捷","Metadata/Items/Gems/SkillGemHaste",11)
---SetSkillLimitMaxLv("瓦爾．迅捷","Metadata/Items/Gems/SkillGemVaalHaste",11)
SetDebuffSkill(nil,"snipers_mark",nil,"curse_snipers_mark")--狙擊者印記
SetSkillLimitMaxLv("鋼筋鐵骨",nil,10)
-- SetSkillLimitMaxLv("狙擊者印記","Metadata/Items/Gems/SkillGemProjectileWeakness",11)
-- SetSkillLimitMaxLv("受傷時施放輔助","Metadata/Items/Gems/SupportGemCastOnDamageTaken",2)

--SetSkillUseWaEr("赦免","Metadata/Items/Gems/SkillGemAbsolution","瓦爾．赦免","Metadata/Items/Gems/SkillGemVaalAbsolution",1)
--SetSkillUseWaEr("迅捷","Metadata/Items/Gems/SkillGemHaste","瓦爾．迅捷","Metadata/Items/Gems/SkillGemVaalHaste",6)

--AddAttackSkillData(name,className,noLine)--添加攻击技能 name=技能名 className=技能类名 noLine=不在直线就能攻击 挑选攻击技能会从上到下寻找，要把厉害的技能加在前面
--AddAttackSkillData("电弧","arc")
AddAttackSkillData("閃電箭矢","Lightning Arrow",false,100,0)--添加攻击技能
AddAttackSkillData("電流箭矢","Galvanic Arrow",false,50,0)--添加攻击技能
AddAttackSkillData("燃燒箭矢","Burning Arrow")
AddAttackSkillData("普通攻击","melee")


--bossName 字符串型 灵体仓库号的名字
--minLv 数字型 满多少级才会去仓库号家召唤 nil为忽略等级总是去
--SetNeedZhaoHuanMonster("Flayed Lookout","Metadata/Monsters/LeagueBetrayal/BetrayalSkeletonRangedSpectre",7)
--FANXING
--SetNeedZhaoHuanMonster("霜寒自動巡守","Metadata/Monsters/LeagueHeist/Robot/RobotClockworkGolemCold",99999)

--SetYiJieZhaoHuanLingTiData(mapClassName,name,className)--设置异界时召唤的灵体数据 mapClassName=剧情图类名 name=灵体名 className=灵体类名
--SetYiJieZhaoHuanLingTiData("2_10_2","诡异行者","Metadata/Monsters/WickerMan/WickerMan")
--SetYiJieZhaoHuanLingTiData("1_5_2","驱刑者","Metadata/Monsters/TemplarSlaveDriver/TemplarSlaveDriver")
--SetYiJieZhaoHuanLingTiData("2_7_7","冷血酋长","Metadata/Monsters/BloodChieftain/MonkeyChiefBloodEnrage")

--RemoveUseBuffSkill(name,className)--设置不使用的buff name=技能名 className=技能类名
--RemoveUseBuffSkill("召喚巨石魔像","summon_rock_golem")

---------------------------------------换装设置
--SetAtuoChangeEquipData(job,pos,name,val,yijie) 计算方式如下 定义过的属性值乘以比重值  哪样装备高就会用哪样
--job 职业 支持(暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧) 可填多个，中间用|隔开
--pos 部位 支持(戒指|项链|腰带|鞋子|手套|衣服|头盔|盾|箭袋|爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 可填多个，中间用|隔开
--name 属性名 支持游戏内的装备属性名 还有其他的自定义名(物理伤害、护甲、护盾、闪避、连洞、总洞)
--val 比重值 支持小数
--nType 换装类型 0或nil或不填为一直有效 1为跑图时才有效 2为异界时才有效
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|盾","fire_and_cold_damage_resistance_%",0.2)--火焰与冰霜伤害抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|盾","fire_and_lightning_damage_resistance_%",0.2)--火焰与闪电伤害抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|盾","cold_and_lightning_damage_resistance_%",0.2)--冰霜与闪电伤害抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|盾","base_resist_all_elements_%",0.3)--全元素抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|盾","base_fire_damage_resistance_%",0.1)--基础火焰伤害抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|盾","base_cold_damage_resistance_%",0.1)--基础冰霜伤害抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|盾","base_lightning_damage_resistance_%",0.1)--基础闪电伤害抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|盾","cold_damage_resistance_%",0.1)--冰霜抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|盾","fire_damage_resistance_%",0.1)--火焰抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|盾","lightning_damage_resistance_%",0.1)--闪电抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带","base_chaos_damage_resistance_%",0.15)--基础混沌伤害抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带","chaos_damage_resistance_%",0.15)--混沌抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","鞋子","base_movement_velocity_+%",10)--基础移动速度 +%
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","鞋子","movement_velocity_+%",10)--移动速度 +%
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","手套|衣服|头盔","连洞",100)--每连一线加xx点比重
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","爪|盾|鞋子","总洞",100,1)--每连一线加xx点比重
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","项链|戒指|腰带","base_maximum_life",0.4,1)--加基礎最大生命
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","项链","敏捷",0.5,0)--每点物理伤害加xx点比重
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","盾","护甲",0.6)--加基礎最大生命
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","爪","物理伤害",200,1)--每点物理伤害加xx点比重

SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","手套","sacrifice_%_maximum_life_to_gain_as_es_on_spell_cast",-99999)--减分 恶魔缝补者
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","头盔","you_cannot_have_non_spectre_minions",-99999)--减分 不能有非幽魂的召喚物
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","腰带","you_have_no_armour_or_energy_shield",-99999)--减分 你沒有護甲和能量護盾
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","腰带","FireResistance",-99999)--减分 戴亚迪安的晨曦
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","法杖","life_reserved_by_stat_%",-99999)--减分 冥约
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","衣服","local_has_no_sockets",-99999)--减分 岡姆

--剧情有效
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","fire_and_cold_damage_resistance_%",0.25)--火焰与冰霜伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","fire_and_lightning_damage_resistance_%",0.25)--火焰与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","cold_and_lightning_damage_resistance_%",0.2)--冰霜与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_resist_all_elements_%",0.35)--全元素抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_fire_damage_resistance_%",0.3)--基础火焰伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_cold_damage_resistance_%",0.3)--基础冰霜伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_lightning_damage_resistance_%",0.3)--基础闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","cold_damage_resistance_%",0.3)--冰霜抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","fire_damage_resistance_%",0.3)--火焰抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","lightning_damage_resistance_%",0.3)--闪电抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_movement_velocity_+%",0.3)--基础移动速度 +%
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_maximum_life",0.3)--生命
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","movement_velocity_+%",0.3)--移动速度 +%



--异界有效
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","盾","护甲",10,2)                                                 --护甲
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","盾","base_maximum_life",20,2)                                    --加基礎最大生命
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","鞋子","movement_velocity_+%",30,2)                               --移动速度 +%
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","鞋子","base_movement_velocity_+%",40,2)                          --基础移动速度 +%
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","法杖","minion_critical_strike_multiplier_+",898,2)               --召唤暴击加成
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","法杖","minion_critical_strike_chance_+%",999,2)                  --召唤暴击
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","法杖","minion_attack_and_cast_speed_+%",8988,2)                  --召唤攻擊和施放速度
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","法杖","minion_damage_+%",9999,2)                                 --召唤伤害
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","法杖","spell_skill_gem_level_+%",88888,2)                        --全部法术等级+1
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","法杖","minion_skill_gem_leve_+%",99999,2)                        --召唤物等级+1
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","项链","base_maximum_life",5,2)                                   --加基礎最大生命
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","项链","additional_strength",10,2)                                --力量
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","项链","additional_intelligence",10,2)                            --智慧
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","base_maximum_life",5,2)    --加基礎最大生命
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","base_resist_all_elements_%",10,2)--全元素抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","fire_and_cold_damage_resistance_%",6,2)--火焰与冰霜伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","fire_and_lightning_damage_resistance_%",6,2)--火焰与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","cold_and_lightning_damage_resistance_%",5,2)--冰霜与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","base_fire_damage_resistance_%",4,2)--基础火焰伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","base_cold_damage_resistance_%",3,2)--基础冰霜伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","base_lightning_damage_resistance_%",3,2)--基础闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","fire_damage_resistance_%",4,2)--火焰抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","cold_damage_resistance_%",3,2)--冰霜抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","lightning_damage_resistance_%",3,2)--闪电抗性 %


SetAtuoChangeEquipData("游侠","项链","additional_strength",0.2)--
SetAtuoChangeEquipData("游侠","项链","additional_intelligence",0.2)--
SetAtuoChangeEquipData("游侠","项链","additional_strength_and_intelligence",0.3)--
SetAtuoChangeEquipData("游侠","弓","local_maximum_added_fire_damage",5)--
SetAtuoChangeEquipData("游侠","弓","local_maximum_added_cold_damage",5)--
SetAtuoChangeEquipData("游侠","弓","local_maximum_added_lightning_damage",5)--

--SetZhengTiColorVarData(衣服,红孔数,绿孔数,蓝孔数,剧情0/异界1/无视nil),分值,连洞true/不连false/无视nil)
--衣服---
SetZhengTiColorVarData(2,2,3,1,nil,800,true)
SetZhengTiColorVarData(2,2,2,1,nil,700,true)
SetZhengTiColorVarData(2,1,3,1,nil,600,true)
SetZhengTiColorVarData(2,1,2,1,nil,500,true)
SetZhengTiColorVarData(2,1,3,0,nil,400,true)
SetZhengTiColorVarData(2,1,2,0,nil,300,true)
SetZhengTiColorVarData(2,0,3,0,nil,250,true)
SetZhengTiColorVarData(2,0,2,0,nil,200,true)
SetZhengTiColorVarData(2,1,1,0,nil,150,true)
SetZhengTiColorVarData(2,0,1,0,nil,100)
SetZhengTiColorVarData(2,1,0,0,nil,60)

--武器---绿蓝蓝
SetZhengTiColorVarData(3,0,5,1,nil,600,true)
SetZhengTiColorVarData(3,0,4,1,nil,500,true)
SetZhengTiColorVarData(3,0,3,1,nil,400,true)
SetZhengTiColorVarData(3,0,3,0,nil,300,true)
SetZhengTiColorVarData(3,0,2,0,nil,200,true)
SetZhengTiColorVarData(3,0,1,0,nil,10)
--盾牌---红红红
SetZhengTiColorVarData(4,3,0,0,nil,300,true)
SetZhengTiColorVarData(4,2,0,0,nil,200,true)
SetZhengTiColorVarData(4,1,0,0,nil,100)

--头盔---蓝红红蓝--绿蓝
SetZhengTiColorVarData(5,0,3,1,nil,400,true)
SetZhengTiColorVarData(5,0,3,0,nil,300,true)
SetZhengTiColorVarData(5,0,2,0,nil,200,true)
SetZhengTiColorVarData(5,0,1,0,nil,100)
--手套---蓝蓝红红-蓝

SetZhengTiColorVarData(9,3,0,1,nil,500,true)
SetZhengTiColorVarData(9,2,0,2,nil,400,true)
SetZhengTiColorVarData(9,2,0,1,nil,300,true)
SetZhengTiColorVarData(9,1,0,1,nil,200,true)
SetZhengTiColorVarData(9,0,0,1,nil,100)


--鞋子---蓝蓝蓝蓝-蓝
SetZhengTiColorVarData(10,2,2,0,nil,400,true)
SetZhengTiColorVarData(10,1,2,0,nil,300,true)
SetZhengTiColorVarData(10,0,2,0,nil,200,true)
SetZhengTiColorVarData(10,0,1,0,nil,100)

--女巫--主线
AddShengJiZhuangBeiGoodsData("点金石","Metadata/Items/Currency/CurrencyUpgradeToRare",0,40,0)--主线生效 超过50级就用点金点白色装备
AddShengJiZhuangBeiGoodsData("富豪石","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",1,40,0)--主线生效 超过50级就用富豪点蓝色装备

---------------------------------------高级换装
--SetGaoJiHuanZhuangData(job,name,className,wordName,wordClassName,lineSocketCnt,goodsLv,flaskPos,zbPos,color,nType,yxName,yxClassName,yxWordName,yxWordClassName,wxName,wxClassName,wxWordName,wxWordClassName,val) 高级换装设置 设置换指定的装备
--1职业，2物品名，3物品类名，4指定词缀，5指定词缀类名，6几连，7物等，8药剂位置12345，9部位限制，10颜色限制0白1蓝2金3橙，11有效场景nill无视0非异界1异界，nil，nil，nil，nil，nil，nil，nil，nil，20装备评分
--部位限制 如果两个部位要佩戴的装备不一样 但是两样装备都能佩戴这两个部位 就必须要填写 
--否则，可以填nil忽略 nil为自动选择 2为衣服 3为主武器 4为副武器 5为头盔 6为项链 7为左戒指 8为右戒指 9为护手 10为鞋子 11为腰带

--高级换装设置
--SetGaoJiHuanZhuangData(job,name,className,wordName,wordClassName,lineSocketCnt,goodsLv,flaskPos,zbPos,color,nType,yxName,yxClassName,yxWordName,yxWordClassName,wxName,wxClassName,wxWordName,wxWordClassName,val,tianFuZhuBaoPos,minLv,maxLv)-- 高级换装设置 设置换指定的装备
--1job 职业 支持(暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧) 可填多个，中间用|隔开
--2name 物品名
--3className 物品类名
--4wordName 指定词缀
--5wordClassName 指定词缀类名
--6lineSocketCnt 需要连的洞数量 比如设置4 他就会打到4连为止 nil为忽略
--7goodsLv 某些要打洞需要物品等级够了才能打那么多洞，如果定义了打洞数量 需要填这里 2洞要大于等于1级 3洞要大于等于15级 4洞要大于等于28级 5洞要大于等于35级 6洞要大于等于50级
--8flaskPos 药剂部位 装备的话可以忽略，药剂的时候才需要用 nil为忽略 1 2 3 4 5 对应5个药剂部位
--9zbPos 部位限制 如果两个部位要佩戴的装备不一样 但是两样装备都能佩戴这两个部位 就必须要填写 否则，可以填nil忽略 nil为自动选择 2为衣服 3为主武器 4为副武器 5为头盔 6为项链 7为左戒指 8为右戒指 9为护手 10为鞋子 11为腰带
--10color 颜色限制 nil为忽略 如果没有特殊需求可忽略 0为白 1为蓝 2为金 3为橙
--11nType 有效场景 nil为无论何时都有效 0为没在刷异界才有效 1为只在刷异界才有效
--12yxName 身上或背包有指定装备时才有效 此为指定装备的名字 如果不需要此功能请填nil 
--13yxClassName 身上或背包有指定装备时才有效 此为指定装备的类名 如果不需要此功能请填nil
--14yxWordName 身上或背包有指定装备时才有效 此为指定装备的词缀名字 如果不需要此功能请填nil
--15yxWordClassName 身上或背包有指定装备时才有效 此为指定装备的词缀类名 如果不需要此功能请填nil
--16wxName 身上跟背包都有没有指定装备时才无效 此为指定装备的名字 如果不需要此功能请填nil 
--17wxClassName 身上跟背包都有没有指定装备时才无效 此为指定装备的类名 如果不需要此功能请填nil
--18wxWordName 身上跟背包都有没有指定装备时才无效 此为指定装备的词缀名字 如果不需要此功能请填nil
--19wxWordClassName 身上跟背包都有没有指定装备时才无效 此为指定装备的词缀类名 如果不需要此功能请填nil
--20val 分数 自己定义这件装给多少评分，填nil默认为9999分
--21tianFuZhuBaoPos 天赋珠宝部位
--22faZhuangLv 数字型 发装等级 满多少级才向发装号要装备 如果填了，就会按照设置的等级向发装号要 如果填nil的话 白袍从1级开始要，其他装备从进异界开始要
--23minLv 数字型 满多少级生效
--24maxLv 数字型 满多少级失效
SetGaoJiHuanZhuangData("游侠","简易之袍","Metadata/Items/Armours/BodyArmours/BodyInt1","无尽之衣","Tabula Rasa",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)
SetGaoJiHuanZhuangData("游侠","皮帽","Metadata/Items/Armours/Helmets/HelmetDex1","金缕帽","Goldrim",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,4000)

SetGaoJiHuanZhuangData("游侠","锻铁戒指","Metadata/Items/Rings/Ring1","英灵宝环","Le Heup of All",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)

SetGaoJiHuanZhuangData("游侠","海灵戒指","Metadata/Items/Rings/Ring3","普兰德斯之记","Perandus Signet",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)

SetGaoJiHuanZhuangData("游侠","素布腰带","Metadata/Items/Belts/Belt1","幻彩菱织","Prismweave",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)

SetGaoJiHuanZhuangData("游侠","原矢箭袋","Metadata/Items/Quivers/QuiverNew13","平衡棱镜","The Poised Prism",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)

SetGaoJiHuanZhuangData("游侠","熊首皮盔","Metadata/Items/Armours/Helmets/HelmetDex7","鼠巢","Rat's Nest",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)

SetGaoJiHuanZhuangData("游侠","环带护手","Metadata/Items/Armours/Gloves/GlovesDexInt3","沙尘之影","Shadows and Dust",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)

SetGaoJiHuanZhuangData("游侠","环带长靴","Metadata/Items/Armours/Boots/BootsDexInt3","日耀","Sundance",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)


SetChangeLimitCnt("武器|衣服|头盔|手套|鞋子",2)
SetChangeLimitCnt("腰带",3)
SetChangeLimitCnt("项链|戒指",3)


--SetNeedAddTianFu(tfStr)--设置天赋加点 
SetNeedAddTianFu("游侠=attack_speed568-投射物傷害和命中|dexterity990-敏捷|dexterity992-敏捷|dexterity995-敏捷|perfect_aim591-彈道學|bow_damage_and_speed498-弓的傷害|greater_impact638-鷹靈祝福|bow_damage508-弓的傷害和暴擊率|bow_damage507-弓的傷害和暴擊率|attack_damage_notable2120-山貓之靈|stun_recovery544-生命和避免暈眩|avoid_stun553-橡木之心|stun_recovery543-生命和避免暈眩|finesse993-嫻熟|one_handed_damage636-武器元素傷害|shield_mastery440-自然合一|mana1479-魔力和藥劑效果|mana1478-原始精神|intelligence957-智慧|elemental_damage_es1615-獲得藥劑充能|elemental_reflect_2794-生命藥劑獲得充能|elemental_reflect_notable_2796-補藥|one_handed_damage637-武器元素傷害|claws_of_the_pride489-直覺|dexterity870-敏捷|life1412-生命|alchemist532-藥草學|mastery_life146-生命專精-47642|aura_area_of_effect1203-光環效果範圍|reduced_mana_reservation1199-保留效用|aura_effect_reservation_cost_notable1558-魅力|life1216-生命|dexterity862-敏捷|dexterity864-敏捷|dexterity866-敏捷|attack_speed1645-攻擊速度|attack_speed1231-攻擊速度|attack_speed1646-攻擊速度|attack_damage_notable2242-多重射擊|dexterity865-敏捷|dexterity860-敏捷|dexterity867-敏捷|damage_area_projectile_speed_2296-擊中時獲得生命和魔力|projectile_damage_projectile_speed1628-聰穎盜贼|life1415-生命|life_life_leech1629-嗜血者|dexterity856-敏捷|might770-無畏|savant903-盜贼工藝|dexterity872-敏捷|weapon_elemental_damage1263-武器元素傷害|weapon_elemental_damage1264-武器元素傷害|weapon_ele_notable1700-自然之力|mastery_elemental99-元素專精-17942|bow_damage506-弓的傷害|bow_damage_and_speed500-弓的攻擊速度|bow_damage505-弓的攻擊速度|bow_damage_and_speed501-弓的攻擊速度|deadly_draw680-飛矢宗師|evasion1692-閃避與元素抗性|evasion_resists_notable1691-死裡逃生|bow_damage_and_speed499-弓暴擊率和加成|bow_damage_and_speed502-弓暴擊率和加成|bow_damage_and_speed496-弓暴擊率和加成|king_of_the_hill529-強弩之弦|projectile_damage1233-投射物傷害|projectile_damage_pierce1685-穿透|projectile_pierce_notable1687-穿射箭矢|critical_strike_chance625-暴擊率|critical_strike_chance624-暴擊率|heartseeker626-刺心者|dexterity861-敏捷|weapon_elemental_damage2163-武器元素傷害|weapon_elemental_damage2161-武器元素傷害，異常狀態機率|weapon_elemental_damage2162-武器元素傷害，異常狀態機率|weapon_elemental_damage_notable2165-太古之力|dexterity873-敏捷|evasion_mobility2361-閃避和移動速度|evasion_mobility2363-閃避和移動速度|evasion_mobility_notable2364-飛毛腿|bow_critical_strike_chance675-投射物攻擊暴擊率|bow_critical_strike_chance674-投射物攻擊暴擊率|heartpierce676-致命鋒芒|intelligence927-智慧|intelligence926-智慧|mana1647-魔力|mind_drinker302-汲靈術|mastery_mana164-魔力專精-64875|dexterity848-敏捷|strength815-力量|dexterity981-敏捷|agility965-和諧之體|life703-生命|fitness617-血液抽取|life1220-生命|mental_acuity1046-詭計|critical_strike_chance1019-暴擊率|assassination1239-刺殺|life1119-閃避和生命|life1118-閃避和生命|life1117-死亡通緝|dexterity858-敏捷|life1167-生命和避免元素異常狀態|life1156-生命和避免元素異常狀態|life1120-生命和避免元素異常狀態|thick_skin1157-強化之膚|") 
SetNeedAddTianFu("游侠升华=AscendancyDeadeye5-投射物傷害、命中率|AscendancyDeadeye4-彈射|AscendancyDeadeye17-投射物傷害、命中率|AscendancyDeadeye6-無限彈藥|AscendancyDeadeye3-投射物傷害、攻擊速度|AscendancyDeadeye14-集風|") 

--异界天赋種子精髓神諭炸墳寶箱
--SetNeedAddTianFu([[异界地图天赋=atlas_path_22-相鄰地圖掉落機率|atlas_path_12-相鄰地圖掉落機率|atlas_path_24_-相鄰地圖掉落機率|atlas_path_16-相鄰地圖掉落機率|atlas_path_25_-相鄰地圖掉落機率|atlas_path_27-相鄰地圖掉落機率|atlas_path_28-相鄰地圖掉落機率|atlas_map_drops_20-聖甲蟲掉落率|atlas_map_drops_2-聖甲蟲掉落率|atlas_map_drops_4-聖甲蟲掉落率|atlas_map_drops_8-聖甲蟲掉落率|atlas_path_92-聖甲蟲掉落率|atlas_path_61-物品數量|atlas_path_44-物品數量|atlas_path_35-物品數量|atlas_path_39-物品數量|atlas_path_34-物品數量|atlas_path_80-地圖詞綴效果|atlas_map_drops_7-地圖詞綴效果|atlas_mod_effect_6-地圖詞綴效果|atlas_keystone_nofragments_1-堅定不移的遠見|atlas_harbinger_1_1-額外神諭碎片|atlas_harbinger_1_2_-額外神諭碎片|atlas_harbinger_1_4-額外神諭碎片|atlas_harbinger_1_3-不祥到來|atlas_harbinger_3_1-額外神諭機率|atlas_harbinger_3_5-額外神諭碎片|atlas_harbinger_3_3-額外神諭碎片|atlas_harbinger_3_4-不可描述侵犯|atlas_harbinger_3_2-額外神諭機率|atlas_harbinger_3_6-額外神諭機率|atlas_harbinger_2_3-額外神諭機率|atlas_harbinger_2_5-額外神諭機率|atlas_harbinger_2_2-額外神諭機率|atlas_path_14-相鄰地圖掉落機率|atlas_path_26-相鄰地圖掉落機率|atlas_harvest_1_2-豐收機率|atlas_harvest_1_3-豐收機率|atlas_harvest_1_1-豐收機率|atlas_harvest_1_4-密園呼喚|atlas_harvest_2_1-豐收怪物複製機率|atlas_harvest_3_2-豐收機率|atlas_harvest_3_5-豐收機率|atlas_harvest_4_1-豐收額外生靈之力|atlas_harvest_2_3-豐收額外生靈之力|atlas_harvest_2_4-豐收額外生靈之力|atlas_harvest_3_4__-豐收|atlas_harvest_4_2-豐收怪物複製機率|atlas_harvest_2_5_-大豐收|atlas_path_83-聖甲蟲掉落率|atlas_harvest_4222-豐收額外生靈之力|atlas_harvest_4220-豐收額外生靈之力|atlas_harvest_4225-豐收額外生靈之力|atlas_harvest_4212-倍增期|atlas_harvest_4218-豐收機率|atlas_boss_adjacent_maps_10-物品數量和稀有度|atlas_boss_adjacent_maps_12-物品數量和稀有度|atlas_harvest_3_1-豐收階級 3 作物機率|atlas_harvest_2_6-密園之心|atlas_harvest_2_7-豐收階級 3 作物機率|atlas_harvest_3_3-豐收階級 3 作物機率|atlas_boss_adjacent_maps_2-相鄰地圖掉落機率|atlas_essence_1_1-精髓稀有機率|atlas_essence_1_5-精髓稀有機率|atlas_essence_1_3-海量精華|atlas_boss_adjacent_maps_11-物品數量和稀有度|atlas_essence_2_2-精髓機率|atlas_essence_2_4-強化能量|atlas_essence_2_5-精髓機率|atlas_essence_2_3-精髓機率|atlas_path_93-聖甲蟲掉落率|atlas_map_drops_9-聖甲蟲掉落率|atlas_map_drops_15-聖甲蟲掉落率|atlas_essence_3_1-精髓機率|atlas_essence_3_2-禁錮怪物額外精髓機率|atlas_essence_3_3-禁錮怪物額外精髓機率|atlas_essence_3_5-水晶共振|atlas_map_drops_16-聖甲蟲掉落率|atlas_map_drops_1-聖甲蟲掉落率|atlas_map_drops_10-聖甲蟲掉落率|atlas_map_drops_11-聖甲蟲掉落率|atlas_path_4-相鄰地圖掉落機率|atlas_path_7-相鄰地圖掉落機率|atlas_essence_4_1-禁錮怪物額外精髓機率|atlas_essence_4_2-禁錮怪物額外精髓機率|atlas_essence_4_3-禁錮怪物額外精髓機率|atlas_essence_4_4-水晶格|atlas_expedition_3_3_-探險機率|atlas_keystone_expedition_single_explosive-極限考古學|atlas_expedition_3_4-探險商人重骰通貨機率|atlas_expedition_3_5-古文|atlas_expedition_1_2-探險機率|atlas_expedition_4209-探險機率|atlas_expedition_4208-探險機率|atlas_expedition_1_3-尋找答案|atlas_expedition_4_1-探險機率|atlas_expedition_4_2-爆裂物放置距離|atlas_expedition_1_4-傑出的拆遷專家|atlas_strongbox_1_2-保險箱額外怪物群機率|atlas_strongbox_1_4-保險箱額外怪物群機率|atlas_strongbox_1_1-二次誘惑|atlas_strongbox_2_3-重新開啟保險箱機率|atlas_strongbox_2_2-重新開啟保險箱機率|atlas_strongbox_2_1-防篡改|atlas_strongbox_2_4-重新開啟保險箱機率|atlas_strongbox_2_5-秘密伏擊|atlas_strongbox_3_1-保險箱物品數量|atlas_strongbox_3_2-奧術師的保險箱機率|atlas_strongbox_3_6-奧術師的保險箱機率|atlas_strongbox_3_5-備份暫存|atlas_expedition_4_5-探險機率|atlas_expedition_3_7-探險機率|atlas_expedition_4_7-探險機率|atlas_expedition_4_4-探險文物數量|atlas_expedition_1_1-探險文物數量|]])

--异界天赋 種子祭祀神諭炸墳
--SetNeedAddTianFu([[异界地图天赋=atlas_path_22-相鄰地圖掉落機率|atlas_path_12-相鄰地圖掉落機率|atlas_path_24_-相鄰地圖掉落機率|atlas_path_16-相鄰地圖掉落機率|atlas_path_25_-相鄰地圖掉落機率|atlas_path_27-相鄰地圖掉落機率|atlas_path_28-相鄰地圖掉落機率|atlas_map_drops_20-聖甲蟲掉落率|atlas_map_drops_2-聖甲蟲掉落率|atlas_map_drops_4-聖甲蟲掉落率|atlas_map_drops_8-聖甲蟲掉落率|atlas_path_92-聖甲蟲掉落率|atlas_path_61-物品數量|atlas_path_44-物品數量|atlas_path_35-物品數量|atlas_path_39-物品數量|atlas_path_34-物品數量|atlas_path_80-地圖詞綴效果|atlas_map_drops_7-地圖詞綴效果|atlas_mod_effect_6-地圖詞綴效果|atlas_keystone_nofragments_1-堅定不移的遠見|atlas_harbinger_1_1-額外神諭碎片|atlas_harbinger_1_2_-額外神諭碎片|atlas_harbinger_1_4-額外神諭碎片|atlas_harbinger_1_3-不祥到來|atlas_harbinger_3_1-額外神諭機率|atlas_harbinger_3_5-額外神諭碎片|atlas_harbinger_3_3-額外神諭碎片|atlas_harbinger_3_4-不可描述侵犯|atlas_harbinger_3_2-額外神諭機率|atlas_harbinger_3_6-額外神諭機率|atlas_harbinger_2_3-額外神諭機率|atlas_harbinger_2_5-額外神諭機率|atlas_harbinger_2_2-額外神諭機率|atlas_path_14-相鄰地圖掉落機率|atlas_path_26-相鄰地圖掉落機率|atlas_harvest_1_2-豐收機率|atlas_harvest_1_3-豐收機率|atlas_harvest_1_1-豐收機率|atlas_harvest_1_4-密園呼喚|atlas_harvest_2_1-豐收怪物複製機率|atlas_harvest_3_2-豐收機率|atlas_harvest_3_5-豐收機率|atlas_harvest_4_1-豐收額外生靈之力|atlas_harvest_2_3-豐收額外生靈之力|atlas_harvest_2_4-豐收額外生靈之力|atlas_harvest_3_4__-豐收|atlas_harvest_4_2-豐收怪物複製機率|atlas_harvest_2_5_-大豐收|atlas_path_83-聖甲蟲掉落率|atlas_harvest_4222-豐收額外生靈之力|atlas_harvest_4220-豐收額外生靈之力|atlas_harvest_4225-豐收額外生靈之力|atlas_harvest_4212-倍增期|atlas_harvest_4218-豐收機率|atlas_boss_adjacent_maps_10-物品數量和稀有度|atlas_boss_adjacent_maps_12-物品數量和稀有度|atlas_harvest_3_1-豐收階級 3 作物機率|atlas_harvest_2_6-密園之心|atlas_harvest_2_7-豐收階級 3 作物機率|atlas_harvest_3_3-豐收階級 3 作物機率|atlas_path_93-聖甲蟲掉落率|atlas_map_drops_9-聖甲蟲掉落率|atlas_map_drops_15-聖甲蟲掉落率|atlas_map_drops_16-聖甲蟲掉落率|atlas_map_drops_1-聖甲蟲掉落率|atlas_path_17-相鄰地圖掉落機率|atlas_path_18-相鄰地圖掉落機率|atlas_path_15-相鄰地圖掉落機率|atlas_path_2-相鄰地圖掉落機率|atlas_ritual_1_1-祭祀機率|atlas_ritual_1_2-祭祀機率|atlas_ritual_1_3-祭祀機率|atlas_ritual_1_4-聖地|atlas_path_82-聖甲蟲掉落率|atlas_map_drops_14-聖甲蟲掉落率|atlas_ritual_3_1-祭祀機率|atlas_ritual_3_2-重骰後免費獎勵機率|atlas_ritual_3_5-重骰後免費獎勵機率|atlas_ritual_3_4-貪財信徒|atlas_ritual_3_3-祭祀重骰消耗|atlas_ritual_3_6-祭祀重骰消耗|atlas_ritual_4253-靈活教條|atlas_path_85-聖甲蟲掉落率|atlas_mod_effect_1-地圖詞綴效果|atlas_ritual_4267-祭祀機率|atlas_ritual_4266-增加祭祀延遲消耗|atlas_ritual_4265_-增加祭祀延遲消耗|atlas_ritual_4254_-已答上訴|atlas_mod_effect_9-地圖詞綴效果|atlas_mod_effect_10-地圖詞綴效果|atlas_path_51-地圖詞綴效果|atlas_mod_effect_2-地圖詞綴效果|atlas_mod_effect_3-地圖詞綴效果|atlas_ritual_2_6-祭祀機率|atlas_ritual_2_3-祭祀貢禮數量|atlas_ritual_2_4_-祭祀貢禮數量|atlas_ritual_2_5-神秘奉獻|atlas_expedition_1_2-探險機率|atlas_expedition_4209-探險機率|atlas_expedition_4208-探險機率|atlas_expedition_1_3-尋找答案|atlas_expedition_3_3_-探險機率|atlas_keystone_expedition_single_explosive-極限考古學|atlas_expedition_3_4-探險商人重骰通貨機率|atlas_expedition_3_5-古文|atlas_expedition_4_5-探險機率|atlas_expedition_4_3-探險文物數量|atlas_expedition_4_6-被埋葬的知識|atlas_expedition_3_7-探險機率|atlas_expedition_4_7-探險機率|atlas_expedition_4_1-探險機率|atlas_expedition_4_2-爆裂物放置距離|atlas_expedition_1_4-傑出的拆遷專家|atlas_harbinger_2_4-初潮|]])

--异界天赋 輿圖點速刷轉EB
SetNeedAddTianFu([[异界地图天赋=atlas_path_22-相鄰地圖掉落機率|atlas_path_23_-相鄰地圖掉落機率|atlas_boss_adjacent_maps_1-相鄰地圖掉落機率|atlas_boss_adjacent_maps_8-相鄰地圖掉落機率|atlas_zana_1_11-偵查報告掉落機率|atlas_zana_1_3-偵查報告掉落機率|atlas_zana_1_6-重點偵察|atlas_zana_1_1-偵查報告掉落機率|atlas_zana_1_2-偵查報告掉落機率|atlas_path_96-聖甲蟲掉落率|atlas_map_tier_3_3-雕塑世界|atlas_map_tier_5_2-高階地圖機率|atlas_keystone_fortune_favours_doubled-大膽行動|atlas_map_tier_4_1-高階地圖機率|atlas_map_tier_5_1-高階地圖機率|atlas_path_61-物品數量|atlas_path_44-物品數量|atlas_path_35-物品數量|atlas_path_39-物品數量|atlas_path_34-物品數量|atlas_path_80-物品稀有度|atlas_map_drops_7-物品稀有度|atlas_mod_effect_6-地圖詞綴效果|atlas_keystone_nofragments_1-堅定不移的遠見|atlas_map_tier_3_2-高階地圖機率|atlas_map_tier_3_1-高階地圖機率|atlas_path_38-相鄰地圖掉落機率|atlas_path_21-相鄰地圖掉落機率|atlas_path_27-相鄰地圖掉落機率|atlas_path_28-相鄰地圖掉落機率|atlas_map_tier_1_2_-高階地圖機率|atlas_map_tier_1_1-高階地圖機率|atlas_map_tier_1_3-雕塑山型|atlas_path_37-相鄰地圖掉落機率|atlas_path_30-相鄰地圖掉落機率|atlas_path_18-相鄰地圖掉落機率|atlas_path_17-相鄰地圖掉落機率|atlas_map_tier_2_1-高階地圖機率|atlas_map_tier_2_2-高階地圖機率|atlas_map_tier_2_3-雕塑天空|atlas_path_15-相鄰地圖掉落機率|atlas_path_2-相鄰地圖掉落機率|atlas_path_10-相鄰地圖掉落機率|atlas_path_19-相鄰地圖掉落機率|atlas_path_1-相鄰地圖掉落機率|atlas_path_20-相鄰地圖掉落機率|atlas_path_9-相鄰地圖掉落機率|atlas_path_6-相鄰地圖掉落機率|atlas_path_8-相鄰地圖掉落機率|atlas_path_13-相鄰地圖掉落機率|atlas_path_22-相鄰地圖掉落機率|atlas_path_12-相鄰地圖掉落機率|atlas_path_24_-相鄰地圖掉落機率|atlas_path_16-相鄰地圖掉落機率|atlas_path_25_-相鄰地圖掉落機率|atlas_path_5-相鄰地圖掉落機率|atlas_path_14-相鄰地圖掉落機率|atlas_path_26-相鄰地圖掉落機率|]])