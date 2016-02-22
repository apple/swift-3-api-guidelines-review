
typealias CGPDFStringRef = COpaquePointer
@available(iOS 2.0, *)
func CGPDFStringGetLength(_ string: CGPDFStringRef) -> Int
@available(iOS 2.0, *)
func CGPDFStringGetBytePtr(_ string: CGPDFStringRef) -> UnsafePointer<UInt8>
@available(iOS 2.0, *)
func CGPDFStringCopyTextString(_ string: CGPDFStringRef) -> CFString?
@available(iOS 2.0, *)
func CGPDFStringCopyDate(_ string: CGPDFStringRef) -> CFDate?
