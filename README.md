# About

Tool to produce a markdown index from a [Unison](https://www.unisonweb.org/) codebase.

# Example output

[./test/index.md](./test/index.md)

# Install

```sh
stack install
```

# Use

From a directory with a ".unison" codebase:
```sh
unison-to-markdown > index.md
```

# Test

The only test is one that reads "./test/.unison" and writes it out as markdown to "./test/index.md".

It doesn't do any checking of the output.

Run it via:
```sh
stack test
```
