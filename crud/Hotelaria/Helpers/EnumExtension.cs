using System.ComponentModel.DataAnnotations;

namespace Hotelaria.Helpers;

public static class EnumExtensions
{
    public static string GetDisplayName(this Enum value)
    {
        var field = value.GetType().GetField(value.ToString());
        var attribute = (DisplayAttribute)Attribute.GetCustomAttribute(field, typeof(DisplayAttribute));

        return attribute?.Name ?? value.ToString(); // Se não houver atributo, usa o nome do valor do enum
    }
}