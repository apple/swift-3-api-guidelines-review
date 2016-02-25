
func PyArena_New() -> COpaquePointer
func PyArena_Free(_ _: COpaquePointer)
func PyArena_Malloc(_ _: COpaquePointer, _ size: Int) -> UnsafeMutablePointer<Void>
func PyArena_AddPyObject(_ _: COpaquePointer, _ _: UnsafeMutablePointer<PyObject>) -> Int32
