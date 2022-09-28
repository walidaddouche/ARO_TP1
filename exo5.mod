{\rtf1\ansi\ansicpg1252\cocoartf2638
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 \
set M;\
/* Mois */\
\
param cpu\{i in M\};\
/* Co\'fbt de production unitaire (euros) */\
\
param d\{i in M\};\
/* Demande (nb unit\'e9s) */\
\
param cp\{i in M\};\
/* Capacit\'e9 de production (nb unit\'e9s) */\
\
param te;\
/* Taille de l'entrep\'f4t */\
\
param umm >= 0;\
/* Nombre d'unit\'e9s minimum en stock chaque mois */\
\
param ui;\
/* Nombre d'unit\'e9s initialement */\
\
var u\{i in M\} >= 0, <= cp[i], integer;\
/* Nombre d'unit\'e9s produites */\
\
var us\{i in M\} >= umm, <= te, integer;\
/* Nombre d'unit\'e9s en stock */\
\
minimize nut: sum\{i in M\} u[i] * cpu[i] + sum\{i in 1..(card(M) - 1)\} us[i] * 0.015 * cpu[i];\
/* le nombre d'unit\'e9s totale */\
\
s.t. us_cntrnt\{i in M\}: us[i] = ui + sum\{j in 1..i\} (u[j] - d[j]);\
/* d\'e9finition de us */\
\
solve;\
\
printf 'Le nombre d unit\'e9s produites totale = %i\\n', nut;\
printf\{i in M\}:'Mois %s : %i unit\'e9s produites\\t\\t%i unit\'e9s stock\'e9es\\n', i, u[i], us[i]; \
\
data;\
\
set M := 1 2 3 4 5 6;\
\
param cpu := 1 240\
             2 250\
             3 265\
             4 285\
             5 280\
             6 285;\
\
param d := 1 1000\
           2 4500\
           3 6000\
           4 5500\
           5 3500\
           6 4000;\
\
param cp := 1 4000\
            2 3500\
            3 4000\
            4 4500\
            5 4000\
            6 3500;\
\
param te := 6000;\
\
param umm := 1500;\
\
param ui := 2750;\
\
end;\
/* Exo fait avec un camarde */}