
typealias CGPDFArrayRef = COpaquePointer
@available(OSX 10.3, *)
func CGPDFArrayGetCount(_ array: CGPDFArrayRef) -> Int
@available(OSX 10.3, *)
func CGPDFArrayGetObject(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFObjectRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetNull(_ array: CGPDFArrayRef, _ index: Int) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetBoolean(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFBoolean>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetInteger(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFInteger>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetNumber(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFReal>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetName(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetString(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFStringRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetArray(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFArrayRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetDictionary(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFDictionaryRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetStream(_ array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFStreamRef>) -> Bool
