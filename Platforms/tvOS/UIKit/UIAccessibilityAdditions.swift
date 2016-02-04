
protocol UIScrollViewAccessibilityDelegate : UIScrollViewDelegate {
  @available(tvOS 2.0, *)
  optional func accessibilityScrollStatusForScrollView(scrollView: UIScrollView) -> String?
}
