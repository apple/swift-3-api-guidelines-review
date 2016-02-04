
@available(OSX 10.4, *)
func CGEventSourceGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func CGEventSourceCreate(stateID: CGEventSourceStateID) -> CGEventSource?
@available(OSX 10.4, *)
func CGEventSourceGetKeyboardType(source: CGEventSource?) -> CGEventSourceKeyboardType
@available(OSX 10.4, *)
func CGEventSourceSetKeyboardType(source: CGEventSource?, _ keyboardType: CGEventSourceKeyboardType)
@available(OSX 10.5, *)
func CGEventSourceGetPixelsPerLine(source: CGEventSource?) -> Double
@available(OSX 10.5, *)
func CGEventSourceSetPixelsPerLine(source: CGEventSource?, _ pixelsPerLine: Double)
@available(OSX 10.4, *)
func CGEventSourceGetSourceStateID(source: CGEventSource?) -> CGEventSourceStateID
@available(OSX 10.4, *)
func CGEventSourceButtonState(stateID: CGEventSourceStateID, _ button: CGMouseButton) -> Bool
@available(OSX 10.4, *)
func CGEventSourceKeyState(stateID: CGEventSourceStateID, _ key: CGKeyCode) -> Bool
@available(OSX 10.4, *)
func CGEventSourceFlagsState(stateID: CGEventSourceStateID) -> CGEventFlags
@available(OSX 10.4, *)
func CGEventSourceSecondsSinceLastEventType(stateID: CGEventSourceStateID, _ eventType: CGEventType) -> CFTimeInterval
@available(OSX 10.4, *)
func CGEventSourceCounterForEventType(stateID: CGEventSourceStateID, _ eventType: CGEventType) -> UInt32
@available(OSX 10.4, *)
func CGEventSourceSetUserData(source: CGEventSource?, _ userData: Int64)
@available(OSX 10.4, *)
func CGEventSourceGetUserData(source: CGEventSource?) -> Int64
@available(OSX 10.4, *)
func CGEventSourceSetLocalEventsFilterDuringSuppressionState(source: CGEventSource?, _ filter: CGEventFilterMask, _ state: CGEventSuppressionState)
@available(OSX 10.4, *)
func CGEventSourceGetLocalEventsFilterDuringSuppressionState(source: CGEventSource?, _ state: CGEventSuppressionState) -> CGEventFilterMask
@available(OSX 10.4, *)
func CGEventSourceSetLocalEventsSuppressionInterval(source: CGEventSource?, _ seconds: CFTimeInterval)
@available(OSX 10.4, *)
func CGEventSourceGetLocalEventsSuppressionInterval(source: CGEventSource?) -> CFTimeInterval
