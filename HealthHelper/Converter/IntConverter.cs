using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;

namespace HealthHelper.Converter
{
    [ValueConversion(typeof(Int32), typeof(String))]
     public class IntConverter : IValueConverter
    {

        public object Convert(object value, Type targetType, object parameter, CultureInfo info)
        {
            Int32 valueInt = (Int32)value;
            return valueInt.ToString();
        }
        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo info)
        {
            string strValue = value.ToString();
            Int32 valueInt;
            if (Int32.TryParse(strValue, out valueInt))
            {
                return valueInt;
            }
            return DependencyProperty.UnsetValue;
        }
    }
}
