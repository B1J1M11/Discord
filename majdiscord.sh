#!/bin/bash

# URL du dernier .deb de Discord
URL="https://discord.com/api/download?platform=linux&format=deb"

# Répertoire de destination pour le téléchargement
DESTINATION="/tmp/discord.deb"

# Télécharger le dernier paquet .deb
echo "Téléchargement de la dernière version de Discord..."
curl -L -o "$DESTINATION" "$URL"

# Installer le paquet .deb
echo "Installation du paquet Discord..."
sudo dpkg -i "$DESTINATION"

# Vérifier les dépendances et les corriger si nécessaire
echo "Résolution des dépendances..."
sudo apt-get install -f -y

# Supprimer le fichier téléchargé
echo "Nettoyage..."
rm "$DESTINATION"

echo "Mise à jour de Discord terminée."
