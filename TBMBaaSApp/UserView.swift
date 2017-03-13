
//
//  UserView.swift
//  TBMBaaSApp
//
//  Created by Timothy Barnard on 13/03/2017.
//  Copyright © 2017 Timothy Barnard. All rights reserved.
//

import UIKit
import  Charts

class UserView: UIView {

    var months: [String]!
    
    var lineChartView: LineChartView?
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        let frameRect = CGRect(x: 10, y: 10, width: self.frame.width - 10, height: self.frame.height - 10 )
        
        if self.lineChartView == nil {
            self.lineChartView = LineChartView(frame: frameRect)
            self.addSubview(self.lineChartView!)
        } else {
            self.lineChartView?.removeFromSuperview()
            self.lineChartView = LineChartView(frame: frameRect)
            self.addSubview(self.lineChartView!)
        }
        
        months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        let unitsSold = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 4.0, 18.0, 2.0, 4.0, 5.0, 4.0]
        
        setChart(months, values: unitsSold)

    }
    
    
    
    func setChart(_ dataPoints: [String], values: [Double]) {
        
        // Do any additional setup after loading the view.
        let dollars1 = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 4.0, 18.0, 2.0, 4.0, 5.0, 4.0]
        let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        // 1 - creating an array of data entries
        var yValues : [ChartDataEntry] = [ChartDataEntry]()
        
        for i in 0 ..< months.count {
            yValues.append(ChartDataEntry(x: Double(i + 1), y: dollars1[i]))
        }
        
        let data = LineChartData()
        let ds = LineChartDataSet(values: yValues, label: "Months")
        
        data.addDataSet(ds)
        self.lineChartView!.data = data
    }
}
