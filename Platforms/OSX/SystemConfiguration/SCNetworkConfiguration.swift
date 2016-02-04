
class SCNetworkInterface {
}
@available(OSX 10.4, *)
let kSCNetworkInterfaceType6to4: CFString
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeBluetooth: CFString
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeBond: CFString
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeEthernet: CFString
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeFireWire: CFString
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeIEEE80211: CFString
@available(OSX 10.5, *)
let kSCNetworkInterfaceTypeIPSec: CFString
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeIrDA: CFString
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeL2TP: CFString
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeModem: CFString
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypePPP: CFString
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypePPTP: CFString
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeSerial: CFString
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeVLAN: CFString
@available(OSX 10.5, *)
let kSCNetworkInterfaceTypeWWAN: CFString
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeIPv4: CFString
@available(OSX 10.4, *)
let kSCNetworkInterfaceIPv4: SCNetworkInterface
typealias SCBondInterface = SCNetworkInterface
class SCBondStatus {
}
var kSCBondStatusOK: Int { get }
var kSCBondStatusLinkInvalid: Int { get }
var kSCBondStatusNoPartner: Int { get }
var kSCBondStatusNotInActiveGroup: Int { get }
var kSCBondStatusUnknown: Int { get }
@available(OSX 10.4, *)
let kSCBondStatusDeviceAggregationStatus: CFString
@available(OSX 10.4, *)
let kSCBondStatusDeviceCollecting: CFString
@available(OSX 10.4, *)
let kSCBondStatusDeviceDistributing: CFString
typealias SCVLANInterface = SCNetworkInterface
class SCNetworkProtocol {
}
@available(OSX 10.4, *)
let kSCNetworkProtocolTypeDNS: CFString
@available(OSX 10.4, *)
let kSCNetworkProtocolTypeIPv4: CFString
@available(OSX 10.4, *)
let kSCNetworkProtocolTypeIPv6: CFString
@available(OSX 10.4, *)
let kSCNetworkProtocolTypeProxies: CFString
@available(OSX 10.5, *)
let kSCNetworkProtocolTypeSMB: CFString
class SCNetworkService {
}
class SCNetworkSet {
}
@available(OSX 10.4, *)
func SCNetworkInterfaceGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func SCNetworkInterfaceCopyAll() -> CFArray
@available(OSX 10.4, *)
func SCNetworkInterfaceGetSupportedInterfaceTypes(interface: SCNetworkInterface) -> CFArray?
@available(OSX 10.4, *)
func SCNetworkInterfaceGetSupportedProtocolTypes(interface: SCNetworkInterface) -> CFArray?
@available(OSX 10.4, *)
func SCNetworkInterfaceCreateWithInterface(interface: SCNetworkInterface, _ interfaceType: CFString) -> SCNetworkInterface?
@available(OSX 10.4, *)
func SCNetworkInterfaceGetBSDName(interface: SCNetworkInterface) -> CFString?
@available(OSX 10.4, *)
func SCNetworkInterfaceGetConfiguration(interface: SCNetworkInterface) -> CFDictionary?
@available(OSX 10.5, *)
func SCNetworkInterfaceGetExtendedConfiguration(interface: SCNetworkInterface, _ extendedType: CFString) -> CFDictionary?
@available(OSX 10.4, *)
func SCNetworkInterfaceGetHardwareAddressString(interface: SCNetworkInterface) -> CFString?
@available(OSX 10.4, *)
func SCNetworkInterfaceGetInterface(interface: SCNetworkInterface) -> SCNetworkInterface?
@available(OSX 10.4, *)
func SCNetworkInterfaceGetInterfaceType(interface: SCNetworkInterface) -> CFString?
@available(OSX 10.4, *)
func SCNetworkInterfaceGetLocalizedDisplayName(interface: SCNetworkInterface) -> CFString?
@available(OSX 10.4, *)
func SCNetworkInterfaceSetConfiguration(interface: SCNetworkInterface, _ config: CFDictionary) -> Bool
@available(OSX 10.5, *)
func SCNetworkInterfaceSetExtendedConfiguration(interface: SCNetworkInterface, _ extendedType: CFString, _ config: CFDictionary) -> Bool
@available(OSX 10.5, *)
func SCNetworkInterfaceCopyMediaOptions(interface: SCNetworkInterface, _ current: UnsafeMutablePointer<Unmanaged<CFDictionary>?>, _ active: UnsafeMutablePointer<Unmanaged<CFDictionary>?>, _ available: UnsafeMutablePointer<Unmanaged<CFArray>?>, _ filter: Bool) -> Bool
@available(OSX 10.5, *)
func SCNetworkInterfaceCopyMediaSubTypes(available: CFArray) -> CFArray?
@available(OSX 10.5, *)
func SCNetworkInterfaceCopyMediaSubTypeOptions(available: CFArray, _ subType: CFString) -> CFArray?
@available(OSX 10.5, *)
func SCNetworkInterfaceCopyMTU(interface: SCNetworkInterface, _ mtu_cur: UnsafeMutablePointer<Int32>, _ mtu_min: UnsafeMutablePointer<Int32>, _ mtu_max: UnsafeMutablePointer<Int32>) -> Bool
@available(OSX 10.5, *)
func SCNetworkInterfaceSetMediaOptions(interface: SCNetworkInterface, _ subtype: CFString, _ options: CFArray) -> Bool
@available(OSX 10.5, *)
func SCNetworkInterfaceSetMTU(interface: SCNetworkInterface, _ mtu: Int32) -> Bool
@available(OSX 10.5, *)
func SCNetworkInterfaceForceConfigurationRefresh(interface: SCNetworkInterface) -> Bool
@available(OSX 10.5, *)
func SCBondInterfaceCopyAll(prefs: SCPreferences) -> CFArray
@available(OSX 10.5, *)
func SCBondInterfaceCopyAvailableMemberInterfaces(prefs: SCPreferences) -> CFArray
@available(OSX 10.5, *)
func SCBondInterfaceCreate(prefs: SCPreferences) -> SCBondInterface?
@available(OSX 10.5, *)
func SCBondInterfaceRemove(bond: SCBondInterface) -> Bool
@available(OSX 10.5, *)
func SCBondInterfaceGetMemberInterfaces(bond: SCBondInterface) -> CFArray?
@available(OSX 10.5, *)
func SCBondInterfaceGetOptions(bond: SCBondInterface) -> CFDictionary?
@available(OSX 10.5, *)
func SCBondInterfaceSetMemberInterfaces(bond: SCBondInterface, _ members: CFArray) -> Bool
@available(OSX 10.5, *)
func SCBondInterfaceSetLocalizedDisplayName(bond: SCBondInterface, _ newName: CFString) -> Bool
@available(OSX 10.5, *)
func SCBondInterfaceSetOptions(bond: SCBondInterface, _ newOptions: CFDictionary) -> Bool
@available(OSX 10.5, *)
func SCBondInterfaceCopyStatus(bond: SCBondInterface) -> SCBondStatus?
@available(OSX 10.5, *)
func SCBondStatusGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
func SCBondStatusGetMemberInterfaces(bondStatus: SCBondStatus) -> CFArray?
@available(OSX 10.5, *)
func SCBondStatusGetInterfaceStatus(bondStatus: SCBondStatus, _ interface: SCNetworkInterface?) -> CFDictionary?
@available(OSX 10.5, *)
func SCVLANInterfaceCopyAll(prefs: SCPreferences) -> CFArray
@available(OSX 10.5, *)
func SCVLANInterfaceCopyAvailablePhysicalInterfaces() -> CFArray
@available(OSX 10.5, *)
func SCVLANInterfaceCreate(prefs: SCPreferences, _ physical: SCNetworkInterface, _ tag: CFNumber) -> SCVLANInterface?
@available(OSX 10.5, *)
func SCVLANInterfaceRemove(vlan: SCVLANInterface) -> Bool
@available(OSX 10.5, *)
func SCVLANInterfaceGetPhysicalInterface(vlan: SCVLANInterface) -> SCNetworkInterface?
@available(OSX 10.5, *)
func SCVLANInterfaceGetTag(vlan: SCVLANInterface) -> CFNumber?
@available(OSX 10.5, *)
func SCVLANInterfaceGetOptions(vlan: SCVLANInterface) -> CFDictionary?
@available(OSX 10.5, *)
func SCVLANInterfaceSetPhysicalInterfaceAndTag(vlan: SCVLANInterface, _ physical: SCNetworkInterface, _ tag: CFNumber) -> Bool
@available(OSX 10.5, *)
func SCVLANInterfaceSetLocalizedDisplayName(vlan: SCVLANInterface, _ newName: CFString) -> Bool
@available(OSX 10.5, *)
func SCVLANInterfaceSetOptions(vlan: SCVLANInterface, _ newOptions: CFDictionary) -> Bool
@available(OSX 10.4, *)
func SCNetworkProtocolGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func SCNetworkProtocolGetConfiguration(protocol: SCNetworkProtocol) -> CFDictionary?
@available(OSX 10.4, *)
func SCNetworkProtocolGetEnabled(protocol: SCNetworkProtocol) -> Bool
@available(OSX 10.4, *)
func SCNetworkProtocolGetProtocolType(protocol: SCNetworkProtocol) -> CFString?
@available(OSX 10.4, *)
func SCNetworkProtocolSetConfiguration(protocol: SCNetworkProtocol, _ config: CFDictionary) -> Bool
@available(OSX 10.4, *)
func SCNetworkProtocolSetEnabled(protocol: SCNetworkProtocol, _ enabled: Bool) -> Bool
@available(OSX 10.4, *)
func SCNetworkServiceGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func SCNetworkServiceAddProtocolType(service: SCNetworkService, _ protocolType: CFString) -> Bool
@available(OSX 10.4, *)
func SCNetworkServiceCopyAll(prefs: SCPreferences) -> CFArray?
@available(OSX 10.4, *)
func SCNetworkServiceCopyProtocols(service: SCNetworkService) -> CFArray?
@available(OSX 10.4, *)
func SCNetworkServiceCreate(prefs: SCPreferences, _ interface: SCNetworkInterface) -> SCNetworkService?
@available(OSX 10.4, *)
func SCNetworkServiceCopy(prefs: SCPreferences, _ serviceID: CFString) -> SCNetworkService?
@available(OSX 10.5, *)
func SCNetworkServiceEstablishDefaultConfiguration(service: SCNetworkService) -> Bool
@available(OSX 10.4, *)
func SCNetworkServiceGetEnabled(service: SCNetworkService) -> Bool
@available(OSX 10.4, *)
func SCNetworkServiceGetInterface(service: SCNetworkService) -> SCNetworkInterface?
@available(OSX 10.4, *)
func SCNetworkServiceGetName(service: SCNetworkService) -> CFString?
@available(OSX 10.4, *)
func SCNetworkServiceCopyProtocol(service: SCNetworkService, _ protocolType: CFString) -> SCNetworkProtocol?
@available(OSX 10.4, *)
func SCNetworkServiceGetServiceID(service: SCNetworkService) -> CFString?
@available(OSX 10.4, *)
func SCNetworkServiceRemove(service: SCNetworkService) -> Bool
@available(OSX 10.4, *)
func SCNetworkServiceRemoveProtocolType(service: SCNetworkService, _ protocolType: CFString) -> Bool
@available(OSX 10.4, *)
func SCNetworkServiceSetEnabled(service: SCNetworkService, _ enabled: Bool) -> Bool
@available(OSX 10.4, *)
func SCNetworkServiceSetName(service: SCNetworkService, _ name: CFString) -> Bool
@available(OSX 10.4, *)
func SCNetworkSetGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func SCNetworkSetAddService(set: SCNetworkSet, _ service: SCNetworkService) -> Bool
@available(OSX 10.5, *)
func SCNetworkSetContainsInterface(set: SCNetworkSet, _ interface: SCNetworkInterface) -> Bool
@available(OSX 10.4, *)
func SCNetworkSetCopyAll(prefs: SCPreferences) -> CFArray?
@available(OSX 10.4, *)
func SCNetworkSetCopyCurrent(prefs: SCPreferences) -> SCNetworkSet?
@available(OSX 10.4, *)
func SCNetworkSetCopyServices(set: SCNetworkSet) -> CFArray?
@available(OSX 10.4, *)
func SCNetworkSetCreate(prefs: SCPreferences) -> SCNetworkSet?
@available(OSX 10.4, *)
func SCNetworkSetCopy(prefs: SCPreferences, _ setID: CFString) -> SCNetworkSet?
@available(OSX 10.4, *)
func SCNetworkSetGetName(set: SCNetworkSet) -> CFString?
@available(OSX 10.4, *)
func SCNetworkSetGetSetID(set: SCNetworkSet) -> CFString?
@available(OSX 10.4, *)
func SCNetworkSetGetServiceOrder(set: SCNetworkSet) -> CFArray?
@available(OSX 10.4, *)
func SCNetworkSetRemove(set: SCNetworkSet) -> Bool
@available(OSX 10.4, *)
func SCNetworkSetRemoveService(set: SCNetworkSet, _ service: SCNetworkService) -> Bool
@available(OSX 10.4, *)
func SCNetworkSetSetCurrent(set: SCNetworkSet) -> Bool
@available(OSX 10.4, *)
func SCNetworkSetSetName(set: SCNetworkSet, _ name: CFString) -> Bool
@available(OSX 10.4, *)
func SCNetworkSetSetServiceOrder(set: SCNetworkSet, _ newOrder: CFArray) -> Bool
