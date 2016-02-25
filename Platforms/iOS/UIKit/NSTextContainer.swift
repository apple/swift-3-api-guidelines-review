
@available(iOS 7.0, *)
class NSTextContainer : NSObject, NSCoding, NSTextLayoutOrientationProvider {
  @available(iOS 7.0, *)
  init(size size: CGSize)
  init?(coder coder: NSCoder)
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager?
  @available(iOS 9.0, *)
  func replaceLayoutManager(_ newLayoutManager: NSLayoutManager)
  @available(iOS 7.0, *)
  var size: CGSize
  @available(iOS 7.0, *)
  var exclusionPaths: [UIBezierPath]
  @available(iOS 7.0, *)
  var lineBreakMode: NSLineBreakMode
  var lineFragmentPadding: CGFloat
  @available(iOS 7.0, *)
  var maximumNumberOfLines: Int
  @available(iOS 7.0, *)
  func lineFragmentRectForProposedRect(_ proposedRect: CGRect, atIndex characterIndex: Int, writingDirection baseWritingDirection: NSWritingDirection, remainingRect remainingRect: UnsafeMutablePointer<CGRect>) -> CGRect
  @available(iOS 9.0, *)
  var simpleRectangularTextContainer: Bool { get }
  var widthTracksTextView: Bool
  var heightTracksTextView: Bool
  @available(iOS 7.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  @available(iOS 7.0, *)
  var layoutOrientation: NSTextLayoutOrientation { get }
}
