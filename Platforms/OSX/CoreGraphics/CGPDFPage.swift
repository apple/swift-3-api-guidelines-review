
class CGPDFPage {
}
enum CGPDFBox : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case mediaBox
  case cropBox
  case bleedBox
  case trimBox
  case artBox
}
@available(OSX 10.3, *)
func CGPDFPageGetDocument(_ page: CGPDFPage?) -> CGPDFDocument?
@available(OSX 10.3, *)
func CGPDFPageGetPageNumber(_ page: CGPDFPage?) -> Int
@available(OSX 10.3, *)
func CGPDFPageGetBoxRect(_ page: CGPDFPage?, _ box: CGPDFBox) -> CGRect
@available(OSX 10.3, *)
func CGPDFPageGetRotationAngle(_ page: CGPDFPage?) -> Int32
@available(OSX 10.3, *)
func CGPDFPageGetDrawingTransform(_ page: CGPDFPage?, _ box: CGPDFBox, _ rect: CGRect, _ rotate: Int32, _ preserveAspectRatio: Bool) -> CGAffineTransform
@available(OSX 10.3, *)
func CGPDFPageGetDictionary(_ page: CGPDFPage?) -> CGPDFDictionaryRef
@available(OSX 10.3, *)
func CGPDFPageGetTypeID() -> CFTypeID
