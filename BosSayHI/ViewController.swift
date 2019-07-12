//
//  ViewController.swift
//  BosSayHI
//
//  Created by Fauzi Fauzi on 11/07/19.
//  Copyright © 2019 Fauzi. All rights reserved.
//

import UIKit
import paper_onboarding

class ViewController: UIViewController, PaperOnboardingDataSource, PaperOnboardingDelegate {
    @IBOutlet weak var skipButton: UIButton!
    
    var imageCollection: [UIImage] = [
        UIImage(named: "1r")!,
        UIImage(named: "2r")!,
        UIImage(named: "3r")!,
        UIImage(named: "4r")!,
        UIImage(named: "5r")!
    ]
    
    @IBOutlet weak var onBoardingView: PaperOnboarding!
    //    @IBOutlet weak var onBoardingView: PaperOnboarding!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupOnBoardingPaperView()
        onBoardingView.bringSubviewToFront(skipButton)
    }
    
    fileprivate func setupOnBoardingPaperView() {
        // Do any additional setup after loading the view.
        
        onBoardingView.dataSource = self
        onBoardingView.delegate = self
        onBoardingView.translatesAutoresizingMaskIntoConstraints = true
        
        
        //         add constraints
        for attribute: NSLayoutConstraint.Attribute in [.left, .right, .top, .bottom] {
            let constraint = NSLayoutConstraint(item: onBoardingView,
                                                attribute: attribute,
                                                relatedBy: .equal,
                                                toItem: view,
                                                attribute: attribute,
                                                multiplier: 1,
                                                constant: 0)
            view.addConstraint(constraint)
        }
    }
    
    
    func onboardingItem(at index: Int) -> OnboardingItemInfo {
        
        
        return [
            
            OnboardingItemInfo(informationImage: UIImage(named: "1r")!,
                               title: "Welcome to \n boSayHi!",
                               description: "",
                               pageIcon: UIImage(named: "1r")!,
                               color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1),
                               titleColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),
                               descriptionColor: #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1),
                               titleFont: UIFont(name: "Arial", size: 25)!,
                               descriptionFont: UIFont(name: "Arial", size: 0)!
            ),
            
            OnboardingItemInfo(informationImage: UIImage(named: "2r")!,
                               title: "Recognize your employee symptom of stress earlier!",
                               description: "",
                               pageIcon: UIImage(named: "2r")!,
                               color: #colorLiteral(red: 1, green: 0.7725490196, blue: 0.631372549, alpha: 1),
                               titleColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1),
                               descriptionColor: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1),
                               titleFont: UIFont(name: "Arial", size: 25)!,
                               descriptionFont: UIFont(name: "Arial", size: 0)!
            ),
            
            OnboardingItemInfo(informationImage: UIImage(named: "3r")!,
                               title: "Show your empathy to your team!",
                               description: "",
                               pageIcon: UIImage(named: "3r")!,
                               color: #colorLiteral(red: 1, green: 0.8196078431, blue: 0.6039215686, alpha: 1),
                               titleColor: #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1),
                               descriptionColor: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1),
                               titleFont: UIFont(name: "Arial", size: 25)!,
                               descriptionFont: UIFont(name: "Arial", size: 0)!
            ),
            
            
            
            
            OnboardingItemInfo(informationImage: UIImage(named: "4r")!,
                               title: "Happier employees are more productive!",
                               description: "",
                               pageIcon: UIImage(named: "4r")!,
                               color: #colorLiteral(red: 0.9764705882, green: 0.9529411765, blue: 0.9254901961, alpha: 1),
                               titleColor: #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1),
                               descriptionColor: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1),
                               titleFont: UIFont(name: "Arial", size: 25)!,
                               descriptionFont: UIFont(name: "Arial", size: 0)!
            ),
            
            OnboardingItemInfo(informationImage: UIImage(named: "5r")!,
                               title: "Happier employees are more productive!",
                               description: "",
                               pageIcon: UIImage(named: "5r")!,
                               color: #colorLiteral(red: 1, green: 0.5409764051, blue: 0.8473142982, alpha: 1),
                               titleColor: #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1),
                               descriptionColor: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1),
                               titleFont: UIFont(name: "Arial", size: 25)!,
                               descriptionFont: UIFont(name: "Arial", size: 0)!
            ),
            
            
            ][index]
        
    }
    
    func onboardingItemsCount() -> Int {
        return 5
    }
    
    func onboardingConfigurationItem(item: OnboardingContentViewItem, index: Int) {
        
        item.imageView?.sizeToFit()
        
        //    item.descriptionLabel?.backgroundColor = .redColor()
        //    item.imageView = ...
        
        
    }
    
}

public extension PaperOnboardingDataSource {
    func onboardingPageItemColor(at index: Int) -> UIColor {
        return .black
    }
}

public extension OnboardingContentViewItem {
    
}

