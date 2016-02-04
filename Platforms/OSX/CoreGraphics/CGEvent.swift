
@available(OSX 10.4, *)
func CGEventGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func CGEventCreate(source: CGEventSource?) -> CGEvent?
@available(OSX 10.4, *)
func CGEventCreateData(allocator: CFAllocator?, _ event: CGEvent?) -> CFData?
@available(OSX 10.4, *)
func CGEventCreateFromData(allocator: CFAllocator?, _ data: CFData?) -> CGEvent?
@available(OSX 10.4, *)
func CGEventCreateMouseEvent(source: CGEventSource?, _ mouseType: CGEventType, _ mouseCursorPosition: CGPoint, _ mouseButton: CGMouseButton) -> CGEvent?
@available(OSX 10.4, *)
func CGEventCreateKeyboardEvent(source: CGEventSource?, _ virtualKey: CGKeyCode, _ keyDown: Bool) -> CGEvent?
@available(OSX 10.4, *)
func CGEventCreateCopy(event: CGEvent?) -> CGEvent?
@available(OSX 10.4, *)
func CGEventCreateSourceFromEvent(event: CGEvent?) -> CGEventSource?
@available(OSX 10.4, *)
func CGEventSetSource(event: CGEvent?, _ source: CGEventSource?)
@available(OSX 10.4, *)
func CGEventGetType(event: CGEvent?) -> CGEventType
@available(OSX 10.4, *)
func CGEventSetType(event: CGEvent?, _ type: CGEventType)
@available(OSX 10.4, *)
func CGEventGetTimestamp(event: CGEvent?) -> CGEventTimestamp
@available(OSX 10.4, *)
func CGEventSetTimestamp(event: CGEvent?, _ timestamp: CGEventTimestamp)
@available(OSX 10.4, *)
func CGEventGetLocation(event: CGEvent?) -> CGPoint
@available(OSX 10.5, *)
func CGEventGetUnflippedLocation(event: CGEvent?) -> CGPoint
@available(OSX 10.4, *)
func CGEventSetLocation(event: CGEvent?, _ location: CGPoint)
@available(OSX 10.4, *)
func CGEventGetFlags(event: CGEvent?) -> CGEventFlags
@available(OSX 10.4, *)
func CGEventSetFlags(event: CGEvent?, _ flags: CGEventFlags)
@available(OSX 10.4, *)
func CGEventKeyboardGetUnicodeString(event: CGEvent?, _ maxStringLength: Int, _ actualStringLength: UnsafeMutablePointer<Int>, _ unicodeString: UnsafeMutablePointer<UniChar>)
@available(OSX 10.4, *)
func CGEventKeyboardSetUnicodeString(event: CGEvent?, _ stringLength: Int, _ unicodeString: UnsafePointer<UniChar>)
@available(OSX 10.4, *)
func CGEventGetIntegerValueField(event: CGEvent?, _ field: CGEventField) -> Int64
@available(OSX 10.4, *)
func CGEventSetIntegerValueField(event: CGEvent?, _ field: CGEventField, _ value: Int64)
@available(OSX 10.4, *)
func CGEventGetDoubleValueField(event: CGEvent?, _ field: CGEventField) -> Double
@available(OSX 10.4, *)
func CGEventSetDoubleValueField(event: CGEvent?, _ field: CGEventField, _ value: Double)
@available(OSX 10.4, *)
func CGEventTapCreate(tap: CGEventTapLocation, _ place: CGEventTapPlacement, _ options: CGEventTapOptions, _ eventsOfInterest: CGEventMask, _ callback: CGEventTapCallBack?, _ userInfo: UnsafeMutablePointer<Void>) -> CFMachPort?
@available(OSX 10.4, *)
func CGEventTapCreateForPSN(processSerialNumber: UnsafeMutablePointer<Void>, _ place: CGEventTapPlacement, _ options: CGEventTapOptions, _ eventsOfInterest: CGEventMask, _ callback: CGEventTapCallBack?, _ userInfo: UnsafeMutablePointer<Void>) -> CFMachPort?
@available(OSX 10.4, *)
func CGEventTapCreateForPid(pid: pid_t, _ place: CGEventTapPlacement, _ options: CGEventTapOptions, _ eventsOfInterest: CGEventMask, _ callback: CGEventTapCallBack, _ userInfo: UnsafeMutablePointer<Void>) -> CFMachPort?
@available(OSX 10.4, *)
func CGEventTapEnable(tap: CFMachPort, _ enable: Bool)
@available(OSX 10.4, *)
func CGEventTapIsEnabled(tap: CFMachPort) -> Bool
@available(OSX 10.4, *)
func CGEventTapPostEvent(proxy: CGEventTapProxy, _ event: CGEvent?)
@available(OSX 10.4, *)
func CGEventPost(tap: CGEventTapLocation, _ event: CGEvent?)
@available(OSX 10.4, *)
func CGEventPostToPSN(processSerialNumber: UnsafeMutablePointer<Void>, _ event: CGEvent?)
@available(OSX 10.11, *)
func CGEventPostToPid(pid: pid_t, _ event: CGEvent?)
@available(OSX 10.4, *)
func CGGetEventTapList(maxNumberOfTaps: UInt32, _ tapList: UnsafeMutablePointer<CGEventTapInformation>, _ eventTapCount: UnsafeMutablePointer<UInt32>) -> CGError
