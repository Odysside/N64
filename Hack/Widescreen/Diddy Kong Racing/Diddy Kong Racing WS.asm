// N64 "Diddy Kong Racing" Widescreen Hack by krom (Peter Lemon):
// Special thanks to gamemasterplc

arch n64.cpu
endian msb // N64 MIPS requires Big-Endian Encoding (Most Significant Bit)
output "Diddy Kong Racing WS.z64", create
origin $00000000; insert "Diddy Kong Racing (U) (M2) (V1.1) [!].z64" // Include USA Diddy Kong Racing N64 ROM
origin $00000020
db "Diddy Kong Racing WS       " // $00000020 - PROGRAM TITLE (27 Byte ASCII String, Use Spaces For Unused Bytes)

include "LIB/N64.INC" // Include N64 Definitions

origin $00066E44
             // ROM       RAM         Widescreen (Streched)
lui a3,$3FE3 // $00066E44 $80066244 - (4 Bytes) (LUI A3,$3FAA: $3C073FAA)

origin $00066F94
             // ROM       RAM         Widescreen (Streched)
lui a3,$3FE3 // $00066F94 $80066394 - (4 Bytes) (LUI A3,$3FAA: $3C073FAA)

origin $00066FFC
             // ROM       RAM         Widescreen (Streched)
lui a3,$3FE3 // $00066FFC $800663FC - (4 Bytes) (LUI A3,$3FAA: $3C073FAA)

origin $000E8C98
             // ROM       RAM         Widescreen (Streched)
dw $3FE3AAAB // $000E8C98 $80126714 - (4 Bytes) ($3FAAAAAB)