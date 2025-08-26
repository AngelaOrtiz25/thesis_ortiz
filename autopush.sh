#!/bin/bash
echo "========================================"
echo "🚀 INICIANDO AUTOPUSH PARA QUARTO BOOK"
echo "========================================"

# Renderizar el libro Quarto
echo "🔄 Renderizando libro Quarto..."
quarto render

# Añadir todos los cambios
echo "📦 Añadiendo cambios a Git..."
git add .

# Hacer commit con timestamp
COMMIT_MSG="Auto-update: $(date +'%Y-%m-%d %H:%M:%S')"
echo "💾 Haciendo commit: $COMMIT_MSG"
git commit -m "$COMMIT_MSG"

# Subir a GitHub
echo "🚀 Subiendo a GitHub..."
git push origin main

echo "========================================"
echo "✅ ¡TODOS LOS ARCHIVOS SUBIDOS CORRECTAMENTE!"
echo "✅ Quarto renderizado + GitHub actualizado"
echo "========================================"