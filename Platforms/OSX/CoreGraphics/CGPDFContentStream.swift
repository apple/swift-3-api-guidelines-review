
typealias CGPDFContentStreamRef = COpaquePointer
@available(OSX 10.4, *)
func CGPDFContentStreamCreateWithPage(page: CGPDFPage!) -> CGPDFContentStreamRef
@available(OSX 10.4, *)
func CGPDFContentStreamCreateWithStream(stream: CGPDFStreamRef, _ streamResources: CGPDFDictionaryRef, _ parent: CGPDFContentStreamRef) -> CGPDFContentStreamRef
@available(OSX 10.4, *)
func CGPDFContentStreamRetain(cs: CGPDFContentStreamRef) -> CGPDFContentStreamRef
@available(OSX 10.4, *)
func CGPDFContentStreamRelease(cs: CGPDFContentStreamRef)
@available(OSX 10.4, *)
func CGPDFContentStreamGetStreams(cs: CGPDFContentStreamRef) -> CFArray!
@available(OSX 10.4, *)
func CGPDFContentStreamGetResource(cs: CGPDFContentStreamRef, _ category: UnsafePointer<Int8>, _ name: UnsafePointer<Int8>) -> CGPDFObjectRef
