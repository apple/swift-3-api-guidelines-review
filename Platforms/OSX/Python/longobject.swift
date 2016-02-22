
typealias PyLongObject = _longobject
var PyLong_Type: PyTypeObject
func PyLong_FromLong(_ _: Int) -> UnsafeMutablePointer<PyObject>
func PyLong_FromUnsignedLong(_ _: UInt) -> UnsafeMutablePointer<PyObject>
func PyLong_FromDouble(_ _: Double) -> UnsafeMutablePointer<PyObject>
func PyLong_FromSize_t(_ _: Int) -> UnsafeMutablePointer<PyObject>
func PyLong_FromSsize_t(_ _: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyLong_AsLong(_ _: UnsafeMutablePointer<PyObject>) -> Int
func PyLong_AsLongAndOverflow(_ _: UnsafeMutablePointer<PyObject>, _ _: UnsafeMutablePointer<Int32>) -> Int
func PyLong_AsUnsignedLong(_ _: UnsafeMutablePointer<PyObject>) -> UInt
func PyLong_AsUnsignedLongMask(_ _: UnsafeMutablePointer<PyObject>) -> UInt
func PyLong_AsSsize_t(_ _: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func _PyLong_AsInt(_ _: UnsafeMutablePointer<PyObject>) -> Int32
func PyLong_GetInfo() -> UnsafeMutablePointer<PyObject>
var _PyLong_DigitValue: (Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32)
func _PyLong_Frexp(_ a: UnsafeMutablePointer<PyLongObject>, _ e: UnsafeMutablePointer<Py_ssize_t>) -> Double
func PyLong_AsDouble(_ _: UnsafeMutablePointer<PyObject>) -> Double
func PyLong_FromVoidPtr(_ _: UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<PyObject>
func PyLong_AsVoidPtr(_ _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<Void>
func PyLong_FromLongLong(_ _: Int64) -> UnsafeMutablePointer<PyObject>
func PyLong_FromUnsignedLongLong(_ _: UInt64) -> UnsafeMutablePointer<PyObject>
func PyLong_AsLongLong(_ _: UnsafeMutablePointer<PyObject>) -> Int64
func PyLong_AsUnsignedLongLong(_ _: UnsafeMutablePointer<PyObject>) -> UInt64
func PyLong_AsUnsignedLongLongMask(_ _: UnsafeMutablePointer<PyObject>) -> UInt64
func PyLong_AsLongLongAndOverflow(_ _: UnsafeMutablePointer<PyObject>, _ _: UnsafeMutablePointer<Int32>) -> Int64
func PyLong_FromString(_ _: UnsafeMutablePointer<Int8>, _ _: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>, _ _: Int32) -> UnsafeMutablePointer<PyObject>
func PyLong_FromUnicode(_ _: UnsafeMutablePointer<Py_UNICODE>, _ _: Py_ssize_t, _ _: Int32) -> UnsafeMutablePointer<PyObject>
func _PyLong_Sign(_ v: UnsafeMutablePointer<PyObject>) -> Int32
func _PyLong_NumBits(_ v: UnsafeMutablePointer<PyObject>) -> Int
func _PyLong_FromByteArray(_ bytes: UnsafePointer<UInt8>, _ n: Int, _ little_endian: Int32, _ is_signed: Int32) -> UnsafeMutablePointer<PyObject>
func _PyLong_AsByteArray(_ v: UnsafeMutablePointer<PyLongObject>, _ bytes: UnsafeMutablePointer<UInt8>, _ n: Int, _ little_endian: Int32, _ is_signed: Int32) -> Int32
func _PyLong_Format(_ aa: UnsafeMutablePointer<PyObject>, _ base: Int32, _ addL: Int32, _ newstyle: Int32) -> UnsafeMutablePointer<PyObject>
func _PyLong_FormatAdvanced(_ obj: UnsafeMutablePointer<PyObject>, _ format_spec: UnsafeMutablePointer<Int8>, _ format_spec_len: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
