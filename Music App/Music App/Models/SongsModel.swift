//
//  SongsModel.swift
//  Music App
//
//  Created by poonam mittal on 14/08/24.
//

import SwiftUI

struct SongsModel: Identifiable {
    var id: UUID = .init()
    var artist: String
    var audio_url: String
    var cover: String
    var title: String
    var isFavourite: Bool = false
}

var sampleSongModel: [SongsModel] = [
        .init(artist: "Harnoor & Gifty", audio_url: "", cover: "https://i.scdn.co/image/ab67616d0000b27352d87d9044a2acf1a4e3cb4f", title: "Jatta"),
//        .init(artist: "Ammy Virk", audio_url: "", cover: "https://i.ytimg.com/vi/PLNOcdwOB40/maxresdefault.jpg", title: "Ni Kude"),
        .init(artist: "Shubh", audio_url: "", cover: "https://m.media-amazon.com/images/I/51QEZ5G10cL._UXNaN_FMjpg_QL85_.jpg", title: "One Love"),
        .init(artist: "Karan Aujla & Ikky", audio_url: "", cover: "https://c.saavncdn.com/538/Making-Memories-English-2023-20230818075015-500x500.jpg", title: "Softly"),
        .init(artist: "Jordan Sandhu", audio_url: "", cover: "https://i.ytimg.com/vi/PLNOcdwOB40/maxresdefault.jpg", title: "Tareefan"),
        .init(artist: "Lucas", audio_url: "", cover: "https://images.hungama.com/c/1/ab6/eaf/105062274/105062274_300x300.jpg", title: "Dupatta"),
        .init(artist: "Mr. Dass", audio_url: "", cover: "https://m.media-amazon.com/images/I/51bOBamdwyL._UXNaN_FMjpg_QL85_.jpg", title: "Just Friend"),
        .init(artist: "Jass Manak", audio_url: "", cover: "https://i.scdn.co/image/ab67616d0000b273914b03f4b65228bb80d6f980", title: "Marke"),
        .init(artist: "Karan Randhawa", audio_url: "", cover: "https://i1.sndcdn.com/artworks-5uEJlJ6plZ7anBn2-rKLu7Q-t500x500.jpg", title: "Phulkaari"),
        .init(artist: "Nirvair Pannu", audio_url: "", cover: "https://c.saavncdn.com/978/Teri-Ah-Punjabi-2021-20210811044649-500x500.jpg", title: "Teri Ah"),
        .init(artist: "Harnoor & Gifty", audio_url: "", cover: "https://i.scdn.co/image/ab67616d0000b27352d87d9044a2acf1a4e3cb4f", title: "Jatta"),
        .init(artist: "Zehr Vibe", audio_url: "", cover: "https://i.scdn.co/image/ab67616d0000b2736b3733e73fe3d3c903788915", title: "Distance Love"),
        .init(artist: "Shubh", audio_url: "", cover: "https://m.media-amazon.com/images/I/51QEZ5G10cL._UXNaN_FMjpg_QL85_.jpg", title: "One Love")

]
