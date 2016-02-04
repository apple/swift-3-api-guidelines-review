
func _Py_dg_strtod(str: UnsafePointer<Int8>, _ ptr: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> Double
func _Py_dg_dtoa(d: Double, _ mode: Int32, _ ndigits: Int32, _ decpt: UnsafeMutablePointer<Int32>, _ sign: UnsafeMutablePointer<Int32>, _ rve: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> UnsafeMutablePointer<Int8>
func _Py_dg_freedtoa(s: UnsafeMutablePointer<Int8>)
