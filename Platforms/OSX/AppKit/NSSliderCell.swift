
enum NSTickMarkPosition : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Below
  case Above
  static var Left: NSTickMarkPosition { get }
  static var Right: NSTickMarkPosition { get }
}
enum NSSliderType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case LinearSlider
  case CircularSlider
}
class NSSliderCell : NSActionCell {
  var minValue: Double
  var maxValue: Double
  var altIncrementValue: Double
  var sliderType: NSSliderType
  var vertical: Int { get }
  var trackRect: NSRect { get }
  var knobThickness: CGFloat { get }
  func knobRectFlipped(_ flipped: Bool) -> NSRect
  func drawKnob(_ knobRect: NSRect)
  func drawKnob()
  @available(OSX 10.9, *)
  func barRectFlipped(_ flipped: Bool) -> NSRect
  func drawBarInside(_ aRect: NSRect, flipped flipped: Bool)
}
struct __sliderCellFlags {
  var weAreVertical: UInt32
  var weAreVerticalSet: UInt32
  var reserved1: UInt32
  var isPressed: UInt32
  var allowsTickMarkValuesOnly: UInt32
  var tickMarkPosition: UInt32
  var sliderType: UInt32
  var drawing: UInt32
  var snappedToTickMark: UInt32
  var snappedToPreviousValue: UInt32
  var snappedToDefaultValue: UInt32
  var snappingAllowed: UInt32
  var reserved2: UInt32
  init()
  init(weAreVertical weAreVertical: UInt32, weAreVerticalSet weAreVerticalSet: UInt32, reserved1 reserved1: UInt32, isPressed isPressed: UInt32, allowsTickMarkValuesOnly allowsTickMarkValuesOnly: UInt32, tickMarkPosition tickMarkPosition: UInt32, sliderType sliderType: UInt32, drawing drawing: UInt32, snappedToTickMark snappedToTickMark: UInt32, snappedToPreviousValue snappedToPreviousValue: UInt32, snappedToDefaultValue snappedToDefaultValue: UInt32, snappingAllowed snappingAllowed: UInt32, reserved2 reserved2: UInt32)
}
extension NSSliderCell {
  var numberOfTickMarks: Int
  var tickMarkPosition: NSTickMarkPosition
  var allowsTickMarkValuesOnly: Bool
  func tickMarkValueAtIndex(_ index: Int) -> Double
  func rectOfTickMarkAtIndex(_ index: Int) -> NSRect
  func indexOfTickMarkAtPoint(_ point: NSPoint) -> Int
  func closestTickMarkValueToValue(_ value: Double) -> Double
  @available(OSX 10.9, *)
  func drawTickMarks()
}
