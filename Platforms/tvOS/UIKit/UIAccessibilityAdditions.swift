
protocol UIScrollViewAccessibilityDelegate : UIScrollViewDelegate {
  @available(tvOS 2.0, *)
  optional func accessibilityScrollStatus(for scrollView: UIScrollView) -> String?
}
