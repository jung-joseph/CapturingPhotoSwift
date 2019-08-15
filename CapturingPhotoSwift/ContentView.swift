//
//  ContentView.swift
//  CapturingPhotoSwift
//
//  Created by Joseph Jung on 8/14/19.
//  Copyright © 2019 Joseph Jung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showImagePicker: Bool = false
    @State private var image: Image? = nil
    var body: some View {
        VStack {
            
            image?.resizable()
                .scaledToFit()
            
            Button("Open Camera"){
                
                self.showImagePicker = true
                
            }.padding()
                .background(Color.green)
                .foregroundColor(Color.white)
                .cornerRadius(10)
            
            
        }.sheet(isPresented: self.$showImagePicker) {
            PhotoCaptureView(showImagePicker: self.$showImagePicker, image: self.$image)
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
