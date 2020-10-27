# BACalendar
BACalendar is a customizable calendar for ios.

![](https://drive.google.com/uc?export=view&id=1elde8tg8U6D-kZTVnYWx0hD-pDFC4H0s)

# Compatibility
BACalendar requires iOS 10+ and is compatible with Swift 4.2 projects.
# Installation
Drag and Drop the folder BACalender.framework into your project. 
or you can download the source code and integrate to your code.
# Usage

BACalendar was designed to be used effortlessly.
```
import BACalender
```
implement the delegate ``` CalendarPopUpDelegate ``` 
```
func dateChaged(date: Date) {

     ...

}
```
Use the function below
```
 func showCalendar() {
        
        let calenderView = BACalenderView
        // Here we are setting delegate
        calenderView.calendarDelegate = self
        // here, you can change the theme
        calenderView.themeColor = UIColor.brown
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
```

GOOD LUCK

## Credits and Inspiration

JTAppleCalendar (https://github.com/patchthecode/JTAppleCalendar)

## Authors

[Betto Akkara](https://github.com/bettoakkara)

## License

<b>BACalendar</b> is released under a MIT License. See LICENSE file for details.

