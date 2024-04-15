#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
SVN_TRUNK=file://$SCRIPT_DIR/lab2/trunk
SVN_BRANCHES=file://$SCRIPT_DIR/lab2/branches
SVN_BRANCH_RED1=file://$SCRIPT_DIR/lab2/branches/red1
SVN_BRANCH_RED2=file://$SCRIPT_DIR/lab2/branches/red2
SVN_BRANCH_BLUE1=file://$SCRIPT_DIR/lab2/branches/blue1
SVN_BRANCH_BLUE2=file://$SCRIPT_DIR/lab2/branches/blue2
SVN_BRANCH_BLUE3=file://$SCRIPT_DIR/lab2/branches/blue3
SVN_BRANCH_BLUE4=file://$SCRIPT_DIR/lab2/branches/blue4
SVN_BRANCH_BLUE5=file://$SCRIPT_DIR/lab2/branches/blue5

svnadmin create lab2
svn mkdir -m "trunk" $SVN_TRUNK
svn mkdir -m "branches" $SVN_BRANCHES
svn checkout $SVN_TRUNK trunk

#r0
echo "r0" >> trunk/msg0.txt
svn add trunk/msg0.txt
cd trunk && svn commit -m "r0 commit" --username=roman2 && cd ..

#r1
svn copy $SVN_TRUNK $SVN_BRANCH_BLUE1 -m "blue1 add"
cd trunk && svn switch $SVN_BRANCH_BLUE1 && cd ..
echo "r1" >> trunk/msg1.txt
svn add trunk/msg1.txt
cd trunk && svn commit -m "r1 commit" --username=roman && cd ..

#r2
svn copy $SVN_BRANCH_BLUE1 $SVN_BRANCH_BLUE2 -m "blue2 add"
cd trunk && svn switch $SVN_BRANCH_BLUE2 && cd ..
echo "r2" >> trunk/msg2.txt
svn add trunk/msg2.txt
cd trunk && svn commit -m "r2 commit" --username=roman && cd ..

#r3
svn copy $SVN_BRANCH_BLUE2 $SVN_BRANCH_BLUE3 -m "blue3 add"
cd trunk && svn switch $SVN_BRANCH_BLUE3 && cd ..
echo "r3" >> trunk/msg3.txt
svn add trunk/msg3.txt
cd trunk && svn commit -m "r3 commit" --username=roman && cd ..

#r4
svn copy $SVN_BRANCH_BLUE3 $SVN_BRANCH_BLUE4 -m "blue4 add"
cd trunk && svn switch $SVN_BRANCH_BLUE4 && cd ..
echo "r4" >> trunk/msg4.txt
svn add trunk/msg4.txt
cd trunk && svn commit -m "r4 commit" --username=roman && cd ..

#r5
echo "r5" >> trunk/msg5.txt
svn add trunk/msg5.txt
cd trunk && svn commit -m "r5 commit" --username=roman && cd ..

#r6
cd trunk && svn switch $SVN_BRANCH_BLUE1 && cd ..
echo "r6" >> trunk/msg6.txt
svn add trunk/msg6.txt
cd trunk && svn commit -m "r6 commit" --username=roman && cd ..

#r7
cd trunk && svn switch $SVN_TRUNK
svn up
svn merge --force $SVN_BRANCH_BLUE1 -m "r7"
cd ..

#r8
svn copy $SVN_BRANCH_BLUE4 $SVN_BRANCH_BLUE5 -m "blue5 add"
cd trunk && svn switch $SVN_BRANCH_BLUE5 && cd ..
echo "r8" >> trunk/msg8.txt
svn add trunk/msg8.txt
cd trunk && svn commit -m "r8 commit" --username=roman && cd ..

#r9
svn copy $SVN_BRANCH_BLUE5 $SVN_BRANCH_RED1 -m "red1 add"
cd trunk && svn switch $SVN_BRANCH_RED1 && cd ..
echo "r9" >> trunk/msg9.txt
svn add trunk/msg9.txt
cd trunk && svn commit -m "r9 commit" --username=roman2 && cd ..

#r10
svn copy $SVN_BRANCH_RED1 $SVN_BRANCH_RED2 -m "red2 add"
cd trunk && svn switch $SVN_BRANCH_RED2
svn up
svn merge --force $SVN_BRANCH_RED1 -m "r10"
cd ..

#r11
cd trunk && svn switch $SVN_BRANCH_BLUE4 && cd ..
echo "r11" >> trunk/msg11.txt
svn add trunk/msg11.txt
cd trunk && svn commit -m "r11 commit" --username=roman && cd ..

#r12
echo "r12" >> trunk/msg12.txt
svn add trunk/msg11.txt
cd trunk && svn commit -m "r12 commit" --username=roman && cd ..

#r13
echo "r13" >> trunk/msg13.txt
svn add trunk/msg13.txt
cd trunk && svn commit -m "r13 commit" --username=roman && cd ..

#r14
cd trunk && svn switch $SVN_BRANCH_BLUE3 && cd ..
echo "r14" >> trunk/msg14.txt
svn add trunk/msg14.txt
cd trunk && svn commit -m "r14 commit" --username=roman && cd ..

#r15
cd trunk && svn switch $SVN_BRANCH_BLUE5 && cd ..
echo "r15" >> trunk/msg15.txt
svn add trunk/msg15.txt
cd trunk && svn commit -m "r15 commit" --username=roman && cd ..

#r16
cd trunk && svn switch $SVN_BRANCH_RED2 && cd ..
echo "r16" >> trunk/msg16.txt
svn add trunk/msg16.txt
cd trunk && svn commit -m "r16 commit" --username=roman2 && cd ..

#r17
cd trunk && svn switch $SVN_TRUNK && cd ..
echo "r17" >> trunk/msg17.txt
svn add trunk/msg17.txt
cd trunk && svn commit -m "r17 commit" --username=roman2 && cd ..

#r18
echo "r18" >> trunk/msg18.txt
svn add trunk/msg18.txt
cd trunk && svn commit -m "r18 commit" --username=roman2 && cd ..

#r19
cd trunk && svn switch $SVN_BRANCH_RED2 && cd ..
echo "r19" >> trunk/msg19.txt
svn add trunk/msg19.txt
cd trunk && svn commit -m "r19 commit" --username=roman2 && cd ..

#r20
cd trunk && svn switch $SVN_BRANCH_BLUE4
svn up
svn merge --force $SVN_BRANCH_RED2 -m "r20"
cd ..

#r21
cd trunk && svn switch $SVN_BRANCH_BLUE3
svn up
svn merge --force $SVN_BRANCH_BLUE4 -m "r21"
cd ..

#r22
cd trunk && svn switch $SVN_BRANCH_BLUE2 && cd ..
echo "r22" >> trunk/msg22.txt
svn add trunk/msg22.txt
cd trunk && svn commit -m "r22 commit" --username=roman && cd ..

#r23
cd trunk && svn switch $SVN_BRANCH_BLUE5 && cd ..
echo "r23" >> trunk/msg23.txt
svn add trunk/msg23.txt
cd trunk && svn commit -m "r23 commit" --username=roman && cd ..

#r24
cd trunk && svn switch $SVN_BRANCH_BLUE2
svn up
svn merge --force $SVN_BRANCH_BLUE5 -m "r24"
cd ..

#r25
cd trunk && svn switch $SVN_BRANCH_BLUE3 && cd ..
echo "r25" >> trunk/msg25.txt
svn add trunk/msg25.txt
cd trunk && svn commit -m "r25 commit" --username=roman && cd ..

#r26
cd trunk && svn switch $SVN_BRANCH_BLUE2
svn up
svn merge --force $SVN_BRANCH_BLUE3 -m "r26"
cd ..

#r27
echo "r27" >> trunk/msg27.txt
svn add trunk/msg27.txt
cd trunk && svn commit -m "r27 commit" --username=roman && cd ..

#r28
cd trunk && svn switch $SVN_TRUNK
svn up
svn merge --force $SVN_BRANCH_BLUE2 -m "r28"
cd ..