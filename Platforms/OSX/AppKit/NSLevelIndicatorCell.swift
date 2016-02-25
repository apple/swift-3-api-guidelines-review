
enum NSLevelIndicatorStyle : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case relevancyLevelIndicatorStyle
  case continuousCapacityLevelIndicatorStyle
  case discreteCapacityLevelIndicatorStyle
  case ratingLevelIndicatorStyle
}
class NSLevelIndicatorCell : NSActionCell {
  init(levelIndicatorStyle levelIndicatorStyle: NSLevelIndicatorStyle)
  var levelIndicatorStyle: NSLevelIndicatorStyle
  var minValue: Double
  var maxValue: Double
  var warningValue: Double
  var criticalValue: Double
  var tickMarkPosition: NSTickMarkPosition
  var numberOfTickMarks: Int
  var numberOfMajorTickMarks: Int
  func rectOfTickMark(at index: Int) -> NSRect
  func tickMarkValue(at index: Int) -> Double
  func setImage(_ image: NSImage?)
}
