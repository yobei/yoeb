package.path = GetPackagePath();
local loadArr={"自动任务"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end
g_changeHunDunLv=90         --多少级前不换C
g_zhuaShenLv=99             --多少级前不抓众神
g_yuyanCnt=99				--够多少银币去预言
g_needSuDiLv=99             --大于等于多少级打宿敌
g_needLieXiLv=99			--大於等于多少级打裂缝
g_needTaFangLv=99			--大于等于多少级打塔防
g_needMengYanLv=99          --大于等于多少级打梦魇
g_needChuanYueLv=99      	--大于等于多少级打穿越
g_yongHengShiBeiLv=99		--大于等于多少级打永恒
g_attackFreezeMonsterLv=99	--大于等于多少级打精髓
g_needZhuangYuanLv=99       --大于等于多少级打庄园
g_needLianMoLv=99			--大于等于多少级打炼魔
g_needZaFenLv=99		    --大于等于多少级打炸坟
g_needMiWuLv=99				--大于等于多少级打迷雾
g_needYongBingLv=99         --满多少级打佣兵玩法

g_addTianFu=false			--自动按设定好的配置加天赋 true为加 nil或false为不加
g_needAutoChangeEquip=false		--开启自动换装 true为换 nil或false为不换
g_youXianMapLv=70                    --取图时人物满多少级就从高阶开始取



--SetMapGongYi("神諭聯盟")                   --每次开图时选择諭工艺
g_needAutoSetBaoShi=false		--开启自动换宝石 true为换 nil或false为不换

--药瓶摆放
--SetNeedFlaskData(pos,flask)--设置药  pos=位置 1-5  flask=药 字符串型，支持以下 (生命药剂,魔力药剂,复合药剂,宝钻药剂,红玉药剂,蓝玉药剂,黄玉药剂,坚岩药剂,水银药剂,紫晶药剂,石英药剂,翠玉药剂,石化药剂,海蓝药剂,迷雾药剂,硫磺药剂,真银药剂,灰岩药剂)

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


g_useMoveSkillType=nil		--使用位移技能赶路场景 nil为一直都使用 0为剧情时使用 1为异界生产使用 2为从不使用
g_shengJiBaoShi=true		--自动升级宝石 true为升级 nil或false为不升级
g_notShuaBaiPao=true        --是否刷白袍 true为不刷 nil或false为刷
g_attackDis=40			    --攻击距离
g_duobiHpVal=0.2           --打怪时HP少于多少躲避

g_yiJieLv=70				--够了多少级才去刷异界
g_checkSellMapCnt=50		--地图超过这个数量才会检测出售地图
g_destroyNoUseMap=true		--销毁上面设置不使用的地图 nil或false为不销毁
g_mapUseFuHaoLv=78			--大于等于多少级对蓝图使用富豪石 nil为永远不使用
g_mapUseZengFuLv=78			--大于等于多少级对蓝图使用增幅石 nil为永远不使用
g_mapUseDianJingLv=76		--大于等于多少级对白图使用点金石 nil为永远不使用
g_mapUseTuiBianLv=72		--大于等于多少级对白图使用蜕变石 nil为永远不使用
g_mapUseJiHuiLv=75			--大于等于多少级对白图使用机会石 nil为永远不使用
g_mapUseWaErLv=80			--大于等于多少级对白、蓝地图使用瓦尔宝珠 nil为永远不使用
g_mapUseDingZiLv=nil			--大于等于多少级使用制图钉 nil为永远不使用
g_noUseMapLv=0				--不使用、不捡多少阶及以上的地图 nil或0为忽略 设置优先的地图除外


SetNoUseMapShuXing("map_monsters_reflect_%_physical_damage")--设置不打物理反射属性
SetNoUseMapShuXing("map_monsters_reflect_%_elemental_damage")--设置不打魔法反射属性
SetNoUseMapShuXing("map_players_no_regeneration_including_es")--无法回复
SetNoUseMapShuXing("is_blighted_map")--凋落地图



--SetTaskShengJiData(taskClassName,taskIndex,shengjiMapClassName,needLv)--设置跑图时升级 taskClassName=任务类名 taskIndex=任务索引 nil为忽略，只匹配任务类名 shengjiMapClassName=要刷的地图类名 needLv=升级到多少级为止
SetTaskShengJiData("a5q7",nil,"1_5_5",46)--做 到奇塔弗的受难 的时候刷纯净圣地到45级再进行下一任务
SetTaskShengJiData("a9q3",nil,"2_9_1",63)--滲血水道
--SetTaskShengJiData("a10q1",nil,"2_9_1",85)--滲血水道

--SetTaskMiGongData(taskClassName,taskIndex,migongIndex)--设置跑图时迷宫 taskClassName=任务类名 taskIndex=任务索引 nil为忽略，只匹配任务类名 migongIndex为迷宫索引填 1=第一次迷宫 2=第二次迷宫
SetTaskMiGongData("a8q7",nil,1)--大于等于a8q7级 做迷宫1
SetTaskMiGongData("a9q1",nil,2)--在复活的梦魇这个任务时 做迷宫2


--SetTaskMiGongDataByLv(lv,mgIndex)--设置到等级时做迷宫 lv 数字型 为大于等于多少级做 mgIndex=迷宫索引 数字型，只支持 1 2 3 对应3个迷宫
SetTaskMiGongDataByLv(80,3)


--指定职业  野蛮人、女巫、贵族、游侠、决斗者、暗影、圣堂武僧、
g_newRoleJob="游侠"
--升华职业 勇士、暴徒、酋长、侠客、锐眼、追猎者、秘术家、元素使、召唤师、处刑者、卫士、冠军、判官、圣宗、守护者、暗影大师、欺诈师、破坏者、升华使徒、
g_shengHuaJob="锐眼"



SetSkillLimitMaxLv("鋼筋鐵骨",nil,10)
-- SetSkillLimitMaxLv("狙擊者印記","Metadata/Items/Gems/SkillGemProjectileWeakness",11)
-- SetSkillLimitMaxLv("受傷時施放輔助","Metadata/Items/Gems/SupportGemCastOnDamageTaken",2)

--SetSkillUseWaEr("赦免","Metadata/Items/Gems/SkillGemAbsolution","瓦爾．赦免","Metadata/Items/Gems/SkillGemVaalAbsolution",1)
--SetSkillUseWaEr("迅捷","Metadata/Items/Gems/SkillGemHaste","瓦爾．迅捷","Metadata/Items/Gems/SkillGemVaalHaste",6)

--AddAttackSkillData(name,className,noLine)--添加攻击技能 name=技能名 className=技能类名 noLine=不在直线就能攻击 挑选攻击技能会从上到下寻找，要把厉害的技能加在前面
--AddAttackSkillData("电弧","arc")
AddAttackSkillData("閃電箭矢","Lightning Arrow",false,40,0)--添加攻击技能

--SetNeedAddTianFu(tfStr)--设置天赋加点 
SetNeedAddTianFu("游侠=attack_speed568-投射物傷害和命中|dexterity990-敏捷|dexterity992-敏捷|dexterity995-敏捷|perfect_aim591-彈道學|bow_damage_and_speed498-弓的傷害|greater_impact638-鷹靈祝福|bow_damage508-弓的傷害和暴擊率|bow_damage507-弓的傷害和暴擊率|attack_damage_notable2120-山貓之靈|stun_recovery544-生命和避免暈眩|avoid_stun553-橡木之心|stun_recovery543-生命和避免暈眩|finesse993-嫻熟|one_handed_damage636-武器元素傷害|shield_mastery440-自然合一|mana1479-魔力和藥劑效果|mana1478-原始精神|intelligence957-智慧|elemental_damage_es1615-獲得藥劑充能|elemental_reflect_2794-生命藥劑獲得充能|elemental_reflect_notable_2796-補藥|one_handed_damage637-武器元素傷害|claws_of_the_pride489-直覺|dexterity870-敏捷|life1412-生命|alchemist532-藥草學|mastery_life146-生命專精-47642|aura_area_of_effect1203-光環效果範圍|reduced_mana_reservation1199-保留效用|aura_effect_reservation_cost_notable1558-魅力|life1216-生命|dexterity862-敏捷|dexterity864-敏捷|dexterity866-敏捷|attack_speed1645-攻擊速度|attack_speed1231-攻擊速度|attack_speed1646-攻擊速度|attack_damage_notable2242-多重射擊|dexterity865-敏捷|dexterity860-敏捷|dexterity867-敏捷|damage_area_projectile_speed_2296-擊中時獲得生命和魔力|projectile_damage_projectile_speed1628-聰穎盜贼|life1415-生命|life_life_leech1629-嗜血者|dexterity856-敏捷|might770-無畏|savant903-盜贼工藝|dexterity872-敏捷|weapon_elemental_damage1263-武器元素傷害|weapon_elemental_damage1264-武器元素傷害|weapon_ele_notable1700-自然之力|mastery_elemental99-元素專精-17942|bow_damage506-弓的傷害|bow_damage_and_speed500-弓的攻擊速度|bow_damage505-弓的攻擊速度|bow_damage_and_speed501-弓的攻擊速度|deadly_draw680-飛矢宗師|evasion1692-閃避與元素抗性|evasion_resists_notable1691-死裡逃生|bow_damage_and_speed499-弓暴擊率和加成|bow_damage_and_speed502-弓暴擊率和加成|bow_damage_and_speed496-弓暴擊率和加成|king_of_the_hill529-強弩之弦|projectile_damage1233-投射物傷害|projectile_damage_pierce1685-穿透|projectile_pierce_notable1687-穿射箭矢|critical_strike_chance625-暴擊率|critical_strike_chance624-暴擊率|heartseeker626-刺心者|dexterity861-敏捷|weapon_elemental_damage2163-武器元素傷害|weapon_elemental_damage2161-武器元素傷害，異常狀態機率|weapon_elemental_damage2162-武器元素傷害，異常狀態機率|weapon_elemental_damage_notable2165-太古之力|dexterity873-敏捷|evasion_mobility2361-閃避和移動速度|evasion_mobility2363-閃避和移動速度|evasion_mobility_notable2364-飛毛腿|bow_critical_strike_chance675-投射物攻擊暴擊率|bow_critical_strike_chance674-投射物攻擊暴擊率|heartpierce676-致命鋒芒|intelligence927-智慧|intelligence926-智慧|mana1647-魔力|mind_drinker302-汲靈術|mastery_mana164-魔力專精-64875|dexterity848-敏捷|strength815-力量|dexterity981-敏捷|agility965-和諧之體|life703-生命|fitness617-血液抽取|life1220-生命|mental_acuity1046-詭計|critical_strike_chance1019-暴擊率|assassination1239-刺殺|life1119-閃避和生命|life1118-閃避和生命|life1117-死亡通緝|dexterity858-敏捷|life1167-生命和避免元素異常狀態|life1156-生命和避免元素異常狀態|life1120-生命和避免元素異常狀態|thick_skin1157-強化之膚|") 
SetNeedAddTianFu("游侠升华=AscendancyDeadeye5-投射物傷害、命中率|AscendancyDeadeye4-彈射|AscendancyDeadeye17-投射物傷害、命中率|AscendancyDeadeye6-無限彈藥|AscendancyDeadeye3-投射物傷害、攻擊速度|AscendancyDeadeye14-集風|") 

--SetNeedAddTianFu([[异界地图天赋=atlas_path_22-相鄰地圖掉落機率|atlas_path_12-相鄰地圖掉落機率|atlas_path_24_-相鄰地圖掉落機率|atlas_path_16-相鄰地圖掉落機率|atlas_path_25_-相鄰地圖掉落機率|atlas_path_27-相鄰地圖掉落機率|atlas_path_28-相鄰地圖掉落機率|atlas_map_drops_20-聖甲蟲掉落率|atlas_map_drops_2-聖甲蟲掉落率|atlas_map_drops_4-聖甲蟲掉落率|atlas_map_drops_8-聖甲蟲掉落率|atlas_path_92-聖甲蟲掉落率|atlas_path_61-物品數量|atlas_path_44-物品數量|atlas_path_35-物品數量|atlas_path_39-物品數量|atlas_path_34-物品數量|atlas_path_80-地圖詞綴效果|atlas_map_drops_7-地圖詞綴效果|atlas_mod_effect_6-地圖詞綴效果|atlas_keystone_nofragments_1-堅定不移的遠見|atlas_harbinger_1_1-額外神諭碎片|atlas_harbinger_1_2_-額外神諭碎片|atlas_harbinger_1_4-額外神諭碎片|atlas_harbinger_1_3-不祥到來|atlas_harbinger_3_1-額外神諭機率|atlas_harbinger_3_5-額外神諭碎片|atlas_harbinger_3_3-額外神諭碎片|atlas_harbinger_3_4-不可描述侵犯|atlas_harbinger_3_2-額外神諭機率|atlas_harbinger_3_6-額外神諭機率|atlas_harbinger_2_3-額外神諭機率|atlas_harbinger_2_5-額外神諭機率|atlas_harbinger_2_2-額外神諭機率|atlas_path_14-相鄰地圖掉落機率|atlas_path_26-相鄰地圖掉落機率|atlas_harvest_1_2-豐收機率|atlas_harvest_1_3-豐收機率|atlas_harvest_1_1-豐收機率|atlas_harvest_1_4-密園呼喚|atlas_harvest_2_1-豐收怪物複製機率|atlas_harvest_3_2-豐收機率|atlas_harvest_3_5-豐收機率|atlas_harvest_4_1-豐收額外生靈之力|atlas_harvest_2_3-豐收額外生靈之力|atlas_harvest_2_4-豐收額外生靈之力|atlas_harvest_3_4__-豐收|atlas_harvest_4_2-豐收怪物複製機率|atlas_harvest_2_5_-大豐收|atlas_path_83-聖甲蟲掉落率|atlas_harvest_4222-豐收額外生靈之力|atlas_harvest_4220-豐收額外生靈之力|atlas_harvest_4225-豐收額外生靈之力|atlas_harvest_4212-倍增期|atlas_harvest_4218-豐收機率|atlas_boss_adjacent_maps_10-物品數量和稀有度|atlas_boss_adjacent_maps_12-物品數量和稀有度|atlas_harvest_3_1-豐收階級 3 作物機率|atlas_harvest_2_6-密園之心|atlas_harvest_2_7-豐收階級 3 作物機率|atlas_harvest_3_3-豐收階級 3 作物機率|atlas_path_93-聖甲蟲掉落率|atlas_map_drops_9-聖甲蟲掉落率|atlas_map_drops_15-聖甲蟲掉落率|atlas_map_drops_16-聖甲蟲掉落率|atlas_map_drops_1-聖甲蟲掉落率|atlas_path_17-相鄰地圖掉落機率|atlas_path_18-相鄰地圖掉落機率|atlas_path_15-相鄰地圖掉落機率|atlas_path_2-相鄰地圖掉落機率|atlas_ritual_1_1-祭祀機率|atlas_ritual_1_2-祭祀機率|atlas_ritual_1_3-祭祀機率|atlas_ritual_1_4-聖地|atlas_path_82-聖甲蟲掉落率|atlas_map_drops_14-聖甲蟲掉落率|atlas_ritual_3_1-祭祀機率|atlas_ritual_3_2-重骰後免費獎勵機率|atlas_ritual_3_5-重骰後免費獎勵機率|atlas_ritual_3_4-貪財信徒|atlas_ritual_3_3-祭祀重骰消耗|atlas_ritual_3_6-祭祀重骰消耗|atlas_ritual_4253-靈活教條|atlas_path_85-聖甲蟲掉落率|atlas_mod_effect_1-地圖詞綴效果|atlas_ritual_4267-祭祀機率|atlas_ritual_4266-增加祭祀延遲消耗|atlas_ritual_4265_-增加祭祀延遲消耗|atlas_ritual_4254_-已答上訴|atlas_mod_effect_9-地圖詞綴效果|atlas_mod_effect_10-地圖詞綴效果|atlas_path_51-地圖詞綴效果|atlas_mod_effect_2-地圖詞綴效果|atlas_mod_effect_3-地圖詞綴效果|atlas_ritual_2_6-祭祀機率|atlas_ritual_2_3-祭祀貢禮數量|atlas_ritual_2_4_-祭祀貢禮數量|atlas_ritual_2_5-神秘奉獻|atlas_expedition_1_2-探險機率|atlas_expedition_4209-探險機率|atlas_expedition_4208-探險機率|atlas_expedition_1_3-尋找答案|atlas_expedition_3_3_-探險機率|atlas_keystone_expedition_single_explosive-極限考古學|atlas_expedition_3_4-探險商人重骰通貨機率|atlas_expedition_3_5-古文|atlas_expedition_4_5-探險機率|atlas_expedition_4_3-探險文物數量|atlas_expedition_4_6-被埋葬的知識|atlas_expedition_3_7-探險機率|atlas_expedition_4_7-探險機率|atlas_expedition_4_1-探險機率|atlas_expedition_4_2-爆裂物放置距離|atlas_expedition_1_4-傑出的拆遷專家|atlas_harbinger_2_4-初潮|]])

--异界天赋 輿圖點速刷轉EB
SetNeedAddTianFu([[异界地图天赋=atlas_path_22-相鄰地圖掉落機率|atlas_path_23_-相鄰地圖掉落機率|atlas_boss_adjacent_maps_1-相鄰地圖掉落機率|atlas_boss_adjacent_maps_8-相鄰地圖掉落機率|atlas_zana_1_11-偵查報告掉落機率|atlas_zana_1_3-偵查報告掉落機率|atlas_zana_1_6-重點偵察|atlas_zana_1_1-偵查報告掉落機率|atlas_zana_1_2-偵查報告掉落機率|atlas_path_96-聖甲蟲掉落率|atlas_map_tier_3_3-雕塑世界|atlas_map_tier_5_2-高階地圖機率|atlas_keystone_fortune_favours_doubled-大膽行動|atlas_map_tier_4_1-高階地圖機率|atlas_map_tier_5_1-高階地圖機率|atlas_path_61-物品數量|atlas_path_44-物品數量|atlas_path_35-物品數量|atlas_path_39-物品數量|atlas_path_34-物品數量|atlas_path_80-物品稀有度|atlas_map_drops_7-物品稀有度|atlas_mod_effect_6-地圖詞綴效果|atlas_keystone_nofragments_1-堅定不移的遠見|atlas_map_tier_3_2-高階地圖機率|atlas_map_tier_3_1-高階地圖機率|atlas_path_38-相鄰地圖掉落機率|atlas_path_21-相鄰地圖掉落機率|atlas_path_27-相鄰地圖掉落機率|atlas_path_28-相鄰地圖掉落機率|atlas_map_tier_1_2_-高階地圖機率|atlas_map_tier_1_1-高階地圖機率|atlas_map_tier_1_3-雕塑山型|atlas_path_37-相鄰地圖掉落機率|atlas_path_30-相鄰地圖掉落機率|atlas_path_18-相鄰地圖掉落機率|atlas_path_17-相鄰地圖掉落機率|atlas_map_tier_2_1-高階地圖機率|atlas_map_tier_2_2-高階地圖機率|atlas_map_tier_2_3-雕塑天空|atlas_path_15-相鄰地圖掉落機率|atlas_path_2-相鄰地圖掉落機率|atlas_path_10-相鄰地圖掉落機率|atlas_path_19-相鄰地圖掉落機率|atlas_path_1-相鄰地圖掉落機率|atlas_path_20-相鄰地圖掉落機率|atlas_path_9-相鄰地圖掉落機率|atlas_path_6-相鄰地圖掉落機率|atlas_path_8-相鄰地圖掉落機率|atlas_path_13-相鄰地圖掉落機率|atlas_path_22-相鄰地圖掉落機率|atlas_path_12-相鄰地圖掉落機率|atlas_path_24_-相鄰地圖掉落機率|atlas_path_16-相鄰地圖掉落機率|atlas_path_25_-相鄰地圖掉落機率|atlas_path_5-相鄰地圖掉落機率|atlas_path_14-相鄰地圖掉落機率|atlas_path_26-相鄰地圖掉落機率|]])