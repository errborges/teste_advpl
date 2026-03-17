#INCLUDE "PROTHEUS.CH"

User Function TESTE()
    Local c_Testo := "TESTE"
    Private c_Msg := "NOVO_TESTE"

    Alert(c_Testo)
    Alert(c_Msg)

    SuperGetMV("ZZ_TESTE", .F., "TESTE")
    GetMV("ZZ_TESTE2", .F., "TESTE2")
Return