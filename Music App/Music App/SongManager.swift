//
//  SongManager.swift
//  Music App
//
//  Created by poonam mittal on 14/08/24.
//

import SwiftUI

class SongManager: ObservableObject {
    @Published private(set) var song: SongsModel = SongsModel(artist: "", audio_url: "", cover: "", title: "")
    
    func playSong(song: SongsModel) {
        self.song = song
    }
}
