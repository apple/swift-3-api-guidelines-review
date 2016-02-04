
typealias CGPDFScannerRef = COpaquePointer
@available(watchOS 2.0, *)
func CGPDFScannerCreate(cs: CGPDFContentStreamRef, _ table: CGPDFOperatorTableRef, _ info: UnsafeMutablePointer<Void>) -> CGPDFScannerRef
@available(watchOS 2.0, *)
func CGPDFScannerRetain(scanner: CGPDFScannerRef) -> CGPDFScannerRef
@available(watchOS 2.0, *)
func CGPDFScannerRelease(scanner: CGPDFScannerRef)
@available(watchOS 2.0, *)
func CGPDFScannerScan(scanner: CGPDFScannerRef) -> Bool
@available(watchOS 2.0, *)
func CGPDFScannerGetContentStream(scanner: CGPDFScannerRef) -> CGPDFContentStreamRef
@available(watchOS 2.0, *)
func CGPDFScannerPopObject(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFObjectRef>) -> Bool
@available(watchOS 2.0, *)
func CGPDFScannerPopBoolean(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFBoolean>) -> Bool
@available(watchOS 2.0, *)
func CGPDFScannerPopInteger(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFInteger>) -> Bool
@available(watchOS 2.0, *)
func CGPDFScannerPopNumber(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFReal>) -> Bool
@available(watchOS 2.0, *)
func CGPDFScannerPopName(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Bool
@available(watchOS 2.0, *)
func CGPDFScannerPopString(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFStringRef>) -> Bool
@available(watchOS 2.0, *)
func CGPDFScannerPopArray(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFArrayRef>) -> Bool
@available(watchOS 2.0, *)
func CGPDFScannerPopDictionary(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFDictionaryRef>) -> Bool
@available(watchOS 2.0, *)
func CGPDFScannerPopStream(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFStreamRef>) -> Bool
