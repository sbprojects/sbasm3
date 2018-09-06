# Testing the .TF directive (should produce no errors)

            .SM     CODE
            .TF     binary.code,bin
            .OR     $1000
            .IN     pattern.asm
            .SM     EEPROM
            .TF     binary.eeprom,bin
            .OR     0
            .IN     pattern.asm
            .TF

            .SM     CODE
            .TF     hex.code,hex
            .OR     $1000
            .IN     pattern.asm
            .SM     EEPROM
            .TF     hex.eeprom,hex
            .OR     0
            .IN     pattern.asm
            .TF

            .SM     CODE
            .TF     apple1.code,ap1,8
            .OR     $1000
            .IN     pattern.asm
            .SM     EEPROM
            .TF     apple1.eeprom,ap1
            .OR     0
            .IN     pattern.asm
            .TF

            .SM     CODE
            .TF     elektor.code,e52
            .OR     $1000
            .IN     pattern.asm
            .SM     EEPROM
            .TF     elektor.eeprom,e52
            .OR     0
            .IN     pattern.asm
            .TF

            .SM     CODE
            .TF     motorolas19.code,s19,32
            .OR     $1000
            .IN     pattern.asm
            .SM     EEPROM
            .TF     motorolas19.eeprom,s19
            .OR     0
            .IN     pattern.asm
            .TF

            .SM     CODE
            .TF     motorolas28.code,s28
            .OR     $FFF0
            .IN     pattern.asm
            .SM     EEPROM
            .TF     motorolas28.eeprom,s28
            .OR     0
            .IN     pattern.asm
            .TF

            .SM     CODE
            .TF     motorolas37.code,s37
            .OR     $FFFF80
            .IN     pattern.asm
            .SM     EEPROM
            .TF     motorolas37.eeprom,s37
            .OR     0
            .IN     pattern.asm
            .TF

            .SM     CODE
            .TF     intel.code,ins
            .OR     0
            .IN     pattern.asm
            .OR     $FF80
            .IN     pattern.asm
            .SM     EEPROM
            .TF     intel.eeprom,int
            .OR     0
            .IN     pattern.asm
            .TF

            .SM     CODE
            .TF     signetics.code,sig
            .OR     $1000
            .IN     pattern.asm
            .SM     EEPROM
            .TF     signetics.eeprom,sig
            .OR     0
            .IN     pattern.asm
            .TF

            .SM     CODE
            .TF     tektronix.code,tek
            .OR     $1000
            .IN     pattern.asm
            .SM     EEPROM
            .TF     tektronix.eeprom,tek
            .OR     0
            .IN     pattern.asm
            .TF

            .SM     CODE
            .TF     fpc.code,fpc
            .OR     $1000
            .IN     pattern.asm
            .SM     EEPROM
            .TF     fpc.eeprom,fpc
            .OR     0
            .IN     pattern.asm
            .TF

            .SM     CODE
            .TF     mos.code,mos
            .OR     $1000
            .IN     pattern.asm
            .SM     EEPROM
            .TF     mos.eeprom,mos
            .OR     0
            .IN     pattern.asm
            .TF
