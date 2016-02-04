
struct PyByteArrayObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var ob_size: Py_ssize_t
  var ob_exports: Int32
  var ob_alloc: Py_ssize_t
  var ob_bytes: UnsafeMutablePointer<Int8>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, ob_size: Py_ssize_t, ob_exports: Int32, ob_alloc: Py_ssize_t, ob_bytes: UnsafeMutablePointer<Int8>)
}
var PyByteArray_Type: PyTypeObject
var PyByteArrayIter_Type: PyTypeObject
func PyByteArray_FromObject(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyByteArray_Concat(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyByteArray_FromStringAndSize(_: UnsafePointer<Int8>, _: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyByteArray_Size(_: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PyByteArray_AsString(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<Int8>
func PyByteArray_Resize(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t) -> Int32
