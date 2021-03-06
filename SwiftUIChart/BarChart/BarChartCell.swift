//
//  BarChartCell.swift.swift
//  SwiftUIChart
//
//  Created by WeIHa'S on 2021/12/5.
//

import SwiftUI

struct BarChartCell : View {
    @State private var scaleValue: Double = 0
    
    var value: Double
    var index: Int = 0
    var color: Color = .orange
    var gradient: GradientColor?
    
    public var body: some View {
        Group {
            if let gradient = gradient {
                RoundedRectangle(cornerRadius: 4)
                    .fill(gradient.liner)
            }else{
                RoundedRectangle(cornerRadius: 4)
                    .fill(color)
            }
        }
        .scaleEffect(CGSize(width: 1, height: self.scaleValue), anchor: .bottom)
        .animation(Animation.spring().delay(Double(self.index) * 0.04))
        .onAppear(){
            self.scaleValue = self.value
        }
        
    }
}


struct BarChartCell_Previews : PreviewProvider {
    static var previews: some View {
        BarChartCell(value: 0.75)
    }
}
