
@available(tvOS 7.0, *)
enum SKTextureFilteringMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Nearest
  case Linear
}
class SKTexture : Object, Copying, Coding {
  convenience init(imageNamed name: String)
  convenience init(rect: CGRect, in texture: SKTexture)
  @available(tvOS 8.0, *)
  convenience init(vectorNoiseWithSmoothness smoothness: CGFloat, size: CGSize)
  @available(tvOS 8.0, *)
  convenience init(noiseWithSmoothness smoothness: CGFloat, size: CGSize, grayscale: Bool)
  convenience init(cgImage image: CGImage)
  convenience init(image: UIImage)
  convenience init(data pixelData: Data, size: CGSize)
  convenience init(data pixelData: Data, size: CGSize, flipped: Bool)
  convenience init(data pixelData: Data, size: CGSize, rowLength: UInt32, alignment: UInt32)
  func applying(filter: CIFilter) -> Self
  @available(tvOS 8.0, *)
  func generatingNormalMap() -> Self
  @available(tvOS 8.0, *)
  func generatingNormalMapWithSmoothness(smoothness: CGFloat, contrast: CGFloat) -> Self
  func textureRect() -> CGRect
  func size() -> CGSize
  var filteringMode: SKTextureFilteringMode
  var usesMipmaps: Bool
  @available(tvOS 9.0, *)
  func cgImage() -> CGImage
  class func preload(textures: [SKTexture], withCompletionHandler completionHandler: () -> Void)
  func preloadWithCompletionHandler(completionHandler: () -> Void)
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}

extension SKTexture : CustomPlaygroundQuickLookable {
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
