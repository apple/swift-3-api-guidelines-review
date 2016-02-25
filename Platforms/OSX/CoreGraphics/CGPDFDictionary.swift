
typealias CGPDFDictionaryRef = COpaquePointer
@available(OSX 10.3, *)
func CGPDFDictionaryGetCount(_ dict: CGPDFDictionaryRef) -> Int
@available(OSX 10.3, *)
func CGPDFDictionaryGetObject(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFObjectRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetBoolean(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFBoolean>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetInteger(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFInteger>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetNumber(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFReal>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetName(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetString(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFStringRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetArray(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFArrayRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetDictionary(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFDictionaryRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetStream(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFStreamRef>) -> Bool
typealias CGPDFDictionaryApplierFunction = @convention(c) (UnsafePointer<Int8>, CGPDFObjectRef, UnsafeMutablePointer<Void>) -> Void
@available(OSX 10.3, *)
func CGPDFDictionaryApplyFunction(_ dict: CGPDFDictionaryRef, _ function: CGPDFDictionaryApplierFunction?, _ info: UnsafeMutablePointer<Void>)
