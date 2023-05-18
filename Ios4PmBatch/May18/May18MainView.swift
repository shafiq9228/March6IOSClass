//
//  May18MainView.swift
//  Ios4PmBatch
//
//  Created by MD SHAFIQ PATEL on 18/05/23.
//

import SwiftUI

struct May18MainView: View {
    @State var b1 = false
    var body: some View {
        VStack {
            Button("Open Sheet"){
                b1.toggle()
            }
        }
        
        .alert(isPresented: $b1) {
            Alert(title: Text("Update Camera"),message: Text("Select the process to proceed"), primaryButton: .default(Text("Yes"), action: {
                print("yes selected")
                
            }), secondaryButton: .default(Text("NO"),action: {
                print("No selected")
            }))
        }
        
//        .alert(isPresented: $b1) {
//            Alert(title: Text("Succefully updated"))
//        }
        
        /*
        .actionSheet(isPresented: $b1) {
            ActionSheet(title: Text("Select Drink"), message: Text("Drinks menu is below to select"), buttons: [
                .default(Text("Coffe"), action: {
                    print("selected coffe")
                }),
                .default(Text("Tea"), action: {
                    print("selected Tea")
                }),
                
                    .cancel()
            ])
        }
         
         */
        
//        .fullScreenCover(isPresented: $b1) {
//            May18Sheet1View()
//        }
        
//        .sheet(isPresented: $b1) {
//            May18Sheet1View()
//        }
    }
}



struct May18MainView_Previews: PreviewProvider {
    static var previews: some View {
        May18MainView()
    }
}
