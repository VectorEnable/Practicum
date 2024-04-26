//
//  ViewController.swift
//  Counter
//
//  Created by Илья Сичкаренко on 24.04.2024.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var upCountUIButton: UIButton!
	@IBOutlet weak var countUILabel: UILabel!
	@IBOutlet weak var minusUIButoon: UIButton!
	@IBOutlet weak var plusUIButton: UIButton!
	@IBOutlet weak var resetCountUIButton: UIButton!
	@IBOutlet weak var historyUITextView: UITextView!
		
	private var count: Int = 0 {
		didSet {
			if count < 0 {
				count = oldValue
				historyUITextView.text = "\(getDateFormatter()): Попытка уменьшить значение счётчика ниже 0\n" + historyUITextView.text
			}
		}
	}
	private var dateFormatter: DateFormatter?
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		countUILabel.text = "Значение счетчика: \(count)"
		//historyUITextView.text = "\(getDateFormatter()): Приложение запущено"
		
	}
	
	private func getDateFormatter() -> String {
		let currentDate = Date()
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "dd.MM.yy HH:mm:ss"
		let resultDate = dateFormatter.string(from: currentDate)
		return resultDate
	}
	
	private func infoCount() {
		countUILabel.text = "Значение счетчика: \(String(count))"
	}
	
	@IBAction func upCount(_ sender: Any) {
		count += 1
		infoCount()
		//historyUITextView.text = historyUITextView.text + "\n\(getDateFormatter()): Значение изменено на +1"
		historyUITextView.text = "\(getDateFormatter()): Значение изменено на +1\n" + historyUITextView.text
	}
	
	@IBAction func plusCount(_ sender: Any) {
		count += 1
		infoCount()
		historyUITextView.text = "\(getDateFormatter()): Значение изменено на +1\n" + historyUITextView.text
	}
	
	@IBAction func minusCount(_ sender: Any) {
		if count != 0{
			historyUITextView.text = "\(getDateFormatter()): Значение изменено на -1\n" + historyUITextView.text
		}
		count -= 1
		infoCount()
		
	}
	
	@IBAction func resetCount(_ sender: Any) {
		count = 0
		infoCount()
		historyUITextView.text = "\(getDateFormatter()): Значение сброшено\n" + historyUITextView.text
	}
	
}

