/*aula1exer2;
// Aluno: Lucas Hiroshi Horinouchi
// Matricula: 160034591
// Sintese
//  Objetivo: Controlar o conjunto de dados de pessoas e carros
//  Entrada : (Pessoa) nome, cpf, sexo, (Carro) modelo, renavam.
//  Saida   : Relacao entre carros e pessoa.
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <conio.h> //Para Windows
//#include <gconio.h> //Para Linux

#define MAXCARACTERES 80
#define CPF 20
#define RENAVAM 20
#define MAX 200

struct dados_pessoa
{
    char nomeCompleto[MAXCARACTERES];
    char cpf[CPF];
    char sexo;
};

struct dados_carro
{
    char renavam[RENAVAM];
    char modelo[MAXCARACTERES];
    char cpf[CPF];
};
void cadastraPessoa();
int contaPessoas();

void recebeNome(char nome[]);
int validaNome(char nome[]);

void recebeCPF(char cpf[]);
int validaCPF(char cpf[]);
int verificaPessoa(char cpf[]);

void recebeSexo(char *sexo);
int validaSexo(char *sexo);

void cadastraCarro();
int contaCarros();
void ordenarCarros();
void buscarCarros();
void imprimeCarros();

void recebeRENAVAM(char renavam[]);
int validaRENAVAM(char renavam[]);

void recebeModelo(char modelo[]);
int validaModelo(char modelo[]);

int validaOpcao();
void opcaoImpressao();
void mostraMenu();

int main()
{
    // Declaracoes
    struct dados_pessoa dados_pessoa;
    struct dados_carro dados_carro;
    char opcao = 0;
    FILE *p_arquivo, *p_arquivoNovo;
    int contador = 0;

    // Instrucoes

    do
    {
        mostraMenu();
        do
        {
            opcao = getch();
        } while (!validaOpcao(opcao));
        system("cls");
        switch (opcao)
        {
            case '1':
            {
                cadastraPessoa();
                break;
            }
            case '2':
            {
                cadastraCarro();
                break;
            }
            case '3':
            {
                imprimeCarros();
                break;
            }
            case '4':
            {
                buscarCarros();
                break;
            }
        }
    } while (opcao != '0');
}

// ========== SUBPROGRAMAS ============
//Objetivo: Mostrar o menu
//Parametros: sem parametros
//Retorno: sem retorno
void mostraMenu()
{
    printf("\xC9\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xBB\n");
    printf("\xBA                                 \xBA\n");
    printf("\xBA  1. Cadastrar Pessoa            \xBA \n");
    printf("\xBA                                 \xBA\n");
    printf("\xBA  2. Cadastrar Carro             \xBA \n");
    printf("\xBA                                 \xBA\n");
    printf("\xBA  3. Listar                      \xBA \n");
    printf("\xBA                                 \xBA\n");
    printf("\xBA  4. Buscar RENAVAN              \xBA\n");
    printf("\xBA                                 \xBA\n");
    printf("\xBA                                 \xBA\n");
    printf("\xBA  0. Encerra Programa            \xBA \n");
    printf("\xBA                                 \xBA\n");
    printf("\xC8\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xBC\n");
    puts("");
    puts("Digite a opcao que deseja:");
}

//Objetivo: Validar a opcao
//Parametros: opcao
//Retorno: situacao da opcao (1=valido ou 0=invalida)
int validaOpcao(int opcao)
{
    if (opcao > '4' || opcao < '0')
    {
        printf("Numero invalido digite um numero igual ou maior que 0 e menor que 5\n\n");
        return 0;
    }
    else
        return 1;
}

//--------------------------------------Pessoa--------------------------------------
//----------------------------------------------------------------------------------

//Objetivo: cadastrar uma pessoa
//Parametros: sem parametros
//Retorno: sem retorno
void cadastraPessoa()
{
    FILE *p_arquivo;
    struct dados_pessoa dados_pessoa;

    if ((p_arquivo = fopen("pessoa.bin", "rb")) == NULL)
        p_arquivo = fopen("pessoa.bin", "wb");
    fclose(p_arquivo);

    fseek(p_arquivo, sizeof(dados_pessoa), SEEK_END);
    fflush(stdin);
    system("cls");
    recebeNome(dados_pessoa.nomeCompleto);
    system("cls");
    recebeCPF(dados_pessoa.cpf);
    system("cls");
    recebeSexo(&dados_pessoa.sexo);
    system("cls");

    p_arquivo = fopen("pessoa.bin", "a+b");
    fwrite(&dados_pessoa, sizeof(dados_pessoa), 1, p_arquivo);
    fclose(p_arquivo);
}

//--------------------------------------Nome--------------------------------------
//Objetivo: receber o nome
//Parametros: nome
//Retorno: sem retorno
void recebeNome(char nome[])
{
    do
    {
        puts("Digite o nome:");
        fgets(nome, MAXCARACTERES, stdin);
        if (nome[strlen(nome) - 1] == '\n')
            nome[strlen(nome) - 1] = '\0';
    } while (!validaNome(nome));
}

//Objetivo: validar o nome
//Parametros: nome
//Retorno: situacao do nome (1=valido ou 0=invalida)
int validaNome(char nome[])
{
    int aux;

    if (strlen(nome) < 3)
    {
        puts("Digite um nome valido");
        return 0;
    }
    for (aux = 0; aux < (strlen(nome)); aux++)
    {
        if (nome[aux] == ' ')
        {
            nome[aux + 1] = toupper(nome[aux + 1]);
        }
        else
        {
            nome[aux + 1] = tolower(nome[aux + 1]);
        }
        if (!isalpha(nome[aux]) && nome[aux] != ' ')
        {
            puts("Digite um nome valido");
            return 0;
        }
    }
    nome[0] = toupper(nome[0]);
    return 1;
}

//--------------------------------------CPF--------------------------------------
//Objetivo: receber o CPF
//Parametros: CPF
//Retorno: sem retorno
void recebeCPF(char cpf[])
{
    do
    {
        puts("Digite o CPF:");
        fgets(cpf, CPF, stdin);
        if (cpf[strlen(cpf) - 1] == '\n')
            cpf[strlen(cpf) - 1] = '\0';
    } while (!validaCPF(cpf));
}

//Objetivo: validar o CPF
//Parametros: CPF
//Retorno: situacao do CPF (1=valido ou 0=invalida)
int validaCPF(char cpf[])
{
    int aux;
    if (strlen(cpf) != 11)
    {
        puts("Digite um CPF valido com 11 digitos");
        return 0;
    }
    for (aux = 0; aux < (strlen(cpf)); aux++)
    {
        if (!isdigit(cpf[aux]) && cpf[aux] != ' ')
        {
            puts("Digite um CPF valido somente com numeros");
            return 0;
        }
    }
    return 1;
}

//--------------------------------------Sexo--------------------------------------
//Objetivo: receber o sexo
//Parametros: sexo
//Retorno: sem retorno
void recebeSexo(char *sexo)
{
    puts("Digite o sexo F para feminino ou M para masculino");
    do
    {
        *sexo = getche();
        *sexo = toupper(*sexo);
        puts("");
    } while (!validaSexo(&*sexo));
}

//Objetivo: validar o sexo
//Parametros: sexo
//Retorno: situacao do sexo (1=valido ou 0=invalida)
int validaSexo(char *sexo)
{
    if ((*sexo != 'F') && (*sexo != 'M'))
    {
        puts("Sexo invalido digite F para feminino ou M para masculino");
        return 0;
    }
    else
        return 1;
}

// Objetivo: contar pessoas em arquivo
// Parâmetro: nenhum
// Retorno: quantidade de pessoas
int contaPessoas()
{
    // Declarações
    struct dados_pessoa dados_pessoa;
    FILE *p_arquivo;
    int qtd = 0;
    // Instruções
    if ((p_arquivo = fopen("pessoa.bin", "rb")) != NULL)
    {
        while (!feof(p_arquivo))
        {
            fread(&dados_pessoa, sizeof(dados_pessoa), 1, p_arquivo);
            if (!feof(p_arquivo))
                qtd++;
        }
        fclose(p_arquivo);
    }
    return qtd;
}

// Objetivo: verificar se a pessoa existe em arquivo
// Parâmetro: CPF
// Retorno: existe ou nao 0 ou 1
int verificaPessoa(char cpf[])
{
    // Declarações
    struct dados_pessoa dados_pessoa;
    FILE *p_arquivo;
    // Instruções
    if ((p_arquivo = fopen("pessoa.bin", "rb")) != NULL)
    {
        while (!feof(p_arquivo))
        {
            fread(&dados_pessoa, sizeof(dados_pessoa), 1, p_arquivo);
            if(strcmp(dados_pessoa.cpf, cpf)==0)
            {
                fclose(p_arquivo);
                return 0;
            }
        }
        fclose(p_arquivo);
    }
    puts("O CPF nao foi cadastrado. Estes sao os cadastrados");
    if ((p_arquivo = fopen("pessoa.bin", "rb")) != NULL)
    {
        while (!feof(p_arquivo))
        {
            fread(&dados_pessoa, sizeof(dados_pessoa), 1, p_arquivo);
            if (!feof(p_arquivo))
                printf("%s\n", dados_pessoa.cpf);
        }
    }
    fclose(p_arquivo);
    return 1;
}

//--------------------------------------Carro--------------------------------------
//---------------------------------------------------------------------------------


//Objetivo: imprimir carros e seus donos
//Parametros: sem parametros
//Retorno: sem retorno
void imprimeCarros()
{
    FILE *p_arquivo;
    struct dados_carro dados_carro;

    p_arquivo = fopen("carros.bin", "a+b");
    while (!feof(p_arquivo))
    {
        fread(&dados_carro, sizeof(dados_carro), 1, p_arquivo);
        if (!feof(p_arquivo))
        {
            printf("CPF - %s\nRENAVAM - %s\n\n", dados_carro.cpf, dados_carro.renavam);
        }
    }
    fclose(p_arquivo);
    fflush(stdin);

}

//Objetivo: cadastrar um carro
//Parametros: sem parametros
//Retorno: sem retorno
void cadastraCarro()
{
    FILE *p_arquivo;
    struct dados_carro dados_carro;

    if (contaPessoas() != 0)
    {
        if(contaCarros() < MAX)
        {
            if ((p_arquivo = fopen("carros.bin", "rb")) == NULL)
                p_arquivo = fopen("carros.bin", "wb");
            fclose(p_arquivo);

            fseek(p_arquivo, sizeof(dados_carro), SEEK_END);
            fflush(stdin);
            system("cls");
            recebeRENAVAM(dados_carro.renavam);
            system("cls");
            recebeModelo(dados_carro.modelo);
            system("cls");
            do
            {
                recebeCPF(dados_carro.cpf);
                system("cls");
            } while (verificaPessoa(dados_carro.cpf) == 1);
            p_arquivo = fopen("carros.bin", "a+b");
            fwrite(&dados_carro, sizeof(dados_carro), 1, p_arquivo);
            fclose(p_arquivo);
            ordenarCarros();
        }
        else
        {
            puts("O limete de carros foi alcancado");
        }
    }
    else
    {
        puts("Nao existem pessoas cadastradas");
    }
}

//Objetivo: ordenar os registros dos carros
//Parametros:
//Retorno:
void ordenarCarros()
{
    struct dados_carro dados_carro_copia[MAX], dados_carro, troca;
    int aux_1=0, aux_2=0, contador_carros=0;
    FILE *p_arquivo;

    p_arquivo = fopen("carros.bin", "a+b");
    while (!feof(p_arquivo))
    {
        fread(&dados_carro, sizeof(dados_carro), 1, p_arquivo);
        if (!feof(p_arquivo))
        {
            dados_carro_copia[contador_carros] = dados_carro;
            contador_carros++;
        }
    }
    fclose(p_arquivo);

    for (aux_1 = 1; aux_1 < contador_carros; aux_1++)
    {
        for (aux_2 = 0; aux_2 < contador_carros - 1; aux_2++)
        {
            if (atoi(dados_carro_copia[aux_2].cpf) > atoi(dados_carro_copia[aux_2 + 1].cpf))
            {
                troca = dados_carro_copia[aux_2];
                dados_carro_copia[aux_2] = dados_carro_copia[aux_2 + 1];
                dados_carro_copia[aux_2 + 1] = troca;
            }
        }
    }

    p_arquivo = fopen("carros.bin", "wb");
    printf("Nova Ordenacao por CPF\n");
    for (aux_1 = 0; aux_1 < contador_carros; aux_1++)
    {
        fwrite(&dados_carro_copia[aux_1], sizeof(dados_carro), 1, p_arquivo);
        printf("%s \n",dados_carro_copia[aux_1].cpf);
    }
    fclose(p_arquivo);
}

//Objetivo: ordenar os registros dos carros
//Parametros:
//Retorno:
void buscarCarros()
{
    struct dados_carro dados_carro;
    char renavam[RENAVAM];
    int aux_1=0, aux_2=0, contador_carros=0;
    FILE *p_arquivo;

    recebeRENAVAM(renavam);

    p_arquivo = fopen("carros.bin", "a+b");
    while (!feof(p_arquivo))
    {
        fread(&dados_carro, sizeof(dados_carro), 1, p_arquivo);
        if (!feof(p_arquivo))
        {
            if(strcmp(dados_carro.renavam, renavam)==0)
            {
                printf("\nProprietario CPF %s\nModelo carro %s\n",dados_carro.cpf, dados_carro.modelo);
            }
        }
    }
    puts("\n\nBusca finalizada...");
    fclose(p_arquivo);
}


// Objetivo: contar carros em arquivo
// Parâmetro: nenhum
// Retorno: quantidade de carros
int contaCarros()
{
    // Declarações
    struct dados_carro dados_carro;
    FILE *p_arquivo;
    int qtd = 0;
    // Instruções
    if ((p_arquivo = fopen("carros.bin", "rb")) != NULL)
    {
        while (!feof(p_arquivo))
        {
            fread(&dados_carro, sizeof(dados_carro), 1, p_arquivo);
            if (!feof(p_arquivo))
                qtd++;
        }
        fclose(p_arquivo);
    }
    return qtd;
}


//--------------------------------------RENAVAM--------------------------------------
//Objetivo: receber o renavam
//Parametros: renavam
//Retorno: sem retorno
void recebeRENAVAM(char renavam[])
{
    do
    {
        puts("Digite o renavam:");
        fgets(renavam, RENAVAM, stdin);
        if (renavam[strlen(renavam) - 1] == '\n')
            renavam[strlen(renavam) - 1] = '\0';
    } while (!validaRENAVAM(renavam));
}

//Objetivo: validar o renavam
//Parametros: renavam
//Retorno: situacao do renavam (1=valido ou 0=invalida)
int validaRENAVAM(char renavam[])
{
    int aux;
    if (strlen(renavam) != 11)
    {
        puts("Digite um RENAVAM valido com 11 digitos");
        return 0;
    }
    for (aux = 0; aux < (strlen(renavam)); aux++)
    {

        if (!isdigit(renavam[aux]) && renavam[aux] != ' ')
        {
            puts("Digite um RENAVAM valido com somente digitos");
            return 0;
        }
    }
    return 1;
}


//--------------------------------------Modelo--------------------------------------
//Objetivo: receber o Modelo
//Parametros: Modelo
//Retorno: sem retorno
void recebeModelo(char modelo[])
{
    do
    {
        puts("Digite o Modelo:");
        fgets(modelo, MAXCARACTERES, stdin);
        if (modelo[strlen(modelo) - 1] == '\n')
            modelo[strlen(modelo) - 1] = '\0';
    } while (!validaModelo(modelo));
}

//Objetivo: validar o modelo
//Parametros: modelo
//Retorno: situacao do modelo (1=valido ou 0=invalida)
int validaModelo(char modelo[])
{
    if (strlen(modelo) < 2 || strlen(modelo) > MAXCARACTERES)
    {
        puts("Digite um modelo valido");
        return 0;
    }
    return 1;
}
