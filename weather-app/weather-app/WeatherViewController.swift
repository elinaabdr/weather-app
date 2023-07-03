//
//  ViewController.swift
//  weather-app
//
//  Created by Элина Абдрахманова on 03.07.2023.
//

import UIKit

class WeatherViewController: UIViewController {
    
    private let weatherImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "imClear")
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    private let degreeLabel = UILabel(text: "24 C",
                                       font: UIFont.systemFont(ofSize: 24, weight: .medium),
                                       color: .gray)
    
    private let weatherDescLabel = UILabel(text: "Sunny",
                                    font: UIFont.systemFont(ofSize: 24, weight: .medium),
                                    color: .black)
    
    private var labelStackView = UIStackView()
    private var stackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()

        configureItems()
        setupViews()
        setConstraints()
    }

    private func configureItems() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "location"),
                                                           style: .done,
                                                           target: self,
                                                           action: #selector(locationButtonTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                            target: self,
                                                            action: #selector(addLocatiobButtonTapped))
    }
    
    private func setupViews() {
        view.backgroundColor = .white
        
        labelStackView = UIStackView(arrangedSubviews: [degreeLabel, weatherDescLabel],
                                     axis: .vertical,
                                     spacing: 0)
        labelStackView.alignment = .center
        
        stackView = UIStackView(arrangedSubviews: [weatherImageView, labelStackView],
                                axis: .vertical,
                                spacing: 15)
    
        view.addSubview(stackView)
    }
    
    @objc private func addLocatiobButtonTapped() {
        
    }
    
    @objc private func locationButtonTapped() {
        
    }
}

//MARK: - Set constraints
extension WeatherViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
           
            weatherImageView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            weatherImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

