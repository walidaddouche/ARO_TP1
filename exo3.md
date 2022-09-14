{\rtf1\ansi\ansicpg1252\cocoartf2638
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 var x1 >= 0; \
var x2 >= 0;\
var x3 >= 0;\
var x4 >= 0;\
var x5 >= 0;\
var x6 >= 0;\
\
\
minimize total : x1 + x2 + x3 + x4 + x5 + x6;\
\
\
subject to limit_1 :  x1+x6  >= 9;\
subject to limit_2 :  x1+x2  >= 21;\
subject to limit_3 :  x2+x3  >= 25;\
subject to limit_4 :  x3+x4  >= 16;\
subject to limit_5 :  x4+x5  >= 30;\
subject to limit_6 :  x5+x6  >= 12;\
\
solve;\
\
\
\
\
\
\
\
\
}
