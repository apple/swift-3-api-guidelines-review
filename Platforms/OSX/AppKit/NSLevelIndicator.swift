
class NSLevelIndicator : NSControl {
  @available(OSX 10.10, *)
  var levelIndicatorStyle: NSLevelIndicatorStyle
  var minValue: Double
  var maxValue: Double
  var warningValue: Double
  var criticalValue: Double
  var tickMarkPosition: NSTickMarkPosition
  var numberOfTickMarks: Int
  var numberOfMajorTickMarks: Int
  func tickMarkValueAtIndex(index: Int) -> Double
  func rectOfTickMarkAtIndex(index: Int) -> NSRect
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
