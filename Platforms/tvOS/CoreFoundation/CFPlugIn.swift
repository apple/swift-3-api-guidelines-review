
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
func CFPlugInCreate(_ allocator: CFAllocator!, _ plugInURL: CFURL!) -> CFPlugIn!
func CFPlugInGetBundle(_ plugIn: CFPlugIn!) -> CFBundle!
func CFPlugInSetLoadOnDemand(_ plugIn: CFPlugIn!, _ flag: Bool)
func CFPlugInIsLoadOnDemand(_ plugIn: CFPlugIn!) -> Bool
func CFPlugInFindFactoriesForPlugInType(_ typeUUID: CFUUID!) -> CFArray!
func CFPlugInFindFactoriesForPlugInTypeInPlugIn(_ typeUUID: CFUUID!, _ plugIn: CFPlugIn!) -> CFArray!
func CFPlugInInstanceCreate(_ allocator: CFAllocator!, _ factoryUUID: CFUUID!, _ typeUUID: CFUUID!) -> UnsafeMutablePointer<Void>
func CFPlugInRegisterFactoryFunction(_ factoryUUID: CFUUID!, _ func: CFPlugInFactoryFunction!) -> Bool
func CFPlugInRegisterFactoryFunctionByName(_ factoryUUID: CFUUID!, _ plugIn: CFPlugIn!, _ functionName: CFString!) -> Bool
func CFPlugInUnregisterFactory(_ factoryUUID: CFUUID!) -> Bool
func CFPlugInRegisterPlugInType(_ factoryUUID: CFUUID!, _ typeUUID: CFUUID!) -> Bool
func CFPlugInUnregisterPlugInType(_ factoryUUID: CFUUID!, _ typeUUID: CFUUID!) -> Bool
func CFPlugInAddInstanceForFactory(_ factoryID: CFUUID!)
func CFPlugInRemoveInstanceForFactory(_ factoryID: CFUUID!)
class CFPlugInInstance {
}
typealias CFPlugInInstanceGetInterfaceFunction = @convention(c) (CFPlugInInstance!, CFString!, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> DarwinBoolean
typealias CFPlugInInstanceDeallocateInstanceDataFunction = @convention(c) (UnsafeMutablePointer<Void>) -> Void
func CFPlugInInstanceGetInterfaceFunctionTable(_ instance: CFPlugInInstance!, _ interfaceName: CFString!, _ ftbl: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> Bool
func CFPlugInInstanceGetFactoryName(_ instance: CFPlugInInstance!) -> CFString!
func CFPlugInInstanceGetInstanceData(_ instance: CFPlugInInstance!) -> UnsafeMutablePointer<Void>
func CFPlugInInstanceGetTypeID() -> CFTypeID
func CFPlugInInstanceCreateWithInstanceDataSize(_ allocator: CFAllocator!, _ instanceDataSize: CFIndex, _ deallocateInstanceFunction: CFPlugInInstanceDeallocateInstanceDataFunction!, _ factoryName: CFString!, _ getInterfaceFunction: CFPlugInInstanceGetInterfaceFunction!) -> CFPlugInInstance!
