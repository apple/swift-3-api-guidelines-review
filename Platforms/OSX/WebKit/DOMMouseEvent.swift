
@available(OSX 10.4, *)
class DOMMouseEvent : DOMUIEvent {
  var screenX: Int32 { get }
  var screenY: Int32 { get }
  var clientX: Int32 { get }
  var clientY: Int32 { get }
  var ctrlKey: Bool { get }
  var shiftKey: Bool { get }
  var altKey: Bool { get }
  var metaKey: Bool { get }
  var button: UInt16 { get }
  var relatedTarget: DOMEventTarget! { get }
  @available(OSX 10.5, *)
  var offsetX: Int32 { get }
  @available(OSX 10.5, *)
  var offsetY: Int32 { get }
  @available(OSX 10.5, *)
  var x: Int32 { get }
  @available(OSX 10.5, *)
  var y: Int32 { get }
  @available(OSX 10.5, *)
  var fromElement: DOMNode! { get }
  @available(OSX 10.5, *)
  var toElement: DOMNode! { get }
  @available(OSX 10.5, *)
  func initMouseEvent(type: String!, canBubble: Bool, cancelable: Bool, view: DOMAbstractView!, detail: Int32, screenX: Int32, screenY: Int32, clientX: Int32, clientY: Int32, ctrlKey: Bool, altKey: Bool, shiftKey: Bool, metaKey: Bool, button: UInt16, relatedTarget: DOMEventTarget!)
}
extension DOMMouseEvent {
}
