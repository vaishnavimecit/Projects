VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "LOGIN FORM"
   ClientHeight    =   3375
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   5025
   LinkTopic       =   "Form1"
   ScaleHeight     =   3375
   ScaleWidth      =   5025
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "End"
      Height          =   495
      Left            =   3120
      TabIndex        =   5
      Top             =   2760
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Login"
      Height          =   495
      Left            =   720
      TabIndex        =   4
      Top             =   2760
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      Height          =   405
      Left            =   2760
      TabIndex        =   3
      Top             =   1680
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   2760
      TabIndex        =   2
      Top             =   840
      Width           =   1815
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000012&
      Caption         =   "PASSWORD"
      ForeColor       =   &H8000000B&
      Height          =   375
      Left            =   600
      TabIndex        =   1
      Top             =   1680
      Width           =   1455
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000007&
      Caption         =   "USER NAME"
      ForeColor       =   &H8000000B&
      Height          =   375
      Left            =   600
      TabIndex        =   0
      Top             =   840
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Text1.Text = Text2.Text Then
MDIForm1.Show
Else
a = MsgBox("Invalid Password")
End If

End Sub

Private Sub Command2_Click()
End
End Sub
