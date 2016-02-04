
typealias CFTreeRetainCallBack = @convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>
typealias CFTreeReleaseCallBack = @convention(c) (UnsafePointer<Void>) -> Void
typealias CFTreeCopyDescriptionCallBack = @convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!
struct CFTreeContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFTreeRetainCallBack!
  var release: CFTreeReleaseCallBack!
  var copyDescription: CFTreeCopyDescriptionCallBack!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: CFTreeRetainCallBack!, release: CFTreeReleaseCallBack!, copyDescription: CFTreeCopyDescriptionCallBack!)
}
typealias CFTreeApplierFunction = @convention(c) (UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void
class CFTree {
}
func CFTreeGetTypeID() -> CFTypeID
func CFTreeCreate(allocator: CFAllocator!, _ context: UnsafePointer<CFTreeContext>) -> CFTree!
func CFTreeGetParent(tree: CFTree!) -> CFTree!
func CFTreeGetNextSibling(tree: CFTree!) -> CFTree!
func CFTreeGetFirstChild(tree: CFTree!) -> CFTree!
func CFTreeGetContext(tree: CFTree!, _ context: UnsafeMutablePointer<CFTreeContext>)
func CFTreeGetChildCount(tree: CFTree!) -> CFIndex
func CFTreeGetChildAtIndex(tree: CFTree!, _ idx: CFIndex) -> CFTree!
func CFTreeGetChildren(tree: CFTree!, _ children: UnsafeMutablePointer<Unmanaged<CFTree>?>)
func CFTreeApplyFunctionToChildren(tree: CFTree!, _ applier: CFTreeApplierFunction!, _ context: UnsafeMutablePointer<Void>)
func CFTreeFindRoot(tree: CFTree!) -> CFTree!
func CFTreeSetContext(tree: CFTree!, _ context: UnsafePointer<CFTreeContext>)
func CFTreePrependChild(tree: CFTree!, _ newChild: CFTree!)
func CFTreeAppendChild(tree: CFTree!, _ newChild: CFTree!)
func CFTreeInsertSibling(tree: CFTree!, _ newSibling: CFTree!)
func CFTreeRemove(tree: CFTree!)
func CFTreeRemoveAllChildren(tree: CFTree!)
func CFTreeSortChildren(tree: CFTree!, _ comparator: CFComparatorFunction!, _ context: UnsafeMutablePointer<Void>)
