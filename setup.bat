@echo off

REM Diretório do script
set "SCRIPT_DIR=%~dp0"
set "NOVO_ASSECTRA_DIR=%SCRIPT_DIR%..\assectra"

REM Copiar o arquivo .exemplo.env para .env
echo Copiando arquivo .exemplo.env para .env...
copy "%SCRIPT_DIR%.example.env" "%SCRIPT_DIR%.env"

REM Diretório de trabalho relativo ao local do script
set "ASSECTRA_DIR=%SCRIPT_DIR%assectra"

echo Clonando repositório do Git...
REM Clone do repositório Git
git clone https://github.com/lschedel/assectra.git "%NOVO_ASSECTRA_DIR%"

REM echo Movendo os arquivos baixados...
REM Mover o diretório clonado para um nível acima
REM move "%ASSECTRA_DIR%" "%NOVO_DIR%"

echo Iniciando dependências Docker...
REM Construir a imagem Docker
docker-compose up --build -d

REM Mensagem para o usuário
echo O processo foi concluído. Pressione qualquer tecla para fechar esta janela.

REM Pausa para o usuário ler a mensagem
pause >nul
