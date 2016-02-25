
@available(iOS 8.0, *)
class UIImageAsset : NSObject, NSSecureCoding {
  init?(coder aDecoder: NSCoder)
  func image(with traitCollection: UITraitCollection) -> UIImage
  func register(_ image: UIImage, with traitCollection: UITraitCollection)
  func unregisterImage(with traitCollection: UITraitCollection)
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
}
