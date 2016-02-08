
typealias CGPDFStreamRef = COpaquePointer
enum CGPDFDataFormat : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case raw
  case jpegEncoded
  case JPEG2000
}
@available(watchOS 2.0, *)
func CGPDFStreamGetDictionary(stream: CGPDFStreamRef) -> CGPDFDictionaryRef
@available(watchOS 2.0, *)
func CGPDFStreamCopyData(stream: CGPDFStreamRef, _ format: UnsafeMutablePointer<CGPDFDataFormat>) -> CFData?
