#!/bin/bash

# Nombre del entorno virtual
ENV_NAME="iopaint_env"

# 1. Activar el entorno virtual
echo "Activando el entorno virtual $ENV_NAME..."
source $ENV_NAME/bin/activate

# 2. Iniciar la interfaz web de IOPaint
# Puedes elegir entre el modelo LaMa (más rápido, menos VRAM) o Stable Diffusion (mejor calidad, más VRAM)
# Usa solo uno a la vez.

# Inicia la aplicación con el modelo Stable Diffusion Inpainting
echo "Iniciando IOPaint con el modelo Stable Diffusion Inpainting..."
iopaint start --model=sd-v1-5-inpainting --device=cuda

# Opcional: Para usar el modelo LaMa, descomenta la línea de abajo y comenta la de arriba
# echo "Iniciando IOPaint con el modelo LaMa..."
# iopaint start --model=lama --device=cuda

echo "La aplicación está en funcionamiento. Visita http://localhost:8080 en tu navegador."