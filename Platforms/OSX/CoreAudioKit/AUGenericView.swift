
struct AUGenericViewDisplayFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var ViewTitleDisplayFlag: AUGenericViewDisplayFlags { get }
  static var ViewPropertiesDisplayFlag: AUGenericViewDisplayFlags { get }
  static var ViewParametersDisplayFlag: AUGenericViewDisplayFlags { get }
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
