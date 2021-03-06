.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xb55d, %r15
nop
add $23665, %rbp
movw $0x6162, (%r15)
nop
nop
nop
add $56961, %r12
lea addresses_normal_ht+0xfebd, %rbx
inc %r10
mov (%rbx), %rcx
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x1e99d, %rbp
nop
nop
nop
sub %rbx, %rbx
movl $0x61626364, (%rbp)
nop
and %rbp, %rbp
lea addresses_A_ht+0xa515, %rbx
nop
nop
nop
xor %r11, %r11
movl $0x61626364, (%rbx)
nop
xor $139, %r12
lea addresses_UC_ht+0x888d, %r12
nop
nop
add %rbx, %rbx
movw $0x6162, (%r12)
nop
nop
nop
sub $8251, %r11
lea addresses_D_ht+0x1804d, %rsi
lea addresses_WC_ht+0x1773d, %rdi
nop
nop
nop
add $56432, %r11
mov $59, %rcx
rep movsb
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x1c07d, %rbp
nop
nop
nop
nop
xor $59467, %r15
movl $0x61626364, (%rbp)
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x187d, %rsi
lea addresses_A_ht+0x1efcd, %rdi
nop
nop
cmp %r11, %r11
mov $92, %rcx
rep movsl
nop
nop
nop
nop
and %r15, %r15
lea addresses_normal_ht+0x1ada1, %rcx
nop
nop
xor $54470, %r12
movb (%rcx), %r10b
nop
nop
and $1065, %rbx
lea addresses_WC_ht+0x12be3, %rcx
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, (%rcx)
nop
nop
nop
nop
nop
inc %r15
lea addresses_WT_ht+0xa0e9, %r12
clflush (%r12)
nop
nop
nop
nop
nop
xor $62695, %rdi
movups (%r12), %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
cmp $45130, %rsi
lea addresses_UC_ht+0x7dfd, %r15
nop
and $14721, %rbx
mov $0x6162636465666768, %r11
movq %r11, (%r15)
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
mov $0x27d, %rsi
lea addresses_RW+0x1887d, %rdi
nop
nop
nop
nop
add $2973, %r9
mov $7, %rcx
rep movsb
nop
nop
nop
and $5507, %r9

// Store
lea addresses_normal+0x1f17d, %rbx
nop
nop
nop
and %r14, %r14
movw $0x5152, (%rbx)
xor $47230, %r14

// Load
lea addresses_D+0x8c3d, %rbx
nop
nop
cmp %rcx, %rcx
mov (%rbx), %rsi
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_WT+0xb87d, %rdi
nop
nop
nop
sub $36705, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rdi)

// Exception!!!
nop
nop
nop
mov (0), %rdx
nop
nop
and %r14, %r14

// Faulty Load
lea addresses_normal+0x407d, %rsi
clflush (%rsi)
nop
inc %rdi
mov (%rsi), %rdx
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_P'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_RW'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
