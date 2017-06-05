#stackl V0.10.2-56-g2fd0590-dev stacklc
#once 
#feature inp
#startup startup__
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
.source os.c 20
;  Source: os.c Line: 20
.function sys_printi
;  sys_printi

sys_printi:
ADJSP 36
.source os.c 22
;  Source: os.c Line: 22
.source os.c 23
;  Source: os.c Line: 23
PUSH 0
PUSHFP
PLUS
PUSHVAR -12
CALL @itostr
POPARGS 8
POP
.source os.c 24
;  Source: os.c Line: 24
.source os.c 25
;  Source: os.c Line: 25
PUSH 3
DUP
PUSH 20
PUSHFP
PLUS
PUSH 0
PLUS
POPVARIND
POP
.source os.c 26
;  Source: os.c Line: 26
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
.source os.c 27
;  Source: os.c Line: 27
PUSH 0
PUSHFP
PLUS
OUTS
.source os.c 28
;  Source: os.c Line: 28
PUSH @$$LABEL_2
.dataseg
$$LABEL_2:
.string "\n"
.codeseg
OUTS
.source os.c 29
;  Source: os.c Line: 29
PUSH 0
RETURNV
.source os.c 339
;  Source: os.c Line: 339
PUSH 0
RETURNV
.source os.c 32
;  Source: os.c Line: 32
.function print_bp
;  print_bp

print_bp:
ADJSP 8
.source os.c 33
;  Source: os.c Line: 33
.source os.c 34
;  Source: os.c Line: 34
.source os.c 34
;  Source: os.c Line: 34
PUSHREG 0
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source os.c 35
;  Source: os.c Line: 35
PUSH @$$LABEL_3
.dataseg
$$LABEL_3:
.string "BP:"
.codeseg
OUTS
.source os.c 36
;  Source: os.c Line: 36
PUSHVAR 0
CALL @sys_printi
POPARGS 4
POP
RETURN
.source os.c 39
;  Source: os.c Line: 39
.function sys_printx
;  sys_printx

sys_printx:
ADJSP 36
.source os.c 41
;  Source: os.c Line: 41
.source os.c 42
;  Source: os.c Line: 42
PUSH 0
PUSHFP
PLUS
PUSHVAR -12
CALL @xtostr
POPARGS 8
POP
.source os.c 43
;  Source: os.c Line: 43
.source os.c 44
;  Source: os.c Line: 44
PUSH 3
DUP
PUSH 20
PUSHFP
PLUS
PUSH 0
PLUS
POPVARIND
POP
.source os.c 45
;  Source: os.c Line: 45
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
.source os.c 46
;  Source: os.c Line: 46
PUSH 0
PUSHFP
PLUS
OUTS
.source os.c 47
;  Source: os.c Line: 47
PUSH @$$LABEL_4
.dataseg
$$LABEL_4:
.string "\n"
.codeseg
OUTS
.source os.c 48
;  Source: os.c Line: 48
PUSH 0
RETURNV
.source os.c 339
;  Source: os.c Line: 339
PUSH 0
RETURNV
.source os.c 51
;  Source: os.c Line: 51
.dataseg
Interrupt_Vector:
.block 16
.codeseg
.source os.c 53
;  Source: os.c Line: 53
.dataseg
$OS_STACK_SIZE:
.data 512
.codeseg
.source os.c 54
;  Source: os.c Line: 54
.dataseg
$OS_PAD:
.data 0
.codeseg
.source os.c 56
;  Source: os.c Line: 56
.dataseg
g_isr_call_frame:
.block 1
.codeseg
.source os.c 57
;  Source: os.c Line: 57
.dataseg
g_current_process:
.block 1
.codeseg
.source os.c 59
;  Source: os.c Line: 59
.function set_timer_rate
;  set_timer_rate

set_timer_rate:
.source os.c 61
;  Source: os.c Line: 61
PUSH 201326592
PUSHVARIND
PUSH 1
COMP
BAND
DUP
PUSH 201326592
POPVARIND
POP
.source os.c 62
;  Source: os.c Line: 62
PUSH 0
DUP
PUSH 201326596
POPVARIND
POP
.source os.c 63
;  Source: os.c Line: 63
PUSH 10000000
PUSHVAR -12
DIVIDE
DUP
PUSH 201326600
POPVARIND
POP
.source os.c 64
;  Source: os.c Line: 64
PUSH 201326592
PUSHVARIND
PUSH 1
BOR
DUP
PUSH 201326592
POPVARIND
POP
.source os.c 65
;  Source: os.c Line: 65
PUSH 0
DUP
PUSH 201326596
POPVARIND
POP
RETURN
.source os.c 69
;  Source: os.c Line: 69
.function timer_interrupt
;  timer_interrupt

timer_interrupt:
.source os.c 71
;  Source: os.c Line: 71
.source os.c 71
;  Source: os.c Line: 71
PUSHREG 3
DUP
PUSH @g_isr_call_frame
POPVARIND
POP
.source os.c 72
;  Source: os.c Line: 72
PUSH @g_isr_call_frame
PUSHVARIND
PUSH @g_isr_call_frame
PUSHVARIND
PUSH 1
PUSH 24
TIMES
MINUS
PUSH @g_isr_call_frame
POPVARIND
POP
.source os.c 74
;  Source: os.c Line: 74
PUSH @g_isr_call_frame
PUSHVARIND
CALL @save_state
ADJSP -4
.source os.c 75
;  Source: os.c Line: 75
PUSH 1
DUP
PUSH @g_current_process
PUSHVARIND
PUSH 24
PLUS
POPVARIND
POP
.source os.c 78
;  Source: os.c Line: 78
.source os.c 78
;  Source: os.c Line: 78
CALL @next_process
DUP
PUSH @g_current_process
POPVARIND
POP
.source os.c 80
;  Source: os.c Line: 80
PUSH @g_isr_call_frame
PUSHVARIND
PUSH @g_current_process
PUSHVARIND
CALL @set_state
ADJSP -8
.source os.c 82
;  Source: os.c Line: 82
RTI
RETURN
.source os.c 85
;  Source: os.c Line: 85
.function real_address
;  real_address

real_address:
ADJSP 12
.source os.c 87
;  Source: os.c Line: 87
.source os.c 88
;  Source: os.c Line: 88
.source os.c 90
;  Source: os.c Line: 90
.source os.c 90
;  Source: os.c Line: 90
PUSHREG 0
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source os.c 91
;  Source: os.c Line: 91
.source os.c 91
;  Source: os.c Line: 91
PUSHREG 1
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source os.c 93
;  Source: os.c Line: 93
PUSHVAR -12
PUSHVAR 0
PLUS
DUP
PUSH -12
PUSHFP
PLUS
POPVARIND
POP
.source os.c 94
;  Source: os.c Line: 94
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
PUSHVAR 0
PLUS
DUP
PUSHVAR -12
PUSH 4
PLUS
POPVARIND
POP
.source os.c 95
;  Source: os.c Line: 95
PUSHVAR 0
DUP
PUSHVAR -12
PUSH 8
PLUS
POPVARIND
POP
.source os.c 96
;  Source: os.c Line: 96
PUSHVAR -12
RETURNV
.source os.c 339
;  Source: os.c Line: 339
PUSH 0
RETURNV
.source os.c 104
;  Source: os.c Line: 104
.function validate
;  validate

validate:
ADJSP 12
.source os.c 106
;  Source: os.c Line: 106
.source os.c 107
;  Source: os.c Line: 107
.source os.c 109
;  Source: os.c Line: 109
.source os.c 109
;  Source: os.c Line: 109
PUSHREG 0
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source os.c 110
;  Source: os.c Line: 110
.source os.c 110
;  Source: os.c Line: 110
PUSHREG 1
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source os.c 127
;  Source: os.c Line: 127
PUSHVAR -12
PUSH 0
GE
DUP
JUMPE @$$LABEL_6
PUSHVAR -12
PUSHVAR 4
PUSHVAR 0
MINUS
LT
AND
$$LABEL_6:
JUMPE @$$LABEL_5
.source os.c 114
;  Source: os.c Line: 114
PUSHVAR -12
PUSHVAR 0
PLUS
DUP
PUSH -12
PUSHFP
PLUS
POPVARIND
POP
.source os.c 121
;  Source: os.c Line: 121
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
PUSH 0
GE
DUP
JUMPE @$$LABEL_8
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
PUSHVAR 4
PUSHVAR 0
MINUS
LT
AND
$$LABEL_8:
JUMPE @$$LABEL_7
.source os.c 118
;  Source: os.c Line: 118
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
PUSHVAR 0
PLUS
DUP
PUSHVAR -12
PUSH 4
PLUS
POPVARIND
POP
.source os.c 119
;  Source: os.c Line: 119
PUSHVAR -12
RETURNV
$$LABEL_7:
.source os.c 121
;  Source: os.c Line: 121
PUSH 1
DUP
PUSHVAR -12
PUSH 8
PLUS
POPVARIND
POP
JUMP @$$LABEL_9
$$LABEL_5:
.source os.c 125
;  Source: os.c Line: 125
.source os.c 125
;  Source: os.c Line: 125
PUSHVAR -12
CALL @real_address
POPARGS 4
DUP
PUSH -12
PUSHFP
PLUS
POPVARIND
POP
.source os.c 126
;  Source: os.c Line: 126
PUSH 1
DUP
PUSHVAR -12
PUSH 8
PLUS
POPVARIND
POP
$$LABEL_9:
.source os.c 128
;  Source: os.c Line: 128
PUSHVAR -12
RETURNV
.source os.c 339
;  Source: os.c Line: 339
PUSH 0
RETURNV
.source os.c 136
;  Source: os.c Line: 136
.function safe_gets
;  safe_gets

safe_gets:
ADJSP 288
.source os.c 138
;  Source: os.c Line: 138
.source os.c 139
;  Source: os.c Line: 139
.source os.c 140
;  Source: os.c Line: 140
.source os.c 141
;  Source: os.c Line: 141
.source os.c 142
;  Source: os.c Line: 142
.source os.c 142
;  Source: os.c Line: 142
PUSHREG 0
DUP
PUSH 256
PUSHFP
PLUS
POPVARIND
POP
.source os.c 143
;  Source: os.c Line: 143
.source os.c 143
;  Source: os.c Line: 143
PUSHREG 1
DUP
PUSH 260
PUSHFP
PLUS
POPVARIND
POP
.source os.c 146
;  Source: os.c Line: 146
.source os.c 147
;  Source: os.c Line: 147
PUSH 6
DUP
PUSH 268
PUSHFP
PLUS
PUSH 0
PLUS
POPVARIND
POP
.source os.c 148
;  Source: os.c Line: 148
PUSH 0
PUSHFP
PLUS
DUP
PUSH 268
PUSHFP
PLUS
PUSH 4
PLUS
POPVARIND
POP
.source os.c 149
;  Source: os.c Line: 149
PUSH 0
DUP
PUSH 268
PUSHFP
PLUS
PUSH 8
PLUS
POPVARIND
POP
.source os.c 150
;  Source: os.c Line: 150
PUSH 268
PUSHFP
PLUS
INP
.source os.c 151
;  Source: os.c Line: 151
$$LABEL_10:
PUSH 268
PUSHFP
PLUS
PUSH 0
PLUS
PUSHVARIND
PUSH 0
GE
JUMPE @$$LABEL_11
JUMP @$$LABEL_10
$$LABEL_11:
.source os.c 152
;  Source: os.c Line: 152
.source os.c 167
;  Source: os.c Line: 167
.source os.c 153
;  Source: os.c Line: 153
PUSH 0
DUP
PUSH 280
PUSHFP
PLUS
POPVARIND
POP
$$LABEL_12:
.source os.c 153
;  Source: os.c Line: 153
PUSH 0
PUSHFP
PLUS
PUSHVAR 280
PLUS
PUSHCVARIND
JUMPE @$$LABEL_13
.source os.c 155
;  Source: os.c Line: 155
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
PUSHVAR 280
PLUS
DUP
PUSH 264
PUSHFP
PLUS
POPVARIND
POP
.source os.c 165
;  Source: os.c Line: 165
PUSHVAR 264
PUSHVAR 260
PUSH 1
MINUS
GE
DUP
JUMPE @$$LABEL_18
JUMP @$$LABEL_17
$$LABEL_18:
PUSHVAR 264
PUSHVAR 256
LT
OR
$$LABEL_17:
DUP
JUMPE @$$LABEL_16
JUMP @$$LABEL_15
$$LABEL_16:
PUSHVAR 264
PUSH 1
PLUS
PUSHVAR -12
EQ
OR
$$LABEL_15:
JUMPE @$$LABEL_14
.source os.c 159
;  Source: os.c Line: 159
PUSH 0
DUP
PUSHVAR 264
POPCVARIND
POP
.source os.c 160
;  Source: os.c Line: 160
PUSH 3
DUP
PUSHVAR -12
PUSH 8
PLUS
POPVARIND
POP
.source os.c 161
;  Source: os.c Line: 161
RETURN
JUMP @$$LABEL_19
$$LABEL_14:
.source os.c 164
;  Source: os.c Line: 164
.source os.c 164
;  Source: os.c Line: 164
PUSH 0
PUSHFP
PLUS
PUSHVAR 280
PLUS
PUSHCVARIND
DUP
PUSHVAR 264
POPCVARIND
POP
$$LABEL_19:
.source os.c 153
;  Source: os.c Line: 153
PUSHVAR 280
PUSHVAR 280
PUSH 1
PLUS
PUSH 280
PUSHFP
PLUS
POPVARIND
POP
JUMP @$$LABEL_12
$$LABEL_13:
.source os.c 168
;  Source: os.c Line: 168
PUSH 0
DUP
PUSHVAR -12
PUSH 8
PLUS
POPVARIND
POP
RETURN
.source os.c 175
;  Source: os.c Line: 175
.function safe_prints
;  safe_prints

safe_prints:
ADJSP 24
.source os.c 177
;  Source: os.c Line: 177
.source os.c 178
;  Source: os.c Line: 178
.source os.c 179
;  Source: os.c Line: 179
PUSH 0
POPVAR 8
.source os.c 180
;  Source: os.c Line: 180
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
POPVAR 12
.source os.c 183
;  Source: os.c Line: 183
.source os.c 183
;  Source: os.c Line: 183
PUSHREG 0
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source os.c 184
;  Source: os.c Line: 184
.source os.c 184
;  Source: os.c Line: 184
PUSHREG 1
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source os.c 186
;  Source: os.c Line: 186
$$LABEL_20:
.source os.c 186
;  Source: os.c Line: 186
PUSHVAR 12
PUSHVAR 12
PUSH 1
PUSH 1
TIMES
PLUS
PUSH 12
PUSHFP
PLUS
POPVARIND
PUSHCVARIND
DUP
JUMPE @$$LABEL_22
PUSHVAR 12
PUSHVAR 4
LT
AND
$$LABEL_22:
JUMPE @$$LABEL_21
.source os.c 186
;  Source: os.c Line: 186
PUSHVAR 8
PUSHVAR 8
PUSH 1
PLUS
PUSH 8
PUSHFP
PLUS
POPVARIND
POP
JUMP @$$LABEL_20
$$LABEL_21:
.source os.c 198
;  Source: os.c Line: 198
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
PUSHVAR 8
PLUS
PUSHVAR 4
PUSH 1
MINUS
GE
JUMPE @$$LABEL_23
.source os.c 190
;  Source: os.c Line: 190
PUSH 0
DUP
PUSHVAR 4
PUSH 1
MINUS
POPCVARIND
POP
.source os.c 191
;  Source: os.c Line: 191
PUSH 3
DUP
PUSHVAR -12
PUSH 8
PLUS
POPVARIND
POP
JUMP @$$LABEL_24
$$LABEL_23:
.source os.c 195
;  Source: os.c Line: 195
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
PUSHVAR 8
PLUS
POPVAR 16
.source os.c 196
;  Source: os.c Line: 196
PUSH 0
DUP
PUSHVAR 16
POPCVARIND
POP
.source os.c 197
;  Source: os.c Line: 197
PUSH 0
DUP
PUSHVAR -12
PUSH 8
PLUS
POPVARIND
POP
$$LABEL_24:
.source os.c 202
;  Source: os.c Line: 202
PUSHVAR -12
INP
RETURN
.source os.c 211
;  Source: os.c Line: 211
.function virtual_address
;  virtual_address

virtual_address:
ADJSP 12
.source os.c 213
;  Source: os.c Line: 213
.source os.c 214
;  Source: os.c Line: 214
.source os.c 216
;  Source: os.c Line: 216
.source os.c 216
;  Source: os.c Line: 216
PUSHREG 0
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source os.c 217
;  Source: os.c Line: 217
.source os.c 217
;  Source: os.c Line: 217
PUSHREG 1
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source os.c 218
;  Source: os.c Line: 218
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
PUSHVAR 0
MINUS
DUP
PUSHVAR -12
PUSH 4
PLUS
POPVARIND
POP
.source os.c 219
;  Source: os.c Line: 219
PUSHVAR -12
PUSHVAR 0
MINUS
DUP
PUSH -12
PUSHFP
PLUS
POPVARIND
POP
.source os.c 221
;  Source: os.c Line: 221
PUSHVAR -12
RETURNV
.source os.c 339
;  Source: os.c Line: 339
PUSH 0
RETURNV
.source os.c 228
;  Source: os.c Line: 228
.function systrap
;  systrap

systrap:
.source os.c 230
;  Source: os.c Line: 230
.source os.c 230
;  Source: os.c Line: 230
PUSHVAR -12
CALL @validate
POPARGS 4
DUP
PUSH -12
PUSHFP
PLUS
POPVARIND
POP
.source os.c 244
;  Source: os.c Line: 244
PUSHVAR -12
PUSH 8
PLUS
PUSHVARIND
PUSH 1
EQ
JUMPE @$$LABEL_25
.source os.c 239
;  Source: os.c Line: 239
RTI
.source os.c 240
;  Source: os.c Line: 240
RETURN
$$LABEL_25:
.source os.c 297
;  Source: os.c Line: 297
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 3
EQ
JUMPE @$$LABEL_26
.source os.c 246
;  Source: os.c Line: 246
PUSHVAR -12
CALL @safe_prints
ADJSP -4
JUMP @$$LABEL_27
$$LABEL_26:
.source os.c 297
;  Source: os.c Line: 297
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 6
EQ
JUMPE @$$LABEL_28
.source os.c 250
;  Source: os.c Line: 250
PUSHVAR -12
CALL @safe_gets
ADJSP -4
JUMP @$$LABEL_29
$$LABEL_28:
.source os.c 297
;  Source: os.c Line: 297
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 7
EQ
JUMPE @$$LABEL_30
.source os.c 254
;  Source: os.c Line: 254
PUSHVAR -12
INP
.source os.c 255
;  Source: os.c Line: 255
$$LABEL_31:
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 0
GE
JUMPE @$$LABEL_32
JUMP @$$LABEL_31
$$LABEL_32:
.source os.c 256
;  Source: os.c Line: 256
PUSH 0
DUP
PUSHVAR -12
PUSH 8
PLUS
POPVARIND
POP
JUMP @$$LABEL_33
$$LABEL_30:
.source os.c 297
;  Source: os.c Line: 297
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 1
EQ
JUMPE @$$LABEL_34
.source os.c 261
;  Source: os.c Line: 261
.source os.c 261
;  Source: os.c Line: 261
PUSHREG 3
DUP
PUSH @g_isr_call_frame
POPVARIND
POP
.source os.c 262
;  Source: os.c Line: 262
PUSH @g_isr_call_frame
PUSHVARIND
PUSH @g_isr_call_frame
PUSHVARIND
PUSH 1
PUSH 24
TIMES
MINUS
PUSH @g_isr_call_frame
POPVARIND
POP
.source os.c 263
;  Source: os.c Line: 263
.source os.c 263
;  Source: os.c Line: 263
PUSH @g_isr_call_frame
PUSHVARIND
CALL @sched_exit
POPARGS 4
DUP
PUSH @g_current_process
POPVARIND
POP
JUMP @$$LABEL_35
$$LABEL_34:
.source os.c 297
;  Source: os.c Line: 297
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 8
EQ
JUMPE @$$LABEL_36
.source os.c 268
;  Source: os.c Line: 268
.source os.c 268
;  Source: os.c Line: 268
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
CALL @sched_exec
POPARGS 4
DUP
PUSHVAR -12
PUSH 8
PLUS
POPVARIND
POP
JUMP @$$LABEL_37
$$LABEL_36:
.source os.c 297
;  Source: os.c Line: 297
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 31
EQ
JUMPE @$$LABEL_38
.source os.c 274
;  Source: os.c Line: 274
.source os.c 274
;  Source: os.c Line: 274
PUSHREG 3
DUP
PUSH @g_isr_call_frame
POPVARIND
POP
.source os.c 275
;  Source: os.c Line: 275
PUSH @g_isr_call_frame
PUSHVARIND
PUSH @g_isr_call_frame
PUSHVARIND
PUSH 1
PUSH 24
TIMES
MINUS
PUSH @g_isr_call_frame
POPVARIND
POP
.source os.c 276
;  Source: os.c Line: 276
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
PUSHVARIND
PUSH @g_current_process
PUSHVARIND
CALL @sleep_process
ADJSP -8
.source os.c 277
;  Source: os.c Line: 277
PUSH @g_isr_call_frame
PUSHVARIND
CALL @save_state
ADJSP -4
.source os.c 278
;  Source: os.c Line: 278
.source os.c 278
;  Source: os.c Line: 278
CALL @next_process
DUP
PUSH @g_current_process
POPVARIND
POP
.source os.c 279
;  Source: os.c Line: 279
PUSH @g_isr_call_frame
PUSHVARIND
PUSH @g_current_process
PUSHVARIND
CALL @set_state
ADJSP -8
JUMP @$$LABEL_39
$$LABEL_38:
.source os.c 297
;  Source: os.c Line: 297
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 32
EQ
JUMPE @$$LABEL_40
.source os.c 282
;  Source: os.c Line: 282
.source os.c 282
;  Source: os.c Line: 282
PUSHREG 3
DUP
PUSH @g_isr_call_frame
POPVARIND
POP
.source os.c 283
;  Source: os.c Line: 283
PUSH @g_isr_call_frame
PUSHVARIND
PUSH @g_isr_call_frame
PUSHVARIND
PUSH 1
PUSH 24
TIMES
MINUS
PUSH @g_isr_call_frame
POPVARIND
POP
.source os.c 285
;  Source: os.c Line: 285
PUSH 1
DUP
PUSH @g_current_process
PUSHVARIND
PUSH 24
PLUS
POPVARIND
POP
.source os.c 286
;  Source: os.c Line: 286
PUSH @g_isr_call_frame
PUSHVARIND
CALL @save_state
ADJSP -4
.source os.c 287
;  Source: os.c Line: 287
.source os.c 287
;  Source: os.c Line: 287
CALL @next_process
DUP
PUSH @g_current_process
POPVARIND
POP
.source os.c 288
;  Source: os.c Line: 288
PUSH @g_isr_call_frame
PUSHVARIND
PUSH @g_current_process
PUSHVARIND
CALL @set_state
ADJSP -8
JUMP @$$LABEL_41
$$LABEL_40:
.source os.c 297
;  Source: os.c Line: 297
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 33
EQ
JUMPE @$$LABEL_42
.source os.c 291
;  Source: os.c Line: 291
PUSH 201326604
PUSHVARIND
DUP
PUSHVAR -12
PUSH 8
PLUS
POPVARIND
POP
JUMP @$$LABEL_43
$$LABEL_42:
.source os.c 296
;  Source: os.c Line: 296
PUSH 2
DUP
PUSHVAR -12
PUSH 8
PLUS
POPVARIND
POP
$$LABEL_43:
$$LABEL_41:
$$LABEL_39:
$$LABEL_37:
$$LABEL_35:
$$LABEL_33:
$$LABEL_29:
$$LABEL_27:
.source os.c 299
;  Source: os.c Line: 299
.source os.c 299
;  Source: os.c Line: 299
PUSHVAR -12
CALL @virtual_address
POPARGS 4
DUP
PUSH -12
PUSHFP
PLUS
POPVARIND
POP
.source os.c 301
;  Source: os.c Line: 301
RTI
RETURN
.source os.c 306
;  Source: os.c Line: 306
.function startup__
;  startup__

startup__:
ADJSP 16
.source os.c 308
;  Source: os.c Line: 308
PUSH 4
PUSH 16
TIMES
PUSH 1
PUSH @Interrupt_Vector
CALL @memset
POPARGS 12
POP
.source os.c 309
;  Source: os.c Line: 309
PUSH @systrap
DUP
PUSH @Interrupt_Vector
PUSH 1
PUSH 4
TIMES
PLUS
POPVARIND
POP
.source os.c 310
;  Source: os.c Line: 310
PUSH @timer_interrupt
DUP
PUSH @Interrupt_Vector
PUSH 3
PUSH 4
TIMES
PLUS
POPVARIND
POP
.source os.c 311
;  Source: os.c Line: 311
PUSH @Interrupt_Vector
POPREG 6
.source os.c 313
;  Source: os.c Line: 313
PUSH 1
CALL @set_timer_rate
ADJSP -4
.source os.c 315
;  Source: os.c Line: 315
.source os.c 316
;  Source: os.c Line: 316
.source os.c 317
;  Source: os.c Line: 317
.source os.c 318
;  Source: os.c Line: 318
.source os.c 318
;  Source: os.c Line: 318
PUSHREG 3
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source os.c 319
;  Source: os.c Line: 319
PUSHVAR 0
PUSH 512
PLUS
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source os.c 320
;  Source: os.c Line: 320
PUSHVAR 0
POPREG 0
.source os.c 321
;  Source: os.c Line: 321
.source os.c 321
;  Source: os.c Line: 321
PUSHREG 1
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source os.c 323
;  Source: os.c Line: 323
PUSHVAR 4
PUSHVAR 0
MINUS
PUSH 0
MINUS
DUP
PUSH 8
PUSHFP
PLUS
POPVARIND
POP
.source os.c 327
;  Source: os.c Line: 327
PUSHVAR 8
PUSHVAR 0
CALL @my_mem_init
ADJSP -8
.source os.c 328
;  Source: os.c Line: 328
PUSH @$$LABEL_44
.dataseg
$$LABEL_44:
.string "MAX MEM: "
.codeseg
OUTS
.source os.c 329
;  Source: os.c Line: 329
PUSHVAR 8
CALL @sys_printi
POPARGS 4
POP
.source os.c 331
;  Source: os.c Line: 331
.source os.c 331
;  Source: os.c Line: 331
CALL @sched_init
DUP
PUSH @g_current_process
POPVARIND
POP
.source os.c 332
;  Source: os.c Line: 332
PUSH @$$LABEL_45
.dataseg
$$LABEL_45:
.string "user.slb"
.codeseg
CALL @sched_exec
POPARGS 4
POP
.source os.c 337
;  Source: os.c Line: 337
$$LABEL_46:
PUSH 1
JUMPE @$$LABEL_47
JUMP @$$LABEL_46
$$LABEL_47:
.source os.c 339
;  Source: os.c Line: 339
PUSH 0
RETURNV
