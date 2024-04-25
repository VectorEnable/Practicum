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
			}
		}
	}
	private var dateFormatter: DateFormatter?
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		countUILabel.text = "Значение счетчика: \(count)"
		getDateFormatter()
		historyUITextView.text = "\(dateFormatter!): приложение запущено!"
	}
	
	private func getDateFormatter(){
		let currentDate = Date()
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "dd.MM.yy в HH:mm:ss"
		dateFormatter.string(from: currentDate)
		self.dateFormatter = dateFormatter
	}
	
	private func infoCount() {
		countUILabel.text = "Значение счетчика: \(String(count))"
	}
	
	private func dateInfo() {
		
	}
	
	
	@IBAction func upCount(_ sender: Any) {
		count += 1
		infoCount()
	}
	
	@IBAction func plusCount(_ sender: Any) {
		count += 1
		infoCount()
	}
	
	@IBAction func minusCount(_ sender: Any) {
		count -= 1
		infoCount()
	}
	
	@IBAction func resetCount(_ sender: Any) {
		count = 0
		infoCount()
	}
	
}

