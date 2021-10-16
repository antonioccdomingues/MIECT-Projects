Imports System.Data.SqlClient

Public Class MainForm

    Dim CN As SqlConnection
    Dim CMD As SqlCommand

    Private Sub MainForm_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.CenterToScreen()
        'Local Server
        'CN = New SqlConnection("Data Source = localhost;" &
        '                       "Initial Catalog = Covid_app; Integrated Security = true;")

        ''ieeta server
        CN = New SqlConnection("data source = tcp:mednat.ieeta.pt\sqlserver,8101;" &
                               "initial catalog = p1g1; uid = p1g1; password = Sporting1906")

        Try
            CN.Open()
            If CN.State = ConnectionState.Open Then
                MsgBox("Successful connection to database", MsgBoxStyle.OkOnly, "Connection Test")
            End If
        Catch ex As Exception
            MsgBox("FAILED TO OPEN CONNECTION TO DATABSE", MsgBoxStyle.Critical, "ERROR")
        End Try

        CMD = New SqlCommand
        CMD.Connection = CN
        CN.Close()
        Panel1.Controls.Clear()
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Marcacoes.Close()
        Stock.Close()
        Pacientes.Close()

        With Enfermeiros
            .loadEnfermeiros()
            .TopLevel = False
            .loadVacinasEnfermeiros()
            .TopLevel = False
            Panel1.Controls.Add(Enfermeiros)
            .BringToFront()
            .Show()
            ''clearEnfermeirosSection()
        End With
    End Sub

    Private Sub clearEnfermeirosSection()
        With Enfermeiros

            .EnfermeirosDataGridView.DataSource = Nothing
            .VacinasEnfDataGridView.DataSource = Nothing

        End With
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Enfermeiros.Close()
        Marcacoes.Close()
        Stock.Close()

        With Pacientes
            .loadPacientes()
            .TopLevel = False
            Panel1.Controls.Add(Pacientes)
            .BringToFront()
            .Show()
        End With
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Enfermeiros.Close()
        Stock.Close()
        Pacientes.Close()
        ''ACRESCENTAR AS RESTANTES FORMS A FECHAR, QUANDO SE CARREGA NAS MARCACOES
        With Marcacoes
            .loadMarcacoes()
            .TopLevel = False
            Panel1.Controls.Add(Marcacoes)
            .BringToFront()
            .Show()
        End With
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Enfermeiros.Close()
        Marcacoes.Close()
        Pacientes.Close()
        With Stock
            .loadStock()
            .TopLevel = False
            Panel1.Controls.Add(Stock)
            .BringToFront()
            .Show()
        End With

    End Sub


End Class
