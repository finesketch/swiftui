//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Kyle Chew on 6/15/19.
//  Copyright © 2019 FineSketch. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"].identified(by: \.self)) { deviceName in
            LandmarkList()
                .environmentObject(UserData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
#endif
