object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Filter Design'
  ClientHeight = 574
  ClientWidth = 1071
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 0
    Top = 100
    Width = 1071
    Height = 474
    BackWall.Brush.Gradient.Direction = gdBottomTop
    BackWall.Brush.Gradient.EndColor = clWhite
    BackWall.Brush.Gradient.StartColor = 15395562
    BackWall.Brush.Gradient.Visible = True
    BackWall.Transparent = False
    Foot.Font.Name = 'Verdana'
    Gradient.Direction = gdBottomTop
    Gradient.EndColor = clWhite
    Gradient.MidColor = 15395562
    Gradient.StartColor = 15395562
    Gradient.Visible = True
    LeftWall.Color = 14745599
    Legend.CheckBoxes = True
    Legend.Font.Name = 'Verdana'
    RightWall.Color = 14745599
    SubFoot.Font.Name = 'Verdana'
    SubTitle.Font.Name = 'Verdana'
    Title.Font.Name = 'Verdana'
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Axis.Color = 4210752
    BottomAxis.Grid.Color = 11119017
    BottomAxis.LabelsFont.Name = 'Verdana'
    BottomAxis.TicksInner.Color = 11119017
    BottomAxis.Title.Font.Name = 'Verdana'
    DepthAxis.Axis.Color = 4210752
    DepthAxis.Grid.Color = 11119017
    DepthAxis.LabelsFont.Name = 'Verdana'
    DepthAxis.TicksInner.Color = 11119017
    DepthAxis.Title.Font.Name = 'Verdana'
    DepthTopAxis.Axis.Color = 4210752
    DepthTopAxis.Grid.Color = 11119017
    DepthTopAxis.LabelsFont.Name = 'Verdana'
    DepthTopAxis.TicksInner.Color = 11119017
    DepthTopAxis.Title.Font.Name = 'Verdana'
    LeftAxis.Axis.Color = 4210752
    LeftAxis.Grid.Color = 11119017
    LeftAxis.LabelsFont.Name = 'Verdana'
    LeftAxis.TicksInner.Color = 11119017
    LeftAxis.Title.Font.Name = 'Verdana'
    RightAxis.Axis.Color = 4210752
    RightAxis.Grid.Color = 11119017
    RightAxis.LabelsFont.Name = 'Verdana'
    RightAxis.TicksInner.Color = 11119017
    RightAxis.Title.Font.Name = 'Verdana'
    TopAxis.Axis.Color = 4210752
    TopAxis.Grid.Color = 11119017
    TopAxis.LabelsFont.Name = 'Verdana'
    TopAxis.TicksInner.Color = 11119017
    TopAxis.Title.Font.Name = 'Verdana'
    View3D = False
    Align = alClient
    TabOrder = 0
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      LegendTitle = 'Raw'
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      Pointer.Brush.Gradient.EndColor = 10708548
      Pointer.Gradient.EndColor = 10708548
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      LegendTitle = 'Median'
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      LinePen.Width = 4
      Pointer.Brush.Gradient.EndColor = 3513587
      Pointer.Gradient.EndColor = 3513587
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series3: TLineSeries
      LegendTitle = 'Average'
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      Pointer.Brush.Gradient.EndColor = 1330417
      Pointer.Gradient.EndColor = 1330417
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series4: TLineSeries
      LegendTitle = 'Average2'
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      Pointer.Brush.Gradient.EndColor = 11048782
      Pointer.Gradient.EndColor = 11048782
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series5: TLineSeries
      LegendTitle = 'Median2'
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      Pointer.Brush.Gradient.EndColor = 7028779
      Pointer.Gradient.EndColor = 7028779
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series6: TLineSeries
      LegendTitle = 'Average'
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      Pointer.Brush.Gradient.EndColor = 6519581
      Pointer.Gradient.EndColor = 6519581
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series7: TBarSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1071
    Height = 100
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1063
        Height = 73
        Align = alTop
        TabOrder = 0
        ExplicitTop = -3
        object Bevel2: TBevel
          Left = 110
          Top = 35
          Width = 649
          Height = 30
        end
        object Bevel1: TBevel
          Left = 334
          Top = 3
          Width = 425
          Height = 30
        end
        object Label1: TLabel
          Left = 475
          Top = 10
          Width = 46
          Height = 13
          Caption = 'Filter Size'
        end
        object Label2: TLabel
          Left = 688
          Top = 9
          Width = 46
          Height = 13
          Caption = 'Filter Size'
        end
        object Label3: TLabel
          Left = 478
          Top = 43
          Width = 46
          Height = 13
          Caption = 'Filter Size'
        end
        object Label4: TLabel
          Left = 690
          Top = 45
          Width = 46
          Height = 13
          Caption = 'Filter Size'
        end
        object Label5: TLabel
          Left = 274
          Top = 43
          Width = 49
          Height = 13
          Caption = 'Alpha(<1)'
        end
        object Button1: TButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Read1'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 8
          Top = 39
          Width = 75
          Height = 25
          Caption = 'Read2'
          TabOrder = 1
          OnClick = Button2Click
        end
        object CheckBox1: TCheckBox
          Left = 984
          Top = 1
          Width = 78
          Height = 71
          Align = alRight
          Caption = 'Point'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = CheckBox1Click
        end
        object Button4: TButton
          Left = 112
          Top = 6
          Width = 91
          Height = 25
          Caption = 'Read RAW'
          TabOrder = 3
          OnClick = Button4Click
        end
        object Edit1: TEdit
          Left = 209
          Top = 6
          Width = 121
          Height = 21
          ImeName = 'Microsoft IME 2010'
          TabOrder = 4
          Text = 'Data3.txt'
        end
        object Button5: TButton
          Left = 336
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Median'
          TabOrder = 5
          OnClick = Button5Click
        end
        object Edit2: TEdit
          Left = 421
          Top = 7
          Width = 49
          Height = 21
          ImeName = 'Microsoft IME 2010'
          TabOrder = 6
          Text = '10'
        end
        object Button6: TButton
          Left = 552
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Average'
          TabOrder = 7
          OnClick = Button6Click
        end
        object Edit3: TEdit
          Left = 633
          Top = 6
          Width = 49
          Height = 21
          ImeName = 'Microsoft IME 2010'
          TabOrder = 8
          Text = '10'
        end
        object Edit4: TEdit
          Left = 418
          Top = 41
          Width = 23
          Height = 21
          ImeName = 'Microsoft IME 2010'
          TabOrder = 9
          Text = '10'
        end
        object Button7: TButton
          Left = 337
          Top = 39
          Width = 75
          Height = 25
          Caption = 'Average'
          TabOrder = 10
          OnClick = Button7Click
        end
        object Button8: TButton
          Left = 551
          Top = 39
          Width = 75
          Height = 25
          Caption = 'Median'
          TabOrder = 11
          OnClick = Button8Click
        end
        object Edit5: TEdit
          Left = 636
          Top = 42
          Width = 49
          Height = 21
          ImeName = 'Microsoft IME 2010'
          TabOrder = 12
          Text = '10'
        end
        object Button9: TButton
          Left = 112
          Top = 39
          Width = 101
          Height = 25
          Caption = 'Low Pass Filter'
          TabOrder = 13
          OnClick = Button9Click
        end
        object Edit6: TEdit
          Left = 219
          Top = 40
          Width = 49
          Height = 21
          ImeName = 'Microsoft IME 2010'
          TabOrder = 14
          Text = '0.9'
        end
        object ComboBox1: TComboBox
          Left = 445
          Top = 41
          Width = 30
          Height = 21
          Style = csDropDownList
          ImeName = 'Microsoft IME 2010'
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 15
          Text = '0'
          Items.Strings = (
            '0'
            '1')
        end
        object Button10: TButton
          Left = 816
          Top = 4
          Width = 121
          Height = 25
          Caption = 'RAW Histogram'
          TabOrder = 16
          OnClick = Button10Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Kalman Filter'
      ImageIndex = 1
      object Label6: TLabel
        Left = 114
        Top = 12
        Width = 8
        Height = 13
        Caption = 'Q'
      end
      object Label7: TLabel
        Left = 114
        Top = 40
        Width = 7
        Height = 13
        Caption = 'R'
      end
      object Button3: TButton
        Left = 16
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Run'
        TabOrder = 0
        OnClick = Button3Click
      end
      object Edit7: TEdit
        Left = 128
        Top = 10
        Width = 57
        Height = 21
        ImeName = 'Microsoft IME 2010'
        TabOrder = 1
        Text = '0.022'
      end
      object Edit8: TEdit
        Left = 128
        Top = 37
        Width = 57
        Height = 21
        ImeName = 'Microsoft IME 2010'
        TabOrder = 2
        Text = '0.617'
      end
    end
  end
end
