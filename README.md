# Business Manager

## Descrição do Projeto

Business Manager é uma aplicação web desenvolvida para gerenciar empresas e suas atividades. A aplicação foi construída utilizando a arquitetura MVC, seguindo as melhores práticas de desenvolvimento. Ela inclui funcionalidades de CRUD para empresas e atividades, além de validações e mensagens personalizadas.

## Estrutura do Projeto
### Diretórios e Arquivos

```
src/main
├── java/dev/andersonleite/erp
│   ├── controller
│   │   ├── GestaoEmpresasBean.java
│   │   └── RamoAtividadeConverter.java
│   ├── model
│   │   ├── Empresa.java
│   │   ├── RamoAtividade.java
│   │   └── TipoEmpresa.java
│   ├── repository
│   │   ├── Empresas.java
│   │   └── RamoAtividades.java
│   ├── service
│   │   └── EmpresaRegistroServico.java
│   └── util
│       ├── EntityManagerProducer.java
│       ├── FacesMessages.java
│       ├── Transacional.java
│       └── TransacionalInterceptor.java
├── resources
│   ├── dev/andersonleite/erp
│   │   └── Messages.properties
│   ├── META-INF
│   │   ├── beans.xml
│   │   ├── persistence.xml
│   │   └── ValidationMessages.properties
│   └── sql
│       └── dados-iniciais.sql
└── webapp
    ├── META-INF
    │   └── context.xml
    ├── WEB-INF
    │   ├── template
    │   ├── faces-config.xml
    │   └── web.xml
    └── GestaoEmpresas.xhtml

docker-compose.yaml
Dockerfile
```

### Estrutura do Projeto

A estrutura do projeto segue o padrão MVC:

- **Controller**: Contém os managed beans e conversores.
- **Model**: Entidades JPA que representam os dados do sistema.
- **Repository**: Classes que lidam com a persistência dos dados.
- **Service**: Regras de negócio da aplicação.
- **Util**: Utilitários para a aplicação, como produtor de EntityManager, mensagens de faces, etc.

### Arquivos de Configuração Importantes

- **beans.xml**: Configuração de CDI.
- **persistence.xml**: Configuração da persistência JPA.
- **context.xml**: Configuração do contexto do Tomcat.
- **dados-iniciais.sql**: Script SQL para popular o banco de dados com dados iniciais.

## Dependências e Plugins
### Dependências
- Weld Servlet: Para injeção de dependências (CDI).
- JSF (javax.faces): Para a construção de interfaces de usuário.
- PrimeFaces: Componentes ricos para a UI.
- Servlet API: Para desenvolvimento web.
- Hibernate Validator: Para validações.
- Hibernate Core: Para JPA.
- MySQL Connector: Para conexão com o banco de dados MySQL.
- JAXB API: Para manipulação de XML.
- Apache POI: Para manipulação de arquivos Excel.

### Plugins
- Maven Compiler Plugin: Para compilar o projeto utilizando Java 1.8.

## Build e Execução
Para construir e executar o projeto, siga os passos abaixo:

1. Clonar o repositório:
```
git clone https://github.com/andersonleite1/businessmanager
cd businessmanager
```

2. Construir a imagem Docker:
```
docker-compose build
```

3. Iniciar os containers:
```
docker-compose up
```

4. Acessar a aplicação:
Abra o navegador e vá para http://localhost:8080/business-manager.

## Considerações Finais
Este projeto foi desenvolvido com o objetivo de demonstrar habilidades em desenvolvimento Java EE, utilização de Docker, e boas práticas em arquitetura MVC. É um exemplo de uma aplicação completa, abrangendo desde a camada de persistência até a interface do usuário.

## Contato
- **Nome**: Anderson Leite
- **Email**: andersonleitedev@gmail.com
- **LinkedIn**: linkedin.com/in/andersonleitedev
