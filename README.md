# til

A bash util to quickly write and persist TILs locally.

## In the future...

... it will also automatically sync into a Git repository :heart: 

## Installation

Run:

```
git clone git@github.com:czardien/til.git && cd til && make
```

###### Todo: do `til-version`

## Usage

### New

Run:

```
til-new I just learned something about Rust!
```

Proceed with writing up about that very nice thing you just learnt about Rust.

### List

Run:

```
til-ls 
```

See all your nice TILs about Rust (or other topics).

### Remove

Run: 

```
til-rm [name] [--fzf]
```

Either remove one of your TILs by name or do it with `[fzf]`(https://github.com/junegunn/fzf).
