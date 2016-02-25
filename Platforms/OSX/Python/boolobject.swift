
typealias PyBoolObject = PyIntObject
var PyBool_Type: PyTypeObject
var _Py_ZeroStruct: PyIntObject
var _Py_TrueStruct: PyIntObject
func PyBool_FromLong(_ _: Int) -> UnsafeMutablePointer<PyObject>
