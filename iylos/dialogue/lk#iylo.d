//Contents

// Joining Dialogue
// Leaving/Rejoining Dialogues

// PC Dialogues 1-4
// PC Friendship 5-7
// Non-Friendship Dialogue (PC 5)
// Scenery 1--Pocket Plane
// Plot 1--Death of a Pocket Plane
// Plot 2--3 Bhaalspawn Dead
// Plot 3--4 Bhaalspawn Dead
// Plot 4--Balthazar Dead

// SoA Dialogues
BEGIN ~LK#IYSO~
BEGIN ~BLK#ISO~
BEGIN ~LK#IYSJ~
BEGIN ~LK#IYSP~

// ToB Non-party dialogue
BEGIN ~LK#IYLO~

  IF ~NumTimesTalkedTo(0)~ Intro
    SAY ~<CHARNAME>，智者葛立安的<PRO_SONDAUGHTER>，萨瑞沃克·安切夫的杀手，乔内莱斯·艾瑞尼卡斯的毁灭者……巴尔之子。~ [LK#IBLN]
    ++ ~Who are you?~ + Intro_1
    ++ ~Have I really gained so many titles?~ + Intro_2
    ++ ~这些称号不怎么好听，是吧？（叹气）我想现在也做不了什么……我能帮你什么？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + Intro_1
    ++ ~Yes, I'm a Bhaalspawn.  Do you have a problem with that?~ + Intro_3
    ++ ~我明白了。你找我有什么事，大人……？~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",1)~ + Intro_1
    ++ ~是，是，我确实了不起！可你忘了剑湾之恐怖、剑海之灾、博德之门之救主。你要是记不住这些，「阁下」也行。~ DO ~IncrementGlobal("LK#IylosHappiness","GLOBAL",-2)~ + Intro_1
  END

  IF ~~ Intro_1
    SAY ~我是伊洛斯·米尔丹，有一个一直在密切注视你的人派我来加入你。我要查明你的动机，看看你是否合我们的意。我是一位颇有分量的修士——我很确定自己能帮上你这样的人，巴尔之子。~ [LK#I202]
    ++ ~What are you trying to imply, monk?~ + Intro_11
    ++ ~Well, what are we standing around talking for!  Get in line, then.~ + Intro_111
    ++ ~I see.  Well, I have no need for an arrogant, annoying monk at the moment--shall I notify you when I do need one?~ + Intro_12
    ++ ~I'm sure you would be helpful--but who are these who watch me?  Why?~ + Intro_13
    ++ ~Such as I?  Are you telling me that I am weak, or powerless, perhaps?  I have powers beyond your wildest dreams, fool.~ + Intro_14
  END

  IF ~~ Intro_2
    SAY ~我是伊洛斯·米尔丹，有一个一直在密切注视你的人派我来加入你。我要查明你的动机，看看你是否合我们的意。我是一位颇有分量的修士——我很确定自己能帮上你这样的人，巴尔之子。~ [LK#I202]
    ++ ~What are you trying to imply, monk?~ + Intro_11
    ++ ~Well, what are we standing around talking for!  Get in line, then.~ + Intro_111
    ++ ~I see.  Well, I have no need for an arrogant, annoying monk at the moment--shall I notify you when I will need one?~ + Intro_12
    ++ ~I'm sure you would be helpful--but who are these who watch me?  Why?~ + Intro_13
    ++ ~Such as I?  Are you telling me that I am weak, or powerless, perhaps?  I have powers beyond your wildest dreams, fool.~ + Intro_13
  END

  IF ~~ Intro_3
    SAY ~我是伊洛斯·米尔丹，一个注视着你的人派我来加入你、查明你的动机，并弄清你是否合我们的意。我是一位颇有分量的修士——我很确定自己能帮上你这样的人，巴尔之子。~ [LK#203]
    ++ ~What are you trying to imply, monk?~ + Intro_11
    ++ ~Well, what are we standing around talking for!  Get in line, then.~ + Intro_111
    ++ ~I see.  Well, I have a need for an arrogant, annoying monk at the moment--shall I notify you when I do need one?~ + Intro_12
    ++ ~I'm sure you would be helpful--but who are these who watch me?  Why?~ + Intro_13
    ++ ~Such as I?  Are you telling me that I am weak, or powerless, perhaps?  I have powers beyond your wildest dreams, fool.~ + Intro_12
  END

  IF ~~ Intro_11
    SAY ~你需要帮手。你陷在一桩几乎一无所知的事里；四面受敌，分不清敌友。我说过，我是位颇有影响力的修士；我熟悉这片地方，只要你知道怎么离开这里，我就能帮你。~ [LK#I204]  = ~我知道有哪些人在追你、想杀你。比如伊拉萨拉。~ [LK#I205]
    ++ ~What's the catch?~ + Intro_111
    ++ ~You seem to speak truth...but what would you gain from joining me?~ + Intro_111
    ++ ~(Remain silent)~ + Intro_111
    ++ ~You know of Illasera?~ + Intro_112
  END

  IF ~~ Intro_12
    SAY ~哼。~ = ~你需要帮手。你陷在一桩几乎一无所知的事里；四面受敌，分不清敌友。我说过，我是位颇有影响力的修士；我熟悉这片地方，只要你知道怎么离开这里，我就能帮你。~ [LK#I206]  = ~我知道有哪些人在追你、想杀你。比如伊拉萨拉。~ [LK#I205]
    ++ ~What's the catch?~ + Intro_111
    ++ ~You seem to speak truth...but what would you gain from joining me?~ + Intro_111
    ++ ~(Remain silent)~ + Intro_111
    ++ ~You know of Illasera?~ + Intro_112
  END

  IF ~~ Intro_13
    SAY ~这眼下不关你的事——你陷在一桩几乎一无所知的事里；四面受敌，分不清敌友。我说过，我是位颇有影响力的修士；我熟悉这片地方，只要你知道怎么离开这里，我就能帮你。~ [LK#I207]  = ~我知道有哪些人在追你、想杀你。比如伊拉萨拉。~ [LK#I205]
    ++ ~What's the catch?~ + Intro_111
    ++ ~You seem to speak truth...but what would you gain from joining me?~ + Intro_111
    ++ ~(Remain silent)~ + Intro_111
    ++ ~You know of Illasera?~ + Intro_112
  END

  IF ~~ Intro_14
    SAY ~你陷在一桩几乎一无所知的事里；四面受敌，分不清敌友。我说过，我是位颇有影响力的修士；我熟悉这片地方，只要你知道怎么离开这里，我就能帮你。~ [LK#I206]  = ~我知道有哪些人在追你、想杀你。比如伊拉萨拉。~ [LK#I205]
    ++ ~What's the catch?~ + Intro_111
    ++ ~You seem to speak truth...but what would you gain from joining me?~ + Intro_111
    ++ ~(Remain silent)~ + Intro_111
    ++ ~You know of Illasera?~ + Intro_112
  END

  IF ~~ Intro_111
    SAY ~我来，是要判断你是否值得我们相助。若我判定你值得，我就会确保你得到所需的一切援助。你当然可以拒绝这份援手，但不管你怎么决定，要知道我们*会*盯着你。~ [LK#I208]
    ++ ~Fine!  Come with me...for now.~ + Intro_1111
    ++ ~Join with me, then.~ + Intro_1111
    ++ ~I...don't think so.  No thanks.~ + Intro_1112
    ++ ~Free to make a decision?  It certainly doesn't *sound* like it...~ + Intro_1113
    ++ ~Do you really think me that foolish?  I will not accept an offer which is so obviously strewn with subterfuge...~ + Intro_1112
  END

  IF ~~ Intro_112
    SAY ~是的，我知道伊拉萨拉。我也知道另外一些想杀你的人。~ [LK#I209]  = ~我也来此判断你是否值得我们相助。若我判定你值得，我就会确保你得到所需的一切援助。你当然可以拒绝这份援手，但不管你怎么决定，要知道我们*会*盯着你。~ [LK#I210]
    ++ ~Fine!  Come with me...for now.~ + Intro_1111
    ++ ~Join with me, then.~ + Intro_1111
    ++ ~I...don't think so.  No thanks.~ + Intro_1112
    ++ ~Free to make a decision?  It certainly doesn't *sound* like it...~ + Intro_1113
    ++ ~Do you really think me that foolish?  I will not accept an offer which is so obviously strewn with subterfuge...~ + Intro_1112
  END

  IF ~~ Intro_1111
    SAY ~你不会后悔这个决定。~ [LK#I211]   IF ~~ THEN DO ~JoinParty() SetGlobal("LK#IylosJoined","GLOBAL",1)~ EXIT
  END

  IF ~~ Intro_1112
    SAY ~你很确定？~ [LK#I212]
    ++ ~Yes.~ + Intro_11121
    ++ ~Actually, I've changed my mind...you can come into the group as long as there is no foul play involved.  Deal?~ + Intro_11122
  END

  IF ~~ Intro_1113
    SAY ~你永远有作决定的自由，巴尔之子。~ [LK#I213]  = ~那么，你到底要不要帮助？~ [LK#I214]
    ++ ~I would appreciate the help.~ + Intro_1111
    ++ ~Bah, I do NOT wish any help from such as you.  Leave me be, monk!~ + Intro_1112
  END

  IF ~~ Intro_11121
    SAY ~好。放心，我会盯着……我和许多别的人都会。再会，<CHARNAME>。~ [LK#I215]
    IF ~~ DO ~SetGlobal("LK#IylosLeftGood","GLOBAL",1) EscapeAreaMove("AR5500",958,1567,5)~ EXIT
  END

  IF ~~ Intro_11122
    SAY ~好。你不会后悔这个决定。~ [LK#I216]
    IF ~~ DO ~JoinParty() SetGlobal("LK#IylosJoined","GLOBAL",1)~ EXIT
  END