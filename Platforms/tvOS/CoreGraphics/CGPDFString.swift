
typealias CGPDFStringRef = COpaquePointer
@available(tvOS 2.0, *)
func CGPDFStringGetLength(_ string: CGPDFStringRef) -> Int
@available(tvOS 2.0, *)
func CGPDFStringGetBytePtr(_ string: CGPDFStringRef) -> UnsafePointer<UInt8>
@available(tvOS 2.0, *)
func CGPDFStringCopyTextString(_ string: CGPDFStringRef) -> CFString?
@available(tvOS 2.0, *)
func CGPDFStringCopyDate(_ string: CGPDFStringRef) -> CFDate?
