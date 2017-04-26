#stackl V0.10.1-74-gbf122b8 stacklc
#once 
#once 
#library <string.sl>
.source /home2/philip.howard/stackl/library/string.h 4
;  Source: /home2/philip.howard/stackl/library/string.h Line: 4
.source /home2/philip.howard/stackl/library/string.h 5
;  Source: /home2/philip.howard/stackl/library/string.h Line: 5
.source /home2/philip.howard/stackl/library/string.h 6
;  Source: /home2/philip.howard/stackl/library/string.h Line: 6
.source /home2/philip.howard/stackl/library/string.h 7
;  Source: /home2/philip.howard/stackl/library/string.h Line: 7
.source /home2/philip.howard/stackl/library/string.h 8
;  Source: /home2/philip.howard/stackl/library/string.h Line: 8
.source /home2/philip.howard/stackl/library/string.h 9
;  Source: /home2/philip.howard/stackl/library/string.h Line: 9
.source /home2/philip.howard/stackl/library/string.h 10
;  Source: /home2/philip.howard/stackl/library/string.h Line: 10
.source /home2/philip.howard/stackl/library/string.h 11
;  Source: /home2/philip.howard/stackl/library/string.h Line: 11
.source /home2/philip.howard/stackl/library/string.h 12
;  Source: /home2/philip.howard/stackl/library/string.h Line: 12
.source /home2/philip.howard/stackl/library/string.h 13
;  Source: /home2/philip.howard/stackl/library/string.h Line: 13
.source /home2/philip.howard/stackl/library/string.h 14
;  Source: /home2/philip.howard/stackl/library/string.h Line: 14
#once 
#library <sysio.sl>
.source /home2/philip.howard/stackl/library/sysio.h 4
;  Source: /home2/philip.howard/stackl/library/sysio.h Line: 4
.source /home2/philip.howard/stackl/library/sysio.h 5
;  Source: /home2/philip.howard/stackl/library/sysio.h Line: 5
.source /home2/philip.howard/stackl/library/sysio.h 6
;  Source: /home2/philip.howard/stackl/library/sysio.h Line: 6
.source /home2/philip.howard/stackl/library/sysio.h 7
;  Source: /home2/philip.howard/stackl/library/sysio.h Line: 7
.source sysio.c 5
;  Source: sysio.c Line: 5
.function prints
;  prints

prints:
.source sysio.c 7
;  Source: sysio.c Line: 7
PUSHVAR -12
OUTS
.source sysio.c 8
;  Source: sysio.c Line: 8
PUSH 0
RETURNV
.source sysio.c 42
;  Source: sysio.c Line: 42
PUSH 0
RETURNV
.source sysio.c 11
;  Source: sysio.c Line: 11
.function printi
;  printi

printi:
ADJSP 24
.source sysio.c 13
;  Source: sysio.c Line: 13
.source sysio.c 14
;  Source: sysio.c Line: 14
PUSH 0
PUSHFP
PLUS
PUSHVAR -12
CALL @itostr
POPARGS 8
POP
.source sysio.c 15
;  Source: sysio.c Line: 15
PUSH 0
PUSHFP
PLUS
CALL @prints
POPARGS 4
POP
.source sysio.c 16
;  Source: sysio.c Line: 16
PUSH 0
RETURNV
.source sysio.c 42
;  Source: sysio.c Line: 42
PUSH 0
RETURNV
.source sysio.c 20
;  Source: sysio.c Line: 20
.function printx
;  printx

printx:
ADJSP 24
.source sysio.c 22
;  Source: sysio.c Line: 22
.source sysio.c 23
;  Source: sysio.c Line: 23
PUSH 0
PUSHFP
PLUS
PUSHVAR -12
CALL @xtostr
POPARGS 8
POP
.source sysio.c 24
;  Source: sysio.c Line: 24
PUSH 0
PUSHFP
PLUS
CALL @prints
POPARGS 4
POP
.source sysio.c 25
;  Source: sysio.c Line: 25
PUSH 0
RETURNV
.source sysio.c 42
;  Source: sysio.c Line: 42
PUSH 0
RETURNV
.source sysio.c 28
;  Source: sysio.c Line: 28
.function printxn
;  printxn

printxn:
ADJSP 24
.source sysio.c 30
;  Source: sysio.c Line: 30
.source sysio.c 31
;  Source: sysio.c Line: 31
PUSH 0
PUSHFP
PLUS
PUSHVAR -12
CALL @xtostr
POPARGS 8
POP
.source sysio.c 32
;  Source: sysio.c Line: 32
PUSHVAR -16
.source sysio.c 32
;  Source: sysio.c Line: 32
PUSH 0
PUSHFP
PLUS
CALL @strlen
POPARGS 4
MINUS
DUP
PUSH -16
PUSHFP
PLUS
POPVARIND
POP
.source sysio.c 37
;  Source: sysio.c Line: 37
$LABEL_2:
PUSHVAR -16
PUSH 0
GT
JUMPE @$LABEL_3
.source sysio.c 35
;  Source: sysio.c Line: 35
PUSH @$LABEL_4
.dataseg
$LABEL_4:
.string "0"
.codeseg
OUTS
.source sysio.c 36
;  Source: sysio.c Line: 36
PUSHVAR -16
PUSHVAR -16
PUSH 1
MINUS
PUSH -16
PUSHFP
PLUS
POPVARIND
POP
JUMP @$LABEL_2
$LABEL_3:
.source sysio.c 38
;  Source: sysio.c Line: 38
PUSH 0
PUSHFP
PLUS
CALL @prints
POPARGS 4
POP
.source sysio.c 39
;  Source: sysio.c Line: 39
PUSH 0
RETURNV
.source sysio.c 42
;  Source: sysio.c Line: 42
PUSH 0
RETURNV
