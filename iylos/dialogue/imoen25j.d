//-------------------------------------
// Imoen Dialogue with PC about Iylos
//-------------------------------------
APPEND IMOEN25J

  IF WEIGHT #-1 ~Global("LK#Iylos_ImmyTalk","GLOBAL",1)~ LK#Imoen_Talk
  SAY ~嘿，小<PRO_BROTHERSISTER>，你感觉怎么样？伊洛斯让你难受了？~
  ++ ~算不上。他不过是个烦人的东西。~ DO ~IncrementGlobal("LK#Iylos_ImmyTalk","GLOBAL",1)~ + LK#IT_1
  ++ ~跟平常一样……他就是那么气人！他怎么就不明白我不邪恶，也不想见谁就杀谁？！~ DO ~IncrementGlobal("LK#Iylos_ImmyTalk","GLOBAL",1)~ + LK#IT_2
  ++ ~不，只是……~ DO ~IncrementGlobal("LK#Iylos_ImmyTalk","GLOBAL",1)~ + LK#IT_3
  ++ ~不，可我觉得，光是活着就让他难受了。~ DO ~IncrementGlobal("LK#Iylos_ImmyTalk","GLOBAL",1)~ + LK#IT_2
  ++ ~你*自己*怎么样，爱蒙？一周没好好睡的人可不是我……~ DO ~IncrementGlobal("LK#Iylos_ImmyTalk","GLOBAL",1)~ + LK#IT_4
  ++ ~伊洛斯？爱蒙，我们在打仗，你却问*伊洛斯*烦不烦我？~ DO ~IncrementGlobal("LK#Iylos_ImmyTalk","GLOBAL",1)~ + LK#IT_2
  ++ ~我们回头再聊行吗？我这会儿有点忙，爱蒙。~ DO ~IncrementGlobal("LK#Iylos_ImmyTalk","GLOBAL",1)~ + LK#IT_5
  END

  IF ~~ LK#IT_1
    SAY ~他当然是！老想让我搞什么冥想那套，唉——还有什么比这更无聊？~
    ++ ~Not much that I can think of, no.~ + LK#IT_11
    ++ ~Meditation is actually quite interesting, Imoen, if you'd just give it a try.~ + LK#IT_12
    ++ ~Yeah.  He's a bit of a bore, really.  I'm not really sure why I keep him--I guess he's just a good fighter.  Not good for much else, though--'specially not conversation!~ + LK#IT_13
  END

  IF ~~ LK#IT_2
    SAY ~嘿。他老想让我搞什么冥想那套，唉——还有什么比这更无聊？~
    ++ ~Not much that I can think of, no.~ + LK#IT_11
    ++ ~Meditation is actually quite interesting, Imoen, if you'd just give it a try.~ + LK#IT_12
    ++ ~Yeah.  He's a bit of a bore, really.  I'm not really sure why I keep him--I guess he's just a good fighter.  Not good for much else, though--'specially not conversation!~ + LK#IT_13
  END

  IF ~~ LK#IT_3
    SAY ~只是什么？~
    ++ ~The nightmares...they're back again.  And worse than before.~ + LK#IT_31
    ++ ~Nothing.  How're *you*?~ + LK#IT_4
    ++ ~This whole war...all the fighting, it's just getting me down.  I'm not sure what to do--I feel like I'm being led around by the nose, and I can't do anything about it.~ + LK#IT_32
    ++ ~Bhaal.  The prophecy.~ + LK#IT_33
  END

  IF ~~ LK#IT_4
    SAY ~我没事。真的！~ = ~好，好！唉。有时候真觉得你是我妈！~ = ~只是那些噩梦……不管我做什么，它们老来。我试过睡前喝牛奶，试过向任何肯听的神祈祷——显然没有神肯听——把自己累到做不了梦……可梦总是来。~ = ~（叹气）我想我只能习惯了。你也是这么过来的，对吧？所以这不是不可能。~
    ++ ~No, it's not.  And I'm here with you, remember?~ + LK#IT_41
    ++ ~It gets hard, sometimes.  To keep going on.~ + LK#IT_42
    ++ ~Imoen...I've been having nightmares for almost a year, and I'm still not used to it.  I don't think I ever *will* get used to it.~ + LK#IT_43
  END
  
  IF ~~ LK#IT_5
    SAY ~当然，小<PRO_BROTHERSISTER>。等你不那么忙着装正经的时候，戳我一下就行！~
    IF ~~ THEN EXIT
  END

  IF ~~ LK#IT_11
    SAY ~总之——只是想来看看你，确认你还好。因为有时你脸上就会露出那种……那种恍惚出神的样子，我却没法陪在你身边。我是你姐姐，我应该能……可我不能。~ = ~看着你难过，我也难受。嘿，这很傻，可这是真的。我最不愿见你不快乐，<CHARNAME>——你知道我爱你。~
    ++ ~I know, Imoen.  I love you too.~ + LK#IT_111
    ++ ~...Wait.  You said the 'L' word.  What've you done?~ + LK#IT_112
    ++ ~Thanks, Imoen.  It...it means a lot.  And now that I've got you, I'm going to tickle you into submission!~ + LK#IT_113
    ++ ~Thanks, Imoen.~ + LK#IT_111
  END

  IF ~~ LK#IT_12
    SAY ~当——然。就跟煎饼吃起来像蜗牛一样真！~ = ~总之，我只是想来看你，确认你还好。因为有时你脸上就会露出那种……那种恍惚出神的样子，我却没法陪在你身边。我是你姐姐，我应该能……可我不能。~ = ~看着你难过，我也难受。嘿，这很傻，可这是真的。我最不愿见你不快乐，<CHARNAME>——你知道我爱你。~
    ++ ~I know, Imoen.  I love you too.~ + LK#IT_111
    ++ ~...Wait.  You said the 'L' word.  What've you done?~ + LK#IT_112
    ++ ~Thanks, Imoen.  It...it means a lot.  And now that I've got you, I'm going to tickle you into submission!~ + LK#IT_113
    ++ ~Thanks, Imoen.~ + LK#IT_111
  END

  IF ~~ LK#IT_13
    SAY ~你说得没错！~ = ~总之，我只是想来看你，确认你还好。因为有时你脸上就会露出那种……那种恍惚出神的样子，我却没法陪在你身边。我是你姐姐，我应该能……可我不能。~ = ~看着你难过，我也难受。嘿，这很傻，可这是真的。我最不愿见你不快乐，<CHARNAME>——你知道我爱你。~
    ++ ~I know, Imoen.  I love you too.~ + LK#IT_111
    ++ ~...Wait.  You said the 'L' word.  What've you done?~ + LK#IT_112
    ++ ~Thanks, Imoen.  It...it means a lot.  And now that I've got you, I'm going to tickle you into submission!~ + LK#IT_113
    ++ ~Thanks, Imoen.~ + LK#IT_111
  END

  IF ~~ LK#IT_31
    SAY ~它——它们还会更糟？天哪，你现在都这样了，一个月后我会成什么样？~ = ~呃……~ = ~总之，我只是想来看你，确认你还好。因为有时你脸上就会露出那种……那种恍惚出神的样子，我却没法陪在你身边。我是你姐姐，我应该能……可我不能。~ = ~看着你难过，我也难受。嘿，这很傻，可这是真的。我最不愿见你不快乐，<CHARNAME>——你知道我爱你。~
    ++ ~I know, Imoen.  I love you too.~ + LK#IT_111
    ++ ~...Wait.  You said the 'L' word.  What've you done?~ + LK#IT_112
    ++ ~Thanks, Imoen.  It...it means a lot.  And now that I've got you, I'm going to tickle you into submission!~ + LK#IT_113
    ++ ~Thanks, Imoen.~ + LK#IT_111
  END

  IF ~~ LK#IT_32
    SAY ~我想这事你也没什么办法，是吧？~ = ~哦，可怜的小<CHARNAME>……~ = ~总之，我只是想来看你，确认你还好。因为有时你脸上就会露出那种……那种恍惚出神的样子，我却没法陪在你身边。我是你姐姐，我应该能……可我不能。~ = ~看着你难过，我也难受。嘿，这很傻，可这是真的。我最不愿见你不快乐，<CHARNAME>——你知道我爱你。~
    ++ ~I know, Imoen.  I love you too.~ + LK#IT_111
    ++ ~...Wait.  You said the 'L' word.  What've you done?~ + LK#IT_112
    ++ ~Thanks, Imoen.  It...it means a lot.  And now that I've got you, I'm going to tickle you into submission!~ + LK#IT_113
    ++ ~Thanks, Imoen.~ + LK#IT_111
  END

  IF ~~ LK#IT_33
    SAY ~那就是老样子了。（叹气）~ = ~噩梦对我来说最难受……不管我做什么，它们老来。我试过睡前喝牛奶，试过向任何肯听的神祈祷——显然没有神肯听——把自己累到做不了梦……可梦总是来。~ = ~（叹气）我想我只能习惯了。你也是这么过来的，对吧？所以这不是不可能。~
    ++ ~No, it's not.  And I'm here with you, remember?~ + LK#IT_41
    ++ ~It gets hard, sometimes.  To keep going on.~ + LK#IT_42
    ++ ~Imoen...I've been having nightmares for almost a year, and I'm still not used to it.  I don't think I ever *will* get used to it.~ + LK#IT_43
  END

  IF ~~ LK#IT_41
    SAY ~我知道。我爱你，你知道的，<CHARNAME>。~
    ++ ~I know, Imoen.  I love you too.~ + LK#IT_111
    ++ ~...Wait.  You said the 'L' word.  What've you done?~ + LK#IT_112
    ++ ~Thanks, Imoen.  It...it means a lot.  And now that I've got you, I'm going to tickle you into submission!~ + LK#IT_113
    ++ ~Thanks, Imoen.~ + LK#IT_111
  END

  IF ~~ LK#IT_42
    SAY ~可你还是往前走。你没法不走。~ = ~总之，我只是想来看你，确认你还好。因为有时你脸上就会露出那种……那种恍惚出神的样子，我却没法陪在你身边。我是你姐姐，我应该能……可我不能。~ = ~看着你难过，我也难受。嘿，这很傻，可这是真的。我最不愿见你不快乐，<CHARNAME>——你知道我爱你。~
    ++ ~I know, Imoen.  I love you too.~ + LK#IT_111
    ++ ~...Wait.  You said the 'L' word.  What've you done?~ + LK#IT_112
    ++ ~Thanks, Imoen.  It...it means a lot.  And now that I've got you, I'm going to tickle you into submission!~ + LK#IT_113
    ++ ~Thanks, Imoen.~ + LK#IT_111
  END

  IF ~~ LK#IT_43
    SAY ~嘿，你现在都这样了，一个月后我会成什么样？~ = ~呃……~ = ~总之，我只是想来看你，确认你还好。因为有时你脸上就会露出那种……那种恍惚出神的样子，我却没法陪在你身边。我是你姐姐，我应该能……可我不能。~ = ~看着你难过，我也难受。嘿，这很傻，可这是真的。我最不愿见你不快乐，<CHARNAME>——你知道我爱你。~
    ++ ~I know, Imoen.  I love you too.~ + LK#IT_111
    ++ ~...Wait.  You said the 'L' word.  What've you done?~ + LK#IT_112
    ++ ~Thanks, Imoen.  It...it means a lot.  And now that I've got you, I'm going to tickle you into submission!~ + LK#IT_113
    ++ ~Thanks, Imoen.~ + LK#IT_111
  END

  IF ~~ LK#IT_111
    SAY ~我高兴——因为要把你背上那块「踢我」的牌子摘下来，可能还得费点功夫。（咯咯笑）~ = ~可这不改变我爱你这件事。就算你是个好骗的软柿子。~
    IF ~~ EXIT
  END

  IF ~~ LK#IT_112
    SAY ~啊……没什么。~ = ~除了你背上那块，你知道的，「踢我」牌子。摘下来可能要费点功夫。~ = ~可这不改变我爱你这件事。就算你是个好骗的软柿子。~
    IF ~~ EXIT
  END

  IF ~~ LK#IT_113
    SAY ~啊！不，不！（咯咯笑）~ = ~哈哈，我跑掉了——有本事来追我呀——！~ = ~除了你背上那块，你知道的，「踢我」牌子。摘下来可能要费点功夫。~ = ~可这不改变我爱你这件事。就算你是个好骗的软柿子。~
    IF ~~ EXIT
  END

END