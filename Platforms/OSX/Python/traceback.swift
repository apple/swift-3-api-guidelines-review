
struct _traceback {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var tb_next: UnsafeMutablePointer<_traceback>
  var tb_frame: UnsafeMutablePointer<_frame>
  var tb_lasti: Int32
  var tb_lineno: Int32
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, tb_next: UnsafeMutablePointer<_traceback>, tb_frame: UnsafeMutablePointer<_frame>, tb_lasti: Int32, tb_lineno: Int32)
}
typealias PyTracebackObject = _traceback
func PyTraceBack_Here(_: UnsafeMutablePointer<_frame>) -> Int32
func PyTraceBack_Print(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> Int32
func _Py_DisplaySourceLine(_: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>, _: Int32, _: Int32) -> Int32
var PyTraceBack_Type: PyTypeObject
