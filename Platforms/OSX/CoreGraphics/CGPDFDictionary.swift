
typealias CGPDFDictionaryRef = COpaquePointer
@available(OSX 10.3, *)
func CGPDFDictionaryGetCount(dict: CGPDFDictionaryRef) -> Int
@available(OSX 10.3, *)
func CGPDFDictionaryGetObject(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFObjectRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetBoolean(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFBoolean>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetInteger(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFInteger>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetNumber(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFReal>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetName(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetString(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFStringRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetArray(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFArrayRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetDictionary(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFDictionaryRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetStream(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFStreamRef>) -> Bool
typealias CGPDFDictionaryApplierFunction = @convention(c) (UnsafePointer<Int8>, CGPDFObjectRef, UnsafeMutablePointer<Void>) -> Void
@available(OSX 10.3, *)
func CGPDFDictionaryApplyFunction(dict: CGPDFDictionaryRef, _ function: CGPDFDictionaryApplierFunction?, _ info: UnsafeMutablePointer<Void>)
