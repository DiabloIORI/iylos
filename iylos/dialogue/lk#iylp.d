// Leaving/Rejoining Dialogues
BEGIN LK#IYLP

  // Leaving
  IF ~Global("LK#IylosJoined","GLOBAL",1)~ LeaveGroup
    SAY ~你要我走吗，<CHARNAME>？~ [LK#IBLN]
    ++ ~Yes.  I'm sorry Iylos, but I just don't have the room...is there somewhere you could go where I could perhaps pick you up at a later date?~ + pickup
    ++ ~不，抱歉，我弄错了。回队伍里来。~ DO ~JoinParty() SetGlobal("LK#IylosJoined","GLOBAL",1)~ EXIT
  END

  IF ~~ pickup
    SAY ~你若还用得上我，我就在阿姆凯斯兰修道院门前，<CHARNAME>——但请放心，我们会盯着。再会。~
    IF ~~ DO ~SetGlobal("LK#IylosLeftGood","GLOBAL",1) EscapeAreaMove("AR5500",958,1567,5)~ EXIT
  END

  // Rejoining
  IF ~Global("LK#IylosJoined","GLOBAL",0)~ JoinGroup
    SAY ~你回来了，<CHARNAME>。你需要我，还是只是来闲扯？~ [LK#IBLN]
    ++ ~Idle chatter, I'm afraid.  How are you?~ + chatter
    ++ ~I'd like you to rejoin, Iylos, if you don't mind.~ + rejoin
    ++ ~Just wanted to check to see if you were actually here, and that you weren't spying on me or otherwise.~ + spying
  END

  IF ~~ chatter
    SAY ~还算好。你最好快走——战争不会等你。~
    ++ ~当然。再会！~ EXIT
    ++ ~Wait!  I'd like you to rejoin the party.~ + rejoin
  END

  IF ~~ rejoin
    SAY ~随你。~ [LK#I221]   IF ~~ DO ~JoinParty() SetGlobal("LK#IylosJoined","GLOBAL",1)~ EXIT
  END

  IF ~~ spying
    SAY ~绝无此事。不过还有别人在盯着你，<CHARNAME>——当心。~
    ++ ~What others?~ + others
    ++ ~Thanks for the warning.~ + warning
    ++ ~I guess I'll be going, then.  Bye!~ + bye
  END

  IF ~~ others
    SAY ~我不确定，可我——和我认识的一些人——见过他们。当心。你最好快走——战争不会等你。~
    ++ ~当然。再会！~ EXIT
    ++ ~Wait!  I'd like you to rejoin the party.~ + rejoin
  END

  IF ~~ warning
    SAY ~没问题。再会，<CHARNAME>。~ [LK#I224]
    IF ~~ EXIT
  END

  IF ~~ bye
    SAY ~再会，<CHARNAME>。~ [LK#I25]
    IF ~~ EXIT
  END