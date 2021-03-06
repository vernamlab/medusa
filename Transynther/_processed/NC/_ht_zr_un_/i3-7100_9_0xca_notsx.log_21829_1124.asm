.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x94c1, %rsi
lea addresses_A_ht+0x1a4c1, %rdi
nop
nop
sub %r13, %r13
mov $94, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rdx
lea addresses_normal_ht+0x15955, %r13
dec %rcx
movb $0x61, (%r13)
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x1499c, %rcx
dec %rsi
mov $0x6162636465666768, %r13
movq %r13, (%rcx)
sub %rsi, %rsi
lea addresses_A_ht+0x17e21, %rsi
lea addresses_WC_ht+0x15441, %rdi
nop
nop
nop
nop
nop
lfence
mov $59, %rcx
rep movsl
cmp %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rbx
push %rdx

// Faulty Load
mov $0x42f0b200000008c1, %rbx
nop
nop
nop
nop
nop
and %r10, %r10
mov (%rbx), %r12
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rdx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'00': 20200, '49': 1, '01': 1, '48': 1, '2f': 2, '20': 1624}
01 00 00 20 00 00 00 00 00 20 20 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 20 00 20 00 20 00 00 00 00 20 00 00 00 00 00 00 00 00 00 20 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 00 00 20 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 20 20 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 20 20 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 2f 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 20 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 20 00 00 20 00 00 00 00 00 00 00 00 00 00 20 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 00 20 00 00 00 00 00 00 20 00 00 00 20 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 20 00 00 00 20 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 20 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 20 00 00 20 20 00 20 00 00 00 00 20 20 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 00 20 00 00 00 00 00 00 00 20 00 00 00 20 00 20 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 20 00 00 00 00 20 00 20 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 20 00 00 20 20 00 00 00 20 00 00 00 00 00 00 00 00 00 20 00 00 00 20 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 20 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 20 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 20 00 00 00 20 00 20 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 00 20 00 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00
*/
