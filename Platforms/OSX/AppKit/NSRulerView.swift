
enum NSRulerOrientation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case HorizontalRuler
  case VerticalRuler
}
class NSRulerView : NSView {
  class func registerUnitWithName(unitName: String, abbreviation: String, unitToPointsConversionFactor conversionFactor: CGFloat, stepUpCycle: [NSNumber], stepDownCycle: [NSNumber])
  init(scrollView: NSScrollView?, orientation: NSRulerOrientation)
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
  func addMarker(marker: NSRulerMarker)
  func removeMarker(marker: NSRulerMarker)
  var markers: [NSRulerMarker]?
  func trackMarker(marker: NSRulerMarker, withMouseEvent event: NSEvent) -> Bool
  var accessoryView: NSView?
  func moveRulerlineFromLocation(oldLocation: CGFloat, toLocation newLocation: CGFloat)
  func invalidateHashMarks()
  func drawHashMarksAndLabelsInRect(rect: NSRect)
  func drawMarkersInRect(rect: NSRect)
  var flipped: Bool { get }
  convenience init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
extension NSView {
  func rulerView(ruler: NSRulerView, shouldMoveMarker marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, willMoveMarker marker: NSRulerMarker, toLocation location: CGFloat) -> CGFloat
  func rulerView(ruler: NSRulerView, didMoveMarker marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, shouldRemoveMarker marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, didRemoveMarker marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, shouldAddMarker marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, willAddMarker marker: NSRulerMarker, atLocation location: CGFloat) -> CGFloat
  func rulerView(ruler: NSRulerView, didAddMarker marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, handleMouseDown event: NSEvent)
  func rulerView(ruler: NSRulerView, willSetClientView newClient: NSView)
  @available(OSX 10.7, *)
  func rulerView(ruler: NSRulerView, locationForPoint aPoint: NSPoint) -> CGFloat
  @available(OSX 10.7, *)
  func rulerView(ruler: NSRulerView, pointForLocation aPoint: CGFloat) -> NSPoint
}
