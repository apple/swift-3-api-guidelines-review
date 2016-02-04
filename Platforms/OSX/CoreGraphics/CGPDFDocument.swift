
class CGPDFDocument {
}
@available(*, deprecated, renamed="CGPDFDocument")
typealias CGPDFDocumentRef = CGPDFDocument
@available(OSX 10.0, *)
func CGPDFDocumentCreateWithProvider(provider: CGDataProvider?) -> CGPDFDocument?
@available(OSX 10.0, *)
func CGPDFDocumentCreateWithURL(url: CFURL?) -> CGPDFDocument?
@available(OSX 10.3, *)
func CGPDFDocumentGetVersion(document: CGPDFDocument?, _ majorVersion: UnsafeMutablePointer<Int32>, _ minorVersion: UnsafeMutablePointer<Int32>)
@available(OSX 10.2, *)
func CGPDFDocumentIsEncrypted(document: CGPDFDocument?) -> Bool
@available(OSX 10.2, *)
func CGPDFDocumentUnlockWithPassword(document: CGPDFDocument?, _ password: UnsafePointer<Int8>) -> Bool
@available(OSX 10.2, *)
func CGPDFDocumentIsUnlocked(document: CGPDFDocument?) -> Bool
@available(OSX 10.2, *)
func CGPDFDocumentAllowsPrinting(document: CGPDFDocument?) -> Bool
@available(OSX 10.2, *)
func CGPDFDocumentAllowsCopying(document: CGPDFDocument?) -> Bool
@available(OSX 10.0, *)
func CGPDFDocumentGetNumberOfPages(document: CGPDFDocument?) -> Int
@available(OSX 10.3, *)
func CGPDFDocumentGetPage(document: CGPDFDocument?, _ pageNumber: Int) -> CGPDFPage?
@available(OSX 10.3, *)
func CGPDFDocumentGetCatalog(document: CGPDFDocument?) -> CGPDFDictionaryRef
@available(OSX 10.4, *)
func CGPDFDocumentGetInfo(document: CGPDFDocument?) -> CGPDFDictionaryRef
@available(OSX 10.4, *)
func CGPDFDocumentGetID(document: CGPDFDocument?) -> CGPDFArrayRef
@available(OSX 10.2, *)
func CGPDFDocumentGetTypeID() -> CFTypeID
