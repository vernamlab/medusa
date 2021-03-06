.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x13ff5, %rsi
lea addresses_normal_ht+0x10ef5, %rdi
nop
nop
nop
nop
nop
sub %r10, %r10
mov $119, %rcx
rep movsq
xor %r15, %r15
lea addresses_UC_ht+0x45d5, %rsi
lea addresses_D_ht+0x139a5, %rdi
nop
sub %r10, %r10
mov $25, %rcx
rep movsl
and %r10, %r10
lea addresses_A_ht+0x141d5, %rax
nop
nop
add $30017, %r11
mov $0x6162636465666768, %r15
movq %r15, %xmm2
and $0xffffffffffffffc0, %rax
movaps %xmm2, (%rax)
nop
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x1e1bb, %rsi
lea addresses_UC_ht+0xb454, %rdi
nop
nop
nop
nop
nop
sub $25184, %rbx
mov $84, %rcx
rep movsb
nop
nop
and %rbx, %rbx
lea addresses_WC_ht+0x43ad, %rax
cmp %rsi, %rsi
movb $0x61, (%rax)
nop
nop
nop
nop
dec %r15
lea addresses_WT_ht+0xc985, %rax
nop
add %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x1dd95, %rdi
nop
nop
nop
nop
add %rbx, %rbx
vmovups (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
nop
nop
xor $2887, %rsi
lea addresses_WC_ht+0x1874d, %r15
nop
inc %r10
movups (%r15), %xmm4
vpextrq $1, %xmm4, %rsi
cmp %r15, %r15
lea addresses_normal_ht+0x54e5, %r11
nop
nop
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r11)
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x2ff5, %rax
nop
nop
nop
nop
nop
sub $60102, %rcx
movups (%rax), %xmm4
vpextrq $1, %xmm4, %rdi
nop
add $53569, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r15
push %r8
push %rbx

// Store
lea addresses_PSE+0x9b57, %r13
nop
nop
nop
nop
nop
cmp %r10, %r10
movb $0x51, (%r13)

// Exception!!!
nop
mov (0), %r12
nop
nop
nop
nop
add $51838, %r12

// Store
lea addresses_A+0x18ef5, %r12
nop
nop
add %rbx, %rbx
movb $0x51, (%r12)
nop
nop
nop
nop
nop
xor %r10, %r10

// Load
lea addresses_UC+0x1acb5, %r8
nop
nop
nop
nop
nop
cmp %r15, %r15
mov (%r8), %r10w
nop
nop
sub $284, %r10

// Store
lea addresses_PSE+0xdf75, %r15
nop
nop
nop
inc %r13
mov $0x5152535455565758, %rbx
movq %rbx, (%r15)
nop
nop
cmp $2156, %r14

// Store
lea addresses_PSE+0x1a6f5, %r15
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
nop
dec %r13

// Store
lea addresses_RW+0x16e27, %rbx
nop
and $45026, %r12
mov $0x5152535455565758, %r10
movq %r10, (%rbx)
nop
nop
nop
sub $9890, %r14

// Store
lea addresses_WC+0x1a6f5, %r14
and %r8, %r8
mov $0x5152535455565758, %r15
movq %r15, %xmm4
movups %xmm4, (%r14)
dec %r8

// Store
lea addresses_PSE+0x16349, %r8
nop
nop
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %rbx
movq %rbx, (%r8)
nop
nop
and $10534, %r12

// Store
lea addresses_WT+0xaaf5, %r10
nop
nop
nop
nop
sub %r15, %r15
movw $0x5152, (%r10)
nop
nop
cmp %r8, %r8

// Faulty Load
lea addresses_PSE+0x1a6f5, %rbx
nop
nop
xor %r13, %r13
movups (%rbx), %xmm0
vpextrq $0, %xmm0, %r12
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'58': 265}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
