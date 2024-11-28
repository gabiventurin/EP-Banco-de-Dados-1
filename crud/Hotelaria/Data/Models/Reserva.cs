using System;
using System.Collections.Generic;

namespace Hotelaria.Data.Models;

public partial class Reserva
{
    public int IdReserva { get; set; }

    public decimal Valor { get; set; }

    public DateOnly PerDtInicio { get; set; }

    public DateOnly PerDtFim { get; set; }

    public int IdCliente { get; set; }

    public int IdAcomodacao { get; set; }
}
