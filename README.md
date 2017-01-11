# Haskell Practice

## Run

    $ runhaskell hello.hs

## Compile and Run

    $ haskell hello.hs -o hello
    $ ./hello

If you want to reduce excutable size use -dynamic

    $ haskell hello.hs -dynamic -o hello

## Load as a module in GHCi

    $ ghci
    Prelude> :l hello.hs
