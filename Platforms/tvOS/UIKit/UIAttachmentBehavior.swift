
@available(tvOS 7.0, *)
enum UIAttachmentBehaviorType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Items
  case Anchor
}
struct UIFloatRange {
  var minimum: CGFloat
  var maximum: CGFloat
  init()
  init(minimum minimum: CGFloat, maximum maximum: CGFloat)
}
@available(tvOS 9.0, *)
let UIFloatRangeZero: UIFloatRange
@available(tvOS 9.0, *)
let UIFloatRangeInfinite: UIFloatRange
@available(tvOS 9.0, *)
func UIFloatRangeIsInfinite(_ range: UIFloatRange) -> Bool
@available(tvOS 9.0, *)
func UIFloatRangeIsEqualToRange(_ range: UIFloatRange, _ otherRange: UIFloatRange) -> Bool
func UIFloatRangeMake(_ minimum: CGFloat, _ maximum: CGFloat) -> UIFloatRange
@available(tvOS 7.0, *)
class UIAttachmentBehavior : UIDynamicBehavior {
  convenience init(item item: UIDynamicItem, attachedToAnchor point: CGPoint)
  init(item item: UIDynamicItem, offsetFromCenter offset: UIOffset, attachedToAnchor point: CGPoint)
  convenience init(item item1: UIDynamicItem, attachedToItem item2: UIDynamicItem)
  init(item item1: UIDynamicItem, offsetFromCenter offset1: UIOffset, attachedToItem item2: UIDynamicItem, offsetFromCenter offset2: UIOffset)
  @available(tvOS 9.0, *)
  class func slidingAttachmentWithItem(_ item1: UIDynamicItem, attachedToItem item2: UIDynamicItem, attachmentAnchor point: CGPoint, axisOfTranslation axis: CGVector) -> Self
  @available(tvOS 9.0, *)
  class func slidingAttachmentWithItem(_ item: UIDynamicItem, attachmentAnchor point: CGPoint, axisOfTranslation axis: CGVector) -> Self
  @available(tvOS 9.0, *)
  class func limitAttachmentWithItem(_ item1: UIDynamicItem, offsetFromCenter offset1: UIOffset, attachedToItem item2: UIDynamicItem, offsetFromCenter offset2: UIOffset) -> Self
  @available(tvOS 9.0, *)
  class func fixedAttachmentWithItem(_ item1: UIDynamicItem, attachedToItem item2: UIDynamicItem, attachmentAnchor point: CGPoint) -> Self
  @available(tvOS 9.0, *)
  class func pinAttachmentWithItem(_ item1: UIDynamicItem, attachedToItem item2: UIDynamicItem, attachmentAnchor point: CGPoint) -> Self
  var items: [UIDynamicItem] { get }
  var attachedBehaviorType: UIAttachmentBehaviorType { get }
  var anchorPoint: CGPoint
  var length: CGFloat
  var damping: CGFloat
  var frequency: CGFloat
  @available(tvOS 9.0, *)
  var frictionTorque: CGFloat
  @available(tvOS 9.0, *)
  var attachmentRange: UIFloatRange
}
