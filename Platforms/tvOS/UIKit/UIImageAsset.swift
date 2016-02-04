
@available(tvOS 8.0, *)
class UIImageAsset : NSObject, NSSecureCoding {
  init()
  init?(coder aDecoder: NSCoder)
  func imageWithTraitCollection(traitCollection: UITraitCollection) -> UIImage
  func registerImage(image: UIImage, withTraitCollection traitCollection: UITraitCollection)
  func unregisterImageWithTraitCollection(traitCollection: UITraitCollection)
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
