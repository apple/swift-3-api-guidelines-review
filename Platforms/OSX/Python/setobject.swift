
var PySet_MINSIZE: Int32 { get }
struct setentry {
  var hash: Int
  var key: UnsafeMutablePointer<PyObject>
  init()
  init(hash: Int, key: UnsafeMutablePointer<PyObject>)
}
typealias PySetObject = _setobject
struct _setobject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var fill: Py_ssize_t
  var used: Py_ssize_t
  var mask: Py_ssize_t
  var table: UnsafeMutablePointer<setentry>
  var lookup: (@convention(c) (UnsafeMutablePointer<PySetObject>, UnsafeMutablePointer<PyObject>, Int) -> UnsafeMutablePointer<setentry>)!
  var smalltable: (setentry, setentry, setentry, setentry, setentry, setentry, setentry, setentry)
  var hash: Int
  var weakreflist: UnsafeMutablePointer<PyObject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, fill: Py_ssize_t, used: Py_ssize_t, mask: Py_ssize_t, table: UnsafeMutablePointer<setentry>, lookup: (@convention(c) (UnsafeMutablePointer<PySetObject>, UnsafeMutablePointer<PyObject>, Int) -> UnsafeMutablePointer<setentry>)!, smalltable: (setentry, setentry, setentry, setentry, setentry, setentry, setentry, setentry), hash: Int, weakreflist: UnsafeMutablePointer<PyObject>)
}
var PySet_Type: PyTypeObject
var PyFrozenSet_Type: PyTypeObject
func PySet_New(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyFrozenSet_New(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PySet_Size(anyset: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PySet_Clear(set: UnsafeMutablePointer<PyObject>) -> Int32
func PySet_Contains(anyset: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<PyObject>) -> Int32
func PySet_Discard(set: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<PyObject>) -> Int32
func PySet_Add(set: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<PyObject>) -> Int32
func _PySet_Next(set: UnsafeMutablePointer<PyObject>, _ pos: UnsafeMutablePointer<Py_ssize_t>, _ key: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>) -> Int32
func _PySet_NextEntry(set: UnsafeMutablePointer<PyObject>, _ pos: UnsafeMutablePointer<Py_ssize_t>, _ key: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _ hash: UnsafeMutablePointer<Int>) -> Int32
func PySet_Pop(set: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func _PySet_Update(set: UnsafeMutablePointer<PyObject>, _ iterable: UnsafeMutablePointer<PyObject>) -> Int32
