
class CGPDFDocument {
}
@available(OSX 10.0, *)
func CGPDFDocumentCreateWithProvider(_ provider: CGDataProvider?) -> CGPDFDocument?
@available(OSX 10.0, *)
func CGPDFDocumentCreateWithURL(_ url: CFURL?) -> CGPDFDocument?
@available(OSX 10.3, *)
func CGPDFDocumentGetVersion(_ document: CGPDFDocument?, _ majorVersion: UnsafeMutablePointer<Int32>, _ minorVersion: UnsafeMutablePointer<Int32>)
@available(OSX 10.2, *)
func CGPDFDocumentIsEncrypted(_ document: CGPDFDocument?) -> Bool
@available(OSX 10.2, *)
func CGPDFDocumentUnlockWithPassword(_ document: CGPDFDocument?, _ password: UnsafePointer<Int8>) -> Bool
@available(OSX 10.2, *)
func CGPDFDocumentIsUnlocked(_ document: CGPDFDocument?) -> Bool
@available(OSX 10.2, *)
func CGPDFDocumentAllowsPrinting(_ document: CGPDFDocument?) -> Bool
@available(OSX 10.2, *)
func CGPDFDocumentAllowsCopying(_ document: CGPDFDocument?) -> Bool
@available(OSX 10.0, *)
func CGPDFDocumentGetNumberOfPages(_ document: CGPDFDocument?) -> Int
@available(OSX 10.3, *)
func CGPDFDocumentGetPage(_ document: CGPDFDocument?, _ pageNumber: Int) -> CGPDFPage?
@available(OSX 10.3, *)
func CGPDFDocumentGetCatalog(_ document: CGPDFDocument?) -> CGPDFDictionaryRef
@available(OSX 10.4, *)
func CGPDFDocumentGetInfo(_ document: CGPDFDocument?) -> CGPDFDictionaryRef
@available(OSX 10.4, *)
func CGPDFDocumentGetID(_ document: CGPDFDocument?) -> CGPDFArrayRef
@available(OSX 10.2, *)
func CGPDFDocumentGetTypeID() -> CFTypeID
