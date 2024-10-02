# Usa un'immagine base di Debian
FROM debian:latest

# Installa OpenSSH Server
RUN apt-get update && apt-get install -y openssh-server

# Crea una directory per il server SSH
RUN mkdir /var/run/sshd

# Copia il file di configurazione SSH
COPY sshd_config /etc/ssh/sshd_config

# Aggiungi questa sezione per impostare la password root
RUN echo 'root:318101' | chpasswd

# Espone la porta SSH
EXPOSE 22
EXPOSE 80

# Avvia il server SSH
CMD ["/usr/sbin/sshd", "-D"]