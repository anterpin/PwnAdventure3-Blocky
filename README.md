# PwnAdventure3 Blocky Challenge

1. [About](#about)
1. [How I came across](#how-i-came-across)
1. [SAT approach](#sat-approach)
1. [Download the disassembler](#download-the-disassembler)
1. [Reverse the content](#reverse-the-content)
1. [Reverse the binary](#reverse-the-binary)
1. [Giving up](#giving-up)
1. [Solution](#solution)

## About

This is the journey I took to solve this challenge, and how sometimes easy paths are faster and better.

## How I came across

I was studying competitive programming algortihm, when I stumbled into the 2SAT problem.  
I immiediatly remembered this challenge from LiveOverflow PwnAdventure3 Series and I wanted to solve using the SAT approach, so I downloaded the game and started.

## SAT approach

To accomplish this we need to do two things:

1. Reverse the circuit (through binary or through the game assets).
2. Solve the circuit using a SAT solver (like z3) or another custom algortihm.

## Download the disassembler

In the past when I used to do binary-exploitation challenges, I used `gdb` as my main disassembler and debugger.  
Now, as time has passed, I wanted to experiment a new tools, maybe more modern and GUI pleasant.  
I spent almost a day triying various disassembler also with decompilation feaetures, but they are all buggy in reading the symbol table.  
Some disassembler didn't read the symbols at all, others failed to build, others wrongly, others partially.
Only `gdb` read all the symbols correctly (inclusvely two function symbols which lead me to solve the challenge) and I sticked with it until the end.

## Reverse the content

As I remembered in the PwnAdventure3 Series, LiveOverflow could not find the circuit logic in the binary, so I tried exploring the assets.
The `Content/Paks` directory contains all the `.pak` files we need.  
Using a [ue4unpacker program](https://github.com/panzi/u4pak) we can easily check the assets contained in the paks and extract them.
(The asset we need are in the `Content7.pak`).  
Now we have a bunch `.uasset` file that we need to parse or open.

1. I tried using a [rust library](https://github.com/jorgenpt/uasset-rs/) to parse the content
   we unfortunately didn't work cause the library supports only the legacy version -6 and -7.
2. I tried reading the ue4 source code for parsing (You have to sign into Epic Games and add their repository), but the code was messy and I gave up shortly.
3. I tried downloading the Epic Game Launcher and running it with Wine and DXVK, but it didn't go well, cause the launcher updates itself and the DirectX dlls.
4. I found that a [UEViewer](https://github.com/gildor2/UEViewer) which helped me a little bit. The Linux version is not provided this a GUI and cannot parse unversioned .uasset files. So I had to use the Windows version with wine. Turns out it parses only the displayble content, such the circuit mesh.  
   4.1 I exported and opened in Blender to see if the mesh consists of differentes meshes, but it doesn't. Another dead-end.
5. Finally I decided to build UE4 from source, which I really didn't want to do cause it requires a lot of time and disk space.
   After 123GB of disk-space and 15 hours of building time, I runned the built version to find out that UE4 does not import its own files (coming from another version...).  
   Very disappointing...

## Reverse Binary

1. I extracted the class information using `ptype` and saved it a file.
2. Reversed the Player class method `PerformSetCircuitInput` and put a C++ prototype in a file to more readibility.  
   I had a difficult time guessing virtual functions cause it uses vtable to calling them and not symbols. But with a little bit of pacience and attention to which arguments are passed to the specific function, I managed to retrieve the called virtual functions.
3. There is a problem tho, `gdb` and others disassembler cannot find the function symbol definition in the binary (other disassemblers didn't find symbol at all).  
   Fortunately there is a global variable of type `GameAPI`, so I opened the debugger, attached to the running game, retrieved the GameAPI vtable pointer, which led to the vtable.  
   From there I took the third and the fourth entry, and printed the instructions and same them in a file.

## Giving up

I spent a lot of time in unessesary things, and at this point the perspective I had in front of me was reversing a bunch of instructions with no symbol names. At this point, after so much suffering, I didn't really want to pursuit this path anymore.  
I gave up in reversing the circuit logic, but sometimes easier path lead to faster and simplier solutions.  
I decided to brute-force all the 2<sup>32</sup> possibilities, which didn't take so long, 30 minutes while I was drinking beer and relaxing, which took less time and efforts if I had tried to reverse the circuit somehow.

## Solution

We will the follow the standard procedure:

1. Extract the class information.
2. Override the Player class method `Chat`, which will execute our special function on a specific frase.
3. Get the global variable pointer of the symbol `Game` through `dlsym`, which represents our `GameAPI` instance.
4. Brute-force the circuit, calling `GameAPI::GetCircuitOutputs`.

I didn't test the output in the game or in online mode, but I am quite confiant the it works. (cause it is the same found by LiveOverflow).
