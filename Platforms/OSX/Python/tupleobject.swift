
struct PyTupleObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var ob_size: Py_ssize_t
  var ob_item: (UnsafeMutablePointer<PyObject>)
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, ob_size: Py_ssize_t, ob_item: (UnsafeMutablePointer<PyObject>))
}
var PyTuple_Type: PyTypeObject
func PyTuple_New(size: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyTuple_Size(_: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PyTuple_GetItem(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyTuple_SetItem(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyTuple_GetSlice(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t, _: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func _PyTuple_Resize(_: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _: Py_ssize_t) -> Int32
func _PyTuple_MaybeUntrack(_: UnsafeMutablePointer<PyObject>)
func PyTuple_ClearFreeList() -> Int32
