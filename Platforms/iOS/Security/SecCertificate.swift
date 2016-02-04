
@available(iOS 2.0, *)
func SecCertificateGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func SecCertificateCreateWithData(allocator: CFAllocator?, _ data: CFData) -> SecCertificate?
@available(iOS 2.0, *)
func SecCertificateCopyData(certificate: SecCertificate) -> CFData
@available(iOS 2.0, *)
func SecCertificateCopySubjectSummary(certificate: SecCertificate) -> CFString
