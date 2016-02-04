
struct PyBaseExceptionObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var dict: UnsafeMutablePointer<PyObject>
  var args: UnsafeMutablePointer<PyObject>
  var message: UnsafeMutablePointer<PyObject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, dict: UnsafeMutablePointer<PyObject>, args: UnsafeMutablePointer<PyObject>, message: UnsafeMutablePointer<PyObject>)
}
struct PySyntaxErrorObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var dict: UnsafeMutablePointer<PyObject>
  var args: UnsafeMutablePointer<PyObject>
  var message: UnsafeMutablePointer<PyObject>
  var msg: UnsafeMutablePointer<PyObject>
  var filename: UnsafeMutablePointer<PyObject>
  var lineno: UnsafeMutablePointer<PyObject>
  var offset: UnsafeMutablePointer<PyObject>
  var text: UnsafeMutablePointer<PyObject>
  var print_file_and_line: UnsafeMutablePointer<PyObject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, dict: UnsafeMutablePointer<PyObject>, args: UnsafeMutablePointer<PyObject>, message: UnsafeMutablePointer<PyObject>, msg: UnsafeMutablePointer<PyObject>, filename: UnsafeMutablePointer<PyObject>, lineno: UnsafeMutablePointer<PyObject>, offset: UnsafeMutablePointer<PyObject>, text: UnsafeMutablePointer<PyObject>, print_file_and_line: UnsafeMutablePointer<PyObject>)
}
struct PyUnicodeErrorObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var dict: UnsafeMutablePointer<PyObject>
  var args: UnsafeMutablePointer<PyObject>
  var message: UnsafeMutablePointer<PyObject>
  var encoding: UnsafeMutablePointer<PyObject>
  var object: UnsafeMutablePointer<PyObject>
  var start: Py_ssize_t
  var end: Py_ssize_t
  var reason: UnsafeMutablePointer<PyObject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, dict: UnsafeMutablePointer<PyObject>, args: UnsafeMutablePointer<PyObject>, message: UnsafeMutablePointer<PyObject>, encoding: UnsafeMutablePointer<PyObject>, object: UnsafeMutablePointer<PyObject>, start: Py_ssize_t, end: Py_ssize_t, reason: UnsafeMutablePointer<PyObject>)
}
struct PySystemExitObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var dict: UnsafeMutablePointer<PyObject>
  var args: UnsafeMutablePointer<PyObject>
  var message: UnsafeMutablePointer<PyObject>
  var code: UnsafeMutablePointer<PyObject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, dict: UnsafeMutablePointer<PyObject>, args: UnsafeMutablePointer<PyObject>, message: UnsafeMutablePointer<PyObject>, code: UnsafeMutablePointer<PyObject>)
}
struct PyEnvironmentErrorObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var dict: UnsafeMutablePointer<PyObject>
  var args: UnsafeMutablePointer<PyObject>
  var message: UnsafeMutablePointer<PyObject>
  var myerrno: UnsafeMutablePointer<PyObject>
  var strerror: UnsafeMutablePointer<PyObject>
  var filename: UnsafeMutablePointer<PyObject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, dict: UnsafeMutablePointer<PyObject>, args: UnsafeMutablePointer<PyObject>, message: UnsafeMutablePointer<PyObject>, myerrno: UnsafeMutablePointer<PyObject>, strerror: UnsafeMutablePointer<PyObject>, filename: UnsafeMutablePointer<PyObject>)
}
func PyErr_SetNone(_: UnsafeMutablePointer<PyObject>)
func PyErr_SetObject(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>)
func PyErr_SetString(_: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>)
func PyErr_Occurred() -> UnsafeMutablePointer<PyObject>
func PyErr_Clear()
func PyErr_Fetch(_: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>)
func PyErr_Restore(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>)
func PyErr_GivenExceptionMatches(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyErr_ExceptionMatches(_: UnsafeMutablePointer<PyObject>) -> Int32
func PyErr_NormalizeException(_: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>)
func _PyErr_ReplaceException(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>)
var PyExc_BaseException: UnsafeMutablePointer<PyObject>
var PyExc_Exception: UnsafeMutablePointer<PyObject>
var PyExc_StopIteration: UnsafeMutablePointer<PyObject>
var PyExc_GeneratorExit: UnsafeMutablePointer<PyObject>
var PyExc_StandardError: UnsafeMutablePointer<PyObject>
var PyExc_ArithmeticError: UnsafeMutablePointer<PyObject>
var PyExc_LookupError: UnsafeMutablePointer<PyObject>
var PyExc_AssertionError: UnsafeMutablePointer<PyObject>
var PyExc_AttributeError: UnsafeMutablePointer<PyObject>
var PyExc_EOFError: UnsafeMutablePointer<PyObject>
var PyExc_FloatingPointError: UnsafeMutablePointer<PyObject>
var PyExc_EnvironmentError: UnsafeMutablePointer<PyObject>
var PyExc_IOError: UnsafeMutablePointer<PyObject>
var PyExc_OSError: UnsafeMutablePointer<PyObject>
var PyExc_ImportError: UnsafeMutablePointer<PyObject>
var PyExc_IndexError: UnsafeMutablePointer<PyObject>
var PyExc_KeyError: UnsafeMutablePointer<PyObject>
var PyExc_KeyboardInterrupt: UnsafeMutablePointer<PyObject>
var PyExc_MemoryError: UnsafeMutablePointer<PyObject>
var PyExc_NameError: UnsafeMutablePointer<PyObject>
var PyExc_OverflowError: UnsafeMutablePointer<PyObject>
var PyExc_RuntimeError: UnsafeMutablePointer<PyObject>
var PyExc_NotImplementedError: UnsafeMutablePointer<PyObject>
var PyExc_SyntaxError: UnsafeMutablePointer<PyObject>
var PyExc_IndentationError: UnsafeMutablePointer<PyObject>
var PyExc_TabError: UnsafeMutablePointer<PyObject>
var PyExc_ReferenceError: UnsafeMutablePointer<PyObject>
var PyExc_SystemError: UnsafeMutablePointer<PyObject>
var PyExc_SystemExit: UnsafeMutablePointer<PyObject>
var PyExc_TypeError: UnsafeMutablePointer<PyObject>
var PyExc_UnboundLocalError: UnsafeMutablePointer<PyObject>
var PyExc_UnicodeError: UnsafeMutablePointer<PyObject>
var PyExc_UnicodeEncodeError: UnsafeMutablePointer<PyObject>
var PyExc_UnicodeDecodeError: UnsafeMutablePointer<PyObject>
var PyExc_UnicodeTranslateError: UnsafeMutablePointer<PyObject>
var PyExc_ValueError: UnsafeMutablePointer<PyObject>
var PyExc_ZeroDivisionError: UnsafeMutablePointer<PyObject>
var PyExc_BufferError: UnsafeMutablePointer<PyObject>
var PyExc_MemoryErrorInst: UnsafeMutablePointer<PyObject>
var PyExc_RecursionErrorInst: UnsafeMutablePointer<PyObject>
var PyExc_Warning: UnsafeMutablePointer<PyObject>
var PyExc_UserWarning: UnsafeMutablePointer<PyObject>
var PyExc_DeprecationWarning: UnsafeMutablePointer<PyObject>
var PyExc_PendingDeprecationWarning: UnsafeMutablePointer<PyObject>
var PyExc_SyntaxWarning: UnsafeMutablePointer<PyObject>
var PyExc_RuntimeWarning: UnsafeMutablePointer<PyObject>
var PyExc_FutureWarning: UnsafeMutablePointer<PyObject>
var PyExc_ImportWarning: UnsafeMutablePointer<PyObject>
var PyExc_UnicodeWarning: UnsafeMutablePointer<PyObject>
var PyExc_BytesWarning: UnsafeMutablePointer<PyObject>
func PyErr_BadArgument() -> Int32
func PyErr_NoMemory() -> UnsafeMutablePointer<PyObject>
func PyErr_SetFromErrno(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyErr_SetFromErrnoWithFilenameObject(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyErr_SetFromErrnoWithFilename(_: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyErr_BadInternalCall()
func _PyErr_BadInternalCall(filename: UnsafeMutablePointer<Int8>, _ lineno: Int32)
func PyErr_NewException(name: UnsafeMutablePointer<Int8>, _ base: UnsafeMutablePointer<PyObject>, _ dict: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyErr_NewExceptionWithDoc(name: UnsafeMutablePointer<Int8>, _ doc: UnsafeMutablePointer<Int8>, _ base: UnsafeMutablePointer<PyObject>, _ dict: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyErr_WriteUnraisable(_: UnsafeMutablePointer<PyObject>)
func PyErr_CheckSignals() -> Int32
func PyErr_SetInterrupt()
func PySignal_SetWakeupFd(fd: Int32) -> Int32
func PyErr_SyntaxLocation(_: UnsafePointer<Int8>, _: Int32)
func PyErr_ProgramText(_: UnsafePointer<Int8>, _: Int32) -> UnsafeMutablePointer<PyObject>
func PyUnicodeDecodeError_Create(_: UnsafePointer<Int8>, _: UnsafePointer<Int8>, _: Py_ssize_t, _: Py_ssize_t, _: Py_ssize_t, _: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeEncodeError_Create(_: UnsafePointer<Int8>, _: UnsafePointer<Py_UNICODE>, _: Py_ssize_t, _: Py_ssize_t, _: Py_ssize_t, _: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeTranslateError_Create(_: UnsafePointer<Py_UNICODE>, _: Py_ssize_t, _: Py_ssize_t, _: Py_ssize_t, _: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeEncodeError_GetEncoding(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeDecodeError_GetEncoding(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeEncodeError_GetObject(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeDecodeError_GetObject(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeTranslateError_GetObject(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeEncodeError_GetStart(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<Py_ssize_t>) -> Int32
func PyUnicodeDecodeError_GetStart(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<Py_ssize_t>) -> Int32
func PyUnicodeTranslateError_GetStart(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<Py_ssize_t>) -> Int32
func PyUnicodeEncodeError_SetStart(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t) -> Int32
func PyUnicodeDecodeError_SetStart(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t) -> Int32
func PyUnicodeTranslateError_SetStart(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t) -> Int32
func PyUnicodeEncodeError_GetEnd(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<Py_ssize_t>) -> Int32
func PyUnicodeDecodeError_GetEnd(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<Py_ssize_t>) -> Int32
func PyUnicodeTranslateError_GetEnd(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<Py_ssize_t>) -> Int32
func PyUnicodeEncodeError_SetEnd(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t) -> Int32
func PyUnicodeDecodeError_SetEnd(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t) -> Int32
func PyUnicodeTranslateError_SetEnd(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t) -> Int32
func PyUnicodeEncodeError_GetReason(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeDecodeError_GetReason(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeTranslateError_GetReason(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeEncodeError_SetReason(_: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>) -> Int32
func PyUnicodeDecodeError_SetReason(_: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>) -> Int32
func PyUnicodeTranslateError_SetReason(_: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>) -> Int32
func PyOS_vsnprintf(str: UnsafeMutablePointer<Int8>, _ size: Int, _ format: UnsafePointer<Int8>, _ va: CVaListPointer) -> Int32
