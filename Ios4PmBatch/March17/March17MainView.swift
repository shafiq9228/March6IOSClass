//
//  March17MainView.swift
//  Ios4PmBatch
//
//  Created by MD SHAFIQ PATEL on 17/03/23.
//

import SwiftUI

struct March17MainView: View {
    var body: some View {
      TabPage()
    }
}

struct TabPage: View {
    var body: some View {
        TabView{
            
            Page1()
            
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            Page2()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
            
            Page3()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("profile")
                }
            
            
            Page2()
                .tabItem {
                    Image(systemName: "network")
                    Text("Network")
                }
        }
    }
}

struct NavPage: View {
    var body: some View {
        NavigationView {
            
            VStack {
                Text("Home Page")
                
                NavigationLink(destination: {
                    Page1()
                }, label: {
                    Text("Go To Page 1")
                })
            }
            
            
            
        
                .navigationTitle("Home")
                
        }
    }
}

struct Page1: View {
    var body: some View {
        ZStack {
            Color(red:1.0,green:0.8, blue: 1.0).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Page 1")
                    .font(.title)
                
                NavigationLink(destination: {
                    Page2()
                }, label: {
                    Text("Go To Page 2")
                })
            }
        }
        .navigationTitle("Page1")
    }
}

struct Page2: View {
    var body: some View {
        ZStack {
            Color(red:1.0,green:1.0, blue: 0.9).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Page 2")
                    .font(.title)
                
                NavigationLink(destination: {
                    Page3()
                }, label: {
                    Text("Go To Page 3")
                })
            }
        }
    }
}

struct Page3: View {
    var body: some View {
        ZStack {
            Color(red:1.0, green:0.9, blue: 0.9).edgesIgnoringSafeArea(.all)
            Text("Page 3")
                .font(.title)
        }
    }
}



struct March17MainView_Previews: PreviewProvider {
    static var previews: some View {
        March17MainView()
    }
}
