
@available(OSX 10.4, *)
func CGEventSourceGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func CGEventSourceCreate(_ stateID: CGEventSourceStateID) -> CGEventSource?
@available(OSX 10.4, *)
func CGEventSourceGetKeyboardType(_ source: CGEventSource?) -> CGEventSourceKeyboardType
@available(OSX 10.4, *)
func CGEventSourceSetKeyboardType(_ source: CGEventSource?, _ keyboardType: CGEventSourceKeyboardType)
@available(OSX 10.5, *)
func CGEventSourceGetPixelsPerLine(_ source: CGEventSource?) -> Double
@available(OSX 10.5, *)
func CGEventSourceSetPixelsPerLine(_ source: CGEventSource?, _ pixelsPerLine: Double)
@available(OSX 10.4, *)
func CGEventSourceGetSourceStateID(_ source: CGEventSource?) -> CGEventSourceStateID
@available(OSX 10.4, *)
func CGEventSourceButtonState(_ stateID: CGEventSourceStateID, _ button: CGMouseButton) -> Bool
@available(OSX 10.4, *)
func CGEventSourceKeyState(_ stateID: CGEventSourceStateID, _ key: CGKeyCode) -> Bool
@available(OSX 10.4, *)
func CGEventSourceFlagsState(_ stateID: CGEventSourceStateID) -> CGEventFlags
@available(OSX 10.4, *)
func CGEventSourceSecondsSinceLastEventType(_ stateID: CGEventSourceStateID, _ eventType: CGEventType) -> CFTimeInterval
@available(OSX 10.4, *)
func CGEventSourceCounterForEventType(_ stateID: CGEventSourceStateID, _ eventType: CGEventType) -> UInt32
@available(OSX 10.4, *)
func CGEventSourceSetUserData(_ source: CGEventSource?, _ userData: Int64)
@available(OSX 10.4, *)
func CGEventSourceGetUserData(_ source: CGEventSource?) -> Int64
@available(OSX 10.4, *)
func CGEventSourceSetLocalEventsFilterDuringSuppressionState(_ source: CGEventSource?, _ filter: CGEventFilterMask, _ state: CGEventSuppressionState)
@available(OSX 10.4, *)
func CGEventSourceGetLocalEventsFilterDuringSuppressionState(_ source: CGEventSource?, _ state: CGEventSuppressionState) -> CGEventFilterMask
@available(OSX 10.4, *)
func CGEventSourceSetLocalEventsSuppressionInterval(_ source: CGEventSource?, _ seconds: CFTimeInterval)
@available(OSX 10.4, *)
func CGEventSourceGetLocalEventsSuppressionInterval(_ source: CGEventSource?) -> CFTimeInterval
