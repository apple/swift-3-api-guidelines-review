
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
@available(watchOS 2.0, *)
enum UIImageRenderingMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case AlwaysOriginal
  case AlwaysTemplate
}
@available(watchOS 2.0, *)
class UIImage : NSObject, NSSecureCoding {
  /*not inherited*/ init?(named name: String)
  init?(contentsOfFile path: String)
  init?(data data: NSData)
  @available(watchOS 2.0, *)
  init?(data data: NSData, scale scale: CGFloat)
  init(CGImage cgImage: CGImage)
  @available(watchOS 2.0, *)
  init(CGImage cgImage: CGImage, scale scale: CGFloat, orientation orientation: UIImageOrientation)
  var size: CGSize { get }
  var CGImage: CGImage? { get }
  var imageOrientation: UIImageOrientation { get }
  @available(watchOS 2.0, *)
  var scale: CGFloat { get }
  @available(watchOS 2.0, *)
  class func animatedImageNamed(_ name: String, duration duration: NSTimeInterval) -> UIImage?
  @available(watchOS 2.0, *)
  class func animatedResizableImageNamed(_ name: String, capInsets capInsets: UIEdgeInsets, duration duration: NSTimeInterval) -> UIImage?
  @available(watchOS 2.0, *)
  class func animatedResizableImageNamed(_ name: String, capInsets capInsets: UIEdgeInsets, resizingMode resizingMode: UIImageResizingMode, duration duration: NSTimeInterval) -> UIImage?
  @available(watchOS 2.0, *)
  class func animatedImageWithImages(_ images: [UIImage], duration duration: NSTimeInterval) -> UIImage?
  @available(watchOS 2.0, *)
  var images: [UIImage]? { get }
  @available(watchOS 2.0, *)
  var duration: NSTimeInterval { get }
  func drawAtPoint(_ point: CGPoint)
  func drawAtPoint(_ point: CGPoint, blendMode blendMode: CGBlendMode, alpha alpha: CGFloat)
  func drawInRect(_ rect: CGRect)
  func drawInRect(_ rect: CGRect, blendMode blendMode: CGBlendMode, alpha alpha: CGFloat)
  func drawAsPatternInRect(_ rect: CGRect)
  @available(watchOS 2.0, *)
  func resizableImageWithCapInsets(_ capInsets: UIEdgeInsets) -> UIImage
  @available(watchOS 2.0, *)
  func resizableImageWithCapInsets(_ capInsets: UIEdgeInsets, resizingMode resizingMode: UIImageResizingMode) -> UIImage
  @available(watchOS 2.0, *)
  var capInsets: UIEdgeInsets { get }
  @available(watchOS 2.0, *)
  var resizingMode: UIImageResizingMode { get }
  @available(watchOS 2.0, *)
  func imageWithAlignmentRectInsets(_ alignmentInsets: UIEdgeInsets) -> UIImage
  @available(watchOS 2.0, *)
  var alignmentRectInsets: UIEdgeInsets { get }
  @available(watchOS 2.0, *)
  func imageWithRenderingMode(_ renderingMode: UIImageRenderingMode) -> UIImage
  @available(watchOS 2.0, *)
  var renderingMode: UIImageRenderingMode { get }
  @available(watchOS 2.0, *)
  func imageFlippedForRightToLeftLayoutDirection() -> UIImage
  @available(watchOS 2.0, *)
  var flipsForRightToLeftLayoutDirection: Bool { get }
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension UIImage : _ImageLiteralConvertible {
  convenience init!(failableImageLiteral name: String)
}
extension UIImage {
  func stretchableImageWithLeftCapWidth(_ leftCapWidth: Int, topCapHeight topCapHeight: Int) -> UIImage
  var leftCapWidth: Int { get }
  var topCapHeight: Int { get }
}
func UIImagePNGRepresentation(_ image: UIImage) -> NSData?
func UIImageJPEGRepresentation(_ image: UIImage, _ compressionQuality: CGFloat) -> NSData?
