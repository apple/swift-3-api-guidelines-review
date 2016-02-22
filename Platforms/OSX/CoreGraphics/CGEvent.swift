
@available(OSX 10.4, *)
func CGEventGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func CGEventCreate(_ source: CGEventSource?) -> CGEvent?
@available(OSX 10.4, *)
func CGEventCreateData(_ allocator: CFAllocator?, _ event: CGEvent?) -> CFData?
@available(OSX 10.4, *)
func CGEventCreateFromData(_ allocator: CFAllocator?, _ data: CFData?) -> CGEvent?
@available(OSX 10.4, *)
func CGEventCreateMouseEvent(_ source: CGEventSource?, _ mouseType: CGEventType, _ mouseCursorPosition: CGPoint, _ mouseButton: CGMouseButton) -> CGEvent?
@available(OSX 10.4, *)
func CGEventCreateKeyboardEvent(_ source: CGEventSource?, _ virtualKey: CGKeyCode, _ keyDown: Bool) -> CGEvent?
@available(OSX 10.4, *)
func CGEventCreateCopy(_ event: CGEvent?) -> CGEvent?
@available(OSX 10.4, *)
func CGEventCreateSourceFromEvent(_ event: CGEvent?) -> CGEventSource?
@available(OSX 10.4, *)
func CGEventSetSource(_ event: CGEvent?, _ source: CGEventSource?)
@available(OSX 10.4, *)
func CGEventGetType(_ event: CGEvent?) -> CGEventType
@available(OSX 10.4, *)
func CGEventSetType(_ event: CGEvent?, _ type: CGEventType)
@available(OSX 10.4, *)
func CGEventGetTimestamp(_ event: CGEvent?) -> CGEventTimestamp
@available(OSX 10.4, *)
func CGEventSetTimestamp(_ event: CGEvent?, _ timestamp: CGEventTimestamp)
@available(OSX 10.4, *)
func CGEventGetLocation(_ event: CGEvent?) -> CGPoint
@available(OSX 10.5, *)
func CGEventGetUnflippedLocation(_ event: CGEvent?) -> CGPoint
@available(OSX 10.4, *)
func CGEventSetLocation(_ event: CGEvent?, _ location: CGPoint)
@available(OSX 10.4, *)
func CGEventGetFlags(_ event: CGEvent?) -> CGEventFlags
@available(OSX 10.4, *)
func CGEventSetFlags(_ event: CGEvent?, _ flags: CGEventFlags)
@available(OSX 10.4, *)
func CGEventKeyboardGetUnicodeString(_ event: CGEvent?, _ maxStringLength: Int, _ actualStringLength: UnsafeMutablePointer<Int>, _ unicodeString: UnsafeMutablePointer<UniChar>)
@available(OSX 10.4, *)
func CGEventKeyboardSetUnicodeString(_ event: CGEvent?, _ stringLength: Int, _ unicodeString: UnsafePointer<UniChar>)
@available(OSX 10.4, *)
func CGEventGetIntegerValueField(_ event: CGEvent?, _ field: CGEventField) -> Int64
@available(OSX 10.4, *)
func CGEventSetIntegerValueField(_ event: CGEvent?, _ field: CGEventField, _ value: Int64)
@available(OSX 10.4, *)
func CGEventGetDoubleValueField(_ event: CGEvent?, _ field: CGEventField) -> Double
@available(OSX 10.4, *)
func CGEventSetDoubleValueField(_ event: CGEvent?, _ field: CGEventField, _ value: Double)
@available(OSX 10.4, *)
func CGEventTapCreate(_ tap: CGEventTapLocation, _ place: CGEventTapPlacement, _ options: CGEventTapOptions, _ eventsOfInterest: CGEventMask, _ callback: CGEventTapCallBack?, _ userInfo: UnsafeMutablePointer<Void>) -> CFMachPort?
@available(OSX 10.4, *)
func CGEventTapCreateForPSN(_ processSerialNumber: UnsafeMutablePointer<Void>, _ place: CGEventTapPlacement, _ options: CGEventTapOptions, _ eventsOfInterest: CGEventMask, _ callback: CGEventTapCallBack?, _ userInfo: UnsafeMutablePointer<Void>) -> CFMachPort?
@available(OSX 10.4, *)
func CGEventTapCreateForPid(_ pid: pid_t, _ place: CGEventTapPlacement, _ options: CGEventTapOptions, _ eventsOfInterest: CGEventMask, _ callback: CGEventTapCallBack, _ userInfo: UnsafeMutablePointer<Void>) -> CFMachPort?
@available(OSX 10.4, *)
func CGEventTapEnable(_ tap: CFMachPort, _ enable: Bool)
@available(OSX 10.4, *)
func CGEventTapIsEnabled(_ tap: CFMachPort) -> Bool
@available(OSX 10.4, *)
func CGEventTapPostEvent(_ proxy: CGEventTapProxy, _ event: CGEvent?)
@available(OSX 10.4, *)
func CGEventPost(_ tap: CGEventTapLocation, _ event: CGEvent?)
@available(OSX 10.4, *)
func CGEventPostToPSN(_ processSerialNumber: UnsafeMutablePointer<Void>, _ event: CGEvent?)
@available(OSX 10.11, *)
func CGEventPostToPid(_ pid: pid_t, _ event: CGEvent?)
@available(OSX 10.4, *)
func CGGetEventTapList(_ maxNumberOfTaps: UInt32, _ tapList: UnsafeMutablePointer<CGEventTapInformation>, _ eventTapCount: UnsafeMutablePointer<UInt32>) -> CGError
