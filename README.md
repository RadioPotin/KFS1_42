# Kernel From Scratch-1 for 42

A basic Kernel to Boot from with GRUB.

## Add env variables

```shell-session
export PREFIX="$HOME/mycross_cross"
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"
```

## Build GRUB

It's possible that you don't have a compatible version of GRUB on your machine.
To make sure you do run the following command:

```shell-session
$ sh cross_compiled.sh
```

## Build kernel and run qemu 

Run the following command:

```shell-session
$ make run
```

All `.s` files come from [OSDEV](https://wiki.osdev.org/Bare_Bones_with_NASM) 

## Explanations

You will find two potential kernel files in the repo:
- `kernel.s`
- `kernel_simple.s`

They basically do the same thing but one is just the required string (2 chars: '4' and '2') at the required address and the other one computes and prints a string. If you wish to see the `kernel.s` output instead of the `kernel_simple.s` one, just change the filename in the Makefile.

## Authors

- [bafraikin](https://github.com/bafraikin?tab=repositories)
- [dapinto](https://github.com/RadioPotin?tab=repositories)
