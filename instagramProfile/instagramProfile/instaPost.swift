//
//  instaPost.swift
//  instagramProfile
//
//  Created by DDUKK on 17/10/24.
//

import SwiftUI

struct instaPost: View {
    var post: String = "post0"
    var body: some View {
        VStack{
            HStack(alignment: VerticalAlignment.top){
                HStack{
                    Image("photo").resizable().aspectRatio(contentMode: ContentMode.fill).frame(width: 50, height: 50).clipShape(Circle())
                    VStack(alignment: HorizontalAlignment.leading){
                        Text("midhunn.m_")
                        Text("Kochi, Kerala").font(.system(size: 12))
                    }
                }
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.horizontal)
            Image(post).resizable().aspectRatio(contentMode: ContentMode.fit)
            HStack{
                HStack{
                    Image.init(systemName: "heart")
                    Text("311")
                    Image.init(systemName: "bubble.left")
                    Text("56")
                    Image.init(systemName: "paperplane")
                    Text("4")
                }
                Spacer()
                Image(systemName: "bookmark").resizable().frame(width: 20, height: 22)
            }.padding(.horizontal)
            
            Spacer()
        }
    }
}

struct instaPost_Previews: PreviewProvider {
    static var previews: some View {
        instaPost()
    }
}
