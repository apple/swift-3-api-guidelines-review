
var COREFOUNDATION_CFPLUGINCOM_SEPARATE: Int32 { get }
let kCFPlugInDynamicRegistrationKey: CFString!
let kCFPlugInDynamicRegisterFunctionKey: CFString!
let kCFPlugInUnloadFunctionKey: CFString!
let kCFPlugInFactoriesKey: CFString!
let kCFPlugInTypesKey: CFString!
typealias CFPlugInDynamicRegisterFunction = @convention(c) (CFPlugIn!) -> Void
typealias CFPlugInUnloadFunction = @convention(c) (CFPlugIn!) -> Void
typealias CFPlugInFactoryFunction = @convention(c) (CFAllocator!, CFUUID!) -> UnsafeMutablePointer<Void>
func CFPlugInGetTypeID() -> CFTypeID
func CFPlugInCreate(allocator: CFAllocator!, _ plugInURL: CFURL!) -> CFPlugIn!
func CFPlugInGetBundle(plugIn: CFPlugIn!) -> CFBundle!
func CFPlugInSetLoadOnDemand(plugIn: CFPlugIn!, _ flag: Bool)
func CFPlugInIsLoadOnDemand(plugIn: CFPlugIn!) -> Bool
func CFPlugInFindFactoriesForPlugInType(typeUUID: CFUUID!) -> CFArray!
func CFPlugInFindFactoriesForPlugInTypeInPlugIn(typeUUID: CFUUID!, _ plugIn: CFPlugIn!) -> CFArray!
func CFPlugInInstanceCreate(allocator: CFAllocator!, _ factoryUUID: CFUUID!, _ typeUUID: CFUUID!) -> UnsafeMutablePointer<Void>
func CFPlugInRegisterFactoryFunction(factoryUUID: CFUUID!, _ func: CFPlugInFactoryFunction!) -> Bool
func CFPlugInRegisterFactoryFunctionByName(factoryUUID: CFUUID!, _ plugIn: CFPlugIn!, _ functionName: CFString!) -> Bool
func CFPlugInUnregisterFactory(factoryUUID: CFUUID!) -> Bool
func CFPlugInRegisterPlugInType(factoryUUID: CFUUID!, _ typeUUID: CFUUID!) -> Bool
func CFPlugInUnregisterPlugInType(factoryUUID: CFUUID!, _ typeUUID: CFUUID!) -> Bool
func CFPlugInAddInstanceForFactory(factoryID: CFUUID!)
func CFPlugInRemoveInstanceForFactory(factoryID: CFUUID!)
@available(*, deprecated, renamed="CFPlugInInstance")
typealias CFPlugInInstanceRef = CFPlugInInstance
class CFPlugInInstance {
}
typealias CFPlugInInstanceGetInterfaceFunction = @convention(c) (CFPlugInInstance!, CFString!, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> DarwinBoolean
typealias CFPlugInInstanceDeallocateInstanceDataFunction = @convention(c) (UnsafeMutablePointer<Void>) -> Void
func CFPlugInInstanceGetInterfaceFunctionTable(instance: CFPlugInInstance!, _ interfaceName: CFString!, _ ftbl: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> Bool
func CFPlugInInstanceGetFactoryName(instance: CFPlugInInstance!) -> CFString!
func CFPlugInInstanceGetInstanceData(instance: CFPlugInInstance!) -> UnsafeMutablePointer<Void>
func CFPlugInInstanceGetTypeID() -> CFTypeID
func CFPlugInInstanceCreateWithInstanceDataSize(allocator: CFAllocator!, _ instanceDataSize: CFIndex, _ deallocateInstanceFunction: CFPlugInInstanceDeallocateInstanceDataFunction!, _ factoryName: CFString!, _ getInterfaceFunction: CFPlugInInstanceGetInterfaceFunction!) -> CFPlugInInstance!
