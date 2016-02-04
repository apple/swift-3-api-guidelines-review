
class CGPDFPage {
}
@available(*, deprecated, renamed="CGPDFPage")
typealias CGPDFPageRef = CGPDFPage
enum CGPDFBox : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case MediaBox
  case CropBox
  case BleedBox
  case TrimBox
  case ArtBox
}
@available(tvOS 2.0, *)
func CGPDFPageGetDocument(page: CGPDFPage?) -> CGPDFDocument?
@available(tvOS 2.0, *)
func CGPDFPageGetPageNumber(page: CGPDFPage?) -> Int
@available(tvOS 2.0, *)
func CGPDFPageGetBoxRect(page: CGPDFPage?, _ box: CGPDFBox) -> CGRect
@available(tvOS 2.0, *)
func CGPDFPageGetRotationAngle(page: CGPDFPage?) -> Int32
@available(tvOS 2.0, *)
func CGPDFPageGetDrawingTransform(page: CGPDFPage?, _ box: CGPDFBox, _ rect: CGRect, _ rotate: Int32, _ preserveAspectRatio: Bool) -> CGAffineTransform
@available(tvOS 2.0, *)
func CGPDFPageGetDictionary(page: CGPDFPage?) -> CGPDFDictionaryRef
@available(tvOS 2.0, *)
func CGPDFPageGetTypeID() -> CFTypeID
