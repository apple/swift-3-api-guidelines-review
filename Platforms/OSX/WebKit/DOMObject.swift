
typealias DOMTimeStamp = UInt64
@available(OSX 10.4, *)
class DOMObject : WebScriptObject, NSCopying {
  @available(OSX 10.4, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
extension DOMObject {
  @available(OSX 10.4, *)
  var sheet: DOMStyleSheet! { get }
}
