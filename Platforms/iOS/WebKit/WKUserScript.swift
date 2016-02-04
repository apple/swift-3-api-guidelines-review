
@available(iOS 8.0, *)
enum WKUserScriptInjectionTime : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AtDocumentStart
  case AtDocumentEnd
}
@available(iOS 8.0, *)
class WKUserScript : NSObject, NSCopying {
  var source: String { get }
  var injectionTime: WKUserScriptInjectionTime { get }
  var forMainFrameOnly: Bool { get }
  init(source: String, injectionTime: WKUserScriptInjectionTime, forMainFrameOnly: Bool)
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
