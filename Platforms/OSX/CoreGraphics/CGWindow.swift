
typealias CGWindowID = UInt32
enum CGWindowSharingType : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case none
  case readOnly
  case readWrite
}
enum CGWindowBackingType : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case backingStoreRetained
  case backingStoreNonretained
  case backingStoreBuffered
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
  static var optionAll: CGWindowListOption { get }
  static var optionOnScreenOnly: CGWindowListOption { get }
  static var optionOnScreenAboveWindow: CGWindowListOption { get }
  static var optionOnScreenBelowWindow: CGWindowListOption { get }
  static var optionIncludingWindow: CGWindowListOption { get }
  static var excludeDesktopElements: CGWindowListOption { get }
}
@available(OSX 10.5, *)
func CGWindowListCopyWindowInfo(_ option: CGWindowListOption, _ relativeToWindow: CGWindowID) -> CFArray?
@available(OSX 10.5, *)
func CGWindowListCreateDescriptionFromArray(_ windowArray: CFArray?) -> CFArray?
struct CGWindowImageOption : OptionSetType {
  init(rawValue rawValue: UInt32)
  let rawValue: UInt32
  static var `default`: CGWindowImageOption { get }
  static var boundsIgnoreFraming: CGWindowImageOption { get }
  static var shouldBeOpaque: CGWindowImageOption { get }
  static var onlyShadows: CGWindowImageOption { get }
  static var bestResolution: CGWindowImageOption { get }
  static var nominalResolution: CGWindowImageOption { get }
}
@available(OSX 10.5, *)
func CGWindowListCreateImage(_ screenBounds: CGRect, _ listOption: CGWindowListOption, _ windowID: CGWindowID, _ imageOption: CGWindowImageOption) -> CGImage?
@available(OSX 10.5, *)
func CGWindowListCreateImageFromArray(_ screenBounds: CGRect, _ windowArray: CFArray, _ imageOption: CGWindowImageOption) -> CGImage?
