#!/bin/bash -x

echo "Welcome To Gambling Simulator"
BET_LOSE=0;
BET_WIN=1;
DailyAmount=200;
BetAmount=1;

function BetResult()
{
	case $1 in
		$BET_WIN)
			dailyAmount=$((dailyAmount+betAmount));
		;;
		$BET_LOSE)
			dailyAmount=$((dailyAmount-betAmount));
		;;
		*)
			echo"SOME ERROR"
		;;
	esac
	echo $DailyAmount
}
while ((DailyAmount<=200 && DailyAmount>=50 ))
do
	betChance=$((RANDOM%2));
	DailyAmount=$(betResult $betChance);
done 




