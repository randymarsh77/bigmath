# BigMath
Swift native numerics for arbitrary precision using MPFR and GMP

## Why?

I recently tried to work on a project that required arbitrary precision types. I was hard pressed to find a desirable solution for floating point types, and even had limited success with integer types. Forget about easily working with and converting between both types. Luckily, Swift has an extremely robust protocol hierarchy for declaring new numeric types. And, there are some mature, fully featured, C libraries to handle this kind of thing. The goal is to work with arbitary precision as effortlessy as computing with `double`s and `int`s.

## Disclaimer

Probably throws a lot of `NotImplemented` errors.

## Usage

```
import BigMath

let x: BigFloat = 1
let y: BigFloat = 2
let z = x * y
print(z.render(.base10))
```

## Contributing and Development

Implementations should be filled in as needed. The goal is to be test-driven. Currently needs more robust tests.

## License

MPFR and GMP are licensed under GPL. This project carries that licesnse, and adds an additional MIT if that's legal.
