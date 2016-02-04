
class CGPDFDocument {
}
@available(*, deprecated, renamed="CGPDFDocument")
typealias CGPDFDocumentRef = CGPDFDocument
@available(iOS 2.0, *)
func CGPDFDocumentCreateWithProvider(provider: CGDataProvider?) -> CGPDFDocument?
@available(iOS 2.0, *)
func CGPDFDocumentCreateWithURL(url: CFURL?) -> CGPDFDocument?
@available(iOS 2.0, *)
func CGPDFDocumentGetVersion(document: CGPDFDocument?, _ majorVersion: UnsafeMutablePointer<Int32>, _ minorVersion: UnsafeMutablePointer<Int32>)
@available(iOS 2.0, *)
func CGPDFDocumentIsEncrypted(document: CGPDFDocument?) -> Bool
@available(iOS 2.0, *)
func CGPDFDocumentUnlockWithPassword(document: CGPDFDocument?, _ password: UnsafePointer<Int8>) -> Bool
@available(iOS 2.0, *)
func CGPDFDocumentIsUnlocked(document: CGPDFDocument?) -> Bool
@available(iOS 2.0, *)
func CGPDFDocumentAllowsPrinting(document: CGPDFDocument?) -> Bool
@available(iOS 2.0, *)
func CGPDFDocumentAllowsCopying(document: CGPDFDocument?) -> Bool
@available(iOS 2.0, *)
func CGPDFDocumentGetNumberOfPages(document: CGPDFDocument?) -> Int
@available(iOS 2.0, *)
func CGPDFDocumentGetPage(document: CGPDFDocument?, _ pageNumber: Int) -> CGPDFPage?
@available(iOS 2.0, *)
func CGPDFDocumentGetCatalog(document: CGPDFDocument?) -> CGPDFDictionaryRef
@available(iOS 2.0, *)
func CGPDFDocumentGetInfo(document: CGPDFDocument?) -> CGPDFDictionaryRef
@available(iOS 2.0, *)
func CGPDFDocumentGetID(document: CGPDFDocument?) -> CGPDFArrayRef
@available(iOS 2.0, *)
func CGPDFDocumentGetTypeID() -> CFTypeID
