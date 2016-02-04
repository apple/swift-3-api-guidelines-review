
class NSPDFImageRep : NSImageRep {
  init?(data pdfData: Data)
  var pdfRepresentation: Data { get }
  var bounds: Rect { get }
  var currentPage: Int
  var pageCount: Int { get }
  init()
  init?(coder: Coder)
}
