# Learning Haskell

Compiling my Haskell learnings here. Sources of learning include:
- [Learn You A Haskell](http://learnyouahaskell.com)
- Googling "Haskell Cheat Sheet", of which one good one is [this](https://jutge.org/doc/haskell-cheat-sheet.pdf)

Generally Haskell is easy to learn if you have prior programming background in other languages. The main difference is how the syntaxes are written, which takes some getting used to.

## Running

Two ways:

### `ghc`

Simply `ghc --make code.hs`. Functions much like C compiler.

### `ghci`

Like `ghc`, but interactive. It's like running `python` interactively.

Assuming file is named `code.hs`, to compile: `:load code.hs` or `:l code.hs`.

To quit, `:quit`.

## Hello World

Simplest way is using `ghci`:

```console
Prelude> print "Hello World"
"Hello World"
```

Unlike Python, `print` keyword is optional.

If we go the traditional way and use a Haskell file (which typically ends with `.hs`):

```haskell
main = putStrLn "Hello World!"
```

## Syntax

### Commenting

```haskell
-- Single line comment

{-
    Multi-line
    Comment
-}
```

Usually above function definitions.

### Pattern Matching

Using example of recursion, like factorial (note that time complexity O(n!), so use other methods to improve efficiency):

```haskell
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)
```

### 
