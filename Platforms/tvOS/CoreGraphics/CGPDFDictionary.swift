
typealias CGPDFDictionaryRef = COpaquePointer
@available(tvOS 2.0, *)
func CGPDFDictionaryGetCount(_ dict: CGPDFDictionaryRef) -> Int
@available(tvOS 2.0, *)
func CGPDFDictionaryGetObject(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFObjectRef>) -> Bool
@available(tvOS 2.0, *)
func CGPDFDictionaryGetBoolean(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFBoolean>) -> Bool
@available(tvOS 2.0, *)
func CGPDFDictionaryGetInteger(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFInteger>) -> Bool
@available(tvOS 2.0, *)
func CGPDFDictionaryGetNumber(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFReal>) -> Bool
@available(tvOS 2.0, *)
func CGPDFDictionaryGetName(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Bool
@available(tvOS 2.0, *)
func CGPDFDictionaryGetString(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFStringRef>) -> Bool
@available(tvOS 2.0, *)
func CGPDFDictionaryGetArray(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFArrayRef>) -> Bool
@available(tvOS 2.0, *)
func CGPDFDictionaryGetDictionary(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFDictionaryRef>) -> Bool
@available(tvOS 2.0, *)
func CGPDFDictionaryGetStream(_ dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFStreamRef>) -> Bool
typealias CGPDFDictionaryApplierFunction = @convention(c) (UnsafePointer<Int8>, CGPDFObjectRef, UnsafeMutablePointer<Void>) -> Void
@available(tvOS 2.0, *)
func CGPDFDictionaryApplyFunction(_ dict: CGPDFDictionaryRef, _ function: CGPDFDictionaryApplierFunction?, _ info: UnsafeMutablePointer<Void>)
