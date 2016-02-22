
typealias CGPDFStringRef = COpaquePointer
@available(OSX 10.3, *)
func CGPDFStringGetLength(_ string: CGPDFStringRef) -> Int
@available(OSX 10.3, *)
func CGPDFStringGetBytePtr(_ string: CGPDFStringRef) -> UnsafePointer<UInt8>
@available(OSX 10.3, *)
func CGPDFStringCopyTextString(_ string: CGPDFStringRef) -> CFString?
@available(OSX 10.4, *)
func CGPDFStringCopyDate(_ string: CGPDFStringRef) -> CFDate?
