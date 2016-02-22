
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
@available(iOS 2.0, *)
func CGPDFPageGetDocument(_ page: CGPDFPage?) -> CGPDFDocument?
@available(iOS 2.0, *)
func CGPDFPageGetPageNumber(_ page: CGPDFPage?) -> Int
@available(iOS 2.0, *)
func CGPDFPageGetBoxRect(_ page: CGPDFPage?, _ box: CGPDFBox) -> CGRect
@available(iOS 2.0, *)
func CGPDFPageGetRotationAngle(_ page: CGPDFPage?) -> Int32
@available(iOS 2.0, *)
func CGPDFPageGetDrawingTransform(_ page: CGPDFPage?, _ box: CGPDFBox, _ rect: CGRect, _ rotate: Int32, _ preserveAspectRatio: Bool) -> CGAffineTransform
@available(iOS 2.0, *)
func CGPDFPageGetDictionary(_ page: CGPDFPage?) -> CGPDFDictionaryRef
@available(iOS 2.0, *)
func CGPDFPageGetTypeID() -> CFTypeID
