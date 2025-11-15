
FROM sharelatex/sharelatex

# Atualize o tlmgr
RUN tlmgr update --self

# Instala todos os pacotes LaTeX disponíveis
RUN tlmgr install scheme-full

# Limpa o cache para reduzir o tamanho da imagem
RUN tlmgr update --list

WORKDIR /overleaf
