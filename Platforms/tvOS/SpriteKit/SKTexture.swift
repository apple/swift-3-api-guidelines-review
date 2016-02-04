
@available(tvOS 7.0, *)
enum SKTextureFilteringMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Nearest
  case Linear
}
class SKTexture : NSObject, NSCopying, NSCoding {
  convenience init(imageNamed name: String)
  convenience init(rect: CGRect, inTexture texture: SKTexture)
  @available(tvOS 8.0, *)
  convenience init(vectorNoiseWithSmoothness smoothness: CGFloat, size: CGSize)
  @available(tvOS 8.0, *)
  convenience init(noiseWithSmoothness smoothness: CGFloat, size: CGSize, grayscale: Bool)
  convenience init(CGImage image: CGImage)
  convenience init(image: UIImage)
  convenience init(data pixelData: NSData, size: CGSize)
  convenience init(data pixelData: NSData, size: CGSize, flipped: Bool)
  convenience init(data pixelData: NSData, size: CGSize, rowLength: UInt32, alignment: UInt32)
  func textureByApplyingCIFilter(filter: CIFilter) -> Self
  @available(tvOS 8.0, *)
  func textureByGeneratingNormalMap() -> Self
  @available(tvOS 8.0, *)
  func textureByGeneratingNormalMapWithSmoothness(smoothness: CGFloat, contrast: CGFloat) -> Self
  func textureRect() -> CGRect
  func size() -> CGSize
  var filteringMode: SKTextureFilteringMode
  var usesMipmaps: Bool
  @available(tvOS 9.0, *)
  func CGImage() -> CGImage
  class func preloadTextures(textures: [SKTexture], withCompletionHandler completionHandler: () -> Void)
  func preloadWithCompletionHandler(completionHandler: () -> Void)
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension SKTexture : CustomPlaygroundQuickLookable {
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
