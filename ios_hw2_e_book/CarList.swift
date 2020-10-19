//
//  CarList.swift
//  ios_hw2_e_book
//
//  Created by mac on 2020/10/18.
//

import SwiftUI

struct CarList: View {
    let cars=[
        Car(name:"MODEL_S",series: "MODEL S",img2:"MODEL_S2", content: "頂級內裝\n\n專為Tesla極靜車廂設計的豪華音響系統\n\n「寒冷氣候套件」具備能加熱車內所有座椅、方向盤、雨刷除霜裝置以及雨刷噴嘴的功能\n\nHEPA空氣過濾系統可防止病毒、細菌以及有害微粒進入車內\n\n透過藍牙®連線的音樂和媒體\n\nLED 霧燈\n\n可抗紫外線和紅外線的有色玻璃車頂\n\n自動防眩、電動摺疊、加熱功能後照鏡\n\n自訂駕駛人設定檔\n\n中控置物台無線手機充電功能"
        ),
        Car(name:"MODEL_3",series:"MODEL 3",img2:"MODEL_3_img2",content:"Model 3為Tesla的入門平價純電動房車，其有堅固的車身結構、近乎50：50重量平衡分佈及卓越的低重心設計，同時加速性及操控性依舊犀利，以無可比擬的續航表現和安全性，打造新世代房車的駕駛體驗。\n\n Model 3有著大面積玻璃車頂，其15吋中控螢幕設有日間和夜間模式，以便實現較佳能見度，而不會受到干擾！"),
        Car(name:"MODEL_X",series:"MODEL X",img2:"MODEL_X_img2",content:"Model X為Tesla的純電動運動休旅車，配備全時四輪驅動及100kWh電池，續航里程達565公里，乘坐空間寬敞，最多可容納7名成人及其隨身行李！\n\n四輪驅動的Model X 0到100km/h加速只需3.1秒，最高時速更可達250km/h；其Falcon Wing鷹翼車門令乘客可以輕鬆地進出第二、三排座位，座位更可以配置至最多七人座。\n\nModel X擁有最大的全景擋風玻璃，可以盡覽晴天和星空。改良了的防曬隔熱玻璃膜及無阻的車廂視野設計，將為駕駛者及乘客帶來更廣闊的視覺體驗。"),
        Car(name:"MODEL_Y",series:"MODEL Y",img2:"MODEL_Y_img2",content:"Model Y Performance版可以行到480km（WLTP），比Model 3 Performance的530km少50km，極速241km/h，0-100km/h加速3.7秒，慢過Model 3 0.3秒，車價US$60,990。另Model Y Performance跟Model 3 Performance一樣可加Performance Upgrade，包括提高極速，以及配21吋Überturbine輪圈（原裝是19吋Gemini）、Performance制動、降低懸掛和鋁合金腳踏。\n\n車廂設計方面，Model Y基本上同Model 3用同一個套路，走超級簡約的風格，沒有實體按鍵，只得15吋中央屏幕，控制車內功能如冷氣和音響，軚盤上有兩粒滾球，可用來調校軚盤和車窗角度等。車內原裝是全黑櫳，加US$1,000可換成黑白，即是座椅和原本木色錶板飾邊會變成白色。同Model 3一樣，Model Y標準配備Autopilot，如果想要全自動駕駛就要加US$7,000。"),
        Car(name:"CYBER",series:"CYBERTRUCK",img2:"CYBER_img2",content:"Tesla Cybertruck，又稱Cybrtrk或賽博皮卡，是特斯拉公司研發的即將上市的純電動輕型商用車。特斯拉公司在發布會上共公布了三個型號，基礎款為單電機後輪驅動，續航里程為400km，0至60邁加速時間為6.5秒；性能款雙電機全輪驅動版本續航里程為480km，加速時間為4.5秒；最高性能款為三電機全輪驅動續航里程為800km，加速時間為2.9秒。\n\n美國平均日銷售的皮卡約為6500輛，特斯拉公司稱其研發Cybertruck的動機是為了取代這些燃燒化石燃料的皮卡。 Cybertruck車身使用不鏽鋼及鈦材質。")
    ]
    var body:some View{
        NavigationView{
//            List(cars.indices){(item) in
//                NavigationLink( destination: CarDetail(car:cars[item])
//                ){
//                CarRow(car:cars[item])
//                }
//            }
//            .navigationTitle("TESLA全系列")
            List{
                Section(header:Text("潮潮")){ ForEach(0..<4){(item) in
                NavigationLink( destination: CarDetail(car:cars[item])
                ){
                CarRow(car:cars[item])
                }
                }
                }
                Section(header:Text("潮潮潮潮潮")){ //ForEach(4 .. <5){(item) in
                NavigationLink( destination: CarDetail(car:cars[4])
                ){
                CarRow(car:cars[4])
                }
                //}
                }
            }
            .navigationTitle("TESLA全系列")
        }
    }
}

struct CarList_Previews: PreviewProvider {
    static var previews: some View {
        CarList()
    }
}
