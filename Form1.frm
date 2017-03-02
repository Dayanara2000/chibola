VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4830
   ClientLeft      =   165
   ClientTop       =   450
   ClientWidth     =   5220
   LinkTopic       =   "Form1"
   ScaleHeight     =   4830
   ScaleWidth      =   5220
   Begin VB.CommandButton INICIO 
      Caption         =   "INICIO"
      Height          =   735
      Left            =   1200
      TabIndex        =   1
      Top             =   1200
      Width           =   2775
   End
   Begin VB.CommandButton FINALIZAR 
      Caption         =   "FINALIZAR"
      Height          =   735
      Left            =   1200
      TabIndex        =   0
      Top             =   2280
      Width           =   2775
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   20
      Left            =   4080
      Top             =   2520
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   20
      Left            =   4080
      Top             =   1320
   End
   Begin VB.Line Line4 
      X1              =   5040
      X2              =   240
      Y1              =   4680
      Y2              =   4680
   End
   Begin VB.Line Line3 
      X1              =   240
      X2              =   240
      Y1              =   120
      Y2              =   4680
   End
   Begin VB.Line Line2 
      X1              =   240
      X2              =   5040
      Y1              =   120
      Y2              =   120
   End
   Begin VB.Line Line1 
      X1              =   5040
      X2              =   5040
      Y1              =   4680
      Y2              =   120
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFF80&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFF80&
      BorderStyle     =   3  'Dot
      Height          =   735
      Left            =   360
      Shape           =   3  'Circle
      Top             =   360
      Width           =   855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub INICIO_Click()
 Timer1.Enabled = True
 Timer2.Enabled = True
 
End Sub

Private Sub Timer1_Timer()
Timer1.Enabled = True
Shape1.Top = Shape1.Top + 100
If Shape1.Top >= 3500 Then
Shape1.Top = 3500
End If
If Shape1.Top = 3500 Then
Shape1.Left = Shape1.Left + 100
End If
If Shape1.Left > 4200 Then
Shape1.Left = 4200
End If
If Shape1.Left = 4200 Then
Timer1.Enabled = False
End If
End Sub

Private Sub Timer2_Timer()
Timer2.Enabled = True
If Timer1.Enabled = False Then
Shape1.Top = Shape1.Top - 100
End If
If Shape1.Top < 360 Then
Shape1.Top = 360
End If
If Shape1.Top = 360 Then
Shape1.Left = Shape1 - 100
End If







End Sub
