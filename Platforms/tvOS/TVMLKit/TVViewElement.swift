
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
class TVViewElement : Object, Copying {
  var elementIdentifier: String { get }
  var elementName: String { get }
  weak var parent: @sil_weak TVViewElement? { get }
  var childViewElements: [TVViewElement]? { get }
  var attributes: [String : String]? { get }
  var style: TVViewElementStyle? { get }
  var autoHighlightIdentifier: String? { get }
  var isDisabled: Bool
  var updateType: TVElementUpdateType { get }
  @available(tvOS 9.0, *)
  func resetProperty(resettableProperty: TVElementResettableProperty)
  func dispatchEventOf(type: TVElementEventType, canBubble: Bool, cancellable isCancellable: Bool, extraInfo: [String : AnyObject]?, completion: ((Bool, Bool) -> Void)? = nil)
  func dispatchEventWithName(eventName: String, canBubble: Bool, cancellable isCancellable: Bool, extraInfo: [String : AnyObject]?, completion: ((Bool, Bool) -> Void)? = nil)
  init()
  @available(tvOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
