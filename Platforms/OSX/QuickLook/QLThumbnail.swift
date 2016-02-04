
class QLThumbnail {
}
func QLThumbnailGetTypeID() -> CFTypeID
@available(OSX 10.6, *)
func QLThumbnailCreate(allocator: CFAllocator!, _ url: CFURL!, _ maxThumbnailSize: CGSize, _ options: CFDictionary!) -> Unmanaged<QLThumbnail>!
@available(OSX 10.6, *)
func QLThumbnailCopyDocumentURL(thumbnail: QLThumbnail!) -> Unmanaged<CFURL>!
@available(OSX 10.6, *)
func QLThumbnailGetMaximumSize(thumbnail: QLThumbnail!) -> CGSize
@available(OSX 10.6, *)
func QLThumbnailCopyOptions(thumbnail: QLThumbnail!) -> Unmanaged<CFDictionary>!
@available(OSX 10.6, *)
func QLThumbnailDispatchAsync(thumbnail: QLThumbnail!, _ queue: dispatch_queue_t!, _ completion: dispatch_block_t!)
@available(OSX 10.6, *)
func QLThumbnailCopyImage(thumbnail: QLThumbnail!) -> Unmanaged<CGImage>!
@available(OSX 10.6, *)
func QLThumbnailGetContentRect(thumbnail: QLThumbnail!) -> CGRect
@available(OSX 10.6, *)
func QLThumbnailCancel(thumbnail: QLThumbnail!)
@available(OSX 10.6, *)
func QLThumbnailIsCancelled(thumbnail: QLThumbnail!) -> Bool
