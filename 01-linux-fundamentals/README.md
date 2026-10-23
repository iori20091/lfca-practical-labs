# Módulo 1 — Fundamentos Linux

## 1. Objetivos

- Identificar a distribuição Linux e a versão do kernel.
- Navegar pelo sistema de arquivos.
- Criar, copiar, mover e localizar arquivos.
- Pesquisar e filtrar conteúdo.
- Utilizar redirecionamentos e pipelines.
- Consultar processos e recursos do sistema.

## 2. Ambiente utilizado

- Sistema operacional: Debian Linux.
- Virtualização: Oracle VirtualBox.
- Terminal: Bash.
- Editor: Visual Studio Code.

## 3. Exercícios práticos

### Exercício 1 — Identificação do sistema

Comandos utilizados:

```bash

cat /etc/os-release
uname -r
hostnam
whoami
id

``

Objetivo: identificar o sistema operacional, o kernel, o nome da máquina e o usuário atual.

### Exercício 2 — Gerenciamento de arquivos

```bash
mkdir -p ~/lfca-lab/module-01
cd ~/lfca-lab/module-01

mkdir documentos logs backups

printf "Linux\nBash\nGit\nSeguranca\n" > documentos/tecnologias.txt

cp documentos/tecnologias.txt backups/
mv backups/tecnologias.txt backups/tecnologias-backup.txt

find . -type f
```

Objetivo: praticar criação de diretórios, gravação, cópia, renomeação e busca de arquivos.

### Exercício 3 — Pesquisa e processamento de texto

```bash
cat documentos/tecnologias.txt
grep -n "Git" documentos/tecnologias.txt
sort documentos/tecnologias.txt
wc -l documentos/tecnologias.txt
```

Objetivo: pesquisar palavras, ordenar linhas e contar linhas de um arquivo.

### Exercício 4 — Redirecionamento

```bash
sort documentos/tecnologias.txt > documentos/tecnologias-ordenadas.txt

cat documentos/tecnologias-ordenadas.txt
```

Objetivo: salvar a saída de um comando em um arquivo.

### Exercício 5 — Monitoramento do sistema

```bash
ps aux | head
uptime
free -h
df -h
```

Objetivo: consultar processos, tempo de atividade, memória e utilização de armazenamento.

## 4. Resultados obtidos

Preencher após executar os exercícios no ambiente Linux.

## 5. Problemas encontrados

Registrar erros, causas identificadas e soluções aplicadas.

## 6. Aprendizados

Descrever a finalidade dos comandos e os conceitos compreendidos durante a prática.

## 7. Critérios de conclusão

- [ ] Identifiquei o sistema e o kernel.
- [ ] Criei e manipulei arquivos e diretórios.
- [ ] Pesquisei e ordenei conteúdo.
- [ ] Utilizei redirecionamento.
- [ ] Consultei processos e recursos do sistema.
- [ ] Documentei os resultados reais.

## 8. Referências

- [Certificação LFCA — Linux Foundation](https://training.linuxfoundation.org/certification/certified-it-associate/)
- Páginas de manual dos comandos Linux, acessíveis com `man comando`.
