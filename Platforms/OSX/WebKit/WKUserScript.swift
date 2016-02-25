
@available(OSX 10.10, *)
enum WKUserScriptInjectionTime : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case AtDocumentStart
  case AtDocumentEnd
}
@available(OSX 10.10, *)
class WKUserScript : NSObject, NSCopying {
  var source: String { get }
  var injectionTime: WKUserScriptInjectionTime { get }
  var forMainFrameOnly: Bool { get }
  init(source source: String, injectionTime injectionTime: WKUserScriptInjectionTime, forMainFrameOnly forMainFrameOnly: Bool)
  @available(OSX 10.10, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
