
@available(OSX 10.10, *)
enum WKUserScriptInjectionTime : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case atDocumentStart
  case atDocumentEnd
}
@available(OSX 10.10, *)
class WKUserScript : NSObject, NSCopying {
  var source: String { get }
  var injectionTime: WKUserScriptInjectionTime { get }
  var isForMainFrameOnly: Bool { get }
  init(source: String, injectionTime: WKUserScriptInjectionTime, forMainFrameOnly: Bool)
  init()
  @available(OSX 10.10, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
