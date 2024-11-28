using Hotelaria.Data;
using Hotelaria.Data.Models;
using Microsoft.EntityFrameworkCore;

namespace Hotelaria.Services;

public class ParceiroService
{
    private readonly HotelariaDbContext _context;

    public ParceiroService(HotelariaDbContext context) {
        _context = context;
    }

    public async Task<IEnumerable<Parceiro>> GetParceirosAsync()
    {
        return await _context.Parceiros.ToListAsync();
    }

    public Parceiro? GetParceiro(int idParceiro)
    {
        return _context.Parceiros.AsNoTracking().FirstOrDefault(x => x.IdParceiro == idParceiro);
    }
}
