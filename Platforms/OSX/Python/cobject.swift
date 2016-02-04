
var PyCObject_Type: PyTypeObject
func PyCObject_FromVoidPtr(cobj: UnsafeMutablePointer<Void>, _ destruct: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!) -> UnsafeMutablePointer<PyObject>
func PyCObject_FromVoidPtrAndDesc(cobj: UnsafeMutablePointer<Void>, _ desc: UnsafeMutablePointer<Void>, _ destruct: (@convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void)!) -> UnsafeMutablePointer<PyObject>
func PyCObject_AsVoidPtr(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<Void>
func PyCObject_GetDesc(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<Void>
func PyCObject_Import(module_name: UnsafeMutablePointer<Int8>, _ cobject_name: UnsafeMutablePointer<Int8>) -> UnsafeMutablePointer<Void>
func PyCObject_SetVoidPtr(self: UnsafeMutablePointer<PyObject>, _ cobj: UnsafeMutablePointer<Void>) -> Int32
struct PyCObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var cobject: UnsafeMutablePointer<Void>
  var desc: UnsafeMutablePointer<Void>
  var destructor: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, cobject: UnsafeMutablePointer<Void>, desc: UnsafeMutablePointer<Void>, destructor: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!)
}
