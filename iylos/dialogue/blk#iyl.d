//-------------------------------------
// Banters--Iylos initiated
//-------------------------------------
BEGIN BLK#IYL

// Imoen 1
CHAIN IF WEIGHT #-2
~
CombatCounter(0)
!See([ENEMY])
InParty("Imoen2")
Range("Imoen2",30)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosImoen","GLOBAL",0)
~
THEN BLK#IYL IylosImoen_1
~爱蒙，没有灵魂是什么感觉？你觉得自己的神性开始浮现了，还是在那之后？~ [LK#I240] DO ~SetGlobal("LK#IylosImoen","GLOBAL",1)~
== BIMOEN25 ~无意冒犯，可我真的不想谈这个。~
== BLK#IYL  ~跟你这样的人和<CHARNAME>同行，这类问题总得问，巴尔之子。我得知道该不该提防，该不该去买一个阿姆凯斯兰市场上卖的那种号称「反巴尔之子」的护符。当然，你并不会*想*失控把我捅死，可这事是可能发生的。~
== BIMOEN25 ~天哪，伊洛斯，你这些东西是从哪儿听来的？我又不会去搞什么邪恶暴走。是，很难熬，可你这么说话也没让事情好过一点！~
== BLK#IYL  ~我道歉，爱蒙。我不打扰你想事情了。~
EXIT

// Imoen 2
CHAIN IF WEIGHT #-2
~
CombatCounter(0)
!See([ENEMY])
InParty("Imoen2")
Range("Imoen2",30)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosImoen","GLOBAL",1)
~
THEN BLK#IYL IylosImoen_2
~有办法止住巴尔的侵袭，爱蒙。你不必被它驱赶；你不必参与你脑中那场道德之间的无休争斗。我能帮你。~ [LK#I241] DO ~SetGlobal("LK#IylosImoen","GLOBAL",2)~
== BIMOEN25 ~当然行。等我先去找几周前遇到的那个食人魔讨教最新的时尚心得。他那缠腰布可真是最讲究的。~
== BLK#IYL  ~至少想一想。巴尔萨扎创过一些冥想技法，应该对你有用。我可以教你。~
== BIMOEN25 ~我……我会想想的。~
== BLK#IYL  ~我是在帮你，爱蒙。~
== BIMOEN25 ~我很怀疑。我不要你的「帮助」！~
== BLK#IYL  ~你感到的是偏执，爱蒙。去看看你的灵魂，跟它说话。然后再回来，我们看看你想要什么。~
EXIT

// Imoen 3
CHAIN IF WEIGHT #-2
~
CombatCounter(0)
!See([ENEMY])
InParty("Imoen2")
Range("Imoen2",30)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosImoen","GLOBAL",2)
~
THEN BLK#IYL IylosImoen_3
~先深吸一口气。想象沙漠和天空——一片无尽的沙与气，蓝与黄。~ [LK#I242] DO ~SetGlobal("LK#IylosImoen","GLOBAL",3)~
== BIMOEN25 ~我觉得没用。我老是想到……嘿。~
== BLK#IYL  ~巴尔？我们周围的杀戮？~
== BIMOEN25 ~你没穿袍子的样子。~
== BLK#IYL  ~……~
== BIMOEN25 ~开玩笑的！活该。~ = ~……你现在可以说话了，伊洛斯。~
== BLK#IYL  ~（咕哝）~
== BIMOEN25 ~哎，回来！这次我认真！~
EXIT

// Aerie 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Aerie")
Range("Aerie",30)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosAerie","GLOBAL",1)
~
THEN BLK#IYL IylosAerie_2
~艾黎，我为先前的态度道歉。你只是戳到了痛处；我不是有意那样。~ [LK#I251] DO ~SetGlobal("LK#IylosAerie","GLOBAL",2)~
== BAERIE25 ~哦，没关系。我明白。~
== BLK#IYL  ~你明白？~
== BAERIE25 ~嗯，也许不明白你的具体处境。可我确实懂被误解、有难处却没人看见没人理是什么滋味。~
== BLK#IYL  ~说得有理。不过我觉得该解释一下我为什么那样反应。愤怒是我的敌人；是我从小就在打的对手。我有时控制不住它。就算受了多年修行，它还是会占上风。~
== BAERIE25 ~对不起，伊洛斯，我不该多问。那肯定没让事情好过！~
== BLK#IYL  ~不是你的错——是我的。~
== BAERIE25 ~好吧，如果你确定。不过你要是愿意，我可以在你觉得愤怒时帮你平静下来。~
== BLK#IYL  ~那真是太好了，艾黎。~
EXIT

// Minsc 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Minsc")
Range("Minsc",30)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosMinsc","GLOBAL",1)
~
THEN BLK#IYL IylosMinsc_2
~明斯克，你真见过伊尔明斯特？~ [LK#I177] DO ~SetGlobal ("LK#IylosMinsc","GLOBAL",2)~
== BMINSC25 ~啊，对！就是那个戴尖帽子、把布布卖给明斯克的法师，对吧？~
== BLK#IYL  ~啊……是吧？~
== BMINSC25 ~他说话很奇怪……按布布的说法，用好些又长又没用的词来说很少的意思。不过我觉得布布自己也没资格说别人——他自己说话就是那样！~
== BLK#IYL  ~听着像我以前在沙漠里认识的一个老头。他很老——满脸皱纹，我一直没弄清他是什么种族。我*想*他是半精灵，可也可能记错。他常常连着好几天讲一堆什么都不是的事……~
== BMINSC25 ~就什么都不是？~
== BLK#IYL  ~对。嗯，多半是讲「无」这个概念。可对，就是什么都不是。~
== BMINSC25 ~布布说你该别再逗明斯克了，你再这样，他就咬你的左拇指，让你没法打仗！~
== BLK#IYL  ~啊……~
== BMINSC25 ~不过别担心，伊洛斯朋友，明斯克会拦住布布的！明斯克不觉得伊洛斯会做那种事，你不会吧？~
== BLK#IYL  ~当然不会，明斯克朋友——我不会做那种事。~
== BMINSC25 ~好！我们继续猎邪恶吧。布布，准备好爪子，我感觉战斗快来了！~
EXIT

// Jaheira 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Jaheira")
Range("Jaheira",30)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosJaheira2","GLOBAL",0)
~
THEN BLK#IYL IylosJaheira_2
~贾希拉，你为什么跟着<CHARNAME>？你生活里的危险已经够多了，何必再加上跟一个如今名声在外的神之裔同行的风险？~ [LK#I169] DO ~SetGlobal("LK#IylosJaheira2","GLOBAL",1)~
== BJAHEI25 ~因为，伊洛斯，我相信<CHARNAME>做的是对的。真的，<PRO_HESHE>在阻止一场战争蔓延到剑湾之外更远的地方，阻止几百万人的死亡。我不明白，<PRO_HESHE>做了这么多好事，你为什么还这么不信任<PRO_HESHE>。~
== BLK#IYL  ~你就那么确定<PRO_HISHER>血脉不会在日后、在更有胜算压倒<CHARNAME>本人的时候发作？~
== BJAHEI25 ~我相信<CHARNAME>。~
== BLK#IYL  ~而我相信我的直觉。~
== BJAHEI25 ~那你也许该重新评估一下你所谓的「直觉」，伊洛斯。<CHARNAME>对任何人都不是威胁，我每天都把命交给<PRO_HESHE>。你最好也这么做。~
EXIT

// Haer'Dalis 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Haerdalis")
Range("Haerdalis",30)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosHaerDalis","GLOBAL",1)
~
THEN BLK#IYL IylosHaerDalis_2
~海尔达利，你真待过一个剧团？我简直能看见你，戏服着了火，手按胸口，念着什么戏剧性的感慨。~ [LK#I199] DO ~SetGlobal("LK#IylosHaerDalis","GLOBAL",2)~
== BHAERD25 ~确实，加入<CHARNAME>之前我曾属于一个了不起的剧团。我们一起演过各式各样奇幻的戏！要不是我们这出「渡鸦」之戏跟我旧剧团演的那么像，我还会想念那段日子。~
== BLK#IYL  ~我明白了。你们穿越诸界走了多远？~
== BHAERD25 ~我们多半在印记城一带活动，不过由于一些不幸又没料到的麻烦，我们被迫离开家园。主物质界是我们去的第一处，指望去求剧团团长的一位旧友相助。~
== BLK#IYL  ~那么你常带着深情提起的这位蕾丽斯·夏伊是谁？另一个演员，一个情人，还是你短暂玩弄、事后又后悔扔掉的玩物？~
== BHAERD25 ~蕾丽斯正是方才说的那位剧团团长！剧团团长与男主角生出这种情分听着是老套，可我确实要承认，她是我旧日的情人。~
== BLK#IYL  ~我猜也是——从你这种人身上我料不到别的。~
== BHAERD25 ~你伤到我了！我戳到你的痛处了吗，我的鹰？~
== BLK#IYL  ~我见过许多同样的事，末日卫士。你丢掉不再需要的人，转向下一个，享受追逐的快意。~
== BHAERD25 ~我确实享受这种快意，可我向你保证，对我亲爱的蕾丽斯并非如此。我们的分离留下一道伤，之后无论怎样追逐都治不好。~ = ~伊洛斯，你若在评判别人之前先想一想，也许更为明智。这样别人也不至于因为你轻率的话，那么忍不住来伤你的自尊。~
EXIT

// Mazzy 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Mazzy")
Range("Mazzy",30)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosMazzy","GLOBAL",1)
~
THEN BLK#IYL IylosMazzy_2
~玛兹，你能跟我说说<CHARNAME>吗？~ [LK#I175] DO ~SetGlobal("LK#IylosMazzy","GLOBAL",2)~
== BMAZZY25 ~你想知道什么，伊洛斯朋友？~
== BLK#IYL  ~<CHARNAME>有没有——~
== BMAZZY25 ~在你继续之前——伊洛斯，你若只想听关于<CHARNAME>的坏话，那就别问我。我对<PRO_HESHE>只有敬意，不会污<PRO_HISHER>的名。~
== BLK#IYL  ~即便如此，玛兹，我还是问——<CHARNAME>去过贝果斯特吗？~
== BMAZZY25 ~我相信去过。你为什么问？~
== BLK#IYL  ~贝果斯特是我出生的地方。~
== BMAZZY25 ~可我以为你是在阿姆凯斯兰长大的……？~
== BLK#IYL  ~我是。可我不是在那儿出生的——我还是婴孩时就被放在修道院门口。我从不知道贝果斯特，也不认识那里的居民。~
== BMAZZY25 ~啊。我真的很抱歉，伊洛斯。我不知道你是孤儿；在那么严厉的地方长大一定很难。我的童年满是欢笑和快乐。我为你心疼。~
== BLK#IYL  ~我领这份心意，玛兹，可这不是我平常会对陌生人说的事。你若能把我们的谈话不告诉<CHARNAME>，我会很感激，我——~ = ~也许我根本不该提。抱歉打扰你了，玛兹。~
EXIT

// Cernd 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Cernd")
Range("Cernd",30)
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosCernd","GLOBAL",1)
~
THEN BLK#IYL IylosCernd_2
~自然是个善变的东西，总顺着自己那不可理解的目的。说到底，人对它毫无意义：它只是继续活着、生长、死去……~ [LK#I185] DO ~SetGlobal("LK#IylosCernd","GLOBAL",2)~
== BLK#IYL  ~这有什么意义，还是只是没有目的的无穷循环？~ [LK#I186]
== BCERND25 ~自然存在。这还不够吗？~
== BLK#IYL  ~对我不够。它一定有什么目的，某个不可测的目标要去达成，否则就不会存在。万物皆有秩序，没有目的，自然根本不会存在。~
== BCERND25 ~自然不必有目的。它存在、它活着、它繁盛，在那不息的循环里，像一棵树；起于一粒种子，长高长壮，终在风雨的侵袭下死去，留下种子和让下一代生长的手段。~
== BLK#IYL  ~让我厌倦的正是你那套不息的循环，瑟恩德。我会想想，可我相信我是对的。自然一定有目的，否则就不会存在。~
== BCERND25 ~那由你选择。可不管你最终选什么，自然都会继续存在，远超过你死去的那一天。~
EXIT

// CN Anomen 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Anomen")
Range("Anomen",30)
Global("AnomenIsNotKnight","GLOBAL",1)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosAnomenNeutral","GLOBAL",0)
~
THEN BLK#IYL IylosAnomenNeutral_1
~阿诺门·德林，对吧？~ [LK#I200] DO ~SetGlobal("LK#IylosAnomenNeutral","GLOBAL",1)~
== BANOME25 ~不，只是阿诺门。在我面前最好别用那个姓。~
== BLK#IYL  ~为什么？~
== BANOME25 ~我已经离开安姆的德林家族。我不想再属于那艘沉船。再说，我绝不会给我父亲叫我「儿子」的这份荣幸。~
== BLK#IYL  ~我明白了。是什么造成你和科·德林之间这样的裂痕？我听过沿剑湾传的那些谣言，可我一条都不信。~
== BANOME25 ~你怎么知道我父亲的名字，修士？~
== BLK#IYL  ~有些人仔细追查过<CHARNAME>的生平，以及<PRO_HESHE>同行者的来历。只要知道该往哪儿看，这就是常识。~
== BANOME25 ~「常识」？别侮辱我的智力。你显然在瞒着什么，修士；别以为你骗过我了。~
EXIT

// Nalia 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Nalia")
Range("Nalia",30)
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosNalia","GLOBAL",0)
~
THEN BLK#IYL IylosNalia_1
~娜莉亚，你真是冒险者吗？你看起来有点……嗯，说实话，太年轻了。~ [LK#I179] DO ~SetGlobal("LK#IylosNalia","GLOBAL",1)~
== BNALIA25 ~我的经验不比<CHARNAME>或爱蒙少。离开家之后我走了很远，我相信我比从前那个天真的小姑娘更强了。~
== BLK#IYL  ~那我只好信你的话。你到底去过哪儿？~
== BNALIA25 ~很多地方，伊洛斯，你若只见过这片荒芜之地，怕是想象不出来。~
== BLK#IYL  ~沙漠是我的家，姑娘。阿姆凯斯兰太忙……太孤高，靠别国供养。在沙漠里，你得自给自足。想要什么，就自己做，或者拿值钱的东西去换。很苦……可我宁愿过那种日子，不要别的。~
== BNALIA25 ~我待的时间虽短，可一点也不喜欢。有天我什么都看不见，沙暴太猛，我还看见那种巨大的蝎子。我当然躲开了，可还是心里不安。~
== BLK#IYL  ~啊……那你遇到的准是弗米蚁，或者毒刺蝎。两种都很危险……你日后若再去沙漠，最好待在小村子里，别自己在沙漠里乱走。对一位女士来说，那环境太严酷了。~
== BNALIA25 ~我自己应付得来，谢谢你，伊洛斯。不必为我担心，我手上的本事比看上去多。~
EXIT

// Keldorn 2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Keldorn")
Range("Keldorn",30)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosKeldorn","GLOBAL",1)
~
THEN BLK#IYL IylosKeldorn_2
~我一直在想你说的话，凯尔登……然后我明白了一件事。~ [LK#I182] DO ~SetGlobal("LK#IylosKeldorn","GLOBAL",2)~
== BLK#IYL  ~我看到，心怀恶意又有力量的人能把法律扭成自己的工具，而不是遵循它真正的目的——正义。~ = ~有时连法律本身都有缺陷；但更多时候，是对法律的解释能把它扭向邪恶的目的。这取决于解释的人。法律本身是中立的，它试图为任何问题带来公正的解决。~
== BKELDO25 ~在骑士团里，我们总想为每一种情形带来正义。有时这意味着我们不得不绕过、甚至干脆无视政府设定的法律，可那是为了更好。另一些时候，我们难以认同某条法律，却必须一字不差地遵守，因为程序如此严格规定。~
== BLK#IYL  ~正义是客观的。~
== BKELDO25 ~是的。可有时候我们只能做，然后希望自己做对了。我们只是人。~
== BLK#IYL  ~我明白你的意思。也许我们没有情感、没有偏私才好；没有什么能阻挡我们接近终极的真相。~
== BKELDO25 ~也许……可没有情感，我们就不会知道自己在做的事是否正义、是否良善。~
== BLK#IYL  ~也许吧。~
EXIT

// Korgan 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Korgan")
Range("Korgan",30)
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosKorgan","GLOBAL",0)
~
THEN BLK#IYL IylosKorgan_1
~科根，我佩服你的战斗本领。你也许半点礼貌都没有，也不会说一门像样的话，可说到打仗……你确实懂行。~ [LK#I170] DO ~SetGlobal("LK#IylosKorgan","GLOBAL",1)~
== BKORGA25 ~嗯，小子，我确实懂。你自己也不是孬种，稍加训练、一副甲、一件像样的兵器，你说不定能跟我比肩！哈哈哈。~
== BLK#IYL  ~科根，虚张声势只会给你换来一屁股疼。~
== BKORGA25 ~哈！这话正合你自己，娘娘腔。你要是不用件像样的兵器，你打定主意要打的每一仗都得输！~
== BLK#IYL  ~拳头*就是*像样的兵器，科根，不管你多认为兵器非得有刃。拳头一样能造成那么大的伤——~
== BKORGA25 ~不流点血，那点伤顶什么用，小子！你总该明白我这道理吧？~ = ~呸，你没品味。去躲到<CHARNAME>胳膊底下，像只被丢下的小狗那样缩着哼唧，我干该干的活。人类——全是孬种！~
EXIT

// Cernd 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Cernd")
Range("Cernd",30)
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosCernd","GLOBAL",0)
~
THEN BLK#IYL IylosCernd_1
~我听说你对你儿子做的事了，瑟恩德。~ [LK#I183] DO ~SetGlobal("LK#IylosCernd","GLOBAL",1)~
== BCERND25 ~我——~
== BLK#IYL  ~在你继续之前，我要你知道，我相信你做的是对的。我不确定自己有没有那个勇气，把自己亲生的骨肉交给几乎不认识的人；不过话又说回来，把孩子留在修道院，我一点也不会有顾虑。我想那是差不多的处境。~ [LK#I184]
== BCERND25 ~我感谢你支持我的决定，伊洛斯。那是个我挣扎许久的决定；我心乱，拿不准。我觉得我最终的选择是对的。我只能希望，就像一只陌生的幼崽被带进慈爱的母熊洞里，他会得到好的照料。~
== BLK#IYL  ~顺便问一句……我从没听说他的名字。他叫什么？~
== BCERND25 ~他叫阿斯代尔。他是我儿子……我已经为他尽了力。若你容我，我需要些时间……也许需要些时间想一想。~
EXIT

// Edwin 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Edwin")
Range("Edwin",30)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosEdwin","GLOBAL",0)
~
THEN BLK#IYL IylosEdwin_1
~塞尔的红袍法师。好极了——不过我想我不该吃惊。你为何与<CHARNAME>同行，法师？~ [LK#I194] DO ~SetGlobal("LK#IylosEdwin","GLOBAL",2)~
== BEDWIN25 ~我有名字。用它，否则就承受塞尔的英雄之怒的后果。（可悲的猿类，他总该听说过超凡法师艾德温·奥德塞隆吧？呸。）~
== BLK#IYL  ~恐怕我不知道你的名字，可畏的法师。你得告诉我——你说，塞尔的英雄？~
== BEDWIN25 ~正是。你准是住在石头底下，才没听过伟大的艾德温·奥德塞隆，日光之下最强的塞尔法师？（他简直是在*求*一颗火球！不……这么一团哆嗦的无知肉块，哪配让火球做他的了结！）~
== BLK#IYL  ~不，我得承认我没听过你。而我肯定会记得这么一位……神秘莫测的人物。~
== BEDWIN25 ~是，是。现在别烦我——我有重要的事要做，你浪费我的时间！（至少他有一样说对了……总该有人给这只猴子喂根香蕉什么的。）~
EXIT

// Sir Anomen 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Anomen")
Range("Anomen",30)
Global("AnomenIsKnight","GLOBAL",1)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosAnomen","GLOBAL",0)
~
THEN BLK#IYL IylosAnomen_1
~阿诺门·德林，我没说错吧？~ [LK#I196] DO ~SetGlobal("LK#IylosAnomen","GLOBAL",1)~
== BANOME25 ~你可以称我阿诺门爵士，是的。~
== BLK#IYL  ~我明白了。那么，你是怎么成为骑士而不是圣武士的，阿诺门爵士？也许是因为你交往的人，让你做不到？~
== BANOME25 ~事情不是那样。我在阿斯卡特拉遇见<CHARNAME>时，已经在做侍从——为受封骑士而受训。~
== BLK#IYL  ~你没回答我的问题，「爵士」阿诺门。~
== BANOME25 ~我也不明白这跟你有什么关系，修士，可我会保持礼貌。我未能取得以圣武士身份加入骑士团所需的举荐，于是我母亲求海姆的祭司们收留我，把我训练成战士兼牧师。我就是从那里成为骑士团的侍从的。~ = ~好了，这些若够回答你的问题，我很乐意结束这场谈话。~
== BLK#IYL ~谢谢你的坦率，阿诺门爵士。也许你没我想的那么糟……不管怎样，这值得想一想。~
EXIT

// Jan 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Jan")
Range("Jan",30)
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosJan","GLOBAL",0)
~
THEN BLK#IYL IylosJan_1
~扬·詹森……他们说，凡有城市或名团之处，近旁总有个詹森。难以置信。~ [LK#I172] DO ~SetGlobal("LK#IylosJan","GLOBAL",1)~
== BJAN25  ~难以置信，也许吧，但绝对是真的！上次清点，费伦几乎每座大城都有个詹森氏族，而这还只是数人头。哎，要是数脚，我们比僵尸养鸡场里的坏蛋还多，连*我们自己的*坏蛋都还没算上。~
== BLK#IYL ~我是在说反话。~
== BJAN25  ~也许你是，不过——正如俗话说的——胡萝卜从来长不离放屁的木精灵，而你实在不想撞见他们任何一个。我们詹森家这些年过得相当成功，还散到了各处！知道自己无论在哪，附近总有某处表哥戈姆弗拉斯的旧浴帽里正腌着一锅詹森家美味的南瓜汤，这感觉真好。说起来，我们现在到哪儿了？我几乎能闻到那味儿了……~
EXIT

// Haer'Dalis 1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Haerdalis")
Range("Haerdalis",30)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosHaerDalis","GLOBAL",0)
~
THEN BLK#IYL IylosHaerDalis_1
~末日卫士，是什么把你带到这个位面来的？我本以为你这类人更适合印记城的气候，而不是主物质界。~ [LK#I198] DO ~SetGlobal("LK#IylosHaerDalis","GLOBAL",1)~
== BHAERD25 ~没什么特别的，我的鹰；是我的命线被巴尔之子现世所散播的混沌引到了这个位面。<PRO_HESHE>真是个极有趣的现象。请容我也问一句：一个与世隔绝的修士，怎会知道末日卫士？~
== BLK#IYL  ~我并不像你想的那么与世隔绝，海尔达利。那么<CHARNAME>让你感兴趣？~
== BHAERD25 ~哎，当然！一提起我们亲爱的渡鸦之名，整个托瑞尔都乱了套——我们这趟史诗旅程日日造成的喧闹，足以让这只麻雀欢喜得叫出来。你总该同意，跟着<CHARNAME>过的这种日子是值得感恩的吧？~
== BLK#IYL  ~混沌里能有什么好处，海尔达利，除了混乱与失衡？主物质界已经够不安宁，不必再把巴尔之子丢进去，进一步挑起战乱与仇恨。~
== BHAERD25 ~「混沌里能有什么好处」？混沌才是推动、塑造诸界的力量，我的鹰！没有混沌，世界便停滞。你真觉得世界最好就这样原封不动，直到诸神高兴了把它了结？你真觉得我们该照旧过活，做同样的琐事，直到咽下最后一口气？~
== BLK#IYL  ~不，可改变还有别的法子，歌鸟，不是吗？~
== BHAERD25 ~没错，可按我想，没有哪种法子有这样痛快。~
EXIT

//-------------------------------------
// Banters--Other NPC initiated
//-------------------------------------

// Aerie 1
CHAIN IF
WEIGHT #2
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosAerie","GLOBAL",0)
~
THEN BAERIE25 IylosAerie_1
~我可以问你件事吗，伊洛斯？~ [LK#IBLN] DO ~SetGlobal("LK#IylosAerie","GLOBAL",1)~
== BLK#IYL  ~你愿意问就问，精灵。~ [LK#I250]
== BAERIE25 ~哦——叫我艾黎就好！~
== BLK#IYL  ~好吧。~
== BAERIE25 ~那个，修士不该是心平气和，……不那么急着冲进战斗的吗？~
== BLK#IYL  ~我——~ = ~……~ = ~是的。我们是。~
== BAERIE25 ~可是——~
== BLK#IYL  ~求你，就……就这样吧，艾黎。~
EXIT

// Jaheira 1
CHAIN IF
WEIGHT #4
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
AreaCheck("AR4500")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosJaheira","GLOBAL",0)
~
THEN BJAHEI25 IylosJaheira_1
~伊洛斯，在袖珍位面里你没什么好怕的。这是<CHARNAME>的庇护所；这里很安全。~ [LK#IBLN] DO ~SetGlobal("LK#IylosJaheira","GLOBAL",1)~
== BLK#IYL  ~我明白，贾希拉，可是——~ [LK#I168]
== BJAHEI25 ~那你为何蜷着身子，一有声响或动静就要弹起来？这里的一切都是<CHARNAME>要它在此才在此的。~
== BLK#IYL  ~所以你还奇怪我为什么害怕吗，贾希拉。~
== BJAHEI25 ~以西凡纳斯之名！你*还*在怀疑<CHARNAME>的动机？~
== BLK#IYL  ~我不信任<PRO_HESHE>，也没人给过我相信的理由。就这样吧，贾希拉——你不能凭你自己的观察就让我信任。我得自己去判断。~
EXIT

// Korgan 2
CHAIN IF
WEIGHT #6
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosKorgan","GLOBAL",1)
~
THEN BKORGA25 IylosKorgan_2
~唉，小子……你该看着前头的路，不是盯着<CHARNAME>的屁股！你还有没有脑子？！我们可能被袭击，你却浑然不觉，全副心思都放在巴尔之子身上。~ [LK#IBLN] DO ~SetGlobal("LK#IylosKorgan","GLOBAL",2)~
== BLK#IYL  ~我没跟你说过别跟我说话吗，矮人？~ [LK#I171]
== BKORGA25 ~我不记得，可我这记性不如从前了。反正我也不在乎——我要是想，一刀就能把你劈成两半，眼都不眨。你就把那双该死的眼睛放在前面，留心我们在干什么。我可不想因为你在忙你那该死的「任务」，打仗时还得去救你这条烂命。~
== BLK#IYL  ~我自己能打，谢谢你，科根。劳你让我静一静。~
== BKORGA25 ~你要是不小心，你那点静一静会把我们都害死。~
== BLK#IYL  ~你要是不小心，你那点无礼也会把你自己害死。别烦我，科根。~
== BKORGA25 ~跟他还*值当*说话吗？*嘟囔* 不——我是个该死的人类，还该死的迷上了那个该死的巴尔之子。~
== BLK#IYL  ~我听见了，科根！~
== BKORGA25 ~我相信你听见了。走开吧，我肯定<CHARNAME>很快就会来顾你。哈哈哈。~
== BLK#IYL  ~（咕哝）~
EXIT

// Jan 2
CHAIN IF
WEIGHT #5
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosJan","GLOBAL",1)
~
THEN BJAN25 IylosJan_2
~我高祖父的表亲的妻子当过修士。当然，当得不怎么样——侏儒从来当不好修士，他们太容易分心，就是没有那个专注……~ [LK#IBLN] DO ~SetGlobal("LK#IylosJan","GLOBAL",2)~
== BJAN25  ~我盔甲上凹了个玛吉阿姨挑的甜瓜那么大的坑！什么时候弄的？~
== BLK#IYL ~扬？你想说什么？~ [LK#I173]
== BJAN25  ~什么什么？~
== BLK#IYL ~你的故事里；你提到你高祖父的……妻子……你说你有位亲戚是修士。你提这个总有原因，不是吗？~
== BJAN25  ~哦，那个——没有，其实没有。只是在这趟无聊的冒险里找点法子打发时间。你觉得我能不能说动<CHARNAME>雇几个艺人？我知道一个了不起的剧团——叫「芜菁串串」——他们用牙签玩那些花样，你简直不会信。~
== BLK#IYL ~我明白了。下次你要跟我说话，至少心里得有个要点。我不喜欢东拉西扯，我还有别的事要想。比如那些烦人的侏儒开始讲我根本不需要听的故事时该怎么办。~
EXIT

// Mazzy 1
CHAIN IF
WEIGHT #3
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosMazzy","GLOBAL",0)
~
THEN BMAZZY25 IylosMazzy_1
~伊洛斯，你对自己的信念如此投入。我不得不佩服你的勤勉、毅力，还有你说起修道院、修士之道、说起你希望有朝一日实现教人之志时的那份热忱。~ [LK#IBLN] DO ~SetGlobal("LK#IylosMazzy","GLOBAL",1)~
== BLK#IYL  ~谢谢你，玛兹，可我不记得自己说过想教人。~ [LK#I174]
== BMAZZY25 ~只要你知道自己在找什么，这并不难看出来，伊洛斯。~
== BLK#IYL  ~我……我明白了。那，呃，谢谢你，玛兹——我很感激。~
EXIT

// Minsc 1
CHAIN IF
WEIGHT #5
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
AreaType(FOREST)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosMinsc","GLOBAL",0)
~
THEN BMINSC25 IylosMinsc_1
~自然是奇妙的东西，伊洛斯。布布想知道你为什么那么躲着它！~ [LK#IBLN] DO ~SetGlobal("LK#IylosMinsc","GLOBAL",1)~
== BLK#IYL  ~我并不*躲*自然，我——~ [LK#I176]
== BMINSC25 ~啊，可你就是！明斯克也看出来了……你走路的时候，总是随时准备开打！不过你大多时候都这样。~ = ~我现在懂了！伊洛斯觉得自然是邪恶的，他必须时时提防它那些狡猾的、能躲开靴子的花招！~
== BLK#IYL  ~……不，也不是。我只是不管在哪都尽量随时备战。待在林子里让我有点不安。能埋伏、能藏身的地方更多。~
== BMINSC25 ~别担心，伊洛斯！明斯克和布布会把耳朵贴在地上，有邪恶靠近就告诉你，你就不用这么担心了。~
== BLK#IYL  ~……我领你的心意，可那其实不必，明斯克。我自己能照顾自己。~
== BMINSC25 ~那明斯克就还是替你盯着邪恶；你永远不知道什么时候会被打个措手不及。~
EXIT

// Minsc 3
CHAIN IF
WEIGHT #7
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosMinsc","GLOBAL",2)
~
THEN BMINSC25 IylosMinsc_3
~伊洛斯，布布很好奇；明斯克听你说过沙漠和陆地上的旅行。你是在走你的达杰玛吗？~ [LK#IBLN] DO ~SetGlobal("LK#IylosMinsc","GLOBAL",3)~
== BLK#IYL  ~达杰玛？~ [LK#I178]
== BMINSC25 ~布布，你说对了，他不像明斯克和迪娜黑尔那样来自拉舍曼，所以不知道他的达杰玛！~
== BLK#IYL  ~啊……迪娜黑尔？这名字我好像听过，可我不记得见过她。~
== BMINSC25 ~她死在邪恶的艾瑞尼卡斯手上——可我们报了仇，对吧布布？迪娜黑尔借我们活着，我们每在善与正义的路上前进一步，都是在敬她。~
== BLK#IYL  ~我很遗憾，明斯克。~
== BMINSC25 ~我还记得艾瑞尼卡斯之前的事，我们把迪娜黑尔从抓她的怪物手里救出来！那是个欢喜的日子；连布布都高兴得哭了！~
== BLK#IYL  ~我想我会喜欢见见她的。她一定是个很善良的女子。~
== BMINSC25 ~她正是，伊洛斯朋友！~
EXIT


// Keldorn 1
CHAIN IF
WEIGHT #2
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosKeldorn","GLOBAL",0)
~
THEN BKELDO25 IylosKeldorn_1
~跟我说说，修士怎么看法律？我听说这在世上颇独特，很想多知道些。~ [LK#IBLN] DO ~SetGlobal("LK#IylosKeldorn","GLOBAL",1)~
== BLK#IYL  ~我听过这种说法，可我不觉得对。不过多数修士看世界的角度确实略有不同。~ [LK#I181]
== BKELDO25 ~*你*怎么看，伊洛斯？~
== BLK#IYL  ~我觉得法律很难界定。这取决于你从哪儿出发——我个人相信法律是值得去够的东西；一个我们可以遵循、为世界带来平衡与秩序的准则。为带来正义。~
== BKELDO25 ~这世界观太黑白分明，甚至有点天真——可你还年轻。法律并不总是完美。也不总是黑白分明；总有灰色，那些谁也说不准平衡在哪的模糊处境。~
== BLK#IYL  ~也许照你的看法。我承认法律不无缺陷，可它就是法律。它并不总是对的；正义也不总是「善」或「恶」。~
== BKELDO25 ~你若想一想，伊洛斯，也许会明白我的意思。现在……我们继续赶路吧。~
EXIT

// Valygar 1
CHAIN IF
WEIGHT #5
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosValygar","GLOBAL",0)
~
THEN BVALYG25 IylosValygar_1
~你怎么了，伊洛斯？为何这样郁郁？~ [LK#IBLN] DO ~SetGlobal("LK#IylosValygar","GLOBAL",1)~
== BLK#IYL  ~我平常不是爱琢磨这种事的人，可我现在有些……阴郁。~ [LK#I187]
== BVALYG25 ~有什么想谈的吗？我发现跟人把话说开，有时能减轻痛苦。~
== BLK#IYL  ~我说过，我平常不会任由自己沉进这种情绪。我在想，有个家会是什么样……一个母亲，一个父亲，也许还有一个姐妹或兄弟。~ = ~这念头很难细想，因为除了修道院的修士们，我从没有过家，而他们并不算父母般的人物。~
== BVALYG25 ~许愿要当心，伊洛斯；家能带来欢喜，也能带来悲苦。系人的纽带，割人也最深。~
== BLK#IYL  ~我会记着，瓦里格。~
EXIT

// Sarevok 1
CHAIN IF
WEIGHT #-2
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("MetBal","GLOBAL",1)
Global("LK#IylosSarevok","GLOBAL",0)
~
THEN BSAREV25 IylosSarevok_1
~为什么这么盲目地追随秩序，伊洛斯？你这么想盲目顺从，我们也许可以安排把你变成一只小狗。~ [LK#IBLN] DO ~SetGlobal("LK#IylosSarevok","GLOBAL",1)~
== BSAREV25 ~我觉得那挺配你——一个可悲的可怜虫，对着那个愚蠢的巴尔萨扎摇尾乞怜……哈，那倒值得一看！~
== BLK#IYL  ~哈，哈，哈。你的幽默感真跟你挑盔甲的品味一样糟糕，萨瑞沃克。也许这儿那儿多添点黑、少些刺眼的金，会对你的自负有点好处。~ [LK#I188]
== BLK#IYL  ~又或者它需要人照料，所以<CHARNAME>才这么温柔地把你搂在<PRO_HISHER>胸前。我一直纳闷<PRO_HESHE>看上你什么……也许我找到答案了。~
== BSAREV25 ~我劝你闭嘴，修士，别逼我亲自动手。~ = ~而我*可以保证*，我不会像现在这么温柔！~
EXIT

// Sarevok 2
CHAIN IF
WEIGHT #-2
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosSarevok","GLOBAL",1)
~
THEN BSAREV25 IylosSarevok_2
~伊洛斯，你脖子上挂的是什么？什么让你忘掉离开亲爱的巴尔萨扎之痛的小玩意儿？哈哈哈哈……~ [LK#IBLN] DO ~SetGlobal("LK#IylosSarevok","GLOBAL",2)~
== BLK#IYL ~（抽泣）是的……~ [LK#I189]
== BSAREV25 ~哈！这个可悲得算不上男人的东西承认了……~
== BLK#IYL  ~你是个蠢货，萨瑞沃克。十足的蠢货。~ [LK#I190]
== BSAREV25 ~什么？！可我——~ = ~我会杀你，慢慢地，痛苦地杀。我会拧住你的脖子，一点点扭，直到血从你血管里沸出来！~
== BLK#IYL  ~我看不会。看看你四周……你真想为了杀我，去试<CHARNAME>对你的信任？~ = ~别烦我，到别处找你那点可悲的乐子去。~
EXIT

// Viconia 1
CHAIN IF
WEIGHT #3
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosViconia","GLOBAL",0)
~
THEN BVICON25 IylosViconia_1
~你不说话吗，修士？是有只猫叼住了你的舌头，正用爪子拨弄？~ [LK#IBLN] DO ~SetGlobal("LK#IylosViconia","GLOBAL",1)~
== BLK#IYL  ~你与我立身的一切为敌，卓尔。除非是讨水喝，或是求战中的援手，否则别跟我说话。~ [LK#I191]  = ~就算那样，我也不确定会答应。识相的话就离我远些，维康尼亚。我相信你珍爱的<CHARNAME>不会赞成我们动手，你又何必先替<PRO_HESHE>挑起？~
== BVICON25 ~随你，rivvil……要知道，一个卓尔敌人，连我都不会希望许多人碰上。~
== BLK#IYL  ~我想我愿意冒这个险。~
== BVICON25 ~哦，你对我的了解真是*多*啊，rivvil……~
EXIT

// Viconia 2
CHAIN IF
WEIGHT #4
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosViconia","GLOBAL",1)
~
THEN BVICON25 IylosViconia_2
~那么，修士……你是巴尔萨扎的仆从？也许你该成全我们；这位巴尔萨扎究竟是谁，rivvil，他想要我们做什么？~ [LK#IBLN] DO ~SetGlobal("LK#IylosViconia","GLOBAL",2)~
== BLK#IYL  ~别吐你那脏话，卓尔；我还没刺穿你那颗卑劣的心，真是怪事。~ [LK#I192]
== BVICON25 ~（笑）用什么，修士？把你那根棍子磨利了戳我，指望它能刺穿我黑檀般的皮肉？我看不会。回答我的问题，别让我对你失去耐性。~
== BLK#IYL  ~轮不到你来操心，污秽。~
== BVICON25 ~我跟你一样与<CHARNAME>同行，伊洛斯·米尔丹。任何牵涉我本人的事我都有权知道；说，否则就承受后果，waeles。~
== BLK#IYL  ~维康尼亚。转过去，走开。你那些该死的问题我一个都不答，也不会告诉你巴尔萨扎或他在做什么。~
== BVICON25 ~我现在就走，伊洛斯。Kyorl dosst rath……~
== BLK#IYL  ~放心。对你们这类人，我绝不会把后背空着。~
EXIT

// Viconia 3
CHAIN IF
WEIGHT #5
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosViconia","GLOBAL",2)
~
THEN BVICON25 IylosViconia_3
~Ji dos telanth l' xanalress, wael?~ [LK#IBLN] DO ~SetGlobal("LK#IylosViconia","GLOBAL",3)~
== BLK#IYL  ~我会说那肮脏的卓尔语，是的。我见过不少卓尔……我懂得基本的东西。~ [LK#I193]  = ~Cha'kohkev ilythiiri elg'caress!~ = ~德维尔家还有人活着，贱人……而他们跟你一样，都是些可悲的蠢货。看来这是家族遗传。~
== BVICON25 ~别用我的母语骂我，wael……你总该知道，把这种语言弄残的人会遭什么罪吧？~
== BLK#IYL  ~我说得极好。你无法否认，可你还是要纠缠？~
== BVICON25 ~你怎么会说卓尔语，male？！而且还说得这么流利？~
== BLK#IYL  ~我有秘密，维康尼亚……跟别人一样。我宁愿自己留着的秘密。~
== BVICON25 ~Waeles!  Zah'har wun uoi'nota, nuij--satiir l' chathen pholor dosst rath, qwe'en wun dosst illingen, l' chath yacal dosst siltrin...telanth l' xanalress 'sohna, lu' dos orn satiir nindel toha jiv'undus.~
== BLK#IYL  ~在这里，在炽热的地狱深处受苦的不会是我，维康尼亚。~
EXIT

// Edwin 2
CHAIN IF
WEIGHT #4
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosEdwin","GLOBAL",1)
~
THEN BEDWIN25 IylosEdwin_2
~那么。你，猴子。过来。~ [LK#IBLN] DO ~SetGlobal("LK#IylosEdwin","GLOBAL",2)~
== BLK#IYL  ~我……不觉得我会过去。~ [LK#I195]
== BEDWIN25 ~过来！马上！（难道我得像唤狗一样跟他说？他听不懂通用语吗？！）~
== BLK#IYL  ~不，艾德温，就是不。别烦我。~
== BEDWIN25 ~他不照我说的做，那我就只好全自己动手了。呸！~
== BLK#IYL  ~你对我做了*什么*，艾德温？！~
== BEDWIN25 ~没什么，只是个小法术，查点东西。~ = ~嗯……真古怪。你身上一点魔法根基都没有，可我却看见你每一击都把……某种东西……灌进你的兵器里。你是什么东西，你使的是什么力量？（若真有用，我一定要据为己有！）~
== BLK#IYL  ~那是「气」，不是魔法。它是受训心智之力在肉身中的显现。~
== BEDWIN25 ~有意思。~
== BLK#IYL  ~我相信对你这种人来说确实有意思。~
== BEDWIN25 ~当然是，而你这语气里的怀疑毫无根据。（我不明白我为什么不该对这种力量感兴趣。若我能把它抽出来，就没人能挡得住我！）~
== BLK#IYL  ~恐怕你会发现我的「气」是抽不出来的——它是*我的*灵魂、*我的*心智在肉身中的显现。换别人也用不了，就算你能想办法从我身上偷走也一样，所以别烦我。~
== BEDWIN25 ~我相信你把你这号人从这片尘土窝里清出去，算是给同门修士做了件好事，伊洛斯。别胡扯了，像我们其余这些不吐这种可悲废话的人一样归队。（对……几颗位置合适的火球就完美了；也许再加一支马尔夫酸箭。蠢货。）~
EXIT

// Anomen 2
CHAIN IF
WEIGHT #4
~
CombatCounter(0)
!See([ENEMY])
InParty("Iylos")
Range("Iylos",30)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("Iylos",CD_STATE_NOTVALID)
Global("LK#IylosAnomen","GLOBAL",1)
~
THEN BANOME25 IylosAnomen_2
~修士。你对我的过去表示好奇，却还没讲你的。~ [LK#IBLN] DO ~SetGlobal("LK#IylosAnomen","GLOBAL",2)~
== BLK#IYL  ~确实。我自己的过去没什么特别；我在阿姆凯斯兰的修道院长大，幼时被遗弃在门口。我受训为修士，十七岁那年漂泊之念闯进我的生活——我开始远行，可很快发现，我门前就有最奇妙的地方可走：安纳罗克沙漠。那是我的家，是我心安之处。~ [LK#I197]
== BANOME25 ~以你的本事，本可以为这座荒败的镇子、为这里的居民做些好事。你为什么不做？沙漠里没什么可图的。~
== BLK#IYL  ~安纳罗克沙漠是个神秘的地方……你总该听过古耐色瑞尔，如今埋在金黄的沙下？对许多人来说它也许不是最壮观的地方，可它是我的家。我在那里长大。~ = ~这镇子完全能自保——绝非「荒败」。居民自愿住在那儿；他们不是在某个巨大的公爵城里苟延着可悲的日子，而是有意用这片土地充实自己的生存。他们吃的每一样都是自己种出来的；在几乎无法生存的地方，他们学会了生存。~
== BANOME25 ~你的话也许有道理，可我在这里仍看见苦难，而巴尔萨扎和他不断聚拢的军队只会让它更重。~
== BLK#IYL  ~巴尔萨扎为了守护他所爱，做了他必须做的事。换了你不也会如此？~
== BANOME25 ~我绝不会以保护之名去伤害我所爱的人，你最好记住这点。~
EXIT

