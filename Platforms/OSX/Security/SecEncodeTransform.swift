
let kSecBase64Encoding: CFString
let kSecBase32Encoding: CFString
let kSecZLibEncoding: CFString
let kSecEncodeTypeAttribute: CFString
let kSecLineLength64: CFString
let kSecLineLength76: CFString
let kSecEncodeLineLengthAttribute: CFString
let kSecCompressionRatio: CFString
@available(OSX 10.7, *)
func SecEncodeTransformCreate(_ encodeType: CFTypeRef, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecTransform?
