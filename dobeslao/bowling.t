#!/usr/bin/perl

use strict;
use warnings;
use Test::Simple tests => 11;

require 'bowling_func.pl';

# Gutter Balls
my @gutter_balls = ( [0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0] );
ok ( bowling(@gutter_balls) eq '0', "Gutter balls (all zero)" );

# One Pins
my @one_pin = ( [1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1] );
ok ( bowling(@one_pin) eq '20', "One pin per pass" );

# All Threes
my @all_threes = ( [3,3],[3,3],[3,3],[3,3],[3,3],[3,3],[3,3],[3,3],[3,3],[3,3] );
ok ( bowling(@all_threes) eq '60', "All Threes" );

# One Spare
my @one_spare = ( [4,6],[0,6],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0,] );
ok ( bowling(@one_spare) eq '16', "One Spare in all game" );

# All Spares
my @all_spares = ( [4,6],[4,6],[4,6],[4,6],[4,6],[4,6],[4,6],[4,6],[4,6],[4,6,4] );
ok ( bowling(@all_spares) eq '140', "All Spares with first ball as 4" );

# All Spares with fives
my @giveme_five = ( [5,5],[5,5],[5,5],[5,5],[5,5],[5,5],[5,5],[5,5],[5,5],[5,5,5] );
ok ( bowling(@giveme_five) eq '150', "All Spares with all fives" );

# Alternated Spares and Strikes
my @spares_strike = ( [10,0],[4,6],[10,0],[4,6],[10,0],[4,6],[10,0],[4,6],[10,0],[4,6,10] );
ok ( bowling(@spares_strike) eq '240', "Alternated Spares and Strikes" );

# Open Turkey
my @open_turkey = ( [10,0],[10,0],[10,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0] );
ok ( bowling(@open_turkey) eq '60', "Open turkey" );

# A real game
my @real_game = ( [1,4],[4,5],[6,4],[5,5],[10,0],[0,1],[7,3],[6,4],[10,0],[2,8,6] );
ok ( bowling(@real_game) eq '143', "A real game" );

# Nine Strikes
my @nine_strikes = ( [10,0],[10,0],[10,0],[10,0],[10,0],[10,0],[10,0],[10,0],[10,0],[0,0] );
ok ( bowling(@nine_strikes) eq '240', "Nine Strikes followed by a gutter ball" );

# Golden Game
my @golden_game = ( [10,0],[10,0],[10,0],[10,0],[10,0],[10,0],[10,0],[10,0],[10,0],[10,10,10] );
ok ( bowling(@golden_game) eq '300', "Perfect game aka Golden Game" );
