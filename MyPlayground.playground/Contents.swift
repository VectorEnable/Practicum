import UIKit

var currentDate = Date()

var dateFormatter = DateFormatter()
dateFormatter.dateFormat = "dd.MM.yy"

var resultDate = dateFormatter.string(from: currentDate)
