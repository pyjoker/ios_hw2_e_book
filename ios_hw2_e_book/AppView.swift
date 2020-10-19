//
//  AppView.swift
//  ios_hw2_e_book
//
//  Created by mac on 2020/10/18.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            CarList()
                .tabItem {
                    Image(systemName:"pencil")
                    Text("系列")
                }
            
            ContentView()
                .tabItem {
                    Image(systemName:"person.fill")
                    Text("關於") }
            Morepic()
                .tabItem{
                    Image(systemName:"paperplane.fill")
                    Text("更多圖片")
                }
        }
        .accentColor(.purple)
       // .tabViewStyle(PageTabViewStyle())
        
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
