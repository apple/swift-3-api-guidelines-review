
enum UIImageOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case up
  case down
  case left
  case right
  case upMirrored
  case downMirrored
  case leftMirrored
  case rightMirrored
}
enum UIImageResizingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case tile
  case stretch
}
@available(tvOS 7.0, *)
enum UIImageRenderingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case automatic
  case alwaysOriginal
  case alwaysTemplate
}
@available(tvOS 2.0, *)
class UIImage : Object, SecureCoding {
  /*not inherited*/ init?(named name: String)
  @available(tvOS 8.0, *)
  /*not inherited*/ init?(named name: String, in bundle: Bundle?, compatibleWith traitCollection: UITraitCollection?)
  init?(contentsOfFile path: String)
  init?(data: Data)
  @available(tvOS 6.0, *)
  init?(data: Data, scale: CGFloat)
  init(cgImage: CGImage)
  @available(tvOS 4.0, *)
  init(cgImage: CGImage, scale: CGFloat, orientation: UIImageOrientation)
  @available(tvOS 5.0, *)
  init(ciImage: CIImage)
  @available(tvOS 6.0, *)
  init(ciImage: CIImage, scale: CGFloat, orientation: UIImageOrientation)
  var size: CGSize { get }
  var cgImage: CGImage? { get }
  @available(tvOS 5.0, *)
  var ciImage: CIImage? { get }
  var imageOrientation: UIImageOrientation { get }
  @available(tvOS 4.0, *)
  var scale: CGFloat { get }
  @available(tvOS 5.0, *)
  class func animatedImageNamed(name: String, duration: TimeInterval) -> UIImage?
  @available(tvOS 5.0, *)
  class func animatedResizableImageNamed(name: String, capInsets: UIEdgeInsets, duration: TimeInterval) -> UIImage?
  @available(tvOS 6.0, *)
  class func animatedResizableImageNamed(name: String, capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode, duration: TimeInterval) -> UIImage?
  @available(tvOS 5.0, *)
  class func animatedImage(with images: [UIImage], duration: TimeInterval) -> UIImage?
  @available(tvOS 5.0, *)
  var images: [UIImage]? { get }
  @available(tvOS 5.0, *)
  var duration: TimeInterval { get }
  func draw(at point: CGPoint)
  func draw(at point: CGPoint, blendMode: CGBlendMode, alpha: CGFloat)
  func draw(in rect: CGRect)
  func draw(in rect: CGRect, blendMode: CGBlendMode, alpha: CGFloat)
  func drawAsPattern(in rect: CGRect)
  @available(tvOS 5.0, *)
  func resizableImage(withCapInsets capInsets: UIEdgeInsets) -> UIImage
  @available(tvOS 6.0, *)
  func resizableImage(withCapInsets capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode) -> UIImage
  @available(tvOS 5.0, *)
  var capInsets: UIEdgeInsets { get }
  @available(tvOS 6.0, *)
  var resizingMode: UIImageResizingMode { get }
  @available(tvOS 6.0, *)
  func withAlignmentRectInsets(alignmentInsets: UIEdgeInsets) -> UIImage
  @available(tvOS 6.0, *)
  var alignmentRectInsets: UIEdgeInsets { get }
  @available(tvOS 7.0, *)
  func withRenderingMode(renderingMode: UIImageRenderingMode) -> UIImage
  @available(tvOS 7.0, *)
  var renderingMode: UIImageRenderingMode { get }
  @available(tvOS 8.0, *)
  @NSCopying var traitCollection: UITraitCollection { get }
  @available(tvOS 8.0, *)
  var imageAsset: UIImageAsset? { get }
  @available(tvOS 9.0, *)
  func imageFlippedForRightToLeftLayoutDirection() -> UIImage
  @available(tvOS 9.0, *)
  var flipsForRightToLeftLayoutDirection: Bool { get }
  init()
  @available(tvOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 2.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}

extension UIImage : _ImageLiteralConvertible {
  convenience init!(failableImageLiteral name: String)
  required convenience init(imageLiteral name: String)
}
extension UIImage {
}
extension CIImage {
  @available(tvOS 5.0, *)
  init?(image: UIImage)
  @available(tvOS 5.0, *)
  init?(image: UIImage, options: [Object : AnyObject]? = [:])
}
func UIImagePNGRepresentation(image: UIImage) -> Data?
func UIImageJPEGRepresentation(image: UIImage, _ compressionQuality: CGFloat) -> Data?
