#!/bin/bash

# Nombre del entorno virtual
ENV_NAME="iopaint_env"

# 1. Verificar si el entorno virtual ya existe
if [ ! -d "$ENV_NAME" ]; then
    echo "Creando el entorno virtual $ENV_NAME..."
    python3 -m venv $ENV_NAME
fi

# 2. Activar el entorno virtual
echo "Activando el entorno virtual..."
source $ENV_NAME/bin/activate

# 3. Instalar las dependencias de la aplicación desde requirements.txt (asumiendo que ya estás en la carpeta del proyecto)
echo "Instalando dependencias desde requirements.txt..."
pip install -r requirements.txt

# 4. Instalar PyTorch con soporte CUDA
echo "Instalando PyTorch con soporte CUDA..."
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118

# 5. Instalar IOPaint
echo "Instalando IOPaint..."
pip install iopaint

echo "La instalación ha finalizado. Ahora puedes usar el script iniciar.sh para ejecutar la aplicación."