   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	    
TextEditor   TextEditor.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.0.1244, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   3system&clr-namespace:System;assembly=mscorlib  5   	     � Title$  Text Editor��5	   	   $	��450��6   $	��700��6*    � WindowStartupLocation$ CenterScreen=�66   .��5      �  � RowDefinitions 5   
   �� 5      $��45 �6   �� 5      $��* �6   .+�5   
   o�  o� 
IsMainMenu . $��0��6!   ���#f2e6ff.@�5      m� $��_File��6   .@�5      m� -   5         m�Name$ new_file��5   )   $
��_New��6    m� Icon 5      '  !MaterialDesignThemes.Wpf.PackIcon  5         Kind$
 File=�62   5      m� 5      -   5        $ 	open_file��5   *   $��_Open��6    5        5      $ 	OpenInNew=�62   5      �� 5       m� 5!      -   5        $ 	save_file��5!   *   $��_Save��6    5"        5#      $ ContentSave=�62   5%      m� 5&      -   5        $ save_as_file��5&   /   $��
_Save As..��6    5'        5(      $ ContentSaveAll=�62   5*      �� 5+      m� 5,      -   5        $ words_Count��5,   1   $��_Words Count��6    5-        5.      $ Counter=�62   50      �� 51      m� 52      -   5        $ exitApp��52   )   $
��Exit��6    53        54      $ 	ExitToApp=�62   56      57      m� 5;      $��_Edit��6   .@�5<      m� $
��_Cut��6    m� Command$	 Cut��6)    5=        5>      $ 
ContentCut=�62   5@      m� 5A      $��_Copy��6   $
 Copy��6*    5B        5C      $ ContentCopy=�62   5E      m� 5F      $��_Paste��6   $ Paste��6+    5G        5H      $ ContentPaste=�62   5J      �� 5K      m� 5L      $��_Select All��6   $ 	SelectAll��60    5M        5N      $ 	SelectAll=�62   5P      �� 5Q      m� 5R      $��_Undo��6   $
 Undo��6*    5S        5T      $
 Undo=�62   5V      m� 5W      $��_Redo��6   $
 Redo��6*    5X        5Y      $
 Redo=�62   5[      5\      m� 5`      $��_Format��6   .@�5a      m� -   5        $ font_Dialog��5a   ,   $��_Font..��6    5b        5c      $ 
FormatFont=�62   5e      m� 5f      -   5        $ color_Dialog��5f   +   $��_Color��6    5g        5h      $ FormatColorText=�62   5j      5k      5n      �� 5t   
   -	   5         ��Name$ richTextBox��5t   %   $��1��6   "	 �� VerticalScrollBarVisibility$
	 Auto=�6<   
 � 	Resources
 5w       �� 
TargetType �� Property �� Value��%X   'J�       �� 5x      " J�6   .�5y      ��  �@��Margin$ 0q�6/   5z      5{       � ContextMenu 5      �� 5�      .@�5�      m� $
��Copy��6   $
 Copy��6-    5�        5�      $ ContentCopy=�66   5�      m� 5�      $	��Cut��6   $	 Cut��6,    5�        5�      $ 
ContentCut=�66   5�      m� 5�      $��Paste��6   $ Paste��6.    5�        5�      $ ContentPaste=�66   5�      �� 5�      m� 5�      $��
Select All��6   $ 	SelectAll��63    5�        5�      $ 	SelectAll=�66   5�      �� 5�      m� 5�      $
��Undo��6   $
 Undo��6-    5�        5�      $
 Undo=�66   5�      m� 5�      $
��Redo��6   $
 Redo��6-    5�        5�      $
 Redo=�66   5�      5�      5�      5�      5�      