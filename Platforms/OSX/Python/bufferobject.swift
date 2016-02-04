
var PyBuffer_Type: PyTypeObject
var Py_END_OF_BUFFER: Int32 { get }
func PyBuffer_FromObject(base: UnsafeMutablePointer<PyObject>, _ offset: Py_ssize_t, _ size: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyBuffer_FromReadWriteObject(base: UnsafeMutablePointer<PyObject>, _ offset: Py_ssize_t, _ size: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyBuffer_FromMemory(ptr: UnsafeMutablePointer<Void>, _ size: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyBuffer_FromReadWriteMemory(ptr: UnsafeMutablePointer<Void>, _ size: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyBuffer_New(size: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
