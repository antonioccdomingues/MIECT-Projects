Imports System.Data.SqlClient

Public Class Marcacoes

    Dim CMD As SqlCommand
    Dim CN As SqlConnection = New SqlConnection("Data Source = localhost;" &
                                                "Initial Catalog = Covid_app; Integrated Security = true;")

    Public Sub loadMarcacoes()

        Dim MAR As New SqlDataAdapter("SELECT DISTINCT * FROM Covid_App.ViewMarcacoes;", CN)
        Dim tableMarcacoes As New DataTable()
        MAR.Fill(tableMarcacoes)

        With MarcacoesDataGridView
            .DataSource = tableMarcacoes
            Dim scrollV As VScrollBar = MarcacoesDataGridView.Controls.OfType(Of VScrollBar).SingleOrDefault
            Dim scrollH As HScrollBar = MarcacoesDataGridView.Controls.OfType(Of HScrollBar).SingleOrDefault

        End With
        CN.Close()
    End Sub
    'Private Sub TextBoxSearch_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
    '    FilterData("")
    'End Sub

    Public Sub FilterData(valueToSearch As String)

        Dim search As String = TextBox1.Text
        Dim tabelapesquisar As New DataTable()

        CMD = New SqlCommand()
        CMD.Connection = CN
        CMD.CommandText = "SELECT Distinct * FROM Covid_App.fnGetVacinadosAtDate(@data);"
        CMD.Parameters.Add("@data", SqlDbType.Date)
        CMD.Parameters("@data").Value = search


        Try
            CN.Open()
            Dim adapter2 As New SqlDataAdapter(CMD)
            adapter2.Fill(tabelapesquisar)

            With DataGridView1
                .DataSource = tabelapesquisar
                Dim scroll As VScrollBar = DataGridView1.Controls.OfType(Of VScrollBar).SingleOrDefault
                Dim scroll1 As HScrollBar = DataGridView1.Controls.OfType(Of HScrollBar).SingleOrDefault
                ''.ClearSelection()
            End With
            CN.Close()

            DataGridView1.DataSource = tabelapesquisar
        Catch ex As Exception
            MsgBox("A data não está num formato correto", MsgBoxStyle.Information, "ERRO")
        End Try


    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        FilterData("")
    End Sub

    Public Sub addMarcacao(ByVal data As String, ByVal nif_enf As Integer, nif_pac As Integer, ByVal doses As Integer, ByVal nomeVacina As String, ByVal validade As Integer)



        'Dim numStore As Integer = selectedRow.Cells(0).Value
        Dim a As Integer = 0

        CMD = New SqlCommand()
        CMD.Connection = CN
        CMD.CommandText = "EXEC Covid_App.addMarcacao @data, @nif_enf, @nif_pac"
        CMD.Parameters.Add("@data", SqlDbType.DateTime)
        CMD.Parameters.Add("@nif_enf", SqlDbType.Decimal)
        CMD.Parameters.Add("@nif_pac", SqlDbType.Decimal)
        CMD.Parameters("@data").Value = data
        CMD.Parameters("@nif_enf").Value = nif_enf
        CMD.Parameters("@nif_pac").Value = nif_pac

        CN.Open()
        Try
            CMD.ExecuteScalar()
            CN.Close()
            a = 1
        Catch ex As Exception
            MessageBox.Show("O paciente já levou as duas vacinas")
            CN.Close()
            a = 0
        End Try

        ''CMD.ExecuteScalar()








        Dim endereco As String = "Rua do Poceirao"

        CMD = New SqlCommand()
        CMD.Connection = CN
        CMD.CommandText = "EXEC Covid_App.addVacina @doses, @nomeVacina, @validade, @endereco, @nif_enf, @nif_pac "
        CMD.Parameters.Add("@doses", SqlDbType.Int)
        CMD.Parameters.Add("@nomeVacina", SqlDbType.VarChar, 20)
        CMD.Parameters.Add("@validade", SqlDbType.Int)
        CMD.Parameters.Add("@endereco", SqlDbType.VarChar, 50)
        CMD.Parameters.Add("@nif_enf", SqlDbType.Decimal)
        CMD.Parameters.Add("@nif_pac", SqlDbType.Decimal)
        CMD.Parameters("@doses").Value = doses
        CMD.Parameters("@nomeVacina").Value = nomeVacina
        CMD.Parameters("@validade").Value = validade
        CMD.Parameters("@endereco").Value = endereco
        CMD.Parameters("@nif_enf").Value = nif_enf
        CMD.Parameters("@nif_pac").Value = nif_pac
        CN.Open()
        Try
            CMD.ExecuteScalar()
            a = 1
            CN.Close()
        Catch ex As Exception
            a = 0
            MessageBox.Show("O paciente já tem duas vacinas associadas")
            CN.Close()
        End Try


        loadMarcacoes()


    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim addMarcacao As New AddMarcacao
        addMarcacao.StartPosition = FormStartPosition.CenterScreen
        addMarcacao.ShowDialog()
    End Sub
End Class