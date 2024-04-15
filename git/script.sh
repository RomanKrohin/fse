#!/bin/bash

mkdir lab2
cd lab2
git init
cd lab2
mkdir reports

#r0
echo "r0" >> reports/msg0.txt
git add ./reports/msg0.txt
git commit -m "r0 commit"

#r1
git checkout -b blue1
echo "r1" >> reports/msg1.txt
git add ./reports/msg1.txt
git commit -m "r1 commit"

#r2
git checkout -b blue2
echo "r2" >> reports/msg2.txt
git add ./reports/msg2.txt
git commit -m "r2 commit"

#r3
git checkout -b blue3
echo "r3" >> reports/msg3.txt
git add ./reports/msg3.txt
git commit -m "r3 commit"

#r4
git checkout -b blue4
echo "r4" >> reports/msg4.txt
git add ./reports/msg4.txt
git commit -m "r4 commit"

#r5
echo "r5" >> reports/msg5.txt
git add ./reports/msg5.txt
git commit -m "r5 commit"

#r6
git checkout blue1
echo "r6" >> reports/msg6.txt
git add ./reports/msg6.txt
git commit -m "r6 commit"

#r7
git checkout master
git merge blue1 -m "r7"

#r8
git checkout -b blue5
echo "r8" >> reports/msg8.txt
git add ./reports/msg8.txt
git commit -m "r8 commit"

#r9
git checkout -b red1
echo "r9" >> reports/msg9.txt
git add ./reports/msg9.txt
git commit -m "r9 commit"

#r10
git checkout -b red2
git merge red1 -m "r10"

#r11
git checkout blue4
echo "r11" >> reports/msg11.txt
git add ./reports/msg11.txt
git commit -m "r11 commit"

#r12
echo "r12" >> reports/msg12.txt
git add ./reports/msg12.txt
git commit -m "r12 commit"

#r13
echo "r13" >> reports/msg13.txt
git add ./reports/msg13.txt
git commit -m "r13 commit"

#r14
git checkout  blue3
echo "r14" >> reports/msg14.txt
git add ./reports/msg14.txt
git commit -m "r14 commit"

#r15
git checkout blue5
echo "r15" >> reports/msg15.txt
git add ./reports/msg15.txt
git commit -m "r15 commit"

#r16
git checkout red2
echo "r16" >> reports/msg16.txt
git add ./reports/msg16.txt
git commit -m "r16 commit"

#r17
git checkout master
echo "r17" >> reports/msg17.txt
git add ./reports/msg17.txt
git commit -m "r17 commit"

#r18
echo "r18" >> reports/msg18.txt
git add ./reports/msg18.txt
git commit -m "r18 commit"

#r19
git checkout red2
echo "r19" >> reports/msg19.txt
git add ./reports/msg19.txt
git commit -m "r19 commit"

#r20
git checkout blue4
git merge red2 -m "r20"

#r21
git checkout blue3
git merge blue4 -m "r21"

#r22
git checkout blue2
echo "r22" >> reports/msg22.txt
git add ./reports/msg22.txt
git commit -m "r22 commit"

#r23
git checkout blue5
echo "r23" >> reports/msg23.txt
git add ./reports/msg23.txt
git commit -m "r23 commit"

#r24
git checkout blue2
git merge blue5 -m "r24"

#r25
git checkout blue3
echo "r25" >> reports/msg25.txt
git add ./reports/msg25.txt
git commit -m "r25 commit"

#r26
git checkout blue2
git merge blue3 -m "r26"

#r27
echo "r27" >> reports/msg27.txt
git add ./reports/msg27.txt
git commit -m "r27 commit"

#r28
git checkout master
git merge blue2 -m "r28"