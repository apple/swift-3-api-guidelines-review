
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
  func tickMarkValueAt(index: Int) -> Double
  func rectOfTickMarkAt(index: Int) -> Rect
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
