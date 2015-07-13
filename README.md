# Cloud Haskell examples

[![Build Status](https://travis-ci.org/mboes/zurihac15-talk-examples.svg?branch=master)](https://travis-ci.org/mboes/zurihac15-talk-examples)

## Collatz

Toy distributed computation example: print each element of the collatz
sequence, each one being computed on a different machine. This is an
illustration of mobile computation, since the continuation travels
from machine to machine.

To build:

```
$ stack build
```

To launch:

```
stack exec -- collatz slave localhost 7001 &
stack exec -- collatz slave localhost 7002 &
stack exec -- collatz master localhost 7000
```

or use the provided `launch.sh` script. The master will wait at the
terminal until you press the RETURN key, at which point all slaves
will be terminated and the master will exit.
