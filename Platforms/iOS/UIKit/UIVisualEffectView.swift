
@available(iOS 8.0, *)
enum UIBlurEffectStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case ExtraLight
  case Light
  case Dark
}
@available(iOS 8.0, *)
class UIVisualEffect : NSObject, NSCopying, NSSecureCoding {
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class UIBlurEffect : UIVisualEffect {
  /*not inherited*/ init(style style: UIBlurEffectStyle)
}
@available(iOS 8.0, *)
class UIVibrancyEffect : UIVisualEffect {
  /*not inherited*/ init(forBlurEffect blurEffect: UIBlurEffect)
}
@available(iOS 8.0, *)
class UIVisualEffectView : UIView, NSSecureCoding {
  var contentView: UIView { get }
  @NSCopying var effect: UIVisualEffect?
  init(effect effect: UIVisualEffect?)
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
}
