//
//  TextColors.swift
//  TheQtrMeow
//
//  Created by Breanna Rickner on 9/28/22.
//
import UIKit

class TextColors: UIViewController {
    
    let stackView = UIStackView()
    let labelPink = UILabel()
    let labelRed = UILabel()
    let labelBrown = UILabel()
    let labelOrange = UILabel()
    let labelYellow = UILabel()
    let labelGreen = UILabel()
    let labelTeal = UILabel()
    let labelMint = UILabel()
    let labelCyan = UILabel()
    let labelBlue = UILabel()
    let labelIndigo = UILabel()
    let labelPurple = UILabel()
    let labelGray = UILabel()


    func setLabelColor(with label: UILabel, with color: UIColor) {
        let str = "ABCDEFGHIJKLMnopqrstuvwxyz1234567890"
        
        label.textColor = color
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = str
        label.textAlignment = .center
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension TextColors {
    func style() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10
        
        setLabelColor(with: labelPink, with: .systemPink)
        setLabelColor(with: labelRed, with: .systemRed)
        setLabelColor(with: labelBrown, with: .systemBrown)
        setLabelColor(with: labelOrange, with: .systemOrange)
        setLabelColor(with: labelYellow, with: .systemYellow)
        setLabelColor(with: labelGreen, with: .systemGreen)
        setLabelColor(with: labelTeal, with: .systemTeal)
        setLabelColor(with: labelMint, with: .systemMint)
        setLabelColor(with: labelCyan, with: .systemCyan)
        setLabelColor(with: labelBlue, with: .systemBlue)
        setLabelColor(with: labelIndigo, with: .systemIndigo)
        setLabelColor(with: labelPurple, with: .systemPurple)
        setLabelColor(with: labelGray, with: .systemGray)
        
        
    }
    
    func layout() {
        stackView.addArrangedSubview(labelPink)
        stackView.addArrangedSubview(labelRed)
        stackView.addArrangedSubview(labelBrown)
        stackView.addArrangedSubview(labelOrange)
        stackView.addArrangedSubview(labelYellow)
        stackView.addArrangedSubview(labelGreen)
        stackView.addArrangedSubview(labelTeal)
        stackView.addArrangedSubview(labelMint)
        stackView.addArrangedSubview(labelCyan)
        stackView.addArrangedSubview(labelBlue)
        stackView.addArrangedSubview(labelIndigo)
        stackView.addArrangedSubview(labelPurple)
        stackView.addArrangedSubview(labelGray)
 
        
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1)
        ])
    }
}

