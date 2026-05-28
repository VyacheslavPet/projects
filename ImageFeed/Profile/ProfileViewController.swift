//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Петров Вячеслав on 17.04.2026.
//

import UIKit

class ProfileViewController: UIViewController {
    private var nameLabel: UILabel?
    private var usernameLabel: UILabel?
    private var descriptionLabel: UILabel?
    private var imageView: UIImageView?
    private var button: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let profileImage = UIImage(named: "avatar")
        let imageView = UIImageView(image: profileImage)
        self.imageView = imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        imageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        
        let namelabel = UILabel()
        namelabel.text = "Петров Вячеслав"
        namelabel.textColor = .white
        namelabel.font = .boldSystemFont(ofSize: 23)
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(namelabel)
        self.nameLabel = namelabel
        namelabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        namelabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8).isActive = true
        namelabel.widthAnchor.constraint(equalToConstant: 241).isActive = true
        
        let usernameLabel = UILabel()
        usernameLabel.text = "@petrov"
        usernameLabel.textColor = UIColor(
            red: 174/255,
            green: 175/255,
            blue: 180/255,
            alpha: 1
        )
        self.usernameLabel = usernameLabel
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(usernameLabel)
        NSLayoutConstraint.activate([
            usernameLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
            usernameLabel.topAnchor.constraint(equalTo: namelabel.bottomAnchor, constant: 8),
            usernameLabel.widthAnchor.constraint(equalToConstant: 99)
        ])
        let descriptionLabel = UILabel()
        descriptionLabel.text = "Инженер"
        descriptionLabel.textColor = .white
        descriptionLabel.font = .systemFont(ofSize: 13)
        self.descriptionLabel = descriptionLabel
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(descriptionLabel)
        descriptionLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        descriptionLabel.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: 8).isActive = true
        descriptionLabel.widthAnchor.constraint(equalToConstant: 77).isActive = true
        
        let button = UIButton.systemButton(
            with: UIImage(resource: .logoutButton).withRenderingMode(.alwaysOriginal),
            target: self,
            action: #selector(self.didTapButton))
        self.button = button
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        button.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44).isActive = true
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }
    
    @objc
    private func didTapButton() {
        let alert = UIAlertController(title: "Пока, пока!", message: "Уверены что хотите выйти?", preferredStyle: .alert)
                
                let yes = UIAlertAction(title: "Да", style: .default)
                let no = UIAlertAction(title: "Нет", style: .cancel)

                alert.addAction(yes)
                alert.addAction(no)
                
                present(alert, animated: true)
    }
    
    
}
