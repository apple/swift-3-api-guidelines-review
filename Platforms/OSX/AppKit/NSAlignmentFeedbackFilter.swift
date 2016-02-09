
protocol NSAlignmentFeedbackToken : ObjectProtocol {
}
@available(OSX 10.11, *)
class NSAlignmentFeedbackFilter : Object {
  class func inputEventMask() -> NSEventMask
  func update(withEvent event: NSEvent)
  func update(withPanRecognizer panRecognizer: NSPanGestureRecognizer)
  func alignmentFeedbackTokenForMovement(in view: NSView?, previousPoint: Point, alignedPoint: Point, defaultPoint: Point) -> NSAlignmentFeedbackToken?
  func alignmentFeedbackTokenForHorizontalMovement(in view: NSView?, previousX: CGFloat, alignedX: CGFloat, defaultX: CGFloat) -> NSAlignmentFeedbackToken?
  func alignmentFeedbackTokenForVerticalMovement(in view: NSView?, previousY: CGFloat, alignedY: CGFloat, defaultY: CGFloat) -> NSAlignmentFeedbackToken?
  func performFeedback(alignmentFeedbackTokens: [NSAlignmentFeedbackToken], performanceTime: NSHapticFeedbackPerformanceTime)
  init()
}
