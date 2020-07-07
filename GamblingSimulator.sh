#!/bin/bash -x

echo "Welcome To Gambling Simulator"
BET_LOSE=0;
BET_WIN=1;
DailyAmount=100;
BetAmount=1;

function BetResult()
{


case $1 in
$BET_WIN)
			DailyAmount=$((DailyAmount+BetAmount));
		;;
		$BET_LOSE)
			DailyAmount=$((DailyAmount-BetAmount));
		;;
		*)
			echo"It is some error got"
		;;
	esac
	echo $DailyAmount
}

		BetChance=$((RANDOM%2));
DailyAmount=$(BetResult $betChance); 




