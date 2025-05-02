       IDENTIFICATION DIVISION.
       PROGRAM-ID. calculatrice.
       
       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
      * Declaration des variables 
       WORKING-STORAGE SECTION.
       01 WS-NUMERO-A             PIC 9(5)V99.
       01 WS-NUMERO-B             PIC 9(5)V99.
       01 WS-OPERATION            PIC X VALUE SPACE.
       01 WS-RESULTANT            PIC 9(7)V99.
       01 WS-FINALE               PIC X VALUE "N".

       PROCEDURE DIVISION.
      * Début du programme principal
       DEBUT.
       PERFORM UNTIL WS-FINALE = "O" OR "o"  
             DISPLAY "--Vous pouvez maintenant calculer--"
             DISPLAY "Entrez le premier chiffre"
             ACCEPT WS-NUMERO-A

           MOVE SPACE TO WS-OPERATION 
P          PERFORM UNTIL WS-OPERATION = '+' OR '-' OR '*' OR  '/'
             DISPLAY "Choisissez l'un de ces operations (+, -, /, *)"
             ACCEPT WS-OPERATION
           END-PERFORM

           DISPLAY "Entrez le deuxiéme chiffre"
             ACCEPT WS-NUMERO-B
        
           EVALUATE WS-OPERATION 
               WHEN "+"
               COMPUTE WS-RESULTANT = WS-NUMERO-A + WS-NUMERO-B

               WHEN "-"
               COMPUTE WS-RESULTANT = WS-NUMERO-A - WS-NUMERO-B

               WHEN "/"
                   *> Vérification si WS-NUMERO-B est zéro pour la division
                   PERFORM UNTIL WS-NUMERO-B NOT = 0
                      DISPLAY "Veuillez entrer un autre chiffre que(0)"
                      ACCEPT WS-NUMERO-B
                   END-PERFORM
                   COMPUTE WS-RESULTANT = WS-NUMERO-A / WS-NUMERO-B 
  
               WHEN "*"
               COMPUTE WS-RESULTANT = WS-NUMERO-A * WS-NUMERO-B  
           END-EVALUATE

      * Afficher le résultat du calcul
           DISPLAY "Resultat : " WS-RESULTANT
           DISPLAY "Voulez-vous quitter ? (O/N) :"
           ACCEPT WS-FINALE
              
      * Vérification de la réponse de l'utilisateur pour s'assurer qu'il a bien entré "O" ou "N"
           PERFORM UNTIL WS-FINALE = "O" OR WS-FINALE = "o" 
                   OR WS-FINALE = "N" OR WS-FINALE = "n"
                   DISPLAY "Choix invalide, veuillez entrer O ou N :"
                   ACCEPT WS-FINALE
           END-PERFORM

           IF WS-FINALE = "O" OR WS-FINALE = "o"
                  DISPLAY "Vous avez choisi de quitter le programme."
            ELSE
                  DISPLAY "Vous avez choisi de continuer."
           END-IF

       END-PERFORM.
       STOP RUN.

       
       