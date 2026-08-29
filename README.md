# Lógica Reconfigurável — Projetos em VHDL

Repositório com atividades práticas e o projeto final desenvolvidos na disciplina de **Lógica Reconfigurável**, utilizando a linguagem **VHDL**, o ambiente **Intel Quartus Prime** e a placa FPGA **DE10-Lite**.

Ao longo das atividades foram estudados conceitos fundamentais de desenvolvimento de sistemas digitais em FPGA, começando por circuitos combinacionais simples e avançando para componentes parametrizáveis, organização do código com `package`, uso de `function` e `procedure`, temporização, circuitos sequenciais e máquinas de estados finitos.

Os **relatórios técnicos** de todas as atividades desenvolvidas estão disponíveis na pasta [`Relatorios`](./Relatorios/).

Os arquivos completos dos projetos foram mantidos para as:

- **Atividade 3** — Display de 7 Segmentos;
- **Atividade 6** — Detector de Máximo e Mínimo;
- **Atividade 7** — Timer Regressivo;
- **Projeto Final** — Cofre Digital com Senha Programável.

---

## Índice

1. [Organização do Repositório](#organização-do-repositório)
2. [Tecnologias e Ferramentas](#tecnologias-e-ferramentas)
3. [Resumo das Atividades](#resumo-das-atividades)
4. [Atividade 1 — Portas Lógicas](#atividade-1--portas-lógicas)
5. [Atividade 2 — Introdução à DE10-Lite](#atividade-2--introdução-à-de10-lite)
6. [Atividade 3 — Display de 7 Segmentos](#atividade-3--display-de-7-segmentos)
7. [Atividade 4 — Multiplexador Genérico](#atividade-4--multiplexador-genérico)
8. [Atividade 6 — Detector de Máximo e Mínimo](#atividade-6--detector-de-máximo-e-mínimo)
9. [Atividade 7 — Timer Regressivo](#atividade-7--timer-regressivo)
10. [Projeto Final — Cofre Digital](#projeto-final--cofre-digital)
11. [Evolução dos Conceitos](#evolução-dos-conceitos)
12. [Como Abrir os Projetos](#como-abrir-os-projetos)
13. [Sobre os Relatórios](#sobre-os-relatórios)

---

# Organização do Repositório

A documentação foi separada dos projetos completos para manter o repositório mais organizado.

```text
.
├── README.md
│
├── Relatorios/
│   ├── projeto1_LógicaReconfig.pdf
│   ├── projeto2_LógicaReconfig.pdf
│   ├── Atividade_3.pdf
│   ├── Atividade_4.pdf
│   ├── Atividade_6.pdf
│   ├── Atividade_7.pdf
│   └── Final_LogicaReconfig.pdf
│
├── Projeto3/
│   └── Arquivos do projeto da Atividade 3
│
├── Projeto6/
│   └── Arquivos do projeto da Atividade 6
│
├── Projeto7/
│   └── Arquivos do projeto da Atividade 7
│
└── Projeto Final/
    └── Arquivos do Cofre Digital
```

A pasta [`Relatorios`](./Relatorios/) contém a documentação completa das atividades, incluindo explicações das implementações, códigos VHDL, simulações, diagramas RTL, atribuições de pinos e registros dos testes realizados.

> Os projetos completos disponíveis neste repositório são referentes às Atividades **3, 6 e 7** e ao **Projeto Final**.  
> Para as demais atividades, foi mantido somente o relatório técnico.

---

# Tecnologias e Ferramentas

As principais tecnologias utilizadas durante a disciplina foram:

| Tecnologia / Recurso | Utilização |
|---|---|
| **VHDL** | Descrição dos circuitos digitais |
| **Intel Quartus Prime** | Desenvolvimento, síntese e compilação |
| **ModelSim** | Simulação funcional |
| **DE10-Lite** | Implementação física dos circuitos |
| **FPGA MAX 10** | Dispositivo programável da DE10-Lite |
| **Pin Planner** | Associação das portas VHDL aos pinos físicos |
| **RTL Viewer** | Visualização do hardware sintetizado |
| **Displays de 7 segmentos** | Interface de saída |
| **Switches** | Entradas digitais |
| **Push-buttons** | Controle dos circuitos |
| **LEDs** | Indicação visual |
| **Clock de 50 MHz** | Base de temporização dos projetos sequenciais |

---

# Resumo das Atividades

| Atividade | Tema | Projeto disponível |
|---|---|:---:|
| **1** | Portas Lógicas | ❌ |
| **2** | Introdução à placa DE10-Lite | ❌ |
| **3** | Display de 7 Segmentos | ✅ |
| **4** | Multiplexador Genérico | ❌ |
| **6** | Detector de Máximo e Mínimo | ✅ |
| **7** | Timer Regressivo | ✅ |
| **Final** | Cofre Digital com Senha Programável | ✅ |

---

# Atividade 1 — Portas Lógicas

A primeira atividade teve como objetivo introduzir o desenvolvimento de circuitos digitais utilizando **VHDL** e o ambiente de desenvolvimento **Quartus Prime**.

O circuito utiliza duas entradas digitais:

```text
A
B
```

e produz oito saídas correspondentes às principais operações da lógica booleana.

| Saída | Operação |
|---|---|
| `z1` | NOT A |
| `z2` | NOT B |
| `z3` | AND |
| `z4` | OR |
| `z5` | NAND |
| `z6` | NOR |
| `z7` | XOR |
| `z8` | XNOR |

As operações foram implementadas através de atribuições concorrentes em VHDL.

Exemplo:

```vhdl
z3 <= a and b;
z4 <= a or b;
z7 <= a xor b;
```

Também foi realizada a **simulação funcional** das entradas e saídas e analisado o **diagrama RTL** produzido após a síntese.

### Principais conceitos

- estrutura de uma entidade VHDL;
- `entity`;
- `architecture`;
- sinais de entrada e saída;
- atribuições concorrentes;
- operadores booleanos;
- simulação;
- síntese;
- diagrama RTL.

### Arquivos

📄 [Relatório da Atividade 1](./Relatorios/projeto1_LógicaReconfig.pdf)

---

# Atividade 2 — Introdução à DE10-Lite

Nesta atividade os circuitos começaram a ser implementados fisicamente na placa **DE10-Lite**.

A atividade foi dividida em dois exercícios.

## Exercício 1 — Portas Lógicas na FPGA

O circuito desenvolvido na atividade anterior foi transferido para a placa.

As entradas foram associadas às **chaves deslizantes** e os resultados das operações lógicas foram associados aos **LEDs**.

Isso permitiu observar fisicamente o comportamento das portas:

```text
NOT
AND
OR
NAND
NOR
XOR
XNOR
```

Também foi introduzido o uso do **Pin Planner**, ferramenta responsável por associar as portas declaradas no código VHDL aos pinos físicos do FPGA.

---

## Exercício 2 — Circuito de Controle de Máquina de Cópias

O segundo exercício consistiu na implementação de um circuito combinacional com quatro entradas.

O sistema deveria ativar a saída sempre que **duas ou mais chaves estivessem fechadas simultaneamente**.

Para desenvolver a solução foram utilizados:

- tabela-verdade;
- estados `don't care`;
- Mapa de Karnaugh;
- simplificação booleana;
- implementação em VHDL;
- simulação;
- síntese;
- análise do diagrama RTL.

A expressão lógica simplificada utilizada foi baseada nas combinações entre as quatro entradas.

### Principais conceitos

- utilização física da FPGA;
- switches;
- LEDs;
- Pin Planner;
- tabela-verdade;
- Mapa de Karnaugh;
- estados `don't care`;
- simplificação de funções booleanas;
- lógica combinacional.

### Arquivos

📄 [Relatório da Atividade 2](./Relatorios/projeto2_LógicaReconfig.pdf)

---

# Atividade 3 — Display de 7 Segmentos

💻 **Projeto completo disponível**

Nesta atividade foi desenvolvido um circuito capaz de apresentar **dois números decimais em dois displays de 7 segmentos da DE10-Lite**.

Cada número é fornecido através de uma entrada de **4 bits**.

```text
sw0[3:0] → HEX0
sw1[3:0] → HEX1
```

Quatro bits permitem representar valores de:

```text
0000 até 1111
```

ou seja:

```text
0 até 15
```

Entretanto, os displays deveriam representar apenas dígitos decimais de `0` até `9`.

Por isso, entradas entre:

```text
0000 → 0
0001 → 1
...
1001 → 9
```

são apresentadas normalmente.

Quando o valor é maior que `9`, o display apresenta:

```text
E
```

indicando uma entrada inválida.

---

## Conversão para os Displays

A lógica de conversão foi implementada utilizando:

```vhdl
with ... select
```

Exemplo:

```vhdl
with sw0 select
hex0 <=
    "0000001" when "0000",
    "1001111" when "0001",
    "0010010" when "0010",
    "0000110" when "0011",
    "1001100" when "0100",
    "0100100" when "0101",
    "0100000" when "0110",
    "0001111" when "0111",
    "0000000" when "1000",
    "0000100" when "1001",
    "0110000" when others;
```

Os displays da **DE10-Lite utilizam lógica ativa baixa**.

Isso significa que:

```text
0 → segmento ligado
1 → segmento desligado
```

---

## Estrutura

```text
Entradas binárias
      │
      ▼
  sw0 / sw1
      │
      ▼
with ... select
      │
      ▼
Decodificação
      │
      ▼
 HEX0 / HEX1
```

### Principais conceitos

- `std_logic_vector`;
- barramentos;
- `with ... select`;
- circuitos combinacionais;
- displays de 7 segmentos;
- lógica ativa baixa;
- tratamento de entradas inválidas;
- Pin Planner;
- síntese;
- diagrama RTL.

### Arquivos

💻 [Projeto completo da Atividade 3](./Projeto3/)

📄 [Relatório da Atividade 3](./Relatorios/Atividade_3.pdf)

---

# Atividade 4 — Multiplexador Genérico

Nesta atividade foi desenvolvido um **multiplexador parametrizável**, introduzindo o uso de `generic` em VHDL.

Em vez de desenvolver um multiplexador com tamanho fixo, foi criado um único componente capaz de gerar diferentes configurações através da alteração de parâmetros.

Foram utilizados dois parâmetros principais:

```text
S = quantidade de bits do seletor
M = quantidade de bits de cada entrada
```

A quantidade de entradas é determinada por:

```text
N = 2^S
```

---

## Exemplo

Para:

```text
S = 2
M = 2
```

temos:

```text
2² = 4 entradas
```

com:

```text
2 bits por entrada
```

Já para:

```text
S = 4
M = 8
```

o circuito passa a possuir:

```text
16 entradas de 8 bits
```

sem a necessidade de alterar a estrutura principal do código.

---

## Barramento de Entrada

As entradas são agrupadas em um único vetor.

A palavra correspondente à seleção é obtida através de **slicing dinâmico**:

```vhdl
z <= N(
    ((selecao + 1) * M) - 1
    downto
    (selecao * M)
);
```

Por exemplo:

```text
selecao = 0 → primeira palavra
selecao = 1 → segunda palavra
selecao = 2 → terceira palavra
...
```

### Principais conceitos

- `generic`;
- parametrização de hardware;
- componentes reutilizáveis;
- multiplexadores;
- `bit_vector`;
- slicing;
- barramentos;
- síntese parametrizada;
- análise RTL.

### Arquivos

📄 [Relatório da Atividade 4](./Relatorios/Atividade_4.pdf)

---

# Atividade 6 — Detector de Máximo e Mínimo

💻 **Projeto completo disponível**

Nesta atividade foi desenvolvido um circuito capaz de analisar várias entradas e determinar simultaneamente:

```text
menor valor
maior valor
```

O projeto introduziu recursos de organização e reutilização de código em VHDL.

---

## Organização

A implementação foi dividida em dois arquivos principais:

```text
atividade6.vhd
atividade6_pkg.vhd
```

O `package` contém elementos reutilizáveis utilizados pela entidade principal.

---

## Tipo Personalizado

Foi criado um tipo:

```vhdl
type int_array is array (natural range <>) of integer;
```

O símbolo:

```text
<>
```

indica que o tamanho do vetor não é fixado durante a declaração do tipo.

Dessa forma, o mesmo tipo pode representar vetores com diferentes quantidades de elementos.

---

## Procedure `find_min_max`

A busca pelo maior e menor valor foi implementada utilizando um:

```vhdl
procedure
```

O procedimento recebe o vetor de entradas e retorna:

```text
min_val
max_val
```

A lógica utilizada é uma **varredura linear**.

Inicialmente:

```text
mínimo = primeiro elemento
máximo = primeiro elemento
```

Depois, os demais elementos são percorridos e comparados.

De forma simplificada:

```text
Para cada valor:

    se valor < mínimo
        mínimo = valor

    se valor > máximo
        máximo = valor
```

---

## Por que utilizar `procedure`?

Uma `function` em VHDL retorna apenas um valor.

Nesta atividade era necessário retornar dois resultados:

```text
mínimo
máximo
```

Por isso foi utilizado um `procedure`, que permite múltiplos parâmetros de saída.

---

## Parametrização

A entidade utiliza:

```text
num_inputs
num_bits
```

Como parâmetros genéricos.

Na configuração utilizada nos testes:

```text
num_inputs = 4
num_bits   = 8
```

cada entrada pode representar valores entre:

```text
0 e 255
```

---

## Estrutura Simplificada

```text
Entrada 1 ─┐
Entrada 2 ─┤
Entrada 3 ─┼──► int_array
Entrada 4 ─┘
               │
               ▼
         find_min_max
           │       │
           ▼       ▼
        min_out  max_out
```

### Principais conceitos

- `package`;
- `procedure`;
- tipos definidos pelo usuário;
- arrays irrestritos;
- `generic`;
- atributos `'low` e `'high`;
- comparação de valores;
- circuitos combinacionais;
- reutilização de código;
- modularização.

### Arquivos

💻 [Projeto completo da Atividade 6](./Projeto6/)

📄 [Relatório da Atividade 6](./Relatorios/Atividade_6.pdf)

---

# Atividade 7 — Timer Regressivo

💻 **Projeto completo disponível**

Nesta atividade foi desenvolvido um **timer regressivo em VHDL**.

O circuito realiza uma contagem em segundos e apresenta o valor atual em **quatro displays de 7 segmentos**.

Ao chegar a zero, um LED é acionado indicando o fim da contagem.

---

## Tempos Disponíveis

Uma entrada de seleção de dois bits define o valor inicial:

| `sel` | Tempo |
|---|---:|
| `00` | 10 segundos |
| `01` | 30 segundos |
| `10` | 100 segundos |
| `11` | 1000 segundos |

---

## Divisão do Clock

A DE10-Lite possui clock de:

```text
50 MHz
```

O projeto utiliza esse clock para gerar internamente um pulso:

```text
tick_1hz
```

a cada segundo.

Esse pulso é responsável por decrementar a contagem.

```text
CLOCK_50
    │
    ▼
Divisor de Clock
    │
    ▼
 tick_1hz
    │
    ▼
Contador Regressivo
```

---

## Controles

O timer possui:

### Reset

```text
reset_n = 0
```

carrega novamente o valor inicial selecionado.

### Pause

```text
pause_n = 1
```

mantém a contagem funcionando.

```text
pause_n = 0
```

pausa a contagem.

### Final da Contagem

Quando:

```text
seconds = 0
```

a saída:

```text
led_done
```

é ativada.

---

## Conversão para BCD

Para mostrar o valor decimal nos quatro displays, o valor inteiro da contagem é convertido para quatro dígitos BCD.

Foi criada a função:

```vhdl
int_to_bcd
```

que separa:

```text
milhar
centena
dezena
unidade
```

Depois, cada dígito é convertido para o padrão do display através de:

```vhdl
bcd_to_7seg
```

---

## Organização

O projeto está dividido em:

```text
atividade7.vhd
timer_pkg.vhd
```

O `timer_pkg.vhd` contém as funções auxiliares, enquanto `atividade7.vhd` possui a lógica principal da contagem.

---

## Estrutura Simplificada

```text
                sel
                 │
                 ▼
              Preset
                 │
                 ▼
CLOCK ──► Divisor 1 Hz
                 │
                 ▼
        Contador Regressivo
          │             │
          │             └──► led_done
          ▼
      int_to_bcd
          │
          ▼
     bcd_to_7seg
          │
          ▼
 HEX3 HEX2 HEX1 HEX0
```

### Principais conceitos

- circuitos sequenciais;
- divisão de clock;
- temporização;
- `package`;
- `function`;
- BCD;
- displays de 7 segmentos;
- reset assíncrono;
- habilitação de contagem;
- pausa;
- `generic`.

### Arquivos

💻 [Projeto completo da Atividade 7](./Projeto7/)

📄 [Relatório da Atividade 7](./Relatorios/Atividade_7.pdf)

---

# Projeto Final — Cofre Digital

💻 **Projeto completo disponível**

Como projeto final foi desenvolvido um **cofre digital com senha programável**, implementado em VHDL para a placa **DE10-Lite**.

O projeto reúne vários dos conceitos trabalhados anteriormente na disciplina em um sistema digital completo.

---

## Funcionalidades

O sistema permite:

- inserir uma senha;
- verificar a senha digitada;
- abrir e fechar o cofre;
- detectar senhas incorretas;
- contabilizar tentativas inválidas;
- bloquear o sistema após cinco erros;
- mostrar um contador regressivo durante o bloqueio;
- redefinir a senha;
- cancelar uma redefinição sem alterar a senha anterior;
- apresentar os estados através dos displays;
- indicar estados através dos LEDs.

---

## Senha

A senha possui:

```text
4 posições
```

Cada posição é formada pelas chaves:

```text
SW[8:0]
```

Isso permite que cada posição represente valores entre:

```text
0 e 511
```

A senha inicial definida no projeto é:

```text
1 - 2 - 3 - 4
```

A confirmação de cada posição é realizada através do botão:

```text
KEY0
```

---

## Estado Inicial

Ao iniciar, o sistema entra no estado:

```text
ST_CLOSE
```

e apresenta nos displays:

```text
CLOSE
```

---

## Entrada da Senha

A sequência de funcionamento é:

```text
Selecionar valor em SW[8:0]
        │
        ▼
Pressionar KEY0
        │
        ▼
Valor armazenado
        │
        ▼
Repetir 4 vezes
        │
        ▼
Verificar senha
```

Durante a entrada da senha, os displays apresentam:

```text
PASS
```

---

## Senha Correta

Caso a senha digitada seja igual à senha armazenada:

```text
ST_VERIFY
     │
     ▼
 ST_OPEN
```

Os displays apresentam:

```text
OPEN
```

e um LED indica que o cofre está aberto.

---

## Senha Incorreta

Caso a senha esteja incorreta:

```text
ST_VERIFY
     │
     ▼
 ST_FAIL
```

Os displays apresentam:

```text
FAIL
```

e o contador de erros é incrementado.

---

# Sistema de Bloqueio

Após:

```text
5 tentativas incorretas
```

o sistema entra em:

```text
ST_LOCK
```

Nesse estado:

- novas tentativas são ignoradas;
- todos os LEDs piscam;
- os displays apresentam `LOCK`;
- o tempo restante é mostrado nos displays;
- o sistema permanece bloqueado até o contador terminar.

O tempo padrão definido no projeto é:

```text
LOCK_TIME = 30 segundos
```

Após a contagem chegar a zero:

```text
ST_LOCK
   │
   ▼
ST_CLOSE
```

e o contador de erros é zerado.

---

# Redefinição da Senha

A senha só pode ser alterada quando o cofre está aberto.

Com:

```text
OPEN
```

sendo apresentado, o botão:

```text
KEY1
```

leva o sistema para:

```text
ST_SET
```

Nesse estado uma nova senha de quatro posições pode ser cadastrada.

---

## Proteção contra alteração parcial

Durante a redefinição, os novos valores são inicialmente armazenados em uma variável temporária.

A senha definitiva só é alterada após a confirmação das **quatro posições**.

Isso evita que uma senha incompleta seja salva.

Por exemplo:

```text
Entrar em SET
     │
     ▼
Digitar posição 1
     │
     ▼
Digitar posição 2
     │
     ▼
Cancelar com KEY1
     │
     ▼
Senha antiga permanece válida
```

Somente após:

```text
4 posições confirmadas
```

a nova senha substitui a anterior.

---

# Máquina de Estados

O projeto foi estruturado através de uma **Máquina de Estados Finitos (FSM)**.

Os estados utilizados são:

| Estado | Função |
|---|---|
| `ST_CLOSE` | Cofre fechado |
| `ST_INPUT` | Entrada da senha |
| `ST_VERIFY` | Verificação |
| `ST_OPEN` | Cofre aberto |
| `ST_SET` | Redefinição da senha |
| `ST_FAIL` | Senha incorreta |
| `ST_LOCK` | Sistema bloqueado |

Fluxo simplificado:

```text
                  ┌────────────┐
                  │  ST_CLOSE  │
                  │   CLOSE    │
                  └─────┬──────┘
                        │ KEY0
                        ▼
                  ┌────────────┐
                  │  ST_INPUT  │
                  │    PASS    │
                  └─────┬──────┘
                        │
                    4 posições
                        │
                        ▼
                  ┌────────────┐
                  │ ST_VERIFY  │
                  └─────┬──────┘
                       / \
                      /   \
               correta     incorreta
                  │             │
                  ▼             ▼
          ┌────────────┐  ┌────────────┐
          │  ST_OPEN   │  │  ST_FAIL   │
          │    OPEN    │  │    FAIL    │
          └─────┬──────┘  └──────┬─────┘
                │                  │
              KEY1             < 5 erros
                │                  │
                ▼                  ▼
          ┌────────────┐       ST_CLOSE
          │   ST_SET   │
          │    SET     │
          └────────────┘

                    5 erros
                       │
                       ▼
                 ┌────────────┐
                 │  ST_LOCK   │
                 │    LOCK    │
                 └─────┬──────┘
                       │
                   30 segundos
                       │
                       ▼
                   ST_CLOSE
```

---

# Temporização

O projeto utiliza o clock de:

```text
50 MHz
```

da DE10-Lite.

Um contador interno gera:

```text
tick_1hz
```

a cada segundo.

Esse sinal é utilizado principalmente para:

```text
tempo de FAIL
tempo de LOCK
contador regressivo
piscar dos LEDs
```

---

# Tratamento dos Botões

Os botões mecânicos podem apresentar pequenos repiques elétricos ao serem pressionados.

Por isso, a leitura dos botões foi realizada em uma frequência menor definida pelo parâmetro:

```text
KEY_SAMPLE_HZ
```

No projeto:

```text
KEY_SAMPLE_HZ = 20 Hz
```

Essa amostragem também permite detectar a transição entre botão solto e pressionado.

---

# Interface com a DE10-Lite

O projeto utiliza os principais recursos disponíveis na placa.

## Entradas

```text
CLOCK_50
KEY[1:0]
SW[9:0]
```

## Saídas

```text
LEDR[9:0]

HEX0
HEX1
HEX2
HEX3
HEX4
HEX5
```

---

## Função das Entradas

| Entrada | Função |
|---|---|
| `CLOCK_50` | Clock de 50 MHz |
| `SW[8:0]` | Valor atual da posição da senha |
| `SW[9]` | Reset geral |
| `KEY[0]` | Confirmação |
| `KEY[1]` | Cancelamento / redefinição |

---

## Mensagens nos Displays

Durante a operação os displays podem apresentar:

```text
CLOSE
PASS
OPEN
SET
FAIL
LOCK
```

No estado `LOCK`, também são apresentados os segundos restantes.

---

# Organização do Código

O Projeto Final foi dividido principalmente em dois arquivos:

```text
projeto.vhd
cofre_pkg.vhd
```

## `cofre_pkg.vhd`

O package contém elementos auxiliares relacionados aos displays de 7 segmentos.

Entre eles estão constantes utilizadas para representar letras como:

```text
A
C
E
F
I
K
L
N
O
P
S
T
```

Também são utilizadas funções para converter números em padrões compatíveis com os displays.

---

## `projeto.vhd`

O arquivo principal contém:

```text
entidade principal
máquina de estados
registradores da senha
leitura dos botões
divisão de clock
temporizadores
contador de erros
controle do bloqueio
controle dos LEDs
controle dos displays
redefinição da senha
```

---

## Estrutura Geral

```text
                  ┌────────────────┐
SW[8:0] ─────────►│                │
KEY[1:0] ────────►│                │
                  │ Máquina de     │
CLOCK_50 ────────►│ Estados        │
                  │                │
                  └───────┬────────┘
                          │
          ┌───────────────┼──────────────┐
          │               │              │
          ▼               ▼              ▼
    Registradores      Contadores     Temporização
      de senha          de erros         1 Hz
          │               │              │
          └───────────────┼──────────────┘
                          │
                    ┌─────┴─────┐
                    │           │
                    ▼           ▼
                  LEDs       Displays
```

### Principais conceitos

- máquina de estados finitos;
- circuitos sequenciais;
- registradores;
- contadores;
- divisão de clock;
- temporização;
- `package`;
- `function`;
- tipos personalizados;
- tratamento de botões;
- displays de 7 segmentos;
- armazenamento de senha;
- controle de estados;
- integração entre hardware e lógica.

### Arquivos

💻 [Projeto completo do Cofre Digital](./Projeto%20Final/)

📄 [Relatório do Projeto Final](./Relatorios/Final_LogicaReconfig.pdf)

---

# Evolução dos Conceitos

As atividades foram desenvolvidas de forma progressiva.

| Etapa | Conceitos principais |
|---|---|
| **Atividade 1** | VHDL básico e operadores lógicos |
| **Atividade 2** | Implementação física na FPGA e Pin Planner |
| **Atividade 3** | Vetores e displays de 7 segmentos |
| **Atividade 4** | Componentes parametrizáveis com `generic` |
| **Atividade 6** | `package`, tipos personalizados e `procedure` |
| **Atividade 7** | `function`, BCD, temporização e circuitos sequenciais |
| **Projeto Final** | FSM, registradores, contadores e integração do sistema |

De forma resumida, a evolução pode ser representada por:

```text
Portas Lógicas
      │
      ▼
Implementação na FPGA
      │
      ▼
Displays de 7 Segmentos
      │
      ▼
Componentes Genéricos
      │
      ▼
Package / Procedure
      │
      ▼
Function / Temporização
      │
      ▼
Máquina de Estados
      │
      ▼
Sistema Digital Completo
```

---

# Como Abrir os Projetos

Os projetos completos podem ser utilizados no **Intel Quartus Prime**.

O procedimento geral é:

1. Abrir o Quartus Prime.
2. Criar um novo projeto ou abrir o projeto existente.
3. Adicionar os arquivos `.vhd`.
4. Definir a entidade principal como **Top-Level Entity**.
5. Adicionar os arquivos de `package`, quando existentes.
6. Selecionar o dispositivo correspondente à placa DE10-Lite.
7. Realizar a compilação.
8. Conferir as associações no **Pin Planner**.
9. Conectar a placa DE10-Lite.
10. Utilizar o **Programmer** do Quartus para gravar o circuito na FPGA.

Nos projetos que utilizam mais de um arquivo VHDL, como as Atividades 6 e 7 e o Projeto Final, os arquivos auxiliares devem estar adicionados ao projeto antes da compilação.

---

# Sobre os Relatórios

Os relatórios técnicos presentes na pasta:

[`Relatorios`](./Relatorios/)

contêm informações mais detalhadas sobre cada implementação.

Entre os conteúdos documentados estão:

- objetivos das atividades;
- explicação do funcionamento;
- códigos VHDL;
- atribuição dos pinos físicos;
- simulações funcionais;
- formas de onda;
- diagramas RTL;
- testes realizados;
- fotografias da DE10-Lite;
- resultados;
- conclusões.

Para compreender uma atividade em maior profundidade, recomenda-se consultar o relatório correspondente.

---

# Contexto Acadêmico

Os projetos deste repositório foram desenvolvidos como atividades acadêmicas da disciplina de **Lógica Reconfigurável**, utilizando VHDL e FPGA como ferramentas para o estudo e implementação de sistemas digitais.

O objetivo do repositório é preservar e organizar os projetos desenvolvidos, servindo também como material de consulta para estudos futuros.