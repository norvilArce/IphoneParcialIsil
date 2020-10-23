//
//  Opcion1ViewController.swift
//  ParcialIsil
//
//  Created by user178680 on 10/22/20.
//

import UIKit

class Opcion1ViewController: UIViewController {
    
    
}

class BoxView: UIView{

    @IBOutlet weak var ancho: NSLayoutConstraint!
    @IBOutlet weak var alto: NSLayoutConstraint!
      
    
    
    @objc func tapGestureInVIew(){
        let nuevoAncho = CGFloat.random(in: 40...350)
        let nuevoAlto = CGFloat.random(in: 40...350)
        
        UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.4, options: .curveEaseOut) {
            self.ancho.constant = nuevoAncho
            self.alto.constant = nuevoAlto
            self.view.layoutIfNeeded()
        } completion: { (Bool) in
            <#code#>
        }    }
    
    override func draw(_ rect: CGRect){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tapGestureInVIew))
        self.addGestureRecognizer(tapGesture)
    }
    
    
    @IBOutlet weak var caja: UIView!
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
