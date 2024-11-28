using System;
using System.Collections.Generic;

namespace Hotelaria.Data.Models;

public partial class Hospede
{
    public int IdHospede { get; set; }

    public string Cpf { get; set; } = null!;

    public int IdReserva { get; set; }

    public virtual ICollection<Avalia> Avalia { get; set; } = new List<Avalia>();
}
