
typealias CGPDFContentStreamRef = COpaquePointer
@available(iOS 2.0, *)
func CGPDFContentStreamCreateWithPage(page: CGPDFPage!) -> CGPDFContentStreamRef
@available(iOS 2.0, *)
func CGPDFContentStreamCreateWithStream(stream: CGPDFStreamRef, _ streamResources: CGPDFDictionaryRef, _ parent: CGPDFContentStreamRef) -> CGPDFContentStreamRef
@available(iOS 2.0, *)
func CGPDFContentStreamRetain(cs: CGPDFContentStreamRef) -> CGPDFContentStreamRef
@available(iOS 2.0, *)
func CGPDFContentStreamRelease(cs: CGPDFContentStreamRef)
@available(iOS 2.0, *)
func CGPDFContentStreamGetStreams(cs: CGPDFContentStreamRef) -> CFArray!
@available(iOS 2.0, *)
func CGPDFContentStreamGetResource(cs: CGPDFContentStreamRef, _ category: UnsafePointer<Int8>, _ name: UnsafePointer<Int8>) -> CGPDFObjectRef
