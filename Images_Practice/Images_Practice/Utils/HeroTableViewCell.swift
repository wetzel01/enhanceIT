//
//  HeroTableViewCell.swift
//  Images_Practice
//
//  Created by Consultant on 8/25/22.
//
import UIKit

class HeroTableViewCell: UITableViewCell{
    var HeroImageView = UIImageView()
    var HeroTitle = UILabel()
    
    override init (style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(HeroImageView)
        addSubview(HeroTitle)
        configureImageView()
        configureTitleLabel()
        setImageConstraints()
        setTitleLabelConstarints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(_ hero: Hero){
        HeroImageView.image = hero.image
        HeroTitle.text = hero.title
    }
    
    func configureImageView(){
        HeroImageView.layer.cornerRadius = 10
        HeroImageView.clipsToBounds = true
    }
    
    func configureTitleLabel(){
        HeroTitle.numberOfLines = 0
        HeroTitle.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstraints() {
        HeroImageView.translatesAutoresizingMaskIntoConstraints = false
        HeroImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        HeroImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        HeroImageView.widthAnchor.constraint(equalTo: HeroImageView.heightAnchor, multiplier: 16/9).isActive = true
        HeroImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    func setTitleLabelConstarints(){
        HeroTitle.translatesAutoresizingMaskIntoConstraints = false
        HeroTitle.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        HeroTitle.leadingAnchor.constraint(equalTo: HeroImageView.trailingAnchor, constant: 20).isActive = true
        HeroTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        HeroTitle.heightAnchor.constraint(equalToConstant: 80).isActive = true
    }
}

