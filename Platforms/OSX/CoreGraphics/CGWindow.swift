
typealias CGWindowID = UInt32
enum CGWindowSharingType : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case ReadOnly
  case ReadWrite
}
enum CGWindowBackingType : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case BackingStoreRetained
  case BackingStoreNonretained
  case BackingStoreBuffered
}
@available(OSX 10.5, *)
let kCGWindowNumber: CFString
@available(OSX 10.5, *)
let kCGWindowStoreType: CFString
@available(OSX 10.5, *)
let kCGWindowLayer: CFString
@available(OSX 10.5, *)
let kCGWindowBounds: CFString
@available(OSX 10.5, *)
let kCGWindowSharingState: CFString
@available(OSX 10.5, *)
let kCGWindowAlpha: CFString
@available(OSX 10.5, *)
let kCGWindowOwnerPID: CFString
@available(OSX 10.5, *)
let kCGWindowMemoryUsage: CFString
@available(OSX 10.5, *)
let kCGWindowOwnerName: CFString
@available(OSX 10.5, *)
let kCGWindowName: CFString
@available(OSX 10.5, *)
let kCGWindowIsOnscreen: CFString
@available(OSX 10.5, *)
let kCGWindowBackingLocationVideoMemory: CFString
struct CGWindowListOption : OptionSetType {
  init(rawValue rawValue: UInt32)
  let rawValue: UInt32
  static var OptionAll: CGWindowListOption { get }
  static var OptionOnScreenOnly: CGWindowListOption { get }
  static var OptionOnScreenAboveWindow: CGWindowListOption { get }
  static var OptionOnScreenBelowWindow: CGWindowListOption { get }
  static var OptionIncludingWindow: CGWindowListOption { get }
  static var ExcludeDesktopElements: CGWindowListOption { get }
}
@available(OSX 10.5, *)
func CGWindowListCopyWindowInfo(_ option: CGWindowListOption, _ relativeToWindow: CGWindowID) -> CFArray?
@available(OSX 10.5, *)
func CGWindowListCreateDescriptionFromArray(_ windowArray: CFArray?) -> CFArray?
struct CGWindowImageOption : OptionSetType {
  init(rawValue rawValue: UInt32)
  let rawValue: UInt32
  static var Default: CGWindowImageOption { get }
  static var BoundsIgnoreFraming: CGWindowImageOption { get }
  static var ShouldBeOpaque: CGWindowImageOption { get }
  static var OnlyShadows: CGWindowImageOption { get }
  static var BestResolution: CGWindowImageOption { get }
  static var NominalResolution: CGWindowImageOption { get }
}
@available(OSX 10.5, *)
func CGWindowListCreateImage(_ screenBounds: CGRect, _ listOption: CGWindowListOption, _ windowID: CGWindowID, _ imageOption: CGWindowImageOption) -> CGImage?
@available(OSX 10.5, *)
func CGWindowListCreateImageFromArray(_ screenBounds: CGRect, _ windowArray: CFArray, _ imageOption: CGWindowImageOption) -> CGImage?
