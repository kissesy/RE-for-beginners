include(`commons.m4')004006c0 <main>:
; _EN(`function prologue')_RU(`пролог функции'):
  4006c0:       3c1c0042        lui     gp,0x42
  4006c4:       27bdffe0        addiu   sp,sp,-32
  4006c8:       279c8940        addiu   gp,gp,-30400
  4006cc:       afbf001c        sw      ra,28(sp)
  4006d0:       afbc0010        sw      gp,16(sp)
; _EN(`call')_RU(`вызов') puts():
  4006d4:       8f998034        lw      t9,-32716(gp)
  4006d8:       3c040040        lui     a0,0x40
  4006dc:       0320f809        jalr    t9
  4006e0:       248408f0        addiu   a0,a0,2288 ; branch delay slot
; _EN(`call')_RU(`вызов') scanf():
  4006e4:       8fbc0010        lw      gp,16(sp)
  4006e8:       3c040040        lui     a0,0x40
  4006ec:       8f998038        lw      t9,-32712(gp)
; _EN(`prepare address of')_RU(`подготовить адрес') x:
  4006f0:       8f858044        lw      a1,-32700(gp)
  4006f4:       0320f809        jalr    t9
  4006f8:       248408fc        addiu   a0,a0,2300 ; branch delay slot
; _EN(`call')_RU(`вызов') printf():
  4006fc:       8fbc0010        lw      gp,16(sp)
  400700:       3c040040        lui     a0,0x40
; _EN(`get address of')_RU(`взять адрес') x:
  400704:       8f828044        lw      v0,-32700(gp)
  400708:       8f99803c        lw      t9,-32708(gp)
; _EN(`load value from "x" variable and pass it to')_RU(`загрузить значение из переменной "x" и передать его в') printf() _in $a1:
  40070c:       8c450000        lw      a1,0(v0)
  400710:       0320f809        jalr    t9
  400714:       24840900        addiu   a0,a0,2304 ; branch delay slot
; _EN(`function epilogue')_RU(`эпилог функции'):
  400718:       8fbf001c        lw      ra,28(sp)
  40071c:       00001021        move    v0,zero
  400720:       03e00008        jr      ra
  400724:       27bd0020        addiu   sp,sp,32   ; branch delay slot
; _EN(`pack of NOPs used for aligning next function start on 16-byte boundary')_RU(`набор NOP-ов для выравнивания начала следующей ф-ции по 16-байтной границе'):
  400728:       00200825        move    at,at
  40072c:       00200825        move    at,at