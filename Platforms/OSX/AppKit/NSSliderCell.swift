
enum NSTickMarkPosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case below
  case above
  static var left: NSTickMarkPosition { get }
  static var right: NSTickMarkPosition { get }
}
enum NSSliderType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case linearSlider
  case circularSlider
}
class NSSliderCell : NSActionCell {
  class func prefersTrackingUntilMouseUp() -> Bool
  var minValue: Double
  var maxValue: Double
  var altIncrementValue: Double
  var sliderType: NSSliderType
  var vertical: Int { get }
  var trackRect: Rect { get }
  var knobThickness: CGFloat { get }
  func knobRectFlipped(flipped: Bool) -> Rect
  func drawKnob(knobRect: Rect)
  func drawKnob()
  @available(OSX 10.9, *)
  func barRectFlipped(flipped: Bool) -> Rect
  func drawBarInside(aRect: Rect, flipped: Bool)
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: Coder)
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
  init(weAreVertical: UInt32, weAreVerticalSet: UInt32, reserved1: UInt32, isPressed: UInt32, allowsTickMarkValuesOnly: UInt32, tickMarkPosition: UInt32, sliderType: UInt32, drawing: UInt32, snappedToTickMark: UInt32, snappedToPreviousValue: UInt32, snappedToDefaultValue: UInt32, snappingAllowed: UInt32, reserved2: UInt32)
}
extension NSSliderCell {
  var numberOfTickMarks: Int
  var tickMarkPosition: NSTickMarkPosition
  var allowsTickMarkValuesOnly: Bool
  func tickMarkValueAt(index: Int) -> Double
  func rectOfTickMarkAt(index: Int) -> Rect
  func indexOfTickMarkAt(point: Point) -> Int
  func closestTickMarkValueTo(value value: Double) -> Double
  @available(OSX 10.9, *)
  func drawTickMarks()
}
