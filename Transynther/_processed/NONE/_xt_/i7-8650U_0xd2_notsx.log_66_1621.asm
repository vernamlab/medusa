.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x83c, %rcx
nop
nop
nop
nop
nop
and $53191, %r9
mov $0x6162636465666768, %r12
movq %r12, (%rcx)
nop
cmp $8395, %rax
lea addresses_normal_ht+0x1ba8c, %rsi
lea addresses_WC_ht+0x1159c, %rdi
nop
nop
nop
nop
and %rdx, %rdx
mov $118, %rcx
rep movsl
nop
nop
nop
nop
nop
and $19862, %rsi
lea addresses_A_ht+0x1b84c, %rsi
lea addresses_D_ht+0x91cc, %rdi
clflush (%rsi)
nop
inc %r12
mov $16, %rcx
rep movsl
nop
nop
sub $39618, %rdx
lea addresses_WC_ht+0xaecc, %r12
nop
nop
nop
nop
nop
add %rdx, %rdx
movl $0x61626364, (%r12)
nop
xor $21815, %rdi
lea addresses_UC_ht+0x14c4c, %r9
nop
nop
add $20785, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r9)
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0xdc4c, %r12
and %rsi, %rsi
mov (%r12), %r9
nop
nop
nop
nop
nop
and $3153, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
mov $0x64c, %rbp
add %r11, %r11
movb $0x51, (%rbp)
xor %rbx, %rbx

// Store
lea addresses_RW+0xdd6c, %r9
nop
nop
nop
nop
nop
cmp %rbx, %rbx
movb $0x51, (%r9)
nop
nop
dec %rcx

// REPMOV
mov $0x34c, %rsi
lea addresses_A+0x101b6, %rdi
nop
nop
xor %rax, %rax
mov $53, %rcx
rep movsb
nop
nop
nop
nop
and %rdi, %rdi

// Faulty Load
lea addresses_RW+0x844c, %r11
nop
nop
nop
nop
nop
inc %rsi
mov (%r11), %di
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'32': 66}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
