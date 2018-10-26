﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
using System.Windows.Shapes;
using System.Xml.Serialization;

namespace AutoWand
{
    /// <summary>
    /// Interaction logic for AddNewCustomer.xaml
    /// </summary>
    public partial class AddNewCustomer : Window
    {
        ObservableCollection<Customer> customerList = new ObservableCollection<Customer>();
        XmlSerializer xmler = new XmlSerializer(typeof(ObservableCollection<Customer>));

        public AddNewCustomer(ref ObservableCollection<Customer> customers)
        {
            InitializeComponent();
            customerList = customers;
        }

        private void addClick(object sender, RoutedEventArgs e)
        {
            if (verifyData())
            {
                Customer tempCust = new Customer();
                tempCust.FirstName = fNameBox.Text;
                tempCust.LastName = lNameBox.Text;
                tempCust.Address = $"{streetBox.Text}, {cityBox.Text}, {stateBox.Text}, {zipBox.Text}";

                if (!string.IsNullOrWhiteSpace(emailBox.Text))
                {
                    tempCust.EmailAddress = emailBox.Text;
                }

                customerList.Add(tempCust);
            }
        }

        private bool ValidateAlphabetical(string tester)
        {
            return tester.Where(x => char.IsLetter(x)).Count() == tester.Length; // lambda checking each char in string for letter
        }

        private bool ValidateNumerical(string tester)
        {
            return tester.Where(x => char.IsNumber(x)).Count() == tester.Length; // lambda checking each char in string for letter
        }
        
        private bool verifyData() {
            bool control = true;

            if (string.IsNullOrWhiteSpace(fNameBox.Text) || string.IsNullOrWhiteSpace(lNameBox.Text) || ValidateAlphabetical(fNameBox.Text) || ValidateAlphabetical(lNameBox.Text))
            {
                MessageBox.Show("A valid name and address must be given for billing purposes!");
                control = false;
            }
            else if(string.IsNullOrWhiteSpace(streetBox.Text) || !ValidateAlphabetical(cityBox.Text) || string.IsNullOrWhiteSpace(cityBox.Text) || 
                !ValidateAlphabetical(stateBox.Text) || string.IsNullOrWhiteSpace(stateBox.Text) || !ValidateNumerical(zipBox.Text) || string.IsNullOrWhiteSpace(zipBox.Text))
            {
                MessageBox.Show("A valid name and address must be given for billing purposes!");
                control = false;
            }
            else if (!ValidateNumerical(phoneBox.Text) && string.IsNullOrWhiteSpace(phoneBox.Text))
            {
                phoneBox.Background = Brushes.Red;
                control = false;
            }

            return control;
        }
        
        private void cancelClick(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
