
protocol NSAlignmentFeedbackToken : NSObjectProtocol {
}
@available(OSX 10.11, *)
class NSAlignmentFeedbackFilter : NSObject {
  class func inputEventMask() -> NSEventMask
  func update(event: NSEvent)
  func update(panRecognizer panRecognizer: NSPanGestureRecognizer)
  func alignmentFeedbackTokenForMovement(in view: NSView?, previousPoint: NSPoint, alignedPoint: NSPoint, defaultPoint: NSPoint) -> NSAlignmentFeedbackToken?
  func alignmentFeedbackTokenForHorizontalMovement(in view: NSView?, previousX: CGFloat, alignedX: CGFloat, defaultX: CGFloat) -> NSAlignmentFeedbackToken?
  func alignmentFeedbackTokenForVerticalMovement(in view: NSView?, previousY: CGFloat, alignedY: CGFloat, defaultY: CGFloat) -> NSAlignmentFeedbackToken?
  func performFeedback(alignmentFeedbackTokens: [NSAlignmentFeedbackToken], performanceTime: NSHapticFeedbackPerformanceTime)
  init()
}
