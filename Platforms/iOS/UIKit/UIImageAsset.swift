
@available(iOS 8.0, *)
class UIImageAsset : Object, SecureCoding {
  init()
  init?(coder aDecoder: Coder)
  func image(traitCollection: UITraitCollection) -> UIImage
  func register(image: UIImage, with traitCollection: UITraitCollection)
  func unregisterImage(traitCollection: UITraitCollection)
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: Coder)
}
