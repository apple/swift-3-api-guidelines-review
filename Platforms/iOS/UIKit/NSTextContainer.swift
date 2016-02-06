
@available(iOS 7.0, *)
class NSTextContainer : Object, Coding, NSTextLayoutOrientationProvider {
  @available(iOS 7.0, *)
  init(size: CGSize)
  init?(coder: Coder)
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager?
  @available(iOS 9.0, *)
  func replaceLayoutManager(newLayoutManager: NSLayoutManager)
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
  func lineFragmentRectFor(proposedRect proposedRect: CGRect, at characterIndex: Int, writingDirection baseWritingDirection: NSWritingDirection, remaining remainingRect: UnsafeMutablePointer<CGRect>) -> CGRect
  @available(iOS 9.0, *)
  var isSimpleRectangularTextContainer: Bool { get }
  var widthTracksTextView: Bool
  var heightTracksTextView: Bool
  convenience init()
  @available(iOS 7.0, *)
  func encodeWith(aCoder: Coder)
  @available(iOS 7.0, *)
  var layoutOrientation: NSTextLayoutOrientation { get }
}
