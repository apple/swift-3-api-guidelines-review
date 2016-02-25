
typealias CGPDFStringRef = COpaquePointer
@available(watchOS 2.0, *)
func CGPDFStringGetLength(_ string: CGPDFStringRef) -> Int
@available(watchOS 2.0, *)
func CGPDFStringGetBytePtr(_ string: CGPDFStringRef) -> UnsafePointer<UInt8>
@available(watchOS 2.0, *)
func CGPDFStringCopyTextString(_ string: CGPDFStringRef) -> CFString?
@available(watchOS 2.0, *)
func CGPDFStringCopyDate(_ string: CGPDFStringRef) -> CFDate?
