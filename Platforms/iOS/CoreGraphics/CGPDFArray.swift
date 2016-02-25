
typealias CGPDFArrayRef = COpaquePointer
@available(iOS 2.0, *)
func CGPDFArrayGetCount(_ array: CGPDFArrayRef) -> Int
@available(iOS 2.0, *)
func CGPDFArrayGetObject(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFObjectRef>) -> Bool
@available(iOS 2.0, *)
func CGPDFArrayGetNull(_ array: CGPDFArrayRef, _ index: Int) -> Bool
@available(iOS 2.0, *)
func CGPDFArrayGetBoolean(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFBoolean>) -> Bool
@available(iOS 2.0, *)
func CGPDFArrayGetInteger(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFInteger>) -> Bool
@available(iOS 2.0, *)
func CGPDFArrayGetNumber(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFReal>) -> Bool
@available(iOS 2.0, *)
func CGPDFArrayGetName(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Bool
@available(iOS 2.0, *)
func CGPDFArrayGetString(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFStringRef>) -> Bool
@available(iOS 2.0, *)
func CGPDFArrayGetArray(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFArrayRef>) -> Bool
@available(iOS 2.0, *)
func CGPDFArrayGetDictionary(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFDictionaryRef>) -> Bool
@available(iOS 2.0, *)
func CGPDFArrayGetStream(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFStreamRef>) -> Bool
