//
//  Car.swift
//  ios_hw2_e_book
//
//  Created by mac on 2020/10/18.
//

import Foundation

struct Car{
    let name: String
    let series: String
    let img2: String
    let content: String
    
    #if DEBUG
    static let demoCar = Car(name:"MODEL_S",series: "MODEL S",img2:"MODEL_S2" ,content: "頂級內裝\n\n專為Tesla極靜車廂設計的豪華音響系統\n\n「寒冷氣候套件」具備能加熱車內所有座椅、方向盤、雨刷除霜裝置以及雨刷噴嘴的功能\n\nHEPA空氣過濾系統可防止病毒、細菌以及有害微粒進入車內\n\n透過藍牙®連線的音樂和媒體\n\nLED 霧燈\n\n可抗紫外線和紅外線的有色玻璃車頂\n\n自動防眩、電動摺疊、加熱功能後照鏡\n\n自訂駕駛人設定檔\n\n中控置物台無線手機充電功能"
    )
    #endif
}
