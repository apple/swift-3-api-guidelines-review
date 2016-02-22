
protocol NSAlignmentFeedbackToken : NSObjectProtocol {
}
@available(OSX 10.11, *)
class NSAlignmentFeedbackFilter : NSObject {
  class func inputEventMask() -> NSEventMask
  func update(_ event: NSEvent)
  func update(panRecognizer panRecognizer: NSPanGestureRecognizer)
  func alignmentFeedbackTokenForMovement(in view: NSView?, previousPoint previousPoint: NSPoint, alignedPoint alignedPoint: NSPoint, defaultPoint defaultPoint: NSPoint) -> NSAlignmentFeedbackToken?
  func alignmentFeedbackTokenForHorizontalMovement(in view: NSView?, previousX previousX: CGFloat, alignedX alignedX: CGFloat, defaultX defaultX: CGFloat) -> NSAlignmentFeedbackToken?
  func alignmentFeedbackTokenForVerticalMovement(in view: NSView?, previousY previousY: CGFloat, alignedY alignedY: CGFloat, defaultY defaultY: CGFloat) -> NSAlignmentFeedbackToken?
  func performFeedback(_ alignmentFeedbackTokens: [NSAlignmentFeedbackToken], performanceTime performanceTime: NSHapticFeedbackPerformanceTime)
  init()
}
