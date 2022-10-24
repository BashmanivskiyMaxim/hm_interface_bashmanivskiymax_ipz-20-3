using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Timers;

namespace MPInt_lab2
{

    public partial class MainWindow : Window
    {
        #region peremennie
        Random x = new Random();
        Random y = new Random();
        public Point p = new Point();
        public Point[] pi = new Point[2];
        int Status_exp = 0;
        DateTime Start;
        DateTime Stoped;
        TimeSpan Elapsed = new TimeSpan();
        public Point s;
        #endregion
        public MainWindow()
        {
            InitializeComponent();


        }

        private void ButtonStart_Click(object sender, RoutedEventArgs e)
        {
            lbRez.Items.Clear();
            lbRez.Items.Add("Результати");
            expir();
        }
        public void expir()
        {
            int[] rez_arr = new int[2];
            Array.Clear(pi, 0, pi.Length - 1);
            Start = new DateTime(0);
            icDrow.Children.Clear();
            icDrow.Strokes.Clear();
            for(int i = 0; i < 2; i++)
            {
                pi[i] = DrowObject(p);
            }
            Status_exp++;
        }
        private Point DrowObject(Point p)
        {
            Rectangle el = new Rectangle();
            el.Width = 10;
            el.Height = 10;
            p.X = x.Next(Convert.ToInt32(this.Width - el.Width));
            p.Y = y.Next(Convert.ToInt32(icDrow.ActualHeight - el.Height));
            el.Fill = Brushes.Red;
            InkCanvas.SetLeft(el, p.X);
            icDrow.Children.Add(el);
            return p;
        }
        private void icUp(object sender, MouseButtonEventArgs e)
        {
            if(Status_exp > 0)
            {
                Console.WriteLine("1");
                Point[] n = Array.FindAll(pi, element => (Math.Abs(element.X - e.GetPosition(this).X) < 20) && (Math.Abs(element.Y - e.GetPosition(this).Y) < 20));
                if (Array.Exists(pi, element => (Math.Abs(element.X - e.GetPosition(this).X) < 20) && (Math.Abs(element.Y - e.GetPosition(this).Y) < 20)))
                {
                    Console.WriteLine("2");
                    if (!((Math.Abs(s.X - e.GetPosition(this).X) < 10) && (Math.Abs(s.Y - e.GetPosition(this).Y) < 10)))
                    {
                        Console.WriteLine("3");
                        s = e.GetPosition(this);
                        {
                            if (Start.Ticks == 0) { Start = DateTime.Now; }
                            else
                            {
                                Console.WriteLine("4");
                                Stoped = DateTime.Now;
                                Elapsed = Stoped.Subtract(Start);
                                long elapsedTicks = Stoped.Ticks - Start.Ticks;
                                TimeSpan elapsedSpan = new TimeSpan(elapsedTicks);
                                double rez = Math.Sqrt(Math.Pow(pi[0].X - pi[1].X, 2) + Math.Pow(pi[0].Y - pi[1].Y, 2));
                                lbRez.Items.Add("Експеримент" + Status_exp.ToString() + "Час:" + elapsedSpan.Milliseconds.ToString() + " Відстань " + rez);
                                if (Status_exp < 100) expir();
                            }
                        }
                    }
                }
            }
        }
    }
}
