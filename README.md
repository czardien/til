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

TIL commands `new`, `rm` and simply `til` will automatically init the folder as a local git repo and create commits.

### New

```
til-new I just learned something about Rust!
```

Proceed with writing up about that very nice thing you just learnt about Rust.

### View / Update

Needs `fzf` and `bat`. Also probably need `$EDITOR` to be set. Pressing Enter on selection will open selected in `$EDITOR`.

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

### Git

```
til-git [git-command]
```

Run git commands in the context of your TILs folder! Recommended usage:

```
til-git init
til-git remote add origin <git-repo>
```
