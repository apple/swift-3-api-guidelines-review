
class NSPDFImageRep : NSImageRep {
  init?(data pdfData: NSData)
  var PDFRepresentation: NSData { get }
  var bounds: NSRect { get }
  var currentPage: Int
  var pageCount: Int { get }
}
