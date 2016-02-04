
var PyDict_MINSIZE: Int32 { get }
struct PyDictEntry {
  var me_hash: Py_ssize_t
  var me_key: UnsafeMutablePointer<PyObject>
  var me_value: UnsafeMutablePointer<PyObject>
  init()
  init(me_hash: Py_ssize_t, me_key: UnsafeMutablePointer<PyObject>, me_value: UnsafeMutablePointer<PyObject>)
}
typealias PyDictObject = _dictobject
struct _dictobject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var ma_fill: Py_ssize_t
  var ma_used: Py_ssize_t
  var ma_mask: Py_ssize_t
  var ma_table: UnsafeMutablePointer<PyDictEntry>
  var ma_lookup: (@convention(c) (UnsafeMutablePointer<PyDictObject>, UnsafeMutablePointer<PyObject>, Int) -> UnsafeMutablePointer<PyDictEntry>)!
  var ma_smalltable: (PyDictEntry, PyDictEntry, PyDictEntry, PyDictEntry, PyDictEntry, PyDictEntry, PyDictEntry, PyDictEntry)
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, ma_fill: Py_ssize_t, ma_used: Py_ssize_t, ma_mask: Py_ssize_t, ma_table: UnsafeMutablePointer<PyDictEntry>, ma_lookup: (@convention(c) (UnsafeMutablePointer<PyDictObject>, UnsafeMutablePointer<PyObject>, Int) -> UnsafeMutablePointer<PyDictEntry>)!, ma_smalltable: (PyDictEntry, PyDictEntry, PyDictEntry, PyDictEntry, PyDictEntry, PyDictEntry, PyDictEntry, PyDictEntry))
}
var PyDict_Type: PyTypeObject
var PyDictIterKey_Type: PyTypeObject
var PyDictIterValue_Type: PyTypeObject
var PyDictIterItem_Type: PyTypeObject
var PyDictKeys_Type: PyTypeObject
var PyDictItems_Type: PyTypeObject
var PyDictValues_Type: PyTypeObject
func PyDict_New() -> UnsafeMutablePointer<PyObject>
func PyDict_GetItem(mp: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyDict_SetItem(mp: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<PyObject>, _ item: UnsafeMutablePointer<PyObject>) -> Int32
func PyDict_DelItem(mp: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<PyObject>) -> Int32
func PyDict_Clear(mp: UnsafeMutablePointer<PyObject>)
func PyDict_Next(mp: UnsafeMutablePointer<PyObject>, _ pos: UnsafeMutablePointer<Py_ssize_t>, _ key: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _ value: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>) -> Int32
func _PyDict_Next(mp: UnsafeMutablePointer<PyObject>, _ pos: UnsafeMutablePointer<Py_ssize_t>, _ key: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _ value: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _ hash: UnsafeMutablePointer<Int>) -> Int32
func PyDict_Keys(mp: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyDict_Values(mp: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyDict_Items(mp: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyDict_Size(mp: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PyDict_Copy(mp: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyDict_Contains(mp: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<PyObject>) -> Int32
func _PyDict_Contains(mp: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<PyObject>, _ hash: Int) -> Int32
func _PyDict_NewPresized(minused: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func _PyDict_MaybeUntrack(mp: UnsafeMutablePointer<PyObject>)
func PyDict_Update(mp: UnsafeMutablePointer<PyObject>, _ other: UnsafeMutablePointer<PyObject>) -> Int32
func PyDict_Merge(mp: UnsafeMutablePointer<PyObject>, _ other: UnsafeMutablePointer<PyObject>, _ override: Int32) -> Int32
func PyDict_MergeFromSeq2(d: UnsafeMutablePointer<PyObject>, _ seq2: UnsafeMutablePointer<PyObject>, _ override: Int32) -> Int32
func PyDict_GetItemString(dp: UnsafeMutablePointer<PyObject>, _ key: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyDict_SetItemString(dp: UnsafeMutablePointer<PyObject>, _ key: UnsafePointer<Int8>, _ item: UnsafeMutablePointer<PyObject>) -> Int32
func PyDict_DelItemString(dp: UnsafeMutablePointer<PyObject>, _ key: UnsafePointer<Int8>) -> Int32
