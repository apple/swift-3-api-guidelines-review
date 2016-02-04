
@available(iOS 8.0, *)
enum UIBlurEffectStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ExtraLight
  case Light
  case Dark
}
@available(iOS 8.0, *)
class UIVisualEffect : NSObject, NSCopying, NSSecureCoding {
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class UIBlurEffect : UIVisualEffect {
  /*not inherited*/ init(style: UIBlurEffectStyle)
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class UIVibrancyEffect : UIVisualEffect {
  /*not inherited*/ init(forBlurEffect blurEffect: UIBlurEffect)
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class UIVisualEffectView : UIView, NSSecureCoding {
  var contentView: UIView { get }
  @NSCopying var effect: UIVisualEffect?
  init(effect: UIVisualEffect?)
  init?(coder aDecoder: NSCoder)
  convenience init(frame: CGRect)
  convenience init()
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
}
