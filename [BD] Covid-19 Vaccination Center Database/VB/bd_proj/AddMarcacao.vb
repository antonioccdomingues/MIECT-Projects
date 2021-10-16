Imports System.Data.SqlClient

Public Class AddMarcacao

    Dim CMD As SqlCommand
    Dim CN As SqlConnection = New SqlConnection("Data Source = localhost;" &
                                                "Initial Catalog = Covid_App; Integrated Security = true;")

    Private Function CheckNIF(num As Integer)
        Dim NIFcheck As Object
        CMD = New SqlCommand()
        CMD.Connection = CN
        CMD.CommandText = "SELECT Covid_App.fnGetNumNifMarcacoes(@num);"
        CMD.Parameters.Add("@num", SqlDbType.Decimal)
        CMD.Parameters("@num").Value = num
        CN.Open()
        NIFcheck = CMD.ExecuteScalar()
        CN.Close()
        Return NIFcheck
    End Function
    Private Function CheckIfEnfermeiroExists(num As Integer)
        Dim numcheck As Object
        CMD = New SqlCommand()
        CMD.Connection = CN
        CMD.CommandText = "SELECT * FROM Covid_App.enfermeiro WHERE enfermeiro.nif=@num;"
        CMD.Parameters.Add("@num", SqlDbType.Int)
        CMD.Parameters("@num").Value = num
        CN.Open()
        numcheck = CMD.ExecuteScalar()
        CN.Close()
        Return numcheck
    End Function

    Private Function CheckIfPacienteExists(num As Integer)
        Dim numcheck As Object
        CMD = New SqlCommand()
        CMD.Connection = CN
        CMD.CommandText = "SELECT * FROM Covid_App.paciente WHERE paciente.nif=@num;"
        CMD.Parameters.Add("@num", SqlDbType.Int)
        CMD.Parameters("@num").Value = num
        CN.Open()
        numcheck = CMD.ExecuteScalar()
        CN.Close()
        Return numcheck
    End Function



    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""

        Me.Close()
    End Sub

    Private Sub LettersOnly(ByVal e As System.Windows.Forms.KeyPressEventArgs)
        If (Asc(e.KeyChar) >= 48 And Asc(e.KeyChar) <= 57) Then
            e.Handled = True
            MsgBox("Apenas é permitida a entrada de Letras!", MsgBoxStyle.Information, "ERRO")
        End If
    End Sub

    Private Sub NumberOnly(ByVal e As System.Windows.Forms.KeyPressEventArgs)
        If (Asc(e.KeyChar) >= 48 And Asc(e.KeyChar) <= 57) Or Asc(e.KeyChar) = 8 Then
        Else
            e.Handled = True
            MsgBox("Apenas permitida a entrada de numeros!", MsgBoxStyle.Information, "ERRO")
        End If
    End Sub

    Private Sub TextBox2_KeyPress(sender As Object, e As EventArgs) Handles TextBox2.KeyPress
        NumberOnly(e)
    End Sub
    Private Sub TextBox3_KeyPress(sender As Object, e As EventArgs) Handles TextBox3.KeyPress
        NumberOnly(e)
    End Sub

    Private Sub TextBox4_KeyPress(sender As Object, e As EventArgs) Handles TextBox4.KeyPress
        NumberOnly(e)
    End Sub

    Private Sub TextBox5_KeyPress(sender As Object, e As EventArgs) Handles TextBox5.KeyPress
        LettersOnly(e)
    End Sub

    Private Sub TextBox6_KeyPress(sender As Object, e As EventArgs) Handles TextBox6.KeyPress
        NumberOnly(e)
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Try
            Dim nifcheckmenorq2 As Object


            Dim nifEnf As Object = CheckIfEnfermeiroExists(Convert.ToInt32(TextBox2.Text))
            Dim nifPac As Object = CheckIfPacienteExists(Convert.ToInt32(TextBox3.Text))

            Try
                nifcheckmenorq2 = CheckNIF(Convert.ToInt32(TextBox3.Text))
            Catch ex As Exception

            End Try


            If TextBox2.Text.Length <> 9 Then
                MsgBox("NIF deve ter 9 numeros!", MsgBoxStyle.Information, "ERRO")
            ElseIf TextBox1.Text = "" Or TextBox5.Text = "" Then
                MsgBox("Algumas caixas de texto, estão vazias!", MsgBoxStyle.Information, "ERRO")
            ElseIf nifcheckmenorq2 >= 2 Then
                MsgBox("Esse paciente já tem mais do que 2 marcações!", MsgBoxStyle.Information, "ERRO")
            ElseIf Not IsDate(TextBox1.Text) Then
                MsgBox("Data inválida!", MsgBoxStyle.Information, "ERRO")
            ElseIf nifEnf Is Nothing Then
                MsgBox("Esse enfermeiro nao existe na Base de dados!", MsgBoxStyle.Information, "ERRO")
            ElseIf nifPac Is Nothing Then
                MsgBox("Esse paciente nao existe na Base de dados!", MsgBoxStyle.Information, "ERRO")
            Else
                Dim data As String = TextBox1.Text
                Dim nif_enf As Integer = TextBox2.Text
                Dim nif_pac As Integer = TextBox3.Text

                Dim doses As Integer = TextBox4.Text
                Dim nomeVacina As String = TextBox5.Text
                Dim validade As Integer = TextBox6.Text



                Marcacoes.addMarcacao(data, nif_enf, nif_pac, doses, nomeVacina, validade)
                Me.Close()
                MessageBox.Show("Marcação efetuada com sucesso!")

            End If
        Catch ex As Exception

        End Try
    End Sub


End Class