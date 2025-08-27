# Usa Node.js 18 come base
FROM node:18

# Crea la cartella di lavoro
WORKDIR /app

# Copia tutti i file nel container
COPY . .

# Installa le dipendenze
RUN npm install

# Builda l'app (Vite)
RUN npm run build

# Espone la porta usata da Dyad
EXPOSE 3000

# Avvia l'app in modalità preview
CMD ["npm", "run", "preview"]
