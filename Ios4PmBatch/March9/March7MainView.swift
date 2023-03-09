//
//  March7MainView.swift
//  Ios4PmBatch
//
//  Created by MD SHAFIQ PATEL on 09/03/23.
//

import SwiftUI

let screenWidth = UIScreen.main.bounds.size.width

struct Args{
    var digit:String = "1"
    var fColor:Color = Color.white
    var bColor:Color = Color("darkGrey")
    var sWidth:CGFloat = UIScreen.main.bounds.size.width/4 - 10
}

struct March7MainView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack{
                Spacer()
                
                Text("0")
                    .padding(.horizontal,15)
                    .frame(width: screenWidth, alignment:.trailing)
                    .foregroundColor(Color.white)
                    .font(.system(size: 60))
                
                    
                  
              
                ButtonsLine(nums: [Args(digit: "AC", fColor: Color.black, bColor: Color.gray),
                                   Args(digit: "+/-", fColor: Color.black, bColor: Color.gray),
                                   Args(digit: "%", fColor: Color.black, bColor: Color.gray),
                                   Args(digit: "/" , bColor: Color.orange)])
                
                ButtonsLine(nums: [Args(digit: "7"),
                                   Args(digit: "8"),
                                   Args(digit: "9"),
                                   Args(digit: "X", bColor: Color.orange)])
                ButtonsLine(nums: [Args(digit: "4"),
                                   Args(digit: "5"),
                                   Args(digit: "6"),
                                   Args(digit: "-", bColor: Color.orange)])
                ButtonsLine(nums: [Args(digit: "1"),
                                   Args(digit: "2"),
                                   Args(digit: "3"),
                                   Args(digit: "+", bColor: Color.orange)])
                
                ButtonsLine(nums: [Args(digit: "0"),
                                   Args(digit: "."),
                                   Args(digit: "=", bColor: Color.orange)])
               
            }
        }
    }
}

struct MyButton1: View {
    let arg:Args
    var body: some View {
        
            Button {
                print("item digit is \(arg.digit)")
            } label: {
                Text("\(arg.digit)")
                    .frame(width: arg.digit == "0" ? arg.sWidth*2 : arg.sWidth, height: arg.sWidth)
                    .background(arg.bColor)
                    .foregroundColor(arg.fColor)
                    .cornerRadius(screenWidth/5)
                .font(.title)
            }


    }
}

struct ButtonsLine: View {
    let nums:[Args]
    var body: some View {
        
        HStack{
            MyButton1(arg: nums[0])
            MyButton1(arg: nums[1])
            MyButton1(arg: nums[2])
            
            if(nums.count > 3 ){
                MyButton1(arg: nums[3])
            }
           
           
        }
       
       
    }
}



struct March7MainView_Previews: PreviewProvider {
    static var previews: some View {
        March7MainView()
    }
}
