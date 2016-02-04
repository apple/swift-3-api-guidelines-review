
typealias CGPDFDictionaryRef = COpaquePointer
@available(watchOS 2.0, *)
func CGPDFDictionaryGetCount(dict: CGPDFDictionaryRef) -> Int
@available(watchOS 2.0, *)
func CGPDFDictionaryGetObject(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFObjectRef>) -> Bool
@available(watchOS 2.0, *)
func CGPDFDictionaryGetBoolean(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFBoolean>) -> Bool
@available(watchOS 2.0, *)
func CGPDFDictionaryGetInteger(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFInteger>) -> Bool
@available(watchOS 2.0, *)
func CGPDFDictionaryGetNumber(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFReal>) -> Bool
@available(watchOS 2.0, *)
func CGPDFDictionaryGetName(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Bool
@available(watchOS 2.0, *)
func CGPDFDictionaryGetString(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFStringRef>) -> Bool
@available(watchOS 2.0, *)
func CGPDFDictionaryGetArray(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFArrayRef>) -> Bool
@available(watchOS 2.0, *)
func CGPDFDictionaryGetDictionary(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFDictionaryRef>) -> Bool
@available(watchOS 2.0, *)
func CGPDFDictionaryGetStream(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFStreamRef>) -> Bool
typealias CGPDFDictionaryApplierFunction = @convention(c) (UnsafePointer<Int8>, CGPDFObjectRef, UnsafeMutablePointer<Void>) -> Void
@available(watchOS 2.0, *)
func CGPDFDictionaryApplyFunction(dict: CGPDFDictionaryRef, _ function: CGPDFDictionaryApplierFunction?, _ info: UnsafeMutablePointer<Void>)
