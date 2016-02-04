
class NSStepperCell : NSActionCell {
  var minValue: Double
  var maxValue: Double
  var increment: Double
  var valueWraps: Bool
  var autorepeat: Bool
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: Coder)
}
