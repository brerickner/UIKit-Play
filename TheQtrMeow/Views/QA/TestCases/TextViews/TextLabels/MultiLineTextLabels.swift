//
//  MultiLineTextLabels.swift
//  TheQtrMeow
//
//  Created by Breanna Rickner on 9/28/22.
//

import UIKit

class MultiLineTextLabels: UIViewController {
    
    let stackView = UIStackView()
    let label0 = UILabel()
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let label4 = UILabel()
    let label5 = UILabel()
    let label6 = UILabel()
    let label7 = UILabel()
    let label8 = UILabel()
  
    
    func setAttributedLabel() {
        let str = "This is a cat string watch me pounce paw paw lay on lap get up perch on window watch outside attack dust talk to outside watch from window purr purr purr no pet there hiss scratch thats enough for now bye no water run run water okay fish yes meow meow"
        
        let trimmedString = str.trimmingCharacters(in: .whitespacesAndNewlines)
        let string = NSMutableAttributedString(string: trimmedString)
        
        string.setColorForText("cat string", with: .systemMint)
        string.setColorForText("purr purr purr", with: .systemPink)
        string.setColorForText("scratch", with: .systemPurple)
        string.setFontForText("This is a cat string", with: .systemFont(ofSize: 9))
        string.setFontForText("paw paw lay on lap get up perch on window watch outside attack dust talk to outside watch from window", with: .systemFont(ofSize: 10))
        string.setFontForText("purr purr purr", with: .systemFont(ofSize: 24))
        string.setFontForText("no pet there hiss scratch", with: .systemFont(ofSize: 15))
        string.setFontForText("meow meow", with: .systemFont(ofSize: 60))
        label8.attributedText = string
        label8.numberOfLines = 5
        label8.lineBreakMode = .byClipping
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension MultiLineTextLabels {
    func style() {
        
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        label0.translatesAutoresizingMaskIntoConstraints = false
        label0.text = "No Truncation Text"
        label0.textAlignment = .center
        label0.font = UIFont.preferredFont(forTextStyle: .title3)
        label0.accessibilityIdentifier = "noTruncation1LineTxt"
        label0.numberOfLines = 1
        label0.adjustsFontForContentSizeCategory = true
        
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.text = "Truncated text: This should be truncated at some point because I am rambling."
        label1.font = UIFont.preferredFont(forTextStyle: .title3)
        label1.accessibilityIdentifier = "truncated1LineTxt"
        label1.numberOfLines = 1
        label1.textAlignment = .center
        label1.adjustsFontForContentSizeCategory = true
        label1.textColor = .systemRed
        
        
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.text = "Here's some Truncated text: This should be truncated at the head."
        label2.font = UIFont.preferredFont(forTextStyle: .title3)
        label2.numberOfLines = 1
        label2.textAlignment = .center
        label2.adjustsFontForContentSizeCategory = true
        label2.textColor = .systemRed
        label2.lineBreakMode = .byTruncatingHead
        
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.text = "Here's some Truncated text: This should be truncated in the middle."
        label3.font = UIFont.preferredFont(forTextStyle: .title3)
        label3.numberOfLines = 1
        label3.textAlignment = .left
        label3.adjustsFontForContentSizeCategory = true
        label3.textColor = .systemRed
        label3.lineBreakMode = .byTruncatingMiddle
        
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.text = "No Truncated Text: This text goes over 2 lines and should be visible"
        label4.font = UIFont.preferredFont(forTextStyle: .title3)
        label4.textAlignment = .left
        label4.adjustsFontForContentSizeCategory = true
        label4.numberOfLines = 2
        
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.text = "Truncated text: This should be truncated at some point because I am rambling on extra long this time."
        label5.font = UIFont.preferredFont(forTextStyle: .title3)
        label5.numberOfLines = 2
        label5.textAlignment = .left
        label5.adjustsFontForContentSizeCategory = true
        label5.textColor = .systemRed
        label5.lineBreakMode = .byTruncatingTail
        
        
        label6.translatesAutoresizingMaskIntoConstraints = false
        label6.text = "No Truncation Text: This is a very long piece of text that should be visible across about 5 lines in this text label. Essentially imagine that I am rambling on about how a hot dog is nothing more than a simple cheeseburger."
        label6.font = UIFont.preferredFont(forTextStyle: .title3)
        label6.numberOfLines = 5
        label6.textAlignment = .left
        label6.adjustsFontForContentSizeCategory = true
        label6.lineBreakMode = .byWordWrapping
        
        label7.translatesAutoresizingMaskIntoConstraints = false
        label7.text = "Truncated Text: This is a very long piece of text that should be visible across about 5 lines in this text label. Essentially imagine that I am rambling on about how a hot dog is nothing more than a simple cheeseburger. I realize that this is silly because it is really a gyro."
        label7.font = UIFont.preferredFont(forTextStyle: .title3)
        label7.numberOfLines = 5
        label7.textAlignment = .left
        label7.adjustsFontForContentSizeCategory = true
        label7.textColor = .systemRed
        
        label8.translatesAutoresizingMaskIntoConstraints = false
        setAttributedLabel()
    
    
    }
    
    func layout() {
        stackView.addArrangedSubview(label0)
        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(label2)
        stackView.addArrangedSubview(label3)
        stackView.addArrangedSubview(label4)
        stackView.addArrangedSubview(label5)
        stackView.addArrangedSubview(label6)
        stackView.addArrangedSubview(label7)
        stackView.addArrangedSubview(label8)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1)
        ])
    }
}

// MARK: Attributed String
extension NSMutableAttributedString {
    // If no text, style will apply to full text
    func setColorForText(_ textToFind: String?, with color: UIColor) {
        let range: NSRange?
        if let text = textToFind {
            range = self.mutableString.range(of: text, options: .caseInsensitive)
        } else {
            range = NSMakeRange(0, self.length)
        }
        if range!.location != NSNotFound {
            addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range!)
        }
    }
    func setFontForText(_ textToFind: String?, with font: UIFont) {
        let range: NSRange?
        if let text = textToFind {
            range = self.mutableString.range(of: text, options: .caseInsensitive)
        } else {
            range = NSMakeRange(0, self.length)
        }
        if range!.location != NSNotFound {
            addAttribute(NSAttributedString.Key.font, value: font, range: range!)
        }
    }
}

