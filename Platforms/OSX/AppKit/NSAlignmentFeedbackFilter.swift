
protocol NSAlignmentFeedbackToken : NSObjectProtocol {
}
@available(OSX 10.11, *)
class NSAlignmentFeedbackFilter : NSObject {
  class func inputEventMask() -> NSEventMask
  func updateWithEvent(_ event: NSEvent)
  func updateWithPanRecognizer(_ panRecognizer: NSPanGestureRecognizer)
  func alignmentFeedbackTokenForMovementInView(_ view: NSView?, previousPoint previousPoint: NSPoint, alignedPoint alignedPoint: NSPoint, defaultPoint defaultPoint: NSPoint) -> NSAlignmentFeedbackToken?
  func alignmentFeedbackTokenForHorizontalMovementInView(_ view: NSView?, previousX previousX: CGFloat, alignedX alignedX: CGFloat, defaultX defaultX: CGFloat) -> NSAlignmentFeedbackToken?
  func alignmentFeedbackTokenForVerticalMovementInView(_ view: NSView?, previousY previousY: CGFloat, alignedY alignedY: CGFloat, defaultY defaultY: CGFloat) -> NSAlignmentFeedbackToken?
  func performFeedback(_ alignmentFeedbackTokens: [NSAlignmentFeedbackToken], performanceTime performanceTime: NSHapticFeedbackPerformanceTime)
}
