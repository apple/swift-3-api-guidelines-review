
func PyEval_EvalCode(_: UnsafeMutablePointer<PyCodeObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyEval_EvalCodeEx(co: UnsafeMutablePointer<PyCodeObject>, _ globals: UnsafeMutablePointer<PyObject>, _ locals: UnsafeMutablePointer<PyObject>, _ args: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _ argc: Int32, _ kwds: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _ kwdc: Int32, _ defs: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _ defc: Int32, _ closure: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func _PyEval_CallTracing(func: UnsafeMutablePointer<PyObject>, _ args: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
