//
//  BaseViewController.swift
//  proofTelas
//
//  Created by Igor Kenzo Miyamoto Dias on 02/04/20.
//  Copyright © 2020 Igor Miyamoto. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    let dataSource = ["VW 1", "VW 2","VW 3", "VW 4"]
    var currentViewControllerIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configPageViewController()
        // Do any additional setup after loading the view.
    }
    
    
    func configPageViewController()
    {
        guard let pageViewController = storyboard?.instantiateViewController(withIdentifier: String(describing: CustomPageViewController.self)) as? CustomPageViewController else {
            return
        }
        
        pageViewController.delegate = self
        pageViewController.dataSource = self
        addChild(pageViewController)
        pageViewController.didMove(toParent: self)
        
        pageViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(pageViewController.view)
        
        let views : [String: Any] = ["pageView" : pageViewController.view]
        
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[pageView]-0-|",
                                                                 options: NSLayoutConstraint.FormatOptions(rawValue: 0),
                                                                 metrics: nil,
                                                                 views: views))
        
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[pageView]-0-|",
                                                                 options: NSLayoutConstraint.FormatOptions(rawValue: 0),
                                                                 metrics: nil,
                                                                 views: views))

        guard let startingViewController = detailViewController(index: currentViewControllerIndex) else {
            return
        }
        
        pageViewController.setViewControllers([startingViewController], direction: .forward, animated: true)
    }

    func detailViewController(index: Int) -> DataViewController? {
        
        if index >= dataSource.count || dataSource.count == 0 {
            return nil
        }
        
        guard let dataViewController = storyboard?.instantiateViewController(withIdentifier: String(describing: DataViewController.self)) as? DataViewController else {
            return nil
        }
        
        dataViewController.index(ofAccessibilityElement: index)
        dataViewController.displayText = dataSource[index]
        
        return dataViewController
    }
}

extension BaseViewController : UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
         return currentViewControllerIndex
     }
     
     func presentationCount(for pageViewController: UIPageViewController) -> Int {
         return dataSource.count
     }
     
     func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
         
         let dataViewController = viewController as? DataViewController
    
         if currentViewControllerIndex == 0{
             return nil
         }
         currentViewControllerIndex -= 1
         return detailViewController(index: currentViewControllerIndex)
     }
     
     func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
         
         if currentViewControllerIndex == dataSource.count - 1 {
             return nil
         }
         
         currentViewControllerIndex += 1
         
         return detailViewController(index: currentViewControllerIndex)
     }
}
