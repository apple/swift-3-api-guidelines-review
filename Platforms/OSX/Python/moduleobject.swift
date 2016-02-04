
var PyModule_Type: PyTypeObject
func PyModule_New(_: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyModule_GetDict(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyModule_GetName(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<Int8>
func PyModule_GetFilename(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<Int8>
func _PyModule_Clear(_: UnsafeMutablePointer<PyObject>)
