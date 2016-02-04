
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
