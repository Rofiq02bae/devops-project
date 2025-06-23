# Gunakan node.js versi 18
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json dan package-lock.json (kalau ada)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy semua file ke container
COPY . .

# Expose port 3000
EXPOSE 3000

# Perintah untuk run aplikasi
CMD ["npm", "start"]
