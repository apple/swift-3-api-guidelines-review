
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
