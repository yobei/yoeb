package.path = GetPackagePath();
local loadArr={"自动任务"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end


--指定职业  野蛮人、女巫、贵族、游侠、决斗者、暗影、圣堂武僧、
g_newRoleJob="游侠"
--升华职业 勇士、暴徒、酋长、侠客、锐眼、追猎者、秘术家、元素使、召唤师、处刑者、卫士、冠军、判官、圣宗、守护者、暗影大师、欺诈师、破坏者、升华使徒、
g_shengHuaJob="侠客"
--设置使用的武器 支持(盾}箭袋}爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 如果需要用两样中间用|分开
SetUseWeapon("匕首")
--设置自己用的装备类型 

g_needMinimizeGame=false			--最小化遊戲窗口 true为最小化 false或nil为不最小化
g_imBoss=false					--如果是仓库号要为true 挂机号为false
g_attackDis=50					--攻击距离
g_yiJieTimeOut=15*60			--异界地图内的超时时间 单位为秒 如果未设置就会用g_timeOut *是乘号 这里为15乘以60=15分钟
g_timeOut=25*60					--在一个地图呆的时间超过设置的 就重新开图重新 单位为秒
g_addTianFu=true				--自动按设定好的配置加天赋 true为加 nil或false为不加
g_shengJiBaoShi=true			--自动升级宝石 true为升级 nil或false为不升级
g_sellSkillGem=false				--自动卖超过40品质的技能宝石
g_notHuanYaoLv=82				--大于等于多少级只捡蓝色以上药 
g_needAutoChangeEquip=false		--开启自动换装 true为换 nil或false为不换
g_needAutoSetBaoShi=false		--开启自动换宝石 true为换 nil或false为不换
g_bossGiveZhuangBei=false		--交易时仓库号给予缺少的高级换装中的装备 true为给 false为不给 是对仓库号设置的
g_xiaoHaoGetZhuangBei=false		--挂机号向发装仓库号申请领高级换装中的装备 true为申请 false为不申请 

SetSaveIndex("通货|可堆叠通货","1")
SetSaveIndex("异界地图","2")
SetSaveIndex("项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|腰带|手套|鞋子|头盔","3")
SetSaveIndex("珠宝|命运卡|衣服|盾|箭袋|地图碎片","2")
SetSaveIndex("生命药剂|魔力药剂|复合药剂|功能药剂","2")
SetSaveIndex(nil,"2","鍊魔眼睛","Metadata/Items/Metamorphosis/MetamorphosisEye")
SetSaveIndex(nil,"2","预言","Metadata/Items/Currency/CurrencyItemisedProphecy")
SetSaveIndex(nil,"2","鏈結石","Metadata/Items/Currency/CurrencyRerollSocketLinks")
SetSaveIndex(nil,"2","改造石","Metadata/Items/Currency/CurrencyRerollMagic")


g_yijieNoWhiteMonster=false		--异界时是否不打白怪 true为不打 nil或false为打
g_yijieNoWhiteBox=true			--异界时是否不开白箱子 true为不开 nil或false为开
g_useYiJieWanChengDuLv=90	--使用下面异界完成度那个设置的等级，如果未到等则刷全图
g_yiJieWanChengDu=0.9		--异界完成度 完成多少就回去 为1或1以下的小数
g_yongHengShiBeiLv=90		--大于等于多少级打永恒石碑 
g_needTaFangLv=90			--大于等于多少级打塔防
g_needLianMoLv=90			--大于等于多少级打炼魔
g_attackFreezeMonsterLv=90	--大于等于多少级打冰冻怪
g_needChuanYueLv=90			--大于等于多少级打穿越怪
g_needLieXiLv=90			--大於等于多少级打时空裂缝怪
g_needMiWuLv=90				--大于等于多少级打迷雾

g_yuyanCnt=nil				--够多少银币去预言，小于10银币或填nil将不会触发 如果设定去预言，那下面还需要设置交易给仓库号的预言


g_attackDis=50				--攻击距离
g_duobiHpVal=0.2

g_yiJieLv=70				--够了多少级才去刷异界
g_checkSellMapCnt=40		--地图超过这个数量才会检测出售地图
g_destroyNoUseMap=false		--销毁上面设置不使用的地图 nil或false为不销毁
g_mapUseFuHaoLv=76			--大于等于多少级对蓝图使用富豪石 nil为永远不使用
g_mapUseZengFuLv=nil			--大于等于多少级对蓝图使用增幅石 nil为永远不使用
g_mapUseDianJingLv=76		--大于等于多少级对白图使用点金石 nil为永远不使用
g_mapUseTuiBianLv=72		--大于等于多少级对白图使用蜕变石 nil为永远不使用
g_mapUseJiHuiLv=nil			--大于等于多少级对白图使用机会石 nil为永远不使用
g_mapUseWaErLv=83			--大于等于多少级对白、蓝地图使用瓦尔宝珠 nil为永远不使用
g_mapUseDingZiLv=nil			--大于等于多少级使用制图钉 nil为永远不使用
g_noUseMapLv=0				--不使用、不捡多少阶及以上的地图 nil或0为忽略 设置优先的地图除外

SetNoUseMapShuXing("map_monsters_reflect_%_elemental_damage")--设置不打魔法反射属性
SetNoUseMapShuXing("map_players_no_regeneration_including_es")--无法回复
SetNoUseMapShuXing("is_blighted_map")--凋落地图


SetGoodsCaoZuo("爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|手套|鞋子|衣服|头盔","0|1",nil,nil,nil,nil,nil,nil,"0|1|2",nil,nil,nil,true,nil,function(gd)return not g_setAllSkillGemOk end )--技能宝石未全部装备上就 拾取 出售蓝色 白色 黄色的三色相连装备


--SetNeedSkillLineData(val,str,invalidLv,pos)--设置换技能宝石数据 
--val=每块宝石的比重值
--str="宝石1,宝石1类名|宝石2,宝石2类名|宝石3,宝石3类名" 名与类名之间用,隔开 宝石之间用|隔开
--invalidLv=失效等级 超过这个等级就不会需要他了
--pos=指定位置 nil为自动选择 2为衣服 3为主武器 4为副武器 5为头盔 6为项链 7为左戒指 8为右戒指 9为护手 10为鞋子 11为腰带
--nType 有效场景 nil为无论何时都有效 0为没在刷异界才有效 1为只在刷异界才有效


--添加攻击技能 name=技能名 className=技能类名 noLine=不在直线就能攻击 挑选攻击技能会从上到下寻找，要把厉害的技能加在前面
AddAttackSkillData("冰霜之刃","Frost Blades")
AddAttackSkillData("普通攻击","melee")

--SetSkillLimitMaxLv(name,className,maxLv)--设置技能宝石最大等级 name=技能宝石物品名 className=技能宝石物品类名 maxLv=限制的最大等级
SetSkillLimitMaxLv("受傷時施放輔助",nil,1)
SetSkillLimitMaxLv("熔岩護盾",nil,10)
-- SetYiJieZhaoHuanLingTiData(mapClassName,name,className)--设置异界时召唤的灵体数据 mapClassName=剧情图类名 name=灵体名 className=灵体类名

--SetNeedFlaskData(pos,flask,modsData,minLv)--设置药瓶摆放
SetNeedFlaskData(1,"生命药剂","泡騰的,FlaskPartialInstantRecovery4|密封之,FlaskBleedCorruptingBloodImmunity1",50)
SetNeedFlaskData(2,"生命药剂","nil")
SetNeedFlaskData(3,"魔力药剂","耐久的,FlaskEffectNotRemovedOnFullMana1",50)
SetNeedFlaskData(4,"紫晶药剂","nil")
SetNeedFlaskData(5,"水银药剂","nil")


g_addHpVal=0.7--HP低于多少吃红药
g_addMpVal=0.5--MP低于多少吃蓝药


--游侠


--AddShengJiZhuangBeiGoodsData("点金石","Metadata/Items/Currency/CurrencyUpgradeToRare",0,30,0)--主线生效 超过50级就用点金点白色装备
--AddShengJiZhuangBeiGoodsData("富豪石","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",1,30,0)--主线生效 超过50级就用富豪点蓝色装备

--掉落率+稀有率 异界时才有效
--SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|法杖|盾","base_item_found_rarity_+%",0.5,2)--基礎物品掉落品質 +%
--SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|法杖|盾","base_item_found_quantity_+%",1.5,2)--物品掉落數量增加 %

--高级换装设置

--SetTaskShengJiData(taskClassName,taskIndex,shengjiMapClassName,needLv)--设置跑图时升级 taskClassName=任务类名 taskIndex=任务索引 nil为忽略，只匹配任务类名 shengjiMapClassName=要刷的地图类名 needLv=升级到多少级为止
SetTaskShengJiData("a5q7",nil,"1_5_5",46,true)--做 到奇塔弗的受难 的时候刷纯净圣地到50级再进行下一任务
SetTaskShengJiData("a9q3",nil,"2_9_1",68,true)--做 到風暴飛刃 的时候刷滲血水道到68级再进行下一任务

SetTaskMiGongData("a8q7",nil,1)--大于等于a9q1级 做迷宫1
SetTaskMiGongData("a10q1",nil,2)--大于等于a10q1 做迷宫2
SetTaskMiGongDataByLv(78,3)--大于等于80级 做迷宫3

g_openQlkMaxMapTianFuCnt=nil--数值型 满多少天赋后不开奇拉克任务nil为一直开
g_useMinLvMapTianFuCnt=70--地图天赋满多少点后 就从低阶地图开始取
SetYiJieShuaTuModeByMapCnt(40,nil,2)--)--根据仓库里的地图数量设置异界刷图模式 可添加多个 他是从地图数量多到少来判断的
SetOpenMapMasterData(3)


SetChangeLimitCnt("武器|衣服|头盔|手套|鞋子",0)
SetChangeLimitCnt("腰带",0)
SetChangeLimitCnt("项链|戒指",0)


--SetNeedAddTianFu(tfStr)--设置天赋加点 

SetNeedAddTianFu("游侠=evasion731-閃避和生命|dexterity988-敏捷|dexterity986-敏捷|dexterity984-敏捷|finesse993-嫻熟|one_handed_damage636-武器元素傷害|shield_mastery440-自然合一|reduced_mana1480-魔力和藥劑效果|mana1478-原始精神|dexterity985-敏捷|dexterity861-敏捷|weapon_elemental_damage2163-武器元素傷害|weapon_elemental_damage2161-武器元素傷害，異常狀態機率|weapon_elemental_damage2162-武器元素傷害，異常狀態機率|weapon_elemental_damage_notable2165-太古之力|cold_damage2025-冰冷傷害|cold_damage2026-冰冷傷害和冰冷異常狀態效果|cold_damage_notable2027-閃現冰凍|dexterity873-敏捷|dexterity858-敏捷|dexterity968-敏捷|weapon_cold_damage212-武器冰冷傷害|weapon_cold_damage211-武器冰冷傷害|ice_bite433-刺骨寒冰|dexterity862-敏捷|dexterity864-敏捷|dexterity866-敏捷|dexterity865-敏捷|attack_speed1231-攻擊速度|attack_speed1645-攻擊速度|attack_speed1646-攻擊速度|dexterity860-敏捷|dagger_damage2060-匕首傷害和移動速度|dagger_mobility2533-匕首的傷害和移動速度|from_the_shadows471-影刃|mastery_dagger78-匕首專精-44869|dexterity856-敏捷|savant903-盗贼工艺|might770-無畏|dexterity872-敏捷|weapon_elemental_damage1263-武器元素傷害|weapon_elemental_damage1264-武器元素傷害|weapon_ele_notable1700-自然之力|dexterity855-敏捷|dexterity848-敏捷|strength815-力量|dexterity981-敏捷|agility965-和諧之體|life703-生命|fitness617-血液抽取|life1220-生命|mental_acuity1046-詭計|intelligence957-智慧|aura_area_of_effect1203-光環效果範圍|reduced_mana_reservation1199-保留效用|aura_effect_reservation_cost_notable1558-魅力|dexterity867-敏捷|intelligence927-智慧|intelligence926-智慧|dagger_damage264-匕首傷害|dagger_damage_and_critical_strike_chance465-匕首暴擊率和暴擊加成|dagger_damage_and_critical_strike_multiplier262-匕首暴擊率和加成|dagger_damage_and_critical_strike_multiplier263-匕首暴擊率和加成|dagger_global_crit_notable2527-背刺|dagger_damage_and_attack_speed466-匕首傷害和攻擊速度|dagger_damage_and_attack_speed467-匕首傷害和攻擊速度|dagger_damage_and_attack_speed468-匕首傷害和攻擊速度|flaying266-剝皮刃|life1415-生命|life_life_leech1629-嗜血者|accuracy587-命中和暴擊率|accuracy586-命中和暴擊率|deadeye588-潛意識|mastery_accuracy2-命中專精-64775|damage_area_projectile_speed_2296-擊中時獲得生命和魔力|projectile_damage_projectile_speed1628-聪颖盗贼|intelligence1993-智慧|attack_damage_notable2242-多重射擊|mastery_block31-攻擊專精-39154|dexterity835-敏捷|dexterity844-敏捷|dexterity840-敏捷|dexterity838-敏捷|mana_on_kill1476-魔力和光環範圍效果|mana_on_kill_notable1704-狂歡|mastery_mana171-魔力專精-64875|strength1005-力量|armour_and_evasion1454-護甲和閃避|leather_and_steel1458-迅影秘術|evasion1692-閃避與元素抗性|evasion_resists_notable1691-死裡逃生|iron_reflexes1137-霸體|dexterity1990_-敏捷|maximum_frenzy_charges527-野性之心|evasion_per_frenzy_charge535-每顆狂怒球閃避|maximum_frenzy_charges525-激情|life1213-生命|golem's_blood1088-魔像血統 |frenzy_charges2419-每顆狂怒球閃避|frenzy_charges2418-移動速度|frenzy_charges2420-每顆狂怒球攻擊速度|frenzy_charges_notable2421-屠宰者之使徒|mastery_charges50-充能專精-40307|life1119-閃避和生命|life1118-閃避和生命|life1117-死亡通緝|mastery_life138-生命專精-64381|intelligence964-智慧|dagger_crit2532-匕首的暴擊率|dagger_damage_and_critical_strike_chance257-匕首暴擊加成|nightstalker261-夜襲|")
SetNeedAddTianFu("游侠升华=AscendancyRaider3-閃避、狂怒球持續時間|AscendancyRaider2-盜獵者之途|AscendancyRaider1-閃避、狂怒球持續時間|AscendancyRaider4-殺戮使徒|AscendancyRaider9-閃避、元素傷害|AscendancyRaider10-石英化身|AscendancyRaider11-閃避、元素傷害|AscendancyRaider12-面紗女神|") 
