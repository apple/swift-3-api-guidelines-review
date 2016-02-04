
typealias CGPDFOperatorTableRef = COpaquePointer
typealias CGPDFOperatorCallback = @convention(c) (CGPDFScannerRef, UnsafeMutablePointer<Void>) -> Void
@available(OSX 10.4, *)
func CGPDFOperatorTableCreate() -> CGPDFOperatorTableRef
@available(OSX 10.4, *)
func CGPDFOperatorTableRetain(table: CGPDFOperatorTableRef) -> CGPDFOperatorTableRef
@available(OSX 10.4, *)
func CGPDFOperatorTableRelease(table: CGPDFOperatorTableRef)
@available(OSX 10.4, *)
func CGPDFOperatorTableSetCallback(table: CGPDFOperatorTableRef, _ name: UnsafePointer<Int8>, _ callback: CGPDFOperatorCallback?)
