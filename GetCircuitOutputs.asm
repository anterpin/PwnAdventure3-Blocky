   0x4a6370:	push   rbp
   0x4a6371:	mov    rbp,rsp
   0x4a6374:	push   r15
   0x4a6376:	push   r14
   0x4a6378:	push   r13
   0x4a637a:	push   r12
   0x4a637c:	push   rbx
   0x4a637d:	sub    rsp,0x1e8
   0x4a6384:	mov    DWORD PTR [rbp-0x1e0],r9d
   0x4a638b:	mov    DWORD PTR [rbp-0x1f4],r8d
   0x4a6392:	movss  DWORD PTR [rbp-0x1dc],xmm0
   0x4a639a:	mov    rbx,rcx
   0x4a639d:	mov    QWORD PTR [rbp-0x1e8],rdx
   0x4a63a4:	mov    QWORD PTR [rbp-0x1f0],rsi
   0x4a63ab:	mov    rdi,QWORD PTR [rdi+0x8]
   0x4a63af:	mov    rax,QWORD PTR [rdi]
   0x4a63b2:	call   QWORD PTR [rax+0xe8]
   0x4a63b8:	mov    r14,rax
   0x4a63bb:	test   r14,r14
   0x4a63be:	je     0x4a68ab
   0x4a63c4:	xorps  xmm3,xmm3
   0x4a63c7:	movaps XMMWORD PTR [rbp-0x80],xmm3
   0x4a63cb:	movss  xmm0,DWORD PTR [rbx+0x8]
   0x4a63d0:	movss  xmm1,DWORD PTR [rbx]
   0x4a63d4:	movss  xmm2,DWORD PTR [rbx+0x4]
   0x4a63d9:	movss  DWORD PTR [rbp-0x90],xmm1
   0x4a63e1:	movss  DWORD PTR [rbp-0x8c],xmm2
   0x4a63e9:	movss  DWORD PTR [rbp-0x88],xmm0
   0x4a63f1:	mov    DWORD PTR [rbp-0xa0],0x2
   0x4a63fb:	lea    rdi,[rbp-0xd8]
   0x4a6402:	movss  xmm0,DWORD PTR [rbp-0x1dc]
   0x4a640a:	movss  DWORD PTR [rbp-0x9c],xmm0
   0x4a6412:	movaps XMMWORD PTR [rbp-0xb0],xmm3
   0x4a6419:	movaps XMMWORD PTR [rbp-0xd0],xmm3
   0x4a6420:	mov    WORD PTR [rbp-0xc0],0x0
   0x4a6429:	mov    BYTE PTR [rbp-0xbe],0x1
   0x4a6430:	mov    BYTE PTR [rbp-0xbd],0x0
   0x4a6437:	mov    BYTE PTR [rbp-0xbc],0x0
   0x4a643e:	mov    BYTE PTR [rbp-0xbf],0x1
   0x4a6445:	mov    esi,0x27be5a0
   0x4a644a:	mov    edx,0x1
   0x4a644f:	mov    ecx,0x1
   0x4a6454:	call   0x64bc50
   0x4a6459:	lea    rsi,[rbp-0x80]
   0x4a645d:	lea    rdx,[rbp-0x90]
   0x4a6464:	lea    rcx,[rbp-0xe8]
   0x4a646b:	lea    r8,[rbp-0x100]
   0x4a6472:	lea    rax,[rbp-0xa0]
   0x4a6479:	lea    rdi,[rbp-0xd0]
   0x4a6480:	mov    rbx,QWORD PTR [rbp-0xd8]
   0x4a6487:	mov    QWORD PTR [rbp-0xd0],rbx
   0x4a648e:	movss  xmm1,DWORD PTR [rbp-0x8c]
   0x4a6496:	movss  xmm2,DWORD PTR [rbp-0x1dc]
   0x4a649e:	addss  xmm1,xmm2
   0x4a64a2:	movss  xmm0,DWORD PTR [rbp-0x90]
   0x4a64aa:	addss  xmm0,xmm2
   0x4a64ae:	unpcklps xmm0,xmm1
   0x4a64b1:	movss  xmm1,DWORD PTR [rbp-0x88]
   0x4a64b9:	addss  xmm1,xmm2
   0x4a64bd:	movlps QWORD PTR [rbp-0xe8],xmm0
   0x4a64c4:	movss  DWORD PTR [rbp-0xe0],xmm1
   0x4a64cc:	mov    DWORD PTR [rbp-0x100],0x3f800000
   0x4a64d6:	mov    DWORD PTR [rbp-0xfc],0x3f800000
   0x4a64e0:	mov    DWORD PTR [rbp-0xf8],0x3f800000
   0x4a64ea:	mov    DWORD PTR [rbp-0xf4],0x3f800000
   0x4a64f4:	mov    QWORD PTR [rsp+0x8],rdi
   0x4a64f9:	mov    QWORD PTR [rsp],rax
   0x4a64fd:	mov    QWORD PTR [rsp+0x10],0x3816d30
   0x4a6506:	mov    rdi,r14
   0x4a6509:	mov    r9d,0xe
   0x4a650f:	call   0x1526c70
   0x4a6514:	xorps  xmm0,xmm0
   0x4a6517:	movaps XMMWORD PTR [rbp-0x150],xmm0
   0x4a651e:	movaps XMMWORD PTR [rbp-0x130],xmm0
   0x4a6525:	mov    DWORD PTR [rbp-0x120],0xffffffff
   0x4a652f:	mov    DWORD PTR [rbp-0x11c],0x0
   0x4a6539:	mov    QWORD PTR [rbp-0x110],0x0
   0x4a6544:	mov    DWORD PTR [rbp-0x108],0x0
   0x4a654e:	mov    r13d,DWORD PTR [rbp-0x78]
   0x4a6552:	test   r13d,r13d
   0x4a6555:	je     0x4a6665
   0x4a655b:	mov    ebx,0x70
   0x4a6560:	lea    r15,[rbp-0x160]
   0x4a6567:	lea    r12,[rbp-0x150]
   0x4a656e:	lea    r14,[rbp-0x1d8]
   0x4a6575:	data16 cs nop WORD PTR [rax+rax*1+0x0]
   0x4a6580:	mov    rax,QWORD PTR [rbp-0x80]
   0x4a6584:	mov    rcx,QWORD PTR [rax+rbx*1-0x20]
   0x4a6589:	mov    QWORD PTR [rbp-0x180],rcx
   0x4a6590:	movups xmm0,XMMWORD PTR [rax+rbx*1-0x30]
   0x4a6595:	movaps XMMWORD PTR [rbp-0x190],xmm0
   0x4a659c:	movups xmm0,XMMWORD PTR [rax+rbx*1-0x70]
   0x4a65a1:	movups xmm1,XMMWORD PTR [rax+rbx*1-0x60]
   0x4a65a6:	movups xmm2,XMMWORD PTR [rax+rbx*1-0x50]
   0x4a65ab:	movups xmm3,XMMWORD PTR [rax+rbx*1-0x40]
   0x4a65b0:	movaps XMMWORD PTR [rbp-0x1a0],xmm3
   0x4a65b7:	movaps XMMWORD PTR [rbp-0x1b0],xmm2
   0x4a65be:	movaps XMMWORD PTR [rbp-0x1c0],xmm1
   0x4a65c5:	movaps XMMWORD PTR [rbp-0x1d0],xmm0
   0x4a65cc:	mov    ecx,DWORD PTR [rax+rbx*1-0x18]
   0x4a65d0:	mov    DWORD PTR [rbp-0x178],ecx
   0x4a65d6:	mov    ecx,DWORD PTR [rax+rbx*1-0x14]
   0x4a65da:	mov    DWORD PTR [rbp-0x174],ecx
   0x4a65e0:	mov    ecx,DWORD PTR [rax+rbx*1-0x10]
   0x4a65e4:	mov    DWORD PTR [rbp-0x170],ecx
   0x4a65ea:	mov    ecx,DWORD PTR [rax+rbx*1-0xc]
   0x4a65ee:	mov    DWORD PTR [rbp-0x16c],ecx
   0x4a65f4:	mov    ecx,DWORD PTR [rax+rbx*1-0x8]
   0x4a65f8:	mov    DWORD PTR [rbp-0x168],ecx
   0x4a65fe:	mov    ecx,DWORD PTR [rax+rbx*1-0x4]
   0x4a6602:	mov    DWORD PTR [rbp-0x164],ecx
   0x4a6608:	mov    ecx,DWORD PTR [rax+rbx*1+0x8]
   0x4a660c:	mov    DWORD PTR [r15+0x8],ecx
   0x4a6610:	mov    rax,QWORD PTR [rax+rbx*1]
   0x4a6614:	mov    QWORD PTR [r15],rax
   0x4a6617:	lea    rdi,[rbp-0x1d0]
   0x4a661e:	call   0x1518160
   0x4a6623:	mov    QWORD PTR [rbp-0x1d8],rax
   0x4a662a:	test   rax,rax
   0x4a662d:	je     0x4a664c
   0x4a662f:	mov    rdi,r12
   0x4a6632:	mov    rsi,rax
   0x4a6635:	call   0x4ae960
   0x4a663a:	cmp    eax,0xffffffff
   0x4a663d:	jne    0x4a664c
   0x4a663f:	mov    rdi,r12
   0x4a6642:	mov    rsi,r14
   0x4a6645:	xor    edx,edx
   0x4a6647:	call   0x4ae6e0
   0x4a664c:	add    rbx,0x7c
   0x4a6650:	dec    r13d
   0x4a6653:	jne    0x4a6580
   0x4a6659:	cmp    DWORD PTR [rbp-0x128],0x0
   0x4a6660:	sete   al
   0x4a6663:	jmp    0x4a6667
   0x4a6665:	mov    al,0x1
   0x4a6667:	mov    DWORD PTR [rbp-0x48],0x0
   0x4a666e:	mov    DWORD PTR [rbp-0x44],0x1
   0x4a6675:	lea    r12,[rbp-0x140]
   0x4a667c:	mov    QWORD PTR [rbp-0x40],r12
   0x4a6680:	mov    DWORD PTR [rbp-0x38],0xffffffff
   0x4a6687:	mov    DWORD PTR [rbp-0x34],0x0
   0x4a668e:	test   al,al
   0x4a6690:	mov    DWORD PTR [rbp-0x30],0x0
   0x4a6697:	jne    0x4a66a2
   0x4a6699:	lea    rdi,[rbp-0x48]
   0x4a669d:	call   0x4986e0
   0x4a66a2:	movups xmm0,XMMWORD PTR [rbp-0x48]
   0x4a66a6:	movups xmm1,XMMWORD PTR [rbp-0x38]
   0x4a66aa:	movaps XMMWORD PTR [rbp-0x60],xmm1
   0x4a66ae:	movaps XMMWORD PTR [rbp-0x70],xmm0
   0x4a66b2:	lea    r13,[rbp-0x150]
   0x4a66b9:	mov    QWORD PTR [rbp-0x1d0],r13
   0x4a66c0:	movaps xmm0,XMMWORD PTR [rbp-0x70]
   0x4a66c4:	movaps xmm1,XMMWORD PTR [rbp-0x60]
   0x4a66c8:	movups XMMWORD PTR [rbp-0x1b8],xmm1
   0x4a66cf:	movups XMMWORD PTR [rbp-0x1c8],xmm0
   0x4a66d6:	mov    QWORD PTR [rbp-0x1a8],r13
   0x4a66dd:	mov    eax,DWORD PTR [rbp-0x1f4]
   0x4a66e3:	xorps  xmm0,xmm0
   0x4a66e6:	cvtsi2ss xmm0,eax
   0x4a66ea:	movss  DWORD PTR [rbp-0x1f4],xmm0
   0x4a66f2:	mov    r15d,DWORD PTR [rbp-0x128]
   0x4a66f9:	jmp    0x4a671a
   0x4a66fb:	nop    DWORD PTR [rax+rax*1+0x0]
   0x4a6700:	mov    eax,DWORD PTR [rbp-0x1c4]
   0x4a6706:	not    eax
   0x4a6708:	and    DWORD PTR [rbp-0x1b8],eax
   0x4a670e:	lea    rdi,[rbp-0x1c8]
   0x4a6715:	call   0x4986e0
   0x4a671a:	movsxd rax,DWORD PTR [rbp-0x1b4]
   0x4a6721:	cmp    eax,r15d
   0x4a6724:	jne    0x4a673c
   0x4a6726:	cmp    QWORD PTR [rbp-0x1c0],r12
   0x4a672d:	jne    0x4a673c
   0x4a672f:	cmp    QWORD PTR [rbp-0x1d0],r13
   0x4a6736:	je     0x4a6865
   0x4a673c:	shl    rax,0x4
   0x4a6740:	mov    rcx,QWORD PTR [rbp-0x1d0]
   0x4a6747:	mov    rcx,QWORD PTR [rcx]
   0x4a674a:	mov    rbx,QWORD PTR [rcx+rax*1]
   0x4a674e:	mov    rdi,rbx
   0x4a6751:	call   0x49caa0
   0x4a6756:	mov    r14,rax
   0x4a6759:	test   r14,r14
   0x4a675c:	je     0x4a6700
   0x4a675e:	mov    rdi,QWORD PTR [rbx+0x158]
   0x4a6765:	test   rdi,rdi
   0x4a6768:	jne    0x4a6780
   0x4a676a:	xorps  xmm1,xmm1
   0x4a676d:	pxor   xmm0,xmm0
   0x4a6771:	jmp    0x4a67a4
   0x4a6773:	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
   0x4a6780:	test   BYTE PTR [rdi+0xe0],0x1
   0x4a6787:	jne    0x4a679b
   0x4a6789:	movss  xmm1,DWORD PTR [rdi+0xc8]
   0x4a6791:	movq   xmm0,QWORD PTR [rdi+0xc0]
   0x4a6799:	jmp    0x4a67a4
   0x4a679b:	mov    rax,QWORD PTR [rdi]
   0x4a679e:	call   QWORD PTR [rax+0x3e0]
   0x4a67a4:	movss  xmm4,DWORD PTR [rbp-0x1dc]
   0x4a67ac:	movss  DWORD PTR [rbp-0x1dc],xmm4
   0x4a67b4:	movss  xmm3,DWORD PTR [rbp-0x90]
   0x4a67bc:	movss  xmm2,DWORD PTR [rbp-0x8c]
   0x4a67c4:	subss  xmm3,xmm0
   0x4a67c8:	mulss  xmm3,xmm3
   0x4a67cc:	pshufd xmm0,xmm0,0x1
   0x4a67d1:	subss  xmm2,xmm0
   0x4a67d5:	mulss  xmm2,xmm2
   0x4a67d9:	addss  xmm2,xmm3
   0x4a67dd:	movss  xmm0,DWORD PTR [rbp-0x88]
   0x4a67e5:	subss  xmm0,xmm1
   0x4a67e9:	mulss  xmm0,xmm0
   0x4a67ed:	addss  xmm0,xmm2
   0x4a67f1:	sqrtss xmm0,xmm0
   0x4a67f5:	divss  xmm0,xmm4
   0x4a67f9:	ucomiss xmm0,DWORD PTR [rip+0x2316cf0]        # 0x27bd4f0
   0x4a6800:	jae    0x4a6700
   0x4a6806:	movss  xmm1,DWORD PTR [rip+0x2315162]        # 0x27bb970
   0x4a680e:	ucomiss xmm1,xmm0
   0x4a6811:	movss  xmm2,DWORD PTR [rbp-0x1f4]
   0x4a6819:	movaps xmm1,xmm2
   0x4a681c:	ja     0x4a6836
   0x4a681e:	movss  xmm1,DWORD PTR [rip+0x2316cca]        # 0x27bd4f0
   0x4a6826:	subss  xmm1,xmm0
   0x4a682a:	divss  xmm1,DWORD PTR [rip+0x2315136]        # 0x27bb968
   0x4a6832:	mulss  xmm1,xmm2
   0x4a6836:	cvttss2si ecx,xmm1
   0x4a683a:	test   ecx,ecx
   0x4a683c:	jle    0x4a6700
   0x4a6842:	mov    rax,QWORD PTR [r14]
   0x4a6845:	mov    rdi,r14
   0x4a6848:	mov    rsi,QWORD PTR [rbp-0x1f0]
   0x4a684f:	mov    rdx,QWORD PTR [rbp-0x1e8]
   0x4a6856:	mov    r8d,DWORD PTR [rbp-0x1e0]
   0x4a685d:	call   QWORD PTR [rax+0x78]
   0x4a6860:	jmp    0x4a6700
   0x4a6865:	mov    DWORD PTR [rbp-0x108],0x0
   0x4a686f:	mov    rdi,QWORD PTR [rbp-0x110]
   0x4a6876:	test   rdi,rdi
   0x4a6879:	je     0x4a6880
   0x4a687b:	call   0x4f2f20
   0x4a6880:	lea    rdi,[rbp-0x150]
   0x4a6887:	call   0x4aed50
   0x4a688c:	mov    rdi,QWORD PTR [rbp-0xb0]
   0x4a6893:	test   rdi,rdi
   0x4a6896:	je     0x4a689d
   0x4a6898:	call   0x4f2f20
   0x4a689d:	mov    rdi,QWORD PTR [rbp-0x80]
   0x4a68a1:	test   rdi,rdi
   0x4a68a4:	je     0x4a68ab
   0x4a68a6:	call   0x4f2f20
   0x4a68ab:	add    rsp,0x1e8
   0x4a68b2:	pop    rbx
   0x4a68b3:	pop    r12
   0x4a68b5:	pop    r13
   0x4a68b7:	pop    r14
   0x4a68b9:	pop    r15
   0x4a68bb:	pop    rbp
   0x4a68bc:	ret 
