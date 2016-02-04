
@available(tvOS 9.0, *)
enum TVElementEventType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Play
  case Select
  case HoldSelect
  case Highlight
  case Change
}
@available(tvOS 9.0, *)
enum TVElementUpdateType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Subtree
  case Children
  case `Self`
}
@available(tvOS 9.0, *)
enum TVElementResettableProperty : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UpdateType
  case AutoHighlightIdentifier
}
@available(tvOS 9.0, *)
class TVViewElement : NSObject, NSCopying {
  var elementIdentifier: String { get }
  var elementName: String { get }
  weak var parentViewElement: @sil_weak TVViewElement? { get }
  var childViewElements: [TVViewElement]? { get }
  var attributes: [String : String]? { get }
  var style: TVViewElementStyle? { get }
  var autoHighlightIdentifier: String? { get }
  var disabled: Bool
  var updateType: TVElementUpdateType { get }
  @available(tvOS 9.0, *)
  func resetProperty(resettableProperty: TVElementResettableProperty)
  func dispatchEventOfType(type: TVElementEventType, canBubble: Bool, cancellable isCancellable: Bool, extraInfo: [String : AnyObject]?, completion: ((Bool, Bool) -> Void)?)
  func dispatchEventWithName(eventName: String, canBubble: Bool, cancellable isCancellable: Bool, extraInfo: [String : AnyObject]?, completion: ((Bool, Bool) -> Void)?)
  init()
  @available(tvOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
