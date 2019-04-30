# Description:
#   Build rule for Python and Numpy.
#   This rule works for Debian and Ubuntu. Other platforms might keep the
#   headers in different places, cf. 'How to build DeepMind Lab' in build.md.

# cc_library(
#     name = "python",
#     hdrs = glob(["include/python2.7/*.h"]),
#     includes = ["include/python2.7"],
#     visibility = ["//visibility:public"],
# )

# Note(xin): numpy path should be `python -c 'import numpy as np; print(np.get_include())'`
cc_library(
    name = "python",
    hdrs = glob([
        "include/python3.6m/*.h",
        "lib/python3.6/site-packages/numpy/core/include/numpy/*.h",
    ]),
    includes = [
        "include/python3.6m/",
        "lib/python3.6/site-packages/numpy/core/include/",
    ],
    visibility = ["//visibility:public"],
)