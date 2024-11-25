# Business Manager

## Descrição

O Business Manager é uma aplicação web para gerenciar empresas e suas atividades. Este projeto foi desenvolvido utilizando Java EE, PrimeFaces e outras tecnologias populares, seguindo a arquitetura MVC. Este README serve como documentação do projeto para ser apresentado em entrevistas de emprego e como portfólio.

Estrutura do Projeto

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
│   │   ├── Messages.properties
│   ├── META-INF
│   │   ├── sql
│   │   │   └── dados-iniciais.sql
│   │   ├── beans.xml
│   │   └── persistence.xml
│   └── ValidationMessages.properties
└── webapp
    ├── META-INF
    │   └── context.xml
    ├── resources
    └── WEB-INF
        └── template

```

## Tecnologias Utilizadas

- Java 1.8
- Maven
- JSF (JavaServer Faces) 2.2.14
- PrimeFaces 13.0.10
- Weld (CDI) 2.4.0.Final
- Hibernate Validator 5.3.2.Final
- Hibernate Core 5.2.4.Final
- MySQL Connector 6.0.5
- JAXB API 2.3.1
- Apache POI 5.2.3
- Servlet API 3.1.0

## Configuração do Projeto

### Pré-requisitos

- JDK 1.8
- Maven 3.x
- Apache Tomcat 8.5

### Configuração do Banco de Dados

A aplicação utiliza MySQL como banco de dados. As configurações do banco de dados estão no arquivo persistence.xml.

```
<persistence-unit name="businessmanager_db">
    <provider>org.hibernate.jpa.HibernatePersistenceProvider</provider>
    <jta-data-source>java:/MySqlDS</jta-data-source>
    <properties>
        <property name="hibernate.dialect" value="org.hibernate.dialect.MySQL5InnoDBDialect"/>
        <property name="hibernate.hbm2ddl.auto" value="update"/>
    </properties>
</persistence-unit>
```

### Execução do Projeto

1. Clone o repositório:

```
git clone https://github.com/dev-andersonleite/business-manager.git
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

## Funcionalidades
- **Gerenciamento de Empresas**: Cadastro, edição, e exclusão de empresas.
- **Gerenciamento de Ramos de Atividade**: Cadastro, edição, e exclusão de ramos de atividade.
- **Validação de Dados**: Validação utilizando Hibernate Validator.
- **Mensagens de Feedback**: Utilização de mensagens amigáveis para feedback ao usuário.

## Contato
- **Nome**: Anderson Leite
- **Email**: andersonleitedev@gmail.com
- **LinkedIn**: linkedin.com/in/andersonleitedev
