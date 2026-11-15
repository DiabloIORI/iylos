// Iylos' interjections
APPEND LK#IYLJ

// -------------------------------------
// Trust Dialogues (2)
// -------------------------------------
// PC Dialogue 1
  IF WEIGHT #-2 ~Global("LK#IylosTalks","GLOBAL",1) RealGlobalTimerExpired("LK#IylosTalksTimer","GLOBAL")~ PCD1
    SAY ~我希望你明白，我不是自愿来的，巴尔之子。我来是为了看清你的意图和动机。要是我能作主，我还在安纳罗克沙漠里，想去哪就去哪。~ [LK#I153]  = ~这件事上我跟你一样没有选择。我只是觉得该把这一点说清楚。~ [LK#I154]
    ++ ~我明白。~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD1_1
    ++ ~无论如何，你得按*我*的规矩过，修士。我接受你入队，前提是你有用；要是我发现你在任何方面拖累我，你立刻就得走。~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",-1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD1_2
    ++ ~你大可以不听你的「命令」，不管那命令来自谁。~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) SetGlobal("LK#IylosPCD1","GLOBAL",2)~ + PCD1_3
    ++ ~我的动机？我的动机与你无关，伊洛斯。~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",-1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD1_4
    ++ ~我只想帮助其他的巴尔之子，结束这场战争。我要的就这些。你至少愿意帮我往这个方向去吗？~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD1_5
  END

  IF ~~ PCD1_1
    SAY ~我真是高兴极了。只要你明白我来这里并不全是为了你好。那么，我们继续，还是你有什么想问我的？~
    ++ ~Since you asked...I do want to know something.  Why me?~ + PCD1_11
    ++ ~别耍嘴皮子，伊洛斯，一点也不好笑。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD1_12
    ++ ~How would you react if I *were* evil, Iylos?~ + PCD1_13
    ++ ~No, there wasn't.~ + PCD1_14
    ++ ~Not really; was there anything more you wished to ask *me*?~ + PCD1_16
  END

  IF ~~ PCD1_2
    SAY ~当然，<CHARNAME>。毕竟是你的队伍。只要你要我做的事在道德上不含糊、不邪恶，当然。~ = ~只要你明白我来这里并不全是为了你好。那么，我们继续，还是你有什么想问我的？~
    ++ ~Since you asked...I do want to know something.  Why me?~ + PCD1_11
    ++ ~别耍嘴皮子，伊洛斯，一点也不好笑。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD1_12
    ++ ~How would you react if I *were* evil, Iylos?~ + PCD1_13
    ++ ~No, there wasn't.~ + PCD1_14
    ++ ~Not really; was there anything more you wished to ask *me*?~ + PCD1_16
  END

  IF ~~ PCD1_3
    SAY ~不。我有我的命令，我会遵行，不管你愿不愿意、高不高兴，<CHARNAME>。我不会让巴尔萨扎失望。~
    ++ ~Balthazar?~ + PCD1_31
    ++ ~很高兴我们彼此明白。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD1_32
    ++ ~你非常……投入。我佩服这种品质，希望它在……不管你做什么事上都能帮到你。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + PCD1_32
    ++ ~Fine.  Shall we continue?~ + PCD1_32
  END

  IF ~~ PCD1_4
    SAY ~那不是*我*的关切，而是另一个人的关切，那人想知道你的目的和意图。我不喜欢扮演这种角色，可我不得不做。~
    ++ ~你已经够清楚地表明，你不是我想留在队伍里的那种人，伊洛斯。走吧。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD1_41
    ++ ~我不喜欢别人探我的私事，伊洛斯。请转告那个人，不管他是谁，我*不*喜欢这种行为；若我有机会见到他，我不怕当面告诉他。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD1_42
    ++ ~Fine.  Shall we continue?~ + PCD1_12
  END

  IF ~~ PCD1_5
    SAY ~为了阻止战争？是的。可我不知道你除此之外还有没有别的意图。<CHARNAME>，那不是*我*的关切，而是另一个人的关切，那人想知道你的目的和意图。我不喜欢扮演这种角色，可我不得不做。~
    ++ ~你已经够清楚地表明，你不是我想留在队伍里的那种人，伊洛斯。走吧。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD1_41
    ++ ~我不喜欢别人探我的私事，伊洛斯。请转告那个人，不管他是谁，我*不*喜欢这种行为；若我有机会见到他，我不怕当面告诉他。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD1_42
    ++ ~Whoever this person is, Iylos, they do not have the right to make you do things you don't want to do.~ + PCD1_43
    ++ ~Fine.  Shall we continue?~ + PCD1_12
  END

  IF ~~ PCD1_11
    SAY ~（笑）还用得着问吗，<CHARNAME>？你此刻很可能是活着的最有名的巴尔之子，你还不明白为什么有人会对你的动机感兴趣？你前途远大；有人猜，因为艾瑞尼卡斯的折腾，你是最*强*的巴尔之子之一。~
    ++ ~Irenicus' tampering?!  His TAMPERING?!  He tortured me!  He almost killed me, time and time again, only to heal me and repeat the process!!~ + PCD1_111
    ++ ~How do you know about that, Iylos?~ + PCD1_112
    ++ ~我也许强大，可这不是重点。谁竟敢这样侵入我的私事？他们——你没有这个权利！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD1_113
    ++ ~我没意识到自己这么……这么出名。也没意识到我仇敌的作为。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD1_114
    ++ ~你对我一无所知。不管那个人是谁，他对我也一无所知。你……不。别烦我。我不在乎，留下、走开，随你……只是别烦我。~ EXIT
    ++ ~But who IS this person, who is so interested in me, Iylos?~ + PCD1_114
  END

  IF ~~ PCD1_12
    SAY ~随你，<CHARNAME>。~
    IF ~~ EXIT
  END

  IF ~~ PCD1_13
    SAY ~我想这要看情形。你若邪恶，我就不得不采取行动；既然你向我保证并非如此，我就先不下判断……暂且。~
    ++ ~The circumstances?  What possible circumstances could there *be*?~ + PCD1_131
    ++ ~Fine.~ + PCD1_12
    ++ ~Well, I am evil.  Deal with it.~ + PCD1_132
    ++ ~很高兴我们彼此明白。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD1_32
  END

  IF ~~ PCD1_14
    SAY ~好。~
    IF ~~ EXIT
  END

  IF ~~ PCD1_16
    SAY ~还没有，<CHARNAME>。不过也许将来会。~
    IF ~~ EXIT
  END

  IF ~~ PCD1_31
    SAY ~（该死……）~ = ~巴尔萨扎是……~ = ~巴尔萨扎是此刻我不愿提起的人。让我自己想事情，巴尔之子。~
    IF ~~ EXIT
  END

  IF ~~ PCD1_32
    SAY ~谢谢你，<CHARNAME>。~
    IF ~~ EXIT
  END

  IF ~~ PCD1_41
    SAY ~你不会这么轻易摆脱我，巴尔之子。就算我离开队伍，我也会跟着你的脚步继续盯着你。你难道不愿我在这儿，而不是在一里之外、打仗时帮不上你？~
    ++ ~这是勒索，伊洛斯。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD1_411
    ++ ~行。留下。我不在乎，只是别来烦我！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD1_132
    ++ ~Leave.  I don't care if you dog my footsteps, at least you won't be here aggravating me!~ + PCD1_412
    ++ ~Bah, stay if you must.~ + PCD1_132
    ++ ~Leave, and if I find you dogging my footsteps I will not hesitate to take you to justice.~ + PCD1_413
  END

  IF ~~ PCD1_42
    SAY ~那是你的权利。我一有机会就转告他们，我可以……向你保证。~
    IF ~~ EXIT
  END

  IF ~~ PCD1_43
    SAY ~那你显然不懂「忠诚」、「依靠」和「信任」这类概念。我有我的命令，我*会*遵行，不管你愿不愿意、高不高兴，<CHARNAME>。我不会让巴尔萨扎失望。~
    ++ ~Balthazar?~ + PCD1_31
    ++ ~I'm glad we understand each other.~ + PCD1_32
    ++ ~你非常……投入。我佩服这种品质，希望它在……不管你做什么事上都能帮到你。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + PCD1_32
    ++ ~Fine.  Shall we continue?~ + PCD1_32
  END

  IF ~~ PCD1_111
    SAY ~我道歉，那是我……不够得体。你的遭遇令人痛惜，这样的暴行不该强加给任何人……哪怕是巴尔之子。可这并不改变你出名——有人说臭名昭著——这一事实，也不改变有许多人关心你代表什么。~ = ~你现在总该知道了。无论如何，路在眼前，等着被踏上去。我们走吧，结束这场无益的谈话。~
    IF ~~ EXIT
  END

  IF ~~ PCD1_112
    SAY ~我有我的消息来源，<CHARNAME>——只要知道该往哪儿看，这确实是常识。~
    IF ~~ EXIT
  END

  IF ~~ PCD1_113
    SAY ~依我所见，<CHARNAME>，需要时你并不忌讳把规矩弯一弯来合自己的意。~
    IF ~~ EXIT
  END

  IF ~~ PCD1_114
    SAY ~我说过，我宁愿不侵入你的私事；可情势逼我这么做，为此我道歉。不过你确实臭名昭著——或者说有名，随你挑，所以你该知道有*许多人*关心你是谁、你代表什么。~ = ~你该庆幸是我在帮巴尔萨扎，而不是另一个人，那人可能拿任何东西来对付你。~
    ++ ~Balthazar?~ + PCD1_31
    ++ ~I'm glad we understand each other.~ + PCD1_32
    ++ ~你非常……投入。我佩服这种品质，希望它在……不管你做什么事上都能帮到你。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + PCD1_32
    ++ ~Fine.  Shall we continue?~ + PCD1_32
  END

  IF ~~ PCD1_131
    SAY ~很多，<CHARNAME>……很多。~
    IF ~~ EXIT
  END

  IF ~~ PCD1_132
    SAY ~<CHARNAME>，你骗不走我。我不是那种一有机会就想背叛的蠢懦夫。~
    IF ~~ EXIT
  END

  IF ~~ PCD1_152
    SAY ~完全没事。我们走吗？~ = ~我……不。我们走吧。~
    IF ~~ EXIT
  END

  IF ~~ PCD1_411
    SAY ~我相信有些人这么叫，是的。无论如何，我*会*服从命令盯着你。~
    ++ ~Fine.~ + PCD1_132
    ++ ~Leave this party, Iylos.  Even if you do dog my steps, I will not have to deal with *you.*~ + PCD1_412
    ++ ~Just go, Iylos, and if I ever find you near me again I WILL take measures to make sure it does not happen again.~ + PCD1_413
  END

  IF ~~ PCD1_412
    SAY ~那是你的权利。~
    IF ~~ DO ~LeaveParty() SetGlobal("LK#IylosJoinedParty","GLOBAL",0) SetGlobal("LK#IylosLeftUnhappy","GLOBAL",1) EscapeAreaMove("AR5500",958,1567,5)~ EXIT
  END

  IF ~~ PCD1_413
    SAY ~那是你的权利。~
    IF ~~ DO ~LeaveParty() SetGlobal("LK#IylosJoinedParty","GLOBAL",0) SetGlobal("LK#IylosLeftUnhappy","GLOBAL",1) EscapeAreaMove("AR5500",958,1567,5)~ EXIT
  END


// 2nd PC Dialogue
  IF WEIGHT #-2 ~Global("LK#IylosTalks","GLOBAL",3) RealGlobalTimerExpired("LK#IylosTalksTimer","GLOBAL")~ PCD2
    SAY ~你为什么觉得自己在这里，<CHARNAME>？~ [LK#I155]
    ++ ~我不确定。那*你*为什么觉得自己在这里？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1) IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD2_1
    ++ ~显然是为了清除世上的邪恶。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1) IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD2_2
    ++ ~为了止住这场该死的战争。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1) IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD2_3
    ++ ~为了帮人。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1) IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD2_4
    ++ ~那该我知道，伊洛斯，不是你。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1) IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD2_5
  END

  IF ~~ PCD2_1
    SAY ~我是来效力的。~
    ++ ~Is that all you're here for?~ + PCD2_11
    ++ ~我不这么认为。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_12
    ++ ~I see.~ + PCD2_12
    ++ ~Surely there's something else?~ + PCD2_13
    ++ ~真可悲。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_13
  END

  IF ~~ PCD2_2
    SAY ~高尚的目标，<CHARNAME>，虽然天真。~
    ++ ~你怀疑邪恶的存在？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_21
    ++ ~一切目标不都天真吗，伊洛斯？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_22
    ++ ~你竟敢？！与邪恶抗争是*我*活下去的理由！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_23
  END

  IF ~~ PCD2_3
    SAY ~高尚的目标，<CHARNAME>。那你打算怎么做？~
    ++ ~我还不太确定。我会找到办法。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_31
    ++ ~当然是杀掉其余所有人。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_32
    ++ ~听着，伊洛斯，这不是我的选择——我不做，战争就会继续毁掉托瑞尔。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_33
    ++ ~我会找到办法——总得有一个。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_13
  END

  IF ~~ PCD2_4
    SAY ~高尚的目标，<CHARNAME>。可你总不能帮到每一个需要帮助的人吧？~
    ++ ~当然不能；我能帮多少就帮多少，可总有人是我够不到的。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_41
    ++ ~I certainly try.~ + PCD2_42
    ++ ~有谁*在乎*？我帮最需要的人，不是每个跑来讨钱的农人。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_41
  END

  IF ~~ PCD2_5
    SAY ~那是你的选择，<CHARNAME>。如果你要问，我的目的是效力。~
    ++ ~Is that all you're here for?~ + PCD2_11
    ++ ~我不这么认为。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_12
    ++ ~I see.~ + PCD2_12
    ++ ~Surely there's something else?~ + PCD2_13
    ++ ~真可悲。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_13
    ++ ~你这么想？我够了解你，敢说你不只是效力他人而已。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_12
  END

  IF ~~ PCD2_11
    SAY ~我相信是这样。~
    ++ ~Surely you have some other aspiration, or dream?~ + PCD2_13
    ++ ~行吧。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  EXIT
    ++ ~呸，真可悲。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_12
    ++ ~你这么想？我够了解你，敢说你不只是效力他人而已。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_12
  END

  IF ~~ PCD2_12
    SAY ~你爱怎么想就怎么想，<CHARNAME>——你回避了我的问题，那我回避你的也公平，不是吗？~
    ++ ~我明白了。你既然要这样，那就没什么好谈的，是吧？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ EXIT
    ++ ~（笑）说得也对。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  EXIT
    ++ ~说到底，回避是礼貌的精髓。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_121
    ++ ~呸！跟你没法讲一句明白话。走开！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ EXIT
  END

  IF ~~ PCD2_13
    SAY ~也许吧，可你回避了我的问题——我回避你的才公平。~
    ++ ~我明白了。你既然要这样，那就没什么好谈的，是吧？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ EXIT
    ++ ~（笑）说得也对。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  EXIT
    ++ ~说到底，回避是礼貌的精髓。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_121
    ++ ~呸！跟你没法讲一句明白话。走开！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ EXIT
    ++ ~你*确实*可悲，伊洛斯。人生不只是效力他人。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_131
  END

  IF ~~ PCD2_21
    SAY ~不是怀疑它存在，不；而是你相信自己能把它从世上清除。~
    ++ ~Why, you think it can't be done?~ + PCD2_211
    ++ ~嗯……至少尽我该死的全力去试。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_23
    ++ ~我想你说得有点道理；可即便如此，那仍是我的动机。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_23
    ++ ~呸！跟你没法讲一句明白话。走开！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ EXIT

  END

  IF ~~ PCD2_22
    SAY ~（笑）你说到点上了，<CHARNAME>。所有目标在某种意义上天真；与邪恶之争永无休止、连绵不绝，因为邪恶总能找到存在的法子——然而总不断有人试着「击败」它，明知那只是暂时的。它*确实*有其用处——它让平衡不至于倒向任何一边太多。~ = ~要是他们知道真正的完美在于平衡……各种力量的和平共存就好了。~
    ++ ~如你所说——一切目标都天真。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_221
    ++ ~说得有理。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_222
    ++ ~Perhaps, but I do not believe so.  One can defeat evil, if one tries hard enough.  One will eventually triumph over the other, it is inevitable.~ + PCD2_223
    ++ ~目的本来就荒唐。我们在此，因为我们想在此——或必须在此。我们的动机其实无关紧要。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_224
  END

  IF ~~ PCD2_23
    SAY ~与邪恶之争永无休止、连绵不绝，因为邪恶总会在——然而总不断有人试着「击败」它，明知那只是暂时的。它*确实*有其用处——它让平衡不至于倒向任何一边太多。~ = ~要是他们知道真正的完美在于平衡……各种力量的和平共存就好了。你若为与邪恶作战而活，那你恐怕不只是有点失衡。~
    ++ ~说得有理。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_222
    ++ ~Perhaps, but I do not believe so.  One can defeat evil, if one tries hard enough.  One will eventually triumph over the other, it is inevitable.~ + PCD2_223
    ++ ~目的本来就荒唐。我们在此，因为我们想在此——或必须在此。我们的动机其实无关紧要。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_224
    ++ ~我当然*失衡*，蠢货，我是巴尔之子！我脑子里正打着一场激烈的仗，对的是什么、容易的是什么！你是什么，白痴吗？！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD2_231
    ++ ~呸！说话还有*什么意义*？！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD2_232
  END

  IF ~~ PCD2_31
    SAY ~也许你会做到，可依我的经验，要止住像战争这么大的东西，无论如何都少不了谋杀与流血。战争生出更多战争。谋杀生出更多谋杀。不用更多战争就止不住它，而这肯定不是你想要的吧？~
    ++ ~我该做什么就做什么。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD2_311
    ++ ~I...I guess not.  But there has to be another way...~ + PCD2_312
    ++ ~那我会杀掉首领，其余的自会溃散。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD2_223
    ++ ~那你说怎么办，无所不知的修士？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD2_313
  END

  IF ~~ PCD2_32
    SAY ~那也是一种做法；对一个丑恶可憎的现实，一个丑恶可憎的解法。可谋杀生出更多谋杀，<CHARNAME>；死亡生出更多死亡。这肯定不是你想要的吧？~
    ++ ~我该做什么就做什么。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD2_311
    ++ ~I...I guess not.  But there has to be another way...~ + PCD2_312
    ++ ~那我会杀掉首领，其余的自会溃散。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD2_223
    ++ ~那你说怎么办，无所不知的修士？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD2_313
  END

  IF ~~ PCD2_33
    SAY ~我明白，<CHARNAME>。可你若相信止住战争是你的目的，你必须有做到的法子，否则你就是闭着眼乱跑。你无知到看不出这一点吗？~
    ++ ~我不无知，伊洛斯。我知道闭着眼走的后果，可我这儿没什么选择。我被逼进一个我不想演的角色，可我越回避，就越被逼着在这事里主动出力。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_331
    ++ ~我会找到办法。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_332
    ++ ~Perhaps...perhaps I am.  I don't know anymore.~ + PCD2_331
    ++ ~你竟敢？！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_333
  END

  IF ~~ PCD2_41
    SAY ~有些人帮不了，<CHARNAME>，还有些人*不*想被帮。你施舍穷人、捐给慈善时，也许以为自己行善，实际上发生的恰恰可能是反面。~
    ++ ~那又怎样，我不该给穷人钱，也不该捐给慈善？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_341
    ++ ~That's a very cynical view, Iylos.~ + PCD2_342
    ++ ~How terrible it must be for you to look out to the world with such a view.~ + PCD2_342
    ++ ~当然有——我帮那些需要帮助的人，而且只在真能帮上他们时。我做我所能做的。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_342
    ++ ~Are you calling me evil?~ + PCD2_342
  END

  IF ~~ PCD2_42
    SAY ~我想说得有理。可你捐给慈善时，也许以为自己行善，实际上发生的恰恰可能是反面。~
    ++ ~那又怎样，我不该给穷人钱，也不该捐给慈善？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_341
    ++ ~That's a very cynical view, Iylos.~ + PCD2_342
    ++ ~How terrible it must be for you to look out to the world with such a view.~ + PCD2_342
    ++ ~当然有——我帮那些需要帮助的人，而且只在真能帮上他们时。我做我所能做的。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_342
    ++ ~Are you calling me evil?~ + PCD2_342
  END

  IF ~~ PCD2_121
    SAY ~当然。~
    IF ~~ EXIT
  END

  IF ~~ PCD2_131
    SAY ~听着，<CHARNAME>，我——我几乎不认识你，所以没理由跟你分享什么。也许改天吧。~
    IF ~~ EXIT
  END

  IF ~~ PCD2_211
    SAY ~不，不能。与邪恶之争永无休止、连绵不绝，因为邪恶总能找到存在的法子——然而总不断有人试着「击败」它，明知那只是暂时的。它*确实*有其用处——它让平衡不至于倒向任何一边太多。~ = ~要是他们知道真正的完美在于平衡……各种力量的和平共存就好了。你若为与邪恶作战而活，那你恐怕不只是有点失衡。~
    ++ ~说得有理。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~  + PCD2_222
    ++ ~Perhaps, but I do not believe so.  One can defeat evil, if one tries hard enough.  One will eventually triumph over the other, it is inevitable.~ + PCD2_223
    ++ ~目的本来就荒唐。我们在此，因为我们想在此——或必须在此。我们的动机其实无关紧要。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_224
    ++ ~我当然*失衡*，蠢货，我是巴尔之子！我脑子里一直打着一场激烈的仗，对的是什么、容易的是什么！你是什么，白痴吗？！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD2_231
    ++ ~呸！说话还有*什么意义*？！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD2_232
  END

  IF ~~ PCD2_221
    SAY ~确实如此。~
    IF ~~ EXIT
  END

  IF ~~ PCD2_222
    SAY ~平衡并非总能达成，可我们该不断朝它努力。就算是你，<CHARNAME>，就算躁动如你，只要够努力也能达成平衡。也许吧。~
    IF ~~ EXIT
  END

  IF ~~ PCD2_223
    SAY ~你若这么信。~
    IF ~~ EXIT
  END

  IF ~~ PCD2_224
    SAY ~动机就是一切；不管你是否被逼，你必须有动机，否则你不会继续。~
    ++ ~也许吧。~ EXIT
    ++ ~你若愿意这么想，伊洛斯。~ EXIT
  END

  IF ~~ PCD2_231
    SAY ~平衡并非总能达成，可我们该不断朝它努力。就算绝望躁动如你，只要够努力也能达成平衡。也许吧。当然，你会不会费这个劲，那就难说了。呸。~
    IF ~~ EXIT
  END

  IF ~~ PCD2_232
    SAY ~也许不会，如果你不打算听的话。（叹气）~
    IF ~~ EXIT
  END

  IF ~~ PCD2_311
    SAY ~当然。~
    IF ~~ EXIT
  END

  IF ~~ PCD2_312
    SAY ~当然会有，可找不找得到看你。~
    IF ~~ EXIT
  END

  IF ~~ PCD2_313
    SAY ~我不知道——你是这队伍的头儿，巴尔之子。自己想想。~
    IF ~~ EXIT
  END

  IF ~~ PCD2_331
    SAY ~至少你愿意承认这一点，我想。许多人说人逃不过命运——我倒愿意相信此生我们有得选。有些人也许……可像你这样的，也许没有。~
    IF ~~ EXIT
  END

  IF ~~ PCD2_332
    SAY ~也许吧，可找不找得到看你。~
    IF ~~ EXIT
  END

  IF ~~ PCD2_333
    SAY ~我敢，因为我必须。你若不知道自己在做什么，你*会*死——你会闭着眼走到一边，然后有人从背后过来。仔细想清楚，<CHARNAME>。定下一条路，然后走下去。~
    ++ ~伊洛斯，也许你有时也该听自己的建议。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD2_3331
    ++ ~随便。~ EXIT
    ++ ~你这么说就这么吧。~ EXIT
  END

  IF ~~ PCD2_341
    SAY ~我不是那个意思——我是说要当心你的作为，因为你未必总知道会发生什么。有时理论与现实如水火，不管你做什么、想什么，都融不到一处。这看法也许粗粝、阴暗，是的；可我不活在「也许」和「大概」的境里。~
    IF ~~ EXIT
  END

  IF ~~ PCD2_342
    SAY ~我是说要当心你的作为，因为你未必总知道会发生什么。有时理论与现实如水火，不管你做什么、想什么，都融不到一处。这也许愤世嫉俗，是的；可它也现实。我不活在「也许」和「大概」的境里。~
    IF ~~ EXIT
  END

  IF ~~ PCD2_3331
    SAY ~巴尔之子的蠢货……~
    IF ~~ EXIT
  END


// -------------------------------------
// Friendship Dialogues (4)
// -------------------------------------
  IF  WEIGHT #-2 ~Global("LK#IylosTalks","GLOBAL",5) RealGlobalTimerExpired("LK#IylosTalksTimer","GLOBAL")~ PCD3
    SAY ~<CHARNAME>，我……我有件事想跟你说。~ [LK#I230]
    ++ ~嗯？~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1)~ + PCD3_0
    ++ ~怎么了？有什么事？~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1)~ + PCD3_0
    ++ ~呸！别再盯着我，你这衰朽的蠢货！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1) IncrementGlobal("LK#IylosTalks","GLOBAL",1)~ + PCD3_0
  END

  IF ~~ PCD3_0
    SAY ~我忍不住要想，下次我回头看你时，会看到什么……~ [LK#I156]  = ~是人，还是怪物。你觉得会是什么？一个杀人者——一个止不住自己杀人冲动的无辜者，还是一个在意志之战中为自己心智而战的人？~
    ++ ~What are you talking about, Iylos?~ + PCD3_1
    ++ ~I try, Iylos, I really do...but this time, I just don't understand what the in the *hells* you're talking about.~ + PCD3_1
    ++ ~What?~ + PCD3_1
    ++ ~闭嘴，伊洛斯。我没功夫听这个。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD3_2
  END

  IF ~~ PCD3_1
    SAY ~（叹气）你是个怪物，<CHARNAME>——你的本能是杀掉一切、任何东西。我忍不住想，下次我回头，你就会是杀戮者，杀掉一个只不过站在你面前的无辜者。~ = ~有……一些法子……能帮你控制巴尔的本质，把它引向善而不是恶。巴尔萨扎跟我说过，你若合他的意，就给你机会学这些技法。他教过我，那其实是帮助控心、平气的简单练习。~ = ~我正在权衡值不值得教你，或者不教——我甚至到了给你选择的余地，而也许我本不该给。~
    ++ ~我愿意学这些「练习」，伊洛斯，如果它能帮我控制体内这……东西。我不喜欢一个嗜杀的死去之神的本源像弹竖琴一样拨弄我。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD3_11
    ++ ~好！我是说，我当然愿意！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD3_11
    ++ ~我不太确定。这些练习究竟*做*什么？何必费这个劲？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD3_13
    ++ ~我不想学你那些可悲的「心智训练」技法。我的脑子就现在这样挺好，我也要它一直这样！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD3_12
    ++ ~I might be willing to participate in these exercises, but while you're at it, can you teach the rest of Faerun as well?!  Sometimes I think my dark essence is used far too much to explain away something everyone has within them.  The ability to destroy, or to build.~ + PCD3_12
  END

  IF ~~ PCD3_2
    SAY ~（叹气）你是个怪物，<CHARNAME>——你的本能是杀掉一切、任何东西。我忍不住想，下次我回头，你就会是杀戮者，杀掉一个只不过站在你面前的无辜者。~ = ~有……一些法子……能帮你控制巴尔的本质，把它引向善而不是恶。巴尔萨扎跟我说过，你若合他的意，就给你机会学这些技法。他教过我，那其实是帮助控心、平气的简单练习。~ = ~我正在权衡值不值得教你，或者不教——我甚至到了给你选择的余地，而我几乎确信我不该给。你是个蠢货，不配得到我能给你的这种机会。~
    ++ ~我愿意学这些「练习」，伊洛斯，如果它能帮我控制体内这……东西。我不喜欢一个嗜杀的死去之神的本源像弹竖琴一样拨弄我。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD3_11
    ++ ~好！我是说，我当然愿意！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD3_11
    ++ ~我不太确定。这些练习究竟*做*什么？何必费这个劲？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD3_13
    ++ ~我不想学你那些可悲的「心智训练」技法。我的脑子就现在这样挺好，我也要它一直这样！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD3_12
  END

  IF ~~ PCD3_11
    SAY ~我怎么想也想不出为什么。明早天亮前我会叫醒你，好教你一些技法。~
    ++ ~谢谢你，伊洛斯。我很感激……也许我甚至能教你几手。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1) SetGlobal("BLK#IylosMeditation","GLOBAL",1)~ EXIT
    ++ ~我没意见。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~天亮前？我怎么可能在*天亮*前醒来？（呻吟）~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD3_111
    ++ ~其实我不太确定想让你教我什么……~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD3_112
  END

  IF ~~ PCD3_12
    SAY ~我是在给你一个克服自身血统的机会！你是无知、愚蠢，还是宁愿沉醉于它给你带来的死亡？！~
    ++ ~也许吧，可那是*我*的选择，不是你的。我选择「放弃这个机会」，不是你。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD3_112
    ++ ~闭嘴，我*不*蠢，我只是有问题！！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD3_121
    ++ ~好，我答应。就眼下而言。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD3_122
  END

  IF ~~ PCD3_13
    SAY ~它们能帮你更好地控制心智、整理思绪。巴尔萨扎教了我，好让我教你如何控制、至少影响你的巴尔之血。~
    ++ ~好，我做。明天日出。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD3_122
    ++ ~No thanks.~ + PCD3_112
    ++ ~我为什么会想做那种事？！走开！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD3_1121
    ++ ~闭嘴，我*不*蠢，我只是有问题！！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD3_122
  END

  IF ~~ PCD3_111
    SAY ~我相信你能挺过去，<CHARNAME>。~
    IF ~~ EXIT
  END

  IF ~~ PCD3_112
    SAY ~你的选择，可你正在错失一个宝贵的机会——你不是蠢货，<CHARNAME>。你总该看得出这里的好处吧？~
    ++ ~不，其实我看不出。听着，伊洛斯，我就是不想做。就这样。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD3_1121
    ++ ~随便。行。我做。~ DO ~SetGlobal("BLK#IylosMeditation","GLOBAL",1)~ + PCD3_122
    ++ ~哦，好吧……我做，当然是勉勉强强地做！我还要为此撅嘴、闹别扭！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD3_1122
    ++ ~我*不*做，蠢货！你这颗榆木脑袋就装不进去吗？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD3_1123
  END

  IF ~~ PCD3_121
    SAY ~你这么说就这么吧，<CHARNAME>……你这么说就这么吧。你正在错失一个宝贵的机会——你不是蠢货吧，<CHARNAME>？你总该看得出这里的好处？~
    ++ ~不，其实我看不出。听着，伊洛斯，我就是不想做。就这样。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD3_1121
    ++ ~Whatever.  Fine.  I'll do it.~ + PCD3_122
    ++ ~哦，好吧……我做，当然是勉勉强强地做！我还要为此撅嘴、闹别扭！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD3_1122
    ++ ~我*不*做，蠢货！你这颗榆木脑袋就装不进去吗？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD3_1123
  END

  IF ~~ PCD3_122
    SAY ~好——那就明天早上。~
    IF ~~ EXIT
  END

  IF ~~ PCD3_1121
    SAY ~真可悲。~
    IF ~~ EXIT
  END

  IF ~~ PCD3_1122
    SAY ~当然——可你会挺过去的，我确信。那就明天早上。~
    IF ~~ EXIT
  END

  IF ~~ PCD3_1123
    SAY ~我不明白你为什么要扔掉这样的机会——*你*才是这里的糊涂蛋、蠢货、傻瓜，<CHARNAME>。不是我。~
    IF ~~ EXIT
  END



// 4th PC Dialogue (Friendship)
  IF WEIGHT #-2 ~Global("LK#IylosTalks","GLOBAL",7) RealGlobalTimerExpired("LK#IylosTalksTimer","GLOBAL")~ PCD4
    SAY ~早上好，<CHARNAME>。我相信你睡得不错；准备开始了吗？~ [LK#I157]
    ++ ~是的，谢谢。我们开始吧。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1) IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD4_1
    ++ ~不……你能不能先说说我们到底要做什么？~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD4_2
    ++ ~我想可以。~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD4_1
  END

  IF ~~ PCD4_1
    SAY ~想象沙漠，一片广大的黄沙与蓝天。深吸一口气；想象它充满你的胸腔、你的全身。等一等……然后呼出去。~ [LK#I159]  = ~再深吸几口气，放松。想象温暖的阳光注入你；它从你头顶开始，是舒服的、发光的能量。它蔓延到你的脖颈、肩膀——你的手臂、指尖。~ = ~感受肌肤上的微风；留意你身上哪些地方暖、哪些地方凉。感受那光蔓延到你的心。它变得更亮，温暖的光把黑暗驱散。光以你的心为焦点，又辐射回你的指尖，漫到你的腹、你的腿、你的脚趾。~ = ~感受脚下的沙，舒适而宜人。让你的忧虑、疑虑、恐惧流进大地、流走，直到只剩下宁静与金色的光。~ = ~它从你身上每一处照出来——只要你不愿意，没有什么能碰你。你安宁；你安全。睁开眼。~ = ~日出很美，不是吗？暗淡的粉，混着柔和的橙……~ = ~今天晚些会下雨，<CHARNAME>。我们该动身了。~
    ++ ~我……我从记事以来从没这么平静过。谢谢你，伊洛斯。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1) SetGlobal("LK#IylosMeditateAgain","GLOBAL",1)~ + PCD4_11
    ++ ~天空这么……这么*美*。我以前从没这么早起过，来好好看它……~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1) SetGlobal("LK#IylosMeditateAgain","GLOBAL",1)~ + PCD4_12
    ++ ~嗯，那完全是浪费时间。我一点也没觉得有什么不同。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD4_13
    ++ ~哇……那*是*什么？我感到那么宁静、那么平和——我不……我几乎觉得巴尔碰不到我。好像头一次，是我把杀戮压住了。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2) SetGlobal("LK#IylosMeditateAgain","GLOBAL",1)~ + PCD4_11
    ++ ~那不就是普通的冥想吗？我以前做过这种事，没什么不同。不过……我确实觉得好了一点。谢谢你。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD4_11
    ++ ~真可悲。你以为一串词加几个戏剧性的停顿，就能阻止我的巴尔本质「接管」我？哈。白白少睡一场……我明明能把那时间用得比*那*好得多。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PCD4_13
  END

  IF ~~ PCD4_2
    SAY ~这是简单的冥想，<CHARNAME>。它绝不会伤到你，我向你保证——巴尔萨扎还是年轻修士时教过我，他发现这帮他给自己矛盾的存在带来安宁。它有助于平心、止住思绪与情绪的冲击，把宁静带给你。我们开始吗？~
    ++ ~Yes.~ + PCD4_1
    ++ ~呃……不，不做了。抱歉。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD4_1131
  END

  IF ~~ PCD4_11
    SAY ~这是简单的冥想，<CHARNAME>——巴尔萨扎还是年轻修士时教过我，他发现这帮他给自己矛盾的存在带来安宁。它有助于平心、止住思绪与情绪的冲击，把宁静带给你。~
    ++ ~它起效了……好得出奇。我没那么紧绷，没那么……嗯，什么都没那么了。巴尔还在，可它没那么逼人……我感到平和。明天早上我们还能再做一次吗？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD4_111
    ++ ~It worked quite well.  Shall we get going, as you said?~ + PCD4_112
    ++ ~嗯……它其实没止住那些东西，可我确实觉得好了一点。~ ~SetGlobal("LK#IylosMeditateAgain","GLOBAL",1)~  DO ~SetGlobal("LK#IylosMeditateAgain","GLOBAL",1)~ + PCD4_113
    ++ ~我平静了，可是呃……别的都没有。还是谢谢你。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD4_114
  END

  IF ~~ PCD4_12
    SAY ~是的，是这样。~
    IF ~~ EXIT
  END

  IF ~~ PCD4_13
    SAY ~<CHARNAME>，若你能做到，就请从此别再跟我说话。你若领会不了冥想的神圣与宁静，我也领会不了你，也不会站在你这边。~
    IF ~~ DO ~SetGlobal("LK#IylosAngryWithPC","GLOBAL",1)~ EXIT
  END

  IF ~~ PCD4_111
    SAY ~当然。我很高兴它帮上了忙，<CHARNAME>。~
    ++ ~你根本不知道。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~谢谢你，伊洛斯——我真的很感激。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD4_1111
    ++ ~谢谢，我想。~ EXIT
  END

  IF ~~ PCD4_112
    SAY ~当然。我很高兴它帮上了忙，<CHARNAME>。~
    IF ~~ EXIT
  END

  IF ~~ PCD4_113
    SAY ~我很高兴它帮上了忙，哪怕只有一点。我不意外；要好好冥想通常得练很久，但希望我每天早上都能帮上一点。~
    ++ ~我愿意。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~Uh...no thanks.  I mean, it was interesting, but I wouldn't want to do that *every* morning.~ + PCD4_1131
    ++ ~好。~ EXIT
    ++ ~不行。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD4_1131
  END

  IF ~~ PCD4_114
    SAY ~我不意外；要好好冥想通常得练很久，但希望我每天早上都能帮上一点。~
    ++ ~我愿意。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~Uh...no thanks.  I mean, it was interesting, but I wouldn't want to do that *every* morning.~ + PCD4_1131
    ++ ~好。~ EXIT
    ++ ~不行。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCD4_1131
  END

  IF ~~ PCD4_1111
    SAY ~没问题。~
    IF ~~ EXIT
  END

  IF ~~ PCD4_1131
    SAY ~你的选择，可它可能很有益……~
    ++ ~好吧，行，我做。不过能不能稍晚一点？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD4_11311
    ++ ~不用了。~ DO ~SetGlobal("BLK#IylosNoMeditation","GLOBAL",1)~ + PCD4_11312
  END


  IF ~~ PCD4_11311
    SAY ~随你。~ [LK#I221]
    ++ ~谢谢你，伊洛斯。我愿意。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PCD4_1
    ++ ~Nah, actually, I've changed my mind.  No thanks.~ + PCD4_11312
  END

  IF ~~ PCD4_11312
    SAY ~<CHARNAME>，你是个蠢货。~
    IF ~~ EXIT
  END
  

// 5th PC Dialogue (Friendship)
  IF WEIGHT #-2 ~Global("LK#IylosTalks","GLOBAL",9) RealGlobalTimerExpired("LK#IylosTalksTimer","GLOBAL")~ PCD5
    SAY ~<CHARNAME>，我……有些话想跟你说。~ [LK#I161]  = ~不！不，什么都别说。我现在不想听。~ [LK#I162]  = ~我对你的作为……令人遗憾。我一直冷漠、粗鲁、不友善，而这不是对待同伴该有的方式。~ = ~我不想相信你可能是人。我宁愿相信你是披着人皮的某种怪兽，随时会发作，把<PRO_HESHE>身边的男女老少统统杀光。~ = ~我错了。你若不愿我再留在这队伍里，我理解，我只是想告诉你——我，我不是有意对你、对你的同伴这样无礼。~
    ++ ~为什么道歉，伊洛斯？早就原谅了。~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD5_1
    ++ ~我留着你，是因为你是面好肉盾，我……我想你该知道这点。你若想走，也行。~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD5_2
    ++ ~我明白了。那真不巧。你现在可以走了，伊洛斯。~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD5_3
    ++ ~你有时候真蠢，伊洛斯，真的。（叹气）~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD5_4
  END

  IF ~~ PCD5_1
    SAY ~那我们继续——可我还是犯了错。我过早评判了你，我不愿再犯同样的错。我……谢谢你，<CHARNAME>，容忍我的态度。也许以后我们能更和气些。~
    IF ~~ EXIT
  END

  IF ~~ PCD5_2
    SAY ~真滑稽，<CHARNAME>。~
    ++ ~I wasn't joking.~ + PCD5_21
    ++ ~Thanks.  Your apology is accepted, Iylos, but--I swear, if you try to get me to meditate again, I will start to tear out my hair.~ + PCD5_22
    ++ ~Droll?  Me?  Never.~ + PCD5_23
    ++ ~Glad you liked it.  Now, get lost.  I've no need for you in my party if you're going to apologise like some pansy!~ + PCD5_21
  END

  IF ~~ PCD5_3
    SAY ~如果我……必须的话。也许我们还会再见，<CHARNAME>。~
    IF ~~ DO ~LeaveParty() SetGlobal("LK#IylosJoinedParty","GLOBAL",0) SetGlobal("LK#IylosLeftGood","GLOBAL",1) EscapeAreaMove("AR5500",958,1567,5)~ EXIT
  END

  IF ~~ PCD5_4
    SAY ~偶尔，是的，我会。你说呢，<CHARNAME>？你接受我的道歉吗——虽然回想起来，那也许不是最明智的举动……呸。~
    ++ ~道歉我接受，伊洛斯。别放在心上。我们有时都有点刻薄。~ EXIT
    ++ ~I can't accept your apology, Iylos, but please stay with the group.  You are rather useful, I'll give you that.~ + PCD5_41
    ++ ~I'm not sure.  Maybe.  Give me some time to think about it.~ + PCD5_42
    ++ ~No.  Just...just leave, Iylos.  Please.~ + PCD5_3
  END

  IF ~~ PCD5_21
    SAY ~我明白了。那样的话，也许我该走了。~
    ++ ~No, please stay.  You may be a meatshield, but you're a *good* meatshield!~ + PCD5_41
    ++ ~You can stay.  For now.~ + PCD5_41
    ++ ~Goodbye, then.  Fare thee well!~ + PCD5_3
  END

  IF ~~ PCD5_22
    SAY ~我会……试试。可我保证不了——不过冥想的诱惑迟早会抓住你的。~
    IF ~~ EXIT
  END

  IF ~~ PCD5_23
    SAY ~当然不会。~
    IF ~~ EXIT
  END

  IF ~~ PCD5_41
    SAY ~那么我就是要被当肉盾用了。我想也没别的办法。~
    IF ~~ EXIT
  END

  IF ~~ PCD5_42
    SAY ~那么，我就是要被当肉盾用了。我等你的答复。~
    IF ~~ DO ~SetGlobal("LK#IylosFriendsDecisionUncertain","GLOBAL",1)~ EXIT
  END


// 6th PC Dialogue (Friendship)
  IF WEIGHT #-2 ~Global("LK#IylosTalks","GLOBAL",11) RealGlobalTimerExpired("LK#IylosTalksTimer","GLOBAL")~ PCD6
    SAY ~<CHARNAME>，你的包裹开了——这里……~ [LK#I231] = ~好了，修好了。~
    ++ ~你刚才是不是做了件……好心的事？为我？你是谁，你把伊洛斯怎么了？！~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1)~ + PCD6_1
    ++ ~谢谢，伊洛斯。我都没注意到它开了。~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1)~ + PCD6_2
    ++ ~一切都快结束了，是吧？哦，谢谢你。唉，我真希望不必落到这些战斗上——我真希望还有别的法子。（叹气）~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1)~ + PCD6_3
    ++ ~我自己也能弄好，伊洛斯。~ DO ~IncrementGlobal("LK#IylosTalks","GLOBAL",1)~ + PCD6_4
  END

  IF ~~ PCD6_1
    SAY ~你是在暗示我没那么有礼，<CHARNAME>？~ = ~……什么？你为什么那样看我？~
    ++ ~You honestly can't have just said that.  Iylos, you're one of the most terrible people I know.  You really are.  (laugh)~ + PCD6_11
    ++ ~Ah...no reason.  No reason at all.~ + PCD6_11
    ++ ~You're being sarcastic, right?  Anything less than courteous?  Hah!  Now *that* is a joke.~ + PCD6_11
    ++ ~Iylos, you're a rude, obnoxious twat!  You've even admitted it!~ + PCD6_11
  END

  IF ~~ PCD6_2
    SAY ~没问题，<CHARNAME>。我只是看不得东西乱着。我注意到你有时候不是最……有条理的人。~ = ~我只是想尽力帮点忙。~
    ++ ~I know my faults.  You don't need to lord them over me.~ + PCD6_21
    ++ ~I am so!  As you'll recall, it was I who organised *your* pack last night, Iylos.~ + PCD6_22
    ++ ~你这么说就这么吧。~ EXIT
    ++ ~No, I'm not.  But I'm more intelligent than you.~ + PCD6_23
  END

  IF  ~~ PCD6_3
    SAY ~我也一样。可看来别无他法，就现在而言……除非出现什么奇迹，我们只能打下去。到这一步，我想也没什么别的办法——不是我们，就是他们。~
    ++ ~That's a rather drastic turnaround, Iylos.  What provoked this change of view?~ + PCD6_31
    ++ ~我明白你的意思。（叹气）~ EXIT
    ++ ~随便。~ EXIT
    ++ ~Well, we can always pray.~ + PCD6_32
  END

  IF ~~ PCD6_4
    SAY ~我相信你能，可让别人来做总是更省事。而且我知道你爱乱放东西的毛病；你说不定会忘了它，丢什么要紧的东西。~ = ~我只是想尽力帮点忙。~
    ++ ~I know my faults.  You don't need to lord them over me.~ + PCD6_21
    ++ ~I am so!  As you'll recall, it was I who organised *your* pack last night, Iylos.~ + PCD6_22
    ++ ~你这么说就这么吧。~ EXIT
    ++ ~No, I'm not.  But I'm more intelligent than you.~ + PCD6_23
  END

  IF ~~ PCD6_11
    SAY ~你这么说就这么吧，<CHARNAME>。不过至少我在厨艺上比不过你……简直糟糕透顶。~ = ~啊，不过别担心。这队伍里至少有一个厨艺高手。~
    ++ ~You can...cook?  Since when?  Why haven't you said this before?!~ + PCD6_111
    ++ ~My cooking is wonderful!  It is *yours* which is to be deplored!~ + PCD6_112
    ++ ~My cooking is fine, Iylos.  Perhaps it is your tastebuds which have failed you.~ + PCD6_113
    ++ ~Well, you can cook from now on then, if you are such a consummate chef!  I would be happy to give up the job.~ + PCD6_114
    ++ ~Lucky I'm not the one who cooks, then.~ + PCD6_115
    ++ ~You can always go without food, if you want.~ + PCD6_114
  END

  IF ~~ PCD6_21
    SAY ~当然。总得*有人*保证你别太自满。~
    IF ~~ EXIT
  END

  IF ~~ PCD6_22
    SAY ~啊……确实。可即便如此，你还真是毫无条理……真……~ = ~我确实把它弄丢了，是吧？（叹气）~
    ++ ~Yep.  I got you good.~ + PCD6_221
    ++ ~Bwahahaha.~ + PCD6_221
    ++ ~Don't worry about it, Iylos.  *Someone* has to make sure you don't get conceited, after all.~ + PCD6_222
  END

  IF ~~ PCD6_23
    SAY ~你这么说就这么吧，<CHARNAME>。可你做饭时我可说不了同样的话……简直糟糕透顶。（笑）~ = ~啊，不过别担心。这队伍里至少有一个厨艺高手。~
    ++ ~You can...cook?  Since when?  Why haven't you said this before?!~ + PCD6_111
    ++ ~My cooking is wonderful!  It is *yours* which is to be deplored!~ + PCD6_112
    ++ ~My cooking is fine, Iylos.  Perhaps it is your tastebuds which have failed you.~ + PCD6_113
    ++ ~Well, you can cook from now on then, if you are such a consummate chef!  I would be happy to give up the job.~ + PCD6_114
    ++ ~Lucky I'm not the one who cooks, then.~ + PCD6_115
    ++ ~You can always go without food, if you want.~ + PCD6_114
  END

  IF ~~ PCD6_31
    SAY ~大量的思考。沉思。听你说话。~
    ++ ~You mean you *do* listen to me?  Wow.  That's a relief.~ + PCD6_311
    ++ ~Well, it's a lovely change.  Keep it up.~ + PCD6_311
    ++ ~Eh.  I think I preferred the old 'stop fighting you are a horrible person', honestly.~ + PCD6_312
  END

  IF ~~ PCD6_32
    SAY ~我们当然能，<CHARNAME>。我们当然能。~
    IF ~~ EXIT
  END

  IF ~~ PCD6_111
    SAY ~多半是因为我喜欢看你跟火较劲。你若愿意，从今往后我可以来做饭。~ = ~可现在，我们有任务要办——有地方要去，有人要见，对吧？那就走吧。~
    IF ~~ EXIT
  END

  IF ~~ PCD6_112
    SAY ~嗯。你是说，那天晚上我们吃的那道蘑菇「汤」是你用魔法变出来的，你并没整晚对着火流口水想把它弄好，因为它吃起来像煮卷心菜？~
    ++ ~Yes!  I do have magical abilities, you know.  I am a spawn of Bhaal.~ + PCD6_1121
    ++ ~Fine.  You win.  But you're cooking from now on!~ + PCD6_114
    ++ ~I hate you, forever and ever, and my hatred is pure.  I hope you die painfully and horribly, on a bed of boiled cabbage.~ + PCD6_1122
    ++ ~It did not taste like boiled cabbage!  It tasted like mushroom!  Mushroom, damn it!~ + PCD6_1123
  END

  IF ~~ PCD6_113
    SAY ~也许吧，可不知怎的，我不太信。~
    IF ~~ EXIT
  END

  IF ~~ PCD6_114
    SAY ~你若让我来，我会很乐意做饭。因为我记得，除非那道蘑菇「汤」——顺带说，味道像煮卷心菜——是你用魔法变出来的，你的厨艺很糟。~
    ++ ~Yes!  I do have magical abilities, you know.  I am a spawn of Bhaal.~ + PCD6_1121
    ++ ~Fine.  You win.  But you *are* cooking from now on!~ + PCD6_1141
    ++ ~I hate you, forever and ever, and my hatred is pure.  I hope you die painfully and horribly, on a bed of boiled cabbage.~ + PCD6_1122
    ++ ~It did not taste like boiled cabbage!  It tasted like mushroom!  Mushroom, damn it!~ + PCD6_1123
  END

  IF ~~ PCD6_115
    SAY ~你这话有道理。你要是那样，我肯定我们早都死了。~
    IF ~~ EXIT
  END

  IF ~~ PCD6_221
    SAY ~你确实把我堵住了。我想总有下次。~
    IF ~~ EXIT
  END

  IF ~~ PCD6_222
    SAY ~争辩还有意义吗？（叹气）~
    IF ~~ EXIT
  END

  IF ~~ PCD6_311
    SAY ~我确实听你说话，是的。当然，是在合我意的时候。可现在，我们继续赶路吧——我记得有很多事要做。比如跟巴尔之子打。击败他们。当然，把他们的头留作战利品。~
    IF ~~ EXIT
  END

  IF ~~ PCD6_312
    SAY ~当真？那我以后就努力对你做个「可怕的人」。~
    IF ~~ EXIT
  END

  IF ~~ PCD6_1121
    SAY ~我想是的。可这解释不了你弄出的那摊乱子，<CHARNAME>。一个*巴尔之子*总该收拾干净吧？也许在这件事上不行。可现在，我们继续赶路吧——我记得有很多事要做。比如跟巴尔之子打。击败他们。当然，把他们的头留作战利品。~
    IF ~~ EXIT
  END

  IF ~~ PCD6_1122
    SAY ~我知道，<CHARNAME>。我知道。~
    IF ~~ EXIT
  END

  IF ~~ PCD6_1123
    SAY ~当然会，<CHARNAME>。当然会。~
    IF ~~ EXIT
  END

  IF ~~ PCD6_1141
    SAY ~我说过，我会乐意。可现在，我们继续赶路吧——我记得有很多事要做。比如跟巴尔之子打。击败他们。当然，把他们的头留作战利品。~
    IF ~~ EXIT
  END


// -------------------------------------
// Iylos Dislike Dialogue (1)
// -------------------------------------
  IF WEIGHT #-2 ~Global("LK#IylosDislikeTalks","GLOBAL",1) RealGlobalTimerExpired("LK#IylosDislikeTalksTimer","GLOBAL")~ PCDIS
    SAY ~当心你自己，<CHARNAME>。我不信任你，我会盯着你的一举一动，直到你证明了自己。但在那之前，记住我会盯着你——需要时我不怕动手。~ [LK#I160]
    ++ ~那是什么意思？！~ DO ~IncrementGlobal("LK#IylosDislikeTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosDislikeTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCDIS_1
    ++ ~换我我就不这么狂妄，伊洛斯——你不知道自己在跟谁打交道。我是巴尔之子。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1) IncrementGlobal("LK#IylosDislikeTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosDislikeTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCDIS_2
    ++ ~随便。听着，我其实不在乎。~ DO ~IncrementGlobal("LK#IylosDislikeTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosDislikeTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCDIS_2
    ++ ~你大可以走，伊洛斯。你知道我不会干什么暴行——或者说，到现在你该知道了。~ DO ~IncrementGlobal("LK#IylosDislikeTalks","GLOBAL",1) RealSetGlobalTimer("LK#IylosDislikeTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCDIS_3
  END

  IF ~~ PCDIS_1
    SAY ~当心你自己——正是这个意思。我本以为这不太难懂。~
    ++ ~Are you threatening me?~ + PCDIS_11
    ++ ~当心*你自己*，你这个傲慢的混蛋。我还有别的事要干，不能站在这儿听你抱怨！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCDIS_12
    ++ ~I'm not stupid.~ + PCDIS_13
    ++ ~（叹气）听着，伊洛斯。我并不喜欢你，你也不喜欢我。可我们有任务——我们得止住这场该死的战争，就算你不干，我也要干。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~  + PCDIS_14
  END

  IF ~~ PCDIS_2
    SAY ~我的老师就是个巴尔之子；我知道你能做什么，<CHARNAME>。别小看我。我在战斗中观察过你；我摸清了你的战法、你的弱点。~
    ++ ~Are you threatening me?~ + PCDIS_11
    ++ ~当心*你自己*，你这个傲慢的混蛋。我还有别的事要干，不能站在这儿听你抱怨！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCDIS_12
    ++ ~I'm not stupid.~ + PCDIS_13
    ++ ~（叹气）听着，伊洛斯。我并不喜欢你，你也不喜欢我。可我们有任务——我们得止住这场该死的战争，就算你不干，我也要干。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~  + PCDIS_14
    ++ ~随便——走开就行！~DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~  + PCDIS_21
  END

  IF ~~ PCDIS_3
    SAY ~也许吧，可我不冒这个险。~
    ++ ~Are you threatening me?~ + PCDIS_11
    ++ ~当心*你自己*，你这个傲慢的混蛋。我还有别的事要干，不能站在这儿听你抱怨！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCDIS_12
    ++ ~I'm not stupid.~ + PCDIS_13
    ++ ~（叹气）听着，伊洛斯。我并不喜欢你，你也不喜欢我。可我们有任务——我们得止住这场该死的战争，就算你不干，我也要干。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~  + PCDIS_14
    ++ ~随便——走开就行！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PCDIS_21
  END

  IF ~~ PCDIS_11
    SAY ~这不是威胁；这是承诺，<CHARNAME>。~
    IF ~~ EXIT
  END

  IF ~~ PCDIS_12
    SAY ~我有比为你打仗更紧要的事，可不知为何，明明不再需要，我还是继续这么做。至少*我*不为自己是谋杀的<PRO_SONDAUGHTER>而自豪，不像你，还沉醉在杀戮里。~
    IF ~~ EXIT
  END

  IF ~~ PCDIS_13
    SAY ~我希望不会，<CHARNAME>……我希望不会。~
    IF ~~ EXIT
  END

  IF ~~ PCDIS_14
    SAY ~我会助你止住这场战争、击败其他巴尔之子；但我*不会*参与任何邪恶的勾当。我希望你有脑子听进去，别把我的话当耳旁风。至少*我*不为自己是谋杀的<PRO_SONDAUGHTER>而自豪，不像你，还沉醉在杀戮里。~
    IF ~~ DO ~SetGlobal("LK#IylosProudOfBeingBhaalspawn","GLOBAL",1)~ EXIT
  END

  IF ~~ PCDIS_21
    SAY ~记住就好，<CHARNAME>。~
    IF ~~ EXIT
  END

  
// -------------------------------------
// Plot Dialogues (4)
// -------------------------------------
// Plot Dialogue 1
  IF WEIGHT #-2 ~Global("LK#IylosLastTimeSeeingPP","GLOBAL",1)~ PocketPlane2
    SAY ~这么说，这可能是我们最后一次见到这该死的地方了，是吧？~ [LK#I232] = ~我不能说我不为此高兴。~
    ++ ~我也一样。我会高兴离开这里，把这一切了结。（叹气）~ DO ~IncrementGlobal("LK#IylosLastTimeSeeingPP","GLOBAL",1)~ + PP2_1
    ++ ~我会想念它……就算它不是最美的地方，我需要时它一直都在。~ DO ~IncrementGlobal("LK#IylosLastTimeSeeingPP","GLOBAL",1)~ + PP2_2
    ++ ~不高兴？我乐坏了！我巴不得再也见不到它。天哪，我真希望现在就把它毁掉！~ DO ~IncrementGlobal("LK#IylosLastTimeSeeingPP","GLOBAL",1)~ + PP2_3
    ++ ~你不必喜欢它。可它是力量之地，为此我敬它。若某些人的话可信，这个位面是我造的；它是我的一部分。~ DO ~IncrementGlobal("LK#IylosLastTimeSeeingPP","GLOBAL",1)~ + PP2_4
  END

  IF ~~ PP2_1
    SAY ~从萨拉杜什算起，已经过了好一阵了，是吧？至少很快就结束了，我想。能想去哪就去哪，头上不再悬着那些不想有的限制，会很好。~
    IF ~~ EXIT
  END

  IF ~~ PP2_2
    SAY ~我想是。至少这一切很快就结束了，我想。能想去哪就去哪，头上不再悬着那些不想有的限制，会很好。~
    IF ~~ EXIT
  END

  IF ~~ PP2_3
    SAY ~嗯，很快你就能了，<CHARNAME>。很快就结束了——我想，全部都会结束。能想去哪就去哪，头上不再悬着那些不想有的限制，会很好。~
    IF ~~ EXIT
  END

  IF ~~ PP2_4
    SAY ~你身上成长、变化——变得更强的，一部分，我知道。可我不会想念它。~ = ~很快就结束了——我想，全部都会结束。能想去哪就去哪，头上不再悬着那些不想有的限制，会很好。~
    IF ~~ EXIT
  END


// Plot Dialogue 3 (Floating)
  IF WEIGHT #-2 ~Global("LK#IylosLastBhaalspawnDialogue","GLOBAL",1)~ last
    SAY ~于是我们来到了你一直英勇抗争的那五人的最后一个，<CHARNAME>。~ [LK#I165]
    ++ ~巴尔萨扎，是的。~ DO ~IncrementGlobal("LK#IylosLastBhaalspawnDialogue","GLOBAL",1)~ + last_1
    ++ ~过一会儿……得先休息，缓一缓。刚那个地牢把我掏空了。（叹气）有时候我怀疑自己是不是真适合干冒险这行……~ DO ~IncrementGlobal("LK#IylosLastBhaalspawnDialogue","GLOBAL",1)~ + last_1
    ++ ~如果我能，我会避免杀他。~ DO ~IncrementGlobal("LK#IylosLastBhaalspawnDialogue","GLOBAL",1) IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + last_1
  END

  IF ~~ last_1
    SAY ~我了解巴尔萨扎。他若觉得你能帮他的事业，就不会跟你打。~
    ++ ~Which is?~ + last_11
  END

  IF ~~ last_11
    SAY ~他并不想复活巴尔，你也许已经猜到了。他想阻止这件事。~
    ++ ~Yes, I had gathered that much.  What else can you tell me?~ + last_111
    ++ ~真的？我还以为他跟其他几个一样……那我们该怎么办，你说？~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + last_111
    ++ ~那我就不得不杀他。~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + last_112
  END

  IF ~~ last_111
    SAY ~他也许并不排斥某种……某种停战，也许。~ = ~我保证不了，可我想我们若走得对，能阻止他做出什么激烈的事，并说服他帮我们。~
    ++ ~Well--I bow before your superior intellect, Iylos; how do you propose we do that?~ + last_1111
    ++ ~Maybe...I'm not sure.~ + last_1112
    ++ ~A truce?  With a Bhaalspawn?  You have to be joking.~ + last_1113
  END

  IF ~~ last_112
    SAY ~你*想*复活巴尔？~
    ++ ~当然。我一知道这事可行，就尽力朝它努力。现在时机就在眼前……我不会让一个蠢修士拦住我，不让我父亲恢复他应得的荣光！~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + last_1121
    ++ ~Heh, I was just joking, Iylos.  But what do you suggest?~ + last_111
  END

  IF ~~ last_1111
    SAY ~也许可以打动他的良知。上次我跟他说话时，他似乎并不特别欢迎我……我想我们只能等着看。~
    IF ~~ EXIT
  END

  IF ~~ last_1112
    SAY ~上次我跟他说话时，他似乎并不特别欢迎我……我想，你若决定那么做，我们就只能等着看。我不会低估巴尔萨扎的助力——他可能是个强大的盟友。~
    IF ~~ EXIT
  END

  IF ~~ last_1113
    SAY ~也许我们可以打动他的良知。可上次我跟他说话时，他似乎并不特别欢迎我……我想我们只能等着看。~
    IF ~~ EXIT
  END

  IF ~~ last_1121
    SAY ~那你就注定完了，<CHARNAME>。若那是你的意图——我不会给你任何援助。别了，我希望你明白你现在这条路有多蠢。~
    IF ~~ DO ~LeaveParty() SetGlobal("LK#IylosJoinedParty","GLOBAL",0) SetGlobal("LK#IylosLeftUnhappy","GLOBAL",1) EscapeAreaMove("AR5500",958,1567,5)~ EXIT
  END


// -------------------------------------
// Scenery Dialogues (3)
// -------------------------------------

// Pocket Plane
  IF WEIGHT #-2 ~Global("LK#IylosPP","GLOBAL",1)~ LK#Iylos_PocketPlane
    SAY ~我不信任这地方，<CHARNAME>。它散发着腐坏与恐怖的气味。你听不见背景里的尖叫吗？我不知道你怎么能在这儿久待，更别说在这儿睡……~ [LK#I163]
    ++ ~我不在这儿睡。我只在绝对需要、或被索拉带来时才来。能避开我就避开。~ DO ~IncrementGlobal("LK#IylosPP","GLOBAL",1) IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~  + PP_1
    ++ ~其实没那么糟，一旦习惯了这阴暗就好。~ DO ~IncrementGlobal("LK#IylosPP","GLOBAL",1)~ + PP_2
    ++ ~哦，*忍*着点，伊洛斯！这地方没什么不好。~ DO ~IncrementGlobal("LK#IylosPP","GLOBAL",1) IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + PP_3
    ++ ~我喜欢它。那些尖叫几乎……令人愉快。可以说，很撩人。~ DO ~IncrementGlobal("LK#IylosPP","GLOBAL",1) IncrementGlobal("BLK#IylosHappiness","GLOBAL",-2)~ + PP_4
  END

  IF ~~ PP_1
    SAY ~我不意外。~
    IF ~~ EXIT
  END

  IF ~~ PP_2
    SAY ~不知怎的，我很难相信。~
    IF ~~ EXIT
  END

  IF ~~ PP_3
    SAY ~那么弥漫在空气里的黑暗不打扰你？那几乎摸得着的死亡？~
    ++ ~呃。倒不怎么。~ EXIT
    ++ ~...where?!  I haven't noticed it...~ + PP_31
    ++ ~Yes, it does.  But where else can I be sure I am safe, if not in a place of my own creation?~ + PP_31
  END

  IF ~~ PP_4
    SAY ~你令我作呕，<CHARNAME>……真的。~
    IF ~~ EXIT
  END

  IF ~~ PP_31
    SAY ~连石头都感觉不对，我脚下的地面在我走过时不发一点声响。这地方不会有什么好结果，<CHARNAME>。~
    IF ~~ EXIT
  END


// Merceneries dead--Amkethran
  IF WEIGHT #-2 ~Global("LK#IylosSaemon","GLOBAL",1)~ LK#IylosMerceneriesDead
    SAY ~从你脸上那不快的神情，和你脚下迅速积起的血来看，<CHARNAME>，我推断你以前见过这位赛蒙·哈瓦里安。~ [LK#IBLN]
    ++ ~哦，是的。他是个抽着鼻子、可悲得算不上男人的东西，只关心自己。他以前帮过几次忙，可每次都索要惨重的代价。~ DO ~SetGlobal("LK#IylosSaemon","GLOBAL",2)~ + Saemon_1
    ++ ~赛蒙？那个混蛋。谁不认识赛蒙·哈瓦里安，这星球上最该死、最被通缉的恶棍？！~ DO ~SetGlobal("LK#IylosSaemon","GLOBAL",2)~ + Saemon_2
    ++ ~呃……我并不特别喜欢他，可那就是他的作风。我想他也没法不那样。~ DO ~SetGlobal("LK#IylosSaemon","GLOBAL",2)~ + Saemon_3
  END

  IF ~~ Saemon_1
    SAY ~从这情形看，我能想象。有些人是不可救药的……而不幸的是，我感觉我们还会再见到赛蒙。据本地人说，他在这儿已经扎下根了。~ = ~不过话又说回来，也有人说在这附近见过卓尔，所以这话该打多少折扣，我说不准。也许得打一整袋。~
    IF ~~ EXIT
  END

  IF ~~ Saemon_2
    SAY ~从这情形看，我能想象你有多讨厌他。有些人是不可救药的……而不幸的是，我感觉我们还会再见到赛蒙。据本地人说，他在这儿已经扎下根了。~ = ~不过话又说回来，也有人说在这附近见过卓尔，所以这话该打多少折扣，我说不准。也许得打一整袋。~
    IF ~~ EXIT
  END

  IF ~~ Saemon_3
    SAY ~从这情形看，他就是彻底不可救药……而不幸的是，我感觉我们还会再见到赛蒙。据本地人说，他在这儿已经扎下根了。~ = ~不过话又说回来，也有人说在这附近见过卓尔，所以这话该打多少折扣，我说不准。也许得打一整袋。~
    IF ~~ EXIT
  END
  

// Spectator Comment
  IF WEIGHT #-2 ~Global("LK#IylosBeholder","GLOBAL",1)~ LK#IylosBeholder
    SAY ~多有意思的一个眼魔。我本想多了解他一些。我一直以为这类生物天生邪恶。也许我错了。至少，这值得想一想。~ [LK#IBLN]
    ++ ~那是旁观者——我们以前遇见过他几次。其实是个可爱的小伙子，只是有点显眼。~ DO ~IncrementGlobal("LK#IylosBeholder","GLOBAL",1)~ + Spectator_1
    ++ ~你不太喜欢自己出错，是吧，伊洛斯？~ DO ~IncrementGlobal("LK#IylosBeholder","GLOBAL",1)~ + Spectator_2
    ++ ~上次有机会时，我该杀了他。~ DO ~IncrementGlobal("LK#IylosBeholder","GLOBAL",1)~ + Spectator_1
  END

  IF ~~ Spectator_1
    SAY ~我猜是在幽暗地域？啊……那一定是个迷人的经历。可赛达不会等我们——lu' ol's draeval whol ilta ulu el。~ = ~该她死了。~
    IF ~~ EXIT
  END

  IF ~~ Spectator_2
    SAY ~赛达不会等我们——lu' ol's draeval whol ilta ulu el。~ = ~该她死了。~
    IF ~~ EXIT
  END
  
  

// -------------------------------------
// Scenery Interjections (2)
// -------------------------------------
// Scenery Interjection, Forest Area
  IF WEIGHT #-2 ~AreaCheck("AR6400") Global("LK#IylosTransport","GLOBAL",1)~ LK#IylosForestcomment
    SAY ~于是你的袖珍位面把我们直接送到了敌兵群中间——好战术，<CHARNAME>。也许你指望这突袭能让他们失灵什么的？~ [LK#IBLN] = ~不管怎样，我们现在得打！~
    IF ~~ DO ~IncrementGlobal("LK#IylosTransport","GLOBAL",1)~ EXIT
  END

// Drow Enclave--Spiders
  IF WEIGHT #-2
    ~AreaCheck("AR6103") InParty(Myself) See(Player1) Global("LK#IylosSpiders","GLOBAL",1)~ LK#IylosDrowEnclaveSpiders
    SAY ~啊……我忘了卓尔对蜘蛛那种古怪的痴迷。好极了——我们本来就得打穿一整支卓尔女祭司、佣兵和法师的军队，现在又多了一窝巨大的毒蜘蛛。真是好极了。~ [LK#IBLN]
    IF ~~ DO ~IncrementGlobal("LK#IylosSpiders","GLOBAL",1)~ EXIT
  END

END

// -------------------------------------
// Saradush Interjections
// -------------------------------------

// Viekang
INTERJECT_COPY_TRANS SARVIE01 6 LK#IylosViekang
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~It would almost seem as though she is trying to keep you here...but why would she do that?~
END

// Peltje
INTERJECT_COPY_TRANS SARPEL01 6 LK#IylosPeltje
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~How unusual...perhaps we should investigate, <CHARNAME>.  As I remember, the prison is boarded up--perhaps this was the reason.~
END

// Male Courtesan
INTERJECT_COPY_TRANS SARPROVM 4 LK#IylosCourtesan
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") Gender(Player1,MALE) !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, I didn't know you were of that persuasion...Perhaps I should pay more attention.~
END


// -------------------------------------
// Forest of Mir Interjections
// -------------------------------------
// Skeleton Cleric
INTERJECT_COPY_TRANS HGSKL01 1 LK#IylosSkeletonCleric
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~Bhaal?!  Skeleton, you call this Bhaalspawn an abomination, and yet you are that much worse!  Whatever connection you have to Bhaal, consider it now severed!~
  == HGSKL01 ~准备受死吧，容器！一个不留！巴尔将归来！~
END


// -------------------------------------
// Sendai's Enclave
// -------------------------------------
// Diaytha
INTERJECT SENPRI 3 LK#IylosDiaytha
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~Ka dos daewl, Yathrin.  Usstan orn'la kre'j ulu z'haan ka Usstan zhahen dos--whol zhaunyl udos zhal elgg dos!~
  == SENPRI ~哈，Usstan tlun l' Detholusin d' Sendai, wael——Usstan orn elgg dos lu' dosst yeunn Bhaalspawn！敢就进来。~
COPY_TRANS SENPRI 3


// -------------------------------------
// Abazigal's Stronghold
// -------------------------------------
// Bondari
I_C_T BAZPAT01 7 LK#IylosBondari
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~Such youthful enthusiasm must be good for something--a well-chosen course of action, <CHARNAME>.  A little deceptive, perhaps, but...~
END

// -------------------------------------
// Throne of Bhaal
// -------------------------------------
// God Advice
INTERJECT_COPY_TRANS FINSOL01 27 LK#IylosFinSol
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos")~ THEN ~I must advise against this, <CHARNAME>.  Power does things to people, such as Amelissan here.  I am begging you...do not do this.  Don't become another Amelissan, or Irenicus, or Bodhi.~ = ~保持凡人，保持清醒。仔细考虑这个决定。决定之前，把*一切*都权衡清楚。~
END


// -------------------------------------
// Player Initiated Dialogue
// -------------------------------------
// PID 1--Cease
// PID 2--Balthazar (2 versions)
// PID 3--Amkethran (2 versions)
// PID 4--Anauroch
// PID 5--Drow
// PID 6--Nyalee
// PID 7--Teach Me Drow
// PID 8--Relationship

APPEND ~LK#IYLJ~

  // Clicky-click
  IF ~IsGabber(Player1) CombatCounter(0)~ Player_Initiated_Dialogues
    SAY ~（伊洛斯短暂地瞥了你一眼，随后把目光收回你面前的地上。）~ [LK#IBLN]
    ++ ~（与伊洛斯调情）~ DO ~IncrementGlobal("LK#IylosFlirtedWithTimes","GLOBAL",1)~ + flirts
    ++ ~（跟伊洛斯说话）~ DO ~IncrementGlobal("LK#IylosTalkedToTimes","GLOBAL",1)~ + question
    ++ ~Iylos, could you stop talking to me so often?  Your voice can get a little...irritating at times.~ + donttalk
    ++ ~Iylos, I have to ask you to leave the party.~ + leavetheparty
    ++ ~啊，没什么。（让伊洛斯独处）~ EXIT
  END

  IF ~~ donttalk
    SAY ~随你。~
    IF ~~ DO ~SetGlobal("LK#IylosTalksLessOften","GLOBAL",1)~ EXIT
  END

  IF ~~ leavetheparty
    SAY ~你确定吗，<CHARNAME>？~
    ++ ~Quite.~ + quite
    ++ ~Actually, stay in the party, please.~ + stay
  END

  IF ~~ quite
    SAY ~如果我必须——可要知道你会被盯着。再会，<CHARNAME>——也许我们什么时候还会再见。~
    IF ~~ DO ~SetGlobal("LK#IylosJoinedParty","GLOBAL",0) LeaveParty() SetGlobal("LK#IylosLeftGood","GLOBAL",1) EscapeAreaMove("AR5500",958,1567,5)~ EXIT
  END

  IF ~~ stay
    SAY ~随你。~
    IF ~~ EXIT
  END

  IF ~~ flirts
    SAY ~（伊洛斯走在你身旁，双手垂在身侧，从容自在；你看着他那宽阔的肩和蓝色的眼睛。）~
    + ~RandomNum(2,1)~ + ~(Observe Iylos)~ + observe1
    + ~RandomNum(2,2)~ + ~(Observe Iylos)~ + observe2
    + ~RandomNum(2,1)~ + ~(Walk up behind Iylos and whisper unintelligibly into his ear)~ + whisper1
    + ~RandomNum(2,2)~ + ~(Walk up behind Iylos and whisper unintelligibly into his ear)~ + whisper2
    ++ ~(Watch Iylos train)~ + train1
    + ~RandomNum(2,1)~ + ~(Watch Iylos meditate)~ + meditate1
    + ~RandomNum(2,2)~ + ~(Watch Iylos meditate)~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + meditate2
    + ~RandomNum(2,1)~ + ~(Stroke Iylos' arm)~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + arm1
    + ~RandomNum(2,2)~ + ~(Stroke Iylos' arm)~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + arm2
    + ~RandomNum(2,1)~ + ~(Smile at Iylos)~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + smile1
    + ~RandomNum(2,2)~ + ~(Smile at Iylos)~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + smile2
    + ~RandomNum(2,1)~ + ~(Poke Iylos)~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + poke1
    + ~RandomNum(2,2)~ + ~(Poke Iylos)~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + poke2
    + ~RandomNum(2,1)~ + ~(Whack Iylos)~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + whack1
    + ~RandomNum(2,2)~ + ~(Whack Iylos)~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + whack2
    + ~RandomNum(2,1)~ + ~(Blow in Iylos' ear)~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + ear1
    + ~RandomNum(2,2)~ + ~(Blow in Iylos' ear)~ + ear2
    + ~Global("LK#IylosApologise","GLOBAL",1)~ + ~Iylos, I'd like to apologise for annoying you earlier...I hope you don't mind, sometimes I just feel a little playful.~ DO ~SetGlobal("LK#IylosApologise","GLOBAL",0)~ + apologise
    + ~RandomNum(2,1)~ + ~You should smile more often, Iylos.  It suits you.~ + yousmile1
    + ~RandomNum(2,2)~ + ~You should smile more often, Iylos.  It suits you.~ + yousmile2
    ++ ~（让伊洛斯独处）~ EXIT
  END

  IF ~~ question
    SAY ~（伊洛斯短暂地看了你一眼。）你想要什么，<CHARNAME>？~
    + ~RandomNum(3,1) Global("LK#IylosClasses","GLOBAL",0)~                                                                                 + ~Do you agree with the idea of upper and lower classes, Iylos?~ DO ~SetGlobal("LK#IylosClasses","GLOBAL",1)~                                                                        + classes
    + ~RandomNum(3,2) Global("LK#IylosGate","GLOBAL",0)~                                                                                    + ~Have you ever been to Baldur's Gate?~ DO ~SetGlobal("LK#IylosClasses","GLOBAL",1)~                                                                        + gate
    + ~Global("LK#IylosCeaseDialogue","GLOBAL",0)~                                                                                          + ~Iylos, must you *always* be watching me as would a hawk, waiting for my next move?  I'm not about to erupt into violence, or murder all within my sight, you know.~ DO ~SetGlobal("LK#IylosCeaseDialogue","GLOBAL",1)~                                                                  + PID_Cease
    + ~Global("MetBal","GLOBAL",1) Global("LK#IylosKnowsBalthDialogue","GLOBAL",0)~                                                         + ~Ah...so *that* was Balthazar.  Charming fellow.~ DO ~SetGlobal("LK#IylosKnowsBalthDialogue","GLOBAL",1)~                                                             + PID_KnowsBalth
    + ~Global("MetBal","GLOBAL",0) Global("LK#IylosDoesn’tKnowBalthDialogue","GLOBAL",0)~                                                   + ~Who is this Balthazar you mentioned a while back, Iylos?~ DO ~SetGlobal("LK#IylosDoesn’tKnowBalthDialogue","GLOBAL",1)~                                                       + PID_WhoisBalth
    + ~RandomNum(3,3) Global("LK#IylosPastries","GLOBAL",0)~                                                                                + ~Do you enjoy pastries?~ DO ~SetGlobal("LK#IylosPastries","GLOBAL",1)~                                                                       + pastries
    + ~RandomNum(3,1) Global("LK#IylosDrink","GLOBAL",0)~                                                                                   + ~What do you like to drink?  Do you like to drink alcohol?~ DO ~SetGlobal("LK#IylosDrink","GLOBAL",1)~                                                                          + drink
    + ~RandomNum(3,2) Global("LK#IylosAnimal","GLOBAL",0)~                                                                                  + ~What is your favourite animal, Iylos?~ DO ~SetGlobal("LK#IylosAnimal","GLOBAL",1)~                                                                         + animal
    + ~RandomNum(3,1) Global("LK#IylosPaladins","GLOBAL",0)~                                                                                 + ~What do you think of paladins?~ DO ~SetGlobal("LK#IylosPaladins","GLOBAL",1)~                                                                        + paladins
    + ~RandomNum(3,2) Global("LK#IylosDruids","GLOBAL",0)~                                                                                 + ~What do you think of druids?~ DO ~SetGlobal("LK#IylosDruids","GLOBAL",1)~                                                                        + druids
    + ~RandomNum(3,3) Global("LK#IylosBards","GLOBAL",0)~                                                                                 + ~What is your opinion on bards?~ DO ~SetGlobal("LK#IylosBards","GLOBAL",1)~                                                                        + bards
    + ~RandomNum(3,1) Global("LK#IylosBerserkers","GLOBAL",0)~                                                                                 + ~What do you think of berserker warriors?~ DO ~SetGlobal("LK#IylosBerserkers","GLOBAL",1)~                                                                        + berserkers
    + ~RandomNum(3,2) Global("LK#IylosMagic","GLOBAL",0)~                                                                                 + ~How do you feel about magic?~ DO ~SetGlobal("LK#IylosMagic","GLOBAL",1)~                                                                        + magic
    + ~RandomNum(3,3) Global("LK#IylosMinsc","GLOBAL",0) InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~                                                                                 + ~How do you feel about Minsc?~ DO ~SetGlobal("LK#IylosMinsc","GLOBAL",1)~                                                                        + minsc
    + ~RandomNum(2,1) Global("LK#IylosThievery","GLOBAL",0)~                                                                                 + ~What do you think of thievery?~ DO ~SetGlobal("LK#IylosThievery","GLOBAL",1)~                                                                        + thievery
    + ~GlobalGT("LK#IylosViconia","GLOBAL",2) Global("LK#IylosDrowDialogue","GLOBAL",0)~                                                    + ~Iylos, I heard you speaking with Viconia a while ago--in drow.  How is it that you know the language of the dark elves so well?~ DO ~SetGlobal("LK#IylosDrowDialogue","GLOBAL",1)~                                                                   + PID_Drow
    + ~RandomNum(3,3) Global("LK#IylosTattoos","GLOBAL",0)~                                                                                 + ~How did you get your tattoos?~ DO ~SetGlobal("LK#IylosTattoos","GLOBAL",1)~                                                                        + tattoos
    + ~RandomNum(3,1) Global("LK#IylosKill","GLOBAL",0)~                                                                                    + ~What does it feel like when you kill another, Iylos?~ DO ~SetGlobal("LK#IylosKill","GLOBAL",1)~                                                                           + kill
    + ~RandomNum(3,2) Global("LK#IylosHair","GLOBAL",0)~                                                                                    + ~Does my hair look alright?~ DO ~SetGlobal("LK#IylosHair","GLOBAL",1)~                                                                           + hair
    + ~Global("LK#IylosMeditateAgain","GLOBAL",1) Global("LK#IylosMeditateAgainDialogue","GLOBAL",0)~                                       + ~Can we meditate again sometime?~ DO ~SetGlobal("LK#IylosMeditateAgainDialogue","GLOBAL",1)~                                                          + PID_Med
    + ~RandomNum(3,3) Global("LK#IylosFlower","GLOBAL",0)~                                                                                  + ~Iylos, what's your favourite flower?~ DO ~SetGlobal("LK#IylosFlower","GLOBAL",1)~                                                                         + flower
    + ~RandomNum(3,1) Global("LK#IylosTreat","GLOBAL",0)~                                                                                   + ~Did you have a favourite treat as a child, Iylos?~ DO ~SetGlobal("LK#IylosTreat","GLOBAL",1)~                                                                          + treat
    + ~RandomNum(3,2) Global("LK#IylosDale","GLOBAL",0)~                                                                                    + ~Have you been to the Dales?~ DO ~SetGlobal("LK#IylosDale","GLOBAL",1)~                                                                           + dale
    + ~Global("LK#IylosProudOfBeingBhaalspawn","GLOBAL",1) Global("LK#IylosProudOfBeingBhaalspawnDialogue","GLOBAL",0)~                     + ~I am not proud of being a Bhaalspawn, Iylos.  You should know that.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1) SetGlobal("LK#IylosProudOfBeingBhaalspawnDialogue","GLOBAL",1)~ + PID_Bhaal
    + ~RandomNum(3,3) Global("LK#IylosColour","GLOBAL",0)~                                                                                  + ~What is your favourite colour?~ DO ~SetGlobal("LK#IylosColour","GLOBAL",1)~                                                                         + colour
    + ~RandomNum(3,1) Global("LK#IylosScent","GLOBAL",0)~                                                                                   + ~Do you have a favourite scent?~ DO ~SetGlobal("LK#IylosScent","GLOBAL",1)~                                                                          + scent
    + ~Global("LK#IylosDrowDialogue","GLOBAL",1) Global("LK#IylosTeachMeDrow","GLOBAL",0) GlobalGT("LK#IylosHappiness","GLOBAL",5)~         + ~Could you teach me a little Drow, Iylos?  I've always been interested in their culture, and would love to learn some of their language--if you wouldn't mind teaching me, of course.~ DO ~SetGlobal("LK#IylosTeachMeDrow","GLOBAL",1) IncrementGlobal("LK#IylosTeachMeDrowCounter","GLOBAL",1)~           + PID_TeachDrow
    + ~Global("LK#IylosTeachMeDrow","GLOBAL",1) GlobalGT("LK#IylosHappiness","GLOBAL",5) GlobalLT("LK#IylosTeachMeDrowCounter","GLOBAL",6)~ + ~Could you teach me another Drow word, or remind me of one of the Drow phrases you've taught me, Iylos?~ DO ~IncrementGlobal("LK#IylosTeachMeDrowCounter","GLOBAL",1)~                                                       + PID_RemindDrow
    + ~Global("LK#IylosTeachMeDrow","GLOBAL",1) GlobalGT("LK#IylosHappiness","GLOBAL",5) GlobalGT("LK#IylosTeachMeDrowCounter","GLOBAL",5)~ + ~Could you teach me another Drow word, or remind me of one of the Drow phrases you've taught me, Iylos?~                                                                                                                     + PID_DrowDone
    + ~RandomNum(3,2) Global("LK#IylosVolo","GLOBAL",0)~                                                                                    + ~What do you think of Volothamp Geddarm's writing?~ DO ~SetGlobal("LK#IylosVolo","GLOBAL",1)~                                                                           + volo
    + ~GlobalLT("LK#IylosHappiness","GLOBAL",10) Global("LK#IylosAmkethranDialogue","GLOBAL",0)~                                            + ~So you're from Amkethran, Iylos?~ DO ~SetGlobal("LK#IylosAmkethranDialogue", "GLOBAL",1)~                                                             + PID_Amk
    + ~GlobalGT("LK#IylosHappiness","GLOBAL",9) Global("LK#IylosAmkethranDialogue","GLOBAL",0)~                                             + ~So you're from Amkethran, Iylos?~ DO ~SetGlobal("LK#IylosAmkethranDialogue","GLOBAL",1)~                                                              + PID_Amk2
    + ~RandomNum(3,3) Global("LK#IylosKnownBalth","GLOBAL",0) Global("MetBal","GLOBAL",1)~                                                  + ~How long have you known Balthazar?~ DO ~SetGlobal("LK#IylosKnownBalth","GLOBAL",1)~                                                                     + knownbalth
    + ~Global("LK#Nyaleecomment","GLOBAL",1) Global("LK#IylosNyaleeDialogue","GLOBAL",0)~                                                   + ~Iylos, how did you know Nyalee?  I thought you spent your time in the desert, rather than consorting with crazy old women?~ DO ~SetGlobal("LK#IylosNyaleeDialogue","GLOBAL",1)~                                                                 + PID_Nyalee
    + ~RandomNum(3,1) Global("LK#IylosSelfHate","GLOBAL",0)~                                                                                + ~Do you hate yourself for killing others?~ DO ~SetGlobal("LK#IylosSelfHate","GLOBAL",1)~                                                                       + selfhate
    + ~RandomNum(3,2) Global("LK#IylosSunsets","GLOBAL",0)~                                                                                 + ~Do you enjoy sunsets?~ DO ~SetGlobal("LK#IylosSunsets","GLOBAL",1)~                                                                        + sunsets
    + ~Global("LK#IylosAngryWithPC","GLOBAL",1) Global("LK#IylosAngryWithPCDialogue","GLOBAL",0)~                                           + ~Look, I'm sorry about what I said earlier, Iylos--everything has just been so hard lately, and I tend to snap when I'm stressed...it isn't your fault.  I'm sorry.~ DO ~SetGlobal("LK#IylosAngryWithPCDialogue","GLOBAL",1)~                                                            + PID_Sorry
    + ~RandomNum(3,3) Global("LK#IylosCMoreTattoos","GLOBAL",0)~                                                                            + ~Have you got any other tattoos?~ DO ~SetGlobal("LK#IylosCMoreTattoos","GLOBAL",1)~                                                                   + moretattoos
    + ~RandomNum(3,1) Global("LK#IylosParents","GLOBAL",0)~                                                                                 + ~Do you regret not having parents?~ DO ~SetGlobal("LK#IylosParents","GLOBAL",1)~                                                                        + parents
    + ~RandomNum(3,2) Global("LK#IylosDesert","GLOBAL",0)~                                                                                  + ~In the desert, where did you sleep at night?  Doesn't it get really cold?~ DO ~SetGlobal("LK#IylosDesert","GLOBAL",1)~                                                                         + desert
    + ~Global("LK#IylosAnaurochDialogue","GLOBAL",0)~                                                                                       + ~Why do you consider the Anauroch desert to be your spiritual home, Iylos?  It's a barren wasteland!~ DO ~SetGlobal("LK#IylosAnaurochDialogue","GLOBAL",1)~                                                               + PID_Anau
    + ~RandomNum(3,3) Global("LK#IylosNeverwinter","GLOBAL",0)~                                                                             + ~Have you been to Neverwinter?~ DO ~SetGlobal("LK#IylosNeverwinter","GLOBAL",1)~                                                                    + neverwinter
    + ~RandomNum(2,1) Global("LK#IylosNightDay","GLOBAL",0)~                                                                                + ~Which do you prefer--night, or day?~ DO ~SetGlobal("LK#IylosNightDay","GLOBAL",1)~                                                                       + nightday
    + ~Global("MetBal","GLOBAL",1) Global("LK#IylosBalthPID","GLOBAL",0)~                                                                   + ~Thanks for continuing to travel with me, Iylos.  I really appreciate it.~ DO ~SetGlobal("LK#IylosBalthPID","GLOBAL",1)~                                                                                                                + Appreciate
    + ~Global("LK#IylosHerbalLore","GLOBAL",0)~                                                                                             + ~Do you know any herbal lore, Iylos?~ DO ~SetGlobal("LK#IylosHerbalLore","GLOBAL",1)~                                                                     + HerbalLore
    + ~Global("LK#IylosLeilaPID","GLOBAL",0) Global("LK#IylosLeila","GLOBAL",2)~                                                            + ~Who was that Leila woman in the Amkethran Inn, Iylos?~ DO ~SetGlobal("LK#IylosLeilaPID","GLOBAL",1)~                                                                       + Leila
    + ~Global("LK#IylosRelationship","GLOBAL",0) GlobalGT("LK#IylosHappiness","GLOBAL",7)~                                                  + ~Have you ever been in a relationship, Iylos?~ DO ~SetGlobal("LK#IylosRelationship","GLOBAL",1)~                                                                  + Relationship
    + ~Global("LK#IylosRelationship","GLOBAL",0) GlobalLT("LK#IylosHappiness","GLOBAL",8)~                                                  + ~Have you ever been in a relationship, Iylos?~ DO ~SetGlobal("LK#IylosRelationship","GLOBAL",1)~                                                                  + Relationship2
    + ~Global("LK#IylosBitter","GLOBAL",0)~                                                                                                 + ~Why are you so bitter, Iylos?~ DO ~SetGlobal("LK#IylosBitter","GLOBAL",1)~                                                                         + Bitter
    + ~Global("LK#IylosNight","GLOBAL",0)~                                                                                                  + ~I like the night.  It's so...comforting.  What do you think of the night, Iylos?~ DO ~SetGlobal("LK#IylosNight","GLOBAL",1)~                                                                          + Night
    + ~GlobalGT("LK#IylosHappiness","GLOBAL",5)~                                                                                            + ~What do you consider me, Iylos?  A friend?~                                                                                                                     + Consider
    + ~GlobalLT("LK#IylosHappiness","GLOBAL",6)~                                                                                            + ~What do you consider me, Iylos?  A friend?~                                                                                                                     + Consider2
    + ~Global("LK#IylosNext","GLOBAL",0)~                                                                                                   + ~What are you planning to do when this is all over, Iylos?~ DO ~SetGlobal("LK#IylosNext","GLOBAL",1)~                                                                           + WhatsNextForIylos
    + ~Global("LK#IylosHair","GLOBAL",0)~                                                                                                   + ~Have you ever thought about growing your hair, Iylos?~ DO ~SetGlobal("LK#IylosHair","GLOBAL",1)~                                                                           + GrowingHair
    + ~RandomNum(2,2) Global("LK#IylosMonk","GLOBAL",0)~                                                                                    + ~Why did you choose to become a monk?~ DO ~SetGlobal("LK#IylosMonk","GLOBAL",1)~                                                                           + monk
    + ~AreaCheck("AR4500") Global("LK#IylosPocketPlaneNervousDialogue","GLOBAL",0)~                                                         + ~Why're you so tense, Iylos?  You're perfectly safe here in the Pocket Plane, as I have said...~ DO ~SetGlobal("LK#IylosPocketPlaneNervousDialogue","GLOBAL",1)~                                                     + PID_PPlane
    + ~RandomNum(3,1) Global("LK#IylosTease1","GLOBAL",0)~                                                                                  + ~I have to admit, I've always wondered what it would be like to be bald.~ DO ~SetGlobal("LK#IylosTease1","GLOBAL",1)~                                                          + tease1
    + ~RandomNum(3,2) Global("LK#IylosTease2","GLOBAL",0)~                                                                                  + ~Isn't it difficult to keep your balance with such a big head?~ DO ~SetGlobal("LK#IylosTease2","GLOBAL",1)~                                                          + tease2
    + ~RandomNum(3,3) Global("LK#IylosTease3","GLOBAL",0)~                                                                                  + ~Iylos.  All this masculinity, pride and arrogance.  Are you compensating for something, perhaps?~ DO ~SetGlobal("LK#IylosTease3","GLOBAL",1)~                                                          + tease3
    + ~Global("LK#IylosSituation","GLOBAL",0)~                                                                                              + ~What do you think of our situation, Iylos?  Melissan, the Five?~ DO ~SetGlobal("LK#IylosSituation","GLOBAL",1)~                                                          + situation

    ++ ~啊，没什么。（让伊洛斯独处）~ EXIT
  END


  // Flirts
  IF ~~ observe1
    SAY ~（你把目光转向那修士，他有力的背与手臂在袍下清晰可见。他的步态自信而警觉。他头上的纹样覆着一层短须——今早他准是忘了刮。）~ = ~（他转身面对你片刻，眼神难以捉摸，随后又回到他对四周一贯的警戒。你不禁注意到他嘴角那点浅浅的笑。）~
    IF ~~ EXIT
  END

  IF ~~ observe2
    SAY ~（你悄悄转去看伊洛斯，他像平常一样沉在思绪里，眼睛扫着地平线，寻找危险，或者别的什么。他那通常清澈的深蓝眼睛蒙着一层阴翳，脸上显得低落。）~
    ++ ~你还好吗，伊洛斯？~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + observe2_1
    ++ ~What're you so dark about, Iylos?~ + observe2_2
    ++ ~（让他独处）~ EXIT
  END

  IF ~~ observe2_1
    SAY ~我……没事。在想将来会怎样。你面前——我们面前——有太多东西。许多危险，许多敌人。但愿我们能活下来。~
    IF ~~ EXIT
  END

  IF ~~ observe2_2
    SAY ~我在想我们的将来可能藏着什么黑暗的秘密。你面前——我们面前——有太多东西。许多危险，许多敌人。但愿我们能活下来。~
    IF ~~ EXIT
  END

  IF ~~ train1
    SAY ~（伊洛斯的动作缓慢、流畅而优雅，可在他看似简单的姿态下，藏着一种必然与蓄而不发的力量。他睁着眼，无思无念，静如止水，一腿站立，另一腿在腰下结莲花坐。）~ = ~（他的手臂做了一连串舒展的手势，最后在胸前合成祈祷般的姿势。过了一会儿，他注意到你的注视，对你眨了眨眼。）~ = ~这是「飞马式」，<CHARNAME>。它是瑜伽里最简单的动作之一——据说它是优雅的极致。~
    IF ~~ EXIT
  END


  IF ~~ meditate1
    SAY ~（你注意到伊洛斯闭着眼，呼吸慢下来，却仍在走。他似乎察觉四周，可走动时并不去理会。他在低声念着某种你听不清的吟诵，听起来奇特而带异域诱惑。）~ = ~（他的神情非常平和宁静，举止略带疏离。又过了片刻，他睁开眼，呼吸虽已恢复如常，环绕他的那份安宁仍留着。）~
    IF ~~ EXIT
  END

  IF ~~ meditate2
    SAY ~你介意吗，<CHARNAME>？我不确定你知不知道，别人盯着你时冥想有多难。~
    IF ~~ EXIT
  END


  IF ~~ arm1
    SAY ~（你加快步子，赶上那修士的节奏，片刻间就到了他身旁。你随手伸手去碰他的手臂，缓缓向下移到他的手腕。他短促地瞥你一眼，惯常的面具下藏着一道怒视，然后把你的手拨开。）~ = ~你介意吗，<CHARNAME>？！我在思考。别烦我。~
    IF ~~ EXIT
  END

  IF ~~ arm2
    SAY ~（你小心地抚过伊洛斯的手臂，他的肌肤在你的指下凉爽而光滑。他的耳尖微微泛红，他把手臂抽了回去。）~ = ~<CHARNAME>，你在做什么？~
    ++ ~Flirting with you.  What does it look like?~ + arm2_1
    ++ ~Nothing.~ + arm2_2
    ++ ~你不必这么紧绷。我不是在攻击你，附近也没有敌人。~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + arm2_3
  END

  IF ~~ arm2_1
    SAY ~你若不再这样做，我会感激。~
    IF ~~ EXIT
  END

  IF ~~ arm2_2
    SAY ~（伊洛斯狐疑地看着你，随后转过身去。）你这么说就这么吧。~
    IF ~~ EXIT
  END

  IF ~~ arm2_3
    SAY ~我紧绷是有原因的，<CHARNAME>，跟敌人无关。别以为用「无辜」的触碰或恭维就能赢得我——我没那么容易被收买。~
    IF ~~ EXIT
  END


  IF ~~ smile1
    SAY ~（伊洛斯瞥了你一眼，他那双蓝眼落在你友善的微笑上。他的眼睛微微眯起，随后转回路上，目光坚决地落在他面前的地上。）~
    IF ~~ EXIT
  END

  IF ~~ smile2
    SAY ~（你对伊洛斯微笑，可他的目光像水从鸭背上滑过一样滑开。起初他似乎根本没注意，可过了一会儿就明显起来：他也在淡淡地回你一笑，尽管他正忙着整理自己的袍子。）~
    IF ~~ EXIT
  END

  IF ~~ yousmile1
    SAY ~我为什么要笑，<CHARNAME>，就在我们说话的这会儿都有几百人在死？也许你该操心更紧迫的事，比如今晚你打算让我们睡哪儿，还有你打算怎么结束这场该死的战争。~
    IF ~~ EXIT
  END

  IF ~~ yousmile2
    SAY ~随你，<CHARNAME>，可我看不出一个笑能帮上什么忙——比如世界饥荒。*当然*，你的时间用来备战会更值吧？~
    ++ ~我不是说笑能解决什么，可有时就算一切看着无望，它也能照亮一天。我倒建议你偶尔试试。~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~你不试怎么知道！~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~也许吧，可你笑起来那么好看。我想多见见。~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ EXIT
  END

  IF ~~ poke1
    SAY ~（你悄悄走到伊洛斯身后，戳他的肚子；指尖下能感到他紧实的肌肉。一闪之间，你发现自己躺在地上，手臂又酸又疼。）~ = ~还想再来一次吗，<CHARNAME>？哼。~
    IF ~~ DO ~SetGlobal("LK#IylosApologise","GLOBAL",1)~ EXIT
  END

  IF ~~ poke2
    SAY ~（你戳了伊洛斯后背一下，随即跳开，飞快地看向相反的方向，脸上挂着无辜的笑。）~ = ~（伊洛斯叹了口气，转身面对你。）有什么事吗，<CHARNAME>？~
    ++ ~No, nothing.~ + poke2_1
    ++ ~Yes, actually.  What're you thinking about?~ + poke2_2
    ++ ~你真无聊！你就不能偶尔找点乐子吗？！（冲他撅嘴）~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + poke2_3
  END

  IF ~~ poke2_1
    SAY ~好。~
    IF ~~ DO ~SetGlobal("LK#IylosApologise","GLOBAL",1)~ EXIT
  END

  IF ~~ poke2_2
    SAY ~为什么鸟有这么准确的方向感，天生就知道危险何时何地会来。你注意过吗，暴风雨来的时候，鸟总是往相反的方向飞，哪怕你眼睛还看不见风暴？~
    ++ ~我确实注意到过，是的。~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + poke2_21
    ++ ~不，其实我没有……可这么一想，你说得很对。鸟是最神奇的生物之一。~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + poke2_21
    ++ ~胡扯！~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + poke2_22
  END

  IF ~~ poke2_3
    SAY ~我有空的时候也会找乐子，<CHARNAME>，可我们眼下手上还有这场小战争，如果你没注意到的话。也许你该去管它，而不是随时乱戳我。~
    IF ~~ DO ~SetGlobal("LK#IylosApologise","GLOBAL",1)~ EXIT
  END

  IF ~~ poke2_21
    SAY ~这样不寻常的特质肯定是魔法。可我们还是上路吧——闲扯是走不到哪里的，是吧？（他突然转身走开。）~
    IF ~~ EXIT
  END

  IF ~~ poke2_22
    SAY ~你若这么信——我觉得这样不寻常的特质肯定是魔法。可闲扯是走不到哪里的，是吧？（他突然转身走开。）~
    IF ~~ EXIT
  END

  IF ~~ whack1
    SAY ~（你狠狠戳了伊洛斯后背一下，眨眼间发现自己的手腕已被他的手箍住。）~ = ~<CHARNAME>，你*到底*想干什么？~
    ++ ~当然是靠近你，好戳你后背。其实正是我刚做的事。~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + whack1_1
    ++ ~没什么——是个失误，我保证。~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + whack1_1
    ++ ~Whack you!  (Poke him with your free hand)~ + whack1_2
    ++ ~(Attempt to pull free)~ + whack1_3
  END

  IF ~~ whack1_1
    SAY ~我明白了。（伊洛斯松开你的手腕，他的手无力地垂在身侧。）~ = ~别再这样。~
    IF ~~ DO ~SetGlobal("LK#IylosApologise","GLOBAL",1)~ EXIT
  END

  IF ~~ whack1_2
    SAY ~（伊洛斯恼怒地瞪着你。）我明白了。~ = ~（他松开你的手腕，他的手无力垂在身侧。他刻意看向你另一只手——那手还停在戳他的动作上。）别再这样。~
    IF ~~ DO ~SetGlobal("LK#IylosApologise","GLOBAL",1)~ EXIT
  END

  IF ~~ whack1_3
    SAY ~（伊洛斯恼怒地瞪了你一会儿。）~ = ~（他松开你的手腕，他的手无力垂在身侧。他刻意看向你另一只手——那手还停在戳他的动作上。）别再这样。~
    IF ~~ DO ~SetGlobal("LK#IylosApologise","GLOBAL",1)~ EXIT
  END

  IF ~~ whack2
    SAY ~（你手法熟练地拍了一下伊洛斯后脑，力道轻得不会疼，却足以引他反应。伊洛斯转过身，双臂抱在胸前，脸上是一副冰冷厌恶的面具。）~ = ~「别烦我」这几个字里，你哪部分听不懂，巴尔之子？！没有你无休止的骚扰，我过得很好。哼。（伊洛斯又瞪了你一会儿，才僵硬地大步走开。）~
    IF ~~ DO ~SetGlobal("LK#IylosApologise","GLOBAL",1)~ EXIT
  END

  IF ~~ whisper1
    SAY ~（你小心地潜到伊洛斯身后，片刻间贴到他背后，几乎每一处都碰着他。他僵立着，吃了一惊。你向前倾，在他耳边低语，嘴唇擦过他的耳朵，几乎没发出声音。）~ = ~（你感到他一颤，可他好一会儿没动。）~ = ~（突然，他转过身，眼睛灼亮，嘴抿成一条愤怒的细线。）~ = ~再碰我一次，<CHARNAME>，我就在你说出一个字之前离开。（他怒气冲冲地大步走开，之后好一阵都不肯跟你说话。）~
    IF ~~ EXIT
  END

  IF ~~ whisper2
    SAY ~（你向前倾，在伊洛斯耳边低语些胡话，几乎压不住笑。他稍稍后退，直到你们几乎相触，然后转过身。）~ = ~你是个蠢货，<CHARNAME>，如果你以为靠讨好我就能改变我对你和你那些*礼物*的看法。别烦我，也别再试！~
    IF ~~ EXIT
  END

  IF ~~ ear1
    SAY ~（你毫不迟疑地俯身，用力往伊洛斯耳朵里吹了口气。那人像猫头鹰一样眨了好一会儿眼，仿佛不敢相信刚才发生的事，然后摇着头走开。）~
    IF ~~ EXIT
  END

  IF ~~ ear2
    SAY ~（你借着说话的由头凑到伊洛斯身边，俯身像是要告诉他什么要紧事。可你嘴里出来的不是话，而是一阵风，直钻进伊洛斯耳朵。他一惊跳起，摇着头，像是要把什么东西从脑袋里倒出去。）~ = ~（他给了你一个久经忍耐的疲倦眼神，忽然你发现自己的耳朵被一根湿手指塞住了。）~
    ++ ~(Scream and jump backwards)~ + ear2_1
    ++ ~（抓住他的手，把它从你头上拉开，啧了一声。）伊洛斯，真是的。你就不能做得更好点？~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + ear2_2
    ++ ~Argh!  Ugh, Iylos, that's disgusting!!~ + ear2_2
  END

  IF ~~ ear2_1
    SAY ~（伊洛斯冲你得意地一笑。）别再那样，<CHARNAME>，否则我会做得更过分。我心情来了，也是以其人之道还治其人之身。（他转过身，走前又给了你一个久经忍耐的眼神和几分怒视。）~
    IF ~~ EXIT
  END

  IF ~~ ear2_2
    SAY ~当然。我只是想找个跟你刚才做的事一样幼稚的东西来还手。我*确实*会在心情来时以其人之道还治其人之身。（他转过身，走前又给了你一个久经忍耐的眼神和几分怒视。）~
    IF ~~ EXIT
  END

  IF ~~ apologise
    SAY ~我想那也行。只是……别再继续烦我。我有比看你玩游戏更好的事要做。~
    IF ~~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ EXIT
  END

  // Questions
  IF ~~ classes
    SAY ~不，我不这么认为。我觉得把人分等级毫无用处，只会让那些更穷、境况更差的人心生不满。不过话又说回来，若所有人忽然都平等了，总还会有人想把权力的天平扳向自己。~  = ~我觉得不管我们怎么做，总会有更成功的商人、更成功的艺术家、更成功的渔夫、更成功的战士。把这夺走，就等于夺走让我们成为人的东西；我们的个性。人人都有长处和短处。~ = ~我道歉，我不是有意絮叨。我不认同阶级，可我能看出它存在的理由。~
    IF ~~ EXIT
  END

  IF ~~ gate
    SAY ~是的，去过。几年前，铁危机之前。我一点也不喜欢……人太多，勾心斗角太多，热闹太多。我不太想再去。~
    IF ~~ EXIT
  END

  IF ~~ pastries
    SAY ~（伊洛斯愣了一下。）我不讨厌它们，可它们不是我首选的食物，不。不过我倒挺偏爱蛋奶挞。~
    IF ~~ EXIT
  END

  IF ~~ drink
    SAY ~水对我一向足够；酒乱心智、弱身体，我不愿在任何情形下被打个措手不及。~
    IF ~~ EXIT
  END

  IF ~~ animal
    SAY ~我没有最喜欢的动物，这话题也跟我们的任务无关。你若能不再烦我、回到手上的任务，我会很感激。~
    IF ~~ EXIT
  END

  IF ~~ tattoos
    SAY ~那不关你的事，我也打算这样。请别烦我，<CHARNAME>，我不想闲扯。~
    IF ~~ EXIT
  END

  IF ~~ kill
    SAY ~（伊洛斯的脸绷紧，眼睛眯起。）你为什么会对这么病态的问题感兴趣，<CHARNAME>？~
    ++ ~No reason, just wondering.~ + kill_1
    ++ ~因为它让我感兴趣……我杀人的时候，有猎杀的兴奋，有最后一击的肾上腺素冲涌。当然，事后会涌上悔意，可那不重要，很容易就打发了。~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + kill_2
    ++ ~我杀人的时候，脑子是一片空白；死亡是我的目的，逃避命运没有意义。我只是想知道别人是什么感觉。~ DO  ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-2)~ + kill_2
    ++ ~这不病态，我纯粹是为了科学的原因想知道。~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + kill_2
    ++ ~I'm not, I'm just--I don't like death. I hate it, and I wish I didn't have to kill.~ + kill_3
  END

  IF ~~ kill_1
    SAY ~那你就不介意我不回答这个问题了。~
    IF ~~ EXIT
  END

  IF ~~ kill_2
    SAY ~你真是巴尔的后裔。（叹气）~
    IF ~~ + kill_3
  END

  IF ~~ kill_21
    SAY ~不，我没有。~
    IF ~~ EXIT
  END
  
  IF ~~ kill_3
    SAY ~我战斗时，心里只有一件事；找到弱点，然后出击。若能，我会把敌人打昏，可我们这任务的情形不容这种举动。敌人若开始等到天黑才来袭击，为我们的伤害报仇，那就不妙了。~
    ++ ~You didn't answer my question.~ + kill_21
  END

  IF ~~ hair
    SAY ~（伊洛斯挑起一边眉毛。）是的，看着不错。也许有点被风吹乱，但还是不错。~
    IF ~~ EXIT
  END

  IF ~~ flower
    SAY ~勿忘我。~
    ++ ~为什么是勿忘我？~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + flower_1
    ++ ~勿忘我是什么？~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + flower_2
    ++ ~好吧。~ EXIT
  END

  IF ~~ flower_1
    SAY ~我喜欢它花瓣上那蓝色；它让我想起晴日里沙漠的天空。平静、安宁，还带着一丝夜必将到来的怅惘。~
    IF ~~ EXIT
  END

  IF ~~ flower_2
    SAY ~勿忘我是一种会粘在布料上的蓝色小花。我喜欢它花瓣上那蓝色；它让我想起晴日里沙漠的天空。平静、安宁，还带着一丝夜必将到来的怅惘。~
    IF ~~ EXIT
  END

  IF ~~ treat
    SAY ~不特别——修道院里没时间搞这种闲玩意，<CHARNAME>。所谓的「甜点」是不许的。我们表现好会得到另一种奖赏。~
    ++ ~那是什么？~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~ + treat_1
    ++ ~Makes sense.~ + treat_1
  END

  IF ~~ treat_1
    SAY ~我们课上表现好，就被带到城里，允许在城界内闲逛。我们很少能出去，除非是干活或冥想，所以这样的出行几乎比什么都珍贵。不过这些够了……我们回路上吧。~
    IF ~~ EXIT
  END

  IF ~~ dale
    SAY ~是的，去过。我挺喜欢谷地，虽然冷。我在陆斯坎待过，还去过库尔达哈那个小镇——有朝一日我想再回去，那景色令人屏息。世界之脊确实很美……也一样凶险。这也许能解释我为什么这么喜欢它。~
    IF ~~ EXIT
  END

  IF ~~ colour
    SAY ~蓝色。可真是的，<CHARNAME>——你非得问这种无聊的问题吗？！我们有任务要做，不该站在这儿闲闲地聊自己最喜欢什么。~
    IF ~~ EXIT
  END

  IF ~~ scent
    SAY ~清晨玫瑰的香气。或者也许是刚出炉的面包。~
    IF ~~ EXIT
  END

  IF ~~ volo
    SAY ~啊……伏罗。我一点也不喜欢他——一个自命不凡的蠢货，老夸大自己和别人的事迹。他的书卖得那么好，我总感到惊讶，不过我想这其实也不该惊讶。~ = ~我见过一次伏洛坦；我们在一家客栈里，他缠着店主，要打听几个刚经过的著名冒险者的故事；我记得是崔斯特和他的同伴。我插了话，客气地问了几个我自己的问题，然后看了伏罗的笔记，把它们给店主看，店主立刻把伏罗赶出店，谢了我，还把笔记扔进火里。（伊洛斯轻轻笑了。）~
    ++ ~What did the notes say?~ + volo_1
    ++ ~嘿，是啊。~ EXIT
  END

  IF ~~ volo_1
    SAY ~我记得，大意是说这客栈声名极其败坏，店主肯定是个什么流浪汉。我想那是伏罗报复店主不肯透露崔斯特住宿细节的法子。可悲。~
    IF ~~ EXIT
  END

  IF ~~ knownbalth
    SAY ~从我还是孩子起。他先是我最好的朋友，然后是我的老师，再然后是我的师父。~ = ~<CHARNAME>，我答你的问题答累了。别烦我！~
    IF ~~ EXIT
  END

  IF ~~ selfhate
    SAY ~有时会，是的。可自厌从来带不到哪里去。我们都会犯错；有时是很严重的错，而我们必须承担那些错的后果，或是以善行弥补，或是受良心折磨。每个人应对的方式不同。当然你不会懂，<CHARNAME>；毕竟是巴尔之子嘛。~
    IF ~~ EXIT
  END

  IF ~~ sunsets
    SAY ~是的，我喜欢。沙漠的日落很壮观……金、红、橙，从将死的太阳残躯里喷散出来。有朝一日我希望你能看到，<CHARNAME>，好让你看见沙漠真正的美——并对它生出几分敬意。~
    IF ~~ EXIT
  END

  IF ~~ moretattoos
    SAY ~不，我没有。~
    IF ~~ EXIT
  END

  IF ~~ parents
    SAY ~也许吧，可这不关你的事。请别再探我的私事，<CHARNAME>，那不是你该涉足的领域。（伊洛斯转身时眼里闪过一丝危险的光。）~
    IF ~~ EXIT
  END

  IF ~~ desert
    SAY ~通常总能找到某种遮蔽，哪怕只是一块突出的岩壁或崖檐。山洞也适合睡；它们保暖，也能挡风遮雨。我相当确定我们用不上这些，可需要时它们就在。~
    IF ~~ EXIT
  END

  IF ~~ neverwinter
    SAY ~无冬城？不，我没去过。可我听过许多关于它的说法，没有一句是好话。~
    IF ~~ EXIT
  END

  IF ~~ nightday
    SAY ~这要看我的心情——而现在，我的心情是恼火。别再问那些该死的问题，别烦我！~
    IF ~~ EXIT
  END

  IF ~~ monk
    SAY ~这事我没得选；我在修道院长大，身边全是修士。我还能做什么？~  = ~不，是当修士还是当学者，而我不想整天待在知识和书本的笼子里。~
    IF ~~ EXIT
  END

  IF ~~ PID_Med
    SAY ~当然——你若愿意，我们可以每天日出前继续做。~
    ++ ~我愿意。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Med_1
    ++ ~No thanks...I'd just like to do it one more time.~ + PID_Med_2
    ++ ~你喜欢鸡肉吗？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Med_3
  END

  IF ~~ PID_Sorry
    SAY ~我们所有人日子都不好过，<CHARNAME>，不只是你。可那不能成为这种无礼的借口。~
    ++ ~Still, I apologise.  It was not my intention to say what I did, it just...happened.~ + PID_Sorry_1
    ++ ~听着，我不擅长这个。就——对不起。行吗？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Sorry_1
    ++ ~I'm sorry, Iylos.  What more could you want?!~ + PID_Sorry_1
    ++ ~Why even bother apologising if you're going to act like that?~ + PID_Sorry_1
  END

  IF ~~ PID_PPlane
    SAY ~理论上。可这地方太不祥了……连天空都在尖叫着非自然的厄运。~
    ++ ~过一阵你就习惯了。真的，你会习惯。~DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_PPlane_1
    ++ ~是我造的；我在尖叫非自然的厄运吗？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_PPlane_2
    ++ ~I...I know what you mean.  But I created it, apparently...so it can't be all that bad...can it?~ + PID_PPlane_2
    ++ ~你只是可悲又软弱。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_PPlane_3
  END

  IF ~~ PID_Bhaal
    SAY ~也许我那句话过了头，<CHARNAME>，可你不能说了那种话，还指望别人当作一切如常。别烦我，<CHARNAME>，我不想再跟你说话。~
    IF ~~ EXIT
  END

  IF ~~ PID_Med_1
    SAY ~那我指望你明早黎明起来。（伊洛斯对你淡淡一笑。）~
    IF ~~ EXIT
  END

  IF ~~ PID_Med_2
    SAY ~随你——不过人说熟能生巧。你确定？~
    ++ ~Yes, quite.  Thanks, but no thanks.~ + PID_Med_21
    ++ ~其实，我想我会多做一些……你介意再多教我一些吗？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Med_22
  END

  IF ~~ PID_Med_3
    SAY ~（顿了顿，伊洛斯笑起来。）那是答应还是不答应，<CHARNAME>？~
    ++ ~A definite yes.~ + PID_Med_1
    ++ ~A no.  (Grin)~ + PID_Med_21
  END

  IF ~~ PID_Sorry_1
    SAY ~别指望一句简单的道歉就能弥补你说的话，<CHARNAME>，不过我接受了。就眼下。~
    IF ~~ EXIT
  END

  IF ~~ PID_PPlane_1
    SAY ~不知为何，这话一点也没安慰到我。~
    IF ~~ EXIT
  END

  IF ~~ PID_PPlane_2
    SAY ~你真要回答那个问题吗，<CHARNAME>？~
    ++ ~啊……那还是不问了。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_PPlane_21
    ++ ~(Roll your eyes)~ + PID_PPlane_21
    ++ ~要！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_PPlane_22
    ++ ~你非得这么幼稚吗？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_PPlane_21
  END

  IF ~~ PID_PPlane_3
    SAY ~而你不过是一只自顾自的渡鸦，一分为二，借用某位名诗人的话。让我自己想事情，<CHARNAME>，我没兴趣。~
    IF ~~ EXIT
  END

  IF ~~ PID_Med_21
    SAY ~（伊洛斯耸耸肩。）你的选择。~
    IF ~~ EXIT
  END

  IF ~~ PID_Med_22
    SAY ~你若想多学，那我指望你明早黎明起来。（伊洛斯对你淡淡一笑。）~
    IF ~~ EXIT
  END

  IF ~~ PID_PPlane_21
    SAY ~（伊洛斯一时失了惯常的沉稳，冲你咧嘴一笑。）~
    IF ~~ EXIT
  END

  IF ~~ PID_PPlane_22
    SAY ~随你。是的，回答你的问题。（伊洛斯一时失了惯常的沉稳，冲你微微咧嘴一笑。）~
    IF ~~ EXIT
  END

  //New questions as of 9/2/07
  IF ~~ Appreciate
    SAY ~你面前有件大事，<CHARNAME>——我不想你一个人去。你说不定会受伤！~ = ~我跟你一起去照看你更好，你不觉得吗？~
    ++ ~I can handle myself, Iylos.  You don't need to baby me.~ + AP1
    ++ ~Whatever.  It would have been nice of you to just say 'that's okay, <CHARNAME>, I don't mind' instead of giving me this bullshit.~ + AP2
    ++ ~Heh, you might be right, at that.  Anyway--thank you.~ + AP3
    ++ ~你这么说就这么吧。~ EXIT
  END

  IF ~~ AP1
    SAY ~你这么说就这么吧，<CHARNAME>。你这么说就这么吧。（他微微咧嘴一笑。）~
    IF ~~ EXIT
  END

  IF ~~ AP2
    SAY ~我只是在开玩笑。不必为此动气。~
    IF ~~ EXIT
  END

  IF ~~ AP3
    SAY ~完全没问题，<CHARNAME>。~
    IF ~~ EXIT
  END

  IF ~~ HerbalLore
    SAY ~我懂一些，可植物和草药的大部分知识至今没引起我的兴趣。也许有天我会感兴趣，可现在——我更愿意懂战斗之术，而不是治疗之术。~
    IF ~~ EXIT
  END

  IF ~~ Leila
    SAY ~蕾拉在修道院学过一小段时间，后来卷进了……家庭的事，可以这么说。她本该辍学去找份活、挣钱，否则就面临孩子被夺走的前景。~ = ~那不是个愉快的处境。我是在她离开几年后才入修道院的，可她还常来修道院，有时从客栈给我们带吃的，讲外面世界的故事。她对我们这些学生几乎像个通用的母亲，尽管她只比我们大几岁。~ = ~她不支持我离开修道院的决定，几乎让我留了下来。离开对我来说……很难，而要离开蕾拉和小凯拉，让它更难。~ = ~可我不想再谈这个了——我已经挖了足够多的旧事来满足你的好奇，肯定够了。~
    IF ~~ EXIT
  END

  IF ~~ Bitter
    SAY ~苦？我不觉得自己苦……可也许是因为我每天都看见那么多我没经历过、没做过、没试过的事。我错过的东西，而且*不能*去试。生命不是无尽的，而我的线，无疑已近中段。~ = ~也许这能帮你一点。可我不觉得自己苦。阴郁，也许。但不是苦。~
    IF ~~ EXIT
  END

  IF ~~ Night
    SAY ~夜里有白昼之外许多危险。你看不清自己在往哪走——至少我看不清；听觉会有所增强，可视力就谈不上了。我觉得这极其恼人。~ = ~所以，不，我不喜欢夜晚。它有藏在我们眼外的危险，还有一种每当它降临费伦时我宁愿不必面对的飘忽不定。~
    IF ~~ EXIT
  END

  IF ~~ Consider
    SAY ~朋友，是的。你已证明自己多少配得上我的友谊，既是如此，我就把你当朋友待。~
    IF ~~ EXIT
  END

  IF ~~ Consider2
    SAY ~一个同行的伙伴；说是朋友，那是对事实的严重歪曲。~
    IF ~~ EXIT
  END

  IF ~~ WhatsNextForIylos
    SAY ~我不太确定。也许回修道院待一阵，或者回沙漠。我觉得自己还没走够，想继续——也许再去一次谷地，或者去陆斯坎。~
    IF ~~ EXIT
  END

  IF ~~ GrowingHair
    SAY ~长发在战斗中没好处，<CHARNAME>，你知道的。剃头多半是我个人的决定；虽然保持光洁是件无尽又不痛快的事，可我宁愿那样，也不愿看不见。~
    IF ~~ EXIT
  END

  // PID 1--Cease
  IF ~~ PID_Cease
    SAY ~我只是在尽职，巴尔之子。你对此有意见？~ 
    ++ ~其实有。如果你的职责只是偏见和无礼，伊洛斯，那我宁愿你走。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Cease_1
    ++ ~当*然*没有！我是说，我肯定*你*不会介意被一只饿猫像盯肥老鼠一样盯着，是吧？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Cease_1
    ++ ~Iylos, please, there is no need for hostility here.  I'm just asking you to trust me a little.  Obviously I'm not going to harm you or any other innocents; I haven't so far, why should I now?~ + PID_Cease_2
    ++ ~Surely you can see that I mean only good, Iylos?  Must you persist with this suspicion?~ + PID_Cease_3
    ++ ~一千金币，也许能让你的疑心松一点？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-5)~ + PID_Cease_4
    ++ ~Leave.  Me.  Alone.  I need some room to work, I can't do what I need to do with you constantly breathing down the back of my shirt.~ + PID_Cease_1
    ++ ~其实无所谓。别在意。~ EXIT
  END

  IF ~~ PID_Cease_1
    SAY ~我是在对我效忠的人尽我的职责，你至少该尊重这一点。还是说，荣誉与忠诚这类概念对你很陌生？~
    ++ ~（保持沉默）~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Cease_11
    ++ ~I am quite familiar with honour and loyalty and respect those who exhibit these traits.  However, I would appreciate it if you would give me a bit of breathing room and allow me to work without your constant watching.  I know you mean well, and that you have reason to be suspicious of me, but everything you have seen so far of me has been good, has it not?.~ + PID_Cease_12
    ++ ~*我*的命令算数。想走就走，伊洛斯，我受够了你那套「职责」的乏味执念。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Cease_13
    ++ ~Iylos, just back off a little.~ + PID_Cease_14
    ++ ~Please, Iylos, just do as I ask.  You can't observe me when I feel like I have to watch my every move, because it isn't how I truly am.  Look at it from that perspective.~ + PID_Cease_12
  END

  IF ~~ PID_Cease_2
    SAY ~幽默，<CHARNAME>？你身上什么时候有过这种东西？不过无所谓。我不是猫，潜伏着等机会袭击猎物。~
    IF ~~ + PID_Cease_1
  END

  IF ~~ PID_Cease_3
    SAY ~你至今没伤害过任何无辜者，并不代表你将来没有这个意图，<CHARNAME>。别想劝我放弃任务，那没用。~
    ++ ~Iylos, this is foolishness.  You know as well as I do that I'm not going to harm anybody I don't need to.~ + PID_Cease_31
    ++ ~I'm not trying to dissuade you from your task.  I'm asking you to at least trust me enough to let me do what I need to without you questioning my every move!~ + PID_Cease_14
    ++ ~除非必要，我不杀人。你最该明白这一点。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Cease_31
    ++ ~好！我放弃。以后，当心你自己；你说不定会发现自己在剑的另一头，或者拳头下。不管怎样……~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PID_Cease_14
  END

  IF ~~ PID_Cease_4
    SAY ~（伊洛斯的眼睛一闪。）你想*贿赂*我，<CHARNAME>？！你真是个卑劣的<PRO_MANWOMAN>，我会尽可能早点离开这……这*队伍*。要不是你受五人庇护，我就当场杀了你！~
    ++ ~The...five?~ + PID_Cease_41
    ++ ~The five?  I think I've heard of them...aren't they a group of people out to *kill* Bhaalspawn?~ + PID_Cease_41
    ++ ~伊洛斯，连想都别想你能杀我。我是*巴尔之子*，我有你梦不到的力量。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Cease_42
    + ~CheckStatGT([PC],12,WIS)~ + ~(Cluck your tongue) Iylos, I don't think your Master will be very happy with that little display!  Come now...do you REALLY have any intention of leaving this party, or are you just bluffing as I suspect?~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + PID_Cease_42
    ++ ~I will do what I can to stop you from being in the way!  I have no intention of harming you or any other who has not caused *me* harm.~ + PID_Cease_32
  END

  IF ~~ PID_Cease_11
    SAY ~呸，我看不会。别想胜过我，<CHARNAME>；你会发现那*不*值当。不管怎样……~
    IF ~~ + PID_Cease_14
  END

  IF ~~ PID_Cease_12
    SAY ~我勉强承认你的能力，<CHARNAME>——但不是你这个人。我还没见过什么伟大的事迹能让我信任你；没有什么神圣的奇迹能说服我你是无辜的。~ = ~你至今没做过什么，并不代表你没在想将来要做。~
    IF ~~ + PID_Cease_14
  END

  IF ~~ PID_Cease_13
    SAY ~我有我的命令，我会*服从*！你有没有支持我，我不在乎。你若逼我走，我会在暗处跟着你，照样下我的结论。~
    ++ ~I was just joking, Iylos...you can stay.  But please, *please*, give me some space.~ + PID_Cease_121
    ++ ~Leave then.  Goodbye.  As long as I don't have to deal with you in my face all the time!~ + PID_Cease_131
    ++ ~I don't take kindly to intimidation, Iylos.  You are free to leave, but if I find you, *anywhere* near me again, you will regret the moment your god-forsaken 'master' told you to join me.  Pray our paths do not cross again!~ + PID_Cease_131
    ++ ~你可以留下……就眼下。可再有一次越界；再有下次你擅作主张或挡我的路，你就走。就当是一句友善的警告。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Cease_123
  END

  IF ~~ PID_Cease_14
    SAY ~我有命令，<CHARNAME>，我会服从。如果我不同样仔细地盯你，我就失职了，而我不能把这事搁在头上。就这样。~
    ++ ~我想这还算公道。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + PID_Cease_121
    ++ ~Iylos, you're becoming repetitive.  I tire of this argument...please, at least *consider* putting down your guard, just a little.  If only that, and nothing else.~ + PID_Cease_121
    + ~CheckStatGT([PC],12,WIS)~ + ~Someday soon, Iylos, you will see how very wrong you are in this situation.  I have only the best of intentions, and until you see that, you are blind.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-3)~ + PID_Cease_122
    ++ ~I'm absolutely *awed* by your determination to disregard everything I say, Iylos.~ + PID_Cease_123
  END

  IF ~~ PID_Cease_31
    SAY ~也许。不管怎样……~
    IF ~~ + PID_Cease_14
  END

  IF ~~ PID_Cease_32
    SAY ~不，我不这么认为。你这么说，可我还未亲眼见到……你杀那些本可饶过的，也无视那些你杀了的。我在那里看不到慈悲。~
    IF ~~ + PID_Cease_14
  END

  IF ~~ PID_Cease_41
    SAY ~五人只是对你有兴趣的人中的一部分，<CHARNAME>——我早跟你说过，你正变得相当出名。臭名昭著。随你喜欢哪个说法。不管怎样……~
    IF ~~ + PID_Cease_14
  END

  IF ~~ PID_Cease_42
    SAY ~别想胜过我，<CHARNAME>；你会发现那*不*值当。不管怎样……~
    IF ~~ + PID_Cease_14
  END

  IF ~~ PID_Cease_121
    SAY ~我会想一想，<CHARNAME>，可现在……我们再看吧。~
    IF ~~ EXIT
  END

  IF ~~ PID_Cease_122
    SAY ~也许吧，可不管你怎么想，我都会做我认为对的事，巴尔之子。记住这话。~
    IF ~~ EXIT
  END

  IF ~~ PID_Cease_123
    SAY ~不管你怎么想，我都会做我认为对的事，巴尔之子。记住这话。~
    IF ~~ EXIT
  END

  IF ~~ PID_Cease_131
    SAY ~好，可要当心……*我*不善待人恐吓，巴尔之子。再见……暂时。~
    IF ~~ DO ~LeaveParty() SetGlobal("IylosLeftUnhappy","GLOBAL",1) EscapeAreaMove("AR5500",958,1567,5)~ EXIT
  END

  // PID 2--Balthazar
  IF ~~ PID_KnowsBalth
    SAY ~确实。~ 
    ++ ~很像你——我明白你为什么这么敬重他了，伊洛斯。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",4)~ + PID_KnowsBalth_1
    ++ ~巴尔萨扎是个非常莫测的人。我只能希望他跟我们在为同一件事而战。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + PID_KnowsBalth_2
    ++ ~一个可悲的人……沉迷于忠诚和服从这类世俗美德。你何必这么在意他？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-3)~ + PID_KnowsBalth_3
    ++ ~（停止交谈）~ EXIT
  END

  IF ~~ PID_KnowsBalth_1
    SAY ~谢谢你，<CHARNAME>。他是个强大的人，不止一方面，为他效力是一种荣幸。~
    ++ ~I'm sure.  No wonder you were so reluctant to disobey him; I'm sure he would see it as a betrayal.~ + PID_KnowsBalth_11
    ++ ~没问题。~ EXIT
    ++ ~他确实是个强大的人。谢谢你为我担保，伊洛斯。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_KnowsBalth_12
    ++ ~也许。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ EXIT
  END

  IF ~~ PID_KnowsBalth_2
    SAY ~我们？我为巴尔萨扎的事业而战，<CHARNAME>——别以为我为你担保了，就会盲目跟着你走。我会再帮你一阵，直到我觉得自己在这件事上尽到了本分。~
    ++ ~谢谢你，伊洛斯。我很感激。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~Of course--I meant in general.~ + PID_KnowsBalth_21
    ++ ~Thank you for continuing your help, regardless--I would be lost without it.~ + PID_KnowsBalth_22
  END

  IF ~~ PID_KnowsBalth_3
    SAY ~因为，<CHARNAME>，他值得。也许不像你。~
    IF ~~ EXIT
  END

  IF ~~ PID_KnowsBalth_11
    SAY ~确实。我绝不会梦想背叛巴尔萨扎这样的人。~
    ++ ~我明白为什么。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~我为……我之前不愿接受你只是在尽职而道歉。不管怎样，我们走吧。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~那我们走吧。~ EXIT
  END

  IF ~~ PID_KnowsBalth_12
    SAY ~我只是在做我认为对的事，<CHARNAME>。可别以为我会盲目跟着你走；我会再帮你一阵，直到我觉得自己在这件事上尽到了本分。~
    ++ ~谢谢你，伊洛斯。我很感激。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~Of course--I meant in general.~ + PID_KnowsBalth_21
    ++ ~Thank you for continuing your help, regardless--I would be lost without it.~ + PID_KnowsBalth_22
  END

  IF ~~ PID_KnowsBalth_21
    SAY ~也许。~
    IF ~~ EXIT
  END

  IF ~~ PID_KnowsBalth_22
    SAY ~是我的荣幸，<CHARNAME>。~
    IF ~~ EXIT
  END

  IF ~~ PID_WhoisBalth
    SAY ~一个我极信任、极敬重的人——眼下你只需知道这些。~
    IF ~~ EXIT
  END

  // PID 3--Amkethran
  IF ~~ PID_Amk
    SAY ~我是在阿姆凯斯兰长大的，是的。这跟你有什么关系？~
    ++ ~哦，没什么……我只是好奇。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_1
    ++ ~You were raised in Amkethran?  Where were you born?~ + PID_Amk_2
    ++ ~我是在烛堡长大的……我母亲在我很小的时候就去世了。是一个叫葛立安的人把我养大的。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk_3
    ++ ~阿姆凯斯兰不是孩子待的地方……那么尘土，那么干燥。你的童年一定很糟吧？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk_2
    ++ ~Were you raised in the Monastery, or...?~ + PID_Amk_2
  END

  IF ~~ PID_Amk_1
    SAY ~好吧。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_2
    SAY ~我看不出有什么理由要跟你分享我的过去，<CHARNAME>；我来这儿是因为必须来，不是出于想了解你的意愿。记住这点。~
    ++ ~Putting two and two together isn't that hard...you were raised in Amkethran in a Monastery, you have not mentioned any parents to speak of, and you either don't know or aren't willing to share where you were born.  Are you...are you an orphan, Iylos?~ + PID_Amk_21
    ++ ~Monks could not have the best of parents...~ + PID_Amk_22
    ++ ~A Monastery is not the best place to raise a child, surely?~ + PID_Amk_23
  END

  IF ~~ PID_Amk_3
    SAY ~那不是个问题，<CHARNAME>。你问完了吗？~
    ++ ~我跟我同母异父的妹妹爱蒙一起长大。我们做什么都一起……常跟葛立安和修士们惹麻烦，可我们长得还行。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_31
    ++ ~我说过，我在烛堡长大，虽然我不把它当家乡。葛立安软弱、可悲，他的死逼我去面对这个世界。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk_32
    ++ ~是的，我问完了——现在轮到你说点事。一真换一真。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_33
    ++ ~葛立安是个慈祥的老人，虽然算不上什么父亲。你成长时有父亲般的人吗？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_34
  END

  IF ~~ PID_Amk_21
    SAY ~有。这要紧吗？~
    ++ ~不，不要紧——我只是好奇。抱歉多问。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_211
    ++ ~其实要紧。你看，我也是个孤儿。事情就是这么巧，是吧？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_212
    ++ ~（保持沉默）~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk_213
    ++ ~Of course not...I apologise, but I had to know.~ + PID_Amk_213
  END

  IF ~~ PID_Amk_22
    SAY ~不，他们不是。别烦我，<CHARNAME>，我没兴趣跟你谈这个。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_23
    SAY ~也许不，可我活下来了。别烦我，<CHARNAME>，我没兴趣跟你谈这个。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_31
    SAY ~（伊洛斯沉默着，等你继续说。）~
    ++ ~……就这些，真的。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk_311
    ++ ~你有没有过这样的人，像我拥有爱蒙那样？同龄的人？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_312
    ++ ~听着，抱歉提起这个。这不要紧，你显然没兴趣。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + PID_Amk_313
  END

  IF ~~ PID_Amk_32
    SAY ~据我所闻，葛立安是个非常正直善良的人——其实是个竖琴手。而你说他软弱可悲？~
    ++ ~是的，我说了！他就那么走了、死了，把我丢下自己撑着，一句招呼都不打！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk_321
    ++ ~也许那是夸张了……他是个善良正直的人，是的。可面对我们时他没有力量；他死的时候，正是我最需要他的时候。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_322
    ++ ~Look, it doesn't matter...don't worry about it.~ + PID_Amk_323
  END

  IF ~~ PID_Amk_33
    SAY ~我是个孤儿，你也许已经猜到了。我在修道院长大，可我对修道院的训练厌倦了，就离开了。好了。你满意了吗？~
    ++ ~是的，谢谢。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_331
    ++ ~No, I'm not--why did you leave?~ + PID_Amk_332
    ++ ~Fair enough...thank you.  I've got one last question, though...Why are you so secretive about your past with me?  I've never been anything but friendly and yet you remain aloof and unfriendly.~ + PID_Amk_333
  END

  IF ~~ PID_Amk_34
    SAY ~不，我没有——那些修士可不是你说的合适父母。我不想跟你谈这个，<CHARNAME>……~
    ++ ~Of course.  I apologise.~ + PID_Amk_341
    ++ ~You might not, but I do.  I like to know about my companions, thankyouverymuch.~ + PID_Amk_342
    ++ ~好吧。~ EXIT
  END

  IF ~~ PID_Amk_211
    SAY ~当然。我想……你被原谅了。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_212
    SAY ~确实。~ [ LK#I102 ]
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_213
    SAY ~我看没有。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_311
    SAY ~我明白了。我没有像爱蒙那样的人一起长大；没有兄弟姐妹分享喜乐与悲伤。我已经接受了。这段谈话到此为止，再多就要变得感伤了。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_312
    SAY ~我没有像爱蒙那样的人一起长大；没有兄弟姐妹分享喜乐与悲伤。我已经接受了。这段谈话到此为止，再多就要变得感伤了。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_313
    SAY ~我想……你被原谅了。我们走吧。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_321
    SAY ~他不是一句招呼都不打就走的，<CHARNAME>——没有哪个父亲会做这种事。至少你有过父亲。在指责葛立安「软弱」「可悲」之前，想想这个。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_322
    SAY ~我很怀疑他会无缘无故就死，<CHARNAME>。可那是你的事，不是我的，我宁愿保持这样。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_323
    SAY ~如果你要这样。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_331
    SAY ~好。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_332
    SAY ~我离开是因为我不得不离开。我不是那种一辈子待在修道院里的人，我必须走进世界去寻求内心的安宁。许多人希望我留下，可我有一股探索的驱力，沙漠成了我的天堂，不断揭开新的谜团，回答没有凡人能回答的问题。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_333
    SAY ~我看不出有什么理由要跟你分享我的过去，<CHARNAME>；我来这儿是因为必须来，不是出于想了解你的意愿。记住这点。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_341
    SAY ~你被原谅了，<CHARNAME>。只是这不是我想跟你谈的话题。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk_342
    SAY ~我猜你会活下来的。~
    IF ~~ EXIT
  END

  // PID 3--Amkethran (good path)
  IF ~~ PID_Amk2
    SAY ~我是在阿姆凯斯兰长大的，是的。你想知道什么，<CHARNAME>？~ [ LK#I104 ]
    ++ ~哦，没什么……我只是好奇。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_1
    ++ ~You were raised in Amkethran?  Where were you born?~ + PID_Amk2_2
    ++ ~我是在烛堡长大的……我母亲在我很小的时候就去世了。是一个叫葛立安的人把我养大的。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_3
    ++ ~阿姆凯斯兰不是孩子待的地方……那么尘土，那么干燥。你的童年一定很糟吧？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk2_2
    ++ ~Were you raised in the Monastery, or...?~ + PID_Amk2_2
  END

  IF ~~ PID_Amk2_1
    SAY ~你若确定的话。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_2
    SAY ~我是个孤儿。我很小就被交给修道院，从没人告诉过我我的父母是谁、为什么把我留在那儿、我生在哪儿。~
    ++ ~我很抱歉。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_21
    ++ ~哦，伊洛斯……（抱住他）~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_21
    ++ ~我也是个孤儿……我在烛堡由葛立安养大，可我从不知道我母亲。直到葛立安死，我才知道我的……父亲，我想。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_22
  END

  IF ~~ PID_Amk2_3
    SAY ~那……算不上个问题，<CHARNAME>。（伊洛斯微微一笑。）你说完了，还是还有要补的？~
    ++ ~I grew up with my half-sister, Imoen.  We did everything together...quite often we got in trouble with Gorion and the monks, but we grew up okay.~ + PID_Amk2_31
    ++ ~我说过，我在烛堡长大，虽然我不把它当家乡。葛立安软弱、可悲，他的死逼我去面对这个世界。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk2_32
    ++ ~是的，我问完了——现在轮到你说点事。一真换一真。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_33
    ++ ~葛立安是个慈祥的老人，虽然算不上什么父亲。你成长时有父亲般的人吗？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_34
  END

  IF ~~ PID_Amk2_4
    SAY ~许多方面都很难，可正因如此我变得更好。「杀不死你的只会让你更强」是我在修道院学到的最早的课之一。~ = ~修士们心是好的，可他们不是最好的父母——他们不知道怎么对付一个精力过剩的孩子，就把我派去干活和念书。~ = ~某种意义上我是快乐的。我不知道还有别的方式；就是那时我跟一个较年轻的修士交上了朋友，那人叫巴尔萨扎。他待我很好，把我收在羽翼下。我欠他很多。~
    + ~Global("MetBal","GLOBAL",1)~ + ~I have to admit, I can't really imagine Balthazar being your mentor...(Smile slightly)~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_41
    + ~!Global("MetBal","GLOBAL",1)~ + ~You've mentioned Balthazar before...but I won't invade your privacy any more.  Thank you for telling me, Iylos.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_42
    ++ ~在烛堡也差不多——葛立安把我收在羽翼下，教我所会的东西，我和爱蒙在他的指导和修士们的教导下长大。所以我想我们没那么不同……至少在一点上。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + PID_Amk2_43
    ++ ~I'm glad your childhood was a happy one, if hard.  Not many are as lucky in that respect.~ + PID_Amk2_44
  END

  IF ~~ PID_Amk2_5
    SAY ~是的，我是在修道院长大的……让我解释。~
    IF ~~ + PID_Amk2_2
  END

  IF ~~ PID_Amk2_21
    SAY ~它早已是过去，<CHARNAME>，虽然我为从未见过父母而抱有一丝遗憾，但我不后悔在修道院长大。我没事。~
    ++ ~你可知道人们说「我没事」的时候，往往是天都塌了？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_211
    ++ ~我很高兴你是这样长大的，伊洛斯……否则你就不会是现在的你，不会帮我在这被撕得七零八落、有时看不清该往哪转的人生里寻回平衡。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_212
    ++ ~抱歉提起这个，伊洛斯。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_213
    ++ ~我遗憾没能见到我母亲……不过我绝对不遗憾没见到我父亲，虽说我……算是见过他了，我想。某种意义上，我每次睡着都会见到他。（叹气）~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_214
  END

  IF ~~ PID_Amk2_22
    SAY ~它早已是过去，<CHARNAME>，虽然我为从未见过父母而抱有一丝遗憾，但我不后悔在修道院长大。我得承认，我希望你没有那种从未见过父亲的遗憾……据我所闻，他相当不祥。~
    ++ ~Aha, ah.  Hah.  Hah.  Iylos, *please*...your humour would be more suited to cattle than humans.  Don't inflict it upon one such as me.~ + PID_Amk2_221
    ++ ~不祥只是*开始*描述巴尔……不过我相信连巴尔本人也有教养，不会提起别人可疑的血统。（瞪他）~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk2_222
    ++ ~不，我不遗憾从没见过我父亲……（咧嘴笑）~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_223
  END

  IF ~~ PID_Amk2_31
    SAY ~（伊洛斯沉默着，等你继续说。）~
    ++ ~……就这些，真的。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk_311
    ++ ~你有没有过这样的人，像我拥有爱蒙那样？同龄的人？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_312
    ++ ~听着，抱歉提起这个。这不要紧，你显然没兴趣。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + PID_Amk_313
  END

  IF ~~ PID_Amk2_32
    SAY ~据我所闻，葛立安是个非常正直善良的人——其实是个竖琴手。而你说他软弱可悲？~
    ++ ~是的，我说了！他就那么走了、死了，把我丢下自己撑着，一句招呼都不打！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk_321
    ++ ~也许那是夸张了……他是个善良正直的人，是的。可面对我们时他没有力量；他死的时候，正是我最需要他的时候。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk_322
    ++ ~Look, it doesn't matter...don't worry about it.~ + PID_Amk_323
  END

  IF ~~ PID_Amk2_33
    SAY ~我是个孤儿，你也许已经猜到了。我在修道院长大，受修士们和巴尔萨扎的教导——后者后来成了我修道之路的老师。我最终离开，去寻求内心的安宁，找到了安纳罗克沙漠。这够了吗？~
    ++ ~是的，谢谢。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_331
    ++ ~不，不够——你为什么离开？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Amk2_332
  END

  IF ~~ PID_Amk2_34
    SAY ~不，我没有——那些修士可不是你说的合适父母。我亲近的那些更像年长的朋友，偶尔扮演父母的角色，可他们从不是真正的父母，只是在管教上。~ = ~许多方面都很难，可正因如此我变得更好。「杀不死你的只会让你更强」是我在修道院学到的最早的课之一。~ = ~修士们心是好的，可他们不是最好的父母——他们不知道怎么对付一个精力过剩的孩子，就把我派去干活和念书。~ = ~某种意义上我是快乐的。我不知道还有别的方式；就是那时我跟一个较年轻的修士交上了朋友，那人叫巴尔萨扎。他待我很好，把我收在羽翼下。我欠他很多。~
    + ~Global("MetBal","GLOBAL",1)~ + ~I have to admit, I can't really imagine Balthazar being your mentor...(Smile slightly)~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_41
    + ~!Global("MetBal","GLOBAL",1)~ + ~You've mentioned Balthazar before...but I won't invade your privacy any more.  Thank you for telling me, Iylos.~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_42
    ++ ~在烛堡也差不多——葛立安把我收在羽翼下，教我所会的东西，我和爱蒙在他的指导和修士们的教导下长大。所以我想我们没那么不同……至少在一点上。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + PID_Amk2_43
    ++ ~I'm glad your childhood was a happy one, if hard.  Not many are as lucky in that respect.~ + PID_Amk2_44
  END

  IF ~~ PID_Amk2_41
    SAY ~也许不是，可事情就是这样发生的。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_42
    SAY ~没问题。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_43
    SAY ~确实，也许不是。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_44
    SAY ~谢谢你。不，他们不是……不是人人都有每晚穿衣吃饭、有地方睡的福气。这方面我们*是*幸运的。可别的方面……也许不。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_211
    SAY ~（伊洛斯轻轻笑了）确实……可我*是*没事。至少眼下。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_212
    SAY ~谢谢你那句相当拐弯抹角的恭维，<CHARNAME>。我希望我帮上了忙，也为你初答应让我同行时给你带来的麻烦道歉。我的童年让我成了更好的人，为此我感激。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_213
    SAY ~没关系，<CHARNAME>——不是你的错。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_214
    SAY ~我希望不是这样，<CHARNAME>……真的。背负巴尔的诅咒不好受，在正确与容易之间被撕扯。也许……也许有件事我*能*帮你，但不是现在。也许改日。~
    ++ ~我很愿意，谢谢你，伊洛斯。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~当然。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~再看吧。~ EXIT
  END

  IF ~~ PID_Amk2_221
    SAY ~我相信你总能活下来，<CHARNAME>。不过以后，我会尽量把我的幽默指向更愿意接受的人。（伊洛斯冲你咧嘴笑。）~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_222
    SAY ~我道歉，<CHARNAME>，我不是有意冒犯。~
    ++ ~没关系……只是别再这样。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~呸。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ EXIT
    ++ ~（叹气）别在意，伊洛斯……不是你的错。只是这事对我比较敏感罢了。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Amk2_2221
  END

  IF ~~ PID_Amk2_223
    SAY ~（伊洛斯咧嘴回笑。）~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_311
    SAY ~我没有像爱蒙那样的人一起长大；没有兄弟姐妹分享喜乐与悲伤。我已经接受了。不过我有时会遗憾没有。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_312
    SAY ~我没有像爱蒙那样的人一起长大；没有兄弟姐妹分享喜乐与悲伤。我已经接受了。不过我有时会遗憾没有。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_313
    SAY ~没关系。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_321
    SAY ~我很怀疑他会无缘无故离开你，<CHARNAME>——没有哪个父亲会做这种事。至少你有过父亲。在指责葛立安「软弱」「可悲」之前，想想这个。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_322
    SAY ~我很怀疑他会无缘无故就死，<CHARNAME>。可那是你的事，不是我的，我宁愿不去探问。谢谢。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_323
    SAY ~如果你要这样。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_331
    SAY ~好。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_332
    SAY ~我离开是因为我不得不离开。我不是那种一辈子待在修道院里的人，我必须走进世界去寻求内心的安宁。许多人希望我留下，可我有一股探索的驱力，沙漠成了我的天堂，不断揭开新的谜团，回答没有凡人能回答的问题。~
    IF ~~ EXIT
  END

  IF ~~ PID_Amk2_2221
    SAY ~不过，我还是道歉。那不合宜也无礼，而我平常不是会这样发泄情绪的人。那就上路吧，我想。~
    IF ~~ EXIT
  END

  // PID 4--Anauroch
  IF ~~ PID_Anau
    SAY ~很多原因，<CHARNAME>，也许我还会给你解释一些。我离开修道院时，正跟一股强烈的冲动搏斗：要旅行、要探索未知、要看下一座山后面是什么。我去过博德之门等地，甚至到过无冬城，却没找到我要找的东西。~  = ~我遇到过一些有趣的人，做过一些有趣的事，可它们没能让我着迷太久。我漫无目的地游荡，靠别人的慷慨和自己干活挣的那点金币活着。~
    ++ ~（打断）你做过什么活？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Anau_1
    ++ ~（打断）什么没能让你着迷？是旅行，还是你去的那些城市？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Anau_2
    ++ ~（让他继续）~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Anau_3
  END

  IF ~~ PID_Anau_1
    SAY ~（伊洛斯恼怒地瞪着你。）看人守门、冒险、盖房——很多活。~
    IF ~~ + PID_Anau_3
  END

  IF ~~ PID_Anau_2
    SAY ~（伊洛斯恼怒地瞪着你。）两样都有一点。总之……~
    IF ~~ + PID_Anau_3
  END

  IF ~~ PID_Anau_3
    SAY ~我回到修道院，心里有些灰败阴郁。我埋头苦练，很快成了修道院里最强的战士之一，仅次于几位师父和巴尔萨扎。可我始终没毕业——我有力量，有体术，可我没有心的安宁。我躁动不安，很像你。我的脑子里奔涌着念头和想法，无论我和老师们怎么努力，我都驾驭不了自己的心。~ = ~我气自己无法专注冥想，就逃进沙漠，希望在那儿找到某个答案。我碰上了一个……可以说是个地下营地，他们收留了我一阵，教我他们的语言。可我不得不离开，继续走。~ = ~我在沙漠中旅行时，对自己和四周都学到了很多——沙漠的宁静给了我安宁，我觉得像回了家。那说不清，只是我意识里一点微小的转变，可我找到了一个家，至今仍当它是家。~
    ++ ~嗯……真让人失望。我本想听个更有趣的故事，跟可怕沙怪进行史诗大战，或者悲惨情伤什么的。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Anau_31
    ++ ~烛堡从来不是我真正的家……我没有家。我其实是个流浪者，该往哪走就往哪走，有时脚带我去哪就哪走。你能有个叫家的地方，真幸运。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Anau_32
    ++ ~我想，它挺配你的。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Anau_33
  END

  IF ~~ PID_Anau_31
    SAY ~你当然失望——那些是我故意略去的。~
    ++ ~You mean you DID fight giant sand-creatures and had tragic heartbreaks?!~ + PID_Anau_311
    ++ ~Ah...okay.  Why?~ + PID_Anau_312
    ++ ~傻瓜。我永远永远讨厌你！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Anau_313
  END

  IF ~~ PID_Anau_32
    SAY ~我想是的。沙漠是我最自在的地方，对像你这样住城里的人来说也许很奇怪。~
    ++ ~Watch who you're calling a city dweller!~ + PID_Anau_321
    ++ ~听着确实有点怪，可我能明白你的意思。谢谢你告诉我，伊洛斯。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Anau_322
    ++ ~就是怪，就这么回事。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Anau_323
  END

  IF ~~ PID_Anau_33
    SAY ~怎么讲？~
    ++ ~嗯，你严厉，有时还难以捉摸。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Anau_331
    ++ ~Uh...doesn't matter.  Forget about it.~ + PID_Anau_332
    ++ ~你这一刻可以很平静，下一刻观点就彻底变了……沙漠这一刻看着平和，忽然就能冒出狂暴的龙卷风。差不多一样。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Anau_333
  END

  IF ~~ PID_Anau_311
    SAY ~也许，可你只能等我愿意告诉你的时候，是吧？~
    IF ~~ EXIT
  END

  IF ~~ PID_Anau_312
    SAY ~因为我不特别想跟你分享那些细节。我相信你理解。~
    IF ~~ EXIT
  END

  IF ~~ PID_Anau_313
    SAY ~我明白了。那当然由你——可我不告诉你的原因是我觉得没必要，而且那相当私密。我相信你理解。~
    IF ~~ EXIT
  END

  IF ~~ PID_Anau_321
    SAY ~嗯，我想你是在一座偏远的城堡，而不是城里长大的，可也差不多。~
    ++ ~No its not, its nothing like the city!  There were monks, and books, and a small town...okay, maybe it was a bit like a city, but nowhere near as much as Amkethran!~ + PID_Anau_3211
    ++ ~也许。~ EXIT
    ++ ~(Sigh) Don't you understand *anything*?  A city is big, and contains thousands of people.  Candlekeep had hundreds, at most.~ + PID_Anau_3211
  END

  IF ~~ PID_Anau_322
    SAY ~没问题。~
    IF ~~ EXIT
  END

  IF ~~ PID_Anau_323
    SAY ~你要这么想就这么想。~
    IF ~~ EXIT
  END

  IF ~~ PID_Anau_331
    SAY ~（伊洛斯一时语塞，过了一会儿笑起来。）~ = ~我得承认，那不全是我预料的。也许。我想我有时确实严厉又难以捉摸……~
    IF ~~ EXIT
  END

  IF ~~ PID_Anau_332
    SAY ~随你。~
    IF ~~ EXIT
  END

  IF ~~ PID_Anau_333
    SAY ~（伊洛斯若有所思。）也许你说得对。值得想一想。~
    IF ~~ EXIT
  END

  IF ~~ PID_Anau_3211
    SAY ~你说得有道理——阿姆凯斯兰至少比烛堡大。不过这不要紧……你大部分时间都在冒险，我也一样。我们不能再被归类为「城里人」或「沙漠人」，而是「冒险者」……事情就是这样，真怪。~
    IF ~~ EXIT
  END

  // PID 5--Drow
  IF ~~ PID_Drow
    SAY ~安纳罗克地下有好几处卓尔聚落——我第一次闯进沙漠时，为了活下来不得不学他们的语言。要么学卓尔语，要么死。~ 
    ++ ~真难的决定。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Drow_1
    ++ ~Fair enough.~ + PID_Drow_1
    ++ ~可即便如此……你就不能去个没有卓尔的地方？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Drow_2
  END

  IF ~~ PID_Drow_1
    SAY ~卓尔语是种复杂的语言，喉音很重。我花了好几个月才摸到皮毛，可一旦开始懂，后面就容易多了。那儿的卓尔有些是善神的信徒，尤其是女神伊莉丝翠，所以跟他们来往也没那么可怕。~
    ++ ~Whatever--that doesn't change the fact that the Drow are a terrible people.  I don't understand how you could *live* with them.~ + PID_Drow_11
    ++ ~我明白你的意思。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Drow_11
    ++ ~你为什么非得跟卓尔住在一起？你不能去别处吗？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Drow_2
  END

  IF ~~ PID_Drow_2
    SAY ~安纳罗克沙漠极大；在那样一片地方遇上文明甚至有人居住的机会极其渺茫。我能碰上卓尔算是幸运。最后他们把我赶了出来，让我很懊恼——可有些人对我的处境抱以同情，把我领到一处小小的人类聚落。我活了下来，也从这段经历里成长了——可卓尔并不都像你起初想的那么坏。~
    IF ~~ EXIT
  END

  IF ~~ PID_Drow_11
    SAY ~安纳罗克沙漠极大；在那样一片地方遇上文明甚至有人居住的机会极其渺茫。我能碰上卓尔算是幸运——要不是碰上，我肯定死了。最后他们把我赶了出来，让我很懊恼——可有些人对我的处境抱以同情，把我领到一处小小的人类聚落。我活了下来，也从这段经历里成长了——可卓尔并不都像你起初想的那么坏。~
    IF ~~ EXIT
  END

  // PID 6--Nyalee
  IF ~~ PID_Nyalee
    SAY ~我参与了跟她谈「她的」沼泽的事。她占的那座神殿是某位修士的世袭财产，而她对娜莉把那里弄得那副样子感到恶心。那是我经历过的最复杂的局面之一，没有一件事是干净利落的。~ 
    ++ ~(Remain silent and wait for him to continue)~ + PID_Nyalee_1
    ++ ~What happened?~ + PID_Nyalee_1
    ++ ~我没问你的生平，伊洛斯！就告诉我发生了什么，别加那些别的。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Nyalee_2
  END

  IF ~~ PID_Nyalee_1
    SAY ~最后我跟那老巫婆当面摊了牌，她说那地是从那修士的父亲手里得的，理应归她。我做了些我不自豪的事。~ = ~跟她多谈了几句后，我忍不住替那女人难过；她苦涩、破碎，因为这辈子做的选择，已经没了慈悲或共情的能力。可她用毒话把我激得暴怒，我……我打了她。我感到骨头在那一击下碎裂，她一声怒号，召了亡灵——沼泽里的居民——来追我。~ = ~我在那阵猛攻下逃走，回到修道院后才得知一个可怕的真相——那修士撒了谎。她被发现后就被逐出了修道院，而我被迫回到娜莉的沼泽去道歉、为我可怕的作为补偿。她昏迷着，她的那些「朋友」一个也看不见；我在她身边放了一瓶治疗药水、约三百金币，还有一件小小的魔法饰品，希望它能帮她恢复理智。~ = ~她醒来，看我的眼神像看陌生人；她不记得自己的骨头为什么断了，也不记得是我打断的。她开始絮叨她的「儿子」亚加苏拉，和他的背叛。她把我给她的吊坠从脖子上扯下来砸碎，一边发誓要向他复仇。~ = ~她忘了我还在那儿，我就尽可能不引人注意地离开了。我怀疑你跟她说话时她根本没认出我，可不知为何，我猜她也许会记得你这样的人，因为你跟亚加苏拉有关联。~ = ~事情就是这样，真怪……她对自己骨头被打断的事一点不记得，却记得那巨人，和他对她的明显背叛。她是个可悲的生灵，永远被判给仇恨，被判给自己和儿子的诋毁。~
    ++ ~多……多可悲。我几乎替她难过。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Nyalee_11
    ++ ~她得到的是她应得的……她拿心换了命。她不值得同情。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1)~ + PID_Nyalee_12
    ++ ~多可悲，你竟这么容易就失了脾气……还是对一个手无寸铁的老妇。我为你感到厌恶，伊洛斯。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Nyalee_13
  END

  IF ~~ PID_Nyalee_2
    SAY ~你问了，<CHARNAME>，那你就得听我要说的话。~
    IF ~~ + PID_Nyalee_1
  END

  IF ~~ PID_Nyalee_11
    SAY ~你会的是吧？可那都不重要了……发生的就是发生了，我的话仍然有效；你不能信任娜莉，她疯了。我们走吧……可对付她的时候，记住我的故事。她一瞬间就能改主意，一被激就会动手——加上她那些「朋友」亡灵，她可不是好对付的。~
    ++ ~我会记住。谢谢你，伊洛斯。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~我想那是我听过你说的最长的一段话！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Nyalee_111
    ++ ~我会想一想。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Nyalee_112
  END

  IF ~~ PID_Nyalee_12
    SAY ~也许，可那都不重要了……发生的就是发生了，我的话仍然有效；你不能信任娜莉，她疯了。我们走吧……可对付她的时候，记住我的故事。她一瞬间就能改主意，一被激就会动手——加上她那些「朋友」亡灵，她可不是好对付的。~
    ++ ~我会记住。谢谢你，伊洛斯。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~我想那是我听过你说的最长的一段话！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Nyalee_111
    ++ ~我会想一想。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Nyalee_112
  END

  IF ~~ PID_Nyalee_13
    SAY ~我不为自己做的事自豪，可那都不重要了……发生的就是发生了，我的话仍然有效；你不能信任娜莉，她疯了。我们走吧……可对付她的时候，记住我的故事。她一瞬间就能改主意，一被激就会动手——加上她那些「朋友」亡灵，她可不是好对付的。~
    ++ ~我会记住。谢谢你，伊洛斯。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ EXIT
    ++ ~我想那是我听过你说的最长的一段话！~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Nyalee_111
    ++ ~我会想一想。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + PID_Nyalee_112
  END

  IF ~~ PID_Nyalee_111
    SAY ~嘿，确实——可我觉得那是你该知道的事，所以就告诉你了。想一想，<CHARNAME>，就算只为你自己好。听我的劝，不管娜莉许什么、答应什么，她的话一个字都别信。我们走吧。~
    IF ~~ EXIT
  END

  IF ~~ PID_Nyalee_112
    SAY ~我觉得那是你该知道的事，所以就告诉你了。想一想，<CHARNAME>，就算只为你自己好。听我的劝，不管娜莉许什么、答应什么，她的话一个字都别信。我们走吧。~
    IF ~~ EXIT
  END

  // PID 7--Teach Me Drow
  IF ~~ PID_DrowDone
    SAY ~你不觉得你学得够多了吗，<CHARNAME>？（叹气）~ = ~你想让我提醒你或教你什么？~
    ++ ~'Hello, how are you?'~ + RDrow_1
    ++ ~'Drow scum, I hope you burn in hell.'~ + RDrow_2
    + ~Gender([PC],FEMALE)~ + ~ 'On your knees, male!'?~ + RDrow_3
    ++ ~'Wonderful morning, is it not?  And how are the children?'~ + RDrow_4
    ++ ~'Damn.'~ + RDrow_5
    ++ ~Teach me how to say fuck in Drow.  Come on.  Please?~ + RDrow_6
    ++ ~其实，不了，谢谢。我不需要。~ EXIT
  END

  IF ~~ PID_RemindDrow
    SAY ~随你。~
    ++ ~'Hello, how are you?'~ + RDrow_1
    ++ ~'Drow scum, I hope you burn in hell.'~ + RDrow_2
    + ~Gender([PC],FEMALE)~ + ~ 'On your knees, male!'?~ + RDrow_3
    ++ ~'Wonderful morning, is it not?  And how are the children?'~ + RDrow_4
    ++ ~'Damn.'~ + RDrow_5
    ++ ~Teach me how to say fuck in Drow.  Come on.  Please?~ + RDrow_6
    ++ ~其实，不了，谢谢。我不需要。~ EXIT
  END

  IF ~~ RDrow_1
    SAY ~'Vendui, lu'oh ph' dos?'~
    IF ~~ EXIT
  END

  IF ~~ RDrow_2
    SAY ~'Ilythiiri srow, Usstan kestal dos flamgra wun uoi'nota.'~
    IF ~~ EXIT
  END

  IF ~~ RDrow_3
    SAY ~'Pholor dosst la'uren, jaluk!'~
    IF ~~ EXIT
  END

  IF ~~ RDrow_4
    SAY ~'Bronretla kre'tan, zhah ol naut?  Lu'oh ph' l' dalharen?'~
    IF ~~ EXIT
  END

  IF ~~ RDrow_5
    SAY ~'Xsa'.~
    IF ~~ EXIT
  END

  IF ~~ RDrow_6
    SAY ~你若非要知道，那是「Vith」，不过卓尔通常不用这个词。~ = ~顺便预答你下一个问题——骂人是「Vith'rell」。~
    IF ~~ EXIT
  END

  IF ~~ PID_TeachDrow
    SAY ~若我别无选择，我可以教你一点。我不愿说它，可我想至少能教你一些。~ = ~你想学怎么说哪句？~
    ++ ~How about 'Hello, how are you?'~ + Drow_1
    ++ ~Surprise me.~ + Drow_2
    + ~Gender([PC],FEMALE)~ + ~Perhaps 'On your knees, male!'?~ + Drow_3
    ++ ~'Drow scum, I hope you burn in hell.'~ + Drow_4
    ++ ~'Wonderful morning, is it not?  How are the children?'~ + Drow_5
    ++ ~'Iylos, would you please just teach me the basics?  I'd actually like to know the language, not just bits and pieces of it.~ + Drow_6
    ++ ~I'd like to learn how to swear in Drow.  Mostly so other people don't know what I'm saying when I swear at them.~ + Drow_7
  END

  IF ~~ Drow_1
    SAY ~那挺简单。跟我念；「Vendui, lu'oh ph' dos?」~ = ~不真正浸进卓尔文化，是很难学会卓尔语的……等一下。你已经浸过了。那条银龙不是施了法让你看起来像卓尔、还会说他们的语言吗？后来怎么了？~
    ++ ~It wore off eventually, as most spells do.  So, are you going to teach me, or not?~ + Drow_61
    ++ ~It's still there.  I just wanted *you* to teach me.~ + Drow_62
    ++ ~I knew you liked telling people what to do, what so say, how to act...so I thought you might appreciate the gesture.~ + Drow_63
  END

  IF ~~ Drow_2
    SAY ~好吧。可我不告诉你它是什么意思——你自己琢磨去。~ = ~Dosst heen zhah sreenath, drill xal dosst b'luth'ol zotreth seke.~ = ~不真正浸进卓尔文化，是很难学会卓尔语的……等一下。你已经浸过了。那条银龙不是施了法让你看起来像卓尔、还会说他们的语言吗？后来怎么了？~
    ++ ~It wore off eventually, as most spells do.  So, are you going to teach me, or not?~ + Drow_61
    ++ ~It's still there.  I just wanted *you* to teach me.~ + Drow_62
    ++ ~I knew you liked telling people what to do, what so say, how to act...so I thought you might appreciate the gesture.~ + Drow_63
  END

  IF ~~ Drow_3
    SAY ~我早该知道会是这类东西，<CHARNAME>。「Pholor dosst la'uren, jaluk!」。~ = ~不真正浸进卓尔文化，是很难学会卓尔语的……等一下。你已经浸过了。那条银龙不是施了法让你看起来像卓尔、还会说他们的语言吗？后来怎么了？~
    ++ ~It wore off eventually, as most spells do.  So, are you going to teach me, or not?~ + Drow_61
    ++ ~It's still there.  I just wanted *you* to teach me.~ + Drow_62
    ++ ~I knew you liked telling people what to do, what so say, how to act...so I thought you might appreciate the gesture.~ + Drow_63
  END

  IF ~~ Drow_4
    SAY ~'Ilythiiri srow, Usstan kestal dos flamgra wun uoi'nota.'~ = ~不真正浸进卓尔文化，是很难学会卓尔语的……等一下。你已经浸过了。那条银龙不是施了法让你看起来像卓尔、还会说他们的语言吗？后来怎么了？~
    ++ ~It wore off eventually, as most spells do.  So, are you going to teach me, or not?~ + Drow_61
    ++ ~It's still there.  I just wanted *you* to teach me.~ + Drow_62
    ++ ~I knew you liked telling people what to do, what so say, how to act...so I thought you might appreciate the gesture.~ + Drow_63
  END

  IF ~~ Drow_5
    SAY ~真是平淡。「Bronretla kre'tan, zhah ol naut?  Lu'oh ph' l' dalharen?」~ = ~不真正浸进卓尔文化，是很难学会卓尔语的……等一下。你已经浸过了。那条银龙不是施了法让你看起来像卓尔、还会说他们的语言吗？后来怎么了？~
    ++ ~It wore off eventually, as most spells do.  So, are you going to teach me, or not?~ + Drow_61
    ++ ~It's still there.  I just wanted *you* to teach me.~ + Drow_62
    ++ ~I knew you liked telling people what to do, what so say, how to act...so I thought you might appreciate the gesture.~ + Drow_63
  END

  IF ~~ Drow_6
    SAY ~不真正浸进卓尔文化，是很难学会卓尔语的……等一下。你已经浸过了。那条银龙不是施了法让你看起来像卓尔、还会说他们的语言吗？后来怎么了？~
    ++ ~It wore off eventually, as most spells do.  So, are you going to teach me, or not?~ + Drow_61
    ++ ~It's still there.  I just wanted *you* to teach me.~ + Drow_62
    ++ ~I knew you liked telling people what to do, what so say, how to act...so I thought you might appreciate the gesture.~ + Drow_63
  END

  IF ~~ Drow_7
    SAY ~我猜，对像你这样的人会用得上。好吧……我们来学个基本的。跟我念：「Xsa」。~ = ~X 的音再重些。所以更像「ksa」。对。那意思是「该死」。~ = ~再教你一句；「Flamgra wun uoi'nota, nuij.」意思是「在地狱里烧吧，恶鬼」。我们接下来的战斗里你也许用得上。~
    IF ~~ EXIT
  END

  IF ~~ Drow_61
    SAY ~啊……不，我想我不会。你要学，就回乌斯特·纳萨，或者别的卓尔城市去。我不想让自己的舌头多沾这脏语言。~
    IF ~~ EXIT
  END

  IF ~~ Drow_62
    SAY ~你要*我*教你？嗯，恐怕我得拒绝。你要学，就回乌斯特·纳萨，或者别的卓尔城市去。我不想让自己的舌头多沾这脏语言，尤其你已经会了。~
    IF ~~ EXIT
  END

  IF ~~ Drow_63
    SAY ~差得远。别烦我，<CHARNAME>——我有远比让你指出我的毛病更好的事要做。~
    IF ~~ EXIT
  END

  // PID 8--Relationship
  IF ~~ Relationship
    SAY ~关系？你是说性关系？~
    ++ ~Well...yeah.~ + R1
    ++ ~No, I mean falling in love with the moon.  Of course I mean sexual relationships.~ + R1
    ++ ~No...another way to phrase it would be; have you ever fallen in love?~ + R2
  END

  IF ~~ R1
    SAY ~有过，是的。可很短暂。那……结局不太好，对双方都是。~
    ++ ~What happened?~ + R11
    ++ ~Oh.  Sorry for bringing it up.~ + R12
    ++ ~Hah, bet she couldn't stand you!~ + R13
  END

  IF ~~ R2
    SAY ~有过。结局不太好——对双方都是。~
    ++ ~What happened?~ + R11
    ++ ~Oh.  Sorry for bringing it up.~ + R12
    ++ ~Hah, bet she couldn't stand you!~ + R13
  END

  IF ~~ R11
    SAY ~没成。~
    ++ ~That's all?~ + R111
    ++ ~And?  You can't just leave me hanging like this!~ + R111
    ++ ~I'm sorry.~ + R112
    ++ ~Well, la-di-da.  So it didn't work out.  No need to be so emotional about it.~ + R113
  END

  IF ~~ R12
    SAY ~没关系。事情发生了，我也无能为力。这不是我特别愿意谈的事，恕我失陪。~
    IF ~~ EXIT
  END

  IF ~~ R13
    SAY ~*他*不得不离开。~
    ++ ~...He?!~ + R131
    ++ ~Eww!  That's disgusting, Iylos!~ + R132
    ++ ~Aww, how cute!~ + R133
    ++ ~I didn't know you were into guys, Iylos.~ + R134
  END

  IF ~~ R111
    SAY ~我谈这个……不太自在，<CHARNAME>。所以你若能行个方便让我失陪，我会很感激。~
    IF ~~ EXIT
  END

  IF ~~ R112
    SAY ~不必道歉，<CHARNAME>。事情发生了，我也无能为力。这不是我特别愿意谈的事，恕我失陪。~
    IF ~~ EXIT
  END

  IF ~~ R113
    SAY ~你若不想知道，<CHARNAME>，有个简单的办法——别问。~
    IF ~~ EXIT
  END

  IF ~~ R131
    SAY ~是的，他。你对此有意见？~
    ++ ~Yes!  That's...that's disgusting!~ + R132
    ++ ~No, not at all.  I happen to think it's all kinds of awesome, actually.~ + R1311
    ++ ~Not really.  Just don't...do anything while I'm around.~ + R1312
    ++ ~So *that's* why you're so--so bitter!  You've never been able to come out, your entire life...oh, Iylos...~ + R1313
    ++ ~Yes, but that isn't going to stop me from adventuring with you.  I don't let such things come in the way of a professional relationship.~ + R1314
    + ~Gender([PC],FEMALE)~ + ~Actually, that kind of thing turns me on.~ + R1315
    ++ ~You...you like...guys?  Why didn't you tell me before?~ + R1316
    + ~Gender([PC],MALE)~ + ~Iylos, you never mentioned--I like guys, too!  I mean...~ + R1316
  END

  IF ~~ R132
    SAY ~那我看继续谈下去也没意义了。~
    IF ~~ DO ~SetGlobal("LK#IylosHappiness","GLOBAL",0) SetGlobal("LK#IylosTalksLess","GLOBAL",1)~ EXIT
  END

  IF ~~ R133
    SAY ~可爱？~ = ~也许。嗯，我想谢谢你。我无意漏出这种事，可至少你没被它吓到。我们……如果可以，我们继续赶路吧。这一带不太熟，而我——我们就走吧。~
    IF ~~ EXIT
  END

  IF ~~ R134
    SAY ~你对此有意见？~
    ++ ~Yes!  That's...that's disgusting!~ + R132
    ++ ~No, not at all.  I happen to think it's all kinds of awesome, actually.~ + R1311
    ++ ~Not really.  Just don't...do anything while I'm around.~ + R1312
    ++ ~So *that's* why you're so--so bitter!  You've never been able to come out, your entire life...oh, Iylos...~ + R1313
    ++ ~Yes, but that isn't going to stop me from adventuring with you.  I don't let such things come in the way of a professional relationship.~ + R1312
    + ~Gender([PC],FEMALE)~ + ~Actually, that kind of thing turns me on.~ + R1314
    ++ ~You...you like...guys?  Why didn't you tell me before?~ + R1315
    + ~Gender([PC],MALE)~ + ~Iylos, you never mentioned--I like guys, too!  I mean...~ + R1316
  END

  IF ~~ R1311
    SAY ~了不起？~ = ~也许。嗯，我想谢谢你。我无意漏出这种事，可至少你没被它吓到。我们……如果可以，我们继续赶路吧。这一带不太熟，而我——我们就走吧。~
    IF ~~ EXIT
  END

  IF ~~ R1312
    SAY ~哼。我无意漏出这种事，可至少你没被它吓到。我们……如果可以，我们继续赶路吧。这一带不太熟，而我——我们就走吧。~
    IF ~~ EXIT
  END

  IF ~~ R1313
    SAY ~哼……~ = ~我不需要你的怜悯，<CHARNAME>。而且那——根本不是那么回事。我们非得谈这个吗？这可不是什么熟悉的地界，而我——我们就走吧。~
    IF ~~ EXIT
  END

  IF ~~ R1314
    SAY ~那——那太好了，<CHARNAME>，可……啊……我们不是得走吗？我们有要去的地方吗？~ = ~我们——真的该走了。就现在。失陪。~
    IF ~~ EXIT
  END

  IF ~~ R1315
    SAY ~这不是什么能向全世界广播的事，<CHARNAME>。我们非得——谈这个吗？我无意漏出这种事，可至少你没被它吓到。我们……如果可以，我们继续赶路吧。这一带不太熟，而我——我们就走吧。~
    IF ~~ EXIT
  END

  IF ~~ R1316
    SAY ~我注意到了。这不是什么能向全世界广播的事，<CHARNAME>——可至少，这也许是我们共有的一点。~ = ~现在，我们再也别提这事了。~
    IF ~~ EXIT
  END

  IF ~~ Relationship2
    SAY ~是的。可我可不打算告诉你，<CHARNAME>，走开吧。~
    IF ~~ EXIT
  END

  // New content (10.4.08)
  IF ~~ situation
    SAY ~我的想法是我自己的事，而且会影响你自己的结论。不过，我觉得有什么不对劲——是什么，我不确定。不管怎样，我们该睁大眼睛、留心脚下。~
    IF ~~ EXIT
  END

  IF ~~ tease1
    SAY ~（他怀疑地挑起一边眉毛。）我不是秃子，<CHARNAME>。我每天早上都刮头。~
    ++ ~How come I've never seen you actually do it?~ + tease1_1
    ++ ~你这么说就这么吧。~ EXIT
  END
  
  IF ~~ tease1_1
    SAY ~我每天日出前就醒，那会儿你还在打呼。你睡觉张着嘴，居然没吞下什么东西，我总感到惊讶。~
    ++ ~Sounds like you've done a fair bit of "observing," Iylos...tell me; do you have a crush on me?~ + tease1_2
    ++ ~Hey! Well, at least I'm not the one wearing a dress.~ + tease1_3
    ++ ~Very funny.~ + tease1_4
  END
  
  IF ~~ tease1_2
    SAY ~差得远。我跟你说话这件事本身就算某种奇迹了，我想；我说过，我更愿意在别处。最好是没你在场、免得坏了气氛。~
    IF ~~ EXIT
  END
  
  IF ~~ tease1_3
    SAY ~你很清楚这不是裙子，巴尔之子。你若只想侮辱我，那我建议你别烦我。我不会降格去回应这种蠢话。~
    IF ~~ EXIT
  END
  
  IF ~~ tease1_4
    SAY ~我也这么想。~
    IF ~~ EXIT
  END
  
  IF ~~ tease2
    SAY ~真是妙语，<CHARNAME>。也许下次你会把我比作鸭子？至少看你被自己舌头绊倒还算有点意思。~
    IF ~~ EXIT
  END
  
  IF ~~ tease3
    SAY ~（伊洛斯轻蔑地哼了一声。）我还以为你有几分成熟。我多蠢。~
    IF ~~ EXIT
  END
  
  IF ~~ paladins
    SAY ~圣武士？耳朵之间没多少东西的正直人，至少许多是这样。我见过的圣武士里，很少有能看见那些微妙的灰色、那些常常出现的色调变化的，这就让他们无法真正理解善恶。他们只看见生硬的黑与白，善与恶，而实际上有那么多别的因素在起作用。~
    IF ~~ EXIT
  END
  
  IF ~~ druids
    SAY ~所有人里，我最认同德鲁伊。他们懂得独处的必要，懂得从沉默、沉思与审慎里能学到什么。自然是强大而奇妙的东西，他们懂得它在万物大局里的重要。我觉得他们比很多人做得更多好事，尤其是那些对自己杀的东西毫不思考的人。~
    IF ~~ EXIT
  END
  
  IF ~~ bards
    SAY ~我觉得他们有点没用又烦人，老是唱歌作诗。我对不把时间用在正处的人没什么敬意。~
    IF ~~ EXIT
  END
  
  IF ~~ berserkers
    SAY ~我能认同他们用来为自己正名的那种狂怒，可我不觉得那是疏导狂怒的正确途径。有些狂战士认为他们的狂怒是最纯粹的情绪，某种意义上我明白他们的意思；可我不觉得那是最好的、最有效的战斗方式。~
    IF ~~ EXIT
  END
  
  IF ~~ magic
    SAY ~魔法？每一天不都是一件魔法之作吗，<CHARNAME>？魔法有那么多不同的形态，而你们却把自己限于一种。我相信魔法是极强大的力量，能做伟大的事。可它也能做极大的恶，也能腐化人。~ = ~所以回过头看，我对你们所谓的「魔法」有两种想法。一方面，它可以是极善与极恶的力量；另一方面，它让每一天的奇迹都变廉价了。生育、生、死——这些都是不断发生的奇迹，可我们不把它们当奇迹，因为我们太执着于「魔法」这个念头。~ = ~那是好事吗？你说呢。~
    IF ~~ EXIT
  END
  
  IF ~~ minsc
    SAY ~他是个好人，没多少脑子，可有颗伟大的心。我不知道该怎么看他那只——仓鼠，布布，可我见过许多事，如果明斯克关于他的说法是真的，我也不会特别惊讶。~
    IF ~~ EXIT
  END
  
  IF ~~ thievery
    SAY ~我不认同有人用撬锁工具不请自入，可我相信这种技能有时是活命所需。我虽不认同盗贼的信条，但在情形需要时，他们能派上用场。~
    IF ~~ EXIT
  END

END