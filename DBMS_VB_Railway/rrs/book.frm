VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Begin VB.Form Form2 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Reservation"
   ClientHeight    =   5205
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7830
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   5205
   ScaleWidth      =   7830
   Begin VB.CommandButton Command2 
      Caption         =   "Clear"
      Height          =   375
      Left            =   4920
      TabIndex        =   53
      Top             =   2760
      Width           =   2535
   End
   Begin VB.Frame Frame1 
      Height          =   1575
      Left            =   0
      TabIndex        =   32
      Top             =   480
      Width           =   7455
      Begin VB.TextBox Text20 
         DataField       =   "To"
         DataSource      =   "Adodc1"
         Height          =   285
         Left            =   3120
         TabIndex        =   46
         Top             =   720
         Width           =   1695
      End
      Begin VB.TextBox Text19 
         DataField       =   "From"
         DataSource      =   "Adodc1"
         Height          =   285
         Left            =   600
         TabIndex        =   45
         Top             =   720
         Width           =   1815
      End
      Begin VB.TextBox Text18 
         DataField       =   "Train_Name"
         DataSource      =   "Adodc1"
         Height          =   285
         Left            =   3600
         TabIndex        =   44
         Top             =   240
         Width           =   3615
      End
      Begin VB.ComboBox Combo7 
         DataSource      =   "Adodc1"
         Height          =   315
         ItemData        =   "book.frx":0000
         Left            =   600
         List            =   "book.frx":001C
         TabIndex        =   43
         Top             =   1200
         Width           =   1815
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Left            =   1200
         TabIndex        =   34
         Top             =   240
         Width           =   1215
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   375
         Left            =   5400
         TabIndex        =   33
         Top             =   720
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   661
         _Version        =   393216
         CheckBox        =   -1  'True
         Format          =   51576833
         CurrentDate     =   40151
      End
      Begin VB.Label Label19 
         Caption         =   "class"
         Height          =   255
         Left            =   120
         TabIndex        =   42
         Top             =   1200
         Width           =   1095
      End
      Begin VB.Label Label1 
         Caption         =   "Train Number"
         Height          =   255
         Left            =   120
         TabIndex        =   39
         Top             =   240
         Width           =   975
      End
      Begin VB.Label Label2 
         Caption         =   "Train Name"
         Height          =   255
         Left            =   2640
         TabIndex        =   38
         Top             =   240
         Width           =   855
      End
      Begin VB.Label Label3 
         Caption         =   "From"
         Height          =   255
         Left            =   120
         TabIndex        =   37
         Top             =   720
         Width           =   375
      End
      Begin VB.Label Label4 
         Caption         =   "To"
         Height          =   255
         Left            =   2640
         TabIndex        =   36
         Top             =   720
         Width           =   255
      End
      Begin VB.Label Label6 
         Caption         =   "Date"
         Height          =   255
         Left            =   4920
         TabIndex        =   35
         Top             =   720
         Width           =   375
      End
   End
   Begin VB.Frame Frame2 
      Height          =   2895
      Left            =   120
      TabIndex        =   2
      Top             =   2160
      Width           =   4695
      Begin VB.CheckBox Check6 
         Caption         =   "Check6"
         Height          =   255
         Left            =   3960
         TabIndex        =   52
         Top             =   2400
         Width           =   255
      End
      Begin VB.CheckBox Check5 
         Caption         =   "Check5"
         Height          =   255
         Left            =   3960
         TabIndex        =   51
         Top             =   2040
         Width           =   255
      End
      Begin VB.CheckBox Check4 
         Caption         =   "Check4"
         Height          =   255
         Left            =   3960
         TabIndex        =   50
         Top             =   1680
         Width           =   255
      End
      Begin VB.CheckBox Check3 
         Caption         =   "Check3"
         Height          =   255
         Left            =   3960
         TabIndex        =   49
         Top             =   1320
         Width           =   255
      End
      Begin VB.CheckBox Check2 
         Caption         =   "Check2"
         Height          =   255
         Left            =   3960
         TabIndex        =   48
         Top             =   960
         Width           =   255
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check1"
         Height          =   255
         Left            =   3960
         TabIndex        =   47
         Top             =   600
         Width           =   255
      End
      Begin VB.TextBox Text5 
         Height          =   285
         Left            =   840
         TabIndex        =   20
         Top             =   600
         Width           =   1455
      End
      Begin VB.TextBox Text6 
         Height          =   285
         Left            =   840
         TabIndex        =   19
         Top             =   960
         Width           =   1455
      End
      Begin VB.TextBox Text7 
         Height          =   285
         Left            =   840
         TabIndex        =   18
         Top             =   1320
         Width           =   1455
      End
      Begin VB.TextBox Text8 
         Height          =   285
         Left            =   840
         TabIndex        =   17
         Top             =   1680
         Width           =   1455
      End
      Begin VB.TextBox Text9 
         Height          =   285
         Left            =   840
         TabIndex        =   16
         Top             =   2040
         Width           =   1455
      End
      Begin VB.TextBox Text10 
         Height          =   285
         Left            =   840
         TabIndex        =   15
         Top             =   2400
         Width           =   1455
      End
      Begin VB.TextBox Text11 
         Height          =   285
         Left            =   2520
         TabIndex        =   14
         Top             =   600
         Width           =   375
      End
      Begin VB.TextBox Text12 
         Height          =   285
         Left            =   2520
         TabIndex        =   13
         Top             =   960
         Width           =   375
      End
      Begin VB.TextBox Text13 
         Height          =   285
         Left            =   2520
         TabIndex        =   12
         Top             =   1320
         Width           =   375
      End
      Begin VB.TextBox Text14 
         Height          =   285
         Left            =   2520
         TabIndex        =   11
         Top             =   1680
         Width           =   375
      End
      Begin VB.TextBox Text15 
         Height          =   285
         Left            =   2520
         TabIndex        =   10
         Top             =   2040
         Width           =   375
      End
      Begin VB.TextBox Text16 
         Height          =   285
         Left            =   2520
         TabIndex        =   9
         Top             =   2400
         Width           =   375
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "book.frx":0073
         Left            =   3000
         List            =   "book.frx":007D
         TabIndex        =   8
         Top             =   600
         Width           =   495
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         ItemData        =   "book.frx":0087
         Left            =   3000
         List            =   "book.frx":0091
         TabIndex        =   7
         Top             =   960
         Width           =   510
      End
      Begin VB.ComboBox Combo3 
         Height          =   315
         ItemData        =   "book.frx":009B
         Left            =   3000
         List            =   "book.frx":00A5
         TabIndex        =   6
         Top             =   1320
         Width           =   510
      End
      Begin VB.ComboBox Combo4 
         Height          =   315
         ItemData        =   "book.frx":00AF
         Left            =   3000
         List            =   "book.frx":00B9
         TabIndex        =   5
         Top             =   1680
         Width           =   510
      End
      Begin VB.ComboBox Combo5 
         Height          =   315
         ItemData        =   "book.frx":00C3
         Left            =   3000
         List            =   "book.frx":00CD
         TabIndex        =   4
         Top             =   2040
         Width           =   510
      End
      Begin VB.ComboBox Combo6 
         Height          =   315
         ItemData        =   "book.frx":00D7
         Left            =   3000
         List            =   "book.frx":00E1
         TabIndex        =   3
         Top             =   2400
         Width           =   510
      End
      Begin VB.Label Label7 
         Caption         =   "Sr No."
         Height          =   255
         Left            =   120
         TabIndex        =   31
         Top             =   240
         Width           =   495
      End
      Begin VB.Label Label8 
         Caption         =   "Name of Passenger"
         Height          =   255
         Left            =   840
         TabIndex        =   30
         Top             =   240
         Width           =   1455
      End
      Begin VB.Label Label9 
         Caption         =   "Age"
         Height          =   255
         Left            =   2520
         TabIndex        =   29
         Top             =   240
         Width           =   375
      End
      Begin VB.Label Label10 
         Caption         =   "Sex"
         Height          =   255
         Left            =   3120
         TabIndex        =   28
         Top             =   240
         Width           =   375
      End
      Begin VB.Label Label11 
         Caption         =   "Senior Citizen"
         Height          =   255
         Left            =   3600
         TabIndex        =   27
         Top             =   240
         Width           =   975
      End
      Begin VB.Label Label12 
         Caption         =   "1"
         Height          =   255
         Left            =   240
         TabIndex        =   26
         Top             =   600
         Width           =   135
      End
      Begin VB.Label Label13 
         Caption         =   "2"
         Height          =   255
         Left            =   240
         TabIndex        =   25
         Top             =   960
         Width           =   135
      End
      Begin VB.Label Label14 
         Caption         =   "3"
         Height          =   255
         Left            =   240
         TabIndex        =   24
         Top             =   1320
         Width           =   135
      End
      Begin VB.Label Label15 
         Caption         =   "4"
         Height          =   255
         Left            =   240
         TabIndex        =   23
         Top             =   1680
         Width           =   135
      End
      Begin VB.Label Label16 
         Caption         =   "5"
         Height          =   255
         Left            =   240
         TabIndex        =   22
         Top             =   2040
         Width           =   135
      End
      Begin VB.Label Label17 
         Caption         =   "6"
         Height          =   255
         Left            =   240
         TabIndex        =   21
         Top             =   2400
         Width           =   135
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Book Ticket"
      Height          =   375
      Left            =   4920
      TabIndex        =   1
      Top             =   2280
      Width           =   2535
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   4920
      TabIndex        =   0
      Top             =   3240
      Width           =   2535
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Caption         =   "RESERVATION"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   0
      TabIndex        =   41
      Top             =   0
      Width           =   7695
   End
   Begin VB.Label Label18 
      Caption         =   "Note: Tickets Once Reserved cannot be exchanged or edited."
      Height          =   495
      Left            =   4920
      TabIndex        =   40
      Top             =   3720
      Width           =   2535
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub Combo7_Click()
s = "select * from seats where train_no = " & Text1.Text & " AND class = '" & Combo7.Text & "' "
Connect (s)
Set Text66.DataSource = rs
Text66.DataField = "available_seats"
If Text66.Text = "0" Then
MsgBox ("No Seats Available in" & Combo7.Text)
Combo7.Text = ""
End If
End Sub

Private Sub Command1_Click()
If Combo7.Text = "" Then
MsgBox ("Please Select Class")
End If
a = MsgBox("ur ticket booked")
End Sub


Private Sub Command2_Click()
Text5.Text = ""
Text6.Text = " "
Text7.Text = " "
Text8.Text = " "
Text9.Text = " "
Text10.Text = " "
Text11.Text = " "
Text12.Text = " "
Text13.Text = " "
Text14.Text = " "
Text15.Text = " "
Text16.Text = " "
End Sub

Private Sub Command3_Click()
Form6.Show
Unload Me
End Sub


Private Sub check1_Click()
If Text11.Text < 60 Then
MsgBox ("Age Should Be More Than 60")
Check1.Value = False
End If
End Sub

Private Sub check2_Click()
If Text12.Text < 60 Then
MsgBox ("Age Should Be More Than 60")
Check2.Value = False
End If
End Sub

Private Sub check3_Click()
If Text13.Text < 60 Then
MsgBox ("Age Should Be More Than 60")
Check3.Value = False
End If
End Sub

Private Sub check4_Click()
If Text14.Text < 60 Then
MsgBox ("Age Should Be More Than 60")
Check4.Value = False
End If
End Sub

Private Sub check5_Click()
If Text15.Text < 60 Then
MsgBox ("Age Should Be More Than 60")
Check5.Value = False
End If
End Sub

Private Sub Option6_Click()
If Text16.Text < 60 Then
MsgBox ("Age Should Be More Than 60")
Option6.Value = False
End If
End Sub



