
func PyMem_Malloc(_: Int) -> UnsafeMutablePointer<Void>
func PyMem_Realloc(_: UnsafeMutablePointer<Void>, _: Int) -> UnsafeMutablePointer<Void>
func PyMem_Free(_: UnsafeMutablePointer<Void>)
