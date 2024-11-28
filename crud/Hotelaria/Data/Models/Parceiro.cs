using System;
using System.Collections.Generic;

namespace Hotelaria.Data.Models;

public partial class Parceiro
{
    public int IdParceiro { get; set; }

    public string Nome { get; set; } = null!;

    public string Ramo { get; set; } = null!;
}
