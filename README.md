# JOGO DE CLICKAR

Jogo de precisão desenvolvido com Flutter e Dart. O objetivo é tocar no alvo o maior número de vezes possível antes que o tempo termine.

## Tecnologias

![Flutter](https://img.shields.io/badge/Flutter-3.47.0-02569B?logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-3.13.0-0175C2?logo=dart&logoColor=white)
![Material 3](https://img.shields.io/badge/Material%203-UI-6750A4?logo=materialdesign&logoColor=white)

## Funcionalidades

- Cronômetro de 30 segundos.
- Sistema de pontuação baseado nos acertos.
- Alvo que muda de posição após cada toque.
- Tela inicial para iniciar uma partida.
- Tela de jogo com pontuação e tempo restante.
- Tela de fim de partida.
- Opção para jogar novamente.
- Opção para retornar à tela inicial.

## Conceitos utilizados

O projeto utiliza conceitos fundamentais do Flutter, como:

- `StatelessWidget` e `StatefulWidget`.
- Gerenciamento de estado com `setState`.
- Navegação entre telas com `Navigator`.
- Detecção de eventos de toque com `GestureDetector`.
- Controle de tempo com `Timer.periodic`.
- Posicionamento de elementos com `Stack` e `Positioned`.
- Criação de widgets reutilizáveis.
- Separação entre telas, estado, serviços e componentes da interface.

## Como executar

Existem duas formas de utilizar o jogo: executando o projeto com Flutter ou instalando o APK disponibilizado nas Releases do repositório.

### Executando com Flutter

#### Pré-requisitos

É necessário ter o Flutter instalado e configurado no ambiente de desenvolvimento.

Verifique o ambiente com:

    flutter doctor

#### Clonando o projeto

Clone o repositório:

    git clone https://github.com/Breno-Guedes/jogo-de-clickar.git

Acesse a pasta do projeto:

    cd jogo-de-clickar

Instale as dependências:

    flutter pub get

#### Executando no dispositivo

Para uma melhor experiência, conecte um dispositivo Android com a depuração USB ativada ou utilize um emulador Android.

Verifique os dispositivos disponíveis:

    flutter devices

Depois, execute o projeto informando o identificador do dispositivo:

    flutter run -d ID_DO_DISPOSITIVO

Substitua `ID_DO_DISPOSITIVO` pelo identificador apresentado pelo comando `flutter devices`.

### Executando pelo APK

Também é possível utilizar o jogo diretamente no Android sem configurar o ambiente Flutter.

O APK do jogo está disponível na seção **Releases** deste repositório.

Basta acessar a Release desejada, baixar o arquivo APK e instalá-lo em um dispositivo Android compatível.

## Como jogar

1. Abra o aplicativo.
2. Selecione **Iniciar jogo**.
3. Toque no alvo sempre que ele aparecer em uma nova posição.
4. Cada acerto aumenta a pontuação.
5. A partida termina quando o cronômetro chega a zero.
6. Escolha entre jogar novamente ou voltar à tela inicial.

## Objetivo do projeto

O projeto tem como objetivo praticar o desenvolvimento de aplicações interativas com Flutter e Dart, trabalhando principalmente com gerenciamento de estado, navegação, eventos de interação, temporização e composição de widgets.

## Repositório

O código-fonte completo do projeto está disponível no GitHub:

https://github.com/Breno-Guedes/jogo-de-clickar

## Autor

**Breno de Souza Guedes**

Desenvolvido como projeto de estudo em Flutter e Dart.