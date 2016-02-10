
typealias DOMTimeStamp = UInt64
@available(OSX 10.4, *)
class DOMObject : WebScriptObject, Copying {
  @available(OSX 10.4, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
extension DOMObject {
  @available(OSX 10.4, *)
  var sheet: DOMStyleSheet! { get }
}
