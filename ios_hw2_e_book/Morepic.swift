//
//  Morepic.swift
//  ios_hw2_e_book
//
//  Created by mac on 2020/10/19.
//

import SwiftUI

struct Morepic: View {
    var body: some View {
            let teslacars=[
                "tesla01",
                "tesla02",
                "tesla03",
                "tesla04",
                "tesla05",
                "tesla06",
                "tesla07",
                "tesla08",
                "tesla09"
            ]
        VStack{
        ScrollView(.horizontal) {
            let rows = [
                GridItem()
            ]
            LazyHGrid(rows:rows) {
                ForEach(teslacars.indices) { (index) in
                    VStack {
                        Rectangle()
                            .aspectRatio(1, contentMode: .fit)
                            .overlay(
                                Image(teslacars[index])
                                    .resizable()
                                    .scaledToFill()
                            )
                            .clipped()
                        Text(teslacars[index])
                            
                    }
                    .overlay(
                        Image(systemName: "\(index+1).circle.fill")
                            .font(.largeTitle)
                        , alignment: .topLeading)
                }
            }
            }
        .fixedSize(horizontal: false, vertical: true)
        //}
            ScrollView(.vertical) {
                let columns = [
                    GridItem(),
                    GridItem()
                ]
                LazyVGrid(columns: columns) {
                    ForEach(teslacars.indices) { (index) in
                        VStack {
                            Rectangle()
                                .aspectRatio(1, contentMode: .fit)
                                .overlay(
                                    Image(teslacars[index])
                                        .resizable()
                                        .scaledToFill()
                                )
                                .clipped()
                            Text(teslacars[index])
                                .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                        }
                        .overlay(
                            Image(systemName: "\(index+1).circle.fill")
                                .font(.largeTitle)
                            , alignment: .topLeading)
                    }
                }
                
            }
        }
    }
}

struct Morepic_Previews: PreviewProvider {
    static var previews: some View {
        Morepic()
    }
}
