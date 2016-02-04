
protocol GKSessionDelegate : ObjectProtocol {
  @available(iOS 3.0, *)
  optional func session(session: GKSession, peer peerID: String, didChange state: GKPeerConnectionState)
  @available(iOS 3.0, *)
  optional func session(session: GKSession, didReceiveConnectionRequestFromPeer peerID: String)
  @available(iOS 3.0, *)
  optional func session(session: GKSession, connectionWithPeerFailed peerID: String, withError error: Error)
  @available(iOS 3.0, *)
  optional func session(session: GKSession, didFailWithError error: Error)
}
protocol GKVoiceChatClient : ObjectProtocol {
  @available(iOS 3.0, *)
  func voiceChatService(voiceChatService: GKVoiceChatService, send data: Data, toParticipantID participantID: String)
  func participantID() -> String
  @available(iOS 3.0, *)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, sendRealTime data: Data, toParticipantID participantID: String)
  @available(iOS 3.0, *)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didStartWithParticipantID participantID: String)
  @available(iOS 3.0, *)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didNotStartWithParticipantID participantID: String, error: Error?)
  @available(iOS 3.0, *)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didStopWithParticipantID participantID: String, error: Error?)
  @available(iOS 3.0, *)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didReceiveInvitationFromParticipantID participantID: String, callID: Int)
}
