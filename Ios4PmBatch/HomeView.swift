//
//  HomeView.swift
//  Ios4PmBatch
//
//  Created by MD SHAFIQ PATEL on 03/03/23.
//

import SwiftUI
var name = ["Home", "Settings", "Exit", "Open"]
struct HomeView: View {
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            VStack {
                ForEach(0 ..< 5){ x in
                    HStack {
                        ForEach(0 ..< 6){ x in
                            
                            Text("")
                                .frame(width: 50, height: 50)
                                .background(Color.blue)
                        }
                    }
                    
                }
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
