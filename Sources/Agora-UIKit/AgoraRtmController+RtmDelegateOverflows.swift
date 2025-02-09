//
//  AgoraRtmController+RtmDelegateOverflows.swift
//  
//
//  Created by Max Cobb on 29/09/2021.
//

import AgoraRtmKit

extension AgoraRtmController {
    open func rtmKit(_ kit: AgoraRtmKit, peersOnlineStatusChanged onlineStatus: [AgoraRtmPeerOnlineStatus]) {
        self.agoraSettings.rtmDelegate?.rtmKit?(kit, peersOnlineStatusChanged: onlineStatus)
    }
    open func rtmKit(_ kit: AgoraRtmKit, fileMessageReceived message: AgoraRtmFileMessage, fromPeer peerId: String) {
        self.agoraSettings.rtmDelegate?.rtmKit?(kit, fileMessageReceived: message, fromPeer: peerId)
    }
    open func rtmKit(_ kit: AgoraRtmKit, imageMessageReceived message: AgoraRtmImageMessage, fromPeer peerId: String) {
        self.agoraSettings.rtmDelegate?.rtmKit?(kit, imageMessageReceived: message, fromPeer: peerId)
    }
    open func rtmKit(_ kit: AgoraRtmKit, media requestId: Int64, uploadingProgress progress: AgoraRtmMediaOperationProgress) {
        self.agoraSettings.rtmDelegate?.rtmKit?(kit, media: requestId, uploadingProgress: progress)
    }
    open func rtmKit(_ kit: AgoraRtmKit, media requestId: Int64, downloadingProgress progress: AgoraRtmMediaOperationProgress) {
        self.agoraSettings.rtmDelegate?.rtmKit?(kit, media: requestId, downloadingProgress: progress)
    }
    open func rtmKit(_ kit: AgoraRtmKit, connectionStateChanged state: AgoraRtmConnectionState, reason: AgoraRtmConnectionChangeReason) {
        self.agoraSettings.rtmDelegate?.rtmKit?(kit, connectionStateChanged: state, reason: reason)
    }
}

extension AgoraRtmController {
    open func channel(_ channel: AgoraRtmChannel, memberCount count: Int32) {
        self.agoraSettings.rtmChannelDelegate?.channel?(channel, memberCount: count)
    }
    open func channel(_ channel: AgoraRtmChannel, memberLeft member: AgoraRtmMember) {
        self.agoraSettings.rtmChannelDelegate?.channel?(channel, memberLeft: member)
    }
    open func channel(_ channel: AgoraRtmChannel, attributeUpdate attributes: [AgoraRtmChannelAttribute]) {
        self.agoraSettings.rtmChannelDelegate?.channel?(channel, attributeUpdate: attributes)
    }
    open func channel(_ channel: AgoraRtmChannel, fileMessageReceived message: AgoraRtmFileMessage, from member: AgoraRtmMember) {
        self.agoraSettings.rtmChannelDelegate?.channel?(channel, fileMessageReceived: message, from: member)
    }
    open func channel(_ channel: AgoraRtmChannel, imageMessageReceived message: AgoraRtmImageMessage, from member: AgoraRtmMember) {
        self.agoraSettings.rtmChannelDelegate?.channel?(channel, imageMessageReceived: message, from: member)
    }
}

