# til

A bash util to quickly write and persist TILs locally.

## In the future

* it will automatically sync into a Git repository :heart:
* it will be nicely searchable :heart:

## Installation

```
git clone git@github.com:czardien/til.git && cd til && make
```

## Usage

### New

```
til-new I just learned something about Rust!
```

Proceed with writing up about that very nice thing you just learnt about Rust.

### View

Needs `fzf` and `bat`.

```
til
```

### List

```
til-ls
```

See all your nice TILs about Rust (or other topics).

### Remove

```
til-rm [name] [--fzf]
```

Either remove one of your TILs by name or do it with [`fzf`](https://github.com/junegunn/fzf).
