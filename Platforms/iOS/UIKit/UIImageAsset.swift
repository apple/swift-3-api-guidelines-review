
@available(iOS 8.0, *)
class UIImageAsset : NSObject, NSSecureCoding {
  init?(coder aDecoder: NSCoder)
  func imageWithTraitCollection(_ traitCollection: UITraitCollection) -> UIImage
  func registerImage(_ image: UIImage, withTraitCollection traitCollection: UITraitCollection)
  func unregisterImageWithTraitCollection(_ traitCollection: UITraitCollection)
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
}
