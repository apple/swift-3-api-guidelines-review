
class NSSlider : NSControl, NSAccessibilitySlider {
  @available(OSX 10.10, *)
  var sliderType: NSSliderType
  var minValue: Double
  var maxValue: Double
  var altIncrementValue: Double
  var knobThickness: CGFloat { get }
  var vertical: Int { get }
}
extension NSSlider {
  var numberOfTickMarks: Int
  var tickMarkPosition: NSTickMarkPosition
  var allowsTickMarkValuesOnly: Bool
  func tickMarkValue(at index: Int) -> Double
  func rectOfTickMark(at index: Int) -> NSRect
  func indexOfTickMark(at point: NSPoint) -> Int
  func closestTickMarkValue(toValue value: Double) -> Double
}
