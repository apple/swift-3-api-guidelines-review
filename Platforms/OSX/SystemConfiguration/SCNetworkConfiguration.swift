
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
func SCNetworkInterfaceGetSupportedInterfaceTypes(_ interface: SCNetworkInterface) -> CFArray?
@available(OSX 10.4, *)
func SCNetworkInterfaceGetSupportedProtocolTypes(_ interface: SCNetworkInterface) -> CFArray?
@available(OSX 10.4, *)
func SCNetworkInterfaceCreateWithInterface(_ interface: SCNetworkInterface, _ interfaceType: CFString) -> SCNetworkInterface?
@available(OSX 10.4, *)
func SCNetworkInterfaceGetBSDName(_ interface: SCNetworkInterface) -> CFString?
@available(OSX 10.4, *)
func SCNetworkInterfaceGetConfiguration(_ interface: SCNetworkInterface) -> CFDictionary?
@available(OSX 10.5, *)
func SCNetworkInterfaceGetExtendedConfiguration(_ interface: SCNetworkInterface, _ extendedType: CFString) -> CFDictionary?
@available(OSX 10.4, *)
func SCNetworkInterfaceGetHardwareAddressString(_ interface: SCNetworkInterface) -> CFString?
@available(OSX 10.4, *)
func SCNetworkInterfaceGetInterface(_ interface: SCNetworkInterface) -> SCNetworkInterface?
@available(OSX 10.4, *)
func SCNetworkInterfaceGetInterfaceType(_ interface: SCNetworkInterface) -> CFString?
@available(OSX 10.4, *)
func SCNetworkInterfaceGetLocalizedDisplayName(_ interface: SCNetworkInterface) -> CFString?
@available(OSX 10.4, *)
func SCNetworkInterfaceSetConfiguration(_ interface: SCNetworkInterface, _ config: CFDictionary) -> Bool
@available(OSX 10.5, *)
func SCNetworkInterfaceSetExtendedConfiguration(_ interface: SCNetworkInterface, _ extendedType: CFString, _ config: CFDictionary) -> Bool
@available(OSX 10.5, *)
func SCNetworkInterfaceCopyMediaOptions(_ interface: SCNetworkInterface, _ current: UnsafeMutablePointer<Unmanaged<CFDictionary>?>, _ active: UnsafeMutablePointer<Unmanaged<CFDictionary>?>, _ available: UnsafeMutablePointer<Unmanaged<CFArray>?>, _ filter: Bool) -> Bool
@available(OSX 10.5, *)
func SCNetworkInterfaceCopyMediaSubTypes(_ available: CFArray) -> CFArray?
@available(OSX 10.5, *)
func SCNetworkInterfaceCopyMediaSubTypeOptions(_ available: CFArray, _ subType: CFString) -> CFArray?
@available(OSX 10.5, *)
func SCNetworkInterfaceCopyMTU(_ interface: SCNetworkInterface, _ mtu_cur: UnsafeMutablePointer<Int32>, _ mtu_min: UnsafeMutablePointer<Int32>, _ mtu_max: UnsafeMutablePointer<Int32>) -> Bool
@available(OSX 10.5, *)
func SCNetworkInterfaceSetMediaOptions(_ interface: SCNetworkInterface, _ subtype: CFString, _ options: CFArray) -> Bool
@available(OSX 10.5, *)
func SCNetworkInterfaceSetMTU(_ interface: SCNetworkInterface, _ mtu: Int32) -> Bool
@available(OSX 10.5, *)
func SCNetworkInterfaceForceConfigurationRefresh(_ interface: SCNetworkInterface) -> Bool
@available(OSX 10.5, *)
func SCBondInterfaceCopyAll(_ prefs: SCPreferences) -> CFArray
@available(OSX 10.5, *)
func SCBondInterfaceCopyAvailableMemberInterfaces(_ prefs: SCPreferences) -> CFArray
@available(OSX 10.5, *)
func SCBondInterfaceCreate(_ prefs: SCPreferences) -> SCBondInterface?
@available(OSX 10.5, *)
func SCBondInterfaceRemove(_ bond: SCBondInterface) -> Bool
@available(OSX 10.5, *)
func SCBondInterfaceGetMemberInterfaces(_ bond: SCBondInterface) -> CFArray?
@available(OSX 10.5, *)
func SCBondInterfaceGetOptions(_ bond: SCBondInterface) -> CFDictionary?
@available(OSX 10.5, *)
func SCBondInterfaceSetMemberInterfaces(_ bond: SCBondInterface, _ members: CFArray) -> Bool
@available(OSX 10.5, *)
func SCBondInterfaceSetLocalizedDisplayName(_ bond: SCBondInterface, _ newName: CFString) -> Bool
@available(OSX 10.5, *)
func SCBondInterfaceSetOptions(_ bond: SCBondInterface, _ newOptions: CFDictionary) -> Bool
@available(OSX 10.5, *)
func SCBondInterfaceCopyStatus(_ bond: SCBondInterface) -> SCBondStatus?
@available(OSX 10.5, *)
func SCBondStatusGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
func SCBondStatusGetMemberInterfaces(_ bondStatus: SCBondStatus) -> CFArray?
@available(OSX 10.5, *)
func SCBondStatusGetInterfaceStatus(_ bondStatus: SCBondStatus, _ interface: SCNetworkInterface?) -> CFDictionary?
@available(OSX 10.5, *)
func SCVLANInterfaceCopyAll(_ prefs: SCPreferences) -> CFArray
@available(OSX 10.5, *)
func SCVLANInterfaceCopyAvailablePhysicalInterfaces() -> CFArray
@available(OSX 10.5, *)
func SCVLANInterfaceCreate(_ prefs: SCPreferences, _ physical: SCNetworkInterface, _ tag: CFNumber) -> SCVLANInterface?
@available(OSX 10.5, *)
func SCVLANInterfaceRemove(_ vlan: SCVLANInterface) -> Bool
@available(OSX 10.5, *)
func SCVLANInterfaceGetPhysicalInterface(_ vlan: SCVLANInterface) -> SCNetworkInterface?
@available(OSX 10.5, *)
func SCVLANInterfaceGetTag(_ vlan: SCVLANInterface) -> CFNumber?
@available(OSX 10.5, *)
func SCVLANInterfaceGetOptions(_ vlan: SCVLANInterface) -> CFDictionary?
@available(OSX 10.5, *)
func SCVLANInterfaceSetPhysicalInterfaceAndTag(_ vlan: SCVLANInterface, _ physical: SCNetworkInterface, _ tag: CFNumber) -> Bool
@available(OSX 10.5, *)
func SCVLANInterfaceSetLocalizedDisplayName(_ vlan: SCVLANInterface, _ newName: CFString) -> Bool
@available(OSX 10.5, *)
func SCVLANInterfaceSetOptions(_ vlan: SCVLANInterface, _ newOptions: CFDictionary) -> Bool
@available(OSX 10.4, *)
func SCNetworkProtocolGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func SCNetworkProtocolGetConfiguration(_ protocol: SCNetworkProtocol) -> CFDictionary?
@available(OSX 10.4, *)
func SCNetworkProtocolGetEnabled(_ protocol: SCNetworkProtocol) -> Bool
@available(OSX 10.4, *)
func SCNetworkProtocolGetProtocolType(_ protocol: SCNetworkProtocol) -> CFString?
@available(OSX 10.4, *)
func SCNetworkProtocolSetConfiguration(_ protocol: SCNetworkProtocol, _ config: CFDictionary) -> Bool
@available(OSX 10.4, *)
func SCNetworkProtocolSetEnabled(_ protocol: SCNetworkProtocol, _ enabled: Bool) -> Bool
@available(OSX 10.4, *)
func SCNetworkServiceGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func SCNetworkServiceAddProtocolType(_ service: SCNetworkService, _ protocolType: CFString) -> Bool
@available(OSX 10.4, *)
func SCNetworkServiceCopyAll(_ prefs: SCPreferences) -> CFArray?
@available(OSX 10.4, *)
func SCNetworkServiceCopyProtocols(_ service: SCNetworkService) -> CFArray?
@available(OSX 10.4, *)
func SCNetworkServiceCreate(_ prefs: SCPreferences, _ interface: SCNetworkInterface) -> SCNetworkService?
@available(OSX 10.4, *)
func SCNetworkServiceCopy(_ prefs: SCPreferences, _ serviceID: CFString) -> SCNetworkService?
@available(OSX 10.5, *)
func SCNetworkServiceEstablishDefaultConfiguration(_ service: SCNetworkService) -> Bool
@available(OSX 10.4, *)
func SCNetworkServiceGetEnabled(_ service: SCNetworkService) -> Bool
@available(OSX 10.4, *)
func SCNetworkServiceGetInterface(_ service: SCNetworkService) -> SCNetworkInterface?
@available(OSX 10.4, *)
func SCNetworkServiceGetName(_ service: SCNetworkService) -> CFString?
@available(OSX 10.4, *)
func SCNetworkServiceCopyProtocol(_ service: SCNetworkService, _ protocolType: CFString) -> SCNetworkProtocol?
@available(OSX 10.4, *)
func SCNetworkServiceGetServiceID(_ service: SCNetworkService) -> CFString?
@available(OSX 10.4, *)
func SCNetworkServiceRemove(_ service: SCNetworkService) -> Bool
@available(OSX 10.4, *)
func SCNetworkServiceRemoveProtocolType(_ service: SCNetworkService, _ protocolType: CFString) -> Bool
@available(OSX 10.4, *)
func SCNetworkServiceSetEnabled(_ service: SCNetworkService, _ enabled: Bool) -> Bool
@available(OSX 10.4, *)
func SCNetworkServiceSetName(_ service: SCNetworkService, _ name: CFString) -> Bool
@available(OSX 10.4, *)
func SCNetworkSetGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func SCNetworkSetAddService(_ set: SCNetworkSet, _ service: SCNetworkService) -> Bool
@available(OSX 10.5, *)
func SCNetworkSetContainsInterface(_ set: SCNetworkSet, _ interface: SCNetworkInterface) -> Bool
@available(OSX 10.4, *)
func SCNetworkSetCopyAll(_ prefs: SCPreferences) -> CFArray?
@available(OSX 10.4, *)
func SCNetworkSetCopyCurrent(_ prefs: SCPreferences) -> SCNetworkSet?
@available(OSX 10.4, *)
func SCNetworkSetCopyServices(_ set: SCNetworkSet) -> CFArray?
@available(OSX 10.4, *)
func SCNetworkSetCreate(_ prefs: SCPreferences) -> SCNetworkSet?
@available(OSX 10.4, *)
func SCNetworkSetCopy(_ prefs: SCPreferences, _ setID: CFString) -> SCNetworkSet?
@available(OSX 10.4, *)
func SCNetworkSetGetName(_ set: SCNetworkSet) -> CFString?
@available(OSX 10.4, *)
func SCNetworkSetGetSetID(_ set: SCNetworkSet) -> CFString?
@available(OSX 10.4, *)
func SCNetworkSetGetServiceOrder(_ set: SCNetworkSet) -> CFArray?
@available(OSX 10.4, *)
func SCNetworkSetRemove(_ set: SCNetworkSet) -> Bool
@available(OSX 10.4, *)
func SCNetworkSetRemoveService(_ set: SCNetworkSet, _ service: SCNetworkService) -> Bool
@available(OSX 10.4, *)
func SCNetworkSetSetCurrent(_ set: SCNetworkSet) -> Bool
@available(OSX 10.4, *)
func SCNetworkSetSetName(_ set: SCNetworkSet, _ name: CFString) -> Bool
@available(OSX 10.4, *)
func SCNetworkSetSetServiceOrder(_ set: SCNetworkSet, _ newOrder: CFArray) -> Bool
