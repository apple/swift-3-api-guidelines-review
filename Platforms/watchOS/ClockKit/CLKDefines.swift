
enum CLKComplicationFamily : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case ModularSmall
  case ModularLarge
  case UtilitarianSmall
  case UtilitarianLarge
  case CircularSmall
}
struct CLKComplicationTimeTravelDirections : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var None: CLKComplicationTimeTravelDirections { get }
  static var Forward: CLKComplicationTimeTravelDirections { get }
  static var Backward: CLKComplicationTimeTravelDirections { get }
}
enum CLKComplicationPrivacyBehavior : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case ShowOnLockScreen
  case HideOnLockScreen
}
enum CLKComplicationTimelineAnimationBehavior : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Never
  case Grouped
  case Always
}
enum CLKComplicationColumnAlignment : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Leading
  case Trailing
  @available(watchOS 2.0, *)
  @available(watchOS, deprecated=2.1, message="Use CLKComplicationColumnAlignmentLeading instead")
  static var Left: CLKComplicationColumnAlignment { get }
  @available(watchOS 2.0, *)
  @available(watchOS, deprecated=2.1, message="Use CLKComplicationColumnAlignmentTrailing instead")
  static var Right: CLKComplicationColumnAlignment { get }
}
enum CLKComplicationRingStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Closed
  case Open
}
let CLKLaunchedTimelineEntryDateKey: String
