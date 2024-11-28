using System.ComponentModel.DataAnnotations;

namespace Hotelaria.Services.ViewModel;

public class HospedeViewModel
{
    [Required]
    public int IdHospede { get; set; }

    [Required(ErrorMessage = "CPF is required.")]
    [RegularExpression(@"^\d{11}$", ErrorMessage = "CPF must be exactly 11 numeric digits.")]
    public string Cpf { get; set; } = null!;
    public int IdReserva { get; set; }
}
