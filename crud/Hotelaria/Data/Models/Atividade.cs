using System.Text.Json.Serialization;

namespace Hotelaria.Data.Models;

public partial class Atividade
{
    public int IdAtividade { get; set; }

    public string Nome { get; set; } = null!;

    public string Tipo { get; set; } = null!;

    public int IdadeMin { get; set; }

    public int IdadeMax { get; set; }

    public DateOnly DataAtv { get; set; }

    public string Sazonalidade { get; set; } = null!;

    public int Duracao { get; set; }

    public int CapacidadeMax { get; set; }

    public int IdParceiro { get; set; }

    public int IdUnidade { get; set; }

    public virtual ICollection<Avalia> Avalia { get; set; } = new List<Avalia>();
}
