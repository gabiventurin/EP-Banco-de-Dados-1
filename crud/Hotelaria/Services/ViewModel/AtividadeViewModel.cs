using System.ComponentModel.DataAnnotations;

namespace Hotelaria.Services.ViewModel;

public class AtividadeViewModel
{
    public int IdAtividade { get; set; }

    [Required]
    public string Nome { get; set; } = String.Empty;

    public string? Tipo { get; set; } = null;

    public int IdadeMin { get; set; }

    public int IdadeMax { get; set; }

    public DateOnly DataAtv { get; set; }

    public string? Sazonalidade { get; set; } = null;

    public int Duracao { get; set; }

    public int CapacidadeMax { get; set; }

    public int IdParceiro { get; set; }

    public int IdUnidade { get; set; }
}