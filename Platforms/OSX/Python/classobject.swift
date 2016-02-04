
struct PyClassObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var cl_bases: UnsafeMutablePointer<PyObject>
  var cl_dict: UnsafeMutablePointer<PyObject>
  var cl_name: UnsafeMutablePointer<PyObject>
  var cl_getattr: UnsafeMutablePointer<PyObject>
  var cl_setattr: UnsafeMutablePointer<PyObject>
  var cl_delattr: UnsafeMutablePointer<PyObject>
  var cl_weakreflist: UnsafeMutablePointer<PyObject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, cl_bases: UnsafeMutablePointer<PyObject>, cl_dict: UnsafeMutablePointer<PyObject>, cl_name: UnsafeMutablePointer<PyObject>, cl_getattr: UnsafeMutablePointer<PyObject>, cl_setattr: UnsafeMutablePointer<PyObject>, cl_delattr: UnsafeMutablePointer<PyObject>, cl_weakreflist: UnsafeMutablePointer<PyObject>)
}
struct PyInstanceObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var in_class: UnsafeMutablePointer<PyClassObject>
  var in_dict: UnsafeMutablePointer<PyObject>
  var in_weakreflist: UnsafeMutablePointer<PyObject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, in_class: UnsafeMutablePointer<PyClassObject>, in_dict: UnsafeMutablePointer<PyObject>, in_weakreflist: UnsafeMutablePointer<PyObject>)
}
struct PyMethodObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var im_func: UnsafeMutablePointer<PyObject>
  var im_self: UnsafeMutablePointer<PyObject>
  var im_class: UnsafeMutablePointer<PyObject>
  var im_weakreflist: UnsafeMutablePointer<PyObject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, im_func: UnsafeMutablePointer<PyObject>, im_self: UnsafeMutablePointer<PyObject>, im_class: UnsafeMutablePointer<PyObject>, im_weakreflist: UnsafeMutablePointer<PyObject>)
}
var PyClass_Type: PyTypeObject
var PyInstance_Type: PyTypeObject
var PyMethod_Type: PyTypeObject
func PyClass_New(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyInstance_New(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyInstance_NewRaw(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyMethod_New(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyMethod_Function(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyMethod_Self(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyMethod_Class(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func _PyInstance_Lookup(pinst: UnsafeMutablePointer<PyObject>, _ name: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyClass_IsSubclass(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyMethod_ClearFreeList() -> Int32
