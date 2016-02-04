
typealias CGPDFStringRef = COpaquePointer
@available(tvOS 2.0, *)
func CGPDFStringGetLength(string: CGPDFStringRef) -> Int
@available(tvOS 2.0, *)
func CGPDFStringGetBytePtr(string: CGPDFStringRef) -> UnsafePointer<UInt8>
@available(tvOS 2.0, *)
func CGPDFStringCopyTextString(string: CGPDFStringRef) -> CFString?
@available(tvOS 2.0, *)
func CGPDFStringCopyDate(string: CGPDFStringRef) -> CFDate?
