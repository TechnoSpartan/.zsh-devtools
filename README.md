<p align="center">
  <img src="./assets/logo.png" alt="Zsh DevTools Full Setup" width="50%">
</p>


<p align="center">
  <img alt="Zsh" src="https://img.shields.io/badge/zsh-✓-brightgreen?style=for-the-badge&logo=gnu-bash&logoColor=white">
  <img alt="Direnv" src="https://img.shields.io/badge/direnv-enabled-blue?style=for-the-badge&logo=linux&logoColor=white">
  <img alt="Node.js" src="https://img.shields.io/badge/.nvmrc-auto_loaded-green?style=for-the-badge&logo=node.js&logoColor=white">
  <img alt="Android SDK" src="https://img.shields.io/badge/android-sdk-orange?style=for-the-badge&logo=android&logoColor=white">
  <img alt="iOS" src="https://img.shields.io/badge/iOS-xcode-lightgrey?style=for-the-badge&logo=apple&logoColor=white">
  <img alt="Flutter" src="https://img.shields.io/badge/flutter-supported-02569B?style=for-the-badge&logo=flutter&logoColor=white">
  <img alt="Docker" src="https://img.shields.io/badge/docker-ready-2496ED?style=for-the-badge&logo=docker&logoColor=white">
  <img alt="Speed" src="https://img.shields.io/badge/shell-startup_⏱️_fast-lightgreen?style=for-the-badge">
</p>


# 🛠️ Zsh DevTools Full Setup
**Entorno de desarrollo modular y optimizado para terminales Zsh**.  
Incluye configuración segmentada por contexto para trabajar de forma rápida y limpia con:

- 🟢 Node.js (con carga automática de `.nvmrc`)
- 🤖 Android SDK + JDK 17
- 🍏 iOS (Xcode + simuladores)
- 💙 Flutter
- 🚢 DevOps (Docker, Kubernetes)
- ⚙️ Extras: GPG, completions, alias útiles

---

## 📜 Requisitos

- Ejecutar el script `check-devtools`:
```bash
chmod +x check-devtools.sh
./check-devtools.sh
```

Te indicará los requisitos necesarios para cada entorno, y los faltantes.

## 📦 Estructura del proyecto

```bash
.zshrc                          # Archivo principal, minimalista y modular
.zsh/
├── devtools.zsh                # Cargador de entornos por comando
└── env/                        # Módulos de entorno separados
    ├── android.zsh
    ├── devops.zsh
    ├── flutter.zsh
    ├── general.zsh
    ├── ios.zsh
    └── node.zsh
.config/
└── direnv/
    └── direnvrc                # Soporte para `.nvmrc` vía direnv
```

---

## 🚀 Instalación rápida

Dos opiones:

1. Hazlo ejecutable y ejecútalo desde la raíz del repositorio clonado:
```bash
chmod +x install.sh
./install.sh
```
2. Manualmente
```bash
git clone https://github.com/TechnoSpartan/zsh-devtools ~/.zsh-devtools
cp ~/.zsh-devtools/.zshrc ~/

mkdir -p ~/.zsh ~/.config/direnv
cp -r ~/.zsh-devtools/.zsh/* ~/.zsh/
cp ~/.zsh-devtools/.config/direnv/direnvrc ~/.config/direnv/direnvrc
```
>⚠️ Requiere tener instalado direnv (brew install direnv)

---

## 🧙‍♂️ Uso diario
### 🔧 Cargar entornos específicos
```bash
env-node       # Node.js con NVM
env-android    # Android SDK + JDK
env-ios        # Xcode y simuladores
env-flutter    # Flutter SDK
env-devops     # Docker y Kubernetes
env-general    # Completions, GPG, y herramientas comunes
```
---

### 🔄 Cargar .nvmrc automáticamente

En cualquier proyecto con `.nvmrc:

```bash
echo "use node" > .envrc
direnv allow
```

Esto cargará automáticamente la versión de Node correspondiente al entrar en la carpeta.

---

🧠 Recomendaciones

- Usa alias por proyecto en tu `.zshrc` o en tu .`zsh/env/personal.zsh`
- Añade tus secretos a `.envrc.local` y usa `.gitignore`
- Mejora la velocidad de arranque: evita `nvm global`, carga por necesidad

---

## 💬 Créditos

- Creado por **CodeSpartan** — __Tecnología que impulsa__ ⚡
- Con cariño, sudor, y scripts afilados.

---

## 🧩 ¿Contribuciones?

Pull requests y sugerencias son bienvenidas. Haz tu fork, mejora tu entorno, y comparte.