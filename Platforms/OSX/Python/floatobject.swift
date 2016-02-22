
struct PyFloatObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var ob_fval: Double
  init()
  init(ob_refcnt ob_refcnt: Py_ssize_t, ob_type ob_type: UnsafeMutablePointer<_typeobject>, ob_fval ob_fval: Double)
}
var PyFloat_Type: PyTypeObject
var PyFloat_STR_PRECISION: Int32 { get }
func PyFloat_GetMax() -> Double
func PyFloat_GetMin() -> Double
func PyFloat_GetInfo() -> UnsafeMutablePointer<PyObject>
func PyFloat_FromString(_ _: UnsafeMutablePointer<PyObject>, _ junk: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> UnsafeMutablePointer<PyObject>
func PyFloat_FromDouble(_ _: Double) -> UnsafeMutablePointer<PyObject>
func PyFloat_AsDouble(_ _: UnsafeMutablePointer<PyObject>) -> Double
func PyFloat_AsReprString(_ _: UnsafeMutablePointer<Int8>, _ v: UnsafeMutablePointer<PyFloatObject>)
func PyFloat_AsString(_ _: UnsafeMutablePointer<Int8>, _ v: UnsafeMutablePointer<PyFloatObject>)
func _PyFloat_Pack4(_ x: Double, _ p: UnsafeMutablePointer<UInt8>, _ le: Int32) -> Int32
func _PyFloat_Pack8(_ x: Double, _ p: UnsafeMutablePointer<UInt8>, _ le: Int32) -> Int32
func _PyFloat_Digits(_ buf: UnsafeMutablePointer<Int8>, _ v: Double, _ signum: UnsafeMutablePointer<Int32>) -> Int32
func _PyFloat_DigitsInit()
func _PyFloat_Unpack4(_ p: UnsafePointer<UInt8>, _ le: Int32) -> Double
func _PyFloat_Unpack8(_ p: UnsafePointer<UInt8>, _ le: Int32) -> Double
func PyFloat_ClearFreeList() -> Int32
func _PyFloat_FormatAdvanced(_ obj: UnsafeMutablePointer<PyObject>, _ format_spec: UnsafeMutablePointer<Int8>, _ format_spec_len: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func _Py_double_round(_ x: Double, _ ndigits: Int32) -> UnsafeMutablePointer<PyObject>
