.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x885e, %r9
nop
nop
nop
nop
xor $19775, %r14
movb $0x61, (%r9)
nop
sub $58157, %r11
lea addresses_D_ht+0x1791e, %rsi
lea addresses_WC_ht+0x1e06a, %rdi
and $30265, %rbx
mov $22, %rcx
rep movsb
nop
xor %rsi, %rsi
lea addresses_UC_ht+0xb05e, %rcx
nop
nop
nop
nop
nop
sub %r11, %r11
movl $0x61626364, (%rcx)
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rbx

// Store
lea addresses_WC+0xd26e, %r15
nop
nop
nop
add $43420, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r15)
nop
cmp $53023, %r12

// Faulty Load
mov $0x7fadd30000000f5e, %r8
cmp $40451, %r15
vmovups (%r8), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'78': 20564, '00': 1262, '08': 3}
00 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 00 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 00 78 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 00 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 00 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 00 78 00 78 78 78 78 78 78 78 00 78 78 78 78 00 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 78 78 78 00 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 00 78 78 78 78 78 78 78 78 00 78 78
*/
