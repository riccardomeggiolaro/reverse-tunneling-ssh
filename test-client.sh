# script per provare a collegarsi al docker

#   *:80 -> indica la porta effettiva utilizzata dal docker per il forwarding
#           da notare che non si deve passare la porta 18080 del server con la quale si ha mappato
#           la porta 80 del docker perché altrimenti non funzionerebbe il forwarding

#   localhost:8080 -> indica la porta del gateway che ha fastapi in esecuzione

#   -p 10022 -> indica la porta del server che ha mappato dal porta 22 del docker per poter effettuare la connessione 
#               di reverse tunnelig ssh tra client e server

ssh -Ng -R *:80:localhost:80 root@192.168.0.65 -p 10022