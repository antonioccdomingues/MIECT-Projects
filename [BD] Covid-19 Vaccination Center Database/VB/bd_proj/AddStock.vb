Public Class AddStock
    Private Sub Label1_Click(sender As Object, e As EventArgs) Handles Label1.Click

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
        LettersOnly(e)
    End Sub

    Private Sub TextBox1_KeyPress(sender As Object, e As EventArgs) Handles TextBox1.KeyPress
        NumberOnly(e)
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If TextBox1.Text = "" Or TextBox2.Text = "" Then
            MsgBox("Algumas caixas de texto, estão vazias!", MsgBoxStyle.Information, "ERRO")
        Else
            Dim quantidade As Integer = TextBox1.Text
            Dim vacina As String = TextBox2.Text

            Stock.incrementStock(quantidade, vacina)
            Me.Close()
            MessageBox.Show("Stock incrementado com sucesso")
        End If

    End Sub
End Class