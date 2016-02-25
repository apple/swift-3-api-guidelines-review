
protocol GKPeerPickerControllerDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func peerPickerController(_ picker: GKPeerPickerController, didSelectConnectionType type: GKPeerPickerConnectionType)
  @available(iOS 3.0, *)
  optional func peerPickerController(_ picker: GKPeerPickerController, sessionForConnectionType type: GKPeerPickerConnectionType) -> GKSession
  @available(iOS 3.0, *)
  optional func peerPickerController(_ picker: GKPeerPickerController, didConnectPeer peerID: String, toSession session: GKSession)
  @available(iOS 3.0, *)
  optional func peerPickerControllerDidCancel(_ picker: GKPeerPickerController)
}
