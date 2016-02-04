
typealias CGPDFArrayRef = COpaquePointer
@available(OSX 10.3, *)
func CGPDFArrayGetCount(array: CGPDFArrayRef) -> Int
@available(OSX 10.3, *)
func CGPDFArrayGetObject(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFObjectRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetNull(array: CGPDFArrayRef, _ index: Int) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetBoolean(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFBoolean>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetInteger(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFInteger>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetNumber(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFReal>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetName(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetString(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFStringRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetArray(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFArrayRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetDictionary(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFDictionaryRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetStream(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFStreamRef>) -> Bool
