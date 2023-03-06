//
//  ContentView.swift
//  Ios4PmBatch
//
//  Created by MD SHAFIQ PATEL on 03/03/23.
//

import SwiftUI
var n1 = 0
struct March6ClassView: View {
    
    @State var num = 0
    var body: some View{
        VStack{
            
            Text("Numbers Below \(num)")
            HStack{
                Text("One")
                Text("Two")
                Text("Three")
            }
            
            HStack{
                Text("four")
                Text("five")
                Text("six")
            }
            
            Button("ClickMe"){
                num = num + 1;
                
                print("num: \(num)")
            }
            
           NumbersList()
            
            
            
           
          
            
            
        }
       
        
    
    }
}

struct MyCustomText: View{
    let x1:Int
    var body: some View{
        
        Button {
            print("i am clicked \(x1)")
        } label: {
            Text("\(x1)")
                .frame(width: 100, height:100)
                .foregroundColor(Color.yellow)
                .background(Color.blue)
                .cornerRadius(10)
                .shadow(color: Color.gray, radius: 5, x: 5, y: 5)
                .font(.title)
        }
        
     
            
    }
}

struct NumbersList: View {
    var body: some View {
        HStack{
             MyCustomText(x1: 1)
             MyCustomText(x1: 2)
            MyCustomText(x1: 3)
        }
        
        HStack{
             MyCustomText(x1: 4)
             MyCustomText(x1: 5)
            MyCustomText(x1: 6)
        }
        
        HStack{
            MyCustomText(x1: 7)
             MyCustomText(x1: 8)
            MyCustomText(x1: 9)
        }
    }
}

struct Macrh6ClassView_Previews: PreviewProvider {
    static var previews: some View {
      March6ClassView()
    }
}


