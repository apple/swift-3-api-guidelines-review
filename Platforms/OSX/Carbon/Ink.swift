
class InkText {
}
@available(*, deprecated, renamed="InkText")
typealias InkTextRef = InkText
class InkStroke {
}
@available(*, deprecated, renamed="InkStroke")
typealias InkStrokeRef = InkStroke
struct InkPoint {
  var point: HIPoint
  var tabletPointData: TabletPointRec
  var keyModifiers: UInt32
  init()
  init(point: HIPoint, tabletPointData: TabletPointRec, keyModifiers: UInt32)
}
typealias InkPointPtr = UnsafeMutablePointer<InkPoint>
typealias InkAlternateCount = CFIndex
typealias InkUserWritingModeType = FourCharCode
var kInkWriteNowhere: Int { get }
var kInkWriteAnywhere: Int { get }
var kInkWriteInInkAwareAppsOnly: Int { get }
typealias InkApplicationWritingModeType = FourCharCode
var kInkWriteNowhereInApp: Int { get }
var kInkWriteAnywhereInApp: Int { get }
typealias InkDrawingModeType = UInt32
var kInkDrawNothing: Int { get }
var kInkDrawInkOnly: Int { get }
var kInkDrawInkAndWritingGuides: Int { get }
typealias InkTextDrawFlagsType = UInt32
var kInkTextDrawDefault: Int { get }
var kInkTextDrawIgnorePressure: Int { get }
var kInkTextDrawHonorContext: Int { get }
typealias InkTerminationType = UInt32
var kInkTerminationNone: UInt32 { get }
var kInkTerminationTimeOut: UInt32 { get }
var kInkTerminationOutOfProximity: UInt32 { get }
var kInkTerminationRecognizerHorizontalBreak: UInt32 { get }
var kInkTerminationRecognizerVerticalBreak: UInt32 { get }
var kInkTerminationStroke: UInt32 { get }
var kInkTerminationDefault: UInt32 { get }
var kInkTerminationAll: UInt32 { get }
typealias InkSourceType = UInt32
var kInkSourceUser: Int { get }
var kInkSourceApplication: Int { get }
typealias InkRecognitionType = UInt32
var kInkRecognitionNone: Int { get }
var kInkRecognitionText: Int { get }
var kInkRecognitionGesture: Int { get }
var kInkRecognitionDefault: Int { get }
typealias InkGestureKind = FourCharCode
var kInkGestureUndo: Int { get }
var kInkGestureCut: Int { get }
var kInkGestureCopy: Int { get }
var kInkGesturePaste: Int { get }
var kInkGestureClear: Int { get }
var kInkGestureSelectAll: Int { get }
var kInkGestureEscape: Int { get }
var kInkGestureTab: Int { get }
var kInkGestureLeftSpace: Int { get }
var kInkGestureRightSpace: Int { get }
var kInkGestureLeftReturn: Int { get }
var kInkGestureRightReturn: Int { get }
var kInkGestureDelete: Int { get }
var kInkGestureJoin: Int { get }
var kInkAlternateCommand: Int { get }
var kInkSeparatorCommand: Int { get }
var kInkDrawingCommand: Int { get }
var kInkTabletPointerUnknown: Int { get }
var kInkTabletPointerPen: Int { get }
var kInkTabletPointerCursor: Int { get }
var kInkTabletPointerEraser: Int { get }
var kInkPenTipButtonMask: Int { get }
var kInkPenLowerSideButtonMask: Int { get }
var kInkPenUpperSideButtonMask: Int { get }
@available(OSX 10.3, *)
func InkUserWritingMode() -> InkUserWritingModeType
@available(OSX 10.3, *)
func InkSetApplicationWritingMode(iWriteWhere: InkApplicationWritingModeType)
@available(OSX 10.3, *)
func InkSetApplicationRecognitionMode(iRecognitionType: InkRecognitionType)
@available(OSX 10.3, *)
func InkSetPhraseTerminationMode(iSource: InkSourceType, _ iAllowedTerminationTypes: InkTerminationType)
@available(OSX 10.3, *)
func InkIsPhraseInProgress() -> Bool
@available(OSX 10.3, *)
func InkSetDrawingMode(iDrawingMode: InkDrawingModeType)
@available(OSX 10.3, *)
func InkAddStrokeToCurrentPhrase(iPointCount: UInt, _ iPointArray: UnsafeMutablePointer<InkPoint>)
@available(OSX 10.3, *)
func InkTerminateCurrentPhrase(iSource: InkSourceType)
@available(OSX 10.3, *)
func InkTextAlternatesCount(iTextRef: InkText!) -> CFIndex
@available(OSX 10.3, *)
func InkTextCreateCFString(iTextRef: InkText!, _ iAlternateIndex: CFIndex) -> Unmanaged<CFString>!
@available(OSX 10.3, *)
func InkTextKeyModifiers(iTextRef: InkText!) -> UInt32
@available(OSX 10.3, *)
func InkTextCopy(iTextRef: InkText!) -> Unmanaged<InkText>!
@available(OSX 10.3, *)
func InkTextBounds(iTextRef: InkText!) -> HIRect
@available(OSX 10.3, *)
func InkTextDraw(iTextRef: InkText!, _ iContext: CGContext!, _ iBounds: UnsafePointer<CGRect>, _ iFlags: InkTextDrawFlagsType)
@available(OSX 10.3, *)
func InkTextFlatten(iTextRef: InkText!, _ ioDataRef: CFMutableData!, _ iIndex: CFIndex) -> CFIndex
@available(OSX 10.3, *)
func InkTextCreateFromCFData(iFlattenedInkText: CFData!, _ iIndex: CFIndex) -> Unmanaged<InkText>!
@available(OSX 10.4, *)
func InkTextGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func InkTextGetStrokeCount(iTextRef: InkText!) -> CFIndex
@available(OSX 10.4, *)
func InkTextGetStroke(iTextRef: InkText!, _ iStrokeIndex: CFIndex) -> Unmanaged<InkStroke>!
@available(OSX 10.4, *)
func InkStrokeGetPointCount(iStrokeRef: InkStroke!) -> CFIndex
@available(OSX 10.4, *)
func InkStrokeGetPoints(iStrokeRef: InkStroke!, _ oPointBuffer: UnsafeMutablePointer<InkPoint>) -> UnsafeMutablePointer<InkPoint>
@available(OSX 10.4, *)
func InkStrokeGetTypeID() -> CFTypeID
