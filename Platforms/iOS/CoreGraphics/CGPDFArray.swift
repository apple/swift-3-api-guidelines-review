
typealias CGPDFArrayRef = COpaquePointer
@available(iOS 2.0, *)
func CGPDFArrayGetCount(array: CGPDFArrayRef) -> Int
@available(iOS 2.0, *)
func CGPDFArrayGetObject(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFObjectRef>) -> Bool
@available(iOS 2.0, *)
func CGPDFArrayGetNull(array: CGPDFArrayRef, _ index: Int) -> Bool
@available(iOS 2.0, *)
func CGPDFArrayGetBoolean(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFBoolean>) -> Bool
@available(iOS 2.0, *)
func CGPDFArrayGetInteger(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFInteger>) -> Bool
@available(iOS 2.0, *)
func CGPDFArrayGetNumber(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFReal>) -> Bool
@available(iOS 2.0, *)
func CGPDFArrayGetName(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Bool
@available(iOS 2.0, *)
func CGPDFArrayGetString(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFStringRef>) -> Bool
@available(iOS 2.0, *)
func CGPDFArrayGetArray(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFArrayRef>) -> Bool
@available(iOS 2.0, *)
func CGPDFArrayGetDictionary(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFDictionaryRef>) -> Bool
@available(iOS 2.0, *)
func CGPDFArrayGetStream(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFStreamRef>) -> Bool
