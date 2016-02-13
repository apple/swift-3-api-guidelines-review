
enum NSRulerOrientation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case horizontalRuler
  case verticalRuler
}
class NSRulerView : NSView {
  class func registerUnit(withName unitName: String, abbreviation: String, unitToPointsConversionFactor conversionFactor: CGFloat, stepUpCycle: [Number], stepDownCycle: [Number])
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
  func moveRulerline(fromLocation oldLocation: CGFloat, toLocation newLocation: CGFloat)
  func invalidateHashMarks()
  func drawHashMarksAndLabels(in rect: Rect)
  func drawMarkers(in rect: Rect)
  var isFlipped: Bool { get }
  convenience init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
extension NSView {
  func rulerView(ruler: NSRulerView, shouldMove marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, willMove marker: NSRulerMarker, toLocation location: CGFloat) -> CGFloat
  func rulerView(ruler: NSRulerView, didMove marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, shouldRemove marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, didRemove marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, shouldAdd marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, willAdd marker: NSRulerMarker, atLocation location: CGFloat) -> CGFloat
  func rulerView(ruler: NSRulerView, didAdd marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, handleMouseDown event: NSEvent)
  func rulerView(ruler: NSRulerView, willSetClientView newClient: NSView)
  @available(OSX 10.7, *)
  func rulerView(ruler: NSRulerView, locationFor aPoint: Point) -> CGFloat
  @available(OSX 10.7, *)
  func rulerView(ruler: NSRulerView, pointForLocation aPoint: CGFloat) -> Point
}
