using Hotelaria.Data;
using Hotelaria.Data.Models;
using Microsoft.EntityFrameworkCore;

namespace Hotelaria.Services;

public class ReservaService
{
    private readonly HotelariaDbContext _context;

    public ReservaService(HotelariaDbContext context)
    {
        _context = context;
    }


    public async Task<IEnumerable<Reserva>> FindAllAsync()
    {
        return await _context.Reservas.OrderBy(x => x.IdReserva).AsNoTracking().ToListAsync();
    }

}
