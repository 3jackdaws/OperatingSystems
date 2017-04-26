#stackl V0.10.1-74-gbf122b8 stacklc
#once 
.source string.c 3
;  Source: string.c Line: 3
.function strlen
;  strlen

strlen:
ADJSP 8
.source string.c 5
;  Source: string.c Line: 5
.source string.c 6
;  Source: string.c Line: 6
PUSH 0
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source string.c 11
;  Source: string.c Line: 11
$LABEL_2:
PUSHVAR -12
PUSHCVARIND
PUSH 0
NE
JUMPE @$LABEL_3
.source string.c 9
;  Source: string.c Line: 9
PUSHVAR 0
PUSHVAR 0
PUSH 1
PLUS
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source string.c 10
;  Source: string.c Line: 10
PUSHVAR -12
PUSHVAR -12
PUSH 1
PUSH 1
TIMES
PLUS
PUSH -12
PUSHFP
PLUS
POPVARIND
POP
JUMP @$LABEL_2
$LABEL_3:
.source string.c 13
;  Source: string.c Line: 13
PUSHVAR 0
RETURNV
.source string.c 238
;  Source: string.c Line: 238
PUSH 0
RETURNV
.source string.c 16
;  Source: string.c Line: 16
.function strcpy
;  strcpy

strcpy:
ADJSP 8
.source string.c 18
;  Source: string.c Line: 18
.source string.c 19
;  Source: string.c Line: 19
PUSHVAR -12
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source string.c 25
;  Source: string.c Line: 25
$LABEL_4:
PUSHVAR -16
PUSHCVARIND
PUSH 0
NE
JUMPE @$LABEL_5
.source string.c 22
;  Source: string.c Line: 22
PUSHVAR -16
PUSHCVARIND
DUP
PUSHVAR 0
POPCVARIND
POP
.source string.c 23
;  Source: string.c Line: 23
PUSHVAR 0
PUSHVAR 0
PUSH 1
PUSH 1
TIMES
PLUS
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source string.c 24
;  Source: string.c Line: 24
PUSHVAR -16
PUSHVAR -16
PUSH 1
PUSH 1
TIMES
PLUS
PUSH -16
PUSHFP
PLUS
POPVARIND
POP
JUMP @$LABEL_4
$LABEL_5:
.source string.c 26
;  Source: string.c Line: 26
PUSH 0
DUP
PUSHVAR 0
POPCVARIND
POP
.source string.c 28
;  Source: string.c Line: 28
PUSHVAR -12
RETURNV
.source string.c 238
;  Source: string.c Line: 238
PUSH 0
RETURNV
.source string.c 31
;  Source: string.c Line: 31
.function strcat
;  strcat

strcat:
ADJSP 8
.source string.c 33
;  Source: string.c Line: 33
.source string.c 35
;  Source: string.c Line: 35
PUSHVAR -12
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source string.c 36
;  Source: string.c Line: 36
$LABEL_6:
.source string.c 36
;  Source: string.c Line: 36
PUSHVAR 0
PUSHVAR 0
PUSH 1
PUSH 1
TIMES
PLUS
PUSH 0
PUSHFP
PLUS
POPVARIND
PUSHCVARIND
JUMPE @$LABEL_7
JUMP @$LABEL_6
$LABEL_7:
.source string.c 38
;  Source: string.c Line: 38
PUSHVAR 0
PUSHVAR 0
PUSH 1
PUSH 1
TIMES
MINUS
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source string.c 43
;  Source: string.c Line: 43
$LABEL_8:
PUSHVAR -16
PUSHCVARIND
JUMPE @$LABEL_9
.source string.c 42
;  Source: string.c Line: 42
.source string.c 42
;  Source: string.c Line: 42
PUSHVAR -16
PUSHVAR -16
PUSH 1
PUSH 1
TIMES
PLUS
PUSH -16
PUSHFP
PLUS
POPVARIND
PUSHCVARIND
DUP
.source string.c 42
;  Source: string.c Line: 42
PUSHVAR 0
PUSHVAR 0
PUSH 1
PUSH 1
TIMES
PLUS
PUSH 0
PUSHFP
PLUS
POPVARIND
POPCVARIND
POP
JUMP @$LABEL_8
$LABEL_9:
.source string.c 45
;  Source: string.c Line: 45
PUSH 0
DUP
.source string.c 45
;  Source: string.c Line: 45
PUSHVAR 0
PUSHVAR 0
PUSH 1
PUSH 1
TIMES
PLUS
PUSH 0
PUSHFP
PLUS
POPVARIND
POPCVARIND
POP
.source string.c 47
;  Source: string.c Line: 47
PUSHVAR -12
RETURNV
.source string.c 238
;  Source: string.c Line: 238
PUSH 0
RETURNV
.source string.c 50
;  Source: string.c Line: 50
.function strncpy
;  strncpy

strncpy:
ADJSP 12
.source string.c 52
;  Source: string.c Line: 52
.source string.c 53
;  Source: string.c Line: 53
PUSHVAR -12
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source string.c 54
;  Source: string.c Line: 54
.source string.c 55
;  Source: string.c Line: 55
PUSH 0
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source string.c 62
;  Source: string.c Line: 62
$LABEL_10:
PUSHVAR -16
PUSHCVARIND
PUSH 0
NE
DUP
JUMPE @$LABEL_12
PUSHVAR 4
PUSHVAR -20
LT
AND
$LABEL_12:
JUMPE @$LABEL_11
.source string.c 58
;  Source: string.c Line: 58
PUSHVAR -16
PUSHCVARIND
DUP
PUSHVAR 0
POPCVARIND
POP
.source string.c 59
;  Source: string.c Line: 59
PUSHVAR 0
PUSHVAR 0
PUSH 1
PUSH 1
TIMES
PLUS
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source string.c 60
;  Source: string.c Line: 60
PUSHVAR -16
PUSHVAR -16
PUSH 1
PUSH 1
TIMES
PLUS
PUSH -16
PUSHFP
PLUS
POPVARIND
POP
.source string.c 61
;  Source: string.c Line: 61
PUSHVAR 4
PUSHVAR 4
PUSH 1
PLUS
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
JUMP @$LABEL_10
$LABEL_11:
.source string.c 66
;  Source: string.c Line: 66
.source string.c 63
;  Source: string.c Line: 63
PUSHVAR 4
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
$LABEL_13:
PUSHVAR 4
PUSHVAR -20
LT
JUMPE @$LABEL_14
.source string.c 65
;  Source: string.c Line: 65
PUSH 0
DUP
PUSHVAR -12
PUSHVAR 4
PLUS
POPCVARIND
POP
.source string.c 63
;  Source: string.c Line: 63
PUSHVAR 4
PUSHVAR 4
PUSH 1
PLUS
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
JUMP @$LABEL_13
$LABEL_14:
.source string.c 68
;  Source: string.c Line: 68
PUSHVAR -12
RETURNV
.source string.c 238
;  Source: string.c Line: 238
PUSH 0
RETURNV
.source string.c 71
;  Source: string.c Line: 71
.function strchr
;  strchr

strchr:
.source string.c 76
;  Source: string.c Line: 76
$LABEL_15:
PUSHVAR -12
PUSHCVARIND
PUSHVAR -16
NE
DUP
JUMPE @$LABEL_17
PUSHVAR -12
PUSHCVARIND
AND
$LABEL_17:
JUMPE @$LABEL_16
.source string.c 75
;  Source: string.c Line: 75
PUSHVAR -12
PUSHVAR -12
PUSH 1
PUSH 1
TIMES
PLUS
PUSH -12
PUSHFP
PLUS
POPVARIND
POP
JUMP @$LABEL_15
$LABEL_16:
.source string.c 80
;  Source: string.c Line: 80
PUSHVAR -12
PUSHCVARIND
PUSHVAR -16
NE
JUMPE @$LABEL_18
.source string.c 78
;  Source: string.c Line: 78
PUSH 0
RETURNV
$LABEL_18:
.source string.c 80
;  Source: string.c Line: 80
PUSHVAR -12
RETURNV
.source string.c 238
;  Source: string.c Line: 238
PUSH 0
RETURNV
.source string.c 83
;  Source: string.c Line: 83
.function strcmp
;  strcmp

strcmp:
ADJSP 12
.source string.c 85
;  Source: string.c Line: 85
.source string.c 86
;  Source: string.c Line: 86
.source string.c 93
;  Source: string.c Line: 93
$LABEL_19:
PUSHVAR -12
PUSHCVARIND
PUSH 0
NE
DUP
JUMPE @$LABEL_22
JUMP @$LABEL_21
$LABEL_22:
PUSHVAR -16
PUSHCVARIND
PUSH 0
NE
OR
$LABEL_21:
JUMPE @$LABEL_20
.source string.c 89
;  Source: string.c Line: 89
PUSHVAR -12
PUSHCVARIND
PUSHVAR -16
PUSHCVARIND
MINUS
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source string.c 91
;  Source: string.c Line: 91
PUSHVAR 4
PUSH 0
NE
JUMPE @$LABEL_23
.source string.c 90
;  Source: string.c Line: 90
PUSHVAR 4
RETURNV
$LABEL_23:
.source string.c 91
;  Source: string.c Line: 91
PUSHVAR -12
PUSHVAR -12
PUSH 1
PUSH 1
TIMES
PLUS
PUSH -12
PUSHFP
PLUS
POPVARIND
POP
.source string.c 92
;  Source: string.c Line: 92
PUSHVAR -16
PUSHVAR -16
PUSH 1
PUSH 1
TIMES
PLUS
PUSH -16
PUSHFP
PLUS
POPVARIND
POP
JUMP @$LABEL_19
$LABEL_20:
.source string.c 94
;  Source: string.c Line: 94
PUSH 0
RETURNV
.source string.c 238
;  Source: string.c Line: 238
PUSH 0
RETURNV
.source string.c 97
;  Source: string.c Line: 97
.function strrev
;  strrev

strrev:
ADJSP 16
.source string.c 99
;  Source: string.c Line: 99
.source string.c 100
;  Source: string.c Line: 100
.source string.c 101
;  Source: string.c Line: 101
.source string.c 105
;  Source: string.c Line: 105
PUSHVAR -12
PUSH 0
EQ
JUMPE @$LABEL_24
.source string.c 103
;  Source: string.c Line: 103
PUSH 0
RETURNV
$LABEL_24:
.source string.c 105
;  Source: string.c Line: 105
PUSHVAR -12
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source string.c 106
;  Source: string.c Line: 106
PUSHVAR -12
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source string.c 112
;  Source: string.c Line: 112
$LABEL_25:
PUSHVAR 4
PUSHCVARIND
JUMPE @$LABEL_26
.source string.c 111
;  Source: string.c Line: 111
PUSHVAR 4
PUSHVAR 4
PUSH 1
PUSH 1
TIMES
PLUS
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
JUMP @$LABEL_25
$LABEL_26:
.source string.c 113
;  Source: string.c Line: 113
PUSHVAR 4
PUSHVAR 4
PUSH 1
PUSH 1
TIMES
MINUS
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source string.c 122
;  Source: string.c Line: 122
$LABEL_27:
PUSHVAR 0
PUSHVAR 4
LT
JUMPE @$LABEL_28
.source string.c 117
;  Source: string.c Line: 117
PUSHVAR 0
PUSHCVARIND
DUP
PUSH 8
PUSHFP
PLUS
POPVARIND
POP
.source string.c 118
;  Source: string.c Line: 118
PUSHVAR 4
PUSHCVARIND
DUP
PUSHVAR 0
POPCVARIND
POP
.source string.c 119
;  Source: string.c Line: 119
PUSHVAR 8
DUP
PUSHVAR 4
POPCVARIND
POP
.source string.c 120
;  Source: string.c Line: 120
PUSHVAR 0
PUSHVAR 0
PUSH 1
PUSH 1
TIMES
PLUS
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source string.c 121
;  Source: string.c Line: 121
PUSHVAR 4
PUSHVAR 4
PUSH 1
PUSH 1
TIMES
MINUS
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
JUMP @$LABEL_27
$LABEL_28:
.source string.c 124
;  Source: string.c Line: 124
PUSHVAR -12
RETURNV
.source string.c 238
;  Source: string.c Line: 238
PUSH 0
RETURNV
.source string.c 127
;  Source: string.c Line: 127
.function itostr
;  itostr

itostr:
ADJSP 12
.source string.c 129
;  Source: string.c Line: 129
.source string.c 130
;  Source: string.c Line: 130
.source string.c 132
;  Source: string.c Line: 132
PUSH 0
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source string.c 133
;  Source: string.c Line: 133
PUSHVAR -16
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source string.c 141
;  Source: string.c Line: 141
PUSHVAR -12
PUSH 0
EQ
JUMPE @$LABEL_29
.source string.c 136
;  Source: string.c Line: 136
PUSH 48
DUP
PUSHVAR -16
PUSH 0
PLUS
POPCVARIND
POP
.source string.c 137
;  Source: string.c Line: 137
PUSH 0
DUP
PUSHVAR -16
PUSH 1
PLUS
POPCVARIND
POP
.source string.c 138
;  Source: string.c Line: 138
PUSHVAR -16
RETURNV
$LABEL_29:
.source string.c 147
;  Source: string.c Line: 147
PUSHVAR -12
PUSH 0
LT
JUMPE @$LABEL_30
.source string.c 143
;  Source: string.c Line: 143
PUSH 1
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source string.c 144
;  Source: string.c Line: 144
PUSHVAR -12
NEG
DUP
PUSH -12
PUSHFP
PLUS
POPVARIND
POP
$LABEL_30:
.source string.c 152
;  Source: string.c Line: 152
$LABEL_31:
PUSHVAR -12
PUSH 0
GT
JUMPE @$LABEL_32
.source string.c 149
;  Source: string.c Line: 149
PUSHVAR -12
PUSH 10
MOD
PUSH 48
PLUS
DUP
PUSHVAR 0
POPCVARIND
POP
.source string.c 150
;  Source: string.c Line: 150
PUSHVAR 0
PUSHVAR 0
PUSH 1
PUSH 1
TIMES
PLUS
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source string.c 151
;  Source: string.c Line: 151
PUSHVAR -12
PUSH 10
DIVIDE
DUP
PUSH -12
PUSHFP
PLUS
POPVARIND
POP
JUMP @$LABEL_31
$LABEL_32:
.source string.c 159
;  Source: string.c Line: 159
PUSHVAR 4
JUMPE @$LABEL_33
.source string.c 156
;  Source: string.c Line: 156
PUSH 45
DUP
PUSHVAR 0
POPCVARIND
POP
.source string.c 157
;  Source: string.c Line: 157
PUSHVAR 0
PUSHVAR 0
PUSH 1
PUSH 1
TIMES
PLUS
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
$LABEL_33:
.source string.c 159
;  Source: string.c Line: 159
PUSH 0
DUP
PUSHVAR 0
POPCVARIND
POP
.source string.c 161
;  Source: string.c Line: 161
PUSHVAR -16
CALL @strrev
POPARGS 4
POP
.source string.c 162
;  Source: string.c Line: 162
PUSHVAR -16
RETURNV
.source string.c 238
;  Source: string.c Line: 238
PUSH 0
RETURNV
.source string.c 165
;  Source: string.c Line: 165
.function xtostr
;  xtostr

xtostr:
ADJSP 16
.source string.c 167
;  Source: string.c Line: 167
.source string.c 168
;  Source: string.c Line: 168
.source string.c 169
;  Source: string.c Line: 169
.source string.c 171
;  Source: string.c Line: 171
PUSH 0
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source string.c 172
;  Source: string.c Line: 172
PUSHVAR -16
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source string.c 180
;  Source: string.c Line: 180
PUSHVAR -12
PUSH 0
EQ
JUMPE @$LABEL_34
.source string.c 175
;  Source: string.c Line: 175
PUSH 48
DUP
PUSHVAR -16
PUSH 0
PLUS
POPCVARIND
POP
.source string.c 176
;  Source: string.c Line: 176
PUSH 0
DUP
PUSHVAR -16
PUSH 1
PLUS
POPCVARIND
POP
.source string.c 177
;  Source: string.c Line: 177
PUSHVAR -16
RETURNV
$LABEL_34:
.source string.c 186
;  Source: string.c Line: 186
PUSHVAR -12
PUSH 0
LT
JUMPE @$LABEL_35
.source string.c 182
;  Source: string.c Line: 182
PUSH 1
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source string.c 183
;  Source: string.c Line: 183
PUSHVAR -12
NEG
DUP
PUSH -12
PUSHFP
PLUS
POPVARIND
POP
$LABEL_35:
.source string.c 195
;  Source: string.c Line: 195
$LABEL_36:
PUSHVAR -12
PUSH 0
GT
JUMPE @$LABEL_37
.source string.c 188
;  Source: string.c Line: 188
PUSHVAR -12
PUSH 15
BAND
DUP
PUSH 8
PUSHFP
PLUS
POPVARIND
POP
.source string.c 192
;  Source: string.c Line: 192
PUSHVAR 8
PUSH 10
LT
JUMPE @$LABEL_38
.source string.c 190
;  Source: string.c Line: 190
PUSHVAR 8
PUSH 48
PLUS
DUP
PUSHVAR 0
POPCVARIND
POP
JUMP @$LABEL_39
$LABEL_38:
.source string.c 192
;  Source: string.c Line: 192
PUSHVAR 8
PUSH 65
PLUS
PUSH 10
MINUS
DUP
PUSHVAR 0
POPCVARIND
POP
$LABEL_39:
.source string.c 193
;  Source: string.c Line: 193
PUSHVAR 0
PUSHVAR 0
PUSH 1
PUSH 1
TIMES
PLUS
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source string.c 194
;  Source: string.c Line: 194
PUSHVAR -12
PUSH 4
SHIFTR
DUP
PUSH -12
PUSHFP
PLUS
POPVARIND
POP
JUMP @$LABEL_36
$LABEL_37:
.source string.c 202
;  Source: string.c Line: 202
PUSHVAR 4
JUMPE @$LABEL_40
.source string.c 199
;  Source: string.c Line: 199
PUSH 45
DUP
PUSHVAR 0
POPCVARIND
POP
.source string.c 200
;  Source: string.c Line: 200
PUSHVAR 0
PUSHVAR 0
PUSH 1
PUSH 1
TIMES
PLUS
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
$LABEL_40:
.source string.c 202
;  Source: string.c Line: 202
PUSH 0
DUP
PUSHVAR 0
POPCVARIND
POP
.source string.c 204
;  Source: string.c Line: 204
PUSHVAR -16
CALL @strrev
POPARGS 4
POP
.source string.c 205
;  Source: string.c Line: 205
PUSHVAR -16
RETURNV
.source string.c 238
;  Source: string.c Line: 238
PUSH 0
RETURNV
.source string.c 208
;  Source: string.c Line: 208
.function memcpy
;  memcpy

memcpy:
ADJSP 12
.source string.c 210
;  Source: string.c Line: 210
.source string.c 211
;  Source: string.c Line: 211
.source string.c 212
;  Source: string.c Line: 212
PUSHVAR -12
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source string.c 213
;  Source: string.c Line: 213
PUSHVAR -16
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source string.c 220
;  Source: string.c Line: 220
$LABEL_41:
.source string.c 215
;  Source: string.c Line: 215
PUSHVAR -20
PUSHVAR -20
PUSH 1
MINUS
PUSH -20
PUSHFP
PLUS
POPVARIND
PUSH 0
NE
JUMPE @$LABEL_42
.source string.c 217
;  Source: string.c Line: 217
PUSHVAR 0
PUSHCVARIND
DUP
PUSHVAR 4
POPCVARIND
POP
.source string.c 218
;  Source: string.c Line: 218
PUSHVAR 4
PUSHVAR 4
PUSH 1
PUSH 1
TIMES
PLUS
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source string.c 219
;  Source: string.c Line: 219
PUSHVAR 0
PUSHVAR 0
PUSH 1
PUSH 1
TIMES
PLUS
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
JUMP @$LABEL_41
$LABEL_42:
.source string.c 222
;  Source: string.c Line: 222
PUSHVAR -12
RETURNV
.source string.c 238
;  Source: string.c Line: 238
PUSH 0
RETURNV
.source string.c 225
;  Source: string.c Line: 225
.function memset
;  memset

memset:
ADJSP 8
.source string.c 227
;  Source: string.c Line: 227
.source string.c 228
;  Source: string.c Line: 228
PUSHVAR -12
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source string.c 234
;  Source: string.c Line: 234
$LABEL_43:
.source string.c 230
;  Source: string.c Line: 230
PUSHVAR -20
PUSHVAR -20
PUSH 1
MINUS
PUSH -20
PUSHFP
PLUS
POPVARIND
PUSH 0
NE
JUMPE @$LABEL_44
.source string.c 232
;  Source: string.c Line: 232
PUSHVAR -16
DUP
PUSHVAR 0
POPCVARIND
POP
.source string.c 233
;  Source: string.c Line: 233
PUSHVAR 0
PUSHVAR 0
PUSH 1
PUSH 1
TIMES
PLUS
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
JUMP @$LABEL_43
$LABEL_44:
.source string.c 236
;  Source: string.c Line: 236
PUSHVAR -12
RETURNV
.source string.c 238
;  Source: string.c Line: 238
PUSH 0
RETURNV
