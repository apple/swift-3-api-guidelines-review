
struct AUGenericViewDisplayFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var viewTitleDisplayFlag: AUGenericViewDisplayFlags { get }
  static var viewPropertiesDisplayFlag: AUGenericViewDisplayFlags { get }
  static var viewParametersDisplayFlag: AUGenericViewDisplayFlags { get }
}
class AUGenericView : NSView, AUCustomViewPersistentData {
  var audioUnit: AudioUnit { get }
  var showsExpertParameters: Bool
  init(audioUnit au: AudioUnit)
  init(audioUnit inAudioUnit: AudioUnit, displayFlags inFlags: AUGenericViewDisplayFlags)
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
  var customViewPersistentData: [String : AnyObject]?
}
