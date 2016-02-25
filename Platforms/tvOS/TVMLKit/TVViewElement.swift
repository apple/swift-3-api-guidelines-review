
@available(tvOS 9.0, *)
enum TVElementEventType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case play
  case select
  case holdSelect
  case highlight
  case change
}
@available(tvOS 9.0, *)
enum TVElementUpdateType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case none
  case subtree
  case children
  case `self`
}
@available(tvOS 9.0, *)
enum TVElementResettableProperty : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case updateType
  case autoHighlightIdentifier
}
@available(tvOS 9.0, *)
class TVViewElement : NSObject, NSCopying {
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
  func resetProperty(_ resettableProperty: TVElementResettableProperty)
  func dispatchEvent(of type: TVElementEventType, canBubble canBubble: Bool, cancellable isCancellable: Bool, extraInfo extraInfo: [String : AnyObject]?, completion completion: ((Bool, Bool) -> Void)? = nil)
  func dispatchEvent(withName eventName: String, canBubble canBubble: Bool, cancellable isCancellable: Bool, extraInfo extraInfo: [String : AnyObject]?, completion completion: ((Bool, Bool) -> Void)? = nil)
  @available(tvOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
