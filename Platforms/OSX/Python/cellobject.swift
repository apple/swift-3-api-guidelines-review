
struct PyCellObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var ob_ref: UnsafeMutablePointer<PyObject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, ob_ref: UnsafeMutablePointer<PyObject>)
}
var PyCell_Type: PyTypeObject
func PyCell_New(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyCell_Get(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyCell_Set(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> Int32
