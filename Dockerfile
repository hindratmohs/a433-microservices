#Menggunakan base image Node.js versi 14.
FROM node:14.21.2-alpine

# working directory untuk container adalah /app.
WORKDIR /app

#Menyalin seluruh source code ke working directory di container.
COPY . .

#Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-dbsebagai database host. Anda bisa salin kode berikut.
ENV NODE_ENV=production DB_HOST=item-db

#Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Expose port 8080 and start npm
EXPOSE 8080
CMD ["npm","start"]