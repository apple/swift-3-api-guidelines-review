
var PyModule_Type: PyTypeObject
func PyModule_New(_ _: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyModule_GetDict(_ _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyModule_GetName(_ _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<Int8>
func PyModule_GetFilename(_ _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<Int8>
func _PyModule_Clear(_ _: UnsafeMutablePointer<PyObject>)
