//
//  CarDetail.swift
//  ios_hw2_e_book
//
//  Created by mac on 2020/10/18.
//

import SwiftUI

struct CarDetail: View {
    let car: Car
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators:false){
            HStack(spacing:20){
        Image(car.name)
            .resizable()
            //.scaledToFill()
            .frame(width:375,height:300)
            .clipped()
        Image(car.img2)
            .resizable()
                //.scaledToFill()
            .frame(width:375,height:300)
            .clipped()
        }
            Spacer()
        }
            
        ScrollView{
            Link("官網\n",destination:URL(string:"https://www.tesla.com/zh_tw")!)
                Text(car.content)
           // }
        }
        .navigationTitle(car.series)
    }
}

struct CarDetail_Previews:
    PreviewProvider {
    static var previews: some View {
        CarDetail(car: .demoCar) //Car(name:"MODEL_S",series: "MODEL S"))
//            .previewLayout(.fixed(width: 300, height: 70))
    }
}
