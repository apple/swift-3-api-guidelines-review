
func PyObject_Cmp(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>, _ result: UnsafeMutablePointer<Int32>) -> Int32
func PyObject_Call(_ callable_object: UnsafeMutablePointer<PyObject>, _ args: UnsafeMutablePointer<PyObject>, _ kw: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyObject_CallObject(_ callable_object: UnsafeMutablePointer<PyObject>, _ args: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyObject_Type(_ o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyObject_Size(_ o: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PyObject_Length(_ o: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func _PyObject_LengthHint(_ o: UnsafeMutablePointer<PyObject>, _ _: Py_ssize_t) -> Py_ssize_t
func PyObject_GetItem(_ o: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyObject_SetItem(_ o: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<PyObject>, _ v: UnsafeMutablePointer<PyObject>) -> Int32
func PyObject_DelItemString(_ o: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<Int8>) -> Int32
func PyObject_DelItem(_ o: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<PyObject>) -> Int32
func PyObject_AsCharBuffer(_ obj: UnsafeMutablePointer<PyObject>, _ buffer: UnsafeMutablePointer<UnsafePointer<Int8>>, _ buffer_len: UnsafeMutablePointer<Py_ssize_t>) -> Int32
func PyObject_CheckReadBuffer(_ obj: UnsafeMutablePointer<PyObject>) -> Int32
func PyObject_AsReadBuffer(_ obj: UnsafeMutablePointer<PyObject>, _ buffer: UnsafeMutablePointer<UnsafePointer<Void>>, _ buffer_len: UnsafeMutablePointer<Py_ssize_t>) -> Int32
func PyObject_AsWriteBuffer(_ obj: UnsafeMutablePointer<PyObject>, _ buffer: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ buffer_len: UnsafeMutablePointer<Py_ssize_t>) -> Int32
func PyObject_GetBuffer(_ obj: UnsafeMutablePointer<PyObject>, _ view: UnsafeMutablePointer<Py_buffer>, _ flags: Int32) -> Int32
func PyBuffer_GetPointer(_ view: UnsafeMutablePointer<Py_buffer>, _ indices: UnsafeMutablePointer<Py_ssize_t>) -> UnsafeMutablePointer<Void>
func PyBuffer_SizeFromFormat(_ _: UnsafePointer<Int8>) -> Int32
func PyBuffer_ToContiguous(_ buf: UnsafeMutablePointer<Void>, _ view: UnsafeMutablePointer<Py_buffer>, _ len: Py_ssize_t, _ fort: Int8) -> Int32
func PyBuffer_FromContiguous(_ view: UnsafeMutablePointer<Py_buffer>, _ buf: UnsafeMutablePointer<Void>, _ len: Py_ssize_t, _ fort: Int8) -> Int32
func PyObject_CopyData(_ dest: UnsafeMutablePointer<PyObject>, _ src: UnsafeMutablePointer<PyObject>) -> Int32
func PyBuffer_IsContiguous(_ view: UnsafeMutablePointer<Py_buffer>, _ fort: Int8) -> Int32
func PyBuffer_FillContiguousStrides(_ ndims: Int32, _ shape: UnsafeMutablePointer<Py_ssize_t>, _ strides: UnsafeMutablePointer<Py_ssize_t>, _ itemsize: Int32, _ fort: Int8)
func PyBuffer_FillInfo(_ view: UnsafeMutablePointer<Py_buffer>, _ o: UnsafeMutablePointer<PyObject>, _ buf: UnsafeMutablePointer<Void>, _ len: Py_ssize_t, _ readonly: Int32, _ flags: Int32) -> Int32
func PyBuffer_Release(_ view: UnsafeMutablePointer<Py_buffer>)
func PyObject_Format(_ obj: UnsafeMutablePointer<PyObject>, _ format_spec: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyObject_GetIter(_ _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyIter_Next(_ _: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Check(_ o: UnsafeMutablePointer<PyObject>) -> Int32
func PyNumber_Add(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Subtract(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Multiply(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Divide(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_FloorDivide(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_TrueDivide(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Remainder(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Divmod(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Power(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>, _ o3: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Negative(_ o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Positive(_ o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Absolute(_ o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Invert(_ o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Lshift(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Rshift(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_And(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Xor(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Or(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Index(_ o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_AsSsize_t(_ o: UnsafeMutablePointer<PyObject>, _ exc: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func _PyNumber_ConvertIntegralToInt(_ integral: UnsafeMutablePointer<PyObject>, _ error_format: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Int(_ o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Long(_ o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_Float(_ o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceAdd(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceSubtract(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceMultiply(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceDivide(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceFloorDivide(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceTrueDivide(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceRemainder(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlacePower(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>, _ o3: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceLshift(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceRshift(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceAnd(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceXor(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_InPlaceOr(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyNumber_ToBase(_ n: UnsafeMutablePointer<PyObject>, _ base: Int32) -> UnsafeMutablePointer<PyObject>
func PySequence_Check(_ o: UnsafeMutablePointer<PyObject>) -> Int32
func PySequence_Size(_ o: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PySequence_Length(_ o: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PySequence_Concat(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PySequence_Repeat(_ o: UnsafeMutablePointer<PyObject>, _ count: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PySequence_GetItem(_ o: UnsafeMutablePointer<PyObject>, _ i: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PySequence_GetSlice(_ o: UnsafeMutablePointer<PyObject>, _ i1: Py_ssize_t, _ i2: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PySequence_SetItem(_ o: UnsafeMutablePointer<PyObject>, _ i: Py_ssize_t, _ v: UnsafeMutablePointer<PyObject>) -> Int32
func PySequence_DelItem(_ o: UnsafeMutablePointer<PyObject>, _ i: Py_ssize_t) -> Int32
func PySequence_SetSlice(_ o: UnsafeMutablePointer<PyObject>, _ i1: Py_ssize_t, _ i2: Py_ssize_t, _ v: UnsafeMutablePointer<PyObject>) -> Int32
func PySequence_DelSlice(_ o: UnsafeMutablePointer<PyObject>, _ i1: Py_ssize_t, _ i2: Py_ssize_t) -> Int32
func PySequence_Tuple(_ o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PySequence_List(_ o: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PySequence_Fast(_ o: UnsafeMutablePointer<PyObject>, _ m: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PySequence_Count(_ o: UnsafeMutablePointer<PyObject>, _ value: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PySequence_Contains(_ seq: UnsafeMutablePointer<PyObject>, _ ob: UnsafeMutablePointer<PyObject>) -> Int32
var PY_ITERSEARCH_COUNT: Int32 { get }
var PY_ITERSEARCH_INDEX: Int32 { get }
var PY_ITERSEARCH_CONTAINS: Int32 { get }
func _PySequence_IterSearch(_ seq: UnsafeMutablePointer<PyObject>, _ obj: UnsafeMutablePointer<PyObject>, _ operation: Int32) -> Py_ssize_t
func PySequence_In(_ o: UnsafeMutablePointer<PyObject>, _ value: UnsafeMutablePointer<PyObject>) -> Int32
func PySequence_Index(_ o: UnsafeMutablePointer<PyObject>, _ value: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PySequence_InPlaceConcat(_ o1: UnsafeMutablePointer<PyObject>, _ o2: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PySequence_InPlaceRepeat(_ o: UnsafeMutablePointer<PyObject>, _ count: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyMapping_Check(_ o: UnsafeMutablePointer<PyObject>) -> Int32
func PyMapping_Size(_ o: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PyMapping_Length(_ o: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PyMapping_HasKeyString(_ o: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<Int8>) -> Int32
func PyMapping_HasKey(_ o: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<PyObject>) -> Int32
func PyMapping_GetItemString(_ o: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyMapping_SetItemString(_ o: UnsafeMutablePointer<PyObject>, _ key: UnsafeMutablePointer<Int8>, _ value: UnsafeMutablePointer<PyObject>) -> Int32
func PyObject_IsInstance(_ object: UnsafeMutablePointer<PyObject>, _ typeorclass: UnsafeMutablePointer<PyObject>) -> Int32
func PyObject_IsSubclass(_ object: UnsafeMutablePointer<PyObject>, _ typeorclass: UnsafeMutablePointer<PyObject>) -> Int32
func _PyObject_RealIsInstance(_ inst: UnsafeMutablePointer<PyObject>, _ cls: UnsafeMutablePointer<PyObject>) -> Int32
func _PyObject_RealIsSubclass(_ derived: UnsafeMutablePointer<PyObject>, _ cls: UnsafeMutablePointer<PyObject>) -> Int32
func _Py_add_one_to_index_F(_ nd: Int32, _ index: UnsafeMutablePointer<Py_ssize_t>, _ shape: UnsafePointer<Py_ssize_t>)
func _Py_add_one_to_index_C(_ nd: Int32, _ index: UnsafeMutablePointer<Py_ssize_t>, _ shape: UnsafePointer<Py_ssize_t>)
