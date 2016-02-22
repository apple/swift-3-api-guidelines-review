
let kSecDecodeTypeAttribute: CFString
@available(OSX 10.7, *)
func SecDecodeTransformCreate(_ DecodeType: CFTypeRef, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform?
