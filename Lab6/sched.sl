#stackl V0.10.2-56-g2fd0590-dev stacklc
#once 
#once 
.source machine_defines.h 4
;  Source: machine_defines.h Line: 4
.dataseg
$EXIT_CALL:
.data 1
.codeseg
.source machine_defines.h 5
;  Source: machine_defines.h Line: 5
.dataseg
$PRINTI_CALL:
.data 2
.codeseg
.source machine_defines.h 6
;  Source: machine_defines.h Line: 6
.dataseg
$PRINTS_CALL:
.data 3
.codeseg
.source machine_defines.h 7
;  Source: machine_defines.h Line: 7
.dataseg
$GETS_CALL:
.data 6
.codeseg
.source machine_defines.h 8
;  Source: machine_defines.h Line: 8
.dataseg
$GETI_CALL:
.data 7
.codeseg
.source machine_defines.h 9
;  Source: machine_defines.h Line: 9
.dataseg
$EXEC_CALL:
.data 8
.codeseg
.source machine_defines.h 10
;  Source: machine_defines.h Line: 10
.dataseg
$SLEEP_CALL:
.data 31
.codeseg
.source machine_defines.h 11
;  Source: machine_defines.h Line: 11
.dataseg
$YIELD_CALL:
.data 32
.codeseg
.source machine_defines.h 12
;  Source: machine_defines.h Line: 12
.dataseg
$TIME_CALL:
.data 33
.codeseg
.source machine_defines.h 15
;  Source: machine_defines.h Line: 15
.dataseg
$BAD_ACCESS:
.data 1
.codeseg
.source machine_defines.h 16
;  Source: machine_defines.h Line: 16
.dataseg
$BAD_OPCODE:
.data 2
.codeseg
.source machine_defines.h 17
;  Source: machine_defines.h Line: 17
.dataseg
$DATA_TRUNC:
.data 3
.codeseg
.source machine_defines.h 19
;  Source: machine_defines.h Line: 19
.dataseg
$REG_BP:
.data 0
.codeseg
.source machine_defines.h 20
;  Source: machine_defines.h Line: 20
.dataseg
$REG_LP:
.data 1
.codeseg
.source machine_defines.h 21
;  Source: machine_defines.h Line: 21
.dataseg
$REG_IP:
.data 2
.codeseg
.source machine_defines.h 22
;  Source: machine_defines.h Line: 22
.dataseg
$REG_SP:
.data 3
.codeseg
.source machine_defines.h 23
;  Source: machine_defines.h Line: 23
.dataseg
$REG_FP:
.data 4
.codeseg
.source machine_defines.h 24
;  Source: machine_defines.h Line: 24
.dataseg
$REG_FLAG:
.data 5
.codeseg
.source machine_defines.h 25
;  Source: machine_defines.h Line: 25
.dataseg
$REG_IVEC:
.data 6
.codeseg
.source machine_defines.h 27
;  Source: machine_defines.h Line: 27
.dataseg
$FL_HALTED:
.data 1
.codeseg
.source machine_defines.h 28
;  Source: machine_defines.h Line: 28
.dataseg
$FL_USER_MODE:
.data 2
.codeseg
.source machine_defines.h 29
;  Source: machine_defines.h Line: 29
.dataseg
$FL_INT_MODE:
.data 4
.codeseg
.source machine_defines.h 30
;  Source: machine_defines.h Line: 30
.dataseg
$FL_INT_DIS:
.data 8
.codeseg
.source machine_defines.h 31
;  Source: machine_defines.h Line: 31
.dataseg
$FL_VMEM:
.data 16
.codeseg
.source machine_defines.h 33
;  Source: machine_defines.h Line: 33
.dataseg
$FL_I_FIRST_INT:
.data 65536
.codeseg
.source machine_defines.h 34
;  Source: machine_defines.h Line: 34
.dataseg
$FL_I_ALL:
.data -65536
.codeseg
.source machine_defines.h 35
;  Source: machine_defines.h Line: 35
.dataseg
$FL_I_MACH:
.data 65536
.codeseg
.source machine_defines.h 36
;  Source: machine_defines.h Line: 36
.dataseg
$FL_I_TRAP:
.data 131072
.codeseg
.source machine_defines.h 41
;  Source: machine_defines.h Line: 41
.source machine_defines.h 42
;  Source: machine_defines.h Line: 42
.source machine_defines.h 43
;  Source: machine_defines.h Line: 43
.source machine_defines.h 49
;  Source: machine_defines.h Line: 49
.source machine_defines.h 50
;  Source: machine_defines.h Line: 50
.source machine_defines.h 51
;  Source: machine_defines.h Line: 51
.source machine_defines.h 52
;  Source: machine_defines.h Line: 52
.source machine_defines.h 53
;  Source: machine_defines.h Line: 53
.source machine_defines.h 54
;  Source: machine_defines.h Line: 54
.source sched.h 5
;  Source: sched.h Line: 5
.dataseg
$P_READY:
.data 1
.codeseg
.source sched.h 6
;  Source: sched.h Line: 6
.dataseg
$P_WAITING:
.data 2
.codeseg
.source sched.h 7
;  Source: sched.h Line: 7
.dataseg
$P_UNUSED:
.data 3
.codeseg
.source sched.h 8
;  Source: sched.h Line: 8
.dataseg
$P_RUNNING:
.data 4
.codeseg
.source sched.h 9
;  Source: sched.h Line: 9
.dataseg
$P_SLEEPING:
.data 5
.codeseg
.source sched.h 11
;  Source: sched.h Line: 11
.dataseg
$INSTRUCTIONS_PER_SECOND:
.data 10000000
.codeseg
.source sched.h 14
;  Source: sched.h Line: 14
.source sched.h 15
;  Source: sched.h Line: 15
.source sched.h 18
;  Source: sched.h Line: 18
.source sched.h 19
;  Source: sched.h Line: 19
.source sched.h 20
;  Source: sched.h Line: 20
.source sched.h 21
;  Source: sched.h Line: 21
.source sched.h 22
;  Source: sched.h Line: 22
.source sched.h 23
;  Source: sched.h Line: 23
.source sched.h 24
;  Source: sched.h Line: 24
.source sched.h 25
;  Source: sched.h Line: 25
PUSH 0
POPVAR 28
.source sched.h 28
;  Source: sched.h Line: 28
.source sched.h 29
;  Source: sched.h Line: 29
.source sched.h 30
;  Source: sched.h Line: 30
.source sched.h 31
;  Source: sched.h Line: 31
.source sched.h 34
;  Source: sched.h Line: 34
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
#once 
.source /home/ubuntu/workspace/bin/library/timer.h 5
;  Source: /home/ubuntu/workspace/bin/library/timer.h Line: 5
.dataseg
$TIMER_CSR:
.data 201326592
.codeseg
.source /home/ubuntu/workspace/bin/library/timer.h 6
;  Source: /home/ubuntu/workspace/bin/library/timer.h Line: 6
.dataseg
$TIMER_COUNT:
.data 201326596
.codeseg
.source /home/ubuntu/workspace/bin/library/timer.h 7
;  Source: /home/ubuntu/workspace/bin/library/timer.h Line: 7
.dataseg
$TIMER_LIMIT:
.data 201326600
.codeseg
.source /home/ubuntu/workspace/bin/library/timer.h 8
;  Source: /home/ubuntu/workspace/bin/library/timer.h Line: 8
.dataseg
$TIMER_TIME:
.data 201326604
.codeseg
.source /home/ubuntu/workspace/bin/library/timer.h 10
;  Source: /home/ubuntu/workspace/bin/library/timer.h Line: 10
.dataseg
$TIMER_CSR_IE:
.data 1
.codeseg
.source /home/ubuntu/workspace/bin/library/timer.h 11
;  Source: /home/ubuntu/workspace/bin/library/timer.h Line: 11
.dataseg
$TIMER_CSR_INT:
.data -2147483648
.codeseg
.source /home/ubuntu/workspace/bin/library/timer.h 13
;  Source: /home/ubuntu/workspace/bin/library/timer.h Line: 13
.dataseg
$TIMER_VECTOR:
.data 3
.codeseg
.source /home/ubuntu/workspace/bin/library/timer.h 15
;  Source: /home/ubuntu/workspace/bin/library/timer.h Line: 15
.source /home/ubuntu/workspace/bin/library/timer.h 16
;  Source: /home/ubuntu/workspace/bin/library/timer.h Line: 16
.source /home/ubuntu/workspace/bin/library/timer.h 19
;  Source: /home/ubuntu/workspace/bin/library/timer.h Line: 19
.source sched.c 7
;  Source: sched.c Line: 7
.dataseg
$MAX_PROCESSES:
.data 10
.codeseg
.source sched.c 8
;  Source: sched.c Line: 8
.dataseg
$scheduled_processes:
.block 80
.codeseg
.source sched.c 9
;  Source: sched.c Line: 9
.dataseg
$current_process_index:
.block 1
.codeseg
.source sched.c 11
;  Source: sched.c Line: 11
.function t_printi
;  t_printi

t_printi:
ADJSP 36
.source sched.c 13
;  Source: sched.c Line: 13
.source sched.c 14
;  Source: sched.c Line: 14
PUSH 0
PUSHFP
PLUS
PUSHVAR -12
CALL @itostr
POPARGS 8
POP
.source sched.c 15
;  Source: sched.c Line: 15
.source sched.c 16
;  Source: sched.c Line: 16
PUSH 3
DUP
PUSH 20
PUSHFP
PLUS
PUSH 0
PLUS
POPVARIND
POP
.source sched.c 17
;  Source: sched.c Line: 17
PUSH 0
PUSHFP
PLUS
DUP
PUSH 20
PUSHFP
PLUS
PUSH 4
PLUS
POPVARIND
POP
.source sched.c 18
;  Source: sched.c Line: 18
PUSH 0
PUSHFP
PLUS
OUTS
.source sched.c 19
;  Source: sched.c Line: 19
PUSH @$$LABEL_2
.dataseg
$$LABEL_2:
.string "\n"
.codeseg
OUTS
.source sched.c 20
;  Source: sched.c Line: 20
PUSH 0
RETURNV
.source sched.c 225
;  Source: sched.c Line: 225
PUSH 0
RETURNV
.source sched.c 23
;  Source: sched.c Line: 23
.function t_printx
;  t_printx

t_printx:
ADJSP 36
.source sched.c 25
;  Source: sched.c Line: 25
.source sched.c 26
;  Source: sched.c Line: 26
PUSH 0
PUSHFP
PLUS
PUSHVAR -12
CALL @xtostr
POPARGS 8
POP
.source sched.c 27
;  Source: sched.c Line: 27
.source sched.c 28
;  Source: sched.c Line: 28
PUSH 3
DUP
PUSH 20
PUSHFP
PLUS
PUSH 0
PLUS
POPVARIND
POP
.source sched.c 29
;  Source: sched.c Line: 29
PUSH 0
PUSHFP
PLUS
DUP
PUSH 20
PUSHFP
PLUS
PUSH 4
PLUS
POPVARIND
POP
.source sched.c 30
;  Source: sched.c Line: 30
PUSH 0
PUSHFP
PLUS
OUTS
.source sched.c 31
;  Source: sched.c Line: 31
PUSH @$$LABEL_3
.dataseg
$$LABEL_3:
.string "\n"
.codeseg
OUTS
.source sched.c 32
;  Source: sched.c Line: 32
PUSH 0
RETURNV
.source sched.c 225
;  Source: sched.c Line: 225
PUSH 0
RETURNV
.source sched.c 35
;  Source: sched.c Line: 35
.function sched_init
;  sched_init

sched_init:
ADJSP 8
.source sched.c 37
;  Source: sched.c Line: 37
PUSH 4
DUP
PUSH @$scheduled_processes
PUSH 0
PUSH 32
TIMES
PLUS
PUSH 24
PLUS
POPVARIND
POP
.source sched.c 38
;  Source: sched.c Line: 38
PUSH 0
DUP
PUSH @$current_process_index
POPVARIND
POP
.source sched.c 39
;  Source: sched.c Line: 39
.source sched.c 42
;  Source: sched.c Line: 42
.source sched.c 40
;  Source: sched.c Line: 40
PUSH 1
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
$$LABEL_4:
PUSHVAR 0
PUSH 10
LT
JUMPE @$$LABEL_5
.source sched.c 41
;  Source: sched.c Line: 41
PUSH 3
DUP
PUSH @$scheduled_processes
PUSHVAR 0
PUSH 32
TIMES
PLUS
PUSH 24
PLUS
POPVARIND
POP
.source sched.c 40
;  Source: sched.c Line: 40
PUSHVAR 0
PUSHVAR 0
PUSH 1
PLUS
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
JUMP @$$LABEL_4
$$LABEL_5:
.source sched.c 43
;  Source: sched.c Line: 43
PUSH @$scheduled_processes
PUSH 0
PUSH 32
TIMES
PLUS
RETURNV
.source sched.c 225
;  Source: sched.c Line: 225
PUSH 0
RETURNV
.source sched.c 46
;  Source: sched.c Line: 46
.function get_open_slot
;  get_open_slot

get_open_slot:
ADJSP 8
.source sched.c 48
;  Source: sched.c Line: 48
.source sched.c 52
;  Source: sched.c Line: 52
.source sched.c 49
;  Source: sched.c Line: 49
PUSH 1
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
$$LABEL_6:
PUSHVAR 0
PUSH 10
LT
JUMPE @$$LABEL_7
.source sched.c 52
;  Source: sched.c Line: 52
PUSH @$scheduled_processes
PUSHVAR 0
PUSH 32
TIMES
PLUS
PUSH 24
PLUS
PUSHVARIND
PUSH 3
EQ
JUMPE @$$LABEL_8
.source sched.c 51
;  Source: sched.c Line: 51
PUSH @$scheduled_processes
PUSHVAR 0
PUSH 32
TIMES
PLUS
RETURNV
$$LABEL_8:
.source sched.c 49
;  Source: sched.c Line: 49
PUSHVAR 0
PUSHVAR 0
PUSH 1
PLUS
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
JUMP @$$LABEL_6
$$LABEL_7:
.source sched.c 53
;  Source: sched.c Line: 53
PUSH 0
RETURNV
.source sched.c 225
;  Source: sched.c Line: 225
PUSH 0
RETURNV
.source sched.c 57
;  Source: sched.c Line: 57
.function sched_exec
;  sched_exec

sched_exec:
ADJSP 32
.source sched.c 60
;  Source: sched.c Line: 60
.source sched.c 61
;  Source: sched.c Line: 61
.source sched.c 63
;  Source: sched.c Line: 63
.source sched.c 63
;  Source: sched.c Line: 63
PUSHREG 0
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source sched.c 64
;  Source: sched.c Line: 64
.source sched.c 64
;  Source: sched.c Line: 64
PUSHREG 1
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source sched.c 66
;  Source: sched.c Line: 66
.source sched.c 67
;  Source: sched.c Line: 67
.source sched.c 69
;  Source: sched.c Line: 69
.source sched.c 69
;  Source: sched.c Line: 69
CALL @get_open_slot
POPVAR 24
.source sched.c 71
;  Source: sched.c Line: 71
.source sched.c 71
;  Source: sched.c Line: 71
PUSH 8
PUSHFP
PLUS
CALL @my_get_largest
POPARGS 4
DUP
PUSHVAR 24
PUSH 4
PLUS
POPVARIND
POP
.source sched.c 72
;  Source: sched.c Line: 72
PUSHVAR 0
PUSHVAR 8
PLUS
DUP
PUSHVAR 24
PUSH 0
PLUS
POPVARIND
POP
.source sched.c 74
;  Source: sched.c Line: 74
PUSHVAR 24
PUSH 4
PLUS
PUSHVARIND
POPREG 0
.source sched.c 75
;  Source: sched.c Line: 75
PUSHVAR 24
PUSH 0
PLUS
PUSHVARIND
POPREG 1
.source sched.c 77
;  Source: sched.c Line: 77
PUSH 8
DUP
PUSH 12
PUSHFP
PLUS
PUSH 0
PLUS
POPVARIND
POP
.source sched.c 78
;  Source: sched.c Line: 78
PUSHVAR -12
DUP
PUSH 12
PUSHFP
PLUS
PUSH 4
PLUS
POPVARIND
POP
.source sched.c 79
;  Source: sched.c Line: 79
PUSH 0
DUP
PUSH 12
PUSHFP
PLUS
PUSH 8
PLUS
POPVARIND
POP
.source sched.c 81
;  Source: sched.c Line: 81
PUSH 12
PUSHFP
PLUS
INP
.source sched.c 85
;  Source: sched.c Line: 85
$$LABEL_9:
PUSH 12
PUSHFP
PLUS
PUSH 0
PLUS
PUSHVARIND
PUSH 0
GE
JUMPE @$$LABEL_10
JUMP @$$LABEL_9
$$LABEL_10:
.source sched.c 95
;  Source: sched.c Line: 95
PUSH 12
PUSHFP
PLUS
PUSH 8
PLUS
PUSHVARIND
PUSH 0
LT
JUMPE @$$LABEL_11
.source sched.c 90
;  Source: sched.c Line: 90
PUSHVAR 0
POPREG 0
.source sched.c 91
;  Source: sched.c Line: 91
PUSHVAR 4
POPREG 1
.source sched.c 92
;  Source: sched.c Line: 92
PUSH 1
NEG
RETURNV
$$LABEL_11:
.source sched.c 95
;  Source: sched.c Line: 95
PUSH 12
PUSHFP
PLUS
PUSH 8
PLUS
PUSHVARIND
PUSHVAR 24
PUSH 4
PLUS
PUSHVARIND
MINUS
DUP
PUSHVAR 24
PUSH 12
PLUS
POPVARIND
POP
.source sched.c 96
;  Source: sched.c Line: 96
PUSH 12
PUSHFP
PLUS
PUSH 8
PLUS
PUSHVARIND
PUSHVAR 24
PUSH 4
PLUS
PUSHVARIND
MINUS
DUP
PUSHVAR 24
PUSH 8
PLUS
POPVARIND
POP
.source sched.c 97
;  Source: sched.c Line: 97
PUSH 12
PUSHFP
PLUS
PUSH 8
PLUS
PUSHVARIND
PUSH 12
PUSHFP
PLUS
PUSH 8
PLUS
PUSHVARIND
PUSHVARIND
PLUS
DUP
PUSHVAR 24
PUSH 0
PLUS
POPVARIND
POP
.source sched.c 98
;  Source: sched.c Line: 98
PUSH 8
DUP
PUSHVAR 24
PUSH 16
PLUS
POPVARIND
POP
.source sched.c 99
;  Source: sched.c Line: 99
PUSH 2
DUP
PUSHVAR 24
PUSH 20
PLUS
POPVARIND
POP
.source sched.c 107
;  Source: sched.c Line: 107
PUSHVAR 24
PUSH 0
PLUS
PUSHVARIND
PUSHVAR 24
PUSH 4
PLUS
PUSHVARIND
CALL @my_set_limit
POPARGS 8
POP
.source sched.c 109
;  Source: sched.c Line: 109
PUSH 1
DUP
PUSHVAR 24
PUSH 24
PLUS
POPVARIND
POP
.source sched.c 110
;  Source: sched.c Line: 110
PUSHVAR 0
POPREG 0
.source sched.c 111
;  Source: sched.c Line: 111
PUSHVAR 4
POPREG 1
.source sched.c 113
;  Source: sched.c Line: 113
PUSH 0
RETURNV
.source sched.c 225
;  Source: sched.c Line: 225
PUSH 0
RETURNV
.source sched.c 116
;  Source: sched.c Line: 116
.function next_process
;  next_process

next_process:
ADJSP 28
.source sched.c 118
;  Source: sched.c Line: 118
.source sched.c 119
;  Source: sched.c Line: 119
.source sched.c 120
;  Source: sched.c Line: 120
PUSH 0
POPVAR 8
.source sched.c 121
;  Source: sched.c Line: 121
.source sched.c 122
;  Source: sched.c Line: 122
.source sched.c 124
;  Source: sched.c Line: 124
PUSH 0
POPVAR 20
.source sched.c 125
;  Source: sched.c Line: 125
PUSH @$current_process_index
PUSHVARIND
PUSH 1
PLUS
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source sched.c 130
;  Source: sched.c Line: 130
PUSHVAR 0
PUSH 10
GE
JUMPE @$$LABEL_12
.source sched.c 128
;  Source: sched.c Line: 128
PUSH 1
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
$$LABEL_12:
.source sched.c 163
;  Source: sched.c Line: 163
.source sched.c 130
;  Source: sched.c Line: 130
PUSH 0
DUP
PUSH 12
PUSHFP
PLUS
POPVARIND
POP
$$LABEL_13:
PUSHVAR 8
PUSH 10
LT
DUP
JUMPE @$$LABEL_15
PUSHVAR 12
NOT
AND
$$LABEL_15:
JUMPE @$$LABEL_14
.source sched.c 131
;  Source: sched.c Line: 131
PUSHVAR 8
PUSHVAR 8
PUSH 1
PLUS
PUSH 8
PUSHFP
PLUS
POPVARIND
POP
.source sched.c 132
;  Source: sched.c Line: 132
PUSHVAR 0
PUSH 10
MOD
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source sched.c 141
;  Source: sched.c Line: 141
PUSHVAR 4
PUSH 0
EQ
JUMPE @$$LABEL_16
.source sched.c 133
;  Source: sched.c Line: 133
PUSH 1
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
$$LABEL_16:
.source sched.c 155
;  Source: sched.c Line: 155
PUSH @$scheduled_processes
PUSHVAR 4
PUSH 32
TIMES
PLUS
PUSH 24
PLUS
PUSHVARIND
PUSH 5
EQ
JUMPE @$$LABEL_17
.source sched.c 142
;  Source: sched.c Line: 142
PUSH 201326604
DUP
PUSH 16
PUSHFP
PLUS
POPVARIND
POP
.source sched.c 153
;  Source: sched.c Line: 153
PUSH @$scheduled_processes
PUSHVAR 4
PUSH 32
TIMES
PLUS
PUSH 28
PLUS
PUSHVARIND
PUSHVAR 16
PUSHVARIND
LE
JUMPE @$$LABEL_18
.source sched.c 145
;  Source: sched.c Line: 145
PUSH 1
DUP
PUSH @$scheduled_processes
PUSHVAR 4
PUSH 32
TIMES
PLUS
PUSH 24
PLUS
POPVARIND
POP
$$LABEL_18:
$$LABEL_17:
.source sched.c 163
;  Source: sched.c Line: 163
PUSH @$scheduled_processes
PUSHVAR 4
PUSH 32
TIMES
PLUS
PUSH 24
PLUS
PUSHVARIND
PUSH 1
EQ
JUMPE @$$LABEL_19
.source sched.c 157
;  Source: sched.c Line: 157
PUSHVAR 4
DUP
PUSH @$current_process_index
POPVARIND
POP
.source sched.c 158
;  Source: sched.c Line: 158
PUSH 4
DUP
PUSH @$scheduled_processes
PUSH @$current_process_index
PUSHVARIND
PUSH 32
TIMES
PLUS
PUSH 24
PLUS
POPVARIND
POP
.source sched.c 161
;  Source: sched.c Line: 161
PUSH @$scheduled_processes
PUSHVAR 4
PUSH 32
TIMES
PLUS
RETURNV
$$LABEL_19:
.source sched.c 130
;  Source: sched.c Line: 130
PUSHVAR 0
PUSHVAR 0
PUSH 1
PLUS
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
JUMP @$$LABEL_13
$$LABEL_14:
.source sched.c 164
;  Source: sched.c Line: 164
PUSH @$scheduled_processes
PUSH 0
PUSH 32
TIMES
PLUS
RETURNV
.source sched.c 225
;  Source: sched.c Line: 225
PUSH 0
RETURNV
.source sched.c 167
;  Source: sched.c Line: 167
.function set_state
;  set_state

set_state:
.source sched.c 178
;  Source: sched.c Line: 178
PUSHVAR -12
PUSH 12
PLUS
PUSHVARIND
DUP
PUSHVAR -16
PUSH 0
PLUS
POPVARIND
POP
.source sched.c 179
;  Source: sched.c Line: 179
PUSHVAR -12
PUSH 20
PLUS
PUSHVARIND
DUP
PUSHVAR -16
PUSH 4
PLUS
POPVARIND
POP
.source sched.c 180
;  Source: sched.c Line: 180
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
DUP
PUSHVAR -16
PUSH 8
PLUS
POPVARIND
POP
.source sched.c 181
;  Source: sched.c Line: 181
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
DUP
PUSHVAR -16
PUSH 12
PLUS
POPVARIND
POP
.source sched.c 182
;  Source: sched.c Line: 182
PUSHVAR -12
PUSH 16
PLUS
PUSHVARIND
DUP
PUSHVAR -16
PUSH 16
PLUS
POPVARIND
POP
.source sched.c 183
;  Source: sched.c Line: 183
PUSHVAR -12
PUSH 8
PLUS
PUSHVARIND
DUP
PUSHVAR -16
PUSH 20
PLUS
POPVARIND
POP
RETURN
.source sched.c 188
;  Source: sched.c Line: 188
.function save_state
;  save_state

save_state:
ADJSP 8
.source sched.c 190
;  Source: sched.c Line: 190
PUSH @$scheduled_processes
PUSH @$current_process_index
PUSHVARIND
PUSH 32
TIMES
PLUS
POPVAR 0
.source sched.c 193
;  Source: sched.c Line: 193
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
DUP
PUSHVAR 0
PUSH 12
PLUS
POPVARIND
POP
.source sched.c 194
;  Source: sched.c Line: 194
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
DUP
PUSHVAR 0
PUSH 20
PLUS
POPVARIND
POP
.source sched.c 195
;  Source: sched.c Line: 195
PUSHVAR -12
PUSH 8
PLUS
PUSHVARIND
DUP
PUSHVAR 0
PUSH 4
PLUS
POPVARIND
POP
.source sched.c 196
;  Source: sched.c Line: 196
PUSHVAR -12
PUSH 12
PLUS
PUSHVARIND
DUP
PUSHVAR 0
PUSH 0
PLUS
POPVARIND
POP
.source sched.c 197
;  Source: sched.c Line: 197
PUSHVAR -12
PUSH 16
PLUS
PUSHVARIND
DUP
PUSHVAR 0
PUSH 16
PLUS
POPVARIND
POP
.source sched.c 198
;  Source: sched.c Line: 198
PUSHVAR -12
PUSH 20
PLUS
PUSHVARIND
DUP
PUSHVAR 0
PUSH 8
PLUS
POPVARIND
POP
RETURN
.source sched.c 203
;  Source: sched.c Line: 203
.function sched_exit
;  sched_exit

sched_exit:
ADJSP 8
.source sched.c 205
;  Source: sched.c Line: 205
PUSH @$scheduled_processes
PUSH @$current_process_index
PUSHVARIND
PUSH 32
TIMES
PLUS
POPVAR 0
.source sched.c 214
;  Source: sched.c Line: 214
PUSHVAR 0
PUSH 20
PLUS
PUSHVARIND
PUSH 2
BAND
JUMPE @$$LABEL_20
.source sched.c 207
;  Source: sched.c Line: 207
PUSH 3
DUP
PUSHVAR 0
PUSH 24
PLUS
POPVARIND
POP
.source sched.c 208
;  Source: sched.c Line: 208
PUSHVAR 0
PUSH 4
PLUS
PUSHVARIND
CALL @my_free
ADJSP -4
.source sched.c 209
;  Source: sched.c Line: 209
.source sched.c 209
;  Source: sched.c Line: 209
CALL @next_process
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source sched.c 210
;  Source: sched.c Line: 210
PUSHVAR -12
PUSHVAR 0
CALL @set_state
ADJSP -8
JUMP @$$LABEL_21
$$LABEL_20:
.source sched.c 212
;  Source: sched.c Line: 212
PUSH @$$LABEL_22
.dataseg
$$LABEL_22:
.string "REEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE\n"
.codeseg
OUTS
.source sched.c 213
;  Source: sched.c Line: 213
HALT
$$LABEL_21:
.source sched.c 215
;  Source: sched.c Line: 215
PUSHVAR 0
RETURNV
.source sched.c 225
;  Source: sched.c Line: 225
PUSH 0
RETURNV
.source sched.c 218
;  Source: sched.c Line: 218
.function sleep_process
;  sleep_process

sleep_process:
ADJSP 8
.source sched.c 219
;  Source: sched.c Line: 219
.source sched.c 220
;  Source: sched.c Line: 220
PUSH 201326604
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source sched.c 222
;  Source: sched.c Line: 222
PUSH 5
DUP
PUSHVAR -12
PUSH 24
PLUS
POPVARIND
POP
.source sched.c 223
;  Source: sched.c Line: 223
PUSHVAR 0
PUSHVARIND
PUSHVAR -16
PLUS
DUP
PUSHVAR -12
PUSH 28
PLUS
POPVARIND
POP
RETURN
