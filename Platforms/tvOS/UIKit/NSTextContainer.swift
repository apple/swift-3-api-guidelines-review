
@available(tvOS 7.0, *)
class NSTextContainer : NSObject, NSCoding, NSTextLayoutOrientationProvider {
  @available(tvOS 7.0, *)
  init(size: CGSize)
  init?(coder: NSCoder)
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager?
  @available(tvOS 9.0, *)
  func replaceLayoutManager(newLayoutManager: NSLayoutManager)
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
  func lineFragmentRectForProposedRect(proposedRect: CGRect, atIndex characterIndex: Int, writingDirection baseWritingDirection: NSWritingDirection, remainingRect: UnsafeMutablePointer<CGRect>) -> CGRect
  @available(tvOS 9.0, *)
  var simpleRectangularTextContainer: Bool { get }
  var widthTracksTextView: Bool
  var heightTracksTextView: Bool
  convenience init()
  @available(tvOS 7.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  @available(tvOS 7.0, *)
  var layoutOrientation: NSTextLayoutOrientation { get }
}
