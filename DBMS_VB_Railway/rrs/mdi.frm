VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H8000000C&
   Caption         =   "Railway Reservation System"
   ClientHeight    =   8595
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   15090
   LinkTopic       =   "MDIForm1"
   Picture         =   "mdi.frx":0000
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   14520
      Top             =   840
   End
   Begin VB.PictureBox Picture1 
      Align           =   1  'Align Top
      Height          =   735
      Left            =   0
      ScaleHeight     =   675
      ScaleWidth      =   15030
      TabIndex        =   0
      Top             =   0
      Width           =   15090
      Begin VB.CommandButton Command1 
         Caption         =   "Nothern Railway Map "
         Height          =   375
         Left            =   720
         TabIndex        =   5
         Top             =   240
         Width           =   2175
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H80000008&
         ForeColor       =   &H0080FFFF&
         Height          =   255
         Left            =   13920
         TabIndex        =   4
         Top             =   480
         Width           =   1095
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackColor       =   &H80000008&
         ForeColor       =   &H0080FFFF&
         Height          =   255
         Left            =   13920
         TabIndex        =   3
         Top             =   120
         Width           =   1095
      End
      Begin VB.Label Label2 
         Caption         =   "Time"
         Height          =   255
         Left            =   13080
         TabIndex        =   2
         Top             =   480
         Width           =   615
      End
      Begin VB.Label Label1 
         Caption         =   "Date"
         Height          =   255
         Left            =   13080
         TabIndex        =   1
         Top             =   120
         Width           =   495
      End
   End
   Begin ComctlLib.ImageList ImageList1 
      Left            =   6240
      Top             =   3720
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   327682
      BeginProperty Images {0713E8C2-850A-101B-AFC0-4210102A8DA7} 
         NumListImages   =   6
         BeginProperty ListImage1 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "mdi.frx":20E602
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "mdi.frx":20E91C
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "mdi.frx":20EC36
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "mdi.frx":20EF50
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "mdi.frx":20F26A
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "mdi.frx":20F584
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Menu mnuFile 
      Caption         =   "File "
      Begin VB.Menu mnuRes 
         Caption         =   "Reservation"
      End
      Begin VB.Menu mnuCan 
         Caption         =   "Canellation"
      End
      Begin VB.Menu mnuFD 
         Caption         =   "Fare Details"
      End
      Begin VB.Menu mnuxit 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu mnuAbt 
      Caption         =   "About"
   End
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub Command1_Click()
Form12.Show
End Sub

Private Sub mnuAbt_Click()
frmAbout.Show
End Sub

Private Sub mnuCan_Click()
form6.Show
End Sub

Private Sub mnuFD_Click()
form13.Show
End Sub

Private Sub mnuRes_Click()
Form4.Show
End Sub

Private Sub mnuxit_Click()
End
End Sub

Private Sub Timer1_Timer()
Label3.Caption = Date
Label4.Caption = Time
End Sub
