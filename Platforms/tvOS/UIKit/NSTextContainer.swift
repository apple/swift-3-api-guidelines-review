
@available(tvOS 7.0, *)
class NSTextContainer : NSObject, NSCoding, NSTextLayoutOrientationProvider {
  @available(tvOS 7.0, *)
  init(size size: CGSize)
  init?(coder coder: NSCoder)
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager?
  @available(tvOS 9.0, *)
  func replaceLayoutManager(_ newLayoutManager: NSLayoutManager)
  @available(tvOS 7.0, *)
  var size: CGSize
  @available(tvOS 7.0, *)
  var exclusionPaths: [UIBezierPath]
  @available(tvOS 7.0, *)
  var lineBreakMode: NSLineBreakMode
  var lineFragmentPadding: CGFloat
  @available(tvOS 7.0, *)
  var maximumNumberOfLines: Int
  @available(tvOS 7.0, *)
  func lineFragmentRectForProposedRect(_ proposedRect: CGRect, atIndex characterIndex: Int, writingDirection baseWritingDirection: NSWritingDirection, remainingRect remainingRect: UnsafeMutablePointer<CGRect>) -> CGRect
  @available(tvOS 9.0, *)
  var simpleRectangularTextContainer: Bool { get }
  var widthTracksTextView: Bool
  var heightTracksTextView: Bool
  @available(tvOS 7.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  @available(tvOS 7.0, *)
  var layoutOrientation: NSTextLayoutOrientation { get }
}
