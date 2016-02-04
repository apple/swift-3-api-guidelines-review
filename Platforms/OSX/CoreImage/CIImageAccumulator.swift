
@available(OSX 10.4, *)
class CIImageAccumulator : NSObject {
  init(extent: CGRect, format: CIFormat)
  @available(OSX 10.7, *)
  init(extent: CGRect, format: CIFormat, colorSpace: CGColorSpace)
  var extent: CGRect { get }
  var format: CIFormat { get }
  func image() -> CIImage
  func setImage(image: CIImage)
  func setImage(image: CIImage, dirtyRect: CGRect)
  func clear()
  init()
}
