using System;
using System.Collections.Generic;

namespace Hotelaria.Data.Models;

public partial class Avalia
{
    public int IdAtividade { get; set; }

    public int IdHospede { get; set; }

    public int Nota { get; set; }

    public string Comentario { get; set; } = null!;

    public DateTime DataAvaliacao { get; set; }

    public virtual Atividade IdAtividadeNavigation { get; set; } = null!;

    public virtual Hospede IdHospedeNavigation { get; set; } = null!;
}
