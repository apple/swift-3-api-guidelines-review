
extension Object {
  class func validModesFor(fontPanel: NSFontPanel) -> Int
  func validModesFor(fontPanel: NSFontPanel) -> Int
}
class NSFontPanel : NSPanel {
  class func shared() -> NSFontPanel
  class func sharedFontPanelExists() -> Bool
  var accessoryView: NSView?
  func setPanelFont(fontObj: NSFont, isMultiple flag: Bool)
  func panelConvert(fontObj: NSFont) -> NSFont
  var worksWhenModal: Bool
  var isEnabled: Bool
  func reloadDefaultFontFamilies()
  init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: Coder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
struct __fpFlags {
  var setFontChange: UInt32
  var setFontAttributeChange: UInt32
  var _delRespFamily: UInt32
  var _delRespFace: UInt32
  var _delRespSize: UInt32
  var _delRespColl: UInt32
  var _collectionDisabled: UInt32
  var _sizeDisabled: UInt32
  var _faceDisabled: UInt32
  var showEffects: UInt32
  var _uiMode: UInt32
  var _miniMode: UInt32
  var _reserved: UInt32
  init()
  init(setFontChange: UInt32, setFontAttributeChange: UInt32, _delRespFamily: UInt32, _delRespFace: UInt32, _delRespSize: UInt32, _delRespColl: UInt32, _collectionDisabled: UInt32, _sizeDisabled: UInt32, _faceDisabled: UInt32, showEffects: UInt32, _uiMode: UInt32, _miniMode: UInt32, _reserved: UInt32)
}
var NSFontPanelFaceModeMask: UInt32 { get }
var NSFontPanelSizeModeMask: UInt32 { get }
var NSFontPanelCollectionModeMask: UInt32 { get }
var NSFontPanelUnderlineEffectModeMask: UInt32 { get }
var NSFontPanelStrikethroughEffectModeMask: UInt32 { get }
var NSFontPanelTextColorEffectModeMask: UInt32 { get }
var NSFontPanelDocumentColorEffectModeMask: UInt32 { get }
var NSFontPanelShadowEffectModeMask: UInt32 { get }
var NSFontPanelAllEffectsModeMask: UInt32 { get }
var NSFontPanelStandardModesMask: UInt32 { get }
var NSFontPanelAllModesMask: UInt32 { get }
var NSFPPreviewButton: Int { get }
var NSFPRevertButton: Int { get }
var NSFPSetButton: Int { get }
var NSFPPreviewField: Int { get }
var NSFPSizeField: Int { get }
var NSFPSizeTitle: Int { get }
var NSFPCurrentField: Int { get }
