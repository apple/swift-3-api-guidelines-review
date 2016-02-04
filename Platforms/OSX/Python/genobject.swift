
struct PyGenObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var gi_frame: UnsafeMutablePointer<_frame>
  var gi_running: Int32
  var gi_code: UnsafeMutablePointer<PyObject>
  var gi_weakreflist: UnsafeMutablePointer<PyObject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, gi_frame: UnsafeMutablePointer<_frame>, gi_running: Int32, gi_code: UnsafeMutablePointer<PyObject>, gi_weakreflist: UnsafeMutablePointer<PyObject>)
}
var PyGen_Type: PyTypeObject
func PyGen_New(_: UnsafeMutablePointer<_frame>) -> UnsafeMutablePointer<PyObject>
func PyGen_NeedsFinalizing(_: UnsafeMutablePointer<PyGenObject>) -> Int32
