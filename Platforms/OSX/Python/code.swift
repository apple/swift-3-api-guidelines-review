
struct PyCodeObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var co_argcount: Int32
  var co_nlocals: Int32
  var co_stacksize: Int32
  var co_flags: Int32
  var co_code: UnsafeMutablePointer<PyObject>
  var co_consts: UnsafeMutablePointer<PyObject>
  var co_names: UnsafeMutablePointer<PyObject>
  var co_varnames: UnsafeMutablePointer<PyObject>
  var co_freevars: UnsafeMutablePointer<PyObject>
  var co_cellvars: UnsafeMutablePointer<PyObject>
  var co_filename: UnsafeMutablePointer<PyObject>
  var co_name: UnsafeMutablePointer<PyObject>
  var co_firstlineno: Int32
  var co_lnotab: UnsafeMutablePointer<PyObject>
  var co_zombieframe: UnsafeMutablePointer<Void>
  var co_weakreflist: UnsafeMutablePointer<PyObject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, co_argcount: Int32, co_nlocals: Int32, co_stacksize: Int32, co_flags: Int32, co_code: UnsafeMutablePointer<PyObject>, co_consts: UnsafeMutablePointer<PyObject>, co_names: UnsafeMutablePointer<PyObject>, co_varnames: UnsafeMutablePointer<PyObject>, co_freevars: UnsafeMutablePointer<PyObject>, co_cellvars: UnsafeMutablePointer<PyObject>, co_filename: UnsafeMutablePointer<PyObject>, co_name: UnsafeMutablePointer<PyObject>, co_firstlineno: Int32, co_lnotab: UnsafeMutablePointer<PyObject>, co_zombieframe: UnsafeMutablePointer<Void>, co_weakreflist: UnsafeMutablePointer<PyObject>)
}
var CO_OPTIMIZED: Int32 { get }
var CO_NEWLOCALS: Int32 { get }
var CO_VARARGS: Int32 { get }
var CO_VARKEYWORDS: Int32 { get }
var CO_NESTED: Int32 { get }
var CO_GENERATOR: Int32 { get }
var CO_NOFREE: Int32 { get }
var CO_FUTURE_DIVISION: Int32 { get }
var CO_FUTURE_ABSOLUTE_IMPORT: Int32 { get }
var CO_FUTURE_WITH_STATEMENT: Int32 { get }
var CO_FUTURE_PRINT_FUNCTION: Int32 { get }
var CO_FUTURE_UNICODE_LITERALS: Int32 { get }
var CO_MAXBLOCKS: Int32 { get }
var PyCode_Type: PyTypeObject
func PyCode_New(_: Int32, _: Int32, _: Int32, _: Int32, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: Int32, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyCodeObject>
func PyCode_NewEmpty(filename: UnsafePointer<Int8>, _ funcname: UnsafePointer<Int8>, _ firstlineno: Int32) -> UnsafeMutablePointer<PyCodeObject>
func PyCode_Addr2Line(_: UnsafeMutablePointer<PyCodeObject>, _: Int32) -> Int32
struct _addr_pair {
  var ap_lower: Int32
  var ap_upper: Int32
  init()
  init(ap_lower: Int32, ap_upper: Int32)
}
typealias PyAddrPair = _addr_pair
func _PyCode_CheckLineNumber(co: UnsafeMutablePointer<PyCodeObject>, _ lasti: Int32, _ bounds: UnsafeMutablePointer<PyAddrPair>) -> Int32
func PyCode_Optimize(code: UnsafeMutablePointer<PyObject>, _ consts: UnsafeMutablePointer<PyObject>, _ names: UnsafeMutablePointer<PyObject>, _ lineno_obj: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
