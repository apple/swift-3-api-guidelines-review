
func PyObject_Malloc(_: Int) -> UnsafeMutablePointer<Void>
func PyObject_Realloc(_: UnsafeMutablePointer<Void>, _: Int) -> UnsafeMutablePointer<Void>
func PyObject_Free(_: UnsafeMutablePointer<Void>)
func PyObject_Init(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyTypeObject>) -> UnsafeMutablePointer<PyObject>
func PyObject_InitVar(_: UnsafeMutablePointer<PyVarObject>, _: UnsafeMutablePointer<PyTypeObject>, _: Py_ssize_t) -> UnsafeMutablePointer<PyVarObject>
func _PyObject_New(_: UnsafeMutablePointer<PyTypeObject>) -> UnsafeMutablePointer<PyObject>
func _PyObject_NewVar(_: UnsafeMutablePointer<PyTypeObject>, _: Py_ssize_t) -> UnsafeMutablePointer<PyVarObject>
func PyGC_Collect() -> Py_ssize_t
func _PyObject_GC_Resize(_: UnsafeMutablePointer<PyVarObject>, _: Py_ssize_t) -> UnsafeMutablePointer<PyVarObject>
struct _gc_head {
  struct __Unnamed_struct_gc {
    var gc_next: UnsafeMutablePointer<_gc_head>
    var gc_prev: UnsafeMutablePointer<_gc_head>
    var gc_refs: Py_ssize_t
    init()
    init(gc_next: UnsafeMutablePointer<_gc_head>, gc_prev: UnsafeMutablePointer<_gc_head>, gc_refs: Py_ssize_t)
  }
  var gc: _gc_head.__Unnamed_struct_gc
  init(gc: _gc_head.__Unnamed_struct_gc)
  init()
}
typealias PyGC_Head = _gc_head
var _PyGC_generation0: UnsafeMutablePointer<PyGC_Head>
var _PyGC_REFS_UNTRACKED: Int32 { get }
var _PyGC_REFS_REACHABLE: Int32 { get }
var _PyGC_REFS_TENTATIVELY_UNREACHABLE: Int32 { get }
func _PyObject_GC_Malloc(_: Int) -> UnsafeMutablePointer<PyObject>
func _PyObject_GC_New(_: UnsafeMutablePointer<PyTypeObject>) -> UnsafeMutablePointer<PyObject>
func _PyObject_GC_NewVar(_: UnsafeMutablePointer<PyTypeObject>, _: Py_ssize_t) -> UnsafeMutablePointer<PyVarObject>
func PyObject_GC_Track(_: UnsafeMutablePointer<Void>)
func PyObject_GC_UnTrack(_: UnsafeMutablePointer<Void>)
func PyObject_GC_Del(_: UnsafeMutablePointer<Void>)
var PyGC_HEAD_SIZE: Int32 { get }
