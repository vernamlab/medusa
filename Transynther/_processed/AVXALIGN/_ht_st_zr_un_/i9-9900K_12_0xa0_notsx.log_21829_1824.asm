.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1c3dc, %rsi
lea addresses_normal_ht+0xd13c, %rdi
dec %r10
mov $18, %rcx
rep movsw
nop
nop
nop
add $45555, %rbp
lea addresses_A_ht+0x13e3c, %rbx
nop
nop
nop
nop
nop
add $52767, %rax
movl $0x61626364, (%rbx)
nop
nop
and $17453, %r10
lea addresses_WC_ht+0x9f3c, %rbp
nop
nop
cmp $23223, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%rbp)
nop
cmp %rdi, %rdi
lea addresses_A_ht+0xce3c, %rdi
nop
nop
nop
nop
cmp $8504, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rdi)
sub $42568, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rsi

// Faulty Load
mov $0x72ff160000000a3c, %rsi
xor $8535, %r11
vmovaps (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r8
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rsi
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'e2': 1, 'bd': 2, '96': 1, '3d': 1, 'cc': 1, 'd1': 1, 'd9': 3, '41': 2, 'ab': 1, 'f6': 1, '4d': 2, 'ca': 1, 'df': 2, '03': 2, 'eb': 1, '67': 3, 'db': 1, 'fd': 3, '2b': 2, 'f2': 1, '91': 2, 'c4': 1, 'f3': 2, '30': 1, 'f8': 1, '63': 1, 'a4': 1, 'd5': 2, '1e': 1, '77': 1, 'd8': 1, '9c': 1, '1d': 1, '22': 1, 'b0': 1, 'c7': 1, '0a': 1, 'c3': 2, 'd0': 2, '38': 1, 'e5': 2, '87': 1, '6c': 1, 'da': 2, '0b': 2, 'e0': 1, '21': 1, 'af': 1, '6e': 1, 'd7': 1, '4b': 1, 'cf': 2, '02': 207, 'ef': 1, '6d': 2, '00': 2, '09': 2, 'ec': 1, 'dd': 1, '8f': 1, '98': 1, 'ff': 2, '42': 1, '7c': 109, 'f1': 1, '65': 1, 'e9': 2, 'b2': 1, 'c9': 1, '6b': 2, '37': 1, '4f': 3, '5d': 1, 'f7': 3, '3f': 1, 'f0': 1, '2f': 2, 'a5': 1, '7f': 1, '8c': 1, '46': 1, '2d': 1, '79': 1, 'b1': 1, '2c': 1, '59': 1, '61': 1, '01': 1, 'f9': 2, '92': 1, '32': 1, '47': 1, '71': 2, '88': 1, 'e1': 1, '7a': 1, '3e': 1, 'ba': 1, 'cd': 2, '97': 1, '3c': 1, '19': 1, '56': 1, '3a': 1, '28': 1, '60': 20911, '55': 2, 'a9': 1, '8b': 2, 'fe': 2, '7b': 77, '83': 2, '85': 3, 'fc': 1, '39': 1, '84': 1, '78': 1, '29': 1, '31': 1, 'e6': 2, '1b': 2, '5f': 2, 'ce': 1, '70': 1, 'e3': 1, 'f5': 3, '57': 1, '12': 1, '81': 3, 'b5': 2, 'b7': 1, '06': 341, 'd6': 1, 'bb': 1, '3b': 1, 'c5': 1, '0d': 1, 'cb': 2, '2e': 1}
60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 fd 60 60 60 60 60 60 60 60 02 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 42 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 02 60 02 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 7b 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 02 60 60 60 60 60 60 60 60 56 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 e0 60 06 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 7b 60 02 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 02 60 60 60 60 60 60 60 60 60 60 60 60 60 7c 60 06 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 02 60 60 60 60 60 60 60 af 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 7b 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 39 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 4d 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 92 60 60 60 60 60 60 60 02 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 d7 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 7b 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 7b 60 60 60 60 60 60 60 60 60 06 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 7c 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 02 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 ba 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 02 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 7b 60 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 ce 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 06 60 60 60 60 60 06 60
*/
