
var WITH_CYCLE_GC: Int32 { get }
func _Py_Mangle(p: UnsafeMutablePointer<PyObject>, _ name: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
var Py_single_input: Int32 { get }
var Py_file_input: Int32 { get }
var Py_eval_input: Int32 { get }
func PyObject_Cmp(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>, _ result: UnsafeMutablePointer<Int32>) -> Int32
func PyObject_Call(callable_object: UnsafeMutablePointer<PyObject>, _ args: UnsafeMutablePointer<PyObject>, _ kw: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyObject_CallObject(callable_object: UnsafeMutablePointer<PyObject>, _ args: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyObject_Type(o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyObject_Size(o: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PyObject_Length(o: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func _PyObject_LengthHint(o: UnsafeMutablePointer<PyObject>, _: Py_ssize_t) -> Py_ssize_t
func PyObject_GetItem(o: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyObject_SetItem(o: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<PyObject>, _ v: UnsafeMutablePointer<PyObject>) -> Int32
func PyObject_DelItemString(o: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<Int8>) -> Int32
func PyObject_DelItem(o: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<PyObject>) -> Int32
func PyObject_AsCharBuffer(obj: UnsafeMutablePointer<PyObject>, _ buffer: UnsafeMutablePointer<UnsafePointer<Int8>>, _ buffer_len: UnsafeMutablePointer<Py_ssize_t>) -> Int32
func PyObject_CheckReadBuffer(obj: UnsafeMutablePointer<PyObject>) -> Int32
func PyObject_AsReadBuffer(obj: UnsafeMutablePointer<PyObject>, _ buffer: UnsafeMutablePointer<UnsafePointer<Void>>, _ buffer_len: UnsafeMutablePointer<Py_ssize_t>) -> Int32
func PyObject_AsWriteBuffer(obj: UnsafeMutablePointer<PyObject>, _ buffer: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ buffer_len: UnsafeMutablePointer<Py_ssize_t>) -> Int32
func PyObject_GetBuffer(obj: UnsafeMutablePointer<PyObject>, _ view: UnsafeMutablePointer<Py_buffer>, _ flags: Int32) -> Int32
func PyBuffer_GetPointer(view: UnsafeMutablePointer<Py_buffer>, _ indices: UnsafeMutablePointer<Py_ssize_t>) -> UnsafeMutablePointer<Void>
func PyBuffer_SizeFromFormat(_: UnsafePointer<Int8>) -> Int32
func PyBuffer_ToContiguous(buf: UnsafeMutablePointer<Void>, _ view: UnsafeMutablePointer<Py_buffer>, _ len: Py_ssize_t, _ fort: Int8) -> Int32
func PyBuffer_FromContiguous(view: UnsafeMutablePointer<Py_buffer>, _ buf: UnsafeMutablePointer<Void>, _ len: Py_ssize_t, _ fort: Int8) -> Int32
func PyObject_CopyData(dest: UnsafeMutablePointer<PyObject>, _ src: UnsafeMutablePointer<PyObject>) -> Int32
func PyBuffer_IsContiguous(view: UnsafeMutablePointer<Py_buffer>, _ fort: Int8) -> Int32
func PyBuffer_FillContiguousStrides(ndims: Int32, _ shape: UnsafeMutablePointer<Py_ssize_t>, _ strides: UnsafeMutablePointer<Py_ssize_t>, _ itemsize: Int32, _ fort: Int8)
func PyBuffer_FillInfo(view: UnsafeMutablePointer<Py_buffer>, _ o: UnsafeMutablePointer<PyObject>, _ buf: UnsafeMutablePointer<Void>, _ len: Py_ssize_t, _ readonly: Int32, _ flags: Int32) -> Int32
func PyBuffer_Release(view: UnsafeMutablePointer<Py_buffer>)
func PyObject_Format(obj: UnsafeMutablePointer<PyObject>, _ format_spec: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyObject_GetIter(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyIter_Next(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Check(o: UnsafeMutablePointer<PyObject>) -> Int32
func PyNumber_Add(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Subtract(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Multiply(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Divide(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_FloorDivide(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_TrueDivide(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Remainder(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Divmod(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Power(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>, _ o3: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Negative(o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Positive(o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Absolute(o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Invert(o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Lshift(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Rshift(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_And(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Xor(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Or(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Index(o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_AsSsize_t(o: UnsafeMutablePointer<PyObject>, _ exc: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func _PyNumber_ConvertIntegralToInt(integral: UnsafeMutablePointer<PyObject>, _ error_format: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Int(o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Long(o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Float(o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceAdd(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceSubtract(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceMultiply(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceDivide(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceFloorDivide(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceTrueDivide(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceRemainder(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlacePower(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>, _ o3: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceLshift(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceRshift(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceAnd(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceXor(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceOr(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_ToBase(n: UnsafeMutablePointer<PyObject>, _ base: Int32) -> UnsafeMutablePointer<PyObject>
func PySequence_Check(o: UnsafeMutablePointer<PyObject>) -> Int32
func PySequence_Size(o: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PySequence_Length(o: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PySequence_Concat(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PySequence_Repeat(o: UnsafeMutablePointer<PyObject>, _ count: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PySequence_GetItem(o: UnsafeMutablePointer<PyObject>, _ i: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PySequence_GetSlice(o: UnsafeMutablePointer<PyObject>, _ i1: Py_ssize_t, _ i2: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PySequence_SetItem(o: UnsafeMutablePointer<PyObject>, _ i: Py_ssize_t, _ v: UnsafeMutablePointer<PyObject>) -> Int32
func PySequence_DelItem(o: UnsafeMutablePointer<PyObject>, _ i: Py_ssize_t) -> Int32
func PySequence_SetSlice(o: UnsafeMutablePointer<PyObject>, _ i1: Py_ssize_t, _ i2: Py_ssize_t, _ v: UnsafeMutablePointer<PyObject>) -> Int32
func PySequence_DelSlice(o: UnsafeMutablePointer<PyObject>, _ i1: Py_ssize_t, _ i2: Py_ssize_t) -> Int32
func PySequence_Tuple(o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PySequence_List(o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PySequence_Fast(o: UnsafeMutablePointer<PyObject>, _ m: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PySequence_Count(o: UnsafeMutablePointer<PyObject>, _ value: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PySequence_Contains(seq: UnsafeMutablePointer<PyObject>, _ ob: UnsafeMutablePointer<PyObject>) -> Int32
var PY_ITERSEARCH_COUNT: Int32 { get }
var PY_ITERSEARCH_INDEX: Int32 { get }
var PY_ITERSEARCH_CONTAINS: Int32 { get }
func _PySequence_IterSearch(seq: UnsafeMutablePointer<PyObject>, _ obj: UnsafeMutablePointer<PyObject>, _ operation: Int32) -> Py_ssize_t
func PySequence_In(o: UnsafeMutablePointer<PyObject>, _ value: UnsafeMutablePointer<PyObject>) -> Int32
func PySequence_Index(o: UnsafeMutablePointer<PyObject>, _ value: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PySequence_InPlaceConcat(o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PySequence_InPlaceRepeat(o: UnsafeMutablePointer<PyObject>, _ count: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyMapping_Check(o: UnsafeMutablePointer<PyObject>) -> Int32
func PyMapping_Size(o: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PyMapping_Length(o: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PyMapping_HasKeyString(o: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<Int8>) -> Int32
func PyMapping_HasKey(o: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<PyObject>) -> Int32
func PyMapping_GetItemString(o: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyMapping_SetItemString(o: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<Int8>, _ value: UnsafeMutablePointer<PyObject>) -> Int32
func PyObject_IsInstance(object: UnsafeMutablePointer<PyObject>, _ typeorclass: UnsafeMutablePointer<PyObject>) -> Int32
func PyObject_IsSubclass(object: UnsafeMutablePointer<PyObject>, _ typeorclass: UnsafeMutablePointer<PyObject>) -> Int32
func _PyObject_RealIsInstance(inst: UnsafeMutablePointer<PyObject>, _ cls: UnsafeMutablePointer<PyObject>) -> Int32
func _PyObject_RealIsSubclass(derived: UnsafeMutablePointer<PyObject>, _ cls: UnsafeMutablePointer<PyObject>) -> Int32
func _Py_add_one_to_index_F(nd: Int32, _ index: UnsafeMutablePointer<Py_ssize_t>, _ shape: UnsafePointer<Py_ssize_t>)
func _Py_add_one_to_index_C(nd: Int32, _ index: UnsafeMutablePointer<Py_ssize_t>, _ shape: UnsafePointer<Py_ssize_t>)
typealias PyBoolObject = PyIntObject
var PyBool_Type: PyTypeObject
var _Py_ZeroStruct: PyIntObject
var _Py_TrueStruct: PyIntObject
func PyBool_FromLong(_: Int) -> UnsafeMutablePointer<PyObject>
var PyBuffer_Type: PyTypeObject
var Py_END_OF_BUFFER: Int32 { get }
func PyBuffer_FromObject(base: UnsafeMutablePointer<PyObject>, _ offset: Py_ssize_t, _ size: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyBuffer_FromReadWriteObject(base: UnsafeMutablePointer<PyObject>, _ offset: Py_ssize_t, _ size: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyBuffer_FromMemory(ptr: UnsafeMutablePointer<Void>, _ size: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyBuffer_FromReadWriteMemory(ptr: UnsafeMutablePointer<Void>, _ size: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyBuffer_New(size: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
struct PyByteArrayObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var ob_size: Py_ssize_t
  var ob_exports: Int32
  var ob_alloc: Py_ssize_t
  var ob_bytes: UnsafeMutablePointer<Int8>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, ob_size: Py_ssize_t, ob_exports: Int32, ob_alloc: Py_ssize_t, ob_bytes: UnsafeMutablePointer<Int8>)
}
var PyByteArray_Type: PyTypeObject
var PyByteArrayIter_Type: PyTypeObject
func PyByteArray_FromObject(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyByteArray_Concat(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyByteArray_FromStringAndSize(_: UnsafePointer<Int8>, _: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyByteArray_Size(_: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PyByteArray_AsString(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<Int8>
func PyByteArray_Resize(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t) -> Int32
var Py_TPFLAGS_BYTES_SUBCLASS: Int { get }
struct PyCellObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var ob_ref: UnsafeMutablePointer<PyObject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, ob_ref: UnsafeMutablePointer<PyObject>)
}
var PyCell_Type: PyTypeObject
func PyCell_New(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyCell_Get(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyCell_Set(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyEval_CallObjectWithKeywords(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyEval_SetProfile(_: Py_tracefunc!, _: UnsafeMutablePointer<PyObject>)
func PyEval_SetTrace(_: Py_tracefunc!, _: UnsafeMutablePointer<PyObject>)
func PyEval_GetBuiltins() -> UnsafeMutablePointer<PyObject>
func PyEval_GetGlobals() -> UnsafeMutablePointer<PyObject>
func PyEval_GetLocals() -> UnsafeMutablePointer<PyObject>
func PyEval_GetFrame() -> UnsafeMutablePointer<_frame>
func PyEval_GetRestricted() -> Int32
func PyEval_MergeCompilerFlags(cf: UnsafeMutablePointer<PyCompilerFlags>) -> Int32
func Py_FlushLine() -> Int32
func Py_AddPendingCall(func: (@convention(c) (UnsafeMutablePointer<Void>) -> Int32)!, _ arg: UnsafeMutablePointer<Void>) -> Int32
func Py_MakePendingCalls() -> Int32
func Py_SetRecursionLimit(_: Int32)
func Py_GetRecursionLimit() -> Int32
func _Py_CheckRecursiveCall(where: UnsafeMutablePointer<Int8>) -> Int32
var _Py_CheckRecursionLimit: Int32
func PyEval_GetFuncName(_: UnsafeMutablePointer<PyObject>) -> UnsafePointer<Int8>
func PyEval_GetFuncDesc(_: UnsafeMutablePointer<PyObject>) -> UnsafePointer<Int8>
func PyEval_GetCallStats(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyEval_EvalFrame(_: UnsafeMutablePointer<_frame>) -> UnsafeMutablePointer<PyObject>
func PyEval_EvalFrameEx(f: UnsafeMutablePointer<_frame>, _ exc: Int32) -> UnsafeMutablePointer<PyObject>
var _Py_Ticker: Int32
var _Py_CheckInterval: Int32
func PyEval_SaveThread() -> UnsafeMutablePointer<PyThreadState>
func PyEval_RestoreThread(_: UnsafeMutablePointer<PyThreadState>)
func PyEval_ThreadsInitialized() -> Int32
func PyEval_InitThreads()
func PyEval_AcquireLock()
func PyEval_ReleaseLock()
func PyEval_AcquireThread(tstate: UnsafeMutablePointer<PyThreadState>)
func PyEval_ReleaseThread(tstate: UnsafeMutablePointer<PyThreadState>)
func PyEval_ReInitThreads()
func _PyEval_SliceIndex(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<Py_ssize_t>) -> Int32
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
func PyCodec_Register(search_function: UnsafeMutablePointer<PyObject>) -> Int32
func _PyCodec_Lookup(encoding: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyCodec_Encode(object: UnsafeMutablePointer<PyObject>, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyCodec_Decode(object: UnsafeMutablePointer<PyObject>, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyCodec_Encoder(encoding: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyCodec_Decoder(encoding: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyCodec_IncrementalEncoder(encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyCodec_IncrementalDecoder(encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyCodec_StreamReader(encoding: UnsafePointer<Int8>, _ stream: UnsafeMutablePointer<PyObject>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyCodec_StreamWriter(encoding: UnsafePointer<Int8>, _ stream: UnsafeMutablePointer<PyObject>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyCodec_RegisterError(name: UnsafePointer<Int8>, _ error: UnsafeMutablePointer<PyObject>) -> Int32
func PyCodec_LookupError(name: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyCodec_StrictErrors(exc: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyCodec_IgnoreErrors(exc: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyCodec_ReplaceErrors(exc: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyCodec_XMLCharRefReplaceErrors(exc: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyCodec_BackslashReplaceErrors(exc: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNode_Compile(_: UnsafeMutablePointer<_node>, _: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyCodeObject>
struct PyFutureFeatures {
  var ff_features: Int32
  var ff_lineno: Int32
  init()
  init(ff_features: Int32, ff_lineno: Int32)
}
var FUTURE_NESTED_SCOPES: String { get }
var FUTURE_GENERATORS: String { get }
var FUTURE_DIVISION: String { get }
var FUTURE_ABSOLUTE_IMPORT: String { get }
var FUTURE_WITH_STATEMENT: String { get }
var FUTURE_PRINT_FUNCTION: String { get }
var FUTURE_UNICODE_LITERALS: String { get }
func PyAST_Compile(_: COpaquePointer, _: UnsafePointer<Int8>, _: UnsafeMutablePointer<PyCompilerFlags>, _: COpaquePointer) -> UnsafeMutablePointer<PyCodeObject>
func PyFuture_FromAST(_: COpaquePointer, _: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyFutureFeatures>
struct Py_complex {
  var real: Double
  var imag: Double
  init()
  init(real: Double, imag: Double)
}
func _Py_c_sum(_: Py_complex, _: Py_complex) -> Py_complex
func _Py_c_diff(_: Py_complex, _: Py_complex) -> Py_complex
func _Py_c_neg(_: Py_complex) -> Py_complex
func _Py_c_prod(_: Py_complex, _: Py_complex) -> Py_complex
func _Py_c_quot(_: Py_complex, _: Py_complex) -> Py_complex
func _Py_c_pow(_: Py_complex, _: Py_complex) -> Py_complex
func _Py_c_abs(_: Py_complex) -> Double
struct PyComplexObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var cval: Py_complex
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, cval: Py_complex)
}
var PyComplex_Type: PyTypeObject
func PyComplex_FromCComplex(_: Py_complex) -> UnsafeMutablePointer<PyObject>
func PyComplex_FromDoubles(real: Double, _ imag: Double) -> UnsafeMutablePointer<PyObject>
func PyComplex_RealAsDouble(op: UnsafeMutablePointer<PyObject>) -> Double
func PyComplex_ImagAsDouble(op: UnsafeMutablePointer<PyObject>) -> Double
func PyComplex_AsCComplex(op: UnsafeMutablePointer<PyObject>) -> Py_complex
func _PyComplex_FormatAdvanced(obj: UnsafeMutablePointer<PyObject>, _ format_spec: UnsafeMutablePointer<Int8>, _ format_spec_len: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
typealias getter = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<PyObject>
typealias setter = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<Void>) -> Int32
struct PyGetSetDef {
  var name: UnsafeMutablePointer<Int8>
  var get: getter!
  var set: setter!
  var doc: UnsafeMutablePointer<Int8>
  var closure: UnsafeMutablePointer<Void>
  init()
  init(name: UnsafeMutablePointer<Int8>, get: getter!, set: setter!, doc: UnsafeMutablePointer<Int8>, closure: UnsafeMutablePointer<Void>)
}
typealias wrapperfunc = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<PyObject>
typealias wrapperfunc_kwds = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<Void>, UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
struct wrapperbase {
  var name: UnsafeMutablePointer<Int8>
  var offset: Int32
  var function: UnsafeMutablePointer<Void>
  var wrapper: wrapperfunc!
  var doc: UnsafeMutablePointer<Int8>
  var flags: Int32
  var name_strobj: UnsafeMutablePointer<PyObject>
  init()
  init(name: UnsafeMutablePointer<Int8>, offset: Int32, function: UnsafeMutablePointer<Void>, wrapper: wrapperfunc!, doc: UnsafeMutablePointer<Int8>, flags: Int32, name_strobj: UnsafeMutablePointer<PyObject>)
}
var PyWrapperFlag_KEYWORDS: Int32 { get }
struct PyDescrObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var d_type: UnsafeMutablePointer<PyTypeObject>
  var d_name: UnsafeMutablePointer<PyObject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, d_type: UnsafeMutablePointer<PyTypeObject>, d_name: UnsafeMutablePointer<PyObject>)
}
struct PyMethodDescrObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var d_type: UnsafeMutablePointer<PyTypeObject>
  var d_name: UnsafeMutablePointer<PyObject>
  var d_method: UnsafeMutablePointer<PyMethodDef>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, d_type: UnsafeMutablePointer<PyTypeObject>, d_name: UnsafeMutablePointer<PyObject>, d_method: UnsafeMutablePointer<PyMethodDef>)
}
struct PyMemberDescrObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var d_type: UnsafeMutablePointer<PyTypeObject>
  var d_name: UnsafeMutablePointer<PyObject>
  var d_member: UnsafeMutablePointer<PyMemberDef>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, d_type: UnsafeMutablePointer<PyTypeObject>, d_name: UnsafeMutablePointer<PyObject>, d_member: UnsafeMutablePointer<PyMemberDef>)
}
struct PyGetSetDescrObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var d_type: UnsafeMutablePointer<PyTypeObject>
  var d_name: UnsafeMutablePointer<PyObject>
  var d_getset: UnsafeMutablePointer<PyGetSetDef>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, d_type: UnsafeMutablePointer<PyTypeObject>, d_name: UnsafeMutablePointer<PyObject>, d_getset: UnsafeMutablePointer<PyGetSetDef>)
}
struct PyWrapperDescrObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var d_type: UnsafeMutablePointer<PyTypeObject>
  var d_name: UnsafeMutablePointer<PyObject>
  var d_base: UnsafeMutablePointer<wrapperbase>
  var d_wrapped: UnsafeMutablePointer<Void>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, d_type: UnsafeMutablePointer<PyTypeObject>, d_name: UnsafeMutablePointer<PyObject>, d_base: UnsafeMutablePointer<wrapperbase>, d_wrapped: UnsafeMutablePointer<Void>)
}
var PyWrapperDescr_Type: PyTypeObject
var PyDictProxy_Type: PyTypeObject
var PyGetSetDescr_Type: PyTypeObject
var PyMemberDescr_Type: PyTypeObject
func PyDescr_NewMethod(_: UnsafeMutablePointer<PyTypeObject>, _: UnsafeMutablePointer<PyMethodDef>) -> UnsafeMutablePointer<PyObject>
func PyDescr_NewClassMethod(_: UnsafeMutablePointer<PyTypeObject>, _: UnsafeMutablePointer<PyMethodDef>) -> UnsafeMutablePointer<PyObject>
func PyDescr_NewMember(_: UnsafeMutablePointer<PyTypeObject>, _: UnsafeMutablePointer<PyMemberDef>) -> UnsafeMutablePointer<PyObject>
func PyDescr_NewGetSet(_: UnsafeMutablePointer<PyTypeObject>, _: UnsafeMutablePointer<PyGetSetDef>) -> UnsafeMutablePointer<PyObject>
func PyDescr_NewWrapper(_: UnsafeMutablePointer<PyTypeObject>, _: UnsafeMutablePointer<wrapperbase>, _: UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<PyObject>
func PyDictProxy_New(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyWrapper_New(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
var PyProperty_Type: PyTypeObject
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
func _Py_dg_strtod(str: UnsafePointer<Int8>, _ ptr: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> Double
func _Py_dg_dtoa(d: Double, _ mode: Int32, _ ndigits: Int32, _ decpt: UnsafeMutablePointer<Int32>, _ sign: UnsafeMutablePointer<Int32>, _ rve: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> UnsafeMutablePointer<Int8>
func _Py_dg_freedtoa(s: UnsafeMutablePointer<Int8>)
var PyEnum_Type: PyTypeObject
var PyReversed_Type: PyTypeObject
func PyEval_EvalCode(_: UnsafeMutablePointer<PyCodeObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyEval_EvalCodeEx(co: UnsafeMutablePointer<PyCodeObject>, _ globals: UnsafeMutablePointer<PyObject>, _ locals: UnsafeMutablePointer<PyObject>, _ args: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _ argc: Int32, _ kwds: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _ kwdc: Int32, _ defs: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _ defc: Int32, _ closure: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func _PyEval_CallTracing(func: UnsafeMutablePointer<PyObject>, _ args: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
struct PyFileObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var f_fp: UnsafeMutablePointer<FILE>
  var f_name: UnsafeMutablePointer<PyObject>
  var f_mode: UnsafeMutablePointer<PyObject>
  var f_close: (@convention(c) (UnsafeMutablePointer<FILE>) -> Int32)!
  var f_softspace: Int32
  var f_binary: Int32
  var f_buf: UnsafeMutablePointer<Int8>
  var f_bufend: UnsafeMutablePointer<Int8>
  var f_bufptr: UnsafeMutablePointer<Int8>
  var f_setbuf: UnsafeMutablePointer<Int8>
  var f_univ_newline: Int32
  var f_newlinetypes: Int32
  var f_skipnextlf: Int32
  var f_encoding: UnsafeMutablePointer<PyObject>
  var f_errors: UnsafeMutablePointer<PyObject>
  var weakreflist: UnsafeMutablePointer<PyObject>
  var unlocked_count: Int32
  var readable: Int32
  var writable: Int32
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, f_fp: UnsafeMutablePointer<FILE>, f_name: UnsafeMutablePointer<PyObject>, f_mode: UnsafeMutablePointer<PyObject>, f_close: (@convention(c) (UnsafeMutablePointer<FILE>) -> Int32)!, f_softspace: Int32, f_binary: Int32, f_buf: UnsafeMutablePointer<Int8>, f_bufend: UnsafeMutablePointer<Int8>, f_bufptr: UnsafeMutablePointer<Int8>, f_setbuf: UnsafeMutablePointer<Int8>, f_univ_newline: Int32, f_newlinetypes: Int32, f_skipnextlf: Int32, f_encoding: UnsafeMutablePointer<PyObject>, f_errors: UnsafeMutablePointer<PyObject>, weakreflist: UnsafeMutablePointer<PyObject>, unlocked_count: Int32, readable: Int32, writable: Int32)
}
var PyFile_Type: PyTypeObject
func PyFile_FromString(_: UnsafeMutablePointer<Int8>, _: UnsafeMutablePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyFile_SetBufSize(_: UnsafeMutablePointer<PyObject>, _: Int32)
func PyFile_SetEncoding(_: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>) -> Int32
func PyFile_SetEncodingAndErrors(_: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>, _ errors: UnsafeMutablePointer<Int8>) -> Int32
func PyFile_FromFile(_: UnsafeMutablePointer<FILE>, _: UnsafeMutablePointer<Int8>, _: UnsafeMutablePointer<Int8>, _: (@convention(c) (UnsafeMutablePointer<FILE>) -> Int32)!) -> UnsafeMutablePointer<PyObject>
func PyFile_AsFile(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<FILE>
func PyFile_IncUseCount(_: UnsafeMutablePointer<PyFileObject>)
func PyFile_DecUseCount(_: UnsafeMutablePointer<PyFileObject>)
func PyFile_Name(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyFile_GetLine(_: UnsafeMutablePointer<PyObject>, _: Int32) -> UnsafeMutablePointer<PyObject>
func PyFile_WriteObject(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: Int32) -> Int32
func PyFile_SoftSpace(_: UnsafeMutablePointer<PyObject>, _: Int32) -> Int32
func PyFile_WriteString(_: UnsafePointer<Int8>, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyObject_AsFileDescriptor(_: UnsafeMutablePointer<PyObject>) -> Int32
var Py_FileSystemDefaultEncoding: UnsafePointer<Int8>
var PY_STDIOTEXTMODE: String { get }
func Py_UniversalNewlineFgets(_: UnsafeMutablePointer<Int8>, _: Int32, _: UnsafeMutablePointer<FILE>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<Int8>
func Py_UniversalNewlineFread(_: UnsafeMutablePointer<Int8>, _: Int, _: UnsafeMutablePointer<FILE>, _: UnsafeMutablePointer<PyObject>) -> Int
func _PyFile_SanitizeMode(mode: UnsafeMutablePointer<Int8>) -> Int32
struct PyFloatObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var ob_fval: Double
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, ob_fval: Double)
}
var PyFloat_Type: PyTypeObject
var PyFloat_STR_PRECISION: Int32 { get }
func PyFloat_GetMax() -> Double
func PyFloat_GetMin() -> Double
func PyFloat_GetInfo() -> UnsafeMutablePointer<PyObject>
func PyFloat_FromString(_: UnsafeMutablePointer<PyObject>, _ junk: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> UnsafeMutablePointer<PyObject>
func PyFloat_FromDouble(_: Double) -> UnsafeMutablePointer<PyObject>
func PyFloat_AsDouble(_: UnsafeMutablePointer<PyObject>) -> Double
func PyFloat_AsReprString(_: UnsafeMutablePointer<Int8>, _ v: UnsafeMutablePointer<PyFloatObject>)
func PyFloat_AsString(_: UnsafeMutablePointer<Int8>, _ v: UnsafeMutablePointer<PyFloatObject>)
func _PyFloat_Pack4(x: Double, _ p: UnsafeMutablePointer<UInt8>, _ le: Int32) -> Int32
func _PyFloat_Pack8(x: Double, _ p: UnsafeMutablePointer<UInt8>, _ le: Int32) -> Int32
func _PyFloat_Digits(buf: UnsafeMutablePointer<Int8>, _ v: Double, _ signum: UnsafeMutablePointer<Int32>) -> Int32
func _PyFloat_DigitsInit()
func _PyFloat_Unpack4(p: UnsafePointer<UInt8>, _ le: Int32) -> Double
func _PyFloat_Unpack8(p: UnsafePointer<UInt8>, _ le: Int32) -> Double
func PyFloat_ClearFreeList() -> Int32
func _PyFloat_FormatAdvanced(obj: UnsafeMutablePointer<PyObject>, _ format_spec: UnsafeMutablePointer<Int8>, _ format_spec_len: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func _Py_double_round(x: Double, _ ndigits: Int32) -> UnsafeMutablePointer<PyObject>
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
struct PyGenObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var gi_frame: UnsafeMutablePointer<_frame>
  var gi_running: Int32
  var gi_code: UnsafeMutablePointer<PyObject>
  var gi_weakreflist: UnsafeMutablePointer<PyObject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, gi_frame: UnsafeMutablePointer<_frame>, gi_running: Int32, gi_code: UnsafeMutablePointer<PyObject>, gi_weakreflist: UnsafeMutablePointer<PyObject>)
}
var PyGen_Type: PyTypeObject
func PyGen_New(_: UnsafeMutablePointer<_frame>) -> UnsafeMutablePointer<PyObject>
func PyGen_NeedsFinalizing(_: UnsafeMutablePointer<PyGenObject>) -> Int32
func PyImport_GetMagicNumber() -> Int
func PyImport_ExecCodeModule(name: UnsafeMutablePointer<Int8>, _ co: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyImport_ExecCodeModuleEx(name: UnsafeMutablePointer<Int8>, _ co: UnsafeMutablePointer<PyObject>, _ pathname: UnsafeMutablePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyImport_GetModuleDict() -> UnsafeMutablePointer<PyObject>
func PyImport_AddModule(name: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyImport_ImportModule(name: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyImport_ImportModuleNoBlock(_: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyImport_ImportModuleLevel(name: UnsafeMutablePointer<Int8>, _ globals: UnsafeMutablePointer<PyObject>, _ locals: UnsafeMutablePointer<PyObject>, _ fromlist: UnsafeMutablePointer<PyObject>, _ level: Int32) -> UnsafeMutablePointer<PyObject>
func PyImport_GetImporter(path: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyImport_Import(name: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyImport_ReloadModule(m: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyImport_Cleanup()
func PyImport_ImportFrozenModule(_: UnsafeMutablePointer<Int8>) -> Int32
func _PyImport_AcquireLock()
func _PyImport_ReleaseLock() -> Int32
func _PyImport_FindModule(_: UnsafePointer<Int8>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<Int8>, _: Int, _: UnsafeMutablePointer<UnsafeMutablePointer<FILE>>, _: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>) -> COpaquePointer
func _PyImport_IsScript(_: COpaquePointer) -> Int32
func _PyImport_ReInitLock()
func _PyImport_FindExtension(_: UnsafeMutablePointer<Int8>, _: UnsafeMutablePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func _PyImport_FixupExtension(_: UnsafeMutablePointer<Int8>, _: UnsafeMutablePointer<Int8>) -> UnsafeMutablePointer<PyObject>
struct _inittab {
  var name: UnsafeMutablePointer<Int8>
  var initfunc: (@convention(c) () -> Void)!
  init()
  init(name: UnsafeMutablePointer<Int8>, initfunc: (@convention(c) () -> Void)!)
}
var PyNullImporter_Type: PyTypeObject
var PyImport_Inittab: UnsafeMutablePointer<_inittab>
func PyImport_AppendInittab(name: UnsafePointer<Int8>, _ initfunc: (@convention(c) () -> Void)!) -> Int32
func PyImport_ExtendInittab(newtab: UnsafeMutablePointer<_inittab>) -> Int32
struct _frozen {
  var name: UnsafeMutablePointer<Int8>
  var code: UnsafeMutablePointer<UInt8>
  var size: Int32
  init()
  init(name: UnsafeMutablePointer<Int8>, code: UnsafeMutablePointer<UInt8>, size: Int32)
}
var PyImport_FrozenModules: UnsafeMutablePointer<_frozen>
struct PyIntObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var ob_ival: Int
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, ob_ival: Int)
}
var PyInt_Type: PyTypeObject
func PyInt_FromString(_: UnsafeMutablePointer<Int8>, _: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>, _: Int32) -> UnsafeMutablePointer<PyObject>
func PyInt_FromUnicode(_: UnsafeMutablePointer<Py_UNICODE>, _: Py_ssize_t, _: Int32) -> UnsafeMutablePointer<PyObject>
func PyInt_FromLong(_: Int) -> UnsafeMutablePointer<PyObject>
func PyInt_FromSize_t(_: Int) -> UnsafeMutablePointer<PyObject>
func PyInt_FromSsize_t(_: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyInt_AsLong(_: UnsafeMutablePointer<PyObject>) -> Int
func PyInt_AsSsize_t(_: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func _PyInt_AsInt(_: UnsafeMutablePointer<PyObject>) -> Int32
func PyInt_AsUnsignedLongMask(_: UnsafeMutablePointer<PyObject>) -> UInt
func PyInt_AsUnsignedLongLongMask(_: UnsafeMutablePointer<PyObject>) -> UInt64
func PyInt_GetMax() -> Int
func PyOS_strtoul(_: UnsafeMutablePointer<Int8>, _: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>, _: Int32) -> UInt
func PyOS_strtol(_: UnsafeMutablePointer<Int8>, _: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>, _: Int32) -> Int
func PyInt_ClearFreeList() -> Int32
func _PyInt_Format(v: UnsafeMutablePointer<PyIntObject>, _ base: Int32, _ newstyle: Int32) -> UnsafeMutablePointer<PyObject>
func _PyInt_FormatAdvanced(obj: UnsafeMutablePointer<PyObject>, _ format_spec: UnsafeMutablePointer<Int8>, _ format_spec_len: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyOS_InterruptOccurred() -> Int32
func PyOS_InitInterrupts()
func PyOS_AfterFork()
var PySeqIter_Type: PyTypeObject
func PySeqIter_New(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
var PyCallIter_Type: PyTypeObject
func PyCallIter_New(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
struct PyListObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var ob_size: Py_ssize_t
  var ob_item: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>
  var allocated: Py_ssize_t
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, ob_size: Py_ssize_t, ob_item: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, allocated: Py_ssize_t)
}
var PyList_Type: PyTypeObject
func PyList_New(size: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyList_Size(_: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PyList_GetItem(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyList_SetItem(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyList_Insert(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyList_Append(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyList_GetSlice(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t, _: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyList_SetSlice(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t, _: Py_ssize_t, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyList_Sort(_: UnsafeMutablePointer<PyObject>) -> Int32
func PyList_Reverse(_: UnsafeMutablePointer<PyObject>) -> Int32
func PyList_AsTuple(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func _PyList_Extend(_: UnsafeMutablePointer<PyListObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
typealias PyLongObject = _longobject
var PyLong_Type: PyTypeObject
func PyLong_FromLong(_: Int) -> UnsafeMutablePointer<PyObject>
func PyLong_FromUnsignedLong(_: UInt) -> UnsafeMutablePointer<PyObject>
func PyLong_FromDouble(_: Double) -> UnsafeMutablePointer<PyObject>
func PyLong_FromSize_t(_: Int) -> UnsafeMutablePointer<PyObject>
func PyLong_FromSsize_t(_: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyLong_AsLong(_: UnsafeMutablePointer<PyObject>) -> Int
func PyLong_AsLongAndOverflow(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<Int32>) -> Int
func PyLong_AsUnsignedLong(_: UnsafeMutablePointer<PyObject>) -> UInt
func PyLong_AsUnsignedLongMask(_: UnsafeMutablePointer<PyObject>) -> UInt
func PyLong_AsSsize_t(_: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func _PyLong_AsInt(_: UnsafeMutablePointer<PyObject>) -> Int32
func PyLong_GetInfo() -> UnsafeMutablePointer<PyObject>
var _PyLong_DigitValue: (Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32)
func _PyLong_Frexp(a: UnsafeMutablePointer<PyLongObject>, _ e: UnsafeMutablePointer<Py_ssize_t>) -> Double
func PyLong_AsDouble(_: UnsafeMutablePointer<PyObject>) -> Double
func PyLong_FromVoidPtr(_: UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<PyObject>
func PyLong_AsVoidPtr(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<Void>
func PyLong_FromLongLong(_: Int64) -> UnsafeMutablePointer<PyObject>
func PyLong_FromUnsignedLongLong(_: UInt64) -> UnsafeMutablePointer<PyObject>
func PyLong_AsLongLong(_: UnsafeMutablePointer<PyObject>) -> Int64
func PyLong_AsUnsignedLongLong(_: UnsafeMutablePointer<PyObject>) -> UInt64
func PyLong_AsUnsignedLongLongMask(_: UnsafeMutablePointer<PyObject>) -> UInt64
func PyLong_AsLongLongAndOverflow(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<Int32>) -> Int64
func PyLong_FromString(_: UnsafeMutablePointer<Int8>, _: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>, _: Int32) -> UnsafeMutablePointer<PyObject>
func PyLong_FromUnicode(_: UnsafeMutablePointer<Py_UNICODE>, _: Py_ssize_t, _: Int32) -> UnsafeMutablePointer<PyObject>
func _PyLong_Sign(v: UnsafeMutablePointer<PyObject>) -> Int32
func _PyLong_NumBits(v: UnsafeMutablePointer<PyObject>) -> Int
func _PyLong_FromByteArray(bytes: UnsafePointer<UInt8>, _ n: Int, _ little_endian: Int32, _ is_signed: Int32) -> UnsafeMutablePointer<PyObject>
func _PyLong_AsByteArray(v: UnsafeMutablePointer<PyLongObject>, _ bytes: UnsafeMutablePointer<UInt8>, _ n: Int, _ little_endian: Int32, _ is_signed: Int32) -> Int32
func _PyLong_Format(aa: UnsafeMutablePointer<PyObject>, _ base: Int32, _ addL: Int32, _ newstyle: Int32) -> UnsafeMutablePointer<PyObject>
func _PyLong_FormatAdvanced(obj: UnsafeMutablePointer<PyObject>, _ format_spec: UnsafeMutablePointer<Int8>, _ format_spec_len: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
var PyMemoryView_Type: PyTypeObject
func PyMemoryView_GetContiguous(base: UnsafeMutablePointer<PyObject>, _ buffertype: Int32, _ fort: Int8) -> UnsafeMutablePointer<PyObject>
func PyMemoryView_FromObject(base: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyMemoryView_FromBuffer(info: UnsafeMutablePointer<Py_buffer>) -> UnsafeMutablePointer<PyObject>
struct PyMemoryViewObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var base: UnsafeMutablePointer<PyObject>
  var view: Py_buffer
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, base: UnsafeMutablePointer<PyObject>, view: Py_buffer)
}
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
func _Py_VaBuildValue_SizeT(_: UnsafePointer<Int8>, _: CVaListPointer) -> UnsafeMutablePointer<PyObject>
func _PyArg_NoKeywords(funcname: UnsafePointer<Int8>, _ kw: UnsafeMutablePointer<PyObject>) -> Int32
func PyArg_VaParse(_: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>, _: CVaListPointer) -> Int32
func PyArg_VaParseTupleAndKeywords(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>, _: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>, _: CVaListPointer) -> Int32
func Py_VaBuildValue(_: UnsafePointer<Int8>, _: CVaListPointer) -> UnsafeMutablePointer<PyObject>
func PyModule_AddObject(_: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyModule_AddIntConstant(_: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>, _: Int) -> Int32
func PyModule_AddStringConstant(_: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>, _: UnsafePointer<Int8>) -> Int32
var PYTHON_API_VERSION: Int32 { get }
var PYTHON_API_STRING: String { get }
func Py_InitModule4_64(name: UnsafePointer<Int8>, _ methods: UnsafeMutablePointer<PyMethodDef>, _ doc: UnsafePointer<Int8>, _ self: UnsafeMutablePointer<PyObject>, _ apiver: Int32) -> UnsafeMutablePointer<PyObject>
var _Py_PackageContext: UnsafeMutablePointer<Int8>
var PyModule_Type: PyTypeObject
func PyModule_New(_: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyModule_GetDict(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyModule_GetName(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<Int8>
func PyModule_GetFilename(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<Int8>
func _PyModule_Clear(_: UnsafeMutablePointer<PyObject>)
struct _object {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>)
}
typealias PyObject = _object
struct PyVarObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var ob_size: Py_ssize_t
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, ob_size: Py_ssize_t)
}
typealias unaryfunc = @convention(c) (UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
typealias binaryfunc = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
typealias ternaryfunc = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
typealias inquiry = @convention(c) (UnsafeMutablePointer<PyObject>) -> Int32
typealias lenfunc = @convention(c) (UnsafeMutablePointer<PyObject>) -> Py_ssize_t
typealias coercion = @convention(c) (UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>) -> Int32
@available(*, deprecated)
typealias intargfunc = @convention(c) (UnsafeMutablePointer<PyObject>, Int32) -> UnsafeMutablePointer<PyObject>
@available(*, deprecated)
typealias intintargfunc = @convention(c) (UnsafeMutablePointer<PyObject>, Int32, Int32) -> UnsafeMutablePointer<PyObject>
typealias ssizeargfunc = @convention(c) (UnsafeMutablePointer<PyObject>, Py_ssize_t) -> UnsafeMutablePointer<PyObject>
typealias ssizessizeargfunc = @convention(c) (UnsafeMutablePointer<PyObject>, Py_ssize_t, Py_ssize_t) -> UnsafeMutablePointer<PyObject>
typealias intobjargproc = @convention(c) (UnsafeMutablePointer<PyObject>, Int32, UnsafeMutablePointer<PyObject>) -> Int32
typealias intintobjargproc = @convention(c) (UnsafeMutablePointer<PyObject>, Int32, Int32, UnsafeMutablePointer<PyObject>) -> Int32
typealias ssizeobjargproc = @convention(c) (UnsafeMutablePointer<PyObject>, Py_ssize_t, UnsafeMutablePointer<PyObject>) -> Int32
typealias ssizessizeobjargproc = @convention(c) (UnsafeMutablePointer<PyObject>, Py_ssize_t, Py_ssize_t, UnsafeMutablePointer<PyObject>) -> Int32
typealias objobjargproc = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>) -> Int32
typealias getreadbufferproc = @convention(c) (UnsafeMutablePointer<PyObject>, Int32, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> Int32
typealias getwritebufferproc = @convention(c) (UnsafeMutablePointer<PyObject>, Int32, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> Int32
typealias getsegcountproc = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<Int32>) -> Int32
typealias getcharbufferproc = @convention(c) (UnsafeMutablePointer<PyObject>, Int32, UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> Int32
typealias readbufferproc = @convention(c) (UnsafeMutablePointer<PyObject>, Py_ssize_t, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> Py_ssize_t
typealias writebufferproc = @convention(c) (UnsafeMutablePointer<PyObject>, Py_ssize_t, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> Py_ssize_t
typealias segcountproc = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<Py_ssize_t>) -> Py_ssize_t
typealias charbufferproc = @convention(c) (UnsafeMutablePointer<PyObject>, Py_ssize_t, UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> Py_ssize_t
struct bufferinfo {
  var buf: UnsafeMutablePointer<Void>
  var obj: UnsafeMutablePointer<PyObject>
  var len: Py_ssize_t
  var itemsize: Py_ssize_t
  var readonly: Int32
  var ndim: Int32
  var format: UnsafeMutablePointer<Int8>
  var shape: UnsafeMutablePointer<Py_ssize_t>
  var strides: UnsafeMutablePointer<Py_ssize_t>
  var suboffsets: UnsafeMutablePointer<Py_ssize_t>
  var smalltable: (Py_ssize_t, Py_ssize_t)
  var `internal`: UnsafeMutablePointer<Void>
  init()
  init(buf: UnsafeMutablePointer<Void>, obj: UnsafeMutablePointer<PyObject>, len: Py_ssize_t, itemsize: Py_ssize_t, readonly: Int32, ndim: Int32, format: UnsafeMutablePointer<Int8>, shape: UnsafeMutablePointer<Py_ssize_t>, strides: UnsafeMutablePointer<Py_ssize_t>, suboffsets: UnsafeMutablePointer<Py_ssize_t>, smalltable: (Py_ssize_t, Py_ssize_t), internal: UnsafeMutablePointer<Void>)
}
typealias Py_buffer = bufferinfo
typealias getbufferproc = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<Py_buffer>, Int32) -> Int32
typealias releasebufferproc = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<Py_buffer>) -> Void
var PyBUF_SIMPLE: Int32 { get }
var PyBUF_WRITABLE: Int32 { get }
var PyBUF_WRITEABLE: Int32 { get }
var PyBUF_FORMAT: Int32 { get }
var PyBUF_ND: Int32 { get }
var PyBUF_CONTIG_RO: Int32 { get }
var PyBUF_READ: Int32 { get }
var PyBUF_WRITE: Int32 { get }
var PyBUF_SHADOW: Int32 { get }
typealias objobjproc = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>) -> Int32
typealias visitproc = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<Void>) -> Int32
typealias traverseproc = @convention(c) (UnsafeMutablePointer<PyObject>, visitproc!, UnsafeMutablePointer<Void>) -> Int32
struct PyNumberMethods {
  var nb_add: binaryfunc!
  var nb_subtract: binaryfunc!
  var nb_multiply: binaryfunc!
  var nb_divide: binaryfunc!
  var nb_remainder: binaryfunc!
  var nb_divmod: binaryfunc!
  var nb_power: ternaryfunc!
  var nb_negative: unaryfunc!
  var nb_positive: unaryfunc!
  var nb_absolute: unaryfunc!
  var nb_nonzero: inquiry!
  var nb_invert: unaryfunc!
  var nb_lshift: binaryfunc!
  var nb_rshift: binaryfunc!
  var nb_and: binaryfunc!
  var nb_xor: binaryfunc!
  var nb_or: binaryfunc!
  var nb_coerce: coercion!
  var nb_int: unaryfunc!
  var nb_long: unaryfunc!
  var nb_float: unaryfunc!
  var nb_oct: unaryfunc!
  var nb_hex: unaryfunc!
  var nb_inplace_add: binaryfunc!
  var nb_inplace_subtract: binaryfunc!
  var nb_inplace_multiply: binaryfunc!
  var nb_inplace_divide: binaryfunc!
  var nb_inplace_remainder: binaryfunc!
  var nb_inplace_power: ternaryfunc!
  var nb_inplace_lshift: binaryfunc!
  var nb_inplace_rshift: binaryfunc!
  var nb_inplace_and: binaryfunc!
  var nb_inplace_xor: binaryfunc!
  var nb_inplace_or: binaryfunc!
  var nb_floor_divide: binaryfunc!
  var nb_true_divide: binaryfunc!
  var nb_inplace_floor_divide: binaryfunc!
  var nb_inplace_true_divide: binaryfunc!
  var nb_index: unaryfunc!
  init()
  init(nb_add: binaryfunc!, nb_subtract: binaryfunc!, nb_multiply: binaryfunc!, nb_divide: binaryfunc!, nb_remainder: binaryfunc!, nb_divmod: binaryfunc!, nb_power: ternaryfunc!, nb_negative: unaryfunc!, nb_positive: unaryfunc!, nb_absolute: unaryfunc!, nb_nonzero: inquiry!, nb_invert: unaryfunc!, nb_lshift: binaryfunc!, nb_rshift: binaryfunc!, nb_and: binaryfunc!, nb_xor: binaryfunc!, nb_or: binaryfunc!, nb_coerce: coercion!, nb_int: unaryfunc!, nb_long: unaryfunc!, nb_float: unaryfunc!, nb_oct: unaryfunc!, nb_hex: unaryfunc!, nb_inplace_add: binaryfunc!, nb_inplace_subtract: binaryfunc!, nb_inplace_multiply: binaryfunc!, nb_inplace_divide: binaryfunc!, nb_inplace_remainder: binaryfunc!, nb_inplace_power: ternaryfunc!, nb_inplace_lshift: binaryfunc!, nb_inplace_rshift: binaryfunc!, nb_inplace_and: binaryfunc!, nb_inplace_xor: binaryfunc!, nb_inplace_or: binaryfunc!, nb_floor_divide: binaryfunc!, nb_true_divide: binaryfunc!, nb_inplace_floor_divide: binaryfunc!, nb_inplace_true_divide: binaryfunc!, nb_index: unaryfunc!)
}
struct PySequenceMethods {
  var sq_length: lenfunc!
  var sq_concat: binaryfunc!
  var sq_repeat: ssizeargfunc!
  var sq_item: ssizeargfunc!
  var sq_slice: ssizessizeargfunc!
  var sq_ass_item: ssizeobjargproc!
  var sq_ass_slice: ssizessizeobjargproc!
  var sq_contains: objobjproc!
  var sq_inplace_concat: binaryfunc!
  var sq_inplace_repeat: ssizeargfunc!
  init()
  init(sq_length: lenfunc!, sq_concat: binaryfunc!, sq_repeat: ssizeargfunc!, sq_item: ssizeargfunc!, sq_slice: ssizessizeargfunc!, sq_ass_item: ssizeobjargproc!, sq_ass_slice: ssizessizeobjargproc!, sq_contains: objobjproc!, sq_inplace_concat: binaryfunc!, sq_inplace_repeat: ssizeargfunc!)
}
struct PyMappingMethods {
  var mp_length: lenfunc!
  var mp_subscript: binaryfunc!
  var mp_ass_subscript: objobjargproc!
  init()
  init(mp_length: lenfunc!, mp_subscript: binaryfunc!, mp_ass_subscript: objobjargproc!)
}
struct PyBufferProcs {
  var bf_getreadbuffer: readbufferproc!
  var bf_getwritebuffer: writebufferproc!
  var bf_getsegcount: segcountproc!
  var bf_getcharbuffer: charbufferproc!
  var bf_getbuffer: getbufferproc!
  var bf_releasebuffer: releasebufferproc!
  init()
  init(bf_getreadbuffer: readbufferproc!, bf_getwritebuffer: writebufferproc!, bf_getsegcount: segcountproc!, bf_getcharbuffer: charbufferproc!, bf_getbuffer: getbufferproc!, bf_releasebuffer: releasebufferproc!)
}
typealias freefunc = @convention(c) (UnsafeMutablePointer<Void>) -> Void
typealias destructor = @convention(c) (UnsafeMutablePointer<PyObject>) -> Void
typealias printfunc = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<FILE>, Int32) -> Int32
typealias getattrfunc = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<Int8>) -> UnsafeMutablePointer<PyObject>
typealias getattrofunc = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
typealias setattrfunc = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<Int8>, UnsafeMutablePointer<PyObject>) -> Int32
typealias setattrofunc = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>) -> Int32
typealias cmpfunc = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>) -> Int32
typealias reprfunc = @convention(c) (UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
typealias hashfunc = @convention(c) (UnsafeMutablePointer<PyObject>) -> Int
typealias richcmpfunc = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>, Int32) -> UnsafeMutablePointer<PyObject>
typealias getiterfunc = @convention(c) (UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
typealias iternextfunc = @convention(c) (UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
typealias descrgetfunc = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
typealias descrsetfunc = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>) -> Int32
typealias initproc = @convention(c) (UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>) -> Int32
typealias newfunc = @convention(c) (UnsafeMutablePointer<_typeobject>, UnsafeMutablePointer<PyObject>, UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
typealias allocfunc = @convention(c) (UnsafeMutablePointer<_typeobject>, Py_ssize_t) -> UnsafeMutablePointer<PyObject>
struct _typeobject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var ob_size: Py_ssize_t
  var tp_name: UnsafePointer<Int8>
  var tp_basicsize: Py_ssize_t
  var tp_itemsize: Py_ssize_t
  var tp_dealloc: destructor!
  var tp_print: printfunc!
  var tp_getattr: getattrfunc!
  var tp_setattr: setattrfunc!
  var tp_compare: cmpfunc!
  var tp_repr: reprfunc!
  var tp_as_number: UnsafeMutablePointer<PyNumberMethods>
  var tp_as_sequence: UnsafeMutablePointer<PySequenceMethods>
  var tp_as_mapping: UnsafeMutablePointer<PyMappingMethods>
  var tp_hash: hashfunc!
  var tp_call: ternaryfunc!
  var tp_str: reprfunc!
  var tp_getattro: getattrofunc!
  var tp_setattro: setattrofunc!
  var tp_as_buffer: UnsafeMutablePointer<PyBufferProcs>
  var tp_flags: Int
  var tp_doc: UnsafePointer<Int8>
  var tp_traverse: traverseproc!
  var tp_clear: inquiry!
  var tp_richcompare: richcmpfunc!
  var tp_weaklistoffset: Py_ssize_t
  var tp_iter: getiterfunc!
  var tp_iternext: iternextfunc!
  var tp_methods: UnsafeMutablePointer<PyMethodDef>
  var tp_members: UnsafeMutablePointer<PyMemberDef>
  var tp_getset: UnsafeMutablePointer<PyGetSetDef>
  var tp_base: UnsafeMutablePointer<_typeobject>
  var tp_dict: UnsafeMutablePointer<PyObject>
  var tp_descr_get: descrgetfunc!
  var tp_descr_set: descrsetfunc!
  var tp_dictoffset: Py_ssize_t
  var tp_init: initproc!
  var tp_alloc: allocfunc!
  var tp_new: newfunc!
  var tp_free: freefunc!
  var tp_is_gc: inquiry!
  var tp_bases: UnsafeMutablePointer<PyObject>
  var tp_mro: UnsafeMutablePointer<PyObject>
  var tp_cache: UnsafeMutablePointer<PyObject>
  var tp_subclasses: UnsafeMutablePointer<PyObject>
  var tp_weaklist: UnsafeMutablePointer<PyObject>
  var tp_del: destructor!
  var tp_version_tag: UInt32
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, ob_size: Py_ssize_t, tp_name: UnsafePointer<Int8>, tp_basicsize: Py_ssize_t, tp_itemsize: Py_ssize_t, tp_dealloc: destructor!, tp_print: printfunc!, tp_getattr: getattrfunc!, tp_setattr: setattrfunc!, tp_compare: cmpfunc!, tp_repr: reprfunc!, tp_as_number: UnsafeMutablePointer<PyNumberMethods>, tp_as_sequence: UnsafeMutablePointer<PySequenceMethods>, tp_as_mapping: UnsafeMutablePointer<PyMappingMethods>, tp_hash: hashfunc!, tp_call: ternaryfunc!, tp_str: reprfunc!, tp_getattro: getattrofunc!, tp_setattro: setattrofunc!, tp_as_buffer: UnsafeMutablePointer<PyBufferProcs>, tp_flags: Int, tp_doc: UnsafePointer<Int8>, tp_traverse: traverseproc!, tp_clear: inquiry!, tp_richcompare: richcmpfunc!, tp_weaklistoffset: Py_ssize_t, tp_iter: getiterfunc!, tp_iternext: iternextfunc!, tp_methods: UnsafeMutablePointer<PyMethodDef>, tp_members: UnsafeMutablePointer<PyMemberDef>, tp_getset: UnsafeMutablePointer<PyGetSetDef>, tp_base: UnsafeMutablePointer<_typeobject>, tp_dict: UnsafeMutablePointer<PyObject>, tp_descr_get: descrgetfunc!, tp_descr_set: descrsetfunc!, tp_dictoffset: Py_ssize_t, tp_init: initproc!, tp_alloc: allocfunc!, tp_new: newfunc!, tp_free: freefunc!, tp_is_gc: inquiry!, tp_bases: UnsafeMutablePointer<PyObject>, tp_mro: UnsafeMutablePointer<PyObject>, tp_cache: UnsafeMutablePointer<PyObject>, tp_subclasses: UnsafeMutablePointer<PyObject>, tp_weaklist: UnsafeMutablePointer<PyObject>, tp_del: destructor!, tp_version_tag: UInt32)
}
typealias PyTypeObject = _typeobject
struct _heaptypeobject {
  var ht_type: PyTypeObject
  var as_number: PyNumberMethods
  var as_mapping: PyMappingMethods
  var as_sequence: PySequenceMethods
  var as_buffer: PyBufferProcs
  var ht_name: UnsafeMutablePointer<PyObject>
  var ht_slots: UnsafeMutablePointer<PyObject>
  init()
  init(ht_type: PyTypeObject, as_number: PyNumberMethods, as_mapping: PyMappingMethods, as_sequence: PySequenceMethods, as_buffer: PyBufferProcs, ht_name: UnsafeMutablePointer<PyObject>, ht_slots: UnsafeMutablePointer<PyObject>)
}
typealias PyHeapTypeObject = _heaptypeobject
func PyType_IsSubtype(_: UnsafeMutablePointer<PyTypeObject>, _: UnsafeMutablePointer<PyTypeObject>) -> Int32
var PyType_Type: PyTypeObject
var PyBaseObject_Type: PyTypeObject
var PySuper_Type: PyTypeObject
func PyType_Ready(_: UnsafeMutablePointer<PyTypeObject>) -> Int32
func PyType_GenericAlloc(_: UnsafeMutablePointer<PyTypeObject>, _: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyType_GenericNew(_: UnsafeMutablePointer<PyTypeObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func _PyType_Lookup(_: UnsafeMutablePointer<PyTypeObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func _PyObject_LookupSpecial(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<Int8>, _: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>) -> UnsafeMutablePointer<PyObject>
func PyType_ClearCache() -> UInt32
func PyType_Modified(_: UnsafeMutablePointer<PyTypeObject>)
func PyObject_Print(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<FILE>, _: Int32) -> Int32
func _PyObject_Dump(_: UnsafeMutablePointer<PyObject>)
func PyObject_Repr(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func _PyObject_Str(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyObject_Str(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyObject_Unicode(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyObject_Compare(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyObject_RichCompare(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: Int32) -> UnsafeMutablePointer<PyObject>
func PyObject_RichCompareBool(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: Int32) -> Int32
func PyObject_GetAttrString(_: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyObject_SetAttrString(_: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyObject_HasAttrString(_: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>) -> Int32
func PyObject_GetAttr(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyObject_SetAttr(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyObject_HasAttr(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> Int32
func _PyObject_GetDictPtr(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>
func PyObject_SelfIter(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func _PyObject_NextNotImplemented(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyObject_GenericGetAttr(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyObject_GenericSetAttr(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyObject_Hash(_: UnsafeMutablePointer<PyObject>) -> Int
func PyObject_HashNotImplemented(_: UnsafeMutablePointer<PyObject>) -> Int
func PyObject_IsTrue(_: UnsafeMutablePointer<PyObject>) -> Int32
func PyObject_Not(_: UnsafeMutablePointer<PyObject>) -> Int32
func PyCallable_Check(_: UnsafeMutablePointer<PyObject>) -> Int32
func PyNumber_Coerce(_: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>) -> Int32
func PyNumber_CoerceEx(_: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>) -> Int32
func PyObject_ClearWeakRefs(_: UnsafeMutablePointer<PyObject>)
func _PyObject_SlotCompare(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> Int32
func _PyObject_GenericGetAttrWithDict(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func _PyObject_GenericSetAttrWithDict(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyObject_Dir(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func Py_ReprEnter(_: UnsafeMutablePointer<PyObject>) -> Int32
func Py_ReprLeave(_: UnsafeMutablePointer<PyObject>)
func _Py_HashDouble(_: Double) -> Int
func _Py_HashPointer(_: UnsafeMutablePointer<Void>) -> Int
struct _Py_HashSecret_t {
  var prefix: Int
  var suffix: Int
  init()
  init(prefix: Int, suffix: Int)
}
var _Py_HashSecret: _Py_HashSecret_t
var Py_PRINT_RAW: Int32 { get }
var Py_TPFLAGS_HAVE_GETCHARBUFFER: Int { get }
var Py_TPFLAGS_HAVE_SEQUENCE_IN: Int { get }
var Py_TPFLAGS_GC: Int32 { get }
var Py_TPFLAGS_HAVE_INPLACEOPS: Int { get }
var Py_TPFLAGS_CHECKTYPES: Int { get }
var Py_TPFLAGS_HAVE_RICHCOMPARE: Int { get }
var Py_TPFLAGS_HAVE_WEAKREFS: Int { get }
var Py_TPFLAGS_HAVE_ITER: Int { get }
var Py_TPFLAGS_HAVE_CLASS: Int { get }
var Py_TPFLAGS_HEAPTYPE: Int { get }
var Py_TPFLAGS_BASETYPE: Int { get }
var Py_TPFLAGS_READY: Int { get }
var Py_TPFLAGS_READYING: Int { get }
var Py_TPFLAGS_HAVE_GC: Int { get }
var Py_TPFLAGS_HAVE_STACKLESS_EXTENSION: Int32 { get }
var Py_TPFLAGS_HAVE_INDEX: Int { get }
var Py_TPFLAGS_HAVE_VERSION_TAG: Int { get }
var Py_TPFLAGS_VALID_VERSION_TAG: Int { get }
var Py_TPFLAGS_IS_ABSTRACT: Int { get }
var Py_TPFLAGS_HAVE_NEWBUFFER: Int { get }
var Py_TPFLAGS_INT_SUBCLASS: Int { get }
var Py_TPFLAGS_LONG_SUBCLASS: Int { get }
var Py_TPFLAGS_LIST_SUBCLASS: Int { get }
var Py_TPFLAGS_TUPLE_SUBCLASS: Int { get }
var Py_TPFLAGS_STRING_SUBCLASS: Int { get }
var Py_TPFLAGS_UNICODE_SUBCLASS: Int { get }
var Py_TPFLAGS_DICT_SUBCLASS: Int { get }
var Py_TPFLAGS_BASE_EXC_SUBCLASS: Int { get }
var Py_TPFLAGS_TYPE_SUBCLASS: Int { get }
func Py_IncRef(_: UnsafeMutablePointer<PyObject>)
func Py_DecRef(_: UnsafeMutablePointer<PyObject>)
var _Py_NoneStruct: PyObject
var _Py_NotImplementedStruct: PyObject
var Py_LT: Int32 { get }
var Py_LE: Int32 { get }
var Py_EQ: Int32 { get }
var Py_NE: Int32 { get }
var Py_GT: Int32 { get }
var Py_GE: Int32 { get }
func _PyTrash_deposit_object(_: UnsafeMutablePointer<PyObject>)
func _PyTrash_destroy_chain()
var _PyTrash_delete_nesting: Int32
var _PyTrash_delete_later: UnsafeMutablePointer<PyObject>
func _PyTrash_thread_deposit_object(_: UnsafeMutablePointer<PyObject>)
func _PyTrash_thread_destroy_chain()
var PyTrash_UNWIND_LEVEL: Int32 { get }
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
var PY_RELEASE_LEVEL_ALPHA: Int32 { get }
var PY_RELEASE_LEVEL_BETA: Int32 { get }
var PY_RELEASE_LEVEL_GAMMA: Int32 { get }
var PY_RELEASE_LEVEL_FINAL: Int32 { get }
var PY_MAJOR_VERSION: Int32 { get }
var PY_MINOR_VERSION: Int32 { get }
var PY_MICRO_VERSION: Int32 { get }
var PY_RELEASE_LEVEL: Int32 { get }
var PY_RELEASE_SERIAL: Int32 { get }
var PY_VERSION: String { get }
var PY_PATCHLEVEL_REVISION: String { get }
func PyArena_New() -> COpaquePointer
func PyArena_Free(_: COpaquePointer)
func PyArena_Malloc(_: COpaquePointer, _ size: Int) -> UnsafeMutablePointer<Void>
func PyArena_AddPyObject(_: COpaquePointer, _: UnsafeMutablePointer<PyObject>) -> Int32
var PyCapsule_Type: PyTypeObject
typealias PyCapsule_Destructor = @convention(c) (UnsafeMutablePointer<PyObject>) -> Void
func PyCapsule_New(pointer: UnsafeMutablePointer<Void>, _ name: UnsafePointer<Int8>, _ destructor: PyCapsule_Destructor!) -> UnsafeMutablePointer<PyObject>
func PyCapsule_GetPointer(capsule: UnsafeMutablePointer<PyObject>, _ name: UnsafePointer<Int8>) -> UnsafeMutablePointer<Void>
func PyCapsule_GetDestructor(capsule: UnsafeMutablePointer<PyObject>) -> PyCapsule_Destructor!
func PyCapsule_GetName(capsule: UnsafeMutablePointer<PyObject>) -> UnsafePointer<Int8>
func PyCapsule_GetContext(capsule: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<Void>
func PyCapsule_IsValid(capsule: UnsafeMutablePointer<PyObject>, _ name: UnsafePointer<Int8>) -> Int32
func PyCapsule_SetPointer(capsule: UnsafeMutablePointer<PyObject>, _ pointer: UnsafeMutablePointer<Void>) -> Int32
func PyCapsule_SetDestructor(capsule: UnsafeMutablePointer<PyObject>, _ destructor: PyCapsule_Destructor!) -> Int32
func PyCapsule_SetName(capsule: UnsafeMutablePointer<PyObject>, _ name: UnsafePointer<Int8>) -> Int32
func PyCapsule_SetContext(capsule: UnsafeMutablePointer<PyObject>, _ context: UnsafeMutablePointer<Void>) -> Int32
func PyCapsule_Import(name: UnsafePointer<Int8>, _ no_block: Int32) -> UnsafeMutablePointer<Void>
var AC_APPLE_UNIVERSAL_BUILD: Int32 { get }
var ENABLE_IPV6: Int32 { get }
var HAVE_ACOSH: Int32 { get }
var HAVE_ADDRINFO: Int32 { get }
var HAVE_ALARM: Int32 { get }
var HAVE_ALLOCA_H: Int32 { get }
var HAVE_ASINH: Int32 { get }
var HAVE_ATANH: Int32 { get }
var HAVE_BROKEN_SEM_GETVALUE: Int32 { get }
var HAVE_C99_BOOL: Int32 { get }
var HAVE_CHFLAGS: Int32 { get }
var HAVE_CHOWN: Int32 { get }
var HAVE_CHROOT: Int32 { get }
var HAVE_CLOCK: Int32 { get }
var HAVE_CONFSTR: Int32 { get }
var HAVE_COPYSIGN: Int32 { get }
var HAVE_CTERMID: Int32 { get }
var HAVE_CTERMID_R: Int32 { get }
var HAVE_CURSES_H: Int32 { get }
var HAVE_CURSES_IS_TERM_RESIZED: Int32 { get }
var HAVE_CURSES_RESIZETERM: Int32 { get }
var HAVE_CURSES_RESIZE_TERM: Int32 { get }
var HAVE_DECL_ISFINITE: Int32 { get }
var HAVE_DECL_ISINF: Int32 { get }
var HAVE_DECL_ISNAN: Int32 { get }
var HAVE_DEVICE_MACROS: Int32 { get }
var HAVE_DEV_PTMX: Int32 { get }
var HAVE_DIRENT_H: Int32 { get }
var HAVE_DLFCN_H: Int32 { get }
var HAVE_DLOPEN: Int32 { get }
var HAVE_DUP2: Int32 { get }
var HAVE_DYNAMIC_LOADING: Int32 { get }
var HAVE_ERF: Int32 { get }
var HAVE_ERFC: Int32 { get }
var HAVE_ERRNO_H: Int32 { get }
var HAVE_EXECV: Int32 { get }
var HAVE_EXPM1: Int32 { get }
var HAVE_FCHDIR: Int32 { get }
var HAVE_FCHMOD: Int32 { get }
var HAVE_FCHOWN: Int32 { get }
var HAVE_FCNTL_H: Int32 { get }
var HAVE_FINITE: Int32 { get }
var HAVE_FLOCK: Int32 { get }
var HAVE_FORK: Int32 { get }
var HAVE_FORKPTY: Int32 { get }
var HAVE_FPATHCONF: Int32 { get }
var HAVE_FSEEKO: Int32 { get }
var HAVE_FSTATVFS: Int32 { get }
var HAVE_FSYNC: Int32 { get }
var HAVE_FTELLO: Int32 { get }
var HAVE_FTIME: Int32 { get }
var HAVE_FTRUNCATE: Int32 { get }
var HAVE_GAI_STRERROR: Int32 { get }
var HAVE_GAMMA: Int32 { get }
var HAVE_GETADDRINFO: Int32 { get }
var HAVE_GETCWD: Int32 { get }
var HAVE_GETC_UNLOCKED: Int32 { get }
var HAVE_GETGROUPS: Int32 { get }
var HAVE_GETHOSTBYNAME: Int32 { get }
var HAVE_GETITIMER: Int32 { get }
var HAVE_GETLOADAVG: Int32 { get }
var HAVE_GETLOGIN: Int32 { get }
var HAVE_GETNAMEINFO: Int32 { get }
var HAVE_GETPAGESIZE: Int32 { get }
var HAVE_GETPEERNAME: Int32 { get }
var HAVE_GETPGID: Int32 { get }
var HAVE_GETPGRP: Int32 { get }
var HAVE_GETPID: Int32 { get }
var HAVE_GETPRIORITY: Int32 { get }
var HAVE_GETPWENT: Int32 { get }
var HAVE_GETSID: Int32 { get }
var HAVE_GETTIMEOFDAY: Int32 { get }
var HAVE_GETWD: Int32 { get }
var HAVE_GRP_H: Int32 { get }
var HAVE_HSTRERROR: Int32 { get }
var HAVE_HYPOT: Int32 { get }
var HAVE_INET_ATON: Int32 { get }
var HAVE_INET_PTON: Int32 { get }
var HAVE_INITGROUPS: Int32 { get }
var HAVE_INT32_T: Int32 { get }
var HAVE_INT64_T: Int32 { get }
var HAVE_INTTYPES_H: Int32 { get }
var HAVE_KILL: Int32 { get }
var HAVE_KILLPG: Int32 { get }
var HAVE_KQUEUE: Int32 { get }
var HAVE_LANGINFO_H: Int32 { get }
var HAVE_LCHFLAGS: Int32 { get }
var HAVE_LCHMOD: Int32 { get }
var HAVE_LCHOWN: Int32 { get }
var HAVE_LGAMMA: Int32 { get }
var HAVE_LIBDL: Int32 { get }
var HAVE_LIBREADLINE: Int32 { get }
var HAVE_LIBUTIL_H: Int32 { get }
var HAVE_LINK: Int32 { get }
var HAVE_LOG1P: Int32 { get }
var HAVE_LONG_DOUBLE: Int32 { get }
var HAVE_LONG_LONG: Int32 { get }
var HAVE_LSTAT: Int32 { get }
var HAVE_MAKEDEV: Int32 { get }
var HAVE_MEMMOVE: Int32 { get }
var HAVE_MEMORY_H: Int32 { get }
var HAVE_MKFIFO: Int32 { get }
var HAVE_MKNOD: Int32 { get }
var HAVE_MKTIME: Int32 { get }
var HAVE_MMAP: Int32 { get }
var HAVE_NCURSES_H: Int32 { get }
var HAVE_NICE: Int32 { get }
var HAVE_OPENPTY: Int32 { get }
var HAVE_OSX105_SDK: Int32 { get }
var HAVE_PATHCONF: Int32 { get }
var HAVE_PAUSE: Int32 { get }
var HAVE_PROTOTYPES: Int32 { get }
var HAVE_PTHREAD_ATFORK: Int32 { get }
var HAVE_PTHREAD_H: Int32 { get }
var HAVE_PTHREAD_SIGMASK: Int32 { get }
var HAVE_PUTENV: Int32 { get }
var HAVE_RAND_EGD: Int32 { get }
var HAVE_READLINK: Int32 { get }
var HAVE_REALPATH: Int32 { get }
var HAVE_RL_CALLBACK: Int32 { get }
var HAVE_RL_COMPLETION_APPEND_CHARACTER: Int32 { get }
var HAVE_RL_COMPLETION_MATCHES: Int32 { get }
var HAVE_RL_PRE_INPUT_HOOK: Int32 { get }
var HAVE_ROUND: Int32 { get }
var HAVE_SELECT: Int32 { get }
var HAVE_SEM_GETVALUE: Int32 { get }
var HAVE_SEM_OPEN: Int32 { get }
var HAVE_SEM_UNLINK: Int32 { get }
var HAVE_SETEGID: Int32 { get }
var HAVE_SETEUID: Int32 { get }
var HAVE_SETGID: Int32 { get }
var HAVE_SETGROUPS: Int32 { get }
var HAVE_SETITIMER: Int32 { get }
var HAVE_SETLOCALE: Int32 { get }
var HAVE_SETPGID: Int32 { get }
var HAVE_SETPGRP: Int32 { get }
var HAVE_SETREGID: Int32 { get }
var HAVE_SETREUID: Int32 { get }
var HAVE_SETSID: Int32 { get }
var HAVE_SETUID: Int32 { get }
var HAVE_SETVBUF: Int32 { get }
var HAVE_SIGACTION: Int32 { get }
var HAVE_SIGINTERRUPT: Int32 { get }
var HAVE_SIGNAL_H: Int32 { get }
var HAVE_SIGRELSE: Int32 { get }
var HAVE_SNPRINTF: Int32 { get }
var HAVE_SOCKADDR_SA_LEN: Int32 { get }
var HAVE_SOCKADDR_STORAGE: Int32 { get }
var HAVE_SOCKETPAIR: Int32 { get }
var HAVE_SPAWN_H: Int32 { get }
var HAVE_SSIZE_T: Int32 { get }
var HAVE_STATVFS: Int32 { get }
var HAVE_STAT_TV_NSEC2: Int32 { get }
var HAVE_STDARG_PROTOTYPES: Int32 { get }
var HAVE_STDINT_H: Int32 { get }
var HAVE_STDLIB_H: Int32 { get }
var HAVE_STRDUP: Int32 { get }
var HAVE_STRFTIME: Int32 { get }
var HAVE_STRINGS_H: Int32 { get }
var HAVE_STRING_H: Int32 { get }
var HAVE_STRUCT_STAT_ST_BIRTHTIME: Int32 { get }
var HAVE_STRUCT_STAT_ST_BLKSIZE: Int32 { get }
var HAVE_STRUCT_STAT_ST_BLOCKS: Int32 { get }
var HAVE_STRUCT_STAT_ST_FLAGS: Int32 { get }
var HAVE_STRUCT_STAT_ST_GEN: Int32 { get }
var HAVE_STRUCT_STAT_ST_RDEV: Int32 { get }
var HAVE_STRUCT_TM_TM_ZONE: Int32 { get }
var HAVE_ST_BLOCKS: Int32 { get }
var HAVE_SYMLINK: Int32 { get }
var HAVE_SYSCONF: Int32 { get }
var HAVE_SYSEXITS_H: Int32 { get }
var HAVE_SYS_EVENT_H: Int32 { get }
var HAVE_SYS_FILE_H: Int32 { get }
var HAVE_SYS_LOCK_H: Int32 { get }
var HAVE_SYS_PARAM_H: Int32 { get }
var HAVE_SYS_POLL_H: Int32 { get }
var HAVE_SYS_RESOURCE_H: Int32 { get }
var HAVE_SYS_SELECT_H: Int32 { get }
var HAVE_SYS_SOCKET_H: Int32 { get }
var HAVE_SYS_STATVFS_H: Int32 { get }
var HAVE_SYS_STAT_H: Int32 { get }
var HAVE_SYS_TIMES_H: Int32 { get }
var HAVE_SYS_TIME_H: Int32 { get }
var HAVE_SYS_TYPES_H: Int32 { get }
var HAVE_SYS_UN_H: Int32 { get }
var HAVE_SYS_UTSNAME_H: Int32 { get }
var HAVE_SYS_WAIT_H: Int32 { get }
var HAVE_TCGETPGRP: Int32 { get }
var HAVE_TCSETPGRP: Int32 { get }
var HAVE_TEMPNAM: Int32 { get }
var HAVE_TERMIOS_H: Int32 { get }
var HAVE_TERM_H: Int32 { get }
var HAVE_TGAMMA: Int32 { get }
var HAVE_TIMEGM: Int32 { get }
var HAVE_TIMES: Int32 { get }
var HAVE_TMPFILE: Int32 { get }
var HAVE_TMPNAM: Int32 { get }
var HAVE_TM_ZONE: Int32 { get }
var HAVE_TRUNCATE: Int32 { get }
var HAVE_UINT32_T: Int32 { get }
var HAVE_UINT64_T: Int32 { get }
var HAVE_UINTPTR_T: Int32 { get }
var HAVE_UNAME: Int32 { get }
var HAVE_UNISTD_H: Int32 { get }
var HAVE_UNSETENV: Int32 { get }
var HAVE_UTIL_H: Int32 { get }
var HAVE_UTIMES: Int32 { get }
var HAVE_UTIME_H: Int32 { get }
var HAVE_WAIT3: Int32 { get }
var HAVE_WAIT4: Int32 { get }
var HAVE_WAITPID: Int32 { get }
var HAVE_WCHAR_H: Int32 { get }
var HAVE_WCSCOLL: Int32 { get }
var HAVE_WORKING_TZSET: Int32 { get }
var HAVE_ZLIB_COPY: Int32 { get }
var MVWDELCH_IS_EXPRESSION: Int32 { get }
var PTHREAD_SYSTEM_SCHED_SUPPORTED: Int32 { get }
var PY_FORMAT_LONG_LONG: String { get }
var Py_UNICODE_SIZE: Int32 { get }
var Py_USING_UNICODE: Int32 { get }
var SHLIB_EXT: String { get }
var SIZEOF_DOUBLE: Int32 { get }
var SIZEOF_FLOAT: Int32 { get }
var SIZEOF_FPOS_T: Int32 { get }
var SIZEOF_INT: Int32 { get }
var SIZEOF_LONG_DOUBLE: Int32 { get }
var SIZEOF_LONG_LONG: Int32 { get }
var SIZEOF_OFF_T: Int32 { get }
var SIZEOF_PID_T: Int32 { get }
var SIZEOF_SHORT: Int32 { get }
var SIZEOF_WCHAR_T: Int32 { get }
var STDC_HEADERS: Int32 { get }
var SYS_SELECT_WITH_SYS_TIME: Int32 { get }
var TANH_PRESERVES_ZERO_SIGN: Int32 { get }
var TIME_WITH_SYS_TIME: Int32 { get }
var _ALL_SOURCE: Int32 { get }
var _POSIX_PTHREAD_SEMANTICS: Int32 { get }
var _TANDEM_SOURCE: Int32 { get }
var USE_TOOLBOX_OBJECT_GLUE: Int32 { get }
var WITH_DOC_STRINGS: Int32 { get }
var WITH_DYLD: Int32 { get }
var WITH_NEXT_FRAMEWORK: Int32 { get }
var WITH_PYMALLOC: Int32 { get }
var WITH_THREAD: Int32 { get }
var _BSD_TYPES: Int32 { get }
var _DARWIN_C_SOURCE: Int32 { get }
var _FILE_OFFSET_BITS: Int32 { get }
var _GNU_SOURCE: Int32 { get }
var _LARGEFILE_SOURCE: Int32 { get }
var _NETBSD_SOURCE: Int32 { get }
var _REENTRANT: Int32 { get }
var __BSD_VISIBLE: Int32 { get }
var __EXTENSIONS__: Int32 { get }
var PY_CTF_LOWER: Int32 { get }
var PY_CTF_UPPER: Int32 { get }
var PY_CTF_DIGIT: Int32 { get }
var PY_CTF_SPACE: Int32 { get }
var PY_CTF_XDIGIT: Int32 { get }
let _Py_ctype_table: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
let _Py_ctype_tolower: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
let _Py_ctype_toupper: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
var Py_DebugFlag: Int32
var Py_VerboseFlag: Int32
var Py_InteractiveFlag: Int32
var Py_InspectFlag: Int32
var Py_OptimizeFlag: Int32
var Py_NoSiteFlag: Int32
var Py_BytesWarningFlag: Int32
var Py_UseClassExceptionsFlag: Int32
var Py_FrozenFlag: Int32
var Py_TabcheckFlag: Int32
var Py_UnicodeFlag: Int32
var Py_IgnoreEnvironmentFlag: Int32
var Py_DivisionWarningFlag: Int32
var Py_DontWriteBytecodeFlag: Int32
var Py_NoUserSiteDirectory: Int32
var _Py_QnewFlag: Int32
var Py_Py3kWarningFlag: Int32
var Py_HashRandomizationFlag: Int32
func Py_FatalError(message: UnsafePointer<Int8>)
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
var VA_LIST_IS_ARRAY: Int32 { get }
var SIZEOF__BOOL: Int32 { get }
var SIZEOF_LONG: Int32 { get }
var SIZEOF_SIZE_T: Int32 { get }
var SIZEOF_TIME_T: Int32 { get }
var SIZEOF_VOID_P: Int32 { get }
var SIZEOF_UINTPTR_T: Int32 { get }
var SIZEOF_PTHREAD_T: Int32 { get }
var Py_MATH_PI: Double { get }
var Py_MATH_E: Double { get }
func PyMem_Malloc(_: Int) -> UnsafeMutablePointer<Void>
func PyMem_Realloc(_: UnsafeMutablePointer<Void>, _: Int) -> UnsafeMutablePointer<Void>
func PyMem_Free(_: UnsafeMutablePointer<Void>)
var PY_LLONG_MAX: Int64 { get }
var PYLONG_BITS_IN_DIGIT: Int32 { get }
typealias Py_uintptr_t = UInt
typealias Py_intptr_t = Int
typealias Py_ssize_t = Int
var PY_SIZE_MAX: UInt64 { get }
var PY_FORMAT_SIZE_T: String { get }
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
func PyOS_mystrnicmp(_: UnsafePointer<Int8>, _: UnsafePointer<Int8>, _: Py_ssize_t) -> Int32
func PyOS_mystricmp(_: UnsafePointer<Int8>, _: UnsafePointer<Int8>) -> Int32
func PyOS_ascii_strtod(str: UnsafePointer<Int8>, _ ptr: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> Double
func PyOS_ascii_atof(str: UnsafePointer<Int8>) -> Double
func PyOS_ascii_formatd(buffer: UnsafeMutablePointer<Int8>, _ buf_len: Int, _ format: UnsafePointer<Int8>, _ d: Double) -> UnsafeMutablePointer<Int8>
func PyOS_string_to_double(str: UnsafePointer<Int8>, _ endptr: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>, _ overflow_exception: UnsafeMutablePointer<PyObject>) -> Double
func PyOS_double_to_string(val: Double, _ format_code: Int8, _ precision: Int32, _ flags: Int32, _ type: UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<Int8>
func _Py_parse_inf_or_nan(p: UnsafePointer<Int8>, _ endptr: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> Double
var Py_DTSF_SIGN: Int32 { get }
var Py_DTSF_ADD_DOT_0: Int32 { get }
var Py_DTSF_ALT: Int32 { get }
var Py_DTST_FINITE: Int32 { get }
var Py_DTST_INFINITE: Int32 { get }
var Py_DTST_NAN: Int32 { get }
var PyCF_MASK_OBSOLETE: Int32 { get }
var PyCF_SOURCE_IS_UTF8: Int32 { get }
var PyCF_DONT_IMPLY_DEDENT: Int32 { get }
var PyCF_ONLY_AST: Int32 { get }
struct PyCompilerFlags {
  var cf_flags: Int32
  init()
  init(cf_flags: Int32)
}
func Py_SetProgramName(_: UnsafeMutablePointer<Int8>)
func Py_GetProgramName() -> UnsafeMutablePointer<Int8>
func Py_SetPythonHome(_: UnsafeMutablePointer<Int8>)
func Py_GetPythonHome() -> UnsafeMutablePointer<Int8>
func Py_Initialize()
func Py_InitializeEx(_: Int32)
func Py_Finalize()
func Py_IsInitialized() -> Int32
func Py_NewInterpreter() -> UnsafeMutablePointer<PyThreadState>
func Py_EndInterpreter(_: UnsafeMutablePointer<PyThreadState>)
func PyRun_AnyFileFlags(_: UnsafeMutablePointer<FILE>, _: UnsafePointer<Int8>, _: UnsafeMutablePointer<PyCompilerFlags>) -> Int32
func PyRun_AnyFileExFlags(_: UnsafeMutablePointer<FILE>, _: UnsafePointer<Int8>, _: Int32, _: UnsafeMutablePointer<PyCompilerFlags>) -> Int32
func PyRun_SimpleStringFlags(_: UnsafePointer<Int8>, _: UnsafeMutablePointer<PyCompilerFlags>) -> Int32
func PyRun_SimpleFileExFlags(_: UnsafeMutablePointer<FILE>, _: UnsafePointer<Int8>, _: Int32, _: UnsafeMutablePointer<PyCompilerFlags>) -> Int32
func PyRun_InteractiveOneFlags(_: UnsafeMutablePointer<FILE>, _: UnsafePointer<Int8>, _: UnsafeMutablePointer<PyCompilerFlags>) -> Int32
func PyRun_InteractiveLoopFlags(_: UnsafeMutablePointer<FILE>, _: UnsafePointer<Int8>, _: UnsafeMutablePointer<PyCompilerFlags>) -> Int32
func PyParser_ASTFromString(_: UnsafePointer<Int8>, _: UnsafePointer<Int8>, _: Int32, _ flags: UnsafeMutablePointer<PyCompilerFlags>, _: COpaquePointer) -> COpaquePointer
func PyParser_ASTFromFile(_: UnsafeMutablePointer<FILE>, _: UnsafePointer<Int8>, _: Int32, _: UnsafeMutablePointer<Int8>, _: UnsafeMutablePointer<Int8>, _: UnsafeMutablePointer<PyCompilerFlags>, _: UnsafeMutablePointer<Int32>, _: COpaquePointer) -> COpaquePointer
func PyParser_SimpleParseStringFlags(_: UnsafePointer<Int8>, _: Int32, _: Int32) -> UnsafeMutablePointer<_node>
func PyParser_SimpleParseFileFlags(_: UnsafeMutablePointer<FILE>, _: UnsafePointer<Int8>, _: Int32, _: Int32) -> UnsafeMutablePointer<_node>
func PyRun_StringFlags(_: UnsafePointer<Int8>, _: Int32, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyCompilerFlags>) -> UnsafeMutablePointer<PyObject>
func PyRun_FileExFlags(_: UnsafeMutablePointer<FILE>, _: UnsafePointer<Int8>, _: Int32, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: Int32, _: UnsafeMutablePointer<PyCompilerFlags>) -> UnsafeMutablePointer<PyObject>
func Py_CompileStringFlags(_: UnsafePointer<Int8>, _: UnsafePointer<Int8>, _: Int32, _: UnsafeMutablePointer<PyCompilerFlags>) -> UnsafeMutablePointer<PyObject>
func Py_SymtableString(_: UnsafePointer<Int8>, _: UnsafePointer<Int8>, _: Int32) -> COpaquePointer
func PyErr_Print()
func PyErr_PrintEx(_: Int32)
func PyErr_Display(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>)
func Py_AtExit(func: (@convention(c) () -> Void)!) -> Int32
func Py_Exit(_: Int32)
func Py_FdIsInteractive(_: UnsafeMutablePointer<FILE>, _: UnsafePointer<Int8>) -> Int32
func Py_Main(argc: Int32, _ argv: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> Int32
func Py_GetProgramFullPath() -> UnsafeMutablePointer<Int8>
func Py_GetPrefix() -> UnsafeMutablePointer<Int8>
func Py_GetExecPrefix() -> UnsafeMutablePointer<Int8>
func Py_GetPath() -> UnsafeMutablePointer<Int8>
func Py_GetVersion() -> UnsafePointer<Int8>
func Py_GetPlatform() -> UnsafePointer<Int8>
func Py_GetCopyright() -> UnsafePointer<Int8>
func Py_GetCompiler() -> UnsafePointer<Int8>
func Py_GetBuildInfo() -> UnsafePointer<Int8>
func _Py_svnversion() -> UnsafePointer<Int8>
func Py_SubversionRevision() -> UnsafePointer<Int8>
func Py_SubversionShortBranch() -> UnsafePointer<Int8>
func _Py_hgidentifier() -> UnsafePointer<Int8>
func _Py_hgversion() -> UnsafePointer<Int8>
func _PyBuiltin_Init() -> UnsafeMutablePointer<PyObject>
func _PySys_Init() -> UnsafeMutablePointer<PyObject>
func _PyImport_Init()
func _PyExc_Init()
func _PyImportHooks_Init()
func _PyFrame_Init() -> Int32
func _PyInt_Init() -> Int32
func _PyLong_Init() -> Int32
func _PyFloat_Init()
func PyByteArray_Init() -> Int32
func _PyRandom_Init()
func _PyExc_Fini()
func _PyImport_Fini()
func PyMethod_Fini()
func PyFrame_Fini()
func PyCFunction_Fini()
func PyDict_Fini()
func PyTuple_Fini()
func PyList_Fini()
func PySet_Fini()
func PyString_Fini()
func PyInt_Fini()
func PyFloat_Fini()
func PyOS_FiniInterrupts()
func PyByteArray_Fini()
func _PyRandom_Fini()
func PyOS_Readline(_: UnsafeMutablePointer<FILE>, _: UnsafeMutablePointer<FILE>, _: UnsafeMutablePointer<Int8>) -> UnsafeMutablePointer<Int8>
var PyOS_InputHook: (@convention(c) () -> Int32)!
var PyOS_ReadlineFunctionPointer: (@convention(c) (UnsafeMutablePointer<FILE>, UnsafeMutablePointer<FILE>, UnsafeMutablePointer<Int8>) -> UnsafeMutablePointer<Int8>)!
var _PyOS_ReadlineTState: UnsafeMutablePointer<PyThreadState>
var PYOS_STACK_MARGIN: Int32 { get }
typealias PyOS_sighandler_t = @convention(c) (Int32) -> Void
func PyOS_getsig(_: Int32) -> PyOS_sighandler_t!
func PyOS_setsig(_: Int32, _: PyOS_sighandler_t!) -> PyOS_sighandler_t!
func _PyOS_URandom(buffer: UnsafeMutablePointer<Void>, _ size: Py_ssize_t) -> Int32
var PyRange_Type: PyTypeObject
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
var _Py_EllipsisObject: PyObject
struct PySliceObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var start: UnsafeMutablePointer<PyObject>
  var stop: UnsafeMutablePointer<PyObject>
  var step: UnsafeMutablePointer<PyObject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, start: UnsafeMutablePointer<PyObject>, stop: UnsafeMutablePointer<PyObject>, step: UnsafeMutablePointer<PyObject>)
}
var PySlice_Type: PyTypeObject
var PyEllipsis_Type: PyTypeObject
func PySlice_New(start: UnsafeMutablePointer<PyObject>, _ stop: UnsafeMutablePointer<PyObject>, _ step: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func _PySlice_FromIndices(start: Py_ssize_t, _ stop: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PySlice_GetIndices(r: UnsafeMutablePointer<PySliceObject>, _ length: Py_ssize_t, _ start: UnsafeMutablePointer<Py_ssize_t>, _ stop: UnsafeMutablePointer<Py_ssize_t>, _ step: UnsafeMutablePointer<Py_ssize_t>) -> Int32
func PySlice_GetIndicesEx(r: UnsafeMutablePointer<PySliceObject>, _ length: Py_ssize_t, _ start: UnsafeMutablePointer<Py_ssize_t>, _ stop: UnsafeMutablePointer<Py_ssize_t>, _ step: UnsafeMutablePointer<Py_ssize_t>, _ slicelength: UnsafeMutablePointer<Py_ssize_t>) -> Int32
struct PyStringObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var ob_size: Py_ssize_t
  var ob_shash: Int
  var ob_sstate: Int32
  var ob_sval: (Int8)
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, ob_size: Py_ssize_t, ob_shash: Int, ob_sstate: Int32, ob_sval: (Int8))
}
var SSTATE_NOT_INTERNED: Int32 { get }
var SSTATE_INTERNED_MORTAL: Int32 { get }
var SSTATE_INTERNED_IMMORTAL: Int32 { get }
var PyBaseString_Type: PyTypeObject
var PyString_Type: PyTypeObject
func PyString_FromStringAndSize(_: UnsafePointer<Int8>, _: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyString_FromString(_: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyString_FromFormatV(_: UnsafePointer<Int8>, _: CVaListPointer) -> UnsafeMutablePointer<PyObject>
func PyString_Size(_: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PyString_AsString(_: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<Int8>
func PyString_Repr(_: UnsafeMutablePointer<PyObject>, _: Int32) -> UnsafeMutablePointer<PyObject>
func PyString_Concat(_: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _: UnsafeMutablePointer<PyObject>)
func PyString_ConcatAndDel(_: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _: UnsafeMutablePointer<PyObject>)
func _PyString_Resize(_: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _: Py_ssize_t) -> Int32
func _PyString_Eq(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyString_Format(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func _PyString_FormatLong(_: UnsafeMutablePointer<PyObject>, _: Int32, _: Int32, _: Int32, _: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>, _: UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<PyObject>
func PyString_DecodeEscape(_: UnsafePointer<Int8>, _: Py_ssize_t, _: UnsafePointer<Int8>, _: Py_ssize_t, _: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyString_InternInPlace(_: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>)
func PyString_InternImmortal(_: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>)
func PyString_InternFromString(_: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func _Py_ReleaseInternedStrings()
func _PyString_Join(sep: UnsafeMutablePointer<PyObject>, _ x: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyString_Decode(s: UnsafePointer<Int8>, _ size: Py_ssize_t, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyString_Encode(s: UnsafePointer<Int8>, _ size: Py_ssize_t, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyString_AsEncodedObject(str: UnsafeMutablePointer<PyObject>, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyString_AsEncodedString(str: UnsafeMutablePointer<PyObject>, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyString_AsDecodedObject(str: UnsafeMutablePointer<PyObject>, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyString_AsDecodedString(str: UnsafeMutablePointer<PyObject>, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyString_AsStringAndSize(obj: UnsafeMutablePointer<PyObject>, _ s: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>, _ len: UnsafeMutablePointer<Py_ssize_t>) -> Int32
func _PyString_InsertThousandsGroupingLocale(buffer: UnsafeMutablePointer<Int8>, _ n_buffer: Py_ssize_t, _ digits: UnsafeMutablePointer<Int8>, _ n_digits: Py_ssize_t, _ min_width: Py_ssize_t) -> Py_ssize_t
func _PyString_InsertThousandsGrouping(buffer: UnsafeMutablePointer<Int8>, _ n_buffer: Py_ssize_t, _ digits: UnsafeMutablePointer<Int8>, _ n_digits: Py_ssize_t, _ min_width: Py_ssize_t, _ grouping: UnsafePointer<Int8>, _ thousands_sep: UnsafePointer<Int8>) -> Py_ssize_t
func _PyBytes_FormatAdvanced(obj: UnsafeMutablePointer<PyObject>, _ format_spec: UnsafeMutablePointer<Int8>, _ format_spec_len: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PySys_GetObject(_: UnsafeMutablePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PySys_SetObject(_: UnsafeMutablePointer<Int8>, _: UnsafeMutablePointer<PyObject>) -> Int32
func PySys_GetFile(_: UnsafeMutablePointer<Int8>, _: UnsafeMutablePointer<FILE>) -> UnsafeMutablePointer<FILE>
func PySys_SetArgv(_: Int32, _: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>)
func PySys_SetArgvEx(_: Int32, _: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>, _: Int32)
func PySys_SetPath(_: UnsafeMutablePointer<Int8>)
func PySys_ResetWarnOptions()
func PySys_AddWarnOption(_: UnsafeMutablePointer<Int8>)
func PySys_HasWarnOptions() -> Int32
func _PySys_GetSizeOf(_: UnsafeMutablePointer<PyObject>) -> Int
struct _traceback {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var tb_next: UnsafeMutablePointer<_traceback>
  var tb_frame: UnsafeMutablePointer<_frame>
  var tb_lasti: Int32
  var tb_lineno: Int32
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, tb_next: UnsafeMutablePointer<_traceback>, tb_frame: UnsafeMutablePointer<_frame>, tb_lasti: Int32, tb_lineno: Int32)
}
typealias PyTracebackObject = _traceback
func PyTraceBack_Here(_: UnsafeMutablePointer<_frame>) -> Int32
func PyTraceBack_Print(_: UnsafeMutablePointer<PyObject>, _: UnsafeMutablePointer<PyObject>) -> Int32
func _Py_DisplaySourceLine(_: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>, _: Int32, _: Int32) -> Int32
var PyTraceBack_Type: PyTypeObject
struct PyTupleObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var ob_size: Py_ssize_t
  var ob_item: (UnsafeMutablePointer<PyObject>)
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, ob_size: Py_ssize_t, ob_item: (UnsafeMutablePointer<PyObject>))
}
var PyTuple_Type: PyTypeObject
func PyTuple_New(size: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyTuple_Size(_: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PyTuple_GetItem(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyTuple_SetItem(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t, _: UnsafeMutablePointer<PyObject>) -> Int32
func PyTuple_GetSlice(_: UnsafeMutablePointer<PyObject>, _: Py_ssize_t, _: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func _PyTuple_Resize(_: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _: Py_ssize_t) -> Int32
func _PyTuple_MaybeUntrack(_: UnsafeMutablePointer<PyObject>)
func PyTuple_ClearFreeList() -> Int32
typealias Py_UCS4 = UInt32
typealias Py_UNICODE = UInt16
struct PyUnicodeObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var length: Py_ssize_t
  var str: UnsafeMutablePointer<Py_UNICODE>
  var hash: Int
  var defenc: UnsafeMutablePointer<PyObject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, length: Py_ssize_t, str: UnsafeMutablePointer<Py_UNICODE>, hash: Int, defenc: UnsafeMutablePointer<PyObject>)
}
var PyUnicode_Type: PyTypeObject
func PyUnicodeUCS2_FromUnicode(u: UnsafePointer<Py_UNICODE>, _ size: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_FromStringAndSize(u: UnsafePointer<Int8>, _ size: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_FromString(u: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsUnicode(unicode: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<Py_UNICODE>
func PyUnicodeUCS2_GetSize(unicode: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PyUnicodeUCS2_GetMax() -> Py_UNICODE
func PyUnicodeUCS2_Resize(unicode: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _ length: Py_ssize_t) -> Int32
func PyUnicodeUCS2_FromEncodedObject(obj: UnsafeMutablePointer<PyObject>, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_FromObject(obj: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_FromFormatV(_: UnsafePointer<Int8>, _: CVaListPointer) -> UnsafeMutablePointer<PyObject>
func _PyUnicode_FormatAdvanced(obj: UnsafeMutablePointer<PyObject>, _ format_spec: UnsafeMutablePointer<Py_UNICODE>, _ format_spec_len: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_FromWideChar(w: UnsafePointer<wchar_t>, _ size: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsWideChar(unicode: UnsafeMutablePointer<PyUnicodeObject>, _ w: UnsafeMutablePointer<wchar_t>, _ size: Py_ssize_t) -> Py_ssize_t
func PyUnicodeUCS2_FromOrdinal(ordinal: Int32) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_ClearFreelist() -> Int32
func _PyUnicodeUCS2_AsDefaultEncodedString(_: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_GetDefaultEncoding() -> UnsafePointer<Int8>
func PyUnicodeUCS2_SetDefaultEncoding(encoding: UnsafePointer<Int8>) -> Int32
func PyUnicodeUCS2_Decode(s: UnsafePointer<Int8>, _ size: Py_ssize_t, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_Encode(s: UnsafePointer<Py_UNICODE>, _ size: Py_ssize_t, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsEncodedObject(unicode: UnsafeMutablePointer<PyObject>, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsEncodedString(unicode: UnsafeMutablePointer<PyObject>, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicode_BuildEncodingMap(string: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicode_DecodeUTF7(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicode_DecodeUTF7Stateful(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>, _ consumed: UnsafeMutablePointer<Py_ssize_t>) -> UnsafeMutablePointer<PyObject>
func PyUnicode_EncodeUTF7(data: UnsafePointer<Py_UNICODE>, _ length: Py_ssize_t, _ base64SetO: Int32, _ base64WhiteSpace: Int32, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeUTF8(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeUTF8Stateful(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>, _ consumed: UnsafeMutablePointer<Py_ssize_t>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsUTF8String(unicode: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_EncodeUTF8(data: UnsafePointer<Py_UNICODE>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeUTF32(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>, _ byteorder: UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeUTF32Stateful(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>, _ byteorder: UnsafeMutablePointer<Int32>, _ consumed: UnsafeMutablePointer<Py_ssize_t>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsUTF32String(unicode: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_EncodeUTF32(data: UnsafePointer<Py_UNICODE>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>, _ byteorder: Int32) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeUTF16(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>, _ byteorder: UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeUTF16Stateful(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>, _ byteorder: UnsafeMutablePointer<Int32>, _ consumed: UnsafeMutablePointer<Py_ssize_t>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsUTF16String(unicode: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_EncodeUTF16(data: UnsafePointer<Py_UNICODE>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>, _ byteorder: Int32) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeUnicodeEscape(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsUnicodeEscapeString(unicode: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_EncodeUnicodeEscape(data: UnsafePointer<Py_UNICODE>, _ length: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeRawUnicodeEscape(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsRawUnicodeEscapeString(unicode: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_EncodeRawUnicodeEscape(data: UnsafePointer<Py_UNICODE>, _ length: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func _PyUnicode_DecodeUnicodeInternal(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeLatin1(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsLatin1String(unicode: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_EncodeLatin1(data: UnsafePointer<Py_UNICODE>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeASCII(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsASCIIString(unicode: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_EncodeASCII(data: UnsafePointer<Py_UNICODE>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeCharmap(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ mapping: UnsafeMutablePointer<PyObject>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsCharmapString(unicode: UnsafeMutablePointer<PyObject>, _ mapping: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_EncodeCharmap(data: UnsafePointer<Py_UNICODE>, _ length: Py_ssize_t, _ mapping: UnsafeMutablePointer<PyObject>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_TranslateCharmap(data: UnsafePointer<Py_UNICODE>, _ length: Py_ssize_t, _ table: UnsafeMutablePointer<PyObject>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_EncodeDecimal(s: UnsafeMutablePointer<Py_UNICODE>, _ length: Py_ssize_t, _ output: UnsafeMutablePointer<Int8>, _ errors: UnsafePointer<Int8>) -> Int32
func PyUnicodeUCS2_Concat(left: UnsafeMutablePointer<PyObject>, _ right: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_Split(s: UnsafeMutablePointer<PyObject>, _ sep: UnsafeMutablePointer<PyObject>, _ maxsplit: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_Splitlines(s: UnsafeMutablePointer<PyObject>, _ keepends: Int32) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_Partition(s: UnsafeMutablePointer<PyObject>, _ sep: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_RPartition(s: UnsafeMutablePointer<PyObject>, _ sep: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_RSplit(s: UnsafeMutablePointer<PyObject>, _ sep: UnsafeMutablePointer<PyObject>, _ maxsplit: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_Translate(str: UnsafeMutablePointer<PyObject>, _ table: UnsafeMutablePointer<PyObject>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_Join(separator: UnsafeMutablePointer<PyObject>, _ seq: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_Tailmatch(str: UnsafeMutablePointer<PyObject>, _ substr: UnsafeMutablePointer<PyObject>, _ start: Py_ssize_t, _ end: Py_ssize_t, _ direction: Int32) -> Py_ssize_t
func PyUnicodeUCS2_Find(str: UnsafeMutablePointer<PyObject>, _ substr: UnsafeMutablePointer<PyObject>, _ start: Py_ssize_t, _ end: Py_ssize_t, _ direction: Int32) -> Py_ssize_t
func PyUnicodeUCS2_Count(str: UnsafeMutablePointer<PyObject>, _ substr: UnsafeMutablePointer<PyObject>, _ start: Py_ssize_t, _ end: Py_ssize_t) -> Py_ssize_t
func PyUnicodeUCS2_Replace(str: UnsafeMutablePointer<PyObject>, _ substr: UnsafeMutablePointer<PyObject>, _ replstr: UnsafeMutablePointer<PyObject>, _ maxcount: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_Compare(left: UnsafeMutablePointer<PyObject>, _ right: UnsafeMutablePointer<PyObject>) -> Int32
func PyUnicodeUCS2_RichCompare(left: UnsafeMutablePointer<PyObject>, _ right: UnsafeMutablePointer<PyObject>, _ op: Int32) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_Format(format: UnsafeMutablePointer<PyObject>, _ args: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_Contains(container: UnsafeMutablePointer<PyObject>, _ element: UnsafeMutablePointer<PyObject>) -> Int32
func _PyUnicode_XStrip(self: UnsafeMutablePointer<PyUnicodeObject>, _ striptype: Int32, _ sepobj: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func _PyUnicodeUCS2_IsLowercase(ch: Py_UNICODE) -> Int32
func _PyUnicodeUCS2_IsUppercase(ch: Py_UNICODE) -> Int32
func _PyUnicodeUCS2_IsTitlecase(ch: Py_UNICODE) -> Int32
func _PyUnicodeUCS2_IsWhitespace(ch: Py_UNICODE) -> Int32
func _PyUnicodeUCS2_IsLinebreak(ch: Py_UNICODE) -> Int32
func _PyUnicodeUCS2_ToLowercase(ch: Py_UNICODE) -> Py_UNICODE
func _PyUnicodeUCS2_ToUppercase(ch: Py_UNICODE) -> Py_UNICODE
func _PyUnicodeUCS2_ToTitlecase(ch: Py_UNICODE) -> Py_UNICODE
func _PyUnicodeUCS2_ToDecimalDigit(ch: Py_UNICODE) -> Int32
func _PyUnicodeUCS2_ToDigit(ch: Py_UNICODE) -> Int32
func _PyUnicodeUCS2_ToNumeric(ch: Py_UNICODE) -> Double
func _PyUnicodeUCS2_IsDecimalDigit(ch: Py_UNICODE) -> Int32
func _PyUnicodeUCS2_IsDigit(ch: Py_UNICODE) -> Int32
func _PyUnicodeUCS2_IsNumeric(ch: Py_UNICODE) -> Int32
func _PyUnicodeUCS2_IsAlpha(ch: Py_UNICODE) -> Int32
func _PyWarnings_Init()
func PyErr_WarnEx(_: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>, _: Py_ssize_t) -> Int32
func PyErr_WarnExplicit(_: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>, _: UnsafePointer<Int8>, _: Int32, _: UnsafePointer<Int8>, _: UnsafeMutablePointer<PyObject>) -> Int32
typealias PyWeakReference = _PyWeakReference
struct _PyWeakReference {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var wr_object: UnsafeMutablePointer<PyObject>
  var wr_callback: UnsafeMutablePointer<PyObject>
  var hash: Int
  var wr_prev: UnsafeMutablePointer<PyWeakReference>
  var wr_next: UnsafeMutablePointer<PyWeakReference>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, wr_object: UnsafeMutablePointer<PyObject>, wr_callback: UnsafeMutablePointer<PyObject>, hash: Int, wr_prev: UnsafeMutablePointer<PyWeakReference>, wr_next: UnsafeMutablePointer<PyWeakReference>)
}
var _PyWeakref_RefType: PyTypeObject
var _PyWeakref_ProxyType: PyTypeObject
var _PyWeakref_CallableProxyType: PyTypeObject
func PyWeakref_NewRef(ob: UnsafeMutablePointer<PyObject>, _ callback: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyWeakref_NewProxy(ob: UnsafeMutablePointer<PyObject>, _ callback: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyWeakref_GetObject(ref: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func _PyWeakref_GetWeakrefCount(head: UnsafeMutablePointer<PyWeakReference>) -> Py_ssize_t
func _PyWeakref_ClearRef(self: UnsafeMutablePointer<PyWeakReference>)
