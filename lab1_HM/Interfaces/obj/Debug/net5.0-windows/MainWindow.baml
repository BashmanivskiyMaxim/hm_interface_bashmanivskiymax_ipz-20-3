   M S B A M L   `   `   `  ����E  AInterfaces, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Interfaces
Interfaces  5   	       Interfaces.MainWindow   5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Interfaces     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   +  %System.Windows.Controls.Ribbon.Ribbon  $��0��6   $��1,1,1,1q�6      ApplicationMenu 5      :  4System.Windows.Controls.Ribbon.RibbonApplicationMenu  5      5  /System.Windows.Controls.Ribbon.RibbonMenuButton   SmallImageSource$ images\Home.png��6(   .@�5      >  8System.Windows.Controls.Ribbon.RibbonApplicationMenuItem  $��Create��60   3  -System.Windows.Controls.Ribbon.RibbonMenuItem   ImageSource$ images\Document.png��6@      KeyTip$ C��6b     5      -   5        $
��Open��5   0   $ images\OpenFolder.png��6>   $ O��6b   6m     5      $��Print��60   $ images\PrintDialog.png��6?   $ P��6d     5      $��
Properties��60   $ images\Property.png��6D     5      -   5        $��Close��5   0   $ images\CloseDocument.png��6?   $ C��6f   6q   5         QuickAccessToolBar 5      =  7System.Windows.Controls.Ribbon.RibbonQuickAccessToolBar  5      .@�5      1  +System.Windows.Controls.Ribbon.RibbonButton  -   5           SmallImageSource$ images\SaveAll.png��5   #   6I   6  0System.Windows.Controls.Ribbon.RibbonSplitButton  5       -   5          Name$
 Undo��5    (   $ images\Undo.png��66   .	  (System.Windows.Input.ApplicationCommands	 	  Undo
   Command#
 Z	 6Y      CommandTarget 6�   ��  �� ElementName$ _richTextBox��.@�5!      8
  2System.Windows.Controls.Ribbon.RibbonSplitMenuItem
  $��Undo1��6.   6?   5"        5#      -   5        $
 Redo��5#   (   $ images\Redo.png��66    	  Redo#
 Z 6Y    6�   �� $ _richTextBox��.@�5$      
  $��Redo1��6.   6?   5%      5&      .@�5)      .  (System.Windows.Controls.Ribbon.RibbonTab  $
��Home��6   .@�5+      0  *System.Windows.Controls.Ribbon.RibbonGroup  $��	Clipboard��6   .@�5,           LargeImageSource$ Images\paste.png��6'      Label$ Paste��6K      KeyTip$ V��6Y   .@�5-        $ Images\Paste.png��6)   $��Keep Text Only��6H   $ T��6`    	  Paste m� Command# Z 6k    m� CommandTarget 6�   �� $ _richTextBox��  5.      $ Images\Paste.png��6)   $��Keep Text Only��6H   $ T��6`     5/      $ Images\Paste.png��6)   $��Paste Special...��6H   $ S��6b   50        51      $ Images\Cut.png��6#      Label$	 Cut��6E      KeyTip$ X��6Q   
 	  Cut#��Z 6\   ��6�   �� $ _richTextBox��  52      $ Images\Copy.png��6#   $
 Copy��6F   $ C��6S    	  Copy#��Z 6^   ��6�   �� $ _richTextBox��53        54      -   5          Name$ fonts��54      $��Fonts��6-   $
��Auto��6<   .@�55      7  1System.Windows.Controls.Ribbon.RibbonControlGroup  .@�56      �� -   5         �� Text$ Select Font...��56   �    �� 
IsEditable$
 True��6�   ��6#   ��    System.Windows.Media.Fonts   SystemFontFamilies �� Source# Z 6�   �� 57      -   5         ��Name$ 	_fontSize��57   O   $ Size...��6b   $
 True��6q   6�   58        59      .@�5:        $ Images\fonts\Bold.png��6'   $ B��6P   .  (System.Windows.Documents.EditingCommands   
ToggleBold#��Z 6[   ��6�   �� $ _richTextBox��  5;      $ Images\fonts\Italic.png��6'   $ I��6R      ToggleItalic#��Z 6]   ��6�   �� $ _richTextBox��  5<      $  Images\fonts\Underline.png��6'   $ U��6U       ToggleUnderline#��Z  6`   ��6�   �� $ _richTextBox���� 5>      -	   5        $ _colors��5A   !   $ Color��5C   !   $��Center=�5D   !   $
 True��5E   !   5G      5I      5J        5K      -
   5        $ 	paragraph��5K      $��	Paragraph��61   .@�5L        .@�5M        $  Images\align\AlignLeft.png��6'   !   	AlignLeft#��Z! 6U   ��6�   �� $ _richTextBox��  5N      $! Images\align\AlignRight.png��6'   "   
AlignRight#��Z" 6V   ��6�   �� $ _richTextBox��  5O      $  Images\align\AlignBoth.png��6'   #   AlignJustify#��Z# 6U   ��6�   �� $ _richTextBox��5P        5R      .@�5S        $! Images\align\BulletList.png��6'   5T      5U      5W        5Y      $��Insert��6   $��-8,0,8,0q�6(   $ � UseLayoutRounding$
$ True��6:   $
��Auto=�6S   .@�5Z        -   5        $ objects��5Z      $��Objects��6/   .@�5[        %   LargeImageSource$% Images\insert\Table.png��6#   $ Table��6N     5\      $) #Images\insert\ApplicationAccess.png��6#     5]      $! Images\insert\Rectangle.png��6#     5^      $! Images\insert\LineChart.png��6#     5_      $ Images\insert\Image.png��6#   5`      5a      5c      �� 5e   
   -   5        & ��Name$
& doc1��5e      $��1��6$   5g      5i      5j      