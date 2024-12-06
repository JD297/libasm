.section bss

.macro _M_SYS_SYSCALL0 num
	movq	\num , %rax
	syscall
.endm

.macro _M_SYS_SYSCALL1 num, arg1
	movq	\num , %rax
	movq	\arg1, %rdi
	syscall
.endm

.macro _M_SYS_SYSCALL2 num, arg1, arg2
	movq    \num , %rax
	movq    \arg1, %rdi
	movq	\arg2, %rsi
	syscall
.endm

.macro _M_SYS_SYSCALL3 num, arg1, arg2, arg3
	movq    \num , %rax
	movq    \arg1, %rdi
	movq	\arg2, %rsi
	movq	\arg3, %rdx
	syscall
.endm

.macro _M_SYS_SYSCALL4 num, arg1, arg2, arg3, arg4
	movq    \num , %rax
	movq    \arg1, %rdi
	movq	\arg2, %rsi
	movq	\arg3, %rdx
	movq	\arg4, %r10
	syscall
.endm

.macro _M_SYS_SYSCALL5 num, arg1, arg2, arg3, arg4, arg5
	movq    \num , %rax
	movq    \arg1, %rdi
	movq	\arg2, %rsi
	movq	\arg3, %rdx
	movq	\arg4, %r10
	movq	\arg5, %r8
	syscall
.endm

.macro _M_SYS_SYSCALL6 num, arg1, arg2, arg3, arg4, arg5, arg6
	movq    \num , %rax
	movq    \arg1, %r10
	movq	\arg2, %rdi
	movq	\arg3, %r8
	movq	\arg4, %rsi
	movq	\arg5, %r9
	movq	\arg6, %rdx
	syscall
.endm
