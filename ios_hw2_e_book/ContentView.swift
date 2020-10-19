//
//  ContentView.swift
//  ios_hw2_e_book
//
//  Created by mac on 2020/10/14.
//

import SwiftUI


struct ContentView: View {
    @State private var rotateDegree:Double = 0
    var body: some View {
//        NavigationView{
//            VStack{
//                NavigationLink( destination: RightPersonView()){
//                Image("MODEL_S")
//                    .resizable()
//          .frame(width:200,height:200)
//                }
//                NavigationLink("對的時間點",destination:RightPersonView())
//                    .font(.largeTitle)
//                    .foregroundColor(.red)
//            }
//            .navigationTitle("Tesla全系列")
//            //.navigationBarTitle(Text("Tesla全系列"),displayMode: .inline)
//
//        }
        VStack{
            Image("spacex")
                .resizable()
                //.opacity(opacity)
                .rotationEffect(.degrees(rotateDegree))
                .animation(.interactiveSpring())
            Button("轉轉轉轉轉"){
                rotateDegree = 270
            }
            .font(.title)
            TextEditor(text:.constant("""
特斯拉(英語：Tesla Inc.)，曾經叫做特斯拉汽車，是美國最大的電動汽車及太陽能板公司，產銷電動汽車、太陽能板及儲能設備。公司最初由馬丁·艾伯哈德(Martin Eberhard)和馬克·塔彭寧(Marc Tarpenning)於2003年7月1日所創辦。\n\n創始人將公司命名為「特斯拉汽車(Tesla Motors)」，以紀念物理學家尼古拉·特斯拉(Nikola Tesla)。\n\n上圖為Musk的另一家公司SpaceX火箭概念圖
"""))
                .accentColor(.clear)
                .frame(width:300,height:350)
        }
    }
}

struct RightPersonView:View{
    var body:some View{
        Image("MODEL_S")
            .resizable()
            .navigationTitle("MODEL S")
            .frame(width:200,height:200)
           // .navigationBarTitle(Text("系列"),displayMode: .inline)
    }
}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        //CarRow()
//        ContentView()
////        NavigationView{
////            RightPersonView()
//        //}
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
