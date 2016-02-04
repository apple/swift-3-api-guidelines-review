
var _Py_EllipsisObject: PyObject
struct PySliceObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var start: UnsafeMutablePointer<PyObject>
  var stop: UnsafeMutablePointer<PyObject>
  var step: UnsafeMutablePointer<PyObject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, start: UnsafeMutablePointer<PyObject>, stop: UnsafeMutablePointer<PyObject>, step: UnsafeMutablePointer<PyObject>)
}
var PySlice_Type: PyTypeObject
var PyEllipsis_Type: PyTypeObject
func PySlice_New(start: UnsafeMutablePointer<PyObject>, _ stop: UnsafeMutablePointer<PyObject>, _ step: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func _PySlice_FromIndices(start: Py_ssize_t, _ stop: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PySlice_GetIndices(r: UnsafeMutablePointer<PySliceObject>, _ length: Py_ssize_t, _ start: UnsafeMutablePointer<Py_ssize_t>, _ stop: UnsafeMutablePointer<Py_ssize_t>, _ step: UnsafeMutablePointer<Py_ssize_t>) -> Int32
func PySlice_GetIndicesEx(r: UnsafeMutablePointer<PySliceObject>, _ length: Py_ssize_t, _ start: UnsafeMutablePointer<Py_ssize_t>, _ stop: UnsafeMutablePointer<Py_ssize_t>, _ step: UnsafeMutablePointer<Py_ssize_t>, _ slicelength: UnsafeMutablePointer<Py_ssize_t>) -> Int32
