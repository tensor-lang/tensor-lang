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

_Q: Why isn't this just FORTRAN?_
A: We deviate significantly from the FORTRAN 2008/2010 language specification. One major break is that we do not support FORTRAN 77 constructs.  Additionally, we do not guarantee that we will support FORTRAN 2015/2018 (especially if they do not fix their off-by-3 error.)

_Q: But this looks a lot like FORTRAN._
A: Well, your Javascript looks a lot like crap.

_Q: How do I get it?_
A: `conda install tensor-lang`

