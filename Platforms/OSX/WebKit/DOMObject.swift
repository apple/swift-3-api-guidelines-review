
typealias DOMTimeStamp = UInt64
@available(OSX 10.4, *)
class DOMObject : WebScriptObject, NSCopying {
  @available(OSX 10.4, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
extension DOMObject {
  @available(OSX 10.4, *)
  var sheet: DOMStyleSheet! { get }
}
