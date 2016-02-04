
@available(*, deprecated, renamed="SCNetworkInterface")
typealias SCNetworkInterfaceRef = SCNetworkInterface
class SCNetworkInterface {
}
typealias SCBondInterface = SCNetworkInterface
@available(*, deprecated, renamed="SCBondInterface")
typealias SCBondInterfaceRef = SCBondInterface
@available(*, deprecated, renamed="SCBondStatus")
typealias SCBondStatusRef = SCBondStatus
class SCBondStatus {
}
var kSCBondStatusOK: Int { get }
var kSCBondStatusLinkInvalid: Int { get }
var kSCBondStatusNoPartner: Int { get }
var kSCBondStatusNotInActiveGroup: Int { get }
var kSCBondStatusUnknown: Int { get }
@available(*, deprecated, renamed="SCVLANInterface")
typealias SCVLANInterfaceRef = SCVLANInterface
typealias SCVLANInterface = SCNetworkInterface
class SCNetworkProtocol {
}
@available(*, deprecated, renamed="SCNetworkProtocol")
typealias SCNetworkProtocolRef = SCNetworkProtocol
class SCNetworkService {
}
@available(*, deprecated, renamed="SCNetworkService")
typealias SCNetworkServiceRef = SCNetworkService
@available(*, deprecated, renamed="SCNetworkSet")
typealias SCNetworkSetRef = SCNetworkSet
class SCNetworkSet {
}
