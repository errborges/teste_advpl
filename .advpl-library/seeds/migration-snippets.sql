-- ADVPL Library — seed de snippets
-- Atualizado automaticamente pela extensão. Não edite manualmente.
-- Para receber atualizações: git pull + Reload Window no VSCode.

DELETE FROM snippets;

INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('fw-alert-error', 'Alertas & Mensagens', 'FWAlertError', 'Exibe uma mensagem de erro com ícone vermelho (X). Utilizado para informar falhas ou erros críticos.', '["alert","alerta","error","erro","mensagem","popup","fwalerterror"]', 'FWAlertError( cMsg, cTitulo )', '[{"name":"cMsg","type":"Character","desc":"Texto do erro"},{"name":"cTitulo","type":"Character","desc":"Título da janela (opcional)"}]', 'Nil', 'FWAlertError("Erro ao gravar registro! Verifique os campos obrigatórios.", "Erro")', '["ui","dialog","framework"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('fw-alert-info', 'Alertas & Mensagens', 'FWAlertInfo', 'Exibe uma mensagem informativa com ícone azul (letra ''i''). Ideal para notificações neutras ao usuário. outro', '["alert","alerta","info","informativo","mensagem","popup","dialogo","fwalertinfo"]', 'FWAlertInfo( cMsg, cTitulo )', '[{"name":"cMsg","type":"Character","desc":"Texto da mensagem a ser exibida"},{"name":"cTitulo","type":"Character","desc":"Título da janela do alerta (opcional)"}]', 'Nil', 'FWAlertInfo("Operação realizada com sucesso!", "Título FWAlertInfo")', '["ui","dialog","framework"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('fw-alert-success', 'Alertas & Mensagens', 'FWAlertSuccess', 'Exibe uma mensagem de sucesso com ícone verde (check). Confirma que uma operação foi concluída com êxito.', '["alert","alerta","success","sucesso","mensagem","popup","fwalertsuccess"]', 'FWAlertSuccess( cMsg, cTitulo )', '[{"name":"cMsg","type":"Character","desc":"Texto de confirmação"},{"name":"cTitulo","type":"Character","desc":"Título da janela (opcional)"}]', 'Nil', 'User Function zAlertOk()
    FWAlertSuccess("Pedido incluído com sucesso!", "Confirmação")
Return', '["ui","dialog","framework"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('fw-alert-warning', 'Alertas & Mensagens', 'FWAlertWarning', 'Exibe uma mensagem de aviso com ícone amarelo (triângulo). Usado para alertar sobre situações que requerem atenção.', '["alert","alerta","warning","aviso","mensagem","popup","fwalertwarning"]', 'FWAlertWarning( cMsg, cTitulo )', '[{"name":"cMsg","type":"Character","desc":"Texto do aviso"},{"name":"cTitulo","type":"Character","desc":"Título da janela (opcional)"}]', 'Nil', 'FWAlertWarning("Atenção: prazo vencendo em 3 dias!", "Aviso do Sistema")', '["ui","dialog","framework"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('msgalert', 'Alertas & Mensagens', 'MsgAlert', 'Caixa de mensagem simples padrão ADVPL. Exibe texto com botão OK.', '["msgalert","msg","mensagem","alerta","aviso","caixa","dialog"]', 'MsgAlert( cMsg, cTitulo )', '[{"name":"cMsg","type":"Character","desc":"Conteúdo da mensagem"},{"name":"cTitulo","type":"Character","desc":"Título da janela"}]', 'Nil', 'User Function zMsgAlert()
    MsgAlert("Processo finalizado.", "Informação")
Return', '["ui","dialog","legacy"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('msgyesno', 'Alertas & Mensagens', 'MsgYesNo', 'Caixa de confirmação com botões Sim/Não. Retorna .T. se o usuário clicar em Sim.', '["msgyesno","confirmar","confirmação","sim","não","yes","no","dialog"]', 'lRet := MsgYesNo( cMsg, cTitulo )', '[{"name":"cMsg","type":"Character","desc":"Pergunta a ser exibida"},{"name":"cTitulo","type":"Character","desc":"Título da janela"}]', 'Logical – .T. se Sim, .F. se Não', 'User Function zConfirma()
    Local lOk := .F.
    lOk := MsgYesNo("Deseja excluir o registro?", "Confirmação")
    If lOk
        MsgAlert("Registro excluído!", "OK")
    EndIf
Return', '["ui","dialog","confirmação"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('array-manipulacao', 'Arrays & Estruturas', 'Manipulação de Arrays', 'Funções essenciais para trabalhar com arrays em ADVPL: aAdd, aSize, aDel, aScan, aSort e navegação.', '["array","aadd","ascan","asort","adel","asize","lista","vetor","aeval"]', 'aAdd( aArray, xValor )
aScan( aArray, bBloco )
aSort( aArray,,, bBloco )', '[]', 'Varia por função', 'User Function zArray()
    Local aFrutas := {}
    Local nPos    := 0
    // Adicionar elementos
    aAdd(aFrutas, "Maçã")
    aAdd(aFrutas, "Banana")
    aAdd(aFrutas, "Laranja")
    aAdd(aFrutas, "Uva")
    // Buscar elemento
    nPos := aScan(aFrutas, {|x| x == "Banana"})
    MsgAlert("Banana na posição: " + cValToChar(nPos), "Array")
    // Ordenar
    aSort(aFrutas,,, {|x, y| x < y})
    // Percorrer
    aEval(aFrutas, {|cFruta| ConOut(cFruta)})
Return', '["array","estrutura","dados"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('reclock', 'Banco de Dados', 'RecLock / MsUnLock', 'Trava um registro para edição exclusiva (RecLock) e libera após a operação (MsUnLock). Padrão obrigatório para alterações em tabelas.', '["reclock","msunlock","lock","travar","bloquear","editar","alterar","gravar","banco"]', 'RecLock( cAlias, lNew )
...
MsUnLock()', '[{"name":"cAlias","type":"Character","desc":"Alias da tabela (ex: ''SA1'')"},{"name":"lNew","type":"Logical","desc":".T. para inclusão, .F. para alteração"}]', 'Nil', 'User Function zGravar()
    dbSelectArea("SB1")
    SB1->(dbSeek(xFilial() + "000001"))
    If !SB1->(EOF())
        RecLock("SB1", .F.)  // Bloqueia para alteração
            SB1->B1_DESC := "Produto Atualizado"
            SB1->B1_UM   := "UN"
        MsUnLock()           // Libera o registro
        MsgAlert("Produto atualizado!", "Sucesso")
    EndIf
Return', '["database","lock","gravar"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('dbseek', 'Banco de Dados', 'dbSeek', 'Posiciona o ponteiro de um arquivo DBF/tabela na chave informada usando o índice ativo.', '["dbseek","seek","buscar","localizar","encontrar","indice","banco","tabela","registro"]', 'lAchou := dbSeek( xChave, lSoftSeek )', '[{"name":"xChave","type":"AnyType","desc":"Chave a ser buscada (deve corresponder ao tipo do índice)"},{"name":"lSoftSeek","type":"Logical","desc":"Se .T., posiciona no próximo registro caso não encontre (opcional)"}]', 'Logical – .T. se encontrou o registro', 'User Function zSeek()
    Local lAchou := .F.
    dbSelectArea("SA1")
    SA1->(dbSetOrder(1))
    lAchou := SA1->(dbSeek(xFilial() + "000001"))
    If lAchou
        MsgAlert("Cliente: " + SA1->A1_NOME, "Encontrado")
    Else
        MsgAlert("Cliente não encontrado!", "Atenção")
    EndIf
Return', '["database","seek","dbf"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('date-functions', 'Data & Hora', 'Funções de Data', 'Principais funções para manipulação de datas em ADVPL: Date(), Month(), Year(), Day(), CtoD(), DtoC(), Age().', '["data","date","mes","ano","dia","month","year","day","ctod","dtoc","hora","time"]', 'Date()
DtoC( dData )
CtoD( cData )
Month( dData )
Year( dData )', '[]', 'Varia por função', 'User Function zDatas()
    Local dHoje    := Date()
    Local cHoje    := DtoC(dHoje)     // "14/03/2026"
    Local nMes     := Month(dHoje)    // 3
    Local nAno     := Year(dHoje)     // 2026
    Local nDia     := Day(dHoje)      // 14
    Local dFutura  := dHoje + 30      // 30 dias à frente
    Local dPassada := CtoD("01/01/2026")
    Local nDifer   := dHoje - dPassada // Diferença em dias
    ConOut("Hoje: " + cHoje)
    ConOut("Mês: " + cValToChar(nMes))
    ConOut("Diferença: " + cValToChar(nDifer) + " dias")
Return', '["data","hora","utilitario"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('fw-input-box', 'Entrada de Dados', 'FWInputBox', 'Caixa de entrada de dados estilo framework. Permite solicitar uma informação ao usuário durante a execução.', '["input","entrada","inputbox","fwinputbox","digitar","usuario","campo"]', 'cVal := FWInputBox( cMsg, cTitulo, cPicture, xDefault )', '[{"name":"cMsg","type":"Character","desc":"Mensagem/label do campo"},{"name":"cTitulo","type":"Character","desc":"Título da janela"},{"name":"cPicture","type":"Character","desc":"Máscara de formatação (opcional)"},{"name":"xDefault","type":"AnyType","desc":"Valor padrão (opcional)"}]', 'Character – valor digitado pelo usuário', 'User Function zInput()
    Local cNome := ""
    cNome := FWInputBox("Informe o nome do cliente:", "Cadastro", "@!", "")
    If !Empty(cNome)
        MsgAlert("Olá, " + cNome, "Saudação")
    EndIf
Return', '["ui","input","framework"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('fwformmodel', 'MVC – Model/View', 'FWFormModel (MVC Model)', 'Classe base para criação de Models no padrão MVC do Protheus Framework. Define regras de negócio, campos e validações.', '["mvc","model","fwformmodel","formulario","validacao","negocios","tlpp","advpl"]', 'FWFormModel():New( cModelId, oOwner, oStruct, bPreValidate, bPosValidate )', '[{"name":"cModelId","type":"Character","desc":"Identificador único do model"},{"name":"oStruct","type":"Object","desc":"Estrutura de campos (FWFormStruct)"}]', 'Objeto FWFormModel', '#Include "Protheus.ch"

Static Function ModelDef()
    Local oModel  := Nil
    Local oStruct := FWFormStruct(1, "SA1")  // Estrutura da SA1
    oModel := MPFormModel():New("ZCLICAD", , oStruct, {|oModel| ValidPre(oModel)}, {|oModel| ValidPos(oModel)})
    oModel:SetPrimaryKey({"A1_FILIAL", "A1_COD"})
Return oModel

Static Function ValidPre(oModel)
    Local lOk := .T.
    If Empty(oModel:GetValue("SA1", "A1_NOME"))
        Help("", 1, "ValidPre",, "Nome do cliente obrigatório!", 1, 0)
        lOk := .F.
    EndIf
Return lOk', '["mvc","model","framework","validacao"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('fwformview', 'MVC – Model/View', 'FWFormView (MVC View)', 'Classe para definição de Views no padrão MVC. Renderiza o formulário visual com base no Model definido.', '["mvc","view","fwformview","tela","formulario","interface","visual"]', 'FWFormView():New()', '[]', 'Objeto FWFormView', 'Static Function ViewDef()
    Local oView := FWFormView():New()
    oView:SetModel(ModelDef())
    oView:AddField("VIEW_SA1", {"A1_FILIAL","A1_COD","A1_NOME","A1_CGC"}, "SA1")
    oView:EnableTitleView("VIEW_SA1", "Dados do Cliente")
Return oView', '["mvc","view","framework"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('paramixb', 'Parâmetros & Configuração', 'ParamIXB', 'Array global que recebe os parâmetros passados para User Functions chamadas via menus, relatórios ou chamadas externas.', '["paramixb","parametro","param","array","argumento","receber"]', 'PARAMIXB[nIndice]', '[{"name":"nIndice","type":"Numeric","desc":"Posição do parâmetro no array (começa em 1)"}]', 'Valor do parâmetro na posição indicada', 'User Function zParamEx()
    Local cCliente := ""
    Local dDataIni := Date()
    // Parâmetros recebidos via chamada externa
    If ValType(PARAMIXB) == "A" .And. Len(PARAMIXB) >= 2
        cCliente := PARAMIXB[1]
        dDataIni := PARAMIXB[2]
    EndIf
    MsgAlert("Cliente: " + cCliente, "Parâmetros")
Return', '["parametros","funcao","chamada"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('fwprintsetup', 'Relatórios', 'FWPrintSetup / SetaPrint', 'Configura e inicializa impressão de relatórios no padrão Framework. Permite escolha de impressora e destino.', '["relatorio","imprimir","print","fwprintsetup","setaprint","pdf","impressora"]', 'FWPrintSetup():New( cRelatorio )', '[{"name":"cRelatorio","type":"Character","desc":"Identificador do relatório"}]', 'Objeto de configuração de impressão', '#Include "Protheus.ch"

User Function zRelat()
    Local oReport := Nil
    Local oSection := Nil
    oReport := TReport():New("ZREL001", "Relatório de Clientes", "SA1",{||.T.}, "Lista de clientes cadastrados")
    oReport:SetLandscape(.F.)
    oSection := TRSection():New(oReport, "SA1", {"SA1"})
    TRCell():New(oSection, "A1_COD",  "SA1", "Código",  ,  30)
    TRCell():New(oSection, "A1_NOME", "SA1", "Nome",    , 150)
    TRCell():New(oSection, "A1_CGC",  "SA1", "CNPJ",    ,  80)
    oReport:PrintDialog()
Return', '["relatorio","print","framework"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('string-functions-alltrim', 'Strings & Texto', 'AllTrim (Função de String)', 'Remove os espaços em branco à direita e à esquerda de uma string.', '["string","texto","alltrim"]', 'AllTrim( < cString > )', '[{"name":"cString","type":"Character","desc":"Indica o texto cujos espaços em branco serão removidos."}]', 'Retorna uma string com espaços em branco à direita e à esquerda removidos.', 'Local cString := "  Olá, Mundo ADVPL!  "
ConOut(AllTrim(cString))', '["string","texto","utilitario"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('string-functions-asc', 'Strings & Texto', 'Asc (Função de String)', 'Converte um caractere para seu valor ASCII mais à esquerda em uma string.', '["string","asc","ASC"]', 'Conout( Asc( "Apple" ) )', '[{"name":"cString","type":"Character","desc":"Indica a string que será convertida para um número."}]', 'Retorna um valor numérico inteiro, na faixa de 0 à 255, que representa o valor ASCII do parâmetro <cString>.', 'ConOut(Asc( "A" ))  // Resultado: 65', '["string","texto","utilitario"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('string-functions-at', 'Strings & Texto', 'At (Função de String)', 'Retorna a posição da primeira ocorrência de uma substring em uma string. Para isso, a função pesquisa a string destino a partir da esquerda.', '["string","texto","AT","at"]', 'At( < cPesquisa >, < cDestino >, [ nStart ] )', '[{"name":"cPesquisa","type":"Character","desc":"Indica a string que será localizada. (obrigatorio)"},{"name":"cDestino","type":"Character","desc":"Indica a string que será procurada. (obrigatorio)"},{"name":"nStart","type":"Numeric","desc":"Indica a partir de qual caractere iniciará a busca (o nStart deverá ser maior que zero, caso contrário o retorno será 0)"}]', 'Retorna a posição da string localizada, dentro da procurada, na forma de um valor numérico inteiro. Caso a string não seja localizada, o retorno será 0 (zero).', 'cPesq := "@"
cText := "Linha @ para pesquisa  de AT"
At( cPesq, cText ) // Resultado: 7', '["string","texto","utilitario"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('string-functions-chr', 'Strings & Texto', 'Chr (Função de String)', 'Converte um código ASCII para caractere.', '["string","texto","Chr"]', 'Chr( < nCodigo > )', '[{"name":"nCodigo","type":"Numeric","desc":"Indica um código ASCII na faixa de 0 à 255."}]', 'Retorna um único valor caractere cujo código ASCII está especificado no parâmetro nCodigo.', 'cA := Chr( 65 ) // Resultado: "A"', '["string","texto","utilitario"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('string-functions-ltrim', 'Strings & Texto', 'LTrim (Função de String)', 'Remove os espaços em branco à esquerda de uma string.', '["string","texto","ltrim"]', 'LTrim( < cString > )', '[{"name":"cString","type":"Character","desc":"Indica o texto cujos espaços em branco serão removidos."}]', 'Retorna uma string com espaços em branco à esquerda removidos.', 'Local cString := "  String com espaço no inicio e final!  "
ConOut(LTrim(cString))', '["string","texto","utilitario"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('string-functions-padc', 'Strings & Texto', 'PadC (Função de String)', 'Remove os espaços em branco à direita de uma string.', '["string","texto","PadC","padc"]', 'PadC( < xExp >, < nLen >, [ cFill ] )', '[{"name":"xExp","type":"Any","desc":"Indica um valor no qual serão inseridos caracteres de preenchimento."},{"name":"nLen","type":"Numeric","desc":"Indica um valor no qual serão inseridos caracteres de preenchimento."},{"name":"cFill","type":"Character","desc":"Indica um valor no qual serão inseridos caracteres de preenchimento."}]', 'Retorna uma string com o tamanho indicado em nLen contendo o valor indicado em xExp centralizado, preenchido com o caractere indicado em cFill.', 'Local cString := "Light"
Local nLen := 9
ConOut(PadC( cString, nLen ))', '["string","texto","utilitario"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('string-functions-padl', 'Strings & Texto', 'PadL (Função de String)', 'Adiciona caracteres de preenchimento à esquerda do conteúdo de uma variável.', '["string","texto","PadL","padl"]', 'PadL( < xExp >, < nLen >, [ cFill ] )', '[{"name":"xExp","type":"Any","desc":"Indica um valor no qual serão inseridos caracteres de preenchimento."},{"name":"nLen","type":"Numeric","desc":"Indica o tamanho da string que será retornada."},{"name":"cFill","type":"Character","desc":"Indica o caractere que será inserido no parâmetro."}]', 'Retorna uma string com o tamanho indicado em nLen contendo o valor indicado em xExp preenchido à esquerda com o caractere indicado em cFill.', 'Local cString := "Light"
Local nLen := 9
ConOut(PadL( cString, nLen ))', '["string","texto","utilitario"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('string-functions-padr', 'Strings & Texto', 'PadR (Função de String)', 'Adiciona caracteres de preenchimento à direita do conteúdo de uma variável.', '["string","texto","PadR","padr"]', 'PadR( < xExp >, < nLen >, [ cFill ] )', '[{"name":"xExp","type":"Any","desc":"Indica um valor no qual serão inseridos caracteres de preenchimento."},{"name":"nLen","type":"Numeric","desc":"Indica o tamanho da string que será retornada."},{"name":"cFill","type":"Character","desc":"Indica o caractere que será inserido no parâmetro."}]', 'Retorna uma string com o tamanho indicado em nLen contendo o valor indicado em xExp preenchido à direita com o caractere indicado em cFill.', 'Local cString := "Light"
Local nLen := 9
ConOut(PadR( cString, nLen ))', '["string","texto","utilitario"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('string-functions-rat', 'Strings & Texto', 'RAt (Função de String)', 'Retorna a posição da última ocorrência de uma substring em uma string. Para isso, a função pesquisa a string destino a partir da direita.', '["string","texto","RAt","rat"]', 'RAt( < cSearch >, < cSource > )', '[{"name":"cSearch","type":"Character","desc":"Indica a string que será localizada."},{"name":"cSource","type":"Charecter","desc":"Indica a string onde <cSearch> será procurada."}]', 'Retorna a posição da string localizada, dentro da procurada, na forma de um valor numérico inteiro.', 'cPesq := "@"
cText := "Linha @ para pesquisa @ de RAT"
RAt( cPesq, cText ) // Resultado: 23 // Localizou a posição do último "@" na frase', '["string","texto","utilitario"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('string-functions-rtrim', 'Strings & Texto', 'RTrim (Função de String)', 'Remove os espaços em branco à direita de uma string.', '["string","texto","rtrim"]', 'RTrim( < cString > )', '[{"name":"cString","type":"Character","desc":"Indica o texto cujos espaços em branco serão removidos."}]', 'Retorna uma string com espaços em branco à direita removidos.', 'Local cString := "  String com espaço no inicio e final!  "
ConOut(RTrim(cString))', '["string","texto","utilitario"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('xfilial', 'Utilitários do Sistema', 'xFilial', 'Retorna o código da filial atual formatado conforme o tamanho do campo especificado. Essencial em filtros e buscas.', '["xfilial","filial","empresa","codigo","filtro","padrao"]', 'xFilial( cTabela )', '[{"name":"cTabela","type":"Character","desc":"Sigla da tabela (ex: ''SA1'', ''SB1''). Define o tamanho do retorno."}]', 'Character – código da filial no tamanho correto', 'User Function zFilial()
    // Filtra registros da filial atual na SA1
    dbSelectArea("SA1")
    SA1->(dbSetOrder(1))
    SA1->(dbSeek(xFilial("SA1") + "000001"))
    // Também usado em queries SQL:
    // "WHERE A1_FILIAL = ''" + xFilial(''SA1'') + "''"
Return', '["sistema","filial","utilitario"]', '');
INSERT INTO snippets (id, category, title, description, keywords, syntax, params, returns, example, tags, D_E_L_E_T_) VALUES ('help-function', 'Validações & Erros', 'Help (Mensagem de Validação)', 'Exibe mensagem de erro/validação padrão Protheus e interrompe o processo. Muito usado em validates de campos e models.', '["help","erro","validacao","mensagem","campo","obrigatorio","interromper"]', 'Help( cPrograma, nLinha, cFuncao, cVar, cMensagem, nTipo, nOpcao )', '[{"name":"cPrograma","type":"Character","desc":"Nome do programa (pode ser vazio)"},{"name":"nLinha","type":"Numeric","desc":"Linha do código (geralmente 1)"},{"name":"cFuncao","type":"Character","desc":"Nome da função"},{"name":"cVar","type":"Character","desc":"Variável com erro (pode ser vazio)"},{"name":"cMensagem","type":"Character","desc":"Texto da mensagem de erro"},{"name":"nTipo","type":"Numeric","desc":"1 = Erro, 2 = Aviso"},{"name":"nOpcao","type":"Numeric","desc":"0 = padrão"}]', 'Nil', 'Static Function Valida(oModel)
    Local lOk := .T.
    Local cCNPJ := oModel:GetValue("SA1","A1_CGC")
    If Empty(AllTrim(cCNPJ))
        Help("", 1, "Valida",, "CNPJ/CPF é obrigatório!", 1, 0)
        lOk := .F.
    EndIf
Return lOk', '["validacao","erro","help","campo"]', '');

-- Total: 27 snippet(s)