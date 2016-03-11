
//
//  infoWindowMapView.swift
//  Gymmate
//
//  Created by Trung Do on 2/14/16.
//  Copyright © 2016 TrungDo. All rights reserved.
//

import UIKit


class infoWindowMapView: UIView {

    @IBOutlet weak var nameActivityLabel: UILabel!
    @IBOutlet weak var dateText: UILabel!
    
    @IBOutlet weak var timeText: UILabel!
    @IBOutlet weak var eventIdText: UILabel!
    @IBOutlet var view: UIView!
    @IBOutlet weak var button: UIButton!

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setUp()
        
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        setUp()
        
    }
    func setUpInformation(title: String, eventID: String, date: String, time:String){
        self.nameActivityLabel.text = title
        self.eventIdText.text = eventID
        self.dateText.text = date
        self.timeText.text = time
    }
    @IBAction func touchJoinEvent(sender: AnyObject) {
        print("haha")
    }
    func setUp(){
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth,UIViewAutoresizing.FlexibleHeight]
        
        addSubview(view);
        
          }
    func loadViewFromNib()->UIView
    {
        let bundle =  NSBundle(forClass: self.dynamicType)
        //.mainBundle().loadNibNamed("AddEventView", owner: self, options: nil)
        let nib = UINib(nibName: "infoWindowMapView", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        return view
    }

}
