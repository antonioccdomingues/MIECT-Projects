﻿<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class AddMarcacao
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.TextBox2 = New System.Windows.Forms.TextBox()
        Me.TextBox3 = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.TextBox4 = New System.Windows.Forms.TextBox()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.TextBox5 = New System.Windows.Forms.TextBox()
        Me.TextBox6 = New System.Windows.Forms.TextBox()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Segoe UI", 19.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point)
        Me.Label1.Location = New System.Drawing.Point(192, 9)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(327, 36)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Adicionar Nova Marcação"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(31, 98)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(215, 15)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Data e Hora (AAAA/MM/DD hh:mm:ss)"
        '
        'TextBox1
        '
        Me.TextBox1.Location = New System.Drawing.Point(31, 126)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(136, 23)
        Me.TextBox1.TabIndex = 3
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(295, 98)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(103, 15)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "NIF do Enfermeiro"
        '
        'TextBox2
        '
        Me.TextBox2.Location = New System.Drawing.Point(295, 126)
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.Size = New System.Drawing.Size(136, 23)
        Me.TextBox2.TabIndex = 5
        '
        'TextBox3
        '
        Me.TextBox3.Location = New System.Drawing.Point(504, 126)
        Me.TextBox3.Name = "TextBox3"
        Me.TextBox3.Size = New System.Drawing.Size(136, 23)
        Me.TextBox3.TabIndex = 7
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(504, 98)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(90, 15)
        Me.Label4.TabIndex = 6
        Me.Label4.Text = "NIF do Paciente"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(111, 192)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(91, 15)
        Me.Label5.TabIndex = 8
        Me.Label5.Text = "Doses da Vacina"
        '
        'TextBox4
        '
        Me.TextBox4.Location = New System.Drawing.Point(111, 223)
        Me.TextBox4.Name = "TextBox4"
        Me.TextBox4.Size = New System.Drawing.Size(100, 23)
        Me.TextBox4.TabIndex = 9
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(272, 192)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(93, 15)
        Me.Label6.TabIndex = 10
        Me.Label6.Text = "Nome da Vacina"
        '
        'TextBox5
        '
        Me.TextBox5.Location = New System.Drawing.Point(272, 223)
        Me.TextBox5.Name = "TextBox5"
        Me.TextBox5.Size = New System.Drawing.Size(126, 23)
        Me.TextBox5.TabIndex = 11
        '
        'TextBox6
        '
        Me.TextBox6.Location = New System.Drawing.Point(447, 223)
        Me.TextBox6.Name = "TextBox6"
        Me.TextBox6.Size = New System.Drawing.Size(126, 23)
        Me.TextBox6.TabIndex = 12
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(447, 192)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(95, 15)
        Me.Label7.TabIndex = 13
        Me.Label7.Text = "Validade (Meses)"
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(410, 316)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(88, 30)
        Me.Button2.TabIndex = 15
        Me.Button2.Text = "Cancelar"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'Button1
        '
        Me.Button1.Font = New System.Drawing.Font("Segoe UI", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point)
        Me.Button1.Location = New System.Drawing.Point(178, 316)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(88, 30)
        Me.Button1.TabIndex = 14
        Me.Button1.Text = "Confirmar"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'AddMarcacao
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 15.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(716, 403)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.TextBox6)
        Me.Controls.Add(Me.TextBox5)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.TextBox4)
        Me.Controls.Add(Me.Label5)
        Me.Controls.Add(Me.TextBox3)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.TextBox2)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.TextBox1)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Name = "AddMarcacao"
        Me.Text = "AddMarcacao"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents Label1 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents TextBox1 As TextBox
    Friend WithEvents Label3 As Label
    Friend WithEvents TextBox2 As TextBox
    Friend WithEvents TextBox3 As TextBox
    Friend WithEvents Label4 As Label
    Friend WithEvents Label5 As Label
    Friend WithEvents TextBox4 As TextBox
    Friend WithEvents Label6 As Label
    Friend WithEvents TextBox5 As TextBox
    Friend WithEvents TextBox6 As TextBox
    Friend WithEvents Label7 As Label
    Friend WithEvents Button2 As Button
    Friend WithEvents Button1 As Button
End Class
