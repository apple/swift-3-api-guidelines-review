
@available(iOS 8.0, *)
let kSecSharedPassword: CFString
@available(iOS 8.0, *)
func SecAddSharedWebCredential(fqdn: CFString, _ account: CFString, _ password: CFString?, _ completionHandler: (CFError?) -> Void)
@available(iOS 8.0, *)
func SecRequestSharedWebCredential(fqdn: CFString?, _ account: CFString?, _ completionHandler: (CFArray?, CFError?) -> Void)
@available(iOS 8.0, *)
func SecCreateSharedWebCredentialPassword() -> CFString?
