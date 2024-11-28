using Hotelaria.Data.Models;
using Microsoft.EntityFrameworkCore;

namespace Hotelaria.Data;

public partial class HotelariaDbContext : DbContext
{
    public HotelariaDbContext()
    {
    }

    public HotelariaDbContext(DbContextOptions<HotelariaDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Atividade> Atividades { get; set; }

    public virtual DbSet<Avalia> Avalia { get; set; }

    public virtual DbSet<Hospede> Hospedes { get; set; }

    public virtual DbSet<Parceiro> Parceiros { get; set; }

    public virtual DbSet<Reserva> Reservas { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        => optionsBuilder.UseNpgsql("Host=localhost;Port=5431;Database=hotelaria;Username=postgres;Password=root"); // String de conexão
    // String de conexão interna para o docker: Host=postgres;Port=5432;Database=hotelaria;Username=postgres;Password=root

    /// <summary>
    /// Define a tabela, chaves, colunas e constrains para todas as tabelas
    /// </summary>
    /// <param name="modelBuilder"></param>
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Atividade>(entity =>
        {
            entity.HasKey(e => e.IdAtividade).HasName("id_atividade_id");

            entity.ToTable("atividade");

            entity.HasIndex(e => e.IdParceiro, "equ_ativi_parce_ind");

            entity.HasIndex(e => e.IdUnidade, "ref_ativi_unida_ind");

            entity.Property(e => e.IdAtividade).HasColumnName("id_atividade");
            entity.Property(e => e.CapacidadeMax).HasColumnName("capacidade_max");
            entity.Property(e => e.DataAtv).HasColumnName("data_atv");
            entity.Property(e => e.Duracao).HasColumnName("duracao");
            entity.Property(e => e.IdParceiro).HasColumnName("id_parceiro");
            entity.Property(e => e.IdUnidade).HasColumnName("id_unidade");
            entity.Property(e => e.IdadeMax).HasColumnName("idade_max");
            entity.Property(e => e.IdadeMin).HasColumnName("idade_min");
            entity.Property(e => e.Nome)
                .HasMaxLength(30)
                .HasColumnName("nome");
            entity.Property(e => e.Sazonalidade)
                .HasMaxLength(12)
                .HasColumnName("sazonalidade");
            entity.Property(e => e.Tipo)
                .HasMaxLength(30)
                .HasColumnName("tipo");
        });

        modelBuilder.Entity<Avalia>(entity =>
        {
            entity.HasKey(e => new { e.IdHospede, e.IdAtividade }).HasName("id_avalia");

            entity.ToTable("avalia");

            entity.HasIndex(e => e.IdAtividade, "ref_avali_ativi_ind");

            entity.Property(e => e.IdHospede).HasColumnName("id_hospede");
            entity.Property(e => e.IdAtividade).HasColumnName("id_atividade");
            entity.Property(e => e.Comentario)
                .HasMaxLength(300)
                .HasColumnName("comentario");
            entity.Property(e => e.DataAvaliacao)
                .HasColumnType("timestamp without time zone")
                .HasColumnName("data_avaliacao");
            entity.Property(e => e.Nota).HasColumnName("nota");

            entity.HasOne(d => d.IdAtividadeNavigation).WithMany(p => p.Avalia)
                .HasForeignKey(d => d.IdAtividade)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("ref_avali_ativi_fk");

            entity.HasOne(d => d.IdHospedeNavigation).WithMany(p => p.Avalia)
                .HasForeignKey(d => d.IdHospede)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("ref_avali_hospe");
        });

        modelBuilder.Entity<Hospede>(entity =>
        {
            entity.HasKey(e => e.IdHospede).HasName("id_hospede");

            entity.ToTable("hospede");

            entity.HasIndex(e => e.IdReserva, "equ_hospe_reser_ind");

            entity.Property(e => e.IdHospede).HasColumnName("id_hospede");
            entity.Property(e => e.Cpf)
                .HasMaxLength(11)
                .IsFixedLength()
                .HasColumnName("cpf");
            entity.Property(e => e.IdReserva).HasColumnName("id_reserva");
        });

        modelBuilder.Entity<Parceiro>(entity =>
        {
            entity.HasKey(e => e.IdParceiro).HasName("id_parceiro_id");

            entity.ToTable("parceiro");

            entity.Property(e => e.IdParceiro).HasColumnName("id_parceiro");
            entity.Property(e => e.Nome)
                .HasMaxLength(30)
                .HasColumnName("nome");
            entity.Property(e => e.Ramo)
                .HasMaxLength(30)
                .HasColumnName("ramo");
        });

        modelBuilder.Entity<Reserva>(entity =>
        {
            entity.HasKey(e => e.IdReserva).HasName("id_reserva_id");

            entity.ToTable("reserva");

            entity.HasIndex(e => e.IdAcomodacao, "ref_reser_acomo_ind");

            entity.HasIndex(e => e.IdCliente, "ref_reser_clien_ind");

            entity.Property(e => e.IdReserva).HasColumnName("id_reserva");
            entity.Property(e => e.IdAcomodacao).HasColumnName("id_acomodacao");
            entity.Property(e => e.IdCliente).HasColumnName("id_cliente");
            entity.Property(e => e.PerDtFim).HasColumnName("per_dt_fim");
            entity.Property(e => e.PerDtInicio).HasColumnName("per_dt_inicio");
            entity.Property(e => e.Valor)
                .HasPrecision(10, 2)
                .HasColumnName("valor");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
