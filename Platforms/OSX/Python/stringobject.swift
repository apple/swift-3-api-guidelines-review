
struct PyStringObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var ob_size: Py_ssize_t
  var ob_shash: Int
  var ob_sstate: Int32
  var ob_sval: (Int8)
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, ob_size: Py_ssize_t, ob_shash: Int, ob_sstate: Int32, ob_sval: (Int8))
}
var SSTATE_NOT_INTERNED: Int32 { get }
var SSTATE_INTERNED_MORTAL: Int32 { get }
var SSTATE_INTERNED_IMMORTAL: Int32 { get }
var PyBaseString_Type: PyTypeObject
var PyString_Type: PyTypeObject
func PyString_FromStringAndSize(_: UnsafePointer<Int8>, _: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyString_FromString(_: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyString_FromFormatV(_: UnsafePointer<Int8>, _: CVaListPointer) -> UnsafeMutablePointer<PyObject>
func PyString_Size(_: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PyString_AsString(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<Int8>
func PyString_Repr(_: UnsafeMutablePointer<PyObject>, _: Int32) -> UnsafeMutablePointer<PyObject>
func PyString_Concat(_: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _: UnsafeMutablePointer<PyObject>)
func PyString_ConcatAndDel(_: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _: UnsafeMutablePointer<PyObject>)
func _PyString_Resize(_: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _: Py_ssize_t) -> Int32
func _PyString_Eq(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyString_Format(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func _PyString_FormatLong(_: UnsafeMutablePointer<PyObject>, _: Int32, _: Int32, _: Int32, _: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>, _: UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<PyObject>
func PyString_DecodeEscape(_: UnsafePointer<Int8>, _: Py_ssize_t, _: UnsafePointer<Int8>, _: Py_ssize_t, _: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyString_InternInPlace(_: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>)
func PyString_InternImmortal(_: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>)
func PyString_InternFromString(_: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func _Py_ReleaseInternedStrings()
func _PyString_Join(sep: UnsafeMutablePointer<PyObject>, _ x: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyString_Decode(s: UnsafePointer<Int8>, _ size: Py_ssize_t, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyString_Encode(s: UnsafePointer<Int8>, _ size: Py_ssize_t, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyString_AsEncodedObject(str: UnsafeMutablePointer<PyObject>, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyString_AsEncodedString(str: UnsafeMutablePointer<PyObject>, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyString_AsDecodedObject(str: UnsafeMutablePointer<PyObject>, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyString_AsDecodedString(str: UnsafeMutablePointer<PyObject>, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyString_AsStringAndSize(obj: UnsafeMutablePointer<PyObject>, _ s: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>, _ len: UnsafeMutablePointer<Py_ssize_t>) -> Int32
func _PyString_InsertThousandsGroupingLocale(buffer: UnsafeMutablePointer<Int8>, _ n_buffer: Py_ssize_t, _ digits: UnsafeMutablePointer<Int8>, _ n_digits: Py_ssize_t, _ min_width: Py_ssize_t) -> Py_ssize_t
func _PyString_InsertThousandsGrouping(buffer: UnsafeMutablePointer<Int8>, _ n_buffer: Py_ssize_t, _ digits: UnsafeMutablePointer<Int8>, _ n_digits: Py_ssize_t, _ min_width: Py_ssize_t, _ grouping: UnsafePointer<Int8>, _ thousands_sep: UnsafePointer<Int8>) -> Py_ssize_t
func _PyBytes_FormatAdvanced(obj: UnsafeMutablePointer<PyObject>, _ format_spec: UnsafeMutablePointer<Int8>, _ format_spec_len: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
