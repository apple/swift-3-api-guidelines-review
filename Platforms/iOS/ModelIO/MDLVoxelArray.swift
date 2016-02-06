
typealias MDLVoxelIndex = vector_int4
struct MDLVoxelIndexExtent {
  var minimumExtent: MDLVoxelIndex
  var maximumExtent: MDLVoxelIndex
  init()
  init(minimumExtent: MDLVoxelIndex, maximumExtent: MDLVoxelIndex)
}
@available(iOS 9.0, *)
class MDLVoxelArray : Object {
  init(asset: MDLAsset, divisions: Int32, interiorShells: Int32, exteriorShells: Int32, patchRadius: Float)
  init(asset: MDLAsset, divisions: Int32, interiorNBWidth: Float, exteriorNBWidth: Float, patchRadius: Float)
  init(data voxelData: Data, boundingBox: MDLAxisAlignedBoundingBox, voxelExtent: Float)
  func meshUsing(allocator: MDLMeshBufferAllocator?) -> MDLMesh?
  func voxelExistsAt(index index: MDLVoxelIndex, allowAnyX: Bool, allowAnyY: Bool, allowAnyZ: Bool, allowAnyShell: Bool) -> Bool
  func setVoxelAt(index index: MDLVoxelIndex)
  func setVoxelsFor(mesh: MDLMesh, divisions: Int32, interiorShells: Int32, exteriorShells: Int32, patchRadius: Float)
  func setVoxelsFor(mesh: MDLMesh, divisions: Int32, interiorNBWidth: Float, exteriorNBWidth: Float, patchRadius: Float)
  func voxelsWithin(extent: MDLVoxelIndexExtent) -> Data?
  func voxelIndices() -> Data?
  func unionWith(voxels voxels: MDLVoxelArray)
  func differenceWith(voxels voxels: MDLVoxelArray)
  func intersectWith(voxels voxels: MDLVoxelArray)
  func indexOf(spatialLocation location: vector_float3) -> MDLVoxelIndex
  func spatialLocationOf(index index: MDLVoxelIndex) -> vector_float3
  func voxelBoundingBoxAt(index index: MDLVoxelIndex) -> MDLAxisAlignedBoundingBox
  var count: Int { get }
  var voxelIndexExtent: MDLVoxelIndexExtent { get }
  var boundingBox: MDLAxisAlignedBoundingBox { get }
  init()
}
