//
//  DateViewController.swift
//  LTExtensionDemo
//
//  Created by TopSky on 2018/3/31.
//  Copyright © 2018年 TopSky. All rights reserved.
//

import UIKit

class DateViewController: BaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func add() {
        addAction(title: "年月日") {
            let date = Date()
            let date1 = date + Date.ConvertTimeInterval.day * 2
            let date2 = date - Date.ConvertTimeInterval.day
            let date3 = date + Date.ConvertTimeInterval.hour * 4
            let date4 = date + Date.ConvertTimeInterval.hour * 6
            print(date.year)
            print(date.cnYear)
            print(date.month)
            print(date.cnMonth)
            print(date.day)
            print(date.cnDay)
            print(date.weekDay)
            print(date.cnWeekDay)
            print(date.daysInMonth)
            print(date.isToday)
            print(date1.isToday)
            print(date2.isToday)
            print(date3.isToday)
            print(date4.isToday)

            print(date.convert(dateFormat: Date.ConvertTimeFormat.cnYearToDay))
            print(date.convert(dateFormat: Date.ConvertTimeFormat.cnYearToSecond))
            print(date.convert(dateFormat: Date.ConvertTimeFormat.enYearToDay))
            print(date.convert(dateFormat: Date.ConvertTimeFormat.enYearToSecond))
            let timeInterval: TimeInterval = date1.timeIntervalSince1970
            print(Date.convert(timeInterval: timeInterval, dateFormat: Date.ConvertTimeFormat.cnYearToSecond))

            let time1 = date1.timeIntervalSinceNow - date2.timeIntervalSinceNow
            let date5 = Date.init(timeIntervalSince1970: time1)
            print(date5.convert(dateFormat: Date.ConvertTimeFormat.cnYearToSecond))
            print(Date.convert(time1))
            print(Date.convert(date3.timeIntervalSinceNow - date1.timeIntervalSinceNow))
            print(date1.countdownTime.days)
            print(date1.countdownTime.hours)
            print(date1.countdownTime.minutes)
            print(date1.countdownTime.second)
            print(date3.countdownTime)
//            let dateTuple = Date.convert(time1)


//            print(Date.weekArray)
//            print(Date.monthArray)

            print(Date.firstWeekDay(year: 2018, month: 3))
            print(Date.firstWeekDay(year: 2018, month: 4))
            print(Date.firstWeekDay(year: 2018, month: 5))

            let date6 = date - Date.ConvertTimeInterval.minute * 2
            let date7 = date - Date.ConvertTimeInterval.hour * 7 - Date.ConvertTimeInterval.minute
            let date8 = date - Date.ConvertTimeInterval.day * 4 - Date.ConvertTimeInterval.minute
            let date9 = date - Date.ConvertTimeInterval.day * 38 - Date.ConvertTimeInterval.minute
            print(date.passTime)
            print(date6.passTime)
            print(date7.passTime)
            print(date8.passTime)
            print(date9.passTime)

        }


    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
