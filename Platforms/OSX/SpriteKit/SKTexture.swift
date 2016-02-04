
@available(OSX 10.9, *)
enum SKTextureFilteringMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Nearest
  case Linear
}
class SKTexture : NSObject, NSCopying, NSCoding {
  convenience init(imageNamed name: String)
  convenience init(rect: CGRect, inTexture texture: SKTexture)
  @available(OSX 10.10, *)
  convenience init(vectorNoiseWithSmoothness smoothness: CGFloat, size: CGSize)
  @available(OSX 10.10, *)
  convenience init(noiseWithSmoothness smoothness: CGFloat, size: CGSize, grayscale: Bool)
  convenience init(CGImage image: CGImage)
  convenience init(image: NSImage)
  convenience init(data pixelData: NSData, size: CGSize)
  convenience init(data pixelData: NSData, size: CGSize, flipped: Bool)
  convenience init(data pixelData: NSData, size: CGSize, rowLength: UInt32, alignment: UInt32)
  func textureByApplyingCIFilter(filter: CIFilter) -> Self
  @available(OSX 10.10, *)
  func textureByGeneratingNormalMap() -> Self
  @available(OSX 10.10, *)
  func textureByGeneratingNormalMapWithSmoothness(smoothness: CGFloat, contrast: CGFloat) -> Self
  func textureRect() -> CGRect
  func size() -> CGSize
  var filteringMode: SKTextureFilteringMode
  var usesMipmaps: Bool
  @available(OSX 10.11, *)
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
