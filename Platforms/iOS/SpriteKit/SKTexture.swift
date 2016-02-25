
@available(iOS 7.0, *)
enum SKTextureFilteringMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case nearest
  case linear
}
class SKTexture : NSObject, NSCopying, NSCoding {
  convenience init(imageNamed name: String)
  convenience init(rect rect: CGRect, in texture: SKTexture)
  @available(iOS 8.0, *)
  convenience init(vectorNoiseWithSmoothness smoothness: CGFloat, size size: CGSize)
  @available(iOS 8.0, *)
  convenience init(noiseWithSmoothness smoothness: CGFloat, size size: CGSize, grayscale grayscale: Bool)
  convenience init(cgImage image: CGImage)
  convenience init(image image: UIImage)
  convenience init(data pixelData: NSData, size size: CGSize)
  convenience init(data pixelData: NSData, size size: CGSize, flipped flipped: Bool)
  convenience init(data pixelData: NSData, size size: CGSize, rowLength rowLength: UInt32, alignment alignment: UInt32)
  func applying(_ filter: CIFilter) -> Self
  @available(iOS 8.0, *)
  func generatingNormalMap() -> Self
  @available(iOS 8.0, *)
  func generatingNormalMap(withSmoothness smoothness: CGFloat, contrast contrast: CGFloat) -> Self
  func textureRect() -> CGRect
  func size() -> CGSize
  var filteringMode: SKTextureFilteringMode
  var usesMipmaps: Bool
  @available(iOS 9.0, *)
  func cgImage() -> CGImage
  class func preload(_ textures: [SKTexture], withCompletionHandler completionHandler: () -> Void)
  func preload(completionHandler completionHandler: () -> Void)
  func copy(with zone: NSZone = nil) -> AnyObject
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension SKTexture : CustomPlaygroundQuickLookable {
}
