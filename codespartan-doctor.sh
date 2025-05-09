#!/bin/bash

# ASCII logo
cat << "EOF"

                                                      ##  ===++#%%%%%%%
                                            ==:=-:.....:  ...........+%*=
                                     %%+=+ +....:::::::- *:::::::::.:%#:..::=#@
                                  *=-:...:@@:::::::::::- *::::::::::* -.........-=#
                              #+-..:::::::# *::::------+ =:------::-#-:::::::::....:=*
                            %=...:::::::::-@ ----------# =---------* -:::::::::::::...:*
                         %=:+#-.::::::-----* =--------=+%---------+ =-----------------=*
                       #-::::*%#-:---------+@*-----====*#=-------=*+---------------=#
                      +:::::::*%%---------==%@========= +========+ +-=----------=*%
                   %+::::::::--=%%=-----====+@*-======+ +=======+%*=========--=+@
                % #-:::---------=#@*-========% +=====++ ===+=+==##===========*
                  #-::-----------=+ *=======*#                    %#*=====-*@
               %==*%%+------=-=====*%*==**       **=-==----==*%%@     @*++%
              #=:::-+#@*=-==========*      +=-:::--=========--::.:-*#@@
             %=--------*@#+=======+     +:.-=++++++++++++++++++++==:..:#@
            %=-----------=*#====*    +::=+++++++++++++++++++++++++===-:=@
            +---============* *@  #=:-++++++++*#@@@   @    @@@%#*+===+%@
           %================#    *:=++++++%@                     @@@@@
          %  ##+===========#   +:=+++++#%@          *##***#@
          =-=+*#@@#++====+%  %+-+++++#@      %++:.............:==%@
         *========+#   #*@@ @+=++++%@     @*.....::::::............-%@
         +============+*   *-++++*%     +-:::-=========----::::.......-#@        #@
         +==========+++%   +++++#     #=--=+++++++========-----::::.....:#@    %=.=
        #+++++++++++++*   +++++%@   %+--++++++++++++=========----:::::....:%  +:...
        *++++++++++++*   ++++*%    @=-=+*****++++++++++++======-----:::::=# +:.:...+
        ++*%  %%#**++*  #++++*@   %===**********+++++++++++++=====-----== *=.:::...=
       *+++++++=++++*   +++++%   @+=+***************+++++++++++++====+  +-.-::::...:
       *++++++++++++*  #++++#    %==*********************++++++++**   =::---::::...:%
       *++++++++++++#  *+++**   @*=****************************#  #=--====---::::...#
       *++++++++++++%  ++++*    @=+***********************#    ==:=+++====---::::...+@
       #*+++++++++**  #++++#    *=********************#     +-=++++++++===---::::...:@
        ***##%  @#*+% %++++#   @*+***************%    #+===+***+++++++++===---:::....%
        *+*+*+++++++#@ *+++    @*+*************@  **++*********++++++*#@@    %+::....*
        #*++++++++++*@ *++*     *+************#@%****#%%********#%%             +:...=
         *+++++++++++#          #+************ %*******#@%##%%%#***+:+           *:..-#
         **++++++++++*          %************* %********#@#*****++++--            *..-%
         **++++++++++*           #************ @#*******%@#***+++++++-:* @  @      -..%
         #*****++++++*           #************#  #****#%@%****++++++++=:.-=+#%@@   -..=
          *********++*           #************+%   @@@  #*****+++++++++===-::...:  #:.:
          #**********#           %+*************@       @******++++++++====---:..+  =..:
          #**********            %=*************%        #*****+++++++++===----:.-   =:=
          #*********@           @+=************#@        @******++++++++====---:.:
          #********%            *-=********##            @********++++++====---:::#
          ********#            *-=******#                 %*****+++++++++====---:.+
         #*******#            +==*#                         *+*****++++++====---:::
         *******#@                                             *+***++++++====---:.+
         #****#@  %                                              ******+++====---:.:
        %+++*#                                                       *+**++====---::#
       #==+%                                                            #*++*+----:.=
       +*%                                                                  #**+=-:.:#
                                                                                #*+:.+
                                                                                    +*
EOF

echo ""
echo "🧪 Ejecutando diagnóstico del entorno CodeSpartan..."

# Mostrar ayuda
print_help() {
  echo ""
  echo "Uso:"
  echo "  codespartan-doctor [--help] [--fix]"
  echo ""
  echo "Opciones:"
  echo "  --help   Muestra este mensaje de ayuda"
  echo "  --fix    Instala herramientas faltantes con brew"
  echo ""
}

# Comprobación
check() {
  local name=$1
  local command=$2

  if command -v $command &> /dev/null; then
    echo "✅ $name detectado: $($command --version | head -n 1)"
  else
    echo "❌ $name NO encontrado."
    MISSING+=("$name:$command")
  fi
}

# Flags
if [[ "$1" == "--help" ]]; then
  print_help
  exit 0
fi

MISSING=()

check "Zsh" zsh
check "Direnv" direnv
check "Node.js" node
check "NVM" nvm
check "Java (JDK)" java
check "Android SDK" sdkmanager
check "Flutter" flutter
check "Docker" docker
check "Kubectl" kubectl
check "init-env" init-env

# Resultado
if [[ ${#MISSING[@]} -eq 0 ]]; then
  echo ""
  echo "🎉 Todo está correctamente instalado. ¡Enhorabuena, espartano!"
else
  echo ""
  echo "⚠️  Faltan herramientas:"
  for item in "${MISSING[@]}"; do
    name="${item%%:*}"
    cmd="${item##*:}"
    echo "   - $name ($cmd)"
  done

  if [[ "$1" == "--fix" ]]; then
    echo ""
    echo "🔧 Intentando instalar con brew..."
    for item in "${MISSING[@]}"; do
      cmd="${item##*:}"
      brew install "$cmd"
    done
    echo "✅ Reparación completa. Vuelve a ejecutar para verificar."
  else
    echo ""
    echo "👉 Ejecuta: codespartan-doctor --fix para intentar instalar con brew"
  fi
fi

echo ""
echo "🧠 Tip: Usa comandos como env-node, env-devops o init-env para preparar entornos."