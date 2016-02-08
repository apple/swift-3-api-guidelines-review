
@available(tvOS 7.0, *)
enum UIAttachmentBehaviorType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case items
  case anchor
}
struct UIFloatRange {
  var minimum: CGFloat
  var maximum: CGFloat
  init()
  init(minimum: CGFloat, maximum: CGFloat)
}
@available(tvOS 9.0, *)
let UIFloatRangeZero: UIFloatRange
@available(tvOS 9.0, *)
let UIFloatRangeInfinite: UIFloatRange
@available(tvOS 9.0, *)
func UIFloatRangeIsInfinite(range: UIFloatRange) -> Bool
@available(tvOS 9.0, *)
func UIFloatRangeIsEqualToRange(range: UIFloatRange, _ otherRange: UIFloatRange) -> Bool
func UIFloatRangeMake(minimum: CGFloat, _ maximum: CGFloat) -> UIFloatRange
@available(tvOS 7.0, *)
class UIAttachmentBehavior : UIDynamicBehavior {
  convenience init(item: UIDynamicItem, attachedToAnchor point: CGPoint)
  init(item: UIDynamicItem, offsetFromCenter offset: UIOffset, attachedToAnchor point: CGPoint)
  convenience init(item item1: UIDynamicItem, attachedTo item2: UIDynamicItem)
  init(item item1: UIDynamicItem, offsetFromCenter offset1: UIOffset, attachedTo item2: UIDynamicItem, offsetFromCenter offset2: UIOffset)
  @available(tvOS 9.0, *)
  class func slidingAttachmentWith(item1: UIDynamicItem, attachedTo item2: UIDynamicItem, attachmentAnchor point: CGPoint, axisOfTranslation axis: CGVector) -> Self
  @available(tvOS 9.0, *)
  class func slidingAttachmentWith(item: UIDynamicItem, attachmentAnchor point: CGPoint, axisOfTranslation axis: CGVector) -> Self
  @available(tvOS 9.0, *)
  class func limitAttachmentWith(item1: UIDynamicItem, offsetFromCenter offset1: UIOffset, attachedTo item2: UIDynamicItem, offsetFromCenter offset2: UIOffset) -> Self
  @available(tvOS 9.0, *)
  class func fixedAttachmentWith(item1: UIDynamicItem, attachedTo item2: UIDynamicItem, attachmentAnchor point: CGPoint) -> Self
  @available(tvOS 9.0, *)
  class func pinAttachmentWith(item1: UIDynamicItem, attachedTo item2: UIDynamicItem, attachmentAnchor point: CGPoint) -> Self
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
  convenience init()
}
