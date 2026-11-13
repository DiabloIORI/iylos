// Iylos' interjections
BEGIN LK#IYLJ

// -------------------------------------
// Trust Dialogues (2)
// -------------------------------------
// PC Dialogue 1
  IF WEIGHT #-2 ~Global("LK#IylosL_Talks","GLOBAL",1) RealGlobalTimerExpired("LK#IylosTalksTimer","GLOBAL")~ PCD1
    SAY ~我希望你明白，我不是自愿来的，巴尔之子。我来是为了看清你的意图和动机。要是我能作主，我还在安纳罗克沙漠里，想去哪就去哪。~ [LK#I153]  = ~这件事上我跟你一样没有选择。我只是觉得该把这一点说清楚。~ [LK#I154]
    ++ ~我明白。~ DO ~IncrementGlobal("LK#IylosL_Talks","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD1_1
    ++ ~无论如何，你得按*我*的规矩过，修士。我接受你入队，前提是你有用；要是我发现你在任何方面拖累我，你立刻就得走。~ DO ~IncrementGlobal("LK#IylosL_Talks","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",-1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD1_2
    ++ ~你大可以不听你的「命令」，不管那命令来自谁。~ DO ~IncrementGlobal("LK#IylosL_Talks","GLOBAL",1) SetGlobal("LK#IylosPCD1","GLOBAL",2)~ + PCD1_3
    ++ ~我的动机？我的动机与你无关，伊洛斯。~ DO ~IncrementGlobal("LK#IylosL_Talks","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",-1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD1_4
    ++ ~我只想帮助其他的巴尔之子，结束这场战争。我要的就这些。你至少愿意帮我往这个方向去吗？~ DO ~IncrementGlobal("LK#IylosL_Talks","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",1) RealSetGlobalTimer("LK#IylosTalksTimer","GLOBAL",IYLOS_TIMER)~ + PCD1_5
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


// -------------------------------------
// Iylos Dislike Dialogue (1)
// -------------------------------------
  IF WEIGHT #-2 ~Global("LK#IylosL_Talks","GLOBAL",3) RealGlobalTimerExpired("LK#IylosTalksTimer","GLOBAL")~ PCDIS
    SAY ~当心你自己，<CHARNAME>。我不信任你，我会盯着你的一举一动，直到你证明了自己。但在那之前，记住我会盯着你——需要时我不怕动手。~ [LK#I160]
    ++ ~那是什么意思？！~ DO ~IncrementGlobal("LK#IylosL_Talks","GLOBAL",1)~ + PCDIS_1
    ++ ~换我我就不这么狂妄，伊洛斯——你不知道自己在跟谁打交道。我是巴尔之子。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-1) IncrementGlobal("LK#IylosL_Talks","GLOBAL",1)~ + PCDIS_2
    ++ ~随便。听着，我其实不在乎。~ DO ~IncrementGlobal("LK#IylosL_Talks","GLOBAL",1)~ + PCDIS_2
    ++ ~你大可以走，伊洛斯。你知道我不会干什么暴行——或者说，到现在你该知道了。~ DO ~IncrementGlobal("LK#IylosL_Talks","GLOBAL",1)~ + PCDIS_3
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
// Reputation Dialogues (2)
// -------------------------------------
// High reputation
  IF WEIGHT #-1 ~Global("LK#IylosReputationGoodTalk","GLOBAL",1)~ ReputationGood
    SAY ~<CHARNAME>，我必须称赞我们目前的作为。虽然我可能不喜欢你是谁——或者说你是什么——但我尊重你在这世上行善。~ [LK#I233]
    ++ ~谢谢，我想。我能行善时就尽力行善。~ DO ~IncrementGlobal("LK#IylosReputationGoodTalk","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + RG_1
    ++ ~我总是尽力为任何事找到最好的解法。~ DO ~IncrementGlobal("LK#IylosReputationGoodTalk","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + RG_2
    ++ ~我做这些事只是为了维持名声。我其实一点也不在乎「行善」或救人，可我为了保住形象，不得不做。~ DO ~IncrementGlobal("LK#IylosReputationGoodTalk","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + RG_3
    ++ ~随便。~ DO ~IncrementGlobal("LK#IylosReputationGoodTalk","GLOBAL",1) IncrementGlobal("LK#IylosHappiness","GLOBAL",2)~ + RG_1
  END

  IF ~~ RG_1
    SAY ~希望你能保持这一连串善意，<CHARNAME>。人只能希望。~
    IF ~~ EXIT
  END

  IF ~~ RG_2
    SAY ~你这么说。希望你能保持这一连串善行，<CHARNAME>。人只能希望。~
    IF ~~ EXIT
  END

  IF ~~ RG_3
    SAY ~不管动机如何，行为本身是善的。我只能希望你改变态度——但眼下，我尊重你在帮人。~ = ~哪怕是为了自私的目的。~
    IF ~~ EXIT
  END

// Low reputation
  IF WEIGHT #-1 ~Global("LK#IylosReputationBadTalk","GLOBAL",1)~ ReputationBad
    SAY ~看来我的指控被证实了。我不敢相信你做的事——你逼我做的事，我不会再忍受。我要离开这队伍，离开你。再会，<CHARNAME>——希望我们不再相见。~ [LK#I234]
    IF ~~ DO ~SetGlobal("LK#IylosLeavingBad","GLOBAL",1) SetGlobal("LK#IylosJoined","GLOBAL",0) SetGlobal("LK#IylosReputationBadTalk","GLOBAL",2) EscapeArea()~ EXIT
  END
  
  
// -------------------------------------
// Plot Dialogues (2)
// -------------------------------------
// Plot Dialogue 1
  IF WEIGHT #-2 ~Global("LK#IylosWhatNextDialogue","GLOBAL",1)~ Whatnext
    SAY ~又一个强大的巴尔之子倒在你手上，<CHARNAME>。你现在打算做什么？~ [LK#I164]
    ++ ~照索拉说的做……杀掉其他的巴尔之子，好让我达成命运。~ DO ~IncrementGlobal("LK#IylosWhatNextDialogue","GLOBAL",1)~ + Whatnext_1
    ++ ~我打算取回我应得的位置，成为谋杀的<PRO_LADYLORD>。~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1) IncrementGlobal("LK#IylosWhatNextDialogue","GLOBAL",1)~ + Whatnext_2
    ++ ~只要是为了止住这场战争，我做什么都行。~ DO ~IncrementGlobal("LK#IylosWhatNextDialogue","GLOBAL",1)~ + Whatnext_3
    ++ ~嗯，我刚才想我们可以歇一会儿，然后也许吃点东西……~ DO ~IncrementGlobal("LK#IylosWhatNextDialogue","GLOBAL",1)~ + Whatnext_4
  END

  IF ~~ Whatnext_1
    SAY ~索拉？~
    ++ ~Yes.  I have a celestial being who visits me in my dreams, advising me of the best course of action.  She--or maybe he, I'm not sure--can be really quite aggravating when he...uh, they set their mind to it.~ + Whatnext_11
    ++ ~Mm.~ + Whatnext_11
    ++ ~索拉是一位天界者，帮我判明我此生该走的路。~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + Whatnext_11
    ++ ~对。她有时给我指点——不过我通常不理她的指点。~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + Whatnext_11
  END

  IF ~~ Whatnext_2
    SAY ~那我何必费劲去拦你，<CHARNAME>？~ = ~我知道自己在打一场没有胜算的仗时，就不打了。~
    ++ ~是的。我将成为谋杀的<PRO_LADYLORD>，万物都要向我低头！哇哈哈哈！~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + Whatnext_21
    ++ ~呃……其实也不是。说实话，那套谋杀的把戏有点玩腻了。~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + Whatnext_22
    ++ ~你不该试着拦。你就该照吩咐做，然后闭嘴。~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + Whatnext_21
    ++ ~Murder isn't necessarily a bad thing, Iylos.~ + Whatnext_23
    ++ ~我将成为谋杀的<PRO_LADYLORD>。你其实做不了什么——你可以试试。我已经接受我的命运。~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + Whatnext_21
    ++ ~没有什么仗。我只是那么说，看看你的眉毛能挑多高。有种东西叫开玩笑……~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + Whatnext_4
  END

  IF ~~ Whatnext_3
    SAY ~那我会支持你。可我要劝你小心——那五人不可轻慢。你也许杀了其中三个，但我确信下一个不会这么容易。~
    IF ~~ EXIT
  END

  IF ~~ Whatnext_4
    SAY ~哦，<CHARNAME>，你的机智让我眼里都出泪了。不，真的。~ = ~你能正经点吗，<CHARNAME>？这是要紧事！~
    ++ ~Of course it is.  But I can't be serious, no--its just not in me, I'm afraid.~ + Whatnext_41
    ++ ~If you wish.  I don't know what I'm going to do--see what happens, I suppose.~ + Whatnext_42
    ++ ~I will kill the other Bhaalspawn, as I have said before.~ + Whatnext_43
    ++ ~I joke because I care.~ + Whatnext_44
    ++ ~I'll act on what the Solar told me.~ + Whatnext_1
  END

  IF ~~ Whatnext_11
    SAY ~你……有一个*索拉*……在梦里跟你说话。~ = ~这位——索拉——跟你说了什么？~
    ++ ~说预言并没有讲该由我来让剑湾流血——预言警告的是，我若不止住其他巴尔之子会发生什么。所以我打算就这么做。~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~  + Whatnext_111
    ++ ~那不关你的事，对吧？~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",-1)~ + Whatnext_112
    ++ ~索拉跟我说了很多——其中一件是我注定要止住这场战争。我其实一点也不在乎，可若我必须这么做才能达成命运……那就这样吧。~ DO ~IncrementGlobal("BLK#IylosHappiness","GLOBAL",1)~  + Whatnext_112
  END

  IF ~~ Whatnext_21
    SAY ~我明白了。那你显然不需要我，<CHARNAME>——我就此告辞。你登神之事我绝不参与——我希望到时候你能明白自己这条路有多蠢。再会，<CHARNAME>——我想我们不会再见了。~ = ~至少，我希望不会。~ = ~再会，<CHARNAME>。祈祷我们不再相见。~
    IF ~~ DO ~LeaveParty() SetGlobal("LK#IylosJoinedParty","GLOBAL",0) SetGlobal("LK#IylosLeftUnhappy","GLOBAL",1) EscapeAreaMove("AR5500",958,1567,5)~ EXIT
  END

  IF ~~ Whatnext_22
    SAY ~我很高兴是这样，<CHARNAME>。我可不想帮一个目标是当下一任谋杀<PRO_LADYLORD>的人。~
    IF ~~ EXIT
  END

  IF ~~ Whatnext_23
    SAY ~也许不是。可你所说的那种谋杀——赤裸裸的冷血杀戮——肯定是错的。要知道，我可不想帮一个目标是当下一任谋杀<PRO_LADYLORD>的人，<CHARNAME>。祈祷我们不再相见。~
    IF ~~ EXIT
  END

  IF ~~ Whatnext_41
    SAY ~（叹气）我何必费这个劲……有时我自己也纳闷。~ = ~无论如何，我要劝你在此小心——那五人不可轻慢。你也许杀了其中三个，可其余不会这么容易，我确信。~
    IF ~~ EXIT
  END

  IF ~~ Whatnext_42
    SAY ~我要劝你小心——那五人不可轻慢。你也许杀了其中三个，可其余不会这么容易，我确信。~
    IF ~~ EXIT
  END

  IF ~~ Whatnext_43
    SAY ~那我要劝你小心——那五人不可轻慢。你也许杀了其中三个，可其余不会这么容易，我确信。~
    IF ~~ EXIT
  END

  IF ~~ Whatnext_44
    SAY ~我确信。无论如何，我要劝你在此小心——那五人不可轻慢。你也许杀了其中三个，可其余不会这么容易，我确信。~
    IF ~~ EXIT
  END

  IF ~~ Whatnext_111
    SAY ~当真？~ = ~那我会支持你的决定，<CHARNAME>——你似乎做得不错。不过我想，只有时间能证明。~ = ~我确信。无论如何，我要劝你在此小心——那五人不可轻慢。你也许杀了其中三个，可其余不会这么容易，我确信。~
    IF ~~ EXIT
  END

  IF ~~ Whatnext_112
    SAY ~我明白了。不管你的意图如何，<CHARNAME>，我要劝你小心——那五人不可轻慢。你也许杀了其中三个，可其余不会这么容易，我确信。~
    IF ~~ EXIT
  END


// Plot Dialogue 3
CHAIN IF WEIGHT #-3 ~Global("LK#IylosBalthazarDead","GLOBAL",1)~ THEN
  LK#IYLJ BalthKilledHimself ~他……他死了？不。不！不，该死，不！你不必——你这个蠢货！蠢货！Vith dos，巴尔萨扎，whol morfelith uns'aa zexen'uma！Ele？Ele？！~ [LK#I235]
  == BVICON25  IF ~InParty("Viconia") InMyArea("Viconia")~ THEN ~Pathetic rivvil, he did us a favor.  Why mourn his passing, when he so obviously wanted this?~
  == LK#IYLJ  IF ~InParty("Viconia") InMyArea("Viconia")~ THEN ~He never wanted to die!  He wanted to--damn it, he wanted to end this cursed war, this suffering, and he had to...to die...to...(sob)~
  == BVICON25  IF ~InParty("Viconia") InMyArea("Viconia")~ THEN ~Then do not snivel to yourself, let his sacrifice mean something, waelen kivvil.  Such displays of cowardice in the face of death always make my stomach heave.~
  == LK#IYLJ  IF ~InParty("Viconia") InMyArea("Viconia")~ THEN ~Shut it, Viconia, I have no need for this--this-~
  == BJAHEI25  IF ~InParty("Jaheira") InMyArea("Jaheira") InParty("Viconia") InMyArea("Viconia")~ THEN ~Viconia, for once, is right.  There was no shame in his death; he died for the cause he fought for.  Grieve, if you must, but celebrate that his ends may be achieved, even if it is through his own death.~
  == BVICON25  IF ~InParty("Viconia") InMyArea("Viconia")~ THEN ~Listen to me, wael!  This display serves *nothing*.  When I speak, it is not to spout nonsense as you, but to say something important.  Grow a backbone, and get to your feet.  Do it, male, NOW!~
  == LK#IYLJ  IF ~InParty("Viconia") InMyArea("Viconia")~ THEN ~Viconia, I am warning you.~ = ~除了巴尔萨扎，没人能命令我，elg'caress。再这样跟我说话，你会后悔自己开过口。~
  == BVICON25  IF ~InParty("Viconia") InMyArea("Viconia")~ THEN ~So the pathetic wael of a man has backbone.  Good.  Do not waste our time with further pathetic displays, Iylos, as they serve no purpose but to waste our time.  We have far better things to do than watch you weep.~
  END
  ++ ~伊洛斯？你——你还好吗？~ DO ~IncrementGlobal("LK#IylosBalthazarDead","GLOBAL",1)~ EXTERN LK#IYLJ BKH1
  ++ ~对不起。我很对不起。~ DO ~IncrementGlobal("LK#IylosBalthazarDead","GLOBAL",1)~ EXTERN LK#IYLJ BKH2
  ++ ~他非死不可。他是现在死还是不死都无所谓，他反正会自己寻死。~ DO ~IncrementGlobal("LK#IylosBalthazarDead","GLOBAL",1)~ EXTERN LK#IYLJ BKH3
  + ~InParty("Viconia") InMyArea("Viconia")~ + ~Viconia is right.  Stop this snivelling so we can leave.~ DO ~IncrementGlobal("LK#IylosBalthazarDead","GLOBAL",1)~ EXTERN LK#IYLJ BKH3
  + ~!InParty("Viconia") !InMyArea("Viconia")~ + ~Stop this snivelling, Iylos, so we can leave.  The sooner we're out of here, the better.~ DO ~IncrementGlobal("LK#IylosBalthazarDead","GLOBAL",1)~ EXTERN LK#IYLJ BKH3

  CHAIN LK#IYLJ BKH1
    ~我——不，我当然不好！我要报仇。他的仇。我们的仇。梅丽珊要为她做下的恶付出代价，哪怕这是我此生做的最后一件事。~
  EXIT

  CHAIN LK#IYLJ BKH2
    ~这不是你的错。我要报仇。他的仇。我们的仇。梅丽珊要为她做下的恶付出代价，哪怕这是我此生做的最后一件事。~
  EXIT

  CHAIN LK#IYLJ BKH3
    ~我要报仇。他的仇。我们的仇。梅丽珊要为她做下的恶付出代价，哪怕这是我此生做的最后一件事。~
  EXIT


// -------------------------------------
// Scenery Interjections (3)
// -------------------------------------
APPEND ~LK#IYLJ~

// Scenery Interjection, Amkethran
  IF WEIGHT #-2 ~AreaCheck("AR5500") Global("LK#IylosAmkethran","GLOBAL",1)~ LK#IylosAmkethranComment
    SAY ~啊，阿姆凯斯兰……了不起的、尘土飞扬的、干燥的阿姆凯斯兰。我们把手上的事办完吧，<CHARNAME>，好早些离开。~ [LK#IBLN]
    IF ~~ DO ~IncrementGlobal("LK#IylosAmkethran","GLOBAL",1)~ EXIT
  END

// Scenery Interjection, Watcher's Keep
  IF WEIGHT #-2 ~AreaCheck("AR3000") Global("LK#IylosWatchers1","GLOBAL",1)~ LK#IylosWatchersComment
    SAY ~观察者堡垒以它的规模闻名……也以它吞掉的冒险者数量闻名。你若真想探它的深处，<CHARNAME>，我劝你小心；我听过许多关于观察者堡垒内里的说法——没有一句是好话。~ [LK#IBLN] = ~处处致命。~
    IF ~~ DO ~IncrementGlobal("LK#IylosWatchers1","GLOBAL",1)~ EXIT
  END

// After Watcher's Keep
  IF WEIGHT #-2 ~Global("LK#IylosWatchers6","GLOBAL",1)~ LK#IylosWatchers2
    SAY ~这么说我们探到了观察者堡垒的深处……还活着出来了。我低估你了，<CHARNAME>。也许以后我说话该更谨慎些。~ [LK#IBLN] = ~干得好。~
    IF ~~ DO ~IncrementGlobal("LK#IylosWatchers6","GLOBAL",1)~ EXIT
  END


// -------------------------------------
// Balthazar scene
// -------------------------------------
// Balthazar scene, part 1
  IF WEIGHT #-2 ~Global("LK#IylosDialogueFadeNow","GLOBAL",2)~ FadeNowDialogue
    SAY ~我几个小时后回来，<CHARNAME>。巴尔萨扎和我有很多事要谈。~ [LK#IBLN]
    IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("lk#icut")~ EXIT
  END


// Balthazar scene, part 2
  IF ~Global("LK#IylosDialogueFadeNow","GLOBAL",3)~ returned
    SAY ~谢谢你等我，<CHARNAME>。我们该走了。~ [LK#IBLN]
    ++ ~出了什么事？~ DO ~IncrementGlobal("LK#IylosDialogueFadeNow","GLOBAL",1)~ + returned_1
    ++ ~好。~ DO ~IncrementGlobal("LK#IylosDialogueFadeNow","GLOBAL",1)~ EXIT
    ++ ~怎么样？巴尔萨扎肯放我们进去吗？~ DO ~IncrementGlobal("LK#IylosDialogueFadeNow","GLOBAL",1)~ + returned_2
  END

  IF ~~ returned_1
    SAY ~跟你有什么关系？我们谈了话，你只需知道这些。~
    ++ ~Is Balthazar going to let us stay?~ + returned_2
    ++ ~You...you don't look happy.  Did you have a fight?~ + returned_11
    ++ ~随便。~ EXIT
  END

  IF ~~ returned_2
    SAY ~不，他不肯。他要我们待在村里和村子周边，而不是修道院——我们若住进去，会打乱他们的日常。~
    ++ ~And you don't believe a word of it, do you?~ + returned_21
    ++ ~Are you alright?  You look a bit...upset, for lack of a better word.~ + returned_11
    ++ ~随便。走吧。~ EXIT
  END

  IF ~~ returned_11
    SAY ~不，我们……巴尔萨扎和我之间发生了什么，不关你的事。~
    ++ ~Yes it is.  I need to know whether you have made me another enemy, or if Balthazar is at least willing to work with us for the time being.~ + returned_111
    ++ ~I'm glad you didn't fight.  You seem to care for him.~ + returned_112
    ++ ~好——我们走吧。~ EXIT
  END

  IF ~~ returned_21
    SAY ~不，我没有。我……我忍不住觉得有什么在暗中进行，可我也难以相信巴尔萨扎会瞒着我。我不确定。我想我们终会看到。~
    IF ~~ EXIT
  END

  IF ~~ returned_111
    SAY ~他眼下会帮你，可那也许会变。我忍不住觉得有什么在暗中进行，可我也难以相信巴尔萨扎会瞒着我。我不确定。我想我们终会看到。~
    IF ~~ EXIT
  END

  IF ~~ returned_112
    SAY ~他就像我的兄弟。可即便如此……我忍不住觉得有什么在暗中进行，可我也难以相信巴尔萨扎会瞒着我。我不确定。我想我们终会看到。~
    IF ~~ EXIT
  END
  
END


// -------------------------------------
// Watcher's Keep Interjections
// -------------------------------------
// Demogorgon
INTERJECT_COPY_TRANS GORDEMO 1 LK#IylosWatchers4
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~Ware!  There is something terribly, terribly amiss here--the very air reeks of deception.~
END

// Priest of Torm
INTERJECT_COPY_TRANS GORODR1 36 LK#IylosWatchers5
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~No- this cannot be!  We destroyed Demogorgon; I watched with my very eyes as he disintegrated!~
END

// -------------------------------------
// Saradush Interjections
// -------------------------------------
// Solder on wall
INTERJECT_COPY_TRANS SARGRD01 0 LK#IylosMilitiaGuard
  == LK#IYLJ  IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~Perhaps you should listen to the frantic pleas of the peasants, Soldier, and take them to see this Gromnir.  Surely you can see they are suffering?~
  == SARGRD01 ~看顾农人不是我的职责，好先生，我只负责守墙。祝你今日安好。~
END

// Phlydian
INTERJECT_COPY_TRANS2 SARVAM01 1 LK#IylosPhlydian
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~They almost hunger for death...it must truly be a terrible way to live.  Or, not, as the case may be.~
  == SARVAM01 ~你这一生才叫空虚，血裔！上啊，我的孩子们！我们不会不战而降！~
END


// -------------------------------------
// Forest of Mir Interjections
// -------------------------------------
// Nyalee 1
INTERJECT_COPY_TRANS HGNYA01 6 LK#IylosNyalee
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~She is mad, <CHARNAME>--this woman has no compassion, no empathy.  I have had dealings with her before, and I know nothing good can come from anything she suggests.  Be wary of what she says!~ DO ~SetGlobal("LK#Nyaleecomment","GLOBAL",1)~
END

// Nyalee 2
INTERJECT_COPY_TRANS HGNYA01 30 LK#IylosNyalee2
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~I told you, <CHARNAME>--prepare yourself!  Nyalee, you stupid, foolish woman-~
  == HGNYA01 ~我记得你……你就是那个想夺走娜莉的家的人，对不对？！你撒了谎，可你最后还是全拿到了，嘻嘻！~ = ~现在，该你们所有人偿债了！上啊，林子里的小家伙们，上啊，我的朋友们！我们一定要保护亚加苏拉，不让巴尔之子和他那些朋友得手！~
END


// -------------------------------------
// Amkethran
// -------------------------------------
// Amkethran Monk 1
INTERJECT AMMGRD01 2 LK#IylosMonk
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~Yes, I believe he *would* be expecting us.  Is Melissan here?~
EXTERN AMMGRD01 3

// Balthazar
INTERJECT BALTH 8 LK#IylosBalth
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos")~ THEN ~Balthazar, are you even going to acknowledge me?~
  == BALTH ~当然。我只是想等我和<CHARNAME>的事了结。你愿意到我房里来吗，伊洛斯？~ = ~当然，等你什么时候方便。~ DO ~SetGlobal("LK#IylosDialogueFadeNow","GLOBAL",1)~
COPY_TRANS BALTH 8

INTERJECT BALTH 9 LK#IylosBalth
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos")~ THEN ~Balthazar, are you even going to acknowledge me?~
  == BALTH ~当然。我只是想等我和<CHARNAME>的事了结。你愿意到我房里来吗，伊洛斯？~ = ~当然，等你什么时候方便。~ DO ~SetGlobal("LK#IylosDialogueFadeNow","GLOBAL",1)~
COPY_TRANS BALTH 9

INTERJECT BALTH 10 LK#IylosBalth
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos")~ THEN ~Balthazar, are you even going to acknowledge me?~
  == BALTH ~当然。我只是想等我和<CHARNAME>的事了结。你愿意到我房里来吗，伊洛斯？~ = ~当然，等你什么时候方便。~ DO ~SetGlobal("LK#IylosDialogueFadeNow","GLOBAL",1)~
COPY_TRANS BALTH 10

INTERJECT BALTH 11 LK#IylosBalth
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos")~ THEN ~Balthazar, are you even going to acknowledge me?~
  == BALTH ~当然。我只是想等我和<CHARNAME>的事了结。你愿意到我房里来吗，伊洛斯？~ = ~当然，等你什么时候方便。~ DO ~SetGlobal("LK#IylosDialogueFadeNow","GLOBAL",1)~
COPY_TRANS BALTH 11

// Amkethran Monk 2
I_C_T AMMGRD05 2 LK#IylosMonkRefuses
  == LK#IYLJ  IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~And how're we supposed to get the chance when he refuses to speak to us?!~
  == AMMGRD05 ~这不是我能定的，兄弟。巴尔萨扎是个极忙的人，尤其现在备战——你除了等着、盼着能见上一面，别无他法。~
  == LK#IYLJ  ~那你就替我给巴尔萨扎带句话。告诉他，他若不停手，阿姆凯斯兰会枯死成石头。会有几百人死去。~
  == AMMGRD05 ~我一有机会就说，放心。~
  == LK#IYLJ  ~谢谢。~
END

// Amkethran Monk 3
I_C_T AMMGRD01 0 LK#IylosGaaarghIHateYou
  == LK#IYLJ  IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~I am Iylos Mirdan, and I-~
  == AMMGRD01 ~我知道你是谁。~
  == LK#IYLJ  ~让我进去。~
  == AMMGRD01 ~我奉命不放任何人进去，包括你这种人，米尔丹。~
  == LK#IYLJ  ~我这种人？！~
  == AMMGRD01 ~走开——不管你怎么抗议，都进不去。~
  == LK#IYLJ  ~我不会忘记这件事。~
  == AMMGRD01 ~我想也不会，对。~
END

//Leila (Amkethran Tavern)
CHAIN IF ~Global("LK#IylosLeila","GLOBAL",1)~ THEN
  LK#IYLJ LK#IylosLeila ~蕾拉？是——是你吗？~ [LK#IBLN]
  == AMwenc01 ~好久没在这附近见你了，孩子。~ DO ~IncrementGlobal("LK#IylosLeila","GLOBAL",1)~
  == LK#IYLJ  ~我不再是孩子了，蕾拉。~
  == AMwenc01 ~不，我想你确实不是了。（叹气）你还好吗？~
  == LK#IYLJ  ~还算好。~
  == AMwenc01 ~回家吧。~
  == LK#IYLJ  ~也许有一天……眼下，我对巴尔萨扎和<CHARNAME>的职责让我回不去。~ [LK#I141]  = ~蕾拉，我——~ [LK#I142]
  == AMwenc01 ~我们想你，伊洛斯。修道院有些日子空得很……人人都在备战，百姓人心惶惶——谁都不知道该怎么办，而巴尔萨扎对局势什么也没做。你知道吗，他几乎把阿姆凯斯兰的控制权交给了卡洛。~
  == LK#IYLJ  ~他什么？！~
  == AMwenc01 ~你听见了。听着，伊洛斯——求你，你得快点回来。你离开太久了。~
  == LK#IYLJ  ~我——我不能，蕾拉。对不起。~
  == AMwenc01 ~哦，孩子……~ = ~保重自己……别去太久。~
  == LK#IYLJ  ~我尽力。~
EXIT

// -------------------------------------
// Assorted Plot
// -------------------------------------
// Melissan, Siege camp
INTERJECT_COPY_TRANS SARMEL01 81 LK#IylosMelissanBalthazar
  == LK#IYLJ  IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~You know Balthazar?~
  == SARMEL01 ~其实相当好。我过去和他共事过——我们是朋友。~
  == LK#IYLJ  ~他从没跟我提起过你，梅丽珊。那是为什么？~
  == SARMEL01 ~也许那不是眼下最要紧的事，修士。~
  == LK#IYLJ  ~修道院不会庇护<CHARNAME>，梅丽珊；我想你会发现自己是大大失望了。~
  == SARMEL01 ~也许吧，可我相信他会给予援手。~
END

// Jamis Tombelthen
INTERJECT_COPY_TRANS AMTGEN01 1 LK#IylosTomelthen
  == LK#IYLJ  IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~Touch me, or any of these people, Captain, and you will find yourself regretting your decision to come here.  <CHARNAME> and his friends are under the protection of the Monastery of Amkethran, and the Monastery will *not* stand for needless violence.~
  == AMTGEN01 ~<CHARNAME>的死已由泰瑟王冠下令，我无能为力。进攻！~
END


// -------------------------------------
// Abazigal's Stronghold
// -------------------------------------
// Monk
I_C_T BAZMONK 3 LK#IylosMonkAbaz
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos") !StateCheck("Iylos",CD_STATE_NOTVALID)~ THEN ~If I see Balthazar again, noble Monk, I will tell him of your sacrifice and dedication.  Sleep well, brother.~
  == BAZMONK ~谢谢……~
END


// -------------------------------------
// Throne of Bhaal
// -------------------------------------
// God Advice
INTERJECT_COPY_TRANS FINSOL01 27 LK#IylosFinSol
  == LK#IYLJ IF ~InParty("Iylos") InMyArea("Iylos")~ THEN ~I must advise against this, <CHARNAME>.  Power does things to people, such as Amelissan here.  I am begging you...do not do this.  Don't become another Amelissan, or Irenicus, or Bodhi.~ = ~保持凡人，保持清醒。仔细考虑这个决定。决定之前，把*一切*都权衡清楚。~
END


// -------------------------------------
// Other...stuff
// -------------------------------------

// Post Decision Comment
EXTEND_BOTTOM FINSOL01 29
  IF ~InParty("Iylos") Global("LK#IylosPCGod","GLOBAL",0)~ THEN DO ~SetGlobal("LK#IylosPCGod","GLOBAL",1)~ EXTERN LK#IYLJ LK#IylosPCGodNE
END

EXTEND_BOTTOM FINSOL01 30
  IF ~InParty("Iylos") Global("LK#IylosPCGod","GLOBAL",0)~ THEN DO ~SetGlobal("LK#IylosPCGod","GLOBAL",1)~ EXTERN LK#IYLJ LK#IylosPCGodNE
END

EXTEND_BOTTOM FINSOL01 31
  IF ~InParty("Iylos") Global("LK#IylosPCGod","GLOBAL",0)~ THEN DO ~SetGlobal("LK#IylosPCGod","GLOBAL",1)~ EXTERN LK#IYLJ LK#IylosPCGod
END

EXTEND_BOTTOM FINSOL01 32
  IF ~InParty("Iylos") Global("LK#IylosPCNotGod","GLOBAL",0)~ THEN DO ~SetGlobal("LK#IylosPCNotGod","GLOBAL",1)~ EXTERN LK#IYLJ LK#IylosPCNotGod
END

APPEND LK#IYLJ

  IF ~~ LK#IylosPCGodNE
    SAY ~那你已经迷失了……我祈祷你别变成你看起来要变成的那头野兽，<CHARNAME>。我不会忘记，你也不会。你本还有最后一次救赎的机会，你没有选它？你是个蠢货。~
    COPY_TRANS FINSOL01 29
  END

  IF ~~ LK#IylosPCGod
    SAY ~我希望你不会被你将掌握的力量吞噬，<CHARNAME>……我真的希望。祝你好运。~
    COPY_TRANS FINSOL01 31
  END

  IF ~~ LK#IylosPCNotGod
    SAY ~你不知道我听到这话有多宽慰，<CHARNAME>。谢谢你。~
    COPY_TRANS FINSOL01 32
  END

END


// Volo
EXTEND_TOP SARVOLO 9 #16
  + ~InParty("Iylos")~ + ~Tell me about Iylos.~ + LK#Iylos_Volo
END

APPEND SARVOLO

  IF ~~ LK#Iylos_Volo
    SAY ~伊洛斯？那是谁？我不记得……~
    ++ ~就是那边那个人。~ EXTERN LK#IYLJ volo2
    ++ ~那个瞪着你的人。~ EXTERN LK#IYLJ volo2
    ++ ~你猜。~ EXTERN LK#IYLJ volo2
  END


  IF ~~ LK#Iylos_3
    SAY ~好。~ = ~从他阿姆凯斯兰修道院的卑微出身出发，伊洛斯已成为行走费伦地表最强修士之一。近身搏斗无人能敌，他的异能连最有天赋的法师都为之震惊。起初他怀疑<CHARNAME>的动机，如今伊洛斯作为忠实的同伴与朋友追随<CHARNAME>。他以智慧与勇气闻名，他——~
    IF ~~ EXTERN LK#IYLJ volo_3
  END

END


APPEND LK#IYLJ

  IF ~~ volo2
    SAY ~赶紧说吧。~
    IF ~~ EXTERN SARVOLO LK#Iylos_3
  END

  IF ~~ volo_3
    SAY ~<CHARNAME>，我们能不能把这人留给他那点可悲的胡扯？他嘴里、笔下从来没吐出过一句真话，我确信将来也不会有。~ 
    IF ~~ EXTERN SARVOLO 9
  END

END