algoritmo "Jumanji"
// Função :
// Autor : Laila Maria
// Data : 28/10/2016
// Seção de Declarações
var
qtd_Jogadores: inteiro
casas: vetor [1..100] de inteiro
pergunta: vetor [1..15] de caracter
resposta: vetor [1..15] de inteiro
i,r: inteiro
n: vetor [1..5] de caractere
p: vetor [1..5] de inteiro
dado, d: inteiro
id: inteiro


procedimento dados
inicio
repita
   d <- randi(6)
   dado <- d
ate dado<>0
fimprocedimento


procedimento bonus
inicio
escolha (p[i])
caso 2, 11, 12, 45, 55
   escreval (" Parabéns!!!! Avance 3 casas.")
   p[i]<- p[i] + 3
   escreval (" Posição de ", n[i]," = ", p[i])
   escreval ("")
caso  7, 25, 36, 58, 69
   escreval(" Avance 5 casas.")
   p[i]<- p[i] + 5
   escreval (" Posição de ", n[i]," = ", p[i])
   escreval ("")
caso 89
   escreval (" Volte 10 casas ")
   p[i]<- 79
   escreval (" Posição de ", n[i]," = ", p[i])
   escreval ("")
caso 19
   escreval (" Sinto muito mas você tem que voltar 10 casas. Não são todos que vencem.")
   p[i]<- 9
   escreval (" Posição de ", n[i]," = ", p[i])
   escreval ("")
caso 39, 45, 50, 60, 91
   escreval (" Que pena! Não foi dessa vez! Volte para casa 15.")
   p[i]<- 15
   escreval (" Posição de ", n[i]," = ", p[i])
   escreval ("")
caso 4, 28, 31, 47, 92
   escreval (" Opa! Pule 1 casa.")
   p[i]<- p[i] + 1
   escreval (" Posição de ", n[i]," = ", p[i])
   escreval ("")
caso 10, 21, 58, 71, 79
   escreval(" Uau!! Hoje a sorte está com você. Pule para casa 85.")
   p[i]<- 85
   escreval (" Posição de ", n[i]," = ", p[i])
   escreval ("")
caso 99
   escreval ("Que pena! Volte para casa 35.")
   p[i]<- p[i] - 64

fimescolha
fimprocedimento


inicio
// Seção de Comandos
pergunta[1] <- " Quanto é 25 * 5"
resposta[1] <- 125

pergunta[2] <- " Quanto é 1 + (1 * 8) "
resposta[2] <- 9

pergunta[3] <- " Quanto é 4 * 3 "
resposta[3] <- 12

pergunta[4] <- " Quanto é 10 / 2 "
resposta[4] <- 5

pergunta[5] <- " Quanto é 9 * 10 "
resposta[5] <- 90

pergunta[6] <- " Quanto é 2 + 4 "
resposta[6] <- 6

pergunta[7] <- " Quanto é 9 * 6 "
resposta[7] <- 54

pergunta[8] <- " Quanto é 5 * 7 "
resposta[8] <- 35

pergunta[9] <- " Quanto é (2*4) + 2 "
resposta[9] <- 10

pergunta[10] <- " Quanto é 8 + (-1) "
resposta[10] <- 7

pergunta[11] <- " Quanto é 9 - (-1) "
resposta[11] <- 10

pergunta[12] <- " Quanto é (20 / 4) + 4 "
resposta[12] <- 9

pergunta[13] <- " Quanto é (8 * 1) - (4 / 2) "
resposta[13] <- 6

pergunta[14] <- " Quanto é (9 * 9) + 1 "
resposta[14] <- 82

pergunta[15] <- " Quanto é raiz(25) "
resposta[15] <- 5

Escreval("   *********  *       *  *           *  ********  *       *    *********  ***")
Escreval("       *      *       *  * *       * *  *      *  * *     *        *      ***")
Escreval("       *      *       *  *   *   *   *  *      *  *  *    *        *       *")
Escreval("       *      *       *  *     *     *  *      *  *   *   *        *       *")
Escreval("       *      *       *  *           *  ********  *    *  *        *       *")
Escreval(" **    *      *       *  *           *  *      *  *     * *  **    *       *")
Escreval(" **    *      *       *  *           *  *      *  *      **  **    *       *")
Escreval(" *******      *********  *           *  *      *  *       *  *******       *")


Escreval ("---------------------------------------------------------------------------")
Escreval ("                       SEJAM BEM VINDOS AO JUMANJI                         ")
Escreval ("---------------------------------------------------------------------------")
Escreval ("                                BOA SORTE                                  ")
Escreval ("---------------------------------------------------------------------------")
Escreval ("---------------------------------------------------------------------------")
   Escreval ("-----------------------AGORA O JOGO VAI COMEÇAR-------------------------")

Escreval (" Informe o número de jogadores ")
leia (qtd_Jogadores)
se (qtd_Jogadores < 2) ou (qtd_Jogadores > 5) entao
   Escreval(" Sinto muito! Mas o jogo não funciona com: ", qtd_Jogadores, " jogador(es).")
senao
   para i de 1 ate qtd_Jogadores faca
      Escreval (" Nome do ", i, " jogador ")
      leia(n[i])
   fimpara

   Limpatela

   repita
      para i de 1 ate qtd_Jogadores faca

         dados
         escreval (" Valor do dado: ", dado)
         p[i] <- p[i] + dado

         id <- randi(14)+1
         escreval(pergunta[id])
         Escreval(n[i]," qual sua resposta? ")
         leia(r)
         se (resposta[id] = r) entao
            escreval(" A resposta está certa")
            escreval (" Posição de ", n[i]," = ", p[i])
            escreval ("")
            bonus

         senao
            escreval(" A resposta está incorreta ")
            p[i] <- p[i] - dado
            escreval (" Posição de ", n[i]," = ", p[i])
            escreval ("")
         fimse
      fimpara
      
   ate (p[1] >= 100) ou (p[2] >= 100) ou (p[3] >= 100) ou (p[4] >= 100) ou (p[5] >= 100)
   interrompa
   




   Limpatela

   se p[1] >= 100 entao
      Escreval ("--------- O VENCEDOR DO JUMANJI É: ", n[1], ". PARABÉNS!! ----------")
   senao
      se p[2] >= 100 entao
         Escreval ("--------- O VENCEDOR DO JUMANJI É: ", n[2], ". PARABÉNS!! ----------")
      senao
         se p[3] >= 100 entao
            Escreval ("--------- O VENCEDOR DO JUMANJI É: ", n[3], ". PARABÉNS!! ----------")
         senao
            se p[4] >= 100 entao
               Escreval ("--------- O VENCEDOR DO JUMANJI É: ", n[4], ". PARABÉNS!! ----------")
            senao
               se p[5] >= 100 entao
                  Escreval ("--------- O VENCEDOR DO JUMANJI É: ", n[5], ". PARABÉNS!! ----------")

               fimse
            fimse
         fimse
      fimse
   fimse

fimse
fimalgoritmo

