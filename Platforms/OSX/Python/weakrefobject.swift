
typealias PyWeakReference = _PyWeakReference
struct _PyWeakReference {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var wr_object: UnsafeMutablePointer<PyObject>
  var wr_callback: UnsafeMutablePointer<PyObject>
  var hash: Int
  var wr_prev: UnsafeMutablePointer<PyWeakReference>
  var wr_next: UnsafeMutablePointer<PyWeakReference>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, wr_object: UnsafeMutablePointer<PyObject>, wr_callback: UnsafeMutablePointer<PyObject>, hash: Int, wr_prev: UnsafeMutablePointer<PyWeakReference>, wr_next: UnsafeMutablePointer<PyWeakReference>)
}
var _PyWeakref_RefType: PyTypeObject
var _PyWeakref_ProxyType: PyTypeObject
var _PyWeakref_CallableProxyType: PyTypeObject
func PyWeakref_NewRef(ob: UnsafeMutablePointer<PyObject>, _ callback: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyWeakref_NewProxy(ob: UnsafeMutablePointer<PyObject>, _ callback: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyWeakref_GetObject(ref: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func _PyWeakref_GetWeakrefCount(head: UnsafeMutablePointer<PyWeakReference>) -> Py_ssize_t
func _PyWeakref_ClearRef(self: UnsafeMutablePointer<PyWeakReference>)
