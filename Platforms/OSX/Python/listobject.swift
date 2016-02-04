
struct PyListObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var ob_size: Py_ssize_t
  var ob_item: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>
  var allocated: Py_ssize_t
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, ob_size: Py_ssize_t, ob_item: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, allocated: Py_ssize_t)
}
var PyList_Type: PyTypeObject
func PyList_New(size: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyList_Size(_: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PyList_GetItem(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyList_SetItem(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyList_Insert(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyList_Append(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyList_GetSlice(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t, _: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyList_SetSlice(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t, _: Py_ssize_t, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyList_Sort(_: UnsafeMutablePointer<PyObject>) -> Int32
func PyList_Reverse(_: UnsafeMutablePointer<PyObject>) -> Int32
func PyList_AsTuple(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func _PyList_Extend(_: UnsafeMutablePointer<PyListObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
