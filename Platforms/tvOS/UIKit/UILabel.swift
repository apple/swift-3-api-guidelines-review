
@available(tvOS 2.0, *)
class UILabel : UIView, Coding {
  var text: String?
  var font: UIFont!
  var textColor: UIColor!
  var shadowColor: UIColor?
  var shadowOffset: CGSize
  var textAlignment: NSTextAlignment
  var lineBreakMode: NSLineBreakMode
  @available(tvOS 6.0, *)
  @NSCopying var attributedText: AttributedString?
  var highlightedTextColor: UIColor?
  var isHighlighted: Bool
  var isUserInteractionEnabled: Bool
  var isEnabled: Bool
  var numberOfLines: Int
  var adjustsFontSizeToFitWidth: Bool
  var baselineAdjustment: UIBaselineAdjustment
  @available(tvOS 6.0, *)
  var minimumScaleFactor: CGFloat
  @available(tvOS 9.0, *)
  var allowsDefaultTighteningForTruncation: Bool
  func textRectFor(bounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect
  func drawTextIn(rect: CGRect)
  @available(tvOS 6.0, *)
  var preferredMaxLayoutWidth: CGFloat
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
