
@available(watchOS 2.0, *)
func SecCertificateGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func SecCertificateCreateWithData(allocator: CFAllocator?, _ data: CFData) -> SecCertificate?
@available(watchOS 2.0, *)
func SecCertificateCopyData(certificate: SecCertificate) -> CFData
@available(watchOS 2.0, *)
func SecCertificateCopySubjectSummary(certificate: SecCertificate) -> CFString
