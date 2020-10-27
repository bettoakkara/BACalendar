//
//  ViewController.swift
//  BACalenderExample
//
//  Created by Betto Akkara on 20/10/20.
//  Copyright © 2020 Betto Akkara. All rights reserved.
//

import UIKit
import BACalender

class ViewController: UIViewController, CalendarPopUpDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delay(3) {
            self.showCalendar()
        }
    }
    func showCalendar() {
        let calenderView = BACalenderView
        // Here we are setting delegate
        calenderView.calendarDelegate = self
        // here, you can change the theme
        calenderView.themeColor = UIColor.blue
        // here you can configure your BACalneder
        let startDate = Date()
        let endDate = Helper.calendarAdvanced(byAdding: .year, value: 10, startDate: Date())
        calenderView.configureCalender(
            startDate: startDate,
            endDate: endDate,
            selectedDate: startDate
        )
        PopupContainer.generatePopupWithView(calenderView).show()
    }
    func dateChaged(date: Date) {
        print(date)
    }
}

