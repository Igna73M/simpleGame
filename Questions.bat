@echo off

color A0

:Menu

echo What is you name? 
echo type here:
set /p name=
echo Hello Mr/Mrs %name%. Welcome!

echo 1) Start
echo 2) Help
echo 3) Exit

set /p number=

if %number% == 1 goto Start
if %number% == 2 goto Help
if %number% == 3 goto Exit
goto Menu

:Start
cls
echo Do you want to start the game? (y/n)
set /p start=

if %start% == y goto Level1
if %start% == n goto Menu

goto Start

:Help
cls
echo Press the number of the answer then hit enter
echo go back (y/n)

set /p menu_goto=
if %menu_goto% == y goto Menu
if %menu_goto% == n goto Exit
goto Help

:Exit
exit
goto Exit

:Level1
cls
echo Ok, let us go for the puzzle!
echo Question:
echo If marry's daughter is my daughter's mother, what am I to marry?
echo 1. GrandMother
echo 2. mother
echo 3. daughter
echo 4. Grand daughter
echo 5. I am marry

set /p answer1=

if %answer1% == 1 goto wrong1
if %answer1% == 2 goto wrong1
if %answer1% == 3 goto correct1
if %answer1% == 4 goto wrong1
if %answer1% == 5 goto wrong1

goto Level1

:correct1
echo Good job! You are right. Next level? (y/n)
set /p nl1=

if %nl1% == y goto Level2
if %nl1% == n goto Menu
goto correct1

:wrong1
echo So sad. You are wrong buddy. Retry (y/n)
set /p wa1=

if %wa1% == y goto Level1
if %wa1% == n goto Menu

goto wrong1

:Level2
cls
echo Question2:
echo If you take 3 apples from a group of 5, how many do you have?
echo 1. two apples
echo 2. five apples
echo 3. four apples
echo 4. three apples

set /p aa=

if %aa% == 1 goto wrong2
if %aa% == 2 goto wrong2
if %aa% == 3 goto wrong2
if %aa% == 4 goto correct2

goto Level2

:correct2
cls
echo Congraturation? you Won the game!
goto correct2

:wrong2

cls
echo Sorry! You lost. Retry the Game? (y/n)
set /p retry2=

if %retry2% == y goto Level1
if %retry2% == n goto Exit
goto wrong2
