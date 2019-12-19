VERSION 5.00
Begin VB.Form Form13 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Fare Details"
   ClientHeight    =   3645
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4575
   LinkTopic       =   "Form13"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   3645
   ScaleWidth      =   4575
   Begin VB.TextBox Text5 
      Height          =   285
      Left            =   3480
      TabIndex        =   13
      Top             =   2610
      Width           =   855
   End
   Begin VB.TextBox Text4 
      Height          =   285
      Left            =   2400
      TabIndex        =   12
      Top             =   2610
      Width           =   855
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   1200
      TabIndex        =   11
      Top             =   2640
      Width           =   1095
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   1680
      TabIndex        =   10
      Top             =   1440
      Width           =   2655
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Back"
      Height          =   375
      Left            =   3000
      TabIndex        =   9
      Top             =   3120
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Get Fares"
      Height          =   375
      Left            =   3000
      TabIndex        =   8
      Top             =   480
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1080
      TabIndex        =   7
      Top             =   240
      Width           =   1815
   End
   Begin VB.Frame Frame2 
      Height          =   1935
      Left            =   240
      TabIndex        =   0
      Top             =   1080
      Width           =   4215
      Begin VB.Label Label10 
         Caption         =   "Class"
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   1560
         Width           =   975
      End
      Begin VB.Label Label9 
         Alignment       =   2  'Center
         Caption         =   "SC"
         Height          =   255
         Left            =   3360
         TabIndex        =   4
         Top             =   1200
         Width           =   495
      End
      Begin VB.Label Label8 
         Caption         =   "Child"
         Height          =   255
         Left            =   2400
         TabIndex        =   3
         Top             =   1200
         Width           =   375
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         Caption         =   "Adult"
         Height          =   255
         Left            =   1200
         TabIndex        =   2
         Top             =   1200
         Width           =   495
      End
      Begin VB.Label Label13 
         Caption         =   "Train Number"
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   360
         Width           =   975
      End
   End
   Begin VB.Label Label3 
      Caption         =   "Enter Train Number"
      Height          =   375
      Left            =   120
      TabIndex        =   6
      Top             =   240
      Width           =   855
   End
End
Attribute VB_Name = "Form13"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Command1_Click()
If Text1.Text = 1234 Then
Text2.Text = 1234
Text3.Text = 395
Text4.Text = 295
Text5.Text = 195
Else
a = MsgBox("Entered train no doesn't exist")
End If
End Sub
Private Sub Command2_Click()
Unload Me
End Sub
