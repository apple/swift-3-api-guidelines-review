
struct PyFunctionObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var func_code: UnsafeMutablePointer<PyObject>
  var func_globals: UnsafeMutablePointer<PyObject>
  var func_defaults: UnsafeMutablePointer<PyObject>
  var func_closure: UnsafeMutablePointer<PyObject>
  var func_doc: UnsafeMutablePointer<PyObject>
  var func_name: UnsafeMutablePointer<PyObject>
  var func_dict: UnsafeMutablePointer<PyObject>
  var func_weakreflist: UnsafeMutablePointer<PyObject>
  var func_module: UnsafeMutablePointer<PyObject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, func_code: UnsafeMutablePointer<PyObject>, func_globals: UnsafeMutablePointer<PyObject>, func_defaults: UnsafeMutablePointer<PyObject>, func_closure: UnsafeMutablePointer<PyObject>, func_doc: UnsafeMutablePointer<PyObject>, func_name: UnsafeMutablePointer<PyObject>, func_dict: UnsafeMutablePointer<PyObject>, func_weakreflist: UnsafeMutablePointer<PyObject>, func_module: UnsafeMutablePointer<PyObject>)
}
var PyFunction_Type: PyTypeObject
func PyFunction_New(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyFunction_GetCode(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyFunction_GetGlobals(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyFunction_GetModule(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyFunction_GetDefaults(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyFunction_SetDefaults(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyFunction_GetClosure(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyFunction_SetClosure(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> Int32
var PyClassMethod_Type: PyTypeObject
var PyStaticMethod_Type: PyTypeObject
func PyClassMethod_New(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyStaticMethod_New(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
