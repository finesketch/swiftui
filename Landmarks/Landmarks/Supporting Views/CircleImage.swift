//
//  CircleImage.swift
//  Landmarks
//
//  Created by Kyle Chew on 6/9/19.
//  Copyright © 2019 FineSketch. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
#endif
