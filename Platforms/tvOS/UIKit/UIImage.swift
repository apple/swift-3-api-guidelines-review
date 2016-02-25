
enum UIImageOrientation : Int {
  init?(rawValue rawValue: Int)
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
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Tile
  case Stretch
}
@available(tvOS 7.0, *)
enum UIImageRenderingMode : Int {
  init?(rawValue rawValue: Int)
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
  init?(data data: NSData)
  @available(tvOS 6.0, *)
  init?(data data: NSData, scale scale: CGFloat)
  init(CGImage cgImage: CGImage)
  @available(tvOS 4.0, *)
  init(CGImage cgImage: CGImage, scale scale: CGFloat, orientation orientation: UIImageOrientation)
  @available(tvOS 5.0, *)
  init(CIImage ciImage: CIImage)
  @available(tvOS 6.0, *)
  init(CIImage ciImage: CIImage, scale scale: CGFloat, orientation orientation: UIImageOrientation)
  var size: CGSize { get }
  var CGImage: CGImage? { get }
  @available(tvOS 5.0, *)
  var CIImage: CIImage? { get }
  var imageOrientation: UIImageOrientation { get }
  @available(tvOS 4.0, *)
  var scale: CGFloat { get }
  @available(tvOS 5.0, *)
  class func animatedImageNamed(_ name: String, duration duration: NSTimeInterval) -> UIImage?
  @available(tvOS 5.0, *)
  class func animatedResizableImageNamed(_ name: String, capInsets capInsets: UIEdgeInsets, duration duration: NSTimeInterval) -> UIImage?
  @available(tvOS 6.0, *)
  class func animatedResizableImageNamed(_ name: String, capInsets capInsets: UIEdgeInsets, resizingMode resizingMode: UIImageResizingMode, duration duration: NSTimeInterval) -> UIImage?
  @available(tvOS 5.0, *)
  class func animatedImageWithImages(_ images: [UIImage], duration duration: NSTimeInterval) -> UIImage?
  @available(tvOS 5.0, *)
  var images: [UIImage]? { get }
  @available(tvOS 5.0, *)
  var duration: NSTimeInterval { get }
  func drawAtPoint(_ point: CGPoint)
  func drawAtPoint(_ point: CGPoint, blendMode blendMode: CGBlendMode, alpha alpha: CGFloat)
  func drawInRect(_ rect: CGRect)
  func drawInRect(_ rect: CGRect, blendMode blendMode: CGBlendMode, alpha alpha: CGFloat)
  func drawAsPatternInRect(_ rect: CGRect)
  @available(tvOS 5.0, *)
  func resizableImageWithCapInsets(_ capInsets: UIEdgeInsets) -> UIImage
  @available(tvOS 6.0, *)
  func resizableImageWithCapInsets(_ capInsets: UIEdgeInsets, resizingMode resizingMode: UIImageResizingMode) -> UIImage
  @available(tvOS 5.0, *)
  var capInsets: UIEdgeInsets { get }
  @available(tvOS 6.0, *)
  var resizingMode: UIImageResizingMode { get }
  @available(tvOS 6.0, *)
  func imageWithAlignmentRectInsets(_ alignmentInsets: UIEdgeInsets) -> UIImage
  @available(tvOS 6.0, *)
  var alignmentRectInsets: UIEdgeInsets { get }
  @available(tvOS 7.0, *)
  func imageWithRenderingMode(_ renderingMode: UIImageRenderingMode) -> UIImage
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
  @available(tvOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension UIImage : _ImageLiteralConvertible {
  convenience init!(failableImageLiteral name: String)
}
extension UIImage {
}
extension CIImage {
  @available(tvOS 5.0, *)
  init?(image image: UIImage)
  @available(tvOS 5.0, *)
  init?(image image: UIImage, options options: [NSObject : AnyObject]?)
}
func UIImagePNGRepresentation(_ image: UIImage) -> NSData?
func UIImageJPEGRepresentation(_ image: UIImage, _ compressionQuality: CGFloat) -> NSData?
