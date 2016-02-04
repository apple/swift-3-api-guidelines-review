
@available(OSX 10.9, *)
func CWKeychainFindWiFiPassword(domain: CWKeychainDomain, _ ssid: Data, _ password: AutoreleasingUnsafeMutablePointer<NSString?>) -> OSStatus
@available(OSX 10.9, *)
func CWKeychainSetWiFiPassword(domain: CWKeychainDomain, _ ssid: Data, _ password: String) -> OSStatus
@available(OSX 10.9, *)
func CWKeychainDeleteWiFiPassword(domain: CWKeychainDomain, _ ssid: Data) -> OSStatus
@available(OSX 10.9, *)
func CWKeychainFindWiFiEAPUsernameAndPassword(domain: CWKeychainDomain, _ ssid: Data, _ username: AutoreleasingUnsafeMutablePointer<NSString?>, _ password: AutoreleasingUnsafeMutablePointer<NSString?>) -> OSStatus
@available(OSX 10.9, *)
func CWKeychainSetWiFiEAPUsernameAndPassword(domain: CWKeychainDomain, _ ssid: Data, _ username: String?, _ password: String?) -> OSStatus
@available(OSX 10.9, *)
func CWKeychainDeleteWiFiEAPUsernameAndPassword(domain: CWKeychainDomain, _ ssid: Data) -> OSStatus
@available(OSX 10.9, *)
func CWKeychainCopyWiFiEAPIdentity(domain: CWKeychainDomain, _ ssid: Data, _ identity: UnsafeMutablePointer<Unmanaged<SecIdentity>?>) -> OSStatus
@available(OSX 10.9, *)
func CWKeychainSetWiFiEAPIdentity(domain: CWKeychainDomain, _ ssid: Data, _ identity: SecIdentity?) -> OSStatus
@available(OSX 10.7, *)
func CWKeychainCopyEAPIdentityList(list: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> OSStatus
@available(OSX 10.7, *)
func CWMergeNetworks(networks: Set<CWNetwork>) -> Set<CWNetwork>
