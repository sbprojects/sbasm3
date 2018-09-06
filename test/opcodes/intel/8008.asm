                .LF     test.lst
;--------------------------------------------------------------------------
;   8008.ASM
;
;   Opcode test for the SB-Assembler 8008 cross
;
;--------------------------------------------------------------------------

                .CR     8008            And now it's an 8008 assembler
                .TF     test.hex,hex
                .LI     TON

;--------------------------------------------------------------------------
;   Load instructions (1972 syntax)
;--------------------------------------------------------------------------

                LAA
                LAB
                LAC
                LAD
                LAE
                LAH
                LAL
                LAM
                LAI     $12

                LBA
                LBB
                LBC
                LBD
                LBE
                LBH
                LBL
                LBM
                LBI     $12

                LCA
                LCB
                LCC
                LCD
                LCE
                LCH
                LCL
                LCM
                LCI     $12

                LDA
                LDB
                LDC
                LDD
                LDE
                LDH
                LDL
                LDM
                LDI     $12

                LEA
                LEB
                LEC
                LED
                LEE
                LEH
                LEL
                LEM
                LEI     $12

                LHA
                LHB
                LHC
                LHD
                LHE
                LHH
                LHL
                LHM
                LHI     $12

                LLA
                LLB
                LLC
                LLD
                LLE
                LLH
                LLL
                LLM
                LLI     $12

                LMA
                LMB
                LMC
                LMD
                LME
                LMH
                LML
                LMI     $12

;--------------------------------------------------------------------------
;   Load instructions (1976 syntax)
;--------------------------------------------------------------------------

                MOV     A,A
                MOV     A,B
                MOV     A,C
                MOV     A,D
                MOV     A,E
                MOV     A,H
                MOV     A,L
                MOV     A,M
                MVI     A,$12

                MOV     B,A
                MOV     B,B
                MOV     B,C
                MOV     B,D
                MOV     B,E
                MOV     B,H
                MOV     B,L
                MOV     B,M
                MVI     B,$12

                MOV     C,A
                MOV     C,B
                MOV     C,C
                MOV     C,D
                MOV     C,E
                MOV     C,H
                MOV     C,L
                MOV     C,M
                MVI     C,$12

                MOV     D,A
                MOV     D,B
                MOV     D,C
                MOV     D,D
                MOV     D,E
                MOV     D,H
                MOV     D,L
                MOV     D,M
                MVI     D,$12

                MOV     E,A
                MOV     E,B
                MOV     E,C
                MOV     E,D
                MOV     E,E
                MOV     E,H
                MOV     E,L
                MOV     E,M
                MVI     E,$12

                MOV     H,A
                MOV     H,B
                MOV     H,C
                MOV     H,D
                MOV     H,E
                MOV     H,H
                MOV     H,L
                MOV     H,M
                MVI     H,$12

                MOV     L,A
                MOV     L,B
                MOV     L,C
                MOV     L,D
                MOV     L,E
                MOV     L,H
                MOV     L,L
                MOV     L,M
                MVI     L,$12

                MOV     M,A
                MOV     M,B
                MOV     M,C
                MOV     M,D
                MOV     M,E
                MOV     M,H
                MOV     M,L
                MVI     M,$12

;--------------------------------------------------------------------------
;   Increment decrement instructions (1972 syntax)
;--------------------------------------------------------------------------

                INB
                INC
                IND
                INE
                INH
                INL

                DCB
                DCC
                DCD
                DCE
                DCH
                DCL

;--------------------------------------------------------------------------
;   Increment decrement instructions (1976 syntax)
;--------------------------------------------------------------------------

                INR     B
                INR     C
                INR     D
                INR     E
                INR     H
                INR     L

                DCR     B
                DCR     C
                DCR     D
                DCR     E
                DCR     H
                DCR     L

;--------------------------------------------------------------------------
;   Mathemetical instructions (1972 syntax)
;--------------------------------------------------------------------------

                ADA
                ADB
                ADC                     Without operand in 1972
                ADD                     Without operand in 1972
                ADE
                ADH
                ADL
                ADM
                ADI     $12

                ACA
                ACB
                ACC
                ACD
                ACE
                ACH
                ACL
                ACM
                ACI     $12

                SUA
                SUB                     Without operand in 1972
                SUC
                SUD
                SUE
                SUH
                SUL
                SUM
                SUI     $12

                SBA
                SBB                     Without operand in 1972
                SBC
                SBD
                SBE
                SBH
                SBL
                SBM
                SBI     $12

                NDA
                NDB
                NDC
                NDD
                NDE
                NDH
                NDL
                NDM
                NDI     $12

                XRA                     Without operand in 1972
                XRB
                XRC
                XRD
                XRE
                XRH
                XRL
                XRM
                XRI     $12

                ORA
                ORB
                ORC
                ORD
                ORE
                ORH
                ORL
                ORM
                ORI     $12

                CPA
                CPB
                CPC
                CPD
                CPE                     Without operand in 1972
                CPH
                CPL
                CPM
                CPI     $12

                RLC
                RRC
                RAL
                RAR

                HLT

;--------------------------------------------------------------------------
;   Mathemetical instructions (1976 syntax)
;--------------------------------------------------------------------------

                ADD     A
                ADD     B
                ADD     C
                ADD     D
                ADD     E
                ADD     H
                ADD     L
                ADD     M
                ADI     $12

                ADC     A
                ADC     B
                ADC     C
                ADC     D
                ADC     E
                ADC     H
                ADC     L
                ADC     M
                ACI     $12

                SUB     A
                SUB     B
                SUB     C
                SUB     D
                SUB     E
                SUB     H
                SUB     L
                SUB     M
                SUI     $12

                SBB     A
                SBB     B
                SBB     C
                SBB     D
                SBB     E
                SBB     H
                SBB     L
                SBB     M
                SBI     $12

                ANA     A
                ANA     B
                ANA     C
                ANA     D
                ANA     E
                ANA     H
                ANA     L
                ANA     M
                ANI     $12

                XRA     A
                XRA     B
                XRA     C
                XRA     D
                XRA     E
                XRA     H
                XRA     L
                XRA     M
                XRI     $12

                ORA     A
                ORA     B
                ORA     C
                ORA     D
                ORA     E
                ORA     H
                ORA     L
                ORA     M
                ORI     $12

                CMP     A
                CMP     B
                CMP     C
                CMP     D
                CMP     E
                CMP     H
                CMP     L
                CMP     M
                CPI     $12

;--------------------------------------------------------------------------
;   Jump instructions (1972 syntax)
;--------------------------------------------------------------------------

                JMP     $1234

                JFC     $1234
                JFZ     $1234
                JFS     $1234
                JFP     $1234

                JTC     $1234
                JTZ     $1234
                JTS     $1234
                JTP     $1234

                CAL     $1234

                CFC     $1234
                CFZ     $1234
                CFS     $1234
                CFP     $1234

                CTC     $1234
                CTZ     $1234
                CTS     $1234
                CTP     $1234

                RET

                RFC
                RFZ
                RFS
                RFP

                RTC
                RTZ
                RTS
                RTP

                RST     0
                RST     $00
                RST     1
                RST     $08
                RST     2
                RST     $10
                RST     3
                RST     $18
                RST     4
                RST     $20
                RST     5
                RST     $28
                RST     6
                RST     $30
                RST     7
                RST     $38

;--------------------------------------------------------------------------
;   Jump instructions (1976 syntax)
;--------------------------------------------------------------------------

                JMP     $1234

                JNC     $1234
                JNZ     $1234
                JP      $1234
                JPO     $1234

                JC      $1234
                JZ      $1234
                JM      $1234
                JPE     $1234

                CALL    $1234

                CNC     $1234
                CNZ     $1234
                CP      $1234
                CPO     $1234

                CC      $1234
                CZ      $1234
                CM      $1234
                CPE     $1234

                RET

                RNC
                RNZ
                RP
                RPO

                RC
                RZ
                RM
                RPE

;--------------------------------------------------------------------------
;   Input/Output instructions (1972 syntax)
;--------------------------------------------------------------------------

                INP     @0
                INP     @7

                OUT     @10
                OUT     @37

;--------------------------------------------------------------------------
;   Input/Output instructions (1976 syntax)
;--------------------------------------------------------------------------

                IN      @0
                IN      @7

                OUT     @10
                OUT     @37

;--------------------------------------------------------------------------
;   Data options
;--------------------------------------------------------------------------

                LAI     #$12345678
                LAI     /$12345678
                LAI     =$12345678
                LAI     \$12345678

                MVI     A,#$12345678
                MVI     A,/$12345678
                MVI     A,=$12345678
                MVI     A,\$12345678

                .DA     #$12345678
                .DA     /$12345678
                .DA     =$12345678
                .DA     \$12345678

