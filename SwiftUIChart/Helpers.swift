//
//  Helpers.swift
//  SwiftUIChart
//
//  Created by WeIHa'S on 2021/12/5.
//

import SwiftUI

struct GradientColor {
    private let gradient: Gradient

    init(_ start: Color, _ end: Color) {
        self.gradient = Gradient(colors: [start, end])
    }
    
    var liner: LinearGradient{
        return LinearGradient(gradient: gradient, startPoint: .bottom, endPoint: .top)
    }
}

class HapticFeedback {
    #if os(watchOS)
    //watchOS implementation
    static func playSelection() -> Void {
        WKInterfaceDevice.current().play(.click)
    }
    #elseif os(iOS)
    //iOS implementation
    let selectionFeedbackGenerator = UISelectionFeedbackGenerator()
    static func playSelection() -> Void {
        UISelectionFeedbackGenerator().selectionChanged()
    }
    #else
    static func playSelection() -> Void {
        //No-op
    }
    #endif
}

public class TestData{
    static public var data:ChartData = ChartData(points: [37,72,51,22,39,47,66,85,50])
    static public var values:ChartData = ChartData(values: [("2017 Q3",220),
                                                            ("2017 Q4",1550),
                                                            ("2018 Q1",8180),
                                                            ("2018 Q2",18440),
                                                            ("2018 Q3",55840),
                                                            ("2018 Q4",63150), ("2019 Q1",50900), ("2019 Q2",77550), ("2019 Q3",79600), ("2019 Q4",92550)])
    static public var oneValues:ChartData = ChartData(values: [("2017 Q3",220)])
    
}
