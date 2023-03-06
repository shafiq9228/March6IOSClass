//
//  HomeView.swift
//  Ios4PmBatch
//
//  Created by MD SHAFIQ PATEL on 03/03/23.
//

import SwiftUI
var name = "Shafiq Patel"
struct HomeView: View {
    var markks:Int = 99
    var body: some View {
        Text("My New Home \(markks)")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
