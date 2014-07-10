#!/bin/bash

function build_rom {

ROM=$1
AVR=$2

echo Building ${ROM}

rm -f ${ROM}
touch ${ROM}

cat sddos-v3.25${AVR}.rom >> ${ROM}
cat gags_v2.3.rom >> ${ROM}
cat pcharme_v1.73.rom >> ${ROM}
cat axr1.rom >> ${ROM}
cat fpgautils_v0.17.rom >> ${ROM}
cat atomic_windows_v1.1.rom >> ${ROM}
cat we_rom.rom >> ${ROM}
cat pp_toolkit.rom >> ${ROM}

cat blank.rom >> ${ROM}
cat atom_bbc_ext2${AVR}.rom >> ${ROM}
cat bbc_a000.rom >> ${ROM}
cat blank.rom >> ${ROM}
cat bbc_c000.rom >> ${ROM}
cat bbc_d000.rom >> ${ROM}
cat bbc_e000.rom >> ${ROM}
cat bbc_f000.rom >> ${ROM}

cat abasic.rom >> ${ROM}
cat afloat_patched.rom >> ${ROM}
cat atommc2${AVR}.rom >> ${ROM}
cat akernel_patched.rom >> ${ROM}

cat abasic.rom >> ${ROM}
cat afloat_patched.rom >> ${ROM}
cat atommc2${AVR}.rom >> ${ROM}
cat akernel_patched.rom >> ${ROM}

cat blank.rom >> ${ROM}
cat blank.rom >> ${ROM}
cat blank.rom >> ${ROM}
cat blank.rom >> ${ROM}
cat blank.rom >> ${ROM}
cat blank.rom >> ${ROM}
cat blank.rom >> ${ROM}
cat blank.rom >> ${ROM}

}

build_rom "128K_pic.rom" ""
build_rom "128K_avr.rom" "_avr"

