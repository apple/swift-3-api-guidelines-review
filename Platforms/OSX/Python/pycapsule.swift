
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
