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
    [ValueConversion(typeof(Double), typeof(String))]
    public class DoubleConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo info)
        {
            Double valueDouble = (Double)value;
            return valueDouble.ToString();
        }
        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo info)
        {
            string strValue = value.ToString();
            Double valueDouble;
            if (Double.TryParse(strValue, out valueDouble))
            {
                return valueDouble;
            }
            return DependencyProperty.UnsetValue;
        }
    }
}
