//
//  LoginViewController.swift
//  Projeto Lojas
//
//  Created by Rene Freire Xavier on 24/06/21.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var fundoLogoRedonda: UIView!
    @IBOutlet weak var botaoEntrar: UIButton!
    @IBOutlet weak var botaoCadastrar: UIButton!
    
    @IBOutlet weak var campoEmail: UITextField!
    @IBOutlet weak var campoSenha: UITextField!
    
    var variavel = 10
    let constante = 10
    
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        botaoEntrar.layer.cornerRadius = 10
        botaoCadastrar.layer.cornerRadius = 10
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        fundoLogoRedonda.clipsToBounds = true
        fundoLogoRedonda.layer.cornerRadius = fundoLogoRedonda.frame.height / 2
    }
    
    // MARK: User action
    @IBAction func executarLogin(_ sender: Any) {
        print(campoEmail.text)
        print(campoSenha.text)
//        if campo email estiver vazio (nil) -> nao navega
//        else campo email nao eh vazio -> pegar o texto dele
//        "" - texto vazio -> nao navega
//        "senha" - texto preenchido
//        if !(campoEmail.text ?? "").isEmpty {
//            // navegar pra proxima tela
//
//        }

//        "" - texto vazio -> nao navega
//        "senha" - texto preenchido
        if let emailUsuario = campoEmail.text,
           !emailUsuario.isEmpty,
           let senhaUsuario = campoSenha.text,
           !senhaUsuario.isEmpty {
            // navegar pra proxima tela
            
//            self.navigationController?.viewControllers
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let perfilVC = storyboard.instantiateViewController(withIdentifier: "PerfilViewControllerID")
            
            self.navigationController?.setViewControllers([perfilVC], animated: true)
            return
        }
        
        // MARK: mensagem de erro
        var mensagemErro = "O campo "
        if let emailUsuario = campoEmail.text,
           !emailUsuario.isEmpty {
            mensagemErro += "senha"
        } else {
            if let senhaUsuario = campoSenha.text,
               !senhaUsuario.isEmpty {
                mensagemErro += "email"
            } else {
                mensagemErro += "email e senha"
            }
            
        }
        mensagemErro += " está vazio"
            
        print(mensagemErro)
        let alertaErro = UIAlertController(
                                title: "ERRO",
                                message: mensagemErro,
                                preferredStyle: .alert)
        
        let acaoOk = UIAlertAction(title: "OK",
                                   style: UIAlertAction.Style.default,
                                   handler: nil)
        
        alertaErro.addAction(acaoOk)
        present(alertaErro,
                animated: true,
                completion: nil)
    }
}






























