Resident data ends at 63d4, program starts at 63d4, file ends at 2a874

Starting analysis pass at address 63d4

End of analysis pass, low address = 63d4, high address = 200f4

[Start of code at 63d4]

Main routine 63d4, 0 locals

 63d5:  e0 3f 18 f7 ff          CALL_VS         63dc -> Gef
 63da:  ba                      QUIT            

Routine 63dc, 0 locals

 63dd:  f9 03 7e 9d 00 16 00 49 CALL_VN         1fa74 (#0016,#0049)
 63e5:  b0                      RTRUE           

Routine 63e8, 0 locals

 63e9:  b0                      RTRUE           

Routine 63ec, 1 local

 63ed:  50 01 00 00             LOADB           L00,#00 -> -(SP)
 63f1:  e9 7f ff                PULL            Gef
 63f4:  c1 95 ff 61 65 69 d4    JE              Gef,#61,#65,#69 [TRUE] 640d
 63fb:  c1 95 ff 6f 75 41 cd    JE              Gef,#6f,#75,#41 [TRUE] 640d
 6402:  c1 95 ff 45 49 4f c6    JE              Gef,#45,#49,#4f [TRUE] 640d
 6409:  41 ff 55 43             JE              Gef,#55 [FALSE] 640e
 640d:  b0                      RTRUE           
 640e:  b1                      RFALSE          

Routine 6410, 1 local

 6411:  2d ff 01                STORE           Gef,L00
 6414:  41 ff 07 4a             JE              Gef,#07 [FALSE] 6420
 6418:  b2 ...                  PRINT           "north"
 641d:  8c 00 90                JUMP            64ae
 6420:  41 ff 08 4a             JE              Gef,#08 [FALSE] 642c
 6424:  b2 ...                  PRINT           "south"
 6429:  8c 00 84                JUMP            64ae
 642c:  41 ff 09 4a             JE              Gef,#09 [FALSE] 6438
 6430:  b2 ...                  PRINT           "east"
 6435:  8c 00 78                JUMP            64ae
 6438:  41 ff 0a 4a             JE              Gef,#0a [FALSE] 6444
 643c:  b2 ...                  PRINT           "west"
 6441:  8c 00 6c                JUMP            64ae
 6444:  41 ff 0b 4c             JE              Gef,#0b [FALSE] 6452
 6448:  b2 ...                  PRINT           "northeast"
 644f:  8c 00 5e                JUMP            64ae
 6452:  41 ff 0d 4c             JE              Gef,#0d [FALSE] 6460
 6456:  b2 ...                  PRINT           "northwest"
 645d:  8c 00 50                JUMP            64ae
 6460:  41 ff 0c 4c             JE              Gef,#0c [FALSE] 646e
 6464:  b2 ...                  PRINT           "southeast"
 646b:  8c 00 42                JUMP            64ae
 646e:  41 ff 0e 4c             JE              Gef,#0e [FALSE] 647c
 6472:  b2 ...                  PRINT           "southwest"
 6479:  8c 00 34                JUMP            64ae
 647c:  41 ff 0f 48             JE              Gef,#0f [FALSE] 6486
 6480:  b2 ...                  PRINT           "up"
 6483:  8c 00 2a                JUMP            64ae
 6486:  41 ff 10 4a             JE              Gef,#10 [FALSE] 6492
 648a:  b2 ...                  PRINT           "down"
 648f:  8c 00 1e                JUMP            64ae
 6492:  41 ff 11 48             JE              Gef,#11 [FALSE] 649c
 6496:  b2 ...                  PRINT           "in"
 6499:  8c 00 14                JUMP            64ae
 649c:  41 ff 12 48             JE              Gef,#12 [FALSE] 64a6
 64a0:  b2 ...                  PRINT           "out"
 64a3:  8c 00 0a                JUMP            64ae
 64a6:  e0 1b 2f 89 09 01 00    CALL_VS         be24 (#09,L00) -> -(SP)
 64ad:  b8                      RET_POPPED      
 64ae:  b0                      RTRUE           

Routine 64b0, 2 locals

 64b1:  a0 01 48                JZ              L00 [FALSE] 64ba
 64b4:  b2 ...                  PRINT           "zero"
 64b9:  b1                      RFALSE          
 64ba:  42 01 00 4b             JL              L00,#00 [FALSE] 64c7
 64be:  b2 ...                  PRINT           "minus "
 64c3:  35 00 01 01             SUB             #00,L00 -> L00
 64c7:  c2 8f 01 03 e8 dd       JL              L00,#03e8 [TRUE] 64e8
 64cd:  d7 8f 01 03 e8 00       DIV             L00,#03e8 -> -(SP)
 64d3:  da 2f 19 2c 00          CALL_2N         64b0 ((SP)+)
 64d8:  b2 ...                  PRINT           " thousand"
 64df:  d8 8f 01 03 e8 01       MOD             L00,#03e8 -> L00
 64e5:  0d 02 01                STORE           L01,#01
 64e8:  42 01 64 80 20          JL              L00,#64 [TRUE] 650b
 64ed:  41 02 01 45             JE              L01,#01 [FALSE] 64f4
 64f1:  b2 ...                  PRINT           ", "
 64f4:  57 01 64 00             DIV             L00,#64 -> -(SP)
 64f8:  da 2f 19 2c 00          CALL_2N         64b0 ((SP)+)
 64fd:  b2 ...                  PRINT           " hundred"
 6504:  58 01 64 01             MOD             L00,#64 -> L00
 6508:  0d 02 01                STORE           L01,#01
 650b:  a0 01 c0                JZ              L00 [TRUE] RFALSE
 650e:  41 02 01 47             JE              L01,#01 [FALSE] 6517
 6512:  b2 ...                  PRINT           " and "
 6517:  2d ff 01                STORE           Gef,L00
 651a:  41 ff 01 48             JE              Gef,#01 [FALSE] 6524
 651e:  b2 ...                  PRINT           "one"
 6521:  8c 01 65                JUMP            6687
 6524:  41 ff 02 48             JE              Gef,#02 [FALSE] 652e
 6528:  b2 ...                  PRINT           "two"
 652b:  8c 01 5b                JUMP            6687
 652e:  41 ff 03 4a             JE              Gef,#03 [FALSE] 653a
 6532:  b2 ...                  PRINT           "three"
 6537:  8c 01 4f                JUMP            6687
 653a:  41 ff 04 4a             JE              Gef,#04 [FALSE] 6546
 653e:  b2 ...                  PRINT           "four"
 6543:  8c 01 43                JUMP            6687
 6546:  41 ff 05 4a             JE              Gef,#05 [FALSE] 6552
 654a:  b2 ...                  PRINT           "five"
 654f:  8c 01 37                JUMP            6687
 6552:  41 ff 06 48             JE              Gef,#06 [FALSE] 655c
 6556:  b2 ...                  PRINT           "six"
 6559:  8c 01 2d                JUMP            6687
 655c:  41 ff 07 4a             JE              Gef,#07 [FALSE] 6568
 6560:  b2 ...                  PRINT           "seven"
 6565:  8c 01 21                JUMP            6687
 6568:  41 ff 08 4a             JE              Gef,#08 [FALSE] 6574
 656c:  b2 ...                  PRINT           "eight"
 6571:  8c 01 15                JUMP            6687
 6574:  41 ff 09 4a             JE              Gef,#09 [FALSE] 6580
 6578:  b2 ...                  PRINT           "nine"
 657d:  8c 01 09                JUMP            6687
 6580:  41 ff 0a 48             JE              Gef,#0a [FALSE] 658a
 6584:  b2 ...                  PRINT           "ten"
 6587:  8c 00 ff                JUMP            6687
 658a:  41 ff 0b 4a             JE              Gef,#0b [FALSE] 6596
 658e:  b2 ...                  PRINT           "eleven"
 6593:  8c 00 f3                JUMP            6687
 6596:  41 ff 0c 4a             JE              Gef,#0c [FALSE] 65a2
 659a:  b2 ...                  PRINT           "twelve"
 659f:  8c 00 e7                JUMP            6687
 65a2:  41 ff 0d 4c             JE              Gef,#0d [FALSE] 65b0
 65a6:  b2 ...                  PRINT           "thirteen"
 65ad:  8c 00 d9                JUMP            6687
 65b0:  41 ff 0e 4c             JE              Gef,#0e [FALSE] 65be
 65b4:  b2 ...                  PRINT           "fourteen"
 65bb:  8c 00 cb                JUMP            6687
 65be:  41 ff 0f 4c             JE              Gef,#0f [FALSE] 65cc
 65c2:  b2 ...                  PRINT           "fifteen"
 65c9:  8c 00 bd                JUMP            6687
 65cc:  41 ff 10 4c             JE              Gef,#10 [FALSE] 65da
 65d0:  b2 ...                  PRINT           "sixteen"
 65d7:  8c 00 af                JUMP            6687
 65da:  41 ff 11 4c             JE              Gef,#11 [FALSE] 65e8
 65de:  b2 ...                  PRINT           "seventeen"
 65e5:  8c 00 a1                JUMP            6687
 65e8:  41 ff 12 4c             JE              Gef,#12 [FALSE] 65f6
 65ec:  b2 ...                  PRINT           "eighteen"
 65f3:  8c 00 93                JUMP            6687
 65f6:  41 ff 13 4c             JE              Gef,#13 [FALSE] 6604
 65fa:  b2 ...                  PRINT           "nineteen"
 6601:  8c 00 85                JUMP            6687
 6604:  42 ff 14 80 80          JL              Gef,#14 [TRUE] 6687
 6609:  43 ff 63 80 7b          JG              Gef,#63 [TRUE] 6687
 660e:  57 01 0a 00             DIV             L00,#0a -> -(SP)
 6612:  e9 7f ff                PULL            Gef
 6615:  41 ff 02 4a             JE              Gef,#02 [FALSE] 6621
 6619:  b2 ...                  PRINT           "twenty"
 661e:  8c 00 55                JUMP            6674
 6621:  41 ff 03 4a             JE              Gef,#03 [FALSE] 662d
 6625:  b2 ...                  PRINT           "thirty"
 662a:  8c 00 49                JUMP            6674
 662d:  41 ff 04 4a             JE              Gef,#04 [FALSE] 6639
 6631:  b2 ...                  PRINT           "forty"
 6636:  8c 00 3d                JUMP            6674
 6639:  41 ff 05 4a             JE              Gef,#05 [FALSE] 6645
 663d:  b2 ...                  PRINT           "fifty"
 6642:  8c 00 31                JUMP            6674
 6645:  41 ff 06 4a             JE              Gef,#06 [FALSE] 6651
 6649:  b2 ...                  PRINT           "sixty"
 664e:  8c 00 25                JUMP            6674
 6651:  41 ff 07 4c             JE              Gef,#07 [FALSE] 665f
 6655:  b2 ...                  PRINT           "seventy"
 665c:  8c 00 17                JUMP            6674
 665f:  41 ff 08 4a             JE              Gef,#08 [FALSE] 666b
 6663:  b2 ...                  PRINT           "eighty"
 6668:  8c 00 0b                JUMP            6674
 666b:  41 ff 09 47             JE              Gef,#09 [FALSE] 6674
 666f:  b2 ...                  PRINT           "ninety"
 6674:  58 01 0a 00             MOD             L00,#0a -> -(SP)
 6678:  a0 00 ce                JZ              (SP)+ [TRUE] 6687
 667b:  b2 ...                  PRINT           "-"
 667e:  58 01 0a 00             MOD             L00,#0a -> -(SP)
 6682:  da 2f 19 2c 00          CALL_2N         64b0 ((SP)+)
 6687:  b0                      RTRUE           

Routine 6688, 3 locals

 6689:  8d 80 d7                PRINT_PADDR     S027
 668c:  58 01 0c 03             MOD             L00,#0c -> L02
 6690:  42 03 0a 45             JL              L02,#0a [FALSE] 6697
 6694:  b2 ...                  PRINT           " "
 6697:  a0 03 45                JZ              L02 [FALSE] 669d
 669a:  0d 03 0c                STORE           L02,#0c
 669d:  e6 bf 03                PRINT_NUM       L02
 66a0:  b2 ...                  PRINT           ":"
 66a3:  57 02 0a 00             DIV             L01,#0a -> -(SP)
 66a7:  e6 bf 00                PRINT_NUM       (SP)+
 66aa:  58 02 0a 00             MOD             L01,#0a -> -(SP)
 66ae:  e6 bf 00                PRINT_NUM       (SP)+
 66b1:  57 01 0c 00             DIV             L00,#0c -> -(SP)
 66b5:  43 00 00 48             JG              (SP)+,#00 [FALSE] 66bf
 66b9:  b2 ...                  PRINT           " pm"
 66bc:  8c 00 05                JUMP            66c2
 66bf:  b2 ...                  PRINT           " am"
 66c2:  b0                      RTRUE           

Routine 66c4, 1 local

 66c5:  c1 8f 01 52 9a 48       JE              L00,"l" [FALSE] 66d1
 66cb:  b2 ...                  PRINT           "look"
 66d0:  b0                      RTRUE           
 66d1:  c1 8f 01 63 cb 48       JE              L00,"z" [FALSE] 66dd
 66d7:  b2 ...                  PRINT           "wait"
 66dc:  b0                      RTRUE           
 66dd:  c1 8f 01 63 a7 4a       JE              L00,"x" [FALSE] 66eb
 66e3:  b2 ...                  PRINT           "examine"
 66ea:  b0                      RTRUE           
 66eb:  c1 80 01 51 83 51 f8 52 01 4a 
                               JE              L00,"i","inv","inventory"
[FALSE] 66fd
 66f5:  b2 ...                  PRINT           "inventory"
 66fc:  b0                      RTRUE           
 66fd:  b1                      RFALSE          

Routine 6700, 1 local

 6701:  4a 01 1e 4a             TEST_ATTR       L00,#1e [FALSE] 670d
 6705:  b2 ...                  PRINT           "those"
 670a:  8c 00 07                JUMP            6712
 670d:  b2 ...                  PRINT           "that"
 6712:  b0                      RTRUE           

Routine 6714, 1 local

 6715:  4a 01 1e 4a             TEST_ATTR       L00,#1e [FALSE] 6721
 6719:  b2 ...                  PRINT           "them"
 671e:  8c 00 05                JUMP            6724
 6721:  b2 ...                  PRINT           "it"
 6724:  b0                      RTRUE           

Routine 6728, 1 local

 6729:  4a 01 1e 48             TEST_ATTR       L00,#1e [FALSE] 6733
 672d:  b2 ...                  PRINT           "are"
 6730:  8c 00 05                JUMP            6736
 6733:  b2 ...                  PRINT           "is"
 6736:  b0                      RTRUE           

Routine 6738, 1 local

 6739:  4a 01 1e 4a             TEST_ATTR       L00,#1e [FALSE] 6745
 673d:  b2 ...                  PRINT           "Those"
 6742:  8c 00 07                JUMP            674a
 6745:  b2 ...                  PRINT           "That"
 674a:  b0                      RTRUE           

Routine 674c, 1 local

 674d:  4a 01 1e 4c             TEST_ATTR       L00,#1e [FALSE] 675b
 6751:  b2 ...                  PRINT           "They're"
 6758:  8c 00 09                JUMP            6762
 675b:  b2 ...                  PRINT           "That's"
 6762:  b0                      RTRUE           

Routine 6764, 2 locals

 6765:  c1 8f f9 10 08 48       JE              Ge9,#1008 [FALSE] 6771
 676b:  b2 ...                  PRINT           "
>"
 6770:  b0                      RTRUE           
 6771:  c1 8f f9 10 07 07 af    JE              Ge9,#1007 [FALSE] 6f25
 6778:  2d ff 01                STORE           Gef,L00
 677b:  41 ff 01 00 23          JE              Gef,#01 [FALSE] 67a1
 6780:  b3 ...                  PRINT_RET       "(considering the first sixteen
objects only)
"
 67a1:  41 ff 02 4f             JE              Gef,#02 [FALSE] 67b2
 67a5:  b3 ...                  PRINT_RET       "Nothing to do!"
 67b2:  41 ff 03 52             JE              Gef,#03 [FALSE] 67c6
 67b6:  b2 ...                  PRINT           " You have died "
 67c3:  8c 07 60                JUMP            6f24
 67c6:  41 ff 04 50             JE              Gef,#04 [FALSE] 67d8
 67ca:  b2 ...                  PRINT           " You have won "
 67d5:  8c 07 4e                JUMP            6f24
 67d8:  41 ff 05 00 8c          JE              Gef,#05 [FALSE] 6867
 67dd:  b2 ...                  PRINT           "
Would you like to RESTART, RESTORE a saved game"
 680a:  80 00 01 5f             JZ              #0001 [FALSE] 682b
 680e:  b2 ...                  PRINT           ", give the FULL score for that
game"
 682b:  41 23 02 00 2e          JE              G13,#02 [FALSE] 685c
 6830:  80 00 01 00 29          JZ              #0001 [FALSE] 685c
 6835:  b2 ...                  PRINT           ", see some suggestions for
AMUSING things to do"
 685c:  b3 ...                  PRINT_RET       " or QUIT?"
 6867:  41 ff 06 00 2d          JE              Gef,#06 [FALSE] 6897
 686c:  b3 ...                  PRINT_RET       "[Your interpreter does not
provide "undo". Sorry!]"
 6897:  41 ff 07 00 2d          JE              Gef,#07 [FALSE] 68c7
 689c:  b3 ...                  PRINT_RET       ""Undo" failed. [Not all
interpreters provide it.]"
 68c7:  41 ff 08 5d             JE              Gef,#08 [FALSE] 68e6
 68cb:  b3 ...                  PRINT_RET       "Please give one of the answers
above."
 68e6:  41 ff 09 59             JE              Gef,#09 [FALSE] 6901
 68ea:  b3 ...                  PRINT_RET       "
It is now pitch dark in here!"
 6901:  41 ff 0a 51             JE              Gef,#0a [FALSE] 6914
 6905:  b3 ...                  PRINT_RET       "I beg your pardon?"
 6914:  41 ff 0b 00 27          JE              Gef,#0b [FALSE] 693e
 6919:  b3 ...                  PRINT_RET       "[You can't "undo" what hasn't
been done!]"
 693e:  41 ff 0c 00 29          JE              Gef,#0c [FALSE] 696a
 6943:  b3 ...                  PRINT_RET       "[Can't "undo" twice in
succession. Sorry!]"
 696a:  41 ff 0d 59             JE              Gef,#0d [FALSE] 6985
 696e:  b3 ...                  PRINT_RET       "[Previous turn undone.]"
 6985:  41 ff 0e 5b             JE              Gef,#0e [FALSE] 69a2
 6989:  b3 ...                  PRINT_RET       "Sorry, that can't be
corrected."
 69a2:  41 ff 0f 53             JE              Gef,#0f [FALSE] 69b7
 69a6:  b3 ...                  PRINT_RET       "Think nothing of it."
 69b7:  41 ff 10 5f             JE              Gef,#10 [FALSE] 69d8
 69bb:  b3 ...                  PRINT_RET       ""Oops" can only correct a
single word."
 69d8:  41 ff 11 00 23          JE              Gef,#11 [FALSE] 69fe
 69dd:  b3 ...                  PRINT_RET       "It is pitch dark, and you
can't see a thing."
 69fe:  41 ff 12 4c             JE              Gef,#12 [FALSE] 6a0c
 6a02:  b2 ...                  PRINT           "yourself"
 6a09:  8c 05 1a                JUMP            6f24
 6a0c:  41 ff 13 55             JE              Gef,#13 [FALSE] 6a23
 6a10:  b3 ...                  PRINT_RET       "As good-looking as ever."
 6a23:  41 ff 14 00 3d          JE              Gef,#14 [FALSE] 6a63
 6a28:  b3 ...                  PRINT_RET       "To repeat a command like
"frog, jump", just say "again", not "frog, again"."
 6a63:  41 ff 15 57             JE              Gef,#15 [FALSE] 6a7c
 6a67:  b3 ...                  PRINT_RET       "You can hardly repeat that."
 6a7c:  41 ff 16 59             JE              Gef,#16 [FALSE] 6a97
 6a80:  b3 ...                  PRINT_RET       "You can't begin with a comma."
 6a97:  41 ff 17 00 2d          JE              Gef,#17 [FALSE] 6ac7
 6a9c:  b3 ...                  PRINT_RET       "You seem to want to talk to
someone, but I can't see whom."
 6ac7:  41 ff 18 59             JE              Gef,#18 [FALSE] 6ae2
 6acb:  b2 ...                  PRINT           "You can't talk to "
 6ada:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 6adf:  b3 ...                  PRINT_RET       "."
 6ae2:  41 ff 19 00 2b          JE              Gef,#19 [FALSE] 6b10
 6ae7:  b3 ...                  PRINT_RET       "To talk to someone, try
"someone, hello" or some such."
 6b10:  41 ff 1a 55             JE              Gef,#1a [FALSE] 6b27
 6b14:  b2 ...                  PRINT           "(first taking "
 6b1f:  da 2f 2f 17 50          CALL_2N         bc5c (G40)
 6b24:  b3 ...                  PRINT_RET       ")"
 6b27:  41 ff 1b 5d             JE              Gef,#1b [FALSE] 6b46
 6b2b:  b3 ...                  PRINT_RET       "I didn't understand that
sentence."
 6b46:  41 ff 1c 00 24          JE              Gef,#1c [FALSE] 6b6d
 6b4b:  b2 ...                  PRINT           "I only understood you as far
as wanting to "
 6b6a:  8c 03 b9                JUMP            6f24
 6b6d:  41 ff 1d 5b             JE              Gef,#1d [FALSE] 6b8a
 6b71:  b3 ...                  PRINT_RET       "I didn't understand that
number."
 6b8a:  41 ff 1e 59             JE              Gef,#1e [FALSE] 6ba5
 6b8e:  b3 ...                  PRINT_RET       "You can't see any such thing."
 6ba5:  41 ff 1f 5b             JE              Gef,#1f [FALSE] 6bc2
 6ba9:  b3 ...                  PRINT_RET       "You seem to have said too
little!"
 6bc2:  41 ff 20 55             JE              Gef,#20 [FALSE] 6bd9
 6bc6:  b3 ...                  PRINT_RET       "You aren't holding that!"
 6bd9:  41 ff 21 00 25          JE              Gef,#21 [FALSE] 6c01
 6bde:  b3 ...                  PRINT_RET       "You can't use multiple objects
with that verb."
 6c01:  41 ff 22 00 25          JE              Gef,#22 [FALSE] 6c29
 6c06:  b3 ...                  PRINT_RET       "You can only use multiple
objects once on a line."
 6c29:  41 ff 23 00 20          JE              Gef,#23 [FALSE] 6c4c
 6c2e:  b2 ...                  PRINT           "I'm not sure what ""
 6c3f:  a7 74                   PRINT_ADDR      G64
 6c41:  b3 ...                  PRINT_RET       "" refers to."
 6c4c:  41 ff 24 00 21          JE              Gef,#24 [FALSE] 6c70
 6c51:  b3 ...                  PRINT_RET       "You excepted something not
included anyway!"
 6c70:  41 ff 25 00 21          JE              Gef,#25 [FALSE] 6c94
 6c75:  b3 ...                  PRINT_RET       "You can only do that to
something animate."
 6c94:  41 ff 26 5b             JE              Gef,#26 [FALSE] 6cb1
 6c98:  b3 ...                  PRINT_RET       "That's not a verb I
recognise."
 6cb1:  41 ff 27 00 33          JE              Gef,#27 [FALSE] 6ce7
 6cb6:  b3 ...                  PRINT_RET       "That's not something you need
to refer to in the course of this game."
 6ce7:  41 ff 28 00 28          JE              Gef,#28 [FALSE] 6d12
 6cec:  b2 ...                  PRINT           "You can't see ""
 6cf9:  a7 74                   PRINT_ADDR      G64
 6cfb:  b2 ...                  PRINT           "" ("
 6d00:  da 2f 2f 17 75          CALL_2N         bc5c (G65)
 6d05:  b3 ...                  PRINT_RET       ") at the moment."
 6d12:  41 ff 29 00 21          JE              Gef,#29 [FALSE] 6d36
 6d17:  b3 ...                  PRINT_RET       "I didn't understand the way
that finished."
 6d36:  41 ff 2a 00 39          JE              Gef,#2a [FALSE] 6d72
 6d3b:  a0 02 4a                JZ              L01 [FALSE] 6d46
 6d3e:  b2 ...                  PRINT           "None"
 6d43:  8c 00 0c                JUMP            6d50
 6d46:  b2 ...                  PRINT           "Only "
 6d4b:  da 2f 2f 2b 02          CALL_2N         bcac (L01)
 6d50:  b2 ...                  PRINT           " of those "
 6d59:  41 02 01 48             JE              L01,#01 [FALSE] 6d63
 6d5d:  b2 ...                  PRINT           "is"
 6d60:  8c 00 05                JUMP            6d66
 6d63:  b2 ...                  PRINT           "are"
 6d66:  b2 ...                  PRINT           " available."
 6d6f:  8c 01 b4                JUMP            6f24
 6d72:  41 ff 2b 4f             JE              Gef,#2b [FALSE] 6d83
 6d76:  b3 ...                  PRINT_RET       "Nothing to do!"
 6d83:  41 ff 2c 5b             JE              Gef,#2c [FALSE] 6da0
 6d87:  b3 ...                  PRINT_RET       "There are none at all
available!"
 6da0:  41 ff 2d 54             JE              Gef,#2d [FALSE] 6db6
 6da4:  b2 ...                  PRINT           "Who do you mean, "
 6db3:  8c 01 70                JUMP            6f24
 6db6:  41 ff 2e 54             JE              Gef,#2e [FALSE] 6dcc
 6dba:  b2 ...                  PRINT           "Which do you mean, "
 6dc9:  8c 01 5a                JUMP            6f24
 6dcc:  41 ff 2f 00 2e          JE              Gef,#2f [FALSE] 6dfd
 6dd1:  b2 ...                  PRINT           "Sorry, you can only have one
item here. Which exactly?"
 6dfa:  8c 01 29                JUMP            6f24
 6dfd:  41 ff 30 00 23          JE              Gef,#30 [FALSE] 6e23
 6e02:  b2 ...                  PRINT           "Whom do you want"
 6e0f:  61 44 22 ca             JE              G34,G12 [TRUE] 6e1b
 6e13:  b2 ...                  PRINT           " "
 6e16:  da 2f 2f 17 44          CALL_2N         bc5c (G34)
 6e1b:  b2 ...                  PRINT           " to "
 6e20:  8c 01 03                JUMP            6f24
 6e23:  41 ff 31 00 23          JE              Gef,#31 [FALSE] 6e49
 6e28:  b2 ...                  PRINT           "What do you want"
 6e35:  61 44 22 ca             JE              G34,G12 [TRUE] 6e41
 6e39:  b2 ...                  PRINT           " "
 6e3c:  da 2f 2f 17 44          CALL_2N         bc5c (G34)
 6e41:  b2 ...                  PRINT           " to "
 6e46:  8c 00 dd                JUMP            6f24
 6e49:  41 ff 32 00 41          JE              Gef,#32 [FALSE] 6e8d
 6e4e:  b2 ...                  PRINT           "Your score has just gone "
 6e61:  43 02 00 48             JG              L01,#00 [FALSE] 6e6b
 6e65:  b2 ...                  PRINT           "up"
 6e68:  8c 00 0b                JUMP            6e74
 6e6b:  35 00 02 02             SUB             #00,L01 -> L01
 6e6f:  b2 ...                  PRINT           "down"
 6e74:  b2 ...                  PRINT           " by "
 6e79:  da 2f 2f 2b 02          CALL_2N         bcac (L01)
 6e7e:  b2 ...                  PRINT           " point"
 6e83:  43 02 01 45             JG              L01,#01 [FALSE] 6e8a
 6e87:  b2 ...                  PRINT           "s"
 6e8a:  8c 00 99                JUMP            6f24
 6e8d:  41 ff 33 00 3d          JE              Gef,#33 [FALSE] 6ecd
 6e92:  b3 ...                  PRINT_RET       "(Since something dramatic has
happened, your list of commands has been cut short.)"
 6ecd:  41 ff 34 00 37          JE              Gef,#34 [FALSE] 6f07
 6ed2:  b2 ...                  PRINT           "
Type a number from 1 to "
 6ee7:  e6 bf 02                PRINT_NUM       L01
 6eea:  b3 ...                  PRINT_RET       ", 0 to redisplay or press
ENTER."
 6f07:  41 ff 35 5b             JE              Gef,#35 [FALSE] 6f24
 6f0b:  b3 ...                  PRINT_RET       "
[Please press SPACE.]"
 6f24:  b0                      RTRUE           
 6f25:  c1 8f f9 10 06 01 d9    JE              Ge9,#1006 [FALSE] 7103
 6f2c:  2d ff 01                STORE           Gef,L00
 6f2f:  41 ff 01 54             JE              Gef,#01 [FALSE] 6f45
 6f33:  b2 ...                  PRINT           " (providing light)"
 6f42:  8c 01 bf                JUMP            7102
 6f45:  41 ff 02 58             JE              Gef,#02 [FALSE] 6f5f
 6f49:  b2 ...                  PRINT           " (which "
 6f50:  da 2f 19 ca 02          CALL_2N         6728 (L01)
 6f55:  b2 ...                  PRINT           " closed)"
 6f5c:  8c 01 a5                JUMP            7102
 6f5f:  41 ff 03 5c             JE              Gef,#03 [FALSE] 6f7d
 6f63:  b2 ...                  PRINT           " (closed and providing light)"
 6f7a:  8c 01 87                JUMP            7102
 6f7d:  41 ff 04 58             JE              Gef,#04 [FALSE] 6f97
 6f81:  b2 ...                  PRINT           " (which "
 6f88:  da 2f 19 ca 02          CALL_2N         6728 (L01)
 6f8d:  b2 ...                  PRINT           " empty)"
 6f94:  8c 01 6d                JUMP            7102
 6f97:  41 ff 05 5a             JE              Gef,#05 [FALSE] 6fb3
 6f9b:  b2 ...                  PRINT           " (empty and providing light)"
 6fb0:  8c 01 51                JUMP            7102
 6fb3:  41 ff 06 00 20          JE              Gef,#06 [FALSE] 6fd6
 6fb8:  b2 ...                  PRINT           " (which "
 6fbf:  da 2f 19 ca 02          CALL_2N         6728 (L01)
 6fc4:  b2 ...                  PRINT           " closed and empty)"
 6fd3:  8c 01 2e                JUMP            7102
 6fd6:  41 ff 07 00 20          JE              Gef,#07 [FALSE] 6ff9
 6fdb:  b2 ...                  PRINT           " (closed, empty and providing
light)"
 6ff6:  8c 01 0b                JUMP            7102
 6ff9:  41 ff 08 5c             JE              Gef,#08 [FALSE] 7017
 6ffd:  b2 ...                  PRINT           " (providing light and being
worn"
 7014:  8c 00 ed                JUMP            7102
 7017:  41 ff 09 52             JE              Gef,#09 [FALSE] 702b
 701b:  b2 ...                  PRINT           " (providing light"
 7028:  8c 00 d9                JUMP            7102
 702b:  41 ff 0a 50             JE              Gef,#0a [FALSE] 703d
 702f:  b2 ...                  PRINT           " (being worn"
 703a:  8c 00 c7                JUMP            7102
 703d:  41 ff 0b 54             JE              Gef,#0b [FALSE] 7053
 7041:  b2 ...                  PRINT           " (which "
 7048:  da 2f 19 ca 02          CALL_2N         6728 (L01)
 704d:  b2 ...                  PRINT           " "
 7050:  8c 00 b1                JUMP            7102
 7053:  41 ff 0c 4a             JE              Gef,#0c [FALSE] 705f
 7057:  b2 ...                  PRINT           "open"
 705c:  8c 00 a5                JUMP            7102
 705f:  41 ff 0d 50             JE              Gef,#0d [FALSE] 7071
 7063:  b2 ...                  PRINT           "open but empty"
 706e:  8c 00 93                JUMP            7102
 7071:  41 ff 0e 4a             JE              Gef,#0e [FALSE] 707d
 7075:  b2 ...                  PRINT           "closed"
 707a:  8c 00 87                JUMP            7102
 707d:  41 ff 0f 52             JE              Gef,#0f [FALSE] 7091
 7081:  b2 ...                  PRINT           "closed and locked"
 708e:  8c 00 73                JUMP            7102
 7091:  41 ff 10 4e             JE              Gef,#10 [FALSE] 70a1
 7095:  b2 ...                  PRINT           " and empty"
 709e:  8c 00 63                JUMP            7102
 70a1:  41 ff 11 58             JE              Gef,#11 [FALSE] 70bb
 70a5:  b2 ...                  PRINT           " (which "
 70ac:  da 2f 19 ca 02          CALL_2N         6728 (L01)
 70b1:  b2 ...                  PRINT           " empty)"
 70b8:  8c 00 49                JUMP            7102
 70bb:  41 ff 12 4e             JE              Gef,#12 [FALSE] 70cb
 70bf:  b2 ...                  PRINT           " containing "
 70c8:  8c 00 39                JUMP            7102
 70cb:  41 ff 13 4a             JE              Gef,#13 [FALSE] 70d7
 70cf:  b2 ...                  PRINT           " (on "
 70d4:  8c 00 2d                JUMP            7102
 70d7:  41 ff 14 50             JE              Gef,#14 [FALSE] 70e9
 70db:  b2 ...                  PRINT           ", on top of "
 70e6:  8c 00 1b                JUMP            7102
 70e9:  41 ff 15 4a             JE              Gef,#15 [FALSE] 70f5
 70ed:  b2 ...                  PRINT           " (in "
 70f2:  8c 00 0f                JUMP            7102
 70f5:  41 ff 16 4b             JE              Gef,#16 [FALSE] 7102
 70f9:  b2 ...                  PRINT           ", inside "
 7102:  b0                      RTRUE           
 7103:  41 f9 00 00 51          JE              Ge9,#00 [FALSE] 7157
 7108:  2d ff 01                STORE           Gef,L00
 710b:  41 ff 01 52             JE              Gef,#01 [FALSE] 711f
 710f:  b2 ...                  PRINT           "At the moment, "
 711c:  8c 00 39                JUMP            7156
 711f:  41 ff 02 4a             JE              Gef,#02 [FALSE] 712b
 7123:  b2 ...                  PRINT           "means "
 7128:  8c 00 2d                JUMP            7156
 712b:  41 ff 03 4c             JE              Gef,#03 [FALSE] 7139
 712f:  b2 ...                  PRINT           "is unset"
 7136:  8c 00 1f                JUMP            7156
 7139:  41 ff 04 5b             JE              Gef,#04 [FALSE] 7156
 713d:  b3 ...                  PRINT_RET       "no pronouns are known to the
game."
 7156:  b0                      RTRUE           
 7157:  c1 8f f9 10 03 00 29    JE              Ge9,#1003 [FALSE] 7185
 715e:  da 2f 2f 1f 02          CALL_2N         bc7c (L01)
 7163:  4a 02 1e 4a             TEST_ATTR       L01,#1e [FALSE] 716f
 7167:  b2 ...                  PRINT           " have"
 716c:  8c 00 07                JUMP            7174
 716f:  b2 ...                  PRINT           " has"
 7174:  b3 ...                  PRINT_RET       " better things to do."
 7185:  41 f9 01 00 3b          JE              Ge9,#01 [FALSE] 71c3
 718a:  2d ff 01                STORE           Gef,L00
 718d:  41 ff 01 58             JE              Gef,#01 [FALSE] 71a7
 7191:  b2 ...                  PRINT           "Please answer yes or no."
 71a4:  8c 00 1d                JUMP            71c2
 71a7:  41 ff 02 59             JE              Gef,#02 [FALSE] 71c2
 71ab:  b2 ...                  PRINT           "Are you sure you want to quit?
"
 71c2:  b0                      RTRUE           
 71c3:  41 f9 02 00 31          JE              Ge9,#02 [FALSE] 71f7
 71c8:  2d ff 01                STORE           Gef,L00
 71cb:  41 ff 01 5e             JE              Gef,#01 [FALSE] 71eb
 71cf:  b2 ...                  PRINT           "Are you sure you want to
restart? "
 71e8:  8c 00 0d                JUMP            71f6
 71eb:  41 ff 02 49             JE              Gef,#02 [FALSE] 71f6
 71ef:  b3 ...                  PRINT_RET       "Failed."
 71f6:  b0                      RTRUE           
 71f7:  41 f9 03 00 20          JE              Ge9,#03 [FALSE] 721a
 71fc:  2d ff 01                STORE           Gef,L00
 71ff:  41 ff 01 4f             JE              Gef,#01 [FALSE] 7210
 7203:  b3 ...                  PRINT_RET       "Restore failed."
 7210:  41 ff 02 47             JE              Gef,#02 [FALSE] 7219
 7214:  b3 ...                  PRINT_RET       "Ok."
 7219:  b0                      RTRUE           
 721a:  41 f9 04 00 1e          JE              Ge9,#04 [FALSE] 723b
 721f:  2d ff 01                STORE           Gef,L00
 7222:  41 ff 01 4d             JE              Gef,#01 [FALSE] 7231
 7226:  b3 ...                  PRINT_RET       "Save failed."
 7231:  41 ff 02 47             JE              Gef,#02 [FALSE] 723a
 7235:  b3 ...                  PRINT_RET       "Ok."
 723a:  b0                      RTRUE           
 723b:  41 f9 05 00 9f          JE              Ge9,#05 [FALSE] 72dd
 7240:  2d ff 01                STORE           Gef,L00
 7243:  41 ff 01 5d             JE              Gef,#01 [FALSE] 7262
 7247:  b3 ...                  PRINT_RET       "The game file has verified as
intact."
 7262:  41 ff 02 00 77          JE              Gef,#02 [FALSE] 72dc
 7267:  b3 ...                  PRINT_RET       "The game file did not verify
as intact, and may be corrupted (unless you are playing it with a very
primitive interpreter which is unable properly to perform the test)."
 72dc:  b0                      RTRUE           
 72dd:  41 f9 06 00 36          JE              Ge9,#06 [FALSE] 7316
 72e2:  2d ff 01                STORE           Gef,L00
 72e5:  41 ff 01 57             JE              Gef,#01 [FALSE] 72fe
 72e9:  b3 ...                  PRINT_RET       "Transcripting is already on."
 72fe:  41 ff 02 55             JE              Gef,#02 [FALSE] 7315
 7302:  b3 ...                  PRINT_RET       "Start of a transcript of"
 7315:  b0                      RTRUE           
 7316:  41 f9 07 00 36          JE              Ge9,#07 [FALSE] 734f
 731b:  2d ff 01                STORE           Gef,L00
 731e:  41 ff 01 59             JE              Gef,#01 [FALSE] 7339
 7322:  b3 ...                  PRINT_RET       "Transcripting is already off."
 7339:  41 ff 02 53             JE              Gef,#02 [FALSE] 734e
 733d:  b3 ...                  PRINT_RET       "
End of transcript."
 734e:  b0                      RTRUE           
 734f:  41 f9 08 53             JE              Ge9,#08 [FALSE] 7364
 7353:  b3 ...                  PRINT_RET       "Score notification on."
 7364:  41 f9 09 55             JE              Ge9,#09 [FALSE] 737b
 7368:  b3 ...                  PRINT_RET       "Score notification off."
 737b:  41 f9 0a 52             JE              Ge9,#0a [FALSE] 738f
 737f:  b2 ...                  PRINT           "You have visited: "
 738e:  b0                      RTRUE           
 738f:  41 f9 0b 00 c5          JE              Ge9,#0b [FALSE] 7457
 7394:  2d ff 01                STORE           Gef,L00
 7397:  41 ff 01 57             JE              Gef,#01 [FALSE] 73b0
 739b:  b3 ...                  PRINT_RET       "Objects you have handled:
"
 73b0:  41 ff 02 49             JE              Gef,#02 [FALSE] 73bb
 73b4:  b3 ...                  PRINT_RET       "None."
 73bb:  41 ff 03 4e             JE              Gef,#03 [FALSE] 73cb
 73bf:  b2 ...                  PRINT           "   (worn)"
 73c8:  8c 00 8d                JUMP            7456
 73cb:  41 ff 04 4e             JE              Gef,#04 [FALSE] 73db
 73cf:  b2 ...                  PRINT           "   (held)"
 73d8:  8c 00 7d                JUMP            7456
 73db:  41 ff 05 52             JE              Gef,#05 [FALSE] 73ef
 73df:  b2 ...                  PRINT           "   (given away)"
 73ec:  8c 00 69                JUMP            7456
 73ef:  41 ff 06 54             JE              Gef,#06 [FALSE] 7405
 73f3:  b2 ...                  PRINT           "   (in "
 73fa:  da 2f 2f 27 02          CALL_2N         bc9c (L01)
 73ff:  b2 ...                  PRINT           ")"
 7402:  8c 00 53                JUMP            7456
 7405:  41 ff 07 54             JE              Gef,#07 [FALSE] 741b
 7409:  b2 ...                  PRINT           "   (in "
 7410:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7415:  b2 ...                  PRINT           ")"
 7418:  8c 00 3d                JUMP            7456
 741b:  41 ff 08 56             JE              Gef,#08 [FALSE] 7433
 741f:  b2 ...                  PRINT           "   (inside "
 7428:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 742d:  b2 ...                  PRINT           ")"
 7430:  8c 00 25                JUMP            7456
 7433:  41 ff 09 54             JE              Gef,#09 [FALSE] 7449
 7437:  b2 ...                  PRINT           "   (on "
 743e:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7443:  b2 ...                  PRINT           ")"
 7446:  8c 00 0f                JUMP            7456
 7449:  41 ff 0a 4b             JE              Gef,#0a [FALSE] 7456
 744d:  b2 ...                  PRINT           "   (lost)"
 7456:  b0                      RTRUE           
 7457:  41 f9 0c 00 56          JE              Ge9,#0c [FALSE] 74b0
 745c:  a0 23 d8                JZ              G13 [TRUE] 7475
 745f:  b2 ...                  PRINT           "In that game you scored "
 7472:  8c 00 13                JUMP            7486
 7475:  b2 ...                  PRINT           "You have so far scored "
 7486:  e6 bf 1d                PRINT_NUM       G0d
 7489:  b2 ...                  PRINT           " out of a possible "
 7498:  e6 7f 1e                PRINT_NUM       #1e
 749b:  b2 ...                  PRINT           ", in "
 74a0:  e6 bf 18                PRINT_NUM       G08
 74a3:  b2 ...                  PRINT           " turn"
 74a8:  43 18 01 45             JG              G08,#01 [FALSE] 74af
 74ac:  b2 ...                  PRINT           "s"
 74af:  b0                      RTRUE           
 74b0:  41 f9 0d 00 75          JE              Ge9,#0d [FALSE] 7528
 74b5:  2d ff 01                STORE           Gef,L00
 74b8:  41 ff 01 00 2f          JE              Gef,#01 [FALSE] 74ea
 74bd:  a0 23 d0                JZ              G13 [TRUE] 74ce
 74c0:  b2 ...                  PRINT           "The score was "
 74cb:  8c 00 0d                JUMP            74d9
 74ce:  b2 ...                  PRINT           "The score is "
 74d9:  b3 ...                  PRINT_RET       "made up as follows:
"
 74ea:  41 ff 02 51             JE              Gef,#02 [FALSE] 74fd
 74ee:  b3 ...                  PRINT_RET       "finding sundry items"
 74fd:  41 ff 03 53             JE              Gef,#03 [FALSE] 7512
 7501:  b3 ...                  PRINT_RET       "visiting various places"
 7512:  41 ff 04 53             JE              Gef,#04 [FALSE] 7527
 7516:  b2 ...                  PRINT           "total (out of "
 7521:  e6 7f 1e                PRINT_NUM       #1e
 7524:  b3 ...                  PRINT_RET       ")"
 7527:  b0                      RTRUE           
 7528:  41 f9 0e 00 2e          JE              Ge9,#0e [FALSE] 7559
 752d:  2d ff 01                STORE           Gef,L00
 7530:  41 ff 01 55             JE              Gef,#01 [FALSE] 7547
 7534:  b3 ...                  PRINT_RET       "You are carrying nothing."
 7547:  41 ff 02 4f             JE              Gef,#02 [FALSE] 7558
 754b:  b2 ...                  PRINT           "You are carrying"
 7558:  b0                      RTRUE           
 7559:  41 f9 0f 01 de          JE              Ge9,#0f [FALSE] 773a
 755e:  2d ff 01                STORE           Gef,L00
 7561:  41 ff 01 49             JE              Gef,#01 [FALSE] 756c
 7565:  b3 ...                  PRINT_RET       "Taken."
 756c:  41 ff 02 59             JE              Gef,#02 [FALSE] 7587
 7570:  b3 ...                  PRINT_RET       "You are always
self-possessed."
 7587:  41 ff 03 00 25          JE              Gef,#03 [FALSE] 75af
 758c:  b2 ...                  PRINT           "I don't suppose "
 7599:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 759e:  b3 ...                  PRINT_RET       " would care for that."
 75af:  41 ff 04 00 30          JE              Gef,#04 [FALSE] 75e2
 75b4:  b2 ...                  PRINT           "You'd have to get "
 75c3:  4a 02 14 4a             TEST_ATTR       L01,#14 [FALSE] 75cf
 75c7:  b2 ...                  PRINT           "off "
 75cc:  8c 00 09                JUMP            75d6
 75cf:  b2 ...                  PRINT           "out of "
 75d6:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 75db:  b3 ...                  PRINT_RET       " first."
 75e2:  41 ff 05 57             JE              Gef,#05 [FALSE] 75fb
 75e6:  b2 ...                  PRINT           "You already have "
 75f3:  da 2f 19 c0 02          CALL_2N         6700 (L01)
 75f8:  b3 ...                  PRINT_RET       "."
 75fb:  41 ff 06 00 2e          JE              Gef,#06 [FALSE] 762c
 7600:  4a 3a 1e 4e             TEST_ATTR       G2a,#1e [FALSE] 7610
 7604:  b2 ...                  PRINT           "That seems "
 760d:  8c 00 0b                JUMP            7619
 7610:  b2 ...                  PRINT           "Those seem "
 7619:  b2 ...                  PRINT           "to belong to "
 7624:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7629:  b3 ...                  PRINT_RET       "."
 762c:  41 ff 07 00 30          JE              Gef,#07 [FALSE] 765f
 7631:  4a 3a 1e 4e             TEST_ATTR       G2a,#1e [FALSE] 7641
 7635:  b2 ...                  PRINT           "That seems "
 763e:  8c 00 0b                JUMP            764a
 7641:  b2 ...                  PRINT           "Those seem "
 764a:  b2 ...                  PRINT           "to be a part of "
 7657:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 765c:  b3 ...                  PRINT_RET       "."
 765f:  41 ff 08 5c             JE              Gef,#08 [FALSE] 767d
 7663:  da 2f 19 ce 02          CALL_2N         6738 (L01)
 7668:  b2 ...                  PRINT           " "
 766b:  da 2f 19 ca 02          CALL_2N         6728 (L01)
 7670:  b3 ...                  PRINT_RET       "n't available."
 767d:  41 ff 09 5b             JE              Gef,#09 [FALSE] 769a
 7681:  da 2f 2f 1f 02          CALL_2N         bc7c (L01)
 7686:  b2 ...                  PRINT           " "
 7689:  da 2f 19 ca 02          CALL_2N         6728 (L01)
 768e:  b2 ...                  PRINT           "n't open."
 7697:  8c 00 a1                JUMP            7739
 769a:  41 ff 0a 00 26          JE              Gef,#0a [FALSE] 76c3
 769f:  4a 02 1e 4e             TEST_ATTR       L01,#1e [FALSE] 76af
 76a3:  b2 ...                  PRINT           "They're "
 76ac:  8c 00 09                JUMP            76b6
 76af:  b2 ...                  PRINT           "That's "
 76b6:  b3 ...                  PRINT_RET       "hardly portable."
 76c3:  41 ff 0b 00 26          JE              Gef,#0b [FALSE] 76ec
 76c8:  4a 02 1e 4e             TEST_ATTR       L01,#1e [FALSE] 76d8
 76cc:  b2 ...                  PRINT           "They're "
 76d5:  8c 00 09                JUMP            76df
 76d8:  b2 ...                  PRINT           "That's "
 76df:  b3 ...                  PRINT_RET       "fixed in place."
 76ec:  41 ff 0c 00 21          JE              Gef,#0c [FALSE] 7710
 76f1:  b3 ...                  PRINT_RET       "You're carrying too many
things already."
 7710:  41 ff 0d 00 26          JE              Gef,#0d [FALSE] 7739
 7715:  b2 ...                  PRINT           "(putting "
 771e:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7723:  b2 ...                  PRINT           " into "
 7728:  da 0f 2f 17 00 00       CALL_2N         bc5c (#0000)
 772e:  b3 ...                  PRINT_RET       " to make room)"
 7739:  b0                      RTRUE           
 773a:  41 f9 10 00 76          JE              Ge9,#10 [FALSE] 77b3
 773f:  2d ff 01                STORE           Gef,L00
 7742:  41 ff 01 00 2e          JE              Gef,#01 [FALSE] 7773
 7747:  4a 02 1e 4f             TEST_ATTR       L01,#1e [FALSE] 7758
 774b:  da 2f 2f 1f 02          CALL_2N         bc7c (L01)
 7750:  b2 ...                  PRINT           " are "
 7755:  8c 00 0c                JUMP            7762
 7758:  da 2f 2f 1f 02          CALL_2N         bc7c (L01)
 775d:  b2 ...                  PRINT           " is "
 7762:  b3 ...                  PRINT_RET       "already on the floor."
 7773:  41 ff 02 57             JE              Gef,#02 [FALSE] 778c
 7777:  b2 ...                  PRINT           "You haven't got "
 7784:  da 2f 19 c0 02          CALL_2N         6700 (L01)
 7789:  b3 ...                  PRINT_RET       "."
 778c:  41 ff 03 57             JE              Gef,#03 [FALSE] 77a5
 7790:  b2 ...                  PRINT           "(first taking "
 779b:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 77a0:  b3 ...                  PRINT_RET       " off)"
 77a5:  41 ff 04 4b             JE              Gef,#04 [FALSE] 77b2
 77a9:  b3 ...                  PRINT_RET       "Dropped."
 77b2:  b0                      RTRUE           
 77b3:  41 f9 11 00 6b          JE              Ge9,#11 [FALSE] 7821
 77b8:  2d ff 01                STORE           Gef,L00
 77bb:  41 ff 01 00 28          JE              Gef,#01 [FALSE] 77e6
 77c0:  4a 02 1e 4c             TEST_ATTR       L01,#1e [FALSE] 77ce
 77c4:  b2 ...                  PRINT           "They are"
 77cb:  8c 00 09                JUMP            77d5
 77ce:  b2 ...                  PRINT           "It is "
 77d5:  b3 ...                  PRINT_RET       " unfortunately closed."
 77e6:  41 ff 02 00 2a          JE              Gef,#02 [FALSE] 7813
 77eb:  4a 02 1e 52             TEST_ATTR       L01,#1e [FALSE] 77ff
 77ef:  b2 ...                  PRINT           "But they aren't"
 77fc:  8c 00 0d                JUMP            780a
 77ff:  b2 ...                  PRINT           "But it isn't"
 780a:  b3 ...                  PRINT_RET       " there now."
 7813:  41 ff 03 4b             JE              Gef,#03 [FALSE] 7820
 7817:  b3 ...                  PRINT_RET       "Removed."
 7820:  b0                      RTRUE           
 7821:  41 f9 12 01 0f          JE              Ge9,#12 [FALSE] 7933
 7826:  2d ff 01                STORE           Gef,L00
 7829:  41 ff 01 00 3f          JE              Gef,#01 [FALSE] 786b
 782e:  b2 ...                  PRINT           "You need to be holding "
 783f:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7844:  b2 ...                  PRINT           " before you can put "
 7853:  da 2f 19 c5 02          CALL_2N         6714 (L01)
 7858:  b3 ...                  PRINT_RET       " on top of something else."
 786b:  41 ff 02 00 21          JE              Gef,#02 [FALSE] 788f
 7870:  b3 ...                  PRINT_RET       "You can't put something on top
of itself."
 788f:  41 ff 03 00 27          JE              Gef,#03 [FALSE] 78b9
 7894:  b2 ...                  PRINT           "Putting things on "
 78a3:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 78a8:  b3 ...                  PRINT_RET       " would achieve nothing."
 78b9:  41 ff 04 55             JE              Gef,#04 [FALSE] 78d0
 78bd:  b3 ...                  PRINT_RET       "You lack the dexterity."
 78d0:  41 ff 05 59             JE              Gef,#05 [FALSE] 78eb
 78d4:  b2 ...                  PRINT           "(first taking "
 78df:  da 2f 19 c5 02          CALL_2N         6714 (L01)
 78e4:  b3 ...                  PRINT_RET       " off)
"
 78eb:  41 ff 06 5d             JE              Gef,#06 [FALSE] 790a
 78ef:  b2 ...                  PRINT           "There is no more room on "
 7902:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7907:  b3 ...                  PRINT_RET       "."
 790a:  41 ff 07 49             JE              Gef,#07 [FALSE] 7915
 790e:  b3 ...                  PRINT_RET       "Done."
 7915:  41 ff 08 5b             JE              Gef,#08 [FALSE] 7932
 7919:  b2 ...                  PRINT           "You put "
 7920:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7925:  b2 ...                  PRINT           " on "
 792a:  da 2f 2f 17 3b          CALL_2N         bc5c (G2b)
 792f:  b3 ...                  PRINT_RET       "."
 7932:  b0                      RTRUE           
 7933:  41 f9 13 01 1f          JE              Ge9,#13 [FALSE] 7a55
 7938:  2d ff 01                STORE           Gef,L00
 793b:  41 ff 01 00 3d          JE              Gef,#01 [FALSE] 797b
 7940:  b2 ...                  PRINT           "You need to be holding "
 7951:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7956:  b2 ...                  PRINT           " before you can put "
 7965:  da 2f 19 c5 02          CALL_2N         6714 (L01)
 796a:  b3 ...                  PRINT_RET       " into something else."
 797b:  41 ff 02 58             JE              Gef,#02 [FALSE] 7995
 797f:  da 2f 19 ce 02          CALL_2N         6738 (L01)
 7984:  b3 ...                  PRINT_RET       " can't contain things."
 7995:  41 ff 03 56             JE              Gef,#03 [FALSE] 79ad
 7999:  da 2f 2f 1f 02          CALL_2N         bc7c (L01)
 799e:  b2 ...                  PRINT           " "
 79a1:  da 2f 19 ca 02          CALL_2N         6728 (L01)
 79a6:  b3 ...                  PRINT_RET       " closed."
 79ad:  41 ff 04 00 21          JE              Gef,#04 [FALSE] 79d1
 79b2:  b2 ...                  PRINT           "You'll need to take "
 79c3:  da 2f 19 c5 02          CALL_2N         6714 (L01)
 79c8:  b3 ...                  PRINT_RET       " off first."
 79d1:  41 ff 05 5f             JE              Gef,#05 [FALSE] 79f2
 79d5:  b3 ...                  PRINT_RET       "You can't put something inside
itself."
 79f2:  41 ff 06 59             JE              Gef,#06 [FALSE] 7a0d
 79f6:  b2 ...                  PRINT           "(first taking "
 7a01:  da 2f 19 c5 02          CALL_2N         6714 (L01)
 7a06:  b3 ...                  PRINT_RET       " off)
"
 7a0d:  41 ff 07 5d             JE              Gef,#07 [FALSE] 7a2c
 7a11:  b2 ...                  PRINT           "There is no more room in "
 7a24:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7a29:  b3 ...                  PRINT_RET       "."
 7a2c:  41 ff 08 49             JE              Gef,#08 [FALSE] 7a37
 7a30:  b3 ...                  PRINT_RET       "Done."
 7a37:  41 ff 09 5b             JE              Gef,#09 [FALSE] 7a54
 7a3b:  b2 ...                  PRINT           "You put "
 7a42:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7a47:  b2 ...                  PRINT           " into "
 7a4c:  da 2f 2f 17 3b          CALL_2N         bc5c (G2b)
 7a51:  b3 ...                  PRINT_RET       "."
 7a54:  b0                      RTRUE           
 7a55:  41 f9 14 00 3c          JE              Ge9,#14 [FALSE] 7a94
 7a5a:  2d ff 01                STORE           Gef,L00
 7a5d:  41 ff 01 5d             JE              Gef,#01 [FALSE] 7a7c
 7a61:  b2 ...                  PRINT           "You do not have "
 7a6e:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7a73:  b3 ...                  PRINT_RET       " to hand."
 7a7c:  41 ff 02 55             JE              Gef,#02 [FALSE] 7a93
 7a80:  b2 ...                  PRINT           "First pick up "
 7a8b:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7a90:  b3 ...                  PRINT_RET       "."
 7a93:  b0                      RTRUE           
 7a94:  41 f9 15 00 56          JE              Ge9,#15 [FALSE] 7aed
 7a99:  2d ff 01                STORE           Gef,L00
 7a9c:  41 ff 01 58             JE              Gef,#01 [FALSE] 7ab6
 7aa0:  da 2f 2f 1f 02          CALL_2N         bc7c (L01)
 7aa5:  b3 ...                  PRINT_RET       " can't contain things."
 7ab6:  41 ff 02 56             JE              Gef,#02 [FALSE] 7ace
 7aba:  da 2f 2f 1f 02          CALL_2N         bc7c (L01)
 7abf:  b2 ...                  PRINT           " "
 7ac2:  da 2f 19 ca 02          CALL_2N         6728 (L01)
 7ac7:  b3 ...                  PRINT_RET       " closed."
 7ace:  41 ff 03 5c             JE              Gef,#03 [FALSE] 7aec
 7ad2:  da 2f 2f 1f 02          CALL_2N         bc7c (L01)
 7ad7:  b2 ...                  PRINT           " "
 7ada:  da 2f 19 ca 02          CALL_2N         6728 (L01)
 7adf:  b3 ...                  PRINT_RET       " empty already."
 7aec:  b0                      RTRUE           
 7aed:  41 f9 16 00 80          JE              Ge9,#16 [FALSE] 7b70
 7af2:  2d ff 01                STORE           Gef,L00
 7af5:  41 ff 01 59             JE              Gef,#01 [FALSE] 7b10
 7af9:  b2 ...                  PRINT           "You aren't holding "
 7b08:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7b0d:  b3 ...                  PRINT_RET       "."
 7b10:  41 ff 02 00 2d          JE              Gef,#02 [FALSE] 7b40
 7b15:  b2 ...                  PRINT           "You juggle "
 7b1e:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7b23:  b3 ...                  PRINT_RET       " for a while, but don't
achieve much."
 7b40:  41 ff 03 00 2c          JE              Gef,#03 [FALSE] 7b6f
 7b45:  da 2f 2f 1f 02          CALL_2N         bc7c (L01)
 7b4a:  b2 ...                  PRINT           " "
 7b4d:  4a 02 1e 4c             TEST_ATTR       L01,#1e [FALSE] 7b5b
 7b51:  b2 ...                  PRINT           " don't"
 7b58:  8c 00 09                JUMP            7b62
 7b5b:  b2 ...                  PRINT           " doesn't"
 7b62:  b3 ...                  PRINT_RET       " seem interested."
 7b6f:  b0                      RTRUE           
 7b70:  41 f9 17 00 3d          JE              Ge9,#17 [FALSE] 7bb0
 7b75:  2d ff 01                STORE           Gef,L00
 7b78:  41 ff 01 59             JE              Gef,#01 [FALSE] 7b93
 7b7c:  b2 ...                  PRINT           "You aren't holding "
 7b8b:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7b90:  b3 ...                  PRINT_RET       "."
 7b93:  41 ff 02 5a             JE              Gef,#02 [FALSE] 7baf
 7b97:  da 2f 2f 1f 02          CALL_2N         bc7c (L01)
 7b9c:  b2 ...                  PRINT           " "
 7b9f:  da 2f 19 ca 02          CALL_2N         6728 (L01)
 7ba4:  b2 ...                  PRINT           " unimpressed."
 7baf:  b0                      RTRUE           
 7bb0:  41 f9 18 00 cd          JE              Ge9,#18 [FALSE] 7c80
 7bb5:  2d ff 01                STORE           Gef,L00
 7bb8:  41 ff 01 00 26          JE              Gef,#01 [FALSE] 7be1
 7bbd:  b2 ...                  PRINT           "But you're already "
 7bcc:  4a 02 14 48             TEST_ATTR       L01,#14 [FALSE] 7bd6
 7bd0:  b2 ...                  PRINT           "on "
 7bd3:  8c 00 05                JUMP            7bd9
 7bd6:  b2 ...                  PRINT           "in "
 7bd9:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7bde:  b3 ...                  PRINT_RET       "."
 7be1:  41 ff 02 00 2c          JE              Gef,#02 [FALSE] 7c10
 7be6:  4a 02 1e 4c             TEST_ATTR       L01,#1e [FALSE] 7bf4
 7bea:  b2 ...                  PRINT           "They're"
 7bf1:  8c 00 09                JUMP            7bfb
 7bf4:  b2 ...                  PRINT           "That's"
 7bfb:  b3 ...                  PRINT_RET       " not something you can enter."
 7c10:  41 ff 03 00 21          JE              Gef,#03 [FALSE] 7c34
 7c15:  b2 ...                  PRINT           "You can't get into the closed
"
 7c2c:  da 2f 2f 27 02          CALL_2N         bc9c (L01)
 7c31:  b3 ...                  PRINT_RET       "."
 7c34:  41 ff 04 00 23          JE              Gef,#04 [FALSE] 7c5a
 7c39:  b3 ...                  PRINT_RET       "You can only get into
something freestanding."
 7c5a:  41 ff 05 00 22          JE              Gef,#05 [FALSE] 7c7f
 7c5f:  b2 ...                  PRINT           "You get "
 7c66:  4a 02 14 4a             TEST_ATTR       L01,#14 [FALSE] 7c72
 7c6a:  b2 ...                  PRINT           "onto "
 7c6f:  8c 00 07                JUMP            7c77
 7c72:  b2 ...                  PRINT           "into "
 7c77:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7c7c:  b3 ...                  PRINT_RET       "."
 7c7f:  b0                      RTRUE           
 7c80:  41 f9 19 00 23          JE              Ge9,#19 [FALSE] 7ca6
 7c85:  b2 ...                  PRINT           "But you aren't on "
 7c94:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7c99:  b3 ...                  PRINT_RET       " at the moment."
 7ca6:  41 f9 1a 00 77          JE              Ge9,#1a [FALSE] 7d20
 7cab:  2d ff 01                STORE           Gef,L00
 7cae:  41 ff 01 00 21          JE              Gef,#01 [FALSE] 7cd2
 7cb3:  b3 ...                  PRINT_RET       "But you aren't in anything at
the moment."
 7cd2:  41 ff 02 00 23          JE              Gef,#02 [FALSE] 7cf8
 7cd7:  b2 ...                  PRINT           "You can't get out of the
closed "
 7cf0:  da 2f 2f 27 02          CALL_2N         bc9c (L01)
 7cf5:  b3 ...                  PRINT_RET       "."
 7cf8:  41 ff 03 00 24          JE              Gef,#03 [FALSE] 7d1f
 7cfd:  b2 ...                  PRINT           "You get "
 7d04:  4a 02 14 4a             TEST_ATTR       L01,#14 [FALSE] 7d10
 7d08:  b2 ...                  PRINT           "off "
 7d0d:  8c 00 09                JUMP            7d17
 7d10:  b2 ...                  PRINT           "out of "
 7d17:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7d1c:  b3 ...                  PRINT_RET       "."
 7d1f:  b0                      RTRUE           
 7d20:  41 f9 1b 00 29          JE              Ge9,#1b [FALSE] 7d4c
 7d25:  b3 ...                  PRINT_RET       "You'll have to say which
compass direction to go in."
 7d4c:  41 f9 1c 00 f1          JE              Ge9,#1c [FALSE] 7e40
 7d51:  2d ff 01                STORE           Gef,L00
 7d54:  41 ff 01 00 30          JE              Gef,#01 [FALSE] 7d87
 7d59:  b2 ...                  PRINT           "You'll have to get "
 7d68:  4a 02 14 4a             TEST_ATTR       L01,#14 [FALSE] 7d74
 7d6c:  b2 ...                  PRINT           "off "
 7d71:  8c 00 09                JUMP            7d7b
 7d74:  b2 ...                  PRINT           "out of "
 7d7b:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7d80:  b3 ...                  PRINT_RET       " first."
 7d87:  41 ff 02 55             JE              Gef,#02 [FALSE] 7d9e
 7d8b:  b3 ...                  PRINT_RET       "You can't go that way."
 7d9e:  41 ff 03 5d             JE              Gef,#03 [FALSE] 7dbd
 7da2:  b2 ...                  PRINT           "You are unable to climb "
 7db5:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7dba:  b3 ...                  PRINT_RET       "."
 7dbd:  41 ff 04 5f             JE              Gef,#04 [FALSE] 7dde
 7dc1:  b2 ...                  PRINT           "You are unable to descend by "
 7dd6:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7ddb:  b3 ...                  PRINT_RET       "."
 7dde:  41 ff 05 00 29          JE              Gef,#05 [FALSE] 7e0a
 7de3:  b2 ...                  PRINT           "You can't, since "
 7df2:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7df7:  b2 ...                  PRINT           " "
 7dfa:  da 2f 19 ca 02          CALL_2N         6728 (L01)
 7dff:  b3 ...                  PRINT_RET       " in the way."
 7e0a:  41 ff 06 00 32          JE              Gef,#06 [FALSE] 7e3f
 7e0f:  b2 ...                  PRINT           "You can't, since "
 7e1e:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7e23:  4a 02 1e 4d             TEST_ATTR       L01,#1e [FALSE] 7e32
 7e27:  b3 ...                  PRINT_RET       " lead nowhere."
 7e32:  b3 ...                  PRINT_RET       " leads nowhere."
 7e3f:  b0                      RTRUE           
 7e40:  41 f9 1d 00 63          JE              Ge9,#1d [FALSE] 7ea6
 7e45:  b3 ...                  PRINT_RET       " is now in its normal "brief"
printing mode, which gives long descriptions of places never before visited and
short descriptions otherwise."
 7ea6:  41 f9 1e 00 55          JE              Ge9,#1e [FALSE] 7efe
 7eab:  b3 ...                  PRINT_RET       " is now in its "verbose" mode,
which always gives long descriptions of locations (even if you've been there
before)."
 7efe:  41 f9 1f 00 5b          JE              Ge9,#1f [FALSE] 7f5c
 7f03:  b3 ...                  PRINT_RET       " is now in its "superbrief"
mode, which always gives short descriptions of locations (even if you haven't
been there before)."
 7f5c:  41 f9 20 00 d1          JE              Ge9,#20 [FALSE] 8030
 7f61:  2d ff 01                STORE           Gef,L00
 7f64:  41 ff 01 48             JE              Gef,#01 [FALSE] 7f6e
 7f68:  b2 ...                  PRINT           "on"
 7f6b:  8c 00 c3                JUMP            802f
 7f6e:  41 ff 02 48             JE              Gef,#02 [FALSE] 7f78
 7f72:  b2 ...                  PRINT           "in"
 7f75:  8c 00 b9                JUMP            802f
 7f78:  41 ff 03 48             JE              Gef,#03 [FALSE] 7f82
 7f7c:  b2 ...                  PRINT           "as"
 7f7f:  8c 00 af                JUMP            802f
 7f82:  41 ff 04 00 38          JE              Gef,#04 [FALSE] 7fbd
 7f87:  b2 ...                  PRINT           "
On "
 7f8c:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7f91:  d4 0f 00 08 00 10 00    ADD             #0008,#0010 -> -(SP)
 7f98:  d4 8f 00 00 80 00       ADD             (SP)+,#0080 -> -(SP)
 7f9e:  d4 8f 00 00 40 00       ADD             (SP)+,#0040 -> -(SP)
 7fa4:  d4 8f 00 04 00 00       ADD             (SP)+,#0400 -> -(SP)
 7faa:  d4 8f 00 08 00 00       ADD             (SP)+,#0800 -> -(SP)
 7fb0:  a2 02 00 42             GET_CHILD       L01 -> -(SP) [FALSE] 7fb4
 7fb4:  f9 2b 30 0a 00 00       CALL_VN         c028 ((SP)+,(SP)+)
 7fba:  b3 ...                  PRINT_RET       "."
 7fbd:  61 02 10 80 20          JE              L01,G00 [TRUE] 7fe0
 7fc2:  4a 02 14 4a             TEST_ATTR       L01,#14 [FALSE] 7fce
 7fc6:  b2 ...                  PRINT           "
On "
 7fcb:  8c 00 07                JUMP            7fd3
 7fce:  b2 ...                  PRINT           "
In "
 7fd3:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 7fd8:  b2 ...                  PRINT           " you"
 7fdd:  8c 00 07                JUMP            7fe5
 7fe0:  b2 ...                  PRINT           "
You"
 7fe5:  b2 ...                  PRINT           " can "
 7fea:  41 01 05 47             JE              L00,#05 [FALSE] 7ff3
 7fee:  b2 ...                  PRINT           "also "
 7ff3:  b2 ...                  PRINT           "see "
 7ff8:  d4 0f 00 08 02 00 00    ADD             #0008,#0200 -> -(SP)
 7fff:  d4 8f 00 00 10 00       ADD             (SP)+,#0010 -> -(SP)
 8005:  d4 8f 00 00 80 00       ADD             (SP)+,#0080 -> -(SP)
 800b:  d4 8f 00 00 40 00       ADD             (SP)+,#0040 -> -(SP)
 8011:  d4 8f 00 08 00 00       ADD             (SP)+,#0800 -> -(SP)
 8017:  a2 02 00 42             GET_CHILD       L01 -> -(SP) [FALSE] 801b
 801b:  f9 2b 30 0a 00 00       CALL_VN         c028 ((SP)+,(SP)+)
 8021:  61 02 10 c5             JE              L01,G00 [TRUE] 8028
 8025:  b3 ...                  PRINT_RET       "."
 8028:  b3 ...                  PRINT_RET       " here."
 802f:  b0                      RTRUE           
 8030:  41 f9 21 00 81          JE              Ge9,#21 [FALSE] 80b4
 8035:  2d ff 01                STORE           Gef,L00
 8038:  41 ff 01 00 25          JE              Gef,#01 [FALSE] 8060
 803d:  b3 ...                  PRINT_RET       "Darkness, noun. An absence of
light to see by."
 8060:  41 ff 02 00 21          JE              Gef,#02 [FALSE] 8084
 8065:  b2 ...                  PRINT           "You see nothing special about
"
 807c:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 8081:  b3 ...                  PRINT_RET       "."
 8084:  41 ff 03 00 2c          JE              Gef,#03 [FALSE] 80b3
 8089:  da 2f 2f 1f 02          CALL_2N         bc7c (L01)
 808e:  b2 ...                  PRINT           " "
 8091:  da 2f 19 ca 02          CALL_2N         6728 (L01)
 8096:  b2 ...                  PRINT           " currently switched "
 80a5:  4a 02 0d 47             TEST_ATTR       L01,#0d [FALSE] 80ae
 80a9:  b3 ...                  PRINT_RET       "on."
 80ae:  b3 ...                  PRINT_RET       "off."
 80b3:  b0                      RTRUE           
 80b4:  41 f9 22 00 32          JE              Ge9,#22 [FALSE] 80e9
 80b9:  2d ff 01                STORE           Gef,L00
 80bc:  41 ff 01 4f             JE              Gef,#01 [FALSE] 80cd
 80c0:  b3 ...                  PRINT_RET       "But it's dark."
 80cd:  41 ff 02 59             JE              Gef,#02 [FALSE] 80e8
 80d1:  b3 ...                  PRINT_RET       "You find nothing of interest."
 80e8:  b0                      RTRUE           
 80e9:  41 f9 23 00 f3          JE              Ge9,#23 [FALSE] 81df
 80ee:  2d ff 01                STORE           Gef,L00
 80f1:  41 ff 01 4f             JE              Gef,#01 [FALSE] 8102
 80f5:  b3 ...                  PRINT_RET       "But it's dark."
 8102:  41 ff 02 59             JE              Gef,#02 [FALSE] 811d
 8106:  b2 ...                  PRINT           "There is nothing on "
 8115:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 811a:  b3 ...                  PRINT_RET       "."
 811d:  41 ff 03 00 2c          JE              Gef,#03 [FALSE] 814c
 8122:  b2 ...                  PRINT           "On "
 8127:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 812c:  d4 0f 00 40 00 08 00    ADD             #0040,#0008 -> -(SP)
 8133:  d4 8f 00 04 00 00       ADD             (SP)+,#0400 -> -(SP)
 8139:  d4 8f 00 08 00 00       ADD             (SP)+,#0800 -> -(SP)
 813f:  a2 02 00 42             GET_CHILD       L01 -> -(SP) [FALSE] 8143
 8143:  f9 2b 30 0a 00 00       CALL_VN         c028 ((SP)+,(SP)+)
 8149:  b3 ...                  PRINT_RET       "."
 814c:  41 ff 04 59             JE              Gef,#04 [FALSE] 8167
 8150:  b3 ...                  PRINT_RET       "You find nothing of interest."
 8167:  41 ff 05 00 2d          JE              Gef,#05 [FALSE] 8197
 816c:  b2 ...                  PRINT           "You can't see inside, since "
 8183:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 8188:  b2 ...                  PRINT           " "
 818b:  da 2f 19 ca 02          CALL_2N         6728 (L01)
 8190:  b3 ...                  PRINT_RET       " closed."
 8197:  41 ff 06 56             JE              Gef,#06 [FALSE] 81af
 819b:  da 2f 2f 1f 02          CALL_2N         bc7c (L01)
 81a0:  b2 ...                  PRINT           " "
 81a3:  da 2f 19 ca 02          CALL_2N         6728 (L01)
 81a8:  b3 ...                  PRINT_RET       " empty."
 81af:  41 ff 07 00 2c          JE              Gef,#07 [FALSE] 81de
 81b4:  b2 ...                  PRINT           "In "
 81b9:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 81be:  d4 0f 00 40 00 08 00    ADD             #0040,#0008 -> -(SP)
 81c5:  d4 8f 00 04 00 00       ADD             (SP)+,#0400 -> -(SP)
 81cb:  d4 8f 00 08 00 00       ADD             (SP)+,#0800 -> -(SP)
 81d1:  a2 02 00 42             GET_CHILD       L01 -> -(SP) [FALSE] 81d5
 81d5:  f9 2b 30 0a 00 00       CALL_VN         c028 ((SP)+,(SP)+)
 81db:  b3 ...                  PRINT_RET       "."
 81de:  b0                      RTRUE           
 81df:  41 f9 24 00 a7          JE              Ge9,#24 [FALSE] 8289
 81e4:  2d ff 01                STORE           Gef,L00
 81e7:  41 ff 01 00 3a          JE              Gef,#01 [FALSE] 8224
 81ec:  4a 02 1e 50             TEST_ATTR       L01,#1e [FALSE] 81fe
 81f0:  b2 ...                  PRINT           "They don't "
 81fb:  8c 00 0d                JUMP            8209
 81fe:  b2 ...                  PRINT           "That doesn't "
 8209:  b3 ...                  PRINT_RET       "seem to be something you can
unlock."
 8224:  41 ff 02 5a             JE              Gef,#02 [FALSE] 8240
 8228:  da 2f 19 d3 02          CALL_2N         674c (L01)
 822d:  b3 ...                  PRINT_RET       " unlocked at the moment."
 8240:  41 ff 03 00 30          JE              Gef,#03 [FALSE] 8273
 8245:  4a 02 1e 50             TEST_ATTR       L01,#1e [FALSE] 8257
 8249:  b2 ...                  PRINT           "Those don't "
 8254:  8c 00 0d                JUMP            8262
 8257:  b2 ...                  PRINT           "That doesn't "
 8262:  b3 ...                  PRINT_RET       "seem to fit the lock."
 8273:  41 ff 04 53             JE              Gef,#04 [FALSE] 8288
 8277:  b2 ...                  PRINT           "You unlock "
 8280:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 8285:  b3 ...                  PRINT_RET       "."
 8288:  b0                      RTRUE           
 8289:  41 f9 25 00 c4          JE              Ge9,#25 [FALSE] 8350
 828e:  2d ff 01                STORE           Gef,L00
 8291:  41 ff 01 00 38          JE              Gef,#01 [FALSE] 82cc
 8296:  4a 02 1e 50             TEST_ATTR       L01,#1e [FALSE] 82a8
 829a:  b2 ...                  PRINT           "They don't "
 82a5:  8c 00 0d                JUMP            82b3
 82a8:  b2 ...                  PRINT           "That doesn't "
 82b3:  b3 ...                  PRINT_RET       "seem to be something you can
lock."
 82cc:  41 ff 02 58             JE              Gef,#02 [FALSE] 82e6
 82d0:  da 2f 19 d3 02          CALL_2N         674c (L01)
 82d5:  b3 ...                  PRINT_RET       " locked at the moment."
 82e6:  41 ff 03 5f             JE              Gef,#03 [FALSE] 8307
 82ea:  b2 ...                  PRINT           "First you'll have to close "
 82ff:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 8304:  b3 ...                  PRINT_RET       "."
 8307:  41 ff 04 00 30          JE              Gef,#04 [FALSE] 833a
 830c:  4a 02 1e 50             TEST_ATTR       L01,#1e [FALSE] 831e
 8310:  b2 ...                  PRINT           "Those don't "
 831b:  8c 00 0d                JUMP            8329
 831e:  b2 ...                  PRINT           "That doesn't "
 8329:  b3 ...                  PRINT_RET       "seem to fit the lock."
 833a:  41 ff 05 53             JE              Gef,#05 [FALSE] 834f
 833e:  b2 ...                  PRINT           "You lock "
 8347:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 834c:  b3 ...                  PRINT_RET       "."
 834f:  b0                      RTRUE           
 8350:  41 f9 26 00 51          JE              Ge9,#26 [FALSE] 83a4
 8355:  2d ff 01                STORE           Gef,L00
 8358:  41 ff 01 5e             JE              Gef,#01 [FALSE] 8378
 835c:  da 2f 19 d3 02          CALL_2N         674c (L01)
 8361:  b3 ...                  PRINT_RET       " not something you can
switch."
 8378:  41 ff 02 52             JE              Gef,#02 [FALSE] 838c
 837c:  da 2f 19 d3 02          CALL_2N         674c (L01)
 8381:  b3 ...                  PRINT_RET       " already on."
 838c:  41 ff 03 55             JE              Gef,#03 [FALSE] 83a3
 8390:  b2 ...                  PRINT           "You switch "
 8399:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 839e:  b3 ...                  PRINT_RET       " on."
 83a3:  b0                      RTRUE           
 83a4:  41 f9 27 00 51          JE              Ge9,#27 [FALSE] 83f8
 83a9:  2d ff 01                STORE           Gef,L00
 83ac:  41 ff 01 5e             JE              Gef,#01 [FALSE] 83cc
 83b0:  da 2f 19 d3 02          CALL_2N         674c (L01)
 83b5:  b3 ...                  PRINT_RET       " not something you can
switch."
 83cc:  41 ff 02 52             JE              Gef,#02 [FALSE] 83e0
 83d0:  da 2f 19 d3 02          CALL_2N         674c (L01)
 83d5:  b3 ...                  PRINT_RET       " already off."
 83e0:  41 ff 03 55             JE              Gef,#03 [FALSE] 83f7
 83e4:  b2 ...                  PRINT           "You switch "
 83ed:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 83f2:  b3 ...                  PRINT_RET       " off."
 83f7:  b0                      RTRUE           
 83f8:  41 f9 28 00 b9          JE              Ge9,#28 [FALSE] 84b4
 83fd:  2d ff 01                STORE           Gef,L00
 8400:  41 ff 01 5c             JE              Gef,#01 [FALSE] 841e
 8404:  da 2f 19 d3 02          CALL_2N         674c (L01)
 8409:  b3 ...                  PRINT_RET       " not something you can open."
 841e:  41 ff 02 00 26          JE              Gef,#02 [FALSE] 8447
 8423:  4a 02 1e 4e             TEST_ATTR       L01,#1e [FALSE] 8433
 8427:  b2 ...                  PRINT           "It seems "
 8430:  8c 00 0b                JUMP            843c
 8433:  b2 ...                  PRINT           "They seem "
 843c:  b3 ...                  PRINT_RET       "to be locked."
 8447:  41 ff 03 52             JE              Gef,#03 [FALSE] 845b
 844b:  da 2f 19 d3 02          CALL_2N         674c (L01)
 8450:  b3 ...                  PRINT_RET       " already open."
 845b:  41 ff 04 00 40          JE              Gef,#04 [FALSE] 849e
 8460:  b2 ...                  PRINT           "You open "
 8469:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 846e:  b2 ...                  PRINT           ", revealing "
 8479:  d4 0f 00 08 00 40 00    ADD             #0008,#0040 -> -(SP)
 8480:  d4 8f 00 08 00 00       ADD             (SP)+,#0800 -> -(SP)
 8486:  a2 02 00 42             GET_CHILD       L01 -> -(SP) [FALSE] 848a
 848a:  e0 2b 30 0a 00 00 00    CALL_VS         c028 ((SP)+,(SP)+) -> -(SP)
 8491:  a0 00 49                JZ              (SP)+ [FALSE] 849b
 8494:  b3 ...                  PRINT_RET       "nothing."
 849b:  b3 ...                  PRINT_RET       "."
 849e:  41 ff 05 53             JE              Gef,#05 [FALSE] 84b3
 84a2:  b2 ...                  PRINT           "You open "
 84ab:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 84b0:  b3 ...                  PRINT_RET       "."
 84b3:  b0                      RTRUE           
 84b4:  41 f9 29 00 4f          JE              Ge9,#29 [FALSE] 8506
 84b9:  2d ff 01                STORE           Gef,L00
 84bc:  41 ff 01 5c             JE              Gef,#01 [FALSE] 84da
 84c0:  da 2f 19 d3 02          CALL_2N         674c (L01)
 84c5:  b3 ...                  PRINT_RET       " not something you can close."
 84da:  41 ff 02 54             JE              Gef,#02 [FALSE] 84f0
 84de:  da 2f 19 d3 02          CALL_2N         674c (L01)
 84e3:  b3 ...                  PRINT_RET       " already closed."
 84f0:  41 ff 03 53             JE              Gef,#03 [FALSE] 8505
 84f4:  b2 ...                  PRINT           "You close "
 84fd:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 8502:  b3 ...                  PRINT_RET       "."
 8505:  b0                      RTRUE           
 8506:  41 f9 2a 00 38          JE              Ge9,#2a [FALSE] 8541
 850b:  2d ff 01                STORE           Gef,L00
 850e:  41 ff 01 59             JE              Gef,#01 [FALSE] 8529
 8512:  b2 ...                  PRINT           "You're not wearing "
 8521:  da 2f 19 c0 02          CALL_2N         6700 (L01)
 8526:  b3 ...                  PRINT_RET       "."
 8529:  41 ff 02 55             JE              Gef,#02 [FALSE] 8540
 852d:  b2 ...                  PRINT           "You take off "
 8538:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 853d:  b3 ...                  PRINT_RET       "."
 8540:  b0                      RTRUE           
 8541:  41 f9 2b 00 6e          JE              Ge9,#2b [FALSE] 85b2
 8546:  2d ff 01                STORE           Gef,L00
 8549:  41 ff 01 57             JE              Gef,#01 [FALSE] 8562
 854d:  b2 ...                  PRINT           "You can't wear "
 855a:  da 2f 19 c0 02          CALL_2N         6700 (L01)
 855f:  b3 ...                  PRINT_RET       "!"
 8562:  41 ff 02 59             JE              Gef,#02 [FALSE] 857d
 8566:  b2 ...                  PRINT           "You're not holding "
 8575:  da 2f 19 c0 02          CALL_2N         6700 (L01)
 857a:  b3 ...                  PRINT_RET       "!"
 857d:  41 ff 03 5d             JE              Gef,#03 [FALSE] 859c
 8581:  b2 ...                  PRINT           "You're already wearing "
 8594:  da 2f 19 c0 02          CALL_2N         6700 (L01)
 8599:  b3 ...                  PRINT_RET       "!"
 859c:  41 ff 04 53             JE              Gef,#04 [FALSE] 85b1
 85a0:  b2 ...                  PRINT           "You put on "
 85a9:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 85ae:  b3 ...                  PRINT_RET       "."
 85b1:  b0                      RTRUE           
 85b2:  41 f9 2c 00 39          JE              Ge9,#2c [FALSE] 85ee
 85b7:  2d ff 01                STORE           Gef,L00
 85ba:  41 ff 01 56             JE              Gef,#01 [FALSE] 85d2
 85be:  da 2f 19 d3 02          CALL_2N         674c (L01)
 85c3:  b3 ...                  PRINT_RET       " plainly inedible."
 85d2:  41 ff 02 59             JE              Gef,#02 [FALSE] 85ed
 85d6:  b2 ...                  PRINT           "You eat "
 85dd:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 85e2:  b3 ...                  PRINT_RET       ". Not bad."
 85ed:  b0                      RTRUE           
 85ee:  c1 97 f9 2d 2e 59       JE              Ge9,#2d,#2e [FALSE] 860b
 85f4:  b3 ...                  PRINT_RET       "That was a rhetorical
question."
 860b:  41 f9 2f 5f             JE              Ge9,#2f [FALSE] 862c
 860f:  b3 ...                  PRINT_RET       "This dangerous act would
achieve little."
 862c:  41 f9 30 00 21          JE              Ge9,#30 [FALSE] 8650
 8631:  b3 ...                  PRINT_RET       "Nothing practical results from
your prayer."
 8650:  41 f9 31 00 23          JE              Ge9,#31 [FALSE] 8676
 8655:  b3 ...                  PRINT_RET       "The dreadful truth is, this is
not a dream."
 8676:  41 f9 32 55             JE              Ge9,#32 [FALSE] 868d
 867a:  b3 ...                  PRINT_RET       "That seems unnecessary."
 868d:  41 f9 33 57             JE              Ge9,#33 [FALSE] 86a6
 8691:  b3 ...                  PRINT_RET       "Keep your mind on the game."
 86a6:  41 f9 34 51             JE              Ge9,#34 [FALSE] 86b9
 86aa:  b3 ...                  PRINT_RET       "What a good idea."
 86b9:  41 f9 35 59             JE              Ge9,#35 [FALSE] 86d4
 86bd:  b3 ...                  PRINT_RET       "You smell nothing unexpected."
 86d4:  41 f9 36 57             JE              Ge9,#36 [FALSE] 86ed
 86d8:  b3 ...                  PRINT_RET       "You hear nothing unexpected."
 86ed:  41 f9 37 59             JE              Ge9,#37 [FALSE] 8708
 86f1:  b3 ...                  PRINT_RET       "You taste nothing unexpected."
 8708:  41 f9 38 00 51          JE              Ge9,#38 [FALSE] 875c
 870d:  2d ff 01                STORE           Gef,L00
 8710:  41 ff 01 57             JE              Gef,#01 [FALSE] 8729
 8714:  b3 ...                  PRINT_RET       "Keep your hands to yourself!"
 8729:  41 ff 02 57             JE              Gef,#02 [FALSE] 8742
 872d:  b3 ...                  PRINT_RET       "You feel nothing unexpected."
 8742:  41 ff 03 57             JE              Gef,#03 [FALSE] 875b
 8746:  b3 ...                  PRINT_RET       "If you think that'll help."
 875b:  b0                      RTRUE           
 875c:  41 f9 39 5d             JE              Ge9,#39 [FALSE] 877b
 8760:  b3 ...                  PRINT_RET       "Digging would achieve nothing
here."
 877b:  41 f9 3a 00 21          JE              Ge9,#3a [FALSE] 879f
 8780:  b2 ...                  PRINT           "Cutting "
 8787:  da 2f 19 c0 02          CALL_2N         6700 (L01)
 878c:  b3 ...                  PRINT_RET       " up would achieve little."
 879f:  41 f9 3b 5d             JE              Ge9,#3b [FALSE] 87be
 87a3:  b3 ...                  PRINT_RET       "You jump on the spot,
fruitlessly."
 87be:  c1 97 f9 3c 3d 5b       JE              Ge9,#3c,#3d [FALSE] 87dd
 87c4:  b3 ...                  PRINT_RET       "You would achieve nothing by
this."
 87dd:  41 f9 3e 5f             JE              Ge9,#3e [FALSE] 87fe
 87e1:  b3 ...                  PRINT_RET       "There's nothing suitable to
drink here."
 87fe:  41 f9 3f 5d             JE              Ge9,#3f [FALSE] 881d
 8802:  b3 ...                  PRINT_RET       "But there's no water here to
carry."
 881d:  41 f9 40 53             JE              Ge9,#40 [FALSE] 8832
 8821:  b3 ...                  PRINT_RET       "Oh, don't apologise."
 8832:  41 f9 41 00 21          JE              Ge9,#41 [FALSE] 8856
 8837:  b3 ...                  PRINT_RET       "Real adventurers do not use
such language."
 8856:  41 f9 42 49             JE              Ge9,#42 [FALSE] 8861
 885a:  b3 ...                  PRINT_RET       "Quite."
 8861:  41 f9 43 5f             JE              Ge9,#43 [FALSE] 8882
 8865:  b3 ...                  PRINT_RET       "Violence isn't the answer to
this one."
 8882:  41 f9 44 5d             JE              Ge9,#44 [FALSE] 88a1
 8886:  b3 ...                  PRINT_RET       "There's not enough water to
swim in."
 88a1:  41 f9 45 5f             JE              Ge9,#45 [FALSE] 88c2
 88a5:  b3 ...                  PRINT_RET       "There's nothing sensible to
swing here."
 88c2:  41 f9 46 5d             JE              Ge9,#46 [FALSE] 88e1
 88c6:  b2 ...                  PRINT           "You can't usefully blow "
 88d9:  da 2f 19 c0 02          CALL_2N         6700 (L01)
 88de:  b3 ...                  PRINT_RET       "."
 88e1:  41 f9 47 57             JE              Ge9,#47 [FALSE] 88fa
 88e5:  b3 ...                  PRINT_RET       "You achieve nothing by this."
 88fa:  41 f9 48 59             JE              Ge9,#48 [FALSE] 8915
 88fe:  b2 ...                  PRINT           "No, you can't set "
 890d:  da 2f 19 c0 02          CALL_2N         6700 (L01)
 8912:  b3 ...                  PRINT_RET       "."
 8915:  41 f9 49 00 21          JE              Ge9,#49 [FALSE] 8939
 891a:  b2 ...                  PRINT           "No, you can't set "
 8929:  da 2f 19 c0 02          CALL_2N         6700 (L01)
 892e:  b3 ...                  PRINT_RET       " to anything."
 8939:  41 f9 4a 57             JE              Ge9,#4a [FALSE] 8952
 893d:  b3 ...                  PRINT_RET       "You wave, feeling foolish."
 8952:  41 f9 4b 00 46          JE              Ge9,#4b [FALSE] 899b
 8957:  2d ff 01                STORE           Gef,L00
 895a:  41 ff 01 5d             JE              Gef,#01 [FALSE] 8979
 895e:  b2 ...                  PRINT           "But you aren't holding "
 8971:  da 2f 19 c0 02          CALL_2N         6700 (L01)
 8976:  b3 ...                  PRINT_RET       "."
 8979:  41 ff 02 5f             JE              Gef,#02 [FALSE] 899a
 897d:  b2 ...                  PRINT           "You look ridiculous waving "
 8992:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 8997:  b3 ...                  PRINT_RET       "."
 899a:  b0                      RTRUE           
 899b:  c1 95 f9 4c 4d 4e 00 76 JE              Ge9,#4c,#4d,#4e [FALSE] 8a17
 89a3:  2d ff 01                STORE           Gef,L00
 89a6:  41 ff 01 00 26          JE              Gef,#01 [FALSE] 89cf
 89ab:  4a 02 1e 4c             TEST_ATTR       L01,#1e [FALSE] 89b9
 89af:  b2 ...                  PRINT           "It is "
 89b6:  8c 00 0b                JUMP            89c2
 89b9:  b2 ...                  PRINT           "Those are "
 89c2:  b3 ...                  PRINT_RET       "fixed in place."
 89cf:  41 ff 02 51             JE              Gef,#02 [FALSE] 89e2
 89d3:  b3 ...                  PRINT_RET       "You are unable to."
 89e2:  41 ff 03 55             JE              Gef,#03 [FALSE] 89f9
 89e6:  b3 ...                  PRINT_RET       "Nothing obvious happens."
 89f9:  41 ff 04 5b             JE              Gef,#04 [FALSE] 8a16
 89fd:  b3 ...                  PRINT_RET       "That would be less than
courteous."
 8a16:  b0                      RTRUE           
 8a17:  41 f9 4f 00 51          JE              Ge9,#4f [FALSE] 8a6b
 8a1c:  2d ff 01                STORE           Gef,L00
 8a1f:  41 ff 01 5b             JE              Gef,#01 [FALSE] 8a3c
 8a23:  b3 ...                  PRINT_RET       "Is that the best you can think
of?"
 8a3c:  41 ff 02 55             JE              Gef,#02 [FALSE] 8a53
 8a40:  b3 ...                  PRINT_RET       "That's not a direction."
 8a53:  41 ff 03 55             JE              Gef,#03 [FALSE] 8a6a
 8a57:  b3 ...                  PRINT_RET       "Not that way you can't."
 8a6a:  b0                      RTRUE           
 8a6b:  41 f9 50 00 38          JE              Ge9,#50 [FALSE] 8aa6
 8a70:  2d ff 01                STORE           Gef,L00
 8a73:  41 ff 01 57             JE              Gef,#01 [FALSE] 8a8c
 8a77:  b3 ...                  PRINT_RET       "Keep your hands to yourself."
 8a8c:  41 ff 02 57             JE              Gef,#02 [FALSE] 8aa5
 8a90:  b3 ...                  PRINT_RET       "You achieve nothing by this."
 8aa5:  b0                      RTRUE           
 8aa6:  41 f9 51 00 3d          JE              Ge9,#51 [FALSE] 8ae6
 8aab:  2d ff 01                STORE           Gef,L00
 8aae:  41 ff 01 49             JE              Gef,#01 [FALSE] 8ab9
 8ab2:  b3 ...                  PRINT_RET       "Futile."
 8ab9:  41 ff 02 00 29          JE              Gef,#02 [FALSE] 8ae5
 8abe:  b3 ...                  PRINT_RET       "You lack the nerve when it
comes to the crucial moment."
 8ae5:  b0                      RTRUE           
 8ae6:  41 f9 52 00 3a          JE              Ge9,#52 [FALSE] 8b23
 8aeb:  2d ff 01                STORE           Gef,L00
 8aee:  41 ff 01 59             JE              Gef,#01 [FALSE] 8b09
 8af2:  b3 ...                  PRINT_RET       "You talk to yourself a while."
 8b09:  41 ff 02 57             JE              Gef,#02 [FALSE] 8b22
 8b0d:  b3 ...                  PRINT_RET       "This provokes no reaction."
 8b22:  b0                      RTRUE           
 8b23:  c1 97 f9 53 54 51       JE              Ge9,#53,#54 [FALSE] 8b38
 8b29:  b3 ...                  PRINT_RET       "There is no reply."
 8b38:  41 f9 55 51             JE              Ge9,#55 [FALSE] 8b4b
 8b3c:  b3 ...                  PRINT_RET       "Nothing is on sale."
 8b4b:  41 f9 56 57             JE              Ge9,#56 [FALSE] 8b64
 8b4f:  b3 ...                  PRINT_RET       "Your singing is abominable."
 8b64:  41 f9 57 00 23          JE              Ge9,#57 [FALSE] 8b8a
 8b69:  b3 ...                  PRINT_RET       "I don't think much is to be
achieved by that."
 8b8a:  41 f9 58 4d             JE              Ge9,#58 [FALSE] 8b99
 8b8e:  b3 ...                  PRINT_RET       "Time passes."
 8b99:  41 f9 59 5f             JE              Ge9,#59 [FALSE] 8bba
 8b9d:  b3 ...                  PRINT_RET       "You aren't feeling especially
drowsy."
 8bba:  41 f9 5a 00 25          JE              Ge9,#5a [FALSE] 8be2
 8bbf:  b2 ...                  PRINT           "You discover nothing of
interest in "
 8bda:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 8bdf:  b3 ...                  PRINT_RET       "."
 8be2:  b0                      RTRUE           

Routine 8be4, 0 locals

 8be5:  e0 07 37 98 10 07 11 00 CALL_VS         de60 (#1007,#11) -> -(SP)
 8bed:  b8                      RET_POPPED      

Routine 8bf0, 0 locals

 8bf1:  e0 07 37 98 10 07 12 00 CALL_VS         de60 (#1007,#12) -> -(SP)
 8bf9:  b8                      RET_POPPED      

Routine 8bfc, 0 locals

 8bfd:  e0 07 37 98 10 07 13 00 CALL_VS         de60 (#1007,#13) -> -(SP)
 8c05:  b8                      RET_POPPED      

Routine 8c08, 1 local

 8c09:  41 01 0f 49             JE              L00,#0f [FALSE] 8c14
 8c0d:  0d 61 01                STORE           G51,#01
 8c10:  0d 62 0f                STORE           G52,#0f
 8c13:  b0                      RTRUE           
 8c14:  50 01 00 00             LOADB           L00,#00 -> -(SP)
 8c18:  49 00 0f 61             AND             (SP)+,#0f -> G51
 8c1c:  54 01 01 00             ADD             L00,#01 -> -(SP)
 8c20:  4f 00 00 62             LOADW           (SP)+,#00 -> G52
 8c24:  b0                      RTRUE           

Routine 8c28, 2 locals

 8c29:  0d 02 00                STORE           L01,#00
 8c2c:  42 02 20 59             JL              L01,#20 [FALSE] 8c47
 8c30:  e1 27 34 36 02 0f       STOREW          #3436,L01,#0f
 8c36:  e1 27 33 b6 02 01       STOREW          #33b6,L01,#01
 8c3c:  e1 27 33 f6 02 0f       STOREW          #33f6,L01,#0f
 8c42:  95 02                   INC             L01
 8c44:  8c ff e7                JUMP            8c2c
 8c47:  50 01 01 00             LOADB           L00,#01 -> -(SP)
 8c4b:  50 01 00 00             LOADB           L00,#00 -> -(SP)
 8c4f:  d6 2f 01 00 00 00       MUL             #0100,(SP)+ -> -(SP)
 8c55:  74 00 00 5e             ADD             (SP)+,(SP)+ -> G4e
 8c59:  c9 8f 5e 04 00 00       AND             G4e,#0400 -> -(SP)
 8c5f:  a0 00 48                JZ              (SP)+ [FALSE] 8c68
 8c62:  e8 7f 00                PUSH            #00
 8c65:  8c 00 05                JUMP            8c6b
 8c68:  e8 7f 01                PUSH            #01
 8c6b:  e9 7f 5f                PULL            G4f
 8c6e:  c9 8f 5e 03 ff 5e       AND             G4e,#03ff -> G4e
 8c74:  96 01                   DEC             L00
 8c76:  0d 5a 00                STORE           G4a,#00
 8c79:  0d 02 00                STORE           L01,#00
 8c7c:  54 01 03 01             ADD             L00,#03 -> L00
 8c80:  50 01 00 00             LOADB           L00,#00 -> -(SP)
 8c84:  41 00 0f 45             JE              (SP)+,#0f [FALSE] 8c8b
 8c88:  8c 00 2a                JUMP            8cb3
 8c8b:  e1 2b 34 36 02 01       STOREW          #3436,L01,L00
 8c91:  cf 2f 34 36 02 00       LOADW           #3436,L01 -> -(SP)
 8c97:  da 2f 23 02 00          CALL_2N         8c08 ((SP)+)
 8c9c:  41 61 02 c4             JE              G51,#02 [TRUE] 8ca2
 8ca0:  95 5a                   INC             G4a
 8ca2:  e1 2b 33 b6 02 61       STOREW          #33b6,L01,G51
 8ca8:  e1 2b 33 f6 02 62       STOREW          #33f6,L01,G52
 8cae:  95 02                   INC             L01
 8cb0:  8c ff cb                JUMP            8c7c
 8cb3:  54 01 01 00             ADD             L00,#01 -> -(SP)
 8cb7:  b8                      RET_POPPED      

Routine 8cb8, 1 local

 8cb9:  da 2f 23 85 01          CALL_2N         8e14 (L00)
 8cbe:  b1                      RFALSE          

Routine 8cc0, 7 locals

 8cc1:  8f 2d 78                CALL_1N         b5e0
 8cc4:  0d 04 00                STORE           L03,#00
 8cc7:  42 04 0a 51             JL              L03,#0a [FALSE] 8cda
 8ccb:  70 02 04 00             LOADB           L01,L03 -> -(SP)
 8ccf:  e2 2b 37 ab 04 00       STOREB          #37ab,L03,(SP)+
 8cd5:  95 04                   INC             L03
 8cd7:  8c ff ef                JUMP            8cc7
 8cda:  e2 97 01 00 78          STOREB          L00,#00,#78
 8cdf:  e2 97 02 00 40          STOREB          L01,#00,#40
 8ce4:  da 0f 37 98 10 08       CALL_2N         de60 (#1008)
 8cea:  8f 7d 83                CALL_1N         1f60c
 8ced:  0d ff 00                STORE           Gef,#00
 8cf0:  2d fc 01                STORE           Gec,L00
 8cf3:  e2 97 fc 01 00          STOREB          Gec,#01,#00
 8cf8:  8f 2d f1                CALL_1N         b7c4
 8cfb:  e4 af fc 02 ff          READ            Gec,L01 -> Gef
 8d00:  50 02 01 03             LOADB           L01,#01 -> L02
 8d04:  a0 03 4c                JZ              L02 [FALSE] 8d11
 8d07:  f9 07 37 98 10 07 0a    CALL_VN         de60 (#1007,#0a)
 8d0e:  8c ff b5                JUMP            8cc4
 8d11:  4f 02 01 05             LOADW           L01,#01 -> L04
 8d15:  c1 80 05 56 b7 56 39 56 b7 45 
                               JE              L04,"oops","o","oops" [FALSE]
8d22
 8d1f:  8c 00 93                JUMP            8db3
 8d22:  c1 80 05 61 70 61 70 61 70 00 4e 
                               JE              L04,"undo","undo","undo" [FALSE]
8d79
 8d2d:  d0 1f 36 6f 01 00       LOADB           #366f,#01 -> -(SP)
 8d33:  41 00 01 00 43          JE              (SP)+,#01 [FALSE] 8d79
 8d38:  41 18 01 4c             JE              G08,#01 [FALSE] 8d46
 8d3c:  f9 07 37 98 10 07 0b    CALL_VN         de60 (#1007,#0b)
 8d43:  8c ff 80                JUMP            8cc4
 8d46:  a0 15 4c                JZ              G05 [FALSE] 8d53
 8d49:  f9 07 37 98 10 07 06    CALL_VN         de60 (#1007,#06)
 8d50:  8c ff 73                JUMP            8cc4
 8d53:  41 15 01 45             JE              G05,#01 [FALSE] 8d5a
 8d57:  8c 00 17                JUMP            8d6f
 8d5a:  41 16 01 4c             JE              G06,#01 [FALSE] 8d68
 8d5e:  f9 07 37 98 10 07 0c    CALL_VN         de60 (#1007,#0c)
 8d65:  8c ff 5e                JUMP            8cc4
 8d68:  be 0a ff 04             RESTORE_UNDO    -> L03
 8d6c:  a0 04 49                JZ              L03 [FALSE] 8d76
 8d6f:  f9 07 37 98 10 07 07    CALL_VN         de60 (#1007,#07)
 8d76:  8c ff 4d                JUMP            8cc4
 8d79:  be 09 ff 04             SAVE_UNDO       -> L03
 8d7d:  0d 16 00                STORE           G06,#00
 8d80:  0d 15 02                STORE           G05,#02
 8d83:  c1 8f 04 ff ff 45       JE              L03,#ffff [FALSE] 8d8c
 8d89:  0d 15 00                STORE           G05,#00
 8d8c:  a0 04 45                JZ              L03 [FALSE] 8d92
 8d8f:  0d 15 01                STORE           G05,#01
 8d92:  41 04 02 5d             JE              L03,#02 [FALSE] 8db1
 8d96:  f1 7f 02                SET_TEXT_STYLE  BOLDFACE
 8d99:  da 2f 2f 27 10          CALL_2N         bc9c (G00)
 8d9e:  b2 ...                  PRINT           "
"
 8da1:  f1 7f 00                SET_TEXT_STYLE  ROMAN
 8da4:  f9 07 37 98 10 07 0d    CALL_VN         de60 (#1007,#0d)
 8dab:  0d 16 01                STORE           G06,#01
 8dae:  8c ff 15                JUMP            8cc4
 8db1:  ab 03                   RET             L02
 8db3:  a0 86 4c                JZ              G76 [FALSE] 8dc0
 8db6:  f9 07 37 98 10 07 0e    CALL_VN         de60 (#1007,#0e)
 8dbd:  8c ff 06                JUMP            8cc4
 8dc0:  41 03 01 4c             JE              L02,#01 [FALSE] 8dce
 8dc4:  f9 07 37 98 10 07 0f    CALL_VN         de60 (#1007,#0f)
 8dcb:  8c fe f8                JUMP            8cc4
 8dce:  43 03 02 4c             JG              L02,#02 [FALSE] 8ddc
 8dd2:  f9 07 37 98 10 07 10    CALL_VN         de60 (#1007,#10)
 8dd9:  8c fe ea                JUMP            8cc4
 8ddc:  4f 02 03 06             LOADW           L01,#03 -> L05
 8de0:  4f 02 04 07             LOADW           L01,#04 -> L06
 8de4:  0d 04 00                STORE           L03,#00
 8de7:  42 04 0a 52             JL              L03,#0a [FALSE] 8dfb
 8deb:  d0 2f 37 ab 04 00       LOADB           #37ab,L03 -> -(SP)
 8df1:  e2 ab 02 04 00          STOREB          L01,L03,(SP)+
 8df6:  95 04                   INC             L03
 8df8:  8c ff ee                JUMP            8de7
 8dfb:  36 02 86 00             MUL             #02,G76 -> -(SP)
 8dff:  55 00 01 05             SUB             (SP)+,#01 -> L04
 8e03:  e1 ab 02 05 06          STOREW          L01,L04,L05
 8e08:  54 05 01 00             ADD             L04,#01 -> -(SP)
 8e0c:  e1 ab 02 00 07          STOREW          L01,(SP)+,L06
 8e11:  ab 03                   RET             L02

Routine 8e14, 11 locals

 8e15:  41 4e 01 5d             JE              G3e,#01 [FALSE] 8e34
 8e19:  0d 06 00                STORE           L05,#00
 8e1c:  42 06 08 52             JL              L05,#08 [FALSE] 8e30
 8e20:  cf 2f 33 16 06 00       LOADW           #3316,L05 -> -(SP)
 8e26:  e1 ab 01 06 00          STOREW          L00,L05,(SP)+
 8e2b:  95 06                   INC             L05
 8e2d:  8c ff ee                JUMP            8e1c
 8e30:  0d 4e 00                STORE           G3e,#00
 8e33:  b0                      RTRUE           
 8e34:  41 88 01 4e             JE              G78,#01 [FALSE] 8e44
 8e38:  0d 88 00                STORE           G78,#00
 8e3b:  fb 0f 35 f6 36 6f       TOKENISE        #35f6,#366f
 8e41:  8c 00 0a                JUMP            8e4c
 8e44:  f9 03 23 30 35 f6 36 6f CALL_VN         8cc0 (#35f6,#366f)
 8e4c:  0d 43 01                STORE           G33,#01
 8e4f:  d0 1f 36 6f 01 82       LOADB           #366f,#01 -> G72
 8e55:  0d 81 01                STORE           G71,#01
 8e58:  8f 7d 84                CALL_1N         1f610
 8e5b:  d0 1f 36 6f 01 82       LOADB           #366f,#01 -> G72
 8e61:  0d 08 00                STORE           L07,#00
 8e64:  0d 84 01                STORE           G74,#01
 8e67:  2d 44 22                STORE           G34,G12
 8e6a:  2d 45 10                STORE           G35,G00
 8e6d:  0d 85 00                STORE           G75,#00
 8e70:  0d 77 00                STORE           G67,#00
 8e73:  cd 4f 5e ff ff          STORE           G4e,#ffff
 8e78:  2d 81 84                STORE           G71,G74
 8e7b:  88 2a 94 83             CALL_1S         aa50 -> G73
 8e7f:  c1 8f 83 ff ff 48       JE              G73,#ffff [FALSE] 8e8b
 8e85:  0d 52 01                STORE           G42,#01
 8e88:  8c 04 b6                JUMP            933f
 8e8b:  c1 83 83 4e e9 44 e4 47 JE              G73,"g","again" [FALSE] 8e98
 8e93:  cd 4f 83 44 e4          STORE           G73,"again"
 8e98:  c1 8f 83 44 e4 00 3e    JE              G73,"again" [FALSE] 8edb
 8e9f:  61 44 22 cc             JE              G34,G12 [TRUE] 8ead
 8ea3:  f9 07 37 98 10 07 14    CALL_VN         de60 (#1007,#14)
 8eaa:  8c ff 99                JUMP            8e44
 8ead:  d0 1f 37 6a 01 00       LOADB           #376a,#01 -> -(SP)
 8eb3:  a0 00 4c                JZ              (SP)+ [FALSE] 8ec0
 8eb6:  f9 07 37 98 10 07 15    CALL_VN         de60 (#1007,#15)
 8ebd:  8c ff 86                JUMP            8e44
 8ec0:  0d 06 00                STORE           L05,#00
 8ec3:  42 06 40 53             JL              L05,#40 [FALSE] 8ed8
 8ec7:  d0 2f 37 6a 06 00       LOADB           #376a,L05 -> -(SP)
 8ecd:  e2 2b 36 6f 06 00       STOREB          #366f,L05,(SP)+
 8ed3:  95 06                   INC             L05
 8ed5:  8c ff ed                JUMP            8ec3
 8ed8:  8c ff 73                JUMP            8e4c
 8edb:  c1 8f 83 44 e4 da       JE              G73,"again" [TRUE] 8ef9
 8ee1:  0d 06 00                STORE           L05,#00
 8ee4:  42 06 40 53             JL              L05,#40 [FALSE] 8ef9
 8ee8:  d0 2f 36 6f 06 00       LOADB           #366f,L05 -> -(SP)
 8eee:  e2 2b 37 6a 06 00       STOREB          #376a,L05,(SP)+
 8ef4:  95 06                   INC             L05
 8ef6:  8c ff ed                JUMP            8ee4
 8ef9:  a0 85 00 3f             JZ              G75 [FALSE] 8f3a
 8efd:  e0 27 2d 28 44 1c 06    CALL_VS         b4a0 (G34,#1c) -> L05
 8f04:  42 06 00 49             JL              L05,#00 [FALSE] 8f0f
 8f08:  2d 85 84                STORE           G75,G74
 8f0b:  35 00 06 06             SUB             #00,L05 -> L05
 8f0f:  41 06 01 52             JE              L05,#01 [FALSE] 8f23
 8f13:  e1 9b 01 00 37          STOREW          L00,#00,G27
 8f18:  e1 9b 01 01 3a          STOREW          L00,#01,G2a
 8f1d:  e1 9b 01 02 3b          STOREW          L00,#02,G2b
 8f22:  b0                      RTRUE           
 8f23:  a0 06 cc                JZ              L05 [TRUE] 8f30
 8f26:  2d 83 06                STORE           G73,L05
 8f29:  96 81                   DEC             G71
 8f2b:  96 84                   DEC             G74
 8f2d:  8c 00 09                JUMP            8f37
 8f30:  2d 81 84                STORE           G71,G74
 8f33:  88 2a 81 83             CALL_1S         aa04 -> G73
 8f37:  8c 00 05                JUMP            8f3d
 8f3a:  0d 85 00                STORE           G75,#00
 8f3d:  a0 83 ce                JZ              G73 [TRUE] 8f4c
 8f40:  50 83 06 00             LOADB           G73,#06 -> -(SP)
 8f44:  49 00 01 00             AND             (SP)+,#01 -> -(SP)
 8f48:  a0 00 00 d6             JZ              (SP)+ [FALSE] 9020
 8f4c:  2d 81 84                STORE           G71,G74
 8f4f:  e0 15 26 a9 06 00 00 0a CALL_VS         9aa4 (#06,#00,#00) -> L09
 8f57:  c1 8f 0a 27 10 45       JE              L09,#2710 [FALSE] 8f60
 8f5d:  8c fe ee                JUMP            8e4c
 8f60:  a0 0a d4                JZ              L09 [TRUE] 8f75
 8f63:  e1 97 01 00 1c          STOREW          L00,#00,#1c
 8f68:  e1 97 01 01 01          STOREW          L00,#01,#01
 8f6d:  e1 9b 01 02 0a          STOREW          L00,#02,L09
 8f72:  8c 05 3a                JUMP            94ad
 8f75:  61 44 22 00 27          JE              G34,G12 [FALSE] 8f9f
 8f7a:  0d 07 02                STORE           L06,#02
 8f7d:  63 07 82 d4             JG              L06,G72 [TRUE] 8f93
 8f81:  88 2a 81 06             CALL_1S         aa04 -> L05
 8f85:  c1 8f 06 49 5b 45       JE              L05,"comma," [FALSE] 8f8e
 8f8b:  8c 00 19                JUMP            8fa5
 8f8e:  95 07                   INC             L06
 8f90:  8c ff ec                JUMP            8f7d
 8f93:  d9 2f 4b ad 83 83       CALL_2S         12eb4 (G73) -> G73
 8f99:  a0 83 c5                JZ              G73 [TRUE] 8f9f
 8f9c:  8c 00 83                JUMP            9020
 8f9f:  0d 52 0c                STORE           G42,#0c
 8fa2:  8c 03 9c                JUMP            933f
 8fa5:  55 81 01 07             SUB             G71,#01 -> L06
 8fa9:  41 07 01 4c             JE              L06,#01 [FALSE] 8fb7
 8fad:  f9 07 37 98 10 07 16    CALL_VN         de60 (#1007,#16)
 8fb4:  8c fe 8f                JUMP            8e44
 8fb7:  0d 81 01                STORE           G71,#01
 8fba:  0d 65 01                STORE           G55,#01
 8fbd:  0d 76 01                STORE           G66,#01
 8fc0:  e0 29 26 a9 22 45 06 0a CALL_VS         9aa4 (G12,G35,#06) -> L09
 8fc8:  0d 76 00                STORE           G66,#00
 8fcb:  c1 8f 0a 27 10 45       JE              L09,#2710 [FALSE] 8fd4
 8fd1:  8c fe 7a                JUMP            8e4c
 8fd4:  a0 0a 4c                JZ              L09 [FALSE] 8fe1
 8fd7:  f9 07 37 98 10 07 17    CALL_VN         de60 (#1007,#17)
 8fde:  8c fe 65                JUMP            8e44
 8fe1:  4a 0a 00 d1             TEST_ATTR       L09,#00 [TRUE] 8ff4
 8fe5:  4a 0a 16 cd             TEST_ATTR       L09,#16 [TRUE] 8ff4
 8fe9:  f9 06 37 98 10 07 18 0a CALL_VN         de60 (#1007,#18,L09)
 8ff1:  8c fe 52                JUMP            8e44
 8ff4:  61 81 07 cc             JE              G71,L06 [TRUE] 9002
 8ff8:  f9 07 37 98 10 07 19    CALL_VN         de60 (#1007,#19)
 8fff:  8c fe 44                JUMP            8e44
 9002:  da 2f 2b 69 0a          CALL_2N         ada4 (L09)
 9007:  54 07 01 84             ADD             L06,#01 -> G74
 900b:  2d 44 0a                STORE           G34,L09
 900e:  2d 45 0a                STORE           G35,L09
 9011:  a3 45 00                GET_PARENT      G35 -> -(SP)
 9014:  a0 00 c8                JZ              (SP)+ [TRUE] 901d
 9017:  a3 45 45                GET_PARENT      G35 -> G35
 901a:  8c ff f6                JUMP            9011
 901d:  8c fe 5a                JUMP            8e78
 9020:  50 83 06 00             LOADB           G73,#06 -> -(SP)
 9024:  49 00 02 00             AND             (SP)+,#02 -> -(SP)
 9028:  57 00 02 46             DIV             (SP)+,#02 -> G36
 902c:  41 46 01 4f             JE              G36,#01 [FALSE] 903d
 9030:  61 44 22 cb             JE              G34,G12 [TRUE] 903d
 9034:  0d 52 0c                STORE           G42,#0c
 9037:  0d 46 00                STORE           G36,#00
 903a:  8c 03 04                JUMP            933f
 903d:  50 83 07 00             LOADB           G73,#07 -> -(SP)
 9041:  35 ff 00 06             SUB             #ff,(SP)+ -> L05
 9045:  0f 00 07 00             LOADW           #00,#07 -> -(SP)
 9049:  6f 00 06 02             LOADW           (SP)+,L05 -> L01
 904d:  50 02 00 00             LOADB           L01,#00 -> -(SP)
 9051:  55 00 01 04             SUB             (SP)+,#01 -> L03
 9055:  cd 4f 74 ff ff          STORE           G64,#ffff
 905a:  cd 4f 75 ff ff          STORE           G65,#ffff
 905f:  0d 52 01                STORE           G42,#01
 9062:  0d 53 01                STORE           G43,#01
 9065:  54 02 01 05             ADD             L01,#01 -> L04
 9069:  0d 03 00                STORE           L02,#00
 906c:  63 03 04 82 d0          JG              L02,L03 [TRUE] 933f
 9071:  0d 06 00                STORE           L05,#00
 9074:  42 06 20 59             JL              L05,#20 [FALSE] 908f
 9078:  e1 27 34 36 06 0f       STOREW          #3436,L05,#0f
 907e:  e1 27 33 b6 06 01       STOREW          #33b6,L05,#01
 9084:  e1 27 33 f6 06 0f       STOREW          #33f6,L05,#0f
 908a:  95 06                   INC             L05
 908c:  8c ff e7                JUMP            9074
 908f:  d9 2f 23 0a 05 05       CALL_2S         8c28 (L04) -> L04
 9095:  0d 50 00                STORE           G40,#00
 9098:  0d 5b 00                STORE           G4b,#00
 909b:  0d 56 00                STORE           G46,#00
 909e:  0d 57 00                STORE           G47,#00
 90a1:  0d 49 00                STORE           G39,#00
 90a4:  0d 4a 00                STORE           G3a,#00
 90a7:  e1 17 32 96 00 00       STOREW          #3296,#00,#00
 90ad:  0d 69 00                STORE           G59,#00
 90b0:  0d 51 01                STORE           G41,#01
 90b3:  54 84 01 81             ADD             G74,#01 -> G71
 90b7:  cd 4f 60 ff ff          STORE           G50,#ffff
 90bc:  0d 6a 00                STORE           G5a,#00
 90bf:  0d 06 00                STORE           L05,#00
 90c2:  0d 0b 00                STORE           L0a,#00
 90c5:  0d 54 00                STORE           G44,#00
 90c8:  cf 2f 34 36 54 00       LOADW           #3436,G44 -> -(SP)
 90ce:  41 00 0f 80 a6          JE              (SP)+,#0f [TRUE] 9177
 90d3:  0d 77 00                STORE           G67,#00
 90d6:  cf 2f 33 b6 54 00       LOADW           #33b6,G44 -> -(SP)
 90dc:  41 00 02 c4             JE              (SP)+,#02 [TRUE] 90e2
 90e0:  95 06                   INC             L05
 90e2:  cf 2f 33 b6 54 00       LOADW           #33b6,G44 -> -(SP)
 90e8:  41 00 01 00 87          JE              (SP)+,#01 [FALSE] 9172
 90ed:  cf 2f 33 f6 54 00       LOADW           #33f6,G44 -> -(SP)
 90f3:  41 00 02 45             JE              (SP)+,#02 [FALSE] 90fa
 90f7:  0d 0b 01                STORE           L0a,#01
 90fa:  cf 2f 33 f6 54 00       LOADW           #33f6,G44 -> -(SP)
 9100:  c1 97 00 04 05 00 6d    JE              (SP)+,#04,#05 [FALSE] 9172
 9107:  41 06 01 00 68          JE              L05,#01 [FALSE] 9172
 910c:  95 54                   INC             G44
 910e:  cf 2f 33 b6 54 00       LOADW           #33b6,G44 -> -(SP)
 9114:  41 00 02 00 58          JE              (SP)+,#02 [FALSE] 916f
 9119:  cf 2f 33 b6 54 00       LOADW           #33b6,G44 -> -(SP)
 911f:  41 00 02 47             JE              (SP)+,#02 [FALSE] 9128
 9123:  95 54                   INC             G44
 9125:  8c ff f3                JUMP            9119
 9128:  cf 2f 33 b6 54 00       LOADW           #33b6,G44 -> -(SP)
 912e:  41 00 01 00 3e          JE              (SP)+,#01 [FALSE] 916f
 9133:  cf 2f 33 f6 54 00       LOADW           #33f6,G44 -> -(SP)
 9139:  a0 00 00 34             JZ              (SP)+ [FALSE] 916f
 913d:  63 81 82 80 2f          JG              G71,G72 [TRUE] 916f
 9142:  55 54 01 00             SUB             G44,#01 -> -(SP)
 9146:  cf 2f 33 f6 00 00       LOADW           #33f6,(SP)+ -> -(SP)
 914c:  88 2a 81 00             CALL_1S         aa04 -> -(SP)
 9150:  61 00 00 5a             JE              (SP)+,(SP)+ [FALSE] 916c
 9154:  e0 29 26 a9 45 44 00 0a CALL_VS         9aa4 (G35,G34,#00) -> L09
 915c:  c1 8f 0a 27 10 45       JE              L09,#2710 [FALSE] 9165
 9162:  8c fc e9                JUMP            8e4c
 9165:  42 0a 02 c5             JL              L09,#02 [TRUE] 916c
 9169:  2d 60 0a                STORE           G50,L09
 916c:  8c ff d0                JUMP            913d
 916f:  8c 00 07                JUMP            9177
 9172:  95 54                   INC             G44
 9174:  8c ff 53                JUMP            90c8
 9177:  0d 72 00                STORE           G62,#00
 917a:  a0 0b cd                JZ              L0a [TRUE] 9188
 917d:  41 5a 01 49             JE              G4a,#01 [FALSE] 9188
 9181:  41 5e 0f 45             JE              G4e,#0f [FALSE] 9188
 9185:  0d 72 01                STORE           G62,#01
 9188:  0d 50 00                STORE           G40,#00
 918b:  0d 5b 00                STORE           G4b,#00
 918e:  0d 56 00                STORE           G46,#00
 9191:  0d 57 00                STORE           G47,#00
 9194:  0d 49 00                STORE           G39,#00
 9197:  0d 4a 00                STORE           G3a,#00
 919a:  e1 17 32 96 00 00       STOREW          #3296,#00,#00
 91a0:  0d 51 01                STORE           G41,#01
 91a3:  54 84 01 81             ADD             G74,#01 -> G71
 91a7:  0d 54 01                STORE           G44,#01
 91aa:  e1 23 33 36 54 ff ff    STOREW          #3336,G44,#ffff
 91b1:  0d 77 00                STORE           G67,#00
 91b4:  55 54 01 00             SUB             G44,#01 -> -(SP)
 91b8:  cf 2f 34 36 00 09       LOADW           #3436,(SP)+ -> L08
 91be:  cf 2f 34 36 54 65       LOADW           #3436,G44 -> G55
 91c4:  41 09 0f 80 25          JE              L08,#0f [TRUE] 91ec
 91c9:  0d 76 00                STORE           G66,#00
 91cc:  55 54 01 00             SUB             G44,#01 -> -(SP)
 91d0:  e0 2b 25 a7 01 00 0a    CALL_VS         969c (L00,(SP)+) -> L09
 91d7:  0d 76 00                STORE           G66,#00
 91da:  c1 8f 0a 27 10 45       JE              L09,#2710 [FALSE] 91e3
 91e0:  8c fc 6b                JUMP            8e4c
 91e3:  a0 0a 45                JZ              L09 [FALSE] 91e9
 91e6:  8c 01 36                JUMP            931d
 91e9:  8c 01 2e                JUMP            9318
 91ec:  63 81 82 80 41          JG              G71,G72 [TRUE] 9230
 91f1:  88 2a 81 0a             CALL_1S         aa04 -> L09
 91f5:  c1 80 0a 5f 8a 5f 8a 5f 8a c8 
                               JE              L09,"then","then","then" [TRUE]
9205
 91ff:  c1 8f 0a 49 5b 4c       JE              L09,"comma," [FALSE] 920f
 9205:  0d 88 01                STORE           G78,#01
 9208:  55 81 01 89             SUB             G71,#01 -> G79
 920c:  8c 00 23                JUMP            9230
 920f:  0d 0b 00                STORE           L0a,#00
 9212:  42 0b 20 53             JL              L0a,#20 [FALSE] 9227
 9216:  cf 2f 33 36 0b 00       LOADW           #3336,L0a -> -(SP)
 921c:  e1 2b 33 76 0b 00       STOREW          #3376,L0a,(SP)+
 9222:  95 0b                   INC             L0a
 9224:  8c ff ed                JUMP            9212
 9227:  2d 55 54                STORE           G45,G44
 922a:  0d 51 02                STORE           G41,#02
 922d:  8c 00 ef                JUMP            931d
 9230:  42 56 01 dc             JL              G46,#01 [TRUE] 924e
 9234:  4f 01 02 00             LOADW           L00,#02 -> -(SP)
 9238:  a0 00 55                JZ              (SP)+ [FALSE] 924e
 923b:  4f 01 03 00             LOADW           L00,#03 -> -(SP)
 923f:  d9 2f 28 38 00 0a       CALL_2S         a0e0 ((SP)+) -> L09
 9245:  a0 0a c8                JZ              L09 [TRUE] 924e
 9248:  2d 51 0a                STORE           G41,L09
 924b:  8c 00 d1                JUMP            931d
 924e:  42 56 02 dc             JL              G46,#02 [TRUE] 926c
 9252:  4f 01 03 00             LOADW           L00,#03 -> -(SP)
 9256:  a0 00 55                JZ              (SP)+ [FALSE] 926c
 9259:  4f 01 02 00             LOADW           L00,#02 -> -(SP)
 925d:  d9 2f 28 38 00 0a       CALL_2S         a0e0 ((SP)+) -> L09
 9263:  a0 0a c8                JZ              L09 [TRUE] 926c
 9266:  2d 51 0a                STORE           G41,L09
 9269:  8c 00 b3                JUMP            931d
 926c:  41 72 02 50             JE              G62,#02 [FALSE] 927e
 9270:  4f 01 02 00             LOADW           L00,#02 -> -(SP)
 9274:  61 00 44 48             JE              (SP)+,G34 [FALSE] 927e
 9278:  0d 52 11                STORE           G42,#11
 927b:  8c 00 c3                JUMP            933f
 927e:  0d 86 00                STORE           G76,#00
 9281:  a0 5b d0                JZ              G4b [TRUE] 9292
 9284:  b2 ...                  PRINT           "("
 9287:  f9 27 28 fb 5b 01       CALL_VN         a3ec (G4b,#01)
 928d:  b2 ...                  PRINT           ")
"
 9292:  e1 9b 01 00 5e          STOREW          L00,#00,G4e
 9297:  e1 9b 01 01 56          STOREW          L00,#01,G46
 929c:  a0 5f 80 21             JZ              G4f [TRUE] 92bf
 92a0:  41 56 02 5d             JE              G46,#02 [FALSE] 92bf
 92a4:  4f 01 02 06             LOADW           L00,#02 -> L05
 92a8:  4f 01 03 00             LOADW           L00,#03 -> -(SP)
 92ac:  e1 9b 01 02 00          STOREW          L00,#02,(SP)+
 92b1:  e1 9b 01 03 06          STOREW          L00,#03,L05
 92b6:  2d 06 58                STORE           L05,G48
 92b9:  2d 58 59                STORE           G48,G49
 92bc:  2d 59 06                STORE           G49,L05
 92bf:  43 56 00 53             JG              G46,#00 [FALSE] 92d4
 92c3:  4f 01 02 00             LOADW           L00,#02 -> -(SP)
 92c7:  42 00 02 cb             JL              (SP)+,#02 [TRUE] 92d4
 92cb:  4f 01 02 00             LOADW           L00,#02 -> -(SP)
 92cf:  da 2f 2b 69 00          CALL_2N         ada4 ((SP)+)
 92d4:  a0 50 80 37             JZ              G40 [TRUE] 930d
 92d8:  61 44 22 00 32          JE              G34,G12 [FALSE] 930d
 92dd:  0d 4e 01                STORE           G3e,#01
 92e0:  0d 06 00                STORE           L05,#00
 92e3:  42 06 08 51             JL              L05,#08 [FALSE] 92f6
 92e7:  6f 01 06 00             LOADW           L00,L05 -> -(SP)
 92eb:  e1 2b 33 16 06 00       STOREW          #3316,L05,(SP)+
 92f1:  95 06                   INC             L05
 92f3:  8c ff ef                JUMP            92e3
 92f6:  e1 97 01 00 0f          STOREW          L00,#00,#0f
 92fb:  e1 97 01 01 01          STOREW          L00,#01,#01
 9300:  e1 9b 01 02 50          STOREW          L00,#02,G40
 9305:  f9 06 37 98 10 07 1a 50 CALL_VN         de60 (#1007,#1a,G40)
 930d:  41 88 01 48             JE              G78,#01 [FALSE] 9317
 9311:  2d 81 89                STORE           G71,G79
 9314:  8c 01 98                JUMP            94ad
 9317:  b0                      RTRUE           
 9318:  95 54                   INC             G44
 931a:  8c fe 8f                JUMP            91aa
 931d:  63 51 52 45             JG              G41,G42 [FALSE] 9324
 9321:  2d 52 51                STORE           G42,G41
 9324:  41 51 12 c9             JE              G41,#12 [TRUE] 932f
 9328:  63 51 53 45             JG              G41,G43 [FALSE] 932f
 932c:  2d 53 51                STORE           G43,G41
 932f:  41 72 02 49             JE              G62,#02 [FALSE] 933a
 9333:  41 51 11 45             JE              G41,#11 [FALSE] 933a
 9337:  8c 00 07                JUMP            933f
 933a:  95 03                   INC             L02
 933c:  8c fd 2f                JUMP            906c
 933f:  2d 51 52                STORE           G41,G42
 9342:  61 44 22 80 49          JE              G34,G12 [TRUE] 938e
 9347:  43 85 00 48             JG              G75,#00 [FALSE] 9351
 934b:  2d 84 85                STORE           G74,G75
 934e:  8c fb 21                JUMP            8e70
 9351:  2d 81 84                STORE           G71,G74
 9354:  88 2a 81 49             CALL_1S         aa04 -> G39
 9358:  c1 8f 49 49 5b 48       JE              G39,"comma," [FALSE] 9364
 935e:  88 2a 81 49             CALL_1S         aa04 -> G39
 9362:  95 84                   INC             G74
 9364:  d9 2f 2a a3 84 4a       CALL_2S         aa8c (G74) -> G3a
 936a:  e1 93 01 00 10 09       STOREW          L00,#00,#1009
 9370:  e1 97 01 01 02          STOREW          L00,#01,#02
 9375:  e1 97 01 02 01          STOREW          L00,#02,#01
 937a:  2d 58 49                STORE           G48,G39
 937d:  e1 9b 01 03 44          STOREW          L00,#03,G34
 9382:  2d 4c 84                STORE           G3c,G74
 9385:  75 82 4c 00             SUB             G72,G3c -> -(SP)
 9389:  54 00 01 4d             ADD             (SP)+,#01 -> G3d
 938d:  b0                      RTRUE           
 938e:  d9 2f 4a f1 51 00       CALL_2S         12bc4 (G41) -> -(SP)
 9394:  a0 00 c5                JZ              (SP)+ [TRUE] 939a
 9397:  8c fa ac                JUMP            8e44
 939a:  41 51 01 4c             JE              G41,#01 [FALSE] 93a8
 939e:  f9 07 37 98 10 07 1b    CALL_VN         de60 (#1007,#1b)
 93a5:  0d 86 01                STORE           G76,#01
 93a8:  41 51 02 00 2f          JE              G41,#02 [FALSE] 93da
 93ad:  f9 07 37 98 10 07 1c    CALL_VN         de60 (#1007,#1c)
 93b4:  0d 0b 00                STORE           L0a,#00
 93b7:  42 0b 20 53             JL              L0a,#20 [FALSE] 93cc
 93bb:  cf 2f 33 76 0b 00       LOADW           #3376,L0a -> -(SP)
 93c1:  e1 2b 33 36 0b 00       STOREW          #3336,L0a,(SP)+
 93c7:  95 0b                   INC             L0a
 93c9:  8c ff ed                JUMP            93b7
 93cc:  2d 54 55                STORE           G44,G45
 93cf:  f9 17 28 fb 00 01       CALL_VN         a3ec (#00,#01)
 93d5:  b2 ...                  PRINT           ".
"
 93da:  41 51 03 49             JE              G41,#03 [FALSE] 93e5
 93de:  f9 07 37 98 10 07 1d    CALL_VN         de60 (#1007,#1d)
 93e5:  41 51 04 4c             JE              G41,#04 [FALSE] 93f3
 93e9:  f9 07 37 98 10 07 1e    CALL_VN         de60 (#1007,#1e)
 93f0:  2d 86 87                STORE           G76,G77
 93f3:  41 51 05 49             JE              G41,#05 [FALSE] 93fe
 93f7:  f9 07 37 98 10 07 1f    CALL_VN         de60 (#1007,#1f)
 93fe:  41 51 06 4c             JE              G41,#06 [FALSE] 940c
 9402:  f9 07 37 98 10 07 20    CALL_VN         de60 (#1007,#20)
 9409:  2d 86 87                STORE           G76,G77
 940c:  41 51 07 49             JE              G41,#07 [FALSE] 9417
 9410:  f9 07 37 98 10 07 21    CALL_VN         de60 (#1007,#21)
 9417:  41 51 08 49             JE              G41,#08 [FALSE] 9422
 941b:  f9 07 37 98 10 07 22    CALL_VN         de60 (#1007,#22)
 9422:  41 51 09 49             JE              G41,#09 [FALSE] 942d
 9426:  f9 07 37 98 10 07 23    CALL_VN         de60 (#1007,#23)
 942d:  41 51 0a 49             JE              G41,#0a [FALSE] 9438
 9431:  f9 07 37 98 10 07 24    CALL_VN         de60 (#1007,#24)
 9438:  41 51 0b 49             JE              G41,#0b [FALSE] 9443
 943c:  f9 07 37 98 10 07 25    CALL_VN         de60 (#1007,#25)
 9443:  41 51 0c 49             JE              G41,#0c [FALSE] 944e
 9447:  f9 07 37 98 10 07 26    CALL_VN         de60 (#1007,#26)
 944e:  41 51 0d 49             JE              G41,#0d [FALSE] 9459
 9452:  f9 07 37 98 10 07 27    CALL_VN         de60 (#1007,#27)
 9459:  41 51 0e 49             JE              G41,#0e [FALSE] 9464
 945d:  f9 07 37 98 10 07 28    CALL_VN         de60 (#1007,#28)
 9464:  41 51 0f 49             JE              G41,#0f [FALSE] 946f
 9468:  f9 07 37 98 10 07 29    CALL_VN         de60 (#1007,#29)
 946f:  41 51 10 4a             JE              G41,#10 [FALSE] 947b
 9473:  f9 06 37 98 10 07 2a 68 CALL_VN         de60 (#1007,#2a,G58)
 947b:  41 51 11 57             JE              G41,#11 [FALSE] 9494
 947f:  41 67 64 4c             JE              G57,#64 [FALSE] 948d
 9483:  f9 07 37 98 10 07 2b    CALL_VN         de60 (#1007,#2b)
 948a:  8c 00 09                JUMP            9494
 948d:  f9 07 37 98 10 07 2c    CALL_VN         de60 (#1007,#2c)
 9494:  41 51 12 54             JE              G41,#12 [FALSE] 94aa
 9498:  0d 79 03                STORE           G69,#03
 949b:  a8 78 00                CALL_1S         G68 -> -(SP)
 949e:  c1 8f 00 ff ff 48       JE              (SP)+,#ffff [FALSE] 94aa
 94a4:  2d 52 53                STORE           G42,G43
 94a7:  8c fe 97                JUMP            933f
 94aa:  8c f9 99                JUMP            8e44
 94ad:  63 81 82 c1             JG              G71,G72 [TRUE] RTRUE
 94b1:  88 2a 81 06             CALL_1S         aa04 -> L05
 94b5:  c1 80 06 5f 8a 5f 8a 5f 8a c9 
                               JE              L05,"then","then","then" [TRUE]
94c6
 94bf:  c1 8f 06 49 5b 00 2e    JE              L05,"comma," [FALSE] 94f2
 94c6:  63 81 82 46             JG              G71,G72 [FALSE] 94ce
 94ca:  0d 88 00                STORE           G78,#00
 94cd:  b0                      RTRUE           
 94ce:  d9 2f 2a 9a 84 06       CALL_2S         aa68 (G74) -> L05
 94d4:  d9 2f 2a 9a 81 07       CALL_2S         aa68 (G71) -> L06
 94da:  62 06 07 4c             JL              L05,L06 [FALSE] 94e8
 94de:  e2 97 06 00 20          STOREB          L05,#00,#20
 94e3:  95 06                   INC             L05
 94e5:  8c ff f4                JUMP            94da
 94e8:  fb 0f 35 f6 36 6f       TOKENISE        #35f6,#366f
 94ee:  0d 88 01                STORE           G78,#01
 94f1:  b0                      RTRUE           
 94f2:  0d 52 02                STORE           G42,#02
 94f5:  8c fe 49                JUMP            933f

Routine 94f8, 0 locals

 94f9:  0d 6a 00                STORE           G5a,#00
 94fc:  0d 6b 00                STORE           G5b,#00
 94ff:  0d 6c 00                STORE           G5c,#00
 9502:  0d 6d 00                STORE           G5d,#00
 9505:  0d 70 00                STORE           G60,#00
 9508:  0d 6e 00                STORE           G5e,#00
 950b:  cd 4f 6f 0f ff          STORE           G5f,#0fff
 9510:  b0                      RTRUE           

Routine 9514, 7 locals

 9515:  8f 25 3e                CALL_1N         94f8
 9518:  63 81 82 46             JG              G71,G72 [FALSE] 9520
 951c:  0d 6a 01                STORE           G5a,#01
 951f:  b1                      RFALSE          
 9520:  0d 04 01                STORE           L03,#01
 9523:  a0 04 81 0c             JZ              L03 [TRUE] 9631
 9527:  88 2a 94 02             CALL_1S         aa50 -> L01
 952b:  0d 04 00                STORE           L03,#00
 952e:  0d 03 01                STORE           L02,#01
 9531:  8c 00 06                JUMP            9538
 9534:  54 03 04 03             ADD             L02,#04 -> L02
 9538:  cf 1f 37 e7 00 00       LOADW           #37e7,#00 -> -(SP)
 953e:  63 03 00 80 79          JG              L02,(SP)+ [TRUE] 95ba
 9543:  cf 2f 37 e7 03 00       LOADW           #37e7,L02 -> -(SP)
 9549:  61 02 00 00 6b          JE              L01,(SP)+ [FALSE] 95b7
 954e:  0d 04 01                STORE           L03,#01
 9551:  54 03 02 00             ADD             L02,#02 -> -(SP)
 9555:  cf 2f 37 e7 00 06       LOADW           #37e7,(SP)+ -> L05
 955b:  c1 8f 06 01 01 c5       JE              L05,#0101 [TRUE] 9564
 9561:  0d 6a 01                STORE           G5a,#01
 9564:  0d 70 01                STORE           G60,#01
 9567:  54 03 01 00             ADD             L02,#01 -> -(SP)
 956b:  cf 2f 37 e7 00 00       LOADW           #37e7,(SP)+ -> -(SP)
 9571:  69 6f 00 6f             AND             G5f,(SP)+ -> G5f
 9575:  c1 8f 06 01 00 00 2b    JE              L05,#0100 [FALSE] 95a5
 957c:  54 03 03 00             ADD             L02,#03 -> -(SP)
 9580:  cf 2f 37 e7 00 05       LOADW           #37e7,(SP)+ -> L04
 9586:  2d ff 05                STORE           Gef,L04
 9589:  41 ff 00 49             JE              Gef,#00 [FALSE] 9594
 958d:  48 6b 02 6b             OR              G5b,#02 -> G5b
 9591:  8c 00 13                JUMP            95a5
 9594:  41 ff 01 49             JE              Gef,#01 [FALSE] 959f
 9598:  48 6b 04 6b             OR              G5b,#04 -> G5b
 959c:  8c 00 08                JUMP            95a5
 959f:  d9 2f 2b 5b 05 6e       CALL_2S         ad6c (L04) -> G5e
 95a5:  41 06 09 46             JE              L05,#09 [FALSE] 95ad
 95a9:  48 6b 10 6b             OR              G5b,#10 -> G5b
 95ad:  c1 8f 06 ff f7 46       JE              L05,#fff7 [FALSE] 95b7
 95b3:  48 6b 20 6b             OR              G5b,#20 -> G5b
 95b7:  8c ff 7c                JUMP            9534
 95ba:  c1 80 02 45 62 56 ff 56 ff 4c 
                               JE              L01,"another","other","other"
[FALSE] 95ce
 95c4:  0d 6a 01                STORE           G5a,#01
 95c7:  0d 04 01                STORE           L03,#01
 95ca:  48 6b 01 6b             OR              G5b,#01 -> G5b
 95ce:  c1 80 02 45 1a 4c 10 4c fa ca 
                               JE              L01,"all","each","every" [TRUE]
95e0
 95d8:  c1 83 02 4d 03 46 dc 56 JE              L01,"everythin","both" [FALSE]
95f4
 95e0:  0d 6a 01                STORE           G5a,#01
 95e3:  0d 04 01                STORE           L03,#01
 95e6:  0d 6c 64                STORE           G5c,#64
 95e9:  41 72 01 45             JE              G62,#01 [FALSE] 95f0
 95ed:  0d 72 02                STORE           G62,#02
 95f0:  48 6b 08 6b             OR              G5b,#08 -> G5b
 95f4:  a0 71 dc                JZ              G61 [TRUE] 9611
 95f7:  d9 2f 2f 2d 02 07       CALL_2S         bcb4 (L01) -> L06
 95fd:  43 07 01 52             JG              L06,#01 [FALSE] 9611
 9601:  0d 6d 01                STORE           G5d,#01
 9604:  0d 6a 01                STORE           G5a,#01
 9607:  0d 04 01                STORE           L03,#01
 960a:  2d 6c 07                STORE           G5c,L06
 960d:  48 6b 08 6b             OR              G5b,#08 -> G5b
 9611:  41 04 01 5b             JE              L03,#01 [FALSE] 962e
 9615:  88 2a 94 00             CALL_1S         aa50 -> -(SP)
 9619:  e9 7f ff                PULL            Gef
 961c:  c1 80 ff 56 54 56 54 56 54 ca 
                               JE              Gef,"of","of","of" [TRUE] 962e
 9626:  c1 8f ff 56 54 c4       JE              Gef,"of" [TRUE] 962e
 962c:  96 81                   DEC             G71
 962e:  8c fe f4                JUMP            9523
 9631:  96 81                   DEC             G71
 9633:  43 6c 00 47             JG              G5c,#00 [FALSE] 963c
 9637:  a0 01 44                JZ              L00 [FALSE] 963c
 963a:  9b 07                   RET             #07
 963c:  b1                      RFALSE          

Routine 9640, 1 local

 9641:  4a 01 00 c1             TEST_ATTR       L00,#00 [TRUE] RTRUE
 9645:  4a 01 16 40             TEST_ATTR       L00,#16 [FALSE] RFALSE
 9649:  c1 95 5e 54 53 52 c1    JE              G4e,#54,#53,#52 [TRUE] RTRUE
 9650:  41 5e 5b c1             JE              G4e,#5b [TRUE] RTRUE
 9654:  b1                      RFALSE          

Routine 9658, 2 locals

 9659:  cf 2f 33 f6 02 00       LOADW           #33f6,L01 -> -(SP)
 965f:  61 00 01 44             JE              (SP)+,L00 [FALSE] 9665
 9663:  ab 01                   RET             L00
 9665:  cf 2f 34 36 02 00       LOADW           #3436,L01 -> -(SP)
 966b:  50 00 00 00             LOADB           (SP)+,#00 -> -(SP)
 966f:  49 00 20 00             AND             (SP)+,#20 -> -(SP)
 9673:  a0 00 45                JZ              (SP)+ [FALSE] 9679
 9676:  8b ff ff                RET             #ffff
 9679:  cf 2f 33 f6 02 00       LOADW           #33f6,L01 -> -(SP)
 967f:  61 00 01 44             JE              (SP)+,L00 [FALSE] 9685
 9683:  ab 01                   RET             L00
 9685:  95 02                   INC             L01
 9687:  cf 2f 34 36 02 00       LOADW           #3436,L01 -> -(SP)
 968d:  50 00 00 00             LOADB           (SP)+,#00 -> -(SP)
 9691:  49 00 10 00             AND             (SP)+,#10 -> -(SP)
 9695:  a0 00 3f e2             JZ              (SP)+ [FALSE] 9679
 9699:  8b ff ff                RET             #ffff

Routine 969c, 13 locals

 969d:  cf 2f 34 36 02 03       LOADW           #3436,L01 -> L02
 96a3:  da 2f 23 02 03          CALL_2N         8c08 (L02)
 96a8:  0d 63 00                STORE           G53,#00
 96ab:  0d 43 01                STORE           G33,#01
 96ae:  2d ff 61                STORE           Gef,G51
 96b1:  41 ff 01 01 05          JE              Gef,#01 [FALSE] 97b9
 96b6:  2d ff 62                STORE           Gef,G52
 96b9:  41 ff 07 00 2c          JE              Gef,#07 [FALSE] 96e8
 96be:  d9 2f 2a a3 81 04       CALL_2S         aa8c (G71) -> L03
 96c4:  88 2a 81 49             CALL_1S         aa04 -> G39
 96c8:  c1 8f 04 fc 18 45       JE              L03,#fc18 [FALSE] 96d1
 96ce:  2d 04 49                STORE           L03,G39
 96d1:  2d 4a 04                STORE           G3a,L03
 96d4:  a0 57 48                JZ              G47 [FALSE] 96dd
 96d7:  2d 58 04                STORE           G48,L03
 96da:  8c 00 05                JUMP            96e0
 96dd:  2d 59 04                STORE           G49,L03
 96e0:  95 57                   INC             G47
 96e2:  0d 0a 01                STORE           L09,#01
 96e5:  8c 03 6d                JUMP            9a53
 96e8:  41 ff 08 00 2e          JE              Gef,#08 [FALSE] 9719
 96ed:  e8 bf 81                PUSH            G71
 96f0:  95 81                   INC             G71
 96f2:  d9 2f 2a a3 00 04       CALL_2S         aa8c ((SP)+) -> L03
 96f8:  c1 8f 04 fc 18 46       JE              L03,#fc18 [FALSE] 9702
 96fe:  0d 51 03                STORE           G41,#03
 9701:  b1                      RFALSE          
 9702:  e8 bf 57                PUSH            G47
 9705:  95 57                   INC             G47
 9707:  a0 00 48                JZ              (SP)+ [FALSE] 9710
 970a:  2d 58 04                STORE           G48,L03
 970d:  8c 00 05                JUMP            9713
 9710:  2d 59 04                STORE           G49,L03
 9713:  0d 0a 01                STORE           L09,#01
 9716:  8c 03 3c                JUMP            9a53
 9719:  41 ff 06 53             JE              Gef,#06 [FALSE] 972e
 971d:  c1 95 5e 53 54 5b c6    JE              G4e,#53,#54,#5b [TRUE] 9728
 9724:  41 5e 52 45             JE              G4e,#52 [FALSE] 972b
 9728:  0d 76 01                STORE           G66,#01
 972b:  8c 00 8a                JUMP            97b6
 972e:  41 ff 09 00 85          JE              Gef,#09 [FALSE] 97b6
 9733:  2d 4c 81                STORE           G3c,G71
 9736:  54 02 01 00             ADD             L01,#01 -> -(SP)
 973a:  cf 2f 33 b6 00 00       LOADW           #33b6,(SP)+ -> -(SP)
 9740:  41 00 02 d5             JE              (SP)+,#02 [TRUE] 9757
 9744:  54 02 01 00             ADD             L01,#01 -> -(SP)
 9748:  cf 2f 34 36 00 00       LOADW           #3436,(SP)+ -> -(SP)
 974e:  41 00 0f c7             JE              (SP)+,#0f [TRUE] 9757
 9752:  da 1f 2f 89 0d          CALL_2N         be24 (#0d)
 9757:  88 2a 94 05             CALL_1S         aa50 -> L04
 975b:  c1 8f 05 ff ff d2       JE              L04,#ffff [TRUE] 9771
 9761:  54 02 01 00             ADD             L01,#01 -> -(SP)
 9765:  e0 2b 25 96 05 00 00    CALL_VS         9658 (L04,(SP)+) -> -(SP)
 976c:  42 00 00 bf e8          JL              (SP)+,#00 [TRUE] 9757
 9771:  96 81                   DEC             G71
 9773:  75 81 4c 4d             SUB             G71,G3c -> G3d
 9777:  a0 4d 43                JZ              G3d [FALSE] 977b
 977a:  b0                      RTRUE           
 977b:  c1 95 5e 54 53 52 00 34 JE              G4e,#54,#53,#52 [FALSE] 97b5
 9783:  2d 05 81                STORE           L04,G71
 9786:  2d 81 4c                STORE           G71,G3c
 9789:  88 2a 81 4b             CALL_1S         aa04 -> G3b
 978d:  c1 8f 4b 5f 6f 4a       JE              G3b,"the" [FALSE] 979b
 9793:  43 4d 01 46             JG              G3d,#01 [FALSE] 979b
 9797:  88 2a 81 4b             CALL_1S         aa04 -> G3b
 979b:  2d 81 05                STORE           G71,L04
 979e:  e8 bf 57                PUSH            G47
 97a1:  95 57                   INC             G47
 97a3:  a0 00 48                JZ              (SP)+ [FALSE] 97ac
 97a6:  2d 58 4b                STORE           G48,G3b
 97a9:  8c 00 05                JUMP            97af
 97ac:  2d 59 4b                STORE           G49,G3b
 97af:  0d 0a 01                STORE           L09,#01
 97b2:  8c 02 a0                JUMP            9a53
 97b5:  b0                      RTRUE           
 97b6:  8c 00 da                JUMP            9891
 97b9:  41 ff 02 00 5f          JE              Gef,#02 [FALSE] 981b
 97be:  50 03 00 00             LOADB           L02,#00 -> -(SP)
 97c2:  49 00 10 00             AND             (SP)+,#10 -> -(SP)
 97c6:  a0 00 c3                JZ              (SP)+ [TRUE] 97ca
 97c9:  b0                      RTRUE           
 97ca:  63 81 82 00 26          JG              G71,G72 [FALSE] 97f3
 97cf:  a0 5b 5e                JZ              G4b [FALSE] 97ee
 97d2:  62 56 5a 5a             JL              G46,G4a [FALSE] 97ee
 97d6:  2d 5b 54                STORE           G4b,G44
 97d9:  2d 5c 03                STORE           G4c,L02
 97dc:  d9 2f 2a f6 62 00       CALL_2S         abd8 (G52) -> -(SP)
 97e2:  d4 2f 27 10 00 00       ADD             #2710,(SP)+ -> -(SP)
 97e8:  e1 2b 33 36 54 00       STOREW          #3336,G44,(SP)+
 97ee:  a0 5b 43                JZ              G4b [FALSE] 97f2
 97f1:  b1                      RFALSE          
 97f2:  b0                      RTRUE           
 97f3:  88 2a 81 05             CALL_1S         aa04 -> L04
 97f7:  d9 2f 2a f6 05 00       CALL_2S         abd8 (L04) -> -(SP)
 97fd:  d4 2f 27 10 00 00       ADD             #2710,(SP)+ -> -(SP)
 9803:  e1 2b 33 36 54 00       STOREW          #3336,G44,(SP)+
 9809:  61 05 62 43             JE              L04,G52 [FALSE] 980e
 980d:  b0                      RTRUE           
 980e:  e0 2b 25 96 05 02 04    CALL_VS         9658 (L04,L01) -> L03
 9815:  42 04 00 c3             JL              L03,#00 [TRUE] 981a
 9819:  b0                      RTRUE           
 981a:  b1                      RFALSE          
 981b:  41 ff 06 00 3e          JE              Gef,#06 [FALSE] 985c
 9820:  a8 62 04                CALL_1S         G52 -> L03
 9823:  c2 8f 04 ff 38 4b       JL              L03,#ff38 [FALSE] 9832
 9829:  d4 8f 04 01 00 62       ADD             L03,#0100 -> G52
 982f:  8c 00 61                JUMP            9891
 9832:  42 04 00 c0             JL              L03,#00 [TRUE] RFALSE
 9836:  a0 04 45                JZ              L03 [FALSE] 983c
 9839:  96 5a                   DEC             G4a
 983b:  b0                      RTRUE           
 983c:  41 04 01 50             JE              L03,#01 [FALSE] 984e
 9840:  a0 57 48                JZ              G47 [FALSE] 9849
 9843:  2d 58 4b                STORE           G48,G3b
 9846:  8c 00 05                JUMP            984c
 9849:  2d 59 4b                STORE           G49,G3b
 984c:  95 57                   INC             G47
 984e:  c1 8f 04 27 10 44       JE              L03,#2710 [FALSE] 9856
 9854:  ab 04                   RET             L03
 9856:  2d 0a 04                STORE           L09,L03
 9859:  8c 01 f9                JUMP            9a53
 985c:  41 ff 05 5b             JE              Gef,#05 [FALSE] 9879
 9860:  2d 77 62                STORE           G67,G52
 9863:  0d 79 01                STORE           G69,#01
 9866:  a8 77 04                CALL_1S         G67 -> L03
 9869:  41 04 01 48             JE              L03,#01 [FALSE] 9873
 986d:  0d 62 02                STORE           G52,#02
 9870:  8c 00 05                JUMP            9876
 9873:  0d 62 00                STORE           G52,#00
 9876:  8c 00 1a                JUMP            9891
 9879:  41 ff 04 4c             JE              Gef,#04 [FALSE] 9887
 987d:  34 01 62 63             ADD             #01,G52 -> G53
 9881:  0d 62 00                STORE           G52,#00
 9884:  8c 00 0c                JUMP            9891
 9887:  41 ff 03 48             JE              Gef,#03 [FALSE] 9891
 988b:  2d 63 62                STORE           G53,G52
 988e:  0d 62 00                STORE           G52,#00
 9891:  2d 03 62                STORE           L02,G52
 9894:  0d 0d 00                STORE           L0c,#00
 9897:  c1 95 03 02 03 04 c6    JE              L02,#02,#03,#04 [TRUE] 98a2
 989e:  41 03 05 45             JE              L02,#05 [FALSE] 98a5
 98a2:  0d 0d 01                STORE           L0c,#01
 98a5:  0d 0c 00                STORE           L0b,#00
 98a8:  0d 09 01                STORE           L08,#01
 98ab:  0d 5d 00                STORE           G4d,#00
 98ae:  88 2a 81 05             CALL_1S         aa04 -> L04
 98b2:  96 81                   DEC             G71
 98b4:  cd 4f 74 ff ff          STORE           G64,#ffff
 98b9:  cd 4f 75 ff ff          STORE           G65,#ffff
 98be:  d9 2f 2b 5b 05 04       CALL_2S         ad6c (L04) -> L03
 98c4:  a0 04 80 33             JZ              L03 [TRUE] 98f9
 98c8:  2d 74 05                STORE           G64,L04
 98cb:  2d 75 04                STORE           G65,L03
 98ce:  c1 8f 04 ff ff 00 26    JE              L03,#ffff [FALSE] 98f9
 98d5:  0d 04 01                STORE           L03,#01
 98d8:  8c 00 06                JUMP            98df
 98db:  54 04 04 04             ADD             L03,#04 -> L03
 98df:  c3 8f 04 37 e7 d2       JG              L03,#37e7 [TRUE] 98f5
 98e5:  cf 2f 37 e7 04 00       LOADW           #37e7,L03 -> -(SP)
 98eb:  61 05 00 45             JE              L04,(SP)+ [FALSE] 98f2
 98ef:  8c 00 09                JUMP            98f9
 98f2:  8c ff e8                JUMP            98db
 98f5:  0d 51 09                STORE           G41,#09
 98f8:  b1                      RFALSE          
 98f9:  c1 80 05 54 53 55 4f 5b ac 48 
                               JE              L04,"me","myself","self" [FALSE]
9909
 9903:  2d 74 05                STORE           G64,L04
 9906:  2d 75 22                STORE           G65,G12
 9909:  0d 71 01                STORE           G61,#01
 990c:  2d 0b 81                STORE           L0a,G71
 990f:  d9 2f 25 45 0d 04       CALL_2S         9514 (L0c) -> L03
 9915:  a0 04 c6                JZ              L03 [TRUE] 991c
 9918:  2d 51 04                STORE           G41,L03
 991b:  b1                      RFALSE          
 991c:  2d 86 81                STORE           G76,G71
 991f:  41 03 01 80 a7          JE              L02,#01 [TRUE] 99c9
 9924:  cf 1f 32 96 00 06       LOADW           #3296,#00 -> L05
 992a:  e0 2a 26 a9 45 44 03 04 CALL_VS         9aa4 (G35,G34,L02) -> L03
 9932:  c1 8f 04 27 10 44       JE              L03,#2710 [FALSE] 993a
 9938:  ab 04                   RET             L03
 993a:  a0 04 49                JZ              L03 [FALSE] 9944
 993d:  88 29 1c 51             CALL_1S         a470 -> G41
 9941:  8c 01 4f                JUMP            9a91
 9944:  41 04 01 00 44          JE              L03,#01 [FALSE] 998b
 9949:  a0 0c 48                JZ              L0b [FALSE] 9952
 994c:  0d 0c 01                STORE           L0b,#01
 994f:  8c 00 38                JUMP            9988
 9952:  cf 1f 32 96 00 08       LOADW           #3296,#00 -> L07
 9958:  e1 1b 32 96 00 06       STOREW          #3296,#00,L05
 995e:  54 06 01 07             ADD             L05,#01 -> L06
 9962:  63 07 08 80 23          JG              L06,L07 [TRUE] 9988
 9967:  a0 09 d0                JZ              L08 [TRUE] 9978
 996a:  cf 2f 32 96 07 00       LOADW           #3296,L06 -> -(SP)
 9970:  da 2f 29 2b 00          CALL_2N         a4ac ((SP)+)
 9975:  8c 00 0d                JUMP            9983
 9978:  cf 2f 32 96 07 00       LOADW           #3296,L06 -> -(SP)
 997e:  da 2f 29 38 00          CALL_2N         a4e0 ((SP)+)
 9983:  95 07                   INC             L06
 9985:  8c ff dc                JUMP            9962
 9988:  8c 00 3d                JUMP            99c6
 998b:  a0 7f 4e                JZ              G6f [FALSE] 999a
 998e:  a0 70 cb                JZ              G60 [TRUE] 999a
 9991:  8f 25 3e                CALL_1N         94f8
 9994:  2d 81 0b                STORE           G71,L0a
 9997:  8c ff 84                JUMP            991c
 999a:  41 03 06 51             JE              L02,#06 [FALSE] 99ad
 999e:  d9 2f 25 90 04 00       CALL_2S         9640 (L03) -> -(SP)
 99a4:  a0 00 48                JZ              (SP)+ [FALSE] 99ad
 99a7:  0d 51 0b                STORE           G41,#0b
 99aa:  8c 00 e6                JUMP            9a91
 99ad:  a0 0c 48                JZ              L0b [FALSE] 99b6
 99b0:  2d 0a 04                STORE           L09,L03
 99b3:  8c 00 12                JUMP            99c6
 99b6:  a0 09 ca                JZ              L08 [TRUE] 99c1
 99b9:  da 2f 29 2b 04          CALL_2N         a4ac (L03)
 99be:  8c 00 07                JUMP            99c6
 99c1:  da 2f 29 38 04          CALL_2N         a4e0 (L03)
 99c6:  8c 00 35                JUMP            99fc
 99c9:  e0 2a 26 a9 44 45 03 04 CALL_VS         9aa4 (G34,G35,L02) -> L03
 99d1:  c1 8f 04 27 10 44       JE              L03,#2710 [FALSE] 99d9
 99d7:  ab 04                   RET             L03
 99d9:  a0 04 48                JZ              L03 [FALSE] 99e2
 99dc:  88 29 1c 51             CALL_1S         a470 -> G41
 99e0:  ab 04                   RET             L03
 99e2:  a3 04 05                GET_PARENT      L03 -> L04
 99e5:  61 05 44 d2             JE              L04,G34 [TRUE] 99f9
 99e9:  41 4e 01 4b             JE              G3e,#01 [FALSE] 99f6
 99ed:  2d 87 86                STORE           G77,G76
 99f0:  0d 51 06                STORE           G41,#06
 99f3:  8c 00 9d                JUMP            9a91
 99f6:  2d 50 04                STORE           G40,L03
 99f9:  2d 0a 04                STORE           L09,L03
 99fc:  74 86 7f 81             ADD             G76,G6f -> G71
 9a00:  88 2a 81 05             CALL_1S         aa04 -> L04
 9a04:  c1 80 05 45 59 45 59 45 59 d3 
                               JE              L04,"and","and","and" [TRUE]
9a1f
 9a0e:  c1 80 05 47 bd 4d 15 47 bd c9 
                               JE              L04,"but","except","but" [TRUE]
9a1f
 9a18:  c1 8f 05 49 5b 00 34    JE              L04,"comma," [FALSE] 9a51
 9a1f:  a0 0d 48                JZ              L0c [FALSE] 9a28
 9a22:  0d 51 07                STORE           G41,#07
 9a25:  8c 00 6b                JUMP            9a91
 9a28:  c1 80 05 47 bd 4d 15 47 bd 46 
                               JE              L04,"but","except","but" [FALSE]
9a36
 9a32:  35 01 09 09             SUB             #01,L08 -> L08
 9a36:  a0 0c 51                JZ              L0b [FALSE] 9a48
 9a39:  e1 17 32 96 00 01       STOREW          #3296,#00,#01
 9a3f:  e1 1b 32 96 01 0a       STOREW          #3296,#01,L09
 9a45:  0d 0c 01                STORE           L0b,#01
 9a48:  0d 5d 01                STORE           G4d,#01
 9a4b:  0d 5b 00                STORE           G4b,#00
 9a4e:  8c fe 5f                JUMP            98ae
 9a51:  96 81                   DEC             G71
 9a53:  a0 0c cb                JZ              L0b [TRUE] 9a5f
 9a56:  0d 0a 00                STORE           L09,#00
 9a59:  2d 69 03                STORE           G59,L02
 9a5c:  8c 00 22                JUMP            9a7f
 9a5f:  41 6a 01 00 1d          JE              G5a,#01 [FALSE] 9a7f
 9a64:  49 6b 08 00             AND             G5b,#08 -> -(SP)
 9a68:  a0 00 d6                JZ              (SP)+ [TRUE] 9a7f
 9a6b:  42 6c 64 52             JL              G5c,#64 [FALSE] 9a7f
 9a6f:  43 6c 01 4e             JG              G5c,#01 [FALSE] 9a7f
 9a73:  0d 68 01                STORE           G58,#01
 9a76:  2d 67 6c                STORE           G57,G5c
 9a79:  0d 51 10                STORE           G41,#10
 9a7c:  8c 00 14                JUMP            9a91
 9a7f:  54 56 02 00             ADD             G46,#02 -> -(SP)
 9a83:  e1 ab 01 00 0a          STOREW          L00,(SP)+,L09
 9a88:  95 56                   INC             G46
 9a8a:  e1 2b 33 36 54 0a       STOREW          #3336,G44,L09
 9a90:  b0                      RTRUE           
 9a91:  a0 71 cf                JZ              G61 [TRUE] 9aa1
 9a94:  41 6d 01 4b             JE              G5d,#01 [FALSE] 9aa1
 9a98:  0d 71 00                STORE           G61,#00
 9a9b:  2d 81 0b                STORE           G71,L0a
 9a9e:  8c fe 70                JUMP            990f
 9aa1:  b1                      RFALSE          

Routine 9aa4, 11 locals

 9aa5:  0d 7f 00                STORE           G6f,#00
 9aa8:  0d 7d 00                STORE           G6d,#00
 9aab:  2d 80 81                STORE           G70,G71
 9aae:  0d 7c 00                STORE           G6c,#00
 9ab1:  f9 2a 29 68 01 02 03    CALL_VN         a5a0 (L00,L01,L02)
 9ab8:  74 80 7f 81             ADD             G70,G6f -> G71
 9abc:  a0 7d 45                JZ              G6d [FALSE] 9ac2
 9abf:  95 81                   INC             G71
 9ac1:  b1                      RFALSE          
 9ac2:  63 80 82 80 42          JG              G70,G72 [TRUE] 9b07
 9ac7:  41 7d 01 4a             JE              G6d,#01 [FALSE] 9ad3
 9acb:  cf 1f 34 76 00 05       LOADW           #3476,#00 -> L04
 9ad1:  ab 05                   RET             L04
 9ad3:  63 81 82 80 31          JG              G71,G72 [TRUE] 9b07
 9ad8:  88 2a 81 05             CALL_1S         aa04 -> L04
 9adc:  96 81                   DEC             G71
 9ade:  c1 80 05 45 59 45 59 45 59 80 20 
                               JE              L04,"and","and","and" [TRUE]
9b07
 9ae9:  c1 80 05 49 5b 5f 8a 5f 8a d6 
                               JE              L04,"comma,","then","then"
[TRUE] 9b07
 9af3:  c1 80 05 5f 8a 47 bd 4d 15 cc 
                               JE              L04,"then","but","except" [TRUE]
9b07
 9afd:  c1 8f 05 47 bd c6       JE              L04,"but" [TRUE] 9b07
 9b03:  41 65 0f c0             JE              G55,#0f [TRUE] RFALSE
 9b07:  0d 7e 00                STORE           G6e,#00
 9b0a:  41 7d 01 48             JE              G6d,#01 [FALSE] 9b14
 9b0e:  cf 1f 34 76 00 05       LOADW           #3476,#00 -> L04
 9b14:  43 7d 01 52             JG              G6d,#01 [FALSE] 9b28
 9b18:  d9 2f 27 90 03 05       CALL_2S         9e40 (L02) -> L04
 9b1e:  c1 8f 05 ff ff c0       JE              L04,#ffff [TRUE] RFALSE
 9b24:  41 05 01 c1             JE              L04,#01 [TRUE] RTRUE
 9b28:  a0 05 d5                JZ              L04 [TRUE] 9b3e
 9b2b:  a0 5d c4                JZ              G4d [TRUE] 9b30
 9b2e:  ab 05                   RET             L04
 9b30:  a0 5b 45                JZ              G4b [FALSE] 9b36
 9b33:  2d 5b 54                STORE           G4b,G44
 9b36:  e1 2b 33 36 54 05       STOREW          #3336,G44,L04
 9b3c:  ab 05                   RET             L04
 9b3e:  63 80 82 45             JG              G70,G72 [FALSE] 9b45
 9b42:  8c 01 c1                JUMP            9d04
 9b45:  41 03 06 4c             JE              L02,#06 [FALSE] 9b53
 9b49:  f9 07 37 98 10 07 2d    CALL_VN         de60 (#1007,#2d)
 9b50:  8c 00 09                JUMP            9b5a
 9b53:  f9 07 37 98 10 07 2e    CALL_VN         de60 (#1007,#2e)
 9b5a:  2d 06 7e                STORE           L05,G6e
 9b5d:  0d 0b 00                STORE           L0a,#00
 9b60:  0d 05 01                STORE           L04,#01
 9b63:  63 05 7e 80 57          JG              L04,G6e [TRUE] 9bbd
 9b68:  cf 2f 34 f6 0b 00       LOADW           #34f6,L0a -> -(SP)
 9b6e:  61 00 05 d5             JE              (SP)+,L04 [TRUE] 9b85
 9b72:  35 00 05 00             SUB             #00,L04 -> -(SP)
 9b76:  cf 2f 34 f6 0b 00       LOADW           #34f6,L0a -> -(SP)
 9b7c:  61 00 00 c7             JE              (SP)+,(SP)+ [TRUE] 9b85
 9b80:  95 0b                   INC             L0a
 9b82:  8c ff e5                JUMP            9b68
 9b85:  cf 2f 34 76 0b 07       LOADW           #3476,L0a -> L06
 9b8b:  cf 2f 34 f6 0b 00       LOADW           #34f6,L0a -> -(SP)
 9b91:  43 00 00 4a             JG              (SP)+,#00 [FALSE] 9b9d
 9b95:  da 2f 2f 17 07          CALL_2N         bc5c (L06)
 9b9a:  8c 00 07                JUMP            9ba2
 9b9d:  da 2f 2f 09 07          CALL_2N         bc24 (L06)
 9ba2:  55 06 01 00             SUB             L05,#01 -> -(SP)
 9ba6:  62 05 00 45             JL              L04,(SP)+ [FALSE] 9bad
 9baa:  b2 ...                  PRINT           ", "
 9bad:  55 06 01 00             SUB             L05,#01 -> -(SP)
 9bb1:  61 05 00 45             JE              L04,(SP)+ [FALSE] 9bb8
 9bb5:  8d 80 e8                PRINT_PADDR     S034
 9bb8:  95 05                   INC             L04
 9bba:  8c ff a8                JUMP            9b63
 9bbd:  b2 ...                  PRINT           "?
"
 9bc2:  e0 03 23 30 36 b0 37 29 0a 
                               CALL_VS         8cc0 (#36b0,#3729) -> L09
 9bcb:  cf 1f 37 29 01 04       LOADW           #3729,#01 -> L03
 9bd1:  c1 80 04 45 1a 4c 10 4c fa cb 
                               JE              L03,"all","each","every" [TRUE]
9be4
 9bdb:  c1 83 04 4d 03 46 dc 00 52 
                               JE              L03,"everythin","both" [FALSE]
9c34
 9be4:  c1 95 03 02 03 04 c7    JE              L02,#02,#03,#04 [TRUE] 9bf0
 9beb:  41 03 05 00 3c          JE              L02,#05 [FALSE] 9c2a
 9bf0:  cf 1f 32 96 00 08       LOADW           #3296,#00 -> L07
 9bf6:  0d 05 00                STORE           L04,#00
 9bf9:  62 05 7d 00 23          JL              L04,G6d [FALSE] 9c1f
 9bfe:  74 08 05 00             ADD             L07,L04 -> -(SP)
 9c02:  42 00 3f 5b             JL              (SP)+,#3f [FALSE] 9c1f
 9c06:  cf 2f 34 76 05 07       LOADW           #3476,L04 -> L06
 9c0c:  54 05 01 00             ADD             L04,#01 -> -(SP)
 9c10:  74 00 08 00             ADD             (SP)+,L07 -> -(SP)
 9c14:  e1 2b 32 96 00 07       STOREW          #3296,(SP)+,L06
 9c1a:  95 05                   INC             L04
 9c1c:  8c ff dc                JUMP            9bf9
 9c1f:  74 05 08 00             ADD             L04,L07 -> -(SP)
 9c23:  e1 1b 32 96 00 00       STOREW          #3296,#00,(SP)+
 9c29:  b0                      RTRUE           
 9c2a:  f9 07 37 98 10 07 2f    CALL_VN         de60 (#1007,#2f)
 9c31:  8c ff 90                JUMP            9bc2
 9c34:  a0 04 80 21             JZ              L03 [TRUE] 9c57
 9c38:  50 04 06 06             LOADB           L03,#06 -> L05
 9c3c:  49 06 01 00             AND             L05,#01 -> -(SP)
 9c40:  21 00 00 d5             JE              #00,(SP)+ [TRUE] 9c57
 9c44:  f9 03 2b 00 35 f6 36 b0 CALL_VN         ac00 (#35f6,#36b0)
 9c4c:  f9 03 2b 00 36 6f 37 29 CALL_VN         ac00 (#366f,#3729)
 9c54:  8b 27 10                RET             #2710
 9c57:  d9 2f 2a 9a 80 00       CALL_2S         aa68 (G70) -> -(SP)
 9c5d:  d5 8f 00 35 f6 07       SUB             (SP)+,#35f6 -> L06
 9c63:  d0 1f 36 b0 01 00       LOADB           #36b0,#01 -> -(SP)
 9c69:  54 00 01 08             ADD             (SP)+,#01 -> L07
 9c6d:  d0 1f 35 f6 00 00       LOADB           #35f6,#00 -> -(SP)
 9c73:  d4 2f 35 f6 00 00       ADD             #35f6,(SP)+ -> -(SP)
 9c79:  55 00 01 06             SUB             (SP)+,#01 -> L05
 9c7d:  d4 2f 35 f6 07 00       ADD             #35f6,L06 -> -(SP)
 9c83:  74 00 08 00             ADD             (SP)+,L07 -> -(SP)
 9c87:  62 06 00 d4             JL              L05,(SP)+ [TRUE] 9c9d
 9c8b:  75 06 08 00             SUB             L05,L07 -> -(SP)
 9c8f:  30 00 00 00             LOADB           #00,(SP)+ -> -(SP)
 9c93:  e2 9b 06 00 00          STOREB          L05,#00,(SP)+
 9c98:  96 06                   DEC             L05
 9c9a:  8c ff e2                JUMP            9c7d
 9c9d:  0d 05 00                STORE           L04,#00
 9ca0:  62 05 08 5b             JL              L04,L07 [FALSE] 9cbd
 9ca4:  34 02 05 00             ADD             #02,L04 -> -(SP)
 9ca8:  d0 2f 36 b0 00 00       LOADB           #36b0,(SP)+ -> -(SP)
 9cae:  74 07 05 00             ADD             L06,L04 -> -(SP)
 9cb2:  e2 2b 35 f6 00 00       STOREB          #35f6,(SP)+,(SP)+
 9cb8:  95 05                   INC             L04
 9cba:  8c ff e5                JUMP            9ca0
 9cbd:  74 07 08 00             ADD             L06,L07 -> -(SP)
 9cc1:  55 00 01 00             SUB             (SP)+,#01 -> -(SP)
 9cc5:  e2 27 35 f6 00 20       STOREB          #35f6,(SP)+,#20
 9ccb:  d0 1f 35 f6 01 00       LOADB           #35f6,#01 -> -(SP)
 9cd1:  74 00 08 00             ADD             (SP)+,L07 -> -(SP)
 9cd5:  e2 1b 35 f6 01 00       STOREB          #35f6,#01,(SP)+
 9cdb:  d0 1f 35 f6 00 00       LOADB           #35f6,#00 -> -(SP)
 9ce1:  55 00 01 00             SUB             (SP)+,#01 -> -(SP)
 9ce5:  d0 1f 35 f6 01 00       LOADB           #35f6,#01 -> -(SP)
 9ceb:  62 00 00 ce             JL              (SP)+,(SP)+ [TRUE] 9cfb
 9cef:  d0 1f 35 f6 00 00       LOADB           #35f6,#00 -> -(SP)
 9cf5:  e2 1b 35 f6 01 00       STOREB          #35f6,#01,(SP)+
 9cfb:  fb 0f 35 f6 36 6f       TOKENISE        #35f6,#366f
 9d01:  8b 27 10                RET             #2710
 9d04:  41 03 06 4c             JE              L02,#06 [FALSE] 9d12
 9d08:  f9 07 37 98 10 07 30    CALL_VN         de60 (#1007,#30)
 9d0f:  8c 00 09                JUMP            9d19
 9d12:  f9 07 37 98 10 07 31    CALL_VN         de60 (#1007,#31)
 9d19:  f9 17 28 fb 00 01       CALL_VN         a3ec (#00,#01)
 9d1f:  b2 ...                  PRINT           "?
"
 9d24:  e0 03 23 30 36 b0 37 29 0a 
                               CALL_VS         8cc0 (#36b0,#3729) -> L09
 9d2d:  cf 1f 37 29 01 04       LOADW           #3729,#01 -> L03
 9d33:  a0 04 80 21             JZ              L03 [TRUE] 9d56
 9d37:  50 04 06 06             LOADB           L03,#06 -> L05
 9d3b:  49 06 01 00             AND             L05,#01 -> -(SP)
 9d3f:  21 00 00 d5             JE              #00,(SP)+ [TRUE] 9d56
 9d43:  f9 03 2b 00 35 f6 36 b0 CALL_VN         ac00 (#35f6,#36b0)
 9d4b:  f9 03 2b 00 36 6f 37 29 CALL_VN         ac00 (#366f,#3729)
 9d53:  8b 27 10                RET             #2710
 9d56:  d0 1f 36 6f 01 09       LOADB           #366f,#01 -> L08
 9d5c:  a0 5b 5d                JZ              G4b [FALSE] 9d7a
 9d5f:  0d 07 01                STORE           L06,#01
 9d62:  63 07 0a d3             JG              L06,L09 [TRUE] 9d77
 9d66:  74 09 07 00             ADD             L08,L06 -> -(SP)
 9d6a:  f9 22 29 5c 00 37 29 07 CALL_VN         a570 ((SP)+,#3729,L06)
 9d72:  95 07                   INC             L06
 9d74:  8c ff ed                JUMP            9d62
 9d77:  8c 00 ba                JUMP            9e32
 9d7a:  75 54 5b 06             SUB             G44,G4b -> L05
 9d7e:  0d 07 01                STORE           L06,#01
 9d81:  63 07 0a d7             JG              L06,L09 [TRUE] 9d9a
 9d85:  74 09 07 00             ADD             L08,L06 -> -(SP)
 9d89:  74 00 06 00             ADD             (SP)+,L05 -> -(SP)
 9d8d:  f9 22 29 5c 00 37 29 07 CALL_VN         a570 ((SP)+,#3729,L06)
 9d95:  95 07                   INC             L06
 9d97:  8c ff e9                JUMP            9d81
 9d9a:  2d 06 5b                STORE           L05,G4b
 9d9d:  62 06 54 00 92          JL              L05,G44 [FALSE] 9e32
 9da2:  cf 2f 33 36 06 00       LOADW           #3336,L05 -> -(SP)
 9da8:  42 00 02 80 54          JL              (SP)+,#02 [TRUE] 9dff
 9dad:  cf 2f 33 36 06 00       LOADW           #3336,L05 -> -(SP)
 9db3:  c2 8f 00 27 10 00 47    JL              (SP)+,#2710 [FALSE] 9dff
 9dba:  cf 2f 33 36 06 00       LOADW           #3336,L05 -> -(SP)
 9dc0:  da 2f 2b 69 00          CALL_2N         ada4 ((SP)+)
 9dc5:  0d 05 00                STORE           L04,#00
 9dc8:  8c 00 06                JUMP            9dcf
 9dcb:  54 05 03 05             ADD             L04,#03 -> L04
 9dcf:  c3 8f 05 37 cd 80 28    JG              L04,#37cd [TRUE] 9dfc
 9dd6:  54 05 02 00             ADD             L04,#02 -> -(SP)
 9dda:  cf 2f 37 cd 00 00       LOADW           #37cd,(SP)+ -> -(SP)
 9de0:  cf 2f 33 36 06 00       LOADW           #3336,L05 -> -(SP)
 9de6:  61 00 00 51             JE              (SP)+,(SP)+ [FALSE] 9df9
 9dea:  cf 2f 37 cd 05 00       LOADW           #37cd,L04 -> -(SP)
 9df0:  e1 1b 37 29 01 00       STOREW          #3729,#01,(SP)+
 9df6:  8c 00 05                JUMP            9dfc
 9df9:  8c ff d1                JUMP            9dcb
 9dfc:  8c 00 1a                JUMP            9e17
 9dff:  cf 2f 33 36 06 00       LOADW           #3336,L05 -> -(SP)
 9e05:  d5 8f 00 27 10 00       SUB             (SP)+,#2710 -> -(SP)
 9e0b:  d9 2f 2a fb 00 00       CALL_2S         abec ((SP)+) -> -(SP)
 9e11:  e1 1b 37 29 01 00       STOREW          #3729,#01,(SP)+
 9e17:  54 09 01 00             ADD             L08,#01 -> -(SP)
 9e1b:  74 00 06 00             ADD             (SP)+,L05 -> -(SP)
 9e1f:  75 00 5b 00             SUB             (SP)+,G4b -> -(SP)
 9e23:  f9 21 29 5c 00 37 29 01 CALL_VN         a570 ((SP)+,#3729,#01)
 9e2b:  95 0a                   INC             L09
 9e2d:  95 06                   INC             L05
 9e2f:  8c ff 6d                JUMP            9d9d
 9e32:  74 0a 09 00             ADD             L09,L08 -> -(SP)
 9e36:  e2 1b 36 6f 01 00       STOREB          #366f,#01,(SP)+
 9e3c:  8b 27 10                RET             #2710

Routine 9e40, 10 locals

 9e41:  55 7d 01 03             SUB             G6d,#01 -> L02
 9e45:  0d 05 00                STORE           L04,#00
 9e48:  cf 1f 34 76 00 06       LOADW           #3476,#00 -> L05
 9e4e:  0d 02 00                STORE           L01,#00
 9e51:  63 02 03 80 d4          JG              L01,L02 [TRUE] 9f28
 9e56:  cf 2f 34 76 02 07       LOADW           #3476,L01 -> L06
 9e5c:  e1 2b 35 76 02 05       STOREW          #3576,L01,L04
 9e62:  2d 08 07                STORE           L07,L06
 9e65:  a3 08 08                GET_PARENT      L07 -> L07
 9e68:  c1 a9 08 45 44 00 3f f7 JE              L07,G35,G34,#00 [FALSE] 9e65
 9e70:  a0 01 58                JZ              L00 [FALSE] 9e89
 9e73:  61 08 45 54             JE              L07,G35 [FALSE] 9e89
 9e77:  a0 63 cc                JZ              G53 [TRUE] 9e84
 9e7a:  d9 2f 29 56 07 00       CALL_2S         a558 (L06) -> -(SP)
 9e80:  41 00 01 47             JE              (SP)+,#01 [FALSE] 9e89
 9e84:  95 05                   INC             L04
 9e86:  2d 06 07                STORE           L05,L06
 9e89:  41 01 01 4e             JE              L00,#01 [FALSE] 9e99
 9e8d:  a3 07 00                GET_PARENT      L06 -> -(SP)
 9e90:  61 00 44 47             JE              (SP)+,G34 [FALSE] 9e99
 9e94:  95 05                   INC             L04
 9e96:  2d 06 07                STORE           L05,L06
 9e99:  41 01 02 4b             JE              L00,#02 [FALSE] 9ea6
 9e9d:  61 08 45 47             JE              L07,G35 [FALSE] 9ea6
 9ea1:  95 05                   INC             L04
 9ea3:  2d 06 07                STORE           L05,L06
 9ea6:  41 01 03 4e             JE              L00,#03 [FALSE] 9eb6
 9eaa:  a3 07 00                GET_PARENT      L06 -> -(SP)
 9ead:  61 00 44 47             JE              (SP)+,G34 [FALSE] 9eb6
 9eb1:  95 05                   INC             L04
 9eb3:  2d 06 07                STORE           L05,L06
 9eb6:  c1 97 01 04 05 00 3f    JE              L00,#04,#05 [FALSE] 9efa
 9ebd:  c1 8f 60 ff ff 00 1e    JE              G50,#ffff [FALSE] 9ee0
 9ec4:  41 01 04 47             JE              L00,#04 [FALSE] 9ecd
 9ec8:  95 05                   INC             L04
 9eca:  2d 06 07                STORE           L05,L06
 9ecd:  41 01 05 4e             JE              L00,#05 [FALSE] 9edd
 9ed1:  a3 07 00                GET_PARENT      L06 -> -(SP)
 9ed4:  61 00 44 c7             JE              (SP)+,G34 [TRUE] 9edd
 9ed8:  95 05                   INC             L04
 9eda:  2d 06 07                STORE           L05,L06
 9edd:  8c 00 1c                JUMP            9efa
 9ee0:  41 01 04 4b             JE              L00,#04 [FALSE] 9eed
 9ee4:  61 07 60 c7             JE              L06,G50 [TRUE] 9eed
 9ee8:  95 05                   INC             L04
 9eea:  2d 06 07                STORE           L05,L06
 9eed:  41 01 05 4b             JE              L00,#05 [FALSE] 9efa
 9ef1:  66 07 60 47             JIN             L06,G50 [FALSE] 9efa
 9ef5:  95 05                   INC             L04
 9ef7:  2d 06 07                STORE           L05,L06
 9efa:  41 01 06 51             JE              L00,#06 [FALSE] 9f0d
 9efe:  d9 2f 25 90 07 00       CALL_2S         9640 (L06) -> -(SP)
 9f04:  41 00 01 47             JE              (SP)+,#01 [FALSE] 9f0d
 9f08:  95 05                   INC             L04
 9f0a:  2d 06 07                STORE           L05,L06
 9f0d:  cf 2f 35 76 02 00       LOADW           #3576,L01 -> -(SP)
 9f13:  75 05 00 00             SUB             L04,(SP)+ -> -(SP)
 9f17:  d6 2f 03 e8 00 00       MUL             #03e8,(SP)+ -> -(SP)
 9f1d:  e1 2b 35 76 02 00       STOREW          #3576,L01,(SP)+
 9f23:  95 02                   INC             L01
 9f25:  8c ff 2b                JUMP            9e51
 9f28:  41 05 01 44             JE              L04,#01 [FALSE] 9f2e
 9f2c:  ab 06                   RET             L05
 9f2e:  41 01 06 4c             JE              L00,#06 [FALSE] 9f3c
 9f32:  a0 05 49                JZ              L04 [FALSE] 9f3c
 9f35:  cf 1f 34 76 00 00       LOADW           #3476,#00 -> -(SP)
 9f3b:  b8                      RET_POPPED      
 9f3c:  a0 6a 45                JZ              G5a [FALSE] 9f42
 9f3f:  0d 6b 00                STORE           G5b,#00
 9f42:  8f 28 6c                CALL_1N         a1b0
 9f45:  41 6a 01 00 b8          JE              G5a,#01 [FALSE] a000
 9f4a:  49 6b 08 00             AND             G5b,#08 -> -(SP)
 9f4e:  a0 00 80 b0             JZ              (SP)+ [TRUE] a000
 9f52:  c1 95 01 02 03 04 cc    JE              L00,#02,#03,#04 [TRUE] 9f63
 9f59:  41 01 05 c8             JE              L00,#05 [TRUE] 9f63
 9f5d:  0d 51 07                STORE           G41,#07
 9f60:  8b ff ff                RET             #ffff
 9f63:  0d 02 00                STORE           L01,#00
 9f66:  cf 1f 32 96 00 0a       LOADW           #3296,#00 -> L09
 9f6c:  88 28 b1 03             CALL_1S         a2c4 -> L02
 9f70:  8c 00 06                JUMP            9f77
 9f73:  88 28 b1 03             CALL_1S         a2c4 -> L02
 9f77:  c1 8f 03 ff ff 80 5f    JE              L02,#ffff [TRUE] 9fdb
 9f7e:  62 02 6c 00 5a          JL              L01,G5c [FALSE] 9fdb
 9f83:  74 02 0a 00             ADD             L01,L09 -> -(SP)
 9f87:  42 00 3f 00 51          JL              (SP)+,#3f [FALSE] 9fdb
 9f8c:  0d 09 00                STORE           L08,#00
 9f8f:  4a 03 03 c9             TEST_ATTR       L02,#03 [TRUE] 9f9a
 9f93:  4a 03 1a c5             TEST_ATTR       L02,#1a [TRUE] 9f9a
 9f97:  0d 09 01                STORE           L08,#01
 9f9a:  c1 97 01 03 04 4c       JE              L00,#03,#04 [FALSE] 9faa
 9fa0:  a3 03 00                GET_PARENT      L02 -> -(SP)
 9fa3:  61 00 44 c5             JE              (SP)+,G34 [TRUE] 9faa
 9fa7:  0d 09 00                STORE           L08,#00
 9faa:  e0 2b 7d 87 03 09 04    CALL_VS         1f61c (L02,L08) -> L03
 9fb1:  41 04 01 48             JE              L03,#01 [FALSE] 9fbb
 9fb5:  0d 09 01                STORE           L08,#01
 9fb8:  8c 00 09                JUMP            9fc2
 9fbb:  41 04 02 45             JE              L03,#02 [FALSE] 9fc2
 9fbf:  0d 09 00                STORE           L08,#00
 9fc2:  41 09 01 51             JE              L08,#01 [FALSE] 9fd5
 9fc6:  95 02                   INC             L01
 9fc8:  74 02 0a 00             ADD             L01,L09 -> -(SP)
 9fcc:  e1 2b 32 96 00 03       STOREW          #3296,(SP)+,L02
 9fd2:  8c 00 05                JUMP            9fd8
 9fd5:  2d 02 02                STORE           L01,L01
 9fd8:  8c ff 9a                JUMP            9f73
 9fdb:  62 02 6c 55             JL              L01,G5c [FALSE] 9ff2
 9fdf:  42 6c 64 51             JL              G5c,#64 [FALSE] 9ff2
 9fe3:  0d 51 10                STORE           G41,#10
 9fe6:  2d 67 6c                STORE           G57,G5c
 9fe9:  cf 1f 32 96 00 68       LOADW           #3296,#00 -> G58
 9fef:  8b ff ff                RET             #ffff
 9ff2:  74 02 0a 00             ADD             L01,L09 -> -(SP)
 9ff6:  e1 1b 32 96 00 00       STOREW          #3296,#00,(SP)+
 9ffc:  2d 69 01                STORE           G59,L00
 9fff:  b0                      RTRUE           
 a000:  0d 02 00                STORE           L01,#00
 a003:  62 02 7d 4d             JL              L01,G6d [FALSE] a012
 a007:  e1 27 34 f6 02 00       STOREW          #34f6,L01,#00
 a00d:  95 02                   INC             L01
 a00f:  8c ff f3                JUMP            a003
 a012:  0d 07 01                STORE           L06,#01
 a015:  0d 02 00                STORE           L01,#00
 a018:  62 02 7d 00 6b          JL              L01,G6d [FALSE] a086
 a01d:  cf 2f 34 f6 02 00       LOADW           #34f6,L01 -> -(SP)
 a023:  a0 00 00 5c             JZ              (SP)+ [FALSE] a081
 a027:  e8 bf 07                PUSH            L06
 a02a:  95 07                   INC             L06
 a02c:  e1 2b 34 f6 02 00       STOREW          #34f6,L01,(SP)+
 a032:  0d 09 00                STORE           L08,#00
 a035:  54 02 01 03             ADD             L01,#01 -> L02
 a039:  62 03 7d 00 37          JL              L02,G6d [FALSE] a073
 a03e:  cf 2f 34 f6 03 00       LOADW           #34f6,L02 -> -(SP)
 a044:  a0 00 00 28             JZ              (SP)+ [FALSE] a06e
 a048:  cf 2f 34 76 03 00       LOADW           #3476,L02 -> -(SP)
 a04e:  cf 2f 34 76 02 00       LOADW           #3476,L01 -> -(SP)
 a054:  e0 2b 28 c3 00 00 00    CALL_VS         a30c ((SP)+,(SP)+) -> -(SP)
 a05b:  41 00 01 51             JE              (SP)+,#01 [FALSE] a06e
 a05f:  0d 09 01                STORE           L08,#01
 a062:  cf 2f 34 f6 02 00       LOADW           #34f6,L01 -> -(SP)
 a068:  e1 2b 34 f6 03 00       STOREW          #34f6,L02,(SP)+
 a06e:  95 03                   INC             L02
 a070:  8c ff c8                JUMP            a039
 a073:  41 09 01 4c             JE              L08,#01 [FALSE] a081
 a077:  35 01 07 00             SUB             #01,L06 -> -(SP)
 a07b:  e1 2b 34 f6 02 00       STOREW          #34f6,L01,(SP)+
 a081:  95 02                   INC             L01
 a083:  8c ff 94                JUMP            a018
 a086:  96 07                   DEC             L06
 a088:  2d 7e 07                STORE           G6e,L06
 a08b:  43 07 01 00 43          JG              L06,#01 [FALSE] a0d1
 a090:  a0 6a 00 3f             JZ              G5a [FALSE] a0d1
 a094:  0d 03 00                STORE           L02,#00
 a097:  0d 05 00                STORE           L04,#00
 a09a:  0d 02 00                STORE           L01,#00
 a09d:  62 02 7d 00 2a          JL              L01,G6d [FALSE] a0ca
 a0a2:  cf 2f 34 76 02 00       LOADW           #3476,L01 -> -(SP)
 a0a8:  e0 27 7d 87 00 02 04    CALL_VS         1f61c ((SP)+,#02) -> L03
 a0af:  61 04 03 44             JE              L03,L02 [FALSE] a0b5
 a0b3:  95 05                   INC             L04
 a0b5:  63 04 03 4e             JG              L03,L02 [FALSE] a0c5
 a0b9:  2d 03 04                STORE           L02,L03
 a0bc:  0d 05 01                STORE           L04,#01
 a0bf:  cf 2f 34 76 02 06       LOADW           #3476,L01 -> L05
 a0c5:  95 02                   INC             L01
 a0c7:  8c ff d5                JUMP            a09d
 a0ca:  41 05 01 44             JE              L04,#01 [FALSE] a0d0
 a0ce:  ab 06                   RET             L05
 a0d0:  b1                      RFALSE          
 a0d1:  41 07 01 45             JE              L06,#01 [FALSE] a0d8
 a0d5:  0d 5d 01                STORE           G4d,#01
 a0d8:  88 28 b1 00             CALL_1S         a2c4 -> -(SP)
 a0dc:  b8                      RET_POPPED      

Routine a0e0, 3 locals

 a0e1:  c1 97 69 04 05 00 48    JE              G59,#04,#05 [FALSE] a12e
 a0e8:  0d 02 01                STORE           L01,#01
 a0eb:  0d 03 00                STORE           L02,#00
 a0ee:  cf 1f 32 96 00 00       LOADW           #3296,#00 -> -(SP)
 a0f4:  63 02 00 80 31          JG              L01,(SP)+ [TRUE] a128
 a0f9:  41 69 04 4c             JE              G59,#04 [FALSE] a107
 a0fd:  cf 2f 32 96 02 00       LOADW           #3296,L01 -> -(SP)
 a103:  61 00 01 50             JE              (SP)+,L00 [FALSE] a115
 a107:  41 69 05 5a             JE              G59,#05 [FALSE] a123
 a10b:  cf 2f 32 96 02 00       LOADW           #3296,L01 -> -(SP)
 a111:  66 00 01 50             JIN             (SP)+,L00 [FALSE] a123
 a115:  95 03                   INC             L02
 a117:  cf 2f 32 96 02 00       LOADW           #3296,L01 -> -(SP)
 a11d:  e1 2b 32 96 03 00       STOREW          #3296,L02,(SP)+
 a123:  95 02                   INC             L01
 a125:  8c ff c8                JUMP            a0ee
 a128:  e1 1b 32 96 00 03       STOREW          #3296,#00,L02
 a12e:  41 69 02 00 71          JE              G59,#02 [FALSE] a1a2
 a133:  41 5e 0f 00 6c          JE              G4e,#0f [FALSE] a1a2
 a138:  0d 02 01                STORE           L01,#01
 a13b:  0d 03 00                STORE           L02,#00
 a13e:  cf 1f 32 96 00 00       LOADW           #3296,#00 -> -(SP)
 a144:  63 02 00 d9             JG              L01,(SP)+ [TRUE] a15f
 a148:  a3 44 00                GET_PARENT      G34 -> -(SP)
 a14b:  cf 2f 32 96 02 00       LOADW           #3296,L01 -> -(SP)
 a151:  a3 00 00                GET_PARENT      (SP)+ -> -(SP)
 a154:  61 00 00 44             JE              (SP)+,(SP)+ [FALSE] a15a
 a158:  95 03                   INC             L02
 a15a:  95 02                   INC             L01
 a15c:  8c ff e1                JUMP            a13e
 a15f:  41 72 02 c7             JE              G62,#02 [TRUE] a168
 a163:  43 03 00 00 3c          JG              L02,#00 [FALSE] a1a2
 a168:  0d 02 01                STORE           L01,#01
 a16b:  0d 03 00                STORE           L02,#00
 a16e:  cf 1f 32 96 00 00       LOADW           #3296,#00 -> -(SP)
 a174:  63 02 00 80 25          JG              L01,(SP)+ [TRUE] a19c
 a179:  a3 44 00                GET_PARENT      G34 -> -(SP)
 a17c:  cf 2f 32 96 02 00       LOADW           #3296,L01 -> -(SP)
 a182:  a3 00 00                GET_PARENT      (SP)+ -> -(SP)
 a185:  61 00 00 50             JE              (SP)+,(SP)+ [FALSE] a197
 a189:  95 03                   INC             L02
 a18b:  cf 2f 32 96 02 00       LOADW           #3296,L01 -> -(SP)
 a191:  e1 2b 32 96 03 00       STOREW          #3296,L02,(SP)+
 a197:  95 02                   INC             L01
 a199:  8c ff d4                JUMP            a16e
 a19c:  e1 1b 32 96 00 03       STOREW          #3296,#00,L02
 a1a2:  cf 1f 32 96 00 02       LOADW           #3296,#00 -> L01
 a1a8:  a0 02 44                JZ              L01 [FALSE] a1ad
 a1ab:  9b 11                   RET             #11
 a1ad:  b1                      RFALSE          

Routine a1b0, 7 locals

 a1b1:  49 6b 02 00             AND             G5b,#02 -> -(SP)
 a1b5:  a0 00 c6                JZ              (SP)+ [TRUE] a1bc
 a1b8:  54 05 2d 05             ADD             L04,#2d -> L04
 a1bc:  49 6b 04 00             AND             G5b,#04 -> -(SP)
 a1c0:  a0 00 c6                JZ              (SP)+ [TRUE] a1c7
 a1c3:  54 05 2d 05             ADD             L04,#2d -> L04
 a1c7:  49 6b 10 00             AND             G5b,#10 -> -(SP)
 a1cb:  a0 00 c6                JZ              (SP)+ [TRUE] a1d2
 a1ce:  54 05 2d 05             ADD             L04,#2d -> L04
 a1d2:  49 6b 20 00             AND             G5b,#20 -> -(SP)
 a1d6:  a0 00 c6                JZ              (SP)+ [TRUE] a1dd
 a1d9:  54 05 2d 05             ADD             L04,#2d -> L04
 a1dd:  a0 6e c6                JZ              G5e [TRUE] a1e4
 a1e0:  54 05 2d 05             ADD             L04,#2d -> L04
 a1e4:  0d 06 1e                STORE           L05,#1e
 a1e7:  0d 07 14                STORE           L06,#14
 a1ea:  c1 97 5e 0f 11 48       JE              G4e,#0f,#11 [FALSE] a1f6
 a1f0:  0d 06 14                STORE           L05,#14
 a1f3:  0d 07 1e                STORE           L06,#1e
 a1f6:  0d 04 00                STORE           L03,#00
 a1f9:  62 04 7d 00 c7          JL              L03,G6d [FALSE] a2c3
 a1fe:  cf 2f 34 76 04 03       LOADW           #3476,L03 -> L02
 a204:  a3 03 01                GET_PARENT      L02 -> L00
 a207:  0d 02 00                STORE           L01,#00
 a20a:  49 6b 02 00             AND             G5b,#02 -> -(SP)
 a20e:  a0 00 ca                JZ              (SP)+ [TRUE] a219
 a211:  61 01 44 46             JE              L00,G34 [FALSE] a219
 a215:  54 02 2d 02             ADD             L01,#2d -> L01
 a219:  49 6b 04 00             AND             G5b,#04 -> -(SP)
 a21d:  a0 00 ca                JZ              (SP)+ [TRUE] a228
 a220:  61 01 45 46             JE              L00,G35 [FALSE] a228
 a224:  54 02 2d 02             ADD             L01,#2d -> L01
 a228:  49 6b 10 00             AND             G5b,#10 -> -(SP)
 a22c:  a0 00 ca                JZ              (SP)+ [TRUE] a237
 a22f:  4a 03 09 46             TEST_ATTR       L02,#09 [FALSE] a237
 a233:  54 02 2d 02             ADD             L01,#2d -> L01
 a237:  49 6b 20 00             AND             G5b,#20 -> -(SP)
 a23b:  a0 00 ca                JZ              (SP)+ [TRUE] a246
 a23e:  4a 03 09 c6             TEST_ATTR       L02,#09 [TRUE] a246
 a242:  54 02 2d 02             ADD             L01,#2d -> L01
 a246:  a0 6e ca                JZ              G5e [TRUE] a251
 a249:  61 01 6e 46             JE              L00,G5e [FALSE] a251
 a24d:  54 02 2d 02             ADD             L01,#2d -> L01
 a251:  62 02 05 4c             JL              L01,L04 [FALSE] a25f
 a255:  e1 23 34 76 04 ff ff    STOREW          #3476,L03,#ffff
 a25c:  8c 00 61                JUMP            a2be
 a25f:  0d 02 00                STORE           L01,#00
 a262:  4a 03 03 c5             TEST_ATTR       L02,#03 [TRUE] a269
 a266:  0d 02 32                STORE           L01,#32
 a269:  61 01 44 49             JE              L00,G34 [FALSE] a274
 a26d:  74 02 06 02             ADD             L01,L05 -> L01
 a271:  8c 00 18                JUMP            a28a
 a274:  61 01 45 49             JE              L00,G35 [FALSE] a27f
 a278:  74 02 07 02             ADD             L01,L06 -> L01
 a27c:  8c 00 0d                JUMP            a28a
 a27f:  a0 02 4a                JZ              L01 [FALSE] a28a
 a282:  41 01 06 c6             JE              L00,#06 [TRUE] a28a
 a286:  54 02 0a 02             ADD             L01,#0a -> L01
 a28a:  e0 27 7d 87 03 02 00    CALL_VS         1f61c (L02,#02) -> -(SP)
 a291:  74 02 00 02             ADD             L01,(SP)+ -> L01
 a295:  36 02 02 02             MUL             #02,L01 -> L01
 a299:  d9 2f 2a e4 03 00       CALL_2S         ab90 (L02) -> -(SP)
 a29f:  cf 2f 37 b5 00 00       LOADW           #37b5,(SP)+ -> -(SP)
 a2a5:  69 6f 00 00             AND             G5f,(SP)+ -> -(SP)
 a2a9:  a0 00 c4                JZ              (SP)+ [TRUE] a2ae
 a2ac:  95 02                   INC             L01
 a2ae:  cf 2f 35 76 04 00       LOADW           #3576,L03 -> -(SP)
 a2b4:  74 00 02 00             ADD             (SP)+,L01 -> -(SP)
 a2b8:  e1 2b 35 76 04 00       STOREW          #3576,L03,(SP)+
 a2be:  95 04                   INC             L03
 a2c0:  8c ff 38                JUMP            a1f9
 a2c3:  b0                      RTRUE           

Routine a2c4, 4 locals

 a2c5:  0d 01 00                STORE           L00,#00
 a2c8:  cd 4f 03 ff ff          STORE           L02,#ffff
 a2cd:  0d 04 00                STORE           L03,#00
 a2d0:  62 04 7d 00 21          JL              L03,G6d [FALSE] a2f4
 a2d5:  cf 2f 34 76 04 00       LOADW           #3476,L03 -> -(SP)
 a2db:  42 00 00 d2             JL              (SP)+,#00 [TRUE] a2ef
 a2df:  cf 2f 35 76 04 02       LOADW           #3576,L03 -> L01
 a2e5:  63 02 03 48             JG              L01,L02 [FALSE] a2ef
 a2e9:  2d 03 02                STORE           L02,L01
 a2ec:  2d 01 04                STORE           L00,L03
 a2ef:  95 04                   INC             L03
 a2f1:  8c ff de                JUMP            a2d0
 a2f4:  42 03 00 45             JL              L02,#00 [FALSE] a2fb
 a2f8:  8b ff ff                RET             #ffff
 a2fb:  cf 2f 34 76 01 04       LOADW           #3476,L00 -> L03
 a301:  e1 23 34 76 01 ff ff    STOREW          #3476,L00,#ffff
 a308:  ab 04                   RET             L03

Routine a30c, 9 locals

 a30d:  61 01 02 c1             JE              L00,L01 [TRUE] RTRUE
 a311:  a0 01 c0                JZ              L00 [TRUE] RFALSE
 a314:  a0 02 c0                JZ              L01 [TRUE] RFALSE
 a317:  a3 01 00                GET_PARENT      L00 -> -(SP)
 a31a:  41 00 06 c0             JE              (SP)+,#06 [TRUE] RFALSE
 a31e:  a3 02 00                GET_PARENT      L01 -> -(SP)
 a321:  41 00 06 c0             JE              (SP)+,#06 [TRUE] RFALSE
 a325:  51 01 30 00             GET_PROP        L00,#30 -> -(SP)
 a329:  a0 00 4a                JZ              (SP)+ [FALSE] a334
 a32c:  51 02 30 00             GET_PROP        L01,#30 -> -(SP)
 a330:  a0 00 80 32             JZ              (SP)+ [TRUE] a364
 a334:  51 02 30 00             GET_PROP        L01,#30 -> -(SP)
 a338:  51 01 30 00             GET_PROP        L00,#30 -> -(SP)
 a33c:  61 00 00 40             JE              (SP)+,(SP)+ [FALSE] RFALSE
 a340:  cd 4f 40 10 04          STORE           G30,#1004
 a345:  2d 41 01                STORE           G31,L00
 a348:  2d 42 02                STORE           G32,L01
 a34b:  2d 08 81                STORE           L07,G71
 a34e:  e0 27 2d 28 01 30 07    CALL_VS         b4a0 (L00,#30) -> L06
 a355:  2d 81 08                STORE           G71,L07
 a358:  c1 8f 07 ff ff c1       JE              L06,#ffff [TRUE] RTRUE
 a35e:  c1 8f 07 ff fe c0       JE              L06,#fffe [TRUE] RFALSE
 a364:  52 01 01 03             GET_PROP_ADDR   L00,#01 -> L02
 a368:  52 01 01 ff             GET_PROP_ADDR   L00,#01 -> Gef
 a36c:  a0 ff c5                JZ              Gef [TRUE] a372
 a36f:  a4 ff ff                GET_PROP_LEN    Gef -> Gef
 a372:  e8 bf ff                PUSH            Gef
 a375:  57 00 02 05             DIV             (SP)+,#02 -> L04
 a379:  52 02 01 04             GET_PROP_ADDR   L01,#01 -> L03
 a37d:  52 02 01 ff             GET_PROP_ADDR   L01,#01 -> Gef
 a381:  a0 ff c5                JZ              Gef [TRUE] a387
 a384:  a4 ff ff                GET_PROP_LEN    Gef -> Gef
 a387:  e8 bf ff                PUSH            Gef
 a38a:  57 00 02 06             DIV             (SP)+,#02 -> L05
 a38e:  0d 07 00                STORE           L06,#00
 a391:  62 07 05 00 28          JL              L06,L04 [FALSE] a3bc
 a396:  0d 09 00                STORE           L08,#00
 a399:  0d 08 00                STORE           L07,#00
 a39c:  62 08 06 56             JL              L07,L05 [FALSE] a3b4
 a3a0:  6f 04 08 00             LOADW           L03,L07 -> -(SP)
 a3a4:  6f 03 07 00             LOADW           L02,L06 -> -(SP)
 a3a8:  61 00 00 45             JE              (SP)+,(SP)+ [FALSE] a3af
 a3ac:  0d 09 01                STORE           L08,#01
 a3af:  95 08                   INC             L07
 a3b1:  8c ff ea                JUMP            a39c
 a3b4:  a0 09 c0                JZ              L08 [TRUE] RFALSE
 a3b7:  95 07                   INC             L06
 a3b9:  8c ff d7                JUMP            a391
 a3bc:  0d 08 00                STORE           L07,#00
 a3bf:  62 08 06 00 28          JL              L07,L05 [FALSE] a3ea
 a3c4:  0d 09 00                STORE           L08,#00
 a3c7:  0d 07 00                STORE           L06,#00
 a3ca:  62 07 05 56             JL              L06,L04 [FALSE] a3e2
 a3ce:  6f 04 08 00             LOADW           L03,L07 -> -(SP)
 a3d2:  6f 03 07 00             LOADW           L02,L06 -> -(SP)
 a3d6:  61 00 00 45             JE              (SP)+,(SP)+ [FALSE] a3dd
 a3da:  0d 09 01                STORE           L08,#01
 a3dd:  95 07                   INC             L06
 a3df:  8c ff ea                JUMP            a3ca
 a3e2:  a0 09 c0                JZ              L08 [TRUE] RFALSE
 a3e5:  95 08                   INC             L07
 a3e7:  8c ff d7                JUMP            a3bf
 a3ea:  b0                      RTRUE           

Routine a3ec, 6 locals

 a3ed:  a0 01 00 1f             JZ              L00 [FALSE] a40e
 a3f1:  2d 03 83                STORE           L02,G73
 a3f4:  0d 01 01                STORE           L00,#01
 a3f7:  0d 06 01                STORE           L05,#01
 a3fa:  d9 2f 19 b1 03 00       CALL_2S         66c4 (L02) -> -(SP)
 a400:  a0 00 4d                JZ              (SP)+ [FALSE] a40e
 a403:  d9 2f 4b b7 03 00       CALL_2S         12edc (L02) -> -(SP)
 a409:  a0 00 44                JZ              (SP)+ [FALSE] a40e
 a40c:  a7 03                   PRINT_ADDR      L02
 a40e:  75 54 02 04             SUB             G44,L01 -> L03
 a412:  2d 05 01                STORE           L04,L00
 a415:  63 05 04 80 55          JG              L04,L03 [TRUE] a46d
 a41a:  cf 2f 33 36 05 00       LOADW           #3336,L04 -> -(SP)
 a420:  c1 8f 00 ff ff 45       JE              (SP)+,#ffff [FALSE] a429
 a426:  8c 00 41                JUMP            a468
 a429:  41 06 01 45             JE              L05,#01 [FALSE] a430
 a42d:  e5 7f 20                PRINT_CHAR      ' '
 a430:  cf 2f 33 36 05 03       LOADW           #3336,L04 -> L02
 a436:  a0 03 48                JZ              L02 [FALSE] a43f
 a439:  8d 80 e5                PRINT_PADDR     S032
 a43c:  8c 00 28                JUMP            a465
 a43f:  41 03 01 48             JE              L02,#01 [FALSE] a449
 a443:  8d 80 e7                PRINT_PADDR     S033
 a446:  8c 00 1e                JUMP            a465
 a449:  c2 8f 03 27 10 d3       JL              L02,#2710 [TRUE] a460
 a44f:  d5 8f 03 27 10 00       SUB             L02,#2710 -> -(SP)
 a455:  d9 2f 2a fb 00 00       CALL_2S         abec ((SP)+) -> -(SP)
 a45b:  a7 00                   PRINT_ADDR      (SP)+
 a45d:  8c 00 07                JUMP            a465
 a460:  da 2f 2f 17 03          CALL_2N         bc5c (L02)
 a465:  0d 06 01                STORE           L05,#01
 a468:  95 05                   INC             L04
 a46a:  8c ff aa                JUMP            a415
 a46d:  b0                      RTRUE           

Routine a470, 3 locals

 a471:  2d 87 86                STORE           G77,G76
 a474:  a0 77 c7                JZ              G67 [TRUE] a47c
 a477:  2d 78 77                STORE           G68,G67
 a47a:  9b 12                   RET             #12
 a47c:  96 81                   DEC             G71
 a47e:  88 2a 81 02             CALL_1S         aa04 -> L01
 a482:  0d 03 04                STORE           L02,#04
 a485:  61 02 74 45             JE              L01,G64 [FALSE] a48c
 a489:  0d 03 0e                STORE           L02,#0e
 a48c:  a3 44 01                GET_PARENT      G34 -> L00
 a48f:  4a 01 18 50             TEST_ATTR       L00,#18 [FALSE] a4a1
 a493:  e0 2b 2a 45 01 02 00    CALL_VS         a914 (L00,L01) -> -(SP)
 a49a:  41 00 01 45             JE              (SP)+,#01 [FALSE] a4a1
 a49e:  0d 03 0d                STORE           L02,#0d
 a4a1:  63 51 03 44             JG              G41,L02 [FALSE] a4a7
 a4a5:  ab 51                   RET             G41
 a4a7:  ab 03                   RET             L02

Routine a4ac, 3 locals

 a4ad:  cf 1f 32 96 00 02       LOADW           #3296,#00 -> L01
 a4b3:  41 02 3f 46             JE              L01,#3f [FALSE] a4bb
 a4b7:  0d 48 01                STORE           G38,#01
 a4ba:  b0                      RTRUE           
 a4bb:  0d 03 01                STORE           L02,#01
 a4be:  63 03 02 d1             JG              L02,L01 [TRUE] a4d1
 a4c2:  cf 2f 32 96 03 00       LOADW           #3296,L02 -> -(SP)
 a4c8:  61 01 00 c1             JE              L00,(SP)+ [TRUE] RTRUE
 a4cc:  95 03                   INC             L02
 a4ce:  8c ff ef                JUMP            a4be
 a4d1:  95 02                   INC             L01
 a4d3:  e1 2b 32 96 02 01       STOREW          #3296,L01,L00
 a4d9:  e1 1b 32 96 00 02       STOREW          #3296,#00,L01
 a4df:  b0                      RTRUE           

Routine a4e0, 5 locals

 a4e1:  cf 1f 32 96 00 02       LOADW           #3296,#00 -> L01
 a4e7:  0d 05 00                STORE           L04,#00
 a4ea:  0d 03 01                STORE           L02,#01
 a4ed:  63 03 02 80 3b          JG              L02,L01 [TRUE] a52b
 a4f2:  cf 2f 32 96 03 00       LOADW           #3296,L02 -> -(SP)
 a4f8:  61 01 00 00 2b          JE              L00,(SP)+ [FALSE] a526
 a4fd:  2d 04 03                STORE           L03,L02
 a500:  63 04 02 d7             JG              L03,L01 [TRUE] a519
 a504:  54 04 01 00             ADD             L03,#01 -> -(SP)
 a508:  cf 2f 32 96 00 00       LOADW           #3296,(SP)+ -> -(SP)
 a50e:  e1 2b 32 96 04 00       STOREW          #3296,L03,(SP)+
 a514:  95 04                   INC             L03
 a516:  8c ff e9                JUMP            a500
 a519:  96 02                   DEC             L01
 a51b:  e8 bf 02                PUSH            L01
 a51e:  e1 1b 32 96 00 00       STOREW          #3296,#00,(SP)+
 a524:  ab 05                   RET             L04
 a526:  95 03                   INC             L02
 a528:  8c ff c4                JUMP            a4ed
 a52b:  0d 05 09                STORE           L04,#09
 a52e:  ab 05                   RET             L04

Routine a530, 4 locals

 a531:  cf 1f 32 96 00 02       LOADW           #3296,#00 -> L01
 a537:  0d 03 01                STORE           L02,#01
 a53a:  63 03 02 d9             JG              L02,L01 [TRUE] a555
 a53e:  cf 2f 32 96 03 04       LOADW           #3296,L02 -> L03
 a544:  6a 04 01 ca             TEST_ATTR       L03,L00 [TRUE] a550
 a548:  da 2f 29 38 04          CALL_2N         a4e0 (L03)
 a54d:  8c ff e3                JUMP            a531
 a550:  95 03                   INC             L02
 a552:  8c ff e7                JUMP            a53a
 a555:  b0                      RTRUE           

Routine a558, 1 local

 a559:  42 63 31 4b             JL              G53,#31 [FALSE] a566
 a55d:  55 63 01 00             SUB             G53,#01 -> -(SP)
 a561:  6a 01 00 c1             TEST_ATTR       L00,(SP)+ [TRUE] RTRUE
 a565:  b1                      RFALSE          
 a566:  2d 3a 01                STORE           G2a,L00
 a569:  a8 63 00                CALL_1S         G53 -> -(SP)
 a56c:  b8                      RET_POPPED      

Routine a570, 5 locals

 a571:  56 01 02 00             MUL             L00,#02 -> -(SP)
 a575:  55 00 01 04             SUB             (SP)+,#01 -> L03
 a579:  56 03 02 00             MUL             L02,#02 -> -(SP)
 a57d:  55 00 01 05             SUB             (SP)+,#01 -> L04
 a581:  e8 bf 05                PUSH            L04
 a584:  95 05                   INC             L04
 a586:  6f 02 00 00             LOADW           L01,(SP)+ -> -(SP)
 a58a:  e8 bf 04                PUSH            L03
 a58d:  95 04                   INC             L03
 a58f:  e1 2b 36 6f 00 00       STOREW          #366f,(SP)+,(SP)+
 a595:  6f 02 05 00             LOADW           L01,L04 -> -(SP)
 a599:  e1 2b 36 6f 04 00       STOREW          #366f,L03,(SP)+
 a59f:  b0                      RTRUE           

Routine a5a0, 4 locals

 a5a1:  0d 04 00                STORE           L03,#00
 a5a4:  a0 77 cb                JZ              G67 [TRUE] a5b0
 a5a7:  0d 79 02                STORE           G69,#02
 a5aa:  a8 77 00                CALL_1S         G67 -> -(SP)
 a5ad:  a0 00 41                JZ              (SP)+ [FALSE] RTRUE
 a5b0:  c1 ab 44 01 02 4b       JE              G34,L00,L01 [FALSE] a5bf
 a5b6:  d9 2f 4a e9 44 00       CALL_2S         12ba4 (G34) -> -(SP)
 a5bc:  a0 00 41                JZ              (SP)+ [FALSE] RTRUE
 a5bf:  41 03 05 5c             JE              L02,#05 [FALSE] a5dd
 a5c3:  c1 8f 60 ff ff d6       JE              G50,#ffff [TRUE] a5dd
 a5c9:  d9 2f 29 7b 60 00       CALL_2S         a5ec (G50) -> -(SP)
 a5cf:  41 00 01 49             JE              (SP)+,#01 [FALSE] a5da
 a5d3:  f9 26 29 a5 60 00 03    CALL_VN         a694 (G50,#00,L02)
 a5da:  8c 00 10                JUMP            a5eb
 a5dd:  f9 2a 29 a5 01 02 03    CALL_VN         a694 (L00,L01,L02)
 a5e4:  f9 26 29 a5 02 00 03    CALL_VN         a694 (L01,#00,L02)
 a5eb:  b0                      RTRUE           

Routine a5ec, 1 local

 a5ed:  4a 01 14 c1             TEST_ATTR       L00,#14 [TRUE] RTRUE
 a5f1:  4a 01 17 c1             TEST_ATTR       L00,#17 [TRUE] RTRUE
 a5f5:  4a 01 04 46             TEST_ATTR       L00,#04 [FALSE] a5fd
 a5f9:  4a 01 0e c1             TEST_ATTR       L00,#0e [TRUE] RTRUE
 a5fd:  b1                      RFALSE          

Routine a600, 1 local

 a601:  c1 97 76 00 01 c8       JE              G66,#00,#01 [TRUE] a60d
 a607:  da 2f 29 87 01          CALL_2N         a61c (L00)
 a60c:  b0                      RTRUE           
 a60d:  2d 81 80                STORE           G71,G70
 a610:  da 2f 2a 01 01          CALL_2N         a804 (L00)
 a615:  0d 7c 01                STORE           G6c,#01
 a618:  b0                      RTRUE           

Routine a61c, 3 locals

 a61d:  2d 02 76                STORE           L01,G66
 a620:  2d 03 41                STORE           L02,G31
 a623:  2d ff 76                STORE           Gef,G66
 a626:  41 ff 03 5b             JE              Gef,#03 [FALSE] a643
 a62a:  51 01 1a 00             GET_PROP        L00,#1a -> -(SP)
 a62e:  c1 93 00 00 ff ff 43    JE              (SP)+,#00,#ffff [FALSE] a636
 a635:  b0                      RTRUE           
 a636:  a0 41 49                JZ              G31 [FALSE] a640
 a639:  e0 27 2d 28 01 1a 41    CALL_VS         b4a0 (L00,#1a) -> G31
 a640:  8c 00 4c                JUMP            a68d
 a643:  41 ff 04 5b             JE              Gef,#04 [FALSE] a660
 a647:  51 01 1b 00             GET_PROP        L00,#1b -> -(SP)
 a64b:  c1 93 00 00 ff ff 43    JE              (SP)+,#00,#ffff [FALSE] a653
 a652:  b0                      RTRUE           
 a653:  a0 41 49                JZ              G31 [FALSE] a65d
 a656:  e0 27 2d 28 01 1b 41    CALL_VS         b4a0 (L00,#1b) -> G31
 a65d:  8c 00 2f                JUMP            a68d
 a660:  41 ff 02 53             JE              Gef,#02 [FALSE] a675
 a664:  52 01 2c 00             GET_PROP_ADDR   L00,#2c -> -(SP)
 a668:  a0 00 43                JZ              (SP)+ [FALSE] a66c
 a66b:  b0                      RTRUE           
 a66c:  f9 27 2d 08 01 2c       CALL_VN         b420 (L00,#2c)
 a672:  8c 00 1a                JUMP            a68d
 a675:  41 ff 06 4c             JE              Gef,#06 [FALSE] a683
 a679:  61 01 41 45             JE              L00,G31 [FALSE] a680
 a67d:  0d 42 01                STORE           G32,#01
 a680:  8c 00 0c                JUMP            a68d
 a683:  41 ff 05 48             JE              Gef,#05 [FALSE] a68d
 a687:  7a 41 01                CALL_2N         G31 (L00)
 a68a:  2d 41 03                STORE           G31,L02
 a68d:  2d 76 02                STORE           G66,L01
 a690:  b0                      RTRUE           

Routine a694, 3 locals

 a695:  a0 01 c1                JZ              L00 [TRUE] RTRUE
 a698:  a0 6a 52                JZ              G5a [FALSE] a6ab
 a69b:  61 01 45 4e             JE              L00,G35 [FALSE] a6ab
 a69f:  a0 76 4b                JZ              G66 [FALSE] a6ab
 a6a2:  41 03 06 c7             JE              L02,#06 [TRUE] a6ab
 a6a6:  da 1f 29 a5 06          CALL_2N         a694 (#06)
 a6ab:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] a6af
 a6af:  e9 7f 01                PULL            L00
 a6b2:  a0 01 ce                JZ              L00 [TRUE] a6c1
 a6b5:  f9 2a 29 b1 01 02 03    CALL_VN         a6c4 (L00,L01,L02)
 a6bc:  a1 01 01 bf f6          GET_SIBLING     L00 -> L00 [TRUE] a6b5
 a6c1:  b0                      RTRUE           

Routine a6c4, 6 locals

 a6c5:  41 03 04 49             JE              L02,#04 [FALSE] a6d0
 a6c9:  61 01 60 45             JE              L00,G50 [FALSE] a6d0
 a6cd:  8c 00 5a                JUMP            a728
 a6d0:  c1 97 76 00 01 ca       JE              G66,#00,#01 [TRUE] a6de
 a6d6:  da 2f 29 87 01          CALL_2N         a61c (L00)
 a6db:  8c 00 4c                JUMP            a728
 a6de:  63 80 82 54             JG              G70,G72 [FALSE] a6f4
 a6e2:  2d 04 3f                STORE           L03,G2f
 a6e5:  0d 3f 00                STORE           G2f,#00
 a6e8:  f9 27 29 ee 01 00       CALL_VN         a7b8 (L00,#00)
 a6ee:  2d 3f 04                STORE           G2f,L03
 a6f1:  8c 00 36                JUMP            a728
 a6f4:  2d 81 80                STORE           G71,G70
 a6f7:  88 2a 6f 04             CALL_1S         a9bc -> L03
 a6fb:  41 04 01 4c             JE              L03,#01 [FALSE] a709
 a6ff:  61 22 01 48             JE              G12,L00 [FALSE] a709
 a703:  f9 27 29 ee 01 01       CALL_VN         a7b8 (L00,#01)
 a709:  42 04 02 d6             JL              L03,#02 [TRUE] a721
 a70d:  42 04 80 52             JL              L03,#80 [FALSE] a721
 a711:  cf 2f 37 cd 04 00       LOADW           #37cd,L03 -> -(SP)
 a717:  61 00 01 48             JE              (SP)+,L00 [FALSE] a721
 a71b:  f9 27 29 ee 01 01       CALL_VN         a7b8 (L00,#01)
 a721:  96 81                   DEC             G71
 a723:  da 2f 2a 01 01          CALL_2N         a804 (L00)
 a728:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] a72c
 a72c:  a0 00 d7                JZ              (SP)+ [TRUE] a744
 a72f:  61 01 02 d3             JE              L00,L01 [TRUE] a744
 a733:  d9 2f 29 7b 01 00       CALL_2S         a5ec (L00) -> -(SP)
 a739:  41 00 01 49             JE              (SP)+,#01 [FALSE] a744
 a73d:  f9 26 29 a5 01 00 03    CALL_VN         a694 (L00,#00,L02)
 a744:  52 01 18 05             GET_PROP_ADDR   L00,#18 -> L04
 a748:  a0 05 80 49             JZ              L04 [TRUE] a793
 a74c:  4f 05 00 00             LOADW           L04,#00 -> -(SP)
 a750:  e0 2b 2f 40 00 13 00    CALL_VS         bd00 ((SP)+,G03) -> -(SP)
 a757:  43 00 00 52             JG              (SP)+,#00 [FALSE] a76b
 a75b:  34 02 03 7a             ADD             #02,L02 -> G6a
 a75f:  f9 27 2d 28 01 18       CALL_VN         b4a0 (L00,#18)
 a765:  0d 7a 00                STORE           G6a,#00
 a768:  8c 00 2a                JUMP            a793
 a76b:  52 01 18 ff             GET_PROP_ADDR   L00,#18 -> Gef
 a76f:  a0 ff c5                JZ              Gef [TRUE] a775
 a772:  a4 ff ff                GET_PROP_LEN    Gef -> Gef
 a775:  2d 06 ff                STORE           L05,Gef
 a778:  0d 04 00                STORE           L03,#00
 a77b:  36 02 04 00             MUL             #02,L03 -> -(SP)
 a77f:  62 00 06 52             JL              (SP)+,L05 [FALSE] a793
 a783:  6f 05 04 00             LOADW           L04,L03 -> -(SP)
 a787:  f9 26 29 b1 00 00 03    CALL_VN         a6c4 ((SP)+,#00,L02)
 a78e:  95 04                   INC             L03
 a790:  8c ff ea                JUMP            a77b
 a793:  b0                      RTRUE           

Routine a794, 1 local

 a795:  42 7a 02 cd             JL              G6a,#02 [TRUE] a7a4
 a799:  55 7a 02 00             SUB             G6a,#02 -> -(SP)
 a79d:  f9 26 29 b1 01 00 00    CALL_VN         a6c4 (L00,#00,(SP)+)
 a7a4:  41 7a 01 4f             JE              G6a,#01 [FALSE] a7b5
 a7a8:  d9 2f 2d ac 01 00       CALL_2S         b6b0 (L00) -> -(SP)
 a7ae:  41 00 01 45             JE              (SP)+,#01 [FALSE] a7b5
 a7b2:  0d 7b 01                STORE           G6b,#01
 a7b5:  b0                      RTRUE           

Routine a7b8, 3 locals

 a7b9:  a0 63 cc                JZ              G53 [TRUE] a7c6
 a7bc:  d9 2f 29 56 01 00       CALL_2S         a558 (L00) -> -(SP)
 a7c2:  a0 00 43                JZ              (SP)+ [FALSE] a7c6
 a7c5:  b0                      RTRUE           
 a7c6:  62 02 7f c1             JL              L01,G6f [TRUE] RTRUE
 a7ca:  63 02 7f 4b             JG              L01,G6f [FALSE] a7d7
 a7ce:  2d 7f 02                STORE           G6f,L01
 a7d1:  0d 7d 00                STORE           G6d,#00
 a7d4:  8c 00 20                JUMP            a7f5
 a7d7:  36 02 7d 00             MUL             #02,G6d -> -(SP)
 a7db:  42 00 80 41             JL              (SP)+,#80 [FALSE] RTRUE
 a7df:  0d 03 00                STORE           L02,#00
 a7e2:  62 03 7d 51             JL              L02,G6d [FALSE] a7f5
 a7e6:  cf 2f 34 76 03 00       LOADW           #3476,L02 -> -(SP)
 a7ec:  61 00 01 c1             JE              (SP)+,L00 [TRUE] RTRUE
 a7f0:  95 03                   INC             L02
 a7f2:  8c ff ef                JUMP            a7e2
 a7f5:  e8 bf 7d                PUSH            G6d
 a7f8:  95 7d                   INC             G6d
 a7fa:  e1 2b 34 76 00 01       STOREW          #3476,(SP)+,L00
 a800:  b0                      RTRUE           

Routine a804, 5 locals

 a805:  0d 73 00                STORE           G63,#00
 a808:  a0 6a d0                JZ              G5a [TRUE] a819
 a80b:  63 81 82 4c             JG              G71,G72 [FALSE] a819
 a80f:  0d 73 70                STORE           G63,#70
 a812:  f9 27 29 ee 01 00       CALL_VN         a7b8 (L00,#00)
 a818:  b1                      RFALSE          
 a819:  51 01 30 00             GET_PROP        L00,#30 -> -(SP)
 a81d:  a0 00 80 58             JZ              (SP)+ [TRUE] a877
 a821:  cd 4f 40 ff ff          STORE           G30,#ffff
 a826:  2d 05 81                STORE           L04,G71
 a829:  e0 27 2d 28 01 30 03    CALL_VS         b4a0 (L00,#30) -> L02
 a830:  43 03 00 00 3e          JG              L02,#00 [FALSE] a871
 a835:  74 05 03 81             ADD             L04,L02 -> G71
 a839:  c1 8f 40 10 05 46       JE              G30,#1005 [FALSE] a843
 a83f:  48 73 04 73             OR              G63,#04 -> G63
 a843:  49 73 04 00             AND             G63,#04 -> -(SP)
 a847:  a0 00 80 21             JZ              (SP)+ [TRUE] a86a
 a84b:  a0 71 48                JZ              G61 [FALSE] a854
 a84e:  0d 03 00                STORE           L02,#00
 a851:  8c 00 18                JUMP            a86a
 a854:  a0 6a 4b                JZ              G5a [FALSE] a860
 a857:  0d 6a 01                STORE           G5a,#01
 a85a:  0d 6b 00                STORE           G5b,#00
 a85d:  0d 6c 00                STORE           G5c,#00
 a860:  48 6b 08 6b             OR              G5b,#08 -> G5b
 a864:  a0 6c 45                JZ              G5c [FALSE] a86a
 a867:  0d 6c 64                STORE           G5c,#64
 a86a:  f9 2b 29 ee 01 03       CALL_VN         a7b8 (L00,L02)
 a870:  b1                      RFALSE          
 a871:  a0 03 45                JZ              L02 [FALSE] a877
 a874:  8c 00 59                JUMP            a8ce
 a877:  cd 4f 40 ff ff          STORE           G30,#ffff
 a87c:  88 2a 6f 04             CALL_1S         a9bc -> L03
 a880:  41 04 01 4c             JE              L03,#01 [FALSE] a88e
 a884:  61 22 01 48             JE              G12,L00 [FALSE] a88e
 a888:  0d 03 01                STORE           L02,#01
 a88b:  8c ff ad                JUMP            a839
 a88e:  42 04 02 d6             JL              L03,#02 [TRUE] a8a6
 a892:  42 04 80 52             JL              L03,#80 [FALSE] a8a6
 a896:  cf 2f 37 cd 04 00       LOADW           #37cd,L03 -> -(SP)
 a89c:  61 00 01 48             JE              (SP)+,L00 [FALSE] a8a6
 a8a0:  0d 03 01                STORE           L02,#01
 a8a3:  8c ff 95                JUMP            a839
 a8a6:  96 81                   DEC             G71
 a8a8:  2d 05 81                STORE           L04,G71
 a8ab:  d9 2f 7d 88 01 02       CALL_2S         1f620 (L00) -> L01
 a8b1:  42 02 00 44             JL              L01,#00 [FALSE] a8b7
 a8b5:  95 81                   INC             G71
 a8b7:  43 02 00 48             JG              L01,#00 [FALSE] a8c1
 a8bb:  2d 03 02                STORE           L02,L01
 a8be:  8c ff 7a                JUMP            a839
 a8c1:  a0 02 cc                JZ              L01 [TRUE] a8ce
 a8c4:  e0 2b 2a 45 01 04 00    CALL_VS         a914 (L00,L03) -> -(SP)
 a8cb:  a0 00 51                JZ              (SP)+ [FALSE] a8dd
 a8ce:  a0 6a cd                JZ              G5a [TRUE] a8dc
 a8d1:  0d 03 00                STORE           L02,#00
 a8d4:  cd 4f 40 ff ff          STORE           G30,#ffff
 a8d9:  8c ff 5f                JUMP            a839
 a8dc:  b1                      RFALSE          
 a8dd:  42 02 00 00 2d          JL              L01,#00 [FALSE] a90d
 a8e2:  0d 02 01                STORE           L01,#01
 a8e5:  50 04 06 00             LOADB           L03,#06 -> -(SP)
 a8e9:  49 00 74 73             AND             (SP)+,#74 -> G63
 a8ed:  88 2a 81 04             CALL_1S         aa04 -> L03
 a8f1:  e0 2b 2a 45 01 04 00    CALL_VS         a914 (L00,L03) -> -(SP)
 a8f8:  21 00 00 d3             JE              #00,(SP)+ [TRUE] a90d
 a8fc:  95 02                   INC             L01
 a8fe:  50 04 06 00             LOADB           L03,#06 -> -(SP)
 a902:  49 00 74 00             AND             (SP)+,#74 -> -(SP)
 a906:  68 73 00 73             OR              G63,(SP)+ -> G63
 a90a:  8c ff e2                JUMP            a8ed
 a90d:  2d 03 02                STORE           L02,L01
 a910:  8c ff 28                JUMP            a839

Routine a914, 5 locals

 a915:  a0 01 c0                JZ              L00 [TRUE] RFALSE
 a918:  c2 8f 43 01 00 d5       JL              G33,#0100 [TRUE] a931
 a91e:  e0 ab 43 01 02 03       CALL_VS         G33 (L00,L01) -> L02
 a924:  42 03 00 c4             JL              L02,#00 [TRUE] a92a
 a928:  ab 03                   RET             L02
 a92a:  35 00 03 05             SUB             #00,L02 -> L04
 a92e:  8c 00 05                JUMP            a934
 a931:  2d 05 43                STORE           L04,G33
 a934:  e0 2b 7f 1c 01 05 03    CALL_VS         1fc70 (L00,L04) -> L02
 a93b:  e0 2b 7f 62 01 05 00    CALL_VS         1fd88 (L00,L04) -> -(SP)
 a942:  57 00 02 00             DIV             (SP)+,#02 -> -(SP)
 a946:  55 00 01 04             SUB             (SP)+,#01 -> L03
 a94a:  0d 05 00                STORE           L04,#00
 a94d:  63 05 04 cf             JG              L04,L03 [TRUE] a95e
 a951:  6f 03 05 00             LOADW           L02,L04 -> -(SP)
 a955:  61 02 00 c1             JE              L01,(SP)+ [TRUE] RTRUE
 a959:  95 05                   INC             L04
 a95b:  8c ff f1                JUMP            a94d
 a95e:  b1                      RFALSE          

Routine a960, 6 locals

 a961:  e0 2b 7f 1c 02 03 04    CALL_VS         1fc70 (L01,L02) -> L03
 a968:  e0 2b 7f 62 02 03 00    CALL_VS         1fd88 (L01,L02) -> -(SP)
 a96f:  57 00 02 00             DIV             (SP)+,#02 -> -(SP)
 a973:  55 00 01 05             SUB             (SP)+,#01 -> L04
 a977:  0d 06 00                STORE           L05,#00
 a97a:  63 06 05 cf             JG              L05,L04 [TRUE] a98b
 a97e:  6f 04 06 00             LOADW           L03,L05 -> -(SP)
 a982:  61 01 00 c1             JE              L00,(SP)+ [TRUE] RTRUE
 a986:  95 06                   INC             L05
 a988:  8c ff f1                JUMP            a97a
 a98b:  b1                      RFALSE          

Routine a98c, 3 locals

 a98d:  0d 03 00                STORE           L02,#00
 a990:  62 03 02 55             JL              L02,L01 [FALSE] a9a7
 a994:  70 01 03 00             LOADB           L00,L02 -> -(SP)
 a998:  34 02 03 00             ADD             #02,L02 -> -(SP)
 a99c:  e2 2b 36 b0 00 00       STOREB          #36b0,(SP)+,(SP)+
 a9a2:  95 03                   INC             L02
 a9a4:  8c ff eb                JUMP            a990
 a9a7:  e2 1b 36 b0 01 02       STOREB          #36b0,#01,L01
 a9ad:  fb 0f 36 b0 37 29       TOKENISE        #36b0,#3729
 a9b3:  cf 1f 37 29 01 00       LOADW           #3729,#01 -> -(SP)
 a9b9:  b8                      RET_POPPED      

Routine a9bc, 3 locals

 a9bd:  88 2a 81 01             CALL_1S         aa04 -> L00
 a9c1:  a0 01 c0                JZ              L00 [TRUE] RFALSE
 a9c4:  c1 80 01 54 53 55 4f 5b ac 43 
                               JE              L00,"me","myself","self" [FALSE]
a9cf
 a9ce:  b0                      RTRUE           
 a9cf:  cf 1f 37 cd 00 03       LOADW           #37cd,#00 -> L02
 a9d5:  0d 02 01                STORE           L01,#01
 a9d8:  8c 00 06                JUMP            a9df
 a9db:  54 02 03 02             ADD             L01,#03 -> L01
 a9df:  63 02 03 d4             JG              L01,L02 [TRUE] a9f5
 a9e3:  cf 2f 37 cd 02 00       LOADW           #37cd,L01 -> -(SP)
 a9e9:  61 01 00 47             JE              L00,(SP)+ [FALSE] a9f2
 a9ed:  54 02 02 00             ADD             L01,#02 -> -(SP)
 a9f1:  b8                      RET_POPPED      
 a9f2:  8c ff e8                JUMP            a9db
 a9f5:  50 01 06 00             LOADB           L00,#06 -> -(SP)
 a9f9:  49 00 80 00             AND             (SP)+,#80 -> -(SP)
 a9fd:  a0 00 c0                JZ              (SP)+ [TRUE] RFALSE
 aa00:  ab 01                   RET             L00

Routine aa04, 3 locals

 aa05:  d0 1f 36 6f 01 00       LOADB           #366f,#01 -> -(SP)
 aa0b:  63 81 00 45             JG              G71,(SP)+ [FALSE] aa12
 aa0f:  95 81                   INC             G71
 aa11:  b1                      RFALSE          
 aa12:  56 81 02 00             MUL             G71,#02 -> -(SP)
 aa16:  55 00 01 01             SUB             (SP)+,#01 -> L00
 aa1a:  95 81                   INC             G71
 aa1c:  cf 2f 36 6f 01 02       LOADW           #366f,L00 -> L01
 aa22:  a0 02 00 28             JZ              L01 [FALSE] aa4c
 aa26:  56 81 04 00             MUL             G71,#04 -> -(SP)
 aa2a:  55 00 03 03             SUB             (SP)+,#03 -> L02
 aa2e:  d0 2f 36 6f 03 00       LOADB           #366f,L02 -> -(SP)
 aa34:  d0 2f 35 f6 00 01       LOADB           #35f6,(SP)+ -> L00
 aa3a:  41 01 2c 47             JE              L00,#2c [FALSE] aa43
 aa3e:  cd 4f 02 49 5b          STORE           L01,"comma,"
 aa43:  41 01 2e 47             JE              L00,#2e [FALSE] aa4c
 aa47:  cd 4f 02 5f 8a          STORE           L01,"then"
 aa4c:  ab 02                   RET             L01

Routine aa50, 0 locals

 aa51:  d0 1f 36 6f 01 00       LOADB           #366f,#01 -> -(SP)
 aa57:  63 81 00 47             JG              G71,(SP)+ [FALSE] aa60
 aa5b:  95 81                   INC             G71
 aa5d:  8b ff ff                RET             #ffff
 aa60:  88 2a 81 00             CALL_1S         aa04 -> -(SP)
 aa64:  b8                      RET_POPPED      

Routine aa68, 1 local

 aa69:  56 01 04 00             MUL             L00,#04 -> -(SP)
 aa6d:  54 00 01 00             ADD             (SP)+,#01 -> -(SP)
 aa71:  d0 2f 36 6f 00 00       LOADB           #366f,(SP)+ -> -(SP)
 aa77:  d4 2f 35 f6 00 00       ADD             #35f6,(SP)+ -> -(SP)
 aa7d:  b8                      RET_POPPED      

Routine aa80, 1 local

 aa81:  56 01 04 00             MUL             L00,#04 -> -(SP)
 aa85:  d0 2f 36 6f 00 00       LOADB           #366f,(SP)+ -> -(SP)
 aa8b:  b8                      RET_POPPED      

Routine aa8c, 10 locals

 aa8d:  2d 02 81                STORE           L01,G71
 aa90:  2d 81 01                STORE           G71,L00
 aa93:  88 2a 81 03             CALL_1S         aa04 -> L02
 aa97:  2d 81 02                STORE           G71,L01
 aa9a:  d9 2f 2f 2d 03 03       CALL_2S         bcb4 (L02) -> L02
 aaa0:  42 03 01 c4             JL              L02,#01 [TRUE] aaa6
 aaa4:  ab 03                   RET             L02
 aaa6:  56 01 04 00             MUL             L00,#04 -> -(SP)
 aaaa:  54 00 01 02             ADD             (SP)+,#01 -> L01
 aaae:  d0 2f 36 6f 02 03       LOADB           #366f,L01 -> L02
 aab4:  d4 8f 03 35 f6 05       ADD             L02,#35f6 -> L04
 aaba:  55 02 01 00             SUB             L01,#01 -> -(SP)
 aabe:  d0 2f 36 6f 00 06       LOADB           #366f,(SP)+ -> L05
 aac4:  e0 2b 7d 86 05 06 08    CALL_VS         1f618 (L04,L05) -> L07
 aacb:  a0 08 c4                JZ              L07 [TRUE] aad0
 aace:  ab 08                   RET             L07
 aad0:  42 06 04 c7             JL              L05,#04 [TRUE] aad9
 aad4:  cd 4f 07 03 e8          STORE           L06,#03e8
 aad9:  41 06 03 45             JE              L05,#03 [FALSE] aae0
 aadd:  0d 07 64                STORE           L06,#64
 aae0:  41 06 02 45             JE              L05,#02 [FALSE] aae7
 aae4:  0d 07 0a                STORE           L06,#0a
 aae7:  41 06 01 45             JE              L05,#01 [FALSE] aaee
 aaeb:  0d 07 01                STORE           L06,#01
 aaee:  0d 08 00                STORE           L07,#00
 aaf1:  0d 04 00                STORE           L03,#00
 aaf4:  55 06 01 06             SUB             L05,#01 -> L05
 aaf8:  0d 04 00                STORE           L03,#00
 aafb:  63 04 06 80 7e          JG              L03,L05 [TRUE] ab7c
 ab00:  70 05 04 0a             LOADB           L04,L03 -> L09
 ab04:  41 0a 30 48             JE              L09,#30 [FALSE] ab0e
 ab08:  0d 09 00                STORE           L08,#00
 ab0b:  8c 00 5f                JUMP            ab6b
 ab0e:  41 0a 31 48             JE              L09,#31 [FALSE] ab18
 ab12:  0d 09 01                STORE           L08,#01
 ab15:  8c 00 55                JUMP            ab6b
 ab18:  41 0a 32 48             JE              L09,#32 [FALSE] ab22
 ab1c:  0d 09 02                STORE           L08,#02
 ab1f:  8c 00 4b                JUMP            ab6b
 ab22:  41 0a 33 48             JE              L09,#33 [FALSE] ab2c
 ab26:  0d 09 03                STORE           L08,#03
 ab29:  8c 00 41                JUMP            ab6b
 ab2c:  41 0a 34 48             JE              L09,#34 [FALSE] ab36
 ab30:  0d 09 04                STORE           L08,#04
 ab33:  8c 00 37                JUMP            ab6b
 ab36:  41 0a 35 48             JE              L09,#35 [FALSE] ab40
 ab3a:  0d 09 05                STORE           L08,#05
 ab3d:  8c 00 2d                JUMP            ab6b
 ab40:  41 0a 36 48             JE              L09,#36 [FALSE] ab4a
 ab44:  0d 09 06                STORE           L08,#06
 ab47:  8c 00 23                JUMP            ab6b
 ab4a:  41 0a 37 48             JE              L09,#37 [FALSE] ab54
 ab4e:  0d 09 07                STORE           L08,#07
 ab51:  8c 00 19                JUMP            ab6b
 ab54:  41 0a 38 48             JE              L09,#38 [FALSE] ab5e
 ab58:  0d 09 08                STORE           L08,#08
 ab5b:  8c 00 0f                JUMP            ab6b
 ab5e:  41 0a 39 48             JE              L09,#39 [FALSE] ab68
 ab62:  0d 09 09                STORE           L08,#09
 ab65:  8c 00 05                JUMP            ab6b
 ab68:  8b fc 18                RET             #fc18
 ab6b:  76 07 09 00             MUL             L06,L08 -> -(SP)
 ab6f:  74 08 00 08             ADD             L07,(SP)+ -> L07
 ab73:  57 07 0a 07             DIV             L06,#0a -> L06
 ab77:  95 04                   INC             L03
 ab79:  8c ff 81                JUMP            aafb
 ab7c:  43 06 03 47             JG              L05,#03 [FALSE] ab85
 ab80:  cd 4f 08 27 10          STORE           L07,#2710
 ab85:  ab 08                   RET             L07

Routine ab88, 1 local

 ab89:  4a 01 1c 41             TEST_ATTR       L00,#1c [FALSE] RTRUE
 ab8d:  b1                      RFALSE          

Routine ab90, 3 locals

 ab91:  4a 01 00 c5             TEST_ATTR       L00,#00 [TRUE] ab98
 ab95:  0d 02 06                STORE           L01,#06
 ab98:  4a 01 1b 45             TEST_ATTR       L00,#1b [FALSE] ab9f
 ab9c:  0d 03 1b                STORE           L02,#1b
 ab9f:  4a 01 1c 45             TEST_ATTR       L00,#1c [FALSE] aba6
 aba3:  0d 03 1c                STORE           L02,#1c
 aba6:  4a 01 1d 45             TEST_ATTR       L00,#1d [FALSE] abad
 abaa:  0d 03 1d                STORE           L02,#1d
 abad:  a0 03 4e                JZ              L02 [FALSE] abbc
 abb0:  a0 02 48                JZ              L01 [FALSE] abb9
 abb3:  0d 03 1b                STORE           L02,#1b
 abb6:  8c 00 05                JUMP            abbc
 abb9:  0d 03 1d                STORE           L02,#1d
 abbc:  41 03 1c 46             JE              L02,#1c [FALSE] abc4
 abc0:  54 02 01 02             ADD             L01,#01 -> L01
 abc4:  41 03 1d 46             JE              L02,#1d [FALSE] abcc
 abc8:  54 02 02 02             ADD             L01,#02 -> L01
 abcc:  4a 01 1e 46             TEST_ATTR       L00,#1e [FALSE] abd4
 abd0:  54 02 03 02             ADD             L01,#03 -> L01
 abd4:  ab 02                   RET             L01

Routine abd8, 1 local

 abd9:  0f 00 04 00             LOADW           #00,#04 -> -(SP)
 abdd:  54 00 07 00             ADD             (SP)+,#07 -> -(SP)
 abe1:  75 01 00 00             SUB             L00,(SP)+ -> -(SP)
 abe5:  57 00 09 00             DIV             (SP)+,#09 -> -(SP)
 abe9:  b8                      RET_POPPED      

Routine abec, 1 local

 abed:  36 09 01 00             MUL             #09,L00 -> -(SP)
 abf1:  0f 00 04 00             LOADW           #00,#04 -> -(SP)
 abf5:  54 00 07 00             ADD             (SP)+,#07 -> -(SP)
 abf9:  74 00 00 00             ADD             (SP)+,(SP)+ -> -(SP)
 abfd:  b8                      RET_POPPED      

Routine ac00, 4 locals

 ac01:  50 01 00 04             LOADB           L00,#00 -> L03
 ac05:  0d 03 01                STORE           L02,#01
 ac08:  63 03 04 d0             JG              L02,L03 [TRUE] ac1a
 ac0c:  70 02 03 00             LOADB           L01,L02 -> -(SP)
 ac10:  e2 ab 01 03 00          STOREB          L00,L02,(SP)+
 ac15:  95 03                   INC             L02
 ac17:  8c ff f0                JUMP            ac08
 ac1a:  b0                      RTRUE           

Routine ac1c, 3 locals

 ac1d:  d0 1f 35 f6 01 03       LOADB           #35f6,#01 -> L02
 ac23:  d0 1f 35 f6 00 00       LOADB           #35f6,#00 -> -(SP)
 ac29:  63 03 00 48             JG              L02,(SP)+ [FALSE] ac33
 ac2d:  d0 1f 35 f6 00 03       LOADB           #35f6,#00 -> L02
 ac33:  54 03 02 03             ADD             L02,#02 -> L02
 ac37:  63 03 01 57             JG              L02,L00 [FALSE] ac50
 ac3b:  55 03 01 00             SUB             L02,#01 -> -(SP)
 ac3f:  d0 2f 35 f6 00 00       LOADB           #35f6,(SP)+ -> -(SP)
 ac45:  e2 2b 35 f6 03 00       STOREB          #35f6,L02,(SP)+
 ac4b:  96 03                   DEC             L02
 ac4d:  8c ff e9                JUMP            ac37
 ac50:  e2 2b 35 f6 01 02       STOREB          #35f6,L00,L01
 ac56:  d0 1f 35 f6 00 00       LOADB           #35f6,#00 -> -(SP)
 ac5c:  d0 1f 35 f6 01 00       LOADB           #35f6,#01 -> -(SP)
 ac62:  62 00 00 55             JL              (SP)+,(SP)+ [FALSE] ac79
 ac66:  cd 4f ff 35 f6          STORE           Gef,#35f6
 ac6b:  0d fe 01                STORE           Gee,#01
 ac6e:  70 ff fe fd             LOADB           Gef,Gee -> Ged
 ac72:  95 fd                   INC             Ged
 ac74:  e2 ab ff fe fd          STOREB          Gef,Gee,Ged
 ac79:  b0                      RTRUE           

Routine ac7c, 4 locals
    Action routine for:
        "nouns"

 ac7d:  f9 17 37 98 00 01       CALL_VN         de60 (#00,#01)
 ac83:  cf 1f 37 cd 00 00       LOADW           #37cd,#00 -> -(SP)
 ac89:  57 00 03 03             DIV             (SP)+,#03 -> L02
 ac8d:  41 22 14 c4             JE              G12,#14 [TRUE] ac93
 ac91:  95 03                   INC             L02
 ac93:  a0 03 4a                JZ              L02 [FALSE] ac9e
 ac96:  e0 17 37 98 00 04 00    CALL_VS         de60 (#00,#04) -> -(SP)
 ac9d:  b8                      RET_POPPED      
 ac9e:  0d 01 01                STORE           L00,#01
 aca1:  0d 04 00                STORE           L03,#00
 aca4:  8c 00 06                JUMP            acab
 aca7:  54 01 03 01             ADD             L00,#03 -> L00
 acab:  cf 1f 37 cd 00 00       LOADW           #37cd,#00 -> -(SP)
 acb1:  63 01 00 80 4f          JG              L00,(SP)+ [TRUE] ad03
 acb6:  b2 ...                  PRINT           """
 acb9:  cf 2f 37 cd 01 00       LOADW           #37cd,L00 -> -(SP)
 acbf:  a7 00                   PRINT_ADDR      (SP)+
 acc1:  b2 ...                  PRINT           "" "
 acc4:  54 01 02 00             ADD             L00,#02 -> -(SP)
 acc8:  cf 2f 37 cd 00 02       LOADW           #37cd,(SP)+ -> L01
 acce:  c1 8f 02 ff ff 4b       JE              L01,#ffff [FALSE] acdd
 acd4:  f9 17 37 98 00 03       CALL_VN         de60 (#00,#03)
 acda:  8c 00 0d                JUMP            ace8
 acdd:  f9 17 37 98 00 02       CALL_VN         de60 (#00,#02)
 ace3:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 ace8:  95 04                   INC             L03
 acea:  55 03 01 00             SUB             L02,#01 -> -(SP)
 acee:  62 04 00 45             JL              L03,(SP)+ [FALSE] acf5
 acf2:  b2 ...                  PRINT           ", "
 acf5:  55 03 01 00             SUB             L02,#01 -> -(SP)
 acf9:  61 04 00 45             JE              L03,(SP)+ [FALSE] ad00
 acfd:  8d 80 f0                PRINT_PADDR     S041
 ad00:  8c ff a6                JUMP            aca7
 ad03:  41 22 14 df             JE              G12,#14 [TRUE] ad24
 ad07:  b2 ...                  PRINT           """
 ad0a:  87 54 53                PRINT_ADDR      "me"
 ad0d:  b2 ...                  PRINT           "" "
 ad10:  f9 17 37 98 00 02       CALL_VN         de60 (#00,#02)
 ad16:  2d 03 22                STORE           L02,G12
 ad19:  0d 22 14                STORE           G12,#14
 ad1c:  da 2f 2f 17 03          CALL_2N         bc5c (L02)
 ad21:  2d 22 03                STORE           G12,L02
 ad24:  b3 ...                  PRINT_RET       "."

Routine ad28, 3 locals

 ad29:  0d 03 01                STORE           L02,#01
 ad2c:  8c 00 06                JUMP            ad33
 ad2f:  54 03 03 03             ADD             L02,#03 -> L02
 ad33:  cf 1f 37 cd 00 00       LOADW           #37cd,#00 -> -(SP)
 ad39:  63 03 00 80 27          JG              L02,(SP)+ [TRUE] ad63
 ad3e:  cf 2f 37 cd 03 00       LOADW           #37cd,L02 -> -(SP)
 ad44:  61 00 01 5a             JE              (SP)+,L00 [FALSE] ad60
 ad48:  54 03 02 00             ADD             L02,#02 -> -(SP)
 ad4c:  cf 2f 37 cd 00 00       LOADW           #37cd,(SP)+ -> -(SP)
 ad52:  61 00 02 c8             JE              (SP)+,L01 [TRUE] ad5c
 ad56:  e8 7f 00                PUSH            #00
 ad59:  8c 00 05                JUMP            ad5f
 ad5c:  e8 7f 01                PUSH            #01
 ad5f:  b0                      RTRUE           
 ad60:  8c ff ce                JUMP            ad2f
 ad63:  da 1f 2f 89 0e          CALL_2N         be24 (#0e)
 ad68:  b0                      RTRUE           

Routine ad6c, 2 locals

 ad6d:  0d 02 01                STORE           L01,#01
 ad70:  8c 00 06                JUMP            ad77
 ad73:  54 02 03 02             ADD             L01,#03 -> L01
 ad77:  cf 1f 37 cd 00 00       LOADW           #37cd,#00 -> -(SP)
 ad7d:  63 02 00 da             JG              L01,(SP)+ [TRUE] ad99
 ad81:  cf 2f 37 cd 02 00       LOADW           #37cd,L01 -> -(SP)
 ad87:  61 00 01 4d             JE              (SP)+,L00 [FALSE] ad96
 ad8b:  54 02 02 00             ADD             L01,#02 -> -(SP)
 ad8f:  cf 2f 37 cd 00 00       LOADW           #37cd,(SP)+ -> -(SP)
 ad95:  b8                      RET_POPPED      
 ad96:  8c ff dc                JUMP            ad73
 ad99:  b1                      RFALSE          

Routine ad9c, 1 local

 ad9d:  da 2f 2b 69 01          CALL_2N         ada4 (L00)
 ada2:  b0                      RTRUE           

Routine ada4, 3 locals

 ada5:  61 01 22 43             JE              L00,G12 [FALSE] adaa
 ada9:  b0                      RTRUE           
 adaa:  d9 2f 2a e4 01 00       CALL_2S         ab90 (L00) -> -(SP)
 adb0:  cf 2f 37 b5 00 03       LOADW           #37b5,(SP)+ -> L02
 adb6:  0d 02 01                STORE           L01,#01
 adb9:  8c 00 06                JUMP            adc0
 adbc:  54 02 03 02             ADD             L01,#03 -> L01
 adc0:  cf 1f 37 cd 00 00       LOADW           #37cd,#00 -> -(SP)
 adc6:  63 02 00 80 20          JG              L01,(SP)+ [TRUE] ade9
 adcb:  54 02 01 00             ADD             L01,#01 -> -(SP)
 adcf:  cf 2f 37 cd 00 00       LOADW           #37cd,(SP)+ -> -(SP)
 add5:  69 03 00 00             AND             L02,(SP)+ -> -(SP)
 add9:  a0 00 cc                JZ              (SP)+ [TRUE] ade6
 addc:  54 02 02 00             ADD             L01,#02 -> -(SP)
 ade0:  e1 2b 37 cd 00 01       STOREW          #37cd,(SP)+,L00
 ade6:  8c ff d5                JUMP            adbc
 ade9:  61 8a 8d c9             JE              G7a,G7d [TRUE] adf4
 aded:  f9 0b 2b 4a 52 25 8a    CALL_VN         ad28 ("it",G7a)
 adf4:  61 8b 8e c9             JE              G7b,G7e [TRUE] adff
 adf8:  f9 0b 2b 4a 50 a2 8b    CALL_VN         ad28 ("him",G7b)
 adff:  61 8c 8f c9             JE              G7c,G7f [TRUE] ae0a
 ae03:  f9 0b 2b 4a 50 87 8c    CALL_VN         ad28 ("her",G7c)
 ae0a:  2d 8d 8a                STORE           G7d,G7a
 ae0d:  2d 8e 8b                STORE           G7e,G7b
 ae10:  2d 8f 8c                STORE           G7f,G7c
 ae13:  b0                      RTRUE           

Routine ae14, 4 locals

 ae15:  0f 32 00 14             LOADW           #32,#00 -> G04
 ae19:  f9 13 2d 31 26 80 d9    CALL_VN         b4c4 (#26,S028)
 ae20:  0d 25 13                STORE           G15,#13
 ae23:  0d 22 14                STORE           G12,#14
 ae26:  d5 1f 01 e5 ff 13       SUB             #01e5,#ff -> G03
 ae2c:  e3 53 14 2d 00 64       PUT_PROP        "(self object)",#2d,#0064
 ae32:  88 7c d6 02             CALL_1S         1f358 -> L01
 ae36:  2d 1e 1d                STORE           G0e,G0d
 ae39:  6e 22 10                INSERT_OBJ      G12,G00
 ae3c:  a3 10 00                GET_PARENT      G00 -> -(SP)
 ae3f:  a0 00 c8                JZ              (SP)+ [TRUE] ae48
 ae42:  a3 10 10                GET_PARENT      G00 -> G00
 ae45:  8c ff f6                JUMP            ae3c
 ae48:  a2 22 00 42             GET_CHILD       G12 -> -(SP) [FALSE] ae4c
 ae4c:  e9 7f 01                PULL            L00
 ae4f:  a0 01 cd                JZ              L00 [TRUE] ae5d
 ae52:  4b 01 0c                SET_ATTR        L00,#0c
 ae55:  4c 01 03                CLEAR_ATTR      L00,#03
 ae58:  a1 01 01 bf f7          GET_SIBLING     L00 -> L00 [TRUE] ae52
 ae5d:  41 02 02 c5             JE              L01,#02 [TRUE] ae64
 ae61:  8f 2f 4c                CALL_1N         bd30
 ae64:  a3 22 00                GET_PARENT      G12 -> -(SP)
 ae67:  d9 2f 2d 9d 00 24       CALL_2S         b674 ((SP)+) -> G14
 ae6d:  a0 24 48                JZ              G14 [FALSE] ae76
 ae70:  2d 25 10                STORE           G15,G00
 ae73:  0d 10 13                STORE           G00,#13
 ae76:  da 1f 2c b1 20          CALL_2N         b2c4 (#20)
 ae7b:  0d 01 01                STORE           L00,#01
 ae7e:  43 01 64 cb             JG              L00,#64 [TRUE] ae8b
 ae82:  e7 bf 01 02             RANDOM          L00 -> L01
 ae86:  95 01                   INC             L00
 ae88:  8c ff f5                JUMP            ae7e
 ae8b:  a0 23 02 25             JZ              G13 [FALSE] b0b2
 ae8f:  61 1d 1e cc             JE              G0d,G0e [TRUE] ae9d
 ae93:  41 1f 01 45             JE              G0f,#01 [FALSE] ae9a
 ae97:  8f 2d 84                CALL_1N         b610
 ae9a:  2d 1e 1d                STORE           G0e,G0d
 ae9d:  d9 0f 2b 5b 52 25 8d    CALL_2S         ad6c ("it") -> G7d
 aea4:  d9 0f 2b 5b 50 a2 8e    CALL_2S         ad6c ("him") -> G7e
 aeab:  d9 0f 2b 5b 50 87 8f    CALL_2S         ad6c ("her") -> G7f
 aeb2:  e1 17 32 76 00 00       STOREW          #3276,#00,#00
 aeb8:  e1 17 32 76 01 00       STOREW          #3276,#01,#00
 aebe:  e1 17 32 76 02 00       STOREW          #3276,#02,#00
 aec4:  e1 17 32 76 03 00       STOREW          #3276,#03,#00
 aeca:  0d 46 00                STORE           G36,#00
 aecd:  f9 14 7e 9d 15 48 32 76 CALL_VN         1fa74 (#15,#48,#3276)
 aed5:  cf 1f 32 76 00 37       LOADW           #3276,#00 -> G27
 aedb:  c1 97 37 5c 5d 00 27    JE              G27,#5c,#5d [FALSE] af07
 aee2:  cf 1f 32 76 02 01       LOADW           #3276,#02 -> L00
 aee8:  cf 1f 32 76 03 00       LOADW           #3276,#03 -> -(SP)
 aeee:  e1 1b 32 76 02 00       STOREW          #3276,#02,(SP)+
 aef4:  e1 1b 32 76 03 01       STOREW          #3276,#03,L00
 aefa:  41 37 5c 48             JE              G27,#5c [FALSE] af04
 aefe:  0d 37 16                STORE           G27,#16
 af01:  8c 00 05                JUMP            af07
 af04:  0d 37 17                STORE           G27,#17
 af07:  41 37 52 5c             JE              G27,#52 [FALSE] af25
 af0b:  cf 1f 32 76 02 00       LOADW           #3276,#02 -> -(SP)
 af11:  61 00 22 52             JE              (SP)+,G12 [FALSE] af25
 af15:  61 44 22 ce             JE              G34,G12 [TRUE] af25
 af19:  e1 1b 32 76 02 44       STOREW          #3276,#02,G34
 af1f:  2d 44 22                STORE           G34,G12
 af22:  0d 37 54                STORE           G27,#54
 af25:  41 37 5b 00 2c          JE              G27,#5b [FALSE] af54
 af2a:  cf 1f 32 76 02 00       LOADW           #3276,#02 -> -(SP)
 af30:  61 00 22 80 21          JE              (SP)+,G12 [TRUE] af54
 af35:  61 44 22 5d             JE              G34,G12 [FALSE] af54
 af39:  cf 1f 32 76 02 44       LOADW           #3276,#02 -> G34
 af3f:  cf 1f 32 76 03 00       LOADW           #3276,#03 -> -(SP)
 af45:  e1 1b 32 76 02 00       STOREW          #3276,#02,(SP)+
 af4b:  e1 1b 32 76 03 22       STOREW          #3276,#03,G12
 af51:  0d 37 16                STORE           G27,#16
 af54:  c1 95 37 54 52 53 45    JE              G27,#54,#52,#53 [FALSE] af5e
 af5b:  2d 49 58                STORE           G39,G48
 af5e:  0d 47 00                STORE           G37,#00
 af61:  2d 4f 4e                STORE           G3f,G3e
 af64:  0d 4e 00                STORE           G3e,#00
 af67:  0d 38 00                STORE           G28,#00
 af6a:  0d 39 00                STORE           G29,#00
 af6d:  cf 1f 32 76 01 01       LOADW           #3276,#01 -> L00
 af73:  42 01 01 c8             JL              L00,#01 [TRUE] af7d
 af77:  cf 1f 32 76 02 38       LOADW           #3276,#02 -> G28
 af7d:  42 01 02 c8             JL              L00,#02 [TRUE] af87
 af81:  cf 1f 32 76 03 39       LOADW           #3276,#03 -> G29
 af87:  41 38 01 48             JE              G28,#01 [FALSE] af91
 af8b:  2d 3a 58                STORE           G2a,G48
 af8e:  8c 00 05                JUMP            af94
 af91:  2d 3a 38                STORE           G2a,G28
 af94:  41 39 01 52             JE              G29,#01 [FALSE] afa8
 af98:  41 38 01 48             JE              G28,#01 [FALSE] afa2
 af9c:  2d 3b 59                STORE           G2b,G49
 af9f:  8c 00 05                JUMP            afa5
 afa2:  2d 3b 58                STORE           G2b,G48
 afa5:  8c 00 05                JUMP            afab
 afa8:  2d 3b 39                STORE           G2b,G29
 afab:  61 44 22 80 43          JE              G34,G12 [TRUE] aff1
 afb0:  e0 27 2d 28 22 1d 02    CALL_VS         b4a0 (G12,#1d) -> L01
 afb7:  a0 02 00 35             JZ              L01 [FALSE] afee
 afbb:  e0 27 2d 28 44 1d 02    CALL_VS         b4a0 (G34,#1d) -> L01
 afc2:  a0 02 00 2a             JZ              L01 [FALSE] afee
 afc6:  c1 8f 37 10 09 51       JE              G27,#1009 [FALSE] afdb
 afcc:  e1 1b 32 76 03 44       STOREW          #3276,#03,G34
 afd2:  2d 44 22                STORE           G34,G12
 afd5:  0d 37 53                STORE           G27,#53
 afd8:  8c ff 8e                JUMP            af67
 afdb:  e0 23 2c fc 44 10 03 00 CALL_VS         b3f0 (G34,#1003) -> -(SP)
 afe3:  a0 00 4a                JZ              (SP)+ [FALSE] afee
 afe6:  f9 06 37 98 10 03 01 44 CALL_VN         de60 (#1003,#01,G34)
 afee:  8c 00 a9                JUMP            b098
 aff1:  a0 01 d3                JZ              L00 [TRUE] b005
 aff4:  41 01 01 45             JE              L00,#01 [FALSE] affb
 aff8:  a0 38 4c                JZ              G28 [FALSE] b005
 affb:  41 01 02 57             JE              L00,#02 [FALSE] b014
 afff:  a0 38 d4                JZ              G28 [TRUE] b014
 b002:  a0 39 d1                JZ              G29 [TRUE] b014
 b005:  fa 22 a7 7e 9d fb 00 4b 37 3a 3b 00 
                               CALL_VN2        1fa74
(Geb,#004b,G27,G2a,G2b,#00)
 b011:  8c 00 86                JUMP            b098
 b014:  0d 47 01                STORE           G37,#01
 b017:  cf 1f 32 96 00 02       LOADW           #3296,#00 -> L01
 b01d:  a0 02 4c                JZ              L01 [FALSE] b02a
 b020:  f9 07 37 98 10 07 02    CALL_VN         de60 (#1007,#02)
 b027:  8c fe 8a                JUMP            aeb2
 b02a:  a0 48 cc                JZ              G38 [TRUE] b037
 b02d:  0d 48 00                STORE           G38,#00
 b030:  f9 07 37 98 10 07 01    CALL_VN         de60 (#1007,#01)
 b037:  2d 01 10                STORE           L00,G00
 b03a:  0d 03 01                STORE           L02,#01
 b03d:  63 03 02 80 58          JG              L02,L01 [TRUE] b098
 b042:  a0 23 c5                JZ              G13 [TRUE] b048
 b045:  8c 00 52                JUMP            b098
 b048:  61 10 01 cc             JE              G00,L00 [TRUE] b056
 b04c:  f9 07 37 98 10 07 33    CALL_VN         de60 (#1007,#33)
 b053:  8c 00 44                JUMP            b098
 b056:  cf 2f 32 96 03 04       LOADW           #3296,L02 -> L03
 b05c:  da 2f 2b 69 04          CALL_2N         ada4 (L03)
 b061:  da 2f 2f 27 04          CALL_2N         bc9c (L03)
 b066:  b2 ...                  PRINT           ": "
 b069:  a0 38 57                JZ              G28 [FALSE] b081
 b06c:  2d 38 04                STORE           G28,L03
 b06f:  fa 22 a7 7e 9d fb 00 4b 37 04 3b 00 
                               CALL_VN2        1fa74
(Geb,#004b,G27,L03,G2b,#00)
 b07b:  0d 38 00                STORE           G28,#00
 b07e:  8c 00 14                JUMP            b093
 b081:  2d 39 04                STORE           G29,L03
 b084:  fa 22 a7 7e 9d fb 00 4b 37 3a 04 00 
                               CALL_VN2        1fa74
(Geb,#004b,G27,G2a,L03,#00)
 b090:  0d 39 00                STORE           G29,#00
 b093:  95 03                   INC             L02
 b095:  8c ff a7                JUMP            b03d
 b098:  41 4e 01 45             JE              G3e,#01 [FALSE] b09f
 b09c:  8c fd ee                JUMP            ae8b
 b09f:  a0 46 c5                JZ              G36 [TRUE] b0a5
 b0a2:  8c fd e8                JUMP            ae8b
 b0a5:  a0 23 49                JZ              G13 [FALSE] b0af
 b0a8:  f9 23 7e 9d fb 00 4a    CALL_VN         1fa74 (Geb,#004a)
 b0af:  8c fd db                JUMP            ae8b
 b0b2:  41 23 02 c5             JE              G13,#02 [TRUE] b0b9
 b0b6:  8f 7d 80                CALL_1N         1f600
 b0b9:  a0 23 45                JZ              G13 [FALSE] b0bf
 b0bc:  8c fd f5                JUMP            aeb2
 b0bf:  b2 ...                  PRINT           "

    "
 b0c6:  f1 7f 02                SET_TEXT_STYLE  BOLDFACE
 b0c9:  b2 ...                  PRINT           "***"
 b0d2:  41 23 01 49             JE              G13,#01 [FALSE] b0dd
 b0d6:  f9 07 37 98 10 07 03    CALL_VN         de60 (#1007,#03)
 b0dd:  41 23 02 49             JE              G13,#02 [FALSE] b0e8
 b0e1:  f9 07 37 98 10 07 04    CALL_VN         de60 (#1007,#04)
 b0e8:  43 23 02 4b             JG              G13,#02 [FALSE] b0f5
 b0ec:  b2 ...                  PRINT           " "
 b0ef:  8f 7c e5                CALL_1N         1f394
 b0f2:  b2 ...                  PRINT           " "
 b0f5:  b2 ...                  PRINT           "***"
 b0fe:  f1 7f 00                SET_TEXT_STYLE  ROMAN
 b101:  b2 ...                  PRINT           "


"
 b106:  8f 32 e8                CALL_1N         cba0
 b109:  8f 2d 78                CALL_1N         b5e0
 b10c:  f9 07 37 98 10 07 05    CALL_VN         de60 (#1007,#05)
 b113:  b2 ...                  PRINT           "> "
 b118:  0d ff 00                STORE           Gef,#00
 b11b:  cd 4f fc 35 f6          STORE           Gec,#35f6
 b120:  e2 97 fc 01 00          STOREB          Gec,#01,#00
 b125:  8f 2d f1                CALL_1N         b7c4
 b128:  e4 8f fc 36 6f ff       READ            Gec,#366f -> Gef
 b12e:  cf 1f 36 6f 01 01       LOADW           #366f,#01 -> L00
 b134:  c1 83 01 59 90 59 a2 43 JE              L00,"q","quit" [FALSE] b13d
 b13c:  ba                      QUIT            
 b13d:  c1 8f 01 5a 05 43       JE              L00,"restart" [FALSE] b144
 b143:  b7                      RESTART         
 b144:  c1 8f 01 5a 0e 48       JE              L00,"restore" [FALSE] b150
 b14a:  8f 32 82                CALL_1N         ca08
 b14d:  8c ff be                JUMP            b10c
 b150:  c1 83 01 4e c5 4e bc 4d JE              L00,"fullscore","full" [FALSE]
b163
 b158:  80 00 01 49             JZ              #0001 [FALSE] b163
 b15c:  bb                      NEW_LINE        
 b15d:  8f 33 00                CALL_1N         cc00
 b160:  8c ff ab                JUMP            b10c
 b163:  41 23 02 53             JE              G13,#02 [FALSE] b178
 b167:  c1 8f 01 45 47 4d       JE              L00,"amusing" [FALSE] b178
 b16d:  80 00 01 49             JZ              #0001 [FALSE] b178
 b171:  bb                      NEW_LINE        
 b172:  8f 7d 7d                CALL_1N         1f5f4
 b175:  8c ff 96                JUMP            b10c
 b178:  c1 80 01 61 70 61 70 61 70 00 27 
                               JE              L00,"undo","undo","undo" [FALSE]
b1a8
 b183:  a0 15 4c                JZ              G05 [FALSE] b190
 b186:  f9 07 37 98 10 07 06    CALL_VN         de60 (#1007,#06)
 b18d:  8c ff 7e                JUMP            b10c
 b190:  41 15 01 45             JE              G05,#01 [FALSE] b197
 b194:  8c 00 09                JUMP            b19e
 b197:  be 0a ff 01             RESTORE_UNDO    -> L00
 b19b:  a0 01 49                JZ              L00 [FALSE] b1a5
 b19e:  f9 07 37 98 10 07 07    CALL_VN         de60 (#1007,#07)
 b1a5:  8c ff 66                JUMP            b10c
 b1a8:  f9 07 37 98 10 07 08    CALL_VN         de60 (#1007,#08)
 b1af:  8c ff 63                JUMP            b113

Routine b1b4, 2 locals

 b1b5:  95 18                   INC             G08
 b1b7:  c1 8f 19 ff ff 80 1e    JE              G09,#ffff [TRUE] b1da
 b1be:  42 1a 00 c9             JL              G0a,#00 [TRUE] b1c9
 b1c2:  74 19 1a 19             ADD             G09,G0a -> G09
 b1c6:  8c 00 0d                JUMP            b1d4
 b1c9:  96 1b                   DEC             G0b
 b1cb:  a0 1b 48                JZ              G0b [FALSE] b1d4
 b1ce:  95 19                   INC             G09
 b1d0:  35 00 1a 1b             SUB             #00,G0a -> G0b
 b1d4:  d8 8f 19 05 a0 19       MOD             G09,#05a0 -> G09
 b1da:  0d 01 00                STORE           L00,#00
 b1dd:  62 01 1c 00 4f          JL              L00,G0c [FALSE] b22f
 b1e2:  a0 23 c3                JZ              G13 [TRUE] b1e6
 b1e5:  b0                      RTRUE           
 b1e6:  cf 2f 32 36 01 02       LOADW           #3236,L00 -> L01
 b1ec:  a0 02 80 3c             JZ              L01 [TRUE] b22a
 b1f0:  c9 8f 02 80 00 00       AND             L01,#8000 -> -(SP)
 b1f6:  a0 00 d1                JZ              (SP)+ [TRUE] b208
 b1f9:  c9 8f 02 7f ff 00       AND             L01,#7fff -> -(SP)
 b1ff:  f9 27 2d 28 00 2b       CALL_VN         b4a0 ((SP)+,#2b)
 b205:  8c 00 24                JUMP            b22a
 b208:  51 02 28 00             GET_PROP        L01,#28 -> -(SP)
 b20c:  a0 00 50                JZ              (SP)+ [FALSE] b21d
 b20f:  da 2f 2d 4c 02          CALL_2N         b530 (L01)
 b214:  f9 27 2d 28 02 2a       CALL_VN         b4a0 (L01,#2a)
 b21a:  8c 00 0f                JUMP            b22a
 b21d:  51 02 28 00             GET_PROP        L01,#28 -> -(SP)
 b221:  55 00 01 00             SUB             (SP)+,#01 -> -(SP)
 b225:  e3 9b 02 28 00          PUT_PROP        L01,#28,(SP)+
 b22a:  95 01                   INC             L00
 b22c:  8c ff b0                JUMP            b1dd
 b22f:  a0 23 c3                JZ              G13 [TRUE] b233
 b232:  b0                      RTRUE           
 b233:  0d 76 02                STORE           G66,#02
 b236:  0d 83 00                STORE           G73,#00
 b239:  da 2f 29 87 10          CALL_2N         a61c (G00)
 b23e:  f9 29 29 68 10 22 00    CALL_VN         a5a0 (G00,G12,#00)
 b245:  0d 76 00                STORE           G66,#00
 b248:  a0 23 c3                JZ              G13 [TRUE] b24c
 b24b:  b0                      RTRUE           
 b24c:  8f 7d 7c                CALL_1N         1f5f0
 b24f:  a0 23 c3                JZ              G13 [TRUE] b253
 b252:  b0                      RTRUE           
 b253:  8f 2d 8b                CALL_1N         b62c
 b256:  a0 23 c3                JZ              G13 [TRUE] b25a
 b259:  b0                      RTRUE           
 b25a:  0d 01 01                STORE           L00,#01
 b25d:  66 01 22 55             JIN             L00,G12 [FALSE] b274
 b261:  4a 01 0c d1             TEST_ATTR       L00,#0c [TRUE] b274
 b265:  4b 01 0c                SET_ATTR        L00,#0c
 b268:  4a 01 12 4a             TEST_ATTR       L00,#12 [FALSE] b274
 b26c:  54 1d 01 1d             ADD             G0d,#01 -> G0d
 b270:  54 21 01 21             ADD             G11,#01 -> G11
 b274:  95 01                   INC             L00
 b276:  c3 8f 01 00 e6 c5       JG              L00,#00e6 [TRUE] b27f
 b27c:  8c ff e0                JUMP            b25d
 b27f:  b1                      RFALSE          

Routine b280, 8 locals

 b281:  2d 05 37                STORE           L04,G27
 b284:  2d 06 3a                STORE           L05,G2a
 b287:  2d 07 3b                STORE           L06,G2b
 b28a:  2d 37 01                STORE           G27,L00
 b28d:  2d 3a 02                STORE           G2a,L01
 b290:  2d 3b 03                STORE           G2b,L02
 b293:  0d 04 00                STORE           L03,#00
 b296:  a0 46 49                JZ              G36 [FALSE] b2a0
 b299:  88 2c de 00             CALL_1S         b378 -> -(SP)
 b29d:  a0 00 56                JZ              (SP)+ [FALSE] b2b4
 b2a0:  c2 8f 37 10 00 50       JL              G27,#1000 [FALSE] b2b4
 b2a6:  cf 2f 43 b9 37 00       LOADW           #43b9,G27 -> -(SP)
 b2ac:  af 00                   CALL_1N         (SP)+
 b2ae:  0d 08 00                STORE           L07,#00
 b2b1:  8c 00 05                JUMP            b2b7
 b2b4:  0d 08 01                STORE           L07,#01
 b2b7:  2d 37 05                STORE           G27,L04
 b2ba:  2d 3a 06                STORE           G2a,L05
 b2bd:  2d 3b 07                STORE           G2b,L06
 b2c0:  b1                      RFALSE          

Routine b2c4, 5 locals

 b2c5:  2d 04 38                STORE           L03,G28
 b2c8:  2d 05 39                STORE           L04,G29
 b2cb:  2d 38 02                STORE           G28,L01
 b2ce:  2d 39 03                STORE           G29,L02
 b2d1:  fa 16 a7 7e 9d 16 4b 01 02 03 01 
                               CALL_VN2        1fa74 (#16,#4b,L00,L01,L02,#01)
 b2dc:  2d 38 04                STORE           G28,L03
 b2df:  2d 39 05                STORE           G29,L04
 b2e2:  b0                      RTRUE           

Routine b2e4, 7 locals

 b2e5:  2d 06 41                STORE           L05,G31
 b2e8:  2d 07 42                STORE           L06,G32
 b2eb:  2d 41 01                STORE           G31,L00
 b2ee:  0d 42 00                STORE           G32,#00
 b2f1:  2d 03 44                STORE           L02,G34
 b2f4:  2d 04 45                STORE           L03,G35
 b2f7:  2d 05 76                STORE           L04,G66
 b2fa:  0d 76 06                STORE           G66,#06
 b2fd:  a0 02 48                JZ              L01 [FALSE] b306
 b300:  2d 44 22                STORE           G34,G12
 b303:  8c 00 05                JUMP            b309
 b306:  2d 44 02                STORE           G34,L01
 b309:  2d 45 44                STORE           G35,G34
 b30c:  a3 45 00                GET_PARENT      G35 -> -(SP)
 b30f:  a0 00 c8                JZ              (SP)+ [TRUE] b318
 b312:  a3 45 45                GET_PARENT      G35 -> G35
 b315:  8c ff f6                JUMP            b30c
 b318:  f9 29 29 68 10 22 00    CALL_VN         a5a0 (G00,G12,#00)
 b31f:  2d 76 05                STORE           G66,L04
 b322:  2d 44 03                STORE           G34,L02
 b325:  2d 45 04                STORE           G35,L03
 b328:  2d 41 06                STORE           G31,L05
 b32b:  2d 06 42                STORE           L05,G32
 b32e:  2d 42 07                STORE           G32,L06
 b331:  ab 06                   RET             L05

Routine b334, 6 locals

 b335:  2d 03 41                STORE           L02,G31
 b338:  2d 04 76                STORE           L03,G66
 b33b:  2d 05 44                STORE           L04,G34
 b33e:  2d 06 45                STORE           L05,G35
 b341:  2d 41 01                STORE           G31,L00
 b344:  a0 02 48                JZ              L01 [FALSE] b34d
 b347:  2d 44 22                STORE           G34,G12
 b34a:  8c 00 05                JUMP            b350
 b34d:  2d 44 02                STORE           G34,L01
 b350:  2d 45 44                STORE           G35,G34
 b353:  a3 45 00                GET_PARENT      G35 -> -(SP)
 b356:  a0 00 c8                JZ              (SP)+ [TRUE] b35f
 b359:  a3 45 45                GET_PARENT      G35 -> G35
 b35c:  8c ff f6                JUMP            b353
 b35f:  0d 76 05                STORE           G66,#05
 b362:  f9 29 29 68 45 44 00    CALL_VN         a5a0 (G35,G34,#00)
 b369:  2d 41 03                STORE           G31,L02
 b36c:  2d 76 04                STORE           G66,L03
 b36f:  2d 44 05                STORE           G34,L04
 b372:  2d 45 06                STORE           G35,L05
 b375:  b0                      RTRUE           

Routine b378, 0 locals

 b379:  88 7d 81 00             CALL_1S         1f604 -> -(SP)
 b37d:  a0 00 41                JZ              (SP)+ [FALSE] RTRUE
 b380:  e0 27 2d 28 22 1d 00    CALL_VS         b4a0 (G12,#1d) -> -(SP)
 b387:  a0 00 41                JZ              (SP)+ [FALSE] RTRUE
 b38a:  a0 10 cc                JZ              G00 [TRUE] b397
 b38d:  e0 27 2d 28 10 04 00    CALL_VS         b4a0 (G00,#04) -> -(SP)
 b394:  a0 00 41                JZ              (SP)+ [FALSE] RTRUE
 b397:  0d 76 03                STORE           G66,#03
 b39a:  0d 41 00                STORE           G31,#00
 b39d:  f9 29 29 68 10 22 00    CALL_VN         a5a0 (G00,G12,#00)
 b3a4:  0d 76 00                STORE           G66,#00
 b3a7:  a0 41 41                JZ              G31 [FALSE] RTRUE
 b3aa:  43 38 01 4c             JG              G28,#01 [FALSE] b3b8
 b3ae:  e0 27 2d 28 38 04 00    CALL_VS         b4a0 (G28,#04) -> -(SP)
 b3b5:  a0 00 41                JZ              (SP)+ [FALSE] RTRUE
 b3b8:  b1                      RFALSE          

Routine b3bc, 0 locals

 b3bd:  0d 76 04                STORE           G66,#04
 b3c0:  0d 41 00                STORE           G31,#00
 b3c3:  f9 29 29 68 10 22 00    CALL_VN         a5a0 (G00,G12,#00)
 b3ca:  0d 76 00                STORE           G66,#00
 b3cd:  a0 41 41                JZ              G31 [FALSE] RTRUE
 b3d0:  a0 10 cc                JZ              G00 [TRUE] b3dd
 b3d3:  e0 27 2d 28 10 05 00    CALL_VS         b4a0 (G00,#05) -> -(SP)
 b3da:  a0 00 41                JZ              (SP)+ [FALSE] RTRUE
 b3dd:  43 38 01 4c             JG              G28,#01 [FALSE] b3eb
 b3e1:  e0 27 2d 28 38 05 00    CALL_VS         b4a0 (G28,#05) -> -(SP)
 b3e8:  a0 00 41                JZ              (SP)+ [FALSE] RTRUE
 b3eb:  88 7d 82 00             CALL_1S         1f608 -> -(SP)
 b3ef:  b8                      RET_POPPED      

Routine b3f0, 2 locals

 b3f1:  2d 3d 02                STORE           G2d,L01
 b3f4:  e0 27 2d 28 01 06 00    CALL_VS         b4a0 (L00,#06) -> -(SP)
 b3fb:  b8                      RET_POPPED      

Routine b3fc, 1 local

 b3fd:  e0 2f 80 20 01 00       CALL_VS         20080 (L00) -> -(SP)
 b403:  e9 7f ff                PULL            Gef
 b406:  41 ff 00 43             JE              Gef,#00 [FALSE] b40b
 b40a:  b1                      RFALSE          
 b40b:  c1 97 ff 02 01 43       JE              Gef,#02,#01 [FALSE] b412
 b411:  b0                      RTRUE           
 b412:  41 ff 03 44             JE              Gef,#03 [FALSE] b418
 b416:  9b 02                   RET             #02
 b418:  41 ff 04 44             JE              Gef,#04 [FALSE] b41e
 b41c:  9b 03                   RET             #03
 b41e:  b0                      RTRUE           

Routine b420, 3 locals

 b421:  e0 2b 7f 62 01 02 00    CALL_VS         1fd88 (L00,L01) -> -(SP)
 b428:  43 00 02 4a             JG              (SP)+,#02 [FALSE] b434
 b42c:  e0 2b 2d 28 01 02 00    CALL_VS         b4a0 (L00,L01) -> -(SP)
 b433:  b8                      RET_POPPED      
 b434:  e0 2b 7e 93 01 02 00    CALL_VS         1fa4c (L00,L01) -> -(SP)
 b43b:  c1 8f 00 ff ff c0       JE              (SP)+,#ffff [TRUE] RFALSE
 b441:  e0 2b 7e 93 01 02 00    CALL_VS         1fa4c (L00,L01) -> -(SP)
 b448:  e0 2f 80 20 00 00       CALL_VS         20080 ((SP)+) -> -(SP)
 b44e:  e9 7f ff                PULL            Gef
 b451:  c1 95 ff 01 02 00 4b    JE              Gef,#01,#02,#00 [FALSE] b461
 b458:  e0 1a 2f 89 02 01 02 00 CALL_VS         be24 (#02,L00,L01) -> -(SP)
 b460:  b8                      RET_POPPED      
 b461:  41 ff 04 50             JE              Gef,#04 [FALSE] b473
 b465:  e0 2b 7e 93 01 02 00    CALL_VS         1fa4c (L00,L01) -> -(SP)
 b46c:  ad 00                   PRINT_PADDR     (SP)+
 b46e:  a0 03 43                JZ              L02 [FALSE] b472
 b471:  bb                      NEW_LINE        
 b472:  b0                      RTRUE           
 b473:  41 ff 03 4a             JE              Gef,#03 [FALSE] b47f
 b477:  e0 2b 2d 28 01 02 00    CALL_VS         b4a0 (L00,L01) -> -(SP)
 b47e:  b8                      RET_POPPED      
 b47f:  b0                      RTRUE           

Routine b480, 2 locals

 b481:  e0 2b 7e 93 01 02 00    CALL_VS         1fa4c (L00,L01) -> -(SP)
 b488:  c2 8f 00 01 00 4a       JL              (SP)+,#0100 [FALSE] b496
 b48e:  e0 2b 7e 93 01 02 00    CALL_VS         1fa4c (L00,L01) -> -(SP)
 b495:  b8                      RET_POPPED      
 b496:  e0 2b 2d 28 01 02 00    CALL_VS         b4a0 (L00,L01) -> -(SP)
 b49d:  b8                      RET_POPPED      

Routine b4a0, 2 locals

 b4a1:  41 01 13 4c             JE              L00,#13 [FALSE] b4af
 b4a5:  c1 95 02 1e 2e 23 c5    JE              L01,#1e,#2e,#23 [TRUE] b4af
 b4ac:  2d 01 25                STORE           L00,G15
 b4af:  e0 2b 7f 1c 01 02 00    CALL_VS         1fc70 (L00,L01) -> -(SP)
 b4b6:  a0 00 c0                JZ              (SP)+ [TRUE] RFALSE
 b4b9:  e0 2b 7e 9d 01 02 00    CALL_VS         1fa74 (L00,L01) -> -(SP)
 b4c0:  b8                      RET_POPPED      

Routine b4c4, 2 locals

 b4c5:  55 01 01 00             SUB             L00,#01 -> -(SP)
 b4c9:  0f 00 05 00             LOADW           #00,#05 -> -(SP)
 b4cd:  e1 ab 00 00 02          STOREW          (SP)+,(SP)+,L01
 b4d2:  b0                      RTRUE           

Routine b4d4, 3 locals

 b4d5:  0d 03 00                STORE           L02,#00
 b4d8:  62 03 1c 51             JL              L02,G0c [FALSE] b4eb
 b4dc:  cf 2f 32 36 03 00       LOADW           #3236,L02 -> -(SP)
 b4e2:  61 00 01 c0             JE              (SP)+,L00 [TRUE] RFALSE
 b4e6:  95 03                   INC             L02
 b4e8:  8c ff ef                JUMP            b4d8
 b4eb:  0d 03 00                STORE           L02,#00
 b4ee:  62 03 1c 53             JL              L02,G0c [FALSE] b503
 b4f2:  cf 2f 32 36 03 00       LOADW           #3236,L02 -> -(SP)
 b4f8:  a0 00 45                JZ              (SP)+ [FALSE] b4fe
 b4fb:  8c 00 19                JUMP            b515
 b4fe:  95 03                   INC             L02
 b500:  8c ff ed                JUMP            b4ee
 b503:  2d 03 1c                STORE           L02,G0c
 b506:  95 1c                   INC             G0c
 b508:  56 03 02 00             MUL             L02,#02 -> -(SP)
 b50c:  42 00 40 c7             JL              (SP)+,#40 [TRUE] b515
 b510:  da 1f 2f 89 04          CALL_2N         be24 (#04)
 b515:  52 01 28 00             GET_PROP_ADDR   L00,#28 -> -(SP)
 b519:  a0 00 48                JZ              (SP)+ [FALSE] b522
 b51c:  f9 1b 2f 89 05 01       CALL_VN         be24 (#05,L00)
 b522:  e1 2b 32 36 03 01       STOREW          #3236,L02,L00
 b528:  e3 9b 01 28 02          PUT_PROP        L00,#28,L01
 b52d:  b0                      RTRUE           

Routine b530, 2 locals

 b531:  0d 02 00                STORE           L01,#00
 b534:  62 02 1c 54             JL              L01,G0c [FALSE] b54a
 b538:  cf 2f 32 36 02 00       LOADW           #3236,L01 -> -(SP)
 b53e:  61 00 01 45             JE              (SP)+,L00 [FALSE] b545
 b542:  8c 00 08                JUMP            b54b
 b545:  95 02                   INC             L01
 b547:  8c ff ec                JUMP            b534
 b54a:  b1                      RFALSE          
 b54b:  52 01 28 00             GET_PROP_ADDR   L00,#28 -> -(SP)
 b54f:  a0 00 48                JZ              (SP)+ [FALSE] b558
 b552:  f9 1b 2f 89 05 01       CALL_VN         be24 (#05,L00)
 b558:  e1 27 32 36 02 00       STOREW          #3236,L01,#00
 b55e:  e3 97 01 28 00          PUT_PROP        L00,#28,#00
 b563:  b0                      RTRUE           

Routine b564, 2 locals

 b565:  0d 02 00                STORE           L01,#00
 b568:  62 02 1c 57             JL              L01,G0c [FALSE] b581
 b56c:  d4 2f 80 00 01 00       ADD             #8000,L00 -> -(SP)
 b572:  cf 2f 32 36 02 00       LOADW           #3236,L01 -> -(SP)
 b578:  61 00 00 c0             JE              (SP)+,(SP)+ [TRUE] RFALSE
 b57c:  95 02                   INC             L01
 b57e:  8c ff e9                JUMP            b568
 b581:  0d 02 00                STORE           L01,#00
 b584:  62 02 1c 53             JL              L01,G0c [FALSE] b599
 b588:  cf 2f 32 36 02 00       LOADW           #3236,L01 -> -(SP)
 b58e:  a0 00 45                JZ              (SP)+ [FALSE] b594
 b591:  8c 00 19                JUMP            b5ab
 b594:  95 02                   INC             L01
 b596:  8c ff ed                JUMP            b584
 b599:  2d 02 1c                STORE           L01,G0c
 b59c:  95 1c                   INC             G0c
 b59e:  56 02 02 00             MUL             L01,#02 -> -(SP)
 b5a2:  42 00 40 c7             JL              (SP)+,#40 [TRUE] b5ab
 b5a6:  da 1f 2f 89 04          CALL_2N         be24 (#04)
 b5ab:  d4 2f 80 00 01 00       ADD             #8000,L00 -> -(SP)
 b5b1:  e1 2b 32 36 02 00       STOREW          #3236,L01,(SP)+
 b5b7:  b0                      RTRUE           

Routine b5b8, 2 locals

 b5b9:  0d 02 00                STORE           L01,#00
 b5bc:  62 02 1c 5a             JL              L01,G0c [FALSE] b5d8
 b5c0:  d4 2f 80 00 01 00       ADD             #8000,L00 -> -(SP)
 b5c6:  cf 2f 32 36 02 00       LOADW           #3236,L01 -> -(SP)
 b5cc:  61 00 00 45             JE              (SP)+,(SP)+ [FALSE] b5d3
 b5d0:  8c 00 08                JUMP            b5d9
 b5d3:  95 02                   INC             L01
 b5d5:  8c ff e6                JUMP            b5bc
 b5d8:  b1                      RFALSE          
 b5d9:  e1 27 32 36 02 00       STOREW          #3236,L01,#00
 b5df:  b0                      RTRUE           

Routine b5e0, 0 locals

 b5e1:  c1 8f 19 ff ff 4b       JE              G09,#ffff [FALSE] b5f0
 b5e7:  2d 11 1d                STORE           G01,G0d
 b5ea:  2d 12 18                STORE           G02,G08
 b5ed:  8c 00 0a                JUMP            b5f8
 b5f0:  57 19 3c 11             DIV             G09,#3c -> G01
 b5f4:  58 19 3c 12             MOD             G09,#3c -> G02
 b5f8:  b0                      RTRUE           

Routine b5fc, 2 locals

 b5fd:  2d 19 01                STORE           G09,L00
 b600:  2d 1a 02                STORE           G0a,L01
 b603:  0d 1b 00                STORE           G0b,#00
 b606:  42 02 00 46             JL              L01,#00 [FALSE] b60e
 b60a:  35 00 02 1b             SUB             #00,L01 -> G0b
 b60e:  b0                      RTRUE           

Routine b610, 0 locals

 b611:  b2 ...                  PRINT           "
["
 b616:  75 1d 1e 00             SUB             G0d,G0e -> -(SP)
 b61a:  f9 06 37 98 10 07 32 00 CALL_VN         de60 (#1007,#32,(SP)+)
 b622:  b2 ...                  PRINT           ".]
"
 b629:  b0                      RTRUE           

Routine b62c, 2 locals

 b62d:  2d 02 24                STORE           L01,G14
 b630:  a3 22 00                GET_PARENT      G12 -> -(SP)
 b633:  d9 2f 2d 9d 00 24       CALL_2S         b674 ((SP)+) -> G14
 b639:  a0 02 51                JZ              L01 [FALSE] b64b
 b63c:  41 24 01 4d             JE              G14,#01 [FALSE] b64b
 b640:  2d 10 25                STORE           G00,G15
 b643:  a0 01 47                JZ              L00 [FALSE] b64b
 b646:  da 1f 2c b1 20          CALL_2N         b2c4 (#20)
 b64b:  41 02 01 5a             JE              L01,#01 [FALSE] b667
 b64f:  a0 24 57                JZ              G14 [FALSE] b667
 b652:  2d 25 10                STORE           G15,G00
 b655:  0d 10 13                STORE           G00,#13
 b658:  a0 01 4e                JZ              L00 [FALSE] b667
 b65b:  8f 35 b0                CALL_1N         d6c0
 b65e:  e0 07 37 98 10 07 09 00 CALL_VS         de60 (#1007,#09) -> -(SP)
 b666:  b8                      RET_POPPED      
 b667:  a0 02 48                JZ              L01 [FALSE] b670
 b66a:  a0 24 45                JZ              G14 [FALSE] b670
 b66d:  0d 10 13                STORE           G00,#13
 b670:  b0                      RTRUE           

Routine b674, 2 locals

 b675:  a0 01 c0                JZ              L00 [TRUE] RFALSE
 b678:  4a 01 09 c1             TEST_ATTR       L00,#09 [TRUE] RTRUE
 b67c:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] b680
 b680:  e9 7f 02                PULL            L01
 b683:  a0 02 d1                JZ              L01 [TRUE] b695
 b686:  d9 2f 2d ac 02 00       CALL_2S         b6b0 (L01) -> -(SP)
 b68c:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 b690:  a1 02 02 bf f3          GET_SIBLING     L01 -> L01 [TRUE] b686
 b695:  4a 01 07 cc             TEST_ATTR       L00,#07 [TRUE] b6a3
 b699:  d9 2f 29 7b 01 00       CALL_2S         a5ec (L00) -> -(SP)
 b69f:  41 00 01 4c             JE              (SP)+,#01 [FALSE] b6ad
 b6a3:  a3 01 00                GET_PARENT      L00 -> -(SP)
 b6a6:  d9 2f 2d 9d 00 00       CALL_2S         b674 ((SP)+) -> -(SP)
 b6ac:  b8                      RET_POPPED      
 b6ad:  b1                      RFALSE          

Routine b6b0, 3 locals

 b6b1:  a0 01 c0                JZ              L00 [TRUE] RFALSE
 b6b4:  4a 01 09 c1             TEST_ATTR       L00,#09 [TRUE] RTRUE
 b6b8:  4a 01 07 cc             TEST_ATTR       L00,#07 [TRUE] b6c6
 b6bc:  d9 2f 29 7b 01 00       CALL_2S         a5ec (L00) -> -(SP)
 b6c2:  41 00 01 5b             JE              (SP)+,#01 [FALSE] b6df
 b6c6:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] b6ca
 b6ca:  e9 7f 01                PULL            L00
 b6cd:  a0 01 d1                JZ              L00 [TRUE] b6df
 b6d0:  d9 2f 2d ac 01 00       CALL_2S         b6b0 (L00) -> -(SP)
 b6d6:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 b6da:  a1 01 01 bf f3          GET_SIBLING     L00 -> L00 [TRUE] b6d0
 b6df:  52 01 18 03             GET_PROP_ADDR   L00,#18 -> L02
 b6e3:  a3 01 00                GET_PARENT      L00 -> -(SP)
 b6e6:  a0 00 80 4f             JZ              (SP)+ [TRUE] b737
 b6ea:  a0 03 80 4b             JZ              L02 [TRUE] b737
 b6ee:  4f 03 00 00             LOADW           L02,#00 -> -(SP)
 b6f2:  63 00 13 58             JG              (SP)+,G03 [FALSE] b70c
 b6f6:  0d 7b 00                STORE           G6b,#00
 b6f9:  0d 7a 01                STORE           G6a,#01
 b6fc:  f9 27 2d 28 01 18       CALL_VN         b4a0 (L00,#18)
 b702:  0d 7a 00                STORE           G6a,#00
 b705:  41 7b 01 c1             JE              G6b,#01 [TRUE] RTRUE
 b709:  8c 00 2d                JUMP            b737
 b70c:  0d 02 00                STORE           L01,#00
 b70f:  52 01 18 ff             GET_PROP_ADDR   L00,#18 -> Gef
 b713:  a0 ff c5                JZ              Gef [TRUE] b719
 b716:  a4 ff ff                GET_PROP_LEN    Gef -> Gef
 b719:  e8 bf ff                PUSH            Gef
 b71c:  36 02 02 00             MUL             #02,L01 -> -(SP)
 b720:  62 00 00 55             JL              (SP)+,(SP)+ [FALSE] b737
 b724:  6f 03 02 00             LOADW           L02,L01 -> -(SP)
 b728:  d9 2f 2d ac 00 00       CALL_2S         b6b0 ((SP)+) -> -(SP)
 b72e:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 b732:  95 02                   INC             L01
 b734:  8c ff da                JUMP            b70f
 b737:  b1                      RFALSE          

Routine b738, 3 locals

 b739:  52 01 29 00             GET_PROP_ADDR   L00,#29 -> -(SP)
 b73d:  a0 00 4a                JZ              (SP)+ [FALSE] b748
 b740:  e0 1b 2f 89 07 01 00    CALL_VS         be24 (#07,L00) -> -(SP)
 b747:  b8                      RET_POPPED      
 b748:  61 44 22 45             JE              G34,G12 [FALSE] b74f
 b74c:  2d 44 01                STORE           G34,L00
 b74f:  4c 22 17                CLEAR_ATTR      G12,#17
 b752:  4c 22 03                CLEAR_ATTR      G12,#03
 b755:  2d 03 01                STORE           L02,L00
 b758:  a3 03 00                GET_PARENT      L02 -> -(SP)
 b75b:  a0 00 cf                JZ              (SP)+ [TRUE] b76b
 b75e:  4a 03 00 45             TEST_ATTR       L02,#00 [FALSE] b765
 b762:  4b 03 17                SET_ATTR        L02,#17
 b765:  a3 03 03                GET_PARENT      L02 -> L02
 b768:  8c ff ef                JUMP            b758
 b76b:  41 22 14 48             JE              G12,#14 [FALSE] b775
 b76f:  e3 93 22 2e 80 de       PUT_PROP        G12,#2e,S029
 b775:  e3 9b 22 29 25          PUT_PROP        G12,#29,G15
 b77a:  2d 22 01                STORE           G12,L00
 b77d:  41 22 14 48             JE              G12,#14 [FALSE] b787
 b781:  e3 93 22 2e ff ff       PUT_PROP        G12,#2e,#ffff
 b787:  4b 22 17                SET_ATTR        G12,#17
 b78a:  4b 22 03                SET_ATTR        G12,#03
 b78d:  4b 22 00                SET_ATTR        G12,#00
 b790:  4b 22 10                SET_ATTR        G12,#10
 b793:  2d 03 22                STORE           L02,G12
 b796:  a3 03 00                GET_PARENT      L02 -> -(SP)
 b799:  a0 00 c8                JZ              (SP)+ [TRUE] b7a2
 b79c:  a3 03 03                GET_PARENT      L02 -> L02
 b79f:  8c ff f6                JUMP            b796
 b7a2:  2d 10 03                STORE           G00,L02
 b7a5:  51 22 29 25             GET_PROP        G12,#29 -> G15
 b7a9:  a0 25 45                JZ              G15 [FALSE] b7af
 b7ac:  2d 25 10                STORE           G15,G00
 b7af:  a3 22 00                GET_PARENT      G12 -> -(SP)
 b7b2:  d9 2f 2d 9d 00 24       CALL_2S         b674 ((SP)+) -> G14
 b7b8:  a0 24 45                JZ              G14 [FALSE] b7be
 b7bb:  0d 10 13                STORE           G00,#13
 b7be:  2d 27 02                STORE           G17,L01
 b7c1:  b0                      RTRUE           

Routine b7c4, 3 locals

 b7c5:  ea 7f 01                SPLIT_WINDOW    #01
 b7c8:  eb 7f 01                SET_WINDOW      #01
 b7cb:  ef 5f 01 01             SET_CURSOR      #01,#01
 b7cf:  f1 7f 01                SET_TEXT_STYLE  REVERSE
 b7d2:  10 00 21 01             LOADB           #00,#21 -> L00
 b7d6:  55 01 1a 02             SUB             L00,#1a -> L01
 b7da:  55 01 0d 03             SUB             L00,#0d -> L02
 b7de:  55 01 01 00             SUB             L00,#01 -> -(SP)
 b7e2:  e9 7f ff                PULL            Gef
 b7e5:  42 ff 00 cb             JL              Gef,#00 [TRUE] b7f2
 b7e9:  e5 7f 20                PRINT_CHAR      ' '
 b7ec:  96 ff                   DEC             Gef
 b7ee:  a0 ff 3f f9             JZ              Gef [FALSE] b7e9
 b7f2:  ef 5f 01 02             SET_CURSOR      #01,#02
 b7f6:  da 2f 2f 27 10          CALL_2N         bc9c (G00)
 b7fb:  10 00 01 00             LOADB           #00,#01 -> -(SP)
 b7ff:  49 00 02 00             AND             (SP)+,#02 -> -(SP)
 b803:  a0 00 00 32             JZ              (SP)+ [FALSE] b837
 b807:  43 01 4c 56             JG              L00,#4c [FALSE] b81f
 b80b:  ef 6f 01 02             SET_CURSOR      #01,L01
 b80f:  8d 80 d3                PRINT_PADDR     S025
 b812:  e6 bf 11                PRINT_NUM       G01
 b815:  ef 6f 01 03             SET_CURSOR      #01,L02
 b819:  8d 80 d5                PRINT_PADDR     S026
 b81c:  e6 bf 12                PRINT_NUM       G02
 b81f:  43 01 3f 53             JG              L00,#3f [FALSE] b834
 b823:  43 01 4c cf             JG              L00,#4c [TRUE] b834
 b827:  ef 6f 01 03             SET_CURSOR      #01,L02
 b82b:  e6 bf 11                PRINT_NUM       G01
 b82e:  b2 ...                  PRINT           "/"
 b831:  e6 bf 12                PRINT_NUM       G02
 b834:  8c 00 0f                JUMP            b844
 b837:  ef 6f 01 02             SET_CURSOR      #01,L01
 b83b:  8d 80 d7                PRINT_PADDR     S027
 b83e:  f9 2b 19 a2 11 12       CALL_VN         6688 (G01,G02)
 b844:  ef 5f 01 01             SET_CURSOR      #01,#01
 b848:  f1 7f 00                SET_TEXT_STYLE  ROMAN
 b84b:  eb 7f 00                SET_WINDOW      #00
 b84e:  b0                      RTRUE           

Routine b850, 7 locals

 b851:  95 31                   INC             G21
 b853:  0d 32 00                STORE           G22,#00
 b856:  a8 02 04                CALL_1S         L01 -> L03
 b859:  2d 05 34                STORE           L04,G24
 b85c:  b2 ...                  PRINT           "--- "
 b863:  ad 05                   PRINT_PADDR     L04
 b865:  b2 ...                  PRINT           " ---

"
 b86e:  e0 27 7f 83 01 03 00    CALL_VS         1fe0c (L00,#03) -> -(SP)
 b875:  a0 00 cb                JZ              (SP)+ [TRUE] b881
 b878:  f9 27 7e 9d 01 45       CALL_VN         1fa74 (L00,#45)
 b87e:  8c 00 04                JUMP            b883
 b881:  ad 01                   PRINT_PADDR     L00
 b883:  f9 06 37 98 10 07 34 04 CALL_VN         de60 (#1007,#34,L03)
 b88b:  b2 ...                  PRINT           "> "
 b890:  cd 4f fc 35 f6          STORE           Gec,#35f6
 b895:  e2 97 fc 01 00          STOREB          Gec,#01,#00
 b89a:  8f 2d f1                CALL_1N         b7c4
 b89d:  e4 8f fc 36 6f ff       READ            Gec,#366f -> Gef
 b8a3:  cf 1f 36 6f 01 06       LOADW           #366f,#01 -> L05
 b8a9:  c1 83 06 59 90 59 a2 cb JE              L05,"q","quit" [TRUE] b8ba
 b8b1:  d0 1f 36 6f 01 00       LOADB           #366f,#01 -> -(SP)
 b8b7:  a0 00 52                JZ              (SP)+ [FALSE] b8ca
 b8ba:  96 31                   DEC             G21
 b8bc:  43 31 00 c0             JG              G21,#00 [TRUE] RFALSE
 b8c0:  a0 23 48                JZ              G13 [FALSE] b8c9
 b8c3:  da 1f 2c b1 20          CALL_2N         b2c4 (#20)
 b8c8:  b0                      RTRUE           
 b8c9:  b1                      RFALSE          
 b8ca:  d9 1f 2a a3 01 06       CALL_2S         aa8c (#01) -> L05
 b8d0:  a0 06 45                JZ              L05 [FALSE] b8d6
 b8d3:  8c ff 7f                JUMP            b853
 b8d6:  42 06 01 c6             JL              L05,#01 [TRUE] b8de
 b8da:  63 06 04 45             JG              L05,L03 [FALSE] b8e1
 b8de:  8c ff a4                JUMP            b883
 b8e1:  2d 32 06                STORE           G22,L05
 b8e4:  a8 03 07                CALL_1S         L02 -> L06
 b8e7:  41 07 02 45             JE              L06,#02 [FALSE] b8ee
 b8eb:  8c ff 67                JUMP            b853
 b8ee:  41 07 03 c0             JE              L06,#03 [TRUE] RFALSE
 b8f2:  8c ff 90                JUMP            b883

Routine b8f8, 11 locals

 b8f9:  a0 30 4b                JZ              G20 [FALSE] b905
 b8fc:  e0 2a 2e 14 01 02 03 00 CALL_VS         b850 (L00,L01,L02) -> -(SP)
 b904:  b8                      RET_POPPED      
 b905:  95 31                   INC             G21
 b907:  0d 32 00                STORE           G22,#00
 b90a:  a8 02 04                CALL_1S         L01 -> L03
 b90d:  2d 05 34                STORE           L04,G24
 b910:  2d 06 33                STORE           L05,G23
 b913:  0d 07 07                STORE           L06,#07
 b916:  0d 0a 00                STORE           L09,#00
 b919:  ed 3f ff ff             ERASE_WINDOW    #ffff
 b91d:  54 04 07 08             ADD             L03,#07 -> L07
 b921:  ea bf 08                SPLIT_WINDOW    L07
 b924:  10 00 21 08             LOADB           #00,#21 -> L07
 b928:  a0 08 45                JZ              L07 [FALSE] b92e
 b92b:  0d 08 50                STORE           L07,#50
 b92e:  eb 7f 01                SET_WINDOW      #01
 b931:  ef 5f 01 01             SET_CURSOR      #01,#01
 b935:  f1 7f 01                SET_TEXT_STYLE  REVERSE
 b938:  2d ff 08                STORE           Gef,L07
 b93b:  42 ff 00 cb             JL              Gef,#00 [TRUE] b948
 b93f:  e5 7f 20                PRINT_CHAR      ' '
 b942:  96 ff                   DEC             Gef
 b944:  a0 ff 3f f9             JZ              Gef [FALSE] b93f
 b948:  57 08 02 00             DIV             L07,#02 -> -(SP)
 b94c:  75 00 06 09             SUB             (SP)+,L05 -> L08
 b950:  ef 6f 01 09             SET_CURSOR      #01,L08
 b954:  ad 05                   PRINT_PADDR     L04
 b956:  ef 5f 02 01             SET_CURSOR      #02,#01
 b95a:  2d ff 08                STORE           Gef,L07
 b95d:  42 ff 00 cb             JL              Gef,#00 [TRUE] b96a
 b961:  e5 7f 20                PRINT_CHAR      ' '
 b964:  96 ff                   DEC             Gef
 b966:  a0 ff 3f f9             JZ              Gef [FALSE] b961
 b96a:  ef 5f 02 02             SET_CURSOR      #02,#02
 b96e:  8d 80 bf                PRINT_PADDR     S020
 b971:  55 08 0c 09             SUB             L07,#0c -> L08
 b975:  ef 6f 02 09             SET_CURSOR      #02,L08
 b979:  8d 80 c3                PRINT_PADDR     S021
 b97c:  ef 5f 03 01             SET_CURSOR      #03,#01
 b980:  2d ff 08                STORE           Gef,L07
 b983:  42 ff 00 cb             JL              Gef,#00 [TRUE] b990
 b987:  e5 7f 20                PRINT_CHAR      ' '
 b98a:  96 ff                   DEC             Gef
 b98c:  a0 ff 3f f9             JZ              Gef [FALSE] b987
 b990:  ef 5f 03 02             SET_CURSOR      #03,#02
 b994:  8d 80 ce                PRINT_PADDR     S024
 b997:  55 08 11 09             SUB             L07,#11 -> L08
 b99b:  ef 6f 03 09             SET_CURSOR      #03,L08
 b99f:  41 31 01 48             JE              G21,#01 [FALSE] b9a9
 b9a3:  8d 80 c6                PRINT_PADDR     S022
 b9a6:  8c 00 05                JUMP            b9ac
 b9a9:  8d 80 ca                PRINT_PADDR     S023
 b9ac:  f1 7f 00                SET_TEXT_STYLE  ROMAN
 b9af:  ef 5f 05 02             SET_CURSOR      #05,#02
 b9b3:  0f 00 08 ff             LOADW           #00,#08 -> Gef
 b9b7:  28 02 ff ff             OR              #02,Gef -> Gef
 b9bb:  e1 5b 00 08 ff          STOREW          #00,#08,Gef
 b9c0:  e0 27 7f 83 01 04 00    CALL_VS         1fe0c (L00,#04) -> -(SP)
 b9c7:  a0 00 c7                JZ              (SP)+ [TRUE] b9cf
 b9ca:  ad 01                   PRINT_PADDR     L00
 b9cc:  8c 00 08                JUMP            b9d5
 b9cf:  f9 27 7e 9d 01 45       CALL_VN         1fa74 (L00,#45)
 b9d5:  61 07 0a d6             JE              L06,L09 [TRUE] b9ed
 b9d9:  43 0a 00 49             JG              L09,#00 [FALSE] b9e4
 b9dd:  ef 9f 0a 04             SET_CURSOR      L09,#04
 b9e1:  b2 ...                  PRINT           " "
 b9e4:  ef 9f 07 04             SET_CURSOR      L06,#04
 b9e8:  b2 ...                  PRINT           ">"
 b9ed:  2d 0a 07                STORE           L09,L06
 b9f0:  f6 7f 01 0b             READ_CHAR       #01 -> L0a
 b9f4:  c1 95 0b 4e 6e 82 52    JE              L0a,#4e,#6e,#82 [FALSE] ba0b
 b9fb:  95 07                   INC             L06
 b9fd:  34 07 04 00             ADD             #07,L03 -> -(SP)
 ba01:  61 07 00 45             JE              L06,(SP)+ [FALSE] ba08
 ba05:  0d 07 07                STORE           L06,#07
 ba08:  8c ff cc                JUMP            b9d5
 ba0b:  c1 95 0b 50 70 81 4f    JE              L0a,#50,#70,#81 [FALSE] ba1f
 ba12:  96 07                   DEC             L06
 ba14:  41 07 06 46             JE              L06,#06 [FALSE] ba1c
 ba18:  34 06 04 07             ADD             #06,L03 -> L06
 ba1c:  8c ff b8                JUMP            b9d5
 ba1f:  c1 95 0b 51 71 1b c6    JE              L0a,#51,#71,#1b [TRUE] ba2a
 ba26:  41 0b 83 45             JE              L0a,#83 [FALSE] ba2d
 ba2a:  8c 00 8f                JUMP            baba
 ba2d:  c1 95 0b 0a 0d 84 00 84 JE              L0a,#0a,#0d,#84 [FALSE] bab7
 ba35:  eb 7f 00                SET_WINDOW      #00
 ba38:  0f 00 08 ff             LOADW           #00,#08 -> Gef
 ba3c:  c9 2f ff fd ff ff       AND             #fffd,Gef -> Gef
 ba42:  e1 5b 00 08 ff          STOREW          #00,#08,Gef
 ba47:  bb                      NEW_LINE        
 ba48:  bb                      NEW_LINE        
 ba49:  bb                      NEW_LINE        
 ba4a:  55 07 06 32             SUB             L06,#06 -> G22
 ba4e:  f9 27 7e 9d 02 45       CALL_VN         1fa74 (L01,#45)
 ba54:  ed 3f ff ff             ERASE_WINDOW    #ffff
 ba58:  ea 7f 01                SPLIT_WINDOW    #01
 ba5b:  10 00 21 08             LOADB           #00,#21 -> L07
 ba5f:  a0 08 45                JZ              L07 [FALSE] ba65
 ba62:  0d 08 50                STORE           L07,#50
 ba65:  eb 7f 01                SET_WINDOW      #01
 ba68:  ef 5f 01 01             SET_CURSOR      #01,#01
 ba6c:  f1 7f 01                SET_TEXT_STYLE  REVERSE
 ba6f:  2d ff 08                STORE           Gef,L07
 ba72:  42 ff 00 cb             JL              Gef,#00 [TRUE] ba7f
 ba76:  e5 7f 20                PRINT_CHAR      ' '
 ba79:  96 ff                   DEC             Gef
 ba7b:  a0 ff 3f f9             JZ              Gef [FALSE] ba76
 ba7f:  57 08 02 00             DIV             L07,#02 -> -(SP)
 ba83:  75 00 33 09             SUB             (SP)+,G23 -> L08
 ba87:  ef 6f 01 09             SET_CURSOR      #01,L08
 ba8b:  ad 34                   PRINT_PADDR     G24
 ba8d:  f1 7f 00                SET_TEXT_STYLE  ROMAN
 ba90:  eb 7f 00                SET_WINDOW      #00
 ba93:  bb                      NEW_LINE        
 ba94:  e0 27 7e 9d 03 45 08    CALL_VS         1fa74 (L02,#45) -> L07
 ba9b:  41 08 02 45             JE              L07,#02 [FALSE] baa2
 ba9f:  8c fe 76                JUMP            b916
 baa2:  41 08 03 45             JE              L07,#03 [FALSE] baa9
 baa6:  8c 00 13                JUMP            baba
 baa9:  f9 07 37 98 10 07 35    CALL_VN         de60 (#1007,#35)
 bab0:  f6 7f 01 0b             READ_CHAR       #01 -> L0a
 bab4:  8c fe 61                JUMP            b916
 bab7:  8c ff 1d                JUMP            b9d5
 baba:  96 31                   DEC             G21
 babc:  43 31 00 c0             JG              G21,#00 [TRUE] RFALSE
 bac0:  0f 00 08 ff             LOADW           #00,#08 -> Gef
 bac4:  c9 2f ff fd ff ff       AND             #fffd,Gef -> Gef
 baca:  e1 5b 00 08 ff          STOREW          #00,#08,Gef
 bacf:  ef 5f 01 01             SET_CURSOR      #01,#01
 bad3:  ed 3f ff ff             ERASE_WINDOW    #ffff
 bad7:  eb 7f 00                SET_WINDOW      #00
 bada:  bb                      NEW_LINE        
 badb:  bb                      NEW_LINE        
 badc:  bb                      NEW_LINE        
 badd:  a0 23 48                JZ              G13 [FALSE] bae6
 bae0:  da 1f 2c b1 20          CALL_2N         b2c4 (#20)
 bae5:  b0                      RTRUE           
 bae6:  b0                      RTRUE           

Routine bae8, 6 locals

 bae9:  e0 27 7f 6d 01 31 00    CALL_VS         1fdb4 (L00,#31) -> -(SP)
 baf0:  a0 00 d9                JZ              (SP)+ [TRUE] bb0a
 baf3:  52 01 31 00             GET_PROP_ADDR   L00,#31 -> -(SP)
 baf7:  6f 00 02 00             LOADW           (SP)+,L01 -> -(SP)
 bafb:  ad 00                   PRINT_PADDR     (SP)+
 bafd:  b2 ...                  PRINT           " "
 bb00:  a0 03 c3                JZ              L02 [TRUE] bb04
 bb03:  b0                      RTRUE           
 bb04:  da 2f 2e e5 01          CALL_2N         bb94 (L00)
 bb09:  b0                      RTRUE           
 bb0a:  d9 2f 2a e4 01 00       CALL_2S         ab90 (L00) -> -(SP)
 bb10:  cf 2f 38 d3 00 04       LOADW           #38d3,(SP)+ -> L03
 bb16:  a0 03 d2                JZ              L02 [TRUE] bb29
 bb19:  42 04 03 ca             JL              L03,#03 [TRUE] bb25
 bb1d:  42 04 06 ca             JL              L03,#06 [TRUE] bb29
 bb21:  42 04 09 46             JL              L03,#09 [FALSE] bb29
 bb25:  54 04 03 04             ADD             L03,#03 -> L03
 bb29:  36 0c 04 00             MUL             #0c,L03 -> -(SP)
 bb2d:  d4 2f 38 bb 00 05       ADD             #38bb,(SP)+ -> L04
 bb33:  54 02 03 00             ADD             L01,#03 -> -(SP)
 bb37:  6f 05 00 00             LOADW           L04,(SP)+ -> -(SP)
 bb3b:  6f 05 02 00             LOADW           L04,L01 -> -(SP)
 bb3f:  61 00 00 c5             JE              (SP)+,(SP)+ [TRUE] bb46
 bb43:  0d 06 01                STORE           L05,#01
 bb46:  a0 14 80 39             JZ              G04 [TRUE] bb81
 bb4a:  a0 06 80 35             JZ              L05 [TRUE] bb81
 bb4e:  e1 17 38 eb 00 a0       STOREW          #38eb,#00,#a0
 bb54:  f3 4f 03 38 eb          OUTPUT_STREAM   REDIRECT_ENABLE,#38eb
 bb59:  a0 03 ca                JZ              L02 [TRUE] bb64
 bb5c:  da 2f 2f 2b 03          CALL_2N         bcac (L02)
 bb61:  8c 00 07                JUMP            bb69
 bb64:  da 2f 2e e5 01          CALL_2N         bb94 (L00)
 bb69:  f3 3f ff fd             OUTPUT_STREAM   #fffd
 bb6d:  d4 1f 38 eb 02 00       ADD             #38eb,#02 -> -(SP)
 bb73:  d9 2f 18 fb 00 00       CALL_2S         63ec ((SP)+) -> -(SP)
 bb79:  36 03 00 00             MUL             #03,(SP)+ -> -(SP)
 bb7d:  74 02 00 02             ADD             L01,(SP)+ -> L01
 bb81:  6f 05 02 00             LOADW           L04,L01 -> -(SP)
 bb85:  ad 00                   PRINT_PADDR     (SP)+
 bb87:  a0 03 c3                JZ              L02 [TRUE] bb8b
 bb8a:  b0                      RTRUE           
 bb8b:  da 2f 2e e5 01          CALL_2N         bb94 (L00)
 bb90:  b0                      RTRUE           

Routine bb94, 1 local

 bb95:  a0 01 46                JZ              L00 [FALSE] bb9c
 bb98:  8d 80 e9                PRINT_PADDR     S035
 bb9b:  b0                      RTRUE           
 bb9c:  e0 2f 80 20 01 00       CALL_VS         20080 (L00) -> -(SP)
 bba2:  e9 7f ff                PULL            Gef
 bba5:  41 ff 03 54             JE              Gef,#03 [FALSE] bbbb
 bba9:  b2 ...                  PRINT           "<routine "
 bbb2:  e6 bf 01                PRINT_NUM       L00
 bbb5:  b2 ...                  PRINT           ">"
 bbba:  b0                      RTRUE           
 bbbb:  41 ff 04 55             JE              Gef,#04 [FALSE] bbd2
 bbbf:  b2 ...                  PRINT           "<string ""
 bbca:  ad 01                   PRINT_PADDR     L00
 bbcc:  b2 ...                  PRINT           "">"
 bbd1:  b0                      RTRUE           
 bbd2:  41 ff 00 5e             JE              Gef,#00 [FALSE] bbf2
 bbd6:  b2 ...                  PRINT           "<illegal object number "
 bbe9:  e6 bf 01                PRINT_NUM       L00
 bbec:  b2 ...                  PRINT           ">"
 bbf1:  b0                      RTRUE           
 bbf2:  61 01 22 46             JE              L00,G12 [FALSE] bbfa
 bbf6:  8d 80 e1                PRINT_PADDR     S030
 bbf9:  b0                      RTRUE           
 bbfa:  a0 6a 54                JZ              G5a [FALSE] bc0f
 bbfd:  52 01 2f 00             GET_PROP_ADDR   L00,#2f -> -(SP)
 bc01:  a0 00 cd                JZ              (SP)+ [TRUE] bc0f
 bc04:  e0 25 2d 08 01 2f 01 00 CALL_VS         b420 (L00,#2f,#01) -> -(SP)
 bc0c:  a0 00 41                JZ              (SP)+ [FALSE] RTRUE
 bc0f:  52 01 2e 00             GET_PROP_ADDR   L00,#2e -> -(SP)
 bc13:  a0 00 cd                JZ              (SP)+ [TRUE] bc21
 bc16:  e0 25 2d 08 01 2e 01 00 CALL_VS         b420 (L00,#2e,#01) -> -(SP)
 bc1e:  a0 00 41                JZ              (SP)+ [FALSE] RTRUE
 bc21:  aa 01                   PRINT_OBJ       L00
 bc23:  b0                      RTRUE           

Routine bc24, 2 locals

 bc25:  2d 02 6a                STORE           L01,G5a
 bc28:  0d 6a 01                STORE           G5a,#01
 bc2b:  4a 01 10 48             TEST_ATTR       L00,#10 [FALSE] bc35
 bc2f:  da 2f 2e e5 01          CALL_2N         bb94 (L00)
 bc34:  b0                      RTRUE           
 bc35:  e0 27 7f 6d 01 25 00    CALL_VS         1fdb4 (L00,#25) -> -(SP)
 bc3c:  a0 00 d5                JZ              (SP)+ [TRUE] bc52
 bc3f:  f9 25 2d 08 01 25 01    CALL_VN         b420 (L00,#25,#01)
 bc46:  b2 ...                  PRINT           " "
 bc49:  da 2f 2e e5 01          CALL_2N         bb94 (L00)
 bc4e:  2d 6a 02                STORE           G5a,L01
 bc51:  b0                      RTRUE           
 bc52:  f9 27 2e ba 01 02       CALL_VN         bae8 (L00,#02)
 bc58:  2d 6a 02                STORE           G5a,L01
 bc5b:  b0                      RTRUE           

Routine bc5c, 2 locals

 bc5d:  2d 02 6a                STORE           L01,G5a
 bc60:  0d 6a 00                STORE           G5a,#00
 bc63:  4a 01 10 4b             TEST_ATTR       L00,#10 [FALSE] bc70
 bc67:  da 2f 2e e5 01          CALL_2N         bb94 (L00)
 bc6c:  2d 6a 02                STORE           G5a,L01
 bc6f:  b0                      RTRUE           
 bc70:  f9 27 2e ba 01 01       CALL_VN         bae8 (L00,#01)
 bc76:  2d 6a 02                STORE           G5a,L01
 bc79:  b0                      RTRUE           

Routine bc7c, 2 locals

 bc7d:  2d 02 6a                STORE           L01,G5a
 bc80:  0d 6a 00                STORE           G5a,#00
 bc83:  4a 01 10 4b             TEST_ATTR       L00,#10 [FALSE] bc90
 bc87:  da 2f 2e e5 01          CALL_2N         bb94 (L00)
 bc8c:  2d 6a 02                STORE           G5a,L01
 bc8f:  b0                      RTRUE           
 bc90:  f9 27 2e ba 01 00       CALL_VN         bae8 (L00,#00)
 bc96:  2d 6a 02                STORE           G5a,L01
 bc99:  b0                      RTRUE           

Routine bc9c, 2 locals

 bc9d:  2d 02 6a                STORE           L01,G5a
 bca0:  0d 6a 00                STORE           G5a,#00
 bca3:  da 2f 2e e5 01          CALL_2N         bb94 (L00)
 bca8:  2d 6a 02                STORE           G5a,L01
 bcab:  b0                      RTRUE           

Routine bcac, 1 local

 bcad:  da 2f 19 2c 01          CALL_2N         64b0 (L00)
 bcb2:  b0                      RTRUE           

Routine bcb4, 3 locals

 bcb5:  cf 1f 38 69 00 03       LOADW           #3869,#00 -> L02
 bcbb:  0d 02 01                STORE           L01,#01
 bcbe:  8c 00 06                JUMP            bcc5
 bcc1:  54 02 02 02             ADD             L01,#02 -> L01
 bcc5:  63 02 03 da             JG              L01,L02 [TRUE] bce1
 bcc9:  cf 2f 38 69 02 00       LOADW           #3869,L01 -> -(SP)
 bccf:  61 01 00 4d             JE              L00,(SP)+ [FALSE] bcde
 bcd3:  54 02 01 00             ADD             L01,#01 -> -(SP)
 bcd7:  cf 2f 38 69 00 00       LOADW           #3869,(SP)+ -> -(SP)
 bcdd:  b8                      RET_POPPED      
 bcde:  8c ff e2                JUMP            bcc1
 bce1:  b1                      RFALSE          

Routine bce4, 1 local

 bce5:  4f 01 00 00             LOADW           L00,#00 -> -(SP)
 bce9:  a0 00 49                JZ              (SP)+ [FALSE] bcf3
 bcec:  d9 1f 2f 89 08 00       CALL_2S         be24 (#08) -> -(SP)
 bcf2:  b8                      RET_POPPED      
 bcf3:  4f 01 00 00             LOADW           L00,#00 -> -(SP)
 bcf7:  e7 bf 00 00             RANDOM          (SP)+ -> -(SP)
 bcfb:  6f 01 00 00             LOADW           L00,(SP)+ -> -(SP)
 bcff:  b8                      RET_POPPED      

Routine bd00, 4 locals

 bd01:  61 01 02 43             JE              L00,L01 [FALSE] bd06
 bd05:  b1                      RFALSE          
 bd06:  42 01 00 47             JL              L00,#00 [FALSE] bd0f
 bd0a:  42 02 00 c3             JL              L01,#00 [TRUE] bd0f
 bd0e:  b0                      RTRUE           
 bd0f:  42 01 00 c9             JL              L00,#00 [TRUE] bd1a
 bd13:  42 02 00 45             JL              L01,#00 [FALSE] bd1a
 bd17:  8b ff ff                RET             #ffff
 bd1a:  c9 8f 01 7f ff 03       AND             L00,#7fff -> L02
 bd20:  c9 8f 02 7f ff 04       AND             L01,#7fff -> L03
 bd26:  63 03 04 43             JG              L02,L03 [FALSE] bd2b
 bd2a:  b0                      RTRUE           
 bd2b:  8b ff ff                RET             #ffff

Routine bd30, 1 local

 bd31:  80 80 7e cb             JZ              #807e [TRUE] bd3e
 bd35:  f1 7f 02                SET_TEXT_STYLE  BOLDFACE
 bd38:  8d 80 7e                PRINT_PADDR     S001
 bd3b:  f1 7f 00                SET_TEXT_STYLE  ROMAN
 bd3e:  80 80 88 c5             JZ              #8088 [TRUE] bd45
 bd42:  8d 80 88                PRINT_PADDR     S002
 bd45:  b2 ...                  PRINT           "Release "
 bd4c:  0f 00 01 00             LOADW           #00,#01 -> -(SP)
 bd50:  c9 8f 00 03 ff 00       AND             (SP)+,#03ff -> -(SP)
 bd56:  e6 bf 00                PRINT_NUM       (SP)+
 bd59:  b2 ...                  PRINT           " / Serial number "
 bd68:  0d 01 12                STORE           L00,#12
 bd6b:  42 01 18 4e             JL              L00,#18 [FALSE] bd7b
 bd6f:  30 00 01 00             LOADB           #00,L00 -> -(SP)
 bd73:  e5 bf 00                PRINT_CHAR      (SP)+
 bd76:  95 01                   INC             L00
 bd78:  8c ff f2                JUMP            bd6b
 bd7b:  b2 ...                  PRINT           " / Inform v"
 bd86:  10 00 3c ff             LOADB           #00,#3c -> Gef
 bd8a:  e5 bf ff                PRINT_CHAR      Gef
 bd8d:  10 00 3d ff             LOADB           #00,#3d -> Gef
 bd91:  e5 bf ff                PRINT_CHAR      Gef
 bd94:  10 00 3e ff             LOADB           #00,#3e -> Gef
 bd98:  e5 bf ff                PRINT_CHAR      Gef
 bd9b:  10 00 3f ff             LOADB           #00,#3f -> Gef
 bd9f:  e5 bf ff                PRINT_CHAR      Gef
 bda2:  b2 ...                  PRINT           " Library "
 bdab:  8d 80 af                PRINT_PADDR     S004
 bdae:  bb                      NEW_LINE        
 bdaf:  43 14 00 00 2b          JG              G04,#00 [FALSE] bddd
 bdb4:  b2 ...                  PRINT           "Standard interpreter "
 bdc5:  d7 8f 14 01 00 00       DIV             G04,#0100 -> -(SP)
 bdcb:  e6 bf 00                PRINT_NUM       (SP)+
 bdce:  b2 ...                  PRINT           "."
 bdd1:  d8 8f 14 01 00 00       MOD             G04,#0100 -> -(SP)
 bdd7:  e6 bf 00                PRINT_NUM       (SP)+
 bdda:  b2 ...                  PRINT           "
"
 bddd:  b0                      RTRUE           

Routine bde0, 0 locals
    Action routine for:
        "version"

 bde1:  8f 2f 4c                CALL_1N         bd30
 bde4:  b2 ...                  PRINT           "Interpreter "
 bdef:  10 00 1e 00             LOADB           #00,#1e -> -(SP)
 bdf3:  e6 bf 00                PRINT_NUM       (SP)+
 bdf6:  b2 ...                  PRINT           " Version "
 bdff:  10 00 1f 00             LOADB           #00,#1f -> -(SP)
 be03:  e5 bf 00                PRINT_CHAR      (SP)+
 be06:  b2 ...                  PRINT           " / "
 be0b:  b2 ...                  PRINT           "Library serial number "
 be1c:  8d 80 ad                PRINT_PADDR     S003
 be1f:  b2 ...                  PRINT           "
"
 be22:  b0                      RTRUE           

Routine be24, 3 locals

 be25:  b2 ...                  PRINT           "** Library error "
 be36:  e6 bf 01                PRINT_NUM       L00
 be39:  b2 ...                  PRINT           " ("
 be3c:  e6 bf 02                PRINT_NUM       L01
 be3f:  b2 ...                  PRINT           ","
 be42:  e6 bf 03                PRINT_NUM       L02
 be45:  b3 ...                  PRINT_RET       ") **"

Routine be50, 0 locals
    Action routine for:
        "places"

 be51:  8f 32 ae                CALL_1N         cab8
 be54:  b0                      RTRUE           

Routine be58, 0 locals
    Action routine for:
        "objects"

 be59:  8f 32 c2                CALL_1N         cb08
 be5c:  b0                      RTRUE           

Routine be60, 2 locals

 be61:  a1 01 01 42             GET_SIBLING     L00 -> L00 [FALSE] be65
 be65:  a0 2a 80 61             JZ              G1a [TRUE] bec8
 be69:  c9 8f 29 02 00 00       AND             G19,#0200 -> -(SP)
 be6f:  a0 00 80 1d             JZ              (SP)+ [TRUE] be8e
 be73:  a0 02 5a                JZ              L01 [FALSE] be8e
 be76:  a0 01 d5                JZ              L00 [TRUE] be8c
 be79:  51 01 19 00             GET_PROP        L00,#19 -> -(SP)
 be7d:  61 00 2a 46             JE              (SP)+,G1a [FALSE] be85
 be81:  4a 01 19 c9             TEST_ATTR       L00,#19 [TRUE] be8c
 be85:  a1 01 01 42             GET_SIBLING     L00 -> L00 [FALSE] be89
 be89:  8c ff ec                JUMP            be76
 be8c:  ab 01                   RET             L00
 be8e:  c9 8f 29 08 00 00       AND             G19,#0800 -> -(SP)
 be94:  a0 00 80 1e             JZ              (SP)+ [TRUE] beb4
 be98:  a0 01 d9                JZ              L00 [TRUE] beb2
 be9b:  4a 01 03 ce             TEST_ATTR       L00,#03 [TRUE] beab
 be9f:  4a 01 11 ca             TEST_ATTR       L00,#11 [TRUE] beab
 bea3:  51 01 19 00             GET_PROP        L00,#19 -> -(SP)
 bea7:  61 00 2a c9             JE              (SP)+,G1a [TRUE] beb2
 beab:  a1 01 01 42             GET_SIBLING     L00 -> L00 [FALSE] beaf
 beaf:  8c ff e8                JUMP            be98
 beb2:  ab 01                   RET             L00
 beb4:  a0 01 d1                JZ              L00 [TRUE] bec6
 beb7:  51 01 19 00             GET_PROP        L00,#19 -> -(SP)
 bebb:  61 00 2a c9             JE              (SP)+,G1a [TRUE] bec6
 bebf:  a1 01 01 42             GET_SIBLING     L00 -> L00 [FALSE] bec3
 bec3:  8c ff f0                JUMP            beb4
 bec6:  ab 01                   RET             L00
 bec8:  c9 8f 29 02 00 00       AND             G19,#0200 -> -(SP)
 bece:  a0 00 d5                JZ              (SP)+ [TRUE] bee4
 bed1:  a0 02 52                JZ              L01 [FALSE] bee4
 bed4:  a0 01 cd                JZ              L00 [TRUE] bee2
 bed7:  4a 01 19 c9             TEST_ATTR       L00,#19 [TRUE] bee2
 bedb:  a1 01 01 42             GET_SIBLING     L00 -> L00 [FALSE] bedf
 bedf:  8c ff f4                JUMP            bed4
 bee2:  ab 01                   RET             L00
 bee4:  c9 8f 29 08 00 00       AND             G19,#0800 -> -(SP)
 beea:  a0 00 d4                JZ              (SP)+ [TRUE] beff
 beed:  a0 01 d1                JZ              L00 [TRUE] beff
 bef0:  4a 01 03 c6             TEST_ATTR       L00,#03 [TRUE] bef8
 bef4:  4a 01 11 49             TEST_ATTR       L00,#11 [FALSE] beff
 bef8:  a1 01 01 42             GET_SIBLING     L00 -> L00 [FALSE] befc
 befc:  8c ff f0                JUMP            beed
 beff:  ab 01                   RET             L00

Routine bf04, 1 local

 bf05:  49 29 20 00             AND             G19,#20 -> -(SP)
 bf09:  a0 00 41                JZ              (SP)+ [FALSE] RTRUE
 bf0c:  49 29 10 00             AND             G19,#10 -> -(SP)
 bf10:  a0 00 c0                JZ              (SP)+ [TRUE] RFALSE
 bf13:  4a 01 17 c1             TEST_ATTR       L00,#17 [TRUE] RTRUE
 bf17:  4a 01 14 c1             TEST_ATTR       L00,#14 [TRUE] RTRUE
 bf1b:  4a 01 04 46             TEST_ATTR       L00,#04 [FALSE] bf23
 bf1f:  4a 01 0e c1             TEST_ATTR       L00,#0e [TRUE] RTRUE
 bf23:  b1                      RFALSE          

Routine bf24, 2 locals

 bf25:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] bf29
 bf29:  a0 00 cb                JZ              (SP)+ [TRUE] bf35
 bf2c:  d9 2f 2f c1 01 00       CALL_2S         bf04 (L00) -> -(SP)
 bf32:  a0 00 40                JZ              (SP)+ [FALSE] RFALSE
 bf35:  a2 02 00 42             GET_CHILD       L01 -> -(SP) [FALSE] bf39
 bf39:  a0 00 cb                JZ              (SP)+ [TRUE] bf45
 bf3c:  d9 2f 2f c1 02 00       CALL_2S         bf04 (L01) -> -(SP)
 bf42:  a0 00 40                JZ              (SP)+ [FALSE] RFALSE
 bf45:  49 29 84 00             AND             G19,#84 -> -(SP)
 bf49:  a0 00 80 22             JZ              (SP)+ [TRUE] bf6d
 bf4d:  4a 01 1a c6             TEST_ATTR       L00,#1a [TRUE] bf55
 bf51:  4a 02 1a c0             TEST_ATTR       L01,#1a [TRUE] RFALSE
 bf55:  4a 02 1a c6             TEST_ATTR       L01,#1a [TRUE] bf5d
 bf59:  4a 01 1a c0             TEST_ATTR       L00,#1a [TRUE] RFALSE
 bf5d:  4a 01 09 c6             TEST_ATTR       L00,#09 [TRUE] bf65
 bf61:  4a 02 09 c0             TEST_ATTR       L01,#09 [TRUE] RFALSE
 bf65:  4a 02 09 c6             TEST_ATTR       L01,#09 [TRUE] bf6d
 bf69:  4a 01 09 c0             TEST_ATTR       L00,#09 [TRUE] RFALSE
 bf6d:  e0 2b 28 c3 01 02 00    CALL_VS         a30c (L00,L01) -> -(SP)
 bf74:  b8                      RET_POPPED      

Routine bf78, 2 locals

 bf79:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] bf7d
 bf7d:  a0 00 80 22             JZ              (SP)+ [TRUE] bfa1
 bf81:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] bf85
 bf85:  51 00 19 00             GET_PROP        (SP)+,#19 -> -(SP)
 bf89:  61 00 02 cc             JE              (SP)+,L01 [TRUE] bf97
 bf8d:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] bf91
 bf91:  4e 00 11                INSERT_OBJ      (SP)+,"outside"
 bf94:  8c 00 09                JUMP            bf9e
 bf97:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] bf9b
 bf9b:  4e 00 12                INSERT_OBJ      (SP)+,"inside"
 bf9e:  8c ff da                JUMP            bf79
 bfa1:  92 12 00 42             GET_CHILD       "inside" -> -(SP) [FALSE] bfa5
 bfa5:  a0 00 cc                JZ              (SP)+ [TRUE] bfb2
 bfa8:  92 12 00 42             GET_CHILD       "inside" -> -(SP) [FALSE] bfac
 bfac:  6e 00 01                INSERT_OBJ      (SP)+,L00
 bfaf:  8c ff f1                JUMP            bfa1
 bfb2:  92 11 00 42             GET_CHILD       "outside" -> -(SP) [FALSE] bfb6
 bfb6:  a0 00 cc                JZ              (SP)+ [TRUE] bfc3
 bfb9:  92 11 00 42             GET_CHILD       "outside" -> -(SP) [FALSE] bfbd
 bfbd:  6e 00 01                INSERT_OBJ      (SP)+,L00
 bfc0:  8c ff f1                JUMP            bfb2
 bfc3:  b0                      RTRUE           

Routine bfc4, 4 locals

 bfc5:  2d 02 01                STORE           L01,L00
 bfc8:  8c 00 06                JUMP            bfcf
 bfcb:  a1 02 02 42             GET_SIBLING     L01 -> L01 [FALSE] bfcf
 bfcf:  a0 02 80 53             JZ              L01 [TRUE] c024
 bfd3:  51 02 19 03             GET_PROP        L01,#19 -> L02
 bfd7:  a0 03 80 48             JZ              L02 [TRUE] c021
 bfdb:  a1 02 02 42             GET_SIBLING     L01 -> L01 [FALSE] bfdf
 bfdf:  a0 02 d1                JZ              L01 [TRUE] bff1
 bfe2:  51 02 19 00             GET_PROP        L01,#19 -> -(SP)
 bfe6:  61 00 03 49             JE              (SP)+,L02 [FALSE] bff1
 bfea:  a1 02 02 42             GET_SIBLING     L01 -> L01 [FALSE] bfee
 bfee:  8c ff f0                JUMP            bfdf
 bff1:  a0 02 c0                JZ              L01 [TRUE] RFALSE
 bff4:  a1 02 04 42             GET_SIBLING     L01 -> L03 [FALSE] bff8
 bff8:  8c 00 06                JUMP            bfff
 bffb:  a1 04 04 42             GET_SIBLING     L03 -> L03 [FALSE] bfff
 bfff:  a0 04 80 20             JZ              L03 [TRUE] c021
 c003:  51 04 19 00             GET_PROP        L03,#19 -> -(SP)
 c007:  61 00 03 55             JE              (SP)+,L02 [FALSE] c01e
 c00b:  a3 01 00                GET_PARENT      L00 -> -(SP)
 c00e:  f9 2b 2f de 00 03       CALL_VN         bf78 ((SP)+,L02)
 c014:  a3 01 00                GET_PARENT      L00 -> -(SP)
 c017:  a2 00 01 42             GET_CHILD       (SP)+ -> L00 [FALSE] c01b
 c01b:  8c ff a9                JUMP            bfc5
 c01e:  8c ff dc                JUMP            bffb
 c021:  8c ff a9                JUMP            bfcb
 c024:  b0                      RTRUE           

Routine c028, 3 locals

 c029:  a3 01 00                GET_PARENT      L00 -> -(SP)
 c02c:  a2 00 00 42             GET_CHILD       (SP)+ -> -(SP) [FALSE] c030
 c030:  61 01 00 4e             JE              L00,(SP)+ [FALSE] c040
 c034:  da 2f 2f f1 01          CALL_2N         bfc4 (L00)
 c039:  a3 01 00                GET_PARENT      L00 -> -(SP)
 c03c:  a2 00 01 42             GET_CHILD       (SP)+ -> L00 [FALSE] c040
 c040:  2d 29 02                STORE           G19,L01
 c043:  c9 8f 02 02 00 00       AND             L01,#0200 -> -(SP)
 c049:  a0 00 d3                JZ              (SP)+ [TRUE] c05d
 c04c:  a0 01 cd                JZ              L00 [TRUE] c05a
 c04f:  4a 01 19 c9             TEST_ATTR       L00,#19 [TRUE] c05a
 c053:  a1 01 01 42             GET_SIBLING     L00 -> L00 [FALSE] c057
 c057:  8c ff f4                JUMP            c04c
 c05a:  8c 00 1d                JUMP            c078
 c05d:  c9 8f 29 08 00 00       AND             G19,#0800 -> -(SP)
 c063:  a0 00 d4                JZ              (SP)+ [TRUE] c078
 c066:  a0 01 d1                JZ              L00 [TRUE] c078
 c069:  4a 01 03 c6             TEST_ATTR       L00,#03 [TRUE] c071
 c06d:  4a 01 11 49             TEST_ATTR       L00,#11 [FALSE] c078
 c071:  a1 01 01 42             GET_SIBLING     L00 -> L00 [FALSE] c075
 c075:  8c ff f0                JUMP            c066
 c078:  a0 01 c0                JZ              L00 [TRUE] RFALSE
 c07b:  0d 2d 00                STORE           G1d,#00
 c07e:  f9 2b 30 22 01 03       CALL_VN         c088 (L00,L02)
 c084:  b0                      RTRUE           

Routine c088, 15 locals

 c089:  43 02 00 59             JG              L01,#00 [FALSE] c0a4
 c08d:  a3 01 00                GET_PARENT      L00 -> -(SP)
 c090:  a2 00 00 42             GET_CHILD       (SP)+ -> -(SP) [FALSE] c094
 c094:  61 01 00 4e             JE              L00,(SP)+ [FALSE] c0a4
 c098:  da 2f 2f f1 01          CALL_2N         bfc4 (L00)
 c09d:  a3 01 00                GET_PARENT      L00 -> -(SP)
 c0a0:  a2 00 01 42             GET_CHILD       (SP)+ -> L00 [FALSE] c0a4
 c0a4:  d4 2f 34 f6 03 04       ADD             #34f6,L02 -> L03
 c0aa:  d4 2f 34 76 03 05       ADD             #3476,L02 -> L04
 c0b0:  2d 06 01                STORE           L05,L00
 c0b3:  0d 07 00                STORE           L06,#00
 c0b6:  8c 00 0b                JUMP            c0c2
 c0b9:  e0 2b 2f 98 06 02 06    CALL_VS         be60 (L05,L01) -> L05
 c0c0:  95 07                   INC             L06
 c0c2:  a0 06 db                JZ              L05 [TRUE] c0de
 c0c5:  74 07 03 00             ADD             L06,L02 -> -(SP)
 c0c9:  42 00 80 53             JL              (SP)+,#80 [FALSE] c0de
 c0cd:  e2 a7 04 07 00          STOREB          L03,L06,#00
 c0d2:  51 06 17 00             GET_PROP        L05,#17 -> -(SP)
 c0d6:  a0 00 c4                JZ              (SP)+ [TRUE] c0db
 c0d9:  95 08                   INC             L07
 c0db:  8c ff dd                JUMP            c0b9
 c0de:  c9 8f 29 04 00 00       AND             G19,#0400 -> -(SP)
 c0e4:  a0 00 80 2b             JZ              (SP)+ [TRUE] c111
 c0e8:  41 07 01 4c             JE              L06,#01 [FALSE] c0f6
 c0ec:  4a 01 1e c8             TEST_ATTR       L00,#1e [TRUE] c0f6
 c0f0:  8d 80 eb                PRINT_PADDR     S036
 c0f3:  8c 00 05                JUMP            c0f9
 c0f6:  8d 80 ec                PRINT_PADDR     S037
 c0f9:  49 29 01 00             AND             G19,#01 -> -(SP)
 c0fd:  a0 00 ca                JZ              (SP)+ [TRUE] c108
 c100:  b2 ...                  PRINT           ":
"
 c105:  8c 00 05                JUMP            c10b
 c108:  e5 7f 20                PRINT_CHAR      ' '
 c10b:  d5 8f 29 04 00 29       SUB             G19,#0400 -> G19
 c111:  74 03 07 00             ADD             L02,L06 -> -(SP)
 c115:  54 00 01 03             ADD             (SP)+,#01 -> L02
 c119:  42 08 02 45             JL              L07,#02 [FALSE] c120
 c11d:  8c 03 21                JUMP            c43f
 c120:  0d 0c 01                STORE           L0b,#01
 c123:  2d 06 01                STORE           L05,L00
 c126:  0d 08 00                STORE           L07,#00
 c129:  8c 00 0b                JUMP            c135
 c12c:  e0 2b 2f 98 06 02 06    CALL_VS         be60 (L05,L01) -> L05
 c133:  95 08                   INC             L07
 c135:  62 08 07 00 71          JL              L07,L06 [FALSE] c1a9
 c13a:  70 04 08 00             LOADB           L03,L07 -> -(SP)
 c13e:  a0 00 00 66             JZ              (SP)+ [FALSE] c1a6
 c142:  e2 ab 04 08 0c          STOREB          L03,L07,L0b
 c147:  e2 a7 05 0c 01          STOREB          L04,L0b,#01
 c14c:  e0 2b 2f 98 06 02 0a    CALL_VS         be60 (L05,L01) -> L09
 c153:  54 08 01 0b             ADD             L07,#01 -> L0a
 c157:  8c 00 0b                JUMP            c163
 c15a:  e0 2b 2f 98 0a 02 0a    CALL_VS         be60 (L09,L01) -> L09
 c161:  95 0b                   INC             L0a
 c163:  a0 0a 80 3f             JZ              L09 [TRUE] c1a4
 c167:  62 0b 07 00 3a          JL              L0a,L06 [FALSE] c1a4
 c16c:  70 04 0b 00             LOADB           L03,L0a -> -(SP)
 c170:  a0 00 00 2f             JZ              (SP)+ [FALSE] c1a1
 c174:  51 06 17 00             GET_PROP        L05,#17 -> -(SP)
 c178:  a0 00 80 27             JZ              (SP)+ [TRUE] c1a1
 c17c:  51 0a 17 00             GET_PROP        L09,#17 -> -(SP)
 c180:  a0 00 80 1f             JZ              (SP)+ [TRUE] c1a1
 c184:  e0 2b 2f c9 06 0a 00    CALL_VS         bf24 (L05,L09) -> -(SP)
 c18b:  41 00 01 54             JE              (SP)+,#01 [FALSE] c1a1
 c18f:  70 05 0c 00             LOADB           L04,L0b -> -(SP)
 c193:  54 00 01 00             ADD             (SP)+,#01 -> -(SP)
 c197:  e2 ab 05 0c 00          STOREB          L04,L0b,(SP)+
 c19c:  e2 ab 04 0b 0c          STOREB          L03,L0a,L0b
 c1a1:  8c ff b8                JUMP            c15a
 c1a4:  95 0c                   INC             L0b
 c1a6:  8c ff 85                JUMP            c12c
 c1a9:  96 0c                   DEC             L0b
 c1ab:  0d 06 01                STORE           L05,#01
 c1ae:  2d 07 01                STORE           L06,L00
 c1b1:  0d 08 00                STORE           L07,#00
 c1b4:  8c 00 06                JUMP            c1bb
 c1b7:  95 06                   INC             L05
 c1b9:  95 0e                   INC             L0d
 c1bb:  63 06 0c 80 51          JG              L05,L0b [TRUE] c20f
 c1c0:  70 04 08 00             LOADB           L03,L07 -> -(SP)
 c1c4:  61 00 06 da             JE              (SP)+,L05 [TRUE] c1e0
 c1c8:  35 00 06 00             SUB             #00,L05 -> -(SP)
 c1cc:  70 04 08 00             LOADB           L03,L07 -> -(SP)
 c1d0:  61 00 00 ce             JE              (SP)+,(SP)+ [TRUE] c1e0
 c1d4:  95 08                   INC             L07
 c1d6:  e0 2b 2f 98 07 02 07    CALL_VS         be60 (L06,L01) -> L06
 c1dd:  8c ff e2                JUMP            c1c0
 c1e0:  70 05 06 0b             LOADB           L04,L05 -> L0a
 c1e4:  51 07 19 00             GET_PROP        L06,#19 -> -(SP)
 c1e8:  c1 9b 00 00 2a dc       JE              (SP)+,#00,G1a [TRUE] c208
 c1ee:  51 07 19 00             GET_PROP        L06,#19 -> -(SP)
 c1f2:  d9 2f 2c ff 00 00       CALL_2S         b3fc ((SP)+) -> -(SP)
 c1f8:  c1 97 00 02 03 4c       JE              (SP)+,#02,#03 [FALSE] c208
 c1fe:  51 07 19 00             GET_PROP        L06,#19 -> -(SP)
 c202:  61 00 0f 44             JE              (SP)+,L0e [FALSE] c208
 c206:  96 0e                   DEC             L0d
 c208:  51 07 19 0f             GET_PROP        L06,#19 -> L0e
 c20c:  8c ff aa                JUMP            c1b7
 c20f:  96 0e                   DEC             L0d
 c211:  0d 06 01                STORE           L05,#01
 c214:  2d 07 01                STORE           L06,L00
 c217:  0d 08 00                STORE           L07,#00
 c21a:  0d 0f 00                STORE           L0e,#00
 c21d:  8c 00 06                JUMP            c224
 c220:  95 06                   INC             L05
 c222:  96 0e                   DEC             L0d
 c224:  42 0e 00 82 17          JL              L0d,#00 [TRUE] c43e
 c229:  70 04 08 00             LOADB           L03,L07 -> -(SP)
 c22d:  61 00 06 da             JE              (SP)+,L05 [TRUE] c249
 c231:  35 00 06 00             SUB             #00,L05 -> -(SP)
 c235:  70 04 08 00             LOADB           L03,L07 -> -(SP)
 c239:  61 00 00 ce             JE              (SP)+,(SP)+ [TRUE] c249
 c23d:  95 08                   INC             L07
 c23f:  e0 2b 2f 98 07 02 07    CALL_VS         be60 (L06,L01) -> L06
 c246:  8c ff e2                JUMP            c229
 c249:  51 07 19 00             GET_PROP        L06,#19 -> -(SP)
 c24d:  c1 9b 00 00 2a 81 65    JE              (SP)+,#00,G1a [TRUE] c3b7
 c254:  51 07 19 00             GET_PROP        L06,#19 -> -(SP)
 c258:  61 00 0f 47             JE              (SP)+,L0e [FALSE] c261
 c25c:  95 0e                   INC             L0d
 c25e:  8c 01 dc                JUMP            c43b
 c261:  e0 2b 2f 98 07 02 09    CALL_VS         be60 (L06,L01) -> L08
 c268:  a0 09 ce                JZ              L08 [TRUE] c277
 c26b:  51 07 19 00             GET_PROP        L06,#19 -> -(SP)
 c26f:  51 09 19 00             GET_PROP        L08,#19 -> -(SP)
 c273:  61 00 00 c5             JE              (SP)+,(SP)+ [TRUE] c27a
 c277:  8c 01 3f                JUMP            c3b7
 c27a:  51 07 19 00             GET_PROP        L06,#19 -> -(SP)
 c27e:  d9 2f 2c ff 00 09       CALL_2S         b3fc ((SP)+) -> L08
 c284:  c1 97 09 02 03 01 2e    JE              L08,#02,#03 [FALSE] c3b7
 c28b:  2d 0d 07                STORE           L0c,L06
 c28e:  0d 2c 01                STORE           G1c,#01
 c291:  2d 0a 08                STORE           L09,L07
 c294:  2d 0b 06                STORE           L0a,L05
 c297:  62 0b 0c 00 42          JL              L0a,L0b [FALSE] c2dc
 c29c:  51 07 19 00             GET_PROP        L06,#19 -> -(SP)
 c2a0:  51 0d 19 00             GET_PROP        L0c,#19 -> -(SP)
 c2a4:  61 00 00 00 35          JE              (SP)+,(SP)+ [FALSE] c2dc
 c2a9:  95 0b                   INC             L0a
 c2ab:  70 04 0a 00             LOADB           L03,L09 -> -(SP)
 c2af:  61 00 0b da             JE              (SP)+,L0a [TRUE] c2cb
 c2b3:  35 00 0b 00             SUB             #00,L0a -> -(SP)
 c2b7:  70 04 0a 00             LOADB           L03,L09 -> -(SP)
 c2bb:  61 00 00 ce             JE              (SP)+,(SP)+ [TRUE] c2cb
 c2bf:  95 0a                   INC             L09
 c2c1:  e0 2b 2f 98 0d 02 0d    CALL_VS         be60 (L0c,L01) -> L0c
 c2c8:  8c ff e2                JUMP            c2ab
 c2cb:  51 07 19 00             GET_PROP        L06,#19 -> -(SP)
 c2cf:  51 0d 19 00             GET_PROP        L0c,#19 -> -(SP)
 c2d3:  61 00 00 44             JE              (SP)+,(SP)+ [FALSE] c2d9
 c2d7:  95 2c                   INC             G1c
 c2d9:  8c ff bd                JUMP            c297
 c2dc:  41 2c 01 45             JE              G1c,#01 [FALSE] c2e3
 c2e0:  8c 00 d6                JUMP            c3b7
 c2e3:  49 29 02 00             AND             G19,#02 -> -(SP)
 c2e7:  a0 00 da                JZ              (SP)+ [TRUE] c302
 c2ea:  74 02 2d 00             ADD             L01,G1d -> -(SP)
 c2ee:  36 02 00 00             MUL             #02,(SP)+ -> -(SP)
 c2f2:  e9 7f ff                PULL            Gef
 c2f5:  42 ff 00 cb             JL              Gef,#00 [TRUE] c302
 c2f9:  e5 7f 20                PRINT_CHAR      ' '
 c2fc:  96 ff                   DEC             Gef
 c2fe:  a0 ff 3f f9             JZ              Gef [FALSE] c2f9
 c302:  41 09 03 00 41          JE              L08,#03 [FALSE] c346
 c307:  0d 0d 00                STORE           L0c,#00
 c30a:  0d 0a 00                STORE           L09,#00
 c30d:  62 0a 2c 53             JL              L09,G1c [FALSE] c322
 c311:  74 0a 06 00             ADD             L09,L05 -> -(SP)
 c315:  70 05 00 00             LOADB           L04,(SP)+ -> -(SP)
 c319:  74 0d 00 0d             ADD             L0c,(SP)+ -> L0c
 c31d:  95 0a                   INC             L09
 c31f:  8c ff ed                JUMP            c30d
 c322:  da 2f 2f 2b 0d          CALL_2N         bcac (L0c)
 c327:  b2 ...                  PRINT           " "
 c32a:  51 07 19 00             GET_PROP        L06,#19 -> -(SP)
 c32e:  ad 00                   PRINT_PADDR     (SP)+
 c330:  49 29 08 00             AND             G19,#08 -> -(SP)
 c334:  a0 00 c5                JZ              (SP)+ [TRUE] c33a
 c337:  b2 ...                  PRINT           " ("
 c33a:  49 29 02 00             AND             G19,#02 -> -(SP)
 c33e:  a0 00 c7                JZ              (SP)+ [TRUE] c346
 c341:  b2 ...                  PRINT           ":
"
 c346:  2d 0d 29                STORE           L0c,G19
 c349:  41 09 03 da             JE              L08,#03 [TRUE] c365
 c34d:  0d 2e 01                STORE           G1e,#01
 c350:  2d 41 07                STORE           G31,L06
 c353:  74 02 2d 42             ADD             L01,G1d -> G32
 c357:  e0 27 2d 28 07 19 00    CALL_VS         b4a0 (L06,#19) -> -(SP)
 c35e:  41 00 01 45             JE              (SP)+,#01 [FALSE] c365
 c362:  8c 00 3b                JUMP            c39e
 c365:  51 07 19 2a             GET_PROP        L06,#19 -> G1a
 c369:  2d 2b 07                STORE           G1b,L06
 c36c:  95 2d                   INC             G1d
 c36e:  f9 2a 30 22 07 02 03    CALL_VN         c088 (L06,L01,L02)
 c375:  96 2d                   DEC             G1d
 c377:  0d 2a 00                STORE           G1a,#00
 c37a:  0d 2b 00                STORE           G1b,#00
 c37d:  41 09 03 4f             JE              L08,#03 [FALSE] c38e
 c381:  49 0d 08 00             AND             L0c,#08 -> -(SP)
 c385:  a0 00 c5                JZ              (SP)+ [TRUE] c38b
 c388:  b2 ...                  PRINT           ")"
 c38b:  8c 00 12                JUMP            c39e
 c38e:  0d 2e 02                STORE           G1e,#02
 c391:  2d 41 07                STORE           G31,L06
 c394:  74 02 2d 42             ADD             L01,G1d -> G32
 c398:  f9 27 2d 28 07 19       CALL_VN         b4a0 (L06,#19)
 c39e:  49 0d 01 00             AND             L0c,#01 -> -(SP)
 c3a2:  a0 00 ca                JZ              (SP)+ [TRUE] c3ad
 c3a5:  49 29 01 00             AND             G19,#01 -> -(SP)
 c3a9:  a0 00 43                JZ              (SP)+ [FALSE] c3ad
 c3ac:  bb                      NEW_LINE        
 c3ad:  2d 29 0d                STORE           G19,L0c
 c3b0:  51 07 19 0f             GET_PROP        L06,#19 -> L0e
 c3b4:  8c 00 71                JUMP            c426
 c3b7:  e0 2b 31 85 07 02 00    CALL_VS         c614 (L06,L01) -> -(SP)
 c3be:  41 00 01 45             JE              (SP)+,#01 [FALSE] c3c5
 c3c2:  8c 00 78                JUMP            c43b
 c3c5:  70 05 06 00             LOADB           L04,L05 -> -(SP)
 c3c9:  41 00 01 00 2c          JE              (SP)+,#01 [FALSE] c3f8
 c3ce:  c9 8f 29 10 00 00       AND             G19,#1000 -> -(SP)
 c3d4:  a0 00 ca                JZ              (SP)+ [TRUE] c3df
 c3d7:  da 2f 2f 27 07          CALL_2N         bc9c (L06)
 c3dc:  8c 00 18                JUMP            c3f5
 c3df:  c9 8f 29 01 00 00       AND             G19,#0100 -> -(SP)
 c3e5:  a0 00 ca                JZ              (SP)+ [TRUE] c3f0
 c3e8:  da 2f 2f 17 07          CALL_2N         bc5c (L06)
 c3ed:  8c 00 07                JUMP            c3f5
 c3f0:  da 2f 2f 09 07          CALL_2N         bc24 (L06)
 c3f5:  8c 00 29                JUMP            c41f
 c3f8:  c9 8f 29 01 00 00       AND             G19,#0100 -> -(SP)
 c3fe:  a0 00 cd                JZ              (SP)+ [TRUE] c40c
 c401:  70 05 06 00             LOADB           L04,L05 -> -(SP)
 c405:  f9 26 2e ba 07 01 00    CALL_VN         bae8 (L06,#01,(SP)+)
 c40c:  70 05 06 00             LOADB           L04,L05 -> -(SP)
 c410:  da 2f 2f 2b 00          CALL_2N         bcac ((SP)+)
 c415:  b2 ...                  PRINT           " "
 c418:  f9 25 2d 08 07 17 01    CALL_VN         b420 (L06,#17,#01)
 c41f:  f9 2a 31 97 07 02 03    CALL_VN         c65c (L06,L01,L02)
 c426:  49 29 08 00             AND             G19,#08 -> -(SP)
 c42a:  a0 00 d0                JZ              (SP)+ [TRUE] c43b
 c42d:  41 0e 01 45             JE              L0d,#01 [FALSE] c434
 c431:  8d 80 f0                PRINT_PADDR     S041
 c434:  43 0e 01 45             JG              L0d,#01 [FALSE] c43b
 c438:  b2 ...                  PRINT           ", "
 c43b:  8c fd e4                JUMP            c220
 c43e:  b0                      RTRUE           
 c43f:  2d 0c 07                STORE           L0b,L06
 c442:  0d 06 01                STORE           L05,#01
 c445:  2d 07 01                STORE           L06,L00
 c448:  8c 00 0d                JUMP            c456
 c44b:  e0 2b 2f 98 07 02 07    CALL_VS         be60 (L06,L01) -> L06
 c452:  95 06                   INC             L05
 c454:  95 0e                   INC             L0d
 c456:  63 06 0c 80 2d          JG              L05,L0b [TRUE] c486
 c45b:  51 07 19 00             GET_PROP        L06,#19 -> -(SP)
 c45f:  c1 9b 00 00 2a dc       JE              (SP)+,#00,G1a [TRUE] c47f
 c465:  51 07 19 00             GET_PROP        L06,#19 -> -(SP)
 c469:  d9 2f 2c ff 00 00       CALL_2S         b3fc ((SP)+) -> -(SP)
 c46f:  c1 97 00 02 03 4c       JE              (SP)+,#02,#03 [FALSE] c47f
 c475:  51 07 19 00             GET_PROP        L06,#19 -> -(SP)
 c479:  61 00 0f 44             JE              (SP)+,L0e [FALSE] c47f
 c47d:  96 0e                   DEC             L0d
 c47f:  51 07 19 0f             GET_PROP        L06,#19 -> L0e
 c483:  8c ff c7                JUMP            c44b
 c486:  0d 06 01                STORE           L05,#01
 c489:  2d 07 01                STORE           L06,L00
 c48c:  0d 0f 00                STORE           L0e,#00
 c48f:  8c 00 0b                JUMP            c49b
 c492:  e0 2b 2f 98 07 02 07    CALL_VS         be60 (L06,L01) -> L06
 c499:  95 06                   INC             L05
 c49b:  63 06 0e 81 75          JG              L05,L0d [TRUE] c613
 c4a0:  51 07 19 00             GET_PROP        L06,#19 -> -(SP)
 c4a4:  c1 9b 00 00 2a 81 0e    JE              (SP)+,#00,G1a [TRUE] c5b7
 c4ab:  51 07 19 00             GET_PROP        L06,#19 -> -(SP)
 c4af:  61 00 0f 47             JE              (SP)+,L0e [FALSE] c4b8
 c4b3:  96 06                   DEC             L05
 c4b5:  8c 01 5a                JUMP            c610
 c4b8:  e0 2b 2f 98 07 02 08    CALL_VS         be60 (L06,L01) -> L07
 c4bf:  a0 08 ce                JZ              L07 [TRUE] c4ce
 c4c2:  51 07 19 00             GET_PROP        L06,#19 -> -(SP)
 c4c6:  51 08 19 00             GET_PROP        L07,#19 -> -(SP)
 c4ca:  61 00 00 c5             JE              (SP)+,(SP)+ [TRUE] c4d1
 c4ce:  8c 00 e8                JUMP            c5b7
 c4d1:  51 07 19 00             GET_PROP        L06,#19 -> -(SP)
 c4d5:  d9 2f 2c ff 00 08       CALL_2S         b3fc ((SP)+) -> L07
 c4db:  c1 97 08 02 03 00 d7    JE              L07,#02,#03 [FALSE] c5b7
 c4e2:  49 29 02 00             AND             G19,#02 -> -(SP)
 c4e6:  a0 00 da                JZ              (SP)+ [TRUE] c501
 c4e9:  74 02 2d 00             ADD             L01,G1d -> -(SP)
 c4ed:  36 02 00 00             MUL             #02,(SP)+ -> -(SP)
 c4f1:  e9 7f ff                PULL            Gef
 c4f4:  42 ff 00 cb             JL              Gef,#00 [TRUE] c501
 c4f8:  e5 7f 20                PRINT_CHAR      ' '
 c4fb:  96 ff                   DEC             Gef
 c4fd:  a0 ff 3f f9             JZ              Gef [FALSE] c4f8
 c501:  41 08 03 00 42          JE              L07,#03 [FALSE] c546
 c506:  2d 0d 07                STORE           L0c,L06
 c509:  0d 0a 00                STORE           L09,#00
 c50c:  e0 2b 2f 98 0d 02 0d    CALL_VS         be60 (L0c,L01) -> L0c
 c513:  95 0a                   INC             L09
 c515:  51 07 19 00             GET_PROP        L06,#19 -> -(SP)
 c519:  51 0d 19 00             GET_PROP        L0c,#19 -> -(SP)
 c51d:  61 00 00 bf ec          JE              (SP)+,(SP)+ [TRUE] c50c
 c522:  da 2f 2f 2b 0a          CALL_2N         bcac (L09)
 c527:  b2 ...                  PRINT           " "
 c52a:  51 07 19 00             GET_PROP        L06,#19 -> -(SP)
 c52e:  ad 00                   PRINT_PADDR     (SP)+
 c530:  49 29 08 00             AND             G19,#08 -> -(SP)
 c534:  a0 00 c5                JZ              (SP)+ [TRUE] c53a
 c537:  b2 ...                  PRINT           " ("
 c53a:  49 29 02 00             AND             G19,#02 -> -(SP)
 c53e:  a0 00 c7                JZ              (SP)+ [TRUE] c546
 c541:  b2 ...                  PRINT           ":
"
 c546:  2d 0d 29                STORE           L0c,G19
 c549:  41 08 03 da             JE              L07,#03 [TRUE] c565
 c54d:  0d 2e 01                STORE           G1e,#01
 c550:  2d 41 07                STORE           G31,L06
 c553:  74 02 2d 42             ADD             L01,G1d -> G32
 c557:  e0 27 2d 28 07 19 00    CALL_VS         b4a0 (L06,#19) -> -(SP)
 c55e:  41 00 01 45             JE              (SP)+,#01 [FALSE] c565
 c562:  8c 00 3b                JUMP            c59e
 c565:  51 07 19 2a             GET_PROP        L06,#19 -> G1a
 c569:  2d 2b 07                STORE           G1b,L06
 c56c:  95 2d                   INC             G1d
 c56e:  f9 2a 30 22 07 02 03    CALL_VN         c088 (L06,L01,L02)
 c575:  96 2d                   DEC             G1d
 c577:  0d 2a 00                STORE           G1a,#00
 c57a:  0d 2b 00                STORE           G1b,#00
 c57d:  41 08 03 4f             JE              L07,#03 [FALSE] c58e
 c581:  49 0d 08 00             AND             L0c,#08 -> -(SP)
 c585:  a0 00 c5                JZ              (SP)+ [TRUE] c58b
 c588:  b2 ...                  PRINT           ")"
 c58b:  8c 00 12                JUMP            c59e
 c58e:  0d 2e 02                STORE           G1e,#02
 c591:  2d 41 07                STORE           G31,L06
 c594:  74 02 2d 42             ADD             L01,G1d -> G32
 c598:  f9 27 2d 28 07 19       CALL_VN         b4a0 (L06,#19)
 c59e:  49 0d 01 00             AND             L0c,#01 -> -(SP)
 c5a2:  a0 00 ca                JZ              (SP)+ [TRUE] c5ad
 c5a5:  49 29 01 00             AND             G19,#01 -> -(SP)
 c5a9:  a0 00 43                JZ              (SP)+ [FALSE] c5ad
 c5ac:  bb                      NEW_LINE        
 c5ad:  2d 29 0d                STORE           G19,L0c
 c5b0:  51 07 19 0f             GET_PROP        L06,#19 -> L0e
 c5b4:  8c 00 3e                JUMP            c5f3
 c5b7:  e0 2b 31 85 07 02 00    CALL_VS         c614 (L06,L01) -> -(SP)
 c5be:  41 00 01 45             JE              (SP)+,#01 [FALSE] c5c5
 c5c2:  8c 00 4d                JUMP            c610
 c5c5:  c9 8f 29 10 00 00       AND             G19,#1000 -> -(SP)
 c5cb:  a0 00 ca                JZ              (SP)+ [TRUE] c5d6
 c5ce:  da 2f 2f 27 07          CALL_2N         bc9c (L06)
 c5d3:  8c 00 18                JUMP            c5ec
 c5d6:  c9 8f 29 01 00 00       AND             G19,#0100 -> -(SP)
 c5dc:  a0 00 ca                JZ              (SP)+ [TRUE] c5e7
 c5df:  da 2f 2f 17 07          CALL_2N         bc5c (L06)
 c5e4:  8c 00 07                JUMP            c5ec
 c5e7:  da 2f 2f 09 07          CALL_2N         bc24 (L06)
 c5ec:  f9 2a 31 97 07 02 03    CALL_VN         c65c (L06,L01,L02)
 c5f3:  49 29 08 00             AND             G19,#08 -> -(SP)
 c5f7:  a0 00 d8                JZ              (SP)+ [TRUE] c610
 c5fa:  55 0e 01 00             SUB             L0d,#01 -> -(SP)
 c5fe:  61 06 00 45             JE              L05,(SP)+ [FALSE] c605
 c602:  8d 80 f0                PRINT_PADDR     S041
 c605:  55 0e 01 00             SUB             L0d,#01 -> -(SP)
 c609:  62 06 00 45             JL              L05,(SP)+ [FALSE] c610
 c60d:  b2 ...                  PRINT           ", "
 c610:  8c fe 81                JUMP            c492
 c613:  b0                      RTRUE           

Routine c614, 3 locals

 c615:  49 29 02 00             AND             G19,#02 -> -(SP)
 c619:  a0 00 da                JZ              (SP)+ [TRUE] c634
 c61c:  74 02 2d 00             ADD             L01,G1d -> -(SP)
 c620:  36 02 00 00             MUL             #02,(SP)+ -> -(SP)
 c624:  e9 7f ff                PULL            Gef
 c627:  42 ff 00 cb             JL              Gef,#00 [TRUE] c634
 c62b:  e5 7f 20                PRINT_CHAR      ' '
 c62e:  96 ff                   DEC             Gef
 c630:  a0 ff 3f f9             JZ              Gef [FALSE] c62b
 c634:  49 29 04 00             AND             G19,#04 -> -(SP)
 c638:  a0 00 80 20             JZ              (SP)+ [TRUE] c65a
 c63c:  51 01 16 00             GET_PROP        L00,#16 -> -(SP)
 c640:  a0 00 d9                JZ              (SP)+ [TRUE] c65a
 c643:  0d 2e 01                STORE           G1e,#01
 c646:  e0 25 2d 08 01 16 01 03 CALL_VS         b420 (L00,#16,#01) -> L02
 c64e:  41 03 01 4a             JE              L02,#01 [FALSE] c65a
 c652:  49 29 01 00             AND             G19,#01 -> -(SP)
 c656:  a0 00 c3                JZ              (SP)+ [TRUE] c65a
 c659:  bb                      NEW_LINE        
 c65a:  ab 03                   RET             L02

Routine c65c, 8 locals

 c65d:  49 29 80 00             AND             G19,#80 -> -(SP)
 c661:  a0 00 80 88             JZ              (SP)+ [TRUE] c6eb
 c665:  0d 08 00                STORE           L07,#00
 c668:  4a 01 09 4a             TEST_ATTR       L00,#09 [FALSE] c674
 c66c:  4a 10 09 c6             TEST_ATTR       G00,#09 [TRUE] c674
 c670:  54 08 01 08             ADD             L07,#01 -> L07
 c674:  4a 01 04 4a             TEST_ATTR       L00,#04 [FALSE] c680
 c678:  4a 01 0e c6             TEST_ATTR       L00,#0e [TRUE] c680
 c67c:  54 08 02 08             ADD             L07,#02 -> L07
 c680:  4a 01 04 55             TEST_ATTR       L00,#04 [FALSE] c697
 c684:  4a 01 0e c6             TEST_ATTR       L00,#0e [TRUE] c68c
 c688:  4a 01 17 4d             TEST_ATTR       L00,#17 [FALSE] c697
 c68c:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] c690
 c690:  a0 00 46                JZ              (SP)+ [FALSE] c697
 c693:  54 08 04 08             ADD             L07,#04 -> L07
 c697:  41 08 01 4a             JE              L07,#01 [FALSE] c6a3
 c69b:  f9 06 37 98 10 06 01 01 CALL_VN         de60 (#1006,#01,L00)
 c6a3:  41 08 02 4a             JE              L07,#02 [FALSE] c6af
 c6a7:  f9 06 37 98 10 06 02 01 CALL_VN         de60 (#1006,#02,L00)
 c6af:  41 08 03 4a             JE              L07,#03 [FALSE] c6bb
 c6b3:  f9 06 37 98 10 06 03 01 CALL_VN         de60 (#1006,#03,L00)
 c6bb:  41 08 04 4a             JE              L07,#04 [FALSE] c6c7
 c6bf:  f9 06 37 98 10 06 04 01 CALL_VN         de60 (#1006,#04,L00)
 c6c7:  41 08 05 4a             JE              L07,#05 [FALSE] c6d3
 c6cb:  f9 06 37 98 10 06 05 01 CALL_VN         de60 (#1006,#05,L00)
 c6d3:  41 08 06 4a             JE              L07,#06 [FALSE] c6df
 c6d7:  f9 06 37 98 10 06 06 01 CALL_VN         de60 (#1006,#06,L00)
 c6df:  41 08 07 4a             JE              L07,#07 [FALSE] c6eb
 c6e3:  f9 06 37 98 10 06 07 01 CALL_VN         de60 (#1006,#07,L00)
 c6eb:  49 29 04 00             AND             G19,#04 -> -(SP)
 c6ef:  a0 00 80 d6             JZ              (SP)+ [TRUE] c7c7
 c6f3:  51 01 16 00             GET_PROP        L00,#16 -> -(SP)
 c6f7:  a0 00 d8                JZ              (SP)+ [TRUE] c710
 c6fa:  0d 2e 02                STORE           G1e,#02
 c6fd:  e0 27 2d 28 01 16 00    CALL_VS         b4a0 (L00,#16) -> -(SP)
 c704:  a0 00 cb                JZ              (SP)+ [TRUE] c710
 c707:  49 29 01 00             AND             G19,#01 -> -(SP)
 c70b:  a0 00 c3                JZ              (SP)+ [TRUE] c70f
 c70e:  bb                      NEW_LINE        
 c70f:  b0                      RTRUE           
 c710:  4a 01 09 53             TEST_ATTR       L00,#09 [FALSE] c725
 c714:  4a 01 1a 4f             TEST_ATTR       L00,#1a [FALSE] c725
 c718:  f9 07 37 98 10 06 08    CALL_VN         de60 (#1006,#08)
 c71f:  0d 05 01                STORE           L04,#01
 c722:  8c 00 20                JUMP            c743
 c725:  4a 01 09 4d             TEST_ATTR       L00,#09 [FALSE] c734
 c729:  f9 06 37 98 10 06 09 01 CALL_VN         de60 (#1006,#09,L00)
 c731:  0d 05 01                STORE           L04,#01
 c734:  4a 01 1a 4d             TEST_ATTR       L00,#1a [FALSE] c743
 c738:  f9 06 37 98 10 06 0a 01 CALL_VN         de60 (#1006,#0a,L00)
 c740:  0d 05 01                STORE           L04,#01
 c743:  4a 01 04 00 7a          TEST_ATTR       L00,#04 [FALSE] c7c0
 c748:  4a 01 0f 00 57          TEST_ATTR       L00,#0f [FALSE] c7a2
 c74d:  41 05 01 48             JE              L04,#01 [FALSE] c757
 c751:  8d 80 f0                PRINT_PADDR     S041
 c754:  8c 00 0a                JUMP            c75f
 c757:  f9 06 37 98 10 06 0b 01 CALL_VN         de60 (#1006,#0b,L00)
 c75f:  4a 01 0e 00 1f          TEST_ATTR       L00,#0e [FALSE] c781
 c764:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] c768
 c768:  a0 00 4d                JZ              (SP)+ [FALSE] c776
 c76b:  f9 06 37 98 10 06 0d 01 CALL_VN         de60 (#1006,#0d,L00)
 c773:  8c 00 0a                JUMP            c77e
 c776:  f9 06 37 98 10 06 0c 01 CALL_VN         de60 (#1006,#0c,L00)
 c77e:  8c 00 1d                JUMP            c79c
 c781:  4a 01 0a 51             TEST_ATTR       L00,#0a [FALSE] c794
 c785:  4a 01 0b 4d             TEST_ATTR       L00,#0b [FALSE] c794
 c789:  f9 06 37 98 10 06 0f 01 CALL_VN         de60 (#1006,#0f,L00)
 c791:  8c 00 0a                JUMP            c79c
 c794:  f9 06 37 98 10 06 0e 01 CALL_VN         de60 (#1006,#0e,L00)
 c79c:  0d 05 01                STORE           L04,#01
 c79f:  8c 00 20                JUMP            c7c0
 c7a2:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] c7a6
 c7a6:  a0 00 59                JZ              (SP)+ [FALSE] c7c0
 c7a9:  41 05 01 4d             JE              L04,#01 [FALSE] c7b8
 c7ad:  f9 06 37 98 10 06 10 01 CALL_VN         de60 (#1006,#10,L00)
 c7b5:  8c 00 0a                JUMP            c7c0
 c7b8:  f9 06 37 98 10 06 11 01 CALL_VN         de60 (#1006,#11,L00)
 c7c0:  41 05 01 45             JE              L04,#01 [FALSE] c7c7
 c7c4:  b2 ...                  PRINT           ")"
 c7c7:  c9 8f 29 08 00 00       AND             G19,#0800 -> -(SP)
 c7cd:  a0 00 5d                JZ              (SP)+ [FALSE] c7eb
 c7d0:  0d ff 00                STORE           Gef,#00
 c7d3:  a2 01 00 49             GET_CHILD       L00 -> -(SP) [FALSE] c7de
 c7d7:  95 ff                   INC             Gef
 c7d9:  a1 00 00 bf fb          GET_SIBLING     (SP)+ -> -(SP) [TRUE] c7d7
 c7de:  e9 7f fe                PULL            Gee
 c7e1:  2d 06 ff                STORE           L05,Gef
 c7e4:  a2 01 05 42             GET_CHILD       L00 -> L04 [FALSE] c7e8
 c7e8:  8c 00 1d                JUMP            c806
 c7eb:  0d 06 00                STORE           L05,#00
 c7ee:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] c7f2
 c7f2:  e9 7f 07                PULL            L06
 c7f5:  a0 07 d0                JZ              L06 [TRUE] c806
 c7f8:  4a 07 03 c7             TEST_ATTR       L06,#03 [TRUE] c801
 c7fc:  95 06                   INC             L05
 c7fe:  2d 05 07                STORE           L04,L06
 c801:  a1 07 07 bf f4          GET_SIBLING     L06 -> L06 [TRUE] c7f8
 c806:  49 29 20 00             AND             G19,#20 -> -(SP)
 c80a:  a0 00 d8                JZ              (SP)+ [TRUE] c823
 c80d:  43 06 00 54             JG              L05,#00 [FALSE] c823
 c811:  49 29 08 00             AND             G19,#08 -> -(SP)
 c815:  a0 00 ca                JZ              (SP)+ [TRUE] c820
 c818:  f9 06 37 98 10 06 12 01 CALL_VN         de60 (#1006,#12,L00)
 c820:  0d 04 01                STORE           L03,#01
 c823:  49 29 10 00             AND             G19,#10 -> -(SP)
 c827:  a0 00 80 7e             JZ              (SP)+ [TRUE] c8a7
 c82b:  43 06 00 00 79          JG              L05,#00 [FALSE] c8a7
 c830:  4a 01 14 00 34          TEST_ATTR       L00,#14 [FALSE] c867
 c835:  49 29 08 00             AND             G19,#08 -> -(SP)
 c839:  a0 00 80 29             JZ              (SP)+ [TRUE] c864
 c83d:  49 29 40 00             AND             G19,#40 -> -(SP)
 c841:  a0 00 cd                JZ              (SP)+ [TRUE] c84f
 c844:  f9 06 37 98 10 06 13 01 CALL_VN         de60 (#1006,#13,L00)
 c84c:  8c 00 0a                JUMP            c857
 c84f:  f9 06 37 98 10 06 14 01 CALL_VN         de60 (#1006,#14,L00)
 c857:  4a 01 00 48             TEST_ATTR       L00,#00 [FALSE] c861
 c85b:  8d 80 f1                PRINT_PADDR     S042
 c85e:  8c 00 05                JUMP            c864
 c861:  8d 80 f2                PRINT_PADDR     S043
 c864:  0d 04 01                STORE           L03,#01
 c867:  4a 01 04 00 3d          TEST_ATTR       L00,#04 [FALSE] c8a7
 c86c:  4a 01 0e c7             TEST_ATTR       L00,#0e [TRUE] c875
 c870:  4a 01 17 00 34          TEST_ATTR       L00,#17 [FALSE] c8a7
 c875:  49 29 08 00             AND             G19,#08 -> -(SP)
 c879:  a0 00 80 29             JZ              (SP)+ [TRUE] c8a4
 c87d:  49 29 40 00             AND             G19,#40 -> -(SP)
 c881:  a0 00 cd                JZ              (SP)+ [TRUE] c88f
 c884:  f9 06 37 98 10 06 15 01 CALL_VN         de60 (#1006,#15,L00)
 c88c:  8c 00 0a                JUMP            c897
 c88f:  f9 06 37 98 10 06 16 01 CALL_VN         de60 (#1006,#16,L00)
 c897:  4a 01 00 48             TEST_ATTR       L00,#00 [FALSE] c8a1
 c89b:  8d 80 f1                PRINT_PADDR     S042
 c89e:  8c 00 05                JUMP            c8a4
 c8a1:  8d 80 f2                PRINT_PADDR     S043
 c8a4:  0d 04 01                STORE           L03,#01
 c8a7:  41 04 01 5a             JE              L03,#01 [FALSE] c8c3
 c8ab:  49 29 08 00             AND             G19,#08 -> -(SP)
 c8af:  a0 00 d3                JZ              (SP)+ [TRUE] c8c3
 c8b2:  43 06 01 c6             JG              L05,#01 [TRUE] c8ba
 c8b6:  4a 05 1e 48             TEST_ATTR       L04,#1e [FALSE] c8c0
 c8ba:  8d 80 ee                PRINT_PADDR     S039
 c8bd:  8c 00 05                JUMP            c8c3
 c8c0:  8d 80 ed                PRINT_PADDR     S038
 c8c3:  49 29 01 00             AND             G19,#01 -> -(SP)
 c8c7:  a0 00 c3                JZ              (SP)+ [TRUE] c8cb
 c8ca:  bb                      NEW_LINE        
 c8cb:  41 04 01 51             JE              L03,#01 [FALSE] c8de
 c8cf:  54 02 01 00             ADD             L01,#01 -> -(SP)
 c8d3:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] c8d7
 c8d7:  f9 2a 30 22 00 00 03    CALL_VN         c088 ((SP)+,(SP)+,L02)
 c8de:  41 04 01 4c             JE              L03,#01 [FALSE] c8ec
 c8e2:  49 29 40 00             AND             G19,#40 -> -(SP)
 c8e6:  a0 00 c5                JZ              (SP)+ [TRUE] c8ec
 c8e9:  b2 ...                  PRINT           ")"
 c8ec:  b0                      RTRUE           

Routine c8f0, 5 locals

 c8f1:  0d 01 01                STORE           L00,#01
 c8f4:  52 01 27 05             GET_PROP_ADDR   L00,#27 -> L04
 c8f8:  a0 05 80 51             JZ              L04 [TRUE] c94b
 c8fc:  4a 01 01 80 4c          TEST_ATTR       L00,#01 [TRUE] c94b
 c901:  4f 05 00 00             LOADW           L04,#00 -> -(SP)
 c905:  d9 2f 2c ff 00 00       CALL_2S         b3fc ((SP)+) -> -(SP)
 c90b:  41 00 02 52             JE              (SP)+,#02 [FALSE] c91f
 c90f:  4f 05 00 00             LOADW           L04,#00 -> -(SP)
 c913:  a8 00 00                CALL_1S         (SP)+ -> -(SP)
 c916:  a0 00 c5                JZ              (SP)+ [TRUE] c91c
 c919:  6e 01 10                INSERT_OBJ      L00,G00
 c91c:  8c 00 2e                JUMP            c94b
 c91f:  52 01 27 ff             GET_PROP_ADDR   L00,#27 -> Gef
 c923:  a0 ff c5                JZ              Gef [TRUE] c929
 c926:  a4 ff ff                GET_PROP_LEN    Gef -> Gef
 c929:  2d 02 ff                STORE           L01,Gef
 c92c:  0d 03 00                STORE           L02,#00
 c92f:  57 02 02 00             DIV             L01,#02 -> -(SP)
 c933:  62 03 00 56             JL              L02,(SP)+ [FALSE] c94b
 c937:  6f 05 03 04             LOADW           L04,L02 -> L03
 c93b:  61 04 10 c6             JE              L03,G00 [TRUE] c943
 c93f:  66 04 10 45             JIN             L03,G00 [FALSE] c946
 c943:  6e 01 10                INSERT_OBJ      L00,G00
 c946:  95 03                   INC             L02
 c948:  8c ff e6                JUMP            c92f
 c94b:  95 01                   INC             L00
 c94d:  c3 8f 01 00 e6 c5       JG              L00,#00e6 [TRUE] c956
 c953:  8c ff a0                JUMP            c8f4
 c956:  b0                      RTRUE           

Routine c958, 2 locals

 c959:  6e 22 01                INSERT_OBJ      G12,L00
 c95c:  a3 01 00                GET_PARENT      L00 -> -(SP)
 c95f:  a0 00 c8                JZ              (SP)+ [TRUE] c968
 c962:  a3 01 01                GET_PARENT      L00 -> L00
 c965:  8c ff f6                JUMP            c95c
 c968:  2d 10 01                STORE           G00,L00
 c96b:  2d 25 10                STORE           G15,G00
 c96e:  da 1f 2d 8b 01          CALL_2N         b62c (#01)
 c973:  a0 02 47                JZ              L01 [FALSE] c97b
 c976:  da 1f 2c b1 20          CALL_2N         b2c4 (#20)
 c97b:  41 02 01 48             JE              L01,#01 [FALSE] c985
 c97f:  8f 35 b0                CALL_1N         d6c0
 c982:  8f 35 b8                CALL_1N         d6e0
 c985:  41 02 02 47             JE              L01,#02 [FALSE] c98e
 c989:  da 1f 35 be 01          CALL_2N         d6f8 (#01)
 c98e:  b0                      RTRUE           

Routine c990, 1 local

 c991:  f9 1b 2c b1 1c 01       CALL_VN         b2c4 (#1c,L00)
 c997:  da 1f 2c b1 20          CALL_2N         b2c4 (#20)
 c99c:  b0                      RTRUE           

Routine c9a0, 1 local

 c9a1:  cd 4f fc 35 f6          STORE           Gec,#35f6
 c9a6:  e2 97 fc 01 00          STOREB          Gec,#01,#00
 c9ab:  8f 2d f1                CALL_1N         b7c4
 c9ae:  e4 8f fc 36 6f ff       READ            Gec,#366f -> Gef
 c9b4:  cf 1f 36 6f 01 01       LOADW           #366f,#01 -> L00
 c9ba:  c1 80 01 63 b0 63 b9 63 b9 c1 
                               JE              L00,"y","yes","yes" [TRUE] RTRUE
 c9c4:  c1 80 01 55 58 55 b2 55 b2 c0 
                               JE              L00,"n","no","no" [TRUE] RFALSE
 c9ce:  f9 17 37 98 01 01       CALL_VN         de60 (#01,#01)
 c9d4:  b2 ...                  PRINT           "> "
 c9d9:  8c ff c7                JUMP            c9a1

orphan code fragment:

 c9dc:  b0                      RTRUE           

Routine c9e0, 0 locals
    Action routine for:
        "die"

 c9e1:  f9 17 37 98 01 02       CALL_VN         de60 (#01,#02)
 c9e7:  88 32 68 00             CALL_1S         c9a0 -> -(SP)
 c9eb:  a0 00 c3                JZ              (SP)+ [TRUE] c9ef
 c9ee:  ba                      QUIT            
 c9ef:  b0                      RTRUE           

Routine c9f0, 0 locals
    Action routine for:
        "restart"

 c9f1:  f9 17 37 98 02 01       CALL_VN         de60 (#02,#01)
 c9f7:  88 32 68 00             CALL_1S         c9a0 -> -(SP)
 c9fb:  a0 00 c9                JZ              (SP)+ [TRUE] ca05
 c9fe:  b7                      RESTART         
 c9ff:  f9 17 37 98 02 02       CALL_VN         de60 (#02,#02)
 ca05:  b0                      RTRUE           

Routine ca08, 0 locals
    Action routine for:
        "restore"

 ca09:  be 01 ff ff             RESTORE         -> Gef
 ca0d:  41 ff 02 ca             JE              Gef,#02 [TRUE] ca19
 ca11:  e0 17 37 98 03 01 00    CALL_VS         de60 (#03,#01) -> -(SP)
 ca18:  b8                      RET_POPPED      
 ca19:  f9 17 37 98 03 02       CALL_VN         de60 (#03,#02)
 ca1f:  b0                      RTRUE           

Routine ca20, 0 locals
    Action routine for:
        "save"

 ca21:  be 00 ff ff             SAVE            -> Gef
 ca25:  a0 ff 4a                JZ              Gef [FALSE] ca30
 ca28:  e0 17 37 98 04 01 00    CALL_VS         de60 (#04,#01) -> -(SP)
 ca2f:  b8                      RET_POPPED      
 ca30:  f9 17 37 98 04 02       CALL_VN         de60 (#04,#02)
 ca36:  b0                      RTRUE           

Routine ca38, 0 locals
    Action routine for:
        "verify"

 ca39:  bd c5                   VERIFY          [TRUE] ca3e
 ca3b:  8c 00 0a                JUMP            ca46
 ca3e:  e0 17 37 98 05 01 00    CALL_VS         de60 (#05,#01) -> -(SP)
 ca45:  b8                      RET_POPPED      
 ca46:  f9 17 37 98 05 02       CALL_VN         de60 (#05,#02)
 ca4c:  b0                      RTRUE           

Routine ca50, 0 locals
    Action routine for:
        "script"
        "script on"

 ca51:  41 17 01 4a             JE              G07,#01 [FALSE] ca5d
 ca55:  e0 17 37 98 06 01 00    CALL_VS         de60 (#06,#01) -> -(SP)
 ca5c:  b8                      RET_POPPED      
 ca5d:  0d 17 01                STORE           G07,#01
 ca60:  0f 00 08 00             LOADW           #00,#08 -> -(SP)
 ca64:  48 00 01 00             OR              (SP)+,#01 -> -(SP)
 ca68:  e1 5b 00 08 00          STOREW          #00,#08,(SP)+
 ca6d:  f9 17 37 98 06 02       CALL_VN         de60 (#06,#02)
 ca73:  8f 2f 78                CALL_1N         bde0
 ca76:  b0                      RTRUE           

Routine ca78, 0 locals
    Action routine for:
        "script off"
        "noscript"

 ca79:  a0 17 4a                JZ              G07 [FALSE] ca84
 ca7c:  e0 17 37 98 07 01 00    CALL_VS         de60 (#07,#01) -> -(SP)
 ca83:  b8                      RET_POPPED      
 ca84:  f9 17 37 98 07 02       CALL_VN         de60 (#07,#02)
 ca8a:  0d 17 00                STORE           G07,#00
 ca8d:  0f 00 08 00             LOADW           #00,#08 -> -(SP)
 ca91:  c9 8f 00 ff fe 00       AND             (SP)+,#fffe -> -(SP)
 ca97:  e1 5b 00 08 00          STOREW          #00,#08,(SP)+
 ca9c:  b0                      RTRUE           

Routine caa0, 0 locals
    Action routine for:
        "notify on"

 caa1:  0d 1f 01                STORE           G0f,#01
 caa4:  da 1f 37 98 08          CALL_2N         de60 (#08)
 caa9:  b0                      RTRUE           

Routine caac, 0 locals
    Action routine for:
        "notify off"

 caad:  0d 1f 00                STORE           G0f,#00
 cab0:  da 1f 37 98 09          CALL_2N         de60 (#09)
 cab5:  b0                      RTRUE           

Routine cab8, 3 locals

 cab9:  da 1f 37 98 0a          CALL_2N         de60 (#0a)
 cabe:  0d 01 01                STORE           L00,#01
 cac1:  4a 01 18 44             TEST_ATTR       L00,#18 [FALSE] cac7
 cac5:  95 02                   INC             L01
 cac7:  95 01                   INC             L00
 cac9:  c3 8f 01 00 e6 c5       JG              L00,#00e6 [TRUE] cad2
 cacf:  8c ff f1                JUMP            cac1
 cad2:  0d 01 01                STORE           L00,#01
 cad5:  4a 01 18 00 21          TEST_ATTR       L00,#18 [FALSE] caf9
 cada:  da 2f 2f 27 01          CALL_2N         bc9c (L00)
 cadf:  95 03                   INC             L02
 cae1:  61 03 02 45             JE              L02,L01 [FALSE] cae8
 cae5:  b3 ...                  PRINT_RET       "."
 cae8:  55 02 01 00             SUB             L01,#01 -> -(SP)
 caec:  61 03 00 48             JE              L02,(SP)+ [FALSE] caf6
 caf0:  8d 80 f0                PRINT_PADDR     S041
 caf3:  8c 00 05                JUMP            caf9
 caf6:  b2 ...                  PRINT           ", "
 caf9:  95 01                   INC             L00
 cafb:  c3 8f 01 00 e6 c5       JG              L00,#00e6 [TRUE] cb04
 cb01:  8c ff d3                JUMP            cad5
 cb04:  b0                      RTRUE           

Routine cb08, 3 locals

 cb09:  f9 17 37 98 0b 01       CALL_VN         de60 (#0b,#01)
 cb0f:  0d 01 01                STORE           L00,#01
 cb12:  4a 01 0c 00 73          TEST_ATTR       L00,#0c [FALSE] cb88
 cb17:  0d 03 01                STORE           L02,#01
 cb1a:  da 2f 2f 17 01          CALL_2N         bc5c (L00)
 cb1f:  a3 01 02                GET_PARENT      L00 -> L01
 cb22:  61 02 22 58             JE              L01,G12 [FALSE] cb3c
 cb26:  4a 01 1a 4b             TEST_ATTR       L00,#1a [FALSE] cb33
 cb2a:  f9 17 37 98 0b 03       CALL_VN         de60 (#0b,#03)
 cb30:  8c 00 08                JUMP            cb39
 cb33:  f9 17 37 98 0b 04       CALL_VN         de60 (#0b,#04)
 cb39:  8c 00 4d                JUMP            cb87
 cb3c:  4a 02 00 4b             TEST_ATTR       L01,#00 [FALSE] cb49
 cb40:  f9 17 37 98 0b 05       CALL_VN         de60 (#0b,#05)
 cb46:  8c 00 40                JUMP            cb87
 cb49:  4a 02 18 4c             TEST_ATTR       L01,#18 [FALSE] cb57
 cb4d:  f9 16 37 98 0b 06 02    CALL_VN         de60 (#0b,#06,L01)
 cb54:  8c 00 32                JUMP            cb87
 cb57:  4a 02 07 4c             TEST_ATTR       L01,#07 [FALSE] cb65
 cb5b:  f9 16 37 98 0b 07 02    CALL_VN         de60 (#0b,#07,L01)
 cb62:  8c 00 24                JUMP            cb87
 cb65:  4a 02 04 4c             TEST_ATTR       L01,#04 [FALSE] cb73
 cb69:  f9 16 37 98 0b 08 02    CALL_VN         de60 (#0b,#08,L01)
 cb70:  8c 00 16                JUMP            cb87
 cb73:  4a 02 14 4c             TEST_ATTR       L01,#14 [FALSE] cb81
 cb77:  f9 16 37 98 0b 09 02    CALL_VN         de60 (#0b,#09,L01)
 cb7e:  8c 00 08                JUMP            cb87
 cb81:  f9 17 37 98 0b 0a       CALL_VN         de60 (#0b,#0a)
 cb87:  bb                      NEW_LINE        
 cb88:  95 01                   INC             L00
 cb8a:  c3 8f 01 00 e6 c5       JG              L00,#00e6 [TRUE] cb93
 cb90:  8c ff 81                JUMP            cb12
 cb93:  a0 03 48                JZ              L02 [FALSE] cb9c
 cb96:  f9 17 37 98 0b 02       CALL_VN         de60 (#0b,#02)
 cb9c:  b0                      RTRUE           

Routine cba0, 0 locals
    Action routine for:
        "score"

 cba1:  da 1f 37 98 0c          CALL_2N         de60 (#0c)
 cba6:  8f 7c f8                CALL_1N         1f3e0
 cba9:  b0                      RTRUE           

Routine cbac, 1 local

 cbad:  d0 2f 3a 31 01 00       LOADB           #3a31,L00 -> -(SP)
 cbb3:  a0 00 52                JZ              (SP)+ [FALSE] cbc6
 cbb6:  e2 27 3a 31 01 01       STOREB          #3a31,L00,#01
 cbbc:  d0 2f 3a 2d 01 00       LOADB           #3a2d,L00 -> -(SP)
 cbc2:  74 1d 00 1d             ADD             G0d,(SP)+ -> G0d
 cbc6:  b0                      RTRUE           

Routine cbc8, 2 locals

 cbc9:  b2 ...                  PRINT           "  "
 cbcc:  2d 02 01                STORE           L01,L00
 cbcf:  42 02 00 4a             JL              L01,#00 [FALSE] cbdb
 cbd3:  35 00 01 02             SUB             #00,L00 -> L01
 cbd7:  56 02 0a 02             MUL             L01,#0a -> L01
 cbdb:  42 02 0a 48             JL              L01,#0a [FALSE] cbe5
 cbdf:  b2 ...                  PRINT           "   "
 cbe2:  8c 00 15                JUMP            cbf8
 cbe5:  42 02 64 48             JL              L01,#64 [FALSE] cbef
 cbe9:  b2 ...                  PRINT           "  "
 cbec:  8c 00 0b                JUMP            cbf8
 cbef:  c2 8f 02 03 e8 45       JL              L01,#03e8 [FALSE] cbf8
 cbf5:  b2 ...                  PRINT           " "
 cbf8:  e6 bf 01                PRINT_NUM       L00
 cbfb:  b2 ...                  PRINT           " "
 cbfe:  b0                      RTRUE           

Routine cc00, 1 local
    Action routine for:
        "full"
        "full score"

 cc01:  8f 32 e8                CALL_1N         cba0
 cc04:  a0 1d c0                JZ              G0d [TRUE] RFALSE
 cc07:  90 01 40                JZ              #01 [FALSE] RFALSE
 cc0a:  bb                      NEW_LINE        
 cc0b:  f9 17 37 98 0d 01       CALL_VN         de60 (#0d,#01)
 cc11:  0d 01 00                STORE           L00,#00
 cc14:  42 01 01 00 21          JL              L00,#01 [FALSE] cc38
 cc19:  d0 2f 3a 31 01 00       LOADB           #3a31,L00 -> -(SP)
 cc1f:  41 00 01 52             JE              (SP)+,#01 [FALSE] cc33
 cc23:  d0 2f 3a 2d 01 00       LOADB           #3a2d,L00 -> -(SP)
 cc29:  da 2f 32 f2 00          CALL_2N         cbc8 ((SP)+)
 cc2e:  da 2f 7d 85 01          CALL_2N         1f614 (L00)
 cc33:  95 01                   INC             L00
 cc35:  8c ff de                JUMP            cc14
 cc38:  a0 21 cd                JZ              G11 [TRUE] cc46
 cc3b:  da 2f 32 f2 21          CALL_2N         cbc8 (G11)
 cc40:  f9 17 37 98 0d 02       CALL_VN         de60 (#0d,#02)
 cc46:  a0 20 cd                JZ              G10 [TRUE] cc54
 cc49:  da 2f 32 f2 20          CALL_2N         cbc8 (G10)
 cc4e:  f9 17 37 98 0d 03       CALL_VN         de60 (#0d,#03)
 cc54:  bb                      NEW_LINE        
 cc55:  da 2f 32 f2 1d          CALL_2N         cbc8 (G0d)
 cc5a:  f9 17 37 98 0d 04       CALL_VN         de60 (#0d,#04)
 cc60:  b0                      RTRUE           

Routine cc64, 0 locals
    Action routine for:
        "i wide"

 cc65:  0d 2f 1c                STORE           G1f,#1c
 cc68:  da 1f 2c b1 0e          CALL_2N         b2c4 (#0e)
 cc6d:  b0                      RTRUE           

Routine cc70, 0 locals
    Action routine for:
        "i tall"

 cc71:  0d 2f 17                STORE           G1f,#17
 cc74:  da 1f 2c b1 0e          CALL_2N         b2c4 (#0e)
 cc79:  b0                      RTRUE           

Routine cc7c, 1 local
    Action routine for:
        "carry inventory"
        "i"

 cc7d:  a2 22 00 42             GET_CHILD       G12 -> -(SP) [FALSE] cc81
 cc81:  a0 00 4a                JZ              (SP)+ [FALSE] cc8c
 cc84:  e0 17 37 98 0e 01 00    CALL_VS         de60 (#0e,#01) -> -(SP)
 cc8b:  b8                      RET_POPPED      
 cc8c:  a0 2f 47                JZ              G1f [FALSE] cc94
 cc8f:  88 33 1c 00             CALL_1S         cc70 -> -(SP)
 cc93:  b8                      RET_POPPED      
 cc94:  f9 17 37 98 0e 02       CALL_VN         de60 (#0e,#02)
 cc9a:  49 2f 01 00             AND             G1f,#01 -> -(SP)
 cc9e:  a0 00 ca                JZ              (SP)+ [TRUE] cca9
 cca1:  b2 ...                  PRINT           ":
"
 cca6:  8c 00 05                JUMP            ccac
 cca9:  b2 ...                  PRINT           " "
 ccac:  a2 22 00 42             GET_CHILD       G12 -> -(SP) [FALSE] ccb0
 ccb0:  f9 29 30 0a 00 2f 01    CALL_VN         c028 ((SP)+,G1f,#01)
 ccb7:  49 2f 08 00             AND             G1f,#08 -> -(SP)
 ccbb:  a0 00 c7                JZ              (SP)+ [TRUE] ccc3
 ccbe:  b2 ...                  PRINT           ".
"
 ccc3:  a2 22 00 42             GET_CHILD       G12 -> -(SP) [FALSE] ccc7
 ccc7:  e9 7f 01                PULL            L00
 ccca:  a0 01 cc                JZ              L00 [TRUE] ccd7
 cccd:  da 2f 2b 69 01          CALL_2N         ada4 (L00)
 ccd2:  a1 01 01 bf f8          GET_SIBLING     L00 -> L00 [TRUE] cccd
 ccd7:  8f 2c ef                CALL_1N         b3bc
 ccda:  b0                      RTRUE           

Routine ccdc, 0 locals
    Action routine for:
        "carry multi"
        "pick up multi"
        "pick multi up"
        "remove multi"
        "peel noun"
        "peel off noun"

 ccdd:  a0 4f c9                JZ              G3f [TRUE] cce7
 cce0:  a3 3a 00                GET_PARENT      G2a -> -(SP)
 cce3:  61 00 22 db             JE              (SP)+,G12 [TRUE] cd00
 cce7:  41 10 13 4e             JE              G00,#13 [FALSE] ccf7
 cceb:  d9 2f 33 47 25 00       CALL_2S         cd1c (G15) -> -(SP)
 ccf1:  a0 00 41                JZ              (SP)+ [FALSE] RTRUE
 ccf4:  8c 00 0b                JUMP            cd00
 ccf7:  d9 2f 33 47 10 00       CALL_2S         cd1c (G00) -> -(SP)
 ccfd:  a0 00 41                JZ              (SP)+ [FALSE] RTRUE
 cd00:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 cd04:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 cd08:  2d 4e 4f                STORE           G3e,G3f
 cd0b:  41 4e 01 c1             JE              G3e,#01 [TRUE] RTRUE
 cd0f:  41 3c 01 c1             JE              G2c,#01 [TRUE] RTRUE
 cd13:  f9 17 37 98 0f 01       CALL_VN         de60 (#0f,#01)
 cd19:  b0                      RTRUE           

Routine cd1c, 5 locals

 cd1d:  61 3a 22 4a             JE              G2a,G12 [FALSE] cd29
 cd21:  e0 17 37 98 0f 02 00    CALL_VS         de60 (#0f,#02) -> -(SP)
 cd28:  b8                      RET_POPPED      
 cd29:  4a 3a 00 4b             TEST_ATTR       G2a,#00 [FALSE] cd36
 cd2d:  e0 16 37 98 0f 03 3a 00 CALL_VS         de60 (#0f,#03,G2a) -> -(SP)
 cd35:  b8                      RET_POPPED      
 cd36:  a3 22 00                GET_PARENT      G12 -> -(SP)
 cd39:  61 00 3a 4b             JE              (SP)+,G2a [FALSE] cd46
 cd3d:  e0 16 37 98 0f 04 3a 00 CALL_VS         de60 (#0f,#04,G2a) -> -(SP)
 cd45:  b8                      RET_POPPED      
 cd46:  a3 3a 02                GET_PARENT      G2a -> L01
 cd49:  61 02 22 4b             JE              L01,G12 [FALSE] cd56
 cd4d:  e0 16 37 98 0f 05 3a 00 CALL_VS         de60 (#0f,#05,G2a) -> -(SP)
 cd55:  b8                      RET_POPPED      
 cd56:  4a 02 04 c6             TEST_ATTR       L01,#04 [TRUE] cd5e
 cd5a:  4a 02 14 5e             TEST_ATTR       L01,#14 [FALSE] cd7a
 cd5e:  2d 05 02                STORE           L04,L01
 cd61:  2d 04 37                STORE           L03,G27
 cd64:  cd 4f 37 10 00          STORE           G27,#1000
 cd69:  e0 27 2d 28 02 04 00    CALL_VS         b4a0 (L01,#04) -> -(SP)
 cd70:  a0 00 c6                JZ              (SP)+ [TRUE] cd77
 cd73:  2d 37 04                STORE           G27,L03
 cd76:  b0                      RTRUE           
 cd77:  2d 37 04                STORE           G27,L03
 cd7a:  61 02 01 80 58          JE              L01,L00 [TRUE] cdd5
 cd7f:  a0 02 80 54             JZ              L01 [TRUE] cdd5
 cd83:  4a 02 04 80 2a          TEST_ATTR       L01,#04 [TRUE] cdb0
 cd88:  4a 02 14 80 25          TEST_ATTR       L01,#14 [TRUE] cdb0
 cd8d:  4a 02 00 4b             TEST_ATTR       L01,#00 [FALSE] cd9a
 cd91:  e0 16 37 98 0f 06 02 00 CALL_VS         de60 (#0f,#06,L01) -> -(SP)
 cd99:  b8                      RET_POPPED      
 cd9a:  4a 02 17 4b             TEST_ATTR       L01,#17 [FALSE] cda7
 cd9e:  e0 16 37 98 0f 07 02 00 CALL_VS         de60 (#0f,#07,L01) -> -(SP)
 cda6:  b8                      RET_POPPED      
 cda7:  e0 16 37 98 0f 08 3a 00 CALL_VS         de60 (#0f,#08,G2a) -> -(SP)
 cdaf:  b8                      RET_POPPED      
 cdb0:  4a 02 04 4f             TEST_ATTR       L01,#04 [FALSE] cdc1
 cdb4:  4a 02 0e cb             TEST_ATTR       L01,#0e [TRUE] cdc1
 cdb8:  e0 16 37 98 0f 09 02 00 CALL_VS         de60 (#0f,#09,L01) -> -(SP)
 cdc0:  b8                      RET_POPPED      
 cdc1:  66 22 02 45             JIN             G12,L01 [FALSE] cdc8
 cdc5:  8c 00 0f                JUMP            cdd5
 cdc8:  a3 02 02                GET_PARENT      L01 -> L01
 cdcb:  61 02 22 45             JE              L01,G12 [FALSE] cdd2
 cdcf:  2d 02 01                STORE           L01,L00
 cdd2:  8c ff a7                JUMP            cd7a
 cdd5:  4a 3a 11 4b             TEST_ATTR       G2a,#11 [FALSE] cde2
 cdd9:  e0 16 37 98 0f 0a 3a 00 CALL_VS         de60 (#0f,#0a,G2a) -> -(SP)
 cde1:  b8                      RET_POPPED      
 cde2:  4a 3a 13 4b             TEST_ATTR       G2a,#13 [FALSE] cdef
 cde6:  e0 16 37 98 0f 0b 3a 00 CALL_VS         de60 (#0f,#0b,G2a) -> -(SP)
 cdee:  b8                      RET_POPPED      
 cdef:  0d 04 00                STORE           L03,#00
 cdf2:  a2 22 00 42             GET_CHILD       G12 -> -(SP) [FALSE] cdf6
 cdf6:  e9 7f 03                PULL            L02
 cdf9:  a0 03 cd                JZ              L02 [TRUE] ce07
 cdfc:  4a 03 1a c4             TEST_ATTR       L02,#1a [TRUE] ce02
 ce00:  95 04                   INC             L03
 ce02:  a1 03 03 bf f7          GET_SIBLING     L02 -> L02 [TRUE] cdfc
 ce07:  e0 27 2d 20 22 2d 00    CALL_VS         b480 (G12,#2d) -> -(SP)
 ce0e:  62 04 00 80 66          JL              L03,(SP)+ [TRUE] ce77
 ce13:  90 00 80 5a             JZ              #00 [TRUE] ce6f
 ce17:  93 00 00                GET_PARENT      #00 -> -(SP)
 ce1a:  61 00 22 ca             JE              (SP)+,G12 [TRUE] ce26
 ce1e:  e0 17 37 98 0f 0c 00    CALL_VS         de60 (#0f,#0c) -> -(SP)
 ce25:  b8                      RET_POPPED      
 ce26:  0d 03 00                STORE           L02,#00
 ce29:  a2 22 00 42             GET_CHILD       G12 -> -(SP) [FALSE] ce2d
 ce2d:  e9 7f 04                PULL            L03
 ce30:  a0 04 d5                JZ              L03 [TRUE] ce46
 ce33:  a0 04 cd                JZ              L03 [TRUE] ce41
 ce36:  4a 04 1a c9             TEST_ATTR       L03,#1a [TRUE] ce41
 ce3a:  4a 04 09 c5             TEST_ATTR       L03,#09 [TRUE] ce41
 ce3e:  2d 03 04                STORE           L02,L03
 ce41:  a1 04 04 bf ef          GET_SIBLING     L03 -> L03 [TRUE] ce33
 ce46:  a0 03 dd                JZ              L02 [TRUE] ce64
 ce49:  f9 16 37 98 0f 0d 03    CALL_VN         de60 (#0f,#0d,L02)
 ce50:  0d 3c 01                STORE           G2c,#01
 ce53:  f9 19 2c b1 13 03 00    CALL_VN         b2c4 (#13,L02,#00)
 ce5a:  0d 3c 00                STORE           G2c,#00
 ce5d:  46 03 00 41             JIN             L02,#00 [FALSE] RTRUE
 ce61:  8c 00 0a                JUMP            ce6c
 ce64:  e0 17 37 98 0f 0c 00    CALL_VS         de60 (#0f,#0c) -> -(SP)
 ce6b:  b8                      RET_POPPED      
 ce6c:  8c 00 0a                JUMP            ce77
 ce6f:  e0 17 37 98 0f 0c 00    CALL_VS         de60 (#0f,#0c) -> -(SP)
 ce76:  b8                      RET_POPPED      
 ce77:  6e 3a 22                INSERT_OBJ      G2a,G12
 ce7a:  a0 05 db                JZ              L04 [TRUE] ce96
 ce7d:  2d 04 37                STORE           L03,G27
 ce80:  cd 4f 37 10 00          STORE           G27,#1000
 ce85:  e0 27 2d 28 05 05 00    CALL_VS         b4a0 (L04,#05) -> -(SP)
 ce8c:  a0 00 c6                JZ              (SP)+ [TRUE] ce93
 ce8f:  2d 37 04                STORE           G27,L03
 ce92:  b0                      RTRUE           
 ce93:  2d 37 04                STORE           G27,L03
 ce96:  b1                      RFALSE          

Routine ce98, 1 local
    Action routine for:
        "put down multiheld"
        "put multiheld down"
        "discard multiheld"

 ce99:  a3 3a 01                GET_PARENT      G2a -> L00
 ce9c:  61 01 10 4b             JE              L00,G00 [FALSE] cea9
 cea0:  e0 16 37 98 10 01 3a 00 CALL_VS         de60 (#10,#01,G2a) -> -(SP)
 cea8:  b8                      RET_POPPED      
 cea9:  61 01 22 cb             JE              L00,G12 [TRUE] ceb6
 cead:  e0 16 37 98 10 02 3a 00 CALL_VS         de60 (#10,#02,G2a) -> -(SP)
 ceb5:  b8                      RET_POPPED      
 ceb6:  4a 3a 1a 53             TEST_ATTR       G2a,#1a [FALSE] cecb
 ceba:  f9 16 37 98 10 03 3a    CALL_VN         de60 (#10,#03,G2a)
 cec1:  f9 1b 2c b1 2a 3a       CALL_VN         b2c4 (#2a,G2a)
 cec7:  4a 3a 1a c1             TEST_ATTR       G2a,#1a [TRUE] RTRUE
 cecb:  a3 22 00                GET_PARENT      G12 -> -(SP)
 cece:  6e 3a 00                INSERT_OBJ      G2a,(SP)+
 ced1:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 ced5:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 ced9:  41 3c 01 c1             JE              G2c,#01 [TRUE] RTRUE
 cedd:  e0 16 37 98 10 04 3a 00 CALL_VS         de60 (#10,#04,G2a) -> -(SP)
 cee5:  b8                      RET_POPPED      

Routine cee8, 1 local
    Action routine for:
        "carry multiinside from / off noun"
        "remove multiinside from noun"

 cee9:  a3 3a 01                GET_PARENT      G2a -> L00
 ceec:  4a 01 04 4f             TEST_ATTR       L00,#04 [FALSE] cefd
 cef0:  4a 01 0e cb             TEST_ATTR       L00,#0e [TRUE] cefd
 cef4:  e0 16 37 98 11 01 3a 00 CALL_VS         de60 (#11,#01,G2a) -> -(SP)
 cefc:  b8                      RET_POPPED      
 cefd:  61 01 3b cb             JE              L00,G2b [TRUE] cf0a
 cf01:  e0 16 37 98 11 02 3a 00 CALL_VS         de60 (#11,#02,G2a) -> -(SP)
 cf09:  b8                      RET_POPPED      
 cf0a:  4a 01 00 4b             TEST_ATTR       L00,#00 [FALSE] cf17
 cf0e:  e0 16 37 98 0f 06 01 00 CALL_VS         de60 (#0f,#06,L00) -> -(SP)
 cf16:  b8                      RET_POPPED      
 cf17:  d9 2f 33 47 3b 00       CALL_2S         cd1c (G2b) -> -(SP)
 cf1d:  a0 00 41                JZ              (SP)+ [FALSE] RTRUE
 cf20:  0d 37 0f                STORE           G27,#0f
 cf23:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 cf27:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 cf2b:  0d 37 11                STORE           G27,#11
 cf2e:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 cf32:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 cf36:  41 3c 01 c1             JE              G2c,#01 [TRUE] RTRUE
 cf3a:  e0 16 37 98 11 03 3a 00 CALL_VS         de60 (#11,#03,G2a) -> -(SP)
 cf42:  b8                      RET_POPPED      

Routine cf44, 2 locals

 cf45:  a0 02 cc                JZ              L01 [TRUE] cf52
 cf48:  61 01 02 c1             JE              L00,L01 [TRUE] RTRUE
 cf4c:  a3 02 02                GET_PARENT      L01 -> L01
 cf4f:  8c ff f5                JUMP            cf45
 cf52:  b1                      RFALSE          

Routine cf54, 0 locals
    Action routine for:
        "put multiexcept on / onto noun"
        "put held up noun"
        "dip held up noun"
        "discard multiexcept on / onto noun"
        "hang held on / from / against noun"
        "hang up held on / from / against noun"
        "hang held up on / from / against noun"

 cf55:  0d 3e 12                STORE           G2e,#12
 cf58:  41 3b 10 49             JE              G2b,#10 [FALSE] cf63
 cf5c:  f9 1b 2c b1 10 3a       CALL_VN         b2c4 (#10,G2a)
 cf62:  b1                      RFALSE          
 cf63:  a3 3a 00                GET_PARENT      G2a -> -(SP)
 cf66:  61 00 22 cb             JE              (SP)+,G12 [TRUE] cf73
 cf6a:  e0 16 37 98 12 01 3a 00 CALL_VS         de60 (#12,#01,G2a) -> -(SP)
 cf72:  b8                      RET_POPPED      
 cf73:  43 3b 01 58             JG              G2b,#01 [FALSE] cf8d
 cf77:  cd 4f 37 10 01          STORE           G27,#1001
 cf7c:  e0 27 2d 28 3b 04 00    CALL_VS         b4a0 (G2b,#04) -> -(SP)
 cf83:  a0 00 c6                JZ              (SP)+ [TRUE] cf8a
 cf86:  0d 37 12                STORE           G27,#12
 cf89:  b0                      RTRUE           
 cf8a:  0d 37 12                STORE           G27,#12
 cf8d:  e0 2b 33 d1 3a 3b 00    CALL_VS         cf44 (G2a,G2b) -> -(SP)
 cf94:  41 00 01 4a             JE              (SP)+,#01 [FALSE] cfa0
 cf98:  e0 17 37 98 12 02 00    CALL_VS         de60 (#12,#02) -> -(SP)
 cf9f:  b8                      RET_POPPED      
 cfa0:  4a 3b 14 cb             TEST_ATTR       G2b,#14 [TRUE] cfad
 cfa4:  e0 16 37 98 12 03 3b 00 CALL_VS         de60 (#12,#03,G2b) -> -(SP)
 cfac:  b8                      RET_POPPED      
 cfad:  a3 3b 00                GET_PARENT      G2b -> -(SP)
 cfb0:  61 00 22 4a             JE              (SP)+,G12 [FALSE] cfbc
 cfb4:  e0 17 37 98 12 04 00    CALL_VS         de60 (#12,#04) -> -(SP)
 cfbb:  b8                      RET_POPPED      
 cfbc:  4a 3a 1a 53             TEST_ATTR       G2a,#1a [FALSE] cfd1
 cfc0:  f9 16 37 98 12 05 3a    CALL_VN         de60 (#12,#05,G2a)
 cfc7:  f9 1b 2c b1 2a 3a       CALL_VN         b2c4 (#2a,G2a)
 cfcd:  4a 3a 1a c1             TEST_ATTR       G2a,#1a [TRUE] RTRUE
 cfd1:  e0 27 2d 20 3b 2d 00    CALL_VS         b480 (G2b,#2d) -> -(SP)
 cfd8:  0d ff 00                STORE           Gef,#00
 cfdb:  a2 3b 00 49             GET_CHILD       G2b -> -(SP) [FALSE] cfe6
 cfdf:  95 ff                   INC             Gef
 cfe1:  a1 00 00 bf fb          GET_SIBLING     (SP)+ -> -(SP) [TRUE] cfdf
 cfe6:  e9 7f fe                PULL            Gee
 cfe9:  e8 bf ff                PUSH            Gef
 cfec:  62 00 00 cb             JL              (SP)+,(SP)+ [TRUE] cff9
 cff0:  e0 16 37 98 12 06 3b 00 CALL_VS         de60 (#12,#06,G2b) -> -(SP)
 cff8:  b8                      RET_POPPED      
 cff9:  6e 3a 3b                INSERT_OBJ      G2a,G2b
 cffc:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 d000:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 d004:  43 3b 01 58             JG              G2b,#01 [FALSE] d01e
 d008:  cd 4f 37 10 01          STORE           G27,#1001
 d00d:  e0 27 2d 28 3b 05 00    CALL_VS         b4a0 (G2b,#05) -> -(SP)
 d014:  a0 00 c6                JZ              (SP)+ [TRUE] d01b
 d017:  0d 37 12                STORE           G27,#12
 d01a:  b0                      RTRUE           
 d01b:  0d 37 12                STORE           G27,#12
 d01e:  41 3c 01 c1             JE              G2c,#01 [TRUE] RTRUE
 d022:  41 47 01 4a             JE              G37,#01 [FALSE] d02e
 d026:  e0 17 37 98 12 07 00    CALL_VS         de60 (#12,#07) -> -(SP)
 d02d:  b8                      RET_POPPED      
 d02e:  f9 16 37 98 12 08 3a    CALL_VN         de60 (#12,#08,G2a)
 d035:  b0                      RTRUE           

Routine d038, 0 locals
    Action routine for:
        "put multiexcept in / inside / into noun"
        "dip multiexcept in / into noun"
        "discard multiexcept in / into / down noun"
        "bind noun in noun"
        "bind noun into noun"

 d039:  0d 3e 13                STORE           G2e,#13
 d03c:  41 3b 10 49             JE              G2b,#10 [FALSE] d047
 d040:  f9 1b 2c b1 10 3a       CALL_VN         b2c4 (#10,G2a)
 d046:  b0                      RTRUE           
 d047:  a3 3a 00                GET_PARENT      G2a -> -(SP)
 d04a:  61 00 22 cb             JE              (SP)+,G12 [TRUE] d057
 d04e:  e0 16 37 98 13 01 3a 00 CALL_VS         de60 (#13,#01,G2a) -> -(SP)
 d056:  b8                      RET_POPPED      
 d057:  43 3b 01 58             JG              G2b,#01 [FALSE] d071
 d05b:  cd 4f 37 10 01          STORE           G27,#1001
 d060:  e0 27 2d 28 3b 04 00    CALL_VS         b4a0 (G2b,#04) -> -(SP)
 d067:  a0 00 c6                JZ              (SP)+ [TRUE] d06e
 d06a:  0d 37 13                STORE           G27,#13
 d06d:  b0                      RTRUE           
 d06e:  0d 37 13                STORE           G27,#13
 d071:  4a 3b 04 cb             TEST_ATTR       G2b,#04 [TRUE] d07e
 d075:  e0 16 37 98 13 02 3a 00 CALL_VS         de60 (#13,#02,G2a) -> -(SP)
 d07d:  b8                      RET_POPPED      
 d07e:  4a 3b 0e cb             TEST_ATTR       G2b,#0e [TRUE] d08b
 d082:  e0 16 37 98 13 03 3a 00 CALL_VS         de60 (#13,#03,G2a) -> -(SP)
 d08a:  b8                      RET_POPPED      
 d08b:  e0 2b 33 d1 3a 3b 00    CALL_VS         cf44 (G2a,G2b) -> -(SP)
 d092:  41 00 01 4b             JE              (SP)+,#01 [FALSE] d09f
 d096:  e0 16 37 98 13 05 3a 00 CALL_VS         de60 (#13,#05,G2a) -> -(SP)
 d09e:  b8                      RET_POPPED      
 d09f:  4a 3a 1a 53             TEST_ATTR       G2a,#1a [FALSE] d0b4
 d0a3:  f9 16 37 98 13 06 3a    CALL_VN         de60 (#13,#06,G2a)
 d0aa:  f9 1b 2c b1 2a 3a       CALL_VN         b2c4 (#2a,G2a)
 d0b0:  4a 3a 1a c1             TEST_ATTR       G2a,#1a [TRUE] RTRUE
 d0b4:  e0 27 2d 20 3b 2d 00    CALL_VS         b480 (G2b,#2d) -> -(SP)
 d0bb:  0d ff 00                STORE           Gef,#00
 d0be:  a2 3b 00 49             GET_CHILD       G2b -> -(SP) [FALSE] d0c9
 d0c2:  95 ff                   INC             Gef
 d0c4:  a1 00 00 bf fb          GET_SIBLING     (SP)+ -> -(SP) [TRUE] d0c2
 d0c9:  e9 7f fe                PULL            Gee
 d0cc:  e8 bf ff                PUSH            Gef
 d0cf:  62 00 00 cb             JL              (SP)+,(SP)+ [TRUE] d0dc
 d0d3:  e0 16 37 98 13 07 3b 00 CALL_VS         de60 (#13,#07,G2b) -> -(SP)
 d0db:  b8                      RET_POPPED      
 d0dc:  6e 3a 3b                INSERT_OBJ      G2a,G2b
 d0df:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 d0e3:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 d0e7:  43 3b 01 58             JG              G2b,#01 [FALSE] d101
 d0eb:  cd 4f 37 10 01          STORE           G27,#1001
 d0f0:  e0 27 2d 28 3b 05 00    CALL_VS         b4a0 (G2b,#05) -> -(SP)
 d0f7:  a0 00 c6                JZ              (SP)+ [TRUE] d0fe
 d0fa:  0d 37 13                STORE           G27,#13
 d0fd:  b0                      RTRUE           
 d0fe:  0d 37 13                STORE           G27,#13
 d101:  41 3c 01 c1             JE              G2c,#01 [TRUE] RTRUE
 d105:  41 47 01 4b             JE              G37,#01 [FALSE] d112
 d109:  e0 16 37 98 13 08 3a 00 CALL_VS         de60 (#13,#08,G2a) -> -(SP)
 d111:  b8                      RET_POPPED      
 d112:  f9 16 37 98 13 09 3a    CALL_VN         de60 (#13,#09,G2a)
 d119:  b0                      RTRUE           

Routine d11c, 5 locals
    Action routine for:
        "transfer noun to noun"
        "clear noun to noun"

 d11d:  0d 02 10                STORE           L01,#10
 d120:  4a 3b 04 48             TEST_ATTR       G2b,#04 [FALSE] d12a
 d124:  0d 02 13                STORE           L01,#13
 d127:  8c 00 09                JUMP            d131
 d12a:  4a 3b 14 45             TEST_ATTR       G2b,#14 [FALSE] d131
 d12e:  0d 02 12                STORE           L01,#12
 d131:  a3 3a 01                GET_PARENT      G2a -> L00
 d134:  61 01 22 80 28          JE              L00,G12 [TRUE] d15f
 d139:  a0 01 dc                JZ              L00 [TRUE] d156
 d13c:  4a 01 0e cb             TEST_ATTR       L00,#0e [TRUE] d149
 d140:  e0 16 37 98 14 01 3a 00 CALL_VS         de60 (#14,#01,G2a) -> -(SP)
 d148:  b8                      RET_POPPED      
 d149:  a3 01 01                GET_PARENT      L00 -> L00
 d14c:  61 01 22 45             JE              L00,G12 [FALSE] d153
 d150:  8c 00 0e                JUMP            d15f
 d153:  8c ff e5                JUMP            d139
 d156:  e0 16 37 98 14 02 3a 00 CALL_VS         de60 (#14,#02,G2a) -> -(SP)
 d15e:  b8                      RET_POPPED      
 d15f:  66 3a 22 80 48          JIN             G2a,G12 [TRUE] d1aa
 d164:  a3 3a 05                GET_PARENT      G2a -> L04
 d167:  4a 05 04 c6             TEST_ATTR       L04,#04 [TRUE] d16f
 d16b:  4a 05 14 5e             TEST_ATTR       L04,#14 [FALSE] d18b
 d16f:  2d 04 05                STORE           L03,L04
 d172:  2d 03 37                STORE           L02,G27
 d175:  cd 4f 37 10 00          STORE           G27,#1000
 d17a:  e0 27 2d 28 05 04 00    CALL_VS         b4a0 (L04,#04) -> -(SP)
 d181:  a0 00 c6                JZ              (SP)+ [TRUE] d188
 d184:  2d 37 03                STORE           G27,L02
 d187:  b0                      RTRUE           
 d188:  2d 37 03                STORE           G27,L02
 d18b:  6e 3a 22                INSERT_OBJ      G2a,G12
 d18e:  a0 04 db                JZ              L03 [TRUE] d1aa
 d191:  2d 03 37                STORE           L02,G27
 d194:  cd 4f 37 10 00          STORE           G27,#1000
 d199:  e0 27 2d 28 04 05 00    CALL_VS         b4a0 (L03,#05) -> -(SP)
 d1a0:  a0 00 c6                JZ              (SP)+ [TRUE] d1a7
 d1a3:  2d 37 03                STORE           G27,L02
 d1a6:  b0                      RTRUE           
 d1a7:  2d 37 03                STORE           G27,L02
 d1aa:  41 02 10 49             JE              L01,#10 [FALSE] d1b5
 d1ae:  f9 1b 2c b1 10 3a       CALL_VN         b2c4 (#10,G2a)
 d1b4:  b0                      RTRUE           
 d1b5:  41 02 13 4a             JE              L01,#13 [FALSE] d1c1
 d1b9:  f9 1a 2c b1 13 3a 3b    CALL_VN         b2c4 (#13,G2a,G2b)
 d1c0:  b0                      RTRUE           
 d1c1:  41 02 12 4a             JE              L01,#12 [FALSE] d1cd
 d1c5:  f9 1a 2c b1 12 3a 3b    CALL_VN         b2c4 (#12,G2a,G2b)
 d1cc:  b0                      RTRUE           
 d1cd:  b0                      RTRUE           

Routine d1d0, 0 locals
    Action routine for:
        "empty noun"
        "empty out noun"
        "empty noun out"

 d1d1:  0d 3b 10                STORE           G2b,#10
 d1d4:  8f 34 76                CALL_1N         d1d8
 d1d7:  b0                      RTRUE           

Routine d1d8, 2 locals
    Action routine for:
        "empty noun to / into / on / onto noun"

 d1d9:  4a 3a 04 cb             TEST_ATTR       G2a,#04 [TRUE] d1e6
 d1dd:  e0 16 37 98 15 01 3a 00 CALL_VS         de60 (#15,#01,G2a) -> -(SP)
 d1e5:  b8                      RET_POPPED      
 d1e6:  4a 3a 0e cb             TEST_ATTR       G2a,#0e [TRUE] d1f3
 d1ea:  e0 16 37 98 15 02 3a 00 CALL_VS         de60 (#15,#02,G2a) -> -(SP)
 d1f2:  b8                      RET_POPPED      
 d1f3:  41 3b 10 dc             JE              G2b,#10 [TRUE] d211
 d1f7:  4a 3b 04 cb             TEST_ATTR       G2b,#04 [TRUE] d204
 d1fb:  e0 16 37 98 15 01 3b 00 CALL_VS         de60 (#15,#01,G2b) -> -(SP)
 d203:  b8                      RET_POPPED      
 d204:  4a 3b 0e cb             TEST_ATTR       G2b,#0e [TRUE] d211
 d208:  e0 16 37 98 15 02 3b 00 CALL_VS         de60 (#15,#02,G2b) -> -(SP)
 d210:  b8                      RET_POPPED      
 d211:  a2 3a 01 42             GET_CHILD       G2a -> L00 [FALSE] d215
 d215:  a0 01 4b                JZ              L00 [FALSE] d221
 d218:  e0 16 37 98 15 03 3a 00 CALL_VS         de60 (#15,#03,G2a) -> -(SP)
 d220:  b8                      RET_POPPED      
 d221:  a0 01 db                JZ              L00 [TRUE] d23d
 d224:  a1 01 02 42             GET_SIBLING     L00 -> L01 [FALSE] d228
 d228:  da 2f 2f 27 01          CALL_2N         bc9c (L00)
 d22d:  b2 ...                  PRINT           ": "
 d230:  f9 1a 2c b1 14 01 3b    CALL_VN         b2c4 (#14,L00,G2b)
 d237:  2d 01 02                STORE           L00,L01
 d23a:  8c ff e6                JUMP            d221
 d23d:  b0                      RTRUE           

Routine d240, 0 locals
    Action routine for:
        "feed held to creature"
        "feed creature held" REVERSE
        "feed over held to creature"

 d241:  a3 3a 00                GET_PARENT      G2a -> -(SP)
 d244:  61 00 22 cb             JE              (SP)+,G12 [TRUE] d251
 d248:  e0 16 37 98 16 01 3a 00 CALL_VS         de60 (#16,#01,G2a) -> -(SP)
 d250:  b8                      RET_POPPED      
 d251:  61 3b 22 4b             JE              G2b,G12 [FALSE] d25e
 d255:  e0 16 37 98 16 02 3a 00 CALL_VS         de60 (#16,#02,G2a) -> -(SP)
 d25d:  b8                      RET_POPPED      
 d25e:  e0 27 2c fc 3b 16 00    CALL_VS         b3f0 (G2b,#16) -> -(SP)
 d265:  a0 00 40                JZ              (SP)+ [FALSE] RFALSE
 d268:  f9 16 37 98 16 03 3b    CALL_VN         de60 (#16,#03,G2b)
 d26f:  b0                      RTRUE           

Routine d270, 0 locals
    Action routine for:
        

 d271:  f9 1a 2c b1 16 3b 3a    CALL_VN         b2c4 (#16,G2b,G2a)
 d278:  b0                      RTRUE           

Routine d27c, 0 locals
    Action routine for:
        "display creature held" REVERSE
        "display held to creature"

 d27d:  a3 3a 00                GET_PARENT      G2a -> -(SP)
 d280:  61 00 22 cb             JE              (SP)+,G12 [TRUE] d28d
 d284:  e0 16 37 98 17 01 3a 00 CALL_VS         de60 (#17,#01,G2a) -> -(SP)
 d28c:  b8                      RET_POPPED      
 d28d:  61 3b 22 49             JE              G2b,G12 [FALSE] d298
 d291:  f9 1b 2c b1 21 3a       CALL_VN         b2c4 (#21,G2a)
 d297:  b0                      RTRUE           
 d298:  e0 27 2c fc 3b 17 00    CALL_VS         b3f0 (G2b,#17) -> -(SP)
 d29f:  a0 00 40                JZ              (SP)+ [FALSE] RFALSE
 d2a2:  f9 16 37 98 17 02 3b    CALL_VN         de60 (#17,#02,G2b)
 d2a9:  b0                      RTRUE           

Routine d2ac, 0 locals
    Action routine for:
        

 d2ad:  f9 1a 2c b1 17 3b 3a    CALL_VN         b2c4 (#17,G2b,G2a)
 d2b4:  b0                      RTRUE           

Routine d2b8, 1 local
    Action routine for:
        "carry in / into / on / onto noun"
        "stand on noun"
        "go noun"
        "go into / in / inside / through noun"
        "leave into / in / inside / through noun"
        "cross noun"
        "lie on top of noun"
        "lie on / in / inside noun"

 d2b9:  4a 3a 05 49             TEST_ATTR       G2a,#05 [FALSE] d2c4
 d2bd:  f9 1b 2c b1 1c 3a       CALL_VN         b2c4 (#1c,G2a)
 d2c3:  b0                      RTRUE           
 d2c4:  a3 22 01                GET_PARENT      G12 -> L00
 d2c7:  61 01 10 cb             JE              L00,G00 [TRUE] d2d4
 d2cb:  e0 16 37 98 18 01 01 00 CALL_VS         de60 (#18,#01,L00) -> -(SP)
 d2d3:  b8                      RET_POPPED      
 d2d4:  a3 3a 01                GET_PARENT      G2a -> L00
 d2d7:  41 01 06 49             JE              L00,#06 [FALSE] d2e2
 d2db:  f9 1b 2c b1 1c 3a       CALL_VN         b2c4 (#1c,G2a)
 d2e1:  b0                      RTRUE           
 d2e2:  4a 3a 07 cb             TEST_ATTR       G2a,#07 [TRUE] d2ef
 d2e6:  e0 16 37 98 18 02 3a 00 CALL_VS         de60 (#18,#02,G2a) -> -(SP)
 d2ee:  b8                      RET_POPPED      
 d2ef:  4a 3a 04 4f             TEST_ATTR       G2a,#04 [FALSE] d300
 d2f3:  4a 3a 0e cb             TEST_ATTR       G2a,#0e [TRUE] d300
 d2f7:  e0 16 37 98 18 03 3a 00 CALL_VS         de60 (#18,#03,G2a) -> -(SP)
 d2ff:  b8                      RET_POPPED      
 d300:  61 01 10 cb             JE              L00,G00 [TRUE] d30d
 d304:  e0 16 37 98 18 04 3a 00 CALL_VS         de60 (#18,#04,G2a) -> -(SP)
 d30c:  b8                      RET_POPPED      
 d30d:  6e 22 3a                INSERT_OBJ      G12,G2a
 d310:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 d314:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 d318:  41 3c 01 c1             JE              G2c,#01 [TRUE] RTRUE
 d31c:  f9 16 37 98 18 05 3a    CALL_VN         de60 (#18,#05,G2a)
 d323:  da 2f 35 4c 3a          CALL_2N         d530 (G2a)
 d328:  b0                      RTRUE           

Routine d32c, 0 locals
    Action routine for:
        "carry off noun"

 d32d:  a3 22 00                GET_PARENT      G12 -> -(SP)
 d330:  61 00 3a 48             JE              (SP)+,G2a [FALSE] d33a
 d334:  da 1f 2c b1 1a          CALL_2N         b2c4 (#1a)
 d339:  b0                      RTRUE           
 d33a:  f9 16 37 98 19 01 3a    CALL_VN         de60 (#19,#01,G2a)
 d341:  b0                      RTRUE           

Routine d344, 1 local
    Action routine for:
        "carry out / off / up"
        "stand"
        "stand up"
        "leave noun"
        "exit"

 d345:  a3 22 01                GET_PARENT      G12 -> L00
 d348:  61 01 10 cc             JE              L00,G00 [TRUE] d356
 d34c:  41 10 13 00 28          JE              G00,#13 [FALSE] d377
 d351:  61 01 25 00 23          JE              L00,G15 [FALSE] d377
 d356:  51 10 12 00             GET_PROP        G00,#12 -> -(SP)
 d35a:  a0 00 4d                JZ              (SP)+ [FALSE] d368
 d35d:  41 10 13 50             JE              G00,#13 [FALSE] d36f
 d361:  51 25 12 00             GET_PROP        G15,#12 -> -(SP)
 d365:  a0 00 c9                JZ              (SP)+ [TRUE] d36f
 d368:  f9 17 2c b1 1c 11       CALL_VN         b2c4 (#1c,#11)
 d36e:  b0                      RTRUE           
 d36f:  e0 17 37 98 1a 01 00    CALL_VS         de60 (#1a,#01) -> -(SP)
 d376:  b8                      RET_POPPED      
 d377:  4a 01 04 4f             TEST_ATTR       L00,#04 [FALSE] d388
 d37b:  4a 01 0e cb             TEST_ATTR       L00,#0e [TRUE] d388
 d37f:  e0 16 37 98 1a 02 01 00 CALL_VS         de60 (#1a,#02,L00) -> -(SP)
 d387:  b8                      RET_POPPED      
 d388:  41 10 13 48             JE              G00,#13 [FALSE] d392
 d38c:  6e 22 25                INSERT_OBJ      G12,G15
 d38f:  8c 00 05                JUMP            d395
 d392:  6e 22 10                INSERT_OBJ      G12,G00
 d395:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 d399:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 d39d:  41 3c 01 c1             JE              G2c,#01 [TRUE] RTRUE
 d3a1:  f9 16 37 98 1a 03 01    CALL_VN         de60 (#1a,#03,L00)
 d3a8:  da 1f 35 be 01          CALL_2N         d6f8 (#01)
 d3ad:  b0                      RTRUE           

Routine d3b0, 0 locals
    Action routine for:
        "go"
        "leave"

 d3b1:  da 1f 37 98 1b          CALL_2N         de60 (#1b)
 d3b6:  b0                      RTRUE           

Routine d3b8, 0 locals
    Action routine for:
        "cross"
        "in"

 d3b9:  f9 17 2c b1 1c 12       CALL_VN         b2c4 (#1c,#12)
 d3bf:  b0                      RTRUE           

Routine d3c0, 6 locals
    Action routine for:
        "go noun = [parse $7d67]"
        "leave noun = [parse $7d67]"

 d3c1:  0d 05 00                STORE           L04,#00
 d3c4:  a3 22 01                GET_PARENT      G12 -> L00
 d3c7:  41 10 13 c6             JE              G00,#13 [TRUE] d3cf
 d3cb:  61 01 10 4c             JE              L00,G00 [FALSE] d3d9
 d3cf:  41 10 13 00 37          JE              G00,#13 [FALSE] d409
 d3d4:  61 01 25 80 32          JE              L00,G15 [TRUE] d409
 d3d9:  2d 02 10                STORE           L01,G00
 d3dc:  41 10 13 45             JE              G00,#13 [FALSE] d3e3
 d3e0:  2d 10 25                STORE           G00,G15
 d3e3:  e0 27 2d 28 01 04 03    CALL_VS         b4a0 (L00,#04) -> L02
 d3ea:  41 03 03 c5             JE              L02,#03 [TRUE] d3f1
 d3ee:  2d 10 02                STORE           G00,L01
 d3f1:  41 03 01 4b             JE              L02,#01 [FALSE] d3fe
 d3f5:  2d 05 01                STORE           L04,L00
 d3f8:  a3 01 01                GET_PARENT      L00 -> L00
 d3fb:  8c 00 0d                JUMP            d409
 d3fe:  a0 03 49                JZ              L02 [FALSE] d408
 d401:  f9 16 37 98 1c 01 01    CALL_VN         de60 (#1c,#01,L00)
 d408:  b0                      RTRUE           
 d409:  51 3a 15 06             GET_PROP        G2a,#15 -> L05
 d40d:  d9 2f 2c ff 06 00       CALL_2S         b3fc (L05) -> -(SP)
 d413:  41 00 02 49             JE              (SP)+,#02 [FALSE] d41e
 d417:  e0 27 2d 28 3a 15 06    CALL_VS         b4a0 (G2a,#15) -> L05
 d41e:  e0 2b 7e 93 01 06 02    CALL_VS         1fa4c (L00,L05) -> L01
 d425:  d9 2f 2c ff 02 03       CALL_2S         b3fc (L01) -> L02
 d42b:  41 03 03 46             JE              L02,#03 [FALSE] d433
 d42f:  ad 02                   PRINT_PADDR     L01
 d431:  bb                      NEW_LINE        
 d432:  b1                      RFALSE          
 d433:  41 03 02 4d             JE              L02,#02 [FALSE] d442
 d437:  e0 2b 2d 28 01 06 02    CALL_VS         b4a0 (L00,L05) -> L01
 d43e:  41 02 01 c1             JE              L01,#01 [TRUE] RTRUE
 d442:  a0 03 c5                JZ              L02 [TRUE] d448
 d445:  a0 02 50                JZ              L01 [FALSE] d456
 d448:  51 01 26 00             GET_PROP        L00,#26 -> -(SP)
 d44c:  a0 00 c8                JZ              (SP)+ [TRUE] d455
 d44f:  f9 27 2d 08 01 26       CALL_VN         b420 (L00,#26)
 d455:  b1                      RFALSE          
 d456:  4a 02 05 00 62          TEST_ATTR       L01,#05 [FALSE] d4bb
 d45b:  4a 02 03 4a             TEST_ATTR       L01,#03 [FALSE] d467
 d45f:  e0 17 37 98 1c 02 00    CALL_VS         de60 (#1c,#02) -> -(SP)
 d466:  b8                      RET_POPPED      
 d467:  4a 02 0e 80 25          TEST_ATTR       L01,#0e [TRUE] d48f
 d46c:  41 3a 0f 4b             JE              G2a,#0f [FALSE] d479
 d470:  e0 16 37 98 1c 03 02 00 CALL_VS         de60 (#1c,#03,L01) -> -(SP)
 d478:  b8                      RET_POPPED      
 d479:  41 3a 10 4b             JE              G2a,#10 [FALSE] d486
 d47d:  e0 16 37 98 1c 04 02 00 CALL_VS         de60 (#1c,#04,L01) -> -(SP)
 d485:  b8                      RET_POPPED      
 d486:  e0 16 37 98 1c 05 02 00 CALL_VS         de60 (#1c,#05,L01) -> -(SP)
 d48e:  b8                      RET_POPPED      
 d48f:  51 02 13 00             GET_PROP        L01,#13 -> -(SP)
 d493:  d9 2f 2c ff 00 00       CALL_2S         b3fc ((SP)+) -> -(SP)
 d499:  41 00 02 4c             JE              (SP)+,#02 [FALSE] d4a7
 d49d:  e0 27 2d 28 02 13 02    CALL_VS         b4a0 (L01,#13) -> L01
 d4a4:  8c 00 06                JUMP            d4ab
 d4a7:  51 02 13 02             GET_PROP        L01,#13 -> L01
 d4ab:  a0 02 4b                JZ              L01 [FALSE] d4b7
 d4ae:  e0 16 37 98 1c 06 02 00 CALL_VS         de60 (#1c,#06,L01) -> -(SP)
 d4b6:  b8                      RET_POPPED      
 d4b7:  41 02 01 c1             JE              L01,#01 [TRUE] RTRUE
 d4bb:  a0 05 48                JZ              L04 [FALSE] d4c4
 d4be:  6e 22 02                INSERT_OBJ      G12,L01
 d4c1:  8c 00 05                JUMP            d4c7
 d4c4:  6e 05 02                INSERT_OBJ      L04,L01
 d4c7:  d9 2f 2d 9d 02 04       CALL_2S         b674 (L01) -> L03
 d4cd:  a0 04 cb                JZ              L03 [TRUE] d4d9
 d4d0:  2d 10 02                STORE           G00,L01
 d4d3:  0d 24 01                STORE           G14,#01
 d4d6:  8c 00 15                JUMP            d4ec
 d4d9:  41 10 13 48             JE              G00,#13 [FALSE] d4e3
 d4dd:  8f 7c ec                CALL_1N         1f3b0
 d4e0:  a0 23 c1                JZ              G13 [TRUE] RTRUE
 d4e3:  2d 25 02                STORE           G15,L01
 d4e6:  0d 10 13                STORE           G00,#13
 d4e9:  0d 24 00                STORE           G14,#00
 d4ec:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 d4f0:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 d4f4:  41 3c 01 c1             JE              G2c,#01 [TRUE] RTRUE
 d4f8:  da 1f 35 be 01          CALL_2N         d6f8 (#01)
 d4fd:  b0                      RTRUE           

Routine d500, 3 locals

 d501:  a3 22 00                GET_PARENT      G12 -> -(SP)
 d504:  61 01 00 c0             JE              L00,(SP)+ [TRUE] RFALSE
 d508:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] d50c
 d50c:  e9 7f 02                PULL            L01
 d50f:  a0 02 d2                JZ              L01 [TRUE] d522
 d512:  4a 02 03 c9             TEST_ATTR       L01,#03 [TRUE] d51d
 d516:  4a 02 11 c5             TEST_ATTR       L01,#11 [TRUE] d51d
 d51a:  0d 03 01                STORE           L02,#01
 d51d:  a1 02 02 bf f2          GET_SIBLING     L01 -> L01 [TRUE] d512
 d522:  a0 03 c0                JZ              L02 [TRUE] RFALSE
 d525:  f9 16 37 98 20 04 01    CALL_VN         de60 (#20,#04,L00)
 d52c:  b0                      RTRUE           

Routine d530, 9 locals

 d531:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] d535
 d535:  e9 7f 04                PULL            L03
 d538:  a0 04 cf                JZ              L03 [TRUE] d548
 d53b:  4c 04 19                CLEAR_ATTR      L03,#19
 d53e:  da 2f 2b 69 04          CALL_2N         ada4 (L03)
 d543:  a1 04 04 bf f5          GET_SIBLING     L03 -> L03 [TRUE] d53b
 d548:  0d 06 00                STORE           L05,#00
 d54b:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] d54f
 d54f:  e9 7f 04                PULL            L03
 d552:  a0 04 81 04             JZ              L03 [TRUE] d658
 d556:  4a 04 03 80 fa          TEST_ATTR       L03,#03 [TRUE] d653
 d55b:  a3 22 00                GET_PARENT      G12 -> -(SP)
 d55e:  61 04 00 80 f2          JE              L03,(SP)+ [TRUE] d653
 d563:  4a 04 11 80 dd          TEST_ATTR       L03,#11 [TRUE] d643
 d568:  4b 04 19                SET_ATTR        L03,#19
 d56b:  95 06                   INC             L05
 d56d:  0d 05 1e                STORE           L04,#1e
 d570:  0d 09 00                STORE           L08,#00
 d573:  4a 04 05 c6             TEST_ATTR       L03,#05 [TRUE] d57b
 d577:  4a 04 04 59             TEST_ATTR       L03,#04 [FALSE] d592
 d57b:  4a 04 0e 55             TEST_ATTR       L03,#0e [FALSE] d592
 d57f:  e0 27 7f 6d 04 1f 00    CALL_VS         1fdb4 (L03,#1f) -> -(SP)
 d586:  a0 00 cb                JZ              (SP)+ [TRUE] d592
 d589:  0d 05 1f                STORE           L04,#1f
 d58c:  0d 09 01                STORE           L08,#01
 d58f:  8c 00 54                JUMP            d5e4
 d592:  4a 04 05 c6             TEST_ATTR       L03,#05 [TRUE] d59a
 d596:  4a 04 04 59             TEST_ATTR       L03,#04 [FALSE] d5b1
 d59a:  4a 04 0e d5             TEST_ATTR       L03,#0e [TRUE] d5b1
 d59e:  e0 27 7f 6d 04 20 00    CALL_VS         1fdb4 (L03,#20) -> -(SP)
 d5a5:  a0 00 cb                JZ              (SP)+ [TRUE] d5b1
 d5a8:  0d 05 20                STORE           L04,#20
 d5ab:  0d 09 01                STORE           L08,#01
 d5ae:  8c 00 35                JUMP            d5e4
 d5b1:  4a 04 15 59             TEST_ATTR       L03,#15 [FALSE] d5cc
 d5b5:  4a 04 0d 55             TEST_ATTR       L03,#0d [FALSE] d5cc
 d5b9:  e0 27 7f 6d 04 21 00    CALL_VS         1fdb4 (L03,#21) -> -(SP)
 d5c0:  a0 00 cb                JZ              (SP)+ [TRUE] d5cc
 d5c3:  0d 05 21                STORE           L04,#21
 d5c6:  0d 09 01                STORE           L08,#01
 d5c9:  8c 00 1a                JUMP            d5e4
 d5cc:  4a 04 15 56             TEST_ATTR       L03,#15 [FALSE] d5e4
 d5d0:  4a 04 0d d2             TEST_ATTR       L03,#0d [TRUE] d5e4
 d5d4:  e0 27 7f 6d 04 22 00    CALL_VS         1fdb4 (L03,#22) -> -(SP)
 d5db:  a0 00 c8                JZ              (SP)+ [TRUE] d5e4
 d5de:  0d 05 22                STORE           L04,#22
 d5e1:  0d 09 01                STORE           L08,#01
 d5e4:  4a 04 0c 51             TEST_ATTR       L03,#0c [FALSE] d5f7
 d5e8:  51 04 24 00             GET_PROP        L03,#24 -> -(SP)
 d5ec:  c1 8f 00 ff ff 47       JE              (SP)+,#ffff [FALSE] d5f7
 d5f2:  41 09 01 00 4b          JE              L08,#01 [FALSE] d640
 d5f7:  51 04 24 00             GET_PROP        L03,#24 -> -(SP)
 d5fb:  c1 8f 00 ff ff d7       JE              (SP)+,#ffff [TRUE] d616
 d601:  e0 27 2d 28 04 24 00    CALL_VS         b4a0 (L03,#24) -> -(SP)
 d608:  a0 00 cd                JZ              (SP)+ [TRUE] d616
 d60b:  0d 08 01                STORE           L07,#01
 d60e:  4c 04 19                CLEAR_ATTR      L03,#19
 d611:  96 06                   DEC             L05
 d613:  8c 00 2c                JUMP            d640
 d616:  e0 2b 7e 93 04 05 07    CALL_VS         1fa4c (L03,L04) -> L06
 d61d:  a0 07 80 21             JZ              L06 [TRUE] d640
 d621:  bb                      NEW_LINE        
 d622:  f9 2b 2d 08 04 05       CALL_VN         b420 (L03,L04)
 d628:  0d 08 01                STORE           L07,#01
 d62b:  4c 04 19                CLEAR_ATTR      L03,#19
 d62e:  96 06                   DEC             L05
 d630:  4a 04 14 4e             TEST_ATTR       L03,#14 [FALSE] d640
 d634:  a2 04 00 42             GET_CHILD       L03 -> -(SP) [FALSE] d638
 d638:  a0 00 c7                JZ              (SP)+ [TRUE] d640
 d63b:  da 2f 35 40 04          CALL_2N         d500 (L03)
 d640:  8c 00 12                JUMP            d653
 d643:  4a 04 14 4e             TEST_ATTR       L03,#14 [FALSE] d653
 d647:  a2 04 00 42             GET_CHILD       L03 -> -(SP) [FALSE] d64b
 d64b:  a0 00 c7                JZ              (SP)+ [TRUE] d653
 d64e:  da 2f 35 40 04          CALL_2N         d500 (L03)
 d653:  a1 04 04 bf 00          GET_SIBLING     L03 -> L03 [TRUE] d556
 d658:  a0 06 43                JZ              L05 [FALSE] d65c
 d65b:  b1                      RFALSE          
 d65c:  a0 02 dc                JZ              L01 [TRUE] d679
 d65f:  bb                      NEW_LINE        
 d660:  41 08 01 45             JE              L07,#01 [FALSE] d667
 d664:  2d 02 03                STORE           L01,L02
 d667:  ad 02                   PRINT_PADDR     L01
 d669:  b2 ...                  PRINT           " "
 d66c:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] d670
 d670:  f9 23 30 0a 00 0a d8    CALL_VN         c028 ((SP)+,#0ad8)
 d677:  ab 06                   RET             L05
 d679:  41 08 01 4c             JE              L07,#01 [FALSE] d687
 d67d:  f9 16 37 98 20 05 01    CALL_VN         de60 (#20,#05,L00)
 d684:  8c 00 09                JUMP            d68e
 d687:  f9 16 37 98 20 06 01    CALL_VN         de60 (#20,#06,L00)
 d68e:  b0                      RTRUE           

Routine d690, 0 locals
    Action routine for:
        "brief"

 d691:  0d 26 01                STORE           G16,#01
 d694:  8d 80 7e                PRINT_PADDR     S001
 d697:  da 1f 37 98 1d          CALL_2N         de60 (#1d)
 d69c:  b0                      RTRUE           

Routine d6a0, 0 locals
    Action routine for:
        "long"

 d6a1:  0d 26 02                STORE           G16,#02
 d6a4:  8d 80 7e                PRINT_PADDR     S001
 d6a7:  da 1f 37 98 1e          CALL_2N         de60 (#1e)
 d6ac:  b0                      RTRUE           

Routine d6b0, 0 locals
    Action routine for:
        "short"

 d6b1:  0d 26 03                STORE           G16,#03
 d6b4:  8d 80 7e                PRINT_PADDR     S001
 d6b7:  da 1f 37 98 1f          CALL_2N         de60 (#1f)
 d6bc:  b0                      RTRUE           

Routine d6c0, 1 local

 d6c1:  2d 01 10                STORE           L00,G00
 d6c4:  61 01 28 d8             JE              L00,G18 [TRUE] d6de
 d6c8:  51 01 1e 00             GET_PROP        L00,#1e -> -(SP)
 d6cc:  a0 00 c8                JZ              (SP)+ [TRUE] d6d5
 d6cf:  f9 27 2d 08 01 1e       CALL_VN         b420 (L00,#1e)
 d6d5:  8f 7d 7e                CALL_1N         1f5f8
 d6d8:  8f 32 3c                CALL_1N         c8f0
 d6db:  2d 28 01                STORE           G18,L00
 d6de:  b0                      RTRUE           

Routine d6e0, 0 locals

 d6e1:  4a 10 18 d1             TEST_ATTR       G00,#18 [TRUE] d6f4
 d6e5:  4b 10 18                SET_ATTR        G00,#18
 d6e8:  4a 10 12 4a             TEST_ATTR       G00,#12 [FALSE] d6f4
 d6ec:  54 1d 01 1d             ADD             G0d,#01 -> G0d
 d6f0:  54 20 01 20             ADD             G10,#01 -> G10
 d6f4:  b0                      RTRUE           

Routine d6f8, 3 locals
    Action routine for:
        "l"

 d6f9:  a3 22 00                GET_PARENT      G12 -> -(SP)
 d6fc:  a0 00 49                JZ              (SP)+ [FALSE] d706
 d6ff:  d9 1f 2f 89 0a 00       CALL_2S         be24 (#0a) -> -(SP)
 d705:  b8                      RET_POPPED      
 d706:  8f 35 b0                CALL_1N         d6c0
 d709:  bb                      NEW_LINE        
 d70a:  f1 7f 02                SET_TEXT_STYLE  BOLDFACE
 d70d:  da 2f 2f 27 10          CALL_2N         bc9c (G00)
 d712:  f1 7f 00                SET_TEXT_STYLE  ROMAN
 d715:  a3 22 02                GET_PARENT      G12 -> L01
 d718:  41 10 13 80 31          JE              G00,#13 [TRUE] d74c
 d71d:  61 02 10 80 2c          JE              L01,G00 [TRUE] d74c
 d722:  4a 02 14 51             TEST_ATTR       L01,#14 [FALSE] d735
 d726:  b2 ...                  PRINT           " ("
 d729:  f9 17 37 98 20 01       CALL_VN         de60 (#20,#01)
 d72f:  b2 ...                  PRINT           " "
 d732:  8c 00 0e                JUMP            d741
 d735:  b2 ...                  PRINT           " ("
 d738:  f9 17 37 98 20 02       CALL_VN         de60 (#20,#02)
 d73e:  b2 ...                  PRINT           " "
 d741:  da 2f 2f 17 02          CALL_2N         bc5c (L01)
 d746:  b2 ...                  PRINT           ")"
 d749:  2d 03 02                STORE           L02,L01
 d74c:  41 27 01 53             JE              G17,#01 [FALSE] d761
 d750:  b2 ...                  PRINT           " ("
 d753:  f9 17 37 98 20 03       CALL_VN         de60 (#20,#03)
 d759:  b2 ...                  PRINT           " "
 d75c:  aa 22                   PRINT_OBJ       G12
 d75e:  b2 ...                  PRINT           ")"
 d761:  bb                      NEW_LINE        
 d762:  42 26 03 00 38          JL              G16,#03 [FALSE] d79d
 d767:  41 01 01 4b             JE              L00,#01 [FALSE] d774
 d76b:  41 26 02 c7             JE              G16,#02 [TRUE] d774
 d76f:  4a 10 18 80 2b          TEST_ATTR       G00,#18 [TRUE] d79d
 d774:  51 10 24 00             GET_PROP        G00,#24 -> -(SP)
 d778:  c1 8f 00 ff ff cb       JE              (SP)+,#ffff [TRUE] d787
 d77e:  f9 27 2d 28 10 24       CALL_VN         b4a0 (G00,#24)
 d784:  8c 00 18                JUMP            d79d
 d787:  51 10 23 00             GET_PROP        G00,#23 -> -(SP)
 d78b:  a0 00 4b                JZ              (SP)+ [FALSE] d797
 d78e:  f9 1b 2f 89 0b 10       CALL_VN         be24 (#0b,G00)
 d794:  8c 00 08                JUMP            d79d
 d797:  f9 27 2d 08 10 23       CALL_VN         b420 (G00,#23)
 d79d:  61 03 10 c7             JE              L02,G00 [TRUE] d7a6
 d7a1:  da 2f 35 4c 10          CALL_2N         d530 (G00)
 d7a6:  da 2f 35 4c 03          CALL_2N         d530 (L02)
 d7ab:  8f 7d 7f                CALL_1N         1f5fc
 d7ae:  8f 35 b8                CALL_1N         d6e0
 d7b1:  0d 37 20                STORE           G27,#20
 d7b4:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 d7b8:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 d7bc:  b0                      RTRUE           

Routine d7c0, 1 local
    Action routine for:
        "l at noun"
        "check scope = [parse $4a8d]"
        "check noun"
        "read noun"

 d7c1:  41 10 13 4a             JE              G00,#13 [FALSE] d7cd
 d7c5:  e0 17 37 98 21 01 00    CALL_VS         de60 (#21,#01) -> -(SP)
 d7cc:  b8                      RET_POPPED      
 d7cd:  51 3a 23 01             GET_PROP        G2a,#23 -> L00
 d7d1:  a0 01 00 22             JZ              L00 [FALSE] d7f5
 d7d5:  4a 3a 04 49             TEST_ATTR       G2a,#04 [FALSE] d7e0
 d7d9:  f9 1b 2c b1 23 3a       CALL_VN         b2c4 (#23,G2a)
 d7df:  b0                      RTRUE           
 d7e0:  4a 3a 15 4a             TEST_ATTR       G2a,#15 [FALSE] d7ec
 d7e4:  f9 16 37 98 21 03 3a    CALL_VN         de60 (#21,#03,G2a)
 d7eb:  b1                      RFALSE          
 d7ec:  e0 16 37 98 21 02 3a 00 CALL_VS         de60 (#21,#02,G2a) -> -(SP)
 d7f4:  b8                      RET_POPPED      
 d7f5:  f9 27 2d 08 3a 23       CALL_VN         b420 (G2a,#23)
 d7fb:  4a 3a 15 49             TEST_ATTR       G2a,#15 [FALSE] d806
 d7ff:  f9 16 37 98 21 03 3a    CALL_VN         de60 (#21,#03,G2a)
 d806:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 d80a:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 d80e:  b0                      RTRUE           

Routine d810, 0 locals
    Action routine for:
        "l under noun"

 d811:  41 10 13 4a             JE              G00,#13 [FALSE] d81d
 d815:  e0 17 37 98 22 01 00    CALL_VS         de60 (#22,#01) -> -(SP)
 d81c:  b8                      RET_POPPED      
 d81d:  f9 17 37 98 22 02       CALL_VN         de60 (#22,#02)
 d823:  b0                      RTRUE           

Routine d824, 2 locals
    Action routine for:
        "l inside / in / into / through noun"
        "search noun"

 d825:  41 10 13 4b             JE              G00,#13 [FALSE] d832
 d829:  e0 16 37 98 23 01 3a 00 CALL_VS         de60 (#23,#01,G2a) -> -(SP)
 d831:  b8                      RET_POPPED      
 d832:  a2 3a 00 42             GET_CHILD       G2a -> -(SP) [FALSE] d836
 d836:  e9 7f 01                PULL            L00
 d839:  a0 01 ce                JZ              L00 [TRUE] d848
 d83c:  4a 01 03 c5             TEST_ATTR       L00,#03 [TRUE] d843
 d840:  0d 02 01                STORE           L01,#01
 d843:  a1 01 01 bf f6          GET_SIBLING     L00 -> L00 [TRUE] d83c
 d848:  4a 3a 14 57             TEST_ATTR       G2a,#14 [FALSE] d861
 d84c:  a0 02 4b                JZ              L01 [FALSE] d858
 d84f:  e0 16 37 98 23 02 3a 00 CALL_VS         de60 (#23,#02,G2a) -> -(SP)
 d857:  b8                      RET_POPPED      
 d858:  e0 16 37 98 23 03 3a 00 CALL_VS         de60 (#23,#03,G2a) -> -(SP)
 d860:  b8                      RET_POPPED      
 d861:  4a 3a 04 cb             TEST_ATTR       G2a,#04 [TRUE] d86e
 d865:  e0 16 37 98 23 04 3a 00 CALL_VS         de60 (#23,#04,G2a) -> -(SP)
 d86d:  b8                      RET_POPPED      
 d86e:  4a 3a 17 cf             TEST_ATTR       G2a,#17 [TRUE] d87f
 d872:  4a 3a 0e cb             TEST_ATTR       G2a,#0e [TRUE] d87f
 d876:  e0 16 37 98 23 05 3a 00 CALL_VS         de60 (#23,#05,G2a) -> -(SP)
 d87e:  b8                      RET_POPPED      
 d87f:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 d883:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 d887:  0d ff 00                STORE           Gef,#00
 d88a:  a2 3a 00 49             GET_CHILD       G2a -> -(SP) [FALSE] d895
 d88e:  95 ff                   INC             Gef
 d890:  a1 00 00 bf fb          GET_SIBLING     (SP)+ -> -(SP) [TRUE] d88e
 d895:  e9 7f fe                PULL            Gee
 d898:  2d 01 ff                STORE           L00,Gef
 d89b:  a0 02 4b                JZ              L01 [FALSE] d8a7
 d89e:  e0 16 37 98 23 06 3a 00 CALL_VS         de60 (#23,#06,G2a) -> -(SP)
 d8a6:  b8                      RET_POPPED      
 d8a7:  f9 16 37 98 23 07 3a    CALL_VN         de60 (#23,#07,G2a)
 d8ae:  b0                      RTRUE           

Routine d8b0, 0 locals
    Action routine for:
        "draw noun with held"
        "unlock noun with held"

 d8b1:  4a 3a 0a cb             TEST_ATTR       G2a,#0a [TRUE] d8be
 d8b5:  e0 16 37 98 24 01 3a 00 CALL_VS         de60 (#24,#01,G2a) -> -(SP)
 d8bd:  b8                      RET_POPPED      
 d8be:  4a 3a 0b cb             TEST_ATTR       G2a,#0b [TRUE] d8cb
 d8c2:  e0 16 37 98 24 02 3a 00 CALL_VS         de60 (#24,#02,G2a) -> -(SP)
 d8ca:  b8                      RET_POPPED      
 d8cb:  51 3a 14 00             GET_PROP        G2a,#14 -> -(SP)
 d8cf:  61 00 3b cb             JE              (SP)+,G2b [TRUE] d8dc
 d8d3:  e0 16 37 98 24 03 3b 00 CALL_VS         de60 (#24,#03,G2b) -> -(SP)
 d8db:  b8                      RET_POPPED      
 d8dc:  4c 3a 0b                CLEAR_ATTR      G2a,#0b
 d8df:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 d8e3:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 d8e7:  41 3c 01 c1             JE              G2c,#01 [TRUE] RTRUE
 d8eb:  f9 16 37 98 24 04 3a    CALL_VN         de60 (#24,#04,G2a)
 d8f2:  b0                      RTRUE           

Routine d8f4, 0 locals
    Action routine for:
        "lock noun with held"

 d8f5:  4a 3a 0a cb             TEST_ATTR       G2a,#0a [TRUE] d902
 d8f9:  e0 16 37 98 25 01 3a 00 CALL_VS         de60 (#25,#01,G2a) -> -(SP)
 d901:  b8                      RET_POPPED      
 d902:  4a 3a 0b 4b             TEST_ATTR       G2a,#0b [FALSE] d90f
 d906:  e0 16 37 98 25 02 3a 00 CALL_VS         de60 (#25,#02,G2a) -> -(SP)
 d90e:  b8                      RET_POPPED      
 d90f:  4a 3a 0e 4b             TEST_ATTR       G2a,#0e [FALSE] d91c
 d913:  e0 16 37 98 25 03 3a 00 CALL_VS         de60 (#25,#03,G2a) -> -(SP)
 d91b:  b8                      RET_POPPED      
 d91c:  51 3a 14 00             GET_PROP        G2a,#14 -> -(SP)
 d920:  61 00 3b cb             JE              (SP)+,G2b [TRUE] d92d
 d924:  e0 16 37 98 25 04 3b 00 CALL_VS         de60 (#25,#04,G2b) -> -(SP)
 d92c:  b8                      RET_POPPED      
 d92d:  4b 3a 0b                SET_ATTR        G2a,#0b
 d930:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 d934:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 d938:  41 3c 01 c1             JE              G2c,#01 [TRUE] RTRUE
 d93c:  f9 16 37 98 25 05 3a    CALL_VN         de60 (#25,#05,G2a)
 d943:  b0                      RTRUE           

Routine d944, 0 locals
    Action routine for:
        "rotate noun on"
        "rotate on noun"
        "switch noun"
        "switch noun on"
        "switch on noun"

 d945:  4a 3a 15 cb             TEST_ATTR       G2a,#15 [TRUE] d952
 d949:  e0 16 37 98 26 01 3a 00 CALL_VS         de60 (#26,#01,G2a) -> -(SP)
 d951:  b8                      RET_POPPED      
 d952:  4a 3a 0d 4b             TEST_ATTR       G2a,#0d [FALSE] d95f
 d956:  e0 16 37 98 26 02 3a 00 CALL_VS         de60 (#26,#02,G2a) -> -(SP)
 d95e:  b8                      RET_POPPED      
 d95f:  4b 3a 0d                SET_ATTR        G2a,#0d
 d962:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 d966:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 d96a:  41 3c 01 c1             JE              G2c,#01 [TRUE] RTRUE
 d96e:  f9 16 37 98 26 03 3a    CALL_VN         de60 (#26,#03,G2a)
 d975:  b0                      RTRUE           

Routine d978, 0 locals
    Action routine for:
        "close off noun"
        "rotate noun off"
        "rotate off noun"
        "switch noun off"
        "switch off noun"

 d979:  4a 3a 15 cb             TEST_ATTR       G2a,#15 [TRUE] d986
 d97d:  e0 16 37 98 27 01 3a 00 CALL_VS         de60 (#27,#01,G2a) -> -(SP)
 d985:  b8                      RET_POPPED      
 d986:  4a 3a 0d cb             TEST_ATTR       G2a,#0d [TRUE] d993
 d98a:  e0 16 37 98 27 02 3a 00 CALL_VS         de60 (#27,#02,G2a) -> -(SP)
 d992:  b8                      RET_POPPED      
 d993:  4c 3a 0d                CLEAR_ATTR      G2a,#0d
 d996:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 d99a:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 d99e:  41 3c 01 c1             JE              G2c,#01 [TRUE] RTRUE
 d9a2:  f9 16 37 98 27 03 3a    CALL_VN         de60 (#27,#03,G2a)
 d9a9:  b0                      RTRUE           

Routine d9ac, 0 locals
    Action routine for:
        "draw noun"

 d9ad:  4a 3a 0f cb             TEST_ATTR       G2a,#0f [TRUE] d9ba
 d9b1:  e0 16 37 98 28 01 3a 00 CALL_VS         de60 (#28,#01,G2a) -> -(SP)
 d9b9:  b8                      RET_POPPED      
 d9ba:  4a 3a 0b 4b             TEST_ATTR       G2a,#0b [FALSE] d9c7
 d9be:  e0 16 37 98 28 02 3a 00 CALL_VS         de60 (#28,#02,G2a) -> -(SP)
 d9c6:  b8                      RET_POPPED      
 d9c7:  4a 3a 0e 4b             TEST_ATTR       G2a,#0e [FALSE] d9d4
 d9cb:  e0 16 37 98 28 03 3a 00 CALL_VS         de60 (#28,#03,G2a) -> -(SP)
 d9d3:  b8                      RET_POPPED      
 d9d4:  4b 3a 0e                SET_ATTR        G2a,#0e
 d9d7:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 d9db:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 d9df:  41 3c 01 c1             JE              G2c,#01 [TRUE] RTRUE
 d9e3:  4a 3a 04 56             TEST_ATTR       G2a,#04 [FALSE] d9fb
 d9e7:  4a 3a 17 d2             TEST_ATTR       G2a,#17 [TRUE] d9fb
 d9eb:  a2 3a 00 42             GET_CHILD       G2a -> -(SP) [FALSE] d9ef
 d9ef:  a0 00 cb                JZ              (SP)+ [TRUE] d9fb
 d9f2:  e0 16 37 98 28 04 3a 00 CALL_VS         de60 (#28,#04,G2a) -> -(SP)
 d9fa:  b8                      RET_POPPED      
 d9fb:  f9 16 37 98 28 05 3a    CALL_VN         de60 (#28,#05,G2a)
 da02:  b0                      RTRUE           

Routine da04, 0 locals
    Action routine for:
        "close noun"
        "close up"

 da05:  4a 3a 0f cb             TEST_ATTR       G2a,#0f [TRUE] da12
 da09:  e0 16 37 98 29 01 3a 00 CALL_VS         de60 (#29,#01,G2a) -> -(SP)
 da11:  b8                      RET_POPPED      
 da12:  4a 3a 0e cb             TEST_ATTR       G2a,#0e [TRUE] da1f
 da16:  e0 16 37 98 29 02 3a 00 CALL_VS         de60 (#29,#02,G2a) -> -(SP)
 da1e:  b8                      RET_POPPED      
 da1f:  4c 3a 0e                CLEAR_ATTR      G2a,#0e
 da22:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 da26:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 da2a:  41 3c 01 c1             JE              G2c,#01 [TRUE] RTRUE
 da2e:  f9 16 37 98 29 03 3a    CALL_VN         de60 (#29,#03,G2a)
 da35:  b0                      RTRUE           

Routine da38, 0 locals
    Action routine for:
        "carry off ATTRIBUTE(26)"
        "remove held"
        "disrobe held"

 da39:  4a 3a 1a cb             TEST_ATTR       G2a,#1a [TRUE] da46
 da3d:  e0 16 37 98 2a 01 3a 00 CALL_VS         de60 (#2a,#01,G2a) -> -(SP)
 da45:  b8                      RET_POPPED      
 da46:  4c 3a 1a                CLEAR_ATTR      G2a,#1a
 da49:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 da4d:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 da51:  41 3c 01 c1             JE              G2c,#01 [TRUE] RTRUE
 da55:  f9 16 37 98 2a 02 3a    CALL_VN         de60 (#2a,#02,G2a)
 da5c:  b0                      RTRUE           

Routine da60, 0 locals
    Action routine for:
        "don held"
        "put on held"

 da61:  4a 3a 02 cb             TEST_ATTR       G2a,#02 [TRUE] da6e
 da65:  e0 16 37 98 2b 01 3a 00 CALL_VS         de60 (#2b,#01,G2a) -> -(SP)
 da6d:  b8                      RET_POPPED      
 da6e:  a3 3a 00                GET_PARENT      G2a -> -(SP)
 da71:  61 00 22 cb             JE              (SP)+,G12 [TRUE] da7e
 da75:  e0 16 37 98 2b 02 3a 00 CALL_VS         de60 (#2b,#02,G2a) -> -(SP)
 da7d:  b8                      RET_POPPED      
 da7e:  4a 3a 1a 4b             TEST_ATTR       G2a,#1a [FALSE] da8b
 da82:  e0 16 37 98 2b 03 3a 00 CALL_VS         de60 (#2b,#03,G2a) -> -(SP)
 da8a:  b8                      RET_POPPED      
 da8b:  4b 3a 1a                SET_ATTR        G2a,#1a
 da8e:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 da92:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 da96:  41 3c 01 c1             JE              G2c,#01 [TRUE] RTRUE
 da9a:  f9 16 37 98 2b 04 3a    CALL_VN         de60 (#2b,#04,G2a)
 daa1:  b0                      RTRUE           

Routine daa4, 0 locals
    Action routine for:
        "eat held"

 daa5:  4a 3a 06 cb             TEST_ATTR       G2a,#06 [TRUE] dab2
 daa9:  e0 16 37 98 2c 01 3a 00 CALL_VS         de60 (#2c,#01,G2a) -> -(SP)
 dab1:  b8                      RET_POPPED      
 dab2:  a9 3a                   REMOVE_OBJ      G2a
 dab4:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 dab8:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 dabc:  41 3c 01 c1             JE              G2c,#01 [TRUE] RTRUE
 dac0:  f9 16 37 98 2c 02 3a    CALL_VN         de60 (#2c,#02,G2a)
 dac7:  b0                      RTRUE           

Routine dac8, 0 locals
    Action routine for:
        "y"

 dac9:  da 1f 37 98 2d          CALL_2N         de60 (#2d)
 dace:  b0                      RTRUE           

Routine dad0, 0 locals
    Action routine for:
        "no"

 dad1:  da 1f 37 98 2e          CALL_2N         de60 (#2e)
 dad6:  b0                      RTRUE           

Routine dad8, 0 locals
    Action routine for:
        "burn noun"
        "burn noun with held"

 dad9:  f9 16 37 98 2f 01 3a    CALL_VN         de60 (#2f,#01,G2a)
 dae0:  b0                      RTRUE           

Routine dae4, 0 locals
    Action routine for:
        "pray"

 dae5:  f9 16 37 98 30 01 3a    CALL_VN         de60 (#30,#01,G2a)
 daec:  b0                      RTRUE           

Routine daf0, 0 locals
    Action routine for:
        "awake"
        "awake up"

 daf1:  f9 16 37 98 31 01 3a    CALL_VN         de60 (#31,#01,G2a)
 daf8:  b0                      RTRUE           

Routine dafc, 0 locals
    Action routine for:
        "awake creature"
        "awake creature up"
        "awake up creature"

 dafd:  e0 27 2c fc 3a 32 00    CALL_VS         b3f0 (G2a,#32) -> -(SP)
 db04:  a0 00 40                JZ              (SP)+ [FALSE] RFALSE
 db07:  f9 16 37 98 32 01 3a    CALL_VN         de60 (#32,#01,G2a)
 db0e:  b0                      RTRUE           

Routine db10, 0 locals
    Action routine for:
        "think"

 db11:  f9 16 37 98 34 01 3a    CALL_VN         de60 (#34,#01,G2a)
 db18:  b0                      RTRUE           

Routine db1c, 0 locals
    Action routine for:
        "smell"
        "smell noun"

 db1d:  f9 16 37 98 35 01 3a    CALL_VN         de60 (#35,#01,G2a)
 db24:  b0                      RTRUE           

Routine db28, 0 locals
    Action routine for:
        "hear"
        "hear noun"
        "hear to noun"

 db29:  f9 16 37 98 36 01 3a    CALL_VN         de60 (#36,#01,G2a)
 db30:  b0                      RTRUE           

Routine db34, 0 locals
    Action routine for:
        "taste noun"

 db35:  f9 16 37 98 37 01 3a    CALL_VN         de60 (#37,#01,G2a)
 db3c:  b0                      RTRUE           

Routine db40, 0 locals
    Action routine for:
        "dig noun"
        "dig noun with held"

 db41:  f9 16 37 98 39 01 3a    CALL_VN         de60 (#39,#01,G2a)
 db48:  b0                      RTRUE           

Routine db4c, 0 locals
    Action routine for:
        "chop noun"

 db4d:  f9 16 37 98 3a 01 3a    CALL_VN         de60 (#3a,#01,G2a)
 db54:  b0                      RTRUE           

Routine db58, 0 locals
    Action routine for:
        "hop"
        "hop over"
        "hop across"

 db59:  f9 16 37 98 3b 01 3a    CALL_VN         de60 (#3b,#01,G2a)
 db60:  b0                      RTRUE           

Routine db64, 0 locals
    Action routine for:
        "hop over noun"
        "hop to noun"
        "hop over to noun"
        "hop across to noun"
        "hop onto noun"

 db65:  f9 16 37 98 3c 01 3a    CALL_VN         de60 (#3c,#01,G2a)
 db6c:  b0                      RTRUE           

Routine db70, 0 locals
    Action routine for:
        "attach noun"
        "attach noun to noun"

 db71:  f9 16 37 98 3d 01 3a    CALL_VN         de60 (#3d,#01,G2a)
 db78:  b0                      RTRUE           

Routine db7c, 0 locals
    Action routine for:
        "drink noun"

 db7d:  f9 16 37 98 3e 01 3a    CALL_VN         de60 (#3e,#01,G2a)
 db84:  b0                      RTRUE           

Routine db88, 0 locals
    Action routine for:
        "fill noun"

 db89:  f9 16 37 98 3f 01 3a    CALL_VN         de60 (#3f,#01,G2a)
 db90:  b0                      RTRUE           

Routine db94, 0 locals
    Action routine for:
        "sorry"

 db95:  f9 16 37 98 40 01 3a    CALL_VN         de60 (#40,#01,G2a)
 db9c:  b0                      RTRUE           

Routine dba0, 0 locals
    Action routine for:
        "damn"
        "damn topic"

 dba1:  f9 16 37 98 41 01 3a    CALL_VN         de60 (#41,#01,G2a)
 dba8:  b0                      RTRUE           

Routine dbac, 0 locals
    Action routine for:
        "bother"
        "bother topic"

 dbad:  f9 16 37 98 42 01 3a    CALL_VN         de60 (#42,#01,G2a)
 dbb4:  b0                      RTRUE           

Routine dbb8, 0 locals
    Action routine for:
        "dive"

 dbb9:  f9 16 37 98 44 01 3a    CALL_VN         de60 (#44,#01,G2a)
 dbc0:  b0                      RTRUE           

Routine dbc4, 0 locals
    Action routine for:
        "swing noun"
        "swing on noun"

 dbc5:  f9 16 37 98 45 01 3a    CALL_VN         de60 (#45,#01,G2a)
 dbcc:  b0                      RTRUE           

Routine dbd0, 0 locals
    Action routine for:
        "blow held"

 dbd1:  f9 16 37 98 46 01 3a    CALL_VN         de60 (#46,#01,G2a)
 dbd8:  b0                      RTRUE           

Routine dbdc, 0 locals
    Action routine for:
        "clean noun"

 dbdd:  f9 16 37 98 47 01 3a    CALL_VN         de60 (#47,#01,G2a)
 dbe4:  b0                      RTRUE           

Routine dbe8, 0 locals
    Action routine for:
        "adjust noun"

 dbe9:  f9 16 37 98 48 01 3a    CALL_VN         de60 (#48,#01,G2a)
 dbf0:  b0                      RTRUE           

Routine dbf4, 0 locals
    Action routine for:
        "adjust noun to special"

 dbf5:  f9 16 37 98 49 01 3a    CALL_VN         de60 (#49,#01,G2a)
 dbfc:  b0                      RTRUE           

Routine dc00, 0 locals
    Action routine for:
        "shake"

 dc01:  f9 16 37 98 4a 01 3a    CALL_VN         de60 (#4a,#01,G2a)
 dc08:  b0                      RTRUE           

Routine dc0c, 0 locals
    Action routine for:
        "buy noun"

 dc0d:  f9 16 37 98 55 01 3a    CALL_VN         de60 (#55,#01,G2a)
 dc14:  b0                      RTRUE           

Routine dc18, 0 locals
    Action routine for:
        "sing"

 dc19:  f9 16 37 98 56 01 3a    CALL_VN         de60 (#56,#01,G2a)
 dc20:  b0                      RTRUE           

Routine dc24, 0 locals
    Action routine for:
        "climb noun"
        "climb up / over noun"

 dc25:  f9 16 37 98 57 01 3a    CALL_VN         de60 (#57,#01,G2a)
 dc2c:  b0                      RTRUE           

Routine dc30, 0 locals
    Action routine for:
        "nap"

 dc31:  f9 16 37 98 59 01 3a    CALL_VN         de60 (#59,#01,G2a)
 dc38:  b0                      RTRUE           

Routine dc3c, 0 locals
    Action routine for:
        "l up topic in noun"
        "consult noun about topic"
        "consult noun on topic"
        "read about topic in noun"
        "read topic in noun"

 dc3d:  f9 16 37 98 5a 01 3a    CALL_VN         de60 (#5a,#01,G2a)
 dc44:  b0                      RTRUE           

Routine dc48, 0 locals
    Action routine for:
        "feel noun"

 dc49:  61 3a 22 4b             JE              G2a,G12 [FALSE] dc56
 dc4d:  e0 16 37 98 38 03 3a 00 CALL_VS         de60 (#38,#03,G2a) -> -(SP)
 dc55:  b8                      RET_POPPED      
 dc56:  4a 3a 00 4b             TEST_ATTR       G2a,#00 [FALSE] dc63
 dc5a:  e0 16 37 98 38 01 3a 00 CALL_VS         de60 (#38,#01,G2a) -> -(SP)
 dc62:  b8                      RET_POPPED      
 dc63:  f9 16 37 98 38 02 3a    CALL_VN         de60 (#38,#02,G2a)
 dc6a:  b0                      RTRUE           

Routine dc6c, 0 locals
    Action routine for:
        "shake noun"

 dc6d:  a3 3a 00                GET_PARENT      G2a -> -(SP)
 dc70:  61 00 22 cb             JE              (SP)+,G12 [TRUE] dc7d
 dc74:  e0 16 37 98 4b 01 3a 00 CALL_VS         de60 (#4b,#01,G2a) -> -(SP)
 dc7c:  b8                      RET_POPPED      
 dc7d:  f9 16 37 98 4b 02 3a    CALL_VN         de60 (#4b,#02,G2a)
 dc84:  b0                      RTRUE           

Routine dc88, 0 locals
    Action routine for:
        "drag noun"

 dc89:  4a 3a 13 4b             TEST_ATTR       G2a,#13 [FALSE] dc96
 dc8d:  e0 16 37 98 4c 01 3a 00 CALL_VS         de60 (#4c,#01,G2a) -> -(SP)
 dc95:  b8                      RET_POPPED      
 dc96:  4a 3a 11 4b             TEST_ATTR       G2a,#11 [FALSE] dca3
 dc9a:  e0 16 37 98 4c 02 3a 00 CALL_VS         de60 (#4c,#02,G2a) -> -(SP)
 dca2:  b8                      RET_POPPED      
 dca3:  4a 3a 00 4b             TEST_ATTR       G2a,#00 [FALSE] dcb0
 dca7:  e0 16 37 98 4c 04 3a 00 CALL_VS         de60 (#4c,#04,G2a) -> -(SP)
 dcaf:  b8                      RET_POPPED      
 dcb0:  f9 16 37 98 4c 03 3a    CALL_VN         de60 (#4c,#03,G2a)
 dcb7:  b0                      RTRUE           

Routine dcb8, 0 locals
    Action routine for:
        "clear noun"

 dcb9:  4a 3a 13 4b             TEST_ATTR       G2a,#13 [FALSE] dcc6
 dcbd:  e0 16 37 98 4d 01 3a 00 CALL_VS         de60 (#4d,#01,G2a) -> -(SP)
 dcc5:  b8                      RET_POPPED      
 dcc6:  4a 3a 11 4b             TEST_ATTR       G2a,#11 [FALSE] dcd3
 dcca:  e0 16 37 98 4d 02 3a 00 CALL_VS         de60 (#4d,#02,G2a) -> -(SP)
 dcd2:  b8                      RET_POPPED      
 dcd3:  4a 3a 00 4b             TEST_ATTR       G2a,#00 [FALSE] dce0
 dcd7:  e0 16 37 98 4c 04 3a 00 CALL_VS         de60 (#4c,#04,G2a) -> -(SP)
 dcdf:  b8                      RET_POPPED      
 dce0:  f9 16 37 98 4d 03 3a    CALL_VN         de60 (#4d,#03,G2a)
 dce7:  b0                      RTRUE           

Routine dce8, 0 locals
    Action routine for:
        "rotate noun"

 dce9:  4a 3a 13 4b             TEST_ATTR       G2a,#13 [FALSE] dcf6
 dced:  e0 16 37 98 4e 01 3a 00 CALL_VS         de60 (#4e,#01,G2a) -> -(SP)
 dcf5:  b8                      RET_POPPED      
 dcf6:  4a 3a 11 4b             TEST_ATTR       G2a,#11 [FALSE] dd03
 dcfa:  e0 16 37 98 4e 02 3a 00 CALL_VS         de60 (#4e,#02,G2a) -> -(SP)
 dd02:  b8                      RET_POPPED      
 dd03:  4a 3a 00 4b             TEST_ATTR       G2a,#00 [FALSE] dd10
 dd07:  e0 16 37 98 4c 04 3a 00 CALL_VS         de60 (#4c,#04,G2a) -> -(SP)
 dd0f:  b8                      RET_POPPED      
 dd10:  f9 16 37 98 4e 03 3a    CALL_VN         de60 (#4e,#03,G2a)
 dd17:  b0                      RTRUE           

Routine dd18, 0 locals
    Action routine for:
        "wait"

 dd19:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
 dd1d:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 dd21:  f9 16 37 98 58 01 3a    CALL_VN         de60 (#58,#01,G2a)
 dd28:  b0                      RTRUE           

Routine dd2c, 0 locals
    Action routine for:
        "clear noun noun"

 dd2d:  f9 16 37 98 4f 01 3a    CALL_VN         de60 (#4f,#01,G2a)
 dd34:  b0                      RTRUE           

Routine dd38, 1 local

 dd39:  a3 3b 00                GET_PARENT      G2b -> -(SP)
 dd3c:  41 00 06 cb             JE              (SP)+,#06 [TRUE] dd49
 dd40:  e0 16 37 98 4f 02 3a 00 CALL_VS         de60 (#4f,#02,G2a) -> -(SP)
 dd48:  b8                      RET_POPPED      
 dd49:  c1 97 3b 0f 10 4b       JE              G2b,#0f,#10 [FALSE] dd58
 dd4f:  e0 16 37 98 4f 03 3a 00 CALL_VS         de60 (#4f,#03,G2a) -> -(SP)
 dd57:  b8                      RET_POPPED      
 dd58:  8f 2c ef                CALL_1N         b3bc
 dd5b:  2d 01 3a                STORE           L00,G2a
 dd5e:  6e 01 22                INSERT_OBJ      L00,G12
 dd61:  f9 1b 2c b1 1c 3b       CALL_VN         b2c4 (#1c,G2b)
 dd67:  41 10 13 48             JE              G00,#13 [FALSE] dd71
 dd6b:  6e 01 25                INSERT_OBJ      L00,G15
 dd6e:  8c 00 05                JUMP            dd74
 dd71:  6e 01 10                INSERT_OBJ      L00,G00
 dd74:  b0                      RTRUE           

Routine dd78, 0 locals
    Action routine for:
        "squash noun"

 dd79:  4a 3a 00 4b             TEST_ATTR       G2a,#00 [FALSE] dd86
 dd7d:  e0 16 37 98 50 01 3a 00 CALL_VS         de60 (#50,#01,G2a) -> -(SP)
 dd85:  b8                      RET_POPPED      
 dd86:  f9 16 37 98 50 02 3a    CALL_VN         de60 (#50,#02,G2a)
 dd8d:  b0                      RTRUE           

Routine dd90, 0 locals
    Action routine for:
        "discard held at / against / on / onto noun"
        "discard noun over noun"
        "discard noun to noun"
        "discard noun noun = [parse $7d67]"
        "pour noun over noun"
        "pour noun on noun"
        "pour noun onto noun"

 dd91:  43 3b 01 58             JG              G2b,#01 [FALSE] ddab
 dd95:  cd 4f 37 10 02          STORE           G27,#1002
 dd9a:  e0 27 2d 28 3b 04 00    CALL_VS         b4a0 (G2b,#04) -> -(SP)
 dda1:  a0 00 c6                JZ              (SP)+ [TRUE] dda8
 dda4:  0d 37 51                STORE           G27,#51
 dda7:  b0                      RTRUE           
 dda8:  0d 37 51                STORE           G27,#51
 ddab:  4a 3b 00 ca             TEST_ATTR       G2b,#00 [TRUE] ddb7
 ddaf:  e0 17 37 98 51 01 00    CALL_VS         de60 (#51,#01) -> -(SP)
 ddb6:  b8                      RET_POPPED      
 ddb7:  e0 27 2c fc 3b 51 00    CALL_VS         b3f0 (G2b,#51) -> -(SP)
 ddbe:  a0 00 40                JZ              (SP)+ [FALSE] RFALSE
 ddc1:  f9 16 37 98 51 02 3a    CALL_VN         de60 (#51,#02,G2a)
 ddc8:  b0                      RTRUE           

Routine ddcc, 0 locals
    Action routine for:
        "attack noun"

 ddcd:  4a 3a 00 4c             TEST_ATTR       G2a,#00 [FALSE] dddb
 ddd1:  e0 27 2c fc 3a 43 00    CALL_VS         b3f0 (G2a,#43) -> -(SP)
 ddd8:  a0 00 40                JZ              (SP)+ [FALSE] RFALSE
 dddb:  f9 16 37 98 43 01 3a    CALL_VN         de60 (#43,#01,G2a)
 dde2:  b0                      RTRUE           

Routine dde4, 0 locals
    Action routine for:
        "embrace creature"

 dde5:  e0 27 2c fc 3a 33 00    CALL_VS         b3f0 (G2a,#33) -> -(SP)
 ddec:  a0 00 40                JZ              (SP)+ [FALSE] RFALSE
 ddef:  61 3a 22 4b             JE              G2a,G12 [FALSE] ddfc
 ddf3:  e0 16 37 98 38 03 3a 00 CALL_VS         de60 (#38,#03,G2a) -> -(SP)
 ddfb:  b8                      RET_POPPED      
 ddfc:  f9 16 37 98 33 01 3a    CALL_VN         de60 (#33,#01,G2a)
 de03:  b0                      RTRUE           

Routine de04, 0 locals
    Action routine for:
        

 de05:  e0 27 2c fc 3b 53 00    CALL_VS         b3f0 (G2b,#53) -> -(SP)
 de0c:  a0 00 40                JZ              (SP)+ [FALSE] RFALSE
 de0f:  f9 16 37 98 53 01 3a    CALL_VN         de60 (#53,#01,G2a)
 de16:  b0                      RTRUE           

Routine de18, 0 locals
    Action routine for:
        "tell creature about topic"

 de19:  61 3a 22 4b             JE              G2a,G12 [FALSE] de26
 de1d:  e0 16 37 98 52 01 3a 00 CALL_VS         de60 (#52,#01,G2a) -> -(SP)
 de25:  b8                      RET_POPPED      
 de26:  e0 27 2c fc 3a 52 00    CALL_VS         b3f0 (G2a,#52) -> -(SP)
 de2d:  a0 00 40                JZ              (SP)+ [FALSE] RFALSE
 de30:  f9 16 37 98 52 02 3a    CALL_VN         de60 (#52,#02,G2a)
 de37:  b0                      RTRUE           

Routine de38, 0 locals
    Action routine for:
        "ask creature about topic"

 de39:  e0 27 2c fc 3a 54 00    CALL_VS         b3f0 (G2a,#54) -> -(SP)
 de40:  a0 00 40                JZ              (SP)+ [FALSE] RFALSE
 de43:  f9 16 37 98 54 01 3a    CALL_VN         de60 (#54,#01,G2a)
 de4a:  b0                      RTRUE           

Routine de4c, 0 locals
    Action routine for:
        "ask creature for noun"

 de4d:  61 3a 22 48             JE              G2a,G12 [FALSE] de57
 de51:  da 1f 2c b1 0e          CALL_2N         b2c4 (#0e)
 de56:  b0                      RTRUE           
 de57:  f9 06 37 98 10 03 01 3a CALL_VN         de60 (#1003,#01,G2a)
 de5f:  b0                      RTRUE           

Routine de60, 4 locals

 de61:  2d 04 f9                STORE           L03,Ge9
 de64:  2d f9 01                STORE           Ge9,L00
 de67:  a0 02 45                JZ              L01 [FALSE] de6d
 de6a:  0d 02 01                STORE           L01,#01
 de6d:  f9 2b 37 9e 02 03       CALL_VN         de78 (L01,L02)
 de73:  2d f9 04                STORE           Ge9,L03
 de76:  b0                      RTRUE           

Routine de78, 3 locals

 de79:  2d 03 37                STORE           L02,G27
 de7c:  2d 35 01                STORE           G25,L00
 de7f:  2d 36 02                STORE           G26,L01
 de82:  2d 37 f9                STORE           G27,Ge9
 de85:  e0 17 2d 28 17 04 00    CALL_VS         b4a0 (#17,#04) -> -(SP)
 de8c:  a0 00 c6                JZ              (SP)+ [TRUE] de93
 de8f:  2d 37 03                STORE           G27,L02
 de92:  b1                      RFALSE          
 de93:  2d 37 03                STORE           G27,L02
 de96:  f9 2b 19 d9 01 02       CALL_VN         6764 (L00,L01)
 de9c:  b0                      RTRUE           

Routine dea0, 2 locals

 dea1:  c1 8f 40 10 04 45       JE              G30,#1004 [FALSE] deaa
 dea7:  8b ff fe                RET             #fffe
 deaa:  88 2a 81 02             CALL_1S         aa04 -> L01
 deae:  e0 2b 2a 45 fb 02 00    CALL_VS         a914 (Geb,L01) -> -(SP)
 deb5:  41 00 01 47             JE              (SP)+,#01 [FALSE] debe
 deb9:  95 01                   INC             L00
 debb:  8c 00 16                JUMP            ded2
 debe:  c1 83 02 60 a1 61 ee 4c JE              L01,"treasures","valuables"
[FALSE] ded0
 dec6:  cd 4f 40 10 05          STORE           G30,#1005
 decb:  95 01                   INC             L00
 decd:  8c 00 04                JUMP            ded2
 ded0:  ab 01                   RET             L00
 ded2:  8c ff d7                JUMP            deaa

Routine ded8, 2 locals

 ded9:  c1 8f 40 10 04 45       JE              G30,#1004 [FALSE] dee2
 dedf:  8b ff fe                RET             #fffe
 dee2:  88 2a 81 02             CALL_1S         aa04 -> L01
 dee6:  e0 2b 2a 45 fb 02 00    CALL_VS         a914 (Geb,L01) -> -(SP)
 deed:  41 00 01 47             JE              (SP)+,#01 [FALSE] def6
 def1:  95 01                   INC             L00
 def3:  8c 00 22                JUMP            df16
 def6:  c1 80 02 4c 61 4e 23 59 c6 cc 
                               JE              L01,"edibles","foods","rations"
[TRUE] df0a
 df00:  c1 80 02 4e 1a 59 3f 4e 2c 4c 
                               JE             
L01,"food","provision","foodstuff" [FALSE] df14
 df0a:  cd 4f 40 10 05          STORE           G30,#1005
 df0f:  95 01                   INC             L00
 df11:  8c 00 04                JUMP            df16
 df14:  ab 01                   RET             L00
 df16:  8c ff cb                JUMP            dee2

Routine df1c, 0 locals

 df1d:  41 2e 01 00 2b          JE              G1e,#01 [FALSE] df4b
 df22:  b2 ...                  PRINT           "some provisions - "
 df31:  48 29 08 29             OR              G19,#08 -> G19
 df35:  49 29 01 00             AND             G19,#01 -> -(SP)
 df39:  a0 00 c6                JZ              (SP)+ [TRUE] df40
 df3c:  55 29 01 29             SUB             G19,#01 -> G19
 df40:  49 29 02 00             AND             G19,#02 -> -(SP)
 df44:  a0 00 c6                JZ              (SP)+ [TRUE] df4b
 df47:  55 29 02 29             SUB             G19,#02 -> G19
 df4b:  b1                      RFALSE          

Routine df4c, 0 locals

 df4d:  41 f9 23 00 27          JE              Ge9,#23 [FALSE] df77
 df52:  b3 ...                  PRINT_RET       "You must say what to look at
through the telescope."
 df77:  41 f9 16 00 76          JE              Ge9,#16 [FALSE] dff0
 df7c:  c1 8f 3b 00 25 00 6f    JE              G2b,#0025 [FALSE] dff0
 df83:  b3 ...                  PRINT_RET       ""Super!"

She squints into the telescope, but picks the wrong end, and then hands it back
with a half-puzzled look. "Marvellous invention, what?""
 dff0:  b1                      RFALSE          

Routine dff4, 0 locals
    Action routine for:
        "l at noun in noun"
        "l at noun with noun"
        "l at noun using noun"
        "l at noun through noun"
        "check noun in noun"
        "check noun through noun"

 dff5:  41 3b 1b c9             JE              G2b,#1b [TRUE] e000
 dff9:  f9 1b 2c b1 23 3b       CALL_VN         b2c4 (#23,G2b)
 dfff:  b0                      RTRUE           
 e000:  41 3a 1b 00 21          JE              G2a,#1b [FALSE] e024
 e005:  b3 ...                  PRINT_RET       "The telescope is, fortunately,
straight."
 e024:  51 3a 33 00             GET_PROP        G2a,#33 -> -(SP)
 e028:  c1 8f 00 ff ff 00 28    JE              (SP)+,#ffff [FALSE] e055
 e02f:  da 2f 2f 1f 3a          CALL_2N         bc7c (G2a)
 e034:  b3 ...                  PRINT_RET       " is too close to you to make
that worthwhile."
 e055:  b2 ...                  PRINT           "You raise the brass telescope
expertly to your eye"
 e078:  42 92 04 00 3b          JL              G82,#04 [FALSE] e0b6
 e07d:  b2 ...                  PRINT           ", a dashing gesture which
never fails to make Amilia clap her hands with pleasure"
 e0b6:  b2 ...                  PRINT           ". "
 e0b9:  51 3a 33 00             GET_PROP        G2a,#33 -> -(SP)
 e0bd:  ad 00                   PRINT_PADDR     (SP)+
 e0bf:  bb                      NEW_LINE        
 e0c0:  b0                      RTRUE           

Routine e0c4, 0 locals

 e0c5:  c1 8f 10 00 29 80 55    JE              G00,#0029 [TRUE] e11f
 e0cc:  b3 ...                  PRINT_RET       "The procession of elephants
shuffles on, their enormous soles slapping onto the flagstones with a dull,
regular boom."
 e11f:  b3 ...                  PRINT_RET       "The whole procession of
elephants and carts is halted, and there is much commotion."

Routine e15c, 0 locals

 e15d:  b3 ...                  PRINT_RET       "The soldiers can't hear your
orders, which is just as well, since (no matter how polite everybody is) even
the Lady Amilia carries more authority around here than you do."

Routine e1d8, 0 locals

 e1d9:  c1 97 f9 5e 21 43       JE              Ge9,#5e,#21 [FALSE] e1e0
 e1df:  b1                      RFALSE          
 e1e0:  b3 ...                  PRINT_RET       "The soldiers are well out of
reach."

Routine e1fc, 0 locals

 e1fd:  41 f9 0f 00 21          JE              Ge9,#0f [FALSE] e221
 e202:  b3 ...                  PRINT_RET       "Wrong way round. The elephant
takes you."
 e221:  41 f9 10 59             JE              Ge9,#10 [FALSE] e23c
 e225:  b3 ...                  PRINT_RET       "Will you tell it, or shall I?"
 e23c:  41 f9 22 59             JE              Ge9,#22 [FALSE] e257
 e240:  b3 ...                  PRINT_RET       "You can't see round that far."
 e257:  41 f9 32 00 67          JE              Ge9,#32 [FALSE] e2c1
 e25c:  42 92 05 00 4b          JL              G82,#05 [FALSE] e2aa
 e261:  b3 ...                  PRINT_RET       "It's not that easy. The
elephant's sensibilities are hardened by years out in the Northland Veldt."
 e2aa:  b3 ...                  PRINT_RET       "The elephant's already awake."
 e2c1:  b1                      RFALSE          

Routine e2c4, 0 locals

 e2c5:  41 f9 1c 49             JE              Ge9,#1c [FALSE] e2d0
 e2c9:  f9 1b 2c b1 1c 3a       CALL_VN         b2c4 (#1c,G2a)
 e2cf:  b0                      RTRUE           
 e2d0:  b3 ...                  PRINT_RET       "The elephant seems not to be
voice-trained."

Routine e2f4, 0 locals

 e2f5:  41 f9 33 00 27          JE              Ge9,#33 [FALSE] e31f
 e2fa:  b3 ...                  PRINT_RET       "That would be indecorous in
front of Lady Amilia."
 e31f:  41 f9 43 00 2d          JE              Ge9,#43 [FALSE] e34f
 e324:  b3 ...                  PRINT_RET       "The elephant's hide is
impervious to virtually all attack."
 e34f:  41 f9 16 00 67          JE              Ge9,#16 [FALSE] e3b9
 e354:  c1 8f 3a 00 28 00 33    JE              G2a,#0028 [FALSE] e38c
 e35b:  b3 ...                  PRINT_RET       "Perhaps elephants drink
sherbet, but his mouth is far too far away."
 e38c:  b2 ...                  PRINT           "It's hard to see what the
elephant would want with "
 e3b1:  da 2f 2f 09 3a          CALL_2N         bc24 (G2a)
 e3b6:  b3 ...                  PRINT_RET       "."
 e3b9:  41 f9 51 00 ca          JE              Ge9,#51 [FALSE] e486
 e3be:  42 92 04 00 41          JL              G82,#04 [FALSE] e402
 e3c3:  b3 ...                  PRINT_RET       "Under Amilia's constant if
vague gaze, you dare not do anything so contrary to custom."
 e402:  c1 8f 3a 00 28 c9       JE              G2a,#0028 [TRUE] e40f
 e408:  f9 1b 2c b1 43 fb       CALL_VN         b2c4 (#43,Geb)
 e40e:  b0                      RTRUE           
 e40f:  89 00 28                REMOVE_OBJ      "sherbet"
 e412:  0d 92 05                STORE           G82,#05
 e415:  95 1d                   INC             G0d
 e417:  b3 ...                  PRINT_RET       "As the icy liquid cascades
over the elephant's great head, he bucks and jumps, shaking his ears,
thoroughly waking up. You have his attention now all right."
 e486:  b1                      RFALSE          

Routine e488, 0 locals

 e489:  41 f9 1a 49             JE              Ge9,#1a [FALSE] e494
 e48d:  f9 17 2c b1 1c 10       CALL_VN         b2c4 (#1c,#10)
 e493:  b0                      RTRUE           
 e494:  b1                      RFALSE          

Routine e498, 0 locals

 e499:  c1 97 f9 21 23 00 59    JE              Ge9,#21,#23 [FALSE] e4f7
 e4a0:  b3 ...                  PRINT_RET       "The basket has the usual
complement of cushions, but if there were anything among them you'd have bumped
into it hours ago."
 e4f7:  41 f9 22 5b             JE              Ge9,#22 [FALSE] e514
 e4fb:  b3 ...                  PRINT_RET       "Under the basket is an
elephant."
 e514:  41 f9 1c 01 ea          JE              Ge9,#1c [FALSE] e701
 e519:  41 3a 10 01 76          JE              G2a,#10 [FALSE] e692
 e51e:  41 92 02 80 35          JE              G82,#02 [TRUE] e556
 e523:  b2 ...                  PRINT           "It wouldn't be safe to
dismount while the procession is under way.
"
 e554:  9b 02                   RET             #02
 e556:  cb 1f 00 25 08          SET_ATTR        "Lady Amilia",#08
 e55b:  b2 ...                  PRINT           ""Oh, we're only stopping a
moment," says Amilia, "so anyway, did I tell you about the time my Daddy got
arrested by Customs, imagine, actually Arrested, my Daddy, arrested, all over
that silly misunderstanding about those paintings, and anybody could see they
weren't really valuable, so of course we had to invade their Kingdom thingy..."

[Since she did tell you, at least twice, the rest of this anecdote is omitted.]
"
 e690:  9b 02                   RET             #02
 e692:  b2 ...                  PRINT           "The train of elephants are
roped together and led by expert guides. Besides which, you have no idea how to
steer an elephant. Using his head, perhaps?
"
 e6ff:  9b 02                   RET             #02
 e701:  b1                      RFALSE          

Routine e704, 0 locals

 e705:  b3 ...                  PRINT_RET       "Your elephant's trunk is too
far forward to reach from the basket."

Routine e734, 0 locals

 e735:  c1 97 f9 4c 4e 03 63    JE              Ge9,#4c,#4e [FALSE] ea9d
 e73c:  42 92 04 00 85          JL              G82,#04 [FALSE] e7c4
 e741:  b3 ...                  PRINT_RET       "Amilia looks down and giggles
as she stops your wrist. "We're not supposed to stroke the animals, silly!"

Her eyes are practically never off you - it's really extremely annoying."
 e7c4:  42 92 05 00 93          JL              G82,#05 [FALSE] e85a
 e7c9:  b3 ...                  PRINT_RET       "Amilia is too preoccupied to
notice you doing this, giving the elephant's ear a good tug. But he must be
half-asleep on his feet, after this long trudging day, and he shows no signs
yet of waking up for you."
 e85a:  c1 8f 3a 00 24 01 68    JE              G2a,#0024 [FALSE] e9c7
 e861:  b2 ...                  PRINT           "The elephant gives a huge
trumpet and begins to charge left down into the meadowland! The basket is
tossed around at high speed as you and Amilia are taken for a nerve-wracking
ride.

By the time the bearers have got him under control again, the whole procession
has slewn out of line and is all over the valley. Casks are overturned,
cartwheels have rolled loose, axles have broken, the animals are restive, and
darkness is coming on. The expedition will have to stop here for the night.
"
 e9b6:  0d 92 06                STORE           G82,#06
 e9b9:  95 1d                   INC             G0d
 e9bb:  99 1a                   REMOVE_OBJ      "fedora hat"
 e9bd:  da 0f 2d 6e 00 25       CALL_2N         b5b8 (#0025)
 e9c3:  8f 42 6c                CALL_1N         109b0
 e9c6:  b0                      RTRUE           
 e9c7:  0d 23 01                STORE           G13,#01
 e9ca:  b3 ...                  PRINT_RET       "The elephant gives a huge
trumpet and begins to charge right, straight into the stone wall!  The basket
careers along with him, suddenly lurches onto his side and is rapidly crushed
between an elephant and a hard place.

Hopefully, you and Amilia will be sent to different departments of the
afterlife."
 ea9d:  c1 97 f9 0f 11 57       JE              Ge9,#0f,#11 [FALSE] eab8
 eaa3:  b3 ...                  PRINT_RET       "They look firmly anchored."
 eab8:  c1 8f f9 10 02 4a       JE              Ge9,#1002 [FALSE] eac6
 eabe:  f9 19 2c b1 51 3a 1f    CALL_VN         b2c4 (#51,G2a,#1f)
 eac5:  b0                      RTRUE           
 eac6:  b1                      RFALSE          

Routine eac8, 0 locals

 eac9:  42 92 04 00 da          JL              G82,#04 [FALSE] eba6
 eace:  b2 ...                  PRINT           "The terrifying thing about the
Lady Amilia, a young woman who would grace any court ball, is that even after
an entire day like this she shows no sign whatever of being bored"
 eb47:  c6 2f 00 27 fb 00 57    JIN             "The Guide For Travellers To
The Lower Northlands and Surrounding Provinces",Geb [FALSE] eba3
 eb4e:  b3 ...                  PRINT_RET       ". Even now she is reading the
guide book with apparent concentration, though you can't ever remember her
turning a page."
 eba3:  b3 ...                  PRINT_RET       "."
 eba6:  b3 ...                  PRINT_RET       "The Lady Amilia is so troubled
by the bird of paradise hovering around her hat, pecking at the wax fruit on
it, that she's forgotten all about your odd behaviour."

Routine ec1c, 0 locals

 ec1d:  c1 97 f9 43 51 00 6d    JE              Ge9,#43,#51 [FALSE] ec8f
 ec24:  b3 ...                  PRINT_RET       "Oh, if only you could. A pity
that the resulting incident could plunge an entire continent into war, with the
mighty Empire crushing your tiny Duchy."
 ec8f:  41 f9 33 00 2b          JE              Ge9,#33 [FALSE] ecbd
 ec94:  b3 ...                  PRINT_RET       "Thank heavens, an Ambassador's
duties only go so far."
 ecbd:  41 f9 16 01 36          JE              Ge9,#16 [FALSE] edf6
 ecc2:  c1 8f 3a 00 28 00 67    JE              G2a,#0028 [FALSE] ed2e
 ecc9:  b3 ...                  PRINT_RET       ""Thanks, but Mama said never
to take a second sherbet at sunset."

You file away this piece of wisdom, in case it might ever come in handy."
 ed2e:  41 3a 1a 00 5f          JE              G2a,#1a [FALSE] ed90
 ed33:  b3 ...                  PRINT_RET       ""That would never do!" says
Amilia with some spirit. "Ladies of the Empire never wear fedora hats, whatever
the provocation!""
 ed90:  66 3a 22 00 62          JIN             G2a,G12 [FALSE] edf5
 ed95:  6e 3a fb                INSERT_OBJ      G2a,Geb
 ed98:  c1 8f 3a 00 27 00 45    JE              G2a,#0027 [FALSE] ede2
 ed9f:  b3 ...                  PRINT_RET       ""Super!"  Silently, she begins
reading it again, her lips slightly moving as she does so."
 ede2:  b2 ...                  PRINT           ""Super, "
 edeb:  da 2f 2f 09 3a          CALL_2N         bc24 (G2a)
 edf0:  b3 ...                  PRINT_RET       "!""
 edf5:  b1                      RFALSE          
 edf6:  41 f9 52 57             JE              Ge9,#52 [FALSE] ee0f
 edfa:  b3 ...                  PRINT_RET       ""Is that so? Heavens!""
 ee0f:  41 f9 54 00 2d          JE              Ge9,#54 [FALSE] ee3f
 ee14:  b3 ...                  PRINT_RET       "What Amilia doesn't know would
fill a whole game in itself."
 ee3f:  b1                      RFALSE          

Routine ee40, 0 locals

 ee41:  41 f9 2a 00 53          JE              Ge9,#2a [FALSE] ee97
 ee46:  c1 8f 3a 00 26 00 35    JE              G2a,#0026 [FALSE] ee80
 ee4d:  b3 ...                  PRINT_RET       "In the Empire, ladies of high
birth do not remove their hats in public."
 ee80:  b2 ...                  PRINT           "She isn't wearing "
 ee8f:  da 2f 2f 17 3a          CALL_2N         bc5c (G2a)
 ee94:  b3 ...                  PRINT_RET       "."
 ee97:  41 f9 2b 00 49          JE              Ge9,#2b [FALSE] eee3
 ee9c:  41 3a 1a 00 25          JE              G2a,#1a [FALSE] eec4
 eea1:  b3 ...                  PRINT_RET       "Social customs prevent her
from exchanging hats."
 eec4:  b2 ...                  PRINT           "But she wouldn't look chic in
"
 eedb:  da 2f 2f 17 3a          CALL_2N         bc5c (G2a)
 eee0:  b3 ...                  PRINT_RET       "."
 eee3:  41 f9 16 01 05          JE              Ge9,#16 [FALSE] efeb
 eee8:  61 3b 22 dd             JE              G2b,G12 [TRUE] ef07
 eeec:  b3 ...                  PRINT_RET       "Amilia considers this an odd
request."
 ef07:  c1 8f 3a 00 26 00 35    JE              G2a,#0026 [FALSE] ef41
 ef0e:  b3 ...                  PRINT_RET       "In the Empire, ladies of high
birth do not remove their hats in public."
 ef41:  6e 3a 22                INSERT_OBJ      G2a,G12
 ef44:  c1 8f 3a 00 27 00 77    JE              G2a,#0027 [FALSE] efc0
 ef4b:  b3 ...                  PRINT_RET       ""It's a jolly super guide
book!" says Amilia gratuitously, as she kindly passes it over. Fortified by
years of training in the diplomatic service, you thank her."
 efc0:  b2 ...                  PRINT           "Amilia passes over "
 efcf:  da 2f 2f 17 3a          CALL_2N         bc5c (G2a)
 efd4:  b3 ...                  PRINT_RET       ", and you thank her
graciously."
 efeb:  41 f9 1c 00 66          JE              Ge9,#1c [FALSE] f054
 eff0:  41 92 02 49             JE              G82,#02 [FALSE] effb
 eff4:  f9 17 2c b1 1c 10       CALL_VN         b2c4 (#1c,#10)
 effa:  b0                      RTRUE           
 effb:  b3 ...                  PRINT_RET       ""Jolly dangerous! But these
bearer fellows know what they're about. Just hang on tight, we'll get to the
Capital soon.""
 f054:  41 f9 5a 00 a3          JE              Ge9,#5a [FALSE] f0fa
 f059:  c1 8f 3a 00 27 00 9b    JE              G2a,#0027 [FALSE] f0f9
 f060:  66 3a 22 59             JIN             G2a,G12 [FALSE] f07b
 f064:  b3 ...                  PRINT_RET       ""But you've got the guide!""
 f07b:  b2 ...                  PRINT           "Amilia turns the pages,
frowning prettily with concentration.

""
 f0ac:  88 3d 18 00             CALL_1S         f460 -> -(SP)
 f0b0:  41 00 01 00 27          JE              (SP)+,#01 [FALSE] f0da
 f0b5:  b3 ...                  PRINT_RET       "
Is that any help? It's all very complicated!""
 f0da:  b3 ...                  PRINT_RET       "Can't find that!" she says,
distressed."
 f0f9:  b1                      RFALSE          
 f0fa:  c1 97 f9 2d 2e 00 41    JE              Ge9,#2d,#2e [FALSE] f140
 f101:  b3 ...                  PRINT_RET       "Amilia really wouldn't be
Amilia if she took any notice of the answers to her questions."
 f140:  41 f9 0e 59             JE              Ge9,#0e [FALSE] f15b
 f144:  b3 ...                  PRINT_RET       "Amilia has nothing hidden
away."
 f15b:  c1 8f f9 10 09 00 23    JE              Ge9,#1009 [FALSE] f183
 f162:  b3 ...                  PRINT_RET       "Amilia is baffled, but then
she so often is."
 f183:  b3 ...                  PRINT_RET       "Amilia thinks she disapproves
of that."

Routine f1a0, 2 locals

 f1a1:  41 92 02 00 8a          JE              G82,#02 [FALSE] f22e
 f1a6:  4a fb 08 80 85          TEST_ATTR       Geb,#08 [TRUE] f22e
 f1ab:  e7 7f 03 00             RANDOM          #03 -> -(SP)
 f1af:  41 00 01 00 7c          JE              (SP)+,#01 [FALSE] f22e
 f1b4:  4b fb 08                SET_ATTR        Geb,#08
 f1b7:  b3 ...                  PRINT_RET       "
"Don't fret," says Amilia, "we're only stopping a moment, it's just a silly old
routine I suppose, I mean they can see we aren't smugglers or anything...""
 f22e:  c1 97 37 4a 4b 00 51    JE              G27,#4a,#4b [FALSE] f284
 f235:  b3 ...                  PRINT_RET       "
Amilia makes a much more regal wave, guessing that you must be acknowledging
the salute of some passing peasant."
 f284:  c1 97 37 58 0e cb       JE              G27,#58,#0e [TRUE] f293
 f28a:  e7 7f 03 00             RANDOM          #03 -> -(SP)
 f28e:  41 00 01 01 6b          JE              (SP)+,#01 [FALSE] f3fc
 f293:  41 92 04 59             JE              G82,#04 [FALSE] f2ae
 f297:  b2 ...                  PRINT           "
"
 f29a:  cf 1f 3a 93 00 00       LOADW           #3a93,#00 -> -(SP)
 f2a0:  e7 bf 00 00             RANDOM          (SP)+ -> -(SP)
 f2a4:  cf 2f 3a 93 00 00       LOADW           #3a93,(SP)+ -> -(SP)
 f2aa:  ad 00                   PRINT_PADDR     (SP)+
 f2ac:  bb                      NEW_LINE        
 f2ad:  b0                      RTRUE           
 f2ae:  cf 1f 3a 33 00 00       LOADW           #3a33,#00 -> -(SP)
 f2b4:  61 00 94 c0             JE              (SP)+,G84 [TRUE] RFALSE
 f2b8:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
 f2bc:  54 00 01 01             ADD             (SP)+,#01 -> L00
 f2c0:  e3 9b fb 29 01          PUT_PROP        Geb,#29,L00
 f2c5:  2d ff 01                STORE           Gef,L00
 f2c8:  41 ff 01 00 a4          JE              Gef,#01 [FALSE] f36f
 f2cd:  e7 7f 04 00             RANDOM          #04 -> -(SP)
 f2d1:  e9 7f ff                PULL            Gef
 f2d4:  41 ff 01 56             JE              Gef,#01 [FALSE] f2ec
 f2d8:  b2 ...                  PRINT           "
"Did I ever tell "
 f2e9:  8c 00 54                JUMP            f33e
 f2ec:  41 ff 02 52             JE              Gef,#02 [FALSE] f300
 f2f0:  b2 ...                  PRINT           "
"Have I told "
 f2fd:  8c 00 40                JUMP            f33e
 f300:  41 ff 03 58             JE              Gef,#03 [FALSE] f31a
 f304:  b2 ...                  PRINT           "
"I'm sure I've told "
 f317:  8c 00 26                JUMP            f33e
 f31a:  41 ff 04 00 21          JE              Gef,#04 [FALSE] f33e
 f31f:  b2 ...                  PRINT           "
"Surely I can't be the first to tell "
 f33e:  b2 ...                  PRINT           "you "
 f343:  95 94                   INC             G84
 f345:  0d 93 00                STORE           G83,#00
 f348:  a0 93 55                JZ              G83 [FALSE] f35e
 f34b:  cf 1f 3a 33 00 00       LOADW           #3a33,#00 -> -(SP)
 f351:  e7 bf 00 02             RANDOM          (SP)+ -> L01
 f355:  cf 2f 3a 33 02 93       LOADW           #3a33,L01 -> G83
 f35b:  8c ff ec                JUMP            f348
 f35e:  e1 27 3a 33 02 00       STOREW          #3a33,L01,#00
 f364:  ad 93                   PRINT_PADDR     G83
 f366:  b3 ...                  PRINT_RET       "?...""
 f36f:  41 ff 02 00 28          JE              Gef,#02 [FALSE] f39a
 f374:  b2 ...                  PRINT           "
"...such a "
 f381:  cf 1f 3a 63 00 00       LOADW           #3a63,#00 -> -(SP)
 f387:  e7 bf 00 00             RANDOM          (SP)+ -> -(SP)
 f38b:  cf 2f 3a 63 00 00       LOADW           #3a63,(SP)+ -> -(SP)
 f391:  ad 00                   PRINT_PADDR     (SP)+
 f393:  b3 ...                  PRINT_RET       "...""
 f39a:  41 ff 03 00 24          JE              Gef,#03 [FALSE] f3c1
 f39f:  b2 ...                  PRINT           "
"..."
 f3a8:  cf 1f 3a 7f 00 00       LOADW           #3a7f,#00 -> -(SP)
 f3ae:  e7 bf 00 00             RANDOM          (SP)+ -> -(SP)
 f3b2:  cf 2f 3a 7f 00 00       LOADW           #3a7f,(SP)+ -> -(SP)
 f3b8:  ad 00                   PRINT_PADDR     (SP)+
 f3ba:  b3 ...                  PRINT_RET       "...""
 f3c1:  41 ff 04 00 38          JE              Gef,#04 [FALSE] f3fc
 f3c6:  e3 97 fb 29 00          PUT_PROP        Geb,#29,#00
 f3cb:  b2 ...                  PRINT           "
Amilia fans herself"
 f3dc:  c6 2f 00 27 fb 53       JIN             "The Guide For Travellers To
The Lower Northlands and Surrounding Provinces",Geb [FALSE] f3f3
 f3e2:  b3 ...                  PRINT_RET       " with the guide book."
 f3f3:  b3 ...                  PRINT_RET       " vaguely."
 f3fc:  b1                      RFALSE          

Routine f400, 0 locals

 f401:  41 f9 5a 00 58          JE              Ge9,#5a [FALSE] f45c
 f406:  46 fb 25 5f             JIN             Geb,"Lady Amilia" [FALSE] f427
 f40a:  b3 ...                  PRINT_RET       "Amilia has the guide book at
the moment."
 f427:  88 3d 18 00             CALL_1S         f460 -> -(SP)
 f42b:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
 f42f:  b3 ...                  PRINT_RET       "Annoyingly there's no index
and you can't find what you want."
 f45c:  b1                      RFALSE          

Routine f460, 1 local

 f461:  2d 81 4c                STORE           G71,G3c
 f464:  88 2a 81 01             CALL_1S         aa04 -> L00
 f468:  c1 8f 01 5f 6f 46       JE              L00,"the" [FALSE] f472
 f46e:  88 2a 81 01             CALL_1S         aa04 -> L00
 f472:  2d ff 01                STORE           Gef,L00
 f475:  c1 80 ff 54 53 55 4f 5b ac 00 29 
                               JE              Gef,"me","myself","self" [FALSE]
f4a7
 f480:  b3 ...                  PRINT_RET       "You are not yet a permanent
feature of the Northlands."
 f4a7:  c1 8f ff 44 c0 00 29    JE              Gef,"academy" [FALSE] f4d5
 f4ae:  b3 ...                  PRINT_RET       "The foremost assemblage of
scholars in the world today."
 f4d5:  c1 8f ff 45 3e 00 4f    JE              Gef,"amilia" [FALSE] f529
 f4dc:  b3 ...                  PRINT_RET       "The Amilia family tree is
highly complex due to a very large number of cousin marriages down the
generations."
 f529:  c1 80 ff 46 c1 4d 42 62 ab cd 
                               JE              Gef,"boreal","falls","waterfall"
[TRUE] f53e
 f533:  c1 80 ff 4d 30 62 ab 5a 32 00 95 
                               JE              Gef,"fall","waterfall","river"
[FALSE] f5d1
 f53e:  b3 ...                  PRINT_RET       "The Empire's major river is
the Boreal, which undergoes spectacular falls near the heart of the old Empire.
Our wise men calculate that twenty thousand hogs-heads of water tumble over the
edge, every second."
 f5d1:  c1 8f ff 46 70 00 49    JE              Gef,"bird" [FALSE] f61f
 f5d8:  88 2a 81 00             CALL_1S         aa04 -> -(SP)
 f5dc:  c1 8f 00 56 54 51       JE              (SP)+,"of" [FALSE] f5f1
 f5e2:  88 2a 81 00             CALL_1S         aa04 -> -(SP)
 f5e6:  c1 8f 00 57 86 47       JE              (SP)+,"paradise" [FALSE] f5f1
 f5ec:  88 3f b8 00             CALL_1S         fee0 -> -(SP)
 f5f0:  b8                      RET_POPPED      
 f5f1:  b3 ...                  PRINT_RET       "The Northland Empire supports
a rich and varied avian life."
 f61c:  8c 08 c1                JUMP            fede
 f61f:  c1 80 ff 46 ca 48 dd 47 ea 00 4d 
                               JE              Gef,"borealis","city","capital"
[FALSE] f675
 f62a:  b3 ...                  PRINT_RET       "Borealis, capital of the
Northland Empire, is the greatest city in the entire world, without exception."
 f675:  c1 8f ff 49 1c 00 79    JE              Gef,"clotspinn" [FALSE] f6f3
 f67c:  b3 ...                  PRINT_RET       "The entry on Clotspinner looks
awfully threadbare, as though it was edited down at the last moment. It records
him as a savant and former member of the Imperial Academy."
 f6f3:  c1 83 ff 49 49 4a c3 00 4f 
                               JE              Gef,"collioure","delta" [FALSE]
f749
 f6fc:  b3 ...                  PRINT_RET       "The lush, verdant farmlands of
the Collioure Delta set a glorious table before every subject of the Empire."
 f749:  c1 80 ff 4a 84 58 8b 51 44 01 4f 
                               JE              Gef,"customs","post","house"
[FALSE] f8a1
 f754:  b3 ...                  PRINT_RET       "It was an innovation of
Emperor Titus IV may-he-prosper to raise extra revenue by charging customs
duties on all goods being imported or exported. Unfortunately, since at that
time he owned every land in the continent, there were no frontiers. With
typical flair, he invented some, and inland customs posts remain a unique
feature of our Empire to this day.

Many of these buildings are fine examples of early Empire architecture, and
have remained untouched for centuries."
 f8a1:  c1 8f ff 4b da 00 6d    JE              Gef,"duchy" [FALSE] f913
 f8a8:  b3 ...                  PRINT_RET       "The Duchy is a minor
provincial state in the south, noted only for the natives' tolerable ability
with gadgets, cogs, wheels and other vulgar machines."
 f913:  c1 83 ff 4c cd 52 d0 00 59 
                               JE              Gef,"empress","lavinia" [FALSE]
f973
 f91c:  b3 ...                  PRINT_RET       "The current Empress, Lavinia I
may-she-prosper, has ruled for four and a half years, instituting many glorious
reforms."
 f973:  c1 8f ff 51 17 00 71    JE              Gef,"hornet" [FALSE] f9e9
 f97a:  b3 ...                  PRINT_RET       "There are puzzling legends of
giant hornet creatures striking fear into the population. Modern historians
feel that this is merely a symbol of deep insecurity."
 f9e9:  c1 83 ff 51 71 63 7a 00 57 
                               JE              Gef,"hunting","woods" [FALSE]
fa47
 f9f2:  b3 ...                  PRINT_RET       "The hunting woods beside the
neck of Watling Street are reserved to the Crown, and all entrance is strictly
forbidden."
 fa47:  c1 8f ff 53 18 01 01    JE              Gef,"leblank" [FALSE] fb4d
 fa4e:  b3 ...                  PRINT_RET       "History records little of the
great weaver Leblank, undisputed master of his craft. Some authorities even
think he might have been two people in collaboration.

[Isn't this just the kind of time-wasting exercise that the Empress was hoping
you'd take up, when she gave you this book? Long-gone weavers can't possibly
matter as much as your secret mission!]"
 fb4d:  c1 8f ff 54 ad 00 65    JE              Gef,"meteor" [FALSE] fbb7
 fb54:  b3 ...                  PRINT_RET       "Spreading rumours about
meteors or other portents in the sky leads to popular unrest, and is prohibited
on pain of twenty years' imprisonment."
 fbb7:  c1 8f ff 5c 0f 00 5d    JE              Gef,"sherbet" [FALSE] fc19
 fbbe:  b3 ...                  PRINT_RET       "A delightful fruit cocktail. A
popular superstition holds that a gentleman is fated to marry the first lady he
drinks sherbet with."
 fc19:  c1 80 ff 5d 14 56 81 56 78 c9 
                               JE              Gef,"snake","oil-snak","oil"
[TRUE] fc2a
 fc23:  c1 8f ff 56 8a 00 65    JE              Gef,"oilsnake" [FALSE] fc8d
 fc2a:  b3 ...                  PRINT_RET       "The oil snake infests the
foundations of many Northland houses. It is said to bring bad luck, presumably
because its bite is deadly poison."
 fc8d:  c1 8f ff 60 35 00 95    JE              Gef,"titus" [FALSE] fd27
 fc94:  b3 ...                  PRINT_RET       "The Emperor Titus IV
may-he-prosper reigned at a time of peace and serenity often called the Golden
Age. Little is known of his life, though legends of excessive spending and
grandiloquent gestures abound."
 fd27:  c1 8f ff 57 86 47       JE              Gef,"paradise" [FALSE] fd32
 fd2d:  88 3f b8 00             CALL_1S         fee0 -> -(SP)
 fd31:  b8                      RET_POPPED      
 fd32:  c1 8f ff 57 8f 00 69    JE              Gef,"parchin" [FALSE] fda0
 fd39:  b3 ...                  PRINT_RET       "A fishing port on the
periphery of the Empire, noted for a form of hanging lobster-pot still thought
fashionable by more vulgar houses in the West."
 fda0:  c1 83 ff 57 ce 5e 46 00 57 
                               JE              Gef,"philosoph","stone" [FALSE]
fdfe
 fda9:  b3 ...                  PRINT_RET       "There is of course no such
thing as a Philosopher's Stone, and it is quite impossible to transmute base
metal to gold."
 fdfe:  c1 8f ff 59 36 00 43    JE              Gef,"protocol" [FALSE] fe46
 fe05:  b3 ...                  PRINT_RET       "An arms control agreement of
little consequence except to rather backward maritime provinces."
 fe46:  c1 83 ff 62 bd 5e 73 00 91 
                               JE              Gef,"watling","street" [FALSE]
fede
 fe4f:  b3 ...                  PRINT_RET       "Watling Street is a venerably
ancient highway, remarkably straight (save only for a puzzling detour around
what are now the Imperial hunting woods) and dating back at least to the Old
Underground Empire."
 fede:  b1                      RFALSE          

Routine fee0, 0 locals

 fee1:  b3 ...                  PRINT_RET       "The Guide Book has a lovingly
detailed section on birds of paradise, which there is no time to read now.
Apart from the plumage, it seems these birds are distinguished by their mating
call, a chirrup followed by a coo. They live to be twenty years old, always
return to their first nest in midsummer and steal each others' eggs, but nobody
knows why."

Routine ffd8, 0 locals

 ffd9:  c1 97 f9 3e 37 00 e0    JE              Ge9,#3e,#37 [FALSE] 100be
 ffe0:  b2 ...                  PRINT           "You sip at the fine sherbet,
careful not to drink it all at once. It has been chilled in a wooden cask of
ice, and is the best news all day."
10043:  4a fb 08 80 76          TEST_ATTR       Geb,#08 [TRUE] 100bc
10048:  4b fb 08                SET_ATTR        Geb,#08
1004b:  b3 ...                  PRINT_RET       "

Giggling nervously, for she has been waiting for you to take a sip, Amilia
downs her sherbet with a quick snort (unfortunately literally, and she
sneezes)."
100bc:  bb                      NEW_LINE        
100bd:  b0                      RTRUE           
100be:  41 f9 2c 55             JE              Ge9,#2c [FALSE] 100d5
100c2:  b3 ...                  PRINT_RET       "This is liquid sherbet."
100d5:  c1 97 f9 10 12 00 27    JE              Ge9,#10,#12 [FALSE] 10101
100dc:  b3 ...                  PRINT_RET       "There's nowhere level enough
to put down the glass."
10101:  41 f9 13 00 69          JE              Ge9,#13 [FALSE] 1016d
10106:  b3 ...                  PRINT_RET       "The taking of cocktails is an
enormously delicate point of Northlands etiquette, and you daren't cause an
incident by insulting Amilia in this way."
1016d:  b1                      RFALSE          

Routine 10170, 0 locals

10171:  6e fb 22                INSERT_OBJ      Geb,G12
10174:  b3 ...                  PRINT_RET       "
A silken boy runs up from the rear of the procession, hands you each a glass of
sherbet and then allows himself to be caught up again before boarding the last
carriage at the rear of the elephant-train."

Routine 10204, 1 local

10205:  2e 1f 01                INSERT_OBJ      "elephant",L00
10208:  2e 1d 01                INSERT_OBJ      "stately procession of
elephants",L00
1020b:  2e 1e 01                INSERT_OBJ      "troop of soldiers",L00
1020e:  2d 10 01                STORE           G00,L00
10211:  da 1f 2c b1 20          CALL_2N         b2c4 (#20)
10216:  b0                      RTRUE           

Routine 10218, 0 locals

10219:  b2 ...                  PRINT           "
At a whistle from the soldiers up ahead, the procession comes to an ungainly
halt.
"
10256:  0d 92 02                STORE           G82,#02
10259:  f9 07 2d 35 00 2b 04    CALL_VN         b4d4 (#002b,#04)
10260:  da 2f 40 81 fb          CALL_2N         10204 (Geb)
10265:  b1                      RFALSE          

Routine 10268, 0 locals

10269:  c1 97 f9 57 18 00 27    JE              Ge9,#57,#18 [FALSE] 10295
10270:  b3 ...                  PRINT_RET       "Having Amilia here is a real
kill-joy, isn't it?"
10295:  b1                      RFALSE          

Routine 10298, 0 locals

10299:  b2 ...                  PRINT           "
The procession sluggishly resumes, taking some time to accelerate again. You
dread to imagine what a hill start would be like.
"
102f4:  0d 92 03                STORE           G82,#03
102f7:  f9 07 2d 35 00 2c 01    CALL_VN         b4d4 (#002c,#01)
102fe:  f9 07 2d 35 00 2d 03    CALL_VN         b4d4 (#002d,#03)
10305:  da 2f 40 81 fb          CALL_2N         10204 (Geb)
1030a:  b1                      RFALSE          

Routine 1030c, 0 locals

1030d:  c1 97 f9 21 5e 43       JE              Ge9,#21,#5e [FALSE] 10314
10313:  b1                      RFALSE          
10314:  c1 97 f9 22 23 00 21    JE              Ge9,#22,#23 [FALSE] 1033a
1031b:  b3 ...                  PRINT_RET       "You can't see under the bridge
from here."
1033a:  b3 ...                  PRINT_RET       "The bridge is too far away."

Routine 10350, 0 locals

10351:  4e fb 2b                INSERT_OBJ      Geb,"Watling Street"
10354:  b3 ...                  PRINT_RET       "
The procession runs over a small culvert bridge, which presents no problem to
the elephants. You glance down, and can't help thinking something's wrong
somewhere."

Routine 103cc, 0 locals

103cd:  c6 2f 00 2e 10 00 3b    JIN             "Bird of Paradise",G00 [FALSE]
1040d
103d4:  b3 ...                  PRINT_RET       "It's probably safer not to go
on making mating calls, when the bird is so close."
1040d:  c6 2f 00 2d 10 d7       JIN             "glimpse of a bird",G00 [TRUE]
10428
10413:  b3 ...                  PRINT_RET       "What a curious thing to do."
10428:  e8 bf 95                PUSH            G85
1042b:  95 95                   INC             G85
1042d:  a0 00 00 3a             JZ              (SP)+ [FALSE] 10469
10431:  b2 ...                  PRINT           "Amilia hangs her head half on
one side and flutters her eyelids, puzzled."
10466:  8c 00 1b                JUMP            10482
10469:  b2 ...                  PRINT           "Amilia really is bewildered
now."
10482:  41 37 5f 00 fd          JE              G27,#5f [FALSE] 10582
10487:  41 96 60 00 f8          JE              G86,#60 [FALSE] 10582
1048c:  0d 92 04                STORE           G82,#04
1048f:  89 00 2d                REMOVE_OBJ      "glimpse of a bird"
10492:  ce 2f 00 2e 10          INSERT_OBJ      "Bird of Paradise",G00
10497:  95 1d                   INC             G0d
10499:  b2 ...                  PRINT           " But your mating call does
seem to have done the trick! The bird of paradise flutters down over the wall
to dance eagerly around your basket.

Although clearly peeved by the lack of a significant other here, the
beautifully-plumed bird does (to your immense satisfaction) begin pecking away
at the wax fruit on the Lady Amilia's hat."
10582:  2d 96 37                STORE           G86,G27
10585:  bb                      NEW_LINE        
10586:  b0                      RTRUE           

Routine 10588, 0 locals
    Action routine for:
        "chirrup"

10589:  8f 40 f3                CALL_1N         103cc
1058c:  b0                      RTRUE           

Routine 10590, 0 locals
    Action routine for:
        "coo"

10591:  8f 40 f3                CALL_1N         103cc
10594:  b0                      RTRUE           

Routine 10598, 0 locals

10599:  41 f9 5e 43             JE              Ge9,#5e [FALSE] 1059e
1059d:  b1                      RFALSE          
1059e:  b3 ...                  PRINT_RET       "It's too far away to make out
at all clearly, and it keeps moving."

Routine 105d0, 0 locals

105d1:  4e fb 2b                INSERT_OBJ      Geb,"Watling Street"
105d4:  b3 ...                  PRINT_RET       "
Just for a moment, you catch a flickering glimpse of a bird up in the higher
branches of the woods."

Routine 1061c, 0 locals

1061d:  c1 97 f9 60 5f 46       JE              Ge9,#60,#5f [FALSE] 10627
10623:  8f 40 f3                CALL_1N         103cc
10626:  b0                      RTRUE           
10627:  b3 ...                  PRINT_RET       "The bird is indifferent, high
up there."

Routine 10644, 0 locals

10645:  c1 97 f9 21 5e 43       JE              Ge9,#21,#5e [FALSE] 1064c
1064b:  b1                      RFALSE          
1064c:  b3 ...                  PRINT_RET       "The bird flutters about
wildly, evading you."

Routine 10670, 0 locals

10671:  c1 97 f9 60 5f 46       JE              Ge9,#60,#5f [FALSE] 1067b
10677:  8f 40 f3                CALL_1N         103cc
1067a:  b0                      RTRUE           
1067b:  b3 ...                  PRINT_RET       "An Ambassador's powers are
considerable, but they do not include commanding the animals."

Routine 106bc, 0 locals

106bd:  41 f9 2c 00 21          JE              Ge9,#2c [FALSE] 106e1
106c2:  b3 ...                  PRINT_RET       "The moss on the wall does not
look tasty."
106e1:  41 f9 5e 43             JE              Ge9,#5e [FALSE] 106e6
106e5:  b1                      RFALSE          
106e6:  41 f9 21 00 bd          JE              Ge9,#21 [FALSE] 107a6
106eb:  b3 ...                  PRINT_RET       "The walls do seem very secure.
Surely a minor local law would have been enough to keep the local peasants
away?

But then, by now you're quite sure it isn't just an ordinary hunting estate. A
pity this will probably be the closest you'll ever be allowed to get..."
107a6:  b3 ...                  PRINT_RET       "You can't quite reach the
wall. Although you're on the right general height, your elephant is passing
several yards away."

Routine 10800, 0 locals

10801:  41 f9 3b 00 23          JE              Ge9,#3b [FALSE] 10827
10806:  b3 ...                  PRINT_RET       "You can't be seen to cause a
scene like that!"
10827:  b1                      RFALSE          

Routine 10828, 0 locals

10829:  41 f9 21 49             JE              Ge9,#21 [FALSE] 10834
1082d:  f9 17 2c b1 21 2f       CALL_VN         b2c4 (#21,#2f)
10833:  b0                      RTRUE           
10834:  41 f9 5e 43             JE              Ge9,#5e [FALSE] 10839
10838:  b1                      RFALSE          
10839:  b3 ...                  PRINT_RET       "The woods are on the far side
of the mossy wall."

Routine 1085c, 0 locals

1085d:  c1 97 f9 21 5e 43       JE              Ge9,#21,#5e [FALSE] 10864
10863:  b1                      RFALSE          
10864:  b3 ...                  PRINT_RET       "The road's too far below your
elephant."

Routine 10884, 0 locals

10885:  0d 92 01                STORE           G82,#01
10888:  0d 10 20                STORE           G00,#20
1088b:  f9 17 2d 35 28 04       CALL_VN         b4d4 (#28,#04)
10891:  da 1f 2d 59 25          CALL_2N         b564 (#25)
10896:  f9 17 2d 35 29 0f       CALL_VN         b4d4 (#29,#0f)
1089c:  2e 1b 22                INSERT_OBJ      "hand telescope",G12
1089f:  2e 1a 22                INSERT_OBJ      "fedora hat",G12
108a2:  0b 1a 1a                SET_ATTR        "fedora hat",#1a
108a5:  b3 ...                  PRINT_RET       "





Another day wasted as guest of the Empress, a wretchedly long tour of the
breath-taking Boreal Falls, conducted as ever by the Lady Amilia. As if she
weren't bad enough, an honour guard of soldiers, their breast-plates red in the
setting sun, march ahead of the procession and protect you from seeing anything
unrehearsed. It's a dog's life being an Ambassador.
"

Routine 109b0, 0 locals

109b1:  e1 07 3a db 00 03 01    STOREW          #3adb,#0003,#01
109b8:  0d 97 01                STORE           G87,#01
109bb:  ce 4f 1b 00 4c          INSERT_OBJ      "hand telescope","Ambassador's
trunk"
109c0:  ce 4f 27 00 34          INSERT_OBJ      "The Guide For Travellers To
The Lower Northlands and Surrounding Provinces","four-poster bed"
109c5:  da 0f 32 56 00 33       CALL_2N         c958 (#0033)
109cb:  b0                      RTRUE           

Routine 109cc, 0 locals

109cd:  41 f9 36 00 64          JE              Ge9,#36 [FALSE] 10a34
109d2:  41 97 01 5b             JE              G87,#01 [FALSE] 109ef
109d6:  b3 ...                  PRINT_RET       "The night is still and
peaceful."
109ef:  b3 ...                  PRINT_RET       "In the still distance, to the
south perhaps, you can just make out the sound of horns and hooves."
10a34:  b1                      RFALSE          

Routine 10a38, 0 locals

10a39:  c6 8f 22 00 34 00 5b    JIN             G12,"four-poster bed" [FALSE]
10a99
10a40:  b3 ...                  PRINT_RET       "A magnificent design is woven
into the inside of the tapestry roof of the bed, and the whole effect is
sumptuous and comfortable."
10a99:  b3 ...                  PRINT_RET       "The finest quarters they could
find for a visiting Ambassador, at such short notice: and much better than
you'd have expected from a provincial customs post. Presumably some very rich
collector of antiquities once slept here... The only exit is to east."

Routine 10b4c, 0 locals

10b4d:  41 f9 59 01 a0          JE              Ge9,#59 [FALSE] 10cf0
10b52:  c6 8f 22 00 34 80 23    JIN             G12,"four-poster bed" [TRUE]
10b7a
10b59:  b3 ...                  PRINT_RET       "It would be more usual to get
into bed first."
10b7a:  43 97 01 00 21          JG              G87,#01 [FALSE] 10b9e
10b7f:  b3 ...                  PRINT_RET       "You're too intrigued to be
sleepy again."
10b9e:  0d 97 02                STORE           G87,#02
10ba1:  b3 ...                  PRINT_RET       "You relax into a strange,
dream-laced sleep. The Boreal Falls... Lady Amilia, giggling wildly with a
hysterical edge... your secret briefing, back at the Duchy, when you were
warned not to take anything in the Empire at face value... and mages,
sorcerers, enchanters, powerful men from the Old Time...

...and suddenly you sit bolt upright, at the distant but unnerving sound of the
blowing of a horn. It's deep into the night but you're now perfectly awake."
10cf0:  b1                      RFALSE          

Routine 10cf4, 0 locals

10cf5:  41 97 01 00 49          JE              G87,#01 [FALSE] 10d41
10cfa:  b3 ...                  PRINT_RET       "You can't get out, because
soldiers ("for your protection, Ambassador") are guarding the door."
10d41:  e3 93 fb 09 00 38       PUT_PROP        Geb,#09,#0038
10d47:  b2 ...                  PRINT           "(The soldiers who guarded this
door must have gone off duty some hours ago.)
"
10d80:  8b 00 38                RET             #0038

Routine 10d84, 0 locals

10d85:  66 22 fb 4f             JIN             G12,Geb [FALSE] 10d96
10d89:  b3 ...                  PRINT_RET       "Plush and comfy."
10d96:  b3 ...                  PRINT_RET       "It looks highly inviting."

Routine 10dac, 0 locals

10dad:  41 f9 22 00 23          JE              Ge9,#22 [FALSE] 10dd3
10db2:  b3 ...                  PRINT_RET       "Nice try, but there's nothing
under the bed."
10dd3:  b1                      RFALSE          

Routine 10dd4, 0 locals

10dd5:  41 f9 18 57             JE              Ge9,#18 [FALSE] 10dee
10dd9:  b2 ...                  PRINT           "You get into bed.
"
10de8:  da 1f 2c b1 20          CALL_2N         b2c4 (#20)
10ded:  b0                      RTRUE           
10dee:  b1                      RFALSE          

Routine 10df0, 0 locals

10df1:  c1 97 f9 0f 11 00 2f    JE              Ge9,#0f,#11 [FALSE] 10e25
10df8:  b3 ...                  PRINT_RET       "The painting is mounted on the
wall, and can't be taken down."
10e25:  b1                      RFALSE          

Routine 10e28, 0 locals

10e29:  4a fb 0e 00 49          TEST_ATTR       Geb,#0e [FALSE] 10e75
10e2e:  b3 ...                  PRINT_RET       "
Through the window, you can see a green glow in the distance, over the centre
of the walled woods."
10e75:  b3 ...                  PRINT_RET       "
The rich brocade curtains of the window here are drawn."

Routine 10ea0, 0 locals

10ea1:  c1 97 f9 21 23 00 31    JE              Ge9,#21,#23 [FALSE] 10ed7
10ea8:  b3 ...                  PRINT_RET       "Perhaps you should open the
curtains and then see what you can see."
10ed7:  b1                      RFALSE          

Routine 10ed8, 0 locals

10ed9:  41 f9 28 00 8d          JE              Ge9,#28 [FALSE] 10f69
10ede:  ce 2f 00 3b 10          INSERT_OBJ      "green glow",G00
10ee3:  4b fb 08                SET_ATTR        Geb,#08
10ee6:  b3 ...                  PRINT_RET       "You open the curtains, and
look out on a deserted Watling Street, the mossy wall, the woods beyond.
Somewhere in the distance, from the centre of the woods, is an unearthly green
glow."
10f69:  41 f9 29 45             JE              Ge9,#29 [FALSE] 10f70
10f6d:  89 00 3b                REMOVE_OBJ      "green glow"
10f70:  b1                      RFALSE          

Routine 10f74, 0 locals

10f75:  0a 39 0e df             TEST_ATTR       "rich brocade curtains",#0e
[TRUE] 10f96
10f79:  b3 ...                  PRINT_RET       "The closed curtains conceal
the window."
10f96:  c1 97 f9 23 21 49       JE              Ge9,#23,#21 [FALSE] 10fa3
10f9c:  f9 17 7e 9d 39 24       CALL_VN         1fa74 (#39,#24)
10fa2:  b0                      RTRUE           
10fa3:  41 f9 28 59             JE              Ge9,#28 [FALSE] 10fbe
10fa7:  b3 ...                  PRINT_RET       "The window is not made to
open."
10fbe:  c1 93 f9 43 10 02 5d    JE              Ge9,#43,#1002 [FALSE] 10fe0
10fc5:  b3 ...                  PRINT_RET       "The glass is tougher than it
looked."
10fe0:  b1                      RFALSE          

Routine 10fe4, 0 locals

10fe5:  c1 95 f9 4c 4d 4f ca    JE              Ge9,#4c,#4d,#4f [TRUE] 10ff4
10fec:  c1 95 f9 4e 0f 11 00 25 JE              Ge9,#4e,#0f,#11 [FALSE] 11017
10ff4:  b3 ...                  PRINT_RET       "The kitchen table seems
securely fixed in place."
11017:  41 f9 18 00 51          JE              Ge9,#18 [FALSE] 1106b
1101c:  b3 ...                  PRINT_RET       "That would be unhygienic.
Anyway, the table is not underneath anything interesting, so no benefit would
accrue."
1106b:  b1                      RFALSE          

Routine 1106c, 0 locals

1106d:  c1 95 f9 21 5e 22 c6    JE              Ge9,#21,#5e,#22 [TRUE] 11078
11074:  41 f9 51 43             JE              Ge9,#51 [FALSE] 11079
11078:  b1                      RFALSE          
11079:  b3 ...                  PRINT_RET       "The hook's too high for you to
touch, even on tiptoe."

Routine 110a0, 0 locals

110a1:  c1 97 f9 0f 11 00 43    JE              Ge9,#0f,#11 [FALSE] 110e9
110a8:  0c 3f 11                CLEAR_ATTR      "ceiling hook",#11
110ab:  0b 3f 13                SET_ATTR        "ceiling hook",#13
110ae:  e3 93 fb 05 ff ff       PUT_PROP        Geb,#05,#ffff
110b4:  b3 ...                  PRINT_RET       "You just, right up on tiptoe,
succeed in dislodging the ham from its hook."
110e9:  b1                      RFALSE          

Routine 110ec, 0 locals

110ed:  b2 ...                  PRINT           "This immaculate black iron
stove, just the size of the fireplace, has been very well cleaned and has that
elusive "never used" look. It is a modern, de luxe charcoal stove, embellished
with iron hoops and designs around the edge. The stove is currently "
1119e:  4a fb 0e c9             TEST_ATTR       Geb,#0e [TRUE] 111a9
111a2:  b3 ...                  PRINT_RET       "closed."
111a9:  b3 ...                  PRINT_RET       "open."

Routine 111b0, 0 locals

111b1:  41 f9 2f 00 33          JE              Ge9,#2f [FALSE] 111e7
111b6:  b3 ...                  PRINT_RET       "You have no flame with which
to light the stove, and it has no fuel."
111e7:  41 f9 4c 00 47          JE              Ge9,#4c [FALSE] 11231
111ec:  b3 ...                  PRINT_RET       "The stove budges fractionally,
but is so heavy that you can hardly get it to move at all by hand."
11231:  c1 95 f9 4d 4f 4e 00 64 JE              Ge9,#4d,#4f,#4e [FALSE] 1129b
11239:  c6 2f 00 4f 10 55       JIN             "original chimney",G00 [FALSE]
11252
1123f:  b3 ...                  PRINT_RET       "After all that trouble?"
11252:  b3 ...                  PRINT_RET       "You can hardly move the stove,
and anyway it's already backed onto the fireplace and won't push inward."
1129b:  41 f9 22 57             JE              Ge9,#22 [FALSE] 112b4
1129f:  b3 ...                  PRINT_RET       "It is flush with the ground."
112b4:  41 f9 18 5f             JE              Ge9,#18 [FALSE] 112d5
112b8:  b3 ...                  PRINT_RET       "There's no room to comfortably
do so."
112d5:  c1 97 f9 0f 11 59       JE              Ge9,#0f,#11 [FALSE] 112f2
112db:  b3 ...                  PRINT_RET       "It's far too heavy to pick
up."
112f2:  b1                      RFALSE          

Routine 112f4, 0 locals

112f5:  41 f9 28 00 27          JE              Ge9,#28 [FALSE] 1131f
112fa:  b3 ...                  PRINT_RET       "You open the stove. There is
no charcoal inside."
1131f:  b1                      RFALSE          

Routine 11320, 0 locals

11321:  41 f9 28 00 3a          JE              Ge9,#28 [FALSE] 1135e
11326:  b2 ...                  PRINT           "Thoughtfully, someone has
provided you with breakfast.

"
11351:  e3 93 fb 05 ff ff       PUT_PROP        Geb,#05,#ffff
11357:  f9 1b 2c b1 23 fb       CALL_VN         b2c4 (#23,Geb)
1135d:  b0                      RTRUE           
1135e:  b1                      RFALSE          

Routine 11360, 0 locals

11361:  4a fb 08 49             TEST_ATTR       Geb,#08 [FALSE] 1136c
11365:  b2 ...                  PRINT           "poisoned "
1136c:  b1                      RFALSE          

Routine 11370, 0 locals

11371:  41 f9 2c 00 76          JE              Ge9,#2c [FALSE] 113ea
11376:  4b fb 08                SET_ATTR        Geb,#08
11379:  e3 93 fb 25 86 43       PUT_PROP        Geb,#25,S142
1137f:  e3 93 fb 04 ff ff       PUT_PROP        Geb,#04,#ffff
11385:  b3 ...                  PRINT_RET       "Just in time, you stop
yourself from taking a bite as you notice little puncture-marks and a faint
discolouration. This apple has been poisoned!"
113ea:  41 f9 35 00 25          JE              Ge9,#35 [FALSE] 11412
113ef:  b3 ...                  PRINT_RET       "Something smells not quite
right about the apple."
11412:  b1                      RFALSE          

Routine 11414, 0 locals

11415:  41 f9 2c 00 7e          JE              Ge9,#2c [FALSE] 11496
1141a:  0d 23 01                STORE           G13,#01
1141d:  b3 ...                  PRINT_RET       "You take a great bite out of
the apple and begin to chew, but your muscles begin to seize up almost at once.
A light sweat breaks out on your brow, and the rest is silence."
11496:  b1                      RFALSE          

Routine 11498, 0 locals

11499:  41 f9 28 00 69          JE              Ge9,#28 [FALSE] 11505
1149e:  e3 93 fb 05 ff ff       PUT_PROP        Geb,#05,#ffff
114a4:  2e 47 22                INSERT_OBJ      "jewelled scarab",G12
114a7:  0d 8a 47                STORE           G7a,#47
114aa:  b3 ...                  PRINT_RET       "As you open the old trophy
case, which is so stiff it can't have been opened in years, something shiny
falls out into your hand."
11505:  b1                      RFALSE          

Routine 11508, 0 locals

11509:  41 f9 2f 49             JE              Ge9,#2f [FALSE] 11514
1150d:  f9 1b 2c b1 26 fb       CALL_VN         b2c4 (#26,Geb)
11513:  b0                      RTRUE           
11514:  b1                      RFALSE          

Routine 11518, 0 locals

11519:  41 f9 26 56             JE              Ge9,#26 [FALSE] 11531
1151d:  4b fb 09                SET_ATTR        Geb,#09
11520:  b3 ...                  PRINT_RET       "You light the lantern."
11531:  41 f9 27 58             JE              Ge9,#27 [FALSE] 1154b
11535:  4c fb 09                CLEAR_ATTR      Geb,#09
11538:  b3 ...                  PRINT_RET       "You put out the lantern."
1154b:  b1                      RFALSE          

Routine 1154c, 0 locals

1154d:  c1 95 f9 4c 4d 4f c7    JE              Ge9,#4c,#4d,#4f [TRUE] 11559
11554:  41 f9 22 00 6d          JE              Ge9,#22 [FALSE] 115c4
11559:  b3 ...                  PRINT_RET       "With a great effort, the rug
is moved to one side of the room, revealing a seamless wooden floor.

Somewhat embarrassed, you move the rug back again."
115c4:  b1                      RFALSE          

Routine 115c8, 0 locals

115c9:  41 f9 28 00 66          JE              Ge9,#28 [FALSE] 11632
115ce:  b2 ...                  PRINT           "Expertly sliding your fingers
along the sequence of hidden catches, you trigger the mechanism and the
trunk-lid gracefully raises.

"
1162b:  f9 1b 2c b1 23 fb       CALL_VN         b2c4 (#23,Geb)
11631:  b0                      RTRUE           
11632:  41 f9 29 00 2d          JE              Ge9,#29 [FALSE] 11662
11637:  b3 ...                  PRINT_RET       "You close the clasps
carefully, and the trunk seals itself."
11662:  b1                      RFALSE          

Routine 11664, 0 locals

11665:  41 99 01 00 b7          JE              G89,#01 [FALSE] 1171f
1166a:  a0 98 80 6d             JZ              G88 [TRUE] 116d9
1166e:  41 9b 01 00 3f          JE              G8b,#01 [FALSE] 116b0
11673:  b2 ...                  PRINT           "It's looped around yourself,
runs up over the hook and then back down to "
116a8:  da 2f 2f 17 98          CALL_2N         bc5c (G88)
116ad:  b3 ...                  PRINT_RET       "."
116b0:  b2 ...                  PRINT           "One end is tied around you,
and the other to "
116d1:  da 2f 2f 17 98          CALL_2N         bc5c (G88)
116d6:  b3 ...                  PRINT_RET       "."
116d9:  41 9a 01 00 43          JE              G8a,#01 [FALSE] 1171f
116de:  b2 ...                  PRINT           "One end's tied around you, and
the other "
116fd:  41 10 3c 4e             JE              G00,#3c [FALSE] 1170d
11701:  b2 ...                  PRINT           "hangs down"
1170a:  8c 00 09                JUMP            11714
1170d:  b2 ...                  PRINT           "runs up"
11714:  b3 ...                  PRINT_RET       " the chimney."
1171f:  41 9a 01 00 5f          JE              G8a,#01 [FALSE] 11781
11724:  41 10 3c 80 27          JE              G00,#3c [TRUE] 1174e
11729:  b3 ...                  PRINT_RET       "Its tail is just visible at
the foot of the chimney."
1174e:  a0 98 80 31             JZ              G88 [TRUE] 11781
11752:  b2 ...                  PRINT           "One end's tied to "
11761:  da 2f 2f 17 98          CALL_2N         bc5c (G88)
11766:  b3 ...                  PRINT_RET       " and the other hangs down the
chimney."
11781:  a0 98 80 42             JZ              G88 [TRUE] 117c5
11785:  41 9b 01 00 3d          JE              G8b,#01 [FALSE] 117c5
1178a:  b2 ...                  PRINT           "It now runs from "
11797:  da 2f 2f 17 98          CALL_2N         bc5c (G88)
1179c:  b3 ...                  PRINT_RET       " up and over the hook, from
which the loose end dangles."
117c5:  c1 8f 98 00 6a 00 77    JE              G88,#006a [FALSE] 11841
117cc:  c6 2f 00 6a 10 00 31    JIN             "ring",G00 [FALSE] 11802
117d3:  b3 ...                  PRINT_RET       "One end is tied to the ring,
the other hangs down from the ledge."
11802:  b3 ...                  PRINT_RET       "Its tail hangs down, quite a
way out in midair, certainly well beyond even a risky jump."
11841:  a0 98 d9                JZ              G88 [TRUE] 1185b
11844:  b2 ...                  PRINT           "It is now tied to "
11853:  da 2f 2f 17 98          CALL_2N         bc5c (G88)
11858:  b3 ...                  PRINT_RET       "."
1185b:  41 9b 01 00 21          JE              G8b,#01 [FALSE] 1187f
11860:  b3 ...                  PRINT_RET       "Its two ends are now hanging
from the hook."
1187f:  bb                      NEW_LINE        
11880:  b0                      RTRUE           

Routine 11884, 0 locals

11885:  a3 fb 00                GET_PARENT      Geb -> -(SP)
11888:  4a 00 14 c9             TEST_ATTR       (SP)+,#14 [TRUE] 11893
1188c:  a3 fb 00                GET_PARENT      Geb -> -(SP)
1188f:  4a 00 04 4c             TEST_ATTR       (SP)+,#04 [FALSE] 1189d
11893:  b2 ...                  PRINT           "coil of "
1189a:  8c 00 0b                JUMP            118a6
1189d:  b2 ...                  PRINT           "length of "
118a6:  b1                      RFALSE          

Routine 118a8, 0 locals

118a9:  c1 8f 10 00 6b 00 8e    JE              G00,#006b [FALSE] 1193c
118b0:  c1 8f 98 00 6a 00 87    JE              G88,#006a [FALSE] 1193c
118b7:  41 99 01 00 2d          JE              G89,#01 [FALSE] 118e7
118bc:  b3 ...                  PRINT_RET       "
Your rope extends, tautly, back out and up the rock wall."
118e7:  b3 ...                  PRINT_RET       "
Your rope hangs perfectly still in mid-air out in the cave to the southwest,
just beyond any plausible jumping distance."
1193c:  b2 ...                  PRINT           "
Your length of rope is here. "
11953:  8f 45 99                CALL_1N         11664
11956:  b0                      RTRUE           

Routine 11958, 0 locals

11959:  41 2e 02 59             JE              G1e,#02 [FALSE] 11974
1195d:  41 99 01 55             JE              G89,#01 [FALSE] 11974
11961:  b2 ...                  PRINT           " (tied around your waist)"
11974:  b1                      RFALSE          

Routine 11978, 0 locals

11979:  41 f9 1c 00 e3          JE              Ge9,#1c [FALSE] 11a5f
1197e:  41 99 01 00 de          JE              G89,#01 [FALSE] 11a5f
11983:  a0 98 80 74             JZ              G88 [TRUE] 119f9
11987:  c1 8f 98 00 97 c0       JE              G88,#0097 [TRUE] RFALSE
1198d:  41 98 41 c9             JE              G88,#41 [TRUE] 11998
11991:  f9 1b 2c b1 4c 98       CALL_VN         b2c4 (#4c,G88)
11997:  b0                      RTRUE           
11998:  41 3a 10 48             JE              G2a,#10 [FALSE] 119a2
1199c:  c6 2f 00 4f 10 c9       JIN             "original chimney",G00 [TRUE]
119a9
119a2:  f9 1b 2c b1 4c fb       CALL_VN         b2c4 (#4c,Geb)
119a8:  b0                      RTRUE           
119a9:  41 9b 01 00 4c          JE              G8b,#01 [FALSE] 119f8
119ae:  0d 9b 00                STORE           G8b,#00
119b1:  b2 ...                  PRINT           "(first shaking the rope off
the hook, since otherwise it isn't long enough to reach down very far)
"
119f8:  b1                      RFALSE          
119f9:  41 9b 01 00 22          JE              G8b,#01 [FALSE] 11a1e
119fe:  0d 9b 00                STORE           G8b,#00
11a01:  b2 ...                  PRINT           "(first pulling the rope off
the hook)
"
11a1e:  41 9a 01 00 25          JE              G8a,#01 [FALSE] 11a46
11a23:  8f 48 a7                CALL_1N         1229c
11a26:  b2 ...                  PRINT           "(first pulling the rope up the
chimney)
"
11a45:  b1                      RFALSE          
11a46:  b2 ...                  PRINT           "(dragging the rope behind you)
"
11a5f:  b1                      RFALSE          

Routine 11a60, 0 locals

11a61:  c1 8f 98 00 6a 00 b4    JE              G88,#006a [FALSE] 11b1a
11a68:  a0 99 00 b0             JZ              G89 [FALSE] 11b1a
11a6c:  c1 8f 10 00 6b 00 a9    JE              G00,#006b [FALSE] 11b1a
11a73:  c1 8f 37 10 02 00 4c    JE              G27,#1002 [FALSE] 11ac4
11a7a:  c1 8f 3a 00 6f 80 39    JE              G2a,#006f [TRUE] 11ab8
11a81:  b3 ...                  PRINT_RET       "You aren't confident that you
can hit the narrow target of the rope from here."
11ab8:  cd 4f 83 5f ed          STORE           G73,"throw"
11abd:  f9 1b 2c b1 10 3a       CALL_VN         b2c4 (#10,G2a)
11ac3:  b0                      RTRUE           
11ac4:  41 37 5e 00 40          JE              G27,#5e [FALSE] 11b07
11ac9:  41 3b 1b 00 3b          JE              G2b,#1b [FALSE] 11b07
11ace:  b3 ...                  PRINT_RET       "The rope is brought
tantalisingly closer through the lense, but not in reality."
11b07:  b3 ...                  PRINT_RET       "The rope is too far out."
11b1a:  41 f9 57 00 69          JE              Ge9,#57 [FALSE] 11b86
11b1f:  c1 8f 10 00 59 49       JE              G00,#0059 [FALSE] 11b2c
11b25:  f9 17 2c b1 1c 0f       CALL_VN         b2c4 (#1c,#0f)
11b2b:  b0                      RTRUE           
11b2c:  41 9b 01 00 2f          JE              G8b,#01 [FALSE] 11b5e
11b31:  b3 ...                  PRINT_RET       "The ceiling isn't interesting
enough to go to all that trouble."
11b5e:  41 9a 01 49             JE              G8a,#01 [FALSE] 11b69
11b62:  f9 17 2c b1 1c 10       CALL_VN         b2c4 (#1c,#10)
11b68:  b0                      RTRUE           
11b69:  b3 ...                  PRINT_RET       "But the rope leads neither up
nor down."
11b86:  c1 97 f9 0f 11 00 7a    JE              Ge9,#0f,#11 [FALSE] 11c05
11b8d:  a0 98 80 29             JZ              G88 [TRUE] 11bb8
11b91:  b2 ...                  PRINT           "You can't take the rope; it's
tied to "
11bb0:  da 2f 2f 17 98          CALL_2N         bc5c (G88)
11bb5:  b3 ...                  PRINT_RET       "."
11bb8:  41 9b 01 00 22          JE              G8b,#01 [FALSE] 11bdd
11bbd:  0d 9b 00                STORE           G8b,#00
11bc0:  b2 ...                  PRINT           "(first pulling the rope off
the hook)
"
11bdd:  41 9a 01 00 24          JE              G8a,#01 [FALSE] 11c04
11be2:  8f 48 a7                CALL_1N         1229c
11be5:  b2 ...                  PRINT           "(first pulling the rope up the
chimney)
"
11c04:  b1                      RFALSE          
11c05:  41 f9 10 00 23          JE              Ge9,#10 [FALSE] 11c2b
11c0a:  41 99 01 5e             JE              G89,#01 [FALSE] 11c2a
11c0e:  0d 99 00                STORE           G89,#00
11c11:  b2 ...                  PRINT           "(first untying it from
yourself)
"
11c2a:  b1                      RFALSE          
11c2b:  c1 97 f9 12 13 01 6b    JE              Ge9,#12,#13 [FALSE] 11d9b
11c32:  c1 8f 3b 00 4f 01 4e    JE              G2b,#004f [FALSE] 11d85
11c39:  11 3c 10 00             GET_PROP        "Kitchen",#10 -> -(SP)
11c3d:  c1 8f 00 00 64 00 27    JE              (SP)+,#0064 [FALSE] 11c69
11c44:  b3 ...                  PRINT_RET       "There's no need, what with a
ladder already there."
11c69:  41 9b 01 00 4e          JE              G8b,#01 [FALSE] 11cba
11c6e:  0d 9b 00                STORE           G8b,#00
11c71:  b2 ...                  PRINT           "(The hook's too far from the
chimney to stretch, so you're obliged to pull the rope off the hook.)
"
11cba:  41 9a 01 57             JE              G8a,#01 [FALSE] 11cd3
11cbe:  b3 ...                  PRINT_RET       "It's already hanging down."
11cd3:  a0 99 00 49             JZ              G89 [FALSE] 11d1e
11cd7:  a0 98 00 45             JZ              G88 [FALSE] 11d1e
11cdb:  b3 ...                  PRINT_RET       "You realise that it would slip
down the chimney and be lost, which gives you pause for thought."
11d1e:  a0 98 00 43             JZ              G88 [FALSE] 11d63
11d22:  b3 ...                  PRINT_RET       "On reflection, it seems
pointless to have one end down the chimney and the other tied to you."
11d63:  b2 ...                  PRINT           "You hang the rope down the
chimney. "
11d7e:  8f 48 a4                CALL_1N         12290
11d81:  8f 45 99                CALL_1N         11664
11d84:  b0                      RTRUE           
11d85:  41 99 01 53             JE              G89,#01 [FALSE] 11d9a
11d89:  b3 ...                  PRINT_RET       "Untie the rope first."
11d9a:  b1                      RFALSE          
11d9b:  41 f9 4c 01 a5          JE              Ge9,#4c [FALSE] 11f43
11da0:  a0 98 00 32             JZ              G88 [FALSE] 11dd4
11da4:  41 99 01 5f             JE              G89,#01 [FALSE] 11dc5
11da8:  b3 ...                  PRINT_RET       "You're unable to pull yourself
along."
11dc5:  b3 ...                  PRINT_RET       "You pull the rope."
11dd4:  41 98 41 01 65          JE              G88,#41 [FALSE] 11f3c
11dd9:  41 9b 01 00 d1          JE              G8b,#01 [FALSE] 11ead
11dde:  4a fb 08 57             TEST_ATTR       Geb,#08 [FALSE] 11df7
11de2:  b3 ...                  PRINT_RET       "A second pull does no good."
11df7:  4b fb 08                SET_ATTR        Geb,#08
11dfa:  95 1d                   INC             G0d
11dfc:  e3 53 3c 10 00 4f       PUT_PROP        "Kitchen",#10,#004f
11e02:  ce 1f 00 4f 3c          INSERT_OBJ      "original chimney","Kitchen"
11e07:  0d 97 03                STORE           G87,#03
11e0a:  b3 ...                  PRINT_RET       "Pulling hard on the rope, you
have enough leverage to slightly lift the stove, and it comes aside towards the
centre of the kitchen.

Behind the stove, it seems, was a much older chimney, an original feature of
the Customs House."
11ead:  c1 8f 10 00 59 00 21    JE              G00,#0059 [FALSE] 11ed3
11eb4:  b3 ...                  PRINT_RET       "You pull hard, but the rope
won't budge."
11ed3:  b3 ...                  PRINT_RET       "You pull hard on the rope, and
the stove budges fractionally, but the enormous friction of its flat base on
the floor stops you from getting anywhere."
11f3c:  f9 1b 2c b1 4c 98       CALL_VN         b2c4 (#4c,G88)
11f42:  b0                      RTRUE           
11f43:  41 f9 51 00 a3          JE              Ge9,#51 [FALSE] 11fe9
11f48:  a0 98 80 21             JZ              G88 [TRUE] 11f6b
11f4c:  41 99 01 5d             JE              G89,#01 [FALSE] 11f6b
11f50:  b3 ...                  PRINT_RET       "There's not enough slack to
throw."
11f6b:  41 9a 01 5e             JE              G8a,#01 [FALSE] 11f8b
11f6f:  8f 48 a7                CALL_1N         1229c
11f72:  b2 ...                  PRINT           "(first pulling the rope back
up)
"
11f8b:  41 3b 3f 00 5a          JE              G2b,#3f [FALSE] 11fe8
11f90:  0a 40 0c d9             TEST_ATTR       "joint of cured ham",#0c [TRUE]
11fab
11f94:  b3 ...                  PRINT_RET       "The rope recoils off the ham."
11fab:  41 9b 01 53             JE              G8b,#01 [FALSE] 11fc0
11faf:  b3 ...                  PRINT_RET       "It's already hooked."
11fc0:  0d 9b 01                STORE           G8b,#01
11fc3:  a0 9c 47                JZ              G8c [FALSE] 11fcb
11fc6:  95 1d                   INC             G0d
11fc8:  0d 9c 01                STORE           G8c,#01
11fcb:  b2 ...                  PRINT           "You throw the rope up. "
11fde:  2e 4e 10                INSERT_OBJ      "light rope",G00
11fe1:  2e 3f 10                INSERT_OBJ      "ceiling hook",G00
11fe4:  8f 45 99                CALL_1N         11664
11fe7:  b0                      RTRUE           
11fe8:  b1                      RFALSE          
11fe9:  41 f9 3d 01 90          JE              Ge9,#3d [FALSE] 1217c
11fee:  61 3b 22 00 39          JE              G2b,G12 [FALSE] 1202a
11ff3:  41 99 01 57             JE              G89,#01 [FALSE] 1200c
11ff7:  b3 ...                  PRINT_RET       "It's already tied to you."
1200c:  0d 99 01                STORE           G89,#01
1200f:  b2 ...                  PRINT           "You tie the rope around you. "
12026:  8f 45 99                CALL_1N         11664
12029:  b0                      RTRUE           
1202a:  a0 98 df                JZ              G88 [TRUE] 1204a
1202d:  b2 ...                  PRINT           "The rope's already tied to "
12042:  da 2f 2f 17 98          CALL_2N         bc5c (G88)
12047:  b3 ...                  PRINT_RET       "."
1204a:  41 3b 3f 00 27          JE              G2b,#3f [FALSE] 12074
1204f:  b3 ...                  PRINT_RET       "You can't reach up to the
hook, even on tiptoes."
12074:  41 3b 3e 00 3f          JE              G2b,#3e [FALSE] 120b6
12079:  b3 ...                  PRINT_RET       "There's not enough rope to
loop it all the way round the table and still have any left."
120b6:  41 3b 3d 00 23          JE              G2b,#3d [FALSE] 120dc
120bb:  b3 ...                  PRINT_RET       "There's no very good door
handle to tie to."
120dc:  c1 90 3b 41 00 6a 00 97 80 21 
                               JE              G2b,#41,#006a,#0097 [TRUE] 12105
120e6:  b3 ...                  PRINT_RET       "There's no good way of tying
it to that."
12105:  c1 8f 3b 00 97 00 21    JE              G2b,#0097 [FALSE] 1212b
1210c:  ca 1f 00 97 0c 5b       TEST_ATTR       "black, memorial scroll",#0c
[FALSE] 1212b
12112:  b3 ...                  PRINT_RET       "There's really no point any
more."
1212b:  c1 8f 3b 00 66 5d       JE              G2b,#0066 [FALSE] 1214c
12131:  b3 ...                  PRINT_RET       "You can't possibly reach from
here."
1214c:  a0 9d 4b                JZ              G8d [FALSE] 12158
1214f:  41 3b 41 47             JE              G2b,#41 [FALSE] 12158
12153:  95 1d                   INC             G0d
12155:  0d 9d 01                STORE           G8d,#01
12158:  2d 98 3b                STORE           G88,G2b
1215b:  2e 4e 10                INSERT_OBJ      "light rope",G00
1215e:  6e 3b 10                INSERT_OBJ      G2b,G00
12161:  b2 ...                  PRINT           "You make a secure little knot.
"
12178:  8f 45 99                CALL_1N         11664
1217b:  b0                      RTRUE           
1217c:  41 f9 61 01 02          JE              Ge9,#61 [FALSE] 12281
12181:  a0 98 00 41             JZ              G88 [FALSE] 121c4
12185:  41 9b 01 49             JE              G8b,#01 [FALSE] 12190
12189:  f9 1b 2c b1 0f fb       CALL_VN         b2c4 (#0f,Geb)
1218f:  b0                      RTRUE           
12190:  41 99 01 00 20          JE              G89,#01 [FALSE] 121b3
12195:  0d 99 00                STORE           G89,#00
12198:  b3 ...                  PRINT_RET       "You loose the rope from your
waist."
121b3:  b3 ...                  PRINT_RET       "It's untied already."
121c4:  c1 8f 98 00 6a 00 5e    JE              G88,#006a [FALSE] 12227
121cb:  c1 8f 10 00 6b 00 57    JE              G00,#006b [FALSE] 12227
121d2:  0d 99 00                STORE           G89,#00
121d5:  0c 4e 03                CLEAR_ATTR      "light rope",#03
121d8:  b3 ...                  PRINT_RET       "You untie the rope, which
falls away from you and out into the cave to the south. It is now beyond your
reach."
12227:  66 98 10 dd             JIN             G88,G00 [TRUE] 12246
1222b:  b2 ...                  PRINT           "You can't reach "
12238:  da 2f 2f 17 98          CALL_2N         bc5c (G88)
1223d:  b3 ...                  PRINT_RET       " from here."
12246:  41 9a 01 5e             JE              G8a,#01 [FALSE] 12266
1224a:  8f 48 a7                CALL_1N         1229c
1224d:  b2 ...                  PRINT           "(first pulling the rope back
up)
"
12266:  0d 98 00                STORE           G88,#00
12269:  0d 99 00                STORE           G89,#00
1226c:  b2 ...                  PRINT           "You untie the rope. "
1227d:  8f 45 99                CALL_1N         11664
12280:  b0                      RTRUE           
12281:  b1                      RFALSE          

Routine 12284, 0 locals

12285:  c1 93 10 3c 00 59 c1    JE              G00,#3c,#0059 [TRUE] RTRUE
1228c:  b1                      RFALSE          

Routine 12290, 0 locals

12291:  0d 9a 01                STORE           G8a,#01
12294:  e3 53 4e 27 48 a1       PUT_PROP        "light rope",#27,#48a1
1229a:  b0                      RTRUE           

Routine 1229c, 0 locals

1229d:  0d 9a 00                STORE           G8a,#00
122a0:  e3 57 4e 27 00          PUT_PROP        "light rope",#27,#00
122a5:  b0                      RTRUE           

Routine 122a8, 0 locals

122a9:  41 f9 57 49             JE              Ge9,#57 [FALSE] 122b4
122ad:  f9 17 2c b1 1c 10       CALL_VN         b2c4 (#1c,#10)
122b3:  b0                      RTRUE           
122b4:  b1                      RFALSE          

Routine 122b8, 0 locals

122b9:  a0 99 45                JZ              G89 [FALSE] 122bf
122bc:  a0 9a c6                JZ              G8a [TRUE] 122c3
122bf:  a0 98 00 87             JZ              G88 [FALSE] 12348
122c3:  b3 ...                  PRINT_RET       "As dazzling as you may be in
the conference chamber, down a chimney you're as mortal as anyone else. It
looks extremely dangerous to climb down in darkness without anything holding
you safe."
12348:  41 99 01 00 5c          JE              G89,#01 [FALSE] 123a7
1234d:  b2 ...                  PRINT           "You abseil down the chimney,
securely held by the rope, though you have to untie yourself to drop down the
last foot or so.
"
123a4:  8c 00 25                JUMP            123ca
123a7:  b2 ...                  PRINT           "You carefully climb the rope
down the chimney.
"
123ca:  0d 99 00                STORE           G89,#00
123cd:  8f 48 a4                CALL_1N         12290
123d0:  8b 00 59                RET             #0059

Routine 123d4, 1 local

123d5:  52 01 01 00             GET_PROP_ADDR   L00,#01 -> -(SP)
123d9:  4f 00 00 00             LOADW           (SP)+,#00 -> -(SP)
123dd:  a7 00                   PRINT_ADDR      (SP)+
123df:  b0                      RTRUE           

Routine 123e0, 0 locals

123e1:  da 2f 48 f5 fb          CALL_2N         123d4 (Geb)
123e6:  b2 ...                  PRINT           " spell"
123eb:  4b fb 22                SET_ATTR        Geb,#22
123ee:  b0                      RTRUE           

Routine 123f0, 0 locals

123f1:  c1 8f f9 10 0a 57       JE              Ge9,#100a [FALSE] 1240c
123f7:  da 2f 48 f5 fb          CALL_2N         123d4 (Geb)
123fc:  b2 ...                  PRINT           " spell ("
12403:  aa fb                   PRINT_OBJ       Geb
12405:  b2 ...                  PRINT           ")"
12408:  4b fb 22                SET_ATTR        Geb,#22
1240b:  b0                      RTRUE           
1240c:  41 f9 21 4c             JE              Ge9,#21 [FALSE] 1241a
12410:  f9 0b 2c b1 10 0a fb    CALL_VN         b2c4 (#100a,Geb)
12417:  b3 ...                  PRINT_RET       "."
1241a:  b1                      RFALSE          

Routine 1241c, 3 locals

1241d:  41 f9 21 01 64          JE              Ge9,#21 [FALSE] 12584
12422:  a2 fb 00 42             GET_CHILD       Geb -> -(SP) [FALSE] 12426
12426:  e9 7f 01                PULL            L00
12429:  a0 01 d1                JZ              L00 [TRUE] 1243b
1242c:  51 01 29 00             GET_PROP        L00,#29 -> -(SP)
12430:  41 00 64 44             JE              (SP)+,#64 [FALSE] 12436
12434:  95 02                   INC             L01
12436:  a1 01 01 bf f3          GET_SIBLING     L00 -> L00 [TRUE] 1242c
1243b:  43 02 00 00 80          JG              L01,#00 [FALSE] 124be
12440:  b2 ...                  PRINT           "The "
12445:  a2 fb 00 42             GET_CHILD       Geb -> -(SP) [FALSE] 12449
12449:  e9 7f 01                PULL            L00
1244c:  a0 01 80 2f             JZ              L00 [TRUE] 1247d
12450:  51 01 29 00             GET_PROP        L00,#29 -> -(SP)
12454:  41 00 64 00 21          JE              (SP)+,#64 [FALSE] 12478
12459:  95 03                   INC             L02
1245b:  da 2f 48 f5 01          CALL_2N         123d4 (L00)
12460:  55 02 01 00             SUB             L01,#01 -> -(SP)
12464:  61 03 00 47             JE              L02,(SP)+ [FALSE] 1246d
12468:  b2 ...                  PRINT           " and "
1246d:  55 02 01 00             SUB             L01,#01 -> -(SP)
12471:  62 03 00 45             JL              L02,(SP)+ [FALSE] 12478
12475:  b2 ...                  PRINT           ", "
12478:  a1 01 01 bf d5          GET_SIBLING     L00 -> L00 [TRUE] 12450
1247d:  41 02 01 4c             JE              L01,#01 [FALSE] 1248b
12481:  b2 ...                  PRINT           " spell is"
12488:  8c 00 0b                JUMP            12494
1248b:  b2 ...                  PRINT           " spells are"
12494:  b2 ...                  PRINT           " indelibly etched on your
memory. Other than that, y"
124bb:  8c 00 05                JUMP            124c1
124be:  b2 ...                  PRINT           "Y"
124c1:  b2 ...                  PRINT           "ou have "
124c8:  0d 02 00                STORE           L01,#00
124cb:  0d 03 00                STORE           L02,#00
124ce:  a2 fb 00 42             GET_CHILD       Geb -> -(SP) [FALSE] 124d2
124d2:  e9 7f 01                PULL            L00
124d5:  a0 01 d1                JZ              L00 [TRUE] 124e7
124d8:  51 01 29 00             GET_PROP        L00,#29 -> -(SP)
124dc:  42 00 64 44             JL              (SP)+,#64 [FALSE] 124e2
124e0:  95 02                   INC             L01
124e2:  a1 01 01 bf f3          GET_SIBLING     L00 -> L00 [TRUE] 124d8
124e7:  43 02 00 00 8a          JG              L01,#00 [FALSE] 12574
124ec:  b2 ...                  PRINT           "the "
124f1:  a2 fb 00 42             GET_CHILD       Geb -> -(SP) [FALSE] 124f5
124f5:  e9 7f 01                PULL            L00
124f8:  a0 01 80 77             JZ              L00 [TRUE] 12571
124fc:  51 01 29 00             GET_PROP        L00,#29 -> -(SP)
12500:  42 00 64 00 69          JL              (SP)+,#64 [FALSE] 1256c
12505:  95 03                   INC             L02
12507:  da 2f 2f 27 01          CALL_2N         bc9c (L00)
1250c:  51 01 29 00             GET_PROP        L00,#29 -> -(SP)
12510:  41 00 02 4b             JE              (SP)+,#02 [FALSE] 1251d
12514:  b2 ...                  PRINT           " (twice)"
1251d:  51 01 29 00             GET_PROP        L00,#29 -> -(SP)
12521:  41 00 03 4b             JE              (SP)+,#03 [FALSE] 1252e
12525:  b2 ...                  PRINT           " (thrice)"
1252e:  51 01 29 00             GET_PROP        L00,#29 -> -(SP)
12532:  41 00 04 4d             JE              (SP)+,#04 [FALSE] 12541
12536:  b2 ...                  PRINT           " (four times)"
12541:  51 01 29 00             GET_PROP        L00,#29 -> -(SP)
12545:  42 00 05 cd             JL              (SP)+,#05 [TRUE] 12554
12549:  b2 ...                  PRINT           " (many times)"
12554:  55 02 01 00             SUB             L01,#01 -> -(SP)
12558:  61 03 00 47             JE              L02,(SP)+ [FALSE] 12561
1255c:  b2 ...                  PRINT           " and "
12561:  55 02 01 00             SUB             L01,#01 -> -(SP)
12565:  62 03 00 45             JL              L02,(SP)+ [FALSE] 1256c
12569:  b2 ...                  PRINT           ", "
1256c:  a1 01 01 bf 8d          GET_SIBLING     L00 -> L00 [TRUE] 124fc
12571:  8c 00 09                JUMP            1257b
12574:  b2 ...                  PRINT           "no spells"
1257b:  b3 ...                  PRINT_RET       " memorised."
12584:  41 f9 13 01 37          JE              Ge9,#13 [FALSE] 126be
12589:  51 3b 29 00             GET_PROP        G2b,#29 -> -(SP)
1258d:  41 00 64 00 29          JE              (SP)+,#64 [FALSE] 125b9
12592:  b3 ...                  PRINT_RET       "That spell is indelibly etched
on your memory already."
125b9:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
125bd:  54 00 01 00             ADD             (SP)+,#01 -> -(SP)
125c1:  e3 9b fb 29 00          PUT_PROP        Geb,#29,(SP)+
125c6:  b2 ...                  PRINT           "You commit the "
125d3:  da 2f 48 f5 3b          CALL_2N         123d4 (G2b)
125d8:  b2 ...                  PRINT           " spell to memory"
125e5:  66 3b fb c7             JIN             G2b,Geb [TRUE] 125ee
125e9:  e3 97 3b 29 00          PUT_PROP        G2b,#29,#00
125ee:  6e 3b fb                INSERT_OBJ      G2b,Geb
125f1:  51 3b 29 00             GET_PROP        G2b,#29 -> -(SP)
125f5:  54 00 01 00             ADD             (SP)+,#01 -> -(SP)
125f9:  e3 9b 3b 29 00          PUT_PROP        G2b,#29,(SP)+
125fe:  51 3b 29 00             GET_PROP        G2b,#29 -> -(SP)
12602:  41 00 01 45             JE              (SP)+,#01 [FALSE] 12609
12606:  b2 ...                  PRINT           "."
12609:  51 3b 29 00             GET_PROP        G2b,#29 -> -(SP)
1260d:  41 00 02 4d             JE              (SP)+,#02 [FALSE] 1261c
12611:  b2 ...                  PRINT           " once again."
1261c:  51 3b 29 00             GET_PROP        G2b,#29 -> -(SP)
12620:  41 00 03 4d             JE              (SP)+,#03 [FALSE] 1262f
12624:  b2 ...                  PRINT           " a third time."
1262f:  51 3b 29 00             GET_PROP        G2b,#29 -> -(SP)
12633:  43 00 03 51             JG              (SP)+,#03 [FALSE] 12646
12637:  b2 ...                  PRINT           " yet another time."
12646:  51 fb 2d 00             GET_PROP        Geb,#2d -> -(SP)
1264a:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
1264e:  63 00 00 c4             JG              (SP)+,(SP)+ [TRUE] 12654
12652:  bb                      NEW_LINE        
12653:  b0                      RTRUE           
12654:  a2 fb ff 4d             GET_CHILD       Geb -> Gef [FALSE] 12663
12658:  e8 bf ff                PUSH            Gef
1265b:  e9 7f ff                PULL            Gef
1265e:  a1 ff 00 bf fa          GET_SIBLING     Gef -> -(SP) [TRUE] 1265b
12663:  2d 01 ff                STORE           L00,Gef
12666:  f9 1a 2c b1 11 fb 01    CALL_VN         b2c4 (#11,Geb,L00)
1266d:  b3 ...                  PRINT_RET       "  You have so much rushing
around in your head, though, that something may easily have been lost in the
confusion."
126be:  41 f9 11 00 3a          JE              Ge9,#11 [FALSE] 126fb
126c3:  66 3b fb 41             JIN             G2b,Geb [FALSE] RTRUE
126c7:  51 3b 29 00             GET_PROP        G2b,#29 -> -(SP)
126cb:  41 00 64 c1             JE              (SP)+,#64 [TRUE] RTRUE
126cf:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
126d3:  43 00 00 4f             JG              (SP)+,#00 [FALSE] 126e4
126d7:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
126db:  55 00 01 00             SUB             (SP)+,#01 -> -(SP)
126df:  e3 9b fb 29 00          PUT_PROP        Geb,#29,(SP)+
126e4:  51 3b 29 00             GET_PROP        G2b,#29 -> -(SP)
126e8:  55 00 01 00             SUB             (SP)+,#01 -> -(SP)
126ec:  e3 9b 3b 29 00          PUT_PROP        G2b,#29,(SP)+
126f1:  51 3b 29 00             GET_PROP        G2b,#29 -> -(SP)
126f5:  a0 00 44                JZ              (SP)+ [FALSE] 126fa
126f8:  a9 3b                   REMOVE_OBJ      G2b
126fa:  b0                      RTRUE           
126fb:  b1                      RFALSE          

Routine 126fc, 0 locals

126fd:  b2 ...                  PRINT           "Experimental Spell Book #5"
12714:  b0                      RTRUE           

Routine 12718, 2 locals

12719:  c1 97 f9 28 29 5e       JE              Ge9,#28,#29 [FALSE] 1273b
1271f:  da 2f 2f 1f fb          CALL_2N         bc7c (Geb)
12724:  b3 ...                  PRINT_RET       " is open whenever you need
it."
1273b:  41 f9 43 56             JE              Ge9,#43 [FALSE] 12753
1273f:  da 2f 2f 1f fb          CALL_2N         bc7c (Geb)
12744:  b3 ...                  PRINT_RET       " remains unmarked."
12753:  41 f9 62 00 4b          JE              Ge9,#62 [FALSE] 127a1
12758:  51 fb 34 00             GET_PROP        Geb,#34 -> -(SP)
1275c:  a0 00 5b                JZ              (SP)+ [FALSE] 12778
1275f:  b3 ...                  PRINT_RET       "(This spell book has no
pages.)"
12778:  51 fb 34 01             GET_PROP        Geb,#34 -> L00
1277c:  0d 02 00                STORE           L01,#00
1277f:  51 fb 2d 00             GET_PROP        Geb,#2d -> -(SP)
12783:  62 02 00 4e             JL              L01,(SP)+ [FALSE] 12793
12787:  6f 01 02 00             LOADW           L00,L01 -> -(SP)
1278b:  a0 00 c7                JZ              (SP)+ [TRUE] 12793
1278e:  95 02                   INC             L01
12790:  8c ff ee                JUMP            1277f
12793:  51 fb 2d 00             GET_PROP        Geb,#2d -> -(SP)
12797:  61 02 00 c1             JE              L01,(SP)+ [TRUE] RTRUE
1279b:  e1 ab 01 02 3b          STOREW          L00,L01,G2b
127a0:  b0                      RTRUE           
127a1:  c1 8f f9 10 01 00 5d    JE              Ge9,#1001 [FALSE] 12803
127a8:  4a 3a 23 80 2b          TEST_ATTR       G2a,#23 [TRUE] 127d6
127ad:  b3 ...                  PRINT_RET       "The binding of a spell book
can only accommodate scrolls."
127d6:  e0 23 7f 83 3a 00 bc 00 CALL_VS         1fe0c (G2a,#00bc) -> -(SP)
127de:  a0 00 80 23             JZ              (SP)+ [TRUE] 12803
127e2:  b3 ...                  PRINT_RET       "An unwritten scroll would
contribute nothing."
12803:  b1                      RFALSE          

Routine 12804, 3 locals

12805:  41 f9 21 00 4d          JE              Ge9,#21 [FALSE] 12855
1280a:  51 fb 34 00             GET_PROP        Geb,#34 -> -(SP)
1280e:  a0 00 5b                JZ              (SP)+ [FALSE] 1282a
12811:  b3 ...                  PRINT_RET       "(This spell book has no
pages.)"
1282a:  51 fb 34 01             GET_PROP        Geb,#34 -> L00
1282e:  0d 02 00                STORE           L01,#00
12831:  51 fb 2d 00             GET_PROP        Geb,#2d -> -(SP)
12835:  62 02 00 5d             JL              L01,(SP)+ [FALSE] 12854
12839:  6f 01 02 00             LOADW           L00,L01 -> -(SP)
1283d:  a0 00 d6                JZ              (SP)+ [TRUE] 12854
12840:  6f 01 02 03             LOADW           L00,L01 -> L02
12844:  b2 ...                  PRINT           "The "
12849:  f9 1b 2c b1 21 03       CALL_VN         b2c4 (#21,L02)
1284f:  95 02                   INC             L01
12851:  8c ff df                JUMP            12831
12854:  b0                      RTRUE           
12855:  c1 8f f9 10 01 00 be    JE              Ge9,#1001 [FALSE] 12918
1285c:  a2 3a 02 42             GET_CHILD       G2a -> L01 [FALSE] 12860
12860:  f9 1a 2c b1 62 fb 02    CALL_VN         b2c4 (#62,Geb,L01)
12867:  a9 3a                   REMOVE_OBJ      G2a
12869:  b2 ...                  PRINT           "Your spell book begins to glow
softly. Almost imperceptibly, the binding swells and closes over the edge of "
128b6:  da 2f 2f 17 3a          CALL_2N         bc5c (G2a)
128bb:  b2 ...                  PRINT           ", which straightens and
becomes the new "
128d8:  da 2f 2f 27 02          CALL_2N         bc9c (L01)
128dd:  b3 ...                  PRINT_RET       " page. The book's brightness
fades as the corners settle to perfect right angles."
12918:  b1                      RFALSE          

Routine 1291c, 1 local

1291d:  2d 01 fb                STORE           L00,Geb
12920:  a3 01 00                GET_PARENT      L00 -> -(SP)
12923:  a0 00 d3                JZ              (SP)+ [TRUE] 12937
12926:  61 01 22 49             JE              L00,G12 [FALSE] 12931
1292a:  4b fb 0e                SET_ATTR        Geb,#0e
1292d:  4b fb 04                SET_ATTR        Geb,#04
12930:  b0                      RTRUE           
12931:  a3 01 01                GET_PARENT      L00 -> L00
12934:  8c ff eb                JUMP            12920
12937:  4c fb 0e                CLEAR_ATTR      Geb,#0e
1293a:  4c fb 04                CLEAR_ATTR      Geb,#04
1293d:  b1                      RFALSE          

Routine 12940, 3 locals

12941:  cd 4f 02 ff ff          STORE           L01,#ffff
12946:  e0 23 7f 83 fb 00 bc 00 CALL_VS         1fe0c (Geb,#00bc) -> -(SP)
1294e:  a0 00 c7                JZ              (SP)+ [TRUE] 12956
12951:  cd 4f 02 61 b8          STORE           L01,"unwritten"
12956:  4a fb 08 5d             TEST_ATTR       Geb,#08 [FALSE] 12975
1295a:  a2 fb 00 42             GET_CHILD       Geb -> -(SP) [FALSE] 1295e
1295e:  a0 00 d6                JZ              (SP)+ [TRUE] 12975
12961:  a2 fb 00 42             GET_CHILD       Geb -> -(SP) [FALSE] 12965
12965:  4a 00 21 4e             TEST_ATTR       (SP)+,#21 [FALSE] 12975
12969:  a2 fb 00 42             GET_CHILD       Geb -> -(SP) [FALSE] 1296d
1296d:  52 00 01 00             GET_PROP_ADDR   (SP)+,#01 -> -(SP)
12971:  4f 00 00 02             LOADW           (SP)+,#00 -> L01
12975:  88 2a 81 03             CALL_1S         aa04 -> L02
12979:  c1 8f 03 5b 6d 47       JE              L02,"scrolls" [FALSE] 12984
1297f:  cd 4f 40 10 05          STORE           G30,#1005
12984:  c1 80 03 5b 6d 5b 64 62 09 d2 
                               JE              L02,"scrolls","scroll","vellum"
[TRUE] 1299e
1298e:  61 03 02 ce             JE              L02,L01 [TRUE] 1299e
12992:  52 fb 01 00             GET_PROP_ADDR   Geb,#01 -> -(SP)
12996:  4f 00 00 00             LOADW           (SP)+,#00 -> -(SP)
1299a:  61 03 00 47             JE              L02,(SP)+ [FALSE] 129a3
1299e:  95 01                   INC             L00
129a0:  8c 00 04                JUMP            129a5
129a3:  ab 01                   RET             L00
129a5:  8c ff cf                JUMP            12975

orphan code fragment:

129a8:  b1                      RFALSE          

Routine 129ac, 1 local

129ad:  41 f9 21 00 42          JE              Ge9,#21 [FALSE] 129f2
129b2:  a2 fb 01 42             GET_CHILD       Geb -> L00 [FALSE] 129b6
129b6:  4b fb 08                SET_ATTR        Geb,#08
129b9:  a0 01 c6                JZ              L00 [TRUE] 129c0
129bc:  4a 01 21 d9             TEST_ATTR       L00,#21 [TRUE] 129d7
129c0:  b3 ...                  PRINT_RET       "The scroll is as yet
unwritten."
129d7:  b2 ...                  PRINT           "The scroll reads ""
129e6:  f9 0b 2c b1 10 0a 01    CALL_VN         b2c4 (#100a,L00)
129ed:  b3 ...                  PRINT_RET       ""."
129f2:  b1                      RFALSE          

Routine 129f4, 0 locals

129f5:  41 2e 02 00 3b          JE              G1e,#02 [FALSE] 12a33
129fa:  4a fb 08 00 36          TEST_ATTR       Geb,#08 [FALSE] 12a33
129ff:  a2 fb 00 42             GET_CHILD       Geb -> -(SP) [FALSE] 12a03
12a03:  a0 00 ca                JZ              (SP)+ [TRUE] 12a0e
12a06:  a2 fb 00 42             GET_CHILD       Geb -> -(SP) [FALSE] 12a0a
12a0a:  4a 00 21 d6             TEST_ATTR       (SP)+,#21 [TRUE] 12a22
12a0e:  b2 ...                  PRINT           " (which is unwritten)"
12a1f:  8c 00 13                JUMP            12a33
12a22:  b2 ...                  PRINT           " (of "
12a27:  a2 fb 00 42             GET_CHILD       Geb -> -(SP) [FALSE] 12a2b
12a2b:  da 2f 2f 17 00          CALL_2N         bc5c ((SP)+)
12a30:  b2 ...                  PRINT           ")"
12a33:  b1                      RFALSE          

Routine 12a34, 3 locals
    Parsing routine for:
        "check scope = [parse $4a8d]"
        "learn scope = [parse $4a8d]"

12a35:  a0 90 c0                JZ              G80 [TRUE] RFALSE
12a38:  41 79 01 47             JE              G69,#01 [FALSE] 12a41
12a3c:  41 5e 21 c0             JE              G4e,#21 [TRUE] RFALSE
12a40:  b0                      RTRUE           
12a41:  41 79 02 00 41          JE              G69,#02 [FALSE] 12a85
12a46:  a2 22 00 42             GET_CHILD       G12 -> -(SP) [FALSE] 12a4a
12a4a:  e9 7f 01                PULL            L00
12a4d:  a0 01 80 35             JZ              L00 [TRUE] 12a84
12a51:  4a 01 24 00 2b          TEST_ATTR       L00,#24 [FALSE] 12a7f
12a56:  0d 03 00                STORE           L02,#00
12a59:  51 01 2d 00             GET_PROP        L00,#2d -> -(SP)
12a5d:  62 03 00 00 1f          JL              L02,(SP)+ [FALSE] 12a7f
12a62:  51 01 34 00             GET_PROP        L00,#34 -> -(SP)
12a66:  6f 00 03 00             LOADW           (SP)+,L02 -> -(SP)
12a6a:  a0 00 d4                JZ              (SP)+ [TRUE] 12a7f
12a6d:  51 01 34 00             GET_PROP        L00,#34 -> -(SP)
12a71:  6f 00 03 02             LOADW           (SP)+,L02 -> L01
12a75:  da 2f 29 80 02          CALL_2N         a600 (L01)
12a7a:  95 03                   INC             L02
12a7c:  8c ff dc                JUMP            12a59
12a7f:  a1 01 01 bf cf          GET_SIBLING     L00 -> L00 [TRUE] 12a51
12a84:  b0                      RTRUE           
12a85:  b0                      RTRUE           

Routine 12a88, 0 locals
    Action routine for:
        "memory"

12a89:  a0 90 00 23             JZ              G80 [FALSE] 12aae
12a8d:  b3 ...                  PRINT_RET       "You have no magical ability
that you know of."
12aae:  f9 17 2c b1 21 51       CALL_VN         b2c4 (#21,#51)
12ab4:  b0                      RTRUE           

Routine 12ab8, 0 locals
    Action routine for:
        "learn scope = [parse $4a8d]"

12ab9:  a0 90 5f                JZ              G80 [FALSE] 12ad9
12abc:  b3 ...                  PRINT_RET       "You don't believe you have the
ability."
12ad9:  41 10 13 00 3b          JE              G00,#13 [FALSE] 12b17
12ade:  b2 ...                  PRINT           "(The magic writing of the
spells casts enough light that you can read them.)
"
12b17:  f9 16 2c b1 13 51 3a    CALL_VN         b2c4 (#13,#51,G2a)
12b1e:  b0                      RTRUE           

Routine 12b20, 0 locals
    Action routine for:
        "c,cast"
        "c,cast noun"

12b21:  f9 1a 2c b1 63 9e 3a    CALL_VN         b2c4 (#63,G8e,G2a)
12b28:  b0                      RTRUE           

Routine 12b2c, 0 locals
    Action routine for:
        "cast ATTRIBUTE(33)"
        "cast ATTRIBUTE(33) at noun"
        "cast ATTRIBUTE(33) on noun"

12b2d:  a0 90 00 23             JZ              G80 [FALSE] 12b52
12b31:  b3 ...                  PRINT_RET       "You have no magical ability
that you know of."
12b52:  2d 9e 3a                STORE           G8e,G2a
12b55:  f9 16 2c b1 11 51 3a    CALL_VN         b2c4 (#11,#51,G2a)
12b5c:  4a 3a 08 5c             TEST_ATTR       G2a,#08 [FALSE] 12b7a
12b60:  4c 3a 08                CLEAR_ATTR      G2a,#08
12b63:  e0 27 2d 28 3a 35 00    CALL_VS         b4a0 (G2a,#35) -> -(SP)
12b6a:  a0 00 40                JZ              (SP)+ [FALSE] RFALSE
12b6d:  b3 ...                  PRINT_RET       "Nothing happens."
12b7a:  a0 3b d1                JZ              G2b [TRUE] 12b8c
12b7d:  da 2f 2b 69 3b          CALL_2N         ada4 (G2b)
12b82:  e0 27 2d 28 3b 04 00    CALL_VS         b4a0 (G2b,#04) -> -(SP)
12b89:  a0 00 40                JZ              (SP)+ [FALSE] RFALSE
12b8c:  e0 27 2d 28 3a 34 00    CALL_VS         b4a0 (G2a,#34) -> -(SP)
12b93:  a0 00 40                JZ              (SP)+ [FALSE] RFALSE
12b96:  b3 ...                  PRINT_RET       "Nothing happens."

Routine 12ba4, 1 local

12ba5:  c1 83 83 47 cf 48 29 56 JE              G73,"c,cast","cast" [FALSE]
12bc1
12bad:  92 51 00 42             GET_CHILD       "memory" -> -(SP) [FALSE] 12bb1
12bb1:  e9 7f 01                PULL            L00
12bb4:  a0 01 cc                JZ              L00 [TRUE] 12bc1
12bb7:  da 2f 29 80 01          CALL_2N         a600 (L00)
12bbc:  a1 01 01 bf f8          GET_SIBLING     L00 -> L00 [TRUE] 12bb7
12bc1:  b1                      RFALSE          

Routine 12bc4, 4 locals

12bc5:  c1 97 51 0c 12 02 e9    JE              G41,#0c,#12 [FALSE] 12eb3
12bcc:  41 51 12 00 28          JE              G41,#12 [FALSE] 12bf7
12bd1:  c1 8f 83 48 29 45       JE              G73,"cast" [FALSE] 12bda
12bd7:  0d 04 01                STORE           L03,#01
12bda:  c1 80 83 52 fd 54 80 54 89 45 
                               JE             
G73,"learn","memorise","memorize" [FALSE] 12be7
12be4:  0d 04 02                STORE           L03,#02
12be7:  c1 8f 83 49 88 45       JE              G73,"copy" [FALSE] 12bf0
12bed:  0d 04 03                STORE           L03,#03
12bf0:  a0 04 46                JZ              L03 [FALSE] 12bf7
12bf3:  2d 51 53                STORE           G41,G43
12bf6:  b1                      RFALSE          
12bf7:  2d 81 84                STORE           G71,G74
12bfa:  a0 04 c4                JZ              L03 [TRUE] 12bff
12bfd:  95 81                   INC             G71
12bff:  88 2a 94 01             CALL_1S         aa50 -> L00
12c03:  54 22 01 02             ADD             G12,#01 -> L01
12c07:  63 02 13 80 1d          JG              L01,G03 [TRUE] 12c27
12c0c:  4a 02 21 54             TEST_ATTR       L01,#21 [FALSE] 12c22
12c10:  e0 2b 2a 45 02 01 00    CALL_VS         a914 (L01,L00) -> -(SP)
12c17:  41 00 01 49             JE              (SP)+,#01 [FALSE] 12c22
12c1b:  4a 02 22 45             TEST_ATTR       L01,#22 [FALSE] 12c22
12c1f:  0d 03 01                STORE           L02,#01
12c22:  95 02                   INC             L01
12c24:  8c ff e2                JUMP            12c07
12c27:  41 03 01 02 29          JE              L02,#01 [FALSE] 12e53
12c2c:  c1 97 04 00 01 01 67    JE              L03,#00,#01 [FALSE] 12d98
12c33:  a0 9f 01 1c             JZ              G8f [FALSE] 12d51
12c37:  0d 9f 01                STORE           G8f,#01
12c3a:  b3 ...                  PRINT_RET       "You speak the word, but it
seems that isn't enough to make the magical forces gather. Perhaps if you could
voice the spell more quickly, with more assuredness... you would need to have
learnt the spell in advance, though.

Odd how at any one time, you can remember the details of some spells but not
others.

[Type the "spells" command to see which you can remember at any given moment.]"
12d51:  b3 ...                  PRINT_RET       "You haven't got that spell
committed to memory. [Type "spells" to see what you do remember.]"
12d98:  41 04 02 00 97          JE              L03,#02 [FALSE] 12e32
12d9d:  b3 ...                  PRINT_RET       "It seems to be not enough to
be able to read a copy of the spell. No, the writing has to be part of the
fabric of a spell book you have in your hands, so that the magic can flow from
the binding into your own spine."
12e32:  41 04 03 5f             JE              L03,#03 [FALSE] 12e53
12e36:  b3 ...                  PRINT_RET       "You have no text of that spell
to copy."
12e53:  41 04 01 00 2b          JE              L03,#01 [FALSE] 12e81
12e58:  b3 ...                  PRINT_RET       "You haven't learned that
spell, if indeed it is a spell."
12e81:  c1 97 04 02 03 00 2d    JE              L03,#02,#03 [FALSE] 12eb3
12e88:  b3 ...                  PRINT_RET       "You haven't access to that
spell, if indeed it is a spell."
12eb3:  b1                      RFALSE          

Routine 12eb4, 2 locals

12eb5:  61 44 22 40             JE              G34,G12 [FALSE] RFALSE
12eb9:  92 51 00 42             GET_CHILD       "memory" -> -(SP) [FALSE] 12ebd
12ebd:  e9 7f 02                PULL            L01
12ec0:  a0 02 d9                JZ              L01 [TRUE] 12eda
12ec3:  52 02 01 00             GET_PROP_ADDR   L01,#01 -> -(SP)
12ec7:  4f 00 00 00             LOADW           (SP)+,#00 -> -(SP)
12ecb:  61 01 00 48             JE              L00,(SP)+ [FALSE] 12ed5
12ecf:  2d 9e 02                STORE           G8e,L01
12ed2:  8b 47 cf                RET             "c,cast"
12ed5:  a1 02 02 bf eb          GET_SIBLING     L01 -> L01 [TRUE] 12ec3
12eda:  b1                      RFALSE          

Routine 12edc, 1 local

12edd:  c1 8f 01 47 cf 4e       JE              L00,"c,cast" [FALSE] 12eef
12ee3:  b2 ...                  PRINT           "cast a spell at"
12eee:  b0                      RTRUE           
12eef:  b1                      RFALSE          

Routine 12ef0, 0 locals

12ef1:  a0 3b 00 21             JZ              G2b [FALSE] 12f14
12ef5:  b3 ...                  PRINT_RET       "There is a brief, blinding
flash of light."
12f14:  4a 3b 00 00 2b          TEST_ATTR       G2b,#00 [FALSE] 12f42
12f19:  b3 ...                  PRINT_RET       "The spell, unable to work on
living tissue, goes sour."
12f42:  a3 3b 00                GET_PARENT      G2b -> -(SP)
12f45:  41 00 06 59             JE              (SP)+,#06 [FALSE] 12f60
12f49:  b3 ...                  PRINT_RET       "The spell dissipates at
random."
12f60:  c1 93 3b 4a 00 a7 00 47 JE              G2b,#4a,#00a7 [FALSE] 12fad
12f68:  b3 ...                  PRINT_RET       "You feel the spell disdaining
to lower itself to enchant a lamp which works perfectly well already."
12fad:  4a 3b 09 00 39          TEST_ATTR       G2b,#09 [FALSE] 12fe9
12fb2:  b2 ...                  PRINT           "The spell dissipates, perhaps
because "
12fcf:  da 2f 2f 17 3b          CALL_2N         bc5c (G2b)
12fd4:  b3 ...                  PRINT_RET       " is already giving off light."
12fe9:  4b 3b 09                SET_ATTR        G2b,#09
12fec:  e0 23 7f 83 3b 00 87 00 CALL_VS         1fe0c (G2b,#0087) -> -(SP)
12ff4:  a0 00 c8                JZ              (SP)+ [TRUE] 12ffd
12ff7:  e3 93 3b 17 87 71       PUT_PROP        G2b,#17,S156
12ffd:  b2 ...                  PRINT           "There is an almost blinding
flash as "
13018:  da 2f 2f 17 3b          CALL_2N         bc5c (G2b)
1301d:  b3 ...                  PRINT_RET       " takes on a glow! Not for a
long moment is the light level tolerable."

Routine 13050, 0 locals

13051:  a0 3b 00 3b             JZ              G2b [FALSE] 1308e
13055:  b3 ...                  PRINT_RET       "The world at large is already
unfastened, or at least as unfastened as is safe."
1308e:  41 3b 4e 00 7a          JE              G2b,#4e [FALSE] 1310b
13093:  8f 48 a7                CALL_1N         1229c
13096:  0d 98 00                STORE           G88,#00
13099:  0d 99 00                STORE           G89,#00
1309c:  0d 9b 00                STORE           G8b,#00
1309f:  0c 4e 03                CLEAR_ATTR      "light rope",#03
130a2:  2e 4e 10                INSERT_OBJ      "light rope",G00
130a5:  41 10 3c 00 46          JE              G00,#3c [FALSE] 130ee
130aa:  2e 4e 22                INSERT_OBJ      "light rope",G12
130ad:  b3 ...                  PRINT_RET       "The rope comes perilously
close to falling down the chimney, but you catch it just in time."
130ee:  b3 ...                  PRINT_RET       "The rope falls obligingly to
your feet."
1310b:  b2 ...                  PRINT           "Nothing happens, perhaps
because "
13124:  da 2f 2f 17 3b          CALL_2N         bc5c (G2b)
13129:  b3 ...                  PRINT_RET       " was already unfastened."

Routine 1313c, 1 local

1313d:  a0 3b 00 58             JZ              G2b [FALSE] 13197
13141:  b2 ...                  PRINT           "As your brows frown, the air
around you gathers with vile winged insects, fluttering angrily about you for a
moment. "
13194:  8c 00 53                JUMP            131e8
13197:  b2 ...                  PRINT           "As your brows frown, the air
around you gathers with vile winged insects, which surge forward to plague "
131e0:  da 2f 2f 17 3b          CALL_2N         bc5c (G2b)
131e5:  b2 ...                  PRINT           ". "
131e8:  4a 3b 06 00 b6          TEST_ATTR       G2b,#06 [FALSE] 132a1
131ed:  a3 3b 01                GET_PARENT      G2b -> L00
131f0:  a9 3b                   REMOVE_OBJ      G2b
131f2:  41 3b 40 00 46          JE              G2b,#40 [FALSE] 1323b
131f7:  2e 42 01                INSERT_OBJ      "stripped ham-bone",L00
131fa:  b2 ...                  PRINT           "Within seconds they have
stripped "
13213:  da 2f 2f 17 3b          CALL_2N         bc5c (G2b)
13218:  b3 ...                  PRINT_RET       " to the bone! They dissipate,
their work done."
1323b:  c1 8f 3b 00 61 00 20    JE              G2b,#0061 [FALSE] 13260
13242:  ce 2f 00 91 01          INSERT_OBJ      "drum",L00
13247:  b3 ...                  PRINT_RET       "There is a sudden flash of
light!"
13260:  b2 ...                  PRINT           "Within seconds they have
stripped "
13279:  da 2f 2f 17 3b          CALL_2N         bc5c (G2b)
1327e:  b3 ...                  PRINT_RET       " to nothing! They dissipate,
their work done."
132a1:  2d ff 3b                STORE           Gef,G2b
132a4:  c1 8f ff 00 63 00 8c    JE              Gef,#0063 [FALSE] 13335
132ab:  c6 0f 00 63 00 68 00 21 JIN             "oil-snake","Dark Doorway"
[FALSE] 132d2
132b3:  b3 ...                  PRINT_RET       "But it's not to be fooled a
second time."
132d2:  ce 0f 00 63 00 68       INSERT_OBJ      "oil-snake","Dark Doorway"
132d8:  b3 ...                  PRINT_RET       "It recoils (literally)
backward, retreating south through the passage until out of sight! Your insects
dissipate, their work done."
13335:  c1 8f ff 00 9f 00 27    JE              Gef,#009f [FALSE] 13361
1333c:  b3 ...                  PRINT_RET       "The carnivorous lily makes
very quick work of them."
13361:  c1 8f ff 00 9c 00 26    JE              Gef,#009c [FALSE] 1338c
13368:  89 00 9c                REMOVE_OBJ      "corpse of the creature"
1336b:  b3 ...                  PRINT_RET       "They collapse the remains to
dust in seconds."
1338c:  c1 8f ff 00 9d 00 29    JE              Gef,#009d [FALSE] 133ba
13393:  b3 ...                  PRINT_RET       "They are unable to make any
inroad into the eggshell."
133ba:  c1 8f ff 00 66 00 4b    JE              Gef,#0066 [FALSE] 1340a
133c1:  b3 ...                  PRINT_RET       "But it is a very big tree and
there are very few insects, so that the devastation is hardly noticeable."
1340a:  c1 8f ff 00 73 00 75    JE              Gef,#0073 [FALSE] 13484
13411:  ca 1f 00 73 08 80 6e    TEST_ATTR       "garbage heap",#08 [TRUE] 13484
13418:  cb 1f 00 73 08          SET_ATTR        "garbage heap",#08
1341d:  b3 ...                  PRINT_RET       "They set about the garbage
heap with relish, doing battle royal with the native woodlice and ants. Only
when finally triumphant do they dissipate."
13484:  b3 ...                  PRINT_RET       "But nothing results from this,
and they dissipate again."

Routine 134b0, 0 locals

134b1:  4b fb 10                SET_ATTR        Geb,#10
134b4:  b3 ...                  PRINT_RET       "Experimental Spell Book #5
"

Routine 134cc, 0 locals

134cd:  4a fb 10 5a             TEST_ATTR       Geb,#10 [FALSE] 134e9
134d1:  b2 ...                  PRINT           "Experimental Spell Book #5"
134e8:  b0                      RTRUE           
134e9:  b1                      RFALSE          

Routine 134ec, 0 locals

134ed:  ca 1f 00 58 0c c0       TEST_ATTR       "handwritten note",#0c [TRUE]
RFALSE
134f3:  41 37 62 c0             JE              G27,#62 [TRUE] RFALSE
134f7:  ce 2f 00 58 22          INSERT_OBJ      "handwritten note",G12
134fc:  cb 1f 00 58 0c          SET_ATTR        "handwritten note",#0c
13501:  b2 ...                  PRINT           "A note tucked into the book
falls out and into your hand.

"
1352c:  b1                      RFALSE          

Routine 13530, 0 locals

13531:  e3 93 fb 16 87 7b       PUT_PROP        Geb,#16,S159
13537:  b3 ...                  PRINT_RET       "Graceful, almost effeminate
handwriting on the note declares that as the parchment book is defective
(having failed the target of binding up to 50 spells), it is to be disposed of.

Since magic-imbued paper will not burn, the instructions go on to insist that
the book must be securely buried.

Presumably, whoever received this note thought that dropping the book into the
rubbish dump at one corner of the Imperial hunting woods was quite secure
enough.

(There is something troublingly familiar about the handwriting, perhaps from
your briefings last month. But you can't put your finger on it.)"

Routine 136dc, 0 locals

136dd:  e1 07 3a db 00 0a 01    STOREW          #3adb,#000a,#01
136e4:  0d 90 01                STORE           G80,#01
136e7:  0e 56 51                INSERT_OBJ      "summon small plague of
insects","memory"
136ea:  0b 56 22                SET_ATTR        "summon small plague of
insects",#22
136ed:  b0                      RTRUE           

Routine 136f0, 0 locals

136f1:  2e 57 22                INSERT_OBJ      "parchment book",G12
136f4:  0b 57 0c                SET_ATTR        "parchment book",#0c
136f7:  0d 8a 57                STORE           G7a,#57
136fa:  e3 53 57 34 3a a1       PUT_PROP        "parchment book",#34,#3aa1
13700:  f9 15 2c b1 62 57 54    CALL_VN         b2c4 (#62,#57,#54)
13707:  f9 15 2c b1 62 57 56    CALL_VN         b2c4 (#62,#57,#56)
1370e:  f9 15 2c b1 62 57 55    CALL_VN         b2c4 (#62,#57,#55)
13715:  b0                      RTRUE           

Routine 13718, 0 locals

13719:  41 98 41 00 1f          JE              G88,#41 [FALSE] 1373b
1371e:  41 9a 01 5b             JE              G8a,#01 [FALSE] 1373b
13722:  b2 ...                  PRINT           "You climb back up the rope.
"
13739:  9b 3c                   RET             #3c
1373b:  b3 ...                  PRINT_RET       "Without the aid of the rope,
there is no obvious way to get back up."

Routine 1376c, 0 locals

1376d:  e1 07 3a db 00 04 01    STOREW          #3adb,#0004,#01
13774:  b1                      RFALSE          

Routine 13778, 0 locals

13779:  41 f9 18 49             JE              Ge9,#18 [FALSE] 13784
1377d:  f9 17 2c b1 1c 0f       CALL_VN         b2c4 (#1c,#0f)
13783:  b0                      RTRUE           
13784:  b1                      RFALSE          

Routine 13788, 0 locals

13789:  41 90 01 01 5c          JE              G80,#01 [FALSE] 138e8
1378e:  e3 93 fb 2c ff ff       PUT_PROP        Geb,#2c,#ffff
13794:  8f 4d b7                CALL_1N         136dc
13797:  b3 ...                  PRINT_RET       "
Still not quite yourself, you trip over slightly, banging your head on the
lintel. Involuntarily you curse out the word "jilnix", a word you're almost
certain you've never heard before!

There is a horrid surge of power as you feel your mind creating a surge of
motion. A dark cloud of bat-like insects clashes with the clear air around you,
purposeless and malevolent. Only by great effort of will can you abolish them.

One thing seems clear. The Old Magic has returned."
138e8:  b1                      RFALSE          

Routine 138ec, 0 locals

138ed:  b2 ...                  PRINT           "You duck your head under the
lintel-stone.
"
1390e:  8b 00 62                RET             #0062

Routine 13914, 0 locals

13915:  c1 95 f9 4d 4c 4e c8    JE              Ge9,#4d,#4c,#4e [TRUE] 13922
1391c:  c1 97 f9 0f 11 55       JE              Ge9,#0f,#11 [FALSE] 13935
13922:  b3 ...                  PRINT_RET       "That would be crazy here."
13935:  b1                      RFALSE          

Routine 13938, 0 locals

13939:  c1 97 f9 28 24 00 39    JE              Ge9,#28,#24 [FALSE] 13977
13940:  b3 ...                  PRINT_RET       "This isn't one of your
cheapskate platinum-coated eggs. It's quite solid."
13977:  b1                      RFALSE          

Routine 13978, 0 locals

13979:  d1 1f 00 60 29 00       GET_PROP        "bubbling pool",#29 -> -(SP)
1397f:  c1 97 00 01 02 00 2f    JE              (SP)+,#01,#02 [FALSE] 139b3
13986:  b3 ...                  PRINT_RET       "You career into the moist
earth walls, not quite under control."
139b3:  9b 5b                   RET             #5b

Routine 139b8, 0 locals

139b9:  41 f9 3e 4e             JE              Ge9,#3e [FALSE] 139c9
139bd:  a0 3a 4a                JZ              G2a [FALSE] 139c8
139c0:  f9 13 2c b1 3e 00 60    CALL_VN         b2c4 (#3e,#0060)
139c7:  b0                      RTRUE           
139c8:  b1                      RFALSE          
139c9:  41 f9 44 5d             JE              Ge9,#44 [FALSE] 139e8
139cd:  b3 ...                  PRINT_RET       "The pool is only a few feet
across."
139e8:  b1                      RFALSE          

Routine 139ec, 0 locals

139ed:  c1 97 f9 0f 11 00 4d    JE              Ge9,#0f,#11 [FALSE] 13a3f
139f4:  b3 ...                  PRINT_RET       "The dry leaves, alternately
dusty and clammy like reptile-skin, slip almost magically from your fingers."
13a3f:  c1 95 f9 4d 23 22 00 42 JE              Ge9,#4d,#23,#22 [FALSE] 13a87
13a47:  4a fb 08 c0             TEST_ATTR       Geb,#08 [TRUE] RFALSE
13a4b:  4b fb 08                SET_ATTR        Geb,#08
13a4e:  95 1d                   INC             G0d
13a50:  2e 5d 22                INSERT_OBJ      "platinum egg",G12
13a53:  0d 8a 5d                STORE           G7a,#5d
13a56:  b3 ...                  PRINT_RET       "Turning through the leaves,
you come across a precious platinum egg!"
13a87:  41 f9 64 59             JE              Ge9,#64 [FALSE] 13aa2
13a8b:  b3 ...                  PRINT_RET       "There are 16,339 leaves."
13aa2:  b1                      RFALSE          

Routine 13aa4, 1 local

13aa5:  41 f9 3e 00 ff          JE              Ge9,#3e [FALSE] 13ba7
13aaa:  41 90 01 00 29          JE              G80,#01 [FALSE] 13ad6
13aaf:  b3 ...                  PRINT_RET       "You feel it would be highly
dangerous to drink further."
13ad6:  4a fb 08 00 33          TEST_ATTR       Geb,#08 [FALSE] 13b0c
13adb:  b3 ...                  PRINT_RET       "The water was curiously
satiating, and you can drink no more for now."
13b0c:  4b fb 08                SET_ATTR        Geb,#08
13b0f:  da 2f 2d 59 fb          CALL_2N         b564 (Geb)
13b14:  b3 ...                  PRINT_RET       "The water is imbued with
something... what? A taste of blackcurrant and the scent of morning fire-ash.
Whatever it is, it's naturally carbonated and you hiccup.

In fact, you feel quite light-headed."
13ba7:  41 f9 18 48             JE              Ge9,#18 [FALSE] 13bb1
13bab:  da 1f 2c b1 44          CALL_2N         b2c4 (#44)
13bb0:  b0                      RTRUE           
13bb1:  41 f9 23 00 21          JE              Ge9,#23 [FALSE] 13bd5
13bb6:  b3 ...                  PRINT_RET       "You can make out nothing
inside the pool."
13bd5:  41 f9 13 00 64          JE              Ge9,#13 [FALSE] 13c3c
13bda:  c1 8f 3b 00 91 00 5d    JE              G2b,#0091 [FALSE] 13c3c
13be1:  83 00 91 01             GET_PARENT      "drum" -> L00
13be5:  ce 2f 00 61 01          INSERT_OBJ      "banana",L00
13bea:  89 00 91                REMOVE_OBJ      "drum"
13bed:  89 00 92                REMOVE_OBJ      "sludge of sediment"
13bf0:  89 00 93                REMOVE_OBJ      "ore"
13bf3:  b3 ...                  PRINT_RET       "Effervescent, glowing spring
water cascades magically around the pan. There is a sudden flash of light!"
13c3c:  b1                      RFALSE          

Routine 13c40, 0 locals

13c41:  41 f9 36 4f             JE              Ge9,#36 [FALSE] 13c52
13c45:  b3 ...                  PRINT_RET       "Bubble, bubble."
13c52:  41 f9 3f 4a             JE              Ge9,#3f [FALSE] 13c5e
13c56:  f9 1a 2c b1 13 fb 3a    CALL_VN         b2c4 (#13,Geb,G2a)
13c5d:  b0                      RTRUE           
13c5e:  41 f9 3e 4c             JE              Ge9,#3e [FALSE] 13c6c
13c62:  a0 3a 49                JZ              G2a [FALSE] 13c6c
13c65:  f9 1b 2c b1 3e fb       CALL_VN         b2c4 (#3e,Geb)
13c6b:  b0                      RTRUE           
13c6c:  b1                      RFALSE          

Routine 13c70, 0 locals

13c71:  c1 8f f9 10 01 00 ea    JE              Ge9,#1001 [FALSE] 13d60
13c78:  a9 3a                   REMOVE_OBJ      G2a
13c7a:  41 3a 4a 00 b1          JE              G2a,#4a [FALSE] 13d2e
13c7f:  b3 ...                  PRINT_RET       "The brass lantern drops into
the spring water, sinking and illuminating the green depths below, which run
down for what must be yards at least; until finally the glow is too faint to
make out. Perhaps the lantern sinks still, into fathomless depths."
13d2e:  da 2f 2f 1f 3a          CALL_2N         bc7c (G2a)
13d33:  b3 ...                  PRINT_RET       " drops silently into the
spring water, vanishing without trace."
13d60:  b1                      RFALSE          

Routine 13d64, 1 local

13d65:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
13d69:  54 00 01 01             ADD             (SP)+,#01 -> L00
13d6d:  e3 9b fb 29 01          PUT_PROP        Geb,#29,L00
13d72:  2d ff 01                STORE           Gef,L00
13d75:  41 ff 02 00 2f          JE              Gef,#02 [FALSE] 13da7
13d7a:  b3 ...                  PRINT_RET       "
You're beginning to feel dangerously unsteady on your feet."
13da7:  41 ff 03 00 c2          JE              Gef,#03 [FALSE] 13e6c
13dac:  0d 90 01                STORE           G80,#01
13daf:  95 1d                   INC             G0d
13db1:  da 2f 2d 6e fb          CALL_2N         b5b8 (Geb)
13db6:  e3 97 fb 29 00          PUT_PROP        Geb,#29,#00
13dbb:  b3 ...                  PRINT_RET       "
...And suddenly, there is the Power! It crackles through your whole body,
sparking at your fingernails and toenails, sending shivers along your limbs.
You feel suddenly afraid to imagine, afraid that you can no longer tell
imagination from reality."
13e6c:  b1                      RFALSE          

Routine 13e70, 0 locals

13e71:  41 f9 2c 00 46          JE              Ge9,#2c [FALSE] 13eba
13e76:  ce 2f 00 91 22          INSERT_OBJ      "drum",G12
13e7b:  b3 ...                  PRINT_RET       "Delicious! Just as you reach
the last morsel, there is another blinding flash of light."
13eba:  b1                      RFALSE          

Routine 13ebc, 0 locals

13ebd:  b2 ...                  PRINT           "A watchful oil-snake coils and
uncoils itself restlessly, occupying its territory but making no move towards
you as yet"
13f10:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
13f14:  a0 00 45                JZ              (SP)+ [FALSE] 13f1a
13f17:  b3 ...                  PRINT_RET       "."
13f1a:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
13f1e:  41 00 46 00 3b          JE              (SP)+,#46 [FALSE] 13f5c
13f23:  b3 ...                  PRINT_RET       " (although it is breathing a
noxious whiff of garlic in your general direction)."
13f5c:  b2 ...                  PRINT           ". Its neck bulges in the shape
of "
13f75:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
13f79:  da 2f 2f 09 00          CALL_2N         bc24 ((SP)+)
13f7e:  b3 ...                  PRINT_RET       "."

Routine 13f84, 0 locals

13f85:  41 f9 51 55             JE              Ge9,#51 [FALSE] 13f9c
13f89:  4a 3a 06 4a             TEST_ATTR       G2a,#06 [FALSE] 13f95
13f8d:  f9 1a 2c b1 16 3a fb    CALL_VN         b2c4 (#16,G2a,Geb)
13f94:  b0                      RTRUE           
13f95:  f9 1b 2c b1 43 fb       CALL_VN         b2c4 (#43,Geb)
13f9b:  b0                      RTRUE           
13f9c:  41 f9 43 00 27          JE              Ge9,#43 [FALSE] 13fc6
13fa1:  b3 ...                  PRINT_RET       "The oil-snake's hide looks
impervious to attack."
13fc6:  41 f9 16 01 c3          JE              Ge9,#16 [FALSE] 1418c
13fcb:  4a 3a 06 d9             TEST_ATTR       G2a,#06 [TRUE] 13fe6
13fcf:  b3 ...                  PRINT_RET       "The snake is not that hungry."
13fe6:  e3 9b fb 29 3a          PUT_PROP        Geb,#29,G2a
13feb:  a9 3a                   REMOVE_OBJ      G2a
13fed:  41 3a 46 00 7e          JE              G2a,#46 [FALSE] 1406e
13ff2:  b2 ...                  PRINT           "The snake snatches and
crunches the clove of garlic, breathing a noxious whiff of the stuff down the
tunnel towards you. Frankly, you're repelled.
"
1405b:  41 10 62 4a             JE              G00,#62 [FALSE] 14067
1405f:  da 1f 32 56 5b          CALL_2N         c958 (#5b)
14064:  8c 00 08                JUMP            1406d
14067:  da 0f 32 56 00 69       CALL_2N         c958 (#0069)
1406d:  b0                      RTRUE           
1406e:  41 3a 61 00 40          JE              G2a,#61 [FALSE] 140b1
14073:  0b 61 08                SET_ATTR        "banana",#08
14076:  e3 93 fb 29 00 91       PUT_PROP        Geb,#29,#0091
1407c:  b3 ...                  PRINT_RET       "The snake swallows the banana
eagerly. There is a sudden flash of light!"
140b1:  b2 ...                  PRINT           "The snake snatches and
swallows whole "
140cc:  da 2f 2f 17 3a          CALL_2N         bc5c (G2a)
140d1:  b2 ...                  PRINT           ", its neck distending to fit.
"
140e8:  41 3a 44 00 a0          JE              G2a,#44 [FALSE] 1418b
140ed:  a9 fb                   REMOVE_OBJ      Geb
140ef:  0a 44 08 dd             TEST_ATTR       "apple",#08 [TRUE] 1410e
140f3:  b2 ...                  PRINT           "
But something mysterious is wrong! "
1410e:  b3 ...                  PRINT_RET       "It chokes, seizing up horribly
and thrashing about, its great body squeezing away from you until it topples
over the lip of the ledge, plunging out of sight to its presumed demise."
1418b:  b0                      RTRUE           
1418c:  41 f9 33 00 2a          JE              Ge9,#33 [FALSE] 141b9
14191:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
14195:  41 00 46 55             JE              (SP)+,#46 [FALSE] 141ac
14199:  b3 ...                  PRINT_RET       "How especially repellent."
141ac:  b3 ...                  PRINT_RET       "How repellent."
141b9:  b1                      RFALSE          

Routine 141bc, 0 locals

141bd:  b3 ...                  PRINT_RET       "The snake is not swayed by
your beguiling requests, and instead sways."

Routine 141f0, 0 locals

141f1:  41 f9 35 00 31          JE              Ge9,#35 [FALSE] 14225
141f6:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
141fa:  41 00 46 00 27          JE              (SP)+,#46 [FALSE] 14224
141ff:  b3 ...                  PRINT_RET       "Far too much garlic with just
a hint of oil-snake."
14224:  b1                      RFALSE          
14225:  41 f9 1c 00 3f          JE              Ge9,#1c [FALSE] 14267
1422a:  41 3a 08 46             JE              G2a,#08 [FALSE] 14232
1422e:  41 10 62 ce             JE              G00,#62 [TRUE] 1423e
14232:  41 3a 07 00 32          JE              G2a,#07 [FALSE] 14267
14237:  c1 8f 10 00 68 00 2b    JE              G00,#0068 [FALSE] 14267
1423e:  b3 ...                  PRINT_RET       "The oil-snake oozes and rears
itself up to bar your way."
14267:  b1                      RFALSE          

Routine 14268, 0 locals

14269:  52 fb 27 00             GET_PROP_ADDR   Geb,#27 -> -(SP)
1426d:  4f 00 00 00             LOADW           (SP)+,#00 -> -(SP)
14271:  a0 00 80 48             JZ              (SP)+ [TRUE] 142bb
14275:  52 fb 27 00             GET_PROP_ADDR   Geb,#27 -> -(SP)
14279:  4f 00 00 00             LOADW           (SP)+,#00 -> -(SP)
1427d:  41 00 3c 4e             JE              (SP)+,#3c [FALSE] 1428d
14281:  e3 53 59 0f 4d c6       PUT_PROP        "Cellars",#0f,#4dc6
14287:  e3 57 3c 10 00          PUT_PROP        "Kitchen",#10,#00
1428c:  b0                      RTRUE           
1428d:  52 fb 27 00             GET_PROP_ADDR   Geb,#27 -> -(SP)
14291:  4f 00 00 00             LOADW           (SP)+,#00 -> -(SP)
14295:  e3 93 00 10 88 9e       PUT_PROP        (SP)+,#10,S174
1429b:  52 fb 27 00             GET_PROP_ADDR   Geb,#27 -> -(SP)
1429f:  e1 97 00 00 00          STOREW          (SP)+,#00,#00
142a4:  52 fb 27 00             GET_PROP_ADDR   Geb,#27 -> -(SP)
142a8:  4f 00 01 00             LOADW           (SP)+,#01 -> -(SP)
142ac:  e3 93 00 0f 88 a4       PUT_PROP        (SP)+,#0f,S175
142b2:  52 fb 27 00             GET_PROP_ADDR   Geb,#27 -> -(SP)
142b6:  e1 97 00 01 00          STOREW          (SP)+,#01,#00
142bb:  b0                      RTRUE           

Routine 142bc, 0 locals

142bd:  b2 ...                  PRINT           "
An improvised ladder of sticks, lashed together with vines and creepers, "
142f2:  52 fb 27 00             GET_PROP_ADDR   Geb,#27 -> -(SP)
142f6:  4f 00 00 00             LOADW           (SP)+,#00 -> -(SP)
142fa:  c1 8f 00 00 8d 00 4e    JE              (SP)+,#008d [FALSE] 1434d
14301:  c1 8f 10 00 8d 59       JE              G00,#008d [FALSE] 1431e
14307:  b3 ...                  PRINT_RET       "hangs down the rest of the
way."
1431e:  b3 ...                  PRINT_RET       "rests against the tip of the
cedar, leading up into its branches."
1434d:  52 fb 27 00             GET_PROP_ADDR   Geb,#27 -> -(SP)
14351:  4f 00 00 00             LOADW           (SP)+,#00 -> -(SP)
14355:  c1 8f 00 00 65 00 3f    JE              (SP)+,#0065 [FALSE] 14399
1435c:  c1 8f 10 00 65 00 21    JE              G00,#0065 [FALSE] 14382
14363:  b3 ...                  PRINT_RET       "spans the abyss down to the
cedar branches."
14382:  b3 ...                  PRINT_RET       "spans the abyss up to the
ledge."
14399:  52 fb 27 00             GET_PROP_ADDR   Geb,#27 -> -(SP)
1439d:  4f 00 00 00             LOADW           (SP)+,#00 -> -(SP)
143a1:  41 00 3c 00 36          JE              (SP)+,#3c [FALSE] 143da
143a6:  41 10 3c 5d             JE              G00,#3c [FALSE] 143c5
143aa:  b3 ...                  PRINT_RET       "runs down the fireplace to the
cellar."
143c5:  b3 ...                  PRINT_RET       "runs back up to the Kitchen."
143da:  c1 8f 10 00 82 00 29    JE              G00,#0082 [FALSE] 14408
143e1:  b3 ...                  PRINT_RET       "balances precariously on the
branches, leading nowhere."
14408:  b3 ...                  PRINT_RET       "rests on the ground here."

Routine 1441c, 1 local

1441d:  52 fb 27 01             GET_PROP_ADDR   Geb,#27 -> L00
14421:  4f 01 00 00             LOADW           L00,#00 -> -(SP)
14425:  61 00 10 47             JE              (SP)+,G00 [FALSE] 1442e
14429:  4f 01 01 00             LOADW           L00,#01 -> -(SP)
1442d:  b8                      RET_POPPED      
1442e:  4f 01 00 00             LOADW           L00,#00 -> -(SP)
14432:  b8                      RET_POPPED      

Routine 14434, 1 local

14435:  52 fb 27 01             GET_PROP_ADDR   Geb,#27 -> L00
14439:  4f 01 00 00             LOADW           L00,#00 -> -(SP)
1443d:  61 00 10 44             JE              (SP)+,G00 [FALSE] 14443
14441:  9b 10                   RET             #10
14443:  9b 0f                   RET             #0f

Routine 14448, 0 locals

14449:  c1 97 f9 13 12 01 bc    JE              Ge9,#13,#12 [FALSE] 1460a
14450:  c1 8f 3b 00 66 48       JE              G2b,#0066 [FALSE] 1445c
14456:  c1 8f 10 00 8e d0       JE              G00,#008e [TRUE] 1446a
1445c:  c1 8f 3b 00 67 00 65    JE              G2b,#0067 [FALSE] 144c6
14463:  c1 8f 10 00 8d 00 5e    JE              G00,#008d [FALSE] 144c6
1446a:  6e fb 10                INSERT_OBJ      Geb,G00
1446d:  e3 1b 00 8e 0f fb       PUT_PROP        "Cave Floor",#0f,Geb
14473:  e3 1b 00 8d 10 fb       PUT_PROP        "Branches Near the Cave
Floor",#10,Geb
14479:  52 fb 27 00             GET_PROP_ADDR   Geb,#27 -> -(SP)
1447d:  e1 93 00 00 00 8d       STOREW          (SP)+,#00,#008d
14483:  52 fb 27 00             GET_PROP_ADDR   Geb,#27 -> -(SP)
14487:  e1 93 00 01 00 8e       STOREW          (SP)+,#01,#008e
1448d:  b3 ...                  PRINT_RET       "You hang the ladder so that it
runs from the cave floor up to the tip of the tree."
144c6:  c1 8f 3b 00 83 48       JE              G2b,#0083 [FALSE] 144d2
144cc:  c1 8f 10 00 82 d0       JE              G00,#0082 [TRUE] 144e0
144d2:  c1 8f 3b 00 66 00 73    JE              G2b,#0066 [FALSE] 1454a
144d9:  c1 8f 10 00 65 00 6c    JE              G00,#0065 [FALSE] 1454a
144e0:  6e fb 10                INSERT_OBJ      Geb,G00
144e3:  e3 1b 00 82 0f fb       PUT_PROP        "Top Branches",#0f,Geb
144e9:  e3 1b 00 65 10 fb       PUT_PROP        "Topmost Ledge",#10,Geb
144ef:  52 fb 27 00             GET_PROP_ADDR   Geb,#27 -> -(SP)
144f3:  e1 93 00 00 00 65       STOREW          (SP)+,#00,#0065
144f9:  52 fb 27 00             GET_PROP_ADDR   Geb,#27 -> -(SP)
144fd:  e1 93 00 01 00 82       STOREW          (SP)+,#01,#0082
14503:  b3 ...                  PRINT_RET       "You hang the ladder so that it
runs across the abyss from the cedar's broadest branches to the ledge."
1454a:  41 3b 4f 46             JE              G2b,#4f [FALSE] 14552
1454e:  41 10 3c cc             JE              G00,#3c [TRUE] 1455c
14552:  41 3b 5a 00 90          JE              G2b,#5a [FALSE] 145e5
14557:  41 10 59 00 8b          JE              G00,#59 [FALSE] 145e5
1455c:  41 98 41 00 2c          JE              G88,#41 [FALSE] 1458b
14561:  41 9a 01 00 27          JE              G8a,#01 [FALSE] 1458b
14566:  b3 ...                  PRINT_RET       "The rope's already in place,
so there's no need."
1458b:  6e fb 10                INSERT_OBJ      Geb,G00
1458e:  e3 5b 59 0f fb          PUT_PROP        "Cellars",#0f,Geb
14593:  e3 5b 3c 10 fb          PUT_PROP        "Kitchen",#10,Geb
14598:  52 fb 27 00             GET_PROP_ADDR   Geb,#27 -> -(SP)
1459c:  e1 97 00 00 3c          STOREW          (SP)+,#00,#3c
145a1:  52 fb 27 00             GET_PROP_ADDR   Geb,#27 -> -(SP)
145a5:  e1 97 00 01 59          STOREW          (SP)+,#01,#59
145aa:  b3 ...                  PRINT_RET       "You place the ladder in the
chimney, providing a safe route from kitchen to cellar."
145e5:  b3 ...                  PRINT_RET       "There's nowhere suitable to
lean the ladder here."
1460a:  41 f9 63 00 47          JE              Ge9,#63 [FALSE] 14654
1460f:  41 9e 55 00 42          JE              G8e,#55 [FALSE] 14654
14614:  a9 fb                   REMOVE_OBJ      Geb
14616:  8f 50 9a                CALL_1N         14268
14619:  b3 ...                  PRINT_RET       "As the spell takes effect, the
ladder shatters into a million tiny leaves and twigs."
14654:  b1                      RFALSE          

Routine 14658, 0 locals

14659:  c1 97 f9 0f 11 45       JE              Ge9,#0f,#11 [FALSE] 14662
1465f:  8f 50 9a                CALL_1N         14268
14662:  b1                      RFALSE          

Routine 14664, 0 locals

14665:  e1 07 3a db 00 05 01    STOREW          #3adb,#0005,#01
1466c:  b1                      RFALSE          

Routine 14670, 0 locals

14671:  41 f9 3b 00 45          JE              Ge9,#3b [FALSE] 146b9
14676:  b2 ...                  PRINT           "(to the tree, presumably,
rather than plunging into the abyss and certain death)
"
146b1:  f9 13 2c b1 3c 00 66    CALL_VN         b2c4 (#3c,#0066)
146b8:  b0                      RTRUE           
146b9:  b1                      RFALSE          

Routine 146bc, 0 locals

146bd:  b2 ...                  PRINT           "You edge along the northern
wall of the cave, descending the rocky stairs.
"
146f4:  8b 00 68                RET             #0068

Routine 146f8, 0 locals

146f9:  b2 ...                  PRINT           "You edge along the northern
wall of the cave, descending the rocky stairs.
"
14730:  8b 00 68                RET             #0068

Routine 14734, 0 locals

14735:  41 10 65 00 83          JE              G00,#65 [FALSE] 147bb
1473a:  b3 ...                  PRINT_RET       "Hanging down toward the dim,
distant cave floor is a flourishing, inverted cedar, its roots grappling the
roof, its nearest outflung branch a good 10 feet across the abyss from here."
147bb:  c1 8f 10 00 68 00 43    JE              G00,#0068 [FALSE] 14803
147c2:  b3 ...                  PRINT_RET       "The inverted cedar hangs
impossibly from the roof some way to the southwest, 30 feet away."
14803:  c1 8f 10 00 8e 00 41    JE              G00,#008e [FALSE] 14849
1480a:  b3 ...                  PRINT_RET       "The cone of the cedar hangs
vertiginously over you, its tip perhaps 9 feet off the floor."
14849:  c1 8f 10 00 9e 00 51    JE              G00,#009e [FALSE] 1489f
14850:  b3 ...                  PRINT_RET       "The cone of the cedar hangs
vertiginously down, its tip suspended some 20 feet to the south, across the
stream."
1489f:  b3 ...                  PRINT_RET       "Approximately 70 feet due west
of here are the roof-braced roots of the inverted cedar, giving you a
magnificent view of this botanic marvel."

Routine 14904, 0 locals

14905:  41 f9 3c 00 a7          JE              Ge9,#3c [FALSE] 149af
1490a:  c1 83 10 00 8e 00 9e 00 23 
                               JE              G00,#008e,#009e [FALSE] 14934
14913:  b3 ...                  PRINT_RET       "The treetop is too far above
you to jump onto."
14934:  41 10 65 d9             JE              G00,#65 [TRUE] 1494f
14938:  b3 ...                  PRINT_RET       "The tree's too far away now."
1494f:  b2 ...                  PRINT           "You take a short run-up and
leap across, just managing to catch the nearest branch! Painfully slowly, you
haul yourself in.
"
149a8:  da 0f 32 56 00 82       CALL_2N         c958 (#0082)
149ae:  b0                      RTRUE           
149af:  c1 8f f9 10 02 00 44    JE              Ge9,#1002 [FALSE] 149f8
149b6:  41 10 65 d9             JE              G00,#65 [TRUE] 149d1
149ba:  b3 ...                  PRINT_RET       "The tree's too far away now."
149d1:  41 3a 4e 00 23          JE              G2a,#4e [FALSE] 149f7
149d6:  b3 ...                  PRINT_RET       "Alas, the rope fails to snag
on the branches."
149f7:  b1                      RFALSE          
149f8:  c1 95 f9 0f 11 4d cd    JE              Ge9,#0f,#11,#4d [TRUE] 14a0a
149ff:  c1 95 f9 4c 4e 18 c6    JE              Ge9,#4c,#4e,#18 [TRUE] 14a0a
14a06:  41 f9 57 5d             JE              Ge9,#57 [FALSE] 14a25
14a0a:  b3 ...                  PRINT_RET       "You can't reach the tree from
here."
14a25:  41 f9 65 00 41          JE              Ge9,#65 [FALSE] 14a69
14a2a:  b3 ...                  PRINT_RET       "There is really nothing to be
gained by firing an arrow into a tree as solid as this one."
14a69:  b1                      RFALSE          

Routine 14a6c, 0 locals

14a6d:  41 f9 36 00 2b          JE              Ge9,#36 [FALSE] 14a9b
14a72:  b3 ...                  PRINT_RET       "You're fairly sure you can
make out a stream down there."
14a9b:  b1                      RFALSE          

Routine 14a9c, 0 locals

14a9d:  b2 ...                  PRINT           "You edge southeast along the
ledge.
"
14ab8:  8b 00 69                RET             #0069

Routine 14abc, 0 locals

14abd:  41 f9 3b 01 47          JE              Ge9,#3b [FALSE] 14c07
14ac2:  41 99 01 01 11          JE              G89,#01 [FALSE] 14bd6
14ac7:  c1 8f 98 00 6a 01 0a    JE              G88,#006a [FALSE] 14bd6
14ace:  b2 ...                  PRINT           "You make a wild jump out into
the cave, swinging down until the rope comes full stretch and catches you with
an almost bone-breaking lurch. So you're feeling quite dizzy as you swing back
under the ledge and, by "
14b61:  a0 a0 d6                JZ              G90 [TRUE] 14b78
14b64:  b2 ...                  PRINT           "altogether predictable"
14b75:  8c 00 0e                JUMP            14b84
14b78:  b2 ...                  PRINT           "ridiculous"
14b81:  0d a0 01                STORE           G90,#01
14b84:  b2 ...                  PRINT           " good fortune, into a cave
mouth halfway up the wall (which had been invisible from above).
"
14bc7:  ce 4f 4e 00 6b          INSERT_OBJ      "light rope","Tiny Recess"
14bcc:  0b 4e 03                SET_ATTR        "light rope",#03
14bcf:  da 0f 32 56 00 6b       CALL_2N         c958 (#006b)
14bd5:  b0                      RTRUE           
14bd6:  b3 ...                  PRINT_RET       "That would mean certain death!
There's nothing below to catch you."
14c07:  41 f9 1c 00 94          JE              Ge9,#1c [FALSE] 14c9e
14c0c:  41 3a 10 00 8f          JE              G2a,#10 [FALSE] 14c9e
14c11:  c1 8f 98 00 6a 00 5d    JE              G88,#006a [FALSE] 14c73
14c18:  b3 ...                  PRINT_RET       "Since the rope is not long
enough and would leave you a good 20 feet short, you decide against carefully
lowering yourself down."
14c73:  b3 ...                  PRINT_RET       "Short of jumping, it's hard to
see how you could get down."
14c9e:  b1                      RFALSE          

Routine 14ca0, 0 locals

14ca1:  b2 ...                  PRINT           "You edge northwest along the
ledge.
"
14cbc:  9b 68                   RET             #68

Routine 14cc0, 0 locals

14cc1:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
14cc5:  e9 7f ff                PULL            Gef
14cc8:  41 ff 01 4a             JE              Gef,#01 [FALSE] 14cd4
14ccc:  b2 ...                  PRINT           "iron "
14cd1:  8c 00 1b                JUMP            14ced
14cd4:  41 ff 02 4c             JE              Gef,#02 [FALSE] 14ce2
14cd8:  b2 ...                  PRINT           "rubidium "
14cdf:  8c 00 0d                JUMP            14ced
14ce2:  41 ff 03 49             JE              Gef,#03 [FALSE] 14ced
14ce6:  b2 ...                  PRINT           "osmium "
14ced:  b1                      RFALSE          

Routine 14cf0, 0 locals

14cf1:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
14cf5:  e9 7f ff                PULL            Gef
14cf8:  41 ff 01 48             JE              Gef,#01 [FALSE] 14d02
14cfc:  b2 ...                  PRINT           "an"
14cff:  8c 00 13                JUMP            14d13
14d02:  41 ff 02 48             JE              Gef,#02 [FALSE] 14d0c
14d06:  b2 ...                  PRINT           "a"
14d09:  8c 00 09                JUMP            14d13
14d0c:  41 ff 03 45             JE              Gef,#03 [FALSE] 14d13
14d10:  b2 ...                  PRINT           "an"
14d13:  b1                      RFALSE          

Routine 14d14, 0 locals

14d15:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
14d19:  41 00 01 00 67          JE              (SP)+,#01 [FALSE] 14d83
14d1e:  b3 ...                  PRINT_RET       "There's an iron ring fixed to
the wall, the kind used to tie up horses, though how anyone could possibly get
a horse up here you can't imagine."
14d83:  b2 ...                  PRINT           "There's "
14d8c:  da 2f 2f 09 fb          CALL_2N         bc24 (Geb)
14d91:  b3 ...                  PRINT_RET       "fixed to the wall."

Routine 14da0, 0 locals

14da1:  c1 95 f9 0f 11 4d c6    JE              Ge9,#0f,#11,#4d [TRUE] 14dac
14da8:  41 f9 4c 5b             JE              Ge9,#4c [FALSE] 14dc5
14dac:  b3 ...                  PRINT_RET       "It won't pull away from the
wall."
14dc5:  41 f9 63 00 8d          JE              Ge9,#63 [FALSE] 14e55
14dca:  c1 8f 9e 00 81 00 86    JE              G8e,#0081 [FALSE] 14e55
14dd1:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
14dd5:  58 00 03 00             MOD             (SP)+,#03 -> -(SP)
14dd9:  54 00 01 00             ADD             (SP)+,#01 -> -(SP)
14ddd:  e3 9b fb 29 00          PUT_PROP        Geb,#29,(SP)+
14de2:  61 98 fb 00 22          JE              G88,Geb [FALSE] 14e07
14de7:  2e 4e 22                INSERT_OBJ      "light rope",G12
14dea:  0d 98 00                STORE           G88,#00
14ded:  b2 ...                  PRINT           "You hastily grab the rope, as
t"
14e04:  8c 00 05                JUMP            14e0a
14e07:  b2 ...                  PRINT           "T"
14e0a:  b2 ...                  PRINT           "he air about the ring sparks
blue with sudden magical power! There is now "
14e3f:  da 2f 2f 09 fb          CALL_2N         bc24 (Geb)
14e44:  b3 ...                  PRINT_RET       " affixed to the rock."
14e55:  b1                      RFALSE          

Routine 14e58, 0 locals

14e59:  41 f9 1c 00 ac          JE              Ge9,#1c [FALSE] 14f08
14e5e:  41 99 01 00 64          JE              G89,#01 [FALSE] 14ec5
14e63:  41 98 6a 00 5f          JE              G88,#6a [FALSE] 14ec5
14e68:  c1 97 3a 0e 0f 00 3d    JE              G2a,#0e,#0f [FALSE] 14eaa
14e6f:  0e 4e 69                INSERT_OBJ      "light rope","Long Curved
Ledge"
14e72:  0c 4e 03                CLEAR_ATTR      "light rope",#03
14e75:  b2 ...                  PRINT           "You jump back out and haul
yourself painfully up the rope again.
"
14ea4:  da 1f 32 56 69          CALL_2N         c958 (#69)
14ea9:  b0                      RTRUE           
14eaa:  b3 ...                  PRINT_RET       "The rope won't stretch any
further."
14ec5:  c1 95 3a 0e 0f 10 00 3d JE              G2a,#0e,#0f,#10 [FALSE] 14f08
14ecd:  b3 ...                  PRINT_RET       "The mouth of the crevice opens
out high up in mid-air, with no ledge or foothold."
14f08:  b1                      RFALSE          

Routine 14f0c, 0 locals

14f0d:  4a fb 08 c0             TEST_ATTR       Geb,#08 [TRUE] RFALSE
14f11:  b2 ...                  PRINT           "flat curved stick"
14f1e:  b0                      RTRUE           

Routine 14f20, 0 locals

14f21:  41 f9 51 00 4f          JE              Ge9,#51 [FALSE] 14f73
14f26:  41 3b 66 49             JE              G2b,#66 [FALSE] 14f31
14f2a:  f9 1b 2c b1 10 fb       CALL_VN         b2c4 (#10,Geb)
14f30:  b0                      RTRUE           
14f31:  41 10 6b 4d             JE              G00,#6b [FALSE] 14f40
14f35:  41 3b 4e 49             JE              G2b,#4e [FALSE] 14f40
14f39:  f9 1b 2c b1 10 fb       CALL_VN         b2c4 (#10,Geb)
14f3f:  b0                      RTRUE           
14f40:  b2 ...                  PRINT           "There isn't really room to
throw it at "
14f5d:  da 2f 2f 17 3b          CALL_2N         bc5c (G2b)
14f62:  b3 ...                  PRINT_RET       " in this cramped space."
14f73:  41 f9 10 01 15          JE              Ge9,#10 [FALSE] 1508b
14f78:  c1 83 83 5f ed 51 7a 01 0c 
                               JE              G73,"throw","hurl" [FALSE] 1508b
14f81:  c1 95 10 33 38 3c c7    JE              G00,#33,#38,#3c [TRUE] 14f8d
14f88:  41 10 48 00 45          JE              G00,#48 [FALSE] 14fd0
14f8d:  b3 ...                  PRINT_RET       "You'd only damage something
precious, throwing the stick about in such a fine historic house."
14fd0:  26 66 10 80 6a          JIN             "inverted cedar",G00 [TRUE]
1503d
14fd5:  41 10 6b 80 65          JE              G00,#6b [TRUE] 1503d
14fda:  b3 ...                  PRINT_RET       "There's not really enough room
in this cramped space to throw the stick, since you'd really need to pull your
arm right back and swing hard."
1503d:  a9 fb                   REMOVE_OBJ      Geb
1503f:  f9 27 2d 35 fb 02       CALL_VN         b4d4 (Geb,#02)
15045:  e3 9b fb 29 10          PUT_PROP        Geb,#29,G00
1504a:  b2 ...                  PRINT           "You throw "
15053:  da 2f 2f 17 fb          CALL_2N         bc5c (Geb)
15058:  b3 ...                  PRINT_RET       " out into the vast air of the
cave, where it quickly spins out of sight."
1508b:  b1                      RFALSE          

Routine 1508c, 0 locals

1508d:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
15091:  6e fb 00                INSERT_OBJ      Geb,(SP)+
15094:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
15098:  61 10 00 00 fe          JE              G00,(SP)+ [FALSE] 15199
1509d:  b2 ...                  PRINT           "
Suddenly and without warning, "
150b6:  da 2f 2f 17 fb          CALL_2N         bc5c (Geb)
150bb:  b2 ...                  PRINT           " spins back in from the cave
and gives you a nasty bruise on the head.
"
150ee:  4b fb 08                SET_ATTR        Geb,#08
150f1:  41 10 6b 00 a5          JE              G00,#6b [FALSE] 15199
150f6:  41 98 6a 00 a0          JE              G88,#6a [FALSE] 15199
150fb:  a0 99 00 9c             JZ              G89 [FALSE] 15199
150ff:  0d 99 01                STORE           G89,#01
15102:  b3 ...                  PRINT_RET       "
In the process, it recoils off the rope hanging in mid-air and swings that
(rather more slowly) toward you. Forgetting about rubbing your temple, you grab
at the rope and tie it back around your waist for safety."
15199:  b1                      RFALSE          

Routine 1519c, 0 locals

1519d:  c1 97 f9 21 23 00 87    JE              Ge9,#21,#23 [FALSE] 15229
151a4:  b3 ...                  PRINT_RET       "You can just make out
starlight, so it must open onto the ground above. You can't help feeling it was
indeed constructed to be a chimney, terribly long ago and with primitive tools
at best."
15229:  b1                      RFALSE          

Routine 1522c, 0 locals

1522d:  c1 97 f9 22 23 01 6f    JE              Ge9,#22,#23 [FALSE] 153a1
15234:  4a fb 08 00 c5          TEST_ATTR       Geb,#08 [FALSE] 152fc
15239:  b2 ...                  PRINT           "Rummaging through the garbage,
you turn up all manner of things: odd socks with holes in, iron bedstead-parts,
rotting turnips and so on.
"
1529c:  0a 57 0c 80 5c          TEST_ATTR       "parchment book",#0c [TRUE]
152fb
152a1:  8f 4d bc                CALL_1N         136f0
152a4:  95 1d                   INC             G0d
152a6:  b3 ...                  PRINT_RET       "
And then you come across a bound volume of parchment (wrapped loosely in old
sackcloth), filled with curious writings."
152fb:  b0                      RTRUE           
152fc:  b3 ...                  PRINT_RET       "The moment you reach out to
touch the mound, it comes alive with woodlice and ants, making you pull your
finger back as if stung. Whatever the mound's secrets, they're well guarded.

A moment later, it's as if nothing had happened."
153a1:  41 f9 18 55             JE              Ge9,#18 [FALSE] 153b8
153a5:  b3 ...                  PRINT_RET       "A simply revolting idea."
153b8:  c1 97 f9 0f 11 00 79    JE              Ge9,#0f,#11 [FALSE] 15436
153bf:  b3 ...                  PRINT_RET       "There are many, many things in
the mound, but none seem worth having. This was perhaps also the conclusion of
whoever it was who dropped them down here in the first place."
15436:  b1                      RFALSE          

Routine 15438, 0 locals

15439:  41 f9 65 5d             JE              Ge9,#65 [FALSE] 15458
1543d:  b3 ...                  PRINT_RET       "That would be laughably
ineffective."
15458:  b1                      RFALSE          

Routine 1545c, 0 locals

1545d:  c1 95 f9 43 0f 11 cd    JE              Ge9,#43,#0f,#11 [TRUE] 1546f
15464:  c1 95 f9 4d 4c 4e c6    JE              Ge9,#4d,#4c,#4e [TRUE] 1546f
1546b:  41 f9 65 5d             JE              Ge9,#65 [FALSE] 1548a
1546f:  b3 ...                  PRINT_RET       "The quartz is rough, and also
tough."
1548a:  41 f9 23 4a             JE              Ge9,#23 [FALSE] 15496
1548e:  f9 13 2c b1 23 00 85    CALL_VN         b2c4 (#23,#0085)
15495:  b0                      RTRUE           
15496:  41 f9 18 59             JE              Ge9,#18 [FALSE] 154b1
1549a:  b3 ...                  PRINT_RET       "The quartz blocks all access."
154b1:  b1                      RFALSE          

Routine 154b4, 0 locals

154b5:  41 f9 18 50             JE              Ge9,#18 [FALSE] 154c7
154b9:  c1 8f 3a 00 85 49       JE              G2a,#0085 [FALSE] 154c6
154bf:  f9 1b 2c b1 18 fb       CALL_VN         b2c4 (#18,Geb)
154c5:  b0                      RTRUE           
154c6:  b1                      RFALSE          
154c7:  c1 97 f9 13 11 4f       JE              Ge9,#13,#11 [FALSE] 154da
154cd:  c1 8f 3b 00 85 49       JE              G2b,#0085 [FALSE] 154da
154d3:  f9 1b 2c b1 18 fb       CALL_VN         b2c4 (#18,Geb)
154d9:  b0                      RTRUE           
154da:  b1                      RFALSE          

Routine 154dc, 0 locals

154dd:  c6 2f 00 79 10 00 79    JIN             "Adventurer",G00 [FALSE] 1555b
154e4:  b3 ...                  PRINT_RET       "It seems the Adventurer is
under a geas to protect the corridor's eastward continuation.

"The Chamber is private to my Master!" he booms, in a voice not his own."
1555b:  8b 00 7a                RET             #007a

Routine 15560, 0 locals

15561:  41 f9 0f 00 39          JE              Ge9,#0f [FALSE] 1559d
15566:  4a 3a 1f 00 34          TEST_ATTR       G2a,#1f [FALSE] 1559d
1556b:  66 3a 10 00 2f          JIN             G2a,G00 [FALSE] 1559d
15570:  b3 ...                  PRINT_RET       "The ghostly Adventurer guards
the pile of treasure zealously."
1559d:  b1                      RFALSE          

Routine 155a0, 0 locals

155a1:  41 f9 10 51             JE              Ge9,#10 [FALSE] 155b4
155a5:  4a 3a 1f 4d             TEST_ATTR       G2a,#1f [FALSE] 155b4
155a9:  6e 3a 22                INSERT_OBJ      G2a,G12
155ac:  f9 1a 2c b1 16 3a fb    CALL_VN         b2c4 (#16,G2a,Geb)
155b3:  b0                      RTRUE           
155b4:  b1                      RFALSE          

Routine 155b8, 1 local

155b9:  41 f9 17 00 70          JE              Ge9,#17 [FALSE] 1562c
155be:  4a 3a 1f 4f             TEST_ATTR       G2a,#1f [FALSE] 155cf
155c2:  b3 ...                  PRINT_RET       "His eyes gleam."
155cf:  c1 93 3a 4a 00 a7 57    JE              G2a,#4a,#00a7 [FALSE] 155eb
155d6:  b3 ...                  PRINT_RET       "He looks almost nostalgic."
155eb:  41 3a 4d 00 3d          JE              G2a,#4d [FALSE] 1562b
155f0:  b3 ...                  PRINT_RET       "He is unimpressed, perhaps
because he speaks a language centuries before your own."
1562b:  b1                      RFALSE          
1562c:  41 f9 16 01 d2          JE              Ge9,#16 [FALSE] 15801
15631:  41 3a 4d 4a             JE              G2a,#4d [FALSE] 1563d
15635:  f9 16 2c b1 17 4d fb    CALL_VN         b2c4 (#17,#4d,Geb)
1563c:  b0                      RTRUE           
1563d:  4a 3a 06 00 29          TEST_ATTR       G2a,#06 [FALSE] 15669
15642:  b3 ...                  PRINT_RET       "Though gaunt, he is also
spectral and needs no food."
15669:  c1 93 3a 4a 00 a7 00 49 JE              G2a,#4a,#00a7 [FALSE] 156b8
15671:  b3 ...                  PRINT_RET       "For a moment, it looks as if
nostalgia will sway him. But then again, lamps are not very valuable."
156b8:  4a 3a 1f 00 f7          TEST_ATTR       G2a,#1f [FALSE] 157b2
156bd:  6e 3a 10                INSERT_OBJ      G2a,G00
156c0:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
156c4:  54 00 01 01             ADD             (SP)+,#01 -> L00
156c8:  e3 9b fb 29 01          PUT_PROP        Geb,#29,L00
156cd:  95 1d                   INC             G0d
156cf:  41 01 05 00 a9          JE              L00,#05 [FALSE] 1577b
156d4:  2d 01 22                STORE           L00,G12
156d7:  63 01 13 cd             JG              L00,G03 [TRUE] 156e6
156db:  4a 01 1f 44             TEST_ATTR       L00,#1f [FALSE] 156e1
156df:  a9 01                   REMOVE_OBJ      L00
156e1:  95 01                   INC             L00
156e3:  8c ff f3                JUMP            156d7
156e6:  99 79                   REMOVE_OBJ      "Adventurer"
156e8:  95 1d                   INC             G0d
156ea:  b3 ...                  PRINT_RET       "The Adventurer, having now
acquired the whole nearby wealth of treasure, spreads his arms around the pile
of loot. As he does so, he and they vanish like the dawn into the past where,
perhaps, they belong."
1577b:  b3 ...                  PRINT_RET       "The Adventurer's eyes gleam.
Treasure! He wants only more and more of it."
157b2:  b3 ...                  PRINT_RET       "The Adventurer is
incorruptible. Well, fairly incorruptible. Unless something valuable is on
offer, anyway."
15801:  c1 95 f9 33 43 51 5b    JE              Ge9,#33,#43,#51 [FALSE] 15821
15808:  b3 ...                  PRINT_RET       "He is spectral and
insubstantial."
15821:  c1 95 f9 52 54 53 5d    JE              Ge9,#52,#54,#53 [FALSE] 15843
15828:  b3 ...                  PRINT_RET       "He has no answers for the
modern day."
15843:  b1                      RFALSE          

Routine 15844, 0 locals

15845:  41 f9 65 00 3f          JE              Ge9,#65 [FALSE] 15887
1584a:  b3 ...                  PRINT_RET       "Your arrow passes straight
through him and clatters to the floor. He is unperturbed."
15887:  b1                      RFALSE          

Routine 15888, 0 locals

15889:  b3 ...                  PRINT_RET       "The Adventurer is already
serving under one geas, and you have little chance of talking him out of it."

Routine 158d4, 0 locals

158d5:  41 f9 47 00 2d          JE              Ge9,#47 [FALSE] 15905
158da:  b3 ...                  PRINT_RET       "You see little prospect of
anything beyond blisters that way."
15905:  41 f9 65 5d             JE              Ge9,#65 [FALSE] 15924
15909:  b3 ...                  PRINT_RET       "An arrow would not even
scratch it."
15924:  b1                      RFALSE          

Routine 15928, 0 locals

15929:  a0 3b 00 29             JZ              G2b [FALSE] 15954
1592d:  b3 ...                  PRINT_RET       "This spell seems to need to be
focussed on something."
15954:  61 3b 22 59             JE              G2b,G12 [FALSE] 1596f
15958:  b3 ...                  PRINT_RET       "That would be highly
hazardous!"
1596f:  b2 ...                  PRINT           "The spell misfires, perhaps
because "
1598a:  da 2f 2f 17 3b          CALL_2N         bc5c (G2b)
1598f:  b3 ...                  PRINT_RET       " is not pure but a mixture or
an alloy."

Routine 159ac, 0 locals

159ad:  41 f9 3b 4a             JE              Ge9,#3b [FALSE] 159b9
159b1:  f9 13 2c b1 3c 00 83    CALL_VN         b2c4 (#3c,#0083)
159b8:  b0                      RTRUE           
159b9:  b1                      RFALSE          

Routine 159bc, 0 locals

159bd:  c1 95 f9 21 5e 65 43    JE              Ge9,#21,#5e,#65 [FALSE] 159c5
159c4:  b1                      RFALSE          
159c5:  41 f9 3c 00 35          JE              Ge9,#3c [FALSE] 159fd
159ca:  b3 ...                  PRINT_RET       "Since the ledge is above you,
there's no safe way to jump back across."
159fd:  b3 ...                  PRINT_RET       "The ledge is too far off."

Routine 15a10, 0 locals

15a11:  41 f9 65 00 3a          JE              Ge9,#65 [FALSE] 15a4e
15a16:  ce 8f 91 00 9e          INSERT_OBJ      G81,"North Edge of Pool"
15a1b:  b3 ...                  PRINT_RET       "The arrow clatters against the
stone ledge and then falls out of sight."
15a4e:  b1                      RFALSE          

Routine 15a50, 0 locals

15a51:  c1 95 f9 24 28 25 c6    JE              Ge9,#24,#28,#25 [TRUE] 15a5c
15a58:  41 f9 29 57             JE              Ge9,#29 [FALSE] 15a71
15a5c:  b3 ...                  PRINT_RET       "There seems to be no door."
15a71:  41 f9 63 00 c7          JE              Ge9,#63 [FALSE] 15b3b
15a76:  41 9e 55 00 c2          JE              G8e,#55 [FALSE] 15b3b
15a7b:  4a fb 08 00 39          TEST_ATTR       Geb,#08 [FALSE] 15ab7
15a80:  b3 ...                  PRINT_RET       "The spell has no effect, since
the treehouse is as loose as it's going to be."
15ab7:  4b fb 08                SET_ATTR        Geb,#08
15aba:  b3 ...                  PRINT_RET       "As the spell takes effect,
vines begin to shrink and strain all over the treehouse. Just as your magic is
about to expire, the cords break and the doorway opens up onto a dark
interior."
15b3b:  b1                      RFALSE          

Routine 15b3c, 0 locals

15b3d:  4a fb 08 45             TEST_ATTR       Geb,#08 [FALSE] 15b44
15b41:  8b 00 89                RET             #0089
15b44:  b3 ...                  PRINT_RET       "Strangely, every side appears
to be solid with vine-bound planks and logs, even the obvious place where a
doorway should be."

Routine 15b9c, 0 locals

15b9d:  41 f9 65 00 25          JE              Ge9,#65 [FALSE] 15bc5
15ba2:  b3 ...                  PRINT_RET       "The arrow falls harmlessly
onto the log platform."
15bc5:  b1                      RFALSE          

Routine 15bc8, 0 locals

15bc9:  41 f9 5e 43             JE              Ge9,#5e [FALSE] 15bce
15bcd:  b1                      RFALSE          
15bce:  c1 97 f9 21 23 01 12    JE              Ge9,#21,#23 [FALSE] 15ce5
15bd5:  41 10 82 4a             JE              G00,#82 [FALSE] 15be1
15bd9:  51 fb 33 00             GET_PROP        Geb,#33 -> -(SP)
15bdd:  ad 00                   PRINT_PADDR     (SP)+
15bdf:  bb                      NEW_LINE        
15be0:  b0                      RTRUE           
15be1:  4a fb 08 80 25          TEST_ATTR       Geb,#08 [TRUE] 15c09
15be6:  b3 ...                  PRINT_RET       "Tantalisingly, you can only
see darkness within."
15c09:  cb 1f 00 aa 08          SET_ATTR        "torn-up broad green leaf",#08
15c0e:  b3 ...                  PRINT_RET       "The cavity contains a kind of
prehistoric shrine, lined with cave paintings. Preeminent among them is an
intriguing sequence showing a man being roused from a coma, or perhaps even
death, with an elixir: we see a shaman preparing this healing paste by tearing
a broad leaf and then grinding it up with an arrow."
15ce5:  41 f9 65 43             JE              Ge9,#65 [FALSE] 15cea
15ce9:  b1                      RFALSE          
15cea:  c1 8f f9 10 02 00 37    JE              Ge9,#1002 [FALSE] 15d26
15cf1:  b2 ...                  PRINT           "You don't think you can
possibly throw "
15d0e:  da 2f 2f 17 3a          CALL_2N         bc5c (G2a)
15d13:  b3 ...                  PRINT_RET       " so far and so accurately."
15d26:  c1 97 f9 3c 18 00 2b    JE              Ge9,#3c,#18 [FALSE] 15d56
15d2d:  b3 ...                  PRINT_RET       "The cavity's too far to jump
to, and too small to enter."
15d56:  b3 ...                  PRINT_RET       "The cavity can't be reached
from here."

Routine 15d74, 0 locals

15d75:  41 f9 65 00 af          JE              Ge9,#65 [FALSE] 15e27
15d7a:  6e 91 fb                INSERT_OBJ      G81,Geb
15d7d:  b2 ...                  PRINT           "You loose off the arrow across
the cave and, satisfyingly, its arc takes it straight into the triangular
cavity.
"
15dce:  4a 91 09 00 55          TEST_ATTR       G81,#09 [FALSE] 15e26
15dd3:  4a fb 08 80 50          TEST_ATTR       Geb,#08 [TRUE] 15e26
15dd8:  4b fb 08                SET_ATTR        Geb,#08
15ddb:  95 1d                   INC             G0d
15ddd:  b3 ...                  PRINT_RET       "The interior of the cavity is
now lit up! You're still too far away here to make out anything, though."
15e26:  b0                      RTRUE           
15e27:  b1                      RFALSE          

Routine 15e28, 0 locals

15e29:  41 f9 4c 00 39          JE              Ge9,#4c [FALSE] 15e65
15e2e:  b3 ...                  PRINT_RET       "If you have an arrow, you can
"fire arrow at" or simply "shoot" something."
15e65:  b1                      RFALSE          

Routine 15e68, 0 locals

15e69:  4a fb 09 4b             TEST_ATTR       Geb,#09 [FALSE] 15e76
15e6d:  b2 ...                  PRINT           "enchanted "
15e76:  b1                      RFALSE          

Routine 15e78, 2 locals

15e79:  c1 8f 40 10 04 5b       JE              G30,#1004 [FALSE] 15e98
15e7f:  4a 41 09 c9             TEST_ATTR       G31,#09 [TRUE] 15e8a
15e83:  4a 42 09 c5             TEST_ATTR       G32,#09 [TRUE] 15e8a
15e87:  8b ff ff                RET             #ffff
15e8a:  4a 41 09 49             TEST_ATTR       G31,#09 [FALSE] 15e95
15e8e:  4a 42 09 45             TEST_ATTR       G32,#09 [FALSE] 15e95
15e92:  8b ff ff                RET             #ffff
15e95:  8b ff fe                RET             #fffe
15e98:  88 2a 81 02             CALL_1S         aa04 -> L01
15e9c:  4a fb 09 4d             TEST_ATTR       Geb,#09 [FALSE] 15eab
15ea0:  c1 8f 02 4c df 47       JE              L01,"enchanted" [FALSE] 15eab
15ea6:  95 01                   INC             L00
15ea8:  8c 00 24                JUMP            15ecd
15eab:  e0 2b 2a 45 fb 02 00    CALL_VS         a914 (Geb,L01) -> -(SP)
15eb2:  41 00 01 47             JE              (SP)+,#01 [FALSE] 15ebb
15eb6:  95 01                   INC             L00
15eb8:  8c 00 14                JUMP            15ecd
15ebb:  c1 8f 02 45 a1 4c       JE              L01,"arrows" [FALSE] 15ecb
15ec1:  cd 4f 40 10 05          STORE           G30,#1005
15ec6:  95 01                   INC             L00
15ec8:  8c 00 04                JUMP            15ecd
15ecb:  ab 01                   RET             L00
15ecd:  8c ff ca                JUMP            15e98

orphan code fragment:

15ed0:  b1                      RFALSE          

Routine 15ed4, 2 locals
    Action routine for:
        "shoot noun"
        "shoot at noun"
        "shoot arrow at noun"
        "shoot an arrow at noun"
        "fire at noun"
        "fire arrow at noun"
        "fire an arrow at noun"

15ed5:  d9 2f 58 0e 22 91       CALL_2S         16038 (G12) -> G81
15edb:  a0 91 57                JZ              G81 [FALSE] 15ef3
15ede:  b3 ...                  PRINT_RET       "You have no arrows to hand."
15ef3:  61 3a 22 55             JE              G2a,G12 [FALSE] 15f0a
15ef7:  b3 ...                  PRINT_RET       "Things aren't that bad."
15f0a:  41 3a 86 57             JE              G2a,#86 [FALSE] 15f23
15f0e:  b3 ...                  PRINT_RET       "It doesn't work that way."
15f23:  4a 3a 20 00 2b          TEST_ATTR       G2a,#20 [FALSE] 15f51
15f28:  b3 ...                  PRINT_RET       "Firing an arrow at another
arrow is just plain pointless."
15f51:  2d 01 3a                STORE           L00,G2a
15f54:  a0 01 cf                JZ              L00 [TRUE] 15f64
15f57:  61 02 22 cb             JE              L01,G12 [TRUE] 15f64
15f5b:  2d 02 01                STORE           L01,L00
15f5e:  a3 01 01                GET_PARENT      L00 -> L00
15f61:  8c ff f2                JUMP            15f54
15f64:  61 02 22 00 27          JE              L01,G12 [FALSE] 15f8e
15f69:  b3 ...                  PRINT_RET       "It's too fiddly to shoot
something you're holding."
15f8e:  6e 91 10                INSERT_OBJ      G81,G00
15f91:  88 2c ef 00             CALL_1S         b3bc -> -(SP)
15f95:  41 00 01 c1             JE              (SP)+,#01 [TRUE] RTRUE
15f99:  b2 ...                  PRINT           "You loose off an arrow at "
15fac:  da 2f 2f 17 3a          CALL_2N         bc5c (G2a)
15fb1:  b3 ...                  PRINT_RET       ", but miss."

Routine 15fbc, 0 locals
    Action routine for:
        "shoot noun at noun"
        "fire noun at noun"

15fbd:  4a 3a 20 d5             TEST_ATTR       G2a,#20 [TRUE] 15fd4
15fc1:  b3 ...                  PRINT_RET       "You may only fire arrows."
15fd4:  b2 ...                  PRINT           "[It's understood that you want
to fire an arrow: try typing "fire arrow at <target>" or "shoot <target>".]

"
16031:  f9 1b 2c b1 65 3b       CALL_VN         b2c4 (#65,G2b)
16037:  b0                      RTRUE           

Routine 16038, 3 locals

16039:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] 1603d
1603d:  e9 7f 02                PULL            L01
16040:  a0 02 d1                JZ              L01 [TRUE] 16052
16043:  4a 02 20 48             TEST_ATTR       L01,#20 [FALSE] 1604d
16047:  4a 02 09 44             TEST_ATTR       L01,#09 [FALSE] 1604d
1604b:  ab 02                   RET             L01
1604d:  a1 02 02 bf f3          GET_SIBLING     L01 -> L01 [TRUE] 16043
16052:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] 16056
16056:  e9 7f 02                PULL            L01
16059:  a0 02 cd                JZ              L01 [TRUE] 16067
1605c:  4a 02 20 44             TEST_ATTR       L01,#20 [FALSE] 16062
16060:  ab 02                   RET             L01
16062:  a1 02 02 bf f7          GET_SIBLING     L01 -> L01 [TRUE] 1605c
16067:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] 1606b
1606b:  e9 7f 02                PULL            L01
1606e:  a0 02 da                JZ              L01 [TRUE] 16089
16071:  4a 02 04 51             TEST_ATTR       L01,#04 [FALSE] 16084
16075:  4a 02 0e 4d             TEST_ATTR       L01,#0e [FALSE] 16084
16079:  d9 2f 58 0e 02 03       CALL_2S         16038 (L01) -> L02
1607f:  a0 03 c4                JZ              L02 [TRUE] 16084
16082:  ab 03                   RET             L02
16084:  a1 02 02 bf ea          GET_SIBLING     L01 -> L01 [TRUE] 16071
16089:  b1                      RFALSE          

Routine 1608c, 0 locals

1608d:  e1 07 3a db 00 06 01    STOREW          #3adb,#0006,#01
16094:  b1                      RFALSE          

Routine 16098, 0 locals

16099:  da 1f 2c b1 44          CALL_2N         b2c4 (#44)
1609e:  b0                      RTRUE           

Routine 160a0, 0 locals

160a1:  b2 ...                  PRINT           "You cross the stream and walk
around the pool.
"
160c4:  8b 00 9e                RET             #009e

Routine 160c8, 0 locals

160c9:  b2 ...                  PRINT           "You cross the stream and walk
around the pool.
"
160ec:  8b 00 9e                RET             #009e

Routine 160f0, 0 locals

160f1:  c1 8f 10 00 94 00 41    JE              G00,#0094 [FALSE] 16137
160f8:  b3 ...                  PRINT_RET       "
The stream runs much faster here, as the bony hand of the cave-wall clenches
around it."
16137:  b0                      RTRUE           

Routine 16138, 0 locals

16139:  41 f9 3e 00 43          JE              Ge9,#3e [FALSE] 1617f
1613e:  b3 ...                  PRINT_RET       "The water tastes strongly of
minerals, but is not unpleasant, though it is extremely cold."
1617f:  41 f9 0f 5f             JE              Ge9,#0f [FALSE] 161a0
16183:  b3 ...                  PRINT_RET       "You have nothing which will
hold water."
161a0:  c1 97 f9 3c 18 00 41    JE              Ge9,#3c,#18 [FALSE] 161e6
161a7:  41 10 8e 49             JE              G00,#8e [FALSE] 161b2
161ab:  f9 17 2c b1 1c 0b       CALL_VN         b2c4 (#1c,#0b)
161b1:  b0                      RTRUE           
161b2:  c1 8f 10 00 9e 49       JE              G00,#009e [FALSE] 161bf
161b8:  f9 17 2c b1 1c 0d       CALL_VN         b2c4 (#1c,#0d)
161be:  b0                      RTRUE           
161bf:  b3 ...                  PRINT_RET       "You'll have to be more
specific about which way to go."
161e6:  41 f9 13 01 f3          JE              Ge9,#13 [FALSE] 163dc
161eb:  c1 8f 3b 00 91 01 d8    JE              G2b,#0091 [FALSE] 163c8
161f2:  c1 93 10 8e 00 9e 00 94 JE              G00,#8e,#009e [FALSE] 1628c
161fa:  c6 0f 00 92 00 91 00 3f JIN             "sludge of sediment","drum"
[FALSE] 1623f
16202:  b3 ...                  PRINT_RET       "Water sluices around, but is
so slow that it drains out without dislodging the sludge."
1623f:  b3 ...                  PRINT_RET       "The placid water pools slowly
in the drum, then drains out of the gauze. Nothing appears to result from
this."
1628c:  c6 0f 00 92 00 91 00 b2 JIN             "sludge of sediment","drum"
[FALSE] 16344
16294:  ca 1f 00 93 08 00 4a    TEST_ATTR       "ore",#08 [FALSE] 162e3
1629b:  89 00 92                REMOVE_OBJ      "sludge of sediment"
1629e:  b3 ...                  PRINT_RET       "Water sluices the sludge away
to nothing. Then again, panning is all about luck and persistence."
162e3:  89 00 92                REMOVE_OBJ      "sludge of sediment"
162e6:  ce 0f 00 93 00 91       INSERT_OBJ      "ore","drum"
162ec:  cb 1f 00 93 08          SET_ATTR        "ore",#08
162f1:  b3 ...                  PRINT_RET       "Water washes through the
sludge, filtering away the lighter sediment until a gleaming (if tiny) lump of
ore remains!"
16344:  83 00 92 00             GET_PARENT      "sludge of sediment" -> -(SP)
16348:  a0 00 00 47             JZ              (SP)+ [FALSE] 16391
1634c:  ce 0f 00 92 00 91       INSERT_OBJ      "sludge of sediment","drum"
16352:  b3 ...                  PRINT_RET       "Water sluices through the
gauze drum, panning and leaving a sludge of wet sediment behind."
16391:  b3 ...                  PRINT_RET       "Water washes through the pan,
but you can't seem to catch any more sediment."
163c8:  da 2f 2f 1f 3b          CALL_2N         bc7c (G2b)
163cd:  b3 ...                  PRINT_RET       " won't hold water."
163dc:  c1 8f f9 10 01 00 2d    JE              Ge9,#1001 [FALSE] 1640e
163e3:  c1 8f 3a 00 91 4b       JE              G2a,#0091 [FALSE] 163f2
163e9:  f9 18 2c b1 13 fb 00 91 CALL_VN         b2c4 (#13,Geb,#0091)
163f1:  b0                      RTRUE           
163f2:  a9 3a                   REMOVE_OBJ      G2a
163f4:  da 2f 2f 1f 3a          CALL_2N         bc7c (G2a)
163f9:  b3 ...                  PRINT_RET       " washes away with the stream."
1640e:  b1                      RFALSE          

Routine 16410, 0 locals

16411:  41 f9 44 00 45          JE              Ge9,#44 [FALSE] 16459
16416:  b3 ...                  PRINT_RET       "The water is bone-chillingly
cold, and even undressing near it would give you goose-pimples."
16459:  41 f9 36 00 27          JE              Ge9,#36 [FALSE] 16483
1645e:  b3 ...                  PRINT_RET       "The stream gurgles as it runs
over erratic stones."
16483:  41 f9 3f 4a             JE              Ge9,#3f [FALSE] 1648f
16487:  f9 1a 2c b1 13 fb 3a    CALL_VN         b2c4 (#13,Geb,G2a)
1648e:  b0                      RTRUE           
1648f:  b1                      RFALSE          

Routine 16490, 0 locals

16491:  41 f9 65 00 2d          JE              Ge9,#65 [FALSE] 164c1
16496:  a9 91                   REMOVE_OBJ      G81
16498:  b3 ...                  PRINT_RET       "The arrow plunges into the
water, never to be seen again."
164c1:  b1                      RFALSE          

Routine 164c4, 0 locals

164c5:  c1 8f f9 10 01 00 2b    JE              Ge9,#1001 [FALSE] 164f5
164cc:  c1 97 3a 8f 60 80 23    JE              G2a,#8f,#60 [TRUE] 164f4
164d3:  b3 ...                  PRINT_RET       "The gauze isn't strong enough
to take weight."
164f4:  b1                      RFALSE          
164f5:  c1 8f f9 10 00 00 69    JE              Ge9,#1000 [FALSE] 16563
164fc:  c1 8f 3a 00 92 00 61    JE              G2a,#0092 [FALSE] 16562
16503:  b3 ...                  PRINT_RET       "The sludge is too sludge-like
to pick up in your hands. Really, it's hard to imagine a more convenient
sludge-carrier than this pan."
16562:  b1                      RFALSE          
16563:  41 f9 4b 00 7d          JE              Ge9,#4b [FALSE] 165e3
16568:  b2 ...                  PRINT           "You give the drum a shake. "
1657d:  c6 2f 00 92 fb 00 39    JIN             "sludge of sediment",Geb
[FALSE] 165bb
16584:  b3 ...                  PRINT_RET       "But the sludge simply shifts
itself into a slightly differently-shaped glob."
165bb:  c6 2f 00 93 fb 55       JIN             "ore",Geb [FALSE] 165d4
165c1:  b3 ...                  PRINT_RET       "The ore ricochets around."
165d4:  b3 ...                  PRINT_RET       "No sound results."
165e3:  41 f9 43 00 65          JE              Ge9,#43 [FALSE] 1664b
165e8:  c6 2f 00 92 fb 00 2a    JIN             "sludge of sediment",Geb
[FALSE] 16617
165ef:  89 00 92                REMOVE_OBJ      "sludge of sediment"
165f2:  b3 ...                  PRINT_RET       "A squelched Thump! results,
ejecting the sludge."
16617:  c6 2f 00 93 fb 5d       JIN             "ore",Geb [FALSE] 16638
1661d:  b3 ...                  PRINT_RET       "Best not. You'd only lose the
ore."
16638:  b3 ...                  PRINT_RET       "A hollow Bong! results."
1664b:  b1                      RFALSE          

Routine 1664c, 0 locals

1664d:  c1 95 f9 22 23 21 00 43 JE              Ge9,#22,#23,#21 [FALSE] 16696
16655:  b3 ...                  PRINT_RET       "The sludge is a mucky
aggregation of river debris; clay, sand, small stones of all sizes."
16696:  b1                      RFALSE          

Routine 16698, 0 locals

16699:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
1669d:  e9 7f ff                PULL            Gef
166a0:  41 ff 01 54             JE              Gef,#01 [FALSE] 166b6
166a4:  b2 ...                  PRINT           "tiny lump of tin ore"
166b3:  8c 00 2d                JUMP            166e1
166b6:  41 ff 02 54             JE              Gef,#02 [FALSE] 166cc
166ba:  b2 ...                  PRINT           "tiny lump of lead ore"
166c9:  8c 00 17                JUMP            166e1
166cc:  41 ff 03 53             JE              Gef,#03 [FALSE] 166e1
166d0:  b2 ...                  PRINT           "gleaming uncut diamond"
166e1:  b0                      RTRUE           

Routine 166e4, 0 locals

166e5:  41 f9 63 01 88          JE              Ge9,#63 [FALSE] 16870
166ea:  41 9e 81 01 34          JE              G8e,#81 [FALSE] 16821
166ef:  c6 8f fb 00 c5 00 4c    JIN             Geb,"Anvil" [FALSE] 16740
166f6:  b2 ...                  PRINT           "The magic's effect is so
violent as to knock the ore flying off the anvil and onto the floor...

"
1673d:  6e fb 10                INSERT_OBJ      Geb,G00
16740:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
16744:  41 00 03 00 43          JE              (SP)+,#03 [FALSE] 1678a
16749:  b3 ...                  PRINT_RET       "The magic has no effect,
perhaps because the diamond's crystalline structure is too strong."
1678a:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
1678e:  54 00 01 00             ADD             (SP)+,#01 -> -(SP)
16792:  e3 9b fb 29 00          PUT_PROP        Geb,#29,(SP)+
16797:  4a fb 09 00 3a          TEST_ATTR       Geb,#09 [FALSE] 167d4
1679c:  4c fb 09                CLEAR_ATTR      Geb,#09
1679f:  b3 ...                  PRINT_RET       "(This powerful enchantment
easily cancels the earlier "chiaro" spell.)
"
167d4:  b2 ...                  PRINT           "The air about the ore sparks
blue in a hissing funnel of magical power! And it is transmuted into "
16819:  da 2f 2f 09 fb          CALL_2N         bc24 (Geb)
1681e:  b3 ...                  PRINT_RET       "."
16821:  41 9e 54 00 4c          JE              G8e,#54 [FALSE] 16870
16826:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
1682a:  41 00 03 00 43          JE              (SP)+,#03 [FALSE] 16870
1682f:  b3 ...                  PRINT_RET       "The magic has no effect,
perhaps because the diamond's crystalline structure is too strong."
16870:  b1                      RFALSE          

Routine 16874, 0 locals

16875:  b2 ...                  PRINT           "Heaped up against the southern
cave wall like a sloping rampart, and rising "
168aa:  c6 2f 00 99 fb 4a       JIN             "crudely arched doorway",Geb
[FALSE] 168b8
168b0:  b2 ...                  PRINT           "40"
168b5:  8c 00 07                JUMP            168bd
168b8:  b2 ...                  PRINT           "50"
168bd:  b3 ...                  PRINT_RET       " feet above the stream, the
scree fall is made up not of fallen stones but of masonry, broken terracotta
tiles, wrecked alabaster murals and those marbly bits you can't ever remember
the name of: as if the veil of a temple has been rent in twain. But what the
catastrophe can have been, and where the building stood, you cannot say."

Routine 169a4, 0 locals

169a5:  b2 ...                  PRINT           "You skitter nervously down the
very steep western side of the scree.
"
169d6:  41 99 01 00 87          JE              G89,#01 [FALSE] 16a60
169db:  c1 8f 98 00 97 00 80    JE              G88,#0097 [FALSE] 16a60
169e2:  ce 1f 00 97 90          INSERT_OBJ      "black, memorial
scroll","Furrow and Workings"
169e7:  cb 1f 00 97 0c          SET_ATTR        "black, memorial scroll",#0c
169ec:  e3 93 fb 08 00 99       PUT_PROP        Geb,#08,#0099
169f2:  0d 98 00                STORE           G88,#00
169f5:  2e 4e 22                INSERT_OBJ      "light rope",G12
169f8:  ce 2f 00 99 fb          INSERT_OBJ      "crudely arched doorway",Geb
169fd:  b2 ...                  PRINT           "
The rope plucks out the scroll... and your sideways leap is only just in time
to clear the thundering avalanche of masonry which results!
"
16a60:  9b 90                   RET             #90

Routine 16a64, 0 locals

16a65:  41 99 01 00 77          JE              G89,#01 [FALSE] 16adf
16a6a:  c1 8f 98 00 97 00 70    JE              G88,#0097 [FALSE] 16adf
16a71:  0d 23 01                STORE           G13,#01
16a74:  b3 ...                  PRINT_RET       "
The rope plucks out the scroll as you run north... but you are overtaken by a
thundering avalanche with the same idea! Your burial is almost instant."
16adf:  9b 8e                   RET             #8e

Routine 16ae4, 0 locals

16ae5:  c1 97 f9 23 22 00 21    JE              Ge9,#23,#22 [FALSE] 16b0b
16aec:  b3 ...                  PRINT_RET       "The scree is stable, but not
that stable."
16b0b:  c1 97 f9 0f 11 57       JE              Ge9,#0f,#11 [FALSE] 16b26
16b11:  b3 ...                  PRINT_RET       "But there's so much of it!"
16b26:  41 f9 63 00 93          JE              Ge9,#63 [FALSE] 16bbc
16b2b:  41 9e 55 00 8e          JE              G8e,#55 [FALSE] 16bbc
16b30:  0d 23 01                STORE           G13,#01
16b33:  b3 ...                  PRINT_RET       "Your spell is a triumphant
success, unfastening the subtle bonds of friction which held the scree fall
together! But it's a pyrrhic victory, celebrated rather briefly in the middle
of an avalanche."
16bbc:  b1                      RFALSE          

Routine 16bc0, 0 locals

16bc1:  c1 95 f9 0f 11 4c 00 a1 JE              Ge9,#0f,#11,#4c [FALSE] 16c68
16bc9:  4a fb 0c c0             TEST_ATTR       Geb,#0c [TRUE] RFALSE
16bcd:  b3 ...                  PRINT_RET       "Just as you're about to pull
out the scroll, a tiny but significant shift of stones give you pause. The
scree fall is on the very edge of an avalanche! You'd need to be a lot more
than arm's length away to survive that."
16c68:  b1                      RFALSE          

Routine 16c6c, 0 locals

16c6d:  a0 3b 80 3f             JZ              G2b [TRUE] 16cae
16c71:  b3 ...                  PRINT_RET       "The spell backfires, and you
somehow feel it wrong to apply it to individual objects."
16cae:  b2 ...                  PRINT           "A cloud of green smoke gathers
and swirls in the air like cream poured into soup"
16ce5:  51 10 32 00             GET_PROP        G00,#32 -> -(SP)
16ce9:  a0 00 80 27             JZ              (SP)+ [TRUE] 16d12
16ced:  b2 ...                  PRINT           ", and a vision briefly
appears...

"
16d0a:  51 10 32 00             GET_PROP        G00,#32 -> -(SP)
16d0e:  ad 00                   PRINT_PADDR     (SP)+
16d10:  bb                      NEW_LINE        
16d11:  b0                      RTRUE           
16d12:  b3 ...                  PRINT_RET       "; but little seems to have
changed here in past years, to judge from the tedious vision which results."

Routine 16d5c, 0 locals

16d5d:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
16d61:  41 00 01 00 5a          JE              (SP)+,#01 [FALSE] 16dbe
16d66:  0d 23 01                STORE           G13,#01
16d69:  b3 ...                  PRINT_RET       "As you pass through the
archway, clouds of vapour and drips of arsenic seep into your nose and ears!
Death is immediate."
16dbe:  8b 00 9a                RET             #009a

Routine 16dc4, 0 locals

16dc5:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
16dc9:  41 00 01 00 61          JE              (SP)+,#01 [FALSE] 16e2d
16dce:  b3 ...                  PRINT_RET       "A closer look at the doorway
reveals that its internal faces are coated with a runny, nasty-looking paste
which drips out of tiny pores."
16e2d:  b3 ...                  PRINT_RET       "The doorway glows with green
phosphorescence."

Routine 16e50, 0 locals

16e51:  41 f9 63 00 9d          JE              Ge9,#63 [FALSE] 16ef1
16e56:  41 9e 81 00 97          JE              G8e,#81 [FALSE] 16ef0
16e5b:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
16e5f:  41 00 01 00 49          JE              (SP)+,#01 [FALSE] 16eab
16e64:  e3 97 fb 29 02          PUT_PROP        Geb,#29,#02
16e69:  4b fb 09                SET_ATTR        Geb,#09
16e6c:  b3 ...                  PRINT_RET       "Blue magical light crackles
over the doorway, abating to leave it... greenly glowing."
16eab:  e3 97 fb 29 01          PUT_PROP        Geb,#29,#01
16eb0:  4c fb 09                CLEAR_ATTR      Geb,#09
16eb3:  b3 ...                  PRINT_RET       "Blue magical light crackles
over the doorway, reconstituting the poison on the archway."
16ef0:  b1                      RFALSE          
16ef1:  c1 8f f9 10 01 00 6a    JE              Ge9,#1001 [FALSE] 16f60
16ef8:  e0 27 7f 83 3a 87 00    CALL_VS         1fe0c (G2a,#87) -> -(SP)
16eff:  a0 00 80 5f             JZ              (SP)+ [TRUE] 16f60
16f03:  b3 ...                  PRINT_RET       "The use of poisoned
projectiles is strictly prohibited by the Protocol of Collioure, one of the
great triumphs of your early career."
16f60:  b1                      RFALSE          

Routine 16f64, 0 locals

16f65:  e1 07 3a db 00 07 01    STOREW          #3adb,#0007,#01
16f6c:  b1                      RFALSE          

Routine 16f70, 0 locals

16f71:  41 f9 65 43             JE              Ge9,#65 [FALSE] 16f76
16f75:  b1                      RFALSE          
16f76:  c1 95 f9 21 23 22 00 33 JE              Ge9,#21,#23,#22 [FALSE] 16faf
16f7e:  a9 fb                   REMOVE_OBJ      Geb
16f80:  b3 ...                  PRINT_RET       "You so much as look at the
creature's body, and it falls to dust!"
16faf:  a9 fb                   REMOVE_OBJ      Geb
16fb1:  b3 ...                  PRINT_RET       "The body shatters to dust at
your first, lightest touch!"

Routine 16fdc, 0 locals

16fdd:  41 f9 65 00 47          JE              Ge9,#65 [FALSE] 17027
16fe2:  a9 fb                   REMOVE_OBJ      Geb
16fe4:  b3 ...                  PRINT_RET       "The body explodes to dust
under the impact of the arrow, leaving you coughing and spluttering."
17027:  b1                      RFALSE          

Routine 17028, 0 locals

17029:  41 f9 36 00 25          JE              Ge9,#36 [FALSE] 17051
1702e:  b3 ...                  PRINT_RET       "The faint boom of a heart
beating within the egg."
17051:  b1                      RFALSE          

Routine 17054, 0 locals

17055:  41 f9 4f 02 44          JE              Ge9,#4f [FALSE] 1729c
1705a:  41 3b 0f 4a             JE              G2b,#0f [FALSE] 17066
1705e:  f9 19 2c b1 4f fb 08    CALL_VN         b2c4 (#4f,Geb,#08)
17065:  b0                      RTRUE           
17066:  41 3b 10 4a             JE              G2b,#10 [FALSE] 17072
1706a:  f9 19 2c b1 4f fb 07    CALL_VN         b2c4 (#4f,Geb,#07)
17071:  b0                      RTRUE           
17072:  41 3b 07 00 7a          JE              G2b,#07 [FALSE] 170ef
17077:  41 10 9b 00 75          JE              G00,#9b [FALSE] 170ef
1707c:  b2 ...                  PRINT           "You push the egg into a
rolling motion, down the long burrow, that is really a hatching-tube: it
gathers a little speed and rocks ominously side-to-side.
"
170eb:  8f 37 4e                CALL_1N         dd38
170ee:  b0                      RTRUE           
170ef:  41 3b 07 01 a3          JE              G2b,#07 [FALSE] 17295
170f4:  b2 ...                  PRINT           "As you give the egg a further
push down the slope, everything happens at once. The egg cracks, a vile viscous
glue-like liquid coats it at once and your hands are stuck fast!
"
1716f:  a9 fb                   REMOVE_OBJ      Geb
17171:  da 1f 32 56 8e          CALL_2N         c958 (#8e)
17176:  b2 ...                  PRINT           "
You're rolling with the egg now, into the waterlily pool. Bruised but somehow
coping, you splutter in the sudden chill water: the glue is washing away, and
your possessions are safe enough: not even your hair is wet.

But just as the egg splits entirely, the giant pod of a deep lily strikes
upward to swallow the flotsam whole, to compress it and digest it, safe in the
depths in the pool.
"
17289:  da 0f 32 56 00 a1       CALL_2N         c958 (#00a1)
1728f:  cd 4f 8a 00 a2          STORE           G7a,#00a2
17294:  b0                      RTRUE           
17295:  f9 1b 2c b1 4d fb       CALL_VN         b2c4 (#4d,Geb)
1729b:  b0                      RTRUE           
1729c:  41 f9 38 00 21          JE              Ge9,#38 [FALSE] 172c0
172a1:  b3 ...                  PRINT_RET       "You feel the vibration of a
beating heart."
172c0:  c1 97 f9 0f 11 00 25    JE              Ge9,#0f,#11 [FALSE] 172ea
172c7:  b3 ...                  PRINT_RET       "Even a baby Thing is nearly as
big as you are."
172ea:  c1 95 f9 4d 4c 4e c9    JE              Ge9,#4d,#4c,#4e [TRUE] 172f8
172f1:  c1 97 f9 43 65 00 57    JE              Ge9,#43,#65 [FALSE] 1734d
172f8:  b3 ...                  PRINT_RET       "If anything could accelerate
hatching, pushing the egg around might. If only you could cause it to crack
open somewhere!"
1734d:  b1                      RFALSE          

Routine 17350, 0 locals

17351:  c1 95 f9 63 66 5e c9    JE              Ge9,#63,#66,#5e [TRUE] 1735f
17358:  c1 95 f9 21 23 65 43    JE              Ge9,#21,#23,#65 [FALSE] 17360
1735f:  b1                      RFALSE          
17360:  c1 8f f9 10 02 00 39    JE              Ge9,#1002 [FALSE] 1739e
17367:  a9 3a                   REMOVE_OBJ      G2a
17369:  b2 ...                  PRINT           "The water-lily gulps upward
and swallows "
17388:  da 2f 2f 17 3a          CALL_2N         bc5c (G2a)
1738d:  b3 ...                  PRINT_RET       " with a vicious snap!"
1739e:  b3 ...                  PRINT_RET       "You'd have to wade through icy
water to reach it."

Routine 173c4, 0 locals

173c5:  41 f9 65 4a             JE              Ge9,#65 [FALSE] 173d1
173c9:  f9 1a 2c b1 51 91 fb    CALL_VN         b2c4 (#51,G81,Geb)
173d0:  b0                      RTRUE           
173d1:  b1                      RFALSE          

Routine 173d4, 0 locals

173d5:  41 f9 63 00 4a          JE              Ge9,#63 [FALSE] 17422
173da:  41 9e 55 49             JE              G8e,#55 [FALSE] 173e5
173de:  a0 3b 46                JZ              G2b [FALSE] 173e5
173e1:  8f 5f 04                CALL_1N         17c10
173e4:  b0                      RTRUE           
173e5:  41 9e 56 00 39          JE              G8e,#56 [FALSE] 17421
173ea:  b3 ...                  PRINT_RET       "There really is no situation
so unpleasant you can't make it worse, is there?"
17421:  b1                      RFALSE          
17422:  41 f9 30 00 2f          JE              Ge9,#30 [FALSE] 17454
17427:  b3 ...                  PRINT_RET       "Yes, in this position it's
hard to think of anything better."
17454:  c1 95 f9 5e 3b 65 59    JE              Ge9,#5e,#3b,#65 [FALSE] 17472
1745b:  b3 ...                  PRINT_RET       "What, in this confined space?"
17472:  b1                      RFALSE          

Routine 17474, 0 locals

17475:  ca 1f 00 a5 08 03 95    TEST_ATTR       "lily membrane",#08 [FALSE]
1780f
1747c:  e0 27 7f 11 fb 4d 00    CALL_VS         1fc44 (Geb,#4d) -> -(SP)
17483:  e9 7f ff                PULL            Gef
17486:  41 ff 01 00 27          JE              Gef,#01 [FALSE] 174b0
1748b:  b3 ...                  PRINT_RET       "
There is a hissing sound from the base of the pod."
174b0:  41 ff 02 00 73          JE              Gef,#02 [FALSE] 17526
174b5:  b3 ...                  PRINT_RET       "
The pod's stalk seems to have been burnt through by the hornet's poison! The
whole pod rocks a little in the underwater currents, fraying away from the
stalk."
17526:  41 ff 03 00 e6          JE              Gef,#03 [FALSE] 1760f
1752b:  b2 ...                  PRINT           "
Suddenly the pod pulls free, and although you can see nothing of the waters
outside, your best guess is that it's drifting westward and rising slightly.
"
17598:  0d ff 00                STORE           Gef,#00
1759b:  a2 22 00 49             GET_CHILD       G12 -> -(SP) [FALSE] 175a6
1759f:  95 ff                   INC             Gef
175a1:  a1 00 00 bf fb          GET_SIBLING     (SP)+ -> -(SP) [TRUE] 1759f
175a6:  e9 7f fe                PULL            Gee
175a9:  e8 bf ff                PUSH            Gef
175ac:  43 00 00 00 5f          JG              (SP)+,#00 [FALSE] 1760e
175b1:  b3 ...                  PRINT_RET       "
You begin to feel a certain concern for, of all things, your belongings. When
the pod collapses, what will the water do to them?"
1760e:  b0                      RTRUE           
1760f:  41 ff 04 00 49          JE              Gef,#04 [FALSE] 1765b
17614:  b3 ...                  PRINT_RET       "
The pod bumps against an obstacle, checking its westward motion. Now it is only
rising, rising."
1765b:  41 ff 05 01 b1          JE              Gef,#05 [FALSE] 1780f
17660:  b2 ...                  PRINT           "
Finally the pod breaks surface and bursts into disparate leaves, no longer
bound up by the pressure. In confusion you strike out, treading water, "
176c9:  a2 22 00 42             GET_CHILD       G12 -> -(SP) [FALSE] 176cd
176cd:  a0 00 cc                JZ              (SP)+ [TRUE] 176da
176d0:  a2 22 00 42             GET_CHILD       G12 -> -(SP) [FALSE] 176d4
176d4:  4e 00 a1                INSERT_OBJ      (SP)+,"Lily Pod"
176d7:  8c ff f1                JUMP            176c9
176da:  06 4c a1 00 d8          JIN             "Ambassador's trunk","Lily Pod"
[FALSE] 177b5
176df:  b2 ...                  PRINT           "trying to catch hold of your
trunk: "
176fa:  0a 4c 0e 00 3c          TEST_ATTR       "Ambassador's trunk",#0e
[FALSE] 17739
176ff:  b2 ...                  PRINT           "but it sinks, water flooding
into its open lid. Dispirited, you try to swim "
17736:  8c 00 7e                JUMP            177b5
17739:  0e 4c 9e                INSERT_OBJ      "Ambassador's trunk","North
Edge of Pool"
1773c:  b2 ...                  PRINT           "closed and watertight, it
floats, but the current takes it away from you rapidly, to wash it up no doubt
on some distant shore. Dispirited, you try to swim a stroke or two "
177b5:  b2 ...                  PRINT           "but after a couple of minutes'
panic realise that the water is only waist deep here. You wade toward a slight
light.
"
17808:  da 0f 32 56 00 a6       CALL_2N         c958 (#00a6)
1780e:  b0                      RTRUE           
1780f:  e0 27 7f 11 fb 4c 00    CALL_VS         1fc44 (Geb,#4c) -> -(SP)
17816:  e9 7f ff                PULL            Gef
17819:  41 ff 03 57             JE              Gef,#03 [FALSE] 17832
1781d:  b3 ...                  PRINT_RET       "
The compression tightens."
17832:  41 ff 05 00 2b          JE              Gef,#05 [FALSE] 17860
17837:  b3 ...                  PRINT_RET       "
The membrane walls exude some kind of digestive fluid."
17860:  41 ff 07 00 39          JE              Gef,#07 [FALSE] 1789c
17865:  b3 ...                  PRINT_RET       "
Your shoulders are being folded together, like a recalcitrant cardboard box."
1789c:  41 ff 09 5f             JE              Gef,#09 [FALSE] 178bd
178a0:  b3 ...                  PRINT_RET       "
The pressure is now almost unbearable!"
178bd:  41 ff 0a 00 4a          JE              Gef,#0a [FALSE] 1790a
178c2:  0d 23 01                STORE           G13,#01
178c5:  b3 ...                  PRINT_RET       "
With a sudden convulsion of fibres, the lily pod crunches you up entirely, with
merciful speed."
1790a:  b1                      RFALSE          

Routine 1790c, 0 locals

1790d:  c1 95 f9 32 54 53 c9    JE              Ge9,#32,#54,#53 [TRUE] 1791b
17914:  c1 97 f9 17 16 00 23    JE              Ge9,#17,#16 [FALSE] 1793c
1791b:  b3 ...                  PRINT_RET       "The hornet sleeps soundly
(thank heavens)."
1793c:  41 f9 33 5b             JE              Ge9,#33 [FALSE] 17959
17940:  b3 ...                  PRINT_RET       "Yes! Why not make things
worse?"
17959:  41 f9 43 00 4d          JE              Ge9,#43 [FALSE] 179a9
1795e:  b3 ...                  PRINT_RET       "Does it not occur to you that
you and the hornet are in the same boat, or in this case the same submarine?"
179a9:  b1                      RFALSE          

Routine 179ac, 0 locals

179ad:  4a fb 08 46             TEST_ATTR       Geb,#08 [FALSE] 179b5
179b1:  4c fb 08                CLEAR_ATTR      Geb,#08
179b4:  b0                      RTRUE           
179b5:  e7 7f 03 00             RANDOM          #03 -> -(SP)
179b9:  41 00 01 00 2f          JE              (SP)+,#01 [FALSE] 179eb
179be:  e7 7f 03 ff             RANDOM          #03 -> Gef
179c2:  96 ff                   DEC             Gef
179c4:  cf 2f 3a c1 ff 00       LOADW           #3ac1,Gef -> -(SP)
179ca:  ad 00                   PRINT_PADDR     (SP)+
179cc:  b2 ...                  PRINT           " wriggles in sleep, "
179db:  e7 7f 03 ff             RANDOM          #03 -> Gef
179df:  96 ff                   DEC             Gef
179e1:  cf 2f 3a c7 ff 00       LOADW           #3ac7,Gef -> -(SP)
179e7:  ad 00                   PRINT_PADDR     (SP)+
179e9:  bb                      NEW_LINE        
179ea:  b0                      RTRUE           
179eb:  b1                      RFALSE          

Routine 179ec, 0 locals

179ed:  41 f9 38 00 41          JE              Ge9,#38 [FALSE] 17a31
179f2:  b3 ...                  PRINT_RET       "Nervously you touch the
stinger, so bulging with poison that any pressure might burst it."
17a31:  c1 95 f9 4d 4c 4e 00 53 JE              Ge9,#4d,#4c,#4e [FALSE] 17a8a
17a39:  b3 ...                  PRINT_RET       "You drag the stinger from side
to side, but thankfully the poison is not extruded. You continue to live, in
fact."
17a8a:  41 f9 50 00 fa          JE              Ge9,#50 [FALSE] 17b87
17a8f:  ca 1f 00 a5 08 00 39    TEST_ATTR       "lily membrane",#08 [FALSE]
17acd
17a96:  b3 ...                  PRINT_RET       "The poison sacs must be nearly
empty. It's an immature hornet, after all."
17acd:  cb 1f 00 a5 08          SET_ATTR        "lily membrane",#08
17ad2:  95 1d                   INC             G0d
17ad4:  b3 ...                  PRINT_RET       "With extreme care you squeeze
the hornet's stinger, and poison drips out to form a tiny pool in the base of
the lily pod. In this compressed space you're just able to keep your feet out
of it, for the time it takes to soak into the membrane walls of the pod."
17b87:  41 f9 43 00 21          JE              Ge9,#43 [FALSE] 17bab
17b8c:  b3 ...                  PRINT_RET       "You'd have to be very careful
about that."
17bab:  b1                      RFALSE          

Routine 17bac, 0 locals

17bad:  41 f9 63 4b             JE              Ge9,#63 [FALSE] 17bba
17bb1:  41 9e 55 46             JE              G8e,#55 [FALSE] 17bb9
17bb5:  8f 5f 04                CALL_1N         17c10
17bb8:  b0                      RTRUE           
17bb9:  b1                      RFALSE          
17bba:  41 f9 21 00 2d          JE              Ge9,#21 [FALSE] 17bea
17bbf:  b3 ...                  PRINT_RET       "A kind of rubbery wood, red
and glowing like blood vessels."
17bea:  41 f9 66 43             JE              Ge9,#66 [FALSE] 17bef
17bee:  b1                      RFALSE          
17bef:  b3 ...                  PRINT_RET       "The membrane seems impervious
to everything."

Routine 17c10, 0 locals

17c11:  0d 23 01                STORE           G13,#01
17c14:  b3 ...                  PRINT_RET       "Abruptly the lily-pod bursts.
A detached observer would think its graceful explosion reminiscent of seeds
released onto a spring wind. But with the pressure of the water smashing into
you like a hammer, you are soon detached from all observation, all
reminiscence."

Routine 17ccc, 0 locals

17ccd:  c1 97 f9 3e 44 00 23    JE              Ge9,#3e,#44 [FALSE] 17cf5
17cd4:  b3 ...                  PRINT_RET       "You've had quite enough of the
water for now."
17cf5:  b1                      RFALSE          

Routine 17cf8, 0 locals

17cf9:  41 f9 2f 49             JE              Ge9,#2f [FALSE] 17d04
17cfd:  f9 1b 2c b1 26 fb       CALL_VN         b2c4 (#26,Geb)
17d03:  b0                      RTRUE           
17d04:  b1                      RFALSE          

Routine 17d08, 0 locals

17d09:  41 f9 26 56             JE              Ge9,#26 [FALSE] 17d21
17d0d:  4b fb 09                SET_ATTR        Geb,#09
17d10:  b3 ...                  PRINT_RET       "You light the lantern."
17d21:  41 f9 27 58             JE              Ge9,#27 [FALSE] 17d3b
17d25:  4c fb 09                CLEAR_ATTR      Geb,#09
17d28:  b3 ...                  PRINT_RET       "You put out the lantern."
17d3b:  b1                      RFALSE          

Routine 17d3c, 0 locals

17d3d:  41 f9 65 43             JE              Ge9,#65 [FALSE] 17d42
17d41:  b1                      RFALSE          
17d42:  b3 ...                  PRINT_RET       "You can't get to the pod's
detritus from here."

Routine 17d68, 0 locals

17d69:  41 f9 65 00 50          JE              Ge9,#65 [FALSE] 17dbc
17d6e:  a9 91                   REMOVE_OBJ      G81
17d70:  a9 fb                   REMOVE_OBJ      Geb
17d72:  e3 13 00 a9 1e 92 55    PUT_PROP        "broad green leaf",#1e,S305
17d79:  b3 ...                  PRINT_RET       "Your arrow submerges the dead
leaves, removing them from sight. (Was that worth an arrow?)"
17dbc:  b1                      RFALSE          

Routine 17dc0, 0 locals

17dc1:  41 f9 3a 00 36          JE              Ge9,#3a [FALSE] 17dfa
17dc6:  a3 fb 00                GET_PARENT      Geb -> -(SP)
17dc9:  ce 2f 00 aa 00          INSERT_OBJ      "torn-up broad green
leaf",(SP)+
17dce:  a9 fb                   REMOVE_OBJ      Geb
17dd0:  cd 4f 8a 00 aa          STORE           G7a,#00aa
17dd5:  b3 ...                  PRINT_RET       "You tear the leaf into a pile
of smallish fragments."
17dfa:  b1                      RFALSE          

Routine 17dfc, 0 locals

17dfd:  41 f9 2c 00 23          JE              Ge9,#2c [FALSE] 17e23
17e02:  b3 ...                  PRINT_RET       "There is no narcotic effect,
but it's chewy."
17e23:  b1                      RFALSE          

Routine 17e24, 0 locals

17e25:  41 f9 3a 5f             JE              Ge9,#3a [FALSE] 17e46
17e29:  b3 ...                  PRINT_RET       "The pieces can't be torn any
further."
17e46:  41 f9 67 00 c9          JE              Ge9,#67 [FALSE] 17f12
17e4b:  e0 27 7f 83 3b 87 00    CALL_VS         1fe0c (G2b,#87) -> -(SP)
17e52:  a0 00 80 be             JZ              (SP)+ [TRUE] 17f12
17e56:  4a fb 08 80 3b          TEST_ATTR       Geb,#08 [TRUE] 17e94
17e5b:  b3 ...                  PRINT_RET       "Not having been shown exactly
how to perform this trick, you can make no headway."
17e94:  a3 fb 00                GET_PARENT      Geb -> -(SP)
17e97:  ce 2f 00 ab 00          INSERT_OBJ      "dull green paste",(SP)+
17e9c:  a9 fb                   REMOVE_OBJ      Geb
17e9e:  cd 4f 8a 00 ab          STORE           G7a,#00ab
17ea3:  b3 ...                  PRINT_RET       "Using the arrow-head, you
grind the leaf fragments down even further, so that their natural moisture is
driven out until you are left with a dull green paste."
17f12:  b1                      RFALSE          

Routine 17f14, 0 locals

17f15:  41 f9 2c 00 2b          JE              Ge9,#2c [FALSE] 17f43
17f1a:  b3 ...                  PRINT_RET       "There is no narcotic effect,
but it tickles the throat."
17f43:  b1                      RFALSE          

Routine 17f44, 0 locals

17f45:  c1 97 f9 3a 67 55       JE              Ge9,#3a,#67 [FALSE] 17f5e
17f4b:  b3 ...                  PRINT_RET       "The paste is indivisible."
17f5e:  b1                      RFALSE          

Routine 17f60, 0 locals

17f61:  41 f9 2c 00 79          JE              Ge9,#2c [FALSE] 17fdd
17f66:  b3 ...                  PRINT_RET       "There is a massive narcotic
effect, which is best left undescribed (and omitted from your official report,
unless you wish to be dismissed from the Diplomatic Service)."
17fdd:  b1                      RFALSE          

Routine 17fe0, 0 locals

17fe1:  e1 07 3a db 00 08 01    STOREW          #3adb,#0008,#01
17fe8:  b1                      RFALSE          

Routine 17fec, 0 locals

17fed:  c1 97 f9 0f 11 00 37    JE              Ge9,#0f,#11 [FALSE] 18029
17ff4:  b3 ...                  PRINT_RET       "The stores are too heavy to
lift (hence the scrape-marks on the floor)."
18029:  c1 95 f9 4d 4c 4f c9    JE              Ge9,#4d,#4c,#4f [TRUE] 18037
18030:  c1 97 f9 22 23 00 8b    JE              Ge9,#22,#23 [FALSE] 180c0
18037:  ce 1f 00 af ac          INSERT_OBJ      "secret door","Other Half Cave"
1803c:  cc 1f 00 af 01          CLEAR_ATTR      "secret door",#01
18041:  0b 75 11                SET_ATTR        "masoned wall",#11
18044:  cd 4f 8a 00 af          STORE           G7a,#00af
18049:  e3 53 ac 09 00 af       PUT_PROP        "Other Half Cave",#09,#00af
1804f:  e3 53 74 0a 00 af       PUT_PROP        "Half Cave",#0a,#00af
18055:  b3 ...                  PRINT_RET       "You manage to uncover what
seems to be a secret doorway in the masoned wall. An emergency escape-route,
prudently added by whoever is using the stores?"
180c0:  b1                      RFALSE          

Routine 180c4, 0 locals

180c5:  41 10 74 44             JE              G00,#74 [FALSE] 180cb
180c9:  9b 0a                   RET             #0a
180cb:  9b 09                   RET             #09

Routine 180d0, 0 locals

180d1:  41 10 74 44             JE              G00,#74 [FALSE] 180d7
180d5:  9b ac                   RET             #ac
180d7:  9b 74                   RET             #74

Routine 180dc, 0 locals

180dd:  b3 ...                  PRINT_RET       "
A secret door in the masoned wall allows access to the other half of the cave,
after all."

Routine 18120, 0 locals

18121:  a0 3b 80 4b             JZ              G2b [TRUE] 1816e
18125:  b3 ...                  PRINT_RET       "A brief babble in your ears
turns to a shriek. Whatever you're doing, you're not doing it correctly."
1816e:  a0 a1 80 39             JZ              G91 [TRUE] 181a9
18172:  b3 ...                  PRINT_RET       "Nothing happens, perhaps
because you have already reported home to the Duchy."
181a9:  0d a1 01                STORE           G91,#01
181ac:  54 1d 01 1d             ADD             G0d,#01 -> G0d
181b0:  f9 07 2d 35 00 e6 03    CALL_VN         b4d4 (#00e6,#03)
181b7:  b3 ...                  PRINT_RET       "A brief babble in your ears
clarifies and settles to a calm voice, a voice with the clarity of a thought.
You are in telepathic conference with the Archduke Elect, the head of the
Duchy's legislature and therefore of the whole Diplomatic Service!

Somehow, without words, a perfect concord is achieved between you. He has
received your report and is arranging for your escape: agents will be waiting
at Watling Street to whisk you away. But your detailed impressions of what is
going on will not be enough. No, you must somehow foil this new magic, if
possible forever.

(Only now do you realise how the poor watchmakers and craftsmen of the Duchy
must feel. This "ploor" spell will make travelling diplomats entirely
redundant.)"

Routine 183bc, 0 locals

183bd:  41 f9 57 49             JE              Ge9,#57 [FALSE] 183c8
183c1:  f9 17 2c b1 1c 0f       CALL_VN         b2c4 (#1c,#0f)
183c7:  b0                      RTRUE           
183c8:  b1                      RFALSE          

Routine 183cc, 0 locals

183cd:  c1 95 f9 4d 4c 4f ca    JE              Ge9,#4d,#4c,#4f [TRUE] 183dc
183d4:  c1 95 f9 4e 0f 11 00 27 JE              Ge9,#4e,#0f,#11 [FALSE] 18401
183dc:  b3 ...                  PRINT_RET       "It's an effort even to look at
something so heavy."
18401:  41 f9 63 01 0c          JE              Ge9,#63 [FALSE] 18510
18406:  41 9e 81 00 9f          JE              G8e,#81 [FALSE] 184a8
1840b:  a9 fb                   REMOVE_OBJ      Geb
1840d:  ce 2f 00 b8 10          INSERT_OBJ      "chalk formation",G00
18412:  2e b6 10                INSERT_OBJ      "funnel chimney",G00
18415:  b3 ...                  PRINT_RET       "The air around the meteor
glows as it is transformed, slowly under the play of the green light, into... a
chalk formation, white and irregular. The beam now loses itself in the
any-angled facets of the chalk."
184a8:  41 9e 54 00 65          JE              G8e,#54 [FALSE] 18510
184ad:  b3 ...                  PRINT_RET       "The spell struggles hard; but
with such a tremendous mass of heavy metal there, it fails to make any headway.
The magic runs away to earth."
18510:  b1                      RFALSE          

Routine 18514, 1 local

18515:  c1 95 f9 4d 4c 4f c9    JE              Ge9,#4d,#4c,#4f [TRUE] 18523
1851c:  c1 95 f9 4e 0f 11 5d    JE              Ge9,#4e,#0f,#11 [FALSE] 1853e
18523:  b3 ...                  PRINT_RET       "That much chalk is deceptively
heavy."
1853e:  41 f9 63 00 aa          JE              Ge9,#63 [FALSE] 185eb
18543:  41 9e 81 00 a5          JE              G8e,#81 [FALSE] 185eb
18548:  a9 fb                   REMOVE_OBJ      Geb
1854a:  2e b7 10                INSERT_OBJ      "metallic meteor",G00
1854d:  2e b6 10                INSERT_OBJ      "funnel chimney",G00
18550:  0d 01 01                STORE           L00,#01
18553:  c6 8f 01 00 c5 48       JIN             L00,"Anvil" [FALSE] 1855f
18559:  41 01 93 c4             JE              L00,#93 [TRUE] 1855f
1855d:  a9 01                   REMOVE_OBJ      L00
1855f:  95 01                   INC             L00
18561:  c3 8f 01 00 e6 c5       JG              L00,#00e6 [TRUE] 1856a
18567:  8c ff eb                JUMP            18553
1856a:  b3 ...                  PRINT_RET       "The air around the chalk glows
as it is transformed, slowly under the play of the green light, back into the
meteor, whose burnished surface throws the beam back east through the archway!"
185eb:  b1                      RFALSE          

Routine 185ec, 0 locals

185ed:  0a 39 08 00 63          TEST_ATTR       "rich brocade curtains",#08
[FALSE] 18653
185f2:  b3 ...                  PRINT_RET       "A thick, viscous, magical
green glow, the colour of the plume you saw back in the Customs House. Hours
ago, but it seems like forever."
18653:  b3 ...                  PRINT_RET       "A thick, viscous, magical
green glow."

Routine 18670, 0 locals

18671:  41 10 b5 c1             JE              G00,#b5 [TRUE] RTRUE
18675:  06 b7 b5 48             JIN             "metallic meteor","Wheel Cave
(West)" [FALSE] 1867f
18679:  c1 8f 10 00 c4 c1       JE              G00,#00c4 [TRUE] RTRUE
1867f:  b1                      RFALSE          

Routine 18680, 0 locals

18681:  c1 95 f9 21 22 23 43    JE              Ge9,#21,#22,#23 [FALSE] 18689
18688:  b1                      RFALSE          
18689:  b3 ...                  PRINT_RET       "The beam is made of
insubstantial light."

Routine 186a8, 0 locals

186a9:  cd 4f 8b 00 c7          STORE           G7b,#00c7
186ae:  b1                      RFALSE          

Routine 186b0, 0 locals

186b1:  b2 ...                  PRINT           "At the workshop's centre is
the Anvil, a hard stone mounting and, perhaps, the fulcrum of the new
Northlands Empire that is to come"
18710:  06 b7 b5 00 a6          JIN             "metallic meteor","Wheel Cave
(West)" [FALSE] 187b9
18715:  b2 ...                  PRINT           ". The beam of light courses in
through the eastern archway to strike the top of the Anvil dead-centre"
1875c:  26 93 fb 00 5a          JIN             "ore",Geb [FALSE] 187b9
18761:  b2 ...                  PRINT           ", where it is "
1876c:  11 93 29 00             GET_PROP        "ore",#29 -> -(SP)
18770:  41 00 03 00 35          JE              (SP)+,#03 [FALSE] 187a8
18775:  b3 ...                  PRINT_RET       "refracted by the diamond,
right across the calibrations on the far wall."
187a8:  b2 ...                  PRINT           "absorbed by "
187b1:  da 1f 2f 17 93          CALL_2N         bc5c (#93)
187b6:  b3 ...                  PRINT_RET       "."
187b9:  b3 ...                  PRINT_RET       "."

Routine 187bc, 0 locals

187bd:  c1 8f f9 10 01 01 ab    JE              Ge9,#1001 [FALSE] 1896d
187c4:  06 b7 b5 40             JIN             "metallic meteor","Wheel Cave
(West)" [FALSE] RFALSE
187c8:  41 3a 1b 00 43          JE              G2a,#1b [FALSE] 1880e
187cd:  b3 ...                  PRINT_RET       "Even from the little you know
of opticks, you can see how that would be immensely dangerous."
1880e:  41 3a 93 80 2d          JE              G2a,#93 [TRUE] 1883e
18813:  a9 3a                   REMOVE_OBJ      G2a
18815:  b2 ...                  PRINT           "The magical light melts away "
1882a:  da 2f 2f 17 3a          CALL_2N         bc5c (G2a)
1882f:  b3 ...                  PRINT_RET       " in a split second."
1883e:  0b 93 03                SET_ATTR        "ore",#03
18841:  b2 ...                  PRINT           "The magical beam strikes "
18854:  da 2f 2f 17 3a          CALL_2N         bc5c (G2a)
18859:  51 3a 29 00             GET_PROP        G2a,#29 -> -(SP)
1885d:  41 00 03 00 4e          JE              (SP)+,#03 [FALSE] 188ae
18862:  b2 ...                  PRINT           " and is refracted right across
the calibrations on the far wall, in a weaker but still potent greenness.
"
188ab:  8c 00 23                JUMP            188cf
188ae:  b2 ...                  PRINT           " but is absorbed, to no
particular purpose.
"
188cf:  e0 03 7e 93 00 c7 00 4f 00 
                               CALL_VS         1fa4c (#00c7,#004f) -> -(SP)
188d8:  41 00 04 00 91          JE              (SP)+,#04 [FALSE] 1896c
188dd:  51 3a 29 00             GET_PROP        G2a,#29 -> -(SP)
188e1:  41 00 03 00 25          JE              (SP)+,#03 [FALSE] 18909
188e6:  b3 ...                  PRINT_RET       "
Clotspinner sniffs, impressed despite himself."
18909:  b3 ...                  PRINT_RET       "
Clotspinner sniffs with a superior air. "Right idea, young fellow, but what we
need's a crystalline structure, not just a stout one!""
1896c:  b0                      RTRUE           
1896d:  c1 8f f9 10 00 49       JE              Ge9,#1000 [FALSE] 1897a
18973:  41 3a 93 45             JE              G2a,#93 [FALSE] 1897a
18977:  0c 93 03                CLEAR_ATTR      "ore",#03
1897a:  b1                      RFALSE          

Routine 1897c, 0 locals

1897d:  b2 ...                  PRINT           "A swivel mounting runs around
the whole western hemicircle of the workshop, and can be turned anywhere on the
calibrated dial from 1 to 180 degrees. It now stands at "
189f2:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
189f6:  57 00 64 00             DIV             (SP)+,#64 -> -(SP)
189fa:  e6 bf 00                PRINT_NUM       (SP)+
189fd:  b2 ...                  PRINT           "."
18a00:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
18a04:  57 00 0a 00             DIV             (SP)+,#0a -> -(SP)
18a08:  58 00 0a 00             MOD             (SP)+,#0a -> -(SP)
18a0c:  e6 bf 00                PRINT_NUM       (SP)+
18a0f:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
18a13:  58 00 0a 00             MOD             (SP)+,#0a -> -(SP)
18a17:  e6 bf 00                PRINT_NUM       (SP)+
18a1a:  a2 fb 00 42             GET_CHILD       Geb -> -(SP) [FALSE] 18a1e
18a1e:  a0 00 db                JZ              (SP)+ [TRUE] 18a3a
18a21:  b3 ...                  PRINT_RET       " and holds a sheet of vellum
paper."
18a3a:  b3 ...                  PRINT_RET       "."

Routine 18a40, 0 locals

18a41:  c1 8f f9 10 01 00 b7    JE              Ge9,#1001 [FALSE] 18afd
18a48:  a2 fb 00 42             GET_CHILD       Geb -> -(SP) [FALSE] 18a4c
18a4c:  a0 00 80 23             JZ              (SP)+ [TRUE] 18a71
18a50:  b3 ...                  PRINT_RET       "The mounting holds only one
scroll at a time."
18a71:  e0 27 7f 83 3a bc 00    CALL_VS         1fe0c (G2a,#bc) -> -(SP)
18a78:  a0 00 00 76             JZ              (SP)+ [FALSE] 18af0
18a7c:  e0 03 7e 93 00 c7 00 4f 00 
                               CALL_VS         1fa4c (#00c7,#004f) -> -(SP)
18a85:  41 00 04 00 37          JE              (SP)+,#04 [FALSE] 18abf
18a8a:  b3 ...                  PRINT_RET       ""Clean vellum scrolls only,
dear boy," says Clotspinner patronisingly."
18abf:  b2 ...                  PRINT           "The mounting is clearly meant
to hold something, but not "
18ae8:  da 2f 2f 09 3a          CALL_2N         bc24 (G2a)
18aed:  b3 ...                  PRINT_RET       "."
18af0:  41 3e 13 4a             JE              G2e,#13 [FALSE] 18afc
18af4:  f9 1a 2c b1 12 3a fb    CALL_VN         b2c4 (#12,G2a,Geb)
18afb:  b0                      RTRUE           
18afc:  b1                      RFALSE          
18afd:  41 f9 4e 5f             JE              Ge9,#4e [FALSE] 18b1e
18b01:  b3 ...                  PRINT_RET       "Try turning it to a particular
setting."
18b1e:  41 f9 68 00 fd          JE              Ge9,#68 [FALSE] 18c1e
18b23:  42 3b 01 c9             JL              G2b,#01 [TRUE] 18b2e
18b27:  c3 8f 3b 46 50 00 21    JG              G2b,#4650 [FALSE] 18b4d
18b2e:  b3 ...                  PRINT_RET       "The calibrations range from 1
to 180."
18b4d:  e3 9b fb 29 3b          PUT_PROP        Geb,#29,G2b
18b52:  e0 03 7e 93 00 c7 00 4f 00 
                               CALL_VS         1fa4c (#00c7,#004f) -> -(SP)
18b5b:  41 00 04 00 80          JE              (SP)+,#04 [FALSE] 18bde
18b60:  c1 8f 3b 43 88 80 79    JE              G2b,#4388 [TRUE] 18bde
18b67:  b2 ...                  PRINT           ""I presume you know what
you're doing," says Clotspinner patronisingly. "Almost all the spells are of no
practical use. Takes years of knowhow to predict them."

"
18bde:  b2 ...                  PRINT           "You rotate the mounting to "
18bf3:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
18bf7:  57 00 64 00             DIV             (SP)+,#64 -> -(SP)
18bfb:  e6 bf 00                PRINT_NUM       (SP)+
18bfe:  b2 ...                  PRINT           "."
18c01:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
18c05:  57 00 0a 00             DIV             (SP)+,#0a -> -(SP)
18c09:  58 00 0a 00             MOD             (SP)+,#0a -> -(SP)
18c0d:  e6 bf 00                PRINT_NUM       (SP)+
18c10:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
18c14:  58 00 0a 00             MOD             (SP)+,#0a -> -(SP)
18c18:  e6 bf 00                PRINT_NUM       (SP)+
18c1b:  b3 ...                  PRINT_RET       "."
18c1e:  b1                      RFALSE          

Routine 18c20, 0 locals

18c21:  c1 8f f9 10 01 4b       JE              Ge9,#1001 [FALSE] 18c30
18c27:  4b 3a 03                SET_ATTR        G2a,#03
18c2a:  da 2f 2d 59 fb          CALL_2N         b564 (Geb)
18c2f:  b1                      RFALSE          
18c30:  c1 8f f9 10 00 4a       JE              Ge9,#1000 [FALSE] 18c3e
18c36:  4c 3a 03                CLEAR_ATTR      G2a,#03
18c39:  da 2f 2d 6e fb          CALL_2N         b5b8 (Geb)
18c3e:  b1                      RFALSE          

Routine 18c40, 1 local

18c41:  a2 fb 01 42             GET_CHILD       Geb -> L00 [FALSE] 18c45
18c45:  a0 01 43                JZ              L00 [FALSE] 18c49
18c48:  b0                      RTRUE           
18c49:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] 18c4d
18c4d:  a0 00 c3                JZ              (SP)+ [TRUE] 18c51
18c50:  b0                      RTRUE           
18c51:  06 b7 b5 c3             JIN             "metallic meteor","Wheel Cave
(West)" [TRUE] 18c56
18c55:  b0                      RTRUE           
18c56:  06 93 c5 4a             JIN             "ore","Anvil" [FALSE] 18c62
18c5a:  11 93 29 00             GET_PROP        "ore",#29 -> -(SP)
18c5e:  41 00 03 c3             JE              (SP)+,#03 [TRUE] 18c63
18c62:  b0                      RTRUE           
18c63:  da 2f 2d 6e fb          CALL_2N         b5b8 (Geb)
18c68:  a9 01                   REMOVE_OBJ      L00
18c6a:  51 fb 29 00             GET_PROP        Geb,#29 -> -(SP)
18c6e:  d9 2f 69 03 00 01       CALL_2S         1a40c ((SP)+) -> L00
18c74:  e0 27 7e 93 fb 4e 00    CALL_VS         1fa4c (Geb,#4e) -> -(SP)
18c7b:  a0 00 4b                JZ              (SP)+ [FALSE] 18c87
18c7e:  f9 25 7e 8c fb 4e 01    CALL_VN         1fa30 (Geb,#4e,#01)
18c85:  95 1d                   INC             G0d
18c87:  6e 01 fb                INSERT_OBJ      L00,Geb
18c8a:  a2 fb 8a 42             GET_CHILD       Geb -> G7a [FALSE] 18c8e
18c8e:  66 fb 10 00 79          JIN             Geb,G00 [FALSE] 18d0a
18c93:  b3 ...                  PRINT_RET       "
By an ancient and powerful magic, as you stand clear of the green beam, one
precise ray of one single shade strikes the paper in the mounting. A spell
appears upon it!"
18d0a:  b1                      RFALSE          

Routine 18d0c, 0 locals

18d0d:  41 f9 65 00 47          JE              Ge9,#65 [FALSE] 18d57
18d12:  b3 ...                  PRINT_RET       "You'd do many things for your
country, but you draw the line at shooting an old man in cold blood."
18d57:  b1                      RFALSE          

Routine 18d58, 0 locals

18d59:  41 f9 2d 02 ad          JE              Ge9,#2d [FALSE] 19009
18d5e:  e0 27 7e 93 fb 4f 00    CALL_VS         1fa4c (Geb,#4f) -> -(SP)
18d65:  41 00 02 53             JE              (SP)+,#02 [FALSE] 18d7a
18d69:  b3 ...                  PRINT_RET       ""Then kindly do so.""
18d7a:  e0 27 7e 93 fb 4f 00    CALL_VS         1fa4c (Geb,#4f) -> -(SP)
18d81:  41 00 03 d5             JE              (SP)+,#03 [TRUE] 18d98
18d85:  b3 ...                  PRINT_RET       "A curious thing to say."
18d98:  f9 25 7e 8c fb 4f 04    CALL_VN         1fa30 (Geb,#4f,#04)
18d9f:  e3 93 fb 1e 95 22       PUT_PROP        Geb,#1e,S342
18da5:  b2 ...                  PRINT           "He looks pensive as you shake
hands on the deal, wondering no doubt if he should have held out for more.

"Well, first thing to do's to get me out of here. I believe we'll require a
spell at, umm," (and he scribbles a quick calculation), "mental arithmetic
always was overrated, always said so, let's see, 172.88 degrees. Shall you do
the honours?

"
18ea6:  06 b7 b5 80 95          JIN             "metallic meteor","Wheel Cave
(West)" [TRUE] 18f3e
18eab:  b3 ...                  PRINT_RET       ""But... the light has gone...
ah, I see. Weeks I've spent, trying to dispose of that meteor, keep Amilia from
using it! But just for the moment I'd like it back, if it's not too much
trouble.""
18f3e:  06 93 c5 4b             JIN             "ore","Anvil" [FALSE] 18f4b
18f42:  11 93 29 00             GET_PROP        "ore",#29 -> -(SP)
18f46:  41 00 03 80 93          JE              (SP)+,#03 [TRUE] 18fdc
18f4b:  b3 ...                  PRINT_RET       ""Ah, but I was forgetting. I
smashed the prism, didn't I? Seemed a good idea at the time, dear boy...
couldn't destroy the meteor, of course, so had to do what I could to frustrate
Amilia...""
18fdc:  b3 ...                  PRINT_RET       ""Most ingenious," he adds,
looking at the new diamond prism."
19009:  41 f9 2e 00 b4          JE              Ge9,#2e [FALSE] 190c0
1900e:  e0 27 7e 93 fb 4f 00    CALL_VS         1fa4c (Geb,#4f) -> -(SP)
19015:  41 00 02 00 2b          JE              (SP)+,#02 [FALSE] 19043
1901a:  b3 ...                  PRINT_RET       ""Then I'll just have to
disregard everything you say.""
19043:  e0 27 7e 93 fb 4f 00    CALL_VS         1fa4c (Geb,#4f) -> -(SP)
1904a:  41 00 03 d5             JE              (SP)+,#03 [TRUE] 19061
1904e:  b3 ...                  PRINT_RET       "A curious thing to say."
19061:  a9 fb                   REMOVE_OBJ      Geb
19063:  b3 ...                  PRINT_RET       ""Then, young man, I need
trouble you no more!" And he pulls a breviary from his pocket, mumbles a spell
and vanishes clean away."
190c0:  41 f9 1c 00 73          JE              Ge9,#1c [FALSE] 19136
190c5:  e0 27 7e 93 fb 4f 00    CALL_VS         1fa4c (Geb,#4f) -> -(SP)
190cc:  41 00 01 55             JE              (SP)+,#01 [FALSE] 190e3
190d0:  b3 ...                  PRINT_RET       "A curious thing to say."
190e3:  b3 ...                  PRINT_RET       ""I'm too old to go shuffling
around this place. You've got legs, haven't you? Use them, dear boy! Use
them!""
19136:  41 f9 59 00 21          JE              Ge9,#59 [FALSE] 1915a
1913b:  b3 ...                  PRINT_RET       ""Thank you, I'm not tired any
longer.""
1915a:  c1 8f f9 10 09 00 45    JE              Ge9,#1009 [FALSE] 191a4
19161:  e0 27 7e 93 fb 4f 00    CALL_VS         1fa4c (Geb,#4f) -> -(SP)
19168:  41 00 01 55             JE              (SP)+,#01 [FALSE] 1917f
1916c:  b3 ...                  PRINT_RET       "A curious thing to say."
1917f:  b3 ...                  PRINT_RET       ""You're babbling, young
fellow, just babbling.""
191a4:  e0 27 7e 93 fb 4f 00    CALL_VS         1fa4c (Geb,#4f) -> -(SP)
191ab:  41 00 01 55             JE              (SP)+,#01 [FALSE] 191c2
191af:  b3 ...                  PRINT_RET       "A curious thing to say."
191c2:  b3 ...                  PRINT_RET       "Clotspinner sniffs at you,
uncooperatively."

Routine 191e4, 0 locals

191e5:  e0 27 7e 93 fb 4f 00    CALL_VS         1fa4c (Geb,#4f) -> -(SP)
191ec:  41 00 01 01 d2          JE              (SP)+,#01 [FALSE] 193c1
191f1:  41 f9 16 01 5e          JE              Ge9,#16 [FALSE] 19352
191f6:  41 3a ab 01 59          JE              G2a,#ab [FALSE] 19352
191fb:  f9 25 7e 8c fb 4f 02    CALL_VN         1fa30 (Geb,#4f,#02)
19202:  cb 1f 00 c8 03          SET_ATTR        "fragments of prism",#03
19207:  99 ab                   REMOVE_OBJ      "dull green paste"
19209:  95 1d                   INC             G0d
1920b:  e3 93 fb 1e 95 2f       PUT_PROP        Geb,#1e,S343
19211:  b3 ...                  PRINT_RET       "The water-lily elixir has an
immediate effect on Clotspinner! For a moment you think it will burn him out,
and that he's too weak to withstand it: but then he rises from the cot,
coughing and spluttering.

"Well who are you?" he asks. "You needn't think I'm grateful. Can't even do
myself in, it seems."

Caught off-balance, you introduce yourself with a stammer, and make a passable
Court bow. "I suppose you can prove that, young man?""
19352:  b3 ...                  PRINT_RET       "Clotspinner lies prone, close
to death, his pulse thready and weak, his breath too slight to feel on your
hand. Surely nothing on earth could revive him now."
193c1:  e0 27 7e 93 fb 4f 00    CALL_VS         1fa4c (Geb,#4f) -> -(SP)
193c8:  41 00 02 01 16          JE              (SP)+,#02 [FALSE] 194e1
193cd:  c1 97 f9 16 17 01 0f    JE              Ge9,#16,#17 [FALSE] 194e1
193d4:  41 3a 4d 01 0a          JE              G2a,#4d [FALSE] 194e1
193d9:  f9 25 7e 8c fb 4f 03    CALL_VN         1fa30 (Geb,#4f,#03)
193e0:  e3 93 fb 1e 95 38       PUT_PROP        Geb,#1e,S344
193e6:  b3 ...                  PRINT_RET       ""Thought so," he mutters.
"Damnable headache. Pardon my suspicion and all that. Ever since I invented the
"morglop spell: pry into darkest motives" I've been a little cynical, you know.
Shan't be working for Amilia any more, that's for certain!"

He staggers around the workshop, focusing his eyes again and generally
rejoining the real world."
194e1:  c1 97 f9 16 17 00 af    JE              Ge9,#16,#17 [FALSE] 19595
194e8:  e0 27 7e 93 fb 4f 00    CALL_VS         1fa4c (Geb,#4f) -> -(SP)
194ef:  41 00 02 00 29          JE              (SP)+,#02 [FALSE] 1951b
194f4:  b3 ...                  PRINT_RET       ""I think you know what I want
from you, young man.""
1951b:  e0 27 7e 93 fb 4f 00    CALL_VS         1fa4c (Geb,#4f) -> -(SP)
19522:  41 00 03 00 47          JE              (SP)+,#03 [FALSE] 1956c
19527:  b3 ...                  PRINT_RET       ""Never mind that! What about
my asylum?"

(You are beginning to think he belongs in one.)"
1956c:  b2 ...                  PRINT           ""Bah, nonsense. What would I
want with "
1958b:  da 2f 2f 09 3a          CALL_2N         bc24 (G2a)
19590:  b3 ...                  PRINT_RET       "?""
19595:  41 f9 33 00 33          JE              Ge9,#33 [FALSE] 195cb
1959a:  b3 ...                  PRINT_RET       ""You're as bad as that Amilia,
couldn't keep her hands off me.""
195cb:  41 f9 43 00 71          JE              Ge9,#43 [FALSE] 1963f
195d0:  b3 ...                  PRINT_RET       ""Oh, really, why did you stop
me doing myself in if you were only going to take up arms, umm?"

Seeing some sense in this, you relax your stance again."
1963f:  41 f9 54 06 db          JE              Ge9,#54 [FALSE] 19d1d
19644:  e0 27 7e 93 fb 4f 00    CALL_VS         1fa4c (Geb,#4f) -> -(SP)
1964b:  42 00 04 00 35          JL              (SP)+,#04 [FALSE] 19683
19650:  b3 ...                  PRINT_RET       "He is not yet cooperative
enough to be willing to answer any questions."
19683:  2d ff 3b                STORE           Gef,G2b
19686:  c1 83 ff 45 3e 52 ac 00 bf 
                               JE              Gef,"amilia","lady" [FALSE]
1974c
1968f:  b3 ...                  PRINT_RET       ""Ah," he murmurs with some
regret, "I'm afraid she seduced me here. Quite literally! Extraordinary woman.
Thoroughly wicked, naturally."

(You feel somewhat piqued when you compare how Amilia diverted your own good
self, i.e., by boring you senseless.)"
1974c:  c1 83 ff 52 d0 4c cd 00 25 
                               JE              Gef,"lavinia","empress" [FALSE]
19778
19755:  b3 ...                  PRINT_RET       ""Nice little girl, gave her a
lollypop once.""
19778:  c1 80 ff 4c c4 56 93 61 67 c9 
                               JE              Gef,"empire","old","undergrou"
[TRUE] 19789
19782:  c1 8f ff 57 08 00 eb    JE              Gef,"oue" [FALSE] 19872
19789:  b3 ...                  PRINT_RET       ""I don't believe in legends
and fables, I must say. Four-fifths of the tales are rubbish. Probably just a
tin-pot little dictatorship, the Old Underground Empire."

(This is exactly what your colleagues back at the Duchy would say - but having
been there, having explored a corner of it, you're having second thoughts.)"
19872:  c1 80 ff 62 f3 49 be 48 32 00 7b 
                               JE              Gef,"wheel","corridor","cave"
[FALSE] 198f6
1987d:  b3 ...                  PRINT_RET       ""Designed my own laboratory,
didn't I! Based around the meteor, of course, couldn't be moved. And my own
prison it turned out to be. No obvious way out, you see.""
198f6:  c1 80 ff 61 d3 52 0a 60 aa c8 
                               JE              Gef,"upside-d","inverted","tree"
[TRUE] 19906
19900:  c1 8f ff 48 44 5f       JE              Gef,"cedar" [FALSE] 19923
19906:  b3 ...                  PRINT_RET       ""Stuff and nonsense. No such
tree.""
19923:  c1 8f ff 51 17 00 3d    JE              Gef,"hornet" [FALSE] 19965
1992a:  b3 ...                  PRINT_RET       ""Just a footling legend. Don't
Ambassadors read their guide-books any more?""
19965:  c1 80 ff 54 ad 54 9b 54 a4 c9 
                               JE              Gef,"meteor","metal","metallic"
[TRUE] 19976
1996f:  c1 8f ff 54 14 00 a7    JE              Gef,"magnesium" [FALSE] 19a1b
19976:  b3 ...                  PRINT_RET       ""Elemental magnesium, I do
believe. Just fell to Earth in olden days. Quite indestructible, and I should
know - I've tried just about everything to destroy it, and stop Amilia's crew
from making any further use of its magic.""
19a1b:  c1 80 ff 4f b8 62 3f 54 02 cd 
                               JE              Gef,"green","viscous","magic"
[TRUE] 19a30
19a25:  c1 80 ff 54 0b 5d 9b 45 74 00 65 
                               JE              Gef,"magical","spell","anvil"
[FALSE] 19a93
19a30:  b3 ...                  PRINT_RET       ""Perfectly simple," says
Clotspinner testily. "Green magic is attracted by the meteor and reflected onto
whatever experiment is in hand.""
19a93:  c1 8f ff 5d ad 00 95    JE              Gef,"spells" [FALSE] 19b2d
19a9a:  b3 ...                  PRINT_RET       ""Spells are really
frequencies, or shades, of the magical aether, you know." He sniffs. "But then
you're just a diplomat of course, no education to speak of. Not your fault.
Born that way I expect.""
19b2d:  c1 80 ff 47 e1 47 d8 55 07 cb 
                               JE             
Gef,"calibrati","calibrate","mounting" [TRUE] 19b40
19b37:  c1 83 ff 54 fe 5e f1 00 69 
                               JE              Gef,"mount","swivel" [FALSE]
19ba7
19b40:  b3 ...                  PRINT_RET       ""Precision engineering, that,
had to do most of the work myself, these Borealis fellows are hopeless. Turns
to within a hundredth of a degree.""
19ba7:  c1 8f ff 58 f7 00 85    JE              Gef,"prism" [FALSE] 19c31
19bae:  b3 ...                  PRINT_RET       ""Smashed it myself, didn't I?
Couldn't do anything to wreck the meteor, but at least I could set Amilia back
a week or two, while she sends people out south for decent new glass.""
19c31:  c1 8f ff 4b da 00 45    JE              Gef,"duchy" [FALSE] 19c7b
19c38:  b3 ...                  PRINT_RET       ""Most generous place with
scientific grants, I gather," he says with a conspiratorial wink."
19c7b:  c1 8f ff 45 bc 00 21    JE              Gef,"asylum" [FALSE] 19ca1
19c82:  b3 ...                  PRINT_RET       ""Sometimes I think this is my
asylum.""
19ca1:  c1 80 ff 46 c1 46 ca 55 e8 c9 
                               JE             
Gef,"boreal","borealis","northland" [TRUE] 19cb2
19cab:  c1 8f ff 55 e8 00 4d    JE              Gef,"northland" [FALSE] 19cfd
19cb2:  b3 ...                  PRINT_RET       ""Borealis hasn't been the same
since old Titus VIII, of course. Mind you I was just a boy then.""
19cfd:  b3 ...                  PRINT_RET       ""Even I haven't got all the
answers.""
19d1c:  b1                      RFALSE          
19d1d:  41 f9 52 00 27          JE              Ge9,#52 [FALSE] 19d47
19d22:  b3 ...                  PRINT_RET       ""Most interesting, I'm sure,"
he says acidly."
19d47:  b1                      RFALSE          

Routine 19d48, 0 locals

19d49:  e0 27 7e 93 fb 4f 00    CALL_VS         1fa4c (Geb,#4f) -> -(SP)
19d50:  41 00 03 02 b8          JE              (SP)+,#03 [FALSE] 1a00b
19d55:  e0 27 7f 11 fb 50 00    CALL_VS         1fc44 (Geb,#50) -> -(SP)
19d5c:  e9 7f ff                PULL            Gef
19d5f:  41 ff 01 00 3b          JE              Gef,#01 [FALSE] 19d9d
19d64:  b3 ...                  PRINT_RET       "
"I shall want asylum, of course. Political asylum, from the Duchy, eh?""
19d9d:  41 ff 02 00 2b          JE              Gef,#02 [FALSE] 19dcb
19da2:  b3 ...                  PRINT_RET       "
"Of course I'll also need an official appointment.""
19dcb:  41 ff 03 00 21          JE              Gef,#03 [FALSE] 19def
19dd0:  b3 ...                  PRINT_RET       "
"And a little wooden house by the sea.""
19def:  41 ff 04 00 2d          JE              Gef,#04 [FALSE] 19e1f
19df4:  b3 ...                  PRINT_RET       "
"And I'll need the best laboratories and assistants.""
19e1f:  41 ff 05 00 2b          JE              Gef,#05 [FALSE] 19e4d
19e24:  b3 ...                  PRINT_RET       "
"With profiteroles every teatime, promptly at four.""
19e4d:  41 ff 06 00 41          JE              Gef,#06 [FALSE] 19e91
19e52:  b3 ...                  PRINT_RET       "
"And I trust there'll be dancing-girls, ten or twelve should suffice at a
pinch.""
19e91:  41 ff 07 00 2d          JE              Gef,#07 [FALSE] 19ec1
19e96:  b3 ...                  PRINT_RET       "
"Oh yes, my needs are simple," Clotspinner presses on."
19ec1:  41 ff 08 00 81          JE              Gef,#08 [FALSE] 19f45
19ec6:  b3 ...                  PRINT_RET       "
"Though I will be needing a couple of thousand gold pieces as working capital."

(Might it not be best to answer his proposition, before the list of demands
gets any longer?)"
19f45:  41 ff 09 00 27          JE              Gef,#09 [FALSE] 19f6f
19f4a:  b3 ...                  PRINT_RET       "
"And four barouche carriages in midnight black.""
19f6f:  41 ff 0a 00 27          JE              Gef,#0a [FALSE] 19f99
19f74:  b3 ...                  PRINT_RET       "
"And a clock accurate to one second every year.""
19f99:  41 ff 0b 00 25          JE              Gef,#0b [FALSE] 19fc1
19f9e:  b3 ...                  PRINT_RET       "
"And jade furniture of the Sp'ong dynasty.""
19fc1:  41 ff 0c 00 47          JE              Gef,#0c [FALSE] 1a00b
19fc6:  b3 ...                  PRINT_RET       "
"I can let you have a full list later, if that's convenient. But will you grant
me asylum?""
1a00b:  b1                      RFALSE          

Routine 1a00c, 0 locals

1a00d:  c1 97 f9 0f 11 00 25    JE              Ge9,#0f,#11 [FALSE] 1a037
1a014:  b3 ...                  PRINT_RET       "You'd only cut yourself, and
what is the point?"
1a037:  b1                      RFALSE          

Routine 1a038, 0 locals

1a039:  41 3b c7 80 25          JE              G2b,#c7 [TRUE] 1a061
1a03e:  b3 ...                  PRINT_RET       "The spell misfires. It only
works on old men."
1a061:  e0 17 7e 93 c7 4f 00    CALL_VS         1fa4c (#c7,#4f) -> -(SP)
1a068:  41 00 01 00 23          JE              (SP)+,#01 [FALSE] 1a08e
1a06d:  b3 ...                  PRINT_RET       "His body is too comatose to
trigger the spell."
1a08e:  e0 17 7e 93 c7 4f 00    CALL_VS         1fa4c (#c7,#4f) -> -(SP)
1a095:  42 00 04 00 2f          JL              (SP)+,#04 [FALSE] 1a0c7
1a09a:  b3 ...                  PRINT_RET       "Clotspinner cancels the spell
with a casual flick of his wrist."
1a0c7:  54 1d 01 1d             ADD             G0d,#01 -> G0d
1a0cb:  99 c7                   REMOVE_OBJ      "Clotspinner"
1a0cd:  f9 15 7e 8c c7 4f 05    CALL_VN         1fa30 (#c7,#4f,#05)
1a0d4:  b2 ...                  PRINT           ""Thank you very much," says
Clotspinner as he begins to disappear. "I shall now be teleported direct to the
Duchy. "
1a129:  a0 a1 57                JZ              G91 [FALSE] 1a141
1a12c:  b2 ...                  PRINT           "Don't forget to "ploor"! "
1a141:  b3 ...                  PRINT_RET       "You, I'm afraid, will have to
make other arran..."

He's gone."

Routine 1a178, 0 locals

1a179:  ca 1f 00 de 08 00 51    TEST_ATTR       "Woodland Cave",#08 [FALSE]
1a1cf
1a180:  b3 ...                  PRINT_RET       "You almost collapse with
exhaustion even forming the symbols of the spell. Completing it is out of the
question!"
1a1cf:  a0 3b 80 3f             JZ              G2b [TRUE] 1a210
1a1d3:  b3 ...                  PRINT_RET       "The spell misfires: it's far
too dangerous to direct at any specific person or item."
1a210:  2d ff 10                STORE           Gef,G00
1a213:  c1 95 ff ba b1 b2 ce    JE              Gef,#ba,#b1,#b2 [TRUE] 1a226
1a21a:  c1 95 ff b5 c4 ac c7    JE              Gef,#b5,#c4,#ac [TRUE] 1a226
1a221:  41 ff 74 00 87          JE              Gef,#74 [FALSE] 1a2ab
1a226:  e3 93 10 0f 00 de       PUT_PROP        G00,#0f,#00de
1a22c:  e3 1b 00 de 10 10       PUT_PROP        "Woodland Cave",#10,G00
1a232:  ce 2f 00 ce 10          INSERT_OBJ      "tunnel upward",G00
1a237:  cb 1f 00 de 08          SET_ATTR        "Woodland Cave",#08
1a23c:  b3 ...                  PRINT_RET       "It's the most exhausting spell
you've ever cast, leaving you almost too wrung out to notice the pleasant
rising tunnel now leading smoothly up from the walls."
1a2ab:  c1 95 ff 6e 71 59 c8    JE              Gef,#6e,#71,#59 [TRUE] 1a2b8
1a2b2:  c1 97 ff 5b 5e 57       JE              Gef,#5b,#5e [FALSE] 1a2cd
1a2b8:  b3 ...                  PRINT_RET       "The earth is too soft here."
1a2cd:  b3 ...                  PRINT_RET       "The stone bends and buckles,
but in the end resists. You must be too far underground here."

Routine 1a310, 0 locals

1a311:  c1 97 f9 18 57 49       JE              Ge9,#18,#57 [FALSE] 1a31e
1a317:  f9 17 2c b1 1c 0f       CALL_VN         b2c4 (#1c,#0f)
1a31d:  b0                      RTRUE           
1a31e:  b1                      RFALSE          

Routine 1a320, 0 locals

1a321:  a0 3b 52                JZ              G2b [FALSE] 1a334
1a324:  b2 ...                  PRINT           "You can see no "
1a331:  8c 00 22                JUMP            1a354
1a334:  61 3b 22 50             JE              G2b,G12 [FALSE] 1a346
1a338:  b2 ...                  PRINT           "You are not a "
1a343:  8c 00 10                JUMP            1a354
1a346:  da 2f 2f 1f 3b          CALL_2N         bc7c (G2b)
1a34b:  b2 ...                  PRINT           " is not a "
1a354:  e0 27 7e 93 fb 51 00    CALL_VS         1fa4c (Geb,#51) -> -(SP)
1a35b:  ad 00                   PRINT_PADDR     (SP)+
1a35d:  b3 ...                  PRINT_RET       " and therefore nothing
happens."

Routine 1a374, 0 locals

1a375:  b3 ...                  PRINT_RET       "Nothing obvious happens. You
may not be standing back far enough."

Routine 1a3a4, 0 locals

1a3a5:  b3 ...                  PRINT_RET       "Purple numbers 0.0 appear in
mid-air for a moment. This low score is perhaps understandable given the lack
of diving currently taking place."

Routine 1a40c, 1 local

1a40d:  c1 8f 01 43 88 44       JE              L00,#4388 [FALSE] 1a415
1a413:  9b ca                   RET             #ca
1a415:  c1 8f 01 31 cc 44       JE              L00,#31cc [FALSE] 1a41d
1a41b:  9b cc                   RET             #cc
1a41d:  e8 bf a2                PUSH            G92
1a420:  95 a2                   INC             G92
1a422:  cf 2f 3a cd 00 00       LOADW           #3acd,(SP)+ -> -(SP)
1a428:  b8                      RET_POPPED      

Routine 1a42c, 0 locals

1a42d:  f9 17 2c b1 1c 10       CALL_VN         b2c4 (#1c,#10)
1a433:  b0                      RTRUE           

Routine 1a434, 0 locals

1a435:  e1 07 3a db 00 09 01    STOREW          #3adb,#0009,#01
1a43c:  b2 ...                  PRINT           "
"My dear Ambassador," purrs a familiar voice. "You are welcome indeed."
"
1a477:  cd 4f 8c 00 e0          STORE           G7c,#00e0
1a47c:  b1                      RFALSE          

Routine 1a480, 0 locals

1a481:  b2 ...                  PRINT           "Amilia is flanked by impassive
guards, and is herself wearing a corset or jerkin of finely worked chain-mail,
the kind favoured by assassins and very expensive courtesans.

In her hand is an elegant spell book, bound in white kid leather (until this
evening you had presumed it a diary): her long fingers gracefully point at you
as she whispers something...

And you are transmuted into a wolfhound. Your vision goes black and white, your
hearing is suddenly acute. Of course, you can carry nothing. (It's an
Ambassador's life, being a dog.)

Weighing your options, you cock a leg over the nearest tree. Amilia giggles.
"Can you guess what I do to dogs, you vermin?"
"
1a65e:  a2 22 00 42             GET_CHILD       G12 -> -(SP) [FALSE] 1a662
1a662:  a0 00 cc                JZ              (SP)+ [TRUE] 1a66f
1a665:  a2 22 00 42             GET_CHILD       G12 -> -(SP) [FALSE] 1a669
1a669:  6e 00 10                INSERT_OBJ      (SP)+,G00
1a66c:  8c ff f1                JUMP            1a65e
1a66f:  e3 93 fb 1e 96 1c       PUT_PROP        Geb,#1e,S362
1a675:  a9 22                   REMOVE_OBJ      G12
1a677:  ce 2f 00 e1 10          INSERT_OBJ      "wolfhound",G00
1a67c:  f9 07 2d ce 00 e1 01    CALL_VN         b738 (#00e1,#01)
1a683:  b0                      RTRUE           

Routine 1a684, 0 locals

1a685:  41 f9 69 00 86          JE              Ge9,#69 [FALSE] 1a70e
1a68a:  b2 ...                  PRINT           "With enormous satisfaction you
sink your incisors into her leg. "Jilnix!", she curses, and the air is
momentarily full of insects. In the confusion, you manage to run away.
"
1a707:  da 0f 32 56 00 e2       CALL_2N         c958 (#00e2)
1a70d:  b0                      RTRUE           
1a70e:  b1                      RFALSE          

Routine 1a710, 0 locals

1a711:  4a fb 08 46             TEST_ATTR       Geb,#08 [FALSE] 1a719
1a715:  4c fb 08                CLEAR_ATTR      Geb,#08
1a718:  b0                      RTRUE           
1a719:  0d 23 01                STORE           G13,#01
1a71c:  b3 ...                  PRINT_RET       "
Amilia disposes of her other business, and scoops you up into her arms. It will
save a good deal of unpleasantness to skip straight to the outcome:"

Routine 1a788, 0 locals

1a789:  41 44 e1 c6             JE              G34,#e1 [TRUE] 1a791
1a78d:  8f 7e 17                CALL_1N         1f85c
1a790:  b0                      RTRUE           
1a791:  c1 95 f9 1c 20 21 d6    JE              Ge9,#1c,#20,#21 [TRUE] 1a7ac
1a798:  c1 95 f9 23 35 37 cf    JE              Ge9,#23,#35,#37 [TRUE] 1a7ac
1a79f:  c1 95 f9 3e 36 58 c8    JE              Ge9,#3e,#36,#58 [TRUE] 1a7ac
1a7a6:  c1 97 f9 6a 69 43       JE              Ge9,#6a,#69 [FALSE] 1a7ad
1a7ac:  b1                      RFALSE          
1a7ad:  41 f9 59 5f             JE              Ge9,#59 [FALSE] 1a7ce
1a7b1:  b3 ...                  PRINT_RET       "This is no time to let lying
dogs sleep."
1a7ce:  c1 95 f9 53 53 52 c6    JE              Ge9,#53,#53,#52 [TRUE] 1a7d9
1a7d5:  41 f9 54 48             JE              Ge9,#54 [FALSE] 1a7df
1a7d9:  da 1f 2c b1 6a          CALL_2N         b2c4 (#6a)
1a7de:  b0                      RTRUE           
1a7df:  b3 ...                  PRINT_RET       "As a wolfhound, you have no
such ability."

Routine 1a800, 0 locals

1a801:  41 f9 36 00 91          JE              Ge9,#36 [FALSE] 1a895
1a806:  b3 ...                  PRINT_RET       "Your ears prick up. A hundred
noises of the copse: badger, hedge-rat, glow worm: Amilia's guards, crashing
about deafeningly nearby: and, far away, other voices and perhaps a horse. But
which way?"
1a895:  41 f9 35 00 69          JE              Ge9,#35 [FALSE] 1a901
1a89a:  e3 93 fb 0b 00 e3       PUT_PROP        Geb,#0b,#00e3
1a8a0:  b3 ...                  PRINT_RET       "Of course, your sense of smell
is by far your most acute, and with it you feel a whole landscape. To northeast
a brook runs to the wall."
1a901:  b1                      RFALSE          

Routine 1a904, 0 locals

1a905:  41 22 14 00 3d          JE              G12,#14 [FALSE] 1a945
1a90a:  b3 ...                  PRINT_RET       "Perhaps fortunately, you can't
fit under the culvert's rim at your present size."
1a945:  9b e2                   RET             #e2

Routine 1a948, 0 locals

1a949:  41 f9 3e 00 e6          JE              Ge9,#3e [FALSE] 1aa32
1a94e:  41 22 e1 d3             JE              G12,#e1 [TRUE] 1a963
1a952:  b3 ...                  PRINT_RET       "It tastes only of rue."
1a963:  0d 90 00                STORE           G80,#00
1a966:  b2 ...                  PRINT           "The water is cold and magical,
effervescent. You feel yourself changing again, just as you did at the russet
pool. Your limbs stretch into arms and legs, your ears tuck back within human
hair: yes, a man, but just a man. No magic left. It seems a fair bargain,
almost.
"
1aa27:  2e 14 10                INSERT_OBJ      "(self object)",G00
1aa2a:  99 e1                   REMOVE_OBJ      "wolfhound"
1aa2c:  da 1f 2d ce 14          CALL_2N         b738 (#14)
1aa31:  b0                      RTRUE           
1aa32:  41 f9 21 59             JE              Ge9,#21 [FALSE] 1aa4d
1aa36:  41 22 14 4d             JE              G12,#14 [FALSE] 1aa45
1aa3a:  b3 ...                  PRINT_RET       "A dull brook."
1aa45:  11 e1 23 00             GET_PROP        "wolfhound",#23 -> -(SP)
1aa49:  ad 00                   PRINT_PADDR     (SP)+
1aa4b:  bb                      NEW_LINE        
1aa4c:  b0                      RTRUE           
1aa4d:  b1                      RFALSE          

Routine 1aa50, 0 locals

1aa51:  4e fb e5                INSERT_OBJ      Geb,"Watling Street, Again"
1aa54:  41 10 e5 00 31          JE              G00,#e5 [FALSE] 1aa88
1aa59:  b3 ...                  PRINT_RET       "Speedily but silently, agents
of the Duchy arrive to rescue you."
1aa88:  b1                      RFALSE          

Routine 1aa8c, 0 locals

1aa8d:  41 f9 69 00 35          JE              Ge9,#69 [FALSE] 1aac5
1aa92:  b3 ...                  PRINT_RET       "The agents kick you savagely,
and you yelp as if this were unprovoked."
1aac5:  b1                      RFALSE          

Routine 1aac8, 2 locals

1aac9:  41 22 14 04 2e          JE              G12,#14 [FALSE] 1aefa
1aace:  b2 ...                  PRINT           "
"Well met, Captain," you call out casually, giving no hint of your recent
canine persona. They saddle up to smuggle you away from the Empire forever: for
you'll never be persona grata here again.

"
1ab5f:  e0 17 7e 93 c7 4f 00    CALL_VS         1fa4c (#c7,#4f) -> -(SP)
1ab66:  41 00 05 c8             JE              (SP)+,#05 [TRUE] 1ab70
1ab6a:  e8 7f 00                PUSH            #00
1ab6d:  8c 00 05                JUMP            1ab73
1ab70:  e8 7f 01                PUSH            #01
1ab73:  e9 7f 01                PULL            L00
1ab76:  06 b8 b5 c8             JIN             "chalk formation","Wheel Cave
(West)" [TRUE] 1ab80
1ab7a:  e8 7f 00                PUSH            #00
1ab7d:  8c 00 05                JUMP            1ab83
1ab80:  e8 7f 01                PUSH            #01
1ab83:  e9 7f 02                PULL            L01
1ab86:  a0 01 81 5c             JZ              L00 [TRUE] 1ace4
1ab8a:  a0 02 81 58             JZ              L01 [TRUE] 1ace4
1ab8e:  0d 23 02                STORE           G13,#02
1ab91:  b3 ...                  PRINT_RET       "But the Duchy will rise now.
Tottering on the foundations laid by the Old Underground Empire, the bankrupt
remains which are the Northland Empire of today will crumble at last.
Unchecked, the Enlightenment will spread across the continent, and nothing will
be as it was.

Looking back from your horse, you only know that you will miss Borealis, its
tradition and undoubted glory: ever the Ambassador's curse is to love the land
he must one day betray and abandon. Still and all:"
1ace4:  0d 23 03                STORE           G13,#03
1ace7:  a0 01 80 bd             JZ              L00 [TRUE] 1ada6
1aceb:  b3 ...                  PRINT_RET       "Perhaps the Duchy will have an
even chance of taking on Amilia's revitalised Empire, with the assistance of
Clotspinner. You wouldn't bet on it: Borealis still has the meteor and the
beam. But then, in diplomacy, so many missions end in a fifty-fifty impasse."
1ada6:  a0 02 80 cd             JZ              L01 [TRUE] 1ae75
1adaa:  b3 ...                  PRINT_RET       "Perhaps the Duchy will
flourish, now that the meteor is denied to Amilia's Empire. Still, it can only
be a matter of time before Clotspinner succeeds in mastering the "ruther"
spell, and then where are you? But then, that's diplomacy: so many missions end
in a fifty-fifty impasse."
1ae75:  b3 ...                  PRINT_RET       "A dismal wreck of a mission,
with only your life and reports to show for it. Sometimes the odds are stacked
against the diplomat: but it never feels good to cut the cards, and draw a
three."
1aefa:  b1                      RFALSE          

Routine 1aefc, 3 locals

1aefd:  41 02 01 00 27          JE              L01,#01 [FALSE] 1af27
1af02:  b2 ...                  PRINT           "(Press H for more, or SPACE to
return.)

"
1af27:  ad 01                   PRINT_PADDR     L00
1af29:  bb                      NEW_LINE        
1af2a:  bb                      NEW_LINE        
1af2b:  f6 57 01 00 00 03       READ_CHAR       #01,#00,0 -> L02
1af31:  c1 97 03 48 68 c0       JE              L02,#48,#68 [TRUE] RFALSE
1af37:  b0                      RTRUE           

Routine 1af38, 1 local

1af39:  b2 ...                  PRINT           "

"
1af3e:  0d 01 00                STORE           L00,#00
1af41:  42 01 0c 00 21          JL              L00,#0c [FALSE] 1af65
1af46:  cf 2f 3a db 01 00       LOADW           #3adb,L00 -> -(SP)
1af4c:  a0 00 d3                JZ              (SP)+ [TRUE] 1af60
1af4f:  b2 ...                  PRINT           "     "
1af54:  54 01 01 32             ADD             L00,#01 -> G22
1af58:  8f 7c ae                CALL_1N         1f2b8
1af5b:  ad 34                   PRINT_PADDR     G24
1af5d:  b2 ...                  PRINT           "
"
1af60:  95 01                   INC             L00
1af62:  8c ff de                JUMP            1af41
1af65:  b0                      RTRUE           

Routine 1af68, 3 locals

1af69:  0d 02 00                STORE           L01,#00
1af6c:  42 02 0c 5b             JL              L01,#0c [FALSE] 1af89
1af70:  cf 2f 3a db 02 00       LOADW           #3adb,L01 -> -(SP)
1af76:  a0 00 c4                JZ              (SP)+ [TRUE] 1af7b
1af79:  95 03                   INC             L02
1af7b:  61 01 03 47             JE              L00,L02 [FALSE] 1af84
1af7f:  54 02 01 00             ADD             L01,#01 -> -(SP)
1af83:  b8                      RET_POPPED      
1af84:  95 02                   INC             L01
1af86:  8c ff e5                JUMP            1af6c
1af89:  b0                      RTRUE           

Routine 1af8c, 0 locals

1af8d:  f9 00 2e 3e 6b ce 6b e6 6b f3 
                               CALL_VN         b8f8 (#6bce,#6be6,#6bf3)
1af97:  b0                      RTRUE           

Routine 1af98, 2 locals

1af99:  a0 32 00 1e             JZ              G22 [FALSE] 1afb9
1af9d:  8f 7c ae                CALL_1N         1f2b8
1afa0:  0d 02 00                STORE           L01,#00
1afa3:  42 02 0c 52             JL              L01,#0c [FALSE] 1afb7
1afa7:  cf 2f 3a db 02 00       LOADW           #3adb,L01 -> -(SP)
1afad:  a0 00 c4                JZ              (SP)+ [TRUE] 1afb2
1afb0:  95 01                   INC             L00
1afb2:  95 02                   INC             L01
1afb4:  8c ff ee                JUMP            1afa3
1afb7:  ab 01                   RET             L00
1afb9:  2d 01 32                STORE           L00,G22
1afbc:  d9 2f 6b da 01 32       CALL_2S         1af68 (L00) -> G22
1afc2:  88 7c ae 02             CALL_1S         1f2b8 -> L01
1afc6:  2d 32 01                STORE           G22,L00
1afc9:  ab 02                   RET             L01

Routine 1afcc, 2 locals

1afcd:  a0 32 47                JZ              G22 [FALSE] 1afd5
1afd0:  88 7c 8f 00             CALL_1S         1f23c -> -(SP)
1afd4:  b8                      RET_POPPED      
1afd5:  2d 01 32                STORE           L00,G22
1afd8:  d9 2f 6b da 01 32       CALL_2S         1af68 (L00) -> G22
1afde:  88 7c 8f 02             CALL_1S         1f23c -> L01
1afe2:  2d 32 01                STORE           G22,L00
1afe5:  ab 02                   RET             L01

Routine 1afe8, 0 locals

1afe9:  41 32 01 03 1d          JE              G22,#01 [FALSE] 1b309
1afee:  b3 ...                  PRINT_RET       "A text adventure game is a
cross between a story and a puzzle. You must guide the central character
through the story's world and events by giving instructions like:
 
   go northeast 
   look 
   take the sherbet glass 
   put the guide book on the table
 
The game replies by telling you what happens as a result.
 
Basic commands consist either of a verb alone, or a verb plus one or more
nouns. For instance, to see where you are type "look". Some verbs can be
elaborate: for example, you can look at, inside or under something. Some
commands (like "score", which tells you your current score) do not count as
being actions in the story, so they take up no game time; nor does any command
you type which the game doesn't understand.
 
You are continually faced with obstacles to what you want to do, and this is
where the puzzle element comes in. You must use your surroundings, notice clues
left here and there, reason about what is going on. In a good adventure game,
the resourceful player who wins through will be able to look back on a logical
pattern, all mysteries understood, like a completed crossword as well as a
novel."
1b309:  41 32 02 02 6b          JE              G22,#02 [FALSE] 1b577
1b30e:  b3 ...                  PRINT_RET       "Adventure games have a
landscape subdivided into individual places, conventionally called "rooms"
(though some are out of doors). It's a good idea to make a map of this
landscape as you go, marking things that you find and which ways you've
explored.
 
It's assumed that you have a compass or an excellent sense of direction at all
times and can, for instance,
 
    go west
 
(or you may type "west" or even just "w" for short), though you may be blocked
by something like a brick wall.
 
In addition to the eight compass directions (note that words like "southeast"
are never hyphenated here), you can sometimes go "in", "out", "up" or "down".
Besides that, you might be able to:
 
    climb ladder 
    enter the tall wardrobe
 
You needn't always travel on foot: sometimes you'll find yourself in a moving
vehicle (as you will at the start of this game)."
1b577:  41 32 03 06 cb          JE              G22,#03 [FALSE] 1bc45
1b57c:  b3 ...                  PRINT_RET       "Many of the things you find
are portable, as they would be in real life. To pick something up, "take thing"
and to drop it again, "drop thing". To remind yourself of what you have, type
"take inventory" or just "inventory" (or, even, just "i" for short - this is a
command you'll be using often).
 
Other things that you find aren't portable, and are more or less items of
scenery. For instance, you might be told
 
    That's not something you need to refer to in the course of this game.
 
This is one of the conventions of the genre, and means that you can simply stop
trying to do things with the item in question.
 
Most things you can refer to understand many different names, but English is a
large language so try a few alternatives before giving up.
 
Some commands can act on more than one thing. You can "drop all", which will
drop everything (except what you're wearing), for instance. Or if you found a
packing case with a number of things in, you could type such things as:
 
    remove everything but the yellow disc 
    get all the crowns except the jagged one
 
(Containers may also be emptied or emptied into each other.)  If you are not
explicit enough, sometimes the game can infer what you mean, but at other times
it will ask for further details. It might have replied to the first line above
by saying
 
    (from the change drawer)
 
so that you know what has been assumed on your behalf. If there had been two
yellow discs you might reasonably have meant, it would reply with something
like
 
    Which do you mean, the small yellow disc or the Yellow Industries floppy
disc?
 
You may either say which, or give up and do something else instead. If you
don't mind which key, you can always say something like:
 
    drop a disc into the slot
 
and the game will choose one for you, telling you what it was.
 
The game sometimes assumes commands which you implicitly make, but always tells
you what they are in brackets. For instance:
 
    >look up Shostakovich in encyclopaedia 
    (first taking the Encyclopaedia of Composers) 
    (putting the bassoon in the rucksack to make room) 
    "Dmitri Shostakovich (1906-1975) had a pet hamster called Colin...
 
"it" refers to the last thing you referred to, "him" and "her" to people spoken
of (type "pronouns" to find out what they mean at any given moment).
 
Of course, many other commands exist for manipulating things in more
specialised circumstances."
1bc45:  41 32 04 01 4f          JE              G22,#04 [FALSE] 1bd97
1bc4a:  b3 ...                  PRINT_RET       "From time to time, you will
wish to speak to other people. Text in quotation marks is not allowed, and
instead there's a standard way to phrase these commands:
 
    dealer, stick 
    grocer, give me a cabbage 
    ask the grocer for the cabbage 
    ask professor ericsson about black holes
 
though the waiter may have better things to do, and the professor might be
quite mad. Other people will sometimes help you in the course of play, but
actions speak louder than words."
1bd97:  41 32 05 02 4f          JE              G22,#05 [FALSE] 1bfe9
1bd9c:  b3 ...                  PRINT_RET       "You can "save" the current
state of the game at any time; this will file it away (usually on a disc on
your machine, so the game may ask you for a filename to call it: beware of
giving two different saved positions the same name, or the earlier one will be
lost).
 
The command "restore" will load in a saved game of your choice, after which
play restores from the moment before you typed "save". You never lose points
for using saved games.
 
In desperation, you can always "restart" the game, or give in and "quit".
 
To see how you're doing, ask for your "score", which also ranks you. 
From time to time you will be told that your score has changed: this can be
turned off with "notify off".
 
As an aide-memoire the command "objects" tells you where you left things you
once had, and "places" says where you have been."
1bfe9:  41 32 06 02 37          JE              G22,#06 [FALSE] 1c223
1bfee:  b3 ...                  PRINT_RET       "Some jaundiced players tire of
long descriptions of places, and they can type "short" (or "superbrief") to
make the game only give short ones. Amnesiac players, on the other hand, may
like to use "long" (or "verbose") to give only long ones. Either kind can go
back to the usual state of affairs with "normal" (or "brief").
 
You can give several commands in a row by use of "then" (or full stops, commas
or "and" in some contexts): so, for instance,
 
    e, s, get fish then inventory 
    e.e.open door.s
 
Simple typing mistakes can sometimes be corrected just by typing "oops"
followed by the word you had intended to type, so for instance:
 
    drop squod in bucket 
    oops squid
 
If you want to check that your copy of the game is undamaged, you can ask to
"verify" it."
1c223:  41 32 07 02 a3          JE              G22,#07 [FALSE] 1c4c9
1c228:  b3 ...                  PRINT_RET       "Apart from the usual verbs
(take, drop, examine, inventory, enter, push and so on) and many rarer ones,
the game provides commands including:

 again - repeat the last command
 score, fullscore - to see how you're doing
 save, restore - to save the game or recover it
 quit, restart - to give up (and start again)
 verify - check that the game program is undamaged
 inventory wide, inventory tall - change the style
 long, normal, short - change room description style
 script on, script off - start, stop printing a transcript
 notify on, notify off - score notification on or off
 pronouns - say what words like "it" currently mean
 places - list the places you've been to
 objects - where did you leave those things?
 
There are also a few abbreviations, including: "n", "ne" and so on for
directions, "z" for wait (short for "zzz" - sorry), "q" for quit, "i" for
inventory, "x" for examine, "g" for again, "l" for look."
1c4c9:  41 32 08 01 bf          JE              G22,#08 [FALSE] 1c68b
1c4ce:  b3 ...                  PRINT_RET       "For advice on matters of
protocol and correct behaviour in the most trying circumstances, I wish to
express my gratitude to:
 
Gareth Rees and Richard Tucker; Dylan O'Donnell; Suzanne Skinner; Mr and Mrs
Aaron Mynes; Ronald A. Melancon; Paul Shrimpton; Tim Deegan; Nicola Salmoria;
Daniel Yu; Patrick Wigfull.
 
Thanks also to Graham Nelson, who coded several of the more complicated objects
for me; and to Gareth Rees, because large areas of this game were written using
his "write the transcript first" technique.
 
A.M.H., Wool Croft, Eigg; 15th December, 1996."
1c68b:  b0                      RTRUE           

Routine 1c68c, 0 locals

1c68d:  f9 00 2e 3e 96 c9 71 a6 6b fa 
                               CALL_VN         b8f8 (S376,#71a6,#6bfa)
1c697:  b0                      RTRUE           

Routine 1c698, 0 locals

1c699:  a0 32 4c                JZ              G22 [FALSE] 1c6a6
1c69c:  cd 4f 34 96 fb          STORE           G24,S377
1c6a1:  0d 33 11                STORE           G23,#11
1c6a4:  9b 08                   RET             #08
1c6a6:  41 32 01 4a             JE              G22,#01 [FALSE] 1c6b2
1c6aa:  cd 4f 34 97 02          STORE           G24,S378
1c6af:  0d 33 0d                STORE           G23,#0d
1c6b2:  41 32 02 4a             JE              G22,#02 [FALSE] 1c6be
1c6b6:  cd 4f 34 97 07          STORE           G24,S379
1c6bb:  0d 33 0d                STORE           G23,#0d
1c6be:  41 32 03 4a             JE              G22,#03 [FALSE] 1c6ca
1c6c2:  cd 4f 34 97 0c          STORE           G24,S380
1c6c7:  0d 33 09                STORE           G23,#09
1c6ca:  41 32 04 4a             JE              G22,#04 [FALSE] 1c6d6
1c6ce:  cd 4f 34 97 10          STORE           G24,S381
1c6d3:  0d 33 0b                STORE           G23,#0b
1c6d6:  41 32 05 4a             JE              G22,#05 [FALSE] 1c6e2
1c6da:  cd 4f 34 97 14          STORE           G24,S382
1c6df:  0d 33 10                STORE           G23,#10
1c6e2:  41 32 06 4a             JE              G22,#06 [FALSE] 1c6ee
1c6e6:  cd 4f 34 97 1a          STORE           G24,S383
1c6eb:  0d 33 10                STORE           G23,#10
1c6ee:  41 32 07 4a             JE              G22,#07 [FALSE] 1c6fa
1c6f2:  cd 4f 34 97 20          STORE           G24,S384
1c6f7:  0d 33 0e                STORE           G23,#0e
1c6fa:  41 32 08 4a             JE              G22,#08 [FALSE] 1c706
1c6fe:  cd 4f 34 97 25          STORE           G24,S385
1c703:  0d 33 14                STORE           G23,#14
1c706:  b0                      RTRUE           

Routine 1c708, 0 locals

1c709:  41 32 01 02 81          JE              G22,#01 [FALSE] 1c98d
1c70e:  b3 ...                  PRINT_RET       "The Northlands Empire ranges
from the barren ice-mountains in the far north, across the great continental
plains as far as the port of Parchin, and presently to the Collioure delta in
the mid-south, though territorial disputes among the provinces (all more or
less satellite states) have complicated the scene. The capital city and seat of
government is the city of Borealis. Principal industry is agricultural and
backward by modern standards.
 
The Empire is of some antiquity, though its attempt to claim that an unbroken
chain of Emperors stretches back thousands of years can be safely discounted.
It is now presided over chiefly by a landed aristocracy. Empress Lavinia I
(whose reign has been uneventful thus far) is presumably a figurehead, as she
is presently eleven years old. Altogether it is difficult to see how decisions
are made about the direction of the state, or indeed if they are being made at
all."
1c98d:  41 32 02 02 2b          JE              G22,#02 [FALSE] 1cbbb
1c992:  b3 ...                  PRINT_RET       "Capital and seat of government
of the Northlands Empire. Population approx 40,000 (and kept deliberately low,
as it is restricted to subjects who can claim noble descent). Placed at the
fork of the Boreal river, the present City has been built on the ruins of at
least three previous settlements, at least two of which were themselves
capitals of earlier empires. Most celebrated is the Old Underground Empire, of
which little is definitely known, though the Empire of today affects much of
the old language and custom - there is a Forum, two subjects are annually
elected Grue (an honorific title), and so forth.
 
The Imperial Palace and botanical gardens are most splendid and, though closed
to the populace at large, are open to the Court (including accredited
Ambassadors)."
1cbbb:  41 32 03 03 0d          JE              G22,#03 [FALSE] 1cecb
1cbc0:  b3 ...                  PRINT_RET       "Speculation concerning the Old
Underground Empire is rife and idle. It is certainly now old, may have been
partly underground and had jurisdiction over the inner Northlands at one time.
Certain unusually straight roadways and canals, together with curious names,
suggest survivals from the OUE: Watling Street, for instance, an important
thoroughfare to this day.
 
Many tales are told of the OUE. It is said that the first Emperor was raised by
fox-cubs in a wood, that every village had a magician as well as a blacksmith,
that the streets were paved with marble. More interestingly (to the infant
science of Astronomy, now being practiced in the Duchy), the OUE kept unusually
good records of portents in the sky. This may be related to the OUE's
foundation myth: that one day a Great Fiery Meteor streaked across the sky,
bluish with a long tail of orange flame: and just as it was coming to earth, it
split into two. The tail and its afterglow left a forked line across the sky
uncannily like the nearby river fork: and so it was considered that the Gods
had chosen a site for the city of Borealis."
1cecb:  41 32 04 01 3d          JE              G22,#04 [FALSE] 1d00b
1ced0:  b3 ...                  PRINT_RET       "The Duchy is a modest
city-state whose mercantile expansion has spread prosperity across the southern
seaboard. Governed by an assembly elected by its resident traders, the Duchy
seeks to establish free trade and adheres to a strict policy of neutrality when
its own borders are unchallenged. Plentiful credit and religious freedom have
attracted craftsmen from across the continent, and trade goods from the Duchy
are a by-word for quality and excellence."
1d00b:  41 32 05 02 85          JE              G22,#05 [FALSE] 1d293
1d010:  b3 ...                  PRINT_RET       "The most obvious feature of a
political map of the continent is this: that the Northlands Empire eats up
about four-fifths of it. But this is deceptive, as much of the wealth and
population is coastal. A few city-states (such as the Duchy) and breakaway
Imperial provinces now present a serious economic challenge to the Empire,
which seems in any case incapable of controlling even its own immediate
satellite states, as a spate of territorial clashes has shown.
 
Why do the Empire and the Duchy not get along? Basically, the Empire is
hidebound and staunchly traditional: it denies the rights of man, and it looks
down on its neighbours as Lilliputian, no more than overgrown towns. Whereas
the Duchy distrusts authority almost on principle and has no patience with the
backwardness of the Empire and its refusal to come to terms with advances in
manufacturing and science.
 
What they need is a really good diplomat!"
1d293:  b0                      RTRUE           

Routine 1d294, 0 locals

1d295:  f9 00 2e 3e 97 2d 74 a8 71 c2 
                               CALL_VN         b8f8 (S386,#74a8,#71c2)
1d29f:  b0                      RTRUE           

Routine 1d2a0, 0 locals

1d2a1:  a0 32 4c                JZ              G22 [FALSE] 1d2ae
1d2a4:  cd 4f 34 97 46          STORE           G24,S387
1d2a9:  0d 33 11                STORE           G23,#11
1d2ac:  9b 05                   RET             #05
1d2ae:  41 32 01 4a             JE              G22,#01 [FALSE] 1d2ba
1d2b2:  cd 4f 34 97 4d          STORE           G24,S388
1d2b7:  0d 33 0a                STORE           G23,#0a
1d2ba:  41 32 02 4a             JE              G22,#02 [FALSE] 1d2c6
1d2be:  cd 4f 34 97 51          STORE           G24,S389
1d2c3:  0d 33 0a                STORE           G23,#0a
1d2c6:  41 32 03 4a             JE              G22,#03 [FALSE] 1d2d2
1d2ca:  cd 4f 34 97 55          STORE           G24,S390
1d2cf:  0d 33 0d                STORE           G23,#0d
1d2d2:  41 32 04 4a             JE              G22,#04 [FALSE] 1d2de
1d2d6:  cd 4f 34 97 5a          STORE           G24,S391
1d2db:  0d 33 04                STORE           G23,#04
1d2de:  41 32 05 4a             JE              G22,#05 [FALSE] 1d2ea
1d2e2:  cd 4f 34 97 5c          STORE           G24,S392
1d2e7:  0d 33 0a                STORE           G23,#0a
1d2ea:  b0                      RTRUE           

Routine 1d2ec, 0 locals

1d2ed:  41 32 01 00 45          JE              G22,#01 [FALSE] 1d335
1d2f2:  e0 07 6b bf 97 60 01 00 CALL_VS         1aefc (S393,#01) -> -(SP)
1d2fa:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d300
1d2fe:  9b 02                   RET             #02
1d300:  d9 0f 6b bf 97 6b 00    CALL_2S         1aefc (S394) -> -(SP)
1d307:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d30d
1d30b:  9b 02                   RET             #02
1d30d:  d9 0f 6b bf 97 73 00    CALL_2S         1aefc (S395) -> -(SP)
1d314:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d31a
1d318:  9b 02                   RET             #02
1d31a:  b3 ...                  PRINT_RET       "Suppose one of them were to
run wild?"
1d335:  41 32 02 00 3b          JE              G22,#02 [FALSE] 1d373
1d33a:  e0 07 6b bf 97 7a 01 00 CALL_VS         1aefc (S396,#01) -> -(SP)
1d342:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d348
1d346:  9b 02                   RET             #02
1d348:  d9 0f 6b bf 97 7d 00    CALL_2S         1aefc (S397) -> -(SP)
1d34f:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d355
1d353:  9b 02                   RET             #02
1d355:  d9 0f 6b bf 97 85 00    CALL_2S         1aefc (S398) -> -(SP)
1d35c:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d362
1d360:  9b 02                   RET             #02
1d362:  b3 ...                  PRINT_RET       "Through the telescope."
1d373:  41 32 03 00 31          JE              G22,#03 [FALSE] 1d3a7
1d378:  e0 07 6b bf 97 8c 01 00 CALL_VS         1aefc (S399,#01) -> -(SP)
1d380:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d386
1d384:  9b 02                   RET             #02
1d386:  b3 ...                  PRINT_RET       "Indeed, she'll give you the
book if you ask."
1d3a7:  41 32 04 00 49          JE              G22,#04 [FALSE] 1d3f3
1d3ac:  e0 07 6b bf 97 94 01 00 CALL_VS         1aefc (S400,#01) -> -(SP)
1d3b4:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d3ba
1d3b8:  9b 02                   RET             #02
1d3ba:  d9 0f 6b bf 97 97 00    CALL_2S         1aefc (S401) -> -(SP)
1d3c1:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d3c7
1d3c5:  9b 02                   RET             #02
1d3c7:  d9 0f 6b bf 97 a0 00    CALL_2S         1aefc (S402) -> -(SP)
1d3ce:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d3d4
1d3d2:  9b 02                   RET             #02
1d3d4:  b3 ...                  PRINT_RET       "Try to attract the bird down
from the tree."
1d3f3:  41 32 05 00 7c          JE              G22,#05 [FALSE] 1d472
1d3f8:  e0 07 6b bf 97 a9 01 00 CALL_VS         1aefc (S403,#01) -> -(SP)
1d400:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d406
1d404:  9b 02                   RET             #02
1d406:  d9 0f 6b bf 97 b0 00    CALL_2S         1aefc (S404) -> -(SP)
1d40d:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d413
1d411:  9b 02                   RET             #02
1d413:  b3 ...                  PRINT_RET       "It doesn't really matter for
now, as it will be quite obvious what is strange about the culvert when you
return on foot (much later)."
1d472:  41 32 06 00 55          JE              G22,#06 [FALSE] 1d4ca
1d477:  e0 07 6b bf 97 b6 01 00 CALL_VS         1aefc (S405,#01) -> -(SP)
1d47f:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d485
1d483:  9b 02                   RET             #02
1d485:  d9 0f 6b bf 97 be 00    CALL_2S         1aefc (S406) -> -(SP)
1d48c:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d492
1d490:  9b 02                   RET             #02
1d492:  d9 0f 6b bf 97 ca 00    CALL_2S         1aefc (S407) -> -(SP)
1d499:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d49f
1d49d:  9b 02                   RET             #02
1d49f:  d9 0f 6b bf 97 d3 00    CALL_2S         1aefc (S408) -> -(SP)
1d4a6:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d4ac
1d4aa:  9b 02                   RET             #02
1d4ac:  d9 0f 6b bf 97 dc 00    CALL_2S         1aefc (S409) -> -(SP)
1d4b3:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d4b9
1d4b7:  9b 02                   RET             #02
1d4b9:  b3 ...                  PRINT_RET       "Chirrup and then coo."
1d4ca:  41 32 07 00 3b          JE              G22,#07 [FALSE] 1d508
1d4cf:  e0 07 6b bf 97 e2 01 00 CALL_VS         1aefc (S410,#01) -> -(SP)
1d4d7:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d4dd
1d4db:  9b 02                   RET             #02
1d4dd:  d9 0f 6b bf 97 e9 00    CALL_2S         1aefc (S411) -> -(SP)
1d4e4:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d4ea
1d4e8:  9b 02                   RET             #02
1d4ea:  d9 0f 6b bf 97 f0 00    CALL_2S         1aefc (S412) -> -(SP)
1d4f1:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d4f7
1d4f5:  9b 02                   RET             #02
1d4f7:  b3 ...                  PRINT_RET       "Try pulling its ears."
1d508:  41 32 08 00 57          JE              G22,#08 [FALSE] 1d562
1d50d:  e0 07 6b bf 97 f9 01 00 CALL_VS         1aefc (S413,#01) -> -(SP)
1d515:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d51b
1d519:  9b 02                   RET             #02
1d51b:  d9 0f 6b bf 98 03 00    CALL_2S         1aefc (S414) -> -(SP)
1d522:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d528
1d526:  9b 02                   RET             #02
1d528:  d9 0f 6b bf 98 0b 00    CALL_2S         1aefc (S415) -> -(SP)
1d52f:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d535
1d533:  9b 02                   RET             #02
1d535:  b3 ...                  PRINT_RET       "See how the elephant reacts to
ice-cold sherbet thrown at him."
1d562:  b0                      RTRUE           

Routine 1d564, 0 locals

1d565:  f9 00 2e 3e 98 12 75 5c 74 bb 
                               CALL_VN         b8f8 (S416,#755c,#74bb)
1d56f:  b0                      RTRUE           

Routine 1d570, 0 locals

1d571:  a0 32 4c                JZ              G22 [FALSE] 1d57e
1d574:  cd 4f 34 98 48          STORE           G24,S417
1d579:  0d 33 0e                STORE           G23,#0e
1d57c:  9b 08                   RET             #08
1d57e:  41 32 01 4a             JE              G22,#01 [FALSE] 1d58a
1d582:  cd 4f 34 98 4e          STORE           G24,S418
1d587:  0d 33 0f                STORE           G23,#0f
1d58a:  41 32 02 4a             JE              G22,#02 [FALSE] 1d596
1d58e:  cd 4f 34 98 54          STORE           G24,S419
1d593:  0d 33 0c                STORE           G23,#0c
1d596:  41 32 03 4a             JE              G22,#03 [FALSE] 1d5a2
1d59a:  cd 4f 34 98 59          STORE           G24,S420
1d59f:  0d 33 12                STORE           G23,#12
1d5a2:  41 32 04 4a             JE              G22,#04 [FALSE] 1d5ae
1d5a6:  cd 4f 34 98 60          STORE           G24,S421
1d5ab:  0d 33 0a                STORE           G23,#0a
1d5ae:  41 32 05 4a             JE              G22,#05 [FALSE] 1d5ba
1d5b2:  cd 4f 34 98 64          STORE           G24,S422
1d5b7:  0d 33 10                STORE           G23,#10
1d5ba:  41 32 06 4a             JE              G22,#06 [FALSE] 1d5c6
1d5be:  cd 4f 34 98 6a          STORE           G24,S423
1d5c3:  0d 33 0e                STORE           G23,#0e
1d5c6:  41 32 07 4a             JE              G22,#07 [FALSE] 1d5d2
1d5ca:  cd 4f 34 98 70          STORE           G24,S424
1d5cf:  0d 33 11                STORE           G23,#11
1d5d2:  41 32 08 4a             JE              G22,#08 [FALSE] 1d5de
1d5d6:  cd 4f 34 98 77          STORE           G24,S425
1d5db:  0d 33 0f                STORE           G23,#0f
1d5de:  b0                      RTRUE           

Routine 1d5e0, 0 locals

1d5e1:  41 32 01 00 39          JE              G22,#01 [FALSE] 1d61d
1d5e6:  e0 07 6b bf 98 7d 01 00 CALL_VS         1aefc (S426,#01) -> -(SP)
1d5ee:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d5f4
1d5f2:  9b 02                   RET             #02
1d5f4:  d9 0f 6b bf 98 83 00    CALL_2S         1aefc (S427) -> -(SP)
1d5fb:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d601
1d5ff:  9b 02                   RET             #02
1d601:  d9 0f 6b bf 98 8d 00    CALL_2S         1aefc (S428) -> -(SP)
1d608:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d60e
1d60c:  9b 02                   RET             #02
1d60e:  b3 ...                  PRINT_RET       "Try going to bed."
1d61d:  41 32 02 00 25          JE              G22,#02 [FALSE] 1d645
1d622:  e0 07 6b bf 98 94 01 00 CALL_VS         1aefc (S429,#01) -> -(SP)
1d62a:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d630
1d62e:  9b 02                   RET             #02
1d630:  b3 ...                  PRINT_RET       "For sleeping in, of course."
1d645:  41 32 03 00 64          JE              G22,#03 [FALSE] 1d6ac
1d64a:  e0 07 6b bf 98 99 01 00 CALL_VS         1aefc (S430,#01) -> -(SP)
1d652:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d658
1d656:  9b 02                   RET             #02
1d658:  d9 0f 6b bf 98 a6 00    CALL_2S         1aefc (S431) -> -(SP)
1d65f:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d665
1d663:  9b 02                   RET             #02
1d665:  d9 0f 6b bf 98 b0 00    CALL_2S         1aefc (S432) -> -(SP)
1d66c:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d672
1d670:  9b 02                   RET             #02
1d672:  d9 0f 6b bf 98 ba 00    CALL_2S         1aefc (S433) -> -(SP)
1d679:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d67f
1d67d:  9b 02                   RET             #02
1d67f:  b3 ...                  PRINT_RET       "And the painting is of the
north shore of the Zork III lake."
1d6ac:  41 32 04 00 3e          JE              G22,#04 [FALSE] 1d6ed
1d6b1:  e0 07 6b bf 98 c5 01 00 CALL_VS         1aefc (S434,#01) -> -(SP)
1d6b9:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d6bf
1d6bd:  9b 02                   RET             #02
1d6bf:  d9 0f 6b bf 98 cb 00    CALL_2S         1aefc (S435) -> -(SP)
1d6c6:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d6cc
1d6ca:  9b 02                   RET             #02
1d6cc:  b3 ...                  PRINT_RET       "The telescope's in your
Ambassador's trunk."
1d6ed:  41 32 05 00 6c          JE              G22,#05 [FALSE] 1d75c
1d6f2:  e0 07 6b bf 98 d5 01 00 CALL_VS         1aefc (S436,#01) -> -(SP)
1d6fa:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d700
1d6fe:  9b 02                   RET             #02
1d700:  d9 0f 6b bf 98 db 00    CALL_2S         1aefc (S437) -> -(SP)
1d707:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d70d
1d70b:  9b 02                   RET             #02
1d70d:  d9 0f 6b bf 98 e3 00    CALL_2S         1aefc (S438) -> -(SP)
1d714:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d71a
1d718:  9b 02                   RET             #02
1d71a:  d9 0f 6b bf 98 ef 00    CALL_2S         1aefc (S439) -> -(SP)
1d721:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d727
1d725:  9b 02                   RET             #02
1d727:  d9 0f 6b bf 98 fc 00    CALL_2S         1aefc (S440) -> -(SP)
1d72e:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d734
1d732:  9b 02                   RET             #02
1d734:  d9 0f 6b bf 99 05 00    CALL_2S         1aefc (S441) -> -(SP)
1d73b:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d741
1d73f:  9b 02                   RET             #02
1d741:  b3 ...                  PRINT_RET       "The rope in your trunk may
help you."
1d75c:  41 32 06 00 4f          JE              G22,#06 [FALSE] 1d7ae
1d761:  e0 07 6b bf 99 08 01 00 CALL_VS         1aefc (S442,#01) -> -(SP)
1d769:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d76f
1d76d:  9b 02                   RET             #02
1d76f:  d9 0f 6b bf 99 11 00    CALL_2S         1aefc (S443) -> -(SP)
1d776:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d77c
1d77a:  9b 02                   RET             #02
1d77c:  d9 0f 6b bf 99 1a 00    CALL_2S         1aefc (S444) -> -(SP)
1d783:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d789
1d787:  9b 02                   RET             #02
1d789:  b3 ...                  PRINT_RET       "That is, the hook is more
important than the ham."
1d7ae:  41 32 07 00 4d          JE              G22,#07 [FALSE] 1d7fe
1d7b3:  e0 07 6b bf 99 23 01 00 CALL_VS         1aefc (S445,#01) -> -(SP)
1d7bb:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d7c1
1d7bf:  9b 02                   RET             #02
1d7c1:  d9 0f 6b bf 99 2f 00    CALL_2S         1aefc (S446) -> -(SP)
1d7c8:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d7ce
1d7cc:  9b 02                   RET             #02
1d7ce:  d9 0f 6b bf 99 3a 00    CALL_2S         1aefc (S447) -> -(SP)
1d7d5:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d7db
1d7d9:  9b 02                   RET             #02
1d7db:  b3 ...                  PRINT_RET       "The hook would make a good
pulley for the rope."
1d7fe:  41 32 08 00 31          JE              G22,#08 [FALSE] 1d832
1d803:  e0 07 6b bf 99 3f 01 00 CALL_VS         1aefc (S448,#01) -> -(SP)
1d80b:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d811
1d80f:  9b 02                   RET             #02
1d811:  b3 ...                  PRINT_RET       "But you could try opening it,
just in case."
1d832:  41 32 09 00 89          JE              G22,#09 [FALSE] 1d8be
1d837:  e0 07 6b bf 99 47 01 00 CALL_VS         1aefc (S449,#01) -> -(SP)
1d83f:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d845
1d843:  9b 02                   RET             #02
1d845:  d9 0f 6b bf 99 4d 00    CALL_2S         1aefc (S450) -> -(SP)
1d84c:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d852
1d850:  9b 02                   RET             #02
1d852:  d9 0f 6b bf 99 59 00    CALL_2S         1aefc (S451) -> -(SP)
1d859:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d85f
1d85d:  9b 02                   RET             #02
1d85f:  d9 0f 6b bf 99 6a 00    CALL_2S         1aefc (S452) -> -(SP)
1d866:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d86c
1d86a:  9b 02                   RET             #02
1d86c:  d9 0f 6b bf 99 74 00    CALL_2S         1aefc (S453) -> -(SP)
1d873:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d879
1d877:  9b 02                   RET             #02
1d879:  d9 0f 6b bf 99 7f 00    CALL_2S         1aefc (S454) -> -(SP)
1d880:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d886
1d884:  9b 02                   RET             #02
1d886:  d9 0f 6b bf 99 86 00    CALL_2S         1aefc (S455) -> -(SP)
1d88d:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d893
1d891:  9b 02                   RET             #02
1d893:  b3 ...                  PRINT_RET       "Either pull the rope, or tie
it to yourself and walk away."
1d8be:  41 32 0a 00 50          JE              G22,#0a [FALSE] 1d911
1d8c3:  e0 07 6b bf 99 91 01 00 CALL_VS         1aefc (S456,#01) -> -(SP)
1d8cb:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d8d1
1d8cf:  9b 02                   RET             #02
1d8d1:  d9 0f 6b bf 99 93 00    CALL_2S         1aefc (S457) -> -(SP)
1d8d8:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d8de
1d8dc:  9b 02                   RET             #02
1d8de:  d9 0f 6b bf 99 9d 00    CALL_2S         1aefc (S458) -> -(SP)
1d8e5:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d8eb
1d8e9:  9b 02                   RET             #02
1d8eb:  d9 0f 6b bf 99 a2 00    CALL_2S         1aefc (S459) -> -(SP)
1d8f2:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d8f8
1d8f6:  9b 02                   RET             #02
1d8f8:  b3 ...                  PRINT_RET       "What's the heaviest thing
here?"
1d911:  41 32 0b 00 51          JE              G22,#0b [FALSE] 1d965
1d916:  e0 07 6b bf 99 ab 01 00 CALL_VS         1aefc (S460,#01) -> -(SP)
1d91e:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d924
1d922:  9b 02                   RET             #02
1d924:  d9 0f 6b bf 99 b0 00    CALL_2S         1aefc (S461) -> -(SP)
1d92b:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d931
1d92f:  9b 02                   RET             #02
1d931:  d9 0f 6b bf 99 b6 00    CALL_2S         1aefc (S462) -> -(SP)
1d938:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d93e
1d93c:  9b 02                   RET             #02
1d93e:  b3 ...                  PRINT_RET       "No, still no luck. Perhaps
there isn't a trap door."
1d965:  41 32 0c 00 6a          JE              G22,#0c [FALSE] 1d9d2
1d96a:  e0 07 6b bf 99 bd 01 00 CALL_VS         1aefc (S463,#01) -> -(SP)
1d972:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d978
1d976:  9b 02                   RET             #02
1d978:  d9 0f 6b bf 99 c2 00    CALL_2S         1aefc (S464) -> -(SP)
1d97f:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d985
1d983:  9b 02                   RET             #02
1d985:  d9 0f 6b bf 99 ce 00    CALL_2S         1aefc (S465) -> -(SP)
1d98c:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d992
1d990:  9b 02                   RET             #02
1d992:  d9 0f 6b bf 99 d3 00    CALL_2S         1aefc (S466) -> -(SP)
1d999:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1d99f
1d99d:  9b 02                   RET             #02
1d99f:  b3 ...                  PRINT_RET       "...or you can tie the other
end of the rope to yourself and climb down."
1d9d2:  b0                      RTRUE           

Routine 1d9d4, 0 locals

1d9d5:  f9 00 2e 3e 99 e1 76 78 75 78 
                               CALL_VN         b8f8 (S467,#7678,#7578)
1d9df:  b0                      RTRUE           

Routine 1d9e0, 0 locals

1d9e1:  a0 32 4c                JZ              G22 [FALSE] 1d9ee
1d9e4:  cd 4f 34 9a 35          STORE           G24,S468
1d9e9:  0d 33 08                STORE           G23,#08
1d9ec:  9b 0c                   RET             #0c
1d9ee:  41 32 01 4a             JE              G22,#01 [FALSE] 1d9fa
1d9f2:  cd 4f 34 9a 39          STORE           G24,S469
1d9f7:  0d 33 0d                STORE           G23,#0d
1d9fa:  41 32 02 4a             JE              G22,#02 [FALSE] 1da06
1d9fe:  cd 4f 34 9a 3e          STORE           G24,S470
1da03:  0d 33 0f                STORE           G23,#0f
1da06:  41 32 03 4a             JE              G22,#03 [FALSE] 1da12
1da0a:  cd 4f 34 9a 44          STORE           G24,S471
1da0f:  0d 33 13                STORE           G23,#13
1da12:  41 32 04 4a             JE              G22,#04 [FALSE] 1da1e
1da16:  cd 4f 34 9a 4b          STORE           G24,S472
1da1b:  0d 33 12                STORE           G23,#12
1da1e:  41 32 05 4a             JE              G22,#05 [FALSE] 1da2a
1da22:  cd 4f 34 9a 52          STORE           G24,S473
1da27:  0d 33 0a                STORE           G23,#0a
1da2a:  41 32 06 4a             JE              G22,#06 [FALSE] 1da36
1da2e:  cd 4f 34 9a 56          STORE           G24,S474
1da33:  0d 33 0c                STORE           G23,#0c
1da36:  41 32 07 4a             JE              G22,#07 [FALSE] 1da42
1da3a:  cd 4f 34 9a 5b          STORE           G24,S475
1da3f:  0d 33 0c                STORE           G23,#0c
1da42:  41 32 08 4a             JE              G22,#08 [FALSE] 1da4e
1da46:  cd 4f 34 9a 60          STORE           G24,S476
1da4b:  0d 33 15                STORE           G23,#15
1da4e:  41 32 09 4a             JE              G22,#09 [FALSE] 1da5a
1da52:  cd 4f 34 9a 68          STORE           G24,S477
1da57:  0d 33 0f                STORE           G23,#0f
1da5a:  41 32 0a 4a             JE              G22,#0a [FALSE] 1da66
1da5e:  cd 4f 34 9a 6e          STORE           G24,S478
1da63:  0d 33 10                STORE           G23,#10
1da66:  41 32 0b 4a             JE              G22,#0b [FALSE] 1da72
1da6a:  cd 4f 34 9a 74          STORE           G24,S479
1da6f:  0d 33 0f                STORE           G23,#0f
1da72:  41 32 0c 4a             JE              G22,#0c [FALSE] 1da7e
1da76:  cd 4f 34 9a 7a          STORE           G24,S480
1da7b:  0d 33 17                STORE           G23,#17
1da7e:  b0                      RTRUE           

Routine 1da80, 0 locals

1da81:  41 32 01 00 43          JE              G22,#01 [FALSE] 1dac7
1da86:  e0 07 6b bf 9a 83 01 00 CALL_VS         1aefc (S481,#01) -> -(SP)
1da8e:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1da94
1da92:  9b 02                   RET             #02
1da94:  d9 0f 6b bf 9a 8a 00    CALL_2S         1aefc (S482) -> -(SP)
1da9b:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1daa1
1da9f:  9b 02                   RET             #02
1daa1:  d9 0f 6b bf 9a 94 00    CALL_2S         1aefc (S483) -> -(SP)
1daa8:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1daae
1daac:  9b 02                   RET             #02
1daae:  b3 ...                  PRINT_RET       "Which is why magic is called
for."
1dac7:  41 32 02 00 33          JE              G22,#02 [FALSE] 1dafd
1dacc:  e0 07 6b bf 9a 9c 01 00 CALL_VS         1aefc (S484,#01) -> -(SP)
1dad4:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dada
1dad8:  9b 02                   RET             #02
1dada:  b3 ...                  PRINT_RET       "Try drinking some of it, and
see what happens."
1dafd:  41 32 03 00 42          JE              G22,#03 [FALSE] 1db42
1db02:  e0 07 6b bf 9a a6 01 00 CALL_VS         1aefc (S485,#01) -> -(SP)
1db0a:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1db10
1db0e:  9b 02                   RET             #02
1db10:  d9 0f 6b bf 9a a7 00    CALL_2S         1aefc (S486) -> -(SP)
1db17:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1db1d
1db1b:  9b 02                   RET             #02
1db1d:  b3 ...                  PRINT_RET       "Such as the autumn leaves in
the bubbling pool room."
1db42:  41 32 04 00 85          JE              G22,#04 [FALSE] 1dbca
1db47:  e0 07 6b bf 9a b1 01 00 CALL_VS         1aefc (S487,#01) -> -(SP)
1db4f:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1db55
1db53:  9b 02                   RET             #02
1db55:  d9 0f 6b bf 9a bd 00    CALL_2S         1aefc (S488) -> -(SP)
1db5c:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1db62
1db60:  9b 02                   RET             #02
1db62:  d9 0f 6b bf 9a c7 00    CALL_2S         1aefc (S489) -> -(SP)
1db69:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1db6f
1db6d:  9b 02                   RET             #02
1db6f:  d9 0f 6b bf 9a d0 00    CALL_2S         1aefc (S490) -> -(SP)
1db76:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1db7c
1db7a:  9b 02                   RET             #02
1db7c:  d9 0f 6b bf 9a d8 00    CALL_2S         1aefc (S491) -> -(SP)
1db83:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1db89
1db87:  9b 02                   RET             #02
1db89:  d9 0f 6b bf 9a de 00    CALL_2S         1aefc (S492) -> -(SP)
1db90:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1db96
1db94:  9b 02                   RET             #02
1db96:  d9 0f 6b bf 9a e9 00    CALL_2S         1aefc (S493) -> -(SP)
1db9d:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dba3
1dba1:  9b 02                   RET             #02
1dba3:  b3 ...                  PRINT_RET       "The apple is poisoned, so give
that to the oil-snake."
1dbca:  b0                      RTRUE           

Routine 1dbcc, 0 locals

1dbcd:  f9 00 2e 3e 9a f4 76 f6 76 a0 
                               CALL_VN         b8f8 (S494,#76f6,#76a0)
1dbd7:  b0                      RTRUE           

Routine 1dbd8, 0 locals

1dbd9:  a0 32 4c                JZ              G22 [FALSE] 1dbe6
1dbdc:  cd 4f 34 9b 11          STORE           G24,S495
1dbe1:  0d 33 0b                STORE           G23,#0b
1dbe4:  9b 04                   RET             #04
1dbe6:  41 32 01 4a             JE              G22,#01 [FALSE] 1dbf2
1dbea:  cd 4f 34 9b 16          STORE           G24,S496
1dbef:  0d 33 0c                STORE           G23,#0c
1dbf2:  41 32 02 4a             JE              G22,#02 [FALSE] 1dbfe
1dbf6:  cd 4f 34 9b 1b          STORE           G24,S497
1dbfb:  0d 33 14                STORE           G23,#14
1dbfe:  41 32 03 4a             JE              G22,#03 [FALSE] 1dc0a
1dc02:  cd 4f 34 9b 23          STORE           G24,S498
1dc07:  0d 33 0f                STORE           G23,#0f
1dc0a:  41 32 04 4a             JE              G22,#04 [FALSE] 1dc16
1dc0e:  cd 4f 34 9b 29          STORE           G24,S499
1dc13:  0d 33 11                STORE           G23,#11
1dc16:  b0                      RTRUE           

Routine 1dc18, 0 locals

1dc19:  41 32 01 00 34          JE              G22,#01 [FALSE] 1dc50
1dc1e:  e0 07 6b bf 9b 30 01 00 CALL_VS         1aefc (S500,#01) -> -(SP)
1dc26:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dc2c
1dc2a:  9b 02                   RET             #02
1dc2c:  d9 0f 6b bf 9b 35 00    CALL_2S         1aefc (S501) -> -(SP)
1dc33:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dc39
1dc37:  9b 02                   RET             #02
1dc39:  b3 ...                  PRINT_RET       "So you need to use your rope."
1dc50:  41 32 02 00 62          JE              G22,#02 [FALSE] 1dcb5
1dc55:  e0 07 6b bf 9b 3a 01 00 CALL_VS         1aefc (S502,#01) -> -(SP)
1dc5d:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dc63
1dc61:  9b 02                   RET             #02
1dc63:  d9 0f 6b bf 9b 42 00    CALL_2S         1aefc (S503) -> -(SP)
1dc6a:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dc70
1dc6e:  9b 02                   RET             #02
1dc70:  d9 0f 6b bf 9b 53 00    CALL_2S         1aefc (S504) -> -(SP)
1dc77:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dc7d
1dc7b:  9b 02                   RET             #02
1dc7d:  d9 0f 6b bf 9b 5c 00    CALL_2S         1aefc (S505) -> -(SP)
1dc84:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dc8a
1dc88:  9b 02                   RET             #02
1dc8a:  b3 ...                  PRINT_RET       "That is, tie the other end of
the rope to yourself and jump."
1dcb5:  41 32 03 00 72          JE              G22,#03 [FALSE] 1dd2a
1dcba:  e0 07 6b bf 9b 60 01 00 CALL_VS         1aefc (S506,#01) -> -(SP)
1dcc2:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dcc8
1dcc6:  9b 02                   RET             #02
1dcc8:  d9 0f 6b bf 9b 69 00    CALL_2S         1aefc (S507) -> -(SP)
1dccf:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dcd5
1dcd3:  9b 02                   RET             #02
1dcd5:  d9 0f 6b bf 9b 72 00    CALL_2S         1aefc (S508) -> -(SP)
1dcdc:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dce2
1dce0:  9b 02                   RET             #02
1dce2:  d9 0f 6b bf 9b 7a 00    CALL_2S         1aefc (S509) -> -(SP)
1dce9:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dcef
1dced:  9b 02                   RET             #02
1dcef:  d9 0f 6b bf 9b 81 00    CALL_2S         1aefc (S510) -> -(SP)
1dcf6:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dcfc
1dcfa:  9b 02                   RET             #02
1dcfc:  d9 0f 6b bf 9b 88 00    CALL_2S         1aefc (S511) -> -(SP)
1dd03:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dd09
1dd07:  9b 02                   RET             #02
1dd09:  b3 ...                  PRINT_RET       "Or to give it its proper name,
the boomerang."
1dd2a:  41 32 04 00 34          JE              G22,#04 [FALSE] 1dd61
1dd2f:  e0 07 6b bf 9b 8e 01 00 CALL_VS         1aefc (S512,#01) -> -(SP)
1dd37:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dd3d
1dd3b:  9b 02                   RET             #02
1dd3d:  d9 0f 6b bf 9b 8f 00    CALL_2S         1aefc (S513) -> -(SP)
1dd44:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dd4a
1dd48:  9b 02                   RET             #02
1dd4a:  b3 ...                  PRINT_RET       "Which is not too far to jump!"
1dd61:  41 32 05 00 6d          JE              G22,#05 [FALSE] 1ddd1
1dd66:  e0 07 6b bf 9b 97 01 00 CALL_VS         1aefc (S514,#01) -> -(SP)
1dd6e:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dd74
1dd72:  9b 02                   RET             #02
1dd74:  d9 0f 6b bf 9b a7 00    CALL_2S         1aefc (S515) -> -(SP)
1dd7b:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dd81
1dd7f:  9b 02                   RET             #02
1dd81:  d9 0f 6b bf 9b b0 00    CALL_2S         1aefc (S516) -> -(SP)
1dd88:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dd8e
1dd8c:  9b 02                   RET             #02
1dd8e:  d9 0f 6b bf 9b ba 00    CALL_2S         1aefc (S517) -> -(SP)
1dd95:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dd9b
1dd99:  9b 02                   RET             #02
1dd9b:  d9 0f 6b bf 9b c6 00    CALL_2S         1aefc (S518) -> -(SP)
1dda2:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dda8
1dda6:  9b 02                   RET             #02
1dda8:  b3 ...                  PRINT_RET       "The rope hanging in mid-air as
seen from the Tiny Cave."
1ddd1:  41 32 06 00 2d          JE              G22,#06 [FALSE] 1de01
1ddd6:  e0 07 6b bf 9b d4 01 00 CALL_VS         1aefc (S519,#01) -> -(SP)
1ddde:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dde4
1dde2:  9b 02                   RET             #02
1dde4:  b3 ...                  PRINT_RET       "But it plays no part in the
game as yet."
1de01:  41 32 07 00 da          JE              G22,#07 [FALSE] 1dede
1de06:  e0 07 6b bf 9b e6 01 00 CALL_VS         1aefc (S520,#01) -> -(SP)
1de0e:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1de14
1de12:  9b 02                   RET             #02
1de14:  d9 0f 6b bf 9b ee 00    CALL_2S         1aefc (S521) -> -(SP)
1de1b:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1de21
1de1f:  9b 02                   RET             #02
1de21:  d9 0f 6b bf 9b f6 00    CALL_2S         1aefc (S522) -> -(SP)
1de28:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1de2e
1de2c:  9b 02                   RET             #02
1de2e:  d9 0f 6b bf 9c 01 00    CALL_2S         1aefc (S523) -> -(SP)
1de35:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1de3b
1de39:  9b 02                   RET             #02
1de3b:  d9 0f 6b bf 9c 0f 00    CALL_2S         1aefc (S524) -> -(SP)
1de42:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1de48
1de46:  9b 02                   RET             #02
1de48:  d9 0f 6b bf 9c 16 00    CALL_2S         1aefc (S525) -> -(SP)
1de4f:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1de55
1de53:  9b 02                   RET             #02
1de55:  d9 0f 6b bf 9c 1f 00    CALL_2S         1aefc (S526) -> -(SP)
1de5c:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1de62
1de60:  9b 02                   RET             #02
1de62:  d9 0f 6b bf 9c 2e 00    CALL_2S         1aefc (S527) -> -(SP)
1de69:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1de6f
1de6d:  9b 02                   RET             #02
1de6f:  d9 0f 6b bf 9c 32 00    CALL_2S         1aefc (S528) -> -(SP)
1de76:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1de7c
1de7a:  9b 02                   RET             #02
1de7c:  d9 0f 6b bf 9c 3c 00    CALL_2S         1aefc (S529) -> -(SP)
1de83:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1de89
1de87:  9b 02                   RET             #02
1de89:  b3 ...                  PRINT_RET       ""chiaro" an arrow and fire it
into the cavity from the cedar tree, then go back around and look through the
quartz window."
1dede:  41 32 08 00 39          JE              G22,#08 [FALSE] 1df1a
1dee3:  e0 07 6b bf 9c 43 01 00 CALL_VS         1aefc (S530,#01) -> -(SP)
1deeb:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1def1
1deef:  9b 02                   RET             #02
1def1:  d9 0f 6b bf 9c 4b 00    CALL_2S         1aefc (S531) -> -(SP)
1def8:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1defe
1defc:  9b 02                   RET             #02
1defe:  d9 0f 6b bf 9c 52 00    CALL_2S         1aefc (S532) -> -(SP)
1df05:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1df0b
1df09:  9b 02                   RET             #02
1df0b:  b3 ...                  PRINT_RET       "Jilnix the mound."
1df1a:  41 32 09 00 8c          JE              G22,#09 [FALSE] 1dfa9
1df1f:  e0 07 6b bf 9c 57 01 00 CALL_VS         1aefc (S533,#01) -> -(SP)
1df27:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1df2d
1df2b:  9b 02                   RET             #02
1df2d:  d9 0f 6b bf 9c 5e 00    CALL_2S         1aefc (S534) -> -(SP)
1df34:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1df3a
1df38:  9b 02                   RET             #02
1df3a:  d9 0f 6b bf 9c 65 00    CALL_2S         1aefc (S535) -> -(SP)
1df41:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1df47
1df45:  9b 02                   RET             #02
1df47:  d9 0f 6b bf 9c 6c 00    CALL_2S         1aefc (S536) -> -(SP)
1df4e:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1df54
1df52:  9b 02                   RET             #02
1df54:  d9 0f 6b bf 9c 74 00    CALL_2S         1aefc (S537) -> -(SP)
1df5b:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1df61
1df5f:  9b 02                   RET             #02
1df61:  d9 0f 6b bf 9c 7e 00    CALL_2S         1aefc (S538) -> -(SP)
1df68:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1df6e
1df6c:  9b 02                   RET             #02
1df6e:  b3 ...                  PRINT_RET       "Then simply give them to him.
When you've given enough, he'll allow you to pass."
1dfa9:  41 32 0a 00 35          JE              G22,#0a [FALSE] 1dfe1
1dfae:  e0 07 6b bf 9c 87 01 00 CALL_VS         1aefc (S539,#01) -> -(SP)
1dfb6:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dfbc
1dfba:  9b 02                   RET             #02
1dfbc:  b3 ...                  PRINT_RET       "Near the Stone, the "ruther"
spell can be used."
1dfe1:  41 32 0b 00 ec          JE              G22,#0b [FALSE] 1e0d0
1dfe6:  e0 07 6b bf 9c 9f 01 00 CALL_VS         1aefc (S540,#01) -> -(SP)
1dfee:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1dff4
1dff2:  9b 02                   RET             #02
1dff4:  d9 0f 6b bf 9c ae 00    CALL_2S         1aefc (S541) -> -(SP)
1dffb:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e001
1dfff:  9b 02                   RET             #02
1e001:  d9 0f 6b bf 9c b5 00    CALL_2S         1aefc (S542) -> -(SP)
1e008:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e00e
1e00c:  9b 02                   RET             #02
1e00e:  d9 0f 6b bf 9c bc 00    CALL_2S         1aefc (S543) -> -(SP)
1e015:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e01b
1e019:  9b 02                   RET             #02
1e01b:  d9 0f 6b bf 9c c4 00    CALL_2S         1aefc (S544) -> -(SP)
1e022:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e028
1e026:  9b 02                   RET             #02
1e028:  d9 0f 6b bf 9c d2 00    CALL_2S         1aefc (S545) -> -(SP)
1e02f:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e035
1e033:  9b 02                   RET             #02
1e035:  d9 0f 6b bf 9c ea 00    CALL_2S         1aefc (S546) -> -(SP)
1e03c:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e042
1e040:  9b 02                   RET             #02
1e042:  d9 0f 6b bf 9c fd 00    CALL_2S         1aefc (S547) -> -(SP)
1e049:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e04f
1e04d:  9b 02                   RET             #02
1e04f:  d9 0f 6b bf 9d 13 00    CALL_2S         1aefc (S548) -> -(SP)
1e056:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e05c
1e05a:  9b 02                   RET             #02
1e05c:  d9 0f 6b bf 9d 27 00    CALL_2S         1aefc (S549) -> -(SP)
1e063:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e069
1e067:  9b 02                   RET             #02
1e069:  d9 0f 6b bf 9d 38 00    CALL_2S         1aefc (S550) -> -(SP)
1e070:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e076
1e074:  9b 02                   RET             #02
1e076:  d9 0f 6b bf 9d 47 00    CALL_2S         1aefc (S551) -> -(SP)
1e07d:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e083
1e081:  9b 02                   RET             #02
1e083:  b3 ...                  PRINT_RET       "Of these, Oxygen/Sulphur
doesn't appear in the game at all, and Copper/Silver/Gold is only witnessed."
1e0d0:  b0                      RTRUE           

Routine 1e0d4, 0 locals

1e0d5:  f9 00 2e 3e 9d 57 78 38 77 06 
                               CALL_VN         b8f8 (S552,#7838,#7706)
1e0df:  b0                      RTRUE           

Routine 1e0e0, 0 locals

1e0e1:  a0 32 4c                JZ              G22 [FALSE] 1e0ee
1e0e4:  cd 4f 34 9d a8          STORE           G24,S553
1e0e9:  0d 33 0b                STORE           G23,#0b
1e0ec:  9b 0b                   RET             #0b
1e0ee:  41 32 01 4a             JE              G22,#01 [FALSE] 1e0fa
1e0f2:  cd 4f 34 9d ac          STORE           G24,S554
1e0f7:  0d 33 10                STORE           G23,#10
1e0fa:  41 32 02 4a             JE              G22,#02 [FALSE] 1e106
1e0fe:  cd 4f 34 9d b2          STORE           G24,S555
1e103:  0d 33 0c                STORE           G23,#0c
1e106:  41 32 03 4a             JE              G22,#03 [FALSE] 1e112
1e10a:  cd 4f 34 9d b7          STORE           G24,S556
1e10f:  0d 33 13                STORE           G23,#13
1e112:  41 32 04 4a             JE              G22,#04 [FALSE] 1e11e
1e116:  cd 4f 34 9d bf          STORE           G24,S557
1e11b:  0d 33 12                STORE           G23,#12
1e11e:  41 32 05 4a             JE              G22,#05 [FALSE] 1e12a
1e122:  cd 4f 34 9d c6          STORE           G24,S558
1e127:  0d 33 11                STORE           G23,#11
1e12a:  41 32 06 4a             JE              G22,#06 [FALSE] 1e136
1e12e:  cd 4f 34 9d cc          STORE           G24,S559
1e133:  0d 33 12                STORE           G23,#12
1e136:  41 32 07 4a             JE              G22,#07 [FALSE] 1e142
1e13a:  cd 4f 34 9d d3          STORE           G24,S560
1e13f:  0d 33 10                STORE           G23,#10
1e142:  41 32 08 4a             JE              G22,#08 [FALSE] 1e14e
1e146:  cd 4f 34 9d d9          STORE           G24,S561
1e14b:  0d 33 10                STORE           G23,#10
1e14e:  41 32 09 4a             JE              G22,#09 [FALSE] 1e15a
1e152:  cd 4f 34 9d df          STORE           G24,S562
1e157:  0d 33 10                STORE           G23,#10
1e15a:  41 32 0a 4a             JE              G22,#0a [FALSE] 1e166
1e15e:  cd 4f 34 9d e6          STORE           G24,S563
1e163:  0d 33 10                STORE           G23,#10
1e166:  41 32 0b 4a             JE              G22,#0b [FALSE] 1e172
1e16a:  cd 4f 34 9d ed          STORE           G24,S564
1e16f:  0d 33 0f                STORE           G23,#0f
1e172:  b0                      RTRUE           

Routine 1e174, 0 locals

1e175:  41 32 01 00 39          JE              G22,#01 [FALSE] 1e1b1
1e17a:  e0 07 6b bf 9d f3 01 00 CALL_VS         1aefc (S565,#01) -> -(SP)
1e182:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e188
1e186:  9b 02                   RET             #02
1e188:  d9 0f 6b bf 9d fa 00    CALL_2S         1aefc (S566) -> -(SP)
1e18f:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e195
1e193:  9b 02                   RET             #02
1e195:  d9 0f 6b bf 9e 09 00    CALL_2S         1aefc (S567) -> -(SP)
1e19c:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e1a2
1e1a0:  9b 02                   RET             #02
1e1a2:  b3 ...                  PRINT_RET       "Such as a ladder!"
1e1b1:  41 32 02 00 45          JE              G22,#02 [FALSE] 1e1f9
1e1b6:  e0 07 6b bf 9e 11 01 00 CALL_VS         1aefc (S568,#01) -> -(SP)
1e1be:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e1c4
1e1c2:  9b 02                   RET             #02
1e1c4:  d9 0f 6b bf 9e 18 00    CALL_2S         1aefc (S569) -> -(SP)
1e1cb:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e1d1
1e1cf:  9b 02                   RET             #02
1e1d1:  d9 0f 6b bf 9e 20 00    CALL_2S         1aefc (S570) -> -(SP)
1e1d8:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e1de
1e1dc:  9b 02                   RET             #02
1e1de:  b3 ...                  PRINT_RET       "Use the "piroo" unfastening
spell."
1e1f9:  41 32 03 00 86          JE              G22,#03 [FALSE] 1e282
1e1fe:  e0 07 6b bf 9e 27 01 00 CALL_VS         1aefc (S571,#01) -> -(SP)
1e206:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e20c
1e20a:  9b 02                   RET             #02
1e20c:  d9 0f 6b bf 9e 34 00    CALL_2S         1aefc (S572) -> -(SP)
1e213:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e219
1e217:  9b 02                   RET             #02
1e219:  d9 0f 6b bf 9e 3d 00    CALL_2S         1aefc (S573) -> -(SP)
1e220:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e226
1e224:  9b 02                   RET             #02
1e226:  d9 0f 6b bf 9e 46 00    CALL_2S         1aefc (S574) -> -(SP)
1e22d:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e233
1e231:  9b 02                   RET             #02
1e233:  d9 0f 6b bf 9e 4c 00    CALL_2S         1aefc (S575) -> -(SP)
1e23a:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e240
1e23e:  9b 02                   RET             #02
1e240:  d9 0f 6b bf 9e 5a 00    CALL_2S         1aefc (S576) -> -(SP)
1e247:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e24d
1e24b:  9b 02                   RET             #02
1e24d:  b3 ...                  PRINT_RET       "Tie the rope to the scroll
then yourself, and go west down into the furrow."
1e282:  41 32 04 00 56          JE              G22,#04 [FALSE] 1e2db
1e287:  e0 07 6b bf 9e 60 01 00 CALL_VS         1aefc (S577,#01) -> -(SP)
1e28f:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e295
1e293:  9b 02                   RET             #02
1e295:  d9 0f 6b bf 9e 68 00    CALL_2S         1aefc (S578) -> -(SP)
1e29c:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e2a2
1e2a0:  9b 02                   RET             #02
1e2a2:  d9 0f 6b bf 9e 71 00    CALL_2S         1aefc (S579) -> -(SP)
1e2a9:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e2af
1e2ad:  9b 02                   RET             #02
1e2af:  d9 0f 6b bf 9e 75 00    CALL_2S         1aefc (S580) -> -(SP)
1e2b6:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e2bc
1e2ba:  9b 02                   RET             #02
1e2bc:  b3 ...                  PRINT_RET       "Use the "ruther" spell to
transmute it."
1e2db:  41 32 05 00 9c          JE              G22,#05 [FALSE] 1e37a
1e2e0:  e0 07 6b bf 9e 7c 01 00 CALL_VS         1aefc (S581,#01) -> -(SP)
1e2e8:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e2ee
1e2ec:  9b 02                   RET             #02
1e2ee:  d9 0f 6b bf 9e 81 00    CALL_2S         1aefc (S582) -> -(SP)
1e2f5:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e2fb
1e2f9:  9b 02                   RET             #02
1e2fb:  d9 0f 6b bf 9e 88 00    CALL_2S         1aefc (S583) -> -(SP)
1e302:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e308
1e306:  9b 02                   RET             #02
1e308:  d9 0f 6b bf 9e 8d 00    CALL_2S         1aefc (S584) -> -(SP)
1e30f:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e315
1e313:  9b 02                   RET             #02
1e315:  d9 0f 6b bf 9e 96 00    CALL_2S         1aefc (S585) -> -(SP)
1e31c:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e322
1e320:  9b 02                   RET             #02
1e322:  d9 0f 6b bf 9e 9d 00    CALL_2S         1aefc (S586) -> -(SP)
1e329:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e32f
1e32d:  9b 02                   RET             #02
1e32f:  d9 0f 6b bf 9e a6 00    CALL_2S         1aefc (S587) -> -(SP)
1e336:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e33c
1e33a:  9b 02                   RET             #02
1e33c:  d9 0f 6b bf 9e ae 00    CALL_2S         1aefc (S588) -> -(SP)
1e343:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e349
1e347:  9b 02                   RET             #02
1e349:  b3 ...                  PRINT_RET       "One has to sluice more water
over the sediment to filter it further."
1e37a:  41 32 06 00 46          JE              G22,#06 [FALSE] 1e3c3
1e37f:  e0 07 6b bf 9e b4 01 00 CALL_VS         1aefc (S589,#01) -> -(SP)
1e387:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e38d
1e38b:  9b 02                   RET             #02
1e38d:  d9 0f 6b bf 9e bb 00    CALL_2S         1aefc (S590) -> -(SP)
1e394:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e39a
1e398:  9b 02                   RET             #02
1e39a:  b3 ...                  PRINT_RET       "But a deeper, larger
individual of the species will do."
1e3c3:  b0                      RTRUE           

Routine 1e3c4, 0 locals

1e3c5:  f9 00 2e 3e 9e c6 78 f4 78 5d 
                               CALL_VN         b8f8 (S591,#78f4,#785d)
1e3cf:  b0                      RTRUE           

Routine 1e3d0, 0 locals

1e3d1:  a0 32 4c                JZ              G22 [FALSE] 1e3de
1e3d4:  cd 4f 34 9e ee          STORE           G24,S592
1e3d9:  0d 33 0a                STORE           G23,#0a
1e3dc:  9b 06                   RET             #06
1e3de:  41 32 01 4a             JE              G22,#01 [FALSE] 1e3ea
1e3e2:  cd 4f 34 9e f2          STORE           G24,S593
1e3e7:  0d 33 0a                STORE           G23,#0a
1e3ea:  41 32 02 4a             JE              G22,#02 [FALSE] 1e3f6
1e3ee:  cd 4f 34 9e f6          STORE           G24,S594
1e3f3:  0d 33 0f                STORE           G23,#0f
1e3f6:  41 32 03 4a             JE              G22,#03 [FALSE] 1e402
1e3fa:  cd 4f 34 9e fc          STORE           G24,S595
1e3ff:  0d 33 10                STORE           G23,#10
1e402:  41 32 04 4a             JE              G22,#04 [FALSE] 1e40e
1e406:  cd 4f 34 9f 02          STORE           G24,S596
1e40b:  0d 33 14                STORE           G23,#14
1e40e:  41 32 05 4a             JE              G22,#05 [FALSE] 1e41a
1e412:  cd 4f 34 9f 09          STORE           G24,S597
1e417:  0d 33 0a                STORE           G23,#0a
1e41a:  41 32 06 4a             JE              G22,#06 [FALSE] 1e426
1e41e:  cd 4f 34 9f 0d          STORE           G24,S598
1e423:  0d 33 10                STORE           G23,#10
1e426:  b0                      RTRUE           

Routine 1e428, 0 locals

1e429:  41 32 01 47             JE              G22,#01 [FALSE] 1e432
1e42d:  b3 ...                  PRINT_RET       "No."
1e432:  41 32 02 00 52          JE              G22,#02 [FALSE] 1e487
1e437:  e0 07 6b bf 9f 13 01 00 CALL_VS         1aefc (S599,#01) -> -(SP)
1e43f:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e445
1e443:  9b 02                   RET             #02
1e445:  d9 0f 6b bf 9f 1b 00    CALL_2S         1aefc (S600) -> -(SP)
1e44c:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e452
1e450:  9b 02                   RET             #02
1e452:  d9 0f 6b bf 9f 24 00    CALL_2S         1aefc (S601) -> -(SP)
1e459:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e45f
1e45d:  9b 02                   RET             #02
1e45f:  d9 0f 6b bf 9f 36 00    CALL_2S         1aefc (S602) -> -(SP)
1e466:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e46c
1e46a:  9b 02                   RET             #02
1e46c:  b3 ...                  PRINT_RET       "But now you'll have to be
Mother."
1e487:  41 32 03 5f             JE              G22,#03 [FALSE] 1e4a8
1e48b:  b3 ...                  PRINT_RET       "That will be the least of your
troubles."
1e4a8:  41 32 04 00 60          JE              G22,#04 [FALSE] 1e50b
1e4ad:  e0 07 6b bf 9f 48 01 00 CALL_VS         1aefc (S603,#01) -> -(SP)
1e4b5:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e4bb
1e4b9:  9b 02                   RET             #02
1e4bb:  d9 0f 6b bf 9f 53 00    CALL_2S         1aefc (S604) -> -(SP)
1e4c2:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e4c8
1e4c6:  9b 02                   RET             #02
1e4c8:  d9 0f 6b bf 9f 5b 00    CALL_2S         1aefc (S605) -> -(SP)
1e4cf:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e4d5
1e4d3:  9b 02                   RET             #02
1e4d5:  d9 0f 6b bf 9f 64 00    CALL_2S         1aefc (S606) -> -(SP)
1e4dc:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e4e2
1e4e0:  9b 02                   RET             #02
1e4e2:  d9 0f 6b bf 9f 6c 00    CALL_2S         1aefc (S607) -> -(SP)
1e4e9:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e4ef
1e4ed:  9b 02                   RET             #02
1e4ef:  d9 0f 6b bf 9f 75 00    CALL_2S         1aefc (S608) -> -(SP)
1e4f6:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e4fc
1e4fa:  9b 02                   RET             #02
1e4fc:  b3 ...                  PRINT_RET       "Try squeezing it."
1e50b:  41 32 05 00 7e          JE              G22,#05 [FALSE] 1e58c
1e510:  e0 07 6b bf 9f 7d 01 00 CALL_VS         1aefc (S609,#01) -> -(SP)
1e518:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e51e
1e51c:  9b 02                   RET             #02
1e51e:  d9 0f 6b bf 9f 88 00    CALL_2S         1aefc (S610) -> -(SP)
1e525:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e52b
1e529:  9b 02                   RET             #02
1e52b:  d9 0f 6b bf 9f 91 00    CALL_2S         1aefc (S611) -> -(SP)
1e532:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e538
1e536:  9b 02                   RET             #02
1e538:  d9 0f 6b bf 9f 99 00    CALL_2S         1aefc (S612) -> -(SP)
1e53f:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e545
1e543:  9b 02                   RET             #02
1e545:  d9 0f 6b bf 9f a5 00    CALL_2S         1aefc (S613) -> -(SP)
1e54c:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e552
1e550:  9b 02                   RET             #02
1e552:  d9 0f 6b bf 9f ac 00    CALL_2S         1aefc (S614) -> -(SP)
1e559:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e55f
1e55d:  9b 02                   RET             #02
1e55f:  b3 ...                  PRINT_RET       "The trunk should be washed up
on the northern shore of the pool."
1e58c:  41 32 06 00 5c          JE              G22,#06 [FALSE] 1e5eb
1e591:  e0 07 6b bf 9f b6 01 00 CALL_VS         1aefc (S615,#01) -> -(SP)
1e599:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e59f
1e59d:  9b 02                   RET             #02
1e59f:  d9 0f 6b bf 9f ba 00    CALL_2S         1aefc (S616) -> -(SP)
1e5a6:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e5ac
1e5aa:  9b 02                   RET             #02
1e5ac:  d9 0f 6b bf 9f c4 00    CALL_2S         1aefc (S617) -> -(SP)
1e5b3:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e5b9
1e5b7:  9b 02                   RET             #02
1e5b9:  d9 0f 6b bf 9f c8 00    CALL_2S         1aefc (S618) -> -(SP)
1e5c0:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e5c6
1e5c4:  9b 02                   RET             #02
1e5c6:  b3 ...                  PRINT_RET       "Go to the cellars and put the
ladder up the chimney."
1e5eb:  41 32 07 00 4b          JE              G22,#07 [FALSE] 1e639
1e5f0:  e0 07 6b bf 9f d3 01 00 CALL_VS         1aefc (S619,#01) -> -(SP)
1e5f8:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e5fe
1e5fc:  9b 02                   RET             #02
1e5fe:  d9 0f 6b bf 9f de 00    CALL_2S         1aefc (S620) -> -(SP)
1e605:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e60b
1e609:  9b 02                   RET             #02
1e60b:  d9 0f 6b bf 9f e7 00    CALL_2S         1aefc (S621) -> -(SP)
1e612:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e618
1e616:  9b 02                   RET             #02
1e618:  b3 ...                  PRINT_RET       "It's the raw material for a
healing elixir."
1e639:  b0                      RTRUE           

Routine 1e63c, 0 locals

1e63d:  f9 00 2e 3e 9f ed 79 92 79 0a 
                               CALL_VN         b8f8 (S622,#7992,#790a)
1e647:  b0                      RTRUE           

Routine 1e648, 0 locals

1e649:  a0 32 4c                JZ              G22 [FALSE] 1e656
1e64c:  cd 4f 34 a0 1b          STORE           G24,S623
1e651:  0d 33 0a                STORE           G23,#0a
1e654:  9b 07                   RET             #07
1e656:  41 32 01 4a             JE              G22,#01 [FALSE] 1e662
1e65a:  cd 4f 34 a0 1f          STORE           G24,S624
1e65f:  0d 33 0e                STORE           G23,#0e
1e662:  41 32 02 4a             JE              G22,#02 [FALSE] 1e66e
1e666:  cd 4f 34 a0 24          STORE           G24,S625
1e66b:  0d 33 0c                STORE           G23,#0c
1e66e:  41 32 03 4a             JE              G22,#03 [FALSE] 1e67a
1e672:  cd 4f 34 a0 29          STORE           G24,S626
1e677:  0d 33 13                STORE           G23,#13
1e67a:  41 32 04 4a             JE              G22,#04 [FALSE] 1e686
1e67e:  cd 4f 34 a0 30          STORE           G24,S627
1e683:  0d 33 0c                STORE           G23,#0c
1e686:  41 32 05 4a             JE              G22,#05 [FALSE] 1e692
1e68a:  cd 4f 34 a0 35          STORE           G24,S628
1e68f:  0d 33 0c                STORE           G23,#0c
1e692:  41 32 06 4a             JE              G22,#06 [FALSE] 1e69e
1e696:  cd 4f 34 a0 3a          STORE           G24,S629
1e69b:  0d 33 14                STORE           G23,#14
1e69e:  41 32 07 4a             JE              G22,#07 [FALSE] 1e6aa
1e6a2:  cd 4f 34 a0 42          STORE           G24,S630
1e6a7:  0d 33 0d                STORE           G23,#0d
1e6aa:  b0                      RTRUE           

Routine 1e6ac, 0 locals

1e6ad:  41 32 01 00 2f          JE              G22,#01 [FALSE] 1e6df
1e6b2:  e0 07 6b bf a0 47 01 00 CALL_VS         1aefc (S631,#01) -> -(SP)
1e6ba:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e6c0
1e6be:  9b 02                   RET             #02
1e6c0:  b3 ...                  PRINT_RET       "But only for the secret door
they conceal."
1e6df:  41 32 02 00 78          JE              G22,#02 [FALSE] 1e75a
1e6e4:  e0 07 6b bf a0 4c 01 00 CALL_VS         1aefc (S632,#01) -> -(SP)
1e6ec:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e6f2
1e6f0:  9b 02                   RET             #02
1e6f2:  d9 0f 6b bf a0 53 00    CALL_2S         1aefc (S633) -> -(SP)
1e6f9:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e6ff
1e6fd:  9b 02                   RET             #02
1e6ff:  d9 0f 6b bf a0 5a 00    CALL_2S         1aefc (S634) -> -(SP)
1e706:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e70c
1e70a:  9b 02                   RET             #02
1e70c:  d9 0f 6b bf a0 65 00    CALL_2S         1aefc (S635) -> -(SP)
1e713:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e719
1e717:  9b 02                   RET             #02
1e719:  d9 0f 6b bf a0 72 00    CALL_2S         1aefc (S636) -> -(SP)
1e720:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e726
1e724:  9b 02                   RET             #02
1e726:  d9 0f 6b bf a0 79 00    CALL_2S         1aefc (S637) -> -(SP)
1e72d:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e733
1e731:  9b 02                   RET             #02
1e733:  b3 ...                  PRINT_RET       "Tear the broad leaf and grind
the pieces with an arrow."
1e75a:  41 32 03 00 29          JE              G22,#03 [FALSE] 1e786
1e75f:  e0 07 6b bf a0 80 01 00 CALL_VS         1aefc (S638,#01) -> -(SP)
1e767:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e76d
1e76b:  9b 02                   RET             #02
1e76d:  b3 ...                  PRINT_RET       "Formal credentials, to be
exact."
1e786:  41 32 04 00 5d          JE              G22,#04 [FALSE] 1e7e6
1e78b:  e0 07 6b bf a0 8a 01 00 CALL_VS         1aefc (S639,#01) -> -(SP)
1e793:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e799
1e797:  9b 02                   RET             #02
1e799:  d9 0f 6b bf a0 90 00    CALL_2S         1aefc (S640) -> -(SP)
1e7a0:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e7a6
1e7a4:  9b 02                   RET             #02
1e7a6:  d9 0f 6b bf a0 9e 00    CALL_2S         1aefc (S641) -> -(SP)
1e7ad:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e7b3
1e7b1:  9b 02                   RET             #02
1e7b3:  d9 0f 6b bf a0 b4 00    CALL_2S         1aefc (S642) -> -(SP)
1e7ba:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e7c0
1e7be:  9b 02                   RET             #02
1e7c0:  d9 0f 6b bf a0 c0 00    CALL_2S         1aefc (S643) -> -(SP)
1e7c7:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e7cd
1e7cb:  9b 02                   RET             #02
1e7cd:  b3 ...                  PRINT_RET       "See "What's the drum for?"."
1e7e6:  41 32 05 00 40          JE              G22,#05 [FALSE] 1e829
1e7eb:  e0 07 6b bf a0 c3 01 00 CALL_VS         1aefc (S644,#01) -> -(SP)
1e7f3:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e7f9
1e7f7:  9b 02                   RET             #02
1e7f9:  d9 0f 6b bf a0 ce 00    CALL_2S         1aefc (S645) -> -(SP)
1e800:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e806
1e804:  9b 02                   RET             #02
1e806:  b3 ...                  PRINT_RET       "Try using the "ruther" spell
to transform it."
1e829:  41 32 06 00 40          JE              G22,#06 [FALSE] 1e86c
1e82e:  e0 07 6b bf a0 d5 01 00 CALL_VS         1aefc (S646,#01) -> -(SP)
1e836:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e83c
1e83a:  9b 02                   RET             #02
1e83c:  d9 0f 6b bf a0 de 00    CALL_2S         1aefc (S647) -> -(SP)
1e843:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e849
1e847:  9b 02                   RET             #02
1e849:  b3 ...                  PRINT_RET       "Each calibration is a
different shade of magic."
1e86c:  41 32 07 00 2b          JE              G22,#07 [FALSE] 1e89a
1e871:  e0 07 6b bf a0 e9 01 00 CALL_VS         1aefc (S648,#01) -> -(SP)
1e879:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e87f
1e87d:  9b 02                   RET             #02
1e87f:  b3 ...                  PRINT_RET       "An unwritten sheet of
scroll-paper."
1e89a:  41 32 08 00 44          JE              G22,#08 [FALSE] 1e8e1
1e89f:  e0 07 6b bf a0 ed 01 00 CALL_VS         1aefc (S649,#01) -> -(SP)
1e8a7:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e8ad
1e8ab:  9b 02                   RET             #02
1e8ad:  d9 0f 6b bf a0 f7 00    CALL_2S         1aefc (S650) -> -(SP)
1e8b4:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e8ba
1e8b8:  9b 02                   RET             #02
1e8ba:  b3 ...                  PRINT_RET       "It could be transformed, using
the "ruther" spell."
1e8e1:  41 32 09 00 99          JE              G22,#09 [FALSE] 1e97d
1e8e6:  e0 07 6b bf a1 00 01 00 CALL_VS         1aefc (S651,#01) -> -(SP)
1e8ee:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e8f4
1e8f2:  9b 02                   RET             #02
1e8f4:  d9 0f 6b bf a1 06 00    CALL_2S         1aefc (S652) -> -(SP)
1e8fb:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e901
1e8ff:  9b 02                   RET             #02
1e901:  d9 0f 6b bf a1 10 00    CALL_2S         1aefc (S653) -> -(SP)
1e908:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e90e
1e90c:  9b 02                   RET             #02
1e90e:  d9 0f 6b bf a1 1b 00    CALL_2S         1aefc (S654) -> -(SP)
1e915:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e91b
1e919:  9b 02                   RET             #02
1e91b:  d9 0f 6b bf a1 25 00    CALL_2S         1aefc (S655) -> -(SP)
1e922:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e928
1e926:  9b 02                   RET             #02
1e928:  d9 0f 6b bf a1 2e 00    CALL_2S         1aefc (S656) -> -(SP)
1e92f:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e935
1e933:  9b 02                   RET             #02
1e935:  d9 0f 6b bf a1 37 00    CALL_2S         1aefc (S657) -> -(SP)
1e93c:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1e942
1e940:  9b 02                   RET             #02
1e942:  b3 ...                  PRINT_RET       "Add the numbers, get a total
in hundredths of a degree and make the resulting spell."
1e97d:  b0                      RTRUE           

Routine 1e980, 0 locals

1e981:  f9 00 2e 3e a1 3e 7a 63 79 ab 
                               CALL_VN         b8f8 (S658,#7a63,#79ab)
1e98b:  b0                      RTRUE           

Routine 1e98c, 0 locals

1e98d:  a0 32 4c                JZ              G22 [FALSE] 1e99a
1e990:  cd 4f 34 a1 79          STORE           G24,S659
1e995:  0d 33 0d                STORE           G23,#0d
1e998:  9b 09                   RET             #09
1e99a:  41 32 01 4a             JE              G22,#01 [FALSE] 1e9a6
1e99e:  cd 4f 34 a1 7e          STORE           G24,S660
1e9a3:  0d 33 0c                STORE           G23,#0c
1e9a6:  41 32 02 4a             JE              G22,#02 [FALSE] 1e9b2
1e9aa:  cd 4f 34 a1 83          STORE           G24,S661
1e9af:  0d 33 0d                STORE           G23,#0d
1e9b2:  41 32 03 4a             JE              G22,#03 [FALSE] 1e9be
1e9b6:  cd 4f 34 a1 89          STORE           G24,S662
1e9bb:  0d 33 0b                STORE           G23,#0b
1e9be:  41 32 04 4a             JE              G22,#04 [FALSE] 1e9ca
1e9c2:  cd 4f 34 a1 8e          STORE           G24,S663
1e9c7:  0d 33 12                STORE           G23,#12
1e9ca:  41 32 05 4a             JE              G22,#05 [FALSE] 1e9d6
1e9ce:  cd 4f 34 a1 95          STORE           G24,S664
1e9d3:  0d 33 0f                STORE           G23,#0f
1e9d6:  41 32 06 4a             JE              G22,#06 [FALSE] 1e9e2
1e9da:  cd 4f 34 a1 9b          STORE           G24,S665
1e9df:  0d 33 0f                STORE           G23,#0f
1e9e2:  41 32 07 4a             JE              G22,#07 [FALSE] 1e9ee
1e9e6:  cd 4f 34 a1 a1          STORE           G24,S666
1e9eb:  0d 33 11                STORE           G23,#11
1e9ee:  41 32 08 4a             JE              G22,#08 [FALSE] 1e9fa
1e9f2:  cd 4f 34 a1 a8          STORE           G24,S667
1e9f7:  0d 33 0d                STORE           G23,#0d
1e9fa:  41 32 09 4a             JE              G22,#09 [FALSE] 1ea06
1e9fe:  cd 4f 34 a1 ad          STORE           G24,S668
1ea03:  0d 33 0d                STORE           G23,#0d
1ea06:  b0                      RTRUE           

Routine 1ea08, 0 locals

1ea09:  41 32 01 00 41          JE              G22,#01 [FALSE] 1ea4d
1ea0e:  e0 07 6b bf a1 b2 01 00 CALL_VS         1aefc (S669,#01) -> -(SP)
1ea16:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ea1c
1ea1a:  9b 02                   RET             #02
1ea1c:  d9 0f 6b bf a1 bd 00    CALL_2S         1aefc (S670) -> -(SP)
1ea23:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ea29
1ea27:  9b 02                   RET             #02
1ea29:  d9 0f 6b bf a1 c8 00    CALL_2S         1aefc (S671) -> -(SP)
1ea30:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ea36
1ea34:  9b 02                   RET             #02
1ea36:  b3 ...                  PRINT_RET       "Try using your sense of
smell."
1ea4d:  41 32 02 00 2d          JE              G22,#02 [FALSE] 1ea7d
1ea52:  b3 ...                  PRINT_RET       "Only because you're a canine
nuisance. See next question!"
1ea7d:  41 32 03 00 39          JE              G22,#03 [FALSE] 1eab9
1ea82:  e0 07 6b bf a1 d3 01 00 CALL_VS         1aefc (S672,#01) -> -(SP)
1ea8a:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ea90
1ea8e:  9b 02                   RET             #02
1ea90:  d9 0f 6b bf a1 dd 00    CALL_2S         1aefc (S673) -> -(SP)
1ea97:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ea9d
1ea9b:  9b 02                   RET             #02
1ea9d:  d9 0f 6b bf a1 e6 00    CALL_2S         1aefc (S674) -> -(SP)
1eaa4:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1eaaa
1eaa8:  9b 02                   RET             #02
1eaaa:  b3 ...                  PRINT_RET       "Why not drink some?"
1eab9:  b0                      RTRUE           

Routine 1eabc, 0 locals

1eabd:  f9 00 2e 3e a1 f1 7a b2 7a 82 
                               CALL_VN         b8f8 (S675,#7ab2,#7a82)
1eac7:  b0                      RTRUE           

Routine 1eac8, 0 locals

1eac9:  a0 32 4c                JZ              G22 [FALSE] 1ead6
1eacc:  cd 4f 34 a2 02          STORE           G24,S676
1ead1:  0d 33 0c                STORE           G23,#0c
1ead4:  9b 03                   RET             #03
1ead6:  41 32 01 4a             JE              G22,#01 [FALSE] 1eae2
1eada:  cd 4f 34 a2 07          STORE           G24,S677
1eadf:  0d 33 0a                STORE           G23,#0a
1eae2:  41 32 02 4a             JE              G22,#02 [FALSE] 1eaee
1eae6:  cd 4f 34 a2 0b          STORE           G24,S678
1eaeb:  0d 33 0a                STORE           G23,#0a
1eaee:  41 32 03 4a             JE              G22,#03 [FALSE] 1eafa
1eaf2:  cd 4f 34 a2 0f          STORE           G24,S679
1eaf7:  0d 33 0c                STORE           G23,#0c
1eafa:  b0                      RTRUE           

Routine 1eafc, 0 locals

1eafd:  41 32 01 00 4d          JE              G22,#01 [FALSE] 1eb4d
1eb02:  e0 07 6b bf a2 14 01 00 CALL_VS         1aefc (S680,#01) -> -(SP)
1eb0a:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1eb10
1eb0e:  9b 02                   RET             #02
1eb10:  d9 0f 6b bf a2 1d 00    CALL_2S         1aefc (S681) -> -(SP)
1eb17:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1eb1d
1eb1b:  9b 02                   RET             #02
1eb1d:  d9 0f 6b bf a2 2b 00    CALL_2S         1aefc (S682) -> -(SP)
1eb24:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1eb2a
1eb28:  9b 02                   RET             #02
1eb2a:  b3 ...                  PRINT_RET       "Try typing "jilnix" again and
see what happens!"
1eb4d:  41 32 02 00 71          JE              G22,#02 [FALSE] 1ebc1
1eb52:  e0 07 6b bf a2 30 01 00 CALL_VS         1aefc (S683,#01) -> -(SP)
1eb5a:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1eb60
1eb5e:  9b 02                   RET             #02
1eb60:  b3 ...                  PRINT_RET       "...or you can just type the
spell's name followed by what you want to cast a spell at, as if the spell's
name were a verb like "take"."
1ebc1:  41 32 03 00 4e          JE              G22,#03 [FALSE] 1ec12
1ebc6:  e0 07 6b bf a2 3d 01 00 CALL_VS         1aefc (S684,#01) -> -(SP)
1ebce:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ebd4
1ebd2:  9b 02                   RET             #02
1ebd4:  d9 0f 6b bf a2 46 00    CALL_2S         1aefc (S685) -> -(SP)
1ebdb:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ebe1
1ebdf:  9b 02                   RET             #02
1ebe1:  b3 ...                  PRINT_RET       "For which purpose you need a
spell book with a copy of the spell in."
1ec12:  41 32 04 00 48          JE              G22,#04 [FALSE] 1ec5d
1ec17:  e0 07 6b bf a2 4d 01 00 CALL_VS         1aefc (S686,#01) -> -(SP)
1ec1f:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ec25
1ec23:  9b 02                   RET             #02
1ec25:  d9 0f 6b bf a2 60 00    CALL_2S         1aefc (S687) -> -(SP)
1ec2c:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ec32
1ec30:  9b 02                   RET             #02
1ec32:  b3 ...                  PRINT_RET       "Try putting the scroll into
the book, or even binding it in."
1ec5d:  41 32 05 00 98          JE              G22,#05 [FALSE] 1ecf8
1ec62:  e0 07 6b bf a2 6c 01 00 CALL_VS         1aefc (S688,#01) -> -(SP)
1ec6a:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ec70
1ec6e:  9b 02                   RET             #02
1ec70:  d9 0f 6b bf a2 7c 00    CALL_2S         1aefc (S689) -> -(SP)
1ec77:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ec7d
1ec7b:  9b 02                   RET             #02
1ec7d:  d9 0f 6b bf a2 85 00    CALL_2S         1aefc (S690) -> -(SP)
1ec84:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ec8a
1ec88:  9b 02                   RET             #02
1ec8a:  d9 0f 6b bf a2 8f 00    CALL_2S         1aefc (S691) -> -(SP)
1ec91:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ec97
1ec95:  9b 02                   RET             #02
1ec97:  d9 0f 6b bf a2 95 00    CALL_2S         1aefc (S692) -> -(SP)
1ec9e:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1eca4
1eca2:  9b 02                   RET             #02
1eca4:  d9 0f 6b bf a2 9e 00    CALL_2S         1aefc (S693) -> -(SP)
1ecab:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ecb1
1ecaf:  9b 02                   RET             #02
1ecb1:  d9 0f 6b bf a2 a4 00    CALL_2S         1aefc (S694) -> -(SP)
1ecb8:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ecbe
1ecbc:  9b 02                   RET             #02
1ecbe:  d9 0f 6b bf a2 ae 00    CALL_2S         1aefc (S695) -> -(SP)
1ecc5:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1eccb
1ecc9:  9b 02                   RET             #02
1eccb:  b3 ...                  PRINT_RET       ""corpax spell: make small-bore
tunnel through light stone.""
1ecf8:  b0                      RTRUE           

Routine 1ecfc, 0 locals

1ecfd:  f9 00 2e 3e a2 b7 7b 42 7a bf 
                               CALL_VN         b8f8 (S696,#7b42,#7abf)
1ed07:  b0                      RTRUE           

Routine 1ed08, 0 locals

1ed09:  a0 32 4c                JZ              G22 [FALSE] 1ed16
1ed0c:  cd 4f 34 a2 dc          STORE           G24,S697
1ed11:  0d 33 0a                STORE           G23,#0a
1ed14:  9b 05                   RET             #05
1ed16:  41 32 01 4a             JE              G22,#01 [FALSE] 1ed22
1ed1a:  cd 4f 34 a2 e1          STORE           G24,S698
1ed1f:  0d 33 13                STORE           G23,#13
1ed22:  41 32 02 4a             JE              G22,#02 [FALSE] 1ed2e
1ed26:  cd 4f 34 a2 e8          STORE           G24,S699
1ed2b:  0d 33 0c                STORE           G23,#0c
1ed2e:  41 32 03 4a             JE              G22,#03 [FALSE] 1ed3a
1ed32:  cd 4f 34 a2 ed          STORE           G24,S700
1ed37:  0d 33 11                STORE           G23,#11
1ed3a:  41 32 04 4a             JE              G22,#04 [FALSE] 1ed46
1ed3e:  cd 4f 34 a2 f4          STORE           G24,S701
1ed43:  0d 33 11                STORE           G23,#11
1ed46:  41 32 05 4a             JE              G22,#05 [FALSE] 1ed52
1ed4a:  cd 4f 34 a2 fb          STORE           G24,S702
1ed4f:  0d 33 11                STORE           G23,#11
1ed52:  b0                      RTRUE           

Routine 1ed54, 0 locals

1ed55:  41 32 01 01 47          JE              G22,#01 [FALSE] 1ee9f
1ed5a:  e0 07 6b bf a3 01 01 00 CALL_VS         1aefc (S703,#01) -> -(SP)
1ed62:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ed68
1ed66:  9b 02                   RET             #02
1ed68:  d9 0f 6b bf a3 0a 00    CALL_2S         1aefc (S704) -> -(SP)
1ed6f:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ed75
1ed73:  9b 02                   RET             #02
1ed75:  d9 0f 6b bf a3 12 00    CALL_2S         1aefc (S705) -> -(SP)
1ed7c:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ed82
1ed80:  9b 02                   RET             #02
1ed82:  d9 0f 6b bf a3 1a 00    CALL_2S         1aefc (S706) -> -(SP)
1ed89:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ed8f
1ed8d:  9b 02                   RET             #02
1ed8f:  d9 0f 6b bf a3 20 00    CALL_2S         1aefc (S707) -> -(SP)
1ed96:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ed9c
1ed9a:  9b 02                   RET             #02
1ed9c:  d9 0f 6b bf a3 24 00    CALL_2S         1aefc (S708) -> -(SP)
1eda3:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1eda9
1eda7:  9b 02                   RET             #02
1eda9:  d9 0f 6b bf a3 29 00    CALL_2S         1aefc (S709) -> -(SP)
1edb0:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1edb6
1edb4:  9b 02                   RET             #02
1edb6:  d9 0f 6b bf a3 2e 00    CALL_2S         1aefc (S710) -> -(SP)
1edbd:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1edc3
1edc1:  9b 02                   RET             #02
1edc3:  d9 0f 6b bf a3 33 00    CALL_2S         1aefc (S711) -> -(SP)
1edca:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1edd0
1edce:  9b 02                   RET             #02
1edd0:  d9 0f 6b bf a3 39 00    CALL_2S         1aefc (S712) -> -(SP)
1edd7:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1eddd
1eddb:  9b 02                   RET             #02
1eddd:  d9 0f 6b bf a3 3d 00    CALL_2S         1aefc (S713) -> -(SP)
1ede4:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1edea
1ede8:  9b 02                   RET             #02
1edea:  d9 0f 6b bf a3 42 00    CALL_2S         1aefc (S714) -> -(SP)
1edf1:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1edf7
1edf5:  9b 02                   RET             #02
1edf7:  d9 0f 6b bf a3 48 00    CALL_2S         1aefc (S715) -> -(SP)
1edfe:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ee04
1ee02:  9b 02                   RET             #02
1ee04:  d9 0f 6b bf a3 4d 00    CALL_2S         1aefc (S716) -> -(SP)
1ee0b:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ee11
1ee0f:  9b 02                   RET             #02
1ee11:  d9 0f 6b bf a3 52 00    CALL_2S         1aefc (S717) -> -(SP)
1ee18:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ee1e
1ee1c:  9b 02                   RET             #02
1ee1e:  d9 0f 6b bf a3 57 00    CALL_2S         1aefc (S718) -> -(SP)
1ee25:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ee2b
1ee29:  9b 02                   RET             #02
1ee2b:  d9 0f 6b bf a3 5d 00    CALL_2S         1aefc (S719) -> -(SP)
1ee32:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ee38
1ee36:  9b 02                   RET             #02
1ee38:  d9 0f 6b bf a3 63 00    CALL_2S         1aefc (S720) -> -(SP)
1ee3f:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ee45
1ee43:  9b 02                   RET             #02
1ee45:  d9 0f 6b bf a3 66 00    CALL_2S         1aefc (S721) -> -(SP)
1ee4c:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ee52
1ee50:  9b 02                   RET             #02
1ee52:  d9 0f 6b bf a3 6a 00    CALL_2S         1aefc (S722) -> -(SP)
1ee59:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ee5f
1ee5d:  9b 02                   RET             #02
1ee5f:  d9 0f 6b bf a3 6e 00    CALL_2S         1aefc (S723) -> -(SP)
1ee66:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ee6c
1ee6a:  9b 02                   RET             #02
1ee6c:  d9 0f 6b bf a3 73 00    CALL_2S         1aefc (S724) -> -(SP)
1ee73:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ee79
1ee77:  9b 02                   RET             #02
1ee79:  d9 0f 6b bf a3 78 00    CALL_2S         1aefc (S725) -> -(SP)
1ee80:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ee86
1ee84:  9b 02                   RET             #02
1ee86:  b3 ...                  PRINT_RET       "...making 30 points in total."
1ee9f:  41 32 02 00 5d          JE              G22,#02 [FALSE] 1eeff
1eea4:  e0 07 6b bf a3 7c 01 00 CALL_VS         1aefc (S726,#01) -> -(SP)
1eeac:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1eeb2
1eeb0:  9b 02                   RET             #02
1eeb2:  d9 0f 6b bf a3 86 00    CALL_2S         1aefc (S727) -> -(SP)
1eeb9:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1eebf
1eebd:  9b 02                   RET             #02
1eebf:  d9 0f 6b bf a3 91 00    CALL_2S         1aefc (S728) -> -(SP)
1eec6:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1eecc
1eeca:  9b 02                   RET             #02
1eecc:  d9 0f 6b bf a3 a2 00    CALL_2S         1aefc (S729) -> -(SP)
1eed3:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1eed9
1eed7:  9b 02                   RET             #02
1eed9:  d9 0f 6b bf a3 b0 00    CALL_2S         1aefc (S730) -> -(SP)
1eee0:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1eee6
1eee4:  9b 02                   RET             #02
1eee6:  b3 ...                  PRINT_RET       "You'd better investigate,
then!"
1eeff:  41 32 03 00 61          JE              G22,#03 [FALSE] 1ef63
1ef04:  e0 07 6b bf a3 cf 01 00 CALL_VS         1aefc (S731,#01) -> -(SP)
1ef0c:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ef12
1ef10:  9b 02                   RET             #02
1ef12:  d9 0f 6b bf a3 d7 00    CALL_2S         1aefc (S732) -> -(SP)
1ef19:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ef1f
1ef1d:  9b 02                   RET             #02
1ef1f:  d9 0f 6b bf a3 df 00    CALL_2S         1aefc (S733) -> -(SP)
1ef26:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ef2c
1ef2a:  9b 02                   RET             #02
1ef2c:  b3 ...                  PRINT_RET       "The spectral Adventurer in the
pale corridor will appreciate receiving them."
1ef63:  41 32 04 00 67          JE              G22,#04 [FALSE] 1efcd
1ef68:  e0 07 6b bf a3 e2 01 00 CALL_VS         1aefc (S734,#01) -> -(SP)
1ef70:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ef76
1ef74:  9b 02                   RET             #02
1ef76:  d9 0f 6b bf a3 eb 00    CALL_2S         1aefc (S735) -> -(SP)
1ef7d:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ef83
1ef81:  9b 02                   RET             #02
1ef83:  d9 0f 6b bf a3 f4 00    CALL_2S         1aefc (S736) -> -(SP)
1ef8a:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ef90
1ef8e:  9b 02                   RET             #02
1ef90:  d9 0f 6b bf a4 01 00    CALL_2S         1aefc (S737) -> -(SP)
1ef97:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1ef9d
1ef9b:  9b 02                   RET             #02
1ef9d:  d9 0f 6b bf a4 0a 00    CALL_2S         1aefc (S738) -> -(SP)
1efa4:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1efaa
1efa8:  9b 02                   RET             #02
1efaa:  b3 ...                  PRINT_RET       "The golden fir-cone rests
inside the treehouse."
1efcd:  41 32 05 01 62          JE              G22,#05 [FALSE] 1f132
1efd2:  e0 07 6b bf a4 16 01 00 CALL_VS         1aefc (S739,#01) -> -(SP)
1efda:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1efe0
1efde:  9b 02                   RET             #02
1efe0:  d9 0f 6b bf a4 23 00    CALL_2S         1aefc (S740) -> -(SP)
1efe7:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1efed
1efeb:  9b 02                   RET             #02
1efed:  d9 0f 6b bf a4 46 00    CALL_2S         1aefc (S741) -> -(SP)
1eff4:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1effa
1eff8:  9b 02                   RET             #02
1effa:  d9 0f 6b bf a4 7e 00    CALL_2S         1aefc (S742) -> -(SP)
1f001:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1f007
1f005:  9b 02                   RET             #02
1f007:  d9 0f 6b bf a4 95 00    CALL_2S         1aefc (S743) -> -(SP)
1f00e:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1f014
1f012:  9b 02                   RET             #02
1f014:  d9 0f 6b bf a4 9f 00    CALL_2S         1aefc (S744) -> -(SP)
1f01b:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1f021
1f01f:  9b 02                   RET             #02
1f021:  d9 0f 6b bf a4 db 00    CALL_2S         1aefc (S745) -> -(SP)
1f028:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1f02e
1f02c:  9b 02                   RET             #02
1f02e:  d9 0f 6b bf a4 f2 00    CALL_2S         1aefc (S746) -> -(SP)
1f035:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1f03b
1f039:  9b 02                   RET             #02
1f03b:  d9 0f 6b bf a5 25 00    CALL_2S         1aefc (S747) -> -(SP)
1f042:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1f048
1f046:  9b 02                   RET             #02
1f048:  d9 0f 6b bf a5 48 00    CALL_2S         1aefc (S748) -> -(SP)
1f04f:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1f055
1f053:  9b 02                   RET             #02
1f055:  d9 0f 6b bf a5 57 00    CALL_2S         1aefc (S749) -> -(SP)
1f05c:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1f062
1f060:  9b 02                   RET             #02
1f062:  d9 0f 6b bf a5 69 00    CALL_2S         1aefc (S750) -> -(SP)
1f069:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1f06f
1f06d:  9b 02                   RET             #02
1f06f:  d9 0f 6b bf a5 7e 00    CALL_2S         1aefc (S751) -> -(SP)
1f076:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1f07c
1f07a:  9b 02                   RET             #02
1f07c:  d9 0f 6b bf a5 9b 00    CALL_2S         1aefc (S752) -> -(SP)
1f083:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1f089
1f087:  9b 02                   RET             #02
1f089:  d9 0f 6b bf a5 ef 00    CALL_2S         1aefc (S753) -> -(SP)
1f090:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1f096
1f094:  9b 02                   RET             #02
1f096:  d9 0f 6b bf a5 f7 00    CALL_2S         1aefc (S754) -> -(SP)
1f09d:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1f0a3
1f0a1:  9b 02                   RET             #02
1f0a3:  b3 ...                  PRINT_RET       "Though it's not half as much
fun as his books, nevertheless this game is dedicated (with every fibre of my
being) to the memory of E. E. "Doc" Smith. May he fire on all jets and find
clear ether."
1f132:  41 32 06 00 a0          JE              G22,#06 [FALSE] 1f1d5
1f137:  e0 07 6b bf a6 66 01 00 CALL_VS         1aefc (S755,#01) -> -(SP)
1f13f:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1f145
1f143:  9b 02                   RET             #02
1f145:  d9 0f 6b bf a6 73 00    CALL_2S         1aefc (S756) -> -(SP)
1f14c:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1f152
1f150:  9b 02                   RET             #02
1f152:  d9 0f 6b bf a6 7d 00    CALL_2S         1aefc (S757) -> -(SP)
1f159:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1f15f
1f15d:  9b 02                   RET             #02
1f15f:  d9 0f 6b bf a6 89 00    CALL_2S         1aefc (S758) -> -(SP)
1f166:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1f16c
1f16a:  9b 02                   RET             #02
1f16c:  d9 0f 6b bf a6 92 00    CALL_2S         1aefc (S759) -> -(SP)
1f173:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1f179
1f177:  9b 02                   RET             #02
1f179:  d9 0f 6b bf a6 9b 00    CALL_2S         1aefc (S760) -> -(SP)
1f180:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1f186
1f184:  9b 02                   RET             #02
1f186:  d9 0f 6b bf a6 a5 00    CALL_2S         1aefc (S761) -> -(SP)
1f18d:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1f193
1f191:  9b 02                   RET             #02
1f193:  d9 0f 6b bf a6 af 00    CALL_2S         1aefc (S762) -> -(SP)
1f19a:  41 00 01 44             JE              (SP)+,#01 [FALSE] 1f1a0
1f19e:  9b 02                   RET             #02
1f1a0:  b3 ...                  PRINT_RET       "Think about what the drum
does, and where else that might be interesting."
1f1d5:  b0                      RTRUE           

Routine 1f1d8, 0 locals

1f1d9:  f9 00 2e 3e a6 b5 7c 79 7b 55 
                               CALL_VN         b8f8 (S763,#7c79,#7b55)
1f1e3:  b0                      RTRUE           

Routine 1f1e4, 0 locals

1f1e5:  a0 32 4c                JZ              G22 [FALSE] 1f1f2
1f1e8:  cd 4f 34 a6 d9          STORE           G24,S764
1f1ed:  0d 33 07                STORE           G23,#07
1f1f0:  9b 06                   RET             #06
1f1f2:  41 32 01 4a             JE              G22,#01 [FALSE] 1f1fe
1f1f6:  cd 4f 34 a6 dc          STORE           G24,S765
1f1fb:  0d 33 0f                STORE           G23,#0f
1f1fe:  41 32 02 4a             JE              G22,#02 [FALSE] 1f20a
1f202:  cd 4f 34 a6 e2          STORE           G24,S766
1f207:  0d 33 11                STORE           G23,#11
1f20a:  41 32 03 4a             JE              G22,#03 [FALSE] 1f216
1f20e:  cd 4f 34 a6 e9          STORE           G24,S767
1f213:  0d 33 0d                STORE           G23,#0d
1f216:  41 32 04 4a             JE              G22,#04 [FALSE] 1f222
1f21a:  cd 4f 34 a6 ee          STORE           G24,S768
1f21f:  0d 33 0c                STORE           G23,#0c
1f222:  41 32 05 4a             JE              G22,#05 [FALSE] 1f22e
1f226:  cd 4f 34 a6 f3          STORE           G24,S769
1f22b:  0d 33 08                STORE           G23,#08
1f22e:  41 32 06 4a             JE              G22,#06 [FALSE] 1f23a
1f232:  cd 4f 34 a6 f7          STORE           G24,S770
1f237:  0d 33 08                STORE           G23,#08
1f23a:  b0                      RTRUE           

Routine 1f23c, 0 locals

1f23d:  41 32 01 47             JE              G22,#01 [FALSE] 1f246
1f241:  8f 71 a3                CALL_1N         1c68c
1f244:  9b 02                   RET             #02
1f246:  41 32 02 47             JE              G22,#02 [FALSE] 1f24f
1f24a:  8f 74 a5                CALL_1N         1d294
1f24d:  9b 02                   RET             #02
1f24f:  41 32 03 47             JE              G22,#03 [FALSE] 1f258
1f253:  8f 75 59                CALL_1N         1d564
1f256:  9b 02                   RET             #02
1f258:  41 32 04 47             JE              G22,#04 [FALSE] 1f261
1f25c:  8f 76 75                CALL_1N         1d9d4
1f25f:  9b 02                   RET             #02
1f261:  41 32 05 47             JE              G22,#05 [FALSE] 1f26a
1f265:  8f 76 f3                CALL_1N         1dbcc
1f268:  9b 02                   RET             #02
1f26a:  41 32 06 47             JE              G22,#06 [FALSE] 1f273
1f26e:  8f 78 35                CALL_1N         1e0d4
1f271:  9b 02                   RET             #02
1f273:  41 32 07 47             JE              G22,#07 [FALSE] 1f27c
1f277:  8f 78 f1                CALL_1N         1e3c4
1f27a:  9b 02                   RET             #02
1f27c:  41 32 08 47             JE              G22,#08 [FALSE] 1f285
1f280:  8f 79 8f                CALL_1N         1e63c
1f283:  9b 02                   RET             #02
1f285:  41 32 09 47             JE              G22,#09 [FALSE] 1f28e
1f289:  8f 7a 60                CALL_1N         1e980
1f28c:  9b 02                   RET             #02
1f28e:  41 32 0a 47             JE              G22,#0a [FALSE] 1f297
1f292:  8f 7a af                CALL_1N         1eabc
1f295:  9b 02                   RET             #02
1f297:  41 32 0b 47             JE              G22,#0b [FALSE] 1f2a0
1f29b:  8f 7b 3f                CALL_1N         1ecfc
1f29e:  9b 02                   RET             #02
1f2a0:  41 32 0c 47             JE              G22,#0c [FALSE] 1f2a9
1f2a4:  8f 7c 76                CALL_1N         1f1d8
1f2a7:  9b 02                   RET             #02
1f2a9:  9b 02                   RET             #02

Routine 1f2ac, 0 locals

1f2ad:  f9 00 2e 3e a6 fb 7c ae 7c 8f 
                               CALL_VN         b8f8 (S771,#7cae,#7c8f)
1f2b7:  b0                      RTRUE           

Routine 1f2b8, 0 locals

1f2b9:  a0 32 4c                JZ              G22 [FALSE] 1f2c6
1f2bc:  cd 4f 34 a7 40          STORE           G24,S772
1f2c1:  0d 33 02                STORE           G23,#02
1f2c4:  9b 0c                   RET             #0c
1f2c6:  41 32 01 4a             JE              G22,#01 [FALSE] 1f2d2
1f2ca:  cd 4f 34 a7 41          STORE           G24,S773
1f2cf:  0d 33 11                STORE           G23,#11
1f2d2:  41 32 02 4a             JE              G22,#02 [FALSE] 1f2de
1f2d6:  cd 4f 34 a7 48          STORE           G24,S774
1f2db:  0d 33 11                STORE           G23,#11
1f2de:  41 32 03 4a             JE              G22,#03 [FALSE] 1f2ea
1f2e2:  cd 4f 34 a7 4f          STORE           G24,S775
1f2e7:  0d 33 0e                STORE           G23,#0e
1f2ea:  41 32 04 4a             JE              G22,#04 [FALSE] 1f2f6
1f2ee:  cd 4f 34 a7 55          STORE           G24,S776
1f2f3:  0d 33 08                STORE           G23,#08
1f2f6:  41 32 05 4a             JE              G22,#05 [FALSE] 1f302
1f2fa:  cd 4f 34 a7 59          STORE           G24,S777
1f2ff:  0d 33 0b                STORE           G23,#0b
1f302:  41 32 06 4a             JE              G22,#06 [FALSE] 1f30e
1f306:  cd 4f 34 a7 5e          STORE           G24,S778
1f30b:  0d 33 0b                STORE           G23,#0b
1f30e:  41 32 07 4a             JE              G22,#07 [FALSE] 1f31a
1f312:  cd 4f 34 a7 62          STORE           G24,S779
1f317:  0d 33 0a                STORE           G23,#0a
1f31a:  41 32 08 4a             JE              G22,#08 [FALSE] 1f326
1f31e:  cd 4f 34 a7 66          STORE           G24,S780
1f323:  0d 33 0a                STORE           G23,#0a
1f326:  41 32 09 4a             JE              G22,#09 [FALSE] 1f332
1f32a:  cd 4f 34 a7 6a          STORE           G24,S781
1f32f:  0d 33 0d                STORE           G23,#0d
1f332:  41 32 0a 4a             JE              G22,#0a [FALSE] 1f33e
1f336:  cd 4f 34 a7 6f          STORE           G24,S782
1f33b:  0d 33 0c                STORE           G23,#0c
1f33e:  41 32 0b 4a             JE              G22,#0b [FALSE] 1f34a
1f342:  cd 4f 34 a7 74          STORE           G24,S783
1f347:  0d 33 0a                STORE           G23,#0a
1f34a:  41 32 0c 4a             JE              G22,#0c [FALSE] 1f356
1f34e:  cd 4f 34 a7 79          STORE           G24,S784
1f353:  0d 33 07                STORE           G23,#07
1f356:  b0                      RTRUE           

Routine 1f358, 1 local

1f359:  8f 7d 30                CALL_1N         1f4c0
1f35c:  e3 53 13 23 a7 7c       PUT_PROP        "(darkness object)",#23,S785
1f362:  0d 01 00                STORE           L00,#00
1f365:  42 01 0c 4d             JL              L00,#0c [FALSE] 1f374
1f369:  e1 27 3a db 01 00       STOREW          #3adb,L00,#00
1f36f:  95 01                   INC             L00
1f371:  8c ff f3                JUMP            1f365
1f374:  e1 17 3a db 00 01       STOREW          #3adb,#00,#01
1f37a:  e1 17 3a db 01 01       STOREW          #3adb,#01,#01
1f380:  e1 17 3a db 02 01       STOREW          #3adb,#02,#01
1f386:  e1 17 3a db 0b 01       STOREW          #3adb,#0b,#01
1f38c:  88 42 21 00             CALL_1S         10884 -> -(SP)
1f390:  b8                      RET_POPPED      

Routine 1f394, 0 locals

1f395:  2d ff 23                STORE           Gef,G13
1f398:  41 ff 03 55             JE              Gef,#03 [FALSE] 1f3af
1f39c:  b2 ...                  PRINT           "You have achieved a draw"
1f3af:  b0                      RTRUE           

Routine 1f3b0, 0 locals

1f3b1:  0d 23 01                STORE           G13,#01
1f3b4:  b3 ...                  PRINT_RET       "
You fall into a pit in these treacherously dark caves!"

Routine 1f3e0, 0 locals

1f3e1:  41 1d 1e 50             JE              G0d,#1e [FALSE] 1f3f3
1f3e5:  b2 ...                  PRINT           ", the perfect"
1f3f0:  8c 00 0d                JUMP            1f3fe
1f3f3:  b2 ...                  PRINT           ", the kind of"
1f3fe:  b2 ...                  PRINT           " score one would expect of "
1f411:  42 1d 1e dd             JL              G0d,#1e [TRUE] 1f430
1f415:  b3 ...                  PRINT_RET       "the Head of the Diplomatic
Service."
1f430:  42 1d 19 d5             JL              G0d,#19 [TRUE] 1f447
1f434:  b3 ...                  PRINT_RET       "a Minister in Residence."
1f447:  42 1d 14 d9             JL              G0d,#14 [TRUE] 1f462
1f44b:  b3 ...                  PRINT_RET       "an Ambassador
Plenipotentiary."
1f462:  42 1d 0e cd             JL              G0d,#0e [TRUE] 1f471
1f466:  b3 ...                  PRINT_RET       "a Diplomat."
1f471:  42 1d 08 d3             JL              G0d,#08 [TRUE] 1f486
1f475:  b3 ...                  PRINT_RET       "a Cultural Attache."
1f486:  42 1d 04 d1             JL              G0d,#04 [TRUE] 1f499
1f48a:  b3 ...                  PRINT_RET       "a Third Secretary."
1f499:  42 1d 01 d1             JL              G0d,#01 [TRUE] 1f4ac
1f49d:  b3 ...                  PRINT_RET       "an Embassy Clerk."
1f4ac:  b3 ...                  PRINT_RET       "the Embassy Stablehand."

Routine 1f4c0, 1 local

1f4c1:  ed 3f ff ff             ERASE_WINDOW    #ffff
1f4c5:  b2 ...                  PRINT           "












"
1f4d8:  10 00 21 01             LOADB           #00,#21 -> L00
1f4dc:  a0 01 45                JZ              L00 [FALSE] 1f4e2
1f4df:  0d 01 50                STORE           L00,#50
1f4e2:  55 01 32 00             SUB             L00,#32 -> -(SP)
1f4e6:  57 00 02 01             DIV             (SP)+,#02 -> L00
1f4ea:  f1 7f 02                SET_TEXT_STYLE  BOLDFACE
1f4ed:  0f 00 08 ff             LOADW           #00,#08 -> Gef
1f4f1:  28 02 ff ff             OR              #02,Gef -> Gef
1f4f5:  e1 5b 00 08 ff          STOREW          #00,#08,Gef
1f4fa:  2d ff 01                STORE           Gef,L00
1f4fd:  42 ff 00 cb             JL              Gef,#00 [TRUE] 1f50a
1f501:  e5 7f 20                PRINT_CHAR      ' '
1f504:  96 ff                   DEC             Gef
1f506:  a0 ff 3f f9             JZ              Gef [FALSE] 1f501
1f50a:  b2 ...                  PRINT           "The Meteor, The Stone And A
Long Glass Of Sherbet 
"
1f535:  f1 7f 00                SET_TEXT_STYLE  ROMAN
1f538:  b2 ...                  PRINT           "

"
1f53d:  2d ff 01                STORE           Gef,L00
1f540:  42 ff 00 cb             JL              Gef,#00 [TRUE] 1f54d
1f544:  e5 7f 20                PRINT_CHAR      ' '
1f547:  96 ff                   DEC             Gef
1f549:  a0 ff 3f f9             JZ              Gef [FALSE] 1f544
1f54d:  b2 ...                  PRINT           "         [Please press SPACE
to begin.]
"
1f572:  0f 00 08 ff             LOADW           #00,#08 -> Gef
1f576:  c9 2f ff fd ff ff       AND             #fffd,Gef -> Gef
1f57c:  e1 5b 00 08 ff          STOREW          #00,#08,Gef
1f581:  e0 13 7e 31 25 3b 27 ff CALL_VS         1f8c4 (#25,#3b27) -> Gef
1f589:  f6 57 01 00 00 01       READ_CHAR       #01,#00,0 -> L00
1f58f:  c1 95 01 20 0a 0d 3f f4 JE              L00,#20,#0a,#0d [FALSE] 1f589
1f597:  ed 3f ff ff             ERASE_WINDOW    #ffff
1f59b:  b0                      RTRUE           

Routine 1f59c, 0 locals
    Parsing routine for:
        "discard noun noun = [parse $7d67]"
        "go noun = [parse $7d67]"
        "leave noun = [parse $7d67]"

1f59d:  46 3a 06 c1             JIN             G2a,"compass" [TRUE] RTRUE
1f5a1:  b1                      RFALSE          

Routine 1f5a4, 1 local

1f5a5:  2d 4c 81                STORE           G3c,G71
1f5a8:  88 2a 94 01             CALL_1S         aa50 -> L00
1f5ac:  c1 8f 01 ff ff ce       JE              L00,#ffff [TRUE] 1f5be
1f5b2:  c1 8f 01 60 3e 3f f1    JE              L00,"to" [FALSE] 1f5a8
1f5b9:  41 5e 53 3f ec          JE              G4e,#53 [FALSE] 1f5a8
1f5be:  96 81                   DEC             G71
1f5c0:  75 81 4c 4d             SUB             G71,G3c -> G3d
1f5c4:  a0 4d 45                JZ              G3d [FALSE] 1f5ca
1f5c7:  8b ff ff                RET             #ffff
1f5ca:  c1 95 5e 54 53 52 00 1e JE              G4e,#54,#53,#52 [FALSE] 1f5ee
1f5d2:  2d 01 81                STORE           L00,G71
1f5d5:  2d 81 4c                STORE           G71,G3c
1f5d8:  88 2a 81 4b             CALL_1S         aa04 -> G3b
1f5dc:  c1 8f 4b 5f 6f 4a       JE              G3b,"the" [FALSE] 1f5ea
1f5e2:  43 4d 01 46             JG              G3d,#01 [FALSE] 1f5ea
1f5e6:  88 2a 81 4b             CALL_1S         aa04 -> G3b
1f5ea:  2d 81 01                STORE           G71,L00
1f5ed:  b0                      RTRUE           
1f5ee:  b1                      RFALSE          

Routine 1f5f0, 0 locals

1f5f1:  b1                      RFALSE          

Routine 1f5f4, 0 locals

1f5f5:  b1                      RFALSE          

Routine 1f5f8, 0 locals

1f5f9:  b1                      RFALSE          

Routine 1f5fc, 0 locals

1f5fd:  b1                      RFALSE          

Routine 1f600, 0 locals

1f601:  b1                      RFALSE          

Routine 1f604, 0 locals

1f605:  b1                      RFALSE          

Routine 1f608, 0 locals

1f609:  b1                      RFALSE          

Routine 1f60c, 0 locals

1f60d:  b1                      RFALSE          

Routine 1f610, 0 locals

1f611:  b1                      RFALSE          

Routine 1f614, 1 local

1f615:  b1                      RFALSE          

Routine 1f618, 2 locals

1f619:  b1                      RFALSE          

Routine 1f61c, 2 locals

1f61d:  b1                      RFALSE          

Routine 1f620, 1 local

1f621:  2d 01 01                STORE           L00,L00
1f624:  8b ff ff                RET             #ffff

Routine 1f628, 0 locals
    Action routine for:
        "help"

1f629:  8f 6b e3                CALL_1N         1af8c
1f62c:  b0                      RTRUE           

Routine 1f630, 0 locals
    Action routine for:
        "untie noun"

1f631:  b2 ...                  PRINT           "You would gain nothing by
untying "
1f64a:  da 2f 2f 17 3a          CALL_2N         bc5c (G2a)
1f64f:  b3 ...                  PRINT_RET       "."

Routine 1f654, 0 locals
    Action routine for:
        "l through noun at noun"

1f655:  f9 1a 2c b1 5e 3b 3a    CALL_VN         b2c4 (#5e,G2b,G2a)
1f65c:  b0                      RTRUE           

Routine 1f660, 0 locals
    Action routine for:
        "count noun"

1f661:  b3 ...                  PRINT_RET       "Arithmetical correctness gone
mad."

Routine 1f67c, 0 locals
    Action routine for:
        "answer"
        "answer special"

1f67d:  b3 ...                  PRINT_RET       "[To address somebody, please
type "name, what you want to say". For example: "amilia, hello".]"

Routine 1f6cc, 0 locals
    Action routine for:
        "grind noun with noun"

1f6cd:  f9 1b 2c b1 43 3a       CALL_VN         b2c4 (#43,G2a)
1f6d3:  b0                      RTRUE           

Routine 1f6d4, 0 locals
    Action routine for:
        "poison noun"

1f6d5:  b3 ...                  PRINT_RET       "You'll have to be more exact
about how to do that."

Routine 1f6fc, 3 locals

1f6fd:  88 2a 94 03             CALL_1S         aa50 -> L02
1f701:  c1 8f 03 ff ff 45       JE              L02,#ffff [FALSE] 1f70a
1f707:  8b ff ff                RET             #ffff
1f70a:  96 81                   DEC             G71
1f70c:  a0 02 00 24             JZ              L01 [FALSE] 1f732
1f710:  d9 2f 2a 9a 81 03       CALL_2S         aa68 (G71) -> L02
1f716:  70 03 01 00             LOADB           L02,L00 -> -(SP)
1f71a:  42 00 30 d3             JL              (SP)+,#30 [TRUE] 1f72f
1f71e:  70 03 01 00             LOADB           L02,L00 -> -(SP)
1f722:  43 00 39 cb             JG              (SP)+,#39 [TRUE] 1f72f
1f726:  70 03 01 00             LOADB           L02,L00 -> -(SP)
1f72a:  55 00 30 00             SUB             (SP)+,#30 -> -(SP)
1f72e:  b8                      RET_POPPED      
1f72f:  8b ff ff                RET             #ffff
1f732:  c1 83 03 56 15 56 6f 45 JE              L02,"nought","oh" [FALSE] 1f73d
1f73a:  95 81                   INC             G71
1f73c:  b1                      RFALSE          
1f73d:  e8 bf 81                PUSH            G71
1f740:  95 81                   INC             G71
1f742:  d9 2f 2a a3 00 03       CALL_2S         aa8c ((SP)+) -> L02
1f748:  c1 8f 03 fc 18 c6       JE              L02,#fc18 [TRUE] 1f752
1f74e:  42 03 0a c7             JL              L02,#0a [TRUE] 1f757
1f752:  cd 4f 03 ff ff          STORE           L02,#ffff
1f757:  ab 03                   RET             L02

Routine 1f75c, 8 locals
    Parsing routine for:
        "adjust noun to [parse $7dd7]"
        "adjust noun to [parse $7dd7] degrees"
        "rotate noun to [parse $7dd7]"
        "rotate noun to [parse $7dd7] degrees"

1f75d:  e8 bf 81                PUSH            G71
1f760:  95 81                   INC             G71
1f762:  d9 2f 2a a3 00 01       CALL_2S         aa8c ((SP)+) -> L00
1f768:  c1 8f 01 fc 18 45       JE              L00,#fc18 [FALSE] 1f771
1f76e:  8b ff ff                RET             #ffff
1f771:  d9 2f 2a 94 81 04       CALL_2S         aa50 (G71) -> L03
1f777:  c1 8f 04 ff ff 47       JE              L03,#ffff [FALSE] 1f782
1f77d:  56 01 64 4b             MUL             L00,#64 -> G3b
1f781:  b0                      RTRUE           
1f782:  d9 2f 2a 94 81 02       CALL_2S         aa50 (G71) -> L01
1f788:  c1 8f 02 ff ff 45       JE              L01,#ffff [FALSE] 1f791
1f78e:  8b ff ff                RET             #ffff
1f791:  96 81                   DEC             G71
1f793:  c1 8f 04 58 43 48       JE              L03,"point" [FALSE] 1f79f
1f799:  0d 08 01                STORE           L07,#01
1f79c:  8c 00 25                JUMP            1f7c2
1f79f:  55 81 01 00             SUB             G71,#01 -> -(SP)
1f7a3:  d9 2f 2a 9a 00 00       CALL_2S         aa68 ((SP)+) -> -(SP)
1f7a9:  50 00 00 00             LOADB           (SP)+,#00 -> -(SP)
1f7ad:  41 00 2e 50             JE              (SP)+,#2e [FALSE] 1f7bf
1f7b1:  55 81 01 00             SUB             G71,#01 -> -(SP)
1f7b5:  d9 2f 2a a0 00 00       CALL_2S         aa80 ((SP)+) -> -(SP)
1f7bb:  41 00 01 c5             JE              (SP)+,#01 [TRUE] 1f7c2
1f7bf:  8b ff ff                RET             #ffff
1f7c2:  e0 1b 7d bf 00 08 05    CALL_VS         1f6fc (#00,L07) -> L04
1f7c9:  c1 8f 05 ff ff 45       JE              L04,#ffff [FALSE] 1f7d2
1f7cf:  8b ff ff                RET             #ffff
1f7d2:  e0 1b 7d bf 01 08 06    CALL_VS         1f6fc (#01,L07) -> L05
1f7d9:  e0 1b 7d bf 02 08 07    CALL_VS         1f6fc (#02,L07) -> L06
1f7e0:  56 05 0a 03             MUL             L04,#0a -> L02
1f7e4:  42 06 00 c9             JL              L05,#00 [TRUE] 1f7ef
1f7e8:  74 03 06 03             ADD             L02,L05 -> L02
1f7ec:  8c 00 05                JUMP            1f7f2
1f7ef:  0d 07 00                STORE           L06,#00
1f7f2:  41 08 01 5a             JE              L07,#01 [FALSE] 1f80e
1f7f6:  0d 02 01                STORE           L01,#01
1f7f9:  e0 2b 7d bf 02 08 00    CALL_VS         1f6fc (L01,L07) -> -(SP)
1f800:  42 00 00 c7             JL              (SP)+,#00 [TRUE] 1f809
1f804:  95 02                   INC             L01
1f806:  8c ff f2                JUMP            1f7f9
1f809:  96 81                   DEC             G71
1f80b:  8c 00 04                JUMP            1f810
1f80e:  95 81                   INC             G71
1f810:  56 01 64 00             MUL             L00,#64 -> -(SP)
1f814:  74 00 03 4b             ADD             (SP)+,L02 -> G3b
1f818:  42 07 05 c4             JL              L06,#05 [TRUE] 1f81e
1f81c:  95 4b                   INC             G3b
1f81e:  b0                      RTRUE           

Routine 1f820, 0 locals
    Action routine for:
        "adjust noun to [parse $7dd7]"
        "adjust noun to [parse $7dd7] degrees"
        "rotate noun to [parse $7dd7]"
        "rotate noun to [parse $7dd7] degrees"

1f821:  b3 ...                  PRINT_RET       "Pardon?"

Routine 1f828, 0 locals
    Action routine for:
        "bite noun"

1f829:  41 22 14 49             JE              G12,#14 [FALSE] 1f834
1f82d:  f9 1b 2c b1 43 3a       CALL_VN         b2c4 (#43,G2a)
1f833:  b0                      RTRUE           
1f834:  b3 ...                  PRINT_RET       "You would be grinding your
teeth down for nothing."

Routine 1f85c, 0 locals
    Action routine for:
        "bark"
        "bark special"

1f85d:  41 22 e1 00 5c          JE              G12,#e1 [FALSE] 1f8bc
1f862:  b2 ...                  PRINT           ""Woof! Woof!"
"
1f871:  26 e6 10 00 47          JIN             "agents of the Duchy",G00
[FALSE] 1f8bb
1f876:  b3 ...                  PRINT_RET       "
The agents shoo you away. The last thing they want is a barking dog to draw
attention to them!"
1f8bb:  b0                      RTRUE           
1f8bc:  b3 ...                  PRINT_RET       "What?"

Routine 1f8c4, 8 locals

1f8c5:  4f 02 00 03             LOADW           L01,#00 -> L02
1f8c9:  54 03 06 00             ADD             L02,#06 -> -(SP)
1f8cd:  ea bf 00                SPLIT_WINDOW    (SP)+
1f8d0:  eb 7f 01                SET_WINDOW      #01
1f8d3:  10 00 21 04             LOADB           #00,#21 -> L03
1f8d7:  a0 04 45                JZ              L03 [FALSE] 1f8dd
1f8da:  0d 04 50                STORE           L03,#50
1f8dd:  75 04 01 00             SUB             L03,L00 -> -(SP)
1f8e1:  57 00 02 05             DIV             (SP)+,#02 -> L04
1f8e5:  f1 7f 01                SET_TEXT_STYLE  REVERSE
1f8e8:  55 05 02 04             SUB             L04,#02 -> L03
1f8ec:  0d 06 05                STORE           L05,#05
1f8ef:  0d 07 01                STORE           L06,#01
1f8f2:  ef 6f 04 04             SET_CURSOR      #04,L03
1f8f6:  54 01 04 00             ADD             L00,#04 -> -(SP)
1f8fa:  e9 7f ff                PULL            Gef
1f8fd:  42 ff 00 cb             JL              Gef,#00 [TRUE] 1f90a
1f901:  e5 7f 20                PRINT_CHAR      ' '
1f904:  96 ff                   DEC             Gef
1f906:  a0 ff 3f f9             JZ              Gef [FALSE] 1f901
1f90a:  ef af 06 04             SET_CURSOR      L05,L03
1f90e:  54 01 04 00             ADD             L00,#04 -> -(SP)
1f912:  e9 7f ff                PULL            Gef
1f915:  42 ff 00 cb             JL              Gef,#00 [TRUE] 1f922
1f919:  e5 7f 20                PRINT_CHAR      ' '
1f91c:  96 ff                   DEC             Gef
1f91e:  a0 ff 3f f9             JZ              Gef [FALSE] 1f919
1f922:  ef af 06 05             SET_CURSOR      L05,L04
1f926:  6f 02 07 08             LOADW           L01,L06 -> L07
1f92a:  a0 08 c4                JZ              L07 [TRUE] 1f92f
1f92d:  ad 08                   PRINT_PADDR     L07
1f92f:  95 06                   INC             L05
1f931:  95 07                   INC             L06
1f933:  63 07 03 3f d4          JG              L06,L02 [FALSE] 1f90a
1f938:  ef af 06 04             SET_CURSOR      L05,L03
1f93c:  54 01 04 00             ADD             L00,#04 -> -(SP)
1f940:  e9 7f ff                PULL            Gef
1f943:  42 ff 00 cb             JL              Gef,#00 [TRUE] 1f950
1f947:  e5 7f 20                PRINT_CHAR      ' '
1f94a:  96 ff                   DEC             Gef
1f94c:  a0 ff 3f f9             JZ              Gef [FALSE] 1f947
1f950:  f2 7f 01                BUFFER_MODE     #01
1f953:  f1 7f 00                SET_TEXT_STYLE  ROMAN
1f956:  eb 7f 00                SET_WINDOW      #00
1f959:  ea 7f 01                SPLIT_WINDOW    #01
1f95c:  f3 3f ff ff             OUTPUT_STREAM   #ffff
1f960:  b2 ...                  PRINT           "[ "
1f965:  0d 07 01                STORE           L06,#01
1f968:  6f 02 07 04             LOADW           L01,L06 -> L03
1f96c:  a0 04 c4                JZ              L03 [TRUE] 1f971
1f96f:  ad 04                   PRINT_PADDR     L03
1f971:  95 07                   INC             L06
1f973:  63 07 03 4c             JG              L06,L02 [FALSE] 1f981
1f977:  b2 ...                  PRINT           "]

"
1f97e:  8c 00 0b                JUMP            1f98a
1f981:  b2 ...                  PRINT           "
  "
1f986:  90 00 bf e0             JZ              #00 [TRUE] 1f968
1f98a:  f3 7f 01                OUTPUT_STREAM   OUTPUT_ENABLE
1f98d:  b0                      RTRUE           

Routine 1f990, 5 locals

1f991:  c9 8f 01 c0 00 00       AND             L00,#c000 -> -(SP)
1f997:  a0 00 80 64             JZ              (SP)+ [TRUE] 1f9fd
1f99b:  49 01 ff 00             AND             L00,#ff -> -(SP)
1f99f:  cf 2f 2d bc 00 04       LOADW           #2dbc,(SP)+ -> L03
1f9a5:  da 2f 2f 27 04          CALL_2N         bc9c (L03)
1f9aa:  b2 ...                  PRINT           "::"
1f9af:  c9 8f 01 80 00 00       AND             L00,#8000 -> -(SP)
1f9b5:  a0 00 51                JZ              (SP)+ [FALSE] 1f9c7
1f9b8:  c9 8f 01 3f 00 00       AND             L00,#3f00 -> -(SP)
1f9be:  d7 8f 00 01 00 01       DIV             (SP)+,#0100 -> L00
1f9c4:  8c 00 38                JUMP            1f9fd
1f9c7:  c9 8f 01 7f 00 00       AND             L00,#7f00 -> -(SP)
1f9cd:  d7 8f 00 01 00 01       DIV             (SP)+,#0100 -> L00
1f9d3:  51 04 03 05             GET_PROP        L03,#03 -> L04
1f9d7:  4f 05 00 00             LOADW           L04,#00 -> -(SP)
1f9db:  a0 00 d7                JZ              (SP)+ [TRUE] 1f9f3
1f9de:  43 01 00 53             JG              L00,#00 [FALSE] 1f9f3
1f9e2:  50 05 02 00             LOADB           L04,#02 -> -(SP)
1f9e6:  74 05 00 00             ADD             L04,(SP)+ -> -(SP)
1f9ea:  54 00 03 05             ADD             (SP)+,#03 -> L04
1f9ee:  96 01                   DEC             L00
1f9f0:  8c ff e6                JUMP            1f9d7
1f9f3:  4f 05 00 00             LOADW           L04,#00 -> -(SP)
1f9f7:  c9 8f 00 7f ff 01       AND             (SP)+,#7fff -> L00
1f9fd:  cd 4f 02 2d de          STORE           L01,#2dde
1fa02:  4f 02 00 03             LOADW           L01,#00 -> L02
1fa06:  43 01 00 4d             JG              L00,#00 [FALSE] 1fa15
1fa0a:  62 01 03 49             JL              L00,L02 [FALSE] 1fa15
1fa0e:  6f 02 01 00             LOADW           L01,L00 -> -(SP)
1fa12:  a0 00 56                JZ              (SP)+ [FALSE] 1fa29
1fa15:  b2 ...                  PRINT           "<number "
1fa1e:  e6 bf 01                PRINT_NUM       L00
1fa21:  b2 ...                  PRINT           ">"
1fa26:  8c 00 08                JUMP            1fa2f
1fa29:  6f 02 01 00             LOADW           L01,L00 -> -(SP)
1fa2d:  ad 00                   PRINT_PADDR     (SP)+
1fa2f:  b0                      RTRUE           

Routine 1fa30, 4 locals

1fa31:  e0 2b 7f 1c 01 02 04    CALL_VS         1fc70 (L00,L01) -> L03
1fa38:  a0 04 4b                JZ              L03 [FALSE] 1fa44
1fa3b:  f9 0a 7f e0 a7 b4 01 02 CALL_VN         1ff80 (S793,L00,L01)
1fa43:  b0                      RTRUE           
1fa44:  e1 9b 04 00 03          STOREW          L03,#00,L02
1fa49:  b0                      RTRUE           

Routine 1fa4c, 3 locals

1fa4d:  e0 2b 7f 1c 01 02 03    CALL_VS         1fc70 (L00,L01) -> L02
1fa54:  a0 03 58                JZ              L02 [FALSE] 1fa6d
1fa57:  42 02 01 cb             JL              L01,#01 [TRUE] 1fa64
1fa5b:  42 02 40 47             JL              L01,#40 [FALSE] 1fa64
1fa5f:  71 01 02 00             GET_PROP        L00,L01 -> -(SP)
1fa63:  b8                      RET_POPPED      
1fa64:  f9 0a 7f e0 a7 b6 01 02 CALL_VN         1ff80 (S794,L00,L01)
1fa6c:  b0                      RTRUE           
1fa6d:  4f 03 00 00             LOADW           L02,#00 -> -(SP)
1fa71:  b8                      RET_POPPED      

Routine 1fa74, 15 locals

1fa75:  42 01 01 cd             JL              L00,#01 [TRUE] 1fa84
1fa79:  d5 1f 01 e5 ff 00       SUB             #01e5,#ff -> -(SP)
1fa7f:  63 01 00 00 5c          JG              L00,(SP)+ [FALSE] 1fade
1fa84:  d9 2f 80 08 01 00       CALL_2S         20020 (L00) -> -(SP)
1fa8a:  e9 7f ff                PULL            Gef
1fa8d:  41 ff 02 00 29          JE              Gef,#02 [FALSE] 1fab9
1fa92:  41 02 45 00 21          JE              L01,#45 [FALSE] 1fab6
1fa97:  2d 0c fa                STORE           L0b,Gea
1fa9a:  2d fa fb                STORE           Gea,Geb
1fa9d:  2d fb 01                STORE           Geb,L00
1faa0:  2d f9 37                STORE           Ge9,G27
1faa3:  ec aa ab 01 03 04 05 06 07 08 09 
                               CALL_VS2        L00 (L02,L03,L04,L05,L06,L07) ->
L08
1faae:  2d fb fa                STORE           Geb,Gea
1fab1:  2d fa 0c                STORE           Gea,L0b
1fab4:  ab 09                   RET             L08
1fab6:  8c 00 95                JUMP            1fb4c
1fab9:  41 ff 03 00 1f          JE              Gef,#03 [FALSE] 1fadb
1fabe:  41 02 46 45             JE              L01,#46 [FALSE] 1fac5
1fac2:  ad 01                   PRINT_PADDR     L00
1fac4:  b0                      RTRUE           
1fac5:  41 02 47 51             JE              L01,#47 [FALSE] 1fad8
1fac9:  f3 6f 03 03             OUTPUT_STREAM   REDIRECT_ENABLE,L02
1facd:  ad 01                   PRINT_PADDR     L00
1facf:  f3 3f ff fd             OUTPUT_STREAM   #fffd
1fad3:  4f 03 00 00             LOADW           L02,#00 -> -(SP)
1fad7:  b8                      RET_POPPED      
1fad8:  8c 00 73                JUMP            1fb4c
1fadb:  8c 00 70                JUMP            1fb4c
1fade:  ff 7f 03 00 23          CHECK_ARG_COUNT #03 [FALSE] 1fb04
1fae3:  95 0a                   INC             L09
1fae5:  ff 7f 04 00 1c          CHECK_ARG_COUNT #04 [FALSE] 1fb04
1faea:  95 0a                   INC             L09
1faec:  ff 7f 05 56             CHECK_ARG_COUNT #05 [FALSE] 1fb04
1faf0:  95 0a                   INC             L09
1faf2:  ff 7f 06 50             CHECK_ARG_COUNT #06 [FALSE] 1fb04
1faf6:  95 0a                   INC             L09
1faf8:  ff 7f 07 4a             CHECK_ARG_COUNT #07 [FALSE] 1fb04
1fafc:  95 0a                   INC             L09
1fafe:  ff 7f 08 44             CHECK_ARG_COUNT #08 [FALSE] 1fb04
1fb02:  95 0a                   INC             L09
1fb04:  42 02 00 80 24          JL              L01,#00 [TRUE] 1fb2b
1fb09:  42 02 40 00 1f          JL              L01,#40 [FALSE] 1fb2b
1fb0e:  72 01 02 09             GET_PROP_ADDR   L00,L01 -> L08
1fb12:  a0 09 48                JZ              L08 [FALSE] 1fb1b
1fb15:  0d 0e 02                STORE           L0d,#02
1fb18:  8c 00 0f                JUMP            1fb28
1fb1b:  72 01 02 ff             GET_PROP_ADDR   L00,L01 -> Gef
1fb1f:  a0 ff c5                JZ              Gef [TRUE] 1fb25
1fb22:  a4 ff ff                GET_PROP_LEN    Gef -> Gef
1fb25:  2d 0e ff                STORE           L0d,Gef
1fb28:  8c 00 34                JUMP            1fb5d
1fb2b:  42 02 40 d5             JL              L01,#40 [TRUE] 1fb42
1fb2f:  42 02 45 51             JL              L01,#45 [FALSE] 1fb42
1fb33:  46 01 01 4d             JIN             L00,"Class" [FALSE] 1fb42
1fb37:  ec 2a bf 80 3d 01 02 03 04 00 
                               CALL_VS2        200f4 (L00,L01,L02,L03) -> -(SP)
1fb41:  b8                      RET_POPPED      
1fb42:  e0 2b 7f 1c 01 02 09    CALL_VS         1fc70 (L00,L01) -> L08
1fb49:  a0 09 4b                JZ              L08 [FALSE] 1fb55
1fb4c:  f9 0a 7f e0 a7 b7 01 02 CALL_VN         1ff80 (S795,L00,L01)
1fb54:  b0                      RTRUE           
1fb55:  55 09 01 00             SUB             L08,#01 -> -(SP)
1fb59:  30 00 00 0e             LOADB           #00,(SP)+ -> L0d
1fb5d:  36 02 0f 00             MUL             #02,L0e -> -(SP)
1fb61:  62 00 0e 00 dd          JL              (SP)+,L0d [FALSE] 1fc41
1fb66:  6f 09 0f 00             LOADW           L08,L0e -> -(SP)
1fb6a:  c1 8f 00 ff ff c0       JE              (SP)+,#ffff [TRUE] RFALSE
1fb70:  6f 09 0f 00             LOADW           L08,L0e -> -(SP)
1fb74:  d9 2f 80 08 00 00       CALL_2S         20020 ((SP)+) -> -(SP)
1fb7a:  e9 7f ff                PULL            Gef
1fb7d:  41 ff 02 00 ab          JE              Gef,#02 [FALSE] 1fc2b
1fb82:  2d 0c fa                STORE           L0b,Gea
1fb85:  2d fa fb                STORE           Gea,Geb
1fb88:  2d fb 01                STORE           Geb,L00
1fb8b:  2d 0d f9                STORE           L0c,Ge9
1fb8e:  41 02 06 48             JE              L01,#06 [FALSE] 1fb98
1fb92:  2d f9 3d                STORE           Ge9,G2d
1fb95:  8c 00 05                JUMP            1fb9b
1fb98:  2d f9 37                STORE           Ge9,G27
1fb9b:  2d ff 0a                STORE           Gef,L09
1fb9e:  41 ff 00 4c             JE              Gef,#00 [FALSE] 1fbac
1fba2:  6f 09 0f 00             LOADW           L08,L0e -> -(SP)
1fba6:  a8 00 0b                CALL_1S         (SP)+ -> L0a
1fba9:  8c 00 70                JUMP            1fc1a
1fbac:  41 ff 01 4d             JE              Gef,#01 [FALSE] 1fbbb
1fbb0:  6f 09 0f 00             LOADW           L08,L0e -> -(SP)
1fbb4:  79 00 03 0b             CALL_2S         (SP)+ (L02) -> L0a
1fbb8:  8c 00 61                JUMP            1fc1a
1fbbb:  41 ff 02 4f             JE              Gef,#02 [FALSE] 1fbcc
1fbbf:  6f 09 0f 00             LOADW           L08,L0e -> -(SP)
1fbc3:  e0 ab 00 03 04 0b       CALL_VS         (SP)+ (L02,L03) -> L0a
1fbc9:  8c 00 50                JUMP            1fc1a
1fbcc:  41 ff 03 50             JE              Gef,#03 [FALSE] 1fbde
1fbd0:  6f 09 0f 00             LOADW           L08,L0e -> -(SP)
1fbd4:  e0 aa 00 03 04 05 0b    CALL_VS         (SP)+ (L02,L03,L04) -> L0a
1fbdb:  8c 00 3e                JUMP            1fc1a
1fbde:  41 ff 04 52             JE              Gef,#04 [FALSE] 1fbf2
1fbe2:  6f 09 0f 00             LOADW           L08,L0e -> -(SP)
1fbe6:  ec aa bf 00 03 04 05 06 0b 
                               CALL_VS2        (SP)+ (L02,L03,L04,L05) -> L0a
1fbef:  8c 00 2a                JUMP            1fc1a
1fbf2:  41 ff 05 53             JE              Gef,#05 [FALSE] 1fc07
1fbf6:  6f 09 0f 00             LOADW           L08,L0e -> -(SP)
1fbfa:  ec aa af 00 03 04 05 06 07 0b 
                               CALL_VS2        (SP)+ (L02,L03,L04,L05,L06) ->
L0a
1fc04:  8c 00 15                JUMP            1fc1a
1fc07:  41 ff 06 51             JE              Gef,#06 [FALSE] 1fc1a
1fc0b:  6f 09 0f 00             LOADW           L08,L0e -> -(SP)
1fc0f:  ec aa ab 00 03 04 05 06 07 08 0b 
                               CALL_VS2        (SP)+ (L02,L03,L04,L05,L06,L07)
-> L0a
1fc1a:  2d fb fa                STORE           Geb,Gea
1fc1d:  2d fa 0c                STORE           Gea,L0b
1fc20:  2d f9 0d                STORE           Ge9,L0c
1fc23:  a0 0b c4                JZ              L0a [TRUE] 1fc28
1fc26:  ab 0b                   RET             L0a
1fc28:  8c 00 13                JUMP            1fc3c
1fc2b:  41 ff 03 4a             JE              Gef,#03 [FALSE] 1fc37
1fc2f:  6f 09 0f 00             LOADW           L08,L0e -> -(SP)
1fc33:  ad 00                   PRINT_PADDR     (SP)+
1fc35:  bb                      NEW_LINE        
1fc36:  b0                      RTRUE           
1fc37:  6f 09 0f 00             LOADW           L08,L0e -> -(SP)
1fc3b:  b8                      RET_POPPED      
1fc3c:  95 0f                   INC             L0e
1fc3e:  8c ff 1e                JUMP            1fb5d
1fc41:  b1                      RFALSE          

Routine 1fc44, 3 locals

1fc45:  e0 2b 7f 1c 01 02 03    CALL_VS         1fc70 (L00,L01) -> L02
1fc4c:  a0 03 4b                JZ              L02 [FALSE] 1fc58
1fc4f:  f9 0a 7f e0 a7 b9 01 02 CALL_VN         1ff80 (S796,L00,L01)
1fc57:  b0                      RTRUE           
1fc58:  2d ff 03                STORE           Gef,L02
1fc5b:  0d fe 00                STORE           Gee,#00
1fc5e:  6f ff fe fd             LOADW           Gef,Gee -> Ged
1fc62:  e8 bf fd                PUSH            Ged
1fc65:  95 fd                   INC             Ged
1fc67:  e1 ab ff fe fd          STOREW          Gef,Gee,Ged
1fc6c:  b8                      RET_POPPED      

Routine 1fc70, 5 locals

1fc71:  42 02 40 4b             JL              L01,#40 [FALSE] 1fc7e
1fc75:  43 02 00 47             JG              L01,#00 [FALSE] 1fc7e
1fc79:  72 01 02 00             GET_PROP_ADDR   L00,L01 -> -(SP)
1fc7d:  b8                      RET_POPPED      
1fc7e:  c9 8f 02 80 00 00       AND             L01,#8000 -> -(SP)
1fc84:  a0 00 80 47             JZ              (SP)+ [TRUE] 1fccd
1fc88:  49 02 ff 00             AND             L01,#ff -> -(SP)
1fc8c:  cf 2f 2d bc 00 05       LOADW           #2dbc,(SP)+ -> L04
1fc92:  52 05 03 00             GET_PROP_ADDR   L04,#03 -> -(SP)
1fc96:  a0 00 c0                JZ              (SP)+ [TRUE] RFALSE
1fc99:  e0 2b 7f 83 01 05 00    CALL_VS         1fe0c (L00,L04) -> -(SP)
1fca0:  a0 00 c0                JZ              (SP)+ [TRUE] RFALSE
1fca3:  c9 8f 02 7f 00 00       AND             L01,#7f00 -> -(SP)
1fca9:  d7 8f 00 01 00 02       DIV             (SP)+,#0100 -> L01
1fcaf:  51 05 03 03             GET_PROP        L04,#03 -> L02
1fcb3:  43 02 00 53             JG              L01,#00 [FALSE] 1fcc8
1fcb7:  96 02                   DEC             L01
1fcb9:  50 03 02 00             LOADB           L02,#02 -> -(SP)
1fcbd:  74 03 00 00             ADD             L02,(SP)+ -> -(SP)
1fcc1:  54 00 03 03             ADD             (SP)+,#03 -> L02
1fcc5:  8c ff ed                JUMP            1fcb3
1fcc8:  54 03 03 00             ADD             L02,#03 -> -(SP)
1fccc:  b8                      RET_POPPED      
1fccd:  c9 8f 02 40 00 00       AND             L01,#4000 -> -(SP)
1fcd3:  a0 00 80 6b             JZ              (SP)+ [TRUE] 1fd40
1fcd7:  49 02 ff 00             AND             L01,#ff -> -(SP)
1fcdb:  cf 2f 2d bc 00 05       LOADW           #2dbc,(SP)+ -> L04
1fce1:  c9 8f 02 3f 00 00       AND             L01,#3f00 -> -(SP)
1fce7:  d7 8f 00 01 00 02       DIV             (SP)+,#0100 -> L01
1fced:  e0 2b 7f 83 01 05 00    CALL_VS         1fe0c (L00,L04) -> -(SP)
1fcf4:  a0 00 c0                JZ              (SP)+ [TRUE] RFALSE
1fcf7:  0f 00 05 03             LOADW           #00,#05 -> L02
1fcfb:  41 05 02 4f             JE              L04,#02 [FALSE] 1fd0c
1fcff:  36 02 02 00             MUL             #02,L01 -> -(SP)
1fd03:  74 03 00 00             ADD             L02,(SP)+ -> -(SP)
1fd07:  55 00 02 00             SUB             (SP)+,#02 -> -(SP)
1fd0b:  b8                      RET_POPPED      
1fd0c:  56 05 0e 00             MUL             L04,#0e -> -(SP)
1fd10:  54 03 7c 00             ADD             L02,#7c -> -(SP)
1fd14:  74 00 00 00             ADD             (SP)+,(SP)+ -> -(SP)
1fd18:  57 00 02 00             DIV             (SP)+,#02 -> -(SP)
1fd1c:  2f 00 00 03             LOADW           #00,(SP)+ -> L02
1fd20:  30 00 03 00             LOADB           #00,L02 -> -(SP)
1fd24:  36 02 00 00             MUL             #02,(SP)+ -> -(SP)
1fd28:  74 03 00 00             ADD             L02,(SP)+ -> -(SP)
1fd2c:  54 00 01 00             ADD             (SP)+,#01 -> -(SP)
1fd30:  e0 23 80 2a 00 ff ff 03 CALL_VS         200a8 ((SP)+,#ffff) -> L02
1fd38:  e0 2b 80 2a 03 02 00    CALL_VS         200a8 (L02,L01) -> -(SP)
1fd3f:  b8                      RET_POPPED      
1fd40:  52 01 03 00             GET_PROP_ADDR   L00,#03 -> -(SP)
1fd44:  a0 00 c0                JZ              (SP)+ [TRUE] RFALSE
1fd47:  46 01 01 4a             JIN             L00,"Class" [FALSE] 1fd53
1fd4b:  42 02 40 c0             JL              L01,#40 [TRUE] RFALSE
1fd4f:  42 02 48 40             JL              L01,#48 [FALSE] RFALSE
1fd53:  61 fb 01 48             JE              Geb,L00 [FALSE] 1fd5d
1fd57:  c8 8f 02 80 00 04       OR              L01,#8000 -> L03
1fd5d:  51 01 03 03             GET_PROP        L00,#03 -> L02
1fd61:  4f 03 00 00             LOADW           L02,#00 -> -(SP)
1fd65:  a0 00 80 20             JZ              (SP)+ [TRUE] 1fd87
1fd69:  4f 03 00 00             LOADW           L02,#00 -> -(SP)
1fd6d:  c1 ab 00 02 04 47       JE              (SP)+,L01,L03 [FALSE] 1fd78
1fd73:  54 03 03 00             ADD             L02,#03 -> -(SP)
1fd77:  b8                      RET_POPPED      
1fd78:  50 03 02 00             LOADB           L02,#02 -> -(SP)
1fd7c:  74 03 00 00             ADD             L02,(SP)+ -> -(SP)
1fd80:  54 00 03 03             ADD             (SP)+,#03 -> L02
1fd84:  8c ff dc                JUMP            1fd61
1fd87:  b1                      RFALSE          

Routine 1fd88, 3 locals

1fd89:  42 02 40 54             JL              L01,#40 [FALSE] 1fd9f
1fd8d:  43 02 00 50             JG              L01,#00 [FALSE] 1fd9f
1fd91:  72 01 02 ff             GET_PROP_ADDR   L00,L01 -> Gef
1fd95:  a0 ff c5                JZ              Gef [TRUE] 1fd9b
1fd98:  a4 ff ff                GET_PROP_LEN    Gef -> Gef
1fd9b:  e8 bf ff                PUSH            Gef
1fd9e:  b8                      RET_POPPED      
1fd9f:  e0 2b 7f 1c 01 02 03    CALL_VS         1fc70 (L00,L01) -> L02
1fda6:  a0 03 c0                JZ              L02 [TRUE] RFALSE
1fda9:  55 03 01 00             SUB             L02,#01 -> -(SP)
1fdad:  50 00 00 00             LOADB           (SP)+,#00 -> -(SP)
1fdb1:  b8                      RET_POPPED      

Routine 1fdb4, 2 locals

1fdb5:  42 01 01 cd             JL              L00,#01 [TRUE] 1fdc4
1fdb9:  d5 1f 01 e5 ff 00       SUB             #01e5,#ff -> -(SP)
1fdbf:  63 01 00 00 28          JG              L00,(SP)+ [FALSE] 1fdea
1fdc4:  c1 95 02 46 47 45 40    JE              L01,#46,#47,#45 [FALSE] RFALSE
1fdcb:  d9 2f 80 08 01 00       CALL_2S         20020 (L00) -> -(SP)
1fdd1:  e9 7f ff                PULL            Gef
1fdd4:  41 ff 02 49             JE              Gef,#02 [FALSE] 1fddf
1fdd8:  41 02 45 c1             JE              L01,#45 [TRUE] RTRUE
1fddc:  8c 00 0c                JUMP            1fde9
1fddf:  41 ff 03 48             JE              Gef,#03 [FALSE] 1fde9
1fde3:  c1 97 02 46 47 c1       JE              L01,#46,#47 [TRUE] RTRUE
1fde9:  b1                      RFALSE          
1fdea:  42 02 40 4a             JL              L01,#40 [FALSE] 1fdf6
1fdee:  72 01 02 00             GET_PROP_ADDR   L00,L01 -> -(SP)
1fdf2:  a0 00 41                JZ              (SP)+ [FALSE] RTRUE
1fdf5:  b1                      RFALSE          
1fdf6:  e0 2b 7f 1c 01 02 00    CALL_VS         1fc70 (L00,L01) -> -(SP)
1fdfd:  a0 00 41                JZ              (SP)+ [FALSE] RTRUE
1fe00:  42 02 48 46             JL              L01,#48 [FALSE] 1fe08
1fe04:  46 01 01 c1             JIN             L00,"Class" [TRUE] RTRUE
1fe08:  b1                      RFALSE          

Routine 1fe0c, 5 locals

1fe0d:  42 01 01 cc             JL              L00,#01 [TRUE] 1fe1b
1fe11:  d5 1f 01 e5 ff 00       SUB             #01e5,#ff -> -(SP)
1fe17:  63 01 00 57             JG              L00,(SP)+ [FALSE] 1fe30
1fe1b:  c1 97 02 03 04 40       JE              L01,#03,#04 [FALSE] RFALSE
1fe21:  55 02 01 00             SUB             L01,#01 -> -(SP)
1fe25:  d9 2f 80 08 01 00       CALL_2S         20020 (L00) -> -(SP)
1fe2b:  61 00 00 c1             JE              (SP)+,(SP)+ [TRUE] RTRUE
1fe2f:  b1                      RFALSE          
1fe30:  2d ff 02                STORE           Gef,L01
1fe33:  41 ff 01 4b             JE              Gef,#01 [FALSE] 1fe40
1fe37:  43 01 04 41             JG              L00,#04 [FALSE] RTRUE
1fe3b:  46 01 01 c1             JIN             L00,"Class" [TRUE] RTRUE
1fe3f:  b1                      RFALSE          
1fe40:  41 ff 02 4b             JE              Gef,#02 [FALSE] 1fe4d
1fe44:  43 01 04 40             JG              L00,#04 [FALSE] RFALSE
1fe48:  46 01 01 c0             JIN             L00,"Class" [TRUE] RFALSE
1fe4c:  b0                      RTRUE           
1fe4d:  c1 97 ff 03 04 43       JE              Gef,#03,#04 [FALSE] 1fe54
1fe53:  b1                      RFALSE          
1fe54:  46 02 01 cc             JIN             L01,"Class" [TRUE] 1fe62
1fe58:  f9 08 7f e0 a7 bb 02 ff ff 
                               CALL_VN         1ff80 (S797,L01,#ffff)
1fe61:  b1                      RFALSE          
1fe62:  52 01 02 04             GET_PROP_ADDR   L00,#02 -> L03
1fe66:  a0 04 c0                JZ              L03 [TRUE] RFALSE
1fe69:  52 01 02 ff             GET_PROP_ADDR   L00,#02 -> Gef
1fe6d:  a0 ff c5                JZ              Gef [TRUE] 1fe73
1fe70:  a4 ff ff                GET_PROP_LEN    Gef -> Gef
1fe73:  2d 05 ff                STORE           L04,Gef
1fe76:  0d 03 00                STORE           L02,#00
1fe79:  57 05 02 00             DIV             L04,#02 -> -(SP)
1fe7d:  62 03 00 4f             JL              L02,(SP)+ [FALSE] 1fe8e
1fe81:  6f 04 03 00             LOADW           L03,L02 -> -(SP)
1fe85:  61 00 02 c1             JE              (SP)+,L01 [TRUE] RTRUE
1fe89:  95 03                   INC             L02
1fe8b:  8c ff ed                JUMP            1fe79
1fe8e:  b1                      RFALSE          

Routine 1fe90, 9 locals

1fe91:  0d 05 00                STORE           L04,#00
1fe94:  42 05 30 54             JL              L04,#30 [FALSE] 1feaa
1fe98:  6a 02 05 48             TEST_ATTR       L01,L04 [FALSE] 1fea2
1fe9c:  6b 01 05                SET_ATTR        L00,L04
1fe9f:  8c 00 05                JUMP            1fea5
1fea2:  6c 01 05                CLEAR_ATTR      L00,L04
1fea5:  95 05                   INC             L04
1fea7:  8c ff ec                JUMP            1fe94
1feaa:  0d 05 01                STORE           L04,#01
1fead:  42 05 40 00 4a          JL              L04,#40 [FALSE] 1fefa
1feb2:  72 01 05 03             GET_PROP_ADDR   L00,L04 -> L02
1feb6:  72 02 05 04             GET_PROP_ADDR   L01,L04 -> L03
1feba:  72 01 05 ff             GET_PROP_ADDR   L00,L04 -> Gef
1febe:  a0 ff c5                JZ              Gef [TRUE] 1fec4
1fec1:  a4 ff ff                GET_PROP_LEN    Gef -> Gef
1fec4:  2d 08 ff                STORE           L07,Gef
1fec7:  a0 03 80 2c             JZ              L02 [TRUE] 1fef5
1fecb:  a0 04 80 28             JZ              L03 [TRUE] 1fef5
1fecf:  72 02 05 ff             GET_PROP_ADDR   L01,L04 -> Gef
1fed3:  a0 ff c5                JZ              Gef [TRUE] 1fed9
1fed6:  a4 ff ff                GET_PROP_LEN    Gef -> Gef
1fed9:  e8 bf ff                PUSH            Gef
1fedc:  61 08 00 57             JE              L07,(SP)+ [FALSE] 1fef5
1fee0:  0d 06 00                STORE           L05,#00
1fee3:  62 06 08 50             JL              L05,L07 [FALSE] 1fef5
1fee7:  70 04 06 00             LOADB           L03,L05 -> -(SP)
1feeb:  e2 ab 03 06 00          STOREB          L02,L05,(SP)+
1fef0:  95 06                   INC             L05
1fef2:  8c ff f0                JUMP            1fee3
1fef5:  95 05                   INC             L04
1fef7:  8c ff b5                JUMP            1fead
1fefa:  52 01 03 00             GET_PROP_ADDR   L00,#03 -> -(SP)
1fefe:  a0 00 c9                JZ              (SP)+ [TRUE] 1ff08
1ff01:  52 02 03 00             GET_PROP_ADDR   L01,#03 -> -(SP)
1ff05:  a0 00 43                JZ              (SP)+ [FALSE] 1ff09
1ff08:  b0                      RTRUE           
1ff09:  51 02 03 05             GET_PROP        L01,#03 -> L04
1ff0d:  8c 00 0a                JUMP            1ff18
1ff10:  74 05 08 00             ADD             L04,L07 -> -(SP)
1ff14:  54 00 03 05             ADD             (SP)+,#03 -> L04
1ff18:  4f 05 00 00             LOADW           L04,#00 -> -(SP)
1ff1c:  a0 00 80 61             JZ              (SP)+ [TRUE] 1ff7f
1ff20:  4f 05 00 09             LOADW           L04,#00 -> L08
1ff24:  50 05 02 08             LOADB           L04,#02 -> L07
1ff28:  51 01 03 06             GET_PROP        L00,#03 -> L05
1ff2c:  8c 00 0e                JUMP            1ff3b
1ff2f:  50 06 02 00             LOADB           L05,#02 -> -(SP)
1ff33:  74 06 00 00             ADD             L05,(SP)+ -> -(SP)
1ff37:  54 00 03 06             ADD             (SP)+,#03 -> L05
1ff3b:  4f 06 00 00             LOADW           L05,#00 -> -(SP)
1ff3f:  a0 00 80 3b             JZ              (SP)+ [TRUE] 1ff7c
1ff43:  4f 06 00 00             LOADW           L05,#00 -> -(SP)
1ff47:  c9 8f 00 7f ff 00       AND             (SP)+,#7fff -> -(SP)
1ff4d:  c9 8f 09 7f ff 00       AND             L08,#7fff -> -(SP)
1ff53:  61 00 00 00 23          JE              (SP)+,(SP)+ [FALSE] 1ff79
1ff58:  50 06 02 00             LOADB           L05,#02 -> -(SP)
1ff5c:  61 08 00 5b             JE              L07,(SP)+ [FALSE] 1ff79
1ff60:  0d 07 03                STORE           L06,#03
1ff63:  54 08 03 00             ADD             L07,#03 -> -(SP)
1ff67:  62 07 00 50             JL              L06,(SP)+ [FALSE] 1ff79
1ff6b:  70 05 07 00             LOADB           L04,L06 -> -(SP)
1ff6f:  e2 ab 06 07 00          STOREB          L05,L06,(SP)+
1ff74:  95 07                   INC             L06
1ff76:  8c ff ec                JUMP            1ff63
1ff79:  8c ff b5                JUMP            1ff2f
1ff7c:  8c ff 93                JUMP            1ff10
1ff7f:  b0                      RTRUE           

Routine 1ff80, 5 locals

1ff81:  b2 ...                  PRINT           "
** Run-time error: "
1ff96:  46 02 01 49             JIN             L01,"Class" [FALSE] 1ffa1
1ff9a:  b2 ...                  PRINT           "Class "
1ffa1:  aa 02                   PRINT_OBJ       L01
1ffa3:  b2 ...                  PRINT           " (object number "
1ffb0:  e6 bf 02                PRINT_NUM       L01
1ffb3:  b2 ...                  PRINT           ") "
1ffb6:  42 03 00 5b             JL              L02,#00 [FALSE] 1ffd3
1ffba:  b2 ...                  PRINT           "is not of class "
1ffc7:  35 00 03 00             SUB             #00,L02 -> -(SP)
1ffcb:  da 2f 2f 27 00          CALL_2N         bc9c ((SP)+)
1ffd0:  8c 00 3c                JUMP            2000d
1ffd3:  b2 ...                  PRINT           " has no property "
1ffe0:  da 2f 7e 64 03          CALL_2N         1f990 (L02)
1ffe5:  cd 4f 05 2d de          STORE           L04,#2dde
1ffea:  4f 05 00 04             LOADW           L04,#00 -> L03
1ffee:  42 03 00 c6             JL              L02,#00 [TRUE] 1fff6
1fff2:  62 03 04 d9             JL              L02,L03 [TRUE] 2000d
1fff6:  b2 ...                  PRINT           " (and nor has any other
object)"
2000d:  b2 ...                  PRINT           " to "
20012:  ad 01                   PRINT_PADDR     L00
20014:  b2 ...                  PRINT           " **
"
2001d:  b0                      RTRUE           

Routine 20020, 1 local

20021:  a0 01 c0                JZ              L00 [TRUE] RFALSE
20024:  42 01 01 cc             JL              L00,#01 [TRUE] 20032
20028:  d5 1f 01 e5 ff 00       SUB             #01e5,#ff -> -(SP)
2002e:  63 01 00 41             JG              L00,(SP)+ [FALSE] RTRUE
20032:  e0 23 80 14 01 80 7e 00 CALL_VS         20050 (L00,S001) -> -(SP)
2003a:  42 00 00 c4             JL              (SP)+,#00 [TRUE] 20040
2003e:  9b 03                   RET             #03
20040:  e0 23 80 14 01 18 f5 00 CALL_VS         20050 (L00,#18f5) -> -(SP)
20048:  42 00 00 c4             JL              (SP)+,#00 [TRUE] 2004e
2004c:  9b 02                   RET             #02
2004e:  b1                      RFALSE          

Routine 20050, 4 locals

20051:  61 01 02 43             JE              L00,L01 [FALSE] 20056
20055:  b1                      RFALSE          
20056:  42 01 00 47             JL              L00,#00 [FALSE] 2005f
2005a:  42 02 00 c3             JL              L01,#00 [TRUE] 2005f
2005e:  b0                      RTRUE           
2005f:  42 01 00 c9             JL              L00,#00 [TRUE] 2006a
20063:  42 02 00 45             JL              L01,#00 [FALSE] 2006a
20067:  8b ff ff                RET             #ffff
2006a:  c9 8f 01 7f ff 03       AND             L00,#7fff -> L02
20070:  c9 8f 02 7f ff 04       AND             L01,#7fff -> L03
20076:  63 03 04 43             JG              L02,L03 [FALSE] 2007b
2007a:  b0                      RTRUE           
2007b:  8b ff ff                RET             #ffff

Routine 20080, 1 local

20081:  d9 2f 80 08 01 00       CALL_2S         20020 (L00) -> -(SP)
20087:  e9 7f ff                PULL            Gef
2008a:  41 ff 02 44             JE              Gef,#02 [FALSE] 20090
2008e:  9b 03                   RET             #03
20090:  41 ff 03 44             JE              Gef,#03 [FALSE] 20096
20094:  9b 04                   RET             #04
20096:  41 ff 01 4d             JE              Gef,#01 [FALSE] 200a5
2009a:  46 01 01 c6             JIN             L00,"Class" [TRUE] 200a2
2009e:  43 01 04 c3             JG              L00,#04 [TRUE] 200a3
200a2:  b0                      RTRUE           
200a3:  9b 02                   RET             #02
200a5:  b1                      RFALSE          

Routine 200a8, 4 locals

200a9:  30 00 01 03             LOADB           #00,L00 -> L02
200ad:  a0 03 80 39             JZ              L02 [TRUE] 200e8
200b1:  49 03 80 00             AND             L02,#80 -> -(SP)
200b5:  a0 00 cf                JZ              (SP)+ [TRUE] 200c5
200b8:  95 01                   INC             L00
200ba:  30 00 01 00             LOADB           #00,L00 -> -(SP)
200be:  49 00 3f 04             AND             (SP)+,#3f -> L03
200c2:  8c 00 12                JUMP            200d5
200c5:  49 03 40 00             AND             L02,#40 -> -(SP)
200c9:  a0 00 c8                JZ              (SP)+ [TRUE] 200d2
200cc:  0d 04 02                STORE           L03,#02
200cf:  8c 00 05                JUMP            200d5
200d2:  0d 04 01                STORE           L03,#01
200d5:  95 01                   INC             L00
200d7:  49 03 3f 00             AND             L02,#3f -> -(SP)
200db:  61 00 02 44             JE              (SP)+,L01 [FALSE] 200e1
200df:  ab 01                   RET             L00
200e1:  74 01 04 01             ADD             L00,L03 -> L00
200e5:  8c ff c3                JUMP            200a9
200e8:  42 02 00 47             JL              L01,#00 [FALSE] 200f1
200ec:  54 01 01 00             ADD             L00,#01 -> -(SP)
200f0:  b8                      RET_POPPED      
200f1:  b1                      RFALSE          

Routine 200f4, 5 locals

200f5:  2d ff 02                STORE           Gef,L01
200f8:  41 ff 40 00 32          JE              Gef,#40 [FALSE] 2012d
200fd:  0d ff 00                STORE           Gef,#00
20100:  a2 01 00 49             GET_CHILD       L00 -> -(SP) [FALSE] 2010b
20104:  95 ff                   INC             Gef
20106:  a1 00 00 bf fb          GET_SIBLING     (SP)+ -> -(SP) [TRUE] 20104
2010b:  e9 7f fe                PULL            Gee
2010e:  e8 bf ff                PUSH            Gef
20111:  43 00 01 40             JG              (SP)+,#01 [FALSE] RFALSE
20115:  a2 01 05 42             GET_CHILD       L00 -> L04 [FALSE] 20119
20119:  a9 05                   REMOVE_OBJ      L04
2011b:  e0 27 7f 6d 05 40 00    CALL_VS         1fdb4 (L04,#40) -> -(SP)
20122:  a0 00 c8                JZ              (SP)+ [TRUE] 2012b
20125:  f9 27 7e 9d 05 40       CALL_VN         1fa74 (L04,#40)
2012b:  ab 05                   RET             L04
2012d:  41 ff 41 00 34          JE              Gef,#41 [FALSE] 20164
20132:  e0 2b 7f 83 03 01 00    CALL_VS         1fe0c (L02,L00) -> -(SP)
20139:  a0 00 4f                JZ              (SP)+ [FALSE] 20149
2013c:  35 00 01 00             SUB             #00,L00 -> -(SP)
20140:  f9 0a 7f e0 a7 bf 03 00 CALL_VN         1ff80 (S798,L02,(SP)+)
20148:  b1                      RFALSE          
20149:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] 2014d
2014d:  f9 2b 7f a4 03 00       CALL_VN         1fe90 (L02,(SP)+)
20153:  e0 27 7f 6d 03 40 00    CALL_VS         1fdb4 (L02,#40) -> -(SP)
2015a:  a0 00 c8                JZ              (SP)+ [TRUE] 20163
2015d:  f9 27 7e 9d 03 40       CALL_VN         1fa74 (L02,#40)
20163:  b1                      RFALSE          
20164:  41 ff 42 00 37          JE              Gef,#42 [FALSE] 2019e
20169:  e0 2b 7f 83 03 01 00    CALL_VS         1fe0c (L02,L00) -> -(SP)
20170:  a0 00 4f                JZ              (SP)+ [FALSE] 20180
20173:  35 00 01 00             SUB             #00,L00 -> -(SP)
20177:  f9 0a 7f e0 a7 c1 03 00 CALL_VN         1ff80 (S799,L02,(SP)+)
2017f:  b1                      RFALSE          
20180:  e0 27 7f 6d 03 42 00    CALL_VS         1fdb4 (L02,#42) -> -(SP)
20187:  a0 00 c8                JZ              (SP)+ [TRUE] 20190
2018a:  f9 27 7e 9d 03 42       CALL_VN         1fa74 (L02,#42)
20190:  a2 01 00 42             GET_CHILD       L00 -> -(SP) [FALSE] 20194
20194:  f9 2b 7f a4 03 00       CALL_VN         1fe90 (L02,(SP)+)
2019a:  6e 03 01                INSERT_OBJ      L02,L00
2019d:  b1                      RFALSE          
2019e:  41 ff 43 5b             JE              Gef,#43 [FALSE] 201bb
201a2:  0d ff 00                STORE           Gef,#00
201a5:  a2 01 00 49             GET_CHILD       L00 -> -(SP) [FALSE] 201b0
201a9:  95 ff                   INC             Gef
201ab:  a1 00 00 bf fb          GET_SIBLING     (SP)+ -> -(SP) [TRUE] 201a9
201b0:  e9 7f fe                PULL            Gee
201b3:  e8 bf ff                PUSH            Gef
201b6:  55 00 01 00             SUB             (SP)+,#01 -> -(SP)
201ba:  b8                      RET_POPPED      
201bb:  41 ff 44 00 37          JE              Gef,#44 [FALSE] 201f5
201c0:  e0 2b 7f 83 03 01 00    CALL_VS         1fe0c (L02,L00) -> -(SP)
201c7:  a0 00 4f                JZ              (SP)+ [FALSE] 201d7
201ca:  35 00 01 00             SUB             #00,L00 -> -(SP)
201ce:  f9 0a 7f e0 a7 c3 03 00 CALL_VN         1ff80 (S800,L02,(SP)+)
201d6:  b1                      RFALSE          
201d7:  e0 2b 7f 83 04 01 00    CALL_VS         1fe0c (L03,L00) -> -(SP)
201de:  a0 00 4f                JZ              (SP)+ [FALSE] 201ee
201e1:  35 00 01 00             SUB             #00,L00 -> -(SP)
201e5:  f9 0a 7f e0 a7 c4 04 00 CALL_VN         1ff80 (S801,L03,(SP)+)
201ed:  b1                      RFALSE          
201ee:  f9 2b 7f a4 03 04       CALL_VN         1fe90 (L02,L03)
201f4:  b1                      RFALSE          
201f5:  b0                      RTRUE           

[End of code at 201f6]

[Start of text at 201f8]

201f8: S001 "The Meteor, the Stone and a Long Glass of Sherbet"
20220: S002 "
The Interactive Memoirs of a Diplomat
Copyright (c) 1996 by Angela M. Horns
Winning entry in the 1996 Interactive Fiction Competition
(Please type "help" if you would like instructions.)
"
202b4: S003 "961216"
202bc: S004 "6/3"
202c0: S005 "a"
202c4: S006 "---"
202c8: S007 "the"
202cc: S008 "The "
202d0: S009 "the "
202d4: S010 "a "
202d8: S011 "The "
202dc: S012 "the "
202e0: S013 "an "
202e4: S014 "The "
202e8: S015 "the "
202ec: S016 "some "
202f0: S017 "The "
202f4: S018 "the "
202f8: S019 "some "
202fc: S020 "N = next subject"
2030c: S021 "P = previous"
20318: S022 "  Q = resume game"
20328: S023 "Q = previous menu"
20338: S024 "RETURN = read subject"
2034c: S025 "Score: "
20354: S026 "Moves: "
2035c: S027 "Time: "
20364: S028 "You can't go that way."
20378: S029 "your former self"
20384: S030 "yourself"
2038c: S031 "Darkness"
20394: S032 "those things"
2039c: S033 "that"
203a0: S034 " or "
203a4: S035 "nothing"
203ac: S036 " is"
203b0: S037 " are"
203b4: S038 "is "
203b8: S039 "are "
203bc: S040 "the "
203c0: S041 " and "
203c4: S042 "whom "
203c8: S043 "which "
203cc: S044 "ancient treasures"
203d8: S045 "A broad-brimmed light summer hat, ideal for shading your face from
the setting sun."
20414: S046 "One thing about your home, the Duchy: you may not be a very
powerful realm, but you certainly are fine inventors and craftsmen. Take this
ten-inch brass "telescope", for example. Distant objects that you look at
through the telescope actually seem closer to you!"
204cc: S047 "The ancient paved road stretches for miles to the south, turning
very slowly to the northeast along a mossy stone wall. From up here on your
elephant's wickerwork basket, you're just level with the branches of the old
Imperial hunting woods inside the wall.

Having been stuck in this cushioned basket with the Lady Amilia every day for a
fortnight, you're just desperate to get away."
205d8: S048 "You can see right down to the end of the train, where the
refreshments are carried."
20614: S049 "You are impressed by the long, organised procession of carts and
elephants, the logistics of it all. Servants and troops run here and there,
busy, busy, busy. And for what? Why, to waste your time and to stop you from
discovering anything, that's what."
206c8: S050 "From this view, it's all too clear that although the soldiers wear
fine plumed helmets and ceremonial breast-plate, they are in fact armed to the
teeth. In their eyes is a vigilance that you aren't sure you care for."
20760: S051 "The soldiers wear fine, blue-plumed helmets, and march easily
ahead of the procession, their breast-plates gleaming in the sunset."
207bc: S052 "your"
207c0: S053 "The magnificent grey beast is wrinkled and has a wise look (but
then, after an entire day of Amilia's conversation, your average potato would
have a wise look). His two great ears flap a little up at the front sides of
the basket, his trunk curls and pokes at the air."
2087c: S054 "your elephant's"
20888: S055 "your elephant's"
20894: S056 "The elephant's ears have to be so big to radiate heat away, a big
issue on a day as hot as this one was."
208dc: S057 "the scandal with the new Lord Chamberlain"
208fc: S058 "that funny story concerning Lady Martia"
20918: S059 "the rumour about the Empire's best racing donkey"
2093c: S060 "about my first school"
2094c: S061 "how I couldn't get a single pair of shoes to fit, last week"
20978: S062 "the legend about how I'm really related to the old Flathead
family"
209a8: S063 "the family story about Lady Priscilla's old christening gown"
209d4: S064 "anything about my poodle, Bozzie"
209ec: S065 "about my Daddy's new yacht, which nearly sunk"
20a0c: S066 "how the harbour was all full up last week"
20a28: S067 "all about the last Court dance, what a disaster that was"
20a50: S068 "of my prize for dancing the quadrille"
20a6c: S069 "how my whole dance card was filled up with gentlemen last month"
20a98: S070 "my mother's recipe for rhubarb pudding"
20ab4: S071 "about the State banquet when we entertained all the generals"
20ae0: S072 "how my hair goes all frizzy and I can't get it to settle down"
20b0c: S073 "my fiance Roderick's brilliant career"
20b28: S074 "about the lock I'm keeping from my fiance Roderick's hair"
20b54: S075 "how my fiance Roderick proposed to me"
20b70: S076 "the story about why the Cobblingay family aren't welcome in polite
society any more"
20bac: S077 "about those scandalous goings-on at the Royal Farm"
20bd0: S078 "about the bazaar I opened last week, with some big silver
scissors"
20c00: S079 "all about the Admiral's Croquet Tournament and how I was crowned
Queen of it"
20c38: S080 "splendid young man"
20c44: S081 "wonderful experience for a young girl"
20c60: S082 "surprise it was too, I can tell you"
20c7c: S083 "dreadful shame, all things considered"
20c98: S084 "pity, don't you agree"
20ca8: S085 "time as was never seen again"
20cbc: S086 "terribly exciting moment for everybody"
20cd8: S087 "recent scandal, too"
20ce8: S088 "charming face, that's what I say"
20d00: S089 "disappointment for all concerned, quite honestly"
20d24: S090 "foolish thing to do, even if he was a Guardsman"
20d48: S091 "horrid way to spend a Wednesday in the season"
20d68: S092 "time we had of it, I laughed fit to burst"
20d88: S093 "doesn't it just go to show"
20d9c: S094 "which only means one thing"
20db0: S095 "just as my Mother always warned me"
20dc8: S096 "they say problems come in threes"
20de0: S097 "a nod's as good as a wink, after all"
20dfc: S098 "I expect somebody was sorry, really"
20e18: S099 "and there was really no need for all that jealousy"
20e3c: S100 "what a sorry state we were in"
20e50: S101 "the best night out a girl ever had"
20e68: S102 ""Shoo!" says Amilia to the bird, fruitlessly."
20e8c: S103 ""Go away!" Amilia tries to tell the bird."
20eac: S104 "Amilia bats her hands around, but doesn't discourage the bird."
20ed8: S105 "No matter what Amilia tries, the bird continues to hover."
20f04: S106 "Amilia hisses at the bird, without effect."
20f24: S107 "The bird continues to win your undying sympathy as Amilia flutters
her arms at it."
20f60: S108 "the"
20f64: S109 "Amilia is wearing a simply fatuous hat, a light summer shade which
would look quite presentable if it weren't for the waxwork grapes, apples,
plums, damsons and so on around the brim."
20fe4: S110 "Enormously detailed with the useless and irrelevant, the Empress
gave it to you hoping you'd waste time studying it in detail. You have vowed
never to do so, but it's still handy for passing the odd dull moment by looking
up some specific local feature."
21094: S111 "a glass of"
2109c: S112 "An effervescent fruit syrup, much prized in these lands."
210c4: S113 "As the road passes around the corner of the woods and turns east,
it also passes a customs post. You're ten feet up, and the tasseled pennant
flag flutters down from the pole to curl around the basket in the light
breeze."
2115c: S114 "The pennant of the Northland Empire."
21178: S115 "The ancient highway stretches east as far as the eye can see,
running parallel with the mossy stone wall enclosing the hunting woods to the
south. The wall appears unbroken. To the north, vast meadowlands sweep into a
lush, cultivated valley."
21220: S116 "The culvert bridge was only about six foot high at its tallest;
it's just an outlet under the wall of the woods, to allow a stream to escape."
21284: S117 "The stream under the culvert flows south to north, though it's
little more than a trickle after this long hot summer.

Something definitely bothered you about this water flow... finally, in
close-up, you can see what. The stream is flowing uphill."
21334: S118 "A bird seems to be darting about in the tree-tops, vaguely
following the procession."
21370: S119 "Although you only get one clear glimpse of the bird, its
distinctive speckled green and blue feathers must make it one of the legendary
Birds of Paradise."
213dc: S120 "The Bird of Paradise is still worrying away at Amilia's hat, so
for once your tour guide has her eyes off you."
2142c: S121 "Somehow, though, Amilia also manages to nudge your arm so that you
can't get a clear look at the woods."
21478: S122 "Watling Street extends to the horizon: oh, another two hours at
least."
214ac: S123 "The only exit is east."
214bc: S124 "An endless line of dignified men retiring to bed and sleeping."
214e8: S125 "The room is almost filled with a four-poster bed, caparisoned
gaudily as a warhorse."
21524: S126 "An exquisite antiquity."
21538: S127 "A jade figurine nestles in an alcove, beneath a painting of
unparalleled beauty."
21570: S128 "It depicts a wide cavern with a polished stone ledge on one shore
of a subterranean lake, dimly lit from above and ringed in with rock faces."
215d0: S129 "The design of a topiary garden, whose bushes and shaped hedges
depict a dragon, a unicorn, a great serpent and a huge misshapen dog. It is
signed "Leblank"."
21640: S130 "Stairs descend to the ground floor, and one doorway leads west,
into your bedroom."
2167c: S131 "The landing turns from a staircase down into a doorway west, and
that's all."
216b4: S132 "You can't make out much from here."
216d0: S133 "The glow seems to come from some kind of dark turret or chimney
raised up on a rocky mound in the centre of the woods. You can't imagine what
could possibly be causing it, but have a hunch that something must be happening
below."
2176c: S134 "You are in the kitchen of the white-painted Customs House. The
table here looks as if it hasn't been used for the preparation of food in
years. A passage leads to the west and a dark staircase can be seen leading
upward. There is a fine, modern charcoal-stove and to the east, the front door
is closed."
21840: S135 "The black stove being installed by a team of loafing workmen."
2186c: S136 "The stairs lead back up, and there's a doorway west."
21894: S137 "As secure as you could ever hope for."
218b0: S138 "There's a hook in the ceiling."
218c8: S139 "A joint of cured ham hangs from a hook in the ceiling."
218f0: S140 "Like a stylish picnic-basket."
21908: S141 "an"
2190c: S142 "a"
21910: S143 "A finely-worked filigree gold and jewelled scarab."
21934: S144 "You are in a stately and well-aged living room. There is a doorway
to the east, leading back into the kitchen, a trophy case, and a large oriental
rug in the center of the room."
219b0: S145 "The only exit seems to be the Kitchen, to the east."
219d8: S146 "The trophy case being stocked and restocked with riches, which are
then auctioned off over the centuries."
21a20: S147 "According to a plaque, it's a genuine early Empire trophy case, a
real antique. At that time, it was fashionable to collect precious items and
display them in one's own home, in just such a case."
21aac: S148 "A brass lantern rests on top of the trophy case."
21ad0: S149 "your"
21ad4: S150 "You are very relieved to see that your Ambassador's trunk is still
here, just where you left it last night."
21b20: S151 "This little trunk (one foot by one foot by six inches) is an
immaculate example of Duchy craftsmanship at its finest. The latch mechanism is
so intricate that only its owner can open it. Turning out fine products like
this is the very lifeblood of your native land.

So why do you keep suspecting that somebody has opened and searched it? Surely
only a wizard could have done so, and the days of the wizards are long gone,
back even before the foundation of the Old Underground Empire! Unless... the
rumours are true. Has magic been rediscovered here?

You'd better find out, because in a world of magic no-one's going to want
mechanisms like this any more."
21cf0: S152 "your"
21cf4: S153 ""To whom it may concern... granted plenipotentiary powers
notwithstanding... most excellent and serene Highness..." and so on. The froth
which covers any diplomat's life."
21d74: S154 "The stove is pulled clear of the fireplace, revealing the original
chimney, which leads down into darkness."
21dc0: S155 "the"
21dc4: S156 "enchanted arrows"
21dd0: S157 "the"
21dd4: S158 "the note from the parchment book"
21dec: S159 "the "destruction order""
21e00: S160 "At the foot of the chimney are low and grimy cellars, built of
decaying brickwork and seemingly unused for years. There are no bottles, or
crates, unless they're stored through the passage to the south."
21e8c: S161 "There are no other obvious exits, only south or back up the
chimney."
21ebc: S162 "This is a low junction among cavities in the foundation stones of
the ancient Watling Street, which must run just overhead."
21f14: S163 "The junction's between north, south and northwest passages."
21f40: S164 "Toiling slaves cutting and facing the lintel-stone. It's an
outdoor scene, in a pit dug well into the earth."
21f90: S165 "A north-south passage narrows considerably and descends to the
south under a long lintel-stone; a side passage, northwest, is much more
earthy."
21ff8: S166 "This is a red-brown earthy bole, a cavity in hardened soil with
but a single crawl leading out to the southeast. The ground is covered with
autumn leaves, russet and variegated."
22074: S167 "Deranged, kaleidoscopic visions of great force and power,
signifying nothing."
220ac: S168 "The only passage out of this earthy bole is southeast."
220d4: S169 "The leaves have the weight of many autumns, many winds, in their
delicate hue."
2210c: S170 "In the centre is a bubbling pool of spring water, glinting with
shades and flickers of green phosphoresence."
22158: S171 "A narrow passage, running north to south under solid sandstone
blocks which must make up the base of the wall. Further south, the passage runs
onto what seems to be a ledge, and you have a sense of space opening up from
below.

The Old Underground Empire awaits!"
22210: S172 "Toiling slaves cutting and facing the lintel-stone. It's an
outdoor scene, in a pit dug well into the earth."
22260: S173 "It has a lean and hungry look."
22278: S174 "The ladder's no longer in place."
22290: S175 "The ladder's no longer in place."
222a8: S176 "an"
222ac: S177 "This is a slate-littered shelf high up at the northwest eaves of a
dark, vaulted cave, from which a meadow-fresh breeze blows. The ledge broadens
down a slab "staircase" to the east but wastes away into a tight squeeze
southwest. Natural passages extend like tendrils into the rock all around this
cavern, but only one is accessible from here, back north under the lintel."
223b0: S178 "A fascinating view of the cedar's progress from seedling down to
flourishing blossom."
223ec: S179 "The only obvious ways to proceed from here are north or along the
ledge, either down to the east or into the tight squeeze to the southwest."
2244c: S180 "There seems to be a crude wooden house built into it halfway
down."
2247c: S181 "A stream winds its way across the pebbly cave floor, pooling to a
modest lake."
224b4: S182 "Just where the shelf flattens at the foot of rocky steps (climbing
westward), a square-cut doorway has been hewn into the north wall. The ledge,
which begins to curve southeast, is at its broadest here, yet your feeling of
vertigo hardly abates."
22560: S183 "A very ancient time, when the tree has not grown: the doorway is
being cut with enervating slowness."
225a8: S184 "You can see no way down from here."
225c0: S185 "This long parapet thins to nothing further on, appearing to lead
nowhere after all: the nearest other ledge being 50 feet vertically below."
22624: S186 "The tree, sprouting confidentally downwards."
22644: S187 "The ledge runs northwest (if anything, more north than west)."
22670: S188 "An almost inaccessible side-chamber, which leads only a little way
northeast, giving you the feeling of being suspended in midair halfway up the
cedar cavern. It would make a splendid eyrie, but thankfully there is no sign
of eagles."
22714: S189 "Cruelly, the tight cave comes to what every adventurer dreads: a
dead end, leaving nothing for it but to go back southwest."
2276c: S190 "An ingot of silver was, presumably, quite safely stored here up to
now."
227a0: S191 "The ingot is marked in ancient runes with the word: "TOGNI". No,
actually: you were looking at it back to front."
227f4: S192 "It looks as if this low passage from the northeast peters out into
a dead end not far west, but a muddy slide-passage descends to the south."
22854: S193 "The increasingly earthy rock blocks your way. The only viable
routes are west, south and northeast."
2289c: S194 "A flat curved stick, but one that has been well-crafted to some
end."
228cc: S195 "A flat stick, curved around a right angle, rests on the ground
here."
228fc: S196 "The slide is muddy and steep but looks navigable."
22920: S197 "An earthy rockfall, soaked through with water into wet clay, makes
this passage lose all coherence. A kind of chimney-like crack leads upward, and
the crawl eases slightly to the east."
229a0: S198 "Seas of garbage rain down through the crack onto the mound,
rapidly decomposing or washing away so that the process fights itself to a
standstill."
22a04: S199 "The muddy earth is too tight."
22a1c: S200 "The chimney-crack becomes just too tight for you, and you sag back
down, muddier and wiser."
22a5c: S201 "Roughly underneath the chimney-crack is a mound of garbage,
dropped in from above. Potato-peel, broken tools and so on seem to make up the
bulk of it."
22ac8: S202 "This is only half a cave; the eastern half, to be exact. It's a
dark place full of crevices (you would have missed the slide passage back north
if you hadn't already known about it); chief among them a distinctive
triangular cavity, 1 foot or so high, and blocked by a rough quartz window."
22b98: S203 "The wall being masoned, but quite recently, by Northlands soldiers
working on the other side."
22bdc: S204 "Though the cave undoubtedly extends west, the wall means you are
unable to follow it."
22c18: S205 "The quartz window in the east wall is only 1 foot high, in
addition to being apparently unbreakable."
22c60: S206 "Thanks to the wall, the slide passage is the only way out."
22c8c: S207 "What divides this cave is a solid, floor-to-ceiling stone wall
running north to south, masoned with mortar and seemingly recent. You feel
quite certain that the cave continues."
22d08: S208 "The remains of a pot perhaps two feet across and two thousand
years old. (Held up to the light, it has a faint glint from having being baked
with mica.)"
22d74: S209 "A shard of pottery glints slightly in the mud floor."
22d98: S210 "The window itself, perhaps, was the work of primitive cave
dwellers long ago. Whoever they were, they seem to have cut some kind of cavity
to the east, behind the window."
22e10: S211 "Even in your vision, the Adventurer stalks, untired and yet
unsatisfied."
22e44: S212 "The pale corridor turns a right-angle from south to east."
22e6c: S213 "This is a pale corridor filled with a cold, pearly light, ranging
from near-darkness at the southern end to a bright glow from the east."
22ecc: S214 "You are in the almost ghostly presence of a gaunt, long-haired
man, an Adventurer who looks as if he has just stepped out of a weaving of a
scene from the old Empire."
22f40: S215 "If legends may be believed, although basically trustworthy he
would do almost anything for treasure."
22f88: S216 "The chamber lies south, the corridor back west."
22fac: S217 "A wily gentleman sighs and makes another disconsolate mark on a
curious colour-chart."
22fe8: S218 "The corridor funnels out into a chamber, turning once again to the
south. Though smoother, the walls become hung with cobwebs and you have a sense
of disturbing centuries of quiet."
23064: S219 "An ancient coffer, a chest of precious or personal papers, rests
to one side."
2309c: S220 "an"
230a0: S221 "Scratchy handwriting adorns this text, and the writing's in a
dialect almost unrecognisable today. But, like any diplomat worth his salt,
you've a way with languages: it writes of a way to tap the Philosopher's Stone,
a source of Riches by Transmutation, but which is only workable fairly near the
Stone itself... A sketch diagram suggests that the author was familiar with the
route back up to the Customs House, and may even have lived there."
231dc: S222 "This chart, very ancient though it is, gives the impression of
being work in progress rather than a finished diagram, in that different
patches seem to have been drawn in at different times. It consists of colours
and symbols rather than words:

  Red-black --> ? --> ? -->

  Copper --> Silver-white --> Bright yellow -->

  Black --> Dull silver --> Dull grey -->

  Vivid green --> Skull symbol -->

  Flame symbol --> Yellow -->

  Chalky white --> Dark silver -->"
23360: S223 "The Adventurer was guarding the only entrance."
23384: S224 "A wily gentleman casts a dazzling spell onto an ingot of silver,
and it becomes gold! He is enriched, but unsurprised."
233d8: S225 "The serene white illumination comes as a shock to your eyes after
following dim lamplight for so long, but this chamber is patient while you
blink; a circular room with smooth walls and concentric steps down to a shallow
well."
23474: S226 "A yard across and a yard high, it could be any rock from any rocky
field."
234a8: S227 "The Stone itself is resting in the well: an obelisk whose
irregular facets contrast so sharply with the perfect roundness of the walls
that it almost seems alive."
23518: S228 "A spotless scroll rests on the Stone, as immaculate as the day it
was inscribed, yet giving an impression of unfathomable maturity."
23574: S229 "You are perched inside the dense, broad first branches down from
the cedar's roots, which splay across the rocky ceiling like buttresses on a
perpendicular gothic column. Through the dappled green cover, you can just make
out the long ledge, but it's too far up to jump across."
23634: S230 "The trunk becomes too smooth up near the roots."
23658: S231 "Although branches radiate in all compass directions, your first
impression is that none of them lead anywhere in particular. Certainly this one
doesn't."
236c4: S232 "The western branch expires as rapidly as the others, but you do
notice something interesting: a small cavity in the distant western face of the
cave, perhaps 1 foot across, in a distinctive triangular shape."
23754: S233 "Confused images of furious verdant growth."
23774: S234 "Easier said than (safely) done."
2378c: S235 "The ledge looks much as you remember it. From here, however, you
can see a cave opening below the southeastern end of the ledge, concealed from
above by the overhang. But it's a very long way from here, and you can't see
anything inside."
23834: S236 "A tree-house has been constructed here, though it's little more
than a wooden lean-to on a log platform."
23880: S237 "The angle is wrong, and you can't see what's within from here."
238b0: S238 "A short-bow, reasonably accurate across short distances though
little good for rapid fire. Well-balanced, if far from being state of the art."
23914: S239 "an"
23918: S240 "arrows"
2391c: S241 "Inside the wooden lean-to is a surprising illusion of space and
comfort, which you'd never guess is perched in an upside-down cedar. There are
no windows, but finely built wooden chairs suggest some kind of meeting-place."
239b8: S242 "An old man rocks back and forth in a chair, puffing smoke rings
from a long briar pipe."
239f4: S243 "There's nowhere to go but back out."
23a10: S244 "A golden fir-cone rolls about on one of the chairs."
23a34: S245 "Only an inch across, but beautiful and valuable."
23a58: S246 "The cedar's foliage thins out and this is the lowest point at
which the trunk will bear your weight."
23aa0: S247 "The branches hardly radiate outward at all down here."
23ac8: S248 "The tree isn't hollow."
23adc: S249 "Confused images of furious verdant growth."
23afc: S250 "An expanse of shingle and boulders sloping haphazardly across an
irregularly-shaped floor a hundred feet across, only smoothed out at its centre
by a stream which pools just to the north. A furrow in the rocky walls leads
southwest, alongside a scree-fall which lies roughly south; while the cave
narrows into a canyon to the east."
23be0: S251 "The cave wall is impenetrable in that direction."
23c04: S252 "But which way out?"
23c14: S253 "This is the base of the cave."
23c2c: S254 "That would be straight into the pool. Try walking around it."
23c58: S255 "The cedar grows explosively down towards you, from a sapling to
the mighty tree of today."
23c98: S256 "The furrow has been burrowed and extended by primitive mine
workings, hewn chiefly by hand or at best stone tools. But the seam has been
exhausted, and the striations in the rock scraped clean of ore."
23d24: S257 "The furrow is a dead-end, opening out only to northeast."
23d4c: S258 "The scree mound to the east is too steep to climb up from this
side."
23d7c: S259 "You see the painfully slow carving-out of the seam, by miners
centuries gone; and the anguish on their faces as the ore runs out, never to be
found again."
23de8: S260 "What looks like a small drum lies discarded here."
23e0c: S261 "It resembles a tambourine without chimes. Some kind of coarse
gauze is stretched taut along the bottom of a wooden drum-frame."
23e64: S262 "The cave floor closes off into an enclosed stream-bed here,
forcing you into a stoop."
23ea0: S263 "Further east, the cave roof descends until it touches the stream
water-level."
23ed8: S264 "Terribly slowly, the stream erodes this channel into existence."
23f04: S265 "The cave is tighter here, and you can't squeeze any further in."
23f34: S266 "You can scale the scree no further."
23f50: S267 "That would be into the cave wall."
23f68: S268 "That would be into the cave wall."
23f80: S269 "The scree fall would be a desperate scramble down in any direction
but north."
23fb8: S270 "The scree slope being built, by teams of slaves, under an overseer
terrified that the doorway would ever be revealed again, but in a desperate
hurry... constantly glancing over his shoulder at the corridor behind him...
and the slope being completed, and his final act laying the black scroll at its
apex, to stand warning down all time."
240a4: S271 "A black scroll, like a roll of remembrance, is curled around the
top few feet of scree."
240e4: S272 "The avalanche has cleared away part of the scree, leaving open
behind it a crudely arched doorway into the southern cave wall. Above the
doorway, a skull and crossbones has been carved."
24164: S273 "An upward slope from the arched doorway to north, this is an
irregular burrow wriggled out of soft earth. Strange tracks have been dragged,
making wavy lines which meet at the distant top, where the burrow opens out."
241fc: S274 "You see the tunnel wearily burrowed out by the exhausted thorax
of... some huge but dimly-seen creature."
24248: S275 "Hollowed out like a wasp's nest in a rotten apple, this
almost-sealed den can only be one thing."
2428c: S276 "A magnificent hornet-creature, in its death-throes, laying one
final egg."
242c4: S277 "This spherical chamber is sealed on all sides but for the burrow."
242f4: S278 "All around you is the desiccated body of the once-magnificent
creature, curled up, half-hornet, half-prawn. It looks as if it would fall to
dust if you so much as looked at it."
24370: S279 "A glistening, pulsing egg, rocks back and forth erratically. It
seems close to hatching! A dull, humid heat radiates out from it, and you sense
effort and anger."
243e4: S280 "The stream's pool washes up almost to your feet, close to the
forbiddingly craggy and overhung northern wall of the cave, but the water does
leave room for a broad path around the periphery; and this is its northern
limb."
24480: S281 "Green lilies proliferating in the depths of the pool."
244a8: S282 "That would be into the pool!"
244bc: S283 "It's bleak and unclimbable."
244d0: S284 "The sheer black rock blocks your way."
244ec: S285 "A single, graceful green water-lily plumes at the calm surface of
the pool."
24524: S286 "Smothered in a suffocating red haze, half-conscious at best, your
position seems hopeless. The lily's membrane is tough as crocodile-skin and
beyond it is perhaps a thousand feet of water? The pressure seals you in as
well as any rockfall could. Indeed, only the pressure makes it possible at all
for one Ambassador and one giant hatched lizard to share a space barely six
feet in diameter."
24634: S287 "A highly disconcerting montage of plant and animal life being
digested wholesale."
2466c: S288 "To say that you can't go that way seems an understatement."
24698: S289 "the"
2469c: S290 "A sleek, beautiful marvel, half-insect, half-reptile. Its gauzy
wings are only undeveloped stubs and a little amniotic fluid still coats them;
but its sting, painted like a brimstone butterfly, looks deadly already."
24738: S291 "The creature wriggles, dripping a saliva that burns to the touch,
but seems lapsed back into embryonic sleep."
24784: S292 "
The hornet"
24790: S293 "
The creature"
2479c: S294 "
The hatchling"
247a8: S295 "perhaps dreaming."
247b4: S296 "stirring."
247bc: S297 "talons rustling."
247c8: S298 "It certainly can't fly just yet."
247e0: S299 "The tip slightly exudes some kind of poison."
24800: S300 "From the natural light, dim and far above, you'd guess this cave
was distinctly higher up than the cedar-cavern floor. A natural limestone
cavity, beautiful and thankfully unused, it's a chance to rest and think. A
single winding path leads vaguely north."
248b4: S301 "There are crevices everywhere, but that one peters out."
248dc: S302 "Gradual erosion of stone, moulding a cave."
248fc: S303 "A burnished lantern lies discarded in the sand."
24920: S304 "Dead leaves float out on the water, but of the hornet there is no
trace."
24954: S305 "A single broad leaf has washed up beside you."
24974: S306 "One broad leaf, though, has washed up beside you."
24998: S307 "This is only half a cave; the western half, to be exact. It's a
dark place full of crevices (you would have missed the stony passage back south
if you hadn't already known about it). Boxes, bottles and crates are stored
here, and to judge from scrape-marks are used by whoever lives through the
broad passage northwest."
24a78: S308 "Soldiers, quite recently, masoning the wall; and then an endless
succession of crates: brought in, taken out."
24ac8: S309 "Though the cave undoubtedly extends east, the wall means you are
unable to follow it."
24b04: S310 "The stores piled up here are heavy and there's quite a supply,
covering half the wall: enough for a dozen men to last out for weeks."
24b60: S311 "The stub of a stock-keeper's note lies forgotten beside the
stores."
24b90: S312 "Just the torn end of a tally-sheet of some kind:

    2585 
   10163 
   ----- 
Make of that what you will!"
24be8: S313 "You see nothing special about the secret door, if that isn't a
contradiction in terms."
24c24: S314 "It may be possible to go that way from further around the wheel."
24c50: S315 "The wheel corridor is flat level."
24c68: S316 "The wheel corridor is flat level."
24c80: S317 "The Wheel corridor being magically cut, by the Lady Amilia,
holding a white book in one hand and leading an old man by the other."
24cdc: S318 "A circular corridor-cave, like a cartwheel's rim and unmistakably
artificial. Yet no mason of the Duchy could cut so smooth a wall! The arc hoops
around northeast and northwest, while a broad passage runs southeast back to
the stores."
24d80: S319 "A circular corridor-cave, like a cartwheel's rim and unmistakably
artificial. The arc hoops around northwest and southwest."
24dd8: S320 "A white scroll, in pristine condition, rests in a niche."
24e00: S321 "A circular corridor-cave, like a cartwheel's rim and unmistakably
artificial. The arc hoops around northeast and southeast.

Through a curious arched entranceway east is the workshop at the hub of the
great wheel."
24e98: S322 "The meteor burning its fiery way into the hillock above and coming
to rest, at the foot of an irregular smoking pit, just here."
24ef0: S323 "The chimney looks unclimbable, and first impressions turn out to
be quite right -- it is."
24f30: S324 "A clear funnel chimney rises vertically up, like a glass-blower's
vent or something from a furnace, lined with smooth-curving brick."
24f90: S325 "You've no idea what features to look for in a meteor. Truth to
tell, it could be any large metallic rock and you'd be hard put to tell the
difference. But the shaft above gives it away."
25014: S326 "Beneath the chimney is a huge, irregular, metallic lodestone,
presumably a meteor fallen to earth.

A thick, viscous green beam of magical light reflects from the meteor through a
right-angle: straight upward through the chimney, to a level path east through
the archway."
250d4: S327 "Beneath the chimney is the chalk formation which the meteor has
become, and into which the beam of magical light dissipates harmlessly."
25130: S328 "The chalk looks purer than the cliffs around the Duchy, and is
unleavened with sea-shells."
25170: S329 "A circular corridor-cave, like a cartwheel's rim and unmistakably
artificial. The arc hoops around southwest and southeast."
251c8: S330 "On the northern wall is a wooden rack, of the kind used by bakers
to cool cakes, or painters to dry watercolours."
25218: S331 "an"
2521c: S332 "unwritten vellum scroll"
2522c: S333 "unwritten vellum scrolls"
2523c: S334 "The presence everywhere of tools and instruments makes this place
rather homely to a Duchy-born man like yourself: it's like a smithy, but of the
colours of light, not the alloys of metal."
252c0: S335 "Blinding flashes of green light."
252d8: S336 "The ceiling is solid."
252e8: S337 "The only way in or out is through the arched entrance."
25310: S338 "the"
25314: S339 "It seems to be possible to put something into it."
25338: S340 "An old man you recognise as the great Clotspinner lies on a crude
wooden cot, apparently in a deep sleep or coma."
25388: S341 "One of the few wise men to be widely known across the continent,
he is Clotspinner, renowned for his optical experiments. They've revolutionised
the practice of lense-making in the Duchy, but the Empress was far less
impressed with such footling activities. Nothing has been known of him since
his "resignation" from the Imperial Academy -- until now, that is."
25488: S342 "Clotspinner wanders the workshop pensively, looking over the
equipment."
254bc: S343 "Clotspinner glares at you, standing by his cot."
254e0: S344 "Clotspinner wanders the workshop, with a look of low cunning on
his face."
25514: S345 "On the floor beneath Clotspinner's outstretched hand are the
fragments of a broken glass prism, smashed by the fall. It's a tableau like a
narrative painting: you feel a curious urge to disturb nothing."
255a4: S346 "newly-written scroll"
255b4: S347 "A smooth, recent tunnel rises up to natural light."
255d8: S348 "lump of dough"
255e4: S349 "squirrel"
255ec: S350 "picket-fence"
255f8: S351 "stew"
255fc: S352 "blackberry"
25604: S353 "A half-cave, half-overhang among the mossy damp rocks of the
central hillock in the hunting woods. It's a clear night, and a fresh cold
breeze blows across your face.

The tunnel runs downward, back into the wheel complex. But escape with your
life is what matters now!"
256c4: S354 "The rockface is in the way. The copse to the north is the only
obvious way to proceed."
25700: S355 "The hillock isn't climbable from here, owing to the overhang."
2572c: S356 "An endless succession of the seasons, momentarily interrupted by
small rockfalls and lightning-strikes."
25774: S357 "A break in the dense foliage, caused mainly by the shadow of the
rockface to the west, bathed by the unnatural light which fires over the
hillock. Trees are clustered in on all sides and there's no sign of the
boundary wall."
25810: S358 "Amilia's hunting party bar that way!"
2582c: S359 "Amilia's hunting party bar that way!"
25848: S360 "Amilia's hunting party bar that way!"
25864: S361 "the terrifying"
25870: S362 "Amilia stands here, akimbo."
25884: S363 "Ravishing, if not ravaging."
25898: S364 "Glossy coat, wet nose: you're a much better-looking dog than you
ever were a human, really. Perhaps a trifle vainer."
258ec: S365 "Running, running through the trackless woods, in search of the
wall and escape. Everywhere looks like everywhere else."
25940: S366 "The brook runs confidently uphill, gushing up under the culvert,
under the wall to Watling Street. The pursuit seems to have been thrown off for
the moment."
259b0: S367 "The culvert runs north-south under the wall."
259d0: S368 "The meeting-point: where Watling Street crosses the culvert,
through which the brook still flows."
25a18: S369 "There's no sense running away by road - the Empire is too vast."
25a48: S370 "There's no sense running away by road - the Empire is too vast."
25a78: S371 "The wall's in the way."
25a8c: S372 "The wall's in the way."
25aa0: S373 "There's no real escape in that direction."
25ac0: S374 "Agents of the Duchy, cloaked as all spies should be, huddle beside
black horses."
25afc: S375 "You do not recognise the agents, hardly surprisingly."
25b24: S376 "

     What kind of game is this?
     Walking from place to place
     Manipulating items
     Conversing with people
     Saving the game, making progress
     Features for experienced players
     Brief list of useful commands
     Fellow members of the Diplomatic Service
"
25bec: S377 "Instructions: How to play this game"
25c08: S378 "What kind of game is this?"
25c1c: S379 "Walking from place to place"
25c30: S380 "Manipulating items"
25c40: S381 "Conversing with people"
25c50: S382 "Saving the game, making progress"
25c68: S383 "Features for experienced players"
25c80: S384 "Brief list of useful commands"
25c94: S385 "Fellow members of the Diplomatic Service"
25cb4: S386 "

     The Northland Empire
     The City of Borealis
     The Old Underground Empire
     The Duchy
     Continental politics
"
25d18: S387 "Briefings: A diplomatic background"
25d34: S388 "The Northland Empire"
25d44: S389 "The City of Borealis"
25d54: S390 "The Old Underground Empire"
25d68: S391 "The Duchy"
25d70: S392 "Continental politics"
25d80: S393 "There's a two hour journey left, unless something happens."
25dac: S394 "It would have to be a drastic derailment."
25dcc: S395 "The elephants are all roped together."
25de8: S396 "Indeed there is."
25df4: S397 "Did you notice some movement in the woods?"
25e14: S398 "Take a closer look at the glimpsed bird."
25e30: S399 "She will look things up for you, if you ask."
25e50: S400 "No, but..."
25e5c: S401 "If only there were a way to distract her attention!"
25e80: S402 "It would have to be something as flighty as her."
25ea4: S403 "You could do with a close-up view."
25ec0: S404 "Look at it through the telescope."
25ed8: S405 "That probably depends on what species it is."
25ef8: S406 "Of course, you'd need to be an expert on the local species of
birds."
25f28: S407 "Or at least to have a good book of local knowledge."
25f4c: S408 "Look up "bird of paradise" in the guide book."
25f70: S409 "Try imitating its mating call."
25f88: S410 "Yes, but not while Amilia is watching."
25fa4: S411 "It's possible to steer the elephant."
25fc0: S412 "What part of the elephant can you reach from here?"
25fe4: S413 "It's been such a hot day, and now a warm sleepy sunset."
2600c: S414 "If only you could cool him down a little..."
2602c: S415 "With something very cold, for instance."
26048: S416 "

     Does the procession ever stop?
     Is there anything to see?
     Amilia has the guide book. I want it!
     Can I get rid of her?
     What is so odd about the culvert?
     Will the bird ever come down?
     Can I do anything with my elephant?
     My elephant has fallen asleep!
"
26120: S417 "Hints: During the Procession"
26138: S418 "Does the procession ever stop?"
26150: S419 "Is there anything to see?"
26164: S420 "Amilia has the guide book. I want it!"
26180: S421 "Can I get rid of her?"
26190: S422 "What is so odd about the culvert?"
261a8: S423 "Will the bird ever come down?"
261c0: S424 "Can I do anything with my elephant?"
261dc: S425 "My elephant has fallen asleep!"
261f4: S426 "He may go off duty eventually."
2620c: S427 "Perhaps, much later in the night, he'll be asleep."
26234: S428 "It has been a very long and tiring day."
26250: S429 "What are beds usually for?"
26264: S430 "It's not important to the game, but you might be amused to know
anyway."
26298: S431 "They are scenes associated with the past of this building."
262c0: S432 "You might try playing Infocom's original Zork games."
262e8: S433 "The tapestry depicts the Topiary in the Zork II gardens."
26314: S434 "You could do with a closer look."
2632c: S435 "Perhaps through the telescope, if you can find it again."
26354: S436 "Not as a cookery device, but..."
2636c: S437 "...it does seem to be serving some purpose."
2638c: S438 "Doesn't it seem rather a new addition to this traditional
kitchen?"
263bc: S439 "If it's not intended to be used, perhaps it's there to conceal
something."
263f0: S440 "It's been put there to block the old fireplace."
26414: S441 "Can you move it?"
26420: S442 "Much of it is delicious and may come in handy later."
26444: S443 "One item, though, is designed to mislead the eye."
26468: S444 "In that the thing it's on is far more important."
2648c: S445 "Yes, indeed it is useful, even though you can't reach it
yourself."
264bc: S446 "Think about it in connection with something in the living room."
264e8: S447 "Something in your trunk."
264fc: S448 "Perhaps not. It's almost empty these days."
2651c: S449 "You could make use of your rope."
26534: S450 "It would have to be well anchored to whatever you were trying to
move."
26564: S451 "Of course, friction might be a problem if you couldn't lift your
burden slightly from the floor."
265a8: S452 "To do that, you'd need to pull it up with something."
265d0: S453 "Perhaps you could make a pulley of some kind with the rope."
265fc: S454 "What's in the ceiling which might help?"
26618: S455 "Throw the rope over the hook and tie one end to your burden."
26644: S456 "Downwards."
2664c: S457 "There is a concealed exit somewhere on the ground floor."
26674: S458 "In the kitchen, in fact."
26688: S459 "Unfortunately it's concealed by something heavy."
266ac: S460 "Think about the carpet."
266c0: S461 "But that would be too obvious."
266d8: S462 "Instead, try under the bed upstairs."
266f4: S463 "A rope would be sensible."
26708: S464 "One end would have to be tied to something not likely to pull
away."
26738: S465 "The stove, for instance."
2674c: S466 "You can either drop the other end of the rope into the chimney and
climb down..."
26784: S467 "

     How can I escape the guard?
     What's the four-poster bed for?
     What do the tapestry and painting mean?
     Where does the green glow come from?
     Does the stove work?
     Is all this food useful?
     How about the meat hook?
     Is the trophy case still good for anything?
     How can I move something heavy?
     Which way can I leave the house?
     How do I get at the trap door?
     What safety measure is needed with the chimney?
"
268d4: S468 "The Customs House"
268e4: S469 "How can I escape the guard?"
268f8: S470 "What's the four-poster bed for?"
26910: S471 "What do the tapestry and painting mean?"
2692c: S472 "Where does the green glow come from?"
26948: S473 "Does the stove work?"
26958: S474 "Is all this food useful?"
2696c: S475 "How about the meat hook?"
26980: S476 "Is the trophy case still good for anything?"
269a0: S477 "How can I move something heavy?"
269b8: S478 "Which way can I leave the house?"
269d0: S479 "How do I get at the trap door?"
269e8: S480 "What safety measure is needed with the chimney?"
26a0c: S481 "Unfortunately, yes, you soon will..."
26a28: S482 "...which is tricky if it's still tied to the stove."
26a50: S483 "It's physically impossible to free the rope."
26a70: S484 "Some people consider natural spring water a delicacy."
26a98: S485 "Yes."
26a9c: S486 "Try searching something which might conceal useful items."
26ac4: S487 "One way is to use magic, which is certainly a temporary solution."
26af4: S488 "Examining the oil-snake may tell you something useful."
26b1c: S489 "The oil-snake is, it seems, lean and hungry."
26b40: S490 "No doubt it would appreciate a good meal."
26b60: S491 "How about giving it a bad one?"
26b78: S492 "Something which appears edible but is actually bad for you."
26ba4: S493 "Have you tried eating the apple from the wickerwork hamper?"
26bd0: S494 "

     Do I still need the rope?
     What should I do with the bubbling pool?
     Is anything hidden hereabouts?
     How can I deal with the oil-snake?
"
26c44: S495 "Amongst the Foundations"
26c58: S496 "Do I still need the rope?"
26c6c: S497 "What should I do with the bubbling pool?"
26c8c: S498 "Is anything hidden hereabouts?"
26ca4: S499 "How can I deal with the oil-snake?"
26cc0: S500 "Consider the iron ring."
26cd4: S501 "It's for tying things to."
26ce8: S502 "Indeed, and the rope cannot be extended."
26d08: S503 "Therefore, carefully lowering yourself isn't an option, and you
can't reach the cave floor..."
26d4c: S504 "...but who knows what might be under the ledge?"
26d70: S505 "Try bungee-jumping."
26d80: S506 "If you were still wearing the rope, you could."
26da4: S507 "There is a way to return the rope to your grasp."
26dc8: S508 "You need somehow to hit it from the far side."
26de8: S509 "You'd have to throw something, though."
26e04: S510 "Something that flies in circular arcs."
26e20: S511 "Consider the flat curved stick."
26e38: S512 "Yes."
26e3c: S513 "The nearest branches are only 10 feet away."
26e5c: S514 "Where might you have seen a flat stick curved through a
right-angle before, in real life?"
26e9c: S515 "Perhaps it's no use at all. Better throw it away."
26ec0: S516 "Of course, some sticks come back when you throw them."
26ee8: S517 "This may be advantageous if you want to hit something from
behind."
26f18: S518 "For instance, something you can't reach but which you want to push
towards you."
26f50: S519 "Primitive Iron Age peoples lived here long ago, to judge from
their remains and the chimney-crack."
26f98: S520 "A cavity with a distinctive triangular shape."
26fb8: S521 "One which can be seen from the other side."
26fd8: S522 "Where would be about on the same level and a little way east?"
27004: S523 "(Don't look at the next few hints until you've already found both
sides.)"
2703c: S524 "The problem is that the cavity is dark."
27058: S525 "But there is a way of getting a light source inside."
2707c: S526 "Since you can't throw from this range, you'll need to use a more
serious projectile."
270b8: S527 "Such as an arrow."
270c8: S528 "Now try to make it an arrow which is giving off light."
270f0: S529 "With the help of one of your spells."
2710c: S530 "Sometimes you have to fight fire with fire."
2712c: S531 "In this case, insects with insects."
27148: S532 "Magic may come to your aid."
2715c: S533 "The Adventurer is corruptible..."
27178: S534 "...and has old-fashioned tastes."
27194: S535 "To be blunt, he suffers from avarice."
271b0: S536 "Avarice: the desire to collect treasure."
271d0: S537 "Unfortunately, he's under a geas and cannot leave here."
271f8: S538 "So you'll have to collect treasures on his behalf."
2721c: S539 "The alchemical legend of a stone with the power to transmute lead
into gold, and perform other wondrous transformations, if only it existed."
2727c: S540 "It's a log of progress, which the long-dead owner of the Customs
House drew up."
272b8: S541 "Progress in using the "ruther" spell."
272d4: S542 "The colours denote elemental substances."
272f0: S543 "The arrows indicate how they are changed."
27310: S544 "For example, Copper to Silver to Gold. No wonder the old owner was
rich!"
27348: S545 "Here is a full translation (you may notice that the
transformations all take place within columns of the Periodic Table of the
Elements):"
273a8: S546 ""Red-black --> ? --> ? -->" means "Iron --> Rubidium --> Osmium
-->""
273f4: S547 ""Copper --> Silver-white --> Bright yellow -->" means "Copper -->
Silver --> Gold -->""
2744c: S548 ""Black --> Dull silver --> Dull grey -->" means "Carbon --> Tin
--> Lead -->""
2749c: S549 ""Vivid green --> Skull symbol -->" means "Phosphorus --> Arsenic
-->""
274e0: S550 ""Flame symbol --> Yellow -->" means "Oxygen --> Sulphur -->""
2751c: S551 ""Chalky white --> Dark silver -->" means "Calcium --> Magnesium
-->""
2755c: S552 "

     How do I get down from the ledge?
     I'm a good 20 feet short!
     I can't get back up from the Tiny Cave.
     Can I reach the tree from the ledge?
     What use is the flat curved stick?
     What's the significance of the shard?
     What's behind the quartz window?
     Woodlice and ants are a problem.
     How do I pass the Pale Corridor?
     What is the Philosopher's Stone?
     How does the colour chart work?
"
276a0: S553 "Ledge and Surroundings"
276b0: S554 "How do I get down from the ledge?"
276c8: S555 "I'm a good 20 feet short!"
276dc: S556 "I can't get back up from the Tiny Cave."
276fc: S557 "Can I reach the tree from the ledge?"
27718: S558 "What use is the flat curved stick?"
27730: S559 "What's the significance of the shard?"
2774c: S560 "What's behind the quartz window?"
27764: S561 "Woodlice and ants are a problem."
2777c: S562 "How do I pass the Pale Corridor?"
27798: S563 "What is the Philosopher's Stone?"
277b4: S564 "How does the colour chart work?"
277cc: S565 "The means for doing so are further down."
277e8: S566 "If you had something to span across to the ledge, you'd be able to
climb back over."
27824: S567 "Something, say, wooden and ten feet long."
27844: S568 "It's a pity it seems to be bound up."
27860: S569 "Held together tightly with vines, in fact."
27880: S570 "Which must be fastened in many places."
2789c: S571 "You need a way to pull the scroll out at the same time as getting
away."
278d0: S572 "So that your movement is what does the pulling."
278f4: S573 "You need, then, to be attached to the scroll."
27918: S574 "In face, tied with the rope."
27930: S575 "But if you go the same way as the avalanche, you can expect to be
overtaken..."
27968: S576 "...so try to get away sideways."
27980: S577 "Use of magic may suggest reason for this."
279a0: S578 "The arsenic poison can't be removed, as such."
279c4: S579 "But it can be altered."
279d4: S580 "Arsenic is a pure chemical element."
279f0: S581 "It's not for percussion."
27a04: S582 "Its use is related to its surroundings."
27a20: S583 "The gauze is really a sieve."
27a34: S584 "Which would pass water while retaining solid matter."
27a58: S585 "The drum is a river-mining pan..."
27a74: S586 "So it needs fast-moving water to work properly."
27a98: S587 "If the sediment seems worthless, read on..."
27ab8: S588 "Panning is not an instant process."
27ad0: S589 "Other than being vicious, you mean?"
27aec: S590 "Yes and no. The lily at the surface plays no very great part."
27b18: S591 "

     I can't get back up.
     The treehouse is impenetrable.
     The scree slope is too unstable!
     The arched doorway seems very dangerous.
     What's the drum for?
     Does the water-lily play a part?
"
27bb8: S592 "Cedar and Cave Floor"
27bc8: S593 "I can't get back up."
27bd8: S594 "The treehouse is impenetrable."
27bf0: S595 "The scree slope is too unstable!"
27c08: S596 "The arched doorway seems very dangerous."
27c24: S597 "What's the drum for?"
27c34: S598 "Does the water-lily play a part?"
27c4c: S599 "It must be soon, but the shell is very tough."
27c6c: S600 "Perhaps if the shell were given some kind of shock?"
27c90: S601 "It is curious the way the hornet-thing hollowed out a long
ramp-like corridor uphill to its egg chamber."
27cd8: S602 "Perhaps the idea is that the adult hornet hatches the egg by
pushing it down the slope, to crack it."
27d20: S603 "You must find a way of immobilising it, without exploding it."
27d4c: S604 "Casting a "piroo" spell would be a bad idea."
27d6c: S605 "Consider if your companion may be able to assist."
27d90: S606 "Look carefully to see what it has available."
27db0: S607 "The poisoned sting would presumably upset the plant?"
27dd4: S608 "So you need to get poison out of the stinger."
27df4: S609 "(Well, what do you expect?) It's wise to protect them."
27e20: S610 "The ambassador's trunk is useful in that regard."
27e44: S611 "Though it needs to be closed, of course."
27e64: S612 "Although it floats away, it is indeed washed up at a different
beach."
27e94: S613 "One that's lower down in the caves."
27eb0: S614 "Try re-exploring the floor of the inverted cedar cave."
27ed8: S615 "If you want to, yes."
27ee8: S616 "The problem is to climb up the chimney, without the rope."
27f10: S617 "What else might help?"
27f20: S618 "Something you've already used to span two height differences."
27f4c: S619 "If you don't know, you're not looking in the right places."
27f78: S620 "Or perhaps that should be, in the right cavities."
27f9c: S621 "Look into the triangular cavity."
27fb4: S622 "

     Can the creature be revived?
     When will the egg hatch?
     Will the amniotic fluid harm my hands?
     The lily is crushing me.
     My possessions are lost!
     Can I go back to the house for something?
     What's the broad leaf for?
"
2806c: S623 "Egg Chamber and Lily"
2807c: S624 "Can the creature be revived?"
28090: S625 "When will the egg hatch?"
280a4: S626 "Will the amniotic fluid harm my hands?"
280c0: S627 "The lily is crushing me."
280d4: S628 "My possessions are lost!"
280e8: S629 "Can I go back to the house for something?"
28108: S630 "What's the broad leaf for?"
2811c: S631 "They're worth close study."
28130: S632 "Modern medicine can do nothing for him."
2814c: S633 "Really ancient medicine, though..."
28168: S634 "...such as that practiced by the local Iron Age tribe..."
28194: S635 "...and depicted in the paintings within the dark triangular
cavity..."
281c8: S636 "...will bring Clotspinner round."
281e4: S637 "Follow the process in the painting."
28200: S638 "Fortunately, you have documents to prove your identity."
28228: S639 "Yes, it needs to be focused."
28240: S640 "The task used to be performed by the glass prism, but Clotspinner
dropped it."
28278: S641 "Although the beam vapourises most things, we know that metallic
rocks can survive it (since it was reflected by the meteor)."
282d0: S642 "Something suitable can be extracted from the river in the cedar
cave."
28300: S643 "By panning."
2830c: S644 "Yes, it's a pity the ore isn't some more attractive crystal."
28338: S645 "If only it were a different element!"
28354: S646 "They measure the angle at which light scatters."
28378: S647 "Though this is useful only if light is being split at the anvil."
283a4: S648 "Something nearby."
283b4: S649 "Well, it is a very heavy lump of elemental magnesium."
283dc: S650 "A sorceror in his element could change something."
28400: S651 "Manufacture a suitable spell."
28418: S652 "Luckily Clotspinner has already given this some thought."
28440: S653 "He has already performed the necessary angular calculation."
2846c: S654 "You may remember that he distrusts mental arithmetic."
28494: S655 "So his working may still be on paper somewhere."
284b8: S656 "Take a look at the apparently stock-control stub."
284dc: S657 "Could it not be a long addition instead?"
284f8: S658 "

     Are the supplies useful?
     How can I heal Clotspinner?
     He is suspicious of me.
     The beam strikes the anvil uselessly.
     The beam dissipates in the ore.
     What are the calibrations for?
     What does the swivel mounting hold?
     Is the meteor invulnerable?
     How can I leave the Wheel?
"
285e4: S659 "The Wheel and its Environs"
285f8: S660 "Are the supplies useful?"
2860c: S661 "How can I heal Clotspinner?"
28624: S662 "He is suspicious of me."
28638: S663 "The beam strikes the anvil uselessly."
28654: S664 "The beam dissipates in the ore."
2866c: S665 "What are the calibrations for?"
28684: S666 "What does the swivel mounting hold?"
286a0: S667 "Is the meteor invulnerable?"
286b4: S668 "How can I leave the Wheel?"
286c8: S669 "Perhaps that's because you're still thinking like a human."
286f4: S670 "A dog would have talents to exploit which a human could not."
28720: S671 "Heightened senses for just such an occasion, for instance."
2874c: S672 "Remember how you acquired your magic in the first place."
28774: S673 "It was present in the water which flows hereabouts."
28798: S674 "And the culvert's water must be magic - it's flowing uphill."
287c4: S675 "

     I am hopelessly lost.
     The agents ignore me.
     Shall I always be a dog?
"
28808: S676 "Running Through the Woods"
2881c: S677 "I am hopelessly lost."
2882c: S678 "The agents ignore me."
2883c: S679 "Shall I always be a dog?"
28850: S680 "Actually, you can, because you know one spell."
28874: S681 "Remember the word you cursed out by accident when you hit your
head on the lintel?"
288ac: S682 "The word was "jilnix"."
288c0: S683 "Actually, you can. You can either "cast" a spell "at"
something..."
288f4: S684 "A spell must be in your mind before you can cast it."
28918: S685 "You need to "learn" it, in fact."
28934: S686 "Unfortunately, there is something magical about the binding of a
spell book, which a scroll doesn't share."
28980: S687 "Fortunately the binding of a spell book can accommodate new
material."
289b0: S688 "Potentially an infinite number, among which the following eight
are of particular utility:"
289f0: S689 ""jilnix spell: summon small plague of insects.""
28a14: S690 ""chiaro spell: cause inanimate object to radiate light.""
28a3c: S691 ""piroo spell: unfasten object.""
28a54: S692 ""ruther spell: transmute pure chemical element.""
28a78: S693 ""azzev spell: view the past.""
28a90: S694 ""ploor spell: nation shall speak peace unto nation.""
28ab8: S695 ""thrale spell: assist even old or wizened savant.""
28adc: S696 "

     I can't do anything with my new magic!
     I can't direct my spells.
     I can't use the spells in the book.
     I can't use a spell from a scroll.
     What spells are there in the game?
"
28b70: S697 "Hints: Casting Spells"
28b84: S698 "I can't do anything with my new magic!"
28ba0: S699 "I can't direct my spells."
28bb4: S700 "I can't use the spells in the book."
28bd0: S701 "I can't use a spell from a scroll."
28bec: S702 "What spells are there in the game?"
28c04: S703 "1 point is awarded for each of the following..."
28c28: S704 "Obtaining each of the (5) treasure items"
28c48: S705 "Depositing each of the (5) treasure items"
28c68: S706 "Summoning the bird of paradise"
28c80: S707 "Waking up the elephant"
28c90: S708 "Derailing the procession"
28ca4: S709 "Reaching the upstairs landing"
28cb8: S710 "Tying the rope to the stove"
28ccc: S711 "Throwing the rope over the hook"
28ce4: S712 "Dislodging the stove"
28cf4: S713 "Getting down into the cellar"
28d08: S714 "Finding something under the leaves"
28d20: S715 "Acquiring magical powers"
28d34: S716 "Obtaining the vellum book"
28d48: S717 "Getting into the treehouse"
28d5c: S718 "Lighting the triangular cavity"
28d74: S719 "Passing the spectral Adventurer"
28d8c: S720 "Stinging the lily"
28d98: S721 "Reporting to the Duchy"
28da8: S722 "Healing Clotspinner"
28db8: S723 "Manufacturing a new spell"
28dcc: S724 "Granting Clotspinner asylum"
28de0: S725 "Escaping to the woods"
28df0: S726 "If you examine the trunk you may get the general idea."
28e18: S727 "There are, after all, rumours that the Magic is returning."
28e44: S728 "And the Empire has spent weeks wasting your time and trying to
keep you from finding anything out."
28e88: S729 "And that greenish glow seen through the landing window can hardly
be natural."
28ec0: S730 "Since you come from the Duchy, a country of artisans and craftsmen
who make fine machines, you can't allow the Empire to be the only country to
rediscover the power of Magic."
28f3c: S731 "In the modern age, nobody collects treasures."
28f5c: S732 "But a throwback from the past might want them."
28f7c: S733 "Perhaps a ghost."
28f88: S734 "The following is a list of treasures and locations."
28fac: S735 "The jade figurine is in the Customs House bedroom."
28fd0: S736 "The jewelled scarab is (not terribly well) hidden in the trophy
case."
29004: S737 "The platinum egg nestles under some autumnal leaves."
29028: S738 "The silver ingot is deep inside the crevice below the curved
ledge."
29058: S739 "(You may not want to read these until the game is finished -
A.M.H.)"
2908c: S740 "The Northlands Empire is a might-have-been Russia, before Peter
the Great forcibly modernised it: but a Russia without strong central European
neighbours, whose centre of gravity is further west."
29118: S741 "I envisaged the Duchy as a slightly richer Holland of the same
period, without a strong maritime rival (i.e., without an England). Relative
religious tolerance, good glass-making and the like made Holland a centre of
the European enlightenment, where the first microscopes and telescopes
demolished accepted science."
291f8: S742 "My present computer was bought from a shop in St Albans, England,
through which the Roman road called Watling Street passes."
29254: S743 "The foundation myths of the OUE are mostly Roman."
2927c: S744 "The fireball across the sky is based on accounts of one appearing
over London one summer night in 1783: thunderous, bluish with an orange tail of
flame, its head the size of the full moon, it took thirty seconds to cross the
London sky and put the fear of God into the population. (See Peter Ackroyd's
recent biography of William Blake.)"
2936c: S745 "And the idea that shapes in the sky model earthly topography is
Egyptian: the Nile's shape happens to resemble the Milky Way's."
293c8: S746 "But I'd be fibbing if I didn't acknowledge also the Great
Underground Empire, as conceived by Marc Blank, P. David Lebling and others.
The ghostly adventurer may be an echo of the hero of "Zork", and the Customs
House may even be the white house where that masterly game begins."
29494: S747 "The sherbet itself and the silken boy owe something to T. S.
Eliot's poem "The Journey of the Magi", itself largely a versification of a
sermon by Lancelot Andrewes, preached before James I."
29520: S748 "The man in the "azzev" vision in the Treehouse is Professor J. R.
R. Tolkien."
2955c: S749 "The narrative painting alluded to on first sight of Clotspinner is
David's "The death of Marat"."
295a4: S750 ""Nation shall speak peace unto nation" has been the motto of the
British Broadcasting Corporation since its foundation."
295f8: S751 "Collioure is a fishing village on the Cote Vermielle, the French
coastline east of the Pyrenees, noted as the home of the fauvist movement of
impressionist painting."
2966c: S752 "The "ruther" spell is named for Ernest Rutherford, the scientist
who actually discovered the philosopher's stone. He split the atom and was able
to transform some atomic elements. Ironically, fission and fusion on the whole
make it easy to produce lead from more valuable metals, not the other way
round. This is basically why there is a lot of lead in the universe and not
much gold. (Lead is produced late in the life of any star. Gold is only
produced in a supernova explosion.)"
297bc: S753 ""chiaro" is Italian for "to light up"."
297dc: S754 "Most of the other spell names are borrowed from names of planets
in the "Lensman" space operas of E. E. "Doc" Smith, an American food chemist of
the 1920s and 30s who worked on dough consistency (which perhaps explains his
writing style). The bad guys lived on Thrale, Ploor (where intergalactic
telepathy machines were invented) and ultimately Eddore. Helmuth was a gangster
whose planetary base was not, I think, ever named. Palain was a frigid world
from which the cowardly hero Nadreck hailed. Finally, Alsakan was a somewhat
enigmatic planet, reported only as being a very long way away and exporting
luxury tobacco."
29998: S755 "(You may not want to read these until the game is finished -
A.M.H.)"
299cc: S756 "That there's a Northlands superstition about sherbet?"
299f4: S757 "That there's a hidden piece of fruit (as befits a fruit
cocktail)?"
29a24: S758 "That you can extract the bone from the joint of ham?"
29a48: S759 "That you can make the oil-snake swallow the drum?"
29a6c: S760 "That you can revenge yourself on Amilia in the end game?"
29a94: S761 "That the game contains a prominently-displayed anagram?"
29abc: S762 "(Just a hint for one of these.)"
29ad4: S763 "

     Exactly how points are scored.
     What's my secret mission, exactly?
     What are the treasures for?
     Where are the treasures?
     Notes on sources.
     Did you know...?
"
29b64: S764 "Hints: General"
29b70: S765 "Exactly how points are scored."
29b88: S766 "What's my secret mission, exactly?"
29ba4: S767 "What are the treasures for?"
29bb8: S768 "Where are the treasures?"
29bcc: S769 "Notes on sources."
29bdc: S770 "Did you know...?"
29bec: S771 "

     Instructions: How to play this game
     Briefings: A diplomatic background
     Hints: During the Procession
     The Customs House
     Amongst the Foundations
     Ledge and Surroundings
     Cedar and Cave Floor
     Egg Chamber and Lily
     The Wheel and its Environs
     Running Through the Woods
     Hints: Casting Spells
     Hints: General
"
29d00: S772 "Hints"
29d04: S773 "Instructions: How to play this game"
29d20: S774 "Briefings: A diplomatic background"
29d3c: S775 "Hints: During the Procession"
29d54: S776 "The Customs House"
29d64: S777 "Amongst the Foundations"
29d78: S778 "Ledge and Surroundings"
29d88: S779 "Cedar and Cave Floor"
29d98: S780 "Egg Chamber and Lily"
29da8: S781 "The Wheel and its Environs"
29dbc: S782 "Running Through the Woods"
29dd0: S783 "Hints: Casting Spells"
29de4: S784 "Hints: General"
29df0: S785 "It is pitch black. You are in danger of falling into a pit if you
move around in this."
29e2c: S786 "I shall be telling this with a sigh"
29e44: S787 "Somewhere ages and ages hence:"
29e5c: S788 "Two roads diverged in a wood, and I -"
29e78: S789 "I took the one less travelled by,"
29e90: S790 "And that has made all the difference."
29eac: S791 ""
29eb0: S792 "-- Robert Frost, "The Road Not Taken""
29ed0: S793 "write to"
29ed8: S794 "read"
29edc: S795 "send message"
29ee4: S796 "increment"
29eec: S797 "apply 'ofclass' for"
29efc: S798 "recreate"
29f04: S799 "destroy"
29f0c: S800 "copy"
29f10: S801 "copy"
29f14: S802 "<unknown attribute>"
29f28: S803 "<unknown attribute>"
29f3c: S804 "<unknown attribute>"
29f50: S805 "<unknown attribute>"
29f64: S806 "<unknown attribute>"
29f78: S807 "<unknown attribute>"
29f8c: S808 "<unknown attribute>"
29fa0: S809 "<unknown attribute>"
29fb4: S810 "<unknown attribute>"
29fc8: S811 "<unknown attribute>"
29fdc: S812 "<unknown attribute>"
29ff0: S813 "<unknown attribute>"
2a004: S814 "<unknown attribute>"
2a018: S815 "<unknown attribute>"
2a02c: S816 "<unknown attribute>"
2a040: S817 "<unknown attribute>"
2a054: S818 "<unknown attribute>"
2a068: S819 "<unknown attribute>"
2a07c: S820 "<unknown attribute>"
2a090: S821 "<unknown attribute>"
2a0a4: S822 "<unknown attribute>"
2a0b8: S823 "<unknown attribute>"
2a0cc: S824 "<unknown attribute>"
2a0e0: S825 "<unknown attribute>"
2a0f4: S826 "<unknown attribute>"
2a108: S827 "<unknown attribute>"
2a11c: S828 "<unknown attribute>"
2a130: S829 "<unknown attribute>"
2a144: S830 "<unknown attribute>"
2a158: S831 "<unknown attribute>"
2a16c: S832 "<unknown attribute>"
2a180: S833 "<unknown attribute>"
2a194: S834 "<unknown attribute>"
2a1a8: S835 "<unknown attribute>"
2a1bc: S836 "<unknown attribute>"
2a1d0: S837 "<unknown attribute>"
2a1e4: S838 "<unknown attribute>"
2a1f8: S839 "<unknown attribute>"
2a20c: S840 "<unknown attribute>"
2a220: S841 "<unknown attribute>"
2a234: S842 "<unknown attribute>"
2a248: S843 "<unknown attribute>"
2a25c: S844 "<unknown attribute>"
2a270: S845 "<unknown attribute>"
2a284: S846 "<unknown attribute>"
2a298: S847 "<unknown attribute>"
2a2ac: S848 "<unknown attribute>"
2a2c0: S849 "<unknown attribute>"
2a2d4: S850 "name"
2a2d8: S851 "create"
2a2dc: S852 "recreate"
2a2e4: S853 "destroy"
2a2ec: S854 "remaining"
2a2f4: S855 "copy"
2a2f8: S856 "call"
2a2fc: S857 "print"
2a300: S858 "print_to_array"
2a30c: S859 "animate"
2a314: S860 "absent"
2a318: S861 "clothing"
2a320: S862 "concealed"
2a328: S863 "container"
2a330: S864 "door"
2a334: S865 "edible"
2a338: S866 "enterable"
2a340: S867 "general"
2a348: S868 "light"
2a34c: S869 "lockable"
2a354: S870 "locked"
2a358: S871 "moved"
2a35c: S872 "on"
2a360: S873 "open"
2a364: S874 "openable"
2a36c: S875 "proper"
2a370: S876 "scenery"
2a378: S877 "scored"
2a37c: S878 "static"
2a380: S879 "supporter"
2a388: S880 "switchable"
2a390: S881 "talkable"
2a398: S882 "transparent"
2a3a0: S883 "visited"
2a3a8: S884 "workflag"
2a3b0: S885 "worn"
2a3b4: S886 "male"
2a3b8: S887 "female"
2a3bc: S888 "neuter"
2a3c0: S889 "pluralname"
2a3c8: S890 "before"
2a3cc: S891 "after"
2a3d0: S892 "life"
2a3d4: S893 "n_to"
2a3d8: S894 "s_to"
2a3dc: S895 "e_to"
2a3e0: S896 "w_to"
2a3e4: S897 "ne_to"
2a3e8: S898 "se_to"
2a3ec: S899 "nw_to"
2a3f0: S900 "sw_to"
2a3f4: S901 "u_to"
2a3f8: S902 "d_to"
2a3fc: S903 "in_to"
2a400: S904 "out_to"
2a408: S905 "door_to"
2a410: S906 "with_key"
2a418: S907 "door_dir"
2a420: S908 "invent"
2a424: S909 "plural"
2a428: S910 "add_to_scope"
2a434: S911 "list_together"
2a440: S912 "react_before"
2a44c: S913 "react_after"
2a454: S914 "grammar"
2a45c: S915 "orders"
2a460: S916 "initial"
2a468: S917 "when_open"
2a470: S918 "when_closed"
2a478: S919 "when_on"
2a480: S920 "when_off"
2a488: S921 "description"
2a490: S922 "describe"
2a498: S923 "article"
2a4a0: S924 "cant_go"
2a4a8: S925 "found_in"
2a4b0: S926 "time_left"
2a4b8: S927 "number"
2a4bc: S928 "time_out"
2a4c4: S929 "daemon"
2a4c8: S930 "each_turn"
2a4d0: S931 "capacity"
2a4d8: S932 "short_name"
2a4e0: S933 "short_name_indef"
2a4ec: S934 "parse_name"
2a4f4: S935 "articles"
2a4fc: S936 "play"
2a500: S937 "Pronouns"
2a508: S938 "Quit"
2a50c: S939 "Restart"
2a514: S940 "Restore"
2a51c: S941 "Save"
2a520: S942 "Verify"
2a528: S943 "ScriptOn"
2a530: S944 "ScriptOff"
2a538: S945 "NotifyOn"
2a540: S946 "NotifyOff"
2a548: S947 "Places"
2a550: S948 "Objects"
2a558: S949 "Score"
2a55c: S950 "FullScore"
2a564: S951 "Inv"
2a568: S952 "Take"
2a56c: S953 "Drop"
2a570: S954 "Remove"
2a578: S955 "PutOn"
2a580: S956 "Insert"
2a588: S957 "Transfer"
2a590: S958 "EmptyT"
2a598: S959 "Give"
2a59c: S960 "Show"
2a5a0: S961 "Enter"
2a5a4: S962 "GetOff"
2a5ac: S963 "Exit"
2a5b0: S964 "VagueGo"
2a5b8: S965 "Go"
2a5bc: S966 "LMode1"
2a5c4: S967 "LMode2"
2a5cc: S968 "LMode3"
2a5d4: S969 "Look"
2a5d8: S970 "Examine"
2a5e0: S971 "LookUnder"
2a5e8: S972 "Search"
2a5f0: S973 "Unlock"
2a5f8: S974 "Lock"
2a5fc: S975 "SwitchOn"
2a604: S976 "SwitchOff"
2a60c: S977 "Open"
2a610: S978 "Close"
2a614: S979 "Disrobe"
2a61c: S980 "Wear"
2a620: S981 "Eat"
2a624: S982 "Yes"
2a628: S983 "No"
2a62c: S984 "Burn"
2a630: S985 "Pray"
2a634: S986 "Wake"
2a638: S987 "WakeOther"
2a640: S988 "Kiss"
2a644: S989 "Think"
2a648: S990 "Smell"
2a64c: S991 "Listen"
2a654: S992 "Taste"
2a658: S993 "Touch"
2a65c: S994 "Dig"
2a660: S995 "Cut"
2a664: S996 "Jump"
2a668: S997 "JumpOver"
2a670: S998 "Tie"
2a674: S999 "Drink"
2a678: S1000 "Fill"
2a67c: S1001 "Sorry"
2a680: S1002 "Strong"
2a688: S1003 "Mild"
2a68c: S1004 "Attack"
2a694: S1005 "Swim"
2a698: S1006 "Swing"
2a69c: S1007 "Blow"
2a6a0: S1008 "Rub"
2a6a4: S1009 "Set"
2a6a8: S1010 "SetTo"
2a6b0: S1011 "WaveHands"
2a6b8: S1012 "Wave"
2a6bc: S1013 "Pull"
2a6c0: S1014 "Push"
2a6c4: S1015 "Turn"
2a6c8: S1016 "PushDir"
2a6d0: S1017 "Squeeze"
2a6d8: S1018 "ThrowAt"
2a6e0: S1019 "Tell"
2a6e4: S1020 "Answer"
2a6ec: S1021 "Ask"
2a6f0: S1022 "Buy"
2a6f4: S1023 "Sing"
2a6f8: S1024 "Climb"
2a6fc: S1025 "Wait"
2a700: S1026 "Sleep"
2a704: S1027 "Consult"
2a70c: S1028 "parse_input"
2a714: S1029 "AskFor"
2a71c: S1030 "GiveR"
2a724: S1031 "ShowR"
2a72c: S1032 "begin_action"
2a738: S1033 "end_turn_sequence"
2a748: S1034 "historic_view"
2a754: S1035 "is_treasure"
2a75c: S1036 "is_arrow"
2a764: S1037 "telescope_view"
2a770: S1038 "LookAtThrough"
2a77c: S1039 "Coo"
2a780: S1040 "Chirrup"
2a788: S1041 "Untie"
2a78c: S1042 "is_spell"
2a794: S1043 "known_about"
2a79c: S1044 "is_scroll"
2a7a4: S1045 "is_spell_book"
2a7b0: S1046 "magic"
2a7b4: S1047 "unmagic"
2a7bc: S1048 "Learn"
2a7c0: S1049 "Cast"
2a7c4: S1050 "Count"
2a7c8: S1051 "Shoot"
2a7cc: S1052 "CastOne"
2a7d4: S1053 "time_here"
2a7dc: S1054 "time_since_poisoned"
2a7ec: S1055 "Grind"
2a7f0: S1056 "cooperative"
2a7f8: S1057 "TurnTo"
2a800: S1058 "ever_been_used"
2a80c: S1059 "time_prowling"
2a818: S1060 "rqm"
2a81c: S1061 "Bite"
2a820: S1062 "Bark"
2a824: S1063 "Version"
2a82c: S1064 "Empty"
2a830: S1065 "InvTall"
2a838: S1066 "InvWide"
2a840: S1067 "GoIn"
2a844: S1068 "Help"
2a848: S1069 "LookAtThroughB"
2a854: S1070 "Shoot2"
2a85c: S1071 "DontSay"
2a864: S1072 "PoisonV"
2a86c: S1073 "Spells"

[End of text at 2a874]

[End of file]
