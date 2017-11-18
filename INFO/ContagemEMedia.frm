VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   1635
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4755
   LinkTopic       =   "Form1"
   ScaleHeight     =   1635
   ScaleWidth      =   4755
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   855
      Left            =   840
      TabIndex        =   0
      Top             =   360
      Width           =   2895
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

Dim qtdEstudantes As Integer
Dim media As Single
Dim total As Integer
Dim nome(1 To 4) As String
Dim contador(1 To 4) As String

Open App.Path & "\contagem.txt" For Input As #1

For qtdEstudantes = 1 To 4
Input #1, nome(qtdEstudantes), contador(qtdEstudantes)
Next qtdEstudantes

total = 0

For qtdEstudantes = 1 To 4
total = total + contador(qtdEstudantes)
Next qtdEstudantes

media = total / 4

For qtdEstudantes = 1 To 4
If contador(qtdEstudantes) > media Then
MsgBox nome(qtdEstudantes)
End If
Next qtdEstudantes


End Sub
