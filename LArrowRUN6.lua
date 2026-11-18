package.path = GetPackagePath();
local loadArr={"自动任务"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end
g_changeHunDunLv=65         --多少级前不换C
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
SetNeedFlaskData(4,"生命药剂")
SetNeedFlaskData(5,"魔力药剂")

--SetNeedFlaskData(1,"生命药剂","沸腾的,	FlaskFullInstantRecovery1",68,"不朽生命藥劑","Metadata/Items/Flasks/FlaskLife11",true)

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

SetSellGoodsData("蜕变石","Metadata/Items/Currency/CurrencyUpgradeToMagic",30,"0|1|2")
SetGoodsCaoZuo(nil,"0|1","蜕变石","Metadata/Items/Currency/CurrencyUpgradeToMagic",nil,nil,nil,5)--身上保留40
SetGoodsCaoZuo(nil,"0|1","蛻變石","Metadata/Items/Currency/CurrencyUpgradeToMagic",nil,nil,nil,5)--身上保留40

SetGoodsCaoZuo(nil,"0|2","真銀藥劑","Metadata/Items/Flasks/FlaskUtility14")
SetGoodsCaoZuo(nil,"0|2","寶鑽藥劑","Metadata/Items/Flasks/FlaskUtility4")
SetGoodsCaoZuo(nil,"0|2","水銀藥劑","Metadata/Items/Flasks/FlaskUtility6")

SetGoodsCaoZuo(nil,"0|1","知識卷軸","Metadata/Items/Currency/CurrencyIdentification",nil,nil,nil,40)
SetGoodsCaoZuo(nil,"0|1","知识卷轴","Metadata/Items/Currency/CurrencyIdentification",nil,nil,nil,40)


-- 第一章（Act 1）：所有解鎖商店寶石的關鍵節點
AddNeedBuySkillTime(1,"a1q1") -- 敵人於門（進獅眼守望，初始1等技能）
AddNeedBuySkillTime(1,"a1q4") -- 打破鳥蛋（4等輔助寶石：幻影射手、氣勢、猛毒投射物）
AddNeedBuySkillTime(1,"a1q5") -- 沖刷上岸／醫藥箱（4等跑速與功能技：幻步、狙擊者印記）
AddNeedBuySkillTime(1,"a1q6") -- 禁靈之獄（8等核心輔助：附加冰冷/火焰/閃電傷害、齊射）
AddNeedBuySkillTime(1,"a1q7") -- 深入絕境／海妖梅薇兒（12等主攻技：閃電箭矢）

-- 第二章（Act 2）：捷光環與 18 等核心元素輔助
AddNeedBuySkillTime(2,"a2q6") -- 銳利的Apex／黑色入侵者（16等：冰霜之捷、灰燼之捷、鮮血狂怒）
AddNeedBuySkillTime(2,"a2q4") -- 清理蜘蛛／織網者（18等核心輔助：元素攻擊傷害、三體、快速攻擊）

-- 第三章（Act 3）：光環、魔像與圖書館全職業寶石解鎖
AddNeedBuySkillTime(3,"a3q3") -- 迷失的愛情／火葬場（24等詛咒與部分光環）
AddNeedBuySkillTime(3,"a3q9") -- 斷其右手／格拉維奇將軍（24等核心光環：元素淨化、憤怒）
AddNeedBuySkillTime(3,"a3q11") -- 鏟除腐敗／神權之塔前（28等砲塔：火砲砲塔）
AddNeedBuySkillTime(3,"a3q12") -- 命運之語／圖書館（31等全職業輔助：啟發輔助、多重圖騰、擊中時印記）

-- 第四章（Act 4）：魔像與高階輔助
AddNeedBuySkillTime(4,"a4q2") -- 打破封印（34等：召喚寒冰魔像）
AddNeedBuySkillTime(4,"a4q6") -- 永恆夢魘／馬拉凱（38等高階輔助：暴擊獲得暴擊球等）

-- 第六章（Act 6）：莉莉．羅斯全遊戲寶石商店解鎖（重要！）
AddNeedBuySkillTime(6,"a6q1") -- 墮落之翼／清理暮光海灘（解鎖全遊戲幾乎所有主動與輔助寶石）
AddNeedBuySkillTime(7,"a7q1") -- 第七章起點補買確認

AddNeedBuySkillTime(8,"a8q1") -- 日耀與月影（第8章最終Boss，打完準備進第9章）
AddNeedBuySkillTime(9,"a9q1") -- 進第9章高門營地（找莉莉．羅斯補買全技能）




g_useMoveSkillType=nil		--使用位移技能赶路场景 nil为一直都使用 0为剧情时使用 1为异界生产使用 2为从不使用
g_shengJiBaoShi=true		--自动升级宝石 true为升级 nil或false为不升级
g_notShuaBaiPao=true        --是否刷白袍 true为不刷 nil或false为刷
g_attackDis=65	 --攻击距离
g_duobiHpVal=0.6           --打怪时HP少于多少躲避
g_yiJieLv=70				--够了多少级才去刷异界
--SetTaskShengJiData(taskClassName,taskIndex,shengjiMapClassName,needLv)--设置跑图时升级 taskClassName=任务类名 taskIndex=任务索引 nil为忽略，只匹配任务类名 shengjiMapClassName=要刷的地图类名 needLv=升级到多少级为止
--SetTaskShengJiData("a5q7",nil,"1_5_5",46)--做 到奇塔弗的受难 的时候刷纯净圣地到45级再进行下一任务
--SetTaskShengJiData("a9q3",nil,"2_9_1",63)--滲血水道
--SetTaskShengJiData("a10q1",nil,"2_9_1",85)--滲血水道

SetTaskShengJiData("a5q6",nil,"1_5_5",46,true)--做 到奇塔弗的受难 的时候刷纯净圣地到46级再进行下一任务，不开箱子
SetTaskShengJiData("a9q3",nil,"2_9_1",63,true)--滲血水道练等，不开箱子

--SetTaskMiGongData(taskClassName,taskIndex,migongIndex)--设置跑图时迷宫 taskClassName=任务类名 taskIndex=任务索引 nil为忽略，只匹配任务类名 migongIndex为迷宫索引填 1=第一次迷宫 2=第二次迷宫
SetTaskMiGongData("a5q7",nil,1)--在第五章打奇塔弗前（奇塔弗的受難）做迷宫1
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
SetUseZhuangBeiTypeData("StrDex|DexInt|StrInt|Int|Dex|Str","衣服")
SetUseZhuangBeiTypeData("StrDex|DexInt|StrInt|Int|Dex|Str","头盔")
SetUseZhuangBeiTypeData("StrDex|DexInt|StrInt|Int|Dex|Str","手套")
SetUseZhuangBeiTypeData("StrDex|DexInt|StrInt|Int|Dex|Str","鞋子")
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


SetNeedSkillLineData(70,"鋼筋鐵骨,nil",nil,nil,nil)
SetNeedSkillLineData(10,"燃燒箭矢,nil|氣勢輔助,nil",2,nil,nil)
SetNeedSkillLineData(98,"火砲砲塔,nil|元素攻擊傷害輔助,nil|快速攻擊輔助,nil|附加冰冷傷害輔助,nil",80,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,30)
SetNeedSkillLineData(60,"魔改箭矢輔助,nil|狂怒,nil|冰霜射擊,nil|暴擊獲得暴擊球輔助,nil|活栓輔助,nil|鮮血狂怒,nil|迅捷,nil",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,50)
SetNeedSkillLineData(96,"狙擊者印記,nil|擊中時印記輔助,nil",nil,nil,nil)
SetNeedSkillLineData(50,"彈片砲塔,nil|快速攻擊輔助,nil|猛毒投射物輔助,nil|齊射輔助,nil",30,nil,nil)
SetNeedSkillLineData(30,"電流箭矢,nil|附加冰冷傷害輔助,nil|元素攻擊傷害輔助,nil|幻影射手輔助,nil|附加火焰傷害輔助,nil",14,nil,nil)
SetNeedSkillLineData(100,"閃電箭矢,nil|幻影射手輔助,nil|三體輔助,nil|附加冰冷傷害輔助,nil|元素攻擊傷害輔助,nil|啟發輔助,nil",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,12)

-- 階段1（15-30等過渡）：雙捷光環 + 鋼筋鐵骨（31等自動失效讓出魔力保留）
-- SetNeedSkillLineData(50,"冰霜之捷,nil|灰燼之捷,nil",33,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,15)

SetNeedSkillLineData(95,"冰霜之捷,nil|灰燼之捷,nil|召喚寒冰魔像,nil|幻步,nil",33,5,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,15)


-- 階段2（24等起、打完烏旗守衛將軍買到後接手）：元素淨化 + 憤怒 + 鋼筋鐵骨
SetNeedSkillLineData(99,"元素淨化,nil,1|憤怒,nil|召喚寒冰魔像,nil|幻步,nil",nil,5,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,33)

SetUseBuffSkill("冰霜之捷","herald_of_ice","冰霜之捷","herald_of_ice")
SetUseBuffSkill("灰燼之捷","herald_of_ash","灰燼之捷","herald_of_ash")


AddMoveSkillData("幻步","quick_dodge")
--异界主力技能设置

AddUseSkillData(1,"鋼筋鐵骨","steelskin")
AddUseSkillData(1,"鮮血狂怒","blood_rage")



SetGoodsCaoZuo(nil,"0|1","改造石","Metadata/Items/Currency/CurrencyRerollMagic",nil,nil,nil,15)

SetUseTuTengMonsterShuXingCnt("3",0)
--SetSkillLimitMaxLv(name,className,maxLv)--设置技能宝石最大等级 name=技能宝石物品名 className=技能宝石物品类名 maxLv=限制的最大等级
--SetSkillLimitMaxLv("亵渎","Metadata/Items/Gems/SkillGemDesecrate",2)
--SetSkillLimitMaxLv("迅捷","Metadata/Items/Gems/SkillGemHaste",11)
---SetSkillLimitMaxLv("瓦爾．迅捷","Metadata/Items/Gems/SkillGemVaalHaste",11)
SetDebuffSkill(nil,"snipers_mark",nil,"curse_snipers_mark","2|3")--狙擊者印記
SetSkillLimitMaxLv("鋼筋鐵骨",nil,10)
-- SetSkillLimitMaxLv("狙擊者印記","Metadata/Items/Gems/SkillGemProjectileWeakness",11)
-- SetSkillLimitMaxLv("受傷時施放輔助","Metadata/Items/Gems/SupportGemCastOnDamageTaken",2)


--AddAttackSkillData(name,className,noLine)--添加攻击技能 name=技能名 className=技能类名 noLine=不在直线就能攻击 挑选攻击技能会从上到下寻找，要把厉害的技能加在前面
--AddAttackSkillData("电弧","arc")
AddAttackSkillData("閃電箭矢","Lightning Arrow",false,65,0)--添加攻击技能
AddAttackSkillData("電流箭矢","Galvanic Arrow",false,50,0)--添加攻击技能
AddAttackSkillData("燃燒箭矢","Burning Arrow")
AddAttackSkillData("普通攻击","melee")

SetUseBuffSkill("召喚寒冰魔像","summon_ice_golem","寒冰魔像","ice_golem_buff")

---------------------------------------换装设置


-- 劇情與通用有效（血量與抗性絕對優先，忽略孔色、只算連洞）
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_maximum_life",10)                  -- 生命 (每10血=100分)
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_resist_all_elements_%",20)         -- 全元素抗性 % (每10%全抗=200分)
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","fire_and_cold_damage_resistance_%",8)   -- 雙抗 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","fire_and_lightning_damage_resistance_%",8)
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","cold_and_lightning_damage_resistance_%",8)
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_fire_damage_resistance_%",6)         -- 基底抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_cold_damage_resistance_%",6)
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_lightning_damage_resistance_%",6)
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","fire_damage_resistance_%",6)              -- 單抗 % (每30%單抗=180分)
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","cold_damage_resistance_%",6)
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","lightning_damage_resistance_%",6)
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","鞋子","base_movement_velocity_+%",15)                                         -- 鞋子跑速基底
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","鞋子","movement_velocity_+%",15)                                              -- 鞋子跑速詞綴

-- 不看顏色，純粹按「連洞數量」給分
SetAtuoChangeEquipData("游侠","衣服","连洞",120)                     -- 衣服保底主技能連線 (4連=480分, 5連=600分)
SetAtuoChangeEquipData("游侠","头盔|手套|鞋子","连洞",30)          -- 其他部位連洞僅作輔助加分 (4連=120分，不會蓋過高血抗裝)
-- 不看顏色，純粹按「連洞數量」給分 混抗
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_chaos_damage_resistance_%",5)
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","chaos_damage_resistance_%",5)


-- 遊俠屬性與弓箭點傷
SetAtuoChangeEquipData("游侠","项链","additional_strength",2)
SetAtuoChangeEquipData("游侠","项链","additional_intelligence",2)
SetAtuoChangeEquipData("游侠","项链","additional_strength_and_intelligence",3)

SetAtuoChangeEquipData("游侠","弓","DPS",6)                                    -- 內建武器總秒傷（自動淘汰低等弓基底，優先換高等高傷弓）
SetAtuoChangeEquipData("游侠","弓","local_maximum_added_fire_damage",12)      -- 武器附加火焰點傷
SetAtuoChangeEquipData("游侠","弓","local_maximum_added_cold_damage",12)      -- 武器附加冰冷點傷
SetAtuoChangeEquipData("游侠","弓","local_maximum_added_lightning_damage",12) -- 武器附加閃電點傷
SetAtuoChangeEquipData("游侠","弓","local_attack_speed_+%",25)                -- 武器局部攻擊速度 %（提升手感與總 DPS 核心）
SetAtuoChangeEquipData("游侠","弓","local_critical_strike_chance_+%",9)      -- 武器局部暴擊率 %（脊弓/象牙弓核心）
SetAtuoChangeEquipData("游侠","弓","base_critical_strike_multiplier_+",8)    -- 全域暴擊傷害加成 %
SetAtuoChangeEquipData("游侠","弓","weapon_elemental_damage_+%",8)            -- 攻擊元素傷害提高 %
SetAtuoChangeEquipData("游侠","弓","local_socketed_bow_gem_level_+",250)      -- 弓上寶石等級 +1/+2（對元素打擊．光譜提升極大）
SetAtuoChangeEquipData("游侠","弓","number_of_additional_arrows",500)         -- 額外發射箭矢 +1

-- 箭袋輸出補強（與弓相輔相成，兼顧點傷、攻速與暴擊）
SetAtuoChangeEquipData("游侠","箭袋","attack_maximum_added_fire_damage",10)
SetAtuoChangeEquipData("游侠","箭袋","attack_maximum_added_cold_damage",10)
SetAtuoChangeEquipData("游侠","箭袋","attack_maximum_added_lightning_damage",10)
SetAtuoChangeEquipData("游侠","箭袋","weapon_elemental_damage_+%",8)
SetAtuoChangeEquipData("游侠","箭袋","attack_speed_+%",15)
SetAtuoChangeEquipData("游侠","箭袋","critical_strike_chance_+%",8)
SetAtuoChangeEquipData("游侠","箭袋","base_critical_strike_multiplier_+",12)
SetAtuoChangeEquipData("游侠","箭袋","number_of_additional_arrows",500)


-- 前期 30 等起自動用點金石/富豪石點裝備（參考你朋友的改法，讓身上白/藍裝直接變金裝出抗性與血量）
AddShengJiZhuangBeiGoodsData("点金石","Metadata/Items/Currency/CurrencyUpgradeToRare",0,25,nil)
AddShengJiZhuangBeiGoodsData("富豪石","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",1,25,nil)




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
--SetGaoJiHuanZhuangData("游侠","简易之袍","Metadata/Items/Armours/BodyArmours/BodyInt1","无尽之衣","Tabula Rasa",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)
--SetGaoJiHuanZhuangData("游侠","皮帽","Metadata/Items/Armours/Helmets/HelmetDex1","金缕帽","Goldrim",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,4000)

--SetGaoJiHuanZhuangData("游侠","锻铁戒指","Metadata/Items/Rings/Ring1","英灵宝环","Le Heup of All",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)

--SetGaoJiHuanZhuangData("游侠","海灵戒指","Metadata/Items/Rings/Ring3","普兰德斯之记","Perandus Signet",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)

--SetGaoJiHuanZhuangData("游侠","素布腰带","Metadata/Items/Belts/Belt1","幻彩菱织","Prismweave",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)

--SetGaoJiHuanZhuangData("游侠","原矢箭袋","Metadata/Items/Quivers/QuiverNew13","平衡棱镜","The Poised Prism",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)

--SetGaoJiHuanZhuangData("游侠","熊首皮盔","Metadata/Items/Armours/Helmets/HelmetDex7","鼠巢","Rat's Nest",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)

--SetGaoJiHuanZhuangData("游侠","环带护手","Metadata/Items/Armours/Gloves/GlovesDexInt3","沙尘之影","Shadows and Dust",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)

--SetGaoJiHuanZhuangData("游侠","环带长靴","Metadata/Items/Armours/Boots/BootsDexInt3","日耀","Sundance",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)


-- 衣服：白袍（1等即可穿，5000分壓過普通金裝）
SetGaoJiHuanZhuangData("游侠","簡易之袍","Metadata/Items/Armours/BodyArmours/BodyInt1","無盡之衣","Tabula Rasa",nil,nil,nil,2,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)

-- 頭盔：前期金縷帽（4000分） -> 55等後自動升級成鼠巢（5000分）
SetGaoJiHuanZhuangData("游侠","皮帽","Metadata/Items/Armours/Helmets/HelmetDex1","金縷帽","Goldrim",nil,nil,nil,5,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,4000)
SetGaoJiHuanZhuangData("游侠","熊首皮盔","Metadata/Items/Armours/Helmets/HelmetDex7","鼠巢","Rat's Nest",nil,nil,nil,5,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)

-- 戒指：強制分開左戒(7)與右戒(8)，避免兩顆傳奇戒指互相搶位
SetGaoJiHuanZhuangData("游侠","鍛鐵戒指","Metadata/Items/Rings/Ring1","英靈寶環","Le Heup of All",nil,nil,nil,7,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)
SetGaoJiHuanZhuangData("游侠","海靈戒指","Metadata/Items/Rings/Ring3","普蘭德斯之記","Perandus Signet",nil,nil,nil,8,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)

-- 腰帶、箭袋、手套、鞋子
SetGaoJiHuanZhuangData("游侠","素布腰帶","Metadata/Items/Belts/Belt1","幻彩菱織","Prismweave",nil,nil,nil,11,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)
SetGaoJiHuanZhuangData("游侠","原矢箭袋","Metadata/Items/Quivers/QuiverNew13","平衡稜鏡","The Poised Prism",nil,nil,nil,4,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)
SetGaoJiHuanZhuangData("游侠","環帶護手","Metadata/Items/Armours/Gloves/GlovesDexInt3","沙塵之影","Shadows and Dust",nil,nil,nil,9,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)
SetGaoJiHuanZhuangData("游侠","環帶長靴","Metadata/Items/Armours/Boots/BootsDexInt3","日耀","Sundance",nil,nil,nil,10,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)



SetChangeLimitCnt("武器|衣服|头盔|手套|鞋子",2)
SetChangeLimitCnt("腰带",3)
SetChangeLimitCnt("项链|戒指",3)


--SetNeedAddTianFu(tfStr)--设置天赋加点 
SetNeedAddTianFu("游侠=attack_speed568-投射物傷害和命中|dexterity990-敏捷|dexterity992-敏捷|dexterity995-敏捷|perfect_aim591-彈道學|bow_damage_and_speed498-弓的傷害|greater_impact638-鷹靈祝福|bow_damage508-弓的傷害和暴擊率|bow_damage507-弓的傷害和暴擊率|attack_damage_notable2120-山貓之靈|stun_recovery544-生命和避免暈眩|avoid_stun553-橡木之心|stun_recovery543-生命和避免暈眩|finesse993-嫻熟|one_handed_damage636-武器元素傷害|shield_mastery440-自然合一|mana1479-魔力和藥劑效果|mana1478-原始精神|intelligence957-智慧|elemental_damage_es1615-獲得藥劑充能|elemental_reflect_2794-生命藥劑獲得充能|elemental_reflect_notable_2796-補藥|one_handed_damage637-武器元素傷害|claws_of_the_pride489-直覺|dexterity870-敏捷|life1412-生命|alchemist532-藥草學|mastery_life146-生命專精-47642|aura_area_of_effect1203-光環效果範圍|reduced_mana_reservation1199-保留效用|aura_effect_reservation_cost_notable1558-魅力|life1216-生命|dexterity862-敏捷|dexterity864-敏捷|dexterity866-敏捷|attack_speed1645-攻擊速度|attack_speed1231-攻擊速度|attack_speed1646-攻擊速度|attack_damage_notable2242-多重射擊|dexterity865-敏捷|dexterity860-敏捷|dexterity867-敏捷|damage_area_projectile_speed_2296-擊中時獲得生命和魔力|projectile_damage_projectile_speed1628-聰穎盜贼|life1415-生命|life_life_leech1629-嗜血者|dexterity856-敏捷|might770-無畏|savant903-盜贼工藝|dexterity872-敏捷|weapon_elemental_damage1263-武器元素傷害|weapon_elemental_damage1264-武器元素傷害|weapon_ele_notable1700-自然之力|mastery_elemental99-元素專精-17942|bow_damage506-弓的傷害|bow_damage_and_speed500-弓的攻擊速度|bow_damage505-弓的攻擊速度|bow_damage_and_speed501-弓的攻擊速度|deadly_draw680-飛矢宗師|evasion1692-閃避與元素抗性|evasion_resists_notable1691-死裡逃生|bow_damage_and_speed499-弓暴擊率和加成|bow_damage_and_speed502-弓暴擊率和加成|bow_damage_and_speed496-弓暴擊率和加成|king_of_the_hill529-強弩之弦|projectile_damage1233-投射物傷害|projectile_damage_pierce1685-穿透|projectile_pierce_notable1687-穿射箭矢|critical_strike_chance625-暴擊率|critical_strike_chance624-暴擊率|heartseeker626-刺心者|dexterity861-敏捷|weapon_elemental_damage2163-武器元素傷害|weapon_elemental_damage2161-武器元素傷害，異常狀態機率|weapon_elemental_damage2162-武器元素傷害，異常狀態機率|weapon_elemental_damage_notable2165-太古之力|dexterity873-敏捷|evasion_mobility2361-閃避和移動速度|evasion_mobility2363-閃避和移動速度|evasion_mobility_notable2364-飛毛腿|bow_critical_strike_chance675-投射物攻擊暴擊率|bow_critical_strike_chance674-投射物攻擊暴擊率|heartpierce676-致命鋒芒|intelligence927-智慧|intelligence926-智慧|mana1647-魔力|mind_drinker302-汲靈術|mastery_mana164-魔力專精-64875|dexterity848-敏捷|strength815-力量|dexterity981-敏捷|agility965-和諧之體|life703-生命|fitness617-血液抽取|life1220-生命|mental_acuity1046-詭計|critical_strike_chance1019-暴擊率|assassination1239-刺殺|life1119-閃避和生命|life1118-閃避和生命|life1117-死亡通緝|dexterity858-敏捷|life1167-生命和避免元素異常狀態|life1156-生命和避免元素異常狀態|life1120-生命和避免元素異常狀態|thick_skin1157-強化之膚|") 
SetNeedAddTianFu("游侠升华=AscendancyDeadeye5-投射物傷害、命中率|AscendancyDeadeye4-彈射|AscendancyDeadeye17-投射物傷害、命中率|AscendancyDeadeye6-無限彈藥|AscendancyDeadeye3-投射物傷害、攻擊速度|AscendancyDeadeye14-集風|") 

--SetNeedAddTianFu([[异界地图天赋=atlas_path_22-相鄰地圖掉落機率|atlas_path_12-相鄰地圖掉落機率|atlas_path_24_-相鄰地圖掉落機率|atlas_path_16-相鄰地圖掉落機率|atlas_path_25_-相鄰地圖掉落機率|atlas_path_27-相鄰地圖掉落機率|atlas_path_28-相鄰地圖掉落機率|atlas_map_drops_20-聖甲蟲掉落率|atlas_map_drops_2-聖甲蟲掉落率|atlas_map_drops_4-聖甲蟲掉落率|atlas_map_drops_8-聖甲蟲掉落率|atlas_path_92-聖甲蟲掉落率|atlas_path_61-物品數量|atlas_path_44-物品數量|atlas_path_35-物品數量|atlas_path_39-物品數量|atlas_path_34-物品數量|atlas_path_80-地圖詞綴效果|atlas_map_drops_7-地圖詞綴效果|atlas_mod_effect_6-地圖詞綴效果|atlas_keystone_nofragments_1-堅定不移的遠見|atlas_harbinger_1_1-額外神諭碎片|atlas_harbinger_1_2_-額外神諭碎片|atlas_harbinger_1_4-額外神諭碎片|atlas_harbinger_1_3-不祥到來|atlas_harbinger_3_1-額外神諭機率|atlas_harbinger_3_5-額外神諭碎片|atlas_harbinger_3_3-額外神諭碎片|atlas_harbinger_3_4-不可描述侵犯|atlas_harbinger_3_2-額外神諭機率|atlas_harbinger_3_6-額外神諭機率|atlas_harbinger_2_3-額外神諭機率|atlas_harbinger_2_5-額外神諭機率|atlas_harbinger_2_2-額外神諭機率|atlas_path_14-相鄰地圖掉落機率|atlas_path_26-相鄰地圖掉落機率|atlas_harvest_1_2-豐收機率|atlas_harvest_1_3-豐收機率|atlas_harvest_1_1-豐收機率|atlas_harvest_1_4-密園呼喚|atlas_harvest_2_1-豐收怪物複製機率|atlas_harvest_3_2-豐收機率|atlas_harvest_3_5-豐收機率|atlas_harvest_4_1-豐收額外生靈之力|atlas_harvest_2_3-豐收額外生靈之力|atlas_harvest_2_4-豐收額外生靈之力|atlas_harvest_3_4__-豐收|atlas_harvest_4_2-豐收怪物複製機率|atlas_harvest_2_5_-大豐收|atlas_path_83-聖甲蟲掉落率|atlas_harvest_4222-豐收額外生靈之力|atlas_harvest_4220-豐收額外生靈之力|atlas_harvest_4225-豐收額外生靈之力|atlas_harvest_4212-倍增期|atlas_harvest_4218-豐收機率|atlas_boss_adjacent_maps_10-物品數量和稀有度|atlas_boss_adjacent_maps_12-物品數量和稀有度|atlas_harvest_3_1-豐收階級 3 作物機率|atlas_harvest_2_6-密園之心|atlas_harvest_2_7-豐收階級 3 作物機率|atlas_harvest_3_3-豐收階級 3 作物機率|atlas_path_93-聖甲蟲掉落率|atlas_map_drops_9-聖甲蟲掉落率|atlas_map_drops_15-聖甲蟲掉落率|atlas_map_drops_16-聖甲蟲掉落率|atlas_map_drops_1-聖甲蟲掉落率|atlas_path_17-相鄰地圖掉落機率|atlas_path_18-相鄰地圖掉落機率|atlas_path_15-相鄰地圖掉落機率|atlas_path_2-相鄰地圖掉落機率|atlas_ritual_1_1-祭祀機率|atlas_ritual_1_2-祭祀機率|atlas_ritual_1_3-祭祀機率|atlas_ritual_1_4-聖地|atlas_path_82-聖甲蟲掉落率|atlas_map_drops_14-聖甲蟲掉落率|atlas_ritual_3_1-祭祀機率|atlas_ritual_3_2-重骰後免費獎勵機率|atlas_ritual_3_5-重骰後免費獎勵機率|atlas_ritual_3_4-貪財信徒|atlas_ritual_3_3-祭祀重骰消耗|atlas_ritual_3_6-祭祀重骰消耗|atlas_ritual_4253-靈活教條|atlas_path_85-聖甲蟲掉落率|atlas_mod_effect_1-地圖詞綴效果|atlas_ritual_4267-祭祀機率|atlas_ritual_4266-增加祭祀延遲消耗|atlas_ritual_4265_-增加祭祀延遲消耗|atlas_ritual_4254_-已答上訴|atlas_mod_effect_9-地圖詞綴效果|atlas_mod_effect_10-地圖詞綴效果|atlas_path_51-地圖詞綴效果|atlas_mod_effect_2-地圖詞綴效果|atlas_mod_effect_3-地圖詞綴效果|atlas_ritual_2_6-祭祀機率|atlas_ritual_2_3-祭祀貢禮數量|atlas_ritual_2_4_-祭祀貢禮數量|atlas_ritual_2_5-神秘奉獻|atlas_expedition_1_2-探險機率|atlas_expedition_4209-探險機率|atlas_expedition_4208-探險機率|atlas_expedition_1_3-尋找答案|atlas_expedition_3_3_-探險機率|atlas_keystone_expedition_single_explosive-極限考古學|atlas_expedition_3_4-探險商人重骰通貨機率|atlas_expedition_3_5-古文|atlas_expedition_4_5-探險機率|atlas_expedition_4_3-探險文物數量|atlas_expedition_4_6-被埋葬的知識|atlas_expedition_3_7-探險機率|atlas_expedition_4_7-探險機率|atlas_expedition_4_1-探險機率|atlas_expedition_4_2-爆裂物放置距離|atlas_expedition_1_4-傑出的拆遷專家|atlas_harbinger_2_4-初潮|]])

SetNotOpenChestMap("1_1_2")   -- 暮光海灘
SetNotOpenChestMap("1_1_4")   -- 碎岩山坡
SetNotOpenChestMap("1_1_5")   -- 禁靈之獄下層
SetNotOpenChestMap("1_1_6")   -- 禁靈之獄上層
SetNotOpenChestMap("1_1_7")   -- 囚犯之門
SetNotOpenChestMap("1_1_8")   -- 魅影船墓
SetNotOpenChestMap("1_1_9")   -- 怨忿之窟深處
SetNotOpenChestMap("2_2_1")   -- 南部森林
SetNotOpenChestMap("2_2_2")   -- 危機叉路
SetNotOpenChestMap("2_2_3")   -- 罪孽之殿1層
SetNotOpenChestMap("2_2_6")   -- 西部密林
SetNotOpenChestMap("2_2_7")   -- 織網者巢穴
SetNotOpenChestMap("2_2_8")   -- 河畔斷橋
SetNotOpenChestMap("2_2_9")   -- 濕地
SetNotOpenChestMap("2_2_10")  -- 瓦爾廢墟
SetNotOpenChestMap("2_2_11")  -- 北部密林
SetNotOpenChestMap("2_2_12")  -- 瀑布洞穴
SetNotOpenChestMap("1_3_1")   -- 薩恩城外
SetNotOpenChestMap("1_3_2")   -- 貧民窟
SetNotOpenChestMap("1_3_3")   -- 火葬場
SetNotOpenChestMap("1_3_5")   -- 市集地帶
SetNotOpenChestMap("1_3_6")   -- 激戰廣場
SetNotOpenChestMap("1_3_7")   -- 日耀神殿1層
SetNotOpenChestMap("1_3_8")   -- 日耀神殿2層
SetNotOpenChestMap("1_3_9")   -- 碼頭
SetNotOpenChestMap("1_3_10")  -- 烏旗守衛兵營
SetNotOpenChestMap("1_3_13")  -- 月影神殿1層
SetNotOpenChestMap("1_3_14")  -- 月影神殿2層
SetNotOpenChestMap("1_3_15")  -- 皇家花園
SetNotOpenChestMap("1_3_17")  -- 神權之塔上層
SetNotOpenChestMap("1_4_1")   -- 乾涸湖岸
SetNotOpenChestMap("1_4_2")   -- 漆黑礦坑1層
SetNotOpenChestMap("1_4_3")   -- 漆黑礦坑2層
SetNotOpenChestMap("1_4_4")   -- 水晶礦脈
SetNotOpenChestMap("1_4_5")   -- 岡姆的夢境
SetNotOpenChestMap("1_4_6")   -- 岡姆的堡壘
SetNotOpenChestMap("1_4_7")   -- 德瑞索的夢境
SetNotOpenChestMap("1_4_8")   -- 大競技場
SetNotOpenChestMap("1_4_9")   -- 巨獸之腹1層
SetNotOpenChestMap("1_4_10")  -- 巨獸之腹2層
SetNotOpenChestMap("1_4_11")  -- 育靈之室
SetNotOpenChestMap("1_5_1")   -- 奴隸圍欄
SetNotOpenChestMap("1_5_2")   -- 監守大道
SetNotOpenChestMap("1_5_3")   -- 鎮壓地帶
SetNotOpenChestMap("1_5_4")   -- 聖堂屋頂
SetNotOpenChestMap("1_5_5")   -- 純淨聖地
SetNotOpenChestMap("1_5_6")   -- 藏骨堂
SetNotOpenChestMap("1_5_7")   -- 聖物間
SetNotOpenChestMap("1_5_8")   -- 毀滅的廣場
SetNotOpenChestMap("1_5_9")   -- 褻瀆之室
SetNotOpenChestMap("2_6_1")   -- 暮光海灘(A6)
SetNotOpenChestMap("2_6_2")   -- 炙熱鹽沼(A6)
SetNotOpenChestMap("2_6_4")   -- 泥濘灘
SetNotOpenChestMap("2_6_5")   -- 禁靈之獄下層(A6)
SetNotOpenChestMap("2_6_7")   -- 囚犯之門(A6)
SetNotOpenChestMap("2_6_8")   -- 西部密林(A6)
SetNotOpenChestMap("2_6_9")   -- 河畔斷橋(A6)
SetNotOpenChestMap("2_6_10")  -- 濕地(A6)
SetNotOpenChestMap("2_6_11")  -- 南部森林(A6)
SetNotOpenChestMap("2_6_12")  -- 憤怒之窟
SetNotOpenChestMap("2_6_13")  -- 烽火柱
SetNotOpenChestMap("2_6_14")  -- 海洋王座
SetNotOpenChestMap("2_7_1")   -- 絕望沼澤
SetNotOpenChestMap("2_7_2")   -- 危機叉路(A7)
SetNotOpenChestMap("2_7_3")   -- 墮道遺跡
SetNotOpenChestMap("2_7_4")   -- 罪孽之殿1層(A7)
SetNotOpenChestMap("2_7_5")   -- 罪孽之殿2層(A7)
SetNotOpenChestMap("2_7_6")   -- 獸穴
SetNotOpenChestMap("2_7_7")   -- 灰原
SetNotOpenChestMap("2_7_8")   -- 北部密林(A7)
SetNotOpenChestMap("2_7_9")   -- 驚魂樹洞
SetNotOpenChestMap("2_7_10")  -- 堤道
SetNotOpenChestMap("2_7_11")  -- 瓦爾城市
SetNotOpenChestMap("2_7_12")  -- 腐化神殿1層
SetNotOpenChestMap("2_7_13")  -- 腐化神殿2層
SetNotOpenChestMap("2_8_1")   -- 薩恩城牆
SetNotOpenChestMap("2_8_2")   -- 毒氣林谷
SetNotOpenChestMap("2_8_3")   -- 大決鬥場
SetNotOpenChestMap("2_8_4")   -- 糧儲關口
SetNotOpenChestMap("2_8_5")   -- 帝王行宮
SetNotOpenChestMap("2_8_6")   -- 日耀神殿1層(A8)
SetNotOpenChestMap("2_8_7")   -- 日耀神殿2層(A8)
SetNotOpenChestMap("2_8_8")   -- 激戰廣場(A8)
SetNotOpenChestMap("2_8_9")   -- 港口大橋
SetNotOpenChestMap("2_8_10")  -- 月影神殿1層(A8)
SetNotOpenChestMap("2_8_11")  -- 月影神殿2層(A8)
SetNotOpenChestMap("2_8_12")  -- 浴血大道
SetNotOpenChestMap("2_8_13")  -- 宏偉長廊
SetNotOpenChestMap("2_9_1")   -- 滲血水道
SetNotOpenChestMap("2_9_2")   -- 瓦斯提里荒漠
SetNotOpenChestMap("2_9_3")   -- 綠洲
SetNotOpenChestMap("2_9_4")   -- 山麓
SetNotOpenChestMap("2_9_5")   -- 沸騰湖泊
SetNotOpenChestMap("2_9_6")   -- 隧道
SetNotOpenChestMap("2_9_7")   -- 採石場
SetNotOpenChestMap("2_9_8")   -- 煉油廠
SetNotOpenChestMap("2_9_9")   -- 巨獸之腹(A9)
SetNotOpenChestMap("2_9_10")  -- 腐化核心
SetNotOpenChestMap("2_10_1")  -- 奧瑞亞廣場
SetNotOpenChestMap("2_10_2")  -- 褻瀆之室(A10)
SetNotOpenChestMap("2_10_3")  -- 焦黑廣場
SetNotOpenChestMap("2_10_4")  -- 鎮壓地帶(A10)
SetNotOpenChestMap("2_10_5")  -- 聖物間(A10)
SetNotOpenChestMap("2_10_6")  -- 運河
SetNotOpenChestMap("2_10_7")  -- 豢養場
SetNotOpenChestMap("2_10_8")  -- 聖堂屋頂(A10)