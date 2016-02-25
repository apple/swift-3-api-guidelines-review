
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
  func tickMarkValueAtIndex(_ index: Int) -> Double
  func rectOfTickMarkAtIndex(_ index: Int) -> NSRect
  func indexOfTickMarkAtPoint(_ point: NSPoint) -> Int
  func closestTickMarkValueToValue(_ value: Double) -> Double
}
