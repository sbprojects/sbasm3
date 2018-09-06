                .LF     test.lst
;--------------------------------------------------------------------------
;   test-dp2200.asm
;
;   Opcode test for the SB-Assembler DP2200 cross
;
;--------------------------------------------------------------------------

                .CR     DP2200          And now it's a DP2200 assembler
                .TF     test.hex,int
                .LI     TON

;--------------------------------------------------------------------------
;   Load instructions
;--------------------------------------------------------------------------

                NOP                     LAA behaves like a NOP
                LAB
                LAC
                LAD
                LAE
                LAH
                LAL
                LAM
                LA      $12

                LBA
                LBC
                LBD
                LBE
                LBH
                LBL
                LBM
                LB      $12

                LCA
                LCB
                LCD
                LCE
                LCH
                LCL
                LCM
                LC      $12

                LDA
                LDB
                LDC
                LDE
                LDH
                LDL
                LDM
                LD      $12

                LEA
                LEB
                LEC
                LED
                LEH
                LEL
                LEM
                LE      $12

                LHA
                LHB
                LHC
                LHD
                LHE
                LHL
                LHM
                LH      $12

                LLA
                LLB
                LLC
                LLD
                LLE
                LLH
                LL      $12

                LMA
                LMB
                LMC
                LMD
                LME
                LMH
                LML

;--------------------------------------------------------------------------
;   Mathemetical instructions
;--------------------------------------------------------------------------

                ADA
                ADB
                ADC
                ADD
                ADE
                ADH
                ADL
                ADM
                AD      $12

                ACA
                ACB
                ACC
                ACD
                ACE
                ACH
                ACL
                ACM
                AC      $12

                SUA
                SUB
                SUC
                SUD
                SUE
                SUH
                SUL
                SUM
                SU      $12

                SBA
                SBB
                SBC
                SBD
                SBE
                SBH
                SBL
                SBM
                SB      $12

                NDA
                NDB
                NDC
                NDD
                NDE
                NDH
                NDL
                NDM
                ND      $12

                XRA
                XRB
                XRC
                XRD
                XRE
                XRH
                XRL
                XRM
                XR      $12

                ORA
                ORB
                ORC
                ORD
                ORE
                ORH
                ORL
                ORM
                OR      $12

                CPA
                CPB
                CPC
                CPD
                CPE
                CPH
                CPL
                CPM
                CP      $12

                SLC
                SRC

                HALT

;--------------------------------------------------------------------------
;   Jump instructions
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

                CALL    $1234

                CFC     $1234
                CFZ     $1234
                CFS     $1234
                CFP     $1234

                CTC     $1234
                CTZ     $1234
                CTS     $1234
                CTP     $1234

                RETURN

                RFC
                RFZ
                RFS
                RFP

                RTC
                RTZ
                RTS
                RTP

;--------------------------------------------------------------------------
;   Input/Output instructions
;--------------------------------------------------------------------------

                INPUT

                EX      ADR
                EX      STATUS
                EX      DATA
                EX      WRITE
                EX      COM1
                EX      COM2
                EX      COM3
                EX      COM4
                EX      BEEP
                EX      CLICK
                EX      DECK1
                EX      DECK2
                EX      RBK
                EX      WBK
                EX      BSP
                EX      SF
                EX      SB
                EX      REWIND
                EX      TSTOP

;--------------------------------------------------------------------------
;   Model II instructions
;--------------------------------------------------------------------------

                ALPHA
                BETA

                PUSH
                POP

                DI
                EI

;--------------------------------------------------------------------------
;   Data options
;--------------------------------------------------------------------------

                LA      #$12345678
                LA      /$12345678
                LA      =$12345678
                LA      \$12345678

                .DA     #$12345678
                .DA     /$12345678
                .DA     =$12345678
                .DA     \$12345678
