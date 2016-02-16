
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
@available(iOS 7.0, *)
enum UIImageRenderingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case automatic
  case alwaysOriginal
  case alwaysTemplate
}
@available(iOS 2.0, *)
class UIImage : Object, SecureCoding {
  /*not inherited*/ init?(named name: String)
  @available(iOS 8.0, *)
  /*not inherited*/ init?(named name: String, in bundle: Bundle?, compatibleWith traitCollection: UITraitCollection?)
  init?(contentsOfFile path: String)
  init?(data: Data)
  @available(iOS 6.0, *)
  init?(data: Data, scale: CGFloat)
  init(cgImage: CGImage)
  @available(iOS 4.0, *)
  init(cgImage: CGImage, scale: CGFloat, orientation: UIImageOrientation)
  @available(iOS 5.0, *)
  init(ciImage: CIImage)
  @available(iOS 6.0, *)
  init(ciImage: CIImage, scale: CGFloat, orientation: UIImageOrientation)
  var size: CGSize { get }
  var cgImage: CGImage? { get }
  @available(iOS 5.0, *)
  var ciImage: CIImage? { get }
  var imageOrientation: UIImageOrientation { get }
  @available(iOS 4.0, *)
  var scale: CGFloat { get }
  @available(iOS 5.0, *)
  class func animatedImageNamed(name: String, duration: TimeInterval) -> UIImage?
  @available(iOS 5.0, *)
  class func animatedResizableImageNamed(name: String, capInsets: UIEdgeInsets, duration: TimeInterval) -> UIImage?
  @available(iOS 6.0, *)
  class func animatedResizableImageNamed(name: String, capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode, duration: TimeInterval) -> UIImage?
  @available(iOS 5.0, *)
  class func animatedImage(images: [UIImage], duration: TimeInterval) -> UIImage?
  @available(iOS 5.0, *)
  var images: [UIImage]? { get }
  @available(iOS 5.0, *)
  var duration: TimeInterval { get }
  func draw(at point: CGPoint)
  func draw(at point: CGPoint, blendMode: CGBlendMode, alpha: CGFloat)
  func draw(in rect: CGRect)
  func draw(in rect: CGRect, blendMode: CGBlendMode, alpha: CGFloat)
  func drawAsPattern(in rect: CGRect)
  @available(iOS 5.0, *)
  func resizableImage(capInsets capInsets: UIEdgeInsets) -> UIImage
  @available(iOS 6.0, *)
  func resizableImage(capInsets capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode) -> UIImage
  @available(iOS 5.0, *)
  var capInsets: UIEdgeInsets { get }
  @available(iOS 6.0, *)
  var resizingMode: UIImageResizingMode { get }
  @available(iOS 6.0, *)
  func withAlignmentRectInsets(alignmentInsets: UIEdgeInsets) -> UIImage
  @available(iOS 6.0, *)
  var alignmentRectInsets: UIEdgeInsets { get }
  @available(iOS 7.0, *)
  func withRenderingMode(renderingMode: UIImageRenderingMode) -> UIImage
  @available(iOS 7.0, *)
  var renderingMode: UIImageRenderingMode { get }
  @available(iOS 8.0, *)
  @NSCopying var traitCollection: UITraitCollection { get }
  @available(iOS 8.0, *)
  var imageAsset: UIImageAsset? { get }
  @available(iOS 9.0, *)
  func imageFlippedForRightToLeftLayoutDirection() -> UIImage
  @available(iOS 9.0, *)
  var flipsForRightToLeftLayoutDirection: Bool { get }
  init()
  @available(iOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 2.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}

extension UIImage : _ImageLiteralConvertible {
  convenience init!(failableImageLiteral name: String)
  required convenience init(imageLiteral name: String)
}
extension UIImage {
  func stretchableImage(leftCapWidth leftCapWidth: Int, topCapHeight: Int) -> UIImage
  var leftCapWidth: Int { get }
  var topCapHeight: Int { get }
}
extension CIImage {
  @available(iOS 5.0, *)
  init?(image: UIImage)
  @available(iOS 5.0, *)
  init?(image: UIImage, options: [Object : AnyObject]? = [:])
}
func UIImagePNGRepresentation(image: UIImage) -> Data?
func UIImageJPEGRepresentation(image: UIImage, _ compressionQuality: CGFloat) -> Data?
