﻿Imports System.Data.SqlClient

Public Class AddEnfermeiro

    Dim CMD As SqlCommand
    Dim CN As SqlConnection = New SqlConnection("Data Source = localhost;" &
                                                "Initial Catalog = Covid_App; Integrated Security = true;")
    Private Function CheckNIF(num As Integer)
        Dim NIFcheck As Object
        CMD = New SqlCommand()
        CMD.Connection = CN
        CMD.CommandText = "SELECT * FROM Covid_App.enfermeiro WHERE enfermeiro.nif=@num;"
        CMD.Parameters.Add("@num", SqlDbType.Int)
        CMD.Parameters("@num").Value = num
        CN.Open()
        NIFcheck = CMD.ExecuteScalar()
        CN.Close()
        Return NIFcheck
    End Function

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox4.Text = ""

        Me.Close()
    End Sub

    Private Sub TextBox1_KeyPress(sender As Object, e As EventArgs) Handles TextBox1.KeyPress
        LettersOnly(e)
    End Sub

    Private Sub LettersOnly(ByVal e As System.Windows.Forms.KeyPressEventArgs)
        If (Asc(e.KeyChar) >= 48 And Asc(e.KeyChar) <= 57) Then
            e.Handled = True
            MsgBox("Apenas é permitida a entrada de Letras!", MsgBoxStyle.Information, "ERRO")
        End If
    End Sub

    Private Sub TextBox2_KeyPress(sender As Object, e As EventArgs) Handles TextBox2.KeyPress
        NumberOnly(e)
    End Sub
    Private Sub NumberOnly(ByVal e As System.Windows.Forms.KeyPressEventArgs)
        If (Asc(e.KeyChar) >= 48 And Asc(e.KeyChar) <= 57) Or Asc(e.KeyChar) = 8 Then
        Else
            e.Handled = True
            MsgBox("Apenas permitida a entrada de numeros!", MsgBoxStyle.Information, "ERRO")
        End If
    End Sub

    Private Sub TextBox3_KeyPress(sender As Object, e As EventArgs) Handles TextBox3.KeyPress
        NumberOnly(e)
    End Sub

    Private Sub TextBox4_KeyPress(sender As Object, e As EventArgs) Handles TextBox4.KeyPress
        LettersOnly(e)
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            Dim nifcheck As Object = CheckNIF(Convert.ToInt32(TextBox2.Text))
            If TextBox2.Text.Length <> 9 Then
                MsgBox("NIF deve ter 9 numeros!", MsgBoxStyle.Information, "ERRO")
            ElseIf TextBox1.Text = "" Or TextBox4.Text = "" Then
                MsgBox("Algumas caixas de texto, estão vazias!", MsgBoxStyle.Information, "ERRO")
            ElseIf Not nifcheck Is Nothing Then
                MsgBox("Esse enfermeiro já existe na base de dados!", MsgBoxStyle.Information, "ERRO")
            Else
                Dim nome As String = TextBox1.Text
                Dim num_id_fisc As Integer = TextBox2.Text
                Dim idade As Integer = TextBox3.Text
                Dim endereco As String = TextBox4.Text


                Enfermeiros.addEnfermeiro(nome, num_id_fisc, idade, endereco)
                Me.Close()
                MessageBox.Show("Enfermeiro adicionado com sucesso")

            End If
        Catch ex As Exception

        End Try
    End Sub
End Class