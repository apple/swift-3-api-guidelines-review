
@available(tvOS 2.0, *)
func SecCertificateGetTypeID() -> CFTypeID
@available(tvOS 2.0, *)
func SecCertificateCreateWithData(_ allocator: CFAllocator?, _ data: CFData) -> SecCertificate?
@available(tvOS 2.0, *)
func SecCertificateCopyData(_ certificate: SecCertificate) -> CFData
@available(tvOS 2.0, *)
func SecCertificateCopySubjectSummary(_ certificate: SecCertificate) -> CFString
