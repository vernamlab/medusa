.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x920c, %r12
nop
nop
xor $26707, %rbp
and $0xffffffffffffffc0, %r12
movaps (%r12), %xmm2
vpextrq $1, %xmm2, %rdi
sub %rcx, %rcx
lea addresses_WT_ht+0x15d65, %rsi
lea addresses_WT_ht+0xcafd, %rdi
nop
cmp %rbx, %rbx
mov $117, %rcx
rep movsq
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rdi

// Store
lea addresses_UC+0x66d1, %r13
nop
nop
nop
nop
nop
dec %rbp
movb $0x51, (%r13)
nop
nop
nop
nop
nop
and $23066, %rdi

// Store
lea addresses_US+0x9ebb, %rax
nop
nop
nop
nop
and %r14, %r14
movl $0x51525354, (%rax)
nop
nop
and %rax, %rax

// Faulty Load
lea addresses_A+0x18365, %rax
clflush (%rax)
nop
nop
nop
nop
nop
add %r13, %r13
vmovups (%rax), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r11
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'83': 1, '51': 3, '00': 5421, '49': 2014, 'e7': 1, '5f': 2}
00 00 00 49 00 00 00 49 00 49 49 49 00 00 00 00 00 49 49 49 00 00 00 00 00 00 49 49 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 49 00 00 00 49 49 49 00 00 00 49 49 49 49 00 00 49 00 49 49 00 00 00 49 00 49 00 00 00 00 00 00 00 49 00 49 49 00 00 00 00 49 49 49 00 00 00 00 00 00 00 49 49 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 49 00 49 49 00 00 49 49 00 49 00 00 49 49 00 49 00 00 00 49 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 49 49 00 00 00 49 00 00 49 49 00 00 00 00 00 49 49 00 00 00 00 49 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 49 00 00 49 00 00 49 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 49 00 49 49 49 49 00 00 49 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 49 49 00 00 00 00 49 00 00 00 00 49 00 49 49 00 00 00 00 00 00 49 49 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 49 49 00 49 00 00 00 00 00 00 49 00 00 00 00 49 49 49 49 49 00 49 00 49 49 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 49 49 49 00 00 00 49 00 00 00 00 49 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 49 49 00 00 00 00 00 49 49 00 00 00 00 49 00 00 00 49 49 49 00 00 00 00 00 49 49 00 00 49 49 49 00 00 00 00 00 00 49 00 00 49 00 00 00 49 00 00 00 00 00 00 49 49 00 00 00 49 00 00 49 49 00 00 00 00 00 00 00 00 49 00 00 00 00 49 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 00 00 00 49 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 49 00 00 49 49 49 00 00 00 00 00 00 00 49 00 00 00 00 49 00 49 00 00 00 49 00 00 49 00 00 00 00 00 00 00 49 49 00 00 00 00 49 00 49 49 00 49 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 49 49 00 00 00 00 49 49 00 00 00 00 00 00 49 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 49 00 49 00 00 49 00 00 00 49 00 49 00 00 49 49 00 49 49 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 49 49 00 00 49 00 00 49 00 00 00 49 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 49 49 49 49 00 00 49 00 00 00 49 00 00 49 00 00 00 49 00 49 00 49 00 49 00 49 00 00 49 00 00 00 49 49 00 00 00 49 00 49 00 00 49 49 00 00 00 49 00 00 00 49 00 00 00 00 00 49 00 00 00 49 49 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 49 49 00 00 49 00 49 00 49 00 49 00 49 00 00 00 00 00 49 00 49 49 00 49 00 49 00 00 00 00 49 49 00 00 00 49 00 00 00 00 00 00 49 49 49 00 00 00 00 49 00 00 00 49 49 00 49 49 00 00 00 49 00 49 00 00 49 49 49 00 00 49 00 00 00 00 00 00 00 49 00 00 00 49 00 49 00 49 49 00 00 49 49 49 00 00 00 49 49 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 49 49 49 00 00 00 00 49 00 00 49 00 00 00 00 49 00 00 00 49 00 00 49 00 49 00 49 00 00 00 00 49 49 49 49 00
*/
