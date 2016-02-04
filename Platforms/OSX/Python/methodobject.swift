
var PyCFunction_Type: PyTypeObject
typealias PyCFunction = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
typealias PyCFunctionWithKeywords = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
typealias PyNoArgsFunction = @convention(c) (UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyCFunction_GetFunction(_: UnsafeMutablePointer<PyObject>) -> PyCFunction!
func PyCFunction_GetSelf(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyCFunction_GetFlags(_: UnsafeMutablePointer<PyObject>) -> Int32
func PyCFunction_Call(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
struct PyMethodDef {
  var ml_name: UnsafePointer<Int8>
  var ml_meth: PyCFunction!
  var ml_flags: Int32
  var ml_doc: UnsafePointer<Int8>
  init()
  init(ml_name: UnsafePointer<Int8>, ml_meth: PyCFunction!, ml_flags: Int32, ml_doc: UnsafePointer<Int8>)
}
func Py_FindMethod(_: UnsafeMutablePointer<PyMethodDef>, _: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyCFunction_NewEx(_: UnsafeMutablePointer<PyMethodDef>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
var METH_OLDARGS: Int32 { get }
var METH_VARARGS: Int32 { get }
var METH_KEYWORDS: Int32 { get }
var METH_NOARGS: Int32 { get }
var METH_O: Int32 { get }
var METH_CLASS: Int32 { get }
var METH_STATIC: Int32 { get }
var METH_COEXIST: Int32 { get }
struct PyMethodChain {
  var methods: UnsafeMutablePointer<PyMethodDef>
  var link: UnsafeMutablePointer<PyMethodChain>
  init()
  init(methods: UnsafeMutablePointer<PyMethodDef>, link: UnsafeMutablePointer<PyMethodChain>)
}
func Py_FindMethodInChain(_: UnsafeMutablePointer<PyMethodChain>, _: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
struct PyCFunctionObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var m_ml: UnsafeMutablePointer<PyMethodDef>
  var m_self: UnsafeMutablePointer<PyObject>
  var m_module: UnsafeMutablePointer<PyObject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, m_ml: UnsafeMutablePointer<PyMethodDef>, m_self: UnsafeMutablePointer<PyObject>, m_module: UnsafeMutablePointer<PyObject>)
}
func PyCFunction_ClearFreeList() -> Int32
