
typealias CGDisplayConfigRef = COpaquePointer
@available(OSX 10.0, *)
func CGBeginDisplayConfiguration(config: UnsafeMutablePointer<CGDisplayConfigRef>) -> CGError
@available(OSX 10.0, *)
func CGConfigureDisplayOrigin(config: CGDisplayConfigRef, _ display: CGDirectDisplayID, _ x: Int32, _ y: Int32) -> CGError
@available(OSX 10.6, *)
func CGConfigureDisplayWithDisplayMode(config: CGDisplayConfigRef, _ display: CGDirectDisplayID, _ mode: CGDisplayMode?, _ options: CFDictionary?) -> CGError
@available(OSX 10.4, *)
func CGConfigureDisplayStereoOperation(config: CGDisplayConfigRef, _ display: CGDirectDisplayID, _ stereo: boolean_t, _ forceBlueLine: boolean_t) -> CGError
@available(OSX 10.2, *)
func CGConfigureDisplayMirrorOfDisplay(config: CGDisplayConfigRef, _ display: CGDirectDisplayID, _ master: CGDirectDisplayID) -> CGError
@available(OSX 10.0, *)
func CGCancelDisplayConfiguration(config: CGDisplayConfigRef) -> CGError
struct CGConfigureOption : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var ForAppOnly: CGConfigureOption { get }
  static var ForSession: CGConfigureOption { get }
  static var Permanently: CGConfigureOption { get }
}
@available(OSX 10.0, *)
func CGCompleteDisplayConfiguration(config: CGDisplayConfigRef, _ option: CGConfigureOption) -> CGError
@available(OSX 10.2, *)
func CGRestorePermanentDisplayConfiguration()
struct CGDisplayChangeSummaryFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var BeginConfigurationFlag: CGDisplayChangeSummaryFlags { get }
  static var MovedFlag: CGDisplayChangeSummaryFlags { get }
  static var SetMainFlag: CGDisplayChangeSummaryFlags { get }
  static var SetModeFlag: CGDisplayChangeSummaryFlags { get }
  static var AddFlag: CGDisplayChangeSummaryFlags { get }
  static var RemoveFlag: CGDisplayChangeSummaryFlags { get }
  static var EnabledFlag: CGDisplayChangeSummaryFlags { get }
  static var DisabledFlag: CGDisplayChangeSummaryFlags { get }
  static var MirrorFlag: CGDisplayChangeSummaryFlags { get }
  static var UnMirrorFlag: CGDisplayChangeSummaryFlags { get }
  static var DesktopShapeChangedFlag: CGDisplayChangeSummaryFlags { get }
}
typealias CGDisplayReconfigurationCallBack = @convention(c) (CGDirectDisplayID, CGDisplayChangeSummaryFlags, UnsafeMutablePointer<Void>) -> Void
@available(OSX 10.3, *)
func CGDisplayRegisterReconfigurationCallback(callback: CGDisplayReconfigurationCallBack?, _ userInfo: UnsafeMutablePointer<Void>) -> CGError
@available(OSX 10.3, *)
func CGDisplayRemoveReconfigurationCallback(callback: CGDisplayReconfigurationCallBack?, _ userInfo: UnsafeMutablePointer<Void>) -> CGError
@available(OSX 10.4, *)
func CGDisplaySetStereoOperation(display: CGDirectDisplayID, _ stereo: boolean_t, _ forceBlueLine: boolean_t, _ option: CGConfigureOption) -> CGError
@available(OSX 10.2, *)
func CGDisplayIsActive(display: CGDirectDisplayID) -> boolean_t
@available(OSX 10.2, *)
func CGDisplayIsAsleep(display: CGDirectDisplayID) -> boolean_t
@available(OSX 10.2, *)
func CGDisplayIsOnline(display: CGDirectDisplayID) -> boolean_t
@available(OSX 10.2, *)
func CGDisplayIsMain(display: CGDirectDisplayID) -> boolean_t
@available(OSX 10.2, *)
func CGDisplayIsBuiltin(display: CGDirectDisplayID) -> boolean_t
@available(OSX 10.2, *)
func CGDisplayIsInMirrorSet(display: CGDirectDisplayID) -> boolean_t
@available(OSX 10.2, *)
func CGDisplayIsAlwaysInMirrorSet(display: CGDirectDisplayID) -> boolean_t
@available(OSX 10.2, *)
func CGDisplayIsInHWMirrorSet(display: CGDirectDisplayID) -> boolean_t
@available(OSX 10.2, *)
func CGDisplayMirrorsDisplay(display: CGDirectDisplayID) -> CGDirectDisplayID
@available(OSX 10.2, *)
func CGDisplayUsesOpenGLAcceleration(display: CGDirectDisplayID) -> boolean_t
@available(OSX 10.4, *)
func CGDisplayIsStereo(display: CGDirectDisplayID) -> boolean_t
@available(OSX 10.2, *)
func CGDisplayPrimaryDisplay(display: CGDirectDisplayID) -> CGDirectDisplayID
@available(OSX 10.2, *)
func CGDisplayUnitNumber(display: CGDirectDisplayID) -> UInt32
@available(OSX 10.2, *)
func CGDisplayVendorNumber(display: CGDirectDisplayID) -> UInt32
@available(OSX 10.2, *)
func CGDisplayModelNumber(display: CGDirectDisplayID) -> UInt32
@available(OSX 10.2, *)
func CGDisplaySerialNumber(display: CGDirectDisplayID) -> UInt32
@available(OSX 10.3, *)
func CGDisplayScreenSize(display: CGDirectDisplayID) -> CGSize
@available(OSX 10.5, *)
func CGDisplayRotation(display: CGDirectDisplayID) -> Double
@available(OSX 10.5, *)
func CGDisplayCopyColorSpace(display: CGDirectDisplayID) -> CGColorSpace
