//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Kyle Chew on 6/15/19.
//  Copyright © 2019 FineSketch. All rights reserved.
//

import SwiftUI

struct LandmarkRow : View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image(forSize: 50)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

#if DEBUG
struct LandmarkRow_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[1])
            LandmarkRow(landmark: landmarkData[2])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
#endif
