[Doc_TaskManagementSystem.pdf](https://github.com/user-attachments/files/16240752/Doc_TaskManagementSystem.pdf)


# Sistema de Gerenciamento de Tarefas

## Requisitos do Sistema

**Nome do Projeto:** Sistema de Gerenciamento de Tarefas

### Funcionalidades Esperadas

1. **Gerenciamento de Usuários**
   - Cadastro de usuários.
   - Atualização de informações do usuário.
   - Exclusão de usuários.
   - Gerenciamento de Categorias

2. **Gerenciamento de Categorias**
   - Criação de categorias.
   - Atualização de categorias.
   - Exclusão de categorias.
   - Listagem de todas as categorias.

3. **Gerenciamento de Tarefas**
   - Criação de tarefas.
   - Atualização de tarefas.
   - Exclusão de tarefas.
   - Listagem de tarefas por usuário.
   - Filtragem de tarefas por categoria.

### Restrições Técnicas

- **Banco de Dados:** SQL Server
- **Linguagem de Programação:** C#
- **Framework:** .NET 6
- **Arquitetura:** Arquitetura Limpa (Clean Architecture)
- **Autenticação:** JWT (JSON Web Tokens)
- **Contêineres:** Docker para banco de dados e SonarQube

### Critérios de Aceite

1. **Gerenciamento de Usuários**
   - Usuário pode se cadastrar com nome, email e senha.
   - Usuário pode se autenticar com email e senha.
   - Usuário pode atualizar suas informações.
   - Usuário pode ser excluído.

2. **Gerenciamento de Categorias**
   - Categoria pode ser criada com um nome único.
   - Categoria pode ser atualizada.
   - Categoria pode ser excluída.
   - Lista de categorias deve estar disponível para o usuário.

3. **Gerenciamento de Tarefas**
   - Tarefa pode ser criada com título, descrição, data de vencimento, status de conclusão, categoria e usuário.
   - Tarefa pode ser atualizada.
   - Tarefa pode ser excluída.
   - Tarefas podem ser listadas por usuário.
   - Tarefas podem ser filtradas por categoria.

## Build e Execução do Projeto

### Requisitos

- **.NET SDK 6.0** ou superior
- **Docker**
- **SQL Server** (rodando em contêiner Docker)
- **Visual Studio 2022** ou **Visual Studio Code**

### Build e Execução

1. **Clone o repositório do projeto :git clone 
https://github.com/Alansilvao/TaskManagementSystem
2. **Configuração do Docker: docker-compose up -d
3.  Configuração do Banco de Dados:
Acesse o contêiner SQL Server e crie o banco de dados:
** CREATE TABLE [dbo].[Users]
 (
  Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    Password NVARCHAR(100) NOT NULL
 );
 CREATE TABLE [dbo].[Categories](
 Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL
 );
 CREATE TABLE [dbo].[Tasks](
 Id INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(100) NOT NULL,
    Description NVARCHAR(1000),
    DueDate DATETIME NOT NULL,
    IsCompleted BIT NOT NULL,
    CategoryId INT NOT NULL,
    UserId INT NOT NULL,
    FOREIGN KEY (CategoryId) REFERENCES Categories(Id), 
FOREIGN KEY (UserId) REFERENCES Users(Id)); **

4. **Crie um arquivo appsettings.json na raiz do projeto com a configuração do banco de 
dados**
{ 
"ConnectionStrings": {
 "DefaultConnection": "Server=localhost,1433;Database=TaskManagementDb;User 
Id=sa;Password=YourStrong@Passw0rd;"
 }
 }
5. **Restaurar Dependências e Compilar o Projeto**
 - Restaurar dependências: dotnet restore.
 - Compilar o projeto: dotnet build
 - Executar a aplicação: dotnet run --project src/TaskManagement.API
 

 


