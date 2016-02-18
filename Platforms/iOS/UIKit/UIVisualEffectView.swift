
@available(iOS 8.0, *)
enum UIBlurEffectStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case extraLight
  case light
  case dark
}
@available(iOS 8.0, *)
class UIVisualEffect : Object, Copying, SecureCoding {
  init()
  @available(iOS 8.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(iOS 8.0, *)
class UIBlurEffect : UIVisualEffect {
  /*not inherited*/ init(style: UIBlurEffectStyle)
  init()
  init?(coder aDecoder: Coder)
}
@available(iOS 8.0, *)
class UIVibrancyEffect : UIVisualEffect {
  /*not inherited*/ init(for blurEffect: UIBlurEffect)
  init()
  init?(coder aDecoder: Coder)
}
@available(iOS 8.0, *)
class UIVisualEffectView : UIView, SecureCoding {
  var contentView: UIView { get }
  @NSCopying var effect: UIVisualEffect?
  init(effect: UIVisualEffect?)
  init?(coder aDecoder: Coder)
  convenience init(frame: CGRect)
  convenience init()
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
}
