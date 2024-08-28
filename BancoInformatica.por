programa {
  funcao inicio() {
   
    inteiro menu, meses, contador = 0
    real saldo = 0, deposito, saque, investimento, rendimento
    cadeia extrato = "", reset, senha = "a", senha2

    escreva("Digite sua senha: ")
    leia(senha2)   

    enquanto(senha != senha2){
      escreva("Senha Invalida. Tente Novamente : ")
      leia(senha2)
    }

    se(senha == senha2){
    
      enquanto(menu != 0){

        escreva("\n===================================\n")
        escreva("|              MENU               |\n")
        escreva("|---------------------------------|\n")
        escreva("| 1. Saldo                        |\n")
        escreva("| 2. Saque                        |\n")
        escreva("| 3. Deposito                     |\n")
        escreva("| 4. Extrato                      |\n")
        escreva("| 5. Investimento                 |\n")
        escreva("| 0. Sair                         |\n")
        escreva("|                                 |\n")
        escreva("===================================\n")
        escreva(" Opção ->")
        leia(menu)


        
        escolha(menu){

          caso 1: 
            escreva("Saldo = ",saldo)   

            escreva("\n\nAperte ENTER para continuar")
            leia(reset)    
            limpa()
          pare

          caso 2:      
            escreva("Digite sua senha: ")
            leia(senha2)   

            se(senha == senha2){
              escreva("DIgite o valor do saque : ")
              leia(saque)
              enquanto(saque < 0){
                escreva("Valor invalido. Tente novamente : ")
                leia(saque)
              }
              se(saque > saldo){
                escreva("Nao autorizado")
              }
              senao{
                saldo = saldo - saque
                extrato = extrato + "SAQUE--------------R$" + saque + "\n"
                escreva("Saque realizado com sucesso\n")
              }
              escreva("\n\nAperte ENTER para continuar")
              leia(reset)    
              limpa()
            } 
            senao{
              escreva("Senha Invalida")
            }      

          pare

          caso 3:
            escreva("Digite sua senha: ")
            leia(senha2)   

            se(senha == senha2){
              escreva("Digite o valor do deposito : ")
              leia(deposito)

              enquanto(deposito < 0){
                escreva("Valor invalido. Tente novamente : ")
                leia(deposito)
              }
              saldo = saldo + deposito
              extrato = extrato + "DEPOSITO-----------R$" + deposito + "\n"
              escreva("Deposito realizado com sucesso")

              escreva("\n\nAperte ENTER para continuar")
              leia(reset)    
              limpa()
            }
            senao{
              escreva("Senha Invalida")
            }

          pare

          caso 4:
            escreva("Digite sua senha: ")
            leia(senha2)   

            se(senha == senha2){
              escreva("Extrato\n")
              escreva(extrato)
              escreva("Saldo = ",saldo)  

              escreva("\n\nAperte ENTER para continuar")
              leia(reset)    
              limpa()
            }
            senao{
              escreva("Senha Invalida")
            }
          pare  

          caso 5:
            escreva("Digite sua senha: ")
            leia(senha2) 

            se(senha == senha2){
              escreva("DIgite a quantia do investimento : ")
              leia(investimento)

              se(investimento > saldo){
                escreva("Saldo Insuficiente")
              }

              senao{
                escreva("Por quantos meses irá durar o investimento : ")
                leia(meses)

                enquanto(contador<meses){
                  rendimento = investimento*1.02
                  investimento = rendimento
                  contador++
                }
                saldo = saldo + investimento
                escreva("O rendimento final foi de : R$",rendimento)
              }
            }
            senao{
              escreva("Senha Invalida")
            }
          pare
        } 
      }     
    }   

  }
}



