//
//  MusicInfo.swift
//  Music App
//
//  Created by poonam mittal on 14/08/24.
//

import SwiftUI

struct MusicInfo: View {
    
    @Binding var expandSheet: Bool
    var animation: Namespace.ID
    
    @EnvironmentObject var songManager: SongManager
    
    var body: some View {
        HStack(spacing: 0) {
            ZStack {
                if !expandSheet {
                    GeometryReader {
                        let size = $0.size
                        AsyncImage(url: URL(string: songManager.song.cover)) { img in
                            img.resizable()
                                .scaledToFill()
                               
                        } placeholder: {
                            ProgressView()
                                .background(.white.opacity(0.1))
                                .cornerRadius(5)
                        }
                       
                            .frame(width: size.width, height: size.height)
                            .cornerRadius(60)
                        CircleProgressView(progress: 40)
                            .frame(width: size.width, height: size.height)
                        
                        
//                            .clipShape(.cornerRadius(10), style: .continuous)
                           
                    }
                    .matchedGeometryEffect(id: "SONGCOVER", in: animation)
                }
            }
            .frame(width: 55, height: 55)
            
            Text("\(songManager.song.title)")
                .fontWeight(.semibold)
                .lineLimit(1)
                .padding(.horizontal, 15)
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "pause.fill")
                    .font(.title2)
                    .foregroundColor(.black)
                    .padding()
                    .background(.white)
                    //.clipShape(Circle())
            }

        }
        .foregroundColor(.white)
        .padding(.horizontal, 20)
        .frame(height: 80)
        .onTapGesture {
            // exapnding botton sheet
            withAnimation(.easeInOut(duration: 0.3)) {
                expandSheet = true
            }
        }
    }
}

struct MusicInfo_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}


struct CircleProgressView: View {
    
    let progress: Double
    
    var body: some View {
        
        ZStack {
            Circle()
                .stroke(Color.clear,
                        lineWidth: 4)
            
            Circle()
                .trim(from: 0, to: 0.25)
                .stroke(Color.blue,
                        style: StrokeStyle(lineWidth: 4, lineCap: .round))
                .rotationEffect(.degrees(-90))
            
        }
        
    }
    
    
}
