
typealias CGPDFStringRef = COpaquePointer
@available(watchOS 2.0, *)
func CGPDFStringGetLength(string: CGPDFStringRef) -> Int
@available(watchOS 2.0, *)
func CGPDFStringGetBytePtr(string: CGPDFStringRef) -> UnsafePointer<UInt8>
@available(watchOS 2.0, *)
func CGPDFStringCopyTextString(string: CGPDFStringRef) -> CFString?
@available(watchOS 2.0, *)
func CGPDFStringCopyDate(string: CGPDFStringRef) -> CFDate?
