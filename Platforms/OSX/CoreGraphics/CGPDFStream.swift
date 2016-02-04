
typealias CGPDFStreamRef = COpaquePointer
enum CGPDFDataFormat : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Raw
  case JPEGEncoded
  case JPEG2000
}
@available(OSX 10.3, *)
func CGPDFStreamGetDictionary(stream: CGPDFStreamRef) -> CGPDFDictionaryRef
@available(OSX 10.3, *)
func CGPDFStreamCopyData(stream: CGPDFStreamRef, _ format: UnsafeMutablePointer<CGPDFDataFormat>) -> CFData?
