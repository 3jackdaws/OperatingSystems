#stackl V0.10.2-56-g2fd0590-dev stacklc
#once 
#library <string.sl>
.source /home/ubuntu/workspace/bin/library/string.h 4
;  Source: /home/ubuntu/workspace/bin/library/string.h Line: 4
.source /home/ubuntu/workspace/bin/library/string.h 5
;  Source: /home/ubuntu/workspace/bin/library/string.h Line: 5
.source /home/ubuntu/workspace/bin/library/string.h 6
;  Source: /home/ubuntu/workspace/bin/library/string.h Line: 6
.source /home/ubuntu/workspace/bin/library/string.h 7
;  Source: /home/ubuntu/workspace/bin/library/string.h Line: 7
.source /home/ubuntu/workspace/bin/library/string.h 8
;  Source: /home/ubuntu/workspace/bin/library/string.h Line: 8
.source /home/ubuntu/workspace/bin/library/string.h 9
;  Source: /home/ubuntu/workspace/bin/library/string.h Line: 9
.source /home/ubuntu/workspace/bin/library/string.h 10
;  Source: /home/ubuntu/workspace/bin/library/string.h Line: 10
.source /home/ubuntu/workspace/bin/library/string.h 11
;  Source: /home/ubuntu/workspace/bin/library/string.h Line: 11
.source /home/ubuntu/workspace/bin/library/string.h 12
;  Source: /home/ubuntu/workspace/bin/library/string.h Line: 12
.source /home/ubuntu/workspace/bin/library/string.h 13
;  Source: /home/ubuntu/workspace/bin/library/string.h Line: 13
.source /home/ubuntu/workspace/bin/library/string.h 14
;  Source: /home/ubuntu/workspace/bin/library/string.h Line: 14
#once 
#library <sysio.sl>
.source /home/ubuntu/workspace/bin/library/sysio.h 4
;  Source: /home/ubuntu/workspace/bin/library/sysio.h Line: 4
.source /home/ubuntu/workspace/bin/library/sysio.h 5
;  Source: /home/ubuntu/workspace/bin/library/sysio.h Line: 5
.source /home/ubuntu/workspace/bin/library/sysio.h 6
;  Source: /home/ubuntu/workspace/bin/library/sysio.h Line: 6
.source /home/ubuntu/workspace/bin/library/sysio.h 7
;  Source: /home/ubuntu/workspace/bin/library/sysio.h Line: 7
.source mymalloc.c 7
;  Source: mymalloc.c Line: 7
.dataseg
$NULL:
.data 0
.codeseg
#once 
.source mymalloc.h 3
;  Source: mymalloc.h Line: 3
.source mymalloc.h 4
;  Source: mymalloc.h Line: 4
.source mymalloc.h 5
;  Source: mymalloc.h Line: 5
.source mymalloc.h 6
;  Source: mymalloc.h Line: 6
.source mymalloc.h 7
;  Source: mymalloc.h Line: 7
.source mymalloc.h 8
;  Source: mymalloc.h Line: 8
.source mymalloc.h 9
;  Source: mymalloc.h Line: 9
.source mymalloc.c 12
;  Source: mymalloc.c Line: 12
.dataseg
$MIN_BLOCK_SIZE:
.data 16
.codeseg
.source mymalloc.c 14
;  Source: mymalloc.c Line: 14
.dataseg
$BUSY_BIT:
.data 1073741824
.codeseg
.source mymalloc.c 15
;  Source: mymalloc.c Line: 15
.dataseg
$HASH_VAL:
.data 1001253805
.codeseg
.source mymalloc.c 16
;  Source: mymalloc.c Line: 16
.dataseg
$HASH_MASK:
.data 1073741823
.codeseg
.source mymalloc.c 20
;  Source: mymalloc.c Line: 20
.source mymalloc.c 21
;  Source: mymalloc.c Line: 21
.source mymalloc.c 22
;  Source: mymalloc.c Line: 22
.source mymalloc.c 23
;  Source: mymalloc.c Line: 23
.source mymalloc.c 28
;  Source: mymalloc.c Line: 28
.source mymalloc.c 29
;  Source: mymalloc.c Line: 29
.source mymalloc.c 38
;  Source: mymalloc.c Line: 38
.function CLR_BUSY
;  CLR_BUSY

CLR_BUSY:
.source mymalloc.c 38
;  Source: mymalloc.c Line: 38
PUSH 1001253805
DUP
PUSHVAR -12
PUSH 0
PLUS
POPVARIND
POP
RETURN
.source mymalloc.c 39
;  Source: mymalloc.c Line: 39
.function SET_BUSY
;  SET_BUSY

SET_BUSY:
.source mymalloc.c 39
;  Source: mymalloc.c Line: 39
PUSH 1001253805
PUSH 1073741824
BOR
DUP
PUSHVAR -12
PUSH 0
PLUS
POPVARIND
POP
RETURN
.source mymalloc.c 40
;  Source: mymalloc.c Line: 40
.function IS_BUSY
;  IS_BUSY

IS_BUSY:
.source mymalloc.c 40
;  Source: mymalloc.c Line: 40
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 1073741824
BAND
RETURNV
.source mymalloc.c 456
;  Source: mymalloc.c Line: 456
PUSH 0
RETURNV
.source mymalloc.c 41
;  Source: mymalloc.c Line: 41
.function BUSY_HEADER
;  BUSY_HEADER

BUSY_HEADER:
.source mymalloc.c 41
;  Source: mymalloc.c Line: 41
PUSHVAR -12
PUSH 8
PUSH 1
TIMES
MINUS
RETURNV
.source mymalloc.c 456
;  Source: mymalloc.c Line: 456
PUSH 0
RETURNV
.source mymalloc.c 44
;  Source: mymalloc.c Line: 44
.dataseg
g_Memory:
.block 1
.codeseg
.source mymalloc.c 45
;  Source: mymalloc.c Line: 45
.dataseg
g_Mem_Size:
.block 1
.codeseg
.source mymalloc.c 46
;  Source: mymalloc.c Line: 46
.dataseg
Free_List:
.block 1
.codeseg
.source mymalloc.c 47
;  Source: mymalloc.c Line: 47
.dataseg
Next_Free:
.block 1
.codeseg
.source mymalloc.c 50
;  Source: mymalloc.c Line: 50
.function set_busy_headers
;  set_busy_headers

set_busy_headers:
.source mymalloc.c 52
;  Source: mymalloc.c Line: 52
PUSHVAR -16
CALL @SET_BUSY
ADJSP -4
.source mymalloc.c 53
;  Source: mymalloc.c Line: 53
PUSH 8
PUSHVAR -16
PUSHVAR -12
CALL @memcpy
POPARGS 12
POP
RETURN
.source mymalloc.c 56
;  Source: mymalloc.c Line: 56
.function set_free_headers
;  set_free_headers

set_free_headers:
.source mymalloc.c 58
;  Source: mymalloc.c Line: 58
PUSHVAR -16
CALL @CLR_BUSY
ADJSP -4
.source mymalloc.c 59
;  Source: mymalloc.c Line: 59
PUSH 16
PUSHVAR -16
PUSHVAR -12
CALL @memcpy
POPARGS 12
POP
.source mymalloc.c 61
;  Source: mymalloc.c Line: 61
PUSH 16
PUSHVAR -16
PUSHVAR -12
PUSHVAR -16
PUSH 4
PLUS
PUSHVARIND
PLUS
PUSH 16
MINUS
CALL @memcpy
POPARGS 12
POP
RETURN
.source mymalloc.c 64
;  Source: mymalloc.c Line: 64
.function my_mem_init
;  my_mem_init

my_mem_init:
ADJSP 20
.source mymalloc.c 66
;  Source: mymalloc.c Line: 66
.source mymalloc.c 68
;  Source: mymalloc.c Line: 68
PUSHVAR -12
DUP
PUSH @g_Memory
POPVARIND
POP
.source mymalloc.c 69
;  Source: mymalloc.c Line: 69
PUSHVAR -16
DUP
PUSH @g_Mem_Size
POPVARIND
POP
.source mymalloc.c 71
;  Source: mymalloc.c Line: 71
PUSH @g_Memory
PUSHVARIND
DUP
PUSH @Free_List
POPVARIND
POP
.source mymalloc.c 72
;  Source: mymalloc.c Line: 72
PUSH @Free_List
PUSHVARIND
DUP
PUSH @Next_Free
POPVARIND
POP
.source mymalloc.c 74
;  Source: mymalloc.c Line: 74
PUSH 1001253805
DUP
PUSH 0
PUSHFP
PLUS
PUSH 0
PLUS
POPVARIND
POP
.source mymalloc.c 75
;  Source: mymalloc.c Line: 75
PUSH 0
DUP
PUSH 0
PUSHFP
PLUS
PUSH 8
PLUS
POPVARIND
POP
.source mymalloc.c 76
;  Source: mymalloc.c Line: 76
PUSH 0
DUP
PUSH 0
PUSHFP
PLUS
PUSH 12
PLUS
POPVARIND
POP
.source mymalloc.c 77
;  Source: mymalloc.c Line: 77
PUSH @g_Mem_Size
PUSHVARIND
DUP
PUSH 0
PUSHFP
PLUS
PUSH 4
PLUS
POPVARIND
POP
.source mymalloc.c 79
;  Source: mymalloc.c Line: 79
PUSH 0
PUSHFP
PLUS
PUSH @g_Memory
PUSHVARIND
CALL @set_free_headers
ADJSP -8
RETURN
.source mymalloc.c 82
;  Source: mymalloc.c Line: 82
.function valid_size
;  valid_size

valid_size:
.source mymalloc.c 91
;  Source: mymalloc.c Line: 91
PUSHVAR -12
PUSH 2
PUSH 16
TIMES
PUSH 8
MINUS
LT
JUMPE @$$LABEL_2
.source mymalloc.c 87
;  Source: mymalloc.c Line: 87
PUSH 2
PUSH 16
TIMES
PUSH 8
MINUS
DUP
PUSH -12
PUSHFP
PLUS
POPVARIND
POP
$$LABEL_2:
.source mymalloc.c 93
;  Source: mymalloc.c Line: 93
PUSHVAR -12
PUSH 7
BAND
JUMPE @$$LABEL_3
.source mymalloc.c 91
;  Source: mymalloc.c Line: 91
PUSHVAR -12
PUSH 8
PLUS
PUSH 7
COMP
BAND
DUP
PUSH -12
PUSHFP
PLUS
POPVARIND
POP
$$LABEL_3:
.source mymalloc.c 93
;  Source: mymalloc.c Line: 93
PUSHVAR -12
RETURNV
.source mymalloc.c 456
;  Source: mymalloc.c Line: 456
PUSH 0
RETURNV
.source mymalloc.c 96
;  Source: mymalloc.c Line: 96
.function my_malloc
;  my_malloc

my_malloc:
ADJSP 20
.source mymalloc.c 98
;  Source: mymalloc.c Line: 98
PUSH @Next_Free
PUSHVARIND
POPVAR 0
.source mymalloc.c 99
;  Source: mymalloc.c Line: 99
.source mymalloc.c 100
;  Source: mymalloc.c Line: 100
.source mymalloc.c 105
;  Source: mymalloc.c Line: 105
PUSHVAR 0
PUSH 0
EQ
JUMPE @$$LABEL_4
.source mymalloc.c 102
;  Source: mymalloc.c Line: 102
PUSH @Free_List
PUSHVARIND
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
$$LABEL_4:
.source mymalloc.c 107
;  Source: mymalloc.c Line: 107
PUSHVAR 0
PUSH 0
EQ
JUMPE @$$LABEL_5
.source mymalloc.c 105
;  Source: mymalloc.c Line: 105
PUSH 0
RETURNV
$$LABEL_5:
.source mymalloc.c 107
;  Source: mymalloc.c Line: 107
.source mymalloc.c 107
;  Source: mymalloc.c Line: 107
PUSHVAR -12
CALL @valid_size
POPARGS 4
DUP
PUSH -12
PUSHFP
PLUS
POPVARIND
POP
.source mymalloc.c 109
;  Source: mymalloc.c Line: 109
PUSHVAR 0
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source mymalloc.c 155
;  Source: mymalloc.c Line: 155
$$LABEL_6:
.source mymalloc.c 153
;  Source: mymalloc.c Line: 153
PUSHVAR 4
PUSH 4
PLUS
PUSHVARIND
PUSHVAR -12
PUSH 8
PLUS
GE
JUMPE @$$LABEL_8
.source mymalloc.c 150
;  Source: mymalloc.c Line: 150
PUSHVAR 4
PUSH 4
PLUS
PUSHVARIND
PUSHVAR -12
PUSH 8
PLUS
PUSH 2
PUSH 16
TIMES
PLUS
GT
JUMPE @$$LABEL_9
.source mymalloc.c 123
;  Source: mymalloc.c Line: 123
PUSHVAR 4
PUSH 4
PLUS
PUSHVARIND
PUSHVAR -12
MINUS
PUSH 8
MINUS
POPVAR 12
.source mymalloc.c 125
;  Source: mymalloc.c Line: 125
PUSHVAR 4
PUSHVAR 12
PLUS
DUP
PUSH 8
PUSHFP
PLUS
POPVARIND
POP
.source mymalloc.c 127
;  Source: mymalloc.c Line: 127
PUSHVAR 12
DUP
PUSHVAR 4
PUSH 4
PLUS
POPVARIND
POP
.source mymalloc.c 128
;  Source: mymalloc.c Line: 128
PUSHVAR 4
PUSHVAR 4
CALL @set_free_headers
ADJSP -8
.source mymalloc.c 130
;  Source: mymalloc.c Line: 130
PUSHVAR -12
PUSH 8
PLUS
DUP
PUSHVAR 8
PUSH 4
PLUS
POPVARIND
POP
.source mymalloc.c 131
;  Source: mymalloc.c Line: 131
PUSHVAR 8
PUSHVAR 8
CALL @set_busy_headers
ADJSP -8
.source mymalloc.c 132
;  Source: mymalloc.c Line: 132
PUSHVAR 8
PUSH 8
PLUS
RETURNV
JUMP @$$LABEL_10
$$LABEL_9:
.source mymalloc.c 140
;  Source: mymalloc.c Line: 140
PUSHVAR 4
PUSH 12
PLUS
PUSHVARIND
PUSH 0
NE
JUMPE @$$LABEL_11
.source mymalloc.c 138
;  Source: mymalloc.c Line: 138
PUSHVAR 4
PUSH 8
PLUS
PUSHVARIND
DUP
PUSHVAR 4
PUSH 12
PLUS
PUSHVARIND
PUSH 8
PLUS
POPVARIND
POP
JUMP @$$LABEL_12
$$LABEL_11:
.source mymalloc.c 140
;  Source: mymalloc.c Line: 140
PUSHVAR 4
PUSH 8
PLUS
PUSHVARIND
DUP
PUSH @Free_List
POPVARIND
POP
$$LABEL_12:
.source mymalloc.c 145
;  Source: mymalloc.c Line: 145
PUSHVAR 4
PUSH 8
PLUS
PUSHVARIND
PUSH 0
NE
JUMPE @$$LABEL_13
.source mymalloc.c 143
;  Source: mymalloc.c Line: 143
PUSHVAR 4
PUSH 12
PLUS
PUSHVARIND
DUP
PUSHVAR 4
PUSH 8
PLUS
PUSHVARIND
PUSH 12
PLUS
POPVARIND
POP
$$LABEL_13:
.source mymalloc.c 145
;  Source: mymalloc.c Line: 145
PUSHVAR 4
PUSH 8
PLUS
PUSHVARIND
DUP
PUSH @Next_Free
POPVARIND
POP
.source mymalloc.c 148
;  Source: mymalloc.c Line: 148
PUSHVAR 4
CALL @SET_BUSY
ADJSP -4
.source mymalloc.c 149
;  Source: mymalloc.c Line: 149
PUSHVAR 4
PUSH 8
PLUS
RETURNV
$$LABEL_10:
$$LABEL_8:
.source mymalloc.c 153
;  Source: mymalloc.c Line: 153
PUSHVAR 4
PUSH 8
PLUS
PUSHVARIND
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source mymalloc.c 155
;  Source: mymalloc.c Line: 155
PUSHVAR 4
PUSH 0
EQ
JUMPE @$$LABEL_14
.source mymalloc.c 154
;  Source: mymalloc.c Line: 154
PUSH @Free_List
PUSHVARIND
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
$$LABEL_14:
PUSHVAR 4
PUSHVAR 0
NE
JUMPE @$$LABEL_7
JUMP @$$LABEL_6
$$LABEL_7:
.source mymalloc.c 157
;  Source: mymalloc.c Line: 157
PUSH 0
RETURNV
.source mymalloc.c 456
;  Source: mymalloc.c Line: 456
PUSH 0
RETURNV
.source mymalloc.c 162
;  Source: mymalloc.c Line: 162
.function prev_block
;  prev_block

prev_block:
ADJSP 12
.source mymalloc.c 165
;  Source: mymalloc.c Line: 165
.source mymalloc.c 166
;  Source: mymalloc.c Line: 166
.source mymalloc.c 168
;  Source: mymalloc.c Line: 168
PUSHVAR -12
PUSH 16
MINUS
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source mymalloc.c 174
;  Source: mymalloc.c Line: 174
PUSHVAR 0
PUSH @g_Memory
PUSHVARIND
LT
JUMPE @$$LABEL_15
.source mymalloc.c 170
;  Source: mymalloc.c Line: 170
PUSH 0
RETURNV
$$LABEL_15:
.source mymalloc.c 175
;  Source: mymalloc.c Line: 175
PUSHVAR 0
PUSH 0
PLUS
PUSHVARIND
PUSH 1001253805
NE
JUMPE @$$LABEL_16
.source mymalloc.c 174
;  Source: mymalloc.c Line: 174
PUSH 0
RETURNV
$$LABEL_16:
.source mymalloc.c 175
;  Source: mymalloc.c Line: 175
PUSHVAR 0
PUSH 4
PLUS
PUSHVARIND
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source mymalloc.c 176
;  Source: mymalloc.c Line: 176
PUSHVAR 0
PUSHVAR 4
MINUS
PUSH 16
PLUS
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source mymalloc.c 181
;  Source: mymalloc.c Line: 181
PUSHVAR 0
PUSH 0
PLUS
PUSHVARIND
PUSH 1001253805
NE
JUMPE @$$LABEL_17
.source mymalloc.c 180
;  Source: mymalloc.c Line: 180
PUSH 0
RETURNV
$$LABEL_17:
.source mymalloc.c 183
;  Source: mymalloc.c Line: 183
PUSHVAR 0
PUSH 4
PLUS
PUSHVARIND
PUSHVAR 4
NE
JUMPE @$$LABEL_18
.source mymalloc.c 181
;  Source: mymalloc.c Line: 181
PUSH 0
RETURNV
$$LABEL_18:
.source mymalloc.c 183
;  Source: mymalloc.c Line: 183
PUSHVAR 0
RETURNV
.source mymalloc.c 456
;  Source: mymalloc.c Line: 456
PUSH 0
RETURNV
.source mymalloc.c 187
;  Source: mymalloc.c Line: 187
.function next_block
;  next_block

next_block:
ADJSP 8
.source mymalloc.c 190
;  Source: mymalloc.c Line: 190
PUSHVAR -12
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
PLUS
POPVAR 0
.source mymalloc.c 196
;  Source: mymalloc.c Line: 196
PUSHVAR 0
PUSH @g_Memory
PUSHVARIND
PUSH @g_Mem_Size
PUSHVARIND
PLUS
GE
JUMPE @$$LABEL_19
.source mymalloc.c 193
;  Source: mymalloc.c Line: 193
PUSH 0
RETURNV
$$LABEL_19:
.source mymalloc.c 200
;  Source: mymalloc.c Line: 200
PUSHVAR 0
PUSH 0
PLUS
PUSHVARIND
PUSH 1001253805
NE
JUMPE @$$LABEL_20
.source mymalloc.c 196
;  Source: mymalloc.c Line: 196
PUSH 0
RETURNV
$$LABEL_20:
.source mymalloc.c 200
;  Source: mymalloc.c Line: 200
PUSHVAR 0
RETURNV
.source mymalloc.c 456
;  Source: mymalloc.c Line: 456
PUSH 0
RETURNV
.source mymalloc.c 203
;  Source: mymalloc.c Line: 203
.function my_free
;  my_free

my_free:
ADJSP 16
.source mymalloc.c 206
;  Source: mymalloc.c Line: 206
.source mymalloc.c 206
;  Source: mymalloc.c Line: 206
PUSHVAR -12
CALL @BUSY_HEADER
POPARGS 4
POPVAR 0
.source mymalloc.c 207
;  Source: mymalloc.c Line: 207
.source mymalloc.c 207
;  Source: mymalloc.c Line: 207
PUSHVAR 0
CALL @prev_block
POPARGS 4
POPVAR 4
.source mymalloc.c 208
;  Source: mymalloc.c Line: 208
.source mymalloc.c 208
;  Source: mymalloc.c Line: 208
PUSHVAR 0
CALL @next_block
POPARGS 4
POPVAR 8
.source mymalloc.c 264
;  Source: mymalloc.c Line: 264
PUSHVAR 4
PUSH 0
NE
DUP
JUMPE @$$LABEL_24
.source mymalloc.c 211
;  Source: mymalloc.c Line: 211
PUSHVAR 4
CALL @IS_BUSY
POPARGS 4
NOT
AND
$$LABEL_24:
DUP
JUMPE @$$LABEL_23
PUSHVAR 8
PUSH 0
NE
AND
$$LABEL_23:
DUP
JUMPE @$$LABEL_22
.source mymalloc.c 212
;  Source: mymalloc.c Line: 212
PUSHVAR 8
CALL @IS_BUSY
POPARGS 4
NOT
AND
$$LABEL_22:
JUMPE @$$LABEL_21
.source mymalloc.c 219
;  Source: mymalloc.c Line: 219
PUSH @Free_List
PUSHVARIND
PUSHVAR 8
EQ
JUMPE @$$LABEL_25
.source mymalloc.c 218
;  Source: mymalloc.c Line: 218
PUSHVAR 8
PUSH 8
PLUS
PUSHVARIND
DUP
PUSH @Free_List
POPVARIND
POP
$$LABEL_25:
.source mymalloc.c 222
;  Source: mymalloc.c Line: 222
PUSH @Next_Free
PUSHVARIND
PUSHVAR 8
EQ
JUMPE @$$LABEL_26
.source mymalloc.c 219
;  Source: mymalloc.c Line: 219
PUSHVAR 8
PUSH 8
PLUS
PUSHVARIND
DUP
PUSH @Next_Free
POPVARIND
POP
$$LABEL_26:
.source mymalloc.c 223
;  Source: mymalloc.c Line: 223
PUSHVAR 8
PUSH 8
PLUS
PUSHVARIND
PUSH 0
NE
JUMPE @$$LABEL_27
.source mymalloc.c 222
;  Source: mymalloc.c Line: 222
PUSHVAR 8
PUSH 12
PLUS
PUSHVARIND
DUP
PUSHVAR 8
PUSH 8
PLUS
PUSHVARIND
PUSH 12
PLUS
POPVARIND
POP
$$LABEL_27:
.source mymalloc.c 226
;  Source: mymalloc.c Line: 226
PUSHVAR 8
PUSH 12
PLUS
PUSHVARIND
PUSH 0
NE
JUMPE @$$LABEL_28
.source mymalloc.c 223
;  Source: mymalloc.c Line: 223
PUSHVAR 8
PUSH 8
PLUS
PUSHVARIND
DUP
PUSHVAR 8
PUSH 12
PLUS
PUSHVARIND
PUSH 8
PLUS
POPVARIND
POP
$$LABEL_28:
.source mymalloc.c 226
;  Source: mymalloc.c Line: 226
PUSHVAR 4
PUSH 4
PLUS
PUSHVARIND
PUSHVAR 0
PUSH 4
PLUS
PUSHVARIND
PUSHVAR 8
PUSH 4
PLUS
PUSHVARIND
PLUS
PLUS
DUP
PUSHVAR 4
PUSH 4
PLUS
POPVARIND
POP
.source mymalloc.c 227
;  Source: mymalloc.c Line: 227
PUSHVAR 8
PUSHVAR 8
CALL @set_free_headers
ADJSP -8
JUMP @$$LABEL_29
$$LABEL_21:
.source mymalloc.c 264
;  Source: mymalloc.c Line: 264
PUSHVAR 4
PUSH 0
NE
DUP
JUMPE @$$LABEL_32
.source mymalloc.c 229
;  Source: mymalloc.c Line: 229
PUSHVAR 4
CALL @IS_BUSY
POPARGS 4
NOT
AND
$$LABEL_32:
DUP
JUMPE @$$LABEL_31
PUSHVAR 8
PUSH 0
EQ
DUP
JUMPE @$$LABEL_34
JUMP @$$LABEL_33
$$LABEL_34:
.source mymalloc.c 230
;  Source: mymalloc.c Line: 230
PUSHVAR 8
CALL @IS_BUSY
POPARGS 4
OR
$$LABEL_33:
AND
$$LABEL_31:
JUMPE @$$LABEL_30
.source mymalloc.c 234
;  Source: mymalloc.c Line: 234
PUSHVAR 4
PUSH 4
PLUS
PUSHVARIND
PUSHVAR 0
PUSH 4
PLUS
PUSHVARIND
PLUS
DUP
PUSHVAR 4
PUSH 4
PLUS
POPVARIND
POP
.source mymalloc.c 235
;  Source: mymalloc.c Line: 235
PUSHVAR 4
PUSHVAR 4
CALL @set_free_headers
ADJSP -8
JUMP @$$LABEL_35
$$LABEL_30:
.source mymalloc.c 264
;  Source: mymalloc.c Line: 264
PUSHVAR 4
PUSH 0
EQ
DUP
JUMPE @$$LABEL_40
JUMP @$$LABEL_39
$$LABEL_40:
.source mymalloc.c 236
;  Source: mymalloc.c Line: 236
PUSHVAR 4
CALL @IS_BUSY
POPARGS 4
OR
$$LABEL_39:
DUP
JUMPE @$$LABEL_38
PUSHVAR 8
PUSH 0
NE
AND
$$LABEL_38:
DUP
JUMPE @$$LABEL_37
.source mymalloc.c 237
;  Source: mymalloc.c Line: 237
PUSHVAR 8
CALL @IS_BUSY
POPARGS 4
NOT
AND
$$LABEL_37:
JUMPE @$$LABEL_36
.source mymalloc.c 244
;  Source: mymalloc.c Line: 244
PUSHVAR 8
PUSH 12
PLUS
PUSHVARIND
PUSH 0
NE
JUMPE @$$LABEL_41
.source mymalloc.c 243
;  Source: mymalloc.c Line: 243
PUSHVAR 0
DUP
PUSHVAR 8
PUSH 12
PLUS
PUSHVARIND
PUSH 8
PLUS
POPVARIND
POP
$$LABEL_41:
.source mymalloc.c 247
;  Source: mymalloc.c Line: 247
PUSHVAR 8
PUSH 8
PLUS
PUSHVARIND
PUSH 0
NE
JUMPE @$$LABEL_42
.source mymalloc.c 244
;  Source: mymalloc.c Line: 244
PUSHVAR 0
DUP
PUSHVAR 8
PUSH 8
PLUS
PUSHVARIND
PUSH 12
PLUS
POPVARIND
POP
$$LABEL_42:
.source mymalloc.c 248
;  Source: mymalloc.c Line: 248
PUSH @Free_List
PUSHVARIND
PUSHVAR 8
EQ
JUMPE @$$LABEL_43
.source mymalloc.c 247
;  Source: mymalloc.c Line: 247
PUSHVAR 0
DUP
PUSH @Free_List
POPVARIND
POP
$$LABEL_43:
.source mymalloc.c 251
;  Source: mymalloc.c Line: 251
PUSH @Next_Free
PUSHVARIND
PUSHVAR 8
EQ
JUMPE @$$LABEL_44
.source mymalloc.c 248
;  Source: mymalloc.c Line: 248
PUSHVAR 0
DUP
PUSH @Next_Free
POPVARIND
POP
$$LABEL_44:
.source mymalloc.c 251
;  Source: mymalloc.c Line: 251
PUSHVAR 0
PUSH 4
PLUS
PUSHVARIND
PUSHVAR 8
PUSH 4
PLUS
PUSHVARIND
PLUS
DUP
PUSHVAR 0
PUSH 4
PLUS
POPVARIND
POP
.source mymalloc.c 252
;  Source: mymalloc.c Line: 252
PUSHVAR 8
PUSH 8
PLUS
PUSHVARIND
DUP
PUSHVAR 0
PUSH 8
PLUS
POPVARIND
POP
.source mymalloc.c 253
;  Source: mymalloc.c Line: 253
PUSHVAR 8
PUSH 12
PLUS
PUSHVARIND
DUP
PUSHVAR 0
PUSH 12
PLUS
POPVARIND
POP
.source mymalloc.c 254
;  Source: mymalloc.c Line: 254
PUSHVAR 0
PUSHVAR 0
CALL @set_free_headers
ADJSP -8
JUMP @$$LABEL_45
$$LABEL_36:
.source mymalloc.c 259
;  Source: mymalloc.c Line: 259
PUSH 0
DUP
PUSHVAR 0
PUSH 12
PLUS
POPVARIND
POP
.source mymalloc.c 260
;  Source: mymalloc.c Line: 260
PUSH @Free_List
PUSHVARIND
DUP
PUSHVAR 0
PUSH 8
PLUS
POPVARIND
POP
.source mymalloc.c 262
;  Source: mymalloc.c Line: 262
PUSH @Free_List
PUSHVARIND
PUSH 0
NE
JUMPE @$$LABEL_46
.source mymalloc.c 261
;  Source: mymalloc.c Line: 261
PUSHVAR 0
DUP
PUSH @Free_List
PUSHVARIND
PUSH 12
PLUS
POPVARIND
POP
$$LABEL_46:
.source mymalloc.c 262
;  Source: mymalloc.c Line: 262
PUSHVAR 0
PUSHVAR 0
CALL @set_free_headers
ADJSP -8
.source mymalloc.c 263
;  Source: mymalloc.c Line: 263
PUSHVAR 0
DUP
PUSH @Free_List
POPVARIND
POP
$$LABEL_45:
$$LABEL_35:
$$LABEL_29:
RETURN
.source mymalloc.c 267
;  Source: mymalloc.c Line: 267
.function my_get_largest
;  my_get_largest

my_get_largest:
ADJSP 16
.source mymalloc.c 269
;  Source: mymalloc.c Line: 269
PUSH @Next_Free
PUSHVARIND
POPVAR 0
.source mymalloc.c 270
;  Source: mymalloc.c Line: 270
.source mymalloc.c 271
;  Source: mymalloc.c Line: 271
PUSH 0
POPVAR 8
.source mymalloc.c 275
;  Source: mymalloc.c Line: 275
PUSHVAR -12
PUSH 0
NE
JUMPE @$$LABEL_47
.source mymalloc.c 273
;  Source: mymalloc.c Line: 273
PUSH 0
DUP
PUSHVAR -12
POPVARIND
POP
$$LABEL_47:
.source mymalloc.c 278
;  Source: mymalloc.c Line: 278
PUSHVAR 0
PUSH 0
EQ
JUMPE @$$LABEL_48
.source mymalloc.c 275
;  Source: mymalloc.c Line: 275
PUSH @Free_List
PUSHVARIND
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
$$LABEL_48:
.source mymalloc.c 280
;  Source: mymalloc.c Line: 280
PUSHVAR 0
PUSH 0
EQ
JUMPE @$$LABEL_49
.source mymalloc.c 278
;  Source: mymalloc.c Line: 278
PUSH 0
RETURNV
$$LABEL_49:
.source mymalloc.c 280
;  Source: mymalloc.c Line: 280
PUSHVAR 0
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source mymalloc.c 281
;  Source: mymalloc.c Line: 281
PUSHVAR 4
DUP
PUSH 8
PUSHFP
PLUS
POPVARIND
POP
.source mymalloc.c 289
;  Source: mymalloc.c Line: 289
$$LABEL_50:
.source mymalloc.c 287
;  Source: mymalloc.c Line: 287
PUSHVAR 4
PUSH 4
PLUS
PUSHVARIND
PUSHVAR 8
PUSH 4
PLUS
PUSHVARIND
GT
JUMPE @$$LABEL_52
.source mymalloc.c 285
;  Source: mymalloc.c Line: 285
PUSHVAR 4
DUP
PUSH 8
PUSHFP
PLUS
POPVARIND
POP
$$LABEL_52:
.source mymalloc.c 287
;  Source: mymalloc.c Line: 287
PUSHVAR 4
PUSH 8
PLUS
PUSHVARIND
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source mymalloc.c 289
;  Source: mymalloc.c Line: 289
PUSHVAR 4
PUSH 0
EQ
JUMPE @$$LABEL_53
.source mymalloc.c 288
;  Source: mymalloc.c Line: 288
PUSH @Free_List
PUSHVARIND
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
$$LABEL_53:
PUSHVAR 4
PUSHVAR 0
NE
JUMPE @$$LABEL_51
JUMP @$$LABEL_50
$$LABEL_51:
.source mymalloc.c 295
;  Source: mymalloc.c Line: 295
PUSHVAR 8
PUSH 12
PLUS
PUSHVARIND
PUSH 0
NE
JUMPE @$$LABEL_54
.source mymalloc.c 293
;  Source: mymalloc.c Line: 293
PUSHVAR 8
PUSH 8
PLUS
PUSHVARIND
DUP
PUSHVAR 8
PUSH 12
PLUS
PUSHVARIND
PUSH 8
PLUS
POPVARIND
POP
JUMP @$$LABEL_55
$$LABEL_54:
.source mymalloc.c 295
;  Source: mymalloc.c Line: 295
PUSHVAR 8
PUSH 8
PLUS
PUSHVARIND
DUP
PUSH @Free_List
POPVARIND
POP
$$LABEL_55:
.source mymalloc.c 300
;  Source: mymalloc.c Line: 300
PUSHVAR 8
PUSH 8
PLUS
PUSHVARIND
PUSH 0
NE
JUMPE @$$LABEL_56
.source mymalloc.c 298
;  Source: mymalloc.c Line: 298
PUSHVAR 8
PUSH 12
PLUS
PUSHVARIND
DUP
PUSHVAR 8
PUSH 8
PLUS
PUSHVARIND
PUSH 12
PLUS
POPVARIND
POP
$$LABEL_56:
.source mymalloc.c 300
;  Source: mymalloc.c Line: 300
PUSHVAR 8
PUSH 8
PLUS
PUSHVARIND
DUP
PUSH @Next_Free
POPVARIND
POP
.source mymalloc.c 303
;  Source: mymalloc.c Line: 303
PUSHVAR 8
CALL @SET_BUSY
ADJSP -4
.source mymalloc.c 305
;  Source: mymalloc.c Line: 305
PUSHVAR -12
PUSH 0
NE
JUMPE @$$LABEL_57
.source mymalloc.c 304
;  Source: mymalloc.c Line: 304
PUSHVAR 8
PUSH 4
PLUS
PUSHVARIND
DUP
PUSHVAR -12
POPVARIND
POP
$$LABEL_57:
.source mymalloc.c 305
;  Source: mymalloc.c Line: 305
PUSHVAR 8
PUSH 8
PLUS
RETURNV
.source mymalloc.c 307
;  Source: mymalloc.c Line: 307
PUSH 0
RETURNV
.source mymalloc.c 456
;  Source: mymalloc.c Line: 456
PUSH 0
RETURNV
.source mymalloc.c 310
;  Source: mymalloc.c Line: 310
.function my_set_limit
;  my_set_limit

my_set_limit:
ADJSP 20
.source mymalloc.c 312
;  Source: mymalloc.c Line: 312
.source mymalloc.c 313
;  Source: mymalloc.c Line: 313
.source mymalloc.c 318
;  Source: mymalloc.c Line: 318
PUSHVAR -16
PUSHVAR -12
LT
JUMPE @$$LABEL_58
.source mymalloc.c 316
;  Source: mymalloc.c Line: 316
PUSH 0
RETURNV
$$LABEL_58:
.source mymalloc.c 318
;  Source: mymalloc.c Line: 318
.source mymalloc.c 318
;  Source: mymalloc.c Line: 318
PUSHVAR -12
CALL @BUSY_HEADER
POPARGS 4
POPVAR 8
.source mymalloc.c 319
;  Source: mymalloc.c Line: 319
.source mymalloc.c 321
;  Source: mymalloc.c Line: 321
PUSHVAR -16
PUSHVAR -12
MINUS
PUSH 8
PLUS
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source mymalloc.c 323
;  Source: mymalloc.c Line: 323
.source mymalloc.c 323
;  Source: mymalloc.c Line: 323
PUSHVAR 0
CALL @valid_size
POPARGS 4
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source mymalloc.c 329
;  Source: mymalloc.c Line: 329
PUSHVAR 0
PUSHVAR 8
PUSH 4
PLUS
PUSHVARIND
GT
JUMPE @$$LABEL_59
.source mymalloc.c 326
;  Source: mymalloc.c Line: 326
PUSH 0
RETURNV
$$LABEL_59:
.source mymalloc.c 332
;  Source: mymalloc.c Line: 332
PUSHVAR 0
PUSH 16
PLUS
PUSHVAR 8
PUSH 4
PLUS
PUSHVARIND
GE
JUMPE @$$LABEL_60
.source mymalloc.c 329
;  Source: mymalloc.c Line: 329
PUSHVAR -12
RETURNV
$$LABEL_60:
.source mymalloc.c 332
;  Source: mymalloc.c Line: 332
PUSHVAR 8
PUSH 4
PLUS
PUSHVARIND
PUSHVAR 0
MINUS
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source mymalloc.c 334
;  Source: mymalloc.c Line: 334
PUSHVAR 0
DUP
PUSHVAR 8
PUSH 4
PLUS
POPVARIND
POP
.source mymalloc.c 336
;  Source: mymalloc.c Line: 336
PUSHVAR 8
PUSHVAR 0
PLUS
DUP
PUSH 12
PUSHFP
PLUS
POPVARIND
POP
.source mymalloc.c 338
;  Source: mymalloc.c Line: 338
PUSHVAR 4
DUP
PUSHVAR 12
PUSH 4
PLUS
POPVARIND
POP
.source mymalloc.c 339
;  Source: mymalloc.c Line: 339
PUSHVAR 12
CALL @CLR_BUSY
ADJSP -4
.source mymalloc.c 340
;  Source: mymalloc.c Line: 340
PUSH 0
DUP
PUSHVAR 12
PUSH 12
PLUS
POPVARIND
POP
.source mymalloc.c 341
;  Source: mymalloc.c Line: 341
PUSH @Free_List
PUSHVARIND
DUP
PUSHVAR 12
PUSH 8
PLUS
POPVARIND
POP
.source mymalloc.c 343
;  Source: mymalloc.c Line: 343
PUSH @Free_List
PUSHVARIND
PUSH 0
NE
JUMPE @$$LABEL_61
.source mymalloc.c 342
;  Source: mymalloc.c Line: 342
PUSHVAR 12
DUP
PUSH @Free_List
PUSHVARIND
PUSH 12
PLUS
POPVARIND
POP
$$LABEL_61:
.source mymalloc.c 343
;  Source: mymalloc.c Line: 343
PUSHVAR 12
PUSHVAR 12
CALL @set_free_headers
ADJSP -8
.source mymalloc.c 344
;  Source: mymalloc.c Line: 344
PUSHVAR 12
DUP
PUSH @Free_List
POPVARIND
POP
.source mymalloc.c 346
;  Source: mymalloc.c Line: 346
PUSHVAR -12
RETURNV
.source mymalloc.c 456
;  Source: mymalloc.c Line: 456
PUSH 0
RETURNV
.source mymalloc.c 349
;  Source: mymalloc.c Line: 349
.function my_validate
;  my_validate

my_validate:
ADJSP 16
.source mymalloc.c 351
;  Source: mymalloc.c Line: 351
PUSH @g_Memory
PUSHVARIND
POPVAR 0
.source mymalloc.c 352
;  Source: mymalloc.c Line: 352
PUSH @g_Memory
PUSHVARIND
PUSH @g_Mem_Size
PUSHVARIND
PUSH 1
TIMES
PLUS
POPVAR 4
.source mymalloc.c 353
;  Source: mymalloc.c Line: 353
.source mymalloc.c 375
;  Source: mymalloc.c Line: 375
$$LABEL_62:
PUSHVAR 0
PUSHVAR 4
LT
JUMPE @$$LABEL_63
.source mymalloc.c 357
;  Source: mymalloc.c Line: 357
PUSHVAR 0
DUP
PUSH 8
PUSHFP
PLUS
POPVARIND
POP
.source mymalloc.c 366
;  Source: mymalloc.c Line: 366
PUSHVAR 8
PUSH 0
PLUS
PUSHVARIND
PUSH 1073741823
BAND
PUSH 1001253805
NE
JUMPE @$$LABEL_64
.source mymalloc.c 360
;  Source: mymalloc.c Line: 360
PUSH @$$LABEL_65
.dataseg
$$LABEL_65:
.string "Invalid hash at addr "
.codeseg
CALL @prints
POPARGS 4
POP
.source mymalloc.c 361
;  Source: mymalloc.c Line: 361
PUSH 4
PUSHVAR 8
PUSH 1
TIMES
PUSH @g_Memory
PUSHVARIND
MINUS
CALL @printxn
POPARGS 8
POP
.source mymalloc.c 362
;  Source: mymalloc.c Line: 362
PUSH @$$LABEL_66
.dataseg
$$LABEL_66:
.string "\n"
.codeseg
CALL @prints
POPARGS 4
POP
.source mymalloc.c 363
;  Source: mymalloc.c Line: 363
PUSH 0
RETURNV
$$LABEL_64:
.source mymalloc.c 374
;  Source: mymalloc.c Line: 374
PUSHVAR 8
PUSH 4
PLUS
PUSHVARIND
PUSH 0
LE
DUP
JUMPE @$$LABEL_69
JUMP @$$LABEL_68
$$LABEL_69:
PUSHVAR 8
PUSH 4
PLUS
PUSHVARIND
PUSH @g_Mem_Size
PUSHVARIND
GT
OR
$$LABEL_68:
JUMPE @$$LABEL_67
.source mymalloc.c 368
;  Source: mymalloc.c Line: 368
PUSH @$$LABEL_70
.dataseg
$$LABEL_70:
.string "Invalid size at addr "
.codeseg
CALL @prints
POPARGS 4
POP
.source mymalloc.c 369
;  Source: mymalloc.c Line: 369
PUSH 4
PUSHVAR 8
PUSH 1
TIMES
PUSH @g_Memory
PUSHVARIND
MINUS
CALL @printxn
POPARGS 8
POP
.source mymalloc.c 370
;  Source: mymalloc.c Line: 370
PUSH @$$LABEL_71
.dataseg
$$LABEL_71:
.string "\n"
.codeseg
CALL @prints
POPARGS 4
POP
.source mymalloc.c 371
;  Source: mymalloc.c Line: 371
PUSH 0
RETURNV
$$LABEL_67:
.source mymalloc.c 374
;  Source: mymalloc.c Line: 374
PUSHVAR 0
PUSHVAR 8
PUSH 4
PLUS
PUSHVARIND
PUSH 1
TIMES
PLUS
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
JUMP @$$LABEL_62
$$LABEL_63:
.source mymalloc.c 377
;  Source: mymalloc.c Line: 377
PUSH 1
RETURNV
.source mymalloc.c 456
;  Source: mymalloc.c Line: 456
PUSH 0
RETURNV
.source mymalloc.c 380
;  Source: mymalloc.c Line: 380
.function my_print_mem
;  my_print_mem

my_print_mem:
ADJSP 16
.source mymalloc.c 382
;  Source: mymalloc.c Line: 382
PUSH @g_Memory
PUSHVARIND
POPVAR 0
.source mymalloc.c 383
;  Source: mymalloc.c Line: 383
PUSH @g_Memory
PUSHVARIND
PUSH @g_Mem_Size
PUSHVARIND
PUSH 1
TIMES
PLUS
POPVAR 4
.source mymalloc.c 384
;  Source: mymalloc.c Line: 384
.source mymalloc.c 389
;  Source: mymalloc.c Line: 389
.source mymalloc.c 387
;  Source: mymalloc.c Line: 387
CALL @my_validate
NOT
JUMPE @$$LABEL_72
.source mymalloc.c 387
;  Source: mymalloc.c Line: 387
RETURN
$$LABEL_72:
.source mymalloc.c 389
;  Source: mymalloc.c Line: 389
PUSH @$$LABEL_73
.dataseg
$$LABEL_73:
.string "Free List: 0x"
.codeseg
CALL @prints
POPARGS 4
POP
.source mymalloc.c 393
;  Source: mymalloc.c Line: 393
PUSH @Free_List
PUSHVARIND
PUSH 0
EQ
JUMPE @$$LABEL_74
.source mymalloc.c 391
;  Source: mymalloc.c Line: 391
PUSH @$$LABEL_75
.dataseg
$$LABEL_75:
.string "0000"
.codeseg
CALL @prints
POPARGS 4
POP
JUMP @$$LABEL_76
$$LABEL_74:
.source mymalloc.c 393
;  Source: mymalloc.c Line: 393
PUSH 4
PUSH @Free_List
PUSHVARIND
PUSH 1
TIMES
PUSH @g_Memory
PUSHVARIND
MINUS
CALL @printxn
POPARGS 8
POP
$$LABEL_76:
.source mymalloc.c 394
;  Source: mymalloc.c Line: 394
PUSH @$$LABEL_77
.dataseg
$$LABEL_77:
.string "\nNext Free: 0x"
.codeseg
CALL @prints
POPARGS 4
POP
.source mymalloc.c 398
;  Source: mymalloc.c Line: 398
PUSH @Next_Free
PUSHVARIND
PUSH 0
EQ
JUMPE @$$LABEL_78
.source mymalloc.c 396
;  Source: mymalloc.c Line: 396
PUSH @$$LABEL_79
.dataseg
$$LABEL_79:
.string "0000"
.codeseg
CALL @prints
POPARGS 4
POP
JUMP @$$LABEL_80
$$LABEL_78:
.source mymalloc.c 398
;  Source: mymalloc.c Line: 398
PUSH 4
PUSH @Next_Free
PUSHVARIND
PUSH 1
TIMES
PUSH @g_Memory
PUSHVARIND
MINUS
CALL @printxn
POPARGS 8
POP
$$LABEL_80:
.source mymalloc.c 399
;  Source: mymalloc.c Line: 399
PUSH @$$LABEL_81
.dataseg
$$LABEL_81:
.string "\n"
.codeseg
CALL @prints
POPARGS 4
POP
.source mymalloc.c 454
;  Source: mymalloc.c Line: 454
$$LABEL_82:
PUSHVAR 0
PUSHVAR 4
LT
JUMPE @$$LABEL_83
.source mymalloc.c 403
;  Source: mymalloc.c Line: 403
PUSHVAR 0
DUP
PUSH 8
PUSHFP
PLUS
POPVARIND
POP
.source mymalloc.c 451
;  Source: mymalloc.c Line: 451
.source mymalloc.c 404
;  Source: mymalloc.c Line: 404
PUSHVAR 8
CALL @IS_BUSY
POPARGS 4
JUMPE @$$LABEL_84
.source mymalloc.c 406
;  Source: mymalloc.c Line: 406
PUSH @$$LABEL_85
.dataseg
$$LABEL_85:
.string "busy: 0x"
.codeseg
CALL @prints
POPARGS 4
POP
.source mymalloc.c 407
;  Source: mymalloc.c Line: 407
PUSH 4
PUSHVAR 8
PUSH 1
TIMES
PUSH @g_Memory
PUSHVARIND
MINUS
CALL @printxn
POPARGS 8
POP
.source mymalloc.c 408
;  Source: mymalloc.c Line: 408
PUSH @$$LABEL_86
.dataseg
$$LABEL_86:
.string " 0x"
.codeseg
CALL @prints
POPARGS 4
POP
.source mymalloc.c 409
;  Source: mymalloc.c Line: 409
PUSH 4
PUSHVAR 8
PUSH 4
PLUS
PUSHVARIND
CALL @printxn
POPARGS 8
POP
.source mymalloc.c 410
;  Source: mymalloc.c Line: 410
PUSH @$$LABEL_87
.dataseg
$$LABEL_87:
.string " 0x"
.codeseg
CALL @prints
POPARGS 4
POP
.source mymalloc.c 411
;  Source: mymalloc.c Line: 411
PUSH 4
PUSHVAR 8
PUSH 0
PLUS
PUSHVARIND
CALL @printxn
POPARGS 8
POP
.source mymalloc.c 412
;  Source: mymalloc.c Line: 412
PUSH @$$LABEL_88
.dataseg
$$LABEL_88:
.string "\n"
.codeseg
CALL @prints
POPARGS 4
POP
JUMP @$$LABEL_89
$$LABEL_84:
.source mymalloc.c 418
;  Source: mymalloc.c Line: 418
PUSH @$$LABEL_90
.dataseg
$$LABEL_90:
.string "free: 0x"
.codeseg
CALL @prints
POPARGS 4
POP
.source mymalloc.c 419
;  Source: mymalloc.c Line: 419
PUSH 4
PUSHVAR 8
PUSH 1
TIMES
PUSH @g_Memory
PUSHVARIND
MINUS
CALL @printxn
POPARGS 8
POP
.source mymalloc.c 420
;  Source: mymalloc.c Line: 420
PUSH @$$LABEL_91
.dataseg
$$LABEL_91:
.string " 0x"
.codeseg
CALL @prints
POPARGS 4
POP
.source mymalloc.c 421
;  Source: mymalloc.c Line: 421
PUSH 4
PUSHVAR 8
PUSH 4
PLUS
PUSHVARIND
CALL @printxn
POPARGS 8
POP
.source mymalloc.c 422
;  Source: mymalloc.c Line: 422
PUSH @$$LABEL_92
.dataseg
$$LABEL_92:
.string " 0x"
.codeseg
CALL @prints
POPARGS 4
POP
.source mymalloc.c 423
;  Source: mymalloc.c Line: 423
PUSH 4
PUSHVAR 8
PUSH 0
PLUS
PUSHVARIND
CALL @printxn
POPARGS 8
POP
.source mymalloc.c 424
;  Source: mymalloc.c Line: 424
PUSH @$$LABEL_93
.dataseg
$$LABEL_93:
.string ": "
.codeseg
CALL @prints
POPARGS 4
POP
.source mymalloc.c 437
;  Source: mymalloc.c Line: 437
PUSHVAR 8
PUSH 8
PLUS
PUSHVARIND
PUSH 0
EQ
JUMPE @$$LABEL_94
.source mymalloc.c 430
;  Source: mymalloc.c Line: 430
PUSH @$$LABEL_95
.dataseg
$$LABEL_95:
.string "0x---- "
.codeseg
CALL @prints
POPARGS 4
POP
JUMP @$$LABEL_96
$$LABEL_94:
.source mymalloc.c 434
;  Source: mymalloc.c Line: 434
PUSH @$$LABEL_97
.dataseg
$$LABEL_97:
.string "0x"
.codeseg
CALL @prints
POPARGS 4
POP
.source mymalloc.c 435
;  Source: mymalloc.c Line: 435
PUSH 4
PUSHVAR 8
PUSH 8
PLUS
PUSHVARIND
PUSH 1
TIMES
PUSH @g_Memory
PUSHVARIND
MINUS
CALL @printxn
POPARGS 8
POP
.source mymalloc.c 436
;  Source: mymalloc.c Line: 436
PUSH @$$LABEL_98
.dataseg
$$LABEL_98:
.string " "
.codeseg
CALL @prints
POPARGS 4
POP
$$LABEL_96:
.source mymalloc.c 448
;  Source: mymalloc.c Line: 448
PUSHVAR 8
PUSH 12
PLUS
PUSHVARIND
PUSH 0
EQ
JUMPE @$$LABEL_99
.source mymalloc.c 441
;  Source: mymalloc.c Line: 441
PUSH @$$LABEL_100
.dataseg
$$LABEL_100:
.string "0x---- "
.codeseg
CALL @prints
POPARGS 4
POP
JUMP @$$LABEL_101
$$LABEL_99:
.source mymalloc.c 445
;  Source: mymalloc.c Line: 445
PUSH @$$LABEL_102
.dataseg
$$LABEL_102:
.string "0x"
.codeseg
CALL @prints
POPARGS 4
POP
.source mymalloc.c 446
;  Source: mymalloc.c Line: 446
PUSH 4
PUSHVAR 8
PUSH 12
PLUS
PUSHVARIND
PUSH 1
TIMES
PUSH @g_Memory
PUSHVARIND
MINUS
CALL @printxn
POPARGS 8
POP
.source mymalloc.c 447
;  Source: mymalloc.c Line: 447
PUSH @$$LABEL_103
.dataseg
$$LABEL_103:
.string " "
.codeseg
CALL @prints
POPARGS 4
POP
$$LABEL_101:
.source mymalloc.c 450
;  Source: mymalloc.c Line: 450
PUSH @$$LABEL_104
.dataseg
$$LABEL_104:
.string "\n"
.codeseg
CALL @prints
POPARGS 4
POP
$$LABEL_89:
.source mymalloc.c 453
;  Source: mymalloc.c Line: 453
PUSHVAR 0
PUSHVAR 8
PUSH 4
PLUS
PUSHVARIND
PUSH 1
TIMES
PLUS
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
JUMP @$$LABEL_82
$$LABEL_83:
RETURN
