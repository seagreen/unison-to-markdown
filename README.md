# About

Tool to produce a markdown index from a [Unison](https://www.unisonweb.org/) codebase.

# Example output

Example of displaying a whole codebase, for instance by running `unison-to-markdown` in a directory with a `.unison` codebase:

[./test/index.md](./test/index.md)

Example of displaying a single namespace with `unison-to-markdown --namespace 'builtin.io'`:

[./test/namespace.md](./test/namespace.md)

# Install

```sh
stack install
```

# Test

The only test is one that reads `./test/.unison` and writes out two golden files based on it: `./test/index.md` and `./test/namespace.md`.

It doesn't do any checking of the output.

Run it via:
```sh
stack test
```

or:
```sh
ghcid
```
