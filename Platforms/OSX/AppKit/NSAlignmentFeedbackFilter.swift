
protocol NSAlignmentFeedbackToken : ObjectProtocol {
}
@available(OSX 10.11, *)
class NSAlignmentFeedbackFilter : Object {
  class func inputEventMask() -> NSEventMask
  func updateWith(event: NSEvent)
  func updateWithPanRecognizer(panRecognizer: NSPanGestureRecognizer)
  func alignmentFeedbackTokenForMovementIn(view: NSView?, previousPoint: Point, alignedPoint: Point, defaultPoint: Point) -> NSAlignmentFeedbackToken?
  func alignmentFeedbackTokenForHorizontalMovementIn(view: NSView?, previousX: CGFloat, alignedX: CGFloat, defaultX: CGFloat) -> NSAlignmentFeedbackToken?
  func alignmentFeedbackTokenForVerticalMovementIn(view: NSView?, previousY: CGFloat, alignedY: CGFloat, defaultY: CGFloat) -> NSAlignmentFeedbackToken?
  func performFeedback(alignmentFeedbackTokens: [NSAlignmentFeedbackToken], performanceTime: NSHapticFeedbackPerformanceTime)
  init()
}
