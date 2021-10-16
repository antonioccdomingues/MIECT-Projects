Imports System.Data.SqlClient

Public Class Enfermeiros
    Dim CMD As SqlCommand
    Dim CN As SqlConnection = New SqlConnection("Data Source = localhost;" &
                                                "Initial Catalog = Covid_app; Integrated Security = true;")
    Private Sub Enfermeiros_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        loadEnfermeiros()
        loadVacinasEnfermeiros()


    End Sub

    Public Sub loadEnfermeiros()
        Dim enf As New SqlDataAdapter("SELECT * FROM Covid_App.ViewEnfermeiros;", CN)
        Dim table As New DataTable()
        enf.Fill(table)

        With EnfermeirosDataGridView
            .DataSource = table
            Dim scroll1 As VScrollBar = EnfermeirosDataGridView.Controls.OfType(Of VScrollBar).SingleOrDefault
            Dim scroll As HScrollBar = EnfermeirosDataGridView.Controls.OfType(Of HScrollBar).SingleOrDefault

        End With
        CN.Close()


    End Sub

    Public Sub loadVacinasEnfermeiros()
        CN.Open()

        Dim quant As New SqlDataAdapter("SELECT * FROM Covid_App.fnGetNumVacinasEnfermeiroTable()", CN)
        Dim table1 As New DataTable()
        quant.Fill(table1)

        With VacinasEnfDataGridView
            .DataSource = table1
            Dim scroll As HScrollBar = VacinasEnfDataGridView.Controls.OfType(Of HScrollBar).SingleOrDefault
            Dim scroll1 As VScrollBar = VacinasEnfDataGridView.Controls.OfType(Of VScrollBar).SingleOrDefault

        End With
        CN.Close()

    End Sub

    ''TEXTBOX, PARA PESQUISAR MÉDICO
    Public Sub FilterData(valueToSearch As String)

        Dim search As String = TextBox1.Text
        Dim table2 As New DataTable()

        CMD = New SqlCommand()
        CMD.Connection = CN
        CMD.CommandText = "SELECT * FROM Covid_App.fnGetVacinasDadasEnfermeiro(@nif);"
        CMD.Parameters.Add("@nif", SqlDbType.Decimal)
        CMD.Parameters("@nif").Value = search
        Try
            CN.Open()

            Dim adapter2 As New SqlDataAdapter(CMD)
            adapter2.Fill(table2)

            With DataGridView1
                .DataSource = table2
                Dim scroll As VScrollBar = DataGridView1.Controls.OfType(Of VScrollBar).SingleOrDefault
                Dim scroll1 As HScrollBar = DataGridView1.Controls.OfType(Of HScrollBar).SingleOrDefault
                ''.ClearSelection()
            End With
            CN.Close()

            DataGridView1.DataSource = table2
        Catch ex As Exception
            MessageBox.Show("Não inseriu um Nif válido!")
            CN.Close()

        End Try


    End Sub



    'AddEnfermeiro Button
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim addWorker As New AddEnfermeiro
        addWorker.StartPosition = FormStartPosition.CenterScreen
        addWorker.ShowDialog()
    End Sub

    Public Sub addEnfermeiro(ByVal nome As String, ByVal num_id_fisc As Integer, ByVal idade As Integer, ByVal endereco As String)
        Dim index As Integer = EnfermeirosDataGridView.CurrentRow.Index
        Dim selectedRow As DataGridViewRow = EnfermeirosDataGridView.Rows(index)
        'Dim numStore As Integer = selectedRow.Cells(0).Value

        CMD = New SqlCommand()
        CMD.Connection = CN
        CMD.CommandText = "EXEC Covid_App.addPessoa @nif, @idade, @nome, @endereco"
        CMD.Parameters.Add("@nif", SqlDbType.Decimal)
        CMD.Parameters.Add("@idade", SqlDbType.Int)
        CMD.Parameters.Add("@nome", SqlDbType.VarChar, 50)
        CMD.Parameters.Add("@endereco", SqlDbType.VarChar, 50)
        CMD.Parameters("@nif").Value = num_id_fisc
        CMD.Parameters("@idade").Value = idade
        CMD.Parameters("@nome").Value = nome
        CMD.Parameters("@endereco").Value = endereco
        CN.Open()
        CMD.ExecuteScalar()
        CN.Close()

        ''para mostrar na linha aseguir 
        Dim index1 As Integer = EnfermeirosDataGridView.CurrentRow.Index
        Dim selectedRow1 As DataGridViewRow = EnfermeirosDataGridView.Rows(index1)

        CMD = New SqlCommand()
        CMD.Connection = CN
        CMD.CommandText = "EXEC Covid_App.addEnfermeiro @nif"
        CMD.Parameters.Add("@nif", SqlDbType.Decimal)
        CMD.Parameters("@nif").Value = num_id_fisc
        CN.Open()
        CMD.ExecuteScalar()
        loadEnfermeiros()
        loadVacinasEnfermeiros()

        CN.Close()

    End Sub

    Private Sub TextBox1_TextChanged(sender As Object, e As EventArgs)

    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        FilterData("")
    End Sub


End Class