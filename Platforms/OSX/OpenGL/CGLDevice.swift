
@available(OSX 10.6, *)
typealias CGLShareGroupObj = COpaquePointer
@available(OSX 10.6, *)
func CGLGetShareGroup(_ ctx: CGLContextObj) -> CGLShareGroupObj
@available(OSX 10.10, *)
typealias cl_device_id = COpaquePointer
@available(OSX 10.10, *)
func CGLGetDeviceFromGLRenderer(_ rendererID: GLint) -> cl_device_id
