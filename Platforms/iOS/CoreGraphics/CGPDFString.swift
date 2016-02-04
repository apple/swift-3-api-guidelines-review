
typealias CGPDFStringRef = COpaquePointer
@available(iOS 2.0, *)
func CGPDFStringGetLength(string: CGPDFStringRef) -> Int
@available(iOS 2.0, *)
func CGPDFStringGetBytePtr(string: CGPDFStringRef) -> UnsafePointer<UInt8>
@available(iOS 2.0, *)
func CGPDFStringCopyTextString(string: CGPDFStringRef) -> CFString?
@available(iOS 2.0, *)
func CGPDFStringCopyDate(string: CGPDFStringRef) -> CFDate?
