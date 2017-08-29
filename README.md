# ocaml-on-windows

Execute [ocaml](http://ocaml.org/) and [reason](https://reasonml.github.io/) binaries on windows through WSL (Windows Subsystem for Linux).

## What?

At least in my very limited experience, ocaml has a very poor support for windows. Now that we have WSL, we can install it here, but it won't interop well with editors and other apps that won't "see" the binaries installed there.

The ideia of this project is to create some simple batch files that call `bash -c <ocaml-binary> <parameters>` that editors and other programs can call to access the ocaml binaries installed on WSL.

## Install

First, install and configure these pre-requisites:

* [Windows Subsystem for Linux](https://msdn.microsoft.com/en-us/commandline/wsl/install_guide)
* [npm](https://www.npmjs.com/)

After that, just run this and follow the instructions (it may take some time to install the ocaml toolchain):

```
npm install -g ocaml-on-windows
```

To check if everything went well, open cmd.exe and run:

```
ocaml -version
```

It should print something like that:

```
The OCaml toplevel, version 4.04.0
```

## Build

Building windows binaries is supported through [opam-cross-windows](https://github.com/whitequark/opam-cross-windows). To test it, run:

```
echo let () = print_endline "hello world" > program.ml
ocamlfind ocamlopt program.ml -o program.exe
```

It should create a `program.exe` in your current directory.
