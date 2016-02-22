
func PyCodec_Register(_ search_function: UnsafeMutablePointer<PyObject>) -> Int32
func _PyCodec_Lookup(_ encoding: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyCodec_Encode(_ object: UnsafeMutablePointer<PyObject>, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyCodec_Decode(_ object: UnsafeMutablePointer<PyObject>, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyCodec_Encoder(_ encoding: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyCodec_Decoder(_ encoding: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyCodec_IncrementalEncoder(_ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyCodec_IncrementalDecoder(_ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyCodec_StreamReader(_ encoding: UnsafePointer<Int8>, _ stream: UnsafeMutablePointer<PyObject>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyCodec_StreamWriter(_ encoding: UnsafePointer<Int8>, _ stream: UnsafeMutablePointer<PyObject>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyCodec_RegisterError(_ name: UnsafePointer<Int8>, _ error: UnsafeMutablePointer<PyObject>) -> Int32
func PyCodec_LookupError(_ name: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyCodec_StrictErrors(_ exc: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyCodec_IgnoreErrors(_ exc: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyCodec_ReplaceErrors(_ exc: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyCodec_XMLCharRefReplaceErrors(_ exc: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyCodec_BackslashReplaceErrors(_ exc: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
