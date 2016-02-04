
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
@available(tvOS 7.0, *)
enum UIImageRenderingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case AlwaysOriginal
  case AlwaysTemplate
}
@available(tvOS 2.0, *)
class UIImage : NSObject, NSSecureCoding {
  /*not inherited*/ init?(named name: String)
  @available(tvOS 8.0, *)
  /*not inherited*/ init?(named name: String, inBundle bundle: NSBundle?, compatibleWithTraitCollection traitCollection: UITraitCollection?)
  init?(contentsOfFile path: String)
  init?(data: NSData)
  @available(tvOS 6.0, *)
  init?(data: NSData, scale: CGFloat)
  init(CGImage cgImage: CGImage)
  @available(tvOS 4.0, *)
  init(CGImage cgImage: CGImage, scale: CGFloat, orientation: UIImageOrientation)
  @available(tvOS 5.0, *)
  init(CIImage ciImage: CIImage)
  @available(tvOS 6.0, *)
  init(CIImage ciImage: CIImage, scale: CGFloat, orientation: UIImageOrientation)
  var size: CGSize { get }
  var CGImage: CGImage? { get }
  @available(tvOS 5.0, *)
  var CIImage: CIImage? { get }
  var imageOrientation: UIImageOrientation { get }
  @available(tvOS 4.0, *)
  var scale: CGFloat { get }
  @available(tvOS 5.0, *)
  class func animatedImageNamed(name: String, duration: NSTimeInterval) -> UIImage?
  @available(tvOS 5.0, *)
  class func animatedResizableImageNamed(name: String, capInsets: UIEdgeInsets, duration: NSTimeInterval) -> UIImage?
  @available(tvOS 6.0, *)
  class func animatedResizableImageNamed(name: String, capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode, duration: NSTimeInterval) -> UIImage?
  @available(tvOS 5.0, *)
  class func animatedImageWithImages(images: [UIImage], duration: NSTimeInterval) -> UIImage?
  @available(tvOS 5.0, *)
  var images: [UIImage]? { get }
  @available(tvOS 5.0, *)
  var duration: NSTimeInterval { get }
  func drawAtPoint(point: CGPoint)
  func drawAtPoint(point: CGPoint, blendMode: CGBlendMode, alpha: CGFloat)
  func drawInRect(rect: CGRect)
  func drawInRect(rect: CGRect, blendMode: CGBlendMode, alpha: CGFloat)
  func drawAsPatternInRect(rect: CGRect)
  @available(tvOS 5.0, *)
  func resizableImageWithCapInsets(capInsets: UIEdgeInsets) -> UIImage
  @available(tvOS 6.0, *)
  func resizableImageWithCapInsets(capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode) -> UIImage
  @available(tvOS 5.0, *)
  var capInsets: UIEdgeInsets { get }
  @available(tvOS 6.0, *)
  var resizingMode: UIImageResizingMode { get }
  @available(tvOS 6.0, *)
  func imageWithAlignmentRectInsets(alignmentInsets: UIEdgeInsets) -> UIImage
  @available(tvOS 6.0, *)
  var alignmentRectInsets: UIEdgeInsets { get }
  @available(tvOS 7.0, *)
  func imageWithRenderingMode(renderingMode: UIImageRenderingMode) -> UIImage
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
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
  init?(image: UIImage, options: [NSObject : AnyObject]?)
}
func UIImagePNGRepresentation(image: UIImage) -> NSData?
func UIImageJPEGRepresentation(image: UIImage, _ compressionQuality: CGFloat) -> NSData?
