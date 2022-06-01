# 11821EAU005-ATV1

## 1. Objetivo ##

Configurar e preparar o ambiente de inicialização da STM

## Passo 0 ##

Criar a pasta de destino lab-02
Criar o arquivo main.c

## Passo 1: STARTUP ##
Criar o arquivo startup.c 
Incluir as bibliotecas
Definir as variáveis de inicialização, tamanho e término da RAM

## Passo 2: STARTUP -> STACKPOINTER + VI ##

A partir da tabela de vetores do manual criar o reset_handler
Definir todos os parâmetros dos vetores como defaut_handler

## Passo 3: STARTUP -> VETORES DE INTERRUPÇÃO ##

Definir os vetores de interruções em suas respectivas posições

## Passo 4: STARTUP -> EXPORT LINKER SCRIPT VARIABLES ##

Exportas as variáveis do linker 
.data
.bss

## Passo 5: STARTUP -> RESET HANDLER ##

Copiar a seção .data para a RAM 
Preencher a seção .bss com zero

## Passo 5: STARTUP -> END ##

Chamar a função main()

## Passo 6: Linker ##

Criar o arquivo stm32f411-rom.ld

## Passo 7: Linker ##
ENTRY;
MEMORY;
SECTIONS;
KEEP;
ALIGN; e;
AT>.

## Passo 8: Makefile ##

Iniciar as variáveis genéricas
Criar o blinky
Instanciar o blinky aos arquivos .o e .c
Criar um objcopy
Criar o .elf
