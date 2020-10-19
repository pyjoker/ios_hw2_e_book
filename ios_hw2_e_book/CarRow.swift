//
//  CarRow.swift
//  ios_hw2_e_book
//
//  Created by mac on 2020/10/18.
//

import SwiftUI

struct CarRow: View {
    let car: Car
    var body:some View{
        HStack{
            Image(car.name)
                .resizable()
                .frame(width:170,height:100)
         //.clipped()
            Text(car.series)
            Spacer()
        }
    }
}

struct CarRow_Previews: PreviewProvider {
    static var previews: some View {
        CarRow(car: .demoCar)
            .previewLayout(.sizeThatFits)
        //Car(name:"MODEL_S",series: "MODEL S"))
//            .previewLayout(.fixed(width: 300, height: 70))
    }
  
}
