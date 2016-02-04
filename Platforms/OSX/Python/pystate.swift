
struct _is {
  var next: UnsafeMutablePointer<_is>
  var tstate_head: UnsafeMutablePointer<_ts>
  var modules: UnsafeMutablePointer<PyObject>
  var sysdict: UnsafeMutablePointer<PyObject>
  var builtins: UnsafeMutablePointer<PyObject>
  var modules_reloading: UnsafeMutablePointer<PyObject>
  var codec_search_path: UnsafeMutablePointer<PyObject>
  var codec_search_cache: UnsafeMutablePointer<PyObject>
  var codec_error_registry: UnsafeMutablePointer<PyObject>
  var dlopenflags: Int32
  init()
  init(next: UnsafeMutablePointer<_is>, tstate_head: UnsafeMutablePointer<_ts>, modules: UnsafeMutablePointer<PyObject>, sysdict: UnsafeMutablePointer<PyObject>, builtins: UnsafeMutablePointer<PyObject>, modules_reloading: UnsafeMutablePointer<PyObject>, codec_search_path: UnsafeMutablePointer<PyObject>, codec_search_cache: UnsafeMutablePointer<PyObject>, codec_error_registry: UnsafeMutablePointer<PyObject>, dlopenflags: Int32)
}
typealias PyInterpreterState = _is
typealias Py_tracefunc = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<_frame>, Int32, UnsafeMutablePointer<PyObject>) -> Int32
var PyTrace_CALL: Int32 { get }
var PyTrace_EXCEPTION: Int32 { get }
var PyTrace_LINE: Int32 { get }
var PyTrace_RETURN: Int32 { get }
var PyTrace_C_CALL: Int32 { get }
var PyTrace_C_EXCEPTION: Int32 { get }
var PyTrace_C_RETURN: Int32 { get }
struct _ts {
  var next: UnsafeMutablePointer<_ts>
  var interp: UnsafeMutablePointer<PyInterpreterState>
  var frame: UnsafeMutablePointer<_frame>
  var recursion_depth: Int32
  var tracing: Int32
  var use_tracing: Int32
  var c_profilefunc: Py_tracefunc!
  var c_tracefunc: Py_tracefunc!
  var c_profileobj: UnsafeMutablePointer<PyObject>
  var c_traceobj: UnsafeMutablePointer<PyObject>
  var curexc_type: UnsafeMutablePointer<PyObject>
  var curexc_value: UnsafeMutablePointer<PyObject>
  var curexc_traceback: UnsafeMutablePointer<PyObject>
  var exc_type: UnsafeMutablePointer<PyObject>
  var exc_value: UnsafeMutablePointer<PyObject>
  var exc_traceback: UnsafeMutablePointer<PyObject>
  var dict: UnsafeMutablePointer<PyObject>
  var tick_counter: Int32
  var gilstate_counter: Int32
  var async_exc: UnsafeMutablePointer<PyObject>
  var thread_id: Int
  var trash_delete_nesting: Int32
  var trash_delete_later: UnsafeMutablePointer<PyObject>
  init()
  init(next: UnsafeMutablePointer<_ts>, interp: UnsafeMutablePointer<PyInterpreterState>, frame: UnsafeMutablePointer<_frame>, recursion_depth: Int32, tracing: Int32, use_tracing: Int32, c_profilefunc: Py_tracefunc!, c_tracefunc: Py_tracefunc!, c_profileobj: UnsafeMutablePointer<PyObject>, c_traceobj: UnsafeMutablePointer<PyObject>, curexc_type: UnsafeMutablePointer<PyObject>, curexc_value: UnsafeMutablePointer<PyObject>, curexc_traceback: UnsafeMutablePointer<PyObject>, exc_type: UnsafeMutablePointer<PyObject>, exc_value: UnsafeMutablePointer<PyObject>, exc_traceback: UnsafeMutablePointer<PyObject>, dict: UnsafeMutablePointer<PyObject>, tick_counter: Int32, gilstate_counter: Int32, async_exc: UnsafeMutablePointer<PyObject>, thread_id: Int, trash_delete_nesting: Int32, trash_delete_later: UnsafeMutablePointer<PyObject>)
}
typealias PyThreadState = _ts
func PyInterpreterState_New() -> UnsafeMutablePointer<PyInterpreterState>
func PyInterpreterState_Clear(_: UnsafeMutablePointer<PyInterpreterState>)
func PyInterpreterState_Delete(_: UnsafeMutablePointer<PyInterpreterState>)
func PyThreadState_New(_: UnsafeMutablePointer<PyInterpreterState>) -> UnsafeMutablePointer<PyThreadState>
func _PyThreadState_Prealloc(_: UnsafeMutablePointer<PyInterpreterState>) -> UnsafeMutablePointer<PyThreadState>
func _PyThreadState_Init(_: UnsafeMutablePointer<PyThreadState>)
func PyThreadState_Clear(_: UnsafeMutablePointer<PyThreadState>)
func PyThreadState_Delete(_: UnsafeMutablePointer<PyThreadState>)
func PyThreadState_DeleteCurrent()
func PyThreadState_Get() -> UnsafeMutablePointer<PyThreadState>
func PyThreadState_Swap(_: UnsafeMutablePointer<PyThreadState>) -> UnsafeMutablePointer<PyThreadState>
func PyThreadState_GetDict() -> UnsafeMutablePointer<PyObject>
func PyThreadState_SetAsyncExc(_: Int, _: UnsafeMutablePointer<PyObject>) -> Int32
var _PyThreadState_Current: UnsafeMutablePointer<PyThreadState>
struct PyGILState_STATE : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var PyGILState_LOCKED: PyGILState_STATE { get }
var PyGILState_UNLOCKED: PyGILState_STATE { get }
func PyGILState_Ensure() -> PyGILState_STATE
func PyGILState_Release(_: PyGILState_STATE)
func PyGILState_GetThisThreadState() -> UnsafeMutablePointer<PyThreadState>
func _PyThread_CurrentFrames() -> UnsafeMutablePointer<PyObject>
func PyInterpreterState_Head() -> UnsafeMutablePointer<PyInterpreterState>
func PyInterpreterState_Next(_: UnsafeMutablePointer<PyInterpreterState>) -> UnsafeMutablePointer<PyInterpreterState>
func PyInterpreterState_ThreadHead(_: UnsafeMutablePointer<PyInterpreterState>) -> UnsafeMutablePointer<PyThreadState>
func PyThreadState_Next(_: UnsafeMutablePointer<PyThreadState>) -> UnsafeMutablePointer<PyThreadState>
typealias PyThreadFrameGetter = @convention(c) (UnsafeMutablePointer<PyThreadState>) -> UnsafeMutablePointer<_frame>
var _PyThreadState_GetFrame: PyThreadFrameGetter!
