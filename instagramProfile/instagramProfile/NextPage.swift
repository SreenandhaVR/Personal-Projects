//
//  NextPage.swift
//  instagramProfile
//
//  Created by DDUKK on 18/10/24.
//

import SwiftUI

struct NextPage: View {
    @EnvironmentObject var profile : Profile
    var body: some View {
        VStack{
            Text("Available Balance")
            Text(profile.isLoggedIn ? "$1000" : "$XXXX")
        }
        
    }
}

struct NextPage_Previews: PreviewProvider {
    static var previews: some View {
        NextPage()
    }
}
