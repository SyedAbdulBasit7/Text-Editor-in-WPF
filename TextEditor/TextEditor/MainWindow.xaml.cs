using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace TextEditor
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        string FileLocation = "";

        public MainWindow()
        {
            InitializeComponent();
            
        }

        private void exitApp_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void font_Dialog_Click(object sender, RoutedEventArgs e)
        {
            FontDialog fdialog = new FontDialog();
            if (fdialog.ShowDialog() == System.Windows.Forms.DialogResult.OK) 
            {
                richTextBox.FontFamily = new FontFamily(fdialog.Font.Name);
                richTextBox.FontSize = fdialog.Font.Size;
                richTextBox.FontWeight = fdialog.Font.Bold ? FontWeights.Bold : FontWeights.Regular;
                richTextBox.FontStyle = fdialog.Font.Italic ? FontStyles.Italic : FontStyles.Normal;
            }
        }

        private void color_Dialog_Click(object sender, RoutedEventArgs e)
        {
            ColorDialog cdialog = new ColorDialog();
            if (cdialog.ShowDialog() == System.Windows.Forms.DialogResult.OK) 
            {
                richTextBox.Foreground = new SolidColorBrush(Color.FromArgb(cdialog.Color.A, cdialog.Color.R, cdialog.Color.G, cdialog.Color.B));
            }
        }

        private void save_file_Click(object sender, RoutedEventArgs e)
        {
            SaveFileDialog sfd = new SaveFileDialog();
            sfd.Filter = "Text files(*.txt)|*.txt|C# files (*.cs)|*.cs|Xaml files (*.xaml)|*.xaml|All files (*.*)|*.*";
            sfd.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            //sfd.InitialDirectory = @"c:\";
            
            //get text from richtextbox
            TextRange tr = new TextRange(richTextBox.Document.ContentStart, richTextBox.Document.ContentEnd);
            if (FileLocation == "")
            {
                if (sfd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                {
                    File.WriteAllText(sfd.FileName, tr.Text);
                }
                FileLocation = sfd.FileName;
            }
            else
            {
                File.WriteAllText(FileLocation, tr.Text);
            }
        }

        private void open_file_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog ofd = new OpenFileDialog();
            //get text from richtextbox
            TextRange tr = new TextRange(richTextBox.Document.ContentStart, richTextBox.Document.ContentEnd);
            if(ofd.ShowDialog()== System.Windows.Forms.DialogResult.OK) 
            {
                tr.Text = File.ReadAllText(ofd.FileName);
            }
        }


        private void words_Count_Click(object sender, RoutedEventArgs e)
        {
            //get text from richtextbox
            TextRange tr = new TextRange(richTextBox.Document.ContentStart, richTextBox.Document.ContentEnd);
            string getText = tr.Text;
            char[] separator = { ' ' };
            int wordsCount = getText.Split(separator, StringSplitOptions.RemoveEmptyEntries).Length;
            System.Windows.MessageBox.Show("Words Count =  " + wordsCount.ToString());
        }

        private void save_as_file_Click(object sender, RoutedEventArgs e)
        {
            SaveFileDialog sfd = new SaveFileDialog();
            sfd.Filter = "Text files(*.txt)|*.txt|C# files (*.cs)|*.cs|Xaml files (*.xaml)|*.xaml|All files (*.*)|*.*";
           // sfd.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            sfd.InitialDirectory = @"c:\";
            TextRange tr = new TextRange(richTextBox.Document.ContentStart, richTextBox.Document.ContentEnd);
            if (sfd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                File.WriteAllText(sfd.FileName, tr.Text);
            }
        }

        private void new_file_Click(object sender, RoutedEventArgs e)
        {
            TextRange tr = new TextRange(richTextBox.Document.ContentStart, richTextBox.Document.ContentEnd);
            tr.Text = "";
            FileLocation = "";
            
        }
    }
}
