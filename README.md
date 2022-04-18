
Desafio foi proposto pela empresa  **Keyworks**. Consiste em consumir a **API da SpaceX** e extrair informações básicas sobre os próximos lançamentos de foguetes e mostrar seu local de lançamento utilzando a **API do Google Maps**, seguindo as especificações de layout definidas. 

**PS:** Afim de simplificar a avaliação, a chave de API do Google foi exposta no repositório. Mas ela possúi vínculo com uma conta sem informações de fautramento e com escopo definido.

Tabela de conteúdos
=================
<!--ts-->
   * [Instruções de Uso](#instruções-de-uso)
   * [Pacotes fundamentais para o projeto](#pacotes-fundamentais-para-o-projeto)
   * [Estrutura do projeto (Modular)](#estrutura-do-projeto)
 
<!--te-->

# Instruções de Uso
 - Tenha o [**Flutter SDK**](https://flutter.dev/docs/get-started/install), instalado em sua máquina.
 - Selecione o Device que será usado para o teste, recomendo o [**AVD Manager**](https://developer.android.com/studio/run/managing-avds?hl=pt-br) do Android Studio.
 - Clone o repositório e execute o comando ````flutter run```` na pasta raiz do repositório.





## Pacotes fundamentais para o projeto.
 - [Dio](https://pub.dev/packages/dio): Biblioteca responsável por fazer as chamadas de API essa uma lib com alta aderência na comunidade e permite algumas facilidades como interceptors, que em projetos maiores pode ser bem útil.
 ###
 - [Mobx](https://pub.dev/packages/mobx): Gerenciador de estado utilizado no projeto, devido ao seu fácil entendimento e alta performance ele foi escolhido. Funciona de maneira reativa e para impulsionar mais ainda o desenvolvimento foi utilizado o **mobx_codegen**.
 ###
 - [SharedPreferences](https://pub.dev/packages/shared_preferences): Um local storage simples que funciona com o armazenamento no estilo chave-valor. Ele implementa o Share Preferences no **Android** e o UserDefaults no **iOS**
##

# Estrutura do projeto
A **Ui** foi estruturada de maneira modular, separando os módulos em: views, injeções de dependências, e controllers. E o que se refere as regras de negócio ficou em uma pasta **Core** separada em: **Providers, Repositories e Models**. Dessa maneira garantimos a segragação entre a **Ui**, que é volátil, com o resto do código. Observe que principalmente a parte do **Core** foi implementada seguindo príncipios **SOLID**, por isso as classes só se comunicam via interface e o uso do **Dio** e do **SharedPreferences** foram feitos através dos wrappers **ApiProvider** e **LocalStorageProvider** respectivamente.
* **/lib/src**
  * **/main.dart:** _Ponto de entrada do aplicativo_.   
  * **/shared_components:** _Widgets que podem ser utilizados em qualquer módulo_.
  * **/theme:** _Definição da paleta de cores do app e do **ThemeData** do App_.
  * **/utils:** _Possuí classes utlitárias sem vínculo especifico com a regra de negócio, mas pode auxiliar outras classes_.
  * **/core:** _Tudo que for relacionado a modelagem de regras de negócio e comunicações com API's e Storages_.
    * **/models:** _São as entidades utilizadas no nosso projeto, nesse caso especifico seriam as entidades baseadas na API da SpaceX, de maneira geral_.
    * **/repositories:** _Possuí todas as classes abstratas e especificas, responsáveis para fazer conexão com algum provedor de dados, seja via API ou LocalStorage. Nesse projet não se tornou necessário definir um repository abstrato_.
    * **/providers:** _Possuí todas as classes abstratas que fazem a conexão de dados via API ou LocalStorage_.
    
  * **app/modules:** _(todas as telas e componentes)_.
    * **/components:** _(componentes globais a toda aplicação)_.
    * **/name_module_controller:** _Faz intermédio entre a view e a camada de repository_.
    * **/name_module_module:** _Configurações de injeções de dependência e rotas_.
    * **/name_module_page:** _Widget principal do módulo que ocupa a tela inteira_. 

  * **PS:** A estrutura modular começa com o módulo **App** e apartir dele se geram os módulos subsequentes.

#

<kbd> <a href="url"><img src="https://media-exp1.licdn.com/dms/image/C4D03AQEET_PIFFi3Bg/profile-displayphoto-shrink_400_400/0/1615702283090?e=1655942400&v=beta&t=2gFEU0LS9NWmGp6PAvLYLAtzmJ19BninCIFs3vX_OTs" height="auto" width="50" style="border-radius:50%"></a></kbd>   Feito por: **Julio Rennan** 

[![Linkedin Badge](https://img.shields.io/badge/-Julio-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/julio-souza-4ab63b1aa/)](https://www.linkedin.com/in/julio-souza-4ab63b1aa/) 
  
