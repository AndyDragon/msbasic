# 1.0
echo cbmbasic1
ca65 -D CBM -D CBM1 -D CBM_KBD msbasic.s -o cbmbasic1.o &&
ld65 -C cbmbasic.cfg cbmbasic1.o -o cbmbasic1-new.bin && 
xxd -g 1 cbmbasic1.bin > cbmbasic1.bin.txt
xxd -g 1 cbmbasic1-new.bin > cbmbasic1-new.bin.txt
diff -u cbmbasic1.bin.txt cbmbasic1-new.bin.txt | head

# 1.0 ?
echo kbdbasic
ca65 -D KBD -D OSI_KBD -D CBM_KBD -D CBM2_KBD -D KIM_KBD -D CONFIG_11 msbasic.s -o kbdbasic.o &&
ld65 -C kbdbasic.cfg kbdbasic.o -o kbdbasic-new.bin && 
xxd -g 1 kbdbasic.bin > kbdbasic.bin.txt
xxd -g 1 kbdbasic-new.bin > kbdbasic-new.bin.txt
diff -u kbdbasic.bin.txt kbdbasic-new.bin.txt | head

#da65 --info kbdbasic-temp.txt 
#opendiff ../cbmbasic2.s cbmbasic2-new.s

# 1.0 rev 3.2
echo osi
ca65 -D OSI -D OSI_KBD msbasic.s -o osi.o &&
ld65 -C osi.cfg osi.o -o osi-new.bin
xxd -g 1 osi.bin > osi.bin.txt
xxd -g 1 osi-new.bin > osi-new.bin.txt
diff -u osi.bin.txt osi-new.bin.txt | head

# 1.1
echo kb9
ca65 -D KIM -D KIM_KBD -D CONFIG_11 msbasic.s -o kb9.o &&
ld65 -C kb9.cfg kb9.o -o kb9-new.bin &&
xxd -g 1 kb9.bin > kb9.bin.txt
xxd -g 1 kb9-new.bin > kb9-new.bin.txt
diff -u kb9.bin.txt kb9-new.bin.txt | head

# 2
echo cbmbasic2
ca65 -D CBM -D CBM2 -D CONFIG_11 -D CBM_KBD -D CBM2_KBD msbasic.s -o cbmbasic2.o &&
ld65 -C cbmbasic.cfg cbmbasic2.o -o cbmbasic2-new.bin && 
xxd -g 1 cbmbasic2.bin > cbmbasic2.bin.txt
xxd -g 1 cbmbasic2-new.bin > cbmbasic2-new.bin.txt
diff -u cbmbasic2.bin.txt cbmbasic2-new.bin.txt | head

