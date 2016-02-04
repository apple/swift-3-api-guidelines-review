
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
