
typealias CGPDFScannerRef = COpaquePointer
@available(OSX 10.4, *)
func CGPDFScannerCreate(_ cs: CGPDFContentStreamRef, _ table: CGPDFOperatorTableRef, _ info: UnsafeMutablePointer<Void>) -> CGPDFScannerRef
@available(OSX 10.4, *)
func CGPDFScannerRetain(_ scanner: CGPDFScannerRef) -> CGPDFScannerRef
@available(OSX 10.4, *)
func CGPDFScannerRelease(_ scanner: CGPDFScannerRef)
@available(OSX 10.4, *)
func CGPDFScannerScan(_ scanner: CGPDFScannerRef) -> Bool
@available(OSX 10.4, *)
func CGPDFScannerGetContentStream(_ scanner: CGPDFScannerRef) -> CGPDFContentStreamRef
@available(OSX 10.4, *)
func CGPDFScannerPopObject(_ scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFObjectRef>) -> Bool
@available(OSX 10.4, *)
func CGPDFScannerPopBoolean(_ scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFBoolean>) -> Bool
@available(OSX 10.4, *)
func CGPDFScannerPopInteger(_ scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFInteger>) -> Bool
@available(OSX 10.4, *)
func CGPDFScannerPopNumber(_ scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFReal>) -> Bool
@available(OSX 10.4, *)
func CGPDFScannerPopName(_ scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Bool
@available(OSX 10.4, *)
func CGPDFScannerPopString(_ scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFStringRef>) -> Bool
@available(OSX 10.4, *)
func CGPDFScannerPopArray(_ scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFArrayRef>) -> Bool
@available(OSX 10.4, *)
func CGPDFScannerPopDictionary(_ scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFDictionaryRef>) -> Bool
@available(OSX 10.4, *)
func CGPDFScannerPopStream(_ scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFStreamRef>) -> Bool
