
typealias CGPDFContentStreamRef = COpaquePointer
@available(OSX 10.4, *)
func CGPDFContentStreamCreateWithPage(_ page: CGPDFPage!) -> CGPDFContentStreamRef
@available(OSX 10.4, *)
func CGPDFContentStreamCreateWithStream(_ stream: CGPDFStreamRef, _ streamResources: CGPDFDictionaryRef, _ parent: CGPDFContentStreamRef) -> CGPDFContentStreamRef
@available(OSX 10.4, *)
func CGPDFContentStreamRetain(_ cs: CGPDFContentStreamRef) -> CGPDFContentStreamRef
@available(OSX 10.4, *)
func CGPDFContentStreamRelease(_ cs: CGPDFContentStreamRef)
@available(OSX 10.4, *)
func CGPDFContentStreamGetStreams(_ cs: CGPDFContentStreamRef) -> CFArray!
@available(OSX 10.4, *)
func CGPDFContentStreamGetResource(_ cs: CGPDFContentStreamRef, _ category: UnsafePointer<Int8>, _ name: UnsafePointer<Int8>) -> CGPDFObjectRef
