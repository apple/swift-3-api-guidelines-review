
@available(tvOS 8.0, *)
enum UIBlurEffectStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case extraLight
  case light
  case dark
}
@available(tvOS 8.0, *)
class UIVisualEffect : NSObject, NSCopying, NSSecureCoding {
  init()
  @available(tvOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 8.0, *)
class UIBlurEffect : UIVisualEffect {
  /*not inherited*/ init(style: UIBlurEffectStyle)
  init()
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 8.0, *)
class UIVibrancyEffect : UIVisualEffect {
  /*not inherited*/ init(for blurEffect: UIBlurEffect)
  init()
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 8.0, *)
class UIVisualEffectView : UIView, NSSecureCoding {
  var contentView: UIView { get }
  @NSCopying var effect: UIVisualEffect?
  init(effect: UIVisualEffect?)
  init?(coder aDecoder: NSCoder)
  convenience init(frame: CGRect)
  convenience init()
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
}
