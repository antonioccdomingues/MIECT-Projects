<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Enfermeiros
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
        Me.EnfermeirosDataGridView = New System.Windows.Forms.DataGridView()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.VacinasEnfDataGridView = New System.Windows.Forms.DataGridView()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.DataGridView1 = New System.Windows.Forms.DataGridView()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.Button2 = New System.Windows.Forms.Button()
        CType(Me.EnfermeirosDataGridView, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.VacinasEnfDataGridView, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Segoe UI", 20.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point)
        Me.Label1.Location = New System.Drawing.Point(546, 9)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(171, 37)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Enfermeiros"
        Me.Label1.TextAlign = System.Drawing.ContentAlignment.TopCenter
        '
        'EnfermeirosDataGridView
        '
        Me.EnfermeirosDataGridView.AllowUserToAddRows = False
        Me.EnfermeirosDataGridView.AllowUserToDeleteRows = False
        Me.EnfermeirosDataGridView.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill
        Me.EnfermeirosDataGridView.BackgroundColor = System.Drawing.SystemColors.Control
        Me.EnfermeirosDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.EnfermeirosDataGridView.Location = New System.Drawing.Point(27, 136)
        Me.EnfermeirosDataGridView.Name = "EnfermeirosDataGridView"
        Me.EnfermeirosDataGridView.ReadOnly = True
        Me.EnfermeirosDataGridView.RowHeadersWidth = 51
        Me.EnfermeirosDataGridView.RowTemplate.Height = 25
        Me.EnfermeirosDataGridView.Size = New System.Drawing.Size(511, 203)
        Me.EnfermeirosDataGridView.TabIndex = 1
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Segoe UI", 14.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.Label2.Location = New System.Drawing.Point(187, 93)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(182, 25)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Lista de enfermeiros"
        '
        'VacinasEnfDataGridView
        '
        Me.VacinasEnfDataGridView.AllowUserToAddRows = False
        Me.VacinasEnfDataGridView.AllowUserToDeleteRows = False
        Me.VacinasEnfDataGridView.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill
        Me.VacinasEnfDataGridView.BackgroundColor = System.Drawing.SystemColors.Control
        Me.VacinasEnfDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.VacinasEnfDataGridView.Location = New System.Drawing.Point(722, 130)
        Me.VacinasEnfDataGridView.Name = "VacinasEnfDataGridView"
        Me.VacinasEnfDataGridView.ReadOnly = True
        Me.VacinasEnfDataGridView.RowHeadersWidth = 51
        Me.VacinasEnfDataGridView.RowTemplate.Height = 25
        Me.VacinasEnfDataGridView.Size = New System.Drawing.Size(501, 180)
        Me.VacinasEnfDataGridView.TabIndex = 1
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Segoe UI", 14.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.Label3.Location = New System.Drawing.Point(849, 84)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(263, 25)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "Vacinas dadas por enfermeiro"
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(213, 345)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(127, 23)
        Me.Button1.TabIndex = 5
        Me.Button1.Text = "Adicionar Enfermeiro"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'DataGridView1
        '
        Me.DataGridView1.BackgroundColor = System.Drawing.SystemColors.Control
        Me.DataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DataGridView1.Location = New System.Drawing.Point(722, 374)
        Me.DataGridView1.Name = "DataGridView1"
        Me.DataGridView1.RowHeadersWidth = 51
        Me.DataGridView1.RowTemplate.Height = 25
        Me.DataGridView1.Size = New System.Drawing.Size(501, 205)
        Me.DataGridView1.TabIndex = 8
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(892, 327)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(331, 15)
        Me.Label4.TabIndex = 9
        Me.Label4.Text = "Pesquisar NIF de enfermeiro para obter pessoas que vacionou"
        '
        'TextBox1
        '
        Me.TextBox1.Location = New System.Drawing.Point(863, 345)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(274, 23)
        Me.TextBox1.TabIndex = 10
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(1148, 345)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(75, 23)
        Me.Button2.TabIndex = 11
        Me.Button2.Text = "Pesquisar"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'Enfermeiros
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 15.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1313, 620)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.TextBox1)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.DataGridView1)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.VacinasEnfDataGridView)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.EnfermeirosDataGridView)
        Me.Controls.Add(Me.Label1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None
        Me.Name = "Enfermeiros"
        Me.Text = "Enfermeiros"
        CType(Me.EnfermeirosDataGridView, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.VacinasEnfDataGridView, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents Label1 As Label
    Friend WithEvents EnfermeirosDataGridView As DataGridView
    Friend WithEvents Label2 As Label
    Friend WithEvents VacinasEnfDataGridView As DataGridView
    Friend WithEvents Label3 As Label
    Friend WithEvents Button1 As Button
    Friend WithEvents DataGridView1 As DataGridView
    Friend WithEvents Label4 As Label
    Friend WithEvents TextBox1 As TextBox
    Friend WithEvents Button2 As Button
End Class
