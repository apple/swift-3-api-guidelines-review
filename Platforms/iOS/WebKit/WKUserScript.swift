
@available(iOS 8.0, *)
enum WKUserScriptInjectionTime : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case AtDocumentStart
  case AtDocumentEnd
}
@available(iOS 8.0, *)
class WKUserScript : NSObject, NSCopying {
  var source: String { get }
  var injectionTime: WKUserScriptInjectionTime { get }
  var forMainFrameOnly: Bool { get }
  init(source source: String, injectionTime injectionTime: WKUserScriptInjectionTime, forMainFrameOnly forMainFrameOnly: Bool)
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
