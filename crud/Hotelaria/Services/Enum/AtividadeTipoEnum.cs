using System.ComponentModel.DataAnnotations;

namespace Hotelaria.Services.Enum;

public enum AtividadeTipoEnum
{
    [Display(Name = "Culinária")]
    Culinaria,

    [Display(Name = "Esporte")]
    Esporte,

    [Display(Name = "Teatro")]
    Teatro,

    [Display(Name = "Artes")]
    Artes,

    [Display(Name = "Ar Livre")]
    ArLivre,

    [Display(Name = "Piscina")]
    Piscina,

    [Display(Name = "Dança")]
    Danca,

    [Display(Name = "Radical")]
    Radical,

    [Display(Name = "Música")]
    Musica,
}