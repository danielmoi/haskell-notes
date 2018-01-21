# Basic

## Expressions
An expression is a piece of code that returns a value.

In Haskell, every function and expression must RETURN something.

## Defintiions
When a function doesn't take any parameters, it's called a DEFINITION (or a
NAME)

## Data Structures
- Lists
  - homogenous (stores elements of the same TYPE)
## Types
- `Int`
- `Float`
- `Double`
- `Char`
- `Bool`



## Type declaration


## Typeclass
- a typeclass is a sort of interface that defines some behaviour
- if "a type is part of a typeclass", this means:
  - "it supports and implements the behaviour the typeclass describes"

## Infix
The `==` operator is actually a function.

So are `+`, `-`, `*`, `/` - and pretty much all operators.

If a function is comprised only of special characters, it is considered an INFIX function by default

We surround an infix function in parentheses if we want to
- examine its type
- pass it to another function
- call it as a PREFIX function


## Class constraint
```
ghci> :t (==)
(==) :: (Eq a) => a -> a -> Bool
```

Everything before the `=>` symbol is called a CLASS CONSTRAINT


The type of `a` must be a member of the `Eq` class
