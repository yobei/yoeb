
--所有通用设置 都在这里
--[[
---------------------------------------------不懂的一定要好好看这里的说明
--两个减号 --为注释符号 注释掉后相关的设置将不再起作用 
所用到的数据类型有以下几种 
1、逻辑型 有两种状态 true为真 false为假  大家看到带有false与true的数据 就知道他是逻辑型了
2、数值型 支持小数 负数 直接填写数字就是了 如：-1 100 0.123 这种都是数值型 不需要带引号 
3、字符串型 填写的时候前后都需要用半角引号包含起来 如："我是仓库号" 注意只有字符串型的才需要两边带引号
然后这三种类型的数据都能使用nil  nil是空值 表示忽略 ，表示什么都没有 两边不需要引号

设置中需要用到的数据 各种数据名字与类名都需要打开目录下的调试信息查看器，然后再游戏中按HOME键呼出调试窗口 
点击你要查看的数据的按钮，里面都能找到名字=name 类名=className 这里推荐大家要填写className 这样设置好的配置能够台 国 国际 三服通用
所有设置又分为两种 
1、变量型：设置项=数据 这种简单粗暴的都是变量型设置 直接改那个等于号后面的数据就是了
2、函数型：函数名(参数1,参数2) 这样的就是函数型 由函数名与若干个参数组成 参数被半角括号()套起来
]]
------------------基本设置
g_needMinimizeGame=false			--最小化遊戲窗口 true为最小化 false或nil为不最小化
g_imBoss=false				--如果是仓库号要为true 挂机号为false
g_yiJieTimeOut=18*60			--异界地图内的超时时间 单位为秒 如果未设置就会用g_timeOut *是乘号 这里为15乘以60=15分钟
g_timeOut=18*60				--在一个地图呆的时间超过设置的 就重新开图重新 单位为秒
g_attackDis=40	                        --攻击距离
g_sellSkillGem=false			--自动卖超过40品质的技能宝石
g_notHuanYaoLv=82			--大于等于多少级只捡蓝色以上药
g_bossGiveZhuangBei=false 	        --交易时仓库号给予缺少的高级换装中的装备
g_xiaoHaoGetZhuangBei=false		--挂机号向仓库号申请领高级换装中的装备
g_duobiHpVal=0.5                       --打怪时HP少于多少躲避
g_addHpVal=0.6                          --HP低于多少吃红药
g_addMpVal=0.3                          --MP低于多少吃蓝药
g_changeHunDunLv=90                     --多少级前不换C
g_notShuaBaiPao=true                    --是否不需要刷白袍 true为不需要 false或nil为需要
g_wenWuChangeTime=60*60  	        --間隔多久检测一次文物兑换 单位为秒

g_needAutoSetBaoShi=true		--开启自动换宝石 true为换 nil或false为不换

AddUseGoodsData("天賦之書")             --添加天赋之书
g_yiJieLv=70			        --够了多少级才去刷异界

g_needYongBingLv=85                --数字型 满多少级打佣兵玩法 nil为一直不打
g_noUseMapLv=17		--不使用、不捡多少阶及以上的地图 nil或0为忽略 设置优先的地图除外
g_useMinLvMapTianFuCnt=40       -- 数值型 取图时，地图天赋满多少点后 就从低阶地图开始取 永远优先低阶地图(快速完成天赋)
g_openQlkMaxMapTianFuCnt=nil     -- 不限制天赋数量

------------------挂机相关
g_yijieNoWhiteMonster=false	--异界时是否不打白怪 true为不打 nil或false为打
g_yijieNoWhiteBox=true		--异界时是否不开白箱子 true为不开 nil或false为开
g_useYiJieWanChengDuLv=75	--使用异界地图完成度机制的等级,68级开始
g_yiJieWanChengDu=0.7		--异界完成度 50%即可回城 为1即1以下的小数
g_yongHengShiBeiLv=85		--大于等于多少级打永恒石碑 
g_needTaFangLv=90		--大于等于多少级打塔防
g_needZhuangYuanLv=85           --大于等于多少级打庄园
g_needLianMoLv=90		--大于等于多少级打炼魔
g_attackFreezeMonsterLv=80	--大于等于多少级打冰冻怪
g_needChuanYueLv=90		--大于等于多少级打穿越怪
g_needLieXiLv=90		--大於等于多少级打时空裂缝怪
g_needMiWuLv=90			--大于等于多少级打迷雾
g_needZaFenLv=99                --设置多少级开始做新赛季炸坟玩法
g_needMengYanLv=85              --85级以后就点梦魇

g_checkSellMapCnt=60		--地图超过这个数量才会检测出售地图
g_destroyNoUseMap=true		--销毁上面设置不使用的地图 nil或false为不销毁
g_mapUseFuHaoLv=70		--大于等于多少级对蓝图使用富豪石 nil为永远不使用
g_mapUseZengFuLv=70		--大于等于多少级对蓝图使用增幅石 nil为永远不使用
g_mapUseDianJingLv=70		--大于等于多少级对白图使用点金石 nil为永远不使用
g_mapUseTuiBianLv=70		--大于等于多少级对白图使用蜕变石 nil为永远不使用
g_mapUseJiHuiLv=80		--大于等于多少级对白图使用机会石 nil为永远不使用
g_mapUseWaErLv=80		--大于等于多少级对白、蓝地图使用瓦尔宝珠 nil为永远不使用
g_mapUseDingZiLv=80		--大于等于多少级使用制图钉 nil为永远不使用
g_mapUseOrangeMap=true		--true为使用橙图 nil或false为不使用
g_czYouXianMap=true                             --是否重铸不打属性的优先地图 true为是 false或nil为不重铸 



--设置多少样装备换C
--SetChangeLimitCnt("头盔|手套|鞋子|武器|衣服",3)
--SetChangeLimitCnt("项链|腰带",9)
--SetChangeLimitCnt("戒指",18)

--卡等级模式
--SetTaskShengJiData("a1q6",nil,"1_1_9",15)
--SetTaskShengJiData("a5q7",nil,"1_5_5",46)
--SetTaskShengJiData("a9q1",nil,"2_9_1",65)


--SetZhuangBeiBoss(bossName,srvName)--设置发装仓库号 bossName=发装号名字 字符串型 srvName=服务器名字，如果多个区用同一份配置的话填上服务器名字可单独区分 如果不是可忽略 或填nil 
--SetZhuangBeiBoss("GOST_GO",nil)--发装备的仓库号 如果不需要 就注释掉

--添加在做到某个任务时购买技能宝石
--AddNeedBuySkillTime(city,task)--city=城市索引数值型 1-11 task=任务类名 字符串型 任务类名可以在调试窗口中点击 所有任务 按钮查看到

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
AddNeedBuySkillTime(1,"a3q1")
AddNeedBuySkillTime(2,"a3q11")
AddNeedBuySkillTime(1,"a3q11")
AddNeedBuySkillTime(2,"a3q3")
AddNeedBuySkillTime(1,"a3q3")
AddNeedBuySkillTime(2,"a3q4")
AddNeedBuySkillTime(1,"a3q4")
AddNeedBuySkillTime(3,"a3q8")
AddNeedBuySkillTime(2,"a3q8")
AddNeedBuySkillTime(1,"a3q8")
AddNeedBuySkillTime(3,"a3q9")
AddNeedBuySkillTime(2,"a3q9")
AddNeedBuySkillTime(1,"a3q9")
AddNeedBuySkillTime(3,"a3q12")
AddNeedBuySkillTime(2,"a3q12")
AddNeedBuySkillTime(1,"a3q12")
AddNeedBuySkillTime(3,"a3q10")
AddNeedBuySkillTime(2,"a3q10")
AddNeedBuySkillTime(1,"a3q10")
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

AddNeedBuySkillTime(6,"a6q1")	--在第6章的惊海之王时 检测购买一遍
AddNeedBuySkillTime(6,"a6q2")
AddNeedBuySkillTime(6,"a6q3")
AddNeedBuySkillTime(6,"a6q5")
AddNeedBuySkillTime(7,"a7q2")
AddNeedBuySkillTime(8,"a8q2")
AddNeedBuySkillTime(6,"a7q2")
AddNeedBuySkillTime(6,"a8q2")
AddNeedBuySkillTime(6,"a10q2")
AddNeedBuySkillTime(10,"a10q2")	--第10章的死亡和重生任务 检测购买一遍
AddNeedBuySkillTime(11,"a11q1")	--在拾取碎片 这个任务时检测购买一遍



--AddNotMakeTaskData(taskClassName)--添加不需要做的任务 taskClassName为任务类名
--AddNotMakeTaskData("a2q10")--白色巨兽
AddNotMakeTaskData("a3q13")--重生的渴望
AddNotMakeTaskData("a3q12")--命运之语
AddNotMakeTaskData("a6q5")--毕斯特传奇
--AddNotMakeTaskData("a7q8")--古斯特的墓碑
AddNotMakeTaskData("a7q5")--银色吊坠
AddNotMakeTaskData("a8q5")--瓦斯提里之翼
AddNotMakeTaskData("a9q4")--命运之历
AddNotMakeTaskData("a10q4")--无爱旧魂
AddNotMakeTaskData("a10q5")--深海之路
AddUseGoodsData("天賦之書")--添加天赋之书
AddUseGoodsData("後悔之書")--添加後悔之书

--SetTaskMiGongData(taskClassName,taskIndex,migongIndex)--设置跑图时迷宫 taskClassName=任务类名 taskIndex=任务索引 nil为忽略，只匹配任务类名 migongIndex为迷宫索引填 1=第一次迷宫 2=第二次迷宫
--SetTaskMiGongDataByLv(35,1)
--SetTaskMiGongData("a9q1",nil,2)
SetTaskMiGongDataByLv(80,3)

--SetZhongShenData(className1,className2)--设置要加的众神殿数据 className1=高阶数据类名 字符串型 className2=低阶数据类名 字符串型 
SetZhongShenData("TheBrineKing","Yugul")--设置月影女神之魂与绝望之母 格鲁丝克之魂


------------------存仓分类
--SetSaveIndex(saveType,pageName,goodsName,goodsClassName,wordName,wordClassName,pageType)--设置存仓页面 
--SaveType 物品类型 字符串型 支持以下种类 忽略填nil 多种类型以|分开 --SaveType 类型 支持以下种类 多种类型以|分开 生命药剂|魔力药剂|复合药剂|通货|项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|主动技能宝石|辅助技能宝石|箭袋|腰带|手套|鞋子|衣服|头盔|盾|小型圣物|中型圣物|大型圣物|可堆叠通货|任务物品|短杖|功能药剂|暴击药剂|异界地图||鱼竿|地图碎片|藏身处装饰|商城物品|盗贼饰品珠宝|命运卡|迷宫物品|迷宫饰品|异界迷宫物品|裂隙之石|赛季石|神灵之魂|传奇装备碎片|深渊珠宝|穿越通货|地心探索：可镶嵌的通货|孕育石|碎片|破碎之心|符文匕首|战杖|地心探索可堆叠可插入通货|
--pageName 仓库页面名 字符串型 可填多个，中间用|隔开
--goodsName 物品名 字符串型 忽略填nil
--goodsClassName 物品类名 字符串型 忽略填nil
--wordName 词缀名 字符串型 忽略填nil
--wordClassName 词缀类名 字符串型 忽略填nil
--pageType 仓库页类型 数值型 不填或nil或0 为普通仓库 1为通货页 2为命运卡页  3为碎片页

-------注意要大类在前 小类 单独设置在后面添加
SetSaveIndex("通货|可堆叠通货","1|2|3|4")
--SetSaveIndex("地圖|地圖碎片","1|2",nil,"Metadata/Items/Maps/MapKeyTier1")
SetSaveIndex("异界地图|地圖|地图|地图","3")

--SetSaveIndex("异界地图|地圖|地图","1|2",nil,nil,nil,nil,nil,nil,nil)

SetSaveIndex("项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|腰带|手套|鞋子|头盔","4")
SetSaveIndex("主动技能宝石|辅助技能宝石|珠宝|命运卡|衣服|盾|箭袋|地图碎片|契约|地心探索：可镶嵌的通货","3|4|6|7|8")
SetSaveIndex("生命药剂|魔力药剂|复合药剂|功能药剂|契约|地图碎片|预言","4")
SetSaveIndex("地图碎片","2")
SetSaveIndex("鱼竿","4")
SetSaveIndex("蓝图","4|5|6|7|8")
SetSaveIndex("SentinelDrone","1|4")
--獸園
--SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueHarvest/Green/HarvestSquidT3MemoryLine")--靈現之看守者
--SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueHarvest/Green/HarvestVultureParasiteT3MemoryLine")--靈現之禿鷹
--SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueAzmeri/GullGoliathBestiary")--黑色莫里根
--SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/MarakethBirdSpiritBoss")--初始之天斯卡沃
--SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/NessaCrabBestiarySpiritBoss")--初始之潭奎爾珊
--SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/GemFrogBestiary")--奎爾珊龍蜥
--SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/PitbullBestiary")--費爾羅坑穴獵犬
--SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/IguanaBestiary")--斯卡沃龍蜥
--SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/VultureBestiary")--斯卡沃禿鷹
--SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/InsectSpawnerBestiary")--菲恩絲女皇
--SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/Avians/MarakethBirdBestiary")--斯卡沃雛鳥
--SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/RootSpiderBestiary")--菲恩絲吞噬獸



--SetMapCfg(name,className,px,noUse,noTf)--添加地图设置
--name 字符串型 地图物品名字
--className 字符串型 地图物品类名
--px 逻辑型 是否使用平行石  true为使用 false或nil为不使用
--noUse 逻辑型 是否不打这个图 true为不打 false或nil为打
--noTf 逻辑型 拓地图天赋时是否不打这个图 true为不打 false或nil为打
--SetMapCfg("实验居所","Metadata/Items/Maps/MapWorldsLaboratory",true,true,true,nil)
--SetMapCfg("魔金宝库","Metadata/Items/Maps/MapWorldsVault",true,true,true,nil)
--SetMapCfg("異蛛墓塚","Metadata/Items/Maps/MapWorldsArachnidTomb",true,true,true,nil)
SetMapCfg("核心","Metadata/Items/Maps/MapWorldsCore",true,true,true,nil)
SetMapCfg("巨坑","Metadata/Items/Maps/MapAtlasPit",true,true,true,nil)
SetMapCfg("奇術秘殿","Metadata/Items/Maps/MapWorldsShrine",true,true,true,nil)
--SetMapCfg("神域之殿","Metadata/Items/Maps/MapWorldsPalace",true,true,true,nil)
--SetMapCfg("密林果園","Metadata/Items/Maps/MapWorldsOrchard",true,true,true,nil)
--SetMapCfg("軍械庫","Metadata/Items/Maps/MapWorldsArmoury",true,true,true,nil)
--SetMapCfg("密草神殿","Metadata/Items/Maps/MapWorldsOvergrownShrine",true,true,true,nil)
--SetMapCfg("瓦爾金字塔","Metadata/Items/Maps/MapWorldsVaalPyramid",true,true,true,nil)
--SetMapCfg("骨跡陵墓","Metadata/Items/Maps/MapWorldsBoneCrypt",true,true,true,nil)
--SetMapCfg("古兵工廠","Metadata/Items/Maps/MapWorldsArsenal",true,true,true,nil)
--SetMapCfg("古博物館","Metadata/Items/Maps/MapWorldsMuseum",true,true,true,nil)
--SetMapCfg("魅影別墅","Metadata/Items/Maps/MapWorldsVilla",true,true,true,nil)
--SetMapCfg("遠古市集","Metadata/Items/Maps/MapWorldsBazaar",true,true,true,nil)
--SetMapCfg("遠古危城","Metadata/Items/Maps/MapWorldsAncientCity",true,true,true,nil)
--SetMapCfg("古堡","Metadata/Items/Maps/MapWorldsChateau",true,true,true,nil)
--SetMapCfg("寧逸溫房","Metadata/Items/Maps/MapWorldsConservatory",true,true,true,nil)
--SetMapCfg("寒河","Metadata/Items/Maps/MapWorldsColdRiver",true,true,true,nil)
--SetMapCfg("畸形亡域","Metadata/Items/Maps/MapWorldsMalformation",true,true,true,nil)




--SetYouXianUseMapData(name,className,color)--设置优先使用的异界地图 
--name 字符串型 地图名 
--className 字符串型 地图类名 
--color 字符串型 颜色 0白1蓝2黄3橙 中间用|隔开
--SetYouXianUseMapData("禁斷圍城","Metadata/Items/Maps/MapWorldsSiege","0|1|2|")
--SetYouXianUseMapData("墓地谷","Metadata/Items/Maps/MapWorldsGraveTrough","0|1|2|")
--SetYouXianUseMapData("岩漿熔湖","Metadata/Items/Maps/MapWorldsLavaLake","0|1|2|")
--SetYouXianUseMapData("象牙神殿","Metadata/Items/Maps/MapWorldsIvoryTemple","0|1|2|")
--SetYouXianUseMapData("濱海山丘","Metadata/Items/Maps/MapWorldsAtoll","0|1|2|")
--SetYouXianUseMapData("赤貧居所","Metadata/Items/Maps/MapWorldsGhetto","0|1|2|")
--SetYouXianUseMapData("遠古市集","Metadata/Items/Maps/MapWorldsBazaar","0|1|2|")
--SetYouXianUseMapData("海風高原","Metadata/Items/Maps/MapWorldsPlateau","0|1|2|")
--SetYouXianUseMapData("巨蛛之林","Metadata/Items/Maps/MapWorldsSpiderForest","0|1|2|")
--SetYouXianUseMapData("不潔教堂","Metadata/Items/Maps/MapWorldsDefiledCathedral","0|1|2|")
--SetYouXianUseMapData("致命岩灘","Metadata/Items/Maps/MapWorldsStrand","0|1|2|")
--SetYouXianUseMapData("魔影墓場","Metadata/Items/Maps/MapWorldsNecropolis","0|1|2|")
--SetYouXianUseMapData("濱海幽穴","Metadata/Items/Maps/MapWorldsUndergroundSea","0|1|2|")
--SetYouXianUseMapData("崩壞長廊","Metadata/Items/Maps/MapWorldsArcade","0|1|2|")
--SetYouXianUseMapData("平頂荒漠","Metadata/Items/Maps/MapWorldsMesa","0|1|2|")
--SetYouXianUseMapData("聖殿","Metadata/Items/Maps/MapWorldsBasilica","0|1|2|")
--SetYouXianUseMapData("濕地礦山","Metadata/Items/Maps/MapWorldsMineralPools","0|1|2|")
--SetYouXianUseMapData("危機水道","Metadata/Items/Maps/MapWorldsWaterways","0|1|2|")
--SetYouXianUseMapData("遠古危城","Metadata/Items/Maps/MapWorldsAncientCity","0|1|2|")
--SetYouXianUseMapData("荊棘谷","Metadata/Items/Maps/MapWorldsBrambleValley","0|1|2|")

--SetNoUseMapShuXing(className)--设置不使用带有某种属性的地图,参数 className为属性类名
SetNoUseMapShuXing("map_monsters_reflect_%_physical_damage")--设置不打物理反射属性
SetNoUseMapShuXing("map_monsters_reflect_%_elemental_damage")--设置不打魔法反射属性
--SetNoUseMapShuXing("map_players_no_regeneration_including_es")--无法回复
SetNoUseMapShuXing("is_blighted_map")--凋落地图


--SetSellGoodsData(name,className,cnt,color)--设置卖(换)的地图 
--name=物品名 className=物品类名 先识别物品名 识别不到就识别类名 cnt=够多少去卖 color=颜色 0白 1蓝 2黄 多个用|隔开
SetSellGoodsData("危城巷弄","Metadata/Items/Maps/MapWorldsAlleyways",3,"0|1|2|")
SetSellGoodsData("濱海堡壘","Metadata/Items/Maps/MapWorldsRamparts",3,"0|1|2|")
SetSellGoodsData("露台花園","Metadata/Items/Maps/MapWorldsTerrace",3,"0|1|2|")
SetSellGoodsData("骨跡陵墓","Metadata/Items/Maps/MapWorldsBoneCrypt",3,"0|1|2|")
SetSellGoodsData("詭譎晶洞","Metadata/Items/Maps/MapWorldsGeode",3,"0|1|2|")
SetSellGoodsData("大決鬥場","Metadata/Items/Maps/MapWorldsColosseum",3,"0|1|2|")
SetSellGoodsData("暮色沙丘","Metadata/Items/Maps/MapWorldsDunes",3,"0|1|2|")
SetSellGoodsData("秘密通道","Metadata/Items/Maps/MapWorldsChannel",3,"0|1|2|")
SetSellGoodsData("古堡","Metadata/Items/Maps/MapWorldsChateau",3,"0|1|2|")
SetSellGoodsData("魅影別墅","Metadata/Items/Maps/MapWorldsVilla",3,"0|1|2|")
SetSellGoodsData("陰暗墓塚","Metadata/Items/Maps/MapWorldsSepulchre",3,"0|1|2|")
SetSellGoodsData("靜縊陵墓","Metadata/Items/Maps/MapWorldsMausoleum",3,"0|1|2|")
SetSellGoodsData("致命岩灘","Metadata/Items/Maps/MapWorldsStrand",6,"0|1|2|")
SetSellGoodsData("禁忌之森","Metadata/Items/Maps/MapWorldsForbiddenWoods",3,"0|1|2|")
SetSellGoodsData("酸岩酸嶼","Metadata/Items/Maps/MapWorldsAcidLakes",3,"0|1|2|")
SetSellGoodsData("異蛛墓塚","Metadata/Items/Maps/MapWorldsArachnidTomb",3,"0|1|2|")
SetSellGoodsData("密草神殿","Metadata/Items/Maps/MapWorldsOvergrownShrine",3,"0|1|2|")
SetSellGoodsData("實驗居所","Metadata/Items/Maps/MapWorldsLaboratory",3,"0|1|2|")
SetSellGoodsData("不潔教堂","Metadata/Items/Maps/MapWorldsDefiledCathedral",6,"0|1|2|")
SetSellGoodsData("核心","Metadata/Items/Maps/MapWorldsCore",1,"0|1|2|")
SetSellGoodsData("巨蛛之林","Metadata/Items/Maps/MapWorldsSpiderForest",6,"0|1|2|")
SetSellGoodsData("晨曦墓地","Metadata/Items/Maps/MapWorldsCemetery",3,"0|1|2|")
SetSellGoodsData("夜語幽林","Metadata/Items/Maps/MapWorldsDarkForest",3,"0|1|2|")
SetSellGoodsData("海風高原","Metadata/Items/Maps/MapWorldsPlateau",6,"0|1|2|")
SetSellGoodsData("禁斷圍城","Metadata/Items/Maps/MapWorldsSiege",3,"0|1|2|")
SetSellGoodsData("瓦爾金字塔","Metadata/Items/Maps/MapWorldsVaalPyramid",3,"0|1|2|")
SetSellGoodsData("鍊金房","Metadata/Items/Maps/MapWorldsFoundry",3,"0|1|2|")
SetSellGoodsData("嬋娟神殿","Metadata/Items/Maps/MapWorldsMoonTemple",3,"0|1|2|")
SetSellGoodsData("遠古市集","Metadata/Items/Maps/MapWorldsBazaar",6,"0|1|2|")
SetSellGoodsData("奇術之庭","Metadata/Items/Maps/MapWorldsCourtyard",3,"0|1|2|")
SetSellGoodsData("赤貧居所","Metadata/Items/Maps/MapWorldsGhetto",6,"0|1|2|")
SetSellGoodsData("凍原小屋","Metadata/Items/Maps/MapWorldsFrozenCabins",3,"0|1|2|")
SetSellGoodsData("濱海山丘","Metadata/Items/Maps/MapWorldsAtoll",6,"0|1|2|")
SetSellGoodsData("瘴氣泥沼","Metadata/Items/Maps/MapWorldsBog",3,"0|1|2|")
SetSellGoodsData("古競速場","Metadata/Items/Maps/MapWorldsRacecourse",3,"0|1|2|")
SetSellGoodsData("象牙神殿","Metadata/Items/Maps/MapWorldsIvoryTemple",6,"0|1|2|")
SetSellGoodsData("遠古危城","Metadata/Items/Maps/MapWorldsAncientCity",3,"0|1|2|")
SetSellGoodsData("暮光海灘","Metadata/Items/Maps/MapWorldsShore",3,"0|1|2|")
SetSellGoodsData("月色迴廊","Metadata/Items/Maps/MapWorldsPromenade",3,"0|1|2|")
SetSellGoodsData("岩漿熔湖","Metadata/Items/Maps/MapWorldsLavaLake",6,"0|1|2|")
SetSellGoodsData("荒涼牧野","Metadata/Items/Maps/MapWorldsLeyline",3,"0|1|2|")
SetSellGoodsData("聖殿","Metadata/Items/Maps/MapWorldsBasilica",6,"0|1|2|")
SetSellGoodsData("寧逸溫房","Metadata/Items/Maps/MapWorldsConservatory",3,"0|1|2|")
SetSellGoodsData("苦行之域","Metadata/Items/Maps/MapWorldsPrecinct",3,"0|1|2|")
SetSellGoodsData("血腥陣地","Metadata/Items/Maps/MapWorldsTortureChamber",3,"0|1|2|")
SetSellGoodsData("冰川山丘","Metadata/Items/Maps/MapWorldsGorge",3,"0|1|2|")
SetSellGoodsData("危城廣場","Metadata/Items/Maps/MapWorldsCitySquare",3,"0|1|2|")
SetSellGoodsData("濕地礦山","Metadata/Items/Maps/MapWorldsMineralPools",3,"0|1|2|")
SetSellGoodsData("危機水道","Metadata/Items/Maps/MapWorldsWaterways",3,"0|1|2|")
SetSellGoodsData("惡咒陵墓","Metadata/Items/Maps/MapWorldsCursedCrypt",3,"0|1|2|")
SetSellGoodsData("激戰柱廊","Metadata/Items/Maps/MapWorldsColonnade",3,"0|1|2|")
SetSellGoodsData("古兵工廠","Metadata/Items/Maps/MapWorldsArsenal",3,"0|1|2|")
SetSellGoodsData("毒牙海港","Metadata/Items/Maps/MapWorldsWharf",3,"0|1|2|")
SetSellGoodsData("熾炎船塢","Metadata/Items/Maps/MapWorldsShipyard",3,"0|1|2|")
SetSellGoodsData("晴空幽島","Metadata/Items/Maps/MapWorldsTropicalIsland",3,"0|1|2|")
SetSellGoodsData("魔金寶庫","Metadata/Items/Maps/MapWorldsVault",3,"0|1|2|")
SetSellGoodsData("墓影書坊","Metadata/Items/Maps/MapWorldsScriptorium",3,"0|1|2|")
SetSellGoodsData("硫磺荒漠","Metadata/Items/Maps/MapWorldsDesertSpring",3,"0|1|2|")
SetSellGoodsData("違禁掘坑","Metadata/Items/Maps/MapWorldsDig",3,"0|1|2|")
SetSellGoodsData("園林苑","Metadata/Items/Maps/MapWorldsPark",3,"0|1|2|")
SetSellGoodsData("荊棘谷","Metadata/Items/Maps/MapWorldsBrambleValley",3,"0|1|2|")
SetSellGoodsData("破碎堡礁","Metadata/Items/Maps/MapWorldsCoralRuins",3,"0|1|2|")
SetSellGoodsData("魔靈幻獄","Metadata/Items/Maps/MapWorldsPhantasmagoria",3,"0|1|2|")
SetSellGoodsData("平頂荒漠","Metadata/Items/Maps/MapWorldsMesa",3,"0|1|2|")
SetSellGoodsData("極原冰帽","Metadata/Items/Maps/MapWorldsIceberg",3,"0|1|2|")
SetSellGoodsData("乾枯湖岸","Metadata/Items/Maps/MapWorldsAridLake",3,"0|1|2|")
SetSellGoodsData("熔火岩灘","Metadata/Items/Maps/MapWorldsEstuary",3,"0|1|2|")
SetSellGoodsData("幽暗地穴","Metadata/Items/Maps/MapWorldsGrotto",3,"0|1|2|")
SetSellGoodsData("濱海幽穴","Metadata/Items/Maps/MapWorldsUndergroundSea",3,"0|1|2|")
SetSellGoodsData("崩壞長廊","Metadata/Items/Maps/MapWorldsArcade",3,"0|1|2|")
SetSellGoodsData("劇毒林谷","Metadata/Items/Maps/MapWorldsJungleValley",3,"0|1|2|")
SetSellGoodsData("密林果園","Metadata/Items/Maps/MapWorldsOrchard",3,"0|1|2|")
SetSellGoodsData("墓地谷","Metadata/Items/Maps/MapWorldsGraveTrough",6,"0|1|2|")
SetSellGoodsData("雲頂鐘樓","Metadata/Items/Maps/MapWorldsBelfry",3,"0|1|2|")
SetSellGoodsData("儲物倉","Metadata/Items/Maps/MapWorldsSilo",3,"0|1|2|")
SetSellGoodsData("遺跡廢墟","Metadata/Items/Maps/MapWorldsCastleRuins",3,"0|1|2|")
SetSellGoodsData("亞特蘭提斯","Metadata/Items/Maps/MapWorldsSunkenCity",3,"0|1|2|")
SetSellGoodsData("禁魂炎獄","Metadata/Items/Maps/MapWorldsDungeon",3,"0|1|2|")
SetSellGoodsData("魔影墓場","Metadata/Items/Maps/MapWorldsNecropolis",3,"0|1|2|")
SetSellGoodsData("腐敗下水道","Metadata/Items/Maps/MapWorldsToxicSewer",3,"0|1|2|")
SetSellGoodsData("古博物館","Metadata/Items/Maps/MapWorldsMuseum",3,"0|1|2|")
SetSellGoodsData("白沙灘頭","Metadata/Items/Maps/MapWorldsBeach",3,"0|1|2|")
SetSellGoodsData("怒浪之港","Metadata/Items/Maps/MapWorldsPier",3,"0|1|2|")
SetSellGoodsData("畸形亡域","Metadata/Items/Maps/MapWorldsMalformation",3,"0|1|2|")
SetSellGoodsData("軍械庫","Metadata/Items/Maps/MapWorldsArmoury",3,"0|1|2|")
SetSellGoodsData("紫晶礦山","Metadata/Items/Maps/MapWorldsCrystalOre",3,"0|1|2|")
SetSellGoodsData("寒河","Metadata/Items/Maps/MapWorldsColdRiver",3,"0|1|2|")
SetSellGoodsData("乾潮林地","Metadata/Items/Maps/MapWorldsPeninsula",3,"0|1|2|")
SetSellGoodsData("洪災礦坑","Metadata/Items/Maps/MapWorldsFloodedMine",3,"0|1|2|")
SetSellGoodsData("冥神之域","Metadata/Items/Maps/MapWorldsMaze",3,"0|1|2|")
SetSellGoodsData("奪魂之殿","Metadata/Items/Maps/MapWorldsTemple",3,"0|1|2|")
SetSellGoodsData("荒地","Metadata/Items/Maps/MapWorldsWasteland",3,"0|1|2|")
SetSellGoodsData("旱木林地","Metadata/Items/Maps/MapWorldsAshenWood",3,"0|1|2|")
SetSellGoodsData("地底之河","Metadata/Items/Maps/MapWorldsUndergroundRiver",3,"0|1|2|")
SetSellGoodsData("死寂泥溝","Metadata/Items/Maps/MapWorldsWastePool",3,"0|1|2|")
SetSellGoodsData("神域之殿","Metadata/Items/Maps/MapWorldsPalace",3,"0|1|2|")
SetSellGoodsData("緋紅之鎮","Metadata/Items/Maps/MapWorldsCrimsonTownship",3,"0|1|2|")
SetSellGoodsData("炙陽峽谷","Metadata/Items/Maps/MapWorldsCanyon",3,"0|1|2|")
SetSellGoodsData("絕望燈塔","Metadata/Items/Maps/MapWorldsLighthouse",3,"0|1|2|")
SetSellGoodsData("瓦爾密殿","Metadata/Items/Maps/MapWorldsVaalTemple",3,"0|1|2|")
SetSellGoodsData("闇獄尖塔","Metadata/Items/Maps/MapWorldsTower",3,"0|1|2|")

--地图相关
--SetNotMapGoMap(className,cnt) 设置无地图或未到等级时要刷的剧情地图 className字符串型 地图类名 cnt=次数
SetNotMapGoMap("2_9_1",10)	--无地图时刷血色通道


--SetNeedBuyGoodsData(name,className,cnt,buyName,buyClassName)--设置开始刷异界时间检测购买指定物品
--name=自己有的通货名 className=自己有的通货类名 cnt=够多少个触发 0或nil 不会触发 buyName=需要购买的物品名 buyClassName=需要购买的物品类名
--g_buyNpcData={mapClassName="2_8_town",className="Metadata/NPC/Act8/ClarissaTown"}--将会在8章 2_8_town 此NPC下购买 name:卡爾麗莎 className:Metadata/NPC/Act8/ClarissaTown

SetNeedBuyGoodsData("知识卷轴","Metadata/Items/Currency/CurrencyIdentification",nil,"卷轴","Metadata/Items/Currency/CurrencyPortal")
--SetNeedBuyGoodsData("传送卷轴","Metadata/Items/Currency/CurrencyPortal",200,"蜕变石","Metadata/Items/Currency/CurrencyUpgradeToMagic")
--SetNeedBuyGoodsData("蜕变石","Metadata/Items/Currency/CurrencyUpgradeToMagic",100,"增幅石","Metadata/Items/Currency/CurrencyAddModToMagic")
--SetNeedBuyGoodsData("增幅石","Metadata/Items/Currency/CurrencyAddModToMagic",200,"改造石","Metadata/Items/Currency/CurrencyRerollMagic")
--SetNeedBuyGoodsData("改造石","Metadata/Items/Currency/CurrencyRerollMagic",100,"工匠石","Metadata/Items/Currency/CurrencyRerollSocketNumbers")
--SetNeedBuyGoodsData("工匠石","Metadata/Items/Currency/CurrencyRerollSocketNumbers",200,"链结石","Metadata/Items/Currency/CurrencyRerollSocketLinks")
--SetNeedBuyGoodsData("链结石","Metadata/Items/Currency/CurrencyRerollSocketLinks",100,"机会石","Metadata/Items/Currency/CurrencyUpgradeRandomly")
--SetNeedBuyGoodsData("机会石","Metadata/Items/Currency/CurrencyUpgradeRandomly",200,"重铸石","Metadata/Items/Currency/CurrencyConvertToNormal")
--SetNeedBuyGoodsData("重铸石","Metadata/Items/Currency/CurrencyConvertToNormal",40,"后悔石","Metadata/Items/Currency/CurrencyPassiveRefund")
--SetNeedBuyGoodsData("后悔石","Metadata/Items/Currency/CurrencyPassiveRefund",10,"点金石","Metadata/Items/Currency/CurrencyUpgradeToRare")

--SetGoods(goodsType,czType,name,className,wordName,wordClassName,pingzhi,cnt,color,socketCnt,lineCnt,checkCangKu)--设置要操作的物品
--goodsType 字符串型 操作的物品类型忽略类型请填 nil 支持以下种类 多种类型以|分开 --SaveType 类型 支持以下种类 多种类型以|分开 生命药剂|魔力药剂|复合药剂|通货|项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|主动技能宝石|辅助技能宝石|箭袋|腰带|手套|鞋子|衣服|头盔|盾|小型圣物|中型圣物|大型圣物|可堆叠通货|任务物品|短杖|功能药剂|暴击药剂|异界地图||鱼竿|地图碎片|藏身处装饰|商城物品|珠宝|命运卡|迷宫物品|迷宫饰品|异界迷宫物品|裂隙之石|赛季石|神灵之魂|传奇装备碎片|深渊珠宝|穿越通货|地心探索：可镶嵌的通货|孕育石|碎片|破碎之心|符文匕首|战杖|地心探索可堆叠可插入通货|
--czType:字符串型 0为拾 1卖 2存 3丢 4鉴定 可多个中间用|隔开
--name 字符串型 物品的名字 忽略则填 nil
--className 字符串型 物品的类名 忽略则填 nil
--wordName 字符串型 物品的词缀名 忽略则填 nil
--wordClassName 字符串型 物品的词缀类名 忽略则填 nil
--pingzhi 数字型 物品的品质 忽略则填 nil
--cnt 数字型 保留数量 忽略则填 nil
--color 字符串型 颜色 0白 1蓝 2黄 3橙 多个用|隔开 nil为所有
--SocketCnt 数字型 总洞数量 忽略则填 nil
--lineCnt 数字型 连洞数量 忽略则填 nil
--checkCangKu 计算保留数量时是否连仓库内的数量也计算进去 nil或false为不计算仓库 true 为需要计算
SetGoodsCaoZuo("通货|可堆叠通货","0|2")
SetGoodsCaoZuo("异界地图|地圖|地图|地图","0|2")--拾取白色+蓝色+黄色地图
SetGoodsCaoZuo(nil,"0|2",nil,"地圖",nil,nil,nil,nil,"0|1|2")--拾取+存+白色+蓝色+黄色地图
SetGoodsCaoZuo(nil,"0|2",nil,"地圖")--拾取+存ALL地图

--SetGoodsCaoZuo("Convoking Wand|Bone Ring","0|1|4",nil,nil,nil,nil,nil,nil,"2")--拾取 鉴定 出售黄色物品珠宝
SetGoodsCaoZuo(nil,"1|4",nil,nil,nil,nil,nil,nil,"3")--拾取 鉴定 出售橙色物品

SetGoodsCaoZuo(nil,"0|2","Abomination Map","Metadata/Items/Maps/MapWorldsAbomination")--T17设置捡
SetGoodsCaoZuo(nil,"0|2","Citadel Map","Metadata/Items/Maps/MapWorldsCitadel")--T17设置捡
SetGoodsCaoZuo(nil,"0|2","Fortress Map","Metadata/Items/Maps/MapWorldsFortress")--T17设置捡
SetGoodsCaoZuo(nil,"0|2","Ziggurat Map","Metadata/Items/Maps/MapWorldsZiggurat")--T17设置捡
SetGoodsCaoZuo(nil,"0|2","Sanctuary Map","Metadata/Items/Maps/MapWorldsSanctuary")--T17设置捡
SetGoodsCaoZuo(nil,"0|2","尖嘯之邀","Metadata/Items/MapFragments/Primordial/QuestTangleBossKey")--尖嘯之邀
SetGoodsCaoZuo(nil,"0|2","極地之邀","Metadata/Items/MapFragments/Primordial/QuestCleansingFireKey")--極地之邀
SetGoodsCaoZuo(nil,"0|2","熾熱之邀","Metadata/Items/MapFragments/Primordial/QuestCleansingFireBossKey")--熾熱之邀
SetGoodsCaoZuo(nil,"0|2","纏繞之邀","Metadata/Items/MapFragments/Primordial/QuestTangleKey")--纏繞之邀
--SetGoodsCaoZuo(nil,"0|2","尋夢追憶","Metadata/Items/Maps/MapWorldsSynthesisedWorld")--追憶地圖设置捡

SetGoodsCaoZuo(nil,"1|4","权贵圆盾","Metadata/Items/Armours/Shields/ShieldStrDex13",nil,nil,nil,nil,"1|2")
SetGoodsCaoZuo(nil,nil,"知识卷轴","Metadata/Items/Currency/CurrencyIdentification",nil,nil,nil,40)--够了就不捡了
SetGoodsCaoZuo(nil,nil,"传送卷轴","Metadata/Items/Currency/CurrencyPortal",nil,nil,nil,79)--够了就不捡了
SetGoodsCaoZuo(nil,"0|2","增幅石","Metadata/Items/Currency/CurrencyAddModToMagic",nil,nil,nil,20,nil,nil,nil,true)--够了就不捡了
SetGoodsCaoZuo(nil,"0|2","蜕变石","Metadata/Items/Currency/CurrencyUpgradeToMagic",nil,nil,nil,20,nil,nil,nil,true)--够了就不捡了
SetGoodsCaoZuo(nil,"0|2","富豪石","Metadata/Items/Currency/CurrencyUpgradeMagicToRar")--富豪石

SetGoodsCaoZuo(nil,"0|2","玻璃弹珠","Metadata/Items/Currency/CurrencyFlaskQuality")--
SetGoodsCaoZuo(nil,"0|2","磨刀石","Metadata/Items/Currency/CurrencyWeaponQuality")--磨刀石不存
SetGoodsCaoZuo(nil,"0|2","护甲片","Metadata/Items/Currency/CurrencyArmourQuality")--护甲片不存

SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSocketsShard",nil,nil,nil)--束縛石碎片
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSockets",nil,nil,nil)--束縛石
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyStrongboxQualityShard",nil,nil,nil)--工程石碎片
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyUpgradeToMagicShard",nil,nil,nil)--蜕变石碎片
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyRerollMagicShard",nil,nil,nil)--改造石碎片
SetGoodsCaoZuo(nil,"3","卷轴碎片","Metadata/Items/Currency/CurrencyIdentificationShard")--卷轴碎片丢
SetGoodsCaoZuo(nil,"3","阿兹瓦特史记","Metadata/Items/Incursion/ItemisedTemple")
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyPerandusCoin",nil,nil,nil)--普兰德斯金币
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Metamorphosis/MetamorphosisBrain")--鍊魔脑髓不捡
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Metamorphosis/MetamorphosisEye")--鍊魔眼睛不捡
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Metamorphosis/MetamorphosisLiver")--鍊魔肝脏不捡
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Metamorphosis/MetamorphosisLung")--鍊魔肺脏不捡
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Metamorphosis/MetamorphosisHeart")--鍊魔心脏不捡
SetGoodsCaoZuo(nil,"3","动力核心","Metadata/Items/Currency/SentinelCurrencyBasic")
SetGoodsCaoZuo(nil,"3","调查员的罗盘","Metadata/Items/Currency/CurrencyItemiseSextantModifier")
SetGoodsCaoZuo(nil,"3","改造动力核心","Metadata/Items/Currency/SentinelCurrencyMutate")
SetGoodsCaoZuo(nil,"3","增强动力核心","Metadata/Items/Currency/SentinelCurrencyUpgradeMod")
SetGoodsCaoZuo(nil,"3","提升动力核心","Metadata/Items/Currency/SentinelCurrencyAddMod")
SetGoodsCaoZuo(nil,"3","玷污的磨刀石","Metadata/Items/Currency/CurrencyHellscapeWeaponQuality")--磨刀石不存
SetGoodsCaoZuo(nil,"3","玷污的护甲片","Metadata/Items/Currency/CurrencyHellscapeArmourQuality")--护甲片不存
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyCorruptMonolith",nil,nil,nil)--遗忘的污染器皿
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyStrongboxQuality",nil,nil,nil)--工程石
SetGoodsCaoZuo(nil,"0|2","圣甲虫：拣选祭祀","Metadata/Items/Scarabs/ScarabRitual1")


--销毁的挂机地图
SetGoodsCaoZuo(nil,"3","Vault Map","Metadata/Items/Maps/MapWorldsVault",nil,nil,nil,nil,"0|1|2")--机关宝库不能打15级
--SetGoodsCaoZuo(nil,"3","Summit Map","Metadata/Items/Maps/MapWorldsSummit",nil,nil,nil,nil,"0|1|2")--寒顶之巅16级
SetGoodsCaoZuo(nil,"3","Laboratory Map","Metadata/Items/Maps/MapWorldsLaboratory",nil,nil,nil,nil,"0|1|2")--实验密室需要开机关难打5级
--SetGoodsCaoZuo(nil,"3","Crater Map","Metadata/Items/Maps/MapWorldsTribunal",nil,nil,nil,nil,"0|1|2")--陨坑地形复杂3级
--SetGoodsCaoZuo(nil,"3","Pier Map","Metadata/Items/Maps/MapWorldsPier",nil,nil,nil,nil,"0|1|2")--怒浪之港boss阶段多机关多2级
--SetGoodsCaoZuo(nil,"3","白玉神庙","Metadata/Items/Maps/MapWorldsIvoryTemple",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","强酸洞穴","Metadata/Items/Maps/MapWorldsAcidLakes",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","熔岩之殿","Metadata/Items/Maps/MapWorldsLavaChamber",nil,nil,nil,nil,"0|1|2")--熔岩之殿地形复杂2级
--SetGoodsCaoZuo(nil,"3","花园迷宫","Metadata/Items/Maps/MapWorldsGardens",nil,nil,nil,nil,"0|1|2")--花园迷宫地形复杂2级
--SetGoodsCaoZuo(nil,"3","绯红小镇","Metadata/Items/Maps/MapWorldsCrimsonTownship",nil,nil,nil,nil,"0|1|2")--绯红小镇boss房间走不过去-
SetGoodsCaoZuo(nil,"3","夜语幽林","Metadata/Items/Maps/MapWorldsDarkForest",nil,nil,nil,nil,"0|1|2")--夜语幽林boss房间不好找BOSS-
--SetGoodsCaoZuo(nil,"3","神域之殿","Metadata/Items/Maps/MapWorldsPalace",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","瓦爾金字塔","Metadata/Items/Maps/MapWorldsVaalPyramid",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","月影神殿","Metadata/Items/Maps/MapWorldsMoonTemple",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","密草神殿","Metadata/Items/Maps/MapWorldsOvergrownShrine",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","核心","Metadata/Items/Maps/MapWorldsCore",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","长草遗迹","Metadata/Items/Maps/MapWorldsOvergrownRuin",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","異蛛墓塚","Metadata/Items/Maps/MapWorldsArachnidTomb",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","竞技场","Metadata/Items/Maps/MapWorldsArena",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","畸形亡域","Metadata/Items/Maps/MapWorldsMalformation",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","古兵工廠","Metadata/Items/Maps/MapTier2_2",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","硫磺蝕岸","Metadata/Items/Maps/MapWorldsSulphurVents",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","密林果園","Metadata/Items/Maps/MapWorldsOrchard",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","穢陰獄牢","Metadata/Items/Maps/MapWorldsPen",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","岩漿熔湖","Metadata/Items/Maps/MapWorldsLavaLake",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","墓影书坊","Metadata/Items/Maps/MapWorldsScriptorium",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","实验居所","Metadata/Items/Maps/MapWorldsLaboratory",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","晨曦墓地","Metadata/Items/Maps/MapWorldsCemetery",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","血腥阵地","Metadata/Items/Maps/MapWorldsTortureChamber",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","危城巷弄","Metadata/Items/Maps/MapWorldsAlleyways",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","激战柱廊","Metadata/Items/Maps/MapWorldsColonnade",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","失落城坞","Metadata/Items/Maps/MapWorldsPort",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","婵娟神殿","Metadata/Items/Maps/MapWorldsMoonTemple",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","绝望灯塔","Metadata/Items/Maps/MapWorldsTortureChamber",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","苦行之域","Metadata/Items/Maps/MapWorldsPrecinct",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","骨迹陵墓","Metadata/Items/Maps/MapWorldsBoneCrypt",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","奇术秘殿","Metadata/Items/Maps/MapWorldsShrine",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","绝望灯塔","Metadata/Items/Maps/MapWorldsLighthouse",nil,nil,nil,nil,"0|1|2")

--赛季初
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",6)--6洞装设置捡卖
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",nil,6)--6连洞装设置捡卖
--SetGoodsCaoZuo("珠宝|深渊珠宝","0|1|4",nil,nil,nil,nil,nil,nil,"2")--拾取 鉴定 出售黄色物品珠宝
--赛季末
--SetGoodsCaoZuo(nil,"3",nil,nil,nil,nil,nil,nil,"0|1|2",6)--6洞装设置捡卖
--SetGoodsCaoZuo(nil,"3",nil,nil,nil,nil,nil,nil,"0|1|2",nil,6)--6连洞装设置捡卖
--SetGoodsCaoZuo(nil,"2","机会石","Metadata/Items/Currency/CurrencyRerollSocketNumbers",nil,nil,nil,20,nil,nil,nil,true)--机会石
--SetGoodsCaoZuo(nil,"3","众神圣器","Metadata/Items/MapFragments/CurrencyFragmentPantheonFlask")
--SetGoodsCaoZuo(nil,"2","链结石","Metadata/Items/Currency/CurrencyRerollSocketLinks",nil,nil,nil,20,nil,nil,nil,true)--链结石
--SetGoodsCaoZuo(nil,"2","改造石","Metadata/Items/Currency/CurrencyRerollMagic",nil,nil,nil,20,nil,nil,nil,true)--改造石
--SetGoodsCaoZuo(nil,"2","工匠石","Metadata/Items/Currency/CurrencyRerollSocketNumbers",nil,nil,nil,20,nil,nil,nil,true)--工匠石
SetGoodsCaoZuo(nil,"2","地平石","Metadata/Items/Currency/CurrencyRerollMapType",nil,nil,nil,20,nil,nil,nil,true)--地平石
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyRerollMapTypeShard")--地平石碎片
SetGoodsCaoZuo("项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|腰带|手套|鞋子|衣服|头盔|盾|珠宝|深渊珠宝","3",nil,nil,nil,nil,nil,nil,"2")--拾取 鉴定 出售黄色物品珠宝
SetGoodsCaoZuo(nil,"2","幻色石","Metadata/Items/Currency/CurrencyRerollSocketColours",nil,nil,nil,60,nil,nil,nil,true)--够了就不捡了
--SetGoodsCaoZuo(nil,"3","点金石碎片","Metadata/Items/Currency/CurrencyUpgradeToRareShard")--够了就不捡了
SetGoodsCaoZuo("契约","3",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,function(r)return r.lv>60 end)
SetGoodsCaoZuo(nil,"2","点金石","Metadata/Items/Currency/CurrencyUpgradeToRare",nil,nil,nil,50,nil,nil,nil,true)--够了就不捡了
SetGoodsCaoZuo(nil,"1|3","低阶异能灰烬","Metadata/Items/Currency/CurrencyEldritchEmber1")
SetGoodsCaoZuo(nil,"1|3","低阶异能灵液","Metadata/Items/Currency/CurrencyEldritchIchor1")
SetGoodsCaoZuo(nil,"1|3","点燃石","Metadata/Items/Currency/CurrencyEnkindlingOrb")
SetGoodsCaoZuo(nil,"3","滴注石","Metadata/Items/Currency/CurrencyInstillingOrb")
SetGoodsCaoZuo(nil,"3","祝福石","Metadata/Items/Currency/CurrencyRerollImplicit")
