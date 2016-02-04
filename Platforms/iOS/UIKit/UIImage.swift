
enum UIImageOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Up
  case Down
  case Left
  case Right
  case UpMirrored
  case DownMirrored
  case LeftMirrored
  case RightMirrored
}
enum UIImageResizingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Tile
  case Stretch
}
@available(iOS 7.0, *)
enum UIImageRenderingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case AlwaysOriginal
  case AlwaysTemplate
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
  class func animatedImageWith(images: [UIImage], duration: TimeInterval) -> UIImage?
  @available(iOS 5.0, *)
  var images: [UIImage]? { get }
  @available(iOS 5.0, *)
  var duration: TimeInterval { get }
  func drawAt(point: CGPoint)
  func drawAt(point: CGPoint, blendMode: CGBlendMode, alpha: CGFloat)
  func drawIn(rect: CGRect)
  func drawIn(rect: CGRect, blendMode: CGBlendMode, alpha: CGFloat)
  func drawAsPatternIn(rect: CGRect)
  @available(iOS 5.0, *)
  func resizableImageWithCapInsets(capInsets: UIEdgeInsets) -> UIImage
  @available(iOS 6.0, *)
  func resizableImageWithCapInsets(capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode) -> UIImage
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
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}

extension UIImage : _ImageLiteralConvertible {
  convenience init!(failableImageLiteral name: String)
  required convenience init(imageLiteral name: String)
}
extension UIImage {
  func stretchableImageWithLeftCapWidth(leftCapWidth: Int, topCapHeight: Int) -> UIImage
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
