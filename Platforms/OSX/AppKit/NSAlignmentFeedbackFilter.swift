
protocol NSAlignmentFeedbackToken : NSObjectProtocol {
}
@available(OSX 10.11, *)
class NSAlignmentFeedbackFilter : NSObject {
  class func inputEventMask() -> NSEventMask
  func updateWithEvent(event: NSEvent)
  func updateWithPanRecognizer(panRecognizer: NSPanGestureRecognizer)
  func alignmentFeedbackTokenForMovementInView(view: NSView?, previousPoint: NSPoint, alignedPoint: NSPoint, defaultPoint: NSPoint) -> NSAlignmentFeedbackToken?
  func alignmentFeedbackTokenForHorizontalMovementInView(view: NSView?, previousX: CGFloat, alignedX: CGFloat, defaultX: CGFloat) -> NSAlignmentFeedbackToken?
  func alignmentFeedbackTokenForVerticalMovementInView(view: NSView?, previousY: CGFloat, alignedY: CGFloat, defaultY: CGFloat) -> NSAlignmentFeedbackToken?
  func performFeedback(alignmentFeedbackTokens: [NSAlignmentFeedbackToken], performanceTime: NSHapticFeedbackPerformanceTime)
  init()
}
