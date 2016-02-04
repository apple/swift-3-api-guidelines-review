
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
@available(watchOS 2.0, *)
enum UIImageRenderingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case AlwaysOriginal
  case AlwaysTemplate
}
@available(watchOS 2.0, *)
class UIImage : NSObject, NSSecureCoding {
  /*not inherited*/ init?(named name: String)
  init?(contentsOfFile path: String)
  init?(data: NSData)
  @available(watchOS 2.0, *)
  init?(data: NSData, scale: CGFloat)
  init(CGImage cgImage: CGImage)
  @available(watchOS 2.0, *)
  init(CGImage cgImage: CGImage, scale: CGFloat, orientation: UIImageOrientation)
  var size: CGSize { get }
  var CGImage: CGImage? { get }
  var imageOrientation: UIImageOrientation { get }
  @available(watchOS 2.0, *)
  var scale: CGFloat { get }
  @available(watchOS 2.0, *)
  class func animatedImageNamed(name: String, duration: NSTimeInterval) -> UIImage?
  @available(watchOS 2.0, *)
  class func animatedResizableImageNamed(name: String, capInsets: UIEdgeInsets, duration: NSTimeInterval) -> UIImage?
  @available(watchOS 2.0, *)
  class func animatedResizableImageNamed(name: String, capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode, duration: NSTimeInterval) -> UIImage?
  @available(watchOS 2.0, *)
  class func animatedImageWithImages(images: [UIImage], duration: NSTimeInterval) -> UIImage?
  @available(watchOS 2.0, *)
  var images: [UIImage]? { get }
  @available(watchOS 2.0, *)
  var duration: NSTimeInterval { get }
  func drawAtPoint(point: CGPoint)
  func drawAtPoint(point: CGPoint, blendMode: CGBlendMode, alpha: CGFloat)
  func drawInRect(rect: CGRect)
  func drawInRect(rect: CGRect, blendMode: CGBlendMode, alpha: CGFloat)
  func drawAsPatternInRect(rect: CGRect)
  @available(watchOS 2.0, *)
  func resizableImageWithCapInsets(capInsets: UIEdgeInsets) -> UIImage
  @available(watchOS 2.0, *)
  func resizableImageWithCapInsets(capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode) -> UIImage
  @available(watchOS 2.0, *)
  var capInsets: UIEdgeInsets { get }
  @available(watchOS 2.0, *)
  var resizingMode: UIImageResizingMode { get }
  @available(watchOS 2.0, *)
  func imageWithAlignmentRectInsets(alignmentInsets: UIEdgeInsets) -> UIImage
  @available(watchOS 2.0, *)
  var alignmentRectInsets: UIEdgeInsets { get }
  @available(watchOS 2.0, *)
  func imageWithRenderingMode(renderingMode: UIImageRenderingMode) -> UIImage
  @available(watchOS 2.0, *)
  var renderingMode: UIImageRenderingMode { get }
  @available(watchOS 2.0, *)
  func imageFlippedForRightToLeftLayoutDirection() -> UIImage
  @available(watchOS 2.0, *)
  var flipsForRightToLeftLayoutDirection: Bool { get }
  init()
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
func UIImagePNGRepresentation(image: UIImage) -> NSData?
func UIImageJPEGRepresentation(image: UIImage, _ compressionQuality: CGFloat) -> NSData?
