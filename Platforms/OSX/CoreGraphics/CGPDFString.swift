
typealias CGPDFStringRef = COpaquePointer
@available(OSX 10.3, *)
func CGPDFStringGetLength(string: CGPDFStringRef) -> Int
@available(OSX 10.3, *)
func CGPDFStringGetBytePtr(string: CGPDFStringRef) -> UnsafePointer<UInt8>
@available(OSX 10.3, *)
func CGPDFStringCopyTextString(string: CGPDFStringRef) -> CFString?
@available(OSX 10.4, *)
func CGPDFStringCopyDate(string: CGPDFStringRef) -> CFDate?
