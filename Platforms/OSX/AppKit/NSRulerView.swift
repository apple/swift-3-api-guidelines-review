
enum NSRulerOrientation : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case HorizontalRuler
  case VerticalRuler
}
class NSRulerView : NSView {
  class func registerUnitWithName(_ unitName: String, abbreviation abbreviation: String, unitToPointsConversionFactor conversionFactor: CGFloat, stepUpCycle stepUpCycle: [NSNumber], stepDownCycle stepDownCycle: [NSNumber])
  init(scrollView scrollView: NSScrollView?, orientation orientation: NSRulerOrientation)
  unowned(unsafe) var scrollView: @sil_unmanaged NSScrollView?
  var orientation: NSRulerOrientation
  var baselineLocation: CGFloat { get }
  var requiredThickness: CGFloat { get }
  var ruleThickness: CGFloat
  var reservedThicknessForMarkers: CGFloat
  var reservedThicknessForAccessoryView: CGFloat
  var measurementUnits: String
  var originOffset: CGFloat
  unowned(unsafe) var clientView: @sil_unmanaged NSView?
  func addMarker(_ marker: NSRulerMarker)
  func removeMarker(_ marker: NSRulerMarker)
  var markers: [NSRulerMarker]?
  func trackMarker(_ marker: NSRulerMarker, withMouseEvent event: NSEvent) -> Bool
  var accessoryView: NSView?
  func moveRulerlineFromLocation(_ oldLocation: CGFloat, toLocation newLocation: CGFloat)
  func invalidateHashMarks()
  func drawHashMarksAndLabelsInRect(_ rect: NSRect)
  func drawMarkersInRect(_ rect: NSRect)
}
extension NSView {
  func rulerView(_ ruler: NSRulerView, shouldMoveMarker marker: NSRulerMarker) -> Bool
  func rulerView(_ ruler: NSRulerView, willMoveMarker marker: NSRulerMarker, toLocation location: CGFloat) -> CGFloat
  func rulerView(_ ruler: NSRulerView, didMoveMarker marker: NSRulerMarker)
  func rulerView(_ ruler: NSRulerView, shouldRemoveMarker marker: NSRulerMarker) -> Bool
  func rulerView(_ ruler: NSRulerView, didRemoveMarker marker: NSRulerMarker)
  func rulerView(_ ruler: NSRulerView, shouldAddMarker marker: NSRulerMarker) -> Bool
  func rulerView(_ ruler: NSRulerView, willAddMarker marker: NSRulerMarker, atLocation location: CGFloat) -> CGFloat
  func rulerView(_ ruler: NSRulerView, didAddMarker marker: NSRulerMarker)
  func rulerView(_ ruler: NSRulerView, handleMouseDown event: NSEvent)
  func rulerView(_ ruler: NSRulerView, willSetClientView newClient: NSView)
  @available(OSX 10.7, *)
  func rulerView(_ ruler: NSRulerView, locationForPoint aPoint: NSPoint) -> CGFloat
  @available(OSX 10.7, *)
  func rulerView(_ ruler: NSRulerView, pointForLocation aPoint: CGFloat) -> NSPoint
}
