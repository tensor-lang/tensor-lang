# tensor-lang
Tensor language for ML, AI. On-prem and cloud ready.

# Main Features

* **Designed for tensors**: convenient high-level constructs, while allowing explicit loops and iterators
* **Speed**: Faster than Python. Faster than Julia. Faster than Node and Java.  Faster than C.
* **Compatibility**: Easy interop with Python, C/C++, and Julia.
* **Incompatibility**: Not compatible with FORTRAN 77 or Spark.
* **Runs everywhere**: Supports laptops, mainframes, grids and clusters.

## Examples

__Python RPC__

Tensor-lang imports directly into Python using [Numba](http://numba.pydata.org)'s "fFFi" backend.  This ensures that Python code expecting Numpy, Pandas, dask, xarray objects will just work, with zero marshalling overhead.  (xtensor is not currently supported because they are too new, and also they have "tensor" in their name and this messes up our compiler.)

```
import tensorlang
ai_tensors = tensorlang.load('ai_tensors.tl')
py_result = ai_tensors.predict()  # returns Numpy array
```

__Julia RPC__
```
@pyimport tensorlang
ai_tensors = tensorlang.load('ai_tensors.tl')
jl_result = ai_tensors.predict()
```

# FAQ

_Q: Is this real?_

A: Amazingly so.

_Q: How do I get it?_

A: `conda install tensor-lang`

_Q: How come so many of the source directories seem to be empty?_

A: There seems to be a small bug in Github's rendering of `.tl` syntax files.  We're working on resolving it with them.
