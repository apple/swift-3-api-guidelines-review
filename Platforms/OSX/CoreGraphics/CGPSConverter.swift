
class CGPSConverter {
}
@available(*, deprecated, renamed="CGPSConverter")
typealias CGPSConverterRef = CGPSConverter
typealias CGPSConverterBeginDocumentCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
typealias CGPSConverterEndDocumentCallback = @convention(c) (UnsafeMutablePointer<Void>, Bool) -> Void
typealias CGPSConverterBeginPageCallback = @convention(c) (UnsafeMutablePointer<Void>, Int, CFDictionary) -> Void
typealias CGPSConverterEndPageCallback = @convention(c) (UnsafeMutablePointer<Void>, Int, CFDictionary) -> Void
typealias CGPSConverterProgressCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
typealias CGPSConverterMessageCallback = @convention(c) (UnsafeMutablePointer<Void>, CFString) -> Void
typealias CGPSConverterReleaseInfoCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
struct CGPSConverterCallbacks {
  var version: UInt32
  var beginDocument: CGPSConverterBeginDocumentCallback?
  var endDocument: CGPSConverterEndDocumentCallback?
  var beginPage: CGPSConverterBeginPageCallback?
  var endPage: CGPSConverterEndPageCallback?
  var noteProgress: CGPSConverterProgressCallback?
  var noteMessage: CGPSConverterMessageCallback?
  var releaseInfo: CGPSConverterReleaseInfoCallback?
  init()
  init(version: UInt32, beginDocument: CGPSConverterBeginDocumentCallback?, endDocument: CGPSConverterEndDocumentCallback?, beginPage: CGPSConverterBeginPageCallback?, endPage: CGPSConverterEndPageCallback?, noteProgress: CGPSConverterProgressCallback?, noteMessage: CGPSConverterMessageCallback?, releaseInfo: CGPSConverterReleaseInfoCallback?)
}
@available(OSX 10.3, *)
func CGPSConverterCreate(info: UnsafeMutablePointer<Void>, _ callbacks: UnsafePointer<CGPSConverterCallbacks>, _ options: CFDictionary?) -> CGPSConverter?
@available(OSX 10.3, *)
func CGPSConverterConvert(converter: CGPSConverter, _ provider: CGDataProvider, _ consumer: CGDataConsumer, _ options: CFDictionary?) -> Bool
@available(OSX 10.3, *)
func CGPSConverterAbort(converter: CGPSConverter) -> Bool
@available(OSX 10.3, *)
func CGPSConverterIsConverting(converter: CGPSConverter) -> Bool
@available(OSX 10.3, *)
func CGPSConverterGetTypeID() -> CFTypeID
