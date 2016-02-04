
@available(tvOS 9.0, *)
class CIImageAccumulator : Object {
  init(extent: CGRect, format: CIFormat)
  @available(tvOS 9.0, *)
  init(extent: CGRect, format: CIFormat, colorSpace: CGColorSpace)
  var extent: CGRect { get }
  var format: CIFormat { get }
  func image() -> CIImage
  func setImage(image: CIImage)
  func setImage(image: CIImage, dirtyRect: CGRect)
  func clear()
  init()
}
