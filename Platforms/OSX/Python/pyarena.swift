
func PyArena_New() -> COpaquePointer
func PyArena_Free(_: COpaquePointer)
func PyArena_Malloc(_: COpaquePointer, _ size: Int) -> UnsafeMutablePointer<Void>
func PyArena_AddPyObject(_: COpaquePointer, _: UnsafeMutablePointer<PyObject>) -> Int32
