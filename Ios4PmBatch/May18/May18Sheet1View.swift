//
//  May18Sheet1View.swift
//  Ios4PmBatch
//
//  Created by MD SHAFIQ PATEL on 18/05/23.
//

import SwiftUI

struct May18Sheet1View: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Color.yellow.edgesIgnoringSafeArea(.all)
            VStack {
                Text("I am Sheet")
                Text("I am Sheet")
                Text("I am Sheet")
                Button("dismiss"){
                    dismiss()
                }
            }
        }
    }
}

struct May18Sheet1View_Previews: PreviewProvider {
    static var previews: some View {
        May18Sheet1View()
    }
}
