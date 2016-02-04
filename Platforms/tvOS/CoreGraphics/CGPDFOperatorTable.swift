
typealias CGPDFOperatorTableRef = COpaquePointer
typealias CGPDFOperatorCallback = @convention(c) (CGPDFScannerRef, UnsafeMutablePointer<Void>) -> Void
@available(tvOS 2.0, *)
func CGPDFOperatorTableCreate() -> CGPDFOperatorTableRef
@available(tvOS 2.0, *)
func CGPDFOperatorTableRetain(table: CGPDFOperatorTableRef) -> CGPDFOperatorTableRef
@available(tvOS 2.0, *)
func CGPDFOperatorTableRelease(table: CGPDFOperatorTableRef)
@available(tvOS 2.0, *)
func CGPDFOperatorTableSetCallback(table: CGPDFOperatorTableRef, _ name: UnsafePointer<Int8>, _ callback: CGPDFOperatorCallback?)
