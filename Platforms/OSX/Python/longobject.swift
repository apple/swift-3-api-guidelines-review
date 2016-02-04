
typealias PyLongObject = _longobject
var PyLong_Type: PyTypeObject
func PyLong_FromLong(_: Int) -> UnsafeMutablePointer<PyObject>
func PyLong_FromUnsignedLong(_: UInt) -> UnsafeMutablePointer<PyObject>
func PyLong_FromDouble(_: Double) -> UnsafeMutablePointer<PyObject>
func PyLong_FromSize_t(_: Int) -> UnsafeMutablePointer<PyObject>
func PyLong_FromSsize_t(_: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyLong_AsLong(_: UnsafeMutablePointer<PyObject>) -> Int
func PyLong_AsLongAndOverflow(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<Int32>) -> Int
func PyLong_AsUnsignedLong(_: UnsafeMutablePointer<PyObject>) -> UInt
func PyLong_AsUnsignedLongMask(_: UnsafeMutablePointer<PyObject>) -> UInt
func PyLong_AsSsize_t(_: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func _PyLong_AsInt(_: UnsafeMutablePointer<PyObject>) -> Int32
func PyLong_GetInfo() -> UnsafeMutablePointer<PyObject>
var _PyLong_DigitValue: (Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32)
func _PyLong_Frexp(a: UnsafeMutablePointer<PyLongObject>, _ e: UnsafeMutablePointer<Py_ssize_t>) -> Double
func PyLong_AsDouble(_: UnsafeMutablePointer<PyObject>) -> Double
func PyLong_FromVoidPtr(_: UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<PyObject>
func PyLong_AsVoidPtr(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<Void>
func PyLong_FromLongLong(_: Int64) -> UnsafeMutablePointer<PyObject>
func PyLong_FromUnsignedLongLong(_: UInt64) -> UnsafeMutablePointer<PyObject>
func PyLong_AsLongLong(_: UnsafeMutablePointer<PyObject>) -> Int64
func PyLong_AsUnsignedLongLong(_: UnsafeMutablePointer<PyObject>) -> UInt64
func PyLong_AsUnsignedLongLongMask(_: UnsafeMutablePointer<PyObject>) -> UInt64
func PyLong_AsLongLongAndOverflow(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<Int32>) -> Int64
func PyLong_FromString(_: UnsafeMutablePointer<Int8>, _: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>, _: Int32) -> UnsafeMutablePointer<PyObject>
func PyLong_FromUnicode(_: UnsafeMutablePointer<Py_UNICODE>, _: Py_ssize_t, _: Int32) -> UnsafeMutablePointer<PyObject>
func _PyLong_Sign(v: UnsafeMutablePointer<PyObject>) -> Int32
func _PyLong_NumBits(v: UnsafeMutablePointer<PyObject>) -> Int
func _PyLong_FromByteArray(bytes: UnsafePointer<UInt8>, _ n: Int, _ little_endian: Int32, _ is_signed: Int32) -> UnsafeMutablePointer<PyObject>
func _PyLong_AsByteArray(v: UnsafeMutablePointer<PyLongObject>, _ bytes: UnsafeMutablePointer<UInt8>, _ n: Int, _ little_endian: Int32, _ is_signed: Int32) -> Int32
func _PyLong_Format(aa: UnsafeMutablePointer<PyObject>, _ base: Int32, _ addL: Int32, _ newstyle: Int32) -> UnsafeMutablePointer<PyObject>
func _PyLong_FormatAdvanced(obj: UnsafeMutablePointer<PyObject>, _ format_spec: UnsafeMutablePointer<Int8>, _ format_spec_len: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
