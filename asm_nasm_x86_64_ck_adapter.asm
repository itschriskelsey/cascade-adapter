; Caskade Programming Language Adapter for x86_64 Assembly
; Created on May 18, 2025
; By Chris Kelsey of Blue Vision Studios

%define TRUE 1
%define FALSE 0

; Logical NOT: returns TRUE if input is FALSE, else FALSE
; Input: AL (0 or 1)
; Output: AL
not_caskade:
    cmp al, TRUE
    je .return_false
    mov al, TRUE
    ret
.return_false:
    mov al, FALSE
    ret

; Logical AND: returns TRUE if both inputs are TRUE, else FALSE
; Inputs: AL and BL (0 or 1)
; Output: AL
and_caskade:
    cmp al, TRUE
    jne .return_false
    cmp bl, TRUE
    jne .return_false
    mov al, TRUE
    ret
.return_false:
    mov al, FALSE
    ret

; Logical OR: returns TRUE if either input is TRUE, else FALSE
; Inputs: AL and BL
; Output: AL
or_caskade:
    cmp al, TRUE
    je .return_true
    cmp bl, TRUE
    je .return_true
    mov al, FALSE
    ret
.return_true:
    mov al, TRUE
    ret
