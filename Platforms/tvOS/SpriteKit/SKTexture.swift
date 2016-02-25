
@available(tvOS 7.0, *)
enum SKTextureFilteringMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Nearest
  case Linear
}
class SKTexture : NSObject, NSCopying, NSCoding {
  convenience init(imageNamed name: String)
  convenience init(rect rect: CGRect, inTexture texture: SKTexture)
  @available(tvOS 8.0, *)
  convenience init(vectorNoiseWithSmoothness smoothness: CGFloat, size size: CGSize)
  @available(tvOS 8.0, *)
  convenience init(noiseWithSmoothness smoothness: CGFloat, size size: CGSize, grayscale grayscale: Bool)
  convenience init(CGImage image: CGImage)
  convenience init(image image: UIImage)
  convenience init(data pixelData: NSData, size size: CGSize)
  convenience init(data pixelData: NSData, size size: CGSize, flipped flipped: Bool)
  convenience init(data pixelData: NSData, size size: CGSize, rowLength rowLength: UInt32, alignment alignment: UInt32)
  func textureByApplyingCIFilter(_ filter: CIFilter) -> Self
  @available(tvOS 8.0, *)
  func textureByGeneratingNormalMap() -> Self
  @available(tvOS 8.0, *)
  func textureByGeneratingNormalMapWithSmoothness(_ smoothness: CGFloat, contrast contrast: CGFloat) -> Self
  func textureRect() -> CGRect
  func size() -> CGSize
  var filteringMode: SKTextureFilteringMode
  var usesMipmaps: Bool
  @available(tvOS 9.0, *)
  func CGImage() -> CGImage
  class func preloadTextures(_ textures: [SKTexture], withCompletionHandler completionHandler: () -> Void)
  func preloadWithCompletionHandler(_ completionHandler: () -> Void)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension SKTexture : CustomPlaygroundQuickLookable {
}
