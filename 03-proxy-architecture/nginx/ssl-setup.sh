#!/bin/bash
###############################################################################
# SSL Certificate Generation Script
# Author: Inkwang Lee
# Purpose: Generate self-signed SSL certificate for lab environment
# Usage: ./ssl-setup.sh [domain]
###############################################################################

DOMAIN=${1:-localhost}
SSL_DIR="/etc/nginx/ssl"

echo "🔐 SSL Certificate Setup"
echo "========================"
echo "Domain: $DOMAIN"
echo "Output: $SSL_DIR"
echo ""

# Create SSL directory
sudo mkdir -p $SSL_DIR

# Generate self-signed certificate
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout $SSL_DIR/key.pem \
  -out $SSL_DIR/cert.pem \
  -subj "/C=AU/ST=Queensland/L=Brisbane/O=QUT/OU=Network Security/CN=$DOMAIN"

# Set permissions
sudo chmod 600 $SSL_DIR/key.pem
sudo chmod 644 $SSL_DIR/cert.pem

echo ""
echo "✅ Certificate generated successfully"
echo "📁 Certificate: $SSL_DIR/cert.pem"
echo "🔑 Private key: $SSL_DIR/key.pem"
echo ""
echo "⚠️  PRODUCTION NOTE:"
echo "   Self-signed certificates are for lab use only."
echo "   For production, use Let's Encrypt:"
echo "   $ sudo certbot --nginx -d $DOMAIN"
echo ""
